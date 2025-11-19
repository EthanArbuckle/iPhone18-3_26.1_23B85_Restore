@interface HDSPWakeDetectionDetectingState
@end

@implementation HDSPWakeDetectionDetectingState

void __61___HDSPWakeDetectionDetectingState_wakeupEventDetected_date___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 notifiedState];
  [v1 enterState:v2];
}

void __66___HDSPWakeDetectionDetectingState_earlyWakeUpWasNotifiedRemotely__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 notifiedState];
  [v1 enterState:v2];
}

@end