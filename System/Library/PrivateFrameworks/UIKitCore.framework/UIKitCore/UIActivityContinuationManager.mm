@interface UIActivityContinuationManager
- (BOOL)_continueUserActivity:(id)a3;
- (BOOL)_delegateHandledContinueActivityWithType:(id)a3;
- (BOOL)isTrackingActivityContinuationForResponder:(id)a3 document:(id)a4 userActivity:(id)a5;
- (UIActivityContinuationManager)init;
- (UIActivityContinuationManager)initWithApplicationContext:(id)a3;
- (id)_fetchUserActivityWithUUID:(id)a3 completionHandler:(id)a4;
- (id)activityContinuationDictionaryWithAction:(id)a3 sourceApplication:(id)a4 originatingProcess:(id)a5;
- (void)_cleanupUserActivity:(id)a3 activityIdentifier:(id)a4;
- (void)_clearCurrentActivityContinuationCancelingProgress:(BOOL)a3;
- (void)_didFailToContinueUserActivityWithType:(id)a3 error:(id)a4;
- (void)_displayCurrentActivityContinuationProgressUI;
- (void)_endCurrentActivityContinuationAndDisplayError:(id)a3;
- (void)_endCurrentActivityContinuationWithCompletion:(id)a3;
- (void)_hideCurrentActivityContinuationProgressUI;
- (void)_userActivityWillSave:(id)a3;
- (void)addResponder:(id)a3 document:(id)a4 forUserActivity:(id)a5;
- (void)handleActivityContinuation:(id)a3 isSuspended:(BOOL)a4;
- (void)removeResponder:(id)a3 document:(id)a4 forUserActivity:(id)a5;
- (void)userActivityWillSave:(id)a3;
@end

@implementation UIActivityContinuationManager

- (UIActivityContinuationManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIActivityContinuationManager.m" lineNumber:65 description:@"Use initWithApplication:"];

  return 0;
}

- (UIActivityContinuationManager)initWithApplicationContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIActivityContinuationManager;
  v5 = [(UIActivityContinuationManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, v4);
  }

  return v6;
}

- (void)_displayCurrentActivityContinuationProgressUI
{
  v3 = self->_currentActivityContinuationType;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v5 = [WeakRetained activityContinuationManagerUserCancelledError:self];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__UIActivityContinuationManager__displayCurrentActivityContinuationProgressUI__block_invoke;
  aBlock[3] = &unk_1E70F6228;
  aBlock[4] = self;
  v11 = v3;
  v12 = v5;
  v6 = v5;
  v7 = v3;
  v8 = _Block_copy(aBlock);
  v9 = objc_loadWeakRetained(&self->_context);
  [v9 activityContinuationManager:self displayProgressUI:0 dismissalHandler:v8];
}

uint64_t __78__UIActivityContinuationManager__displayCurrentActivityContinuationProgressUI__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _clearCurrentActivityContinuationCancelingProgress:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _didFailToContinueUserActivityWithType:v3 error:v4];
}

- (void)_hideCurrentActivityContinuationProgressUI
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self hideProgressUIWithCompletion:0];
}

- (void)_endCurrentActivityContinuationAndDisplayError:(id)a3
{
  v4 = a3;
  [(UIActivityContinuationManager *)self _clearCurrentActivityContinuationCancelingProgress:0];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self configureProgressUIWithError:v4];
}

- (void)_endCurrentActivityContinuationWithCompletion:(id)a3
{
  v4 = a3;
  [(UIActivityContinuationManager *)self _clearCurrentActivityContinuationCancelingProgress:0];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self hideProgressUIWithCompletion:v4];
}

- (BOOL)_continueUserActivity:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  LOBYTE(self) = [WeakRetained activityContinuationManager:self continueUserActivity:v4];

  return self;
}

- (void)_didFailToContinueUserActivityWithType:(id)a3 error:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained activityContinuationManager:self didFailToContinueUserActivityWithType:v7 error:v6];
  }
}

