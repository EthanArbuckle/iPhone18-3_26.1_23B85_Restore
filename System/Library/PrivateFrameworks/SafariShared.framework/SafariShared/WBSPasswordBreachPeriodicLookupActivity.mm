@interface WBSPasswordBreachPeriodicLookupActivity
- (WBSPasswordBreachPeriodicLookupActivity)init;
- (void)_activityDidTransitionToRunState:(id)state;
- (void)_registerActivity;
- (void)_runActivityWithCompletionHandler:(id)handler;
@end

@implementation WBSPasswordBreachPeriodicLookupActivity

- (WBSPasswordBreachPeriodicLookupActivity)init
{
  v6.receiver = self;
  v6.super_class = WBSPasswordBreachPeriodicLookupActivity;
  v2 = [(WBSPasswordBreachPeriodicLookupActivity *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WBSPasswordBreachPeriodicLookupActivity *)v2 _registerActivity];
    v4 = v3;
  }

  return v3;
}

- (void)_registerActivity
{
  v3 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_INFO, "Lookup activity checking in.", buf, 2u);
  }

  v4 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __60__WBSPasswordBreachPeriodicLookupActivity__registerActivity__block_invoke;
  handler[3] = &unk_1E7FC9220;
  handler[4] = self;
  xpc_activity_register("com.apple.Safari.PasswordBreachHelper.PeriodicLookupActivity", v4, handler);
}

void __60__WBSPasswordBreachPeriodicLookupActivity__registerActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3))
  {
    if (xpc_activity_should_defer(v3))
    {
      v4 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Lookup activity transitioned to state Run, but criteria are no longer satisfied. Defering.", v13, 2u);
      }

      if (!xpc_activity_set_state(v3, 3))
      {
        v5 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __60__WBSPasswordBreachPeriodicLookupActivity__registerActivity__block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }
    }

    else
    {
      [*(a1 + 32) _activityDidTransitionToRunState:v3];
    }
  }
}

- (void)_activityDidTransitionToRunState:(id)state
{
  stateCopy = state;
  v5 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v5, OS_LOG_TYPE_INFO, "Lookup activity transitioned to state Run.", buf, 2u);
  }

  v6 = os_transaction_create();
  if (!xpc_activity_set_state(stateCopy, 4))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordBreachPeriodicLookupActivity *)v7 _activityDidTransitionToRunState:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__WBSPasswordBreachPeriodicLookupActivity__activityDidTransitionToRunState___block_invoke;
  v17[3] = &unk_1E7FB6E30;
  v18 = stateCopy;
  v19 = v6;
  v15 = v6;
  v16 = stateCopy;
  [(WBSPasswordBreachPeriodicLookupActivity *)self _runActivityWithCompletionHandler:v17];
}

void __76__WBSPasswordBreachPeriodicLookupActivity__activityDidTransitionToRunState___block_invoke(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __76__WBSPasswordBreachPeriodicLookupActivity__activityDidTransitionToRunState___block_invoke_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  v9 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Lookup activity transitioned to state Done.", v10, 2u);
  }
}

- (void)_runActivityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__WBSPasswordBreachPeriodicLookupActivity__runActivityWithCompletionHandler___block_invoke;
  v5[3] = &unk_1E7FC90F0;
  v6 = handlerCopy;
  v4 = handlerCopy;
  [WBSPasswordBreachManager getSharedManagerWithCompletionHandler:v5];
}

void __77__WBSPasswordBreachPeriodicLookupActivity__runActivityWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__WBSPasswordBreachPeriodicLookupActivity__runActivityWithCompletionHandler___block_invoke_2;
    v5[3] = &unk_1E7FC9078;
    v6 = *(a1 + 32);
    [a2 performNextSessionLookupIgnoringMinimumDelay:0 completionHandler:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

@end