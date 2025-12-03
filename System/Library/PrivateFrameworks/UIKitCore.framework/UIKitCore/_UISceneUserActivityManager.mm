@interface _UISceneUserActivityManager
+ (BOOL)_restorationUserActivityAvailableForSceneIdentifier:(id)identifier;
+ (id)_activityContinuationDictionaryWithAction:(id)action sourceApplication:(id)application originatingProcess:(id)process;
+ (id)_fetchSceneSessionWithPersistentIdentifier:(id)identifier;
+ (id)_getInternalUserInfoForPersistentIdentifier:(id)identifier error:(id *)error;
+ (id)_getRestorationUserActivityForPersistentIdentifier:(id)identifier error:(id *)error;
+ (id)_getUserInfoForPersistentIdentifier:(id)identifier error:(id *)error;
+ (id)_knownSceneSessionMap;
+ (id)_userActivityManagerForScene:(id)scene;
+ (void)_deleteSavedSceneSessionDirectoryWithPersistentIdentifier:(id)identifier;
+ (void)_deleteSceneSessionsWithPersistentIdentifiers:(id)identifiers;
+ (void)_initializeUserActivityManager;
+ (void)_saveRestorationStateForScene:(id)scene;
+ (void)_scheduleDataSaveForSceneSession:(id)session saveRestorationActivity:(BOOL)activity;
+ (void)_showProgressForScene:(id)scene whenFetchingUserActivityForTypes:(id)types;
+ (void)_updatePersistedSceneSession:(id)session;
- (BOOL)activityContinuationManager:(id)manager continueUserActivity:(id)activity;
- (BOOL)activityContinuationManager:(id)manager willContinueUserActivityWithType:(id)type;
- (UIScene)_scene;
- (_UISceneUserActivityManager)initWithScene:(id)scene;
- (id)activityContinuationManagerUserCancelledError:(id)error;
- (void)_checkActivityContinuationAndBecomeCurrentIfNeeded;
- (void)_saveOrClearRestorationDictionary:(id)dictionary forScene:(id)scene;
- (void)_saveSceneRestorationState;
- (void)_scene:(id)_scene didTransitionFromActivationState:(int64_t)state withReasonsMask:(unint64_t)mask;
- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask;
- (void)activityContinuationManager:(id)manager configureProgressUIWithError:(id)error;
- (void)activityContinuationManager:(id)manager didFailToContinueUserActivityWithType:(id)type error:(id)error;
- (void)activityContinuationManager:(id)manager didUpdateUserActivity:(id)activity;
- (void)activityContinuationManager:(id)manager displayProgressUI:(id)i dismissalHandler:(id)handler;
- (void)activityContinuationManager:(id)manager hideProgressUIWithCompletion:(id)completion;
@end

@implementation _UISceneUserActivityManager

+ (void)_initializeUserActivityManager
{
  if (_UIStateRestorationDebugLogEnabled())
  {
    v2 = objc_opt_class();
    NSLog(&cfstr_SRegisteringCo.isa, "+[_UISceneUserActivityManager _initializeUserActivityManager]", v2);
  }

  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_433];
  [(UIScene *)UIWindowScene _registerSceneComponentClass:v3 withKey:@"UIUserActivitySceneComponentKey" predicate:v4];
}

