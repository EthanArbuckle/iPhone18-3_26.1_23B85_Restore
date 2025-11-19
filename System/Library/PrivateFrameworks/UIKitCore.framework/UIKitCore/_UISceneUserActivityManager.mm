@interface _UISceneUserActivityManager
+ (BOOL)_restorationUserActivityAvailableForSceneIdentifier:(id)a3;
+ (id)_activityContinuationDictionaryWithAction:(id)a3 sourceApplication:(id)a4 originatingProcess:(id)a5;
+ (id)_fetchSceneSessionWithPersistentIdentifier:(id)a3;
+ (id)_getInternalUserInfoForPersistentIdentifier:(id)a3 error:(id *)a4;
+ (id)_getRestorationUserActivityForPersistentIdentifier:(id)a3 error:(id *)a4;
+ (id)_getUserInfoForPersistentIdentifier:(id)a3 error:(id *)a4;
+ (id)_knownSceneSessionMap;
+ (id)_userActivityManagerForScene:(id)a3;
+ (void)_deleteSavedSceneSessionDirectoryWithPersistentIdentifier:(id)a3;
+ (void)_deleteSceneSessionsWithPersistentIdentifiers:(id)a3;
+ (void)_initializeUserActivityManager;
+ (void)_saveRestorationStateForScene:(id)a3;
+ (void)_scheduleDataSaveForSceneSession:(id)a3 saveRestorationActivity:(BOOL)a4;
+ (void)_showProgressForScene:(id)a3 whenFetchingUserActivityForTypes:(id)a4;
+ (void)_updatePersistedSceneSession:(id)a3;
- (BOOL)activityContinuationManager:(id)a3 continueUserActivity:(id)a4;
- (BOOL)activityContinuationManager:(id)a3 willContinueUserActivityWithType:(id)a4;
- (UIScene)_scene;
- (_UISceneUserActivityManager)initWithScene:(id)a3;
- (id)activityContinuationManagerUserCancelledError:(id)a3;
- (void)_checkActivityContinuationAndBecomeCurrentIfNeeded;
- (void)_saveOrClearRestorationDictionary:(id)a3 forScene:(id)a4;
- (void)_saveSceneRestorationState;
- (void)_scene:(id)a3 didTransitionFromActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5;
- (void)activityContinuationManager:(id)a3 configureProgressUIWithError:(id)a4;
- (void)activityContinuationManager:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5;
- (void)activityContinuationManager:(id)a3 didUpdateUserActivity:(id)a4;
- (void)activityContinuationManager:(id)a3 displayProgressUI:(id)a4 dismissalHandler:(id)a5;
- (void)activityContinuationManager:(id)a3 hideProgressUIWithCompletion:(id)a4;
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
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = [v3 initWithCapacity:{objc_msgSend(qword_1ED49FA08, "count")}];
  v5 = _persistenceQueue();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___UISceneUserActivityManager__knownSceneSessionMap__block_invoke;
  v11[3] = &unk_1E70F35B8;
  v6 = v4;
  v12 = v6;
  v13 = v2;
  v7 = v2;
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
    v4 = [WeakRetained session];
    v5 = [v4 persistentIdentifier];

    if (!v5)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SNoPersistentI.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", v43);
      }

      goto LABEL_52;
    }

    v6 = [v43 _FBSScene];
    if ([v6 isPersistable])
    {
      v7 = [v43 session];
      if ([v7 _userInfoIsDirty])
      {
      }

      else
      {
        v8 = [v43 session];
        v9 = [v8 _configurationIsDirty];

        if (!v9)
        {
          goto LABEL_13;
        }
      }

      v6 = [v43 session];
      [_UISceneUserActivityManager _updatePersistedSceneSession:v6];
    }

