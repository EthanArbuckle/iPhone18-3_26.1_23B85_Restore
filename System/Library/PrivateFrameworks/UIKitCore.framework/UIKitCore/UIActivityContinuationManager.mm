@interface UIActivityContinuationManager
- (BOOL)_continueUserActivity:(id)activity;
- (BOOL)_delegateHandledContinueActivityWithType:(id)type;
- (BOOL)isTrackingActivityContinuationForResponder:(id)responder document:(id)document userActivity:(id)activity;
- (UIActivityContinuationManager)init;
- (UIActivityContinuationManager)initWithApplicationContext:(id)context;
- (id)_fetchUserActivityWithUUID:(id)d completionHandler:(id)handler;
- (id)activityContinuationDictionaryWithAction:(id)action sourceApplication:(id)application originatingProcess:(id)process;
- (void)_cleanupUserActivity:(id)activity activityIdentifier:(id)identifier;
- (void)_clearCurrentActivityContinuationCancelingProgress:(BOOL)progress;
- (void)_didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)_displayCurrentActivityContinuationProgressUI;
- (void)_endCurrentActivityContinuationAndDisplayError:(id)error;
- (void)_endCurrentActivityContinuationWithCompletion:(id)completion;
- (void)_hideCurrentActivityContinuationProgressUI;
- (void)_userActivityWillSave:(id)save;
- (void)addResponder:(id)responder document:(id)document forUserActivity:(id)activity;
- (void)handleActivityContinuation:(id)continuation isSuspended:(BOOL)suspended;
- (void)removeResponder:(id)responder document:(id)document forUserActivity:(id)activity;
- (void)userActivityWillSave:(id)save;
@end

@implementation UIActivityContinuationManager

- (UIActivityContinuationManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIActivityContinuationManager.m" lineNumber:65 description:@"Use initWithApplication:"];

  return 0;
}

- (UIActivityContinuationManager)initWithApplicationContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = UIActivityContinuationManager;
  v5 = [(UIActivityContinuationManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
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

- (void)_endCurrentActivityContinuationAndDisplayError:(id)error
{
  errorCopy = error;
  [(UIActivityContinuationManager *)self _clearCurrentActivityContinuationCancelingProgress:0];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self configureProgressUIWithError:errorCopy];
}

- (void)_endCurrentActivityContinuationWithCompletion:(id)completion
{
  completionCopy = completion;
  [(UIActivityContinuationManager *)self _clearCurrentActivityContinuationCancelingProgress:0];
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self hideProgressUIWithCompletion:completionCopy];
}

- (BOOL)_continueUserActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  LOBYTE(self) = [WeakRetained activityContinuationManager:self continueUserActivity:activityCopy];

  return self;
}

- (void)_didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  if (error)
  {
    errorCopy = error;
    typeCopy = type;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained activityContinuationManager:self didFailToContinueUserActivityWithType:typeCopy error:errorCopy];
  }
}

- (BOOL)_delegateHandledContinueActivityWithType:(id)type
{
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v6 = [WeakRetained activityContinuationManager:self willContinueUserActivityWithType:typeCopy];

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

- (id)_fetchUserActivityWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v7 = [dCopy objectForKey:@"UIApplicationLaunchOptionsUserActivityKey"];
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
      v18 = handlerCopy;
      v17 = v8;
      [v11 associateAppIntentWithUserActivity:v17 completionHandler:v16];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, v8, 0);
    }
  }

  else
  {
    v13 = [dCopy objectForKey:@"UIApplicationLaunchOptionsUserActivityIdentifierKey"];
    v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
    [MEMORY[0x1E696B090] _fetchUserActivityWithUUID:v14 completionHandler:handlerCopy];
  }

  return 0;
}

- (void)_clearCurrentActivityContinuationCancelingProgress:(BOOL)progress
{
  progressCopy = progress;
  v5 = self->_currentActivityContinuationProgress;
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationType:0];
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationUUIDString:0];
  [(UIActivityContinuationManager *)self _setCurrentActivityContinuationProgress:0];
  if (progressCopy)
  {
    [(NSProgress *)v5 cancel];
  }
}