+ (id)_knownSceneSessionMap
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [v3 initWithCapacity:{objc_msgSend(qword_1ED49FA08, "count")}];
  v5 = _persistenceQueue();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___UISceneUserActivityManager__knownSceneSessionMap__block_invoke;
  v11[3] = &unk_1E70F35B8;
  v6 = v4;
  v12 = v6;
  v13 = date;
  v7 = date;
  dispatch_sync(v5, v11);

  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)_checkActivityContinuationAndBecomeCurrentIfNeeded
{
  if ([(UIActivityContinuationManager *)self->_activityContinuationManager activityContinuationsAreBeingTracked])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81___UISceneUserActivityManager__checkActivityContinuationAndBecomeCurrentIfNeeded__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_saveSceneRestorationState
{
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v43 = WeakRetained;
  if (WeakRetained)
  {
    session = [WeakRetained session];
    persistentIdentifier = [session persistentIdentifier];

    if (!persistentIdentifier)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SNoPersistentI.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", v43);
      }

      goto LABEL_52;
    }

    _FBSScene = [v43 _FBSScene];
    if ([_FBSScene isPersistable])
    {
      session2 = [v43 session];
      if ([session2 _userInfoIsDirty])
      {
      }

      else
      {
        session3 = [v43 session];
        _configurationIsDirty = [session3 _configurationIsDirty];

        if (!_configurationIsDirty)
        {
          goto LABEL_13;
        }
      }

      _FBSScene = [v43 session];
      [_UISceneUserActivityManager _updatePersistedSceneSession:_FBSScene];
    }

LABEL_13:
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCheckingForUs.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", persistentIdentifier);
    }

    delegate = [v43 delegate];
    v11 = objc_opt_respondsToSelector();

    session4 = [v43 session];
    stateRestorationActivity = [session4 stateRestorationActivity];

    session5 = [v43 session];
    [session5 _setStateRestorationActivityIsDirty:0];

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SUsingUisceneS.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", stateRestorationActivity);
    }

    v15 = _UIStateRestorationDebugLogEnabled();
    if (v11)
    {
      if (v15)
      {
        NSLog(&cfstr_SCallingStater.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
      }

      delegate2 = [v43 delegate];
      v17 = [delegate2 stateRestorationActivityForScene:v43];

      stateRestorationActivity = v17;
      if (!v17)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SUisceneDelega.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
        }

        stateRestorationActivity = 0;
LABEL_33:
        v29 = 0;
LABEL_51:
        [(_UISceneUserActivityManager *)self _saveOrClearRestorationDictionary:v29 forScene:v43];

LABEL_52:
        goto LABEL_53;
      }
    }

    else
    {
      if (v15)
      {
        NSLog(&cfstr_SUisceneDelega_0.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
      }

      if (!stateRestorationActivity)
      {
        goto LABEL_33;
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      activityType = [stateRestorationActivity activityType];
      title = [stateRestorationActivity title];
      userInfo = [stateRestorationActivity userInfo];
      NSLog(&cfstr_SFoundActivity_0.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", activityType, title, userInfo);
    }

    v21 = stateRestorationActivity;
    _getActivityContinuationManager = [UIApp _getActivityContinuationManager];
    [_getActivityContinuationManager userActivityWillSave:v21];
    delegate3 = [v21 delegate];
    if (delegate3)
    {
      delegate6 = delegate3;
      delegate4 = [v21 delegate];
      v26 = delegate4;
      if (delegate4 == _getActivityContinuationManager)
      {
      }

      else
      {
        delegate5 = [v21 delegate];
        v28 = objc_opt_respondsToSelector();

        if ((v28 & 1) == 0)
        {
          goto LABEL_36;
        }

        delegate6 = [v21 delegate];
        [delegate6 userActivityWillSave:v21];
      }
    }

LABEL_36:

    session6 = [v43 session];
    [session6 _resetStateRestorationToActivity:v21];

    stateRestorationActivity = v21;
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    if (_UIStateRestorationDebugLogEnabled())
    {
      activityType2 = [stateRestorationActivity activityType];
      title2 = [stateRestorationActivity title];
      NSLog(&cfstr_SCreatingUserA.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)", stateRestorationActivity, activityType2, title2);
    }

    activityType3 = [stateRestorationActivity activityType];
    [v29 setObject:activityType3 forKey:@"CanvasRestorationUserActivityTypeKey"];

    title3 = [stateRestorationActivity title];

    if (title3)
    {
      title4 = [stateRestorationActivity title];
      [v29 setObject:title4 forKey:@"CanvasRestorationUserActivityTitleKey"];
    }

    userInfo2 = [stateRestorationActivity userInfo];

    v37 = _UIStateRestorationDebugLogEnabled();
    if (userInfo2)
    {
      if (v37)
      {
        NSLog(&cfstr_SSecurelyCodin.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)");
      }

      userInfo4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      userInfo3 = [stateRestorationActivity userInfo];
      [userInfo4 encodeObject:userInfo3 forKey:@"CanvasRestorationUserActivityUserInfoKey"];

      [userInfo4 finishEncoding];
      if (_UIStateRestorationDebugLogEnabled())
      {
        encodedData = [userInfo4 encodedData];
        NSLog(&cfstr_SEncodedUserIn.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)", encodedData);
      }

      encodedData2 = [userInfo4 encodedData];

      if (encodedData2)
      {
        encodedData3 = [userInfo4 encodedData];
        [v29 setObject:encodedData3 forKey:@"CanvasRestorationUserActivityUserInfoDataKey"];
      }
    }

    else
    {
      if (!v37)
      {
LABEL_50:

        goto LABEL_51;
      }

      userInfo4 = [stateRestorationActivity userInfo];
      NSLog(&cfstr_SNoUserActivit.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)", userInfo4);
    }

    goto LABEL_50;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SAssociatedUis.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
  }

LABEL_53:
}

+ (id)_userActivityManagerForScene:(id)scene
{
  sceneCopy = scene;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledLooking.isa, "+[_UISceneUserActivityManager _userActivityManagerForScene:]", @"UIUserActivitySceneComponentKey");
  }

  v4 = [sceneCopy _sceneComponentForKey:@"UIUserActivitySceneComponentKey"];

  return v4;
}

