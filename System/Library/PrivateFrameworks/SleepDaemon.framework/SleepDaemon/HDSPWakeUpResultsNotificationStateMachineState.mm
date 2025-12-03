@interface HDSPWakeUpResultsNotificationStateMachineState
- (BOOL)isNotificationEnabled;
- (HDSPWakeUpResultsNotificationStateMachineInfoProvider)infoProvider;
- (void)stateDidExpire;
- (void)updateState;
@end

@implementation HDSPWakeUpResultsNotificationStateMachineState

- (void)updateState
{
  if (![(HDSPWakeUpResultsNotificationStateMachineState *)self isNotificationEnabled])
  {
    stateMachine = [(HKSPStateMachineState *)self stateMachine];
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    disabledState = [stateMachine2 disabledState];
    [stateMachine enterState:disabledState];
  }
}

- (HDSPWakeUpResultsNotificationStateMachineInfoProvider)infoProvider
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  return infoProvider;
}

- (BOOL)isNotificationEnabled
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  isWakeUpResultsNotificationEnabled = [infoProvider isWakeUpResultsNotificationEnabled];

  return isWakeUpResultsNotificationEnabled;
}

- (void)stateDidExpire
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
  waitingForWakeUpState = [stateMachine2 waitingForWakeUpState];
  [stateMachine enterState:waitingForWakeUpState];
}

@end