LABEL_13:
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCheckingForUs.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", v5);
    }

    v10 = [v43 delegate];
    v11 = objc_opt_respondsToSelector();

    v12 = [v43 session];
    v13 = [v12 stateRestorationActivity];

    v14 = [v43 session];
    [v14 _setStateRestorationActivityIsDirty:0];

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SUsingUisceneS.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", v13);
    }

    v15 = _UIStateRestorationDebugLogEnabled();
    if (v11)
    {
      if (v15)
      {
        NSLog(&cfstr_SCallingStater.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
      }

      v16 = [v43 delegate];
      v17 = [v16 stateRestorationActivityForScene:v43];

      v13 = v17;
      if (!v17)
      {
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SUisceneDelega.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
        }

        v13 = 0;
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

      if (!v13)
      {
        goto LABEL_33;
      }
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      v18 = [v13 activityType];
      v19 = [v13 title];
      v20 = [v13 userInfo];
      NSLog(&cfstr_SFoundActivity_0.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]", v18, v19, v20);
    }

    v21 = v13;
    v22 = [UIApp _getActivityContinuationManager];
    [v22 userActivityWillSave:v21];
    v23 = [v21 delegate];
    if (v23)
    {
      v24 = v23;
      v25 = [v21 delegate];
      v26 = v25;
      if (v25 == v22)
      {
      }

      else
      {
        v27 = [v21 delegate];
        v28 = objc_opt_respondsToSelector();

        if ((v28 & 1) == 0)
        {
          goto LABEL_36;
        }

        v24 = [v21 delegate];
        [v24 userActivityWillSave:v21];
      }
    }

LABEL_36:

    v30 = [v43 session];
    [v30 _resetStateRestorationToActivity:v21];

    v13 = v21;
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    if (_UIStateRestorationDebugLogEnabled())
    {
      v31 = [v13 activityType];
      v32 = [v13 title];
      NSLog(&cfstr_SCreatingUserA.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)", v13, v31, v32);
    }

    v33 = [v13 activityType];
    [v29 setObject:v33 forKey:@"CanvasRestorationUserActivityTypeKey"];

    v34 = [v13 title];

    if (v34)
    {
      v35 = [v13 title];
      [v29 setObject:v35 forKey:@"CanvasRestorationUserActivityTitleKey"];
    }

    v36 = [v13 userInfo];

    v37 = _UIStateRestorationDebugLogEnabled();
    if (v36)
    {
      if (v37)
      {
        NSLog(&cfstr_SSecurelyCodin.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)");
      }

      v38 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      v39 = [v13 userInfo];
      [v38 encodeObject:v39 forKey:@"CanvasRestorationUserActivityUserInfoKey"];

      [v38 finishEncoding];
      if (_UIStateRestorationDebugLogEnabled())
      {
        v40 = [v38 encodedData];
        NSLog(&cfstr_SEncodedUserIn.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)", v40);
      }

      v41 = [v38 encodedData];

      if (v41)
      {
        v42 = [v38 encodedData];
        [v29 setObject:v42 forKey:@"CanvasRestorationUserActivityUserInfoDataKey"];
      }
    }

    else
    {
      if (!v37)
      {
LABEL_50:

        goto LABEL_51;
      }

      v38 = [v13 userInfo];
      NSLog(&cfstr_SNoUserActivit.isa, "NSDictionary * _Nonnull _createStateRestorationDictionaryForUserActivity(NSUserActivity *__strong _Nonnull)", v38);
    }

    goto LABEL_50;
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SAssociatedUis.isa, "[_UISceneUserActivityManager _saveSceneRestorationState]");
  }

LABEL_53:
}

+ (id)_userActivityManagerForScene:(id)a3
{
  v3 = a3;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledLooking.isa, "+[_UISceneUserActivityManager _userActivityManagerForScene:]", @"UIUserActivitySceneComponentKey");
  }

  v4 = [v3 _sceneComponentForKey:@"UIUserActivitySceneComponentKey"];

  return v4;
}