- (_UISceneUserActivityManager)initWithScene:(id)scene
{
  sceneCopy = scene;
  if (_UIStateRestorationDebugLogEnabled())
  {
    session = [sceneCopy session];
    persistentIdentifier = [session persistentIdentifier];
    NSLog(&cfstr_SCalledForScen.isa, "[_UISceneUserActivityManager initWithScene:]", persistentIdentifier);
  }

  v12.receiver = self;
  v12.super_class = _UISceneUserActivityManager;
  v7 = [(_UISceneUserActivityManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakScene, sceneCopy);
    v9 = [[UIActivityContinuationManager alloc] initWithApplicationContext:v8];
    activityContinuationManager = v8->_activityContinuationManager;
    v8->_activityContinuationManager = v9;
  }

  return v8;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);

  return WeakRetained;
}

- (void)_scene:(id)_scene willTransitionToActivationState:(int64_t)state withReasonsMask:(unint64_t)mask
{
  _sceneCopy = _scene;
  activationState = [_sceneCopy activationState];
  if (_UIStateRestorationDebugLogEnabled())
  {
    v8 = _NSStringFromUISceneActivationState(state);
    v9 = _NSStringFromUISceneActivationState(activationState);
    NSLog(&cfstr_SInvokedForSce.isa, "[_UISceneUserActivityManager _scene:willTransitionToActivationState:withReasonsMask:]", _sceneCopy, v8, v9);
  }

  if (state)
  {
    if (state == 2 && activationState != 2)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SSavingSceneSt.isa, "[_UISceneUserActivityManager _scene:willTransitionToActivationState:withReasonsMask:]");
      }

      [(_UISceneUserActivityManager *)self _saveSceneRestorationState];
    }
  }

  else
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCheckingForAc.isa, "[_UISceneUserActivityManager _scene:willTransitionToActivationState:withReasonsMask:]");
    }

    [(_UISceneUserActivityManager *)self _checkActivityContinuationAndBecomeCurrentIfNeeded];
  }
}

- (void)_scene:(id)_scene didTransitionFromActivationState:(int64_t)state withReasonsMask:(unint64_t)mask
{
  _sceneCopy = _scene;
  if (!self->_initialRestorationIsFinished)
  {
    v14 = _sceneCopy;
    activationState = [_sceneCopy activationState];
    if (_UIStateRestorationDebugLogEnabled())
    {
      v9 = _NSStringFromUISceneActivationState(activationState);
      v10 = _NSStringFromUISceneActivationState([v14 activationState]);
      NSLog(&cfstr_SInvokedForSce.isa, "[_UISceneUserActivityManager _scene:didTransitionFromActivationState:withReasonsMask:]", v14, v9, v10);
    }

    if (activationState > 1 || state != 2 && state != -1)
    {
      goto LABEL_15;
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SOfferingResto.isa, "[_UISceneUserActivityManager _scene:didTransitionFromActivationState:withReasonsMask:]");
    }

    delegate = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 _willRestoreInteractionStateForUserActivityManager:self];
      kdebug_trace();
      session = [v14 session];
      stateRestorationActivity = [session stateRestorationActivity];
      [delegate scene:v14 restoreInteractionStateWithUserActivity:stateRestorationActivity];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_14:

