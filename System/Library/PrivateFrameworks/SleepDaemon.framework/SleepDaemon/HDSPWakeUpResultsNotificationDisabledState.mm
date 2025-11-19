@interface HDSPWakeUpResultsNotificationDisabledState
- (void)updateState;
@end

@implementation HDSPWakeUpResultsNotificationDisabledState

- (void)updateState
{
  if ([(HDSPWakeUpResultsNotificationStateMachineState *)self isNotificationEnabled])
  {
    v5 = [(HKSPStateMachineState *)self stateMachine];
    v3 = [(HKSPStateMachineState *)self stateMachine];
    v4 = [v3 waitingForWakeUpState];
    [v5 enterState:v4];
  }
}

@end