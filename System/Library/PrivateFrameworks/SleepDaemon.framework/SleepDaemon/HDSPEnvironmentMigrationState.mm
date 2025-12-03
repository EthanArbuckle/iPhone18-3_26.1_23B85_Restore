@interface HDSPEnvironmentMigrationState
- (void)dataMigrationDidComplete;
- (void)didEnter;
@end

@implementation HDSPEnvironmentMigrationState

- (void)didEnter
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentContext = [stateMachine currentContext];
  hasStateTransitionOrInitializing = [currentContext hasStateTransitionOrInitializing];

  if (hasStateTransitionOrInitializing)
  {
    stateMachine2 = [(HKSPStateMachineState *)self stateMachine];
    [stateMachine2 environmentShouldMigrateData];
  }
}

- (void)dataMigrationDidComplete
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  readyState = [stateMachine readyState];
  [stateMachine enterState:readyState];
}

@end