LABEL_15:
        self->_initialRestorationIsFinished = 1;
        _sceneCopy = v14;
        goto LABEL_16;
      }

      [v14 _willRestoreInteractionStateForUserActivityManager:self];
      kdebug_trace();
      session = [v14 session];
      stateRestorationActivity = [session stateRestorationActivity];
      [delegate _scene:v14 restoreInteractionStateWithUserActivity:stateRestorationActivity];
    }

    kdebug_trace();
    goto LABEL_14;
  }

LABEL_16:
}

+ (void)_showProgressForScene:(id)scene whenFetchingUserActivityForTypes:(id)types
{
  typesCopy = types;
  v5 = [_UISceneUserActivityManager _userActivityManagerForScene:scene];
  if (v5)
  {
    v6 = [typesCopy copy];
    v7 = v5[5];
    v5[5] = v6;
  }
}

- (void)activityContinuationManager:(id)manager displayProgressUI:(id)i dismissalHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _UINSLocalizedStringWithDefaultValue(@"Handoff", @"Handoff");
    v9 = _UINSLocalizedStringWithDefaultValue(@"Waiting for Handoff to “%@”.", @"Waiting for Handoff to “%@”.");
    _localizedApplicationName = [UIApp _localizedApplicationName];
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, _localizedApplicationName];
    v12 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v13 = [_UIApplicationModalProgressController instanceForScene:WeakRetained];
    if ([(_UISceneUserActivityManager *)self _isDisplayingActivityContinuationUI])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94___UISceneUserActivityManager_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke;
      v17[3] = &unk_1E70F3608;
      v14 = &v18;
      v18 = handlerCopy;
      [v13 reconfigureWithTitle:v8 message:v11 progress:0 buttonTitle:v12 dismissalHandler:v17];
    }

    else
    {
      [(_UISceneUserActivityManager *)self _setIsDisplayingActivityContinuationUI:1];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __94___UISceneUserActivityManager_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke_2;
      v15[3] = &unk_1E70F3608;
      v14 = &v16;
      v16 = handlerCopy;
      [v13 displayWithTitle:v8 message:v11 progress:0 buttonTitle:v12 sourceViewController:0 preDisplayTestBlock:0 dismissalHandler:v15];
    }
  }
}

- (void)activityContinuationManager:(id)manager configureProgressUIWithError:(id)error
{
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_UISceneUserActivityManager *)self _isDisplayingActivityContinuationUI])
  {
    v5 = [_UIApplicationModalProgressController instanceForScene:WeakRetained];
    [(_UISceneUserActivityManager *)self _setIsDisplayingActivityContinuationUI:0];
    v6 = _UINSLocalizedStringWithDefaultValue(@"Handoff", @"Handoff");
    v7 = _UINSLocalizedStringWithDefaultValue(@"Handoff Failed", @"Handoff Failed");
    v8 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
    [v5 reconfigureWithTitle:v6 message:v7 progress:0 buttonTitle:v8 dismissalHandler:0];
  }
}

- (void)activityContinuationManager:(id)manager hideProgressUIWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(_UISceneUserActivityManager *)self _isDisplayingActivityContinuationUI])
  {
    v7 = [_UIApplicationModalProgressController instanceForScene:WeakRetained];
    [(_UISceneUserActivityManager *)self _setIsDisplayingActivityContinuationUI:0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88___UISceneUserActivityManager_activityContinuationManager_hideProgressUIWithCompletion___block_invoke;
    v8[3] = &unk_1E70F3608;
    v9 = completionCopy;
    [v7 hideAfterMinimumUptimeWithDismissalHandler:v8];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (id)activityContinuationManagerUserCancelledError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A250];
  v9 = *MEMORY[0x1E696A578];
  v5 = _UINSLocalizedStringWithDefaultValue(@"User cancelled waiting for the activity", @"User cancelled waiting for the activity");
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v3 errorWithDomain:v4 code:3072 userInfo:v6];

  return v7;
}

