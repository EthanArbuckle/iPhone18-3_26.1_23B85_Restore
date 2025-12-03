@interface HDSPWakeDetectionWaitingState
- (id)expirationDate;
@end

@implementation HDSPWakeDetectionWaitingState

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  upcomingStartDetection = [infoProvider upcomingStartDetection];

  return upcomingStartDetection;
}

@end