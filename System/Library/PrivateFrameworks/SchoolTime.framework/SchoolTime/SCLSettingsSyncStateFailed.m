@interface SCLSettingsSyncStateFailed
- (id)retryCriteriaWithInterval:(int64_t)a3;
- (void)didEnterWithPreviousState:(id)a3;
- (void)settingsDidChange;
- (void)significantUserInteractionOccurred;
- (void)transitionToPendingState;
- (void)xpcActivityStarted;
@end

@implementation SCLSettingsSyncStateFailed

- (void)didEnterWithPreviousState:(id)a3
{
  v18.receiver = self;
  v18.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v18 didEnterWithPreviousState:a3];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 context];
  v6 = [v5 recoveryHistory];

  v7 = [(SCLSettingsSyncState *)self stateMachine];
  v8 = [v7 context];
  v9 = [v8 error];

  v10 = [(SCLSettingsSyncState *)self stateMachine];
  v11 = [v10 errorHandler];
  v12 = [v11 behaviorForError:v9 history:v6];

  v13 = [(SCLSettingsSyncState *)self stateMachine];
  v14 = [v13 context];
  [v14 addRecoveryHistory:{objc_msgSend(v12, "recoveryType")}];

  v15 = [v12 recoveryType];
  if (v15 == 1)
  {
    v16 = [(SCLSettingsSyncState *)self stateMachine];
    v17 = -[SCLSettingsSyncStateFailed retryCriteriaWithInterval:](self, "retryCriteriaWithInterval:", [v12 retryInterval]);
    [v16 scheduleRetryWithActivityCriteria:v17];
  }

  else if (!v15)
  {
    [(SCLSettingsSyncStateFailed *)self transitionToPendingState];
  }
}

- (void)settingsDidChange
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v6 settingsDidChange];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 pendingSendState];
  [v3 transitionToState:v5];
}

- (void)significantUserInteractionOccurred
{
  v6.receiver = self;
  v6.super_class = SCLSettingsSyncStateFailed;
  [(SCLSettingsSyncState *)&v6 significantUserInteractionOccurred];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v4 = [(SCLSettingsSyncState *)self stateMachine];
  v5 = [v4 pendingSendState];
  [v3 transitionToState:v5];
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
  v5 = [(SCLSettingsSyncState *)self stateMachine];
  v3 = [(SCLSettingsSyncState *)self stateMachine];
  v4 = [v3 pendingSendState];
  [v5 transitionToState:v4];
}

- (id)retryCriteriaWithInterval:(int64_t)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], a3);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86380], 1);

  return v4;
}

@end