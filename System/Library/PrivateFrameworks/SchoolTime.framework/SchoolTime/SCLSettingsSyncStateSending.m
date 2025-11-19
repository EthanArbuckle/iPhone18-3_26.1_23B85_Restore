@interface SCLSettingsSyncStateSending
- (void)message:(id)a3 failedWithError:(id)a4;
- (void)messageDidSend:(id)a3;
- (void)settingsDidChange;
@end

@implementation SCLSettingsSyncStateSending

- (void)settingsDidChange
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateSending;
  [(SCLSettingsSyncState *)&v6 settingsDidChange];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 pendingSendState];
  [v3 transitionToState:v5];
}

- (void)message:(id)a3 failedWithError:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = SCLSettingsSyncStateSending;
  v7 = a3;
  [(SCLSettingsSyncState *)&v17 message:v7 failedWithError:v6];
  v8 = [(SCLSettingsSyncState *)self stateMachine:v17.receiver];
  v9 = [v8 context];
  v10 = [v9 messageIdentifier];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v12 = [(SCLSettingsSyncState *)self stateMachine];
    v13 = [v12 context];
    [v13 setError:v6];

    v14 = [(SCLSettingsSyncState *)self stateMachine];
    v15 = [(SCLSettingsSyncState *)self stateMachine];
    v16 = [v15 failedState];
    [v14 transitionToState:v16];
  }
}

- (void)messageDidSend:(id)a3
{
  v12.receiver = self;
  v12.super_class = SCLSettingsSyncStateSending;
  v4 = a3;
  [(SCLSettingsSyncState *)&v12 messageDidSend:v4];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v12.receiver];
  v6 = [v5 context];
  v7 = [v6 messageIdentifier];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = [(SCLSettingsSyncState *)self stateMachine];
    v10 = [(SCLSettingsSyncState *)self stateMachine];
    v11 = [v10 sentState];
    [v9 transitionToState:v11];
  }
}

@end