- (BOOL)activityContinuationManager:(id)manager willContinueUserActivityWithType:(id)type
{
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  delegate = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [WeakRetained delegate];
    [delegate2 scene:WeakRetained willContinueUserActivityWithType:typeCopy];

    v10 = ![(NSSet *)self->_activityTypesForDefaultProgressUI containsObject:typeCopy];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)activityContinuationManager:(id)manager continueUserActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  delegate = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [WeakRetained delegate];
    [delegate2 scene:WeakRetained continueUserActivity:activityCopy];
  }

  return 1;
}

- (void)activityContinuationManager:(id)manager didFailToContinueUserActivityWithType:(id)type error:(id)error
{
  typeCopy = type;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  delegate = [WeakRetained delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [WeakRetained delegate];
    [delegate2 scene:WeakRetained didFailToContinueUserActivityWithType:typeCopy error:errorCopy];
  }
}

- (void)activityContinuationManager:(id)manager didUpdateUserActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  delegate = [WeakRetained delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [WeakRetained delegate];
    [delegate2 scene:WeakRetained didUpdateUserActivity:activityCopy];
  }
}

+ (void)_deleteSavedSceneSessionDirectoryWithPersistentIdentifier:(id)identifier
{
  v3 = _restorationDirectory(identifier);
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SDeletingScene.isa, "+[_UISceneUserActivityManager _deleteSavedSceneSessionDirectoryWithPersistentIdentifier:]", v3);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [defaultManager removeItemAtURL:v3 error:&v10];
  v6 = v10;

  if (v6 || (v5 & 1) == 0)
  {
    if (v6)
    {
      domain = [v6 domain];
      v8 = domain;
      if (domain == *MEMORY[0x1E696A250])
      {
        code = [v6 code];

        if (code == 4)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SWarningUnable.isa, "+[_UISceneUserActivityManager _deleteSavedSceneSessionDirectoryWithPersistentIdentifier:]", v3, v6);
    }
  }

LABEL_11:
}

+ (void)_updatePersistedSceneSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy _userInfoIsDirty])
  {
    _saveSceneSessionUserInfo(sessionCopy);
  }

  if (sessionCopy && (sessionCopy[32] & 0x40) != 0)
  {
    _saveSceneSessionInternalUserInfo(sessionCopy);
  }

  if ([sessionCopy _configurationIsDirty])
  {
    [sessionCopy _setConfigurationIsDirty:0];
    v4 = _persistenceQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___UISceneUserActivityManager__updatePersistedSceneSession___block_invoke;
    block[3] = &unk_1E70F3590;
    v6 = sessionCopy;
    dispatch_sync(v4, block);
  }
}

+ (void)_deleteSceneSessionsWithPersistentIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SSceneIsBeingD.isa, "+[_UISceneUserActivityManager _deleteSceneSessionsWithPersistentIdentifiers:]", v8);
        }

        _updateLastRestorationDictionaryForPersistentIdentifier(0, v8);
        ++v7;
      }

      while (v5 != v7);
      v5 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = _persistenceQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___UISceneUserActivityManager__deleteSceneSessionsWithPersistentIdentifiers___block_invoke;
  block[3] = &unk_1E70F3590;
  v12 = identifiersCopy;
  v10 = identifiersCopy;
  dispatch_sync(v9, block);
}

