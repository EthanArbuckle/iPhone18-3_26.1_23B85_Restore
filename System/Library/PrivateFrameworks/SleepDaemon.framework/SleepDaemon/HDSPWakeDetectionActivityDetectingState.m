@interface HDSPWakeDetectionActivityDetectingState
- (id)expirationDate;
@end

@implementation HDSPWakeDetectionActivityDetectingState

- (id)expirationDate
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  v4 = [v3 nextWakeUp];

  return v4;
}

@end