- (BOOL)_delegateHandledContinueActivityWithType:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v6 = [WeakRetained activityContinuationManager:self willContinueUserActivityWithType:v4];

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v7 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v12 = _UIInternalPreference_ActivityContinuationProgressWindowSuppressed, _UIInternalPreferencesRevisionVar == _UIInternalPreference_ActivityContinuationProgressWindowSuppressed))
  {
    v8 = 0;
  }

  else
  {
    do
    {
      v8 = v7 < v12;
      if (v7 < v12)
      {
        break;
      }

      _UIInternalPreferenceSync(v7, &_UIInternalPreference_ActivityContinuationProgressWindowSuppressed, @"ActivityContinuationProgressWindowSuppressed", _UIInternalPreferenceUpdateBool);
      v12 = _UIInternalPreference_ActivityContinuationProgressWindowSuppressed;
    }

    while (v7 != _UIInternalPreference_ActivityContinuationProgressWindowSuppressed);
  }

  if (byte_1EA95E77C)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v6;

  return v10 & 1;
}

- (id)_fetchUserActivityWithUUID:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"UIApplicationLaunchOptionsUserActivityKey"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _payloadForIdentifier:@"UAINAppIntentPayload"];
    v10 = [v9 length];

    if (v10)
    {
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v11 = _MergedGlobals_1337;
      v23 = _MergedGlobals_1337;
      if (!_MergedGlobals_1337)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __getLNUserActivityHelperClass_block_invoke;
        v19[3] = &unk_1E70F2F20;
        v19[4] = &v20;
        __getLNUserActivityHelperClass_block_invoke(v19);
        v11 = v21[3];
      }

      v12 = v11;
      _Block_object_dispose(&v20, 8);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __78__UIActivityContinuationManager__fetchUserActivityWithUUID_completionHandler___block_invoke;
      v16[3] = &unk_1E70F4A50;
      v18 = v6;
      v17 = v8;
      [v11 associateAppIntentWithUserActivity:v17 completionHandler:v16];
    }

    else
    {
      (*(v6 + 2))(v6, v8, 0);
    }
  }

  else
  {
    v13 = [v5 objectForKey:@"UIApplicationLaunchOptionsUserActivityIdentifierKey"];
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
    [MEMORY[0x1E696B090] _fetchUserActivityWithUUID:v14 completionHandler:v6];
  }

  return 0;
}

- (void)_clearCurrentActivityContinuationCancelingProgress:(BOOL)a3
{
  v3 = a3;
  v5 = self->_currentActivityContinuationProgress;
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationType:0];
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationUUIDString:0];
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationProgress:0];
  if (v3)
  {
    [(NSProgress *)v5 cancel];
  }
}

- (void)handleActivityContinuation:(id)a3 isSuspended:(BOOL)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKey:@"UIApplicationLaunchOptionsUserActivityTypeKey"];
  v8 = [v6 objectForKey:@"UIApplicationLaunchOptionsUserActivityIdentifierKey"];
  v9 = [v6 objectForKeyedSubscript:@"UINSUserActivitySourceApplicationKey"];
  if (!v8)
  {
    NSLog(&cfstr_SNoActivityUui.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", v6);
    goto LABEL_22;
  }

  if (!v7)
  {
    NSLog(&cfstr_SNoActivityTyp.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", v6);
    goto LABEL_22;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledWithAct.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", v6);
  }

  if (self->_currentActivityContinuationUUIDString)
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SNewActivityCa.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", self->_currentActivityContinuationType, self->_currentActivityContinuationUUIDString, v7, v8);
    }

    if ([(NSString *)self->_currentActivityContinuationType isEqualToString:v7])
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SSkippingCallT.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]");
      }

      [(UIActivityContinuationManager *)self _setCurrentActivityContinuationType:v7];
      [(UIActivityContinuationManager *)self _setCurrentActivityContinuationUUIDString:v8];
      goto LABEL_19;
    }

    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A250];
    v22 = *MEMORY[0x1E696A578];
    v12 = _UINSLocalizedStringWithDefaultValue(@"User selected another activity, the previous activity is no longer available", @"User selected another activity, the previous activity is no longer available");
    v23[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v14 = [v10 errorWithDomain:v11 code:3072 userInfo:v13];

    v15 = self->_currentActivityContinuationType;
    [(UIActivityContinuationManager *)self _clearCurrentActivityContinuationCancelingProgress:1];
    [(UIActivityContinuationManager *)self _didFailToContinueUserActivityWithType:v15 error:v14];
  }

  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationType:v7];
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationUUIDString:v8];
  if ([(UIActivityContinuationManager *)self _delegateHandledContinueActivityWithType:v7])
  {
    [(UIActivityContinuationManager *)self _hideCurrentActivityContinuationProgressUI];
  }

  else
  {
    [(UIActivityContinuationManager *)self _displayCurrentActivityContinuationProgressUI];
  }

