@interface SMWorkoutEvent
@end

@implementation SMWorkoutEvent

void __70__SMWorkoutEvent_RTCoreDataTransformable__createWithSMWorkoutEventMO___block_invoke(uint64_t a1)
{
  v16 = objc_alloc(MEMORY[0x277D4AC40]);
  v17 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 32) sessionIdentifier];
  v3 = MEMORY[0x277D4AB28];
  v4 = [*(a1 + 32) location];
  v5 = [v3 createWithManagedObject:v4];
  v6 = [*(a1 + 32) activityType];
  v7 = [*(a1 + 32) locationType];
  v8 = [*(a1 + 32) swimmingLocationType];
  v9 = [*(a1 + 32) sessionState];
  v10 = [*(a1 + 32) isResumedSessionState];
  v11 = [*(a1 + 32) date];
  LOBYTE(v15) = v10;
  v12 = [v16 initWithIdentifier:v17 sessionIdentifier:v2 location:v5 activityType:v6 locationType:v7 swimmingLocationType:v8 sessionState:v9 isResumedSessionState:v15 date:v11];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

@end