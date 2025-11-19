@interface SCLSettingsSyncStateSent
- (void)didEnterWithPreviousState:(id)a3;
- (void)message:(id)a3 didFailToAcknowledgeWithError:(id)a4;
- (void)messageWasDelivered:(id)a3;
- (void)settingsDidChange;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStateSent

- (void)didEnterWithPreviousState:(id)a3
{
  v3.receiver = self;
  v3.super_class = SCLSettingsSyncStateSent;
  [(SCLSettingsSyncState *)&v3 didEnterWithPreviousState:a3];
}

- (void)messageWasDelivered:(id)a3
{
  v12.receiver = self;
  v12.super_class = SCLSettingsSyncStateSent;
  v4 = a3;
  [(SCLSettingsSyncState *)&v12 messageWasDelivered:v4];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v12.receiver];
  v6 = [v5 context];
  v7 = [v6 messageIdentifier];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = [(SCLSettingsSyncState *)self stateMachine];
    v10 = [(SCLSettingsSyncState *)self stateMachine];
    v11 = [v10 syncedState];
    [v9 transitionToState:v11];
  }
}

- (void)message:(id)a3 didFailToAcknowledgeWithError:(id)a4
{
  v12.receiver = self;
  v12.super_class = SCLSettingsSyncStateSent;
  v6 = a4;
  [(SCLSettingsSyncState *)&v12 message:a3 didFailToAcknowledgeWithError:v6];
  v7 = [(SCLSettingsSyncState *)self stateMachine:v12.receiver];
  v8 = [v7 context];
  [v8 setError:v6];

  v9 = [(SCLSettingsSyncState *)self stateMachine];
  v10 = [(SCLSettingsSyncState *)self stateMachine];
  v11 = [v10 failedState];
  [v9 transitionToState:v11];
}

- (void)xpcActivityStarted
{
  v7.receiver = self;
  v7.super_class = SCLSettingsSyncStateSent;
  [(SCLSettingsSyncState *)&v7 xpcActivityStarted];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.schooltime" code:5 userInfo:0];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 context];
  v6 = [v5 messageIdentifier];
  [(SCLSettingsSyncStateSent *)self message:v6 didFailToAcknowledgeWithError:v3];
}

- (void)settingsDidChange
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateSent;
  [(SCLSettingsSyncState *)&v6 settingsDidChange];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 pendingSendState];
  [v3 transitionToState:v5];
}

@end