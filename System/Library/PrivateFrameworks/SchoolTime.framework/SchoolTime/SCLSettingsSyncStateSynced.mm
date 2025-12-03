@interface SCLSettingsSyncStateSynced
- (void)didEnterWithPreviousState:(id)state;
- (void)settingsDidChange;
@end

@implementation SCLSettingsSyncStateSynced

- (void)didEnterWithPreviousState:(id)state
{
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  context = [stateMachine context];
  [context setError:0];

  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  context2 = [stateMachine2 context];
  [context2 setMessageIdentifier:0];

  stateMachine3 = [(SCLSettingsSyncState *)self stateMachine];
  context3 = [stateMachine3 context];
  [context3 clearRecoveryHistory];

  stateMachine4 = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine4 cancelRetryActivity];
}

- (void)settingsDidChange
{
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  pendingSendState = [stateMachine2 pendingSendState];
  [stateMachine transitionToState:pendingSendState];
}

@end