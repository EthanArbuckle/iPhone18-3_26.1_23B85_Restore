@interface SMSessionMonitorState
@end

@implementation SMSessionMonitorState

void __84__SMSessionMonitorState_RTCoreDataTransformable__createWithSMSessionMonitorStateMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4ABD0]);
  v10 = [*(a1 + 32) sessionIdentifier];
  v3 = [*(a1 + 32) currentRegionState];
  v4 = [*(a1 + 32) triggerPending];
  v5 = [*(a1 + 32) triggerConfirmed];
  v6 = [*(a1 + 32) date];
  v7 = [v2 initWithSessionIdentifier:v10 currentRegionState:v3 triggerPending:v4 triggerConfirmed:v5 date:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end