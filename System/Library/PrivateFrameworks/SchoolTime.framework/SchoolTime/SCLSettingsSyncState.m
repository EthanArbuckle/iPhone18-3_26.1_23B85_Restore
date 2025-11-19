@interface SCLSettingsSyncState
- (SCLSettingsSyncState)initWithStateMachine:(id)a3;
- (SCLSettingsSyncStateMachine)stateMachine;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
@end

@implementation SCLSettingsSyncState

- (SCLSettingsSyncState)initWithStateMachine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCLSettingsSyncState;
  v5 = [(SCLSettingsSyncState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_stateMachine, v4);
  }

  return v6;
}

- (void)settingsDidChange
{
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v2 = [v3 context];
  [v2 clearRecoveryHistory];
}

- (void)significantUserInteractionOccurred
{
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v2 = [v3 context];
  [v2 clearRecoveryHistory];
}

- (SCLSettingsSyncStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end