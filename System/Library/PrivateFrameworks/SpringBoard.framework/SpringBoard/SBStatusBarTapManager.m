@interface SBStatusBarTapManager
- (BOOL)_isUILocked:(id)a3;
- (BOOL)_performAfterAttemptingUnlockForAppWithBundleIdentifier:(id)a3 windowScene:(id)a4 completion:(id)a5;
- (BOOL)canHandleTapForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4;
- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4;
- (id)_allApplicationDestinationsForApplications:(id)a3 windowScene:(id)a4;
- (id)_appDestinationForNextSceneToVisitForApps:(id)a3 andBackgroundActivityWithIdentifier:(id)a4 windowScene:(id)a5;
- (id)_foregroundApplicationDestinationsForApplications:(id)a3 windowScene:(id)a4;
- (id)_handlerForBackgroundActivityWithIdentifier:(id)a3 orOutApplications:(id *)a4;
- (id)_handlerForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4;
- (id)_recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:(id)a3;
- (void)_addRecentlyTappedApplicationDestinations:(id)a3 forBackgroundActivityWithIdentifier:(id)a4;
- (void)_scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:(id)a3;
@end

@implementation SBStatusBarTapManager

uint64_t __82__SBStatusBarTapManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 40) + 16))(*(result + 40), *(result + 32));
  }

  return result;
}

- (BOOL)canHandleTapForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CCACC8];
  v8 = a3;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBStatusBarTapManager canHandleTapForBackgroundActivityWithIdentifier:windowScene:];
  }

  v9 = [MEMORY[0x277CBEB98] set];
  v17 = v9;
  v10 = [(SBStatusBarTapManager *)self _handlerForBackgroundActivityWithIdentifier:v8 orOutApplications:&v17];

  v11 = v17;
  if (v10)
  {
    v12 = 1;
  }

  else if ([v11 count])
  {
    v13 = [(SBStatusBarTapManager *)self _allApplicationDestinationsForApplications:v11 windowScene:v6];
    v14 = [(SBStatusBarTapManager *)self _foregroundApplicationDestinationsForApplications:v11 windowScene:v6];
    v15 = [v13 mutableCopy];
    [v15 minusOrderedSet:v14];
    v12 = [v15 count] != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_handlerForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBEB98] set];
  v16 = v9;
  v10 = [(SBStatusBarTapManager *)self _handlerForBackgroundActivityWithIdentifier:v7 orOutApplications:&v16];
  v11 = v16;

  if ([v11 count])
  {
    if (v10)
    {
      [SBStatusBarTapManager _handlerForBackgroundActivityWithIdentifier:a2 windowScene:self];
    }

    v12 = [(SBStatusBarTapManager *)self _appDestinationForNextSceneToVisitForApps:v11 andBackgroundActivityWithIdentifier:v7 windowScene:v8];
    if (v12)
    {
      v15 = [[_SBStatusBarTapHandler alloc] initWithApplicationDestination:v12];

      v10 = v15;
    }
  }

  if (!v10)
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(SBStatusBarTapManager *)v7 _handlerForBackgroundActivityWithIdentifier:v11 windowScene:v13];
    }
  }

  return v10;
}

