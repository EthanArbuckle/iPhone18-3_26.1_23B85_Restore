@interface SCLSettingsSyncStatePendingSend
- (void)commitSettings;
- (void)didEnqueueMessage:(id)message;
- (void)didEnterWithPreviousState:(id)state;
- (void)enqueueFailedWithError:(id)error;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStatePendingSend

- (void)didEnterWithPreviousState:(id)state
{
  v7.receiver = self;
  v7.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v7 didEnterWithPreviousState:state];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  context = [stateMachine context];
  [context setMessageIdentifier:0];

  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine2 scheduleCommitTimerWithInterval:30.0];
}

- (void)settingsDidChange
{
  v4.receiver = self;
  v4.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v4 settingsDidChange];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine scheduleCommitTimerWithInterval:30.0];
}

- (void)xpcActivityStarted
{
  v4.receiver = self;
  v4.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v4 xpcActivityStarted];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine performSync];
}

- (void)commitSettings
{
  v4.receiver = self;
  v4.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v4 commitSettings];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine performSync];
}

- (void)significantUserInteractionOccurred
{
  v5.receiver = self;
  v5.super_class = SCLSettingsSyncStatePendingSend;
  [(SCLSettingsSyncState *)&v5 significantUserInteractionOccurred];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine cancelCommitTimer];

  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  [stateMachine2 performSync];
}

- (void)enqueueFailedWithError:(id)error
{
  v10.receiver = self;
  v10.super_class = SCLSettingsSyncStatePendingSend;
  errorCopy = error;
  [(SCLSettingsSyncState *)&v10 enqueueFailedWithError:errorCopy];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v10.receiver];
  context = [v5 context];
  [context setError:errorCopy];

  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  failedState = [stateMachine2 failedState];
  [stateMachine transitionToState:failedState];
}

- (void)didEnqueueMessage:(id)message
{
  v10.receiver = self;
  v10.super_class = SCLSettingsSyncStatePendingSend;
  messageCopy = message;
  [(SCLSettingsSyncState *)&v10 didEnqueueMessage:messageCopy];
  v5 = [(SCLSettingsSyncState *)self stateMachine:v10.receiver];
  context = [v5 context];
  [context setMessageIdentifier:messageCopy];

  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  sendingState = [stateMachine2 sendingState];
  [stateMachine transitionToState:sendingState];
}

@end