- (_UISceneUserActivityManager)initWithScene:(id)a3
{
  v4 = a3;
  if (_UIStateRestorationDebugLogEnabled())
  {
    v5 = [v4 session];
    v6 = [v5 persistentIdentifier];
    NSLog(&cfstr_SCalledForScen.isa, "[_UISceneUserActivityManager initWithScene:]", v6);
  }

  v12.receiver = self;
  v12.super_class = _UISceneUserActivityManager;
  v7 = [(_UISceneUserActivityManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakScene, v4);
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

- (void)_scene:(id)a3 willTransitionToActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  v10 = a3;
  v7 = [v10 activationState];
  if (_UIStateRestorationDebugLogEnabled())
  {
    v8 = _NSStringFromUISceneActivationState(a4);
    v9 = _NSStringFromUISceneActivationState(v7);
    NSLog(&cfstr_SInvokedForSce.isa, "[_UISceneUserActivityManager _scene:willTransitionToActivationState:withReasonsMask:]", v10, v8, v9);
  }

  if (a4)
  {
    if (a4 == 2 && v7 != 2)
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

- (void)_scene:(id)a3 didTransitionFromActivationState:(int64_t)a4 withReasonsMask:(unint64_t)a5
{
  v7 = a3;
  if (!self->_initialRestorationIsFinished)
  {
    v14 = v7;
    v8 = [v7 activationState];
    if (_UIStateRestorationDebugLogEnabled())
    {
      v9 = _NSStringFromUISceneActivationState(v8);
      v10 = _NSStringFromUISceneActivationState([v14 activationState]);
      NSLog(&cfstr_SInvokedForSce.isa, "[_UISceneUserActivityManager _scene:didTransitionFromActivationState:withReasonsMask:]", v14, v9, v10);
    }

    if (v8 > 1 || a4 != 2 && a4 != -1)
    {
      goto LABEL_15;
    }

    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SOfferingResto.isa, "[_UISceneUserActivityManager _scene:didTransitionFromActivationState:withReasonsMask:]");
    }

    v11 = [v14 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v14 _willRestoreInteractionStateForUserActivityManager:self];
      kdebug_trace();
      v12 = [v14 session];
      v13 = [v12 stateRestorationActivity];
      [v11 scene:v14 restoreInteractionStateWithUserActivity:v13];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_14:

LABEL_15:
        self->_initialRestorationIsFinished = 1;
        v7 = v14;
        goto LABEL_16;
      }

      [v14 _willRestoreInteractionStateForUserActivityManager:self];
      kdebug_trace();
      v12 = [v14 session];
      v13 = [v12 stateRestorationActivity];
      [v11 _scene:v14 restoreInteractionStateWithUserActivity:v13];
    }

    kdebug_trace();
    goto LABEL_14;
  }

LABEL_16:
}

+ (void)_showProgressForScene:(id)a3 whenFetchingUserActivityForTypes:(id)a4
{
  v8 = a4;
  v5 = [_UISceneUserActivityManager _userActivityManagerForScene:a3];
  if (v5)
  {
    v6 = [v8 copy];
    v7 = v5[5];
    v5[5] = v6;
  }
}

- (void)activityContinuationManager:(id)a3 displayProgressUI:(id)a4 dismissalHandler:(id)a5
{
  v6 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = _UINSLocalizedStringWithDefaultValue(@"Handoff", @"Handoff");
    v9 = _UINSLocalizedStringWithDefaultValue(@"Waiting for Handoff to “%@”.", @"Waiting for Handoff to “%@”.");
    v10 = [UIApp _localizedApplicationName];
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v9, v10];
    v12 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v13 = [_UIApplicationModalProgressController instanceForScene:WeakRetained];
    if ([(_UISceneUserActivityManager *)self _isDisplayingActivityContinuationUI])
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94___UISceneUserActivityManager_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke;
      v17[3] = &unk_1E70F3608;
      v14 = &v18;
      v18 = v6;
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
      v16 = v6;
      [v13 displayWithTitle:v8 message:v11 progress:0 buttonTitle:v12 sourceViewController:0 preDisplayTestBlock:0 dismissalHandler:v15];
    }
  }
}

- (void)activityContinuationManager:(id)a3 configureProgressUIWithError:(id)a4
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

- (void)activityContinuationManager:(id)a3 hideProgressUIWithCompletion:(id)a4
{
  v5 = a4;
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
    v9 = v5;
    [v7 hideAfterMinimumUptimeWithDismissalHandler:v8];
  }

  else if (v5)
  {
    v5[2](v5);
  }
}

- (id)activityContinuationManagerUserCancelledError:(id)a3
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