- (id)_handlerForBackgroundActivityWithIdentifier:(id)a3 orOutApplications:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] set];
  if ([v5 isEqualToString:*MEMORY[0x277D6BC70]])
  {
    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D6BC80]])
  {
    v7 = SBMapsBundleIdentifier;
    goto LABEL_4;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D6BCA8]])
  {
    v12 = +[SBActivityManager sharedInstance];
    v13 = [v12 lastRedisplayableActivityForBundleId:@"com.apple.VoiceMemos"];
    if (!v13)
    {
      v14 = [SBApp audioRecordingManager];
      v15 = [v14 nowRecordingApplication];
      if (v15)
      {
        [v6 addObject:v15];
      }

      goto LABEL_19;
    }

    v23 = [_SBStatusBarTapHandler alloc];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __87__SBStatusBarTapManager__handlerForBackgroundActivityWithIdentifier_orOutApplications___block_invoke;
    v31[3] = &unk_2783A92D8;
    v32 = v12;
    v33 = v13;
    v9 = [(_SBStatusBarTapHandler *)v23 initWithBlock:v31];

    v24 = v32;
    goto LABEL_38;
  }

  if (![v5 isEqualToString:*MEMORY[0x277D6BC30]])
  {
    if ([v5 isEqualToString:*MEMORY[0x277D6BC00]])
    {
      v8 = [SBApp nowLocatingApps];
      if (!v8)
      {
        goto LABEL_6;
      }

LABEL_28:
      [v6 addObjectsFromArray:v8];
      goto LABEL_6;
    }

    if ([v5 isEqualToString:*MEMORY[0x277D6BC50]])
    {
      v26 = [_SBStatusBarTapHandler alloc];
      v27 = &__block_literal_global_375;
    }

    else
    {
      if ([v5 isEqualToString:*MEMORY[0x277D6BCF8]])
      {
        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=INTERNET_TETHERING";
        goto LABEL_53;
      }

      if ([v5 isEqualToString:*MEMORY[0x277D6BC38]])
      {
        v7 = SBDiagnosticsBundleIdentifier;
LABEL_4:
        v8 = SBWorkspaceApplicationForIdentifier(*v7);
        if (v8)
        {
          [v6 addObject:v8];
        }

        goto LABEL_6;
      }

      if ([v5 isEqualToString:*MEMORY[0x277D6BC78]])
      {
        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=General&path=ManagedConfigurationList";
        goto LABEL_53;
      }

      if ([v5 isEqualToString:*MEMORY[0x277D6BCF0]])
      {
        v21 = +[SBPlatformController sharedInstance];
        v22 = [v21 isInternalInstall];

        if (!v22)
        {
          goto LABEL_7;
        }

        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=INTERNAL_SETTINGS&path=sysdiagnose";
        goto LABEL_53;
      }

      if (![v5 isEqualToString:*MEMORY[0x277D6BCD0]])
      {
        if (![v5 isEqualToString:*MEMORY[0x277D6BC28]])
        {
          if ([v5 isEqualToString:@"com.apple.activityprogress.backgroundui"])
          {
            v12 = +[SBActivityManager sharedInstance];
            v13 = [v12 lastRedisplayableActivityForBundleId:@"com.apple.ActivityProgress.ActivityProgressUI"];
            if (!v13)
            {
LABEL_19:
              v9 = 0;
LABEL_20:

LABEL_21:
              goto LABEL_8;
            }

            v25 = [_SBStatusBarTapHandler alloc];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __87__SBStatusBarTapManager__handlerForBackgroundActivityWithIdentifier_orOutApplications___block_invoke_4;
            v28[3] = &unk_2783A92D8;
            v29 = v12;
            v30 = v13;
            v9 = [(_SBStatusBarTapHandler *)v25 initWithBlock:v28];

            v24 = v29;
LABEL_38:

            goto LABEL_20;
          }

          if (!v5 || (STUIBackgroundActivityIdentiferRepresentsStyleOverride() & 1) != 0)
          {
            goto LABEL_7;
          }

          v8 = [SBApp appsForBackgroundActivityWithIdentifier:v5];
          goto LABEL_28;
        }

        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=EMERGENCY_SOS";
LABEL_53:
        v12 = [v19 URLWithString:v20];
        v9 = [(_SBStatusBarTapHandler *)v18 initWithURL:v12];
        goto LABEL_21;
      }

      v26 = [_SBStatusBarTapHandler alloc];
      v27 = &__block_literal_global_42_6;
    }

    v9 = [(_SBStatusBarTapHandler *)v26 initWithBlock:v27];
    goto LABEL_8;
  }

  v8 = +[SBPlatformController sharedInstance];
  if ([v8 isInternalInstall])
  {
    v16 = [MEMORY[0x277D431C0] sharedInstance];
    v17 = [v16 activePrototypingEnabled];

    if (!v17)
    {
      goto LABEL_7;
    }

    v18 = [_SBStatusBarTapHandler alloc];
    v19 = MEMORY[0x277CBEBC0];
    v20 = @"prefs:root=INTERNAL_SETTINGS&path=Prototyping";
    goto LABEL_53;
  }

