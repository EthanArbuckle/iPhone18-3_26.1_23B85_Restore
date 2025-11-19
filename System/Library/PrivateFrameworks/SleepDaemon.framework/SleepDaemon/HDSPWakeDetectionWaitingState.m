@interface HDSPWakeDetectionWaitingState
- (id)expirationDate;
@end

@implementation HDSPWakeDetectionWaitingState

- (id)expirationDate
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  v4 = [v3 upcomingStartDetection];

  return v4;
}

@end