+ (id)_fetchSceneSessionWithPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__145;
  v15 = __Block_byref_object_dispose__145;
  v16 = 0;
  v4 = _persistenceQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74___UISceneUserActivityManager__fetchSceneSessionWithPersistentIdentifier___block_invoke;
  v8[3] = &unk_1E70FCDA0;
  v10 = &v11;
  v5 = identifierCopy;
  v9 = v5;
  dispatch_sync(v4, v8);

  v6 = _decodeSceneSession(v12[5], v5);

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_saveOrClearRestorationDictionary:(id)dictionary forScene:(id)scene
{
  dictionaryCopy = dictionary;
  sceneCopy = scene;
  session = [sceneCopy session];
  persistentIdentifier = [session persistentIdentifier];

  v9 = _restorationPath(persistentIdentifier);
  if (dictionaryCopy && [dictionaryCopy count])
  {
    v10 = [_lastRestorationDictionaryMap objectForKeyedSubscript:persistentIdentifier];
    if (v10 && [dictionaryCopy isEqualToDictionary:v10])
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SRestorationDi.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]");
      }

      v11 = 0;
    }

    else
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SSavingSceneSt_0.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]");
      }

      _updateLastRestorationDictionaryForPersistentIdentifier(dictionaryCopy, persistentIdentifier);
      _ensureRestorationDirectoryExists(persistentIdentifier);
      v29 = 0;
      [dictionaryCopy writeToURL:v9 error:&v29];
      v17 = v29;
      if (v17)
      {
        v11 = v17;
        NSLog(&cfstr_SErrorWritingA.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v17);
      }

      else
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SWroteUisceneR.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v9);
        }

        delegate = [sceneCopy delegate];
        v19 = objc_opt_respondsToSelector();

        v20 = *MEMORY[0x1E695DAF0];
        if (v19)
        {
          v21 = *MEMORY[0x1E695DAE0];
          v28 = 0;
          [v9 setResourceValue:v21 forKey:v20 error:&v28];
          v22 = v28;
          v23 = v22;
          if (v22)
          {
            NSLog(&cfstr_SErrorSettingP.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v22);
          }
        }

        else
        {
          v23 = 0;
        }

        v26 = 0;
        v27 = 0;
        [v9 getResourceValue:&v27 forKey:v20 error:&v26];
        v25 = v27;
        v11 = v26;

        if (v11)
        {
          NSLog(&cfstr_SErrorGettingP.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v11);
        }

        else if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SFileProtectio.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v25);
        }
      }
    }

    goto LABEL_35;
  }

  _updateLastRestorationDictionaryForPersistentIdentifier(0, persistentIdentifier);
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNothingToSave.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v9);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v13 = [defaultManager removeItemAtURL:v9 error:&v30];
  v14 = v30;

  if (v14 || (v11 = 0, (v13 & 1) == 0))
  {
    if (v14)
    {
      domain = [v14 domain];
      v16 = domain;
      if (domain == *MEMORY[0x1E696A250])
      {
        code = [v14 code];

        if (code == 4)
        {
LABEL_27:
          v11 = v14;
          goto LABEL_35;
        }
      }

      else
      {
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SWarningUnable_0.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v9, v14);
    }

    goto LABEL_27;
  }

LABEL_35:
}

+ (BOOL)_restorationUserActivityAvailableForSceneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = _restorationPath(identifierCopy);
  if (_UIStateRestorationDebugLogEnabled())
  {
    path = [v4 path];
    NSLog(&cfstr_SCheckingAvail.isa, "+[_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:]", identifierCopy, v4, path);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path2 = [v4 path];
  v8 = [defaultManager fileExistsAtPath:path2 isDirectory:0];

  if (v8)
  {
    v15 = 0;
    v9 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v4 error:&v15];
    v10 = v15;
    v11 = v9 != 0;
    if (!v9 && _UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCanTCreateFil.isa, "+[_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:]");
    }

    if (v10)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SErrorTryingTo.isa, "+[_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:]", v10);
      }

      domain = [v10 domain];
      v13 = [domain isEqualToString:*MEMORY[0x1E696A250]];

      if (v13 && ([v10 code] == 257 || objc_msgSend(v10, "code") == 513))
      {
        v11 = 0;
      }
    }

    [v9 closeAndReturnError:0];
  }

  else
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SRestorationFi.isa, "+[_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:]");
    }

    v11 = 1;
  }

  return v11;
}

