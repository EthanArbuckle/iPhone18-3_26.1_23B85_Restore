@interface HDSPWakeDetectionExplicitDetectingState
- (id)expirationDate;
@end

@implementation HDSPWakeDetectionExplicitDetectingState

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  upcomingStartDetection = [infoProvider upcomingStartDetection];

  return upcomingStartDetection;
}

@end