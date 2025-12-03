@interface HDSPSleepWidgetNotOnboardedState
- (void)sleepScheduleModelDidChange:(id)change;
@end

@implementation HDSPSleepWidgetNotOnboardedState

- (void)sleepScheduleModelDidChange:(id)change
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider isOnboarded])
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 updateState];
  }
}

@end