+ (void)_saveRestorationStateForScene:(id)scene
{
  if (scene)
  {
    v3 = [self _userActivityManagerForScene:?];
    [v3 _saveSceneRestorationState];
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledWithNil.isa, "+[_UISceneUserActivityManager _saveRestorationStateForScene:]");
  }
}

+ (void)_scheduleDataSaveForSceneSession:(id)session saveRestorationActivity:(BOOL)activity
{
  sessionCopy = session;
  if (pthread_main_np() == 1)
  {
    byte_1ED49FA01 |= activity;
    if ((_MergedGlobals_1221 & 1) == 0)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SSchedulingSav.isa, "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]");
      }

      objc_initWeak(&location, sessionCopy);
      _MergedGlobals_1221 = 1;
      v7 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88___UISceneUserActivityManager__scheduleDataSaveForSceneSession_saveRestorationActivity___block_invoke_2;
      block[3] = &unk_1E70F8DC8;
      objc_copyWeak(v9, &location);
      v9[1] = self;
      dispatch_after(v7, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88___UISceneUserActivityManager__scheduleDataSaveForSceneSession_saveRestorationActivity___block_invoke;
    v11[3] = &unk_1E7101F90;
    selfCopy = self;
    v12 = sessionCopy;
    activityCopy = activity;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

+ (id)_getUserInfoForPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingForSa.isa, "+[_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:error:]", identifierCopy);
  }

  v6 = _restorationDirectory(identifierCopy);
  v7 = [v6 URLByAppendingPathComponent:@"userInfo.data" isDirectory:0];

  v17 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v9)
  {
    domain = [v9 domain];
    v12 = [domain isEqualToString:*MEMORY[0x1E696A250]];

    if (v12)
    {
      if ([v10 code] != 260 && _UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SErrorReadingA.isa, "+[_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:error:]", v10);
      }

      if ([v10 code] == 257 || objc_msgSend(v10, "code") == 513)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SErrorReadingA.isa, "+[_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:error:]", v10);
        }

        if (error)
        {
          v13 = v10;
          *error = v10;
        }
      }
    }
  }

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v15 = v14;

  return v14;
}

+ (id)_getInternalUserInfoForPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingForSa_0.isa, "+[_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:error:]", identifierCopy);
  }

  v6 = _restorationDirectory(identifierCopy);
  v7 = [v6 URLByAppendingPathComponent:@"internalUserInfo.data" isDirectory:0];

  v17 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v9)
  {
    domain = [v9 domain];
    v12 = [domain isEqualToString:*MEMORY[0x1E696A250]];

    if (v12)
    {
      if ([v10 code] != 260 && _UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SErrorReadingA_0.isa, "+[_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:error:]", v10);
      }

      if ([v10 code] == 257 || objc_msgSend(v10, "code") == 513)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SErrorReadingA_0.isa, "+[_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:error:]", v10);
        }

        if (error)
        {
          v13 = v10;
          *error = v10;
        }
      }
    }
  }

  if (v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  v15 = v14;

  return v14;
}

+ (id)_getRestorationUserActivityForPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingForSa_1.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", identifierCopy);
  }

  date = [MEMORY[0x1E695DF00] date];
  if ([UIApp launchedToTest])
  {
    v7 = [objc_opt_class() _restorationUserActivityAvailableForSceneIdentifier:@"TestApplicationState"];
  }

  else
  {
    v7 = 0;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    NSLog(&cfstr_SCheckingForTe.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v9);
  }

  date3 = [MEMORY[0x1E695DF00] date];

  if (v7)
  {
    v11 = _restorationPath(@"TestApplicationState");
    v44[0] = 0;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v11 error:v44];
    v13 = v44[0];
    v14 = v11;
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = _restorationPath(identifierCopy);

  v43 = v13;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v15 error:&v43];
  v16 = v43;

  if (!v12 || v16)
  {
    v13 = v16;
    v14 = v15;
  }

  else
  {
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SReadFileWithS.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]");
    }

    v13 = 0;
    v14 = v15;
    _updateLastRestorationDictionaryForPersistentIdentifier(v12, identifierCopy);
  }