- (BOOL)activityContinuationManager:(id)a3 willContinueUserActivityWithType:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v7 = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [WeakRetained delegate];
    [v9 scene:WeakRetained willContinueUserActivityWithType:v5];

    v10 = ![(NSSet *)self->_activityTypesForDefaultProgressUI containsObject:v5];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)activityContinuationManager:(id)a3 continueUserActivity:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v7 = [WeakRetained delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [WeakRetained delegate];
    [v9 scene:WeakRetained continueUserActivity:v5];
  }

  return 1;
}

- (void)activityContinuationManager:(id)a3 didFailToContinueUserActivityWithType:(id)a4 error:(id)a5
{
  v12 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v9 = [WeakRetained delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [WeakRetained delegate];
    [v11 scene:WeakRetained didFailToContinueUserActivityWithType:v12 error:v7];
  }
}

- (void)activityContinuationManager:(id)a3 didUpdateUserActivity:(id)a4
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_weakScene);
  v6 = [WeakRetained delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [WeakRetained delegate];
    [v8 scene:WeakRetained didUpdateUserActivity:v9];
  }
}

+ (void)_deleteSavedSceneSessionDirectoryWithPersistentIdentifier:(id)a3
{
  v3 = _restorationDirectory(a3);
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SDeletingScene.isa, "+[_UISceneUserActivityManager _deleteSavedSceneSessionDirectoryWithPersistentIdentifier:]", v3);
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v10];
  v6 = v10;

  if (v6 || (v5 & 1) == 0)
  {
    if (v6)
    {
      v7 = [v6 domain];
      v8 = v7;
      if (v7 == *MEMORY[0x1E696A250])
      {
        v9 = [v6 code];

        if (v9 == 4)
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

+ (void)_updatePersistedSceneSession:(id)a3
{
  v3 = a3;
  if ([v3 _userInfoIsDirty])
  {
    _saveSceneSessionUserInfo(v3);
  }

  if (v3 && (v3[32] & 0x40) != 0)
  {
    _saveSceneSessionInternalUserInfo(v3);
  }

  if ([v3 _configurationIsDirty])
  {
    [v3 _setConfigurationIsDirty:0];
    v4 = _persistenceQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60___UISceneUserActivityManager__updatePersistedSceneSession___block_invoke;
    block[3] = &unk_1E70F3590;
    v6 = v3;
    dispatch_sync(v4, block);
  }
}

+ (void)_deleteSceneSessionsWithPersistentIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
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
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = _persistenceQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77___UISceneUserActivityManager__deleteSceneSessionsWithPersistentIdentifiers___block_invoke;
  block[3] = &unk_1E70F3590;
  v12 = v3;
  v10 = v3;
  dispatch_sync(v9, block);
}

+ (id)_fetchSceneSessionWithPersistentIdentifier:(id)a3
{
  v3 = a3;
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
  v5 = v3;
  v9 = v5;
  dispatch_sync(v4, v8);

  v6 = _decodeSceneSession(v12[5], v5);

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_saveOrClearRestorationDictionary:(id)a3 forScene:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 session];
  v8 = [v7 persistentIdentifier];

  v9 = _restorationPath(v8);
  if (v5 && [v5 count])
  {
    v10 = [_lastRestorationDictionaryMap objectForKeyedSubscript:v8];
    if (v10 && [v5 isEqualToDictionary:v10])
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

      _updateLastRestorationDictionaryForPersistentIdentifier(v5, v8);
      _ensureRestorationDirectoryExists(v8);
      v29 = 0;
      [v5 writeToURL:v9 error:&v29];
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

        v18 = [v6 delegate];
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

  _updateLastRestorationDictionaryForPersistentIdentifier(0, v8);
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SNothingToSave.isa, "[_UISceneUserActivityManager _saveOrClearRestorationDictionary:forScene:]", v9);
  }

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v13 = [v12 removeItemAtURL:v9 error:&v30];
  v14 = v30;

  if (v14 || (v11 = 0, (v13 & 1) == 0))
  {
    if (v14)
    {
      v15 = [v14 domain];
      v16 = v15;
      if (v15 == *MEMORY[0x1E696A250])
      {
        v24 = [v14 code];

        if (v24 == 4)
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

+ (BOOL)_restorationUserActivityAvailableForSceneIdentifier:(id)a3
{
  v3 = a3;
  v4 = _restorationPath(v3);
  if (_UIStateRestorationDebugLogEnabled())
  {
    v5 = [v4 path];
    NSLog(&cfstr_SCheckingAvail.isa, "+[_UISceneUserActivityManager _restorationUserActivityAvailableForSceneIdentifier:]", v3, v4, v5);
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v4 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:0];

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

      v12 = [v10 domain];
      v13 = [v12 isEqualToString:*MEMORY[0x1E696A250]];

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

+ (void)_saveRestorationStateForScene:(id)a3
{
  if (a3)
  {
    v3 = [a1 _userActivityManagerForScene:?];
    [v3 _saveSceneRestorationState];
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCalledWithNil.isa, "+[_UISceneUserActivityManager _saveRestorationStateForScene:]");
  }
}

+ (void)_scheduleDataSaveForSceneSession:(id)a3 saveRestorationActivity:(BOOL)a4
{
  v6 = a3;
  if (pthread_main_np() == 1)
  {
    byte_1ED49FA01 |= a4;
    if ((_MergedGlobals_1221 & 1) == 0)
    {
      if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SSchedulingSav.isa, "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]");
      }

      objc_initWeak(&location, v6);
      _MergedGlobals_1221 = 1;
      v7 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __88___UISceneUserActivityManager__scheduleDataSaveForSceneSession_saveRestorationActivity___block_invoke_2;
      block[3] = &unk_1E70F8DC8;
      objc_copyWeak(v9, &location);
      v9[1] = a1;
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
    v13 = a1;
    v12 = v6;
    v14 = a4;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

+ (id)_getUserInfoForPersistentIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingForSa.isa, "+[_UISceneUserActivityManager _getUserInfoForPersistentIdentifier:error:]", v5);
  }

  v6 = _restorationDirectory(v5);
  v7 = [v6 URLByAppendingPathComponent:@"userInfo.data" isDirectory:0];

  v17 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x1E696A250]];

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

        if (a4)
        {
          v13 = v10;
          *a4 = v10;
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

+ (id)_getInternalUserInfoForPersistentIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingForSa_0.isa, "+[_UISceneUserActivityManager _getInternalUserInfoForPersistentIdentifier:error:]", v5);
  }

  v6 = _restorationDirectory(v5);
  v7 = [v6 URLByAppendingPathComponent:@"internalUserInfo.data" isDirectory:0];

  v17 = 0;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7 error:&v17];
  v9 = v17;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 domain];
    v12 = [v11 isEqualToString:*MEMORY[0x1E696A250]];

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

        if (a4)
        {
          v13 = v10;
          *a4 = v10;
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

+ (id)_getRestorationUserActivityForPersistentIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SCheckingForSa_1.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v5);
  }

  v6 = [MEMORY[0x1E695DF00] date];
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
    v8 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSinceDate:v6];
    NSLog(&cfstr_SCheckingForTe.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v9);
  }

  v10 = [MEMORY[0x1E695DF00] date];

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

  v15 = _restorationPath(v5);

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
    _updateLastRestorationDictionaryForPersistentIdentifier(v12, v5);
  }

LABEL_18:
  if (_UIStateRestorationDebugLogEnabled())
  {
    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:v10];
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
          NSLog(&cfstr_SNoUserActivit_0.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v5);
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
        NSLog(&cfstr_SCouldnTCreate.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v5);
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
        NSLog(&cfstr_SCouldnTDecode.isa, "+[_UISceneUserActivityManager _getRestorationUserActivityForPersistentIdentifier:error:]", v5);
        v23 = 0;
        goto LABEL_41;
      }
    }

    v23 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v19 = [v13 domain];
  v20 = [v19 isEqualToString:*MEMORY[0x1E696A250]];

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

  if (a4)
  {
    v21 = v13;
    v22 = 0;
    *a4 = v13;
  }

  else
  {
LABEL_31:
    v22 = 0;
  }

LABEL_53:

  return v22;
}

+ (id)_activityContinuationDictionaryWithAction:(id)a3 sourceApplication:(id)a4 originatingProcess:(id)a5
{
  v7 = UIApp;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 _getActivityContinuationManager];
  v12 = [v11 activityContinuationDictionaryWithAction:v10 sourceApplication:v9 originatingProcess:v8];

  return v12;
}

@end