LABEL_19:
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SLookingAsynch.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", v8);
  }

  kdebug_trace();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke;
  v17[3] = &unk_1E7127A60;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v7;
  v21 = a4;
  v16 = [(UIActivityContinuationManager *)self _fetchUserActivityWithUUID:v6 completionHandler:v17];
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationProgress:v16];

LABEL_22:
}

void __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke_2;
  aBlock[3] = &unk_1E7109190;
  v7 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v17 = v7;
  v18 = v5;
  v19 = *(a1 + 48);
  v20 = v6;
  v21 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  v10 = _Block_copy(aBlock);
  v11 = pthread_main_np();
  if (_UIStateRestorationDebugLogEnabled())
  {
    v12 = @"NO";
    if (*(a1 + 64))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (v11 == 1)
    {
      v12 = @"YES";
    }

    NSLog(&cfstr_SAboutToCallAc.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke", v13, v12);
  }

  v14 = *(a1 + 64);
  v15 = _UIStateRestorationDebugLogEnabled();
  if (v14 == 1 && v11 == 1)
  {
    if (v15)
    {
      NSLog(&cfstr_SCallingActivi.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke");
    }

    v10[2](v10);
  }

  else
  {
    if (v15)
    {
      NSLog(&cfstr_SCallingActivi_0.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke");
    }

    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke_2(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if ([*(*(a1 + 32) + 24) isEqualToString:*(a1 + 40)])
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(a1 + 56))
      {
        [v2 _setSourceApplication:?];
        v2 = *(a1 + 48);
      }

      v3 = *(a1 + 32);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke_3;
      v17[3] = &unk_1E70F35B8;
      v4 = v2;
      v5 = *(a1 + 32);
      v18 = v4;
      v19 = v5;
      [v3 _endCurrentActivityContinuationWithCompletion:v17];
    }

    else
    {
      v6 = *(a1 + 64);
      if (!v6)
      {
        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E696A250];
        v20 = *MEMORY[0x1E696A578];
        v9 = _UINSLocalizedStringWithDefaultValue(@"Unknown Handoff error", @"Unknown Handoff error");
        v21[0] = v9;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
        v6 = [v7 errorWithDomain:v8 code:4608 userInfo:v10];
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCouldNotGetUs.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke_2", *(a1 + 40), v6);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
      v12 = [WeakRetained activityContinuationManagerHandleErrorsByConfiguringProgressUI:*(a1 + 32)];

      v13 = *(a1 + 32);
      if (v12)
      {
        [*(a1 + 32) _endCurrentActivityContinuationAndDisplayError:v6];
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke_4;
        v14[3] = &unk_1E70F6228;
        v14[4] = v13;
        v15 = *(a1 + 72);
        v16 = v6;
        [v13 _endCurrentActivityContinuationWithCompletion:v14];
      }
    }
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SAnotherUserAc.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke_2", *(*(a1 + 32) + 24), *(*(a1 + 32) + 16), *(a1 + 40), *(a1 + 72));
  }
}

void __72__UIActivityContinuationManager_handleActivityContinuation_isSuspended___block_invoke_3(uint64_t a1)
{
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCallingApplic.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke_3", *(a1 + 32));
  }

  v2 = [*(a1 + 40) _continueUserActivity:*(a1 + 32)];
  if (_UIStateRestorationDebugLogEnabled())
  {
    v3 = @"No";
    if (v2)
    {
      v3 = @"Yes";
    }

    NSLog(&cfstr_SDelegateRetur_0.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]_block_invoke_3", v3);
  }
}

