@interface HDSPWakeDetectionActivityDetectingState
- (id)expirationDate;
@end

@implementation HDSPWakeDetectionActivityDetectingState

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  nextWakeUp = [infoProvider nextWakeUp];

  return nextWakeUp;
}

@end