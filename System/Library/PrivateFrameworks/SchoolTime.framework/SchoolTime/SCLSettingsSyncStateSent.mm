@interface SCLSettingsSyncStateSent
- (void)didEnterWithPreviousState:(id)state;
- (void)message:(id)message didFailToAcknowledgeWithError:(id)error;
- (void)messageWasDelivered:(id)delivered;
- (void)settingsDidChange;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStateSent

- (void)didEnterWithPreviousState:(id)state
{
  v3.receiver = self;
  v3.super_class = SCLSettingsSyncStateSent;
  [(SCLSettingsSyncState *)&v3 didEnterWithPreviousState:state];
}

- (void)messageWasDelivered:(id)delivered
{
  v12.receiver = self;
  v12.super_class = SCLSettingsSyncStateSent;
  deliveredCopy = delivered;
  [(SCLSettingsSyncState *)&v12 messageWasDelivered:deliveredCopy];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v12.receiver];
  context = [v5 context];
  messageIdentifier = [context messageIdentifier];
  v8 = [deliveredCopy isEqual:messageIdentifier];

  if (v8)
  {
    stateMachine = [(SCLSettingsSyncState *)self stateMachine];
    stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
    syncedState = [stateMachine2 syncedState];
    [stateMachine transitionToState:syncedState];
  }
}

- (void)message:(id)message didFailToAcknowledgeWithError:(id)error
{
  v12.receiver = self;
  v12.super_class = SCLSettingsSyncStateSent;
  errorCopy = error;
  [(SCLSettingsSyncState *)&v12 message:message didFailToAcknowledgeWithError:errorCopy];
  v7 = [(SCLSettingsSyncState *)self stateMachine:v12.receiver];
  context = [v7 context];
  [context setError:errorCopy];

  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  failedState = [stateMachine2 failedState];
  [stateMachine transitionToState:failedState];
}

- (void)xpcActivityStarted
{
  v7.receiver = self;
  v7.super_class = SCLSettingsSyncStateSent;
  [(SCLSettingsSyncState *)&v7 xpcActivityStarted];
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.schooltime" code:5 userInfo:0];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  context = [stateMachine context];
  messageIdentifier = [context messageIdentifier];
  [(SCLSettingsSyncStateSent *)self message:messageIdentifier didFailToAcknowledgeWithError:v3];
}

- (void)settingsDidChange
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateSent;
  [(SCLSettingsSyncState *)&v6 settingsDidChange];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  pendingSendState = [stateMachine2 pendingSendState];
  [stateMachine transitionToState:pendingSendState];
}

@end