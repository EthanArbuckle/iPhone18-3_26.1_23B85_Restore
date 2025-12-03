@interface HDSPWakeUpResultsNotificationDisabledState
- (void)updateState;
@end

@implementation HDSPWakeUpResultsNotificationDisabledState

- (void)updateState
{
  if ([(HDSPWakeUpResultsNotificationStateMachineState *)self isNotificationEnabled])
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    waitingForWakeUpState = [stateMachine2 waitingForWakeUpState];
    [stateMachine enterState:waitingForWakeUpState];
  }
}

@end