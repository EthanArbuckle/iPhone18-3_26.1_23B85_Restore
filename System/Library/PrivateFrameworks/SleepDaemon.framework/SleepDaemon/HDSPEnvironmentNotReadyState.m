@interface HDSPEnvironmentNotReadyState
- (id)_nextSystemReadyState;
- (void)systemDidBecomeReady;
- (void)updateState;
@end

@implementation HDSPEnvironmentNotReadyState

- (void)updateState
{
  v5 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v5 infoProvider];
  if ([v3 isSystemReady])
  {
    v4 = [(HDSPEnvironmentNotReadyState *)self _nextSystemReadyState];
    [v5 enterState:v4];
  }
}

- (id)_nextSystemReadyState
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];
  if ([v3 needsDataMigration])
  {
    [v2 migrationState];
  }

  else
  {
    [v2 readyState];
  }
  v4 = ;

  return v4;
}

- (void)systemDidBecomeReady
{
  v4 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [(HDSPEnvironmentNotReadyState *)self _nextSystemReadyState];
  [v4 enterState:v3];
}

@end