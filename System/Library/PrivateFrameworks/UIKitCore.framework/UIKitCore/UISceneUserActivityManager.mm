@interface UISceneUserActivityManager
@end

@implementation UISceneUserActivityManager

uint64_t __61___UISceneUserActivityManager__initializeUserActivityManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 role];
  v3 = [v2 isEqualToString:@"UIWindowSceneSessionRoleExternalDisplayNonInteractive"];

  return v3 ^ 1u;
}

void __52___UISceneUserActivityManager__knownSceneSessionMap__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  _queue_ensureExistenceOfKnownSceneSessionMap();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = qword_1ED49FA08;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [qword_1ED49FA08 objectForKey:v7];
        v9 = _decodeSceneSession(v8, v7);
        if (v9)
        {
          [*(a1 + 32) setObject:v9 forKey:v7];
        }

        else if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SCouldNotDecod.isa, "+[_UISceneUserActivityManager _knownSceneSessionMap]_block_invoke", v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:*(a1 + 40)];
    NSLog(&cfstr_ConstructedKno.isa, v11);
  }

  if (_UIStateRestorationDebugLogEnabled())
  {
    v12 = [*(a1 + 32) count];
    if ([*(a1 + 32) count] == 1)
    {
      v13 = &stru_1EFB14550;
    }

    else
    {
      v13 = @"s";
    }

    v14 = [*(a1 + 32) allKeys];
    NSLog(&cfstr_SReturningKnow.isa, "+[_UISceneUserActivityManager _knownSceneSessionMap]_block_invoke", v12, v13, v14, v15);
  }
}

void __81___UISceneUserActivityManager__checkActivityContinuationAndBecomeCurrentIfNeeded__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [WeakRetained _windows];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v13 + 1) + 8 * v7);
      if (([v8 isHidden] & 1) == 0 && (!v5 || objc_msgSend(v8, "_isApplicationKeyWindow")))
      {
        v9 = [v8 rootViewController];
        v10 = [v9 _activityContinuationSuitableToBecomeCurrent];

        if (v10)
        {
          if ([v8 _isApplicationKeyWindow])
          {

            v5 = v10;
            goto LABEL_18;
          }

          v5 = v10;
        }

        else
        {
          v5 = 0;
        }
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        if (!v5)
        {
          goto LABEL_22;
        }

LABEL_18:
        if (_UIStateRestorationDebugLogEnabled())
        {
          v11 = [v5 title];
          v12 = [v5 _uniqueIdentifier];
          NSLog(&cfstr_SFoundActivity.isa, "[_UISceneUserActivityManager _checkActivityContinuationAndBecomeCurrentIfNeeded]_block_invoke", v5, v11, v12);
        }

        [v5 becomeCurrent];
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  [UIApp _checkActivityContinuationAndBecomeCurrentIfNeeded];
  v5 = 0;
LABEL_23:
}

uint64_t __94___UISceneUserActivityManager_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __94___UISceneUserActivityManager_activityContinuationManager_displayProgressUI_dismissalHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __88___UISceneUserActivityManager_activityContinuationManager_hideProgressUIWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60___UISceneUserActivityManager__updatePersistedSceneSession___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentIdentifier];

  if (v2)
  {
    _queue_ensureExistenceOfKnownSceneSessionMap();
    v3 = qword_1ED49FA08;
    v4 = [*(a1 + 32) persistentIdentifier];
    v5 = [v3 objectForKey:v4];

    if (_UIStateRestorationDebugLogEnabled())
    {
      if (v5)
      {
        v6 = @"%s: Updating SceneSession for persistent identifier %@, SceneSession = %@";
      }

      else
      {
        v6 = @"%s: Adding SceneSession for persistent identifier %@, SceneSession = %@";
      }

      v7 = [*(a1 + 32) persistentIdentifier];
      NSLog(&v6->isa, "+[_UISceneUserActivityManager _updatePersistedSceneSession:]_block_invoke", v7, *(a1 + 32));
    }

    v8 = *(a1 + 32);
    v9 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    v10 = [v8 _copyWithoutUserInfo];
    [v9 encodeObject:v10 forKey:@"CanvasRestorationCanvasDefinitionKey"];

    [v9 finishEncoding];
    v13 = [v9 encodedData];
    if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SScenesessionD.isa, "NSData *_encodeSceneSession(UISceneSession *__strong)", v13);
    }

    if (v13)
    {
      v11 = qword_1ED49FA08;
      v12 = [*(a1 + 32) persistentIdentifier];
      [v11 setObject:v13 forKey:v12];

      _queue_scheduleUpdateAndSaveForPersistedSceneSessions();
    }

    else if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_SCouldNotEncod.isa, "+[_UISceneUserActivityManager _updatePersistedSceneSession:]_block_invoke");
    }
  }

  else if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_SAskedToUpdate.isa, "+[_UISceneUserActivityManager _updatePersistedSceneSession:]_block_invoke", *(a1 + 32));
  }
}

void __77___UISceneUserActivityManager__deleteSceneSessionsWithPersistentIdentifiers___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        v7 = _queue_persistentIdentifiersForDeletion();
        _queue_ensureExistenceOfKnownSceneSessionMap();
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SRemovingDefin.isa, "+[_UISceneUserActivityManager _deleteSceneSessionsWithPersistentIdentifiers:]_block_invoke", v6, v8);
        }

        [qword_1ED49FA08 removeObjectForKey:v6];
        [v7 addObject:v6];
        _queue_scheduleUpdateAndSaveForPersistedSceneSessions();

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

void __74___UISceneUserActivityManager__fetchSceneSessionWithPersistentIdentifier___block_invoke(uint64_t a1)
{
  _queue_ensureExistenceOfKnownSceneSessionMap();
  v2 = [qword_1ED49FA08 objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __88___UISceneUserActivityManager__scheduleDataSaveForSceneSession_saveRestorationActivity___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (byte_1ED49FA01 == 1)
    {
      if ([WeakRetained _stateRestorationActivityIsDirty])
      {
        v4 = [v3 scene];
        if (_UIStateRestorationDebugLogEnabled())
        {
          NSLog(&cfstr_SSavingStatere.isa, "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke_2", v4);
        }

        v5 = *(a1 + 40);
        v6 = [v3 scene];
        [v5 _saveRestorationStateForScene:v6];
      }

      else if (_UIStateRestorationDebugLogEnabled())
      {
        NSLog(&cfstr_SSceneSessionS.isa, "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke_2", v3);
      }

      byte_1ED49FA01 = 0;
    }

    v10 = [v3 _userInfoIsDirty];
    v11 = _UIStateRestorationDebugLogEnabled();
    if (v10)
    {
      if (v11)
      {
        NSLog(&cfstr_SSavingUserinf.isa, "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke_2", v3);
      }

      _saveSceneSessionUserInfo(v3);
    }

    else if (v11)
    {
      NSLog(&cfstr_SSceneSessionU.isa, "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke_2", v3);
    }

    if ((v3[32] & 0x40) != 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA10);
      if (*CategoryCachedImpl)
      {
        v14 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke_2";
          v17 = 2112;
          v18 = v3;
          _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "%s: Saving internalUserInfo for scene session %@", buf, 0x16u);
        }
      }

      _saveSceneSessionInternalUserInfo(v3);
    }

    else
    {
      v12 = __UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA18);
      if (*v12)
      {
        v8 = *(v12 + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke";
          v17 = 2112;
          v18 = v3;
          v9 = "%s: Scene Session internalUserInfo was already saved. Skipping save of internalUserInfo for scene session %@";
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v7 = __UILogGetCategoryCachedImpl("SceneStateRestoration", &qword_1ED49FA20);
    if (*v7)
    {
      v8 = *(v7 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "+[_UISceneUserActivityManager _scheduleDataSaveForSceneSession:saveRestorationActivity:]_block_invoke";
        v17 = 2112;
        v18 = 0;
        v9 = "%s: Scene session is gone. Skipping data save for scene session %@";
LABEL_23:
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x16u);
      }
    }
  }

  _MergedGlobals_1221 = 0;
}

@end