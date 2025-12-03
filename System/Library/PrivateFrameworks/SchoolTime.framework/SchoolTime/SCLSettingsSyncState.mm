@interface SCLSettingsSyncState
- (SCLSettingsSyncState)initWithStateMachine:(id)machine;
- (SCLSettingsSyncStateMachine)stateMachine;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
@end

@implementation SCLSettingsSyncState

- (SCLSettingsSyncState)initWithStateMachine:(id)machine
{
  machineCopy = machine;
  v8.receiver = self;
  v8.super_class = SCLSettingsSyncState;
  v5 = [(SCLSettingsSyncState *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_stateMachine, machineCopy);
  }

  return v6;
}

- (void)settingsDidChange
{
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  context = [stateMachine context];
  [context clearRecoveryHistory];
}

- (void)significantUserInteractionOccurred
{
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  context = [stateMachine context];
  [context clearRecoveryHistory];
}

- (SCLSettingsSyncStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

@end