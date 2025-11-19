@interface HDSPSleepWidgetNotOnboardedState
- (void)sleepScheduleModelDidChange:(id)a3;
@end

@implementation HDSPSleepWidgetNotOnboardedState

- (void)sleepScheduleModelDidChange:(id)a3
{
  v6 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v6 infoProvider];
  if ([v4 isOnboarded])
  {
    v5 = [(HKSPStateMachineState *)self stateMachine];
    [v5 updateState];
  }
}

@end