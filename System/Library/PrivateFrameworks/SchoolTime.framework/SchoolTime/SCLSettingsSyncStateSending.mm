@interface SCLSettingsSyncStateSending
- (void)message:(id)message failedWithError:(id)error;
- (void)messageDidSend:(id)send;
- (void)settingsDidChange;
@end

@implementation SCLSettingsSyncStateSending

- (void)settingsDidChange
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateSending;
  [(SCLSettingsSyncState *)&v6 settingsDidChange];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  pendingSendState = [stateMachine2 pendingSendState];
  [stateMachine transitionToState:pendingSendState];
}

- (void)message:(id)message failedWithError:(id)error
{
  errorCopy = error;
  v17.receiver = self;
  v17.super_class = SCLSettingsSyncStateSending;
  messageCopy = message;
  [(SCLSettingsSyncState *)&v17 message:messageCopy failedWithError:errorCopy];
  v8 = [(SCLSettingsSyncState *)self stateMachine:v17.receiver];
  context = [v8 context];
  messageIdentifier = [context messageIdentifier];
  v11 = [messageCopy isEqual:messageIdentifier];

  if (v11)
  {
    stateMachine = [(SCLSettingsSyncState *)self stateMachine];
    context2 = [stateMachine context];
    [context2 setError:errorCopy];

    stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
    stateMachine3 = [(SCLSettingsSyncState *)self stateMachine];
    failedState = [stateMachine3 failedState];
    [stateMachine2 transitionToState:failedState];
  }
}

- (void)messageDidSend:(id)send
{
  v12.receiver = self;
  v12.super_class = SCLSettingsSyncStateSending;
  sendCopy = send;
  [(SCLSettingsSyncState *)&v12 messageDidSend:sendCopy];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v12.receiver];
  context = [v5 context];
  messageIdentifier = [context messageIdentifier];
  v8 = [sendCopy isEqual:messageIdentifier];

  if (v8)
  {
    stateMachine = [(SCLSettingsSyncState *)self stateMachine];
    stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
    sentState = [stateMachine2 sentState];
    [stateMachine transitionToState:sentState];
  }
}

@end