- (id)activityContinuationDictionaryWithAction:(id)a3 sourceApplication:(id)a4 originatingProcess:(id)a5
{
  v31[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledWithAct_0.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", v8);
  }

  if (dyld_program_sdk_at_least())
  {
    v11 = [v8 identifier];
    v12 = [v8 activityType];
    v13 = [v8 userActivityData];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E696B090]) _initWithUserActivityData:v13];
      v15 = [v14 _uniqueIdentifier];
      v16 = [v15 UUIDString];

      v17 = [v14 activityType];

      v12 = v17;
      v11 = v16;
    }

    else
    {
      v14 = 0;
    }

    v18 = 0;
    if (v11 && v12)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        WeakRetained = objc_loadWeakRetained(&self->_context);
        NSLog(&cfstr_SCheckingForAc_0.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", v11, v12, WeakRetained);
      }

      if (v14)
      {
        if (v9)
        {
          [v14 _setSourceApplication:v9];
        }

        if (v10)
        {
          [v14 _setOriginatingProcess:v10];
        }

        v30[0] = @"UIApplicationLaunchOptionsUserActivityIdentifierKey";
        v30[1] = @"_UISceneConnectionOptionsUserActivityKey";
        v31[0] = v11;
        v31[1] = v14;
        v30[2] = @"UIApplicationLaunchOptionsUserActivityKey";
        v30[3] = @"_UISceneConnectionOptionsUserActivityTypeKey";
        v31[2] = v14;
        v31[3] = v12;
        v30[4] = @"UIApplicationLaunchOptionsUserActivityTypeKey";
        v31[4] = v12;
        v20 = MEMORY[0x1E695DF20];
        v21 = v31;
        v22 = v30;
        v23 = 5;
      }

      else
      {
        v28[0] = @"UIApplicationLaunchOptionsUserActivityIdentifierKey";
        v28[1] = @"_UISceneConnectionOptionsUserActivityTypeKey";
        v29[0] = v11;
        v29[1] = v12;
        v28[2] = @"UIApplicationLaunchOptionsUserActivityTypeKey";
        v29[2] = v12;
        v20 = MEMORY[0x1E695DF20];
        v21 = v29;
        v22 = v28;
        v23 = 3;
      }

      v24 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
      v18 = v24;
      if (v9)
      {
        v25 = [v24 mutableCopy];
        [v25 setObject:v9 forKeyedSubscript:@"UINSUserActivitySourceApplicationKey"];
        v26 = [v25 copy];

        v18 = v26;
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCreatedActivi.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", v11, v18, v12);
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SReturningActi.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", v18);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)isTrackingActivityContinuationForResponder:(id)a3 document:(id)a4 userActivity:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = [a5 _uniqueIdentifier];
    v10 = [v9 UUIDString];

    if (!v10)
    {
      v15 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v11 = [_activityContinuationMap objectForKeyedSubscript:v10];
    v12 = v11;
    if (v11)
    {
      if (v7)
      {
        v13 = 2;
        v14 = v7;
LABEL_10:
        v16 = [v11 objectAtIndexedSubscript:v13];
        v15 = [v16 containsObject:v14];

LABEL_12:
        goto LABEL_13;
      }

      if (v8)
      {
        v13 = 1;
        v14 = v8;
        goto LABEL_10;
      }
    }

    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

- (void)_userActivityWillSave:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _uniqueIdentifier];
  v6 = [v5 UUIDString];

  if (v6)
  {
    v7 = [_activityContinuationMap objectForKeyedSubscript:v6];
    v8 = v7;
    if (!v7)
    {
LABEL_22:

      goto LABEL_23;
    }

    v9 = [v7 objectAtIndexedSubscript:1];
    v10 = [v9 allObjects];
    if ([v10 count])
    {
      v11 = [v10 objectAtIndex:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v8 objectAtIndexedSubscript:2];

    v13 = [v12 allObjects];
    v14 = dyld_program_sdk_at_least();
    if (v14)
    {
      if (![v13 count] && !v11)
      {
LABEL_21:

        goto LABEL_22;
      }

      v22 = v12;
      v24 = v10;
      [v4 _beginUserInfoUpdate:0];
    }

    else
    {
      v22 = v12;
      v24 = v10;
      v15 = [MEMORY[0x1E695DF20] dictionary];
      [v4 setUserInfo:v15];
    }

    v23 = v11;
    [v11 updateUserActivityState:v4];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v25 + 1) + 8 * i) updateUserActivityState:v4];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    if (v14)
    {
      [v4 _finishUserInfoUpdate];
    }

    v11 = v23;
    v10 = v24;
    v12 = v22;
    goto LABEL_21;
  }

