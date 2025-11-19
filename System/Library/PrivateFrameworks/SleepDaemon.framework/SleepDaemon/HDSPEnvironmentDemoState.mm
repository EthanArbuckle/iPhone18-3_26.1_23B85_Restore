@interface HDSPEnvironmentDemoState
- (void)didEnter;
@end

@implementation HDSPEnvironmentDemoState

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 environmentDidBecomeReady];
  }
}

@end