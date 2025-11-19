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
    v5 = [(HKSPStateMachineState *)self stateMachine];
    v3 = [(HKSPStateMachineState *)self stateMachine];
    v4 = [v3 disabledState];
    [v5 enterState:v4];
  }
}

- (HDSPWakeUpResultsNotificationStateMachineInfoProvider)infoProvider
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  return v3;
}

- (BOOL)isNotificationEnabled
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  v4 = [v3 isWakeUpResultsNotificationEnabled];

  return v4;
}

- (void)stateDidExpire
{
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 waitingForWakeUpState];
  [v5 enterState:v4];
}

@end