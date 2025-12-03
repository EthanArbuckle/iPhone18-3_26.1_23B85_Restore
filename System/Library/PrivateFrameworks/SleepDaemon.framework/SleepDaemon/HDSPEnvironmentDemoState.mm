@interface HDSPEnvironmentDemoState
- (void)didEnter;
@end

@implementation HDSPEnvironmentDemoState

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 environmentDidBecomeReady];
  }
}

@end