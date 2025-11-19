@interface SASSiriPocketStateManager
+ (id)sharedManager;
- (BOOL)pocketStateShouldPreventVoiceTriggerForActivationRequest:(id)a3;
- (id)_init;
- (id)_stringForPocketState:(int64_t)a3;
- (void)_updateForPocketState:(int64_t)a3;
- (void)queryForPocketStateWithCompletion:(id)a3;
@end

@implementation SASSiriPocketStateManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SASSiriPocketStateManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __42__SASSiriPocketStateManager_sharedManager__block_invoke()
{
  sharedManager_manager = [[SASSiriPocketStateManager alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SASSiriPocketStateManager;
  v2 = [(SASSiriPocketStateManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69634D8]);
    [(SASSiriPocketStateManager *)v2 _setPocketStateManager:v3];

    v4 = [(SASSiriPocketStateManager *)v2 _pocketStateManager];
    [v4 setDelegate:v2];

    [(SASSiriPocketStateManager *)v2 _setCurrentPocketState:4];
  }

  return v2;
}

- (void)queryForPocketStateWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[SASSiriPocketStateManager queryForPocketStateWithCompletion:]";
    _os_log_impl(&dword_1C8137000, v5, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: Querying Pocket State", buf, 0xCu);
  }

  [(SASSiriPocketStateManager *)self _updateForPocketState:4];
  v6 = [(SASSiriPocketStateManager *)self _pocketStateManager];
  v7 = MEMORY[0x1E69E96A0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke;
  v10[3] = &unk_1E82F3760;
  objc_copyWeak(&v12, &location);
  v8 = v4;
  v11 = v8;
  [v6 queryStateOntoQueue:MEMORY[0x1E69E96A0] andMonitorFor:v10 withTimeout:0.5 andHandler:0.3];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x1E698D0A0];
    v8 = *MEMORY[0x1E698D0A0];
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke_cold_1(v5, v7);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v7;
        v10 = [WeakRetained _stringForPocketState:a2];
        v13 = 136315394;
        v14 = "[SASSiriPocketStateManager queryForPocketStateWithCompletion:]_block_invoke";
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: Pocket state query successful with state: %@", &v13, 0x16u);
      }

      [WeakRetained _updateForPocketState:a2];
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, a2, v5);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)pocketStateShouldPreventVoiceTriggerForActivationRequest:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 context];
  v5 = [v4 speechRequestOptions];
  v6 = [v5 voiceTriggerEventInfo];

  if (v6 && ([v6 objectForKey:@"hfpTriggerDuringPhoneCall"], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, v8))
  {
    v9 = *MEMORY[0x1E698D0A0];
    v10 = 0;
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[SASSiriPocketStateManager pocketStateShouldPreventVoiceTriggerForActivationRequest:]";
      _os_log_impl(&dword_1C8137000, v9, OS_LOG_TYPE_DEFAULT, "%s #activation hfpTriggerDuringPhoneCall = YES bypassing pocket state detector", &v13, 0xCu);
      v10 = 0;
    }
  }

  else
  {
    v10 = [(SASSiriPocketStateManager *)self pocketStateShouldPreventVoiceTrigger];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_updateForPocketState:(int64_t)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(SASSiriPocketStateManager *)self _stringForPocketState:a3];
    v9 = 136315394;
    v10 = "[SASSiriPocketStateManager _updateForPocketState:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1C8137000, v6, OS_LOG_TYPE_DEFAULT, "%s #SiriPocketStateManager: PocketState changed to %@", &v9, 0x16u);
  }

  [(SASSiriPocketStateManager *)self _setCurrentPocketState:a3];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_stringForPocketState:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return @"CMPocketStateTypeOutOfPocket";
  }

  else
  {
    return off_1E82F3780[a3 - 1];
  }
}

void __63__SASSiriPocketStateManager_queryForPocketStateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[SASSiriPocketStateManager queryForPocketStateWithCompletion:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1C8137000, a2, OS_LOG_TYPE_ERROR, "%s #SiriPocketStateManager: Failed to query for pocket state: %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end