LABEL_18:
  if (_UIStateRestorationDebugLogEnabled())
  {
    date4 = [MEMORY[0x1E695DF00] date];
    [date4 timeIntervalSinceDate:date3];
    NSLog(&cfstr_SOpeningRestor.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v18);
  }

  if (!v13)
  {
    v23 = [v12 objectForKey:@"CanvasRestorationUserActivityUserInfoKey"];
    v24 = [v12 objectForKey:@"CanvasRestorationUserActivityTypeKey"];
    v41 = [v12 objectForKey:@"CanvasRestorationUserActivityTitleKey"];
    if (v23)
    {
      if (!_UIStateRestorationDebugLogEnabled())
      {
        v13 = 0;
LABEL_45:
        if (v24)
        {
          v26 = [objc_alloc(MEMORY[0x1E696B090]) initWithActivityType:v24];
          v22 = v26;
          if (v41)
          {
            [v26 setTitle:v41];
          }

          [v22 setUserInfo:v23];
          if (_UIStateRestorationDebugLogEnabled())
          {
            NSLog(&cfstr_SCreatedUserAc.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v24, v41, v23);
          }

          goto LABEL_52;
        }

LABEL_50:
        v22 = 0;
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SNoUserActivit_0.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", identifierCopy);
        }

LABEL_52:

        goto LABEL_53;
      }

      v13 = 0;
      NSLog(&cfstr_SEncodedUserIn_1.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v23);
LABEL_42:
      if (!v23)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SEncodedUserIn_0.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]");
    }

    v40 = [v12 objectForKey:@"CanvasRestorationUserActivityUserInfoDataKey"];
    v42 = 0;
    v25 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v40 error:&v42];
    v13 = v42;
    if (v13)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCouldnTCreate.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", identifierCopy);
      }
    }

    else
    {
      [v25 setRequiresSecureCoding:1];
      [v25 setDecodingFailurePolicy:0];
      exc_buf = MEMORY[0x1E695DFD8];
      v39 = v25;
      v37 = objc_opt_class();
      v36 = objc_opt_class();
      v35 = objc_opt_class();
      v34 = objc_opt_class();
      v33 = objc_opt_class();
      v32 = objc_opt_class();
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = [exc_buf setWithObjects:{v37, v36, v35, v34, v33, v32, v28, v29, objc_opt_class(), 0}];
      v31 = [v39 decodeObjectOfClasses:v30 forKey:@"CanvasRestorationUserActivityUserInfoKey"];

      v23 = v31;
      [v39 finishDecoding];
      if (v31)
      {
        v25 = v39;
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SDecodedSceneR.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v31);
        }

        goto LABEL_41;
      }

      v25 = v39;
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SCouldnTDecode.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", identifierCopy);
        v23 = 0;
        goto LABEL_41;
      }
    }

    v23 = 0;
LABEL_41:

    goto LABEL_42;
  }

  domain = [v13 domain];
  v20 = [domain isEqualToString:*MEMORY[0x1E696A250]];

  if (!v20)
  {
    goto LABEL_31;
  }

  if ([v13 code] != 260 && _UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SErrorReadingA_1.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v13);
  }

  if ([v13 code] != 257 && objc_msgSend(v13, "code") != 513)
  {
    goto LABEL_31;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SErrorReadingA_1.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v13);
  }

  if (error)
  {
    v21 = v13;
    v22 = 0;
    *error = v13;
  }

  else
  {
LABEL_31:
    v22 = 0;
  }

LABEL_53:

  return v22;
}

+ (id)_activityContinuationDictionaryWithAction:(id)action sourceApplication:(id)application originatingProcess:(id)process
{
  v7 = UIApp;
  processCopy = process;
  applicationCopy = application;
  actionCopy = action;
  _getActivityContinuationManager = [v7 _getActivityContinuationManager];
  v12 = [_getActivityContinuationManager activityContinuationDictionaryWithAction:actionCopy sourceApplication:applicationCopy originatingProcess:processCopy];

  return v12;
}

@end