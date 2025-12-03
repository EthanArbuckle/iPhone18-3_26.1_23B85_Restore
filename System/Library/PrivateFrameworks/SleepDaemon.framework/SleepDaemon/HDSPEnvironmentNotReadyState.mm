@interface HDSPEnvironmentNotReadyState
- (id)_nextSystemReadyState;
- (void)systemDidBecomeReady;
- (void)updateState;
@end

@implementation HDSPEnvironmentNotReadyState

- (void)updateState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider isSystemReady])
  {
    _nextSystemReadyState = [(HDSPEnvironmentNotReadyState *)self _nextSystemReadyState];
    [stateMachine enterState:_nextSystemReadyState];
  }
}

- (id)_nextSystemReadyState
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];
  if ([infoProvider needsDataMigration])
  {
    [stateMachine migrationState];
  }

  else
  {
    [stateMachine readyState];
  }
  v4 = ;

  return v4;
}

- (void)systemDidBecomeReady
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  _nextSystemReadyState = [(HDSPEnvironmentNotReadyState *)self _nextSystemReadyState];
  [stateMachine enterState:_nextSystemReadyState];
}

@end