LABEL_23:
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self didUpdateUserActivity:v4];
}

- (void)userActivityWillSave:(id)a3
{
  v4 = a3;
  if (pthread_main_np() == 1)
  {
    [(UIActivityContinuationManager *)self _userActivityWillSave:v4];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__UIActivityContinuationManager_userActivityWillSave___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = v4;
    dispatch_sync(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)addResponder:(id)a3 document:(id)a4 forUserActivity:(id)a5
{
  v23[3] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 _uniqueIdentifier];
    v13 = [v12 UUIDString];

    if (!v13)
    {
LABEL_19:

      goto LABEL_20;
    }

    if (v8)
    {
      v14 = [v11 _frameworkDelegate];

      if (!v14)
      {
        [v11 _setFrameworkDelegate:self];
      }
    }

    v15 = _activityContinuationMap;
    if (!_activityContinuationMap)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v17 = _activityContinuationMap;
      _activityContinuationMap = v16;

      v15 = _activityContinuationMap;
    }

    v18 = [v15 objectForKeyedSubscript:v13];
    if (v18)
    {
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
      v22 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:4];
      v23[0] = v11;
      v23[1] = v21;
      v23[2] = v22;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
      [_activityContinuationMap setObject:v18 forKeyedSubscript:v13];

      if (v8)
      {
LABEL_10:
        v19 = [v18 objectAtIndexedSubscript:2];
        if (([v19 containsObject:v8] & 1) == 0)
        {
          [v19 addObject:v8];
        }

        if (v9)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    v19 = 0;
    if (v9)
    {
LABEL_13:
      v20 = [v18 objectAtIndexedSubscript:1];

      if (![v20 count])
      {
        [v20 addObject:v9];
      }

      goto LABEL_18;
    }

LABEL_17:
    v20 = v19;
LABEL_18:

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_cleanupUserActivity:(id)a3 activityIdentifier:(id)a4
{
  v6 = a4;
  v5 = a3;
  [v5 _setFrameworkDelegate:0];
  [v5 invalidate];

  [_activityContinuationMap removeObjectForKey:v6];
}

- (void)removeResponder:(id)a3 document:(id)a4 forUserActivity:(id)a5
{
  v25 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 _uniqueIdentifier];
    v12 = [v11 UUIDString];

    if (v12)
    {
      v13 = [_activityContinuationMap objectForKeyedSubscript:v12];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectAtIndexedSubscript:1];
        v16 = [v14 objectAtIndexedSubscript:2];
        if (v25)
        {
          if ([v16 containsObject:v25])
          {
            [v16 removeObject:v25];
          }

          v17 = [v16 allObjects];
          v18 = [v17 count];

          if (!v18)
          {
            v19 = [v15 allObjects];
            v20 = [v19 count];

            if (!v20)
            {
              if (_UIStateRestorationDebugLogEnabled())
              {
                v21 = [v10 title];
                NSLog(&cfstr_SAfterRemoving.isa, "[UIActivityContinuationManager removeResponder:document:forUserActivity:]", v10, v21, v12);
              }

              [(UIActivityContinuationManager *)self _cleanupUserActivity:v10 activityIdentifier:v12];
            }
          }
        }

        if (v8)
        {
          if ([v15 containsObject:v8])
          {
            [v15 removeObject:v8];
            v22 = [v16 allObjects];
            v23 = [v22 count];

            if (!v23)
            {
              if (_UIStateRestorationDebugLogEnabled())
              {
                v24 = [v10 title];
                NSLog(&cfstr_SAfterRemoving_0.isa, "[UIActivityContinuationManager removeResponder:document:forUserActivity:]", v10, v24, v12);
              }

              [(UIActivityContinuationManager *)self _cleanupUserActivity:v10 activityIdentifier:v12];
            }
          }
        }
      }
    }
  }
}

@end