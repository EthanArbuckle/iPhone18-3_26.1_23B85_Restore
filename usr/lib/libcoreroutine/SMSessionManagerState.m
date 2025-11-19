@interface SMSessionManagerState
@end

@implementation SMSessionManagerState

void __84__SMSessionManagerState_RTCoreDataTransformable__createWithSMSessionManagerStateMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4ABC8]);
  v3 = [*(a1 + 32) updateReason];
  v4 = [*(a1 + 32) triggerCategory];
  v5 = MEMORY[0x277D4AB78];
  v6 = [*(a1 + 32) sessionConfiguration];
  v7 = [v5 createWithManagedObject:v6];
  v8 = [v7 sessionID];
  v36 = [v2 initWithUpdateReason:v3 triggerCategory:v4 sessionID:v8];

  v33 = objc_alloc(MEMORY[0x277D4ABB0]);
  v32 = [*(a1 + 32) sessionState];
  v9 = MEMORY[0x277D4AB78];
  v34 = [*(a1 + 32) sessionConfiguration];
  v31 = [v9 createWithManagedObject:v34];
  v30 = [*(a1 + 32) userTriggerResponse];
  v29 = [*(a1 + 32) date];
  v10 = objc_alloc(MEMORY[0x277CE41F8]);
  [*(a1 + 32) locationLatitude];
  v12 = v11;
  [*(a1 + 32) locationLongitude];
  v28 = [v10 initWithLatitude:v12 longitude:v13];
  v35 = [*(a1 + 32) allowReadToken];
  v25 = [*(a1 + 32) safetyCacheKey];
  v27 = [*(a1 + 32) startMessageGUID];
  v24 = [*(a1 + 32) scheduledSendMessageGUID];
  v26 = [*(a1 + 32) scheduledSendMessageDate];
  v23 = [*(a1 + 32) activeDeviceIdentifier];
  v14 = [*(a1 + 32) estimatedEndDate];
  v15 = [*(a1 + 32) coarseEstimatedEndDate];
  v16 = [*(a1 + 32) estimatedEndDateStatus];
  v17 = [*(a1 + 32) sessionEndReason];
  v18 = [*(a1 + 32) sessionStateTransitionDate];
  v19 = [*(a1 + 32) activePairedDeviceIdentifier];
  v20 = [v33 initWithSessionState:v32 configuration:v31 userTriggerResponse:v30 monitorContext:v36 date:v29 location:v28 allowReadToken:v35 safetyCacheKey:v25 startMessageGUID:v27 scheduledSendMessageGUID:v24 scheduledSendMessageDate:v26 activeDeviceIdentifier:v23 estimatedEndDate:v14 coarseEstimatedEndDate:v15 estimatedEndDateStatus:v16 sessionEndReason:v17 sessionStateTransitionDate:v18 activePairedDeviceIdentifier:v19];
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;
}

@end