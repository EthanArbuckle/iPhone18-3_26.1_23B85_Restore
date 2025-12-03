@interface SCLSettingsSyncStateFailed
- (id)retryCriteriaWithInterval:(int64_t)interval;
- (void)didEnterWithPreviousState:(id)state;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
- (void)transitionToPendingState;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStateFailed

- (void)didEnterWithPreviousState:(id)state
{
  v18.receiver = self;
  v18.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v18 didEnterWithPreviousState:state];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  context = [stateMachine context];
  recoveryHistory = [context recoveryHistory];

  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  context2 = [stateMachine2 context];
  error = [context2 error];

  stateMachine3 = [(SCLSettingsSyncState *)self stateMachine];
  errorHandler = [stateMachine3 errorHandler];
  v12 = [errorHandler behaviorForError:error history:recoveryHistory];

  stateMachine4 = [(SCLSettingsSyncState *)self stateMachine];
  context3 = [stateMachine4 context];
  [context3 addRecoveryHistory:{objc_msgSend(v12, "recoveryType")}];

  recoveryType = [v12 recoveryType];
  if (recoveryType == 1)
  {
    stateMachine5 = [(SCLSettingsSyncState *)self stateMachine];
    v17 = -[SCLSettingsSyncStateFailed retryCriteriaWithInterval:](self, "retryCriteriaWithInterval:", [v12 retryInterval]);
    [stateMachine5 scheduleRetryWithActivityCriteria:v17];
  }

  else if (!recoveryType)
  {
    [(SCLSettingsSyncStateFailed *)self transitionToPendingState];
  }
}

- (void)settingsDidChange
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v6 settingsDidChange];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  pendingSendState = [stateMachine2 pendingSendState];
  [stateMachine transitionToState:pendingSendState];
}

- (void)significantUserInteractionOccurred
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v6 significantUserInteractionOccurred];
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  pendingSendState = [stateMachine2 pendingSendState];
  [stateMachine transitionToState:pendingSendState];
}

- (void)xpcActivityStarted
{
  v3.receiver = self;
  v3.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v3 xpcActivityStarted];
  [(SCLSettingsSyncStateFailed *)self transitionToPendingState];
}

- (void)transitionToPendingState
{
  stateMachine = [(SCLSettingsSyncState *)self stateMachine];
  stateMachine2 = [(SCLSettingsSyncState *)self stateMachine];
  pendingSendState = [stateMachine2 pendingSendState];
  [stateMachine transitionToState:pendingSendState];
}

- (id)retryCriteriaWithInterval:(int64_t)interval
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], interval);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);

  return v4;
}

@end