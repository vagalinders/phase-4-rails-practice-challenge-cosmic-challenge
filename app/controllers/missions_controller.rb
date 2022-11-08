class MissionsController < ApplicationController

    def create
        mission = Mission.create!(mission_params)
        render json: mission.planet, status: :created
    end

    private

    def mission_params
        params.permit(:name, :planet_id, :scientist_id)
    end
end
