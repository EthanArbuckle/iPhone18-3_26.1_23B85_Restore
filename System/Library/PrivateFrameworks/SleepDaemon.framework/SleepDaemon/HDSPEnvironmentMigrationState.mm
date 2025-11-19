@interface HDSPEnvironmentMigrationState
- (void)dataMigrationDidComplete;
- (void)didEnter;
@end

@implementation HDSPEnvironmentMigrationState

- (void)didEnter
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentContext];
  v5 = [v4 hasStateTransitionOrInitializing];

  if (v5)
  {
    v6 = [(HKSPStateMachineState *)self stateMachine];
    [v6 environmentShouldMigrateData];
  }
}

- (void)dataMigrationDidComplete
{
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v2 = [v3 readyState];
  [v3 enterState:v2];
}

@end