- (void)handleActivityContinuation:(id)continuation isSuspended:(BOOL)suspended
{
  v23[1] = *MEMORY[0x1E69E9840];
  continuationCopy = continuation;
  v7 = [continuationCopy objectForKey:@"UIApplicationLaunchOptionsUserActivityTypeKey"];
  v8 = [continuationCopy objectForKey:@"UIApplicationLaunchOptionsUserActivityIdentifierKey"];
  v9 = [continuationCopy objectForKeyedSubscript:@"UINSUserActivitySourceApplicationKey"];
  if (!v8)
  {
    NSLog(&cfstr_SNoActivityUui.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", continuationCopy);
    goto LABEL_22;
  }

  if (!v7)
  {
    NSLog(&cfstr_SNoActivityTyp.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", continuationCopy);
    goto LABEL_22;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledWithAct.isa, "[UIActivityContinuationManager handleActivityContinuation:isSuspended:]", continuationCopy);
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
  suspendedCopy = suspended;
  v16 = [(UIActivityContinuationManager *)self _fetchUserActivityWithUUID:continuationCopy completionHandler:v17];
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

- (id)activityContinuationDictionaryWithAction:(id)action sourceApplication:(id)application originatingProcess:(id)process
{
  v31[5] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  applicationCopy = application;
  processCopy = process;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledWithAct_0.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", actionCopy);
  }

  if (dyld_program_sdk_at_least())
  {
    identifier = [actionCopy identifier];
    activityType = [actionCopy activityType];
    userActivityData = [actionCopy userActivityData];
    if (userActivityData)
    {
      v14 = [objc_alloc(MEMORY[0x1E696B090]) _initWithUserActivityData:userActivityData];
      _uniqueIdentifier = [v14 _uniqueIdentifier];
      uUIDString = [_uniqueIdentifier UUIDString];

      activityType2 = [v14 activityType];

      activityType = activityType2;
      identifier = uUIDString;
    }

    else
    {
      v14 = 0;
    }

    v18 = 0;
    if (identifier && activityType)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        WeakRetained = objc_loadWeakRetained(&self->_context);
        NSLog(&cfstr_SCheckingForAc_0.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", identifier, activityType, WeakRetained);
      }

      if (v14)
      {
        if (applicationCopy)
        {
          [v14 _setSourceApplication:applicationCopy];
        }

        if (processCopy)
        {
          [v14 _setOriginatingProcess:processCopy];
        }

        v30[0] = @"UIApplicationLaunchOptionsUserActivityIdentifierKey";
        v30[1] = @"_UISceneConnectionOptionsUserActivityKey";
        v31[0] = identifier;
        v31[1] = v14;
        v30[2] = @"UIApplicationLaunchOptionsUserActivityKey";
        v30[3] = @"_UISceneConnectionOptionsUserActivityTypeKey";
        v31[2] = v14;
        v31[3] = activityType;
        v30[4] = @"UIApplicationLaunchOptionsUserActivityTypeKey";
        v31[4] = activityType;
        v20 = MEMORY[0x1E695DF20];
        v21 = v31;
        v22 = v30;
        v23 = 5;
      }

      else
      {
        v28[0] = @"UIApplicationLaunchOptionsUserActivityIdentifierKey";
        v28[1] = @"_UISceneConnectionOptionsUserActivityTypeKey";
        v29[0] = identifier;
        v29[1] = activityType;
        v28[2] = @"UIApplicationLaunchOptionsUserActivityTypeKey";
        v29[2] = activityType;
        v20 = MEMORY[0x1E695DF20];
        v21 = v29;
        v22 = v28;
        v23 = 3;
      }

      v24 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
      v18 = v24;
      if (applicationCopy)
      {
        v25 = [v24 mutableCopy];
        [v25 setObject:applicationCopy forKeyedSubscript:@"UINSUserActivitySourceApplicationKey"];
        v26 = [v25 copy];

        v18 = v26;
      }

      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCreatedActivi.isa, "[UIActivityContinuationManager activityContinuationDictionaryWithAction:sourceApplication:originatingProcess:]", identifier, v18, activityType);
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

- (BOOL)isTrackingActivityContinuationForResponder:(id)responder document:(id)document userActivity:(id)activity
{
  responderCopy = responder;
  documentCopy = document;
  if (activity)
  {
    _uniqueIdentifier = [activity _uniqueIdentifier];
    uUIDString = [_uniqueIdentifier UUIDString];

    if (!uUIDString)
    {
      v15 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v11 = [_activityContinuationMap objectForKeyedSubscript:uUIDString];
    v12 = v11;
    if (v11)
    {
      if (responderCopy)
      {
        v13 = 2;
        v14 = responderCopy;
LABEL_10:
        v16 = [v11 objectAtIndexedSubscript:v13];
        v15 = [v16 containsObject:v14];

LABEL_12:
        goto LABEL_13;
      }

      if (documentCopy)
      {
        v13 = 1;
        v14 = documentCopy;
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

- (void)_userActivityWillSave:(id)save
{
  v30 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  _uniqueIdentifier = [saveCopy _uniqueIdentifier];
  uUIDString = [_uniqueIdentifier UUIDString];

  if (uUIDString)
  {
    v7 = [_activityContinuationMap objectForKeyedSubscript:uUIDString];
    v8 = v7;
    if (!v7)
    {
LABEL_22:

      goto LABEL_23;
    }

    v9 = [v7 objectAtIndexedSubscript:1];
    allObjects = [v9 allObjects];
    if ([allObjects count])
    {
      v11 = [allObjects objectAtIndex:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v8 objectAtIndexedSubscript:2];

    allObjects2 = [v12 allObjects];
    v14 = dyld_program_sdk_at_least();
    if (v14)
    {
      if (![allObjects2 count] && !v11)
      {
LABEL_21:

        goto LABEL_22;
      }

      v22 = v12;
      v24 = allObjects;
      [saveCopy _beginUserInfoUpdate:0];
    }

    else
    {
      v22 = v12;
      v24 = allObjects;
      dictionary = [MEMORY[0x1E695DF20] dictionary];
      [saveCopy setUserInfo:dictionary];
    }

    v23 = v11;
    [v11 updateUserActivityState:saveCopy];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = allObjects2;
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

          [*(*(&v25 + 1) + 8 * i) updateUserActivityState:saveCopy];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    if (v14)
    {
      [saveCopy _finishUserInfoUpdate];
    }

    v11 = v23;
    allObjects = v24;
    v12 = v22;
    goto LABEL_21;
  }

LABEL_23:
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained activityContinuationManager:self didUpdateUserActivity:saveCopy];
}

- (void)userActivityWillSave:(id)save
{
  saveCopy = save;
  if (pthread_main_np() == 1)
  {
    [(UIActivityContinuationManager *)self _userActivityWillSave:saveCopy];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__UIActivityContinuationManager_userActivityWillSave___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = saveCopy;
    dispatch_sync(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)addResponder:(id)responder document:(id)document forUserActivity:(id)activity
{
  v23[3] = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  documentCopy = document;
  activityCopy = activity;
  v11 = activityCopy;
  if (activityCopy)
  {
    _uniqueIdentifier = [activityCopy _uniqueIdentifier];
    uUIDString = [_uniqueIdentifier UUIDString];

    if (!uUIDString)
    {
LABEL_19:

      goto LABEL_20;
    }

    if (responderCopy)
    {
      _frameworkDelegate = [v11 _frameworkDelegate];

      if (!_frameworkDelegate)
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

    v18 = [v15 objectForKeyedSubscript:uUIDString];
    if (v18)
    {
      if (responderCopy)
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
      [_activityContinuationMap setObject:v18 forKeyedSubscript:uUIDString];

      if (responderCopy)
      {
LABEL_10:
        v19 = [v18 objectAtIndexedSubscript:2];
        if (([v19 containsObject:responderCopy] & 1) == 0)
        {
          [v19 addObject:responderCopy];
        }

        if (documentCopy)
        {
          goto LABEL_13;
        }

        goto LABEL_17;
      }
    }

    v19 = 0;
    if (documentCopy)
    {
LABEL_13:
      v20 = [v18 objectAtIndexedSubscript:1];

      if (![v20 count])
      {
        [v20 addObject:documentCopy];
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

- (void)_cleanupUserActivity:(id)activity activityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activityCopy = activity;
  [activityCopy _setFrameworkDelegate:0];
  [activityCopy invalidate];

  [_activityContinuationMap removeObjectForKey:identifierCopy];
}

- (void)removeResponder:(id)responder document:(id)document forUserActivity:(id)activity
{
  responderCopy = responder;
  documentCopy = document;
  activityCopy = activity;
  v10 = activityCopy;
  if (activityCopy)
  {
    _uniqueIdentifier = [activityCopy _uniqueIdentifier];
    uUIDString = [_uniqueIdentifier UUIDString];

    if (uUIDString)
    {
      v13 = [_activityContinuationMap objectForKeyedSubscript:uUIDString];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectAtIndexedSubscript:1];
        v16 = [v14 objectAtIndexedSubscript:2];
        if (responderCopy)
        {
          if ([v16 containsObject:responderCopy])
          {
            [v16 removeObject:responderCopy];
          }

          allObjects = [v16 allObjects];
          v18 = [allObjects count];

          if (!v18)
          {
            allObjects2 = [v15 allObjects];
            v20 = [allObjects2 count];

            if (!v20)
            {
              if (_UIStateRestorationDebugLogEnabled())
              {
                title = [v10 title];
                NSLog(&cfstr_SAfterRemoving.isa, "[UIActivityContinuationManager removeResponder:document:forUserActivity:]", v10, title, uUIDString);
              }

              [(UIActivityContinuationManager *)self _cleanupUserActivity:v10 activityIdentifier:uUIDString];
            }
          }
        }

        if (documentCopy)
        {
          if ([v15 containsObject:documentCopy])
          {
            [v15 removeObject:documentCopy];
            allObjects3 = [v16 allObjects];
            v23 = [allObjects3 count];

            if (!v23)
            {
              if (_UIStateRestorationDebugLogEnabled())
              {
                title2 = [v10 title];
                NSLog(&cfstr_SAfterRemoving_0.isa, "[UIActivityContinuationManager removeResponder:document:forUserActivity:]", v10, title2, uUIDString);
              }

              [(UIActivityContinuationManager *)self _cleanupUserActivity:v10 activityIdentifier:uUIDString];
            }
          }
        }
      }
    }
  }
}

@end