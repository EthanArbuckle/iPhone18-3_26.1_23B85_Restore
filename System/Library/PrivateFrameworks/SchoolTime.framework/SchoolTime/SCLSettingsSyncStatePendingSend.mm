@interface SCLSettingsSyncStatePendingSend
- (void)commitSettings;
- (void)didEnqueueMessage:(id)a3;
- (void)didEnterWithPreviousState:(id)a3;
- (void)enqueueFailedWithError:(id)a3;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStatePendingSend

- (void)didEnterWithPreviousState:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v7 didEnterWithPreviousState:a3];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 context];
  [v5 setMessageIdentifier:0];

  v6 = [(SCLSettingsSyncState *)self stateMachine];
  [v6 scheduleCommitTimerWithInterval:30.0];
}

- (void)settingsDidChange
{
  v4.receiver = self;
  v4.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v4 settingsDidChange];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  [v3 scheduleCommitTimerWithInterval:30.0];
}

- (void)xpcActivityStarted
{
  v4.receiver = self;
  v4.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v4 xpcActivityStarted];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  [v3 performSync];
}

- (void)commitSettings
{
  v4.receiver = self;
  v4.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v4 commitSettings];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  [v3 performSync];
}

- (void)significantUserInteractionOccurred
{
  v5.receiver = self;
  v5.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v5 significantUserInteractionOccurred];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  [v3 cancelCommitTimer];

  v4 = [(SCLSettingsSyncState *)self stateMachine];
  [v4 performSync];
}

- (void)enqueueFailedWithError:(id)a3
{
  v10.receiver = self;
  v10.super_class = SCLSettingsSyncStatePendingSend;
  v4 = a3;
  [(SCLSettingsSyncState *)&v10 enqueueFailedWithError:v4];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v10.receiver];
  v6 = [v5 context];
  [v6 setError:v4];

  v7 = [(SCLSettingsSyncState *)self stateMachine];
  v8 = [(SCLSettingsSyncState *)self stateMachine];
  v9 = [v8 failedState];
  [v7 transitionToState:v9];
}

- (void)didEnqueueMessage:(id)a3
{
  v10.receiver = self;
  v10.super_class = SCLSettingsSyncStatePendingSend;
  v4 = a3;
  [(SCLSettingsSyncState *)&v10 didEnqueueMessage:v4];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v10.receiver];
  v6 = [v5 context];
  [v6 setMessageIdentifier:v4];

  v7 = [(SCLSettingsSyncState *)self stateMachine];
  v8 = [(SCLSettingsSyncState *)self stateMachine];
  v9 = [v8 sendingState];
  [v7 transitionToState:v9];
}

@end