LABEL_6:

LABEL_7:
  v9 = 0;
LABEL_8:
  if (a4 && [v6 count])
  {
    v10 = v6;
    *a4 = v6;
  }

  return v9;
}

void __87__SBStatusBarTapManager__handlerForBackgroundActivityWithIdentifier_orOutApplications___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBStatusBarReturnToHearingAidNotification" object:0 userInfo:0];
}

- (id)_appDestinationForNextSceneToVisitForApps:(id)a3 andBackgroundActivityWithIdentifier:(id)a4 windowScene:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SBStatusBarTapManager *)self _allApplicationDestinationsForApplications:v10 windowScene:v9];
  v12 = [(SBStatusBarTapManager *)self _foregroundApplicationDestinationsForApplications:v10 windowScene:v9];

  v13 = [(SBStatusBarTapManager *)self _recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:v8];
  v14 = [v11 mutableCopy];
  v15 = [(SBStatusBarTapManager *)self _isUILocked:v9];

  if (v15)
  {
LABEL_6:
    v19 = [v14 firstObject];
    goto LABEL_7;
  }

  [v14 minusOrderedSet:v12];
  if ([v14 count])
  {
    [v14 minusSet:v13];
    if (![v14 count])
    {
      [(SBStatusBarTapManager *)self _resetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:v8];
    }

    v16 = [v12 set];
    [(SBStatusBarTapManager *)self _addRecentlyTappedApplicationDestinations:v16 forBackgroundActivityWithIdentifier:v8];

    v17 = [(SBStatusBarTapManager *)self _recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:v8];

    v18 = [v11 mutableCopy];
    [v18 minusSet:v17];
    v13 = v17;
    v14 = v18;
    goto LABEL_6;
  }

  v19 = 0;
LABEL_7:

  return v19;
}

- (void)_addRecentlyTappedApplicationDestinations:(id)a3 forBackgroundActivityWithIdentifier:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBStatusBarTapManager _addRecentlyTappedApplicationDestinations:a2 forBackgroundActivityWithIdentifier:self];
  }

  backgroundActivityIdentifiersToRecentScenes = self->_backgroundActivityIdentifiersToRecentScenes;
  if (!backgroundActivityIdentifiersToRecentScenes)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = self->_backgroundActivityIdentifiersToRecentScenes;
    self->_backgroundActivityIdentifiersToRecentScenes = v10;

    backgroundActivityIdentifiersToRecentScenes = self->_backgroundActivityIdentifiersToRecentScenes;
  }

  v12 = [(NSMutableDictionary *)backgroundActivityIdentifiersToRecentScenes objectForKeyedSubscript:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB58] set];
  }

  v15 = v14;

  v16 = [v7 allObjects];
  [v15 addObjectsFromArray:v16];

  [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentScenes setObject:v15 forKeyedSubscript:v8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        v23 = [v22 sceneIdentifier];

        if (!v23)
        {
          [v15 removeObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  [(SBStatusBarTapManager *)self _scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:v8];
}

- (void)_scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:(id)a3
{
  v4 = a3;
  if (!self->_backgroundActivityIdentifiersToRecentSceneResetTimers)
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    backgroundActivityIdentifiersToRecentSceneResetTimers = self->_backgroundActivityIdentifiersToRecentSceneResetTimers;
    self->_backgroundActivityIdentifiersToRecentSceneResetTimers = v5;
  }

  objc_initWeak(&location, self);
  v7 = [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentSceneResetTimers objectForKeyedSubscript:v4];
  v8 = v7;
  if (v7)
  {
    [v7 invalidate];
  }

  v9 = MEMORY[0x277CBEBB8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__SBStatusBarTapManager__scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier___block_invoke;
  v13[3] = &unk_2783AF5B0;
  objc_copyWeak(&v15, &location);
  v10 = v4;
  v14 = v10;
  v11 = [v9 timerWithTimeInterval:0 repeats:v13 block:8.0];

  v12 = [MEMORY[0x277CBEB88] mainRunLoop];
  [v12 addTimer:v11 forMode:*MEMORY[0x277CBE738]];

  [v11 setTolerance:1.0];
  [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentSceneResetTimers setObject:v11 forKeyedSubscript:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __105__SBStatusBarTapManager__scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _resetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:*(a1 + 32)];
}

- (id)_recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentScenes objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)_isUILocked:(id)a3
{
  v3 = [a3 uiLockStateProvider];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[SBLockScreenManager sharedInstance];
  }

  v6 = v5;

  v7 = [v6 isUILocked];
  return v7;
}

- (id)_allApplicationDestinationsForApplications:(id)a3 windowScene:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v29 = [MEMORY[0x277CBEB40] orderedSet];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v27)
  {
    v26 = *v35;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = +[SBMainSwitcherControllerCoordinator sharedInstance];
        v10 = [v8 bundleIdentifier];
        v11 = [v9 _persistenceIdentifiersForBundleIdentifier:v10 onlyIncludeLaunchableIdentifiers:1];

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (!v12)
        {

LABEL_20:
          v22 = SBLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(SBStatusBarTapManager *)v38 _allApplicationDestinationsForApplications:v8 windowScene:&v39, v22];
          }

          v23 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:v8 sceneIdentifier:0 windowScene:v6];
          [v29 addObject:v23];

          continue;
        }

        v13 = v12;
        v28 = i;
        v14 = 0;
        v15 = *v31;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v30 + 1) + 8 * j);
            v18 = [v8 _sceneIdentifierForStoredPersistenceIdentifier:v17];
            if (v18)
            {
              v19 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:v8 sceneIdentifier:v18 windowScene:v6];
              [v29 addObject:v19];
              v14 = 1;
            }

            else
            {
              v19 = SBLogCommon();
              if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
              {
                v20 = [v8 bundleIdentifier];
                *buf = 138412546;
                v41 = v17;
                v42 = 2112;
                v43 = v20;
                v21 = v20;
                _os_log_error_impl(&dword_21ED4E000, &v19->super, OS_LOG_TYPE_ERROR, "Unable to find a scene identifier for persistence identifier %@ with application %@", buf, 0x16u);
              }
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
        }

        while (v13);

        i = v28;
        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v27);
  }

  return v29;
}

- (id)_foregroundApplicationDestinationsForApplications:(id)a3 windowScene:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB40] orderedSet];
  v8 = [v6 sceneManager];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  }

  v11 = v10;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v37 = v11;
  v12 = [v11 externalForegroundApplicationSceneHandles];
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        v18 = [v17 sceneIdentifier];
        v19 = [v17 application];
        if ([v5 containsObject:v19])
        {
          v20 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:v19 sceneIdentifier:v18 windowScene:v6];
          [v7 addObject:v20];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v14);
  }

  v21 = +[SBSystemApertureSceneElement activeElements];
  if ([v21 count])
  {
    v38 = v7;
    v22 = MEMORY[0x277CBEB98];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __87__SBStatusBarTapManager__foregroundApplicationDestinationsForApplications_windowScene___block_invoke;
    v43[3] = &unk_2783C0CB8;
    v44 = v5;
    v36 = v21;
    v23 = [v21 bs_compactMap:v43];
    v24 = [v22 setWithArray:v23];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    v26 = [v25 externalApplicationSceneHandles];

    v27 = [v26 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          v32 = [v31 sceneIdentifier];
          v33 = [v31 application];
          if ([v24 containsObject:v33])
          {
            v34 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:v33 sceneIdentifier:v32 windowScene:v6];
            [v38 addObject:v34];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v28);
    }

    v7 = v38;
    v21 = v36;
  }

  return v7;
}

id __87__SBStatusBarTapManager__foregroundApplicationDestinationsForApplications_windowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 associatedApplication];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 associatedApplication];
    LODWORD(v5) = [v5 containsObject:v6];

    if (v5)
    {
      v4 = [v3 associatedApplication];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_performAfterAttemptingUnlockForAppWithBundleIdentifier:(id)a3 windowScene:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v10 setName:@"Unlock to launch double height status bar app."];
  [(SBLockScreenUnlockRequest *)v10 setSource:24];
  [(SBLockScreenUnlockRequest *)v10 setWindowScene:v7];
  v11 = SBWorkspaceApplicationForIdentifier(v9);

  if (!SBWorkspaceApplicationCanActivateWhilePasscodeLocked(v11) || [v7 isContinuityDisplayWindowScene])
  {
    [(SBLockScreenUnlockRequest *)v10 setIntent:3];
  }

  v12 = +[SBLockScreenManager sharedInstance];
  v13 = [v12 unlockWithRequest:v10 completion:v8];

  return v13;
}

- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)a3 windowScene:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBStatusBarTapManager handleTapForBackgroundActivityWithIdentifier:windowScene:]"];
    [v16 handleFailureInFunction:v17 file:@"SBStatusBarTapManager.m" lineNumber:69 description:@"this call must be made on the main thread"];
  }

  v8 = [(SBStatusBarTapManager *)self _handlerForBackgroundActivityWithIdentifier:v6 windowScene:v7];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__SBStatusBarTapManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke;
  v21[3] = &unk_2783C0C90;
  objc_copyWeak(&v23, &location);
  v12 = v6;
  v22 = v12;
  v13 = MEMORY[0x223D6F7F0](v21);
  if (v9 && v9[3] && [(SBStatusBarTapManager *)self _isUILocked:v7])
  {
    v14 = [v11 bundleIdentifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__SBStatusBarTapManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke_2;
    v18[3] = &unk_2783B3B78;
    v20 = v13;
    v19 = v9;
    [(SBStatusBarTapManager *)self _performAfterAttemptingUnlockForAppWithBundleIdentifier:v14 windowScene:v7 completion:v18];
  }

  else
  {
    (v13)[2](v13, v9);
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v9 != 0;
}

void __82__SBStatusBarTapManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2[3];
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;
  if ([(_SBStatusBarTapHandler *)a2 handleTap])
  {
    v5 = [v8 sceneIdentifier];

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v7 = [MEMORY[0x277CBEB98] setWithObject:v8];
      [WeakRetained _addRecentlyTappedApplicationDestinations:v7 forBackgroundActivityWithIdentifier:*(a1 + 32)];
    }
  }
}

- (void)canHandleTapForBackgroundActivityWithIdentifier:windowScene:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBStatusBarTapManager canHandleTapForBackgroundActivityWithIdentifier:windowScene:]"];
  [v1 handleFailureInFunction:v0 file:@"SBStatusBarTapManager.m" lineNumber:97 description:@"this call must be made on the main thread"];
}

- (void)_handlerForBackgroundActivityWithIdentifier:(uint64_t)a1 windowScene:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarTapManager.m" lineNumber:128 description:@"should not have both a handler and apps"];
}

- (void)_handlerForBackgroundActivityWithIdentifier:(NSObject *)a3 windowScene:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = STBackgroundActivityIdentifierDescription();
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "unable to construct a tap handler for %@, %@", &v6, 0x16u);
}

- (void)_addRecentlyTappedApplicationDestinations:(uint64_t)a1 forBackgroundActivityWithIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarTapManager.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
}

- (void)_allApplicationDestinationsForApplications:(void *)a3 windowScene:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 bundleIdentifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_21ED4E000, a4, OS_LOG_TYPE_ERROR, "Unable to find a scene identifier for %@, perhaps it was launched by CarPlay?", a1, 0xCu);
}

@end