@interface SBStatusBarTapManager
- (BOOL)_isUILocked:(id)locked;
- (BOOL)_performAfterAttemptingUnlockForAppWithBundleIdentifier:(id)identifier windowScene:(id)scene completion:(id)completion;
- (BOOL)canHandleTapForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene;
- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene;
- (id)_allApplicationDestinationsForApplications:(id)applications windowScene:(id)scene;
- (id)_appDestinationForNextSceneToVisitForApps:(id)apps andBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene;
- (id)_foregroundApplicationDestinationsForApplications:(id)applications windowScene:(id)scene;
- (id)_handlerForBackgroundActivityWithIdentifier:(id)identifier orOutApplications:(id *)applications;
- (id)_handlerForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene;
- (id)_recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:(id)identifier;
- (void)_addRecentlyTappedApplicationDestinations:(id)destinations forBackgroundActivityWithIdentifier:(id)identifier;
- (void)_scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:(id)identifier;
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

- (BOOL)canHandleTapForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene
{
  sceneCopy = scene;
  v7 = MEMORY[0x277CCACC8];
  identifierCopy = identifier;
  if (([v7 isMainThread] & 1) == 0)
  {
    [SBStatusBarTapManager canHandleTapForBackgroundActivityWithIdentifier:windowScene:];
  }

  v9 = [MEMORY[0x277CBEB98] set];
  v17 = v9;
  v10 = [(SBStatusBarTapManager *)self _handlerForBackgroundActivityWithIdentifier:identifierCopy orOutApplications:&v17];

  v11 = v17;
  if (v10)
  {
    v12 = 1;
  }

  else if ([v11 count])
  {
    v13 = [(SBStatusBarTapManager *)self _allApplicationDestinationsForApplications:v11 windowScene:sceneCopy];
    v14 = [(SBStatusBarTapManager *)self _foregroundApplicationDestinationsForApplications:v11 windowScene:sceneCopy];
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

- (id)_handlerForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene
{
  identifierCopy = identifier;
  sceneCopy = scene;
  v9 = [MEMORY[0x277CBEB98] set];
  v16 = v9;
  v10 = [(SBStatusBarTapManager *)self _handlerForBackgroundActivityWithIdentifier:identifierCopy orOutApplications:&v16];
  v11 = v16;

  if ([v11 count])
  {
    if (v10)
    {
      [SBStatusBarTapManager _handlerForBackgroundActivityWithIdentifier:a2 windowScene:self];
    }

    v12 = [(SBStatusBarTapManager *)self _appDestinationForNextSceneToVisitForApps:v11 andBackgroundActivityWithIdentifier:identifierCopy windowScene:sceneCopy];
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
      [(SBStatusBarTapManager *)identifierCopy _handlerForBackgroundActivityWithIdentifier:v11 windowScene:v13];
    }
  }

  return v10;
}

- (id)_handlerForBackgroundActivityWithIdentifier:(id)identifier orOutApplications:(id *)applications
{
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CBEB58] set];
  if ([identifierCopy isEqualToString:*MEMORY[0x277D6BC70]])
  {
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D6BC80]])
  {
    v7 = SBMapsBundleIdentifier;
    goto LABEL_4;
  }

  if ([identifierCopy isEqualToString:*MEMORY[0x277D6BCA8]])
  {
    v12 = +[SBActivityManager sharedInstance];
    v13 = [v12 lastRedisplayableActivityForBundleId:@"com.apple.VoiceMemos"];
    if (!v13)
    {
      audioRecordingManager = [SBApp audioRecordingManager];
      nowRecordingApplication = [audioRecordingManager nowRecordingApplication];
      if (nowRecordingApplication)
      {
        [v6 addObject:nowRecordingApplication];
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

  if (![identifierCopy isEqualToString:*MEMORY[0x277D6BC30]])
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277D6BC00]])
    {
      nowLocatingApps = [SBApp nowLocatingApps];
      if (!nowLocatingApps)
      {
        goto LABEL_6;
      }

LABEL_28:
      [v6 addObjectsFromArray:nowLocatingApps];
      goto LABEL_6;
    }

    if ([identifierCopy isEqualToString:*MEMORY[0x277D6BC50]])
    {
      v26 = [_SBStatusBarTapHandler alloc];
      v27 = &__block_literal_global_375;
    }

    else
    {
      if ([identifierCopy isEqualToString:*MEMORY[0x277D6BCF8]])
      {
        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=INTERNET_TETHERING";
        goto LABEL_53;
      }

      if ([identifierCopy isEqualToString:*MEMORY[0x277D6BC38]])
      {
        v7 = SBDiagnosticsBundleIdentifier;
LABEL_4:
        nowLocatingApps = SBWorkspaceApplicationForIdentifier(*v7);
        if (nowLocatingApps)
        {
          [v6 addObject:nowLocatingApps];
        }

        goto LABEL_6;
      }

      if ([identifierCopy isEqualToString:*MEMORY[0x277D6BC78]])
      {
        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=General&path=ManagedConfigurationList";
        goto LABEL_53;
      }

      if ([identifierCopy isEqualToString:*MEMORY[0x277D6BCF0]])
      {
        v21 = +[SBPlatformController sharedInstance];
        isInternalInstall = [v21 isInternalInstall];

        if (!isInternalInstall)
        {
          goto LABEL_7;
        }

        v18 = [_SBStatusBarTapHandler alloc];
        v19 = MEMORY[0x277CBEBC0];
        v20 = @"prefs:root=INTERNAL_SETTINGS&path=sysdiagnose";
        goto LABEL_53;
      }

      if (![identifierCopy isEqualToString:*MEMORY[0x277D6BCD0]])
      {
        if (![identifierCopy isEqualToString:*MEMORY[0x277D6BC28]])
        {
          if ([identifierCopy isEqualToString:@"com.apple.activityprogress.backgroundui"])
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

          if (!identifierCopy || (STUIBackgroundActivityIdentiferRepresentsStyleOverride() & 1) != 0)
          {
            goto LABEL_7;
          }

          nowLocatingApps = [SBApp appsForBackgroundActivityWithIdentifier:identifierCopy];
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

  nowLocatingApps = +[SBPlatformController sharedInstance];
  if ([nowLocatingApps isInternalInstall])
  {
    mEMORY[0x277D431C0] = [MEMORY[0x277D431C0] sharedInstance];
    activePrototypingEnabled = [mEMORY[0x277D431C0] activePrototypingEnabled];

    if (!activePrototypingEnabled)
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
  if (applications && [v6 count])
  {
    v10 = v6;
    *applications = v6;
  }

  return v9;
}

void __87__SBStatusBarTapManager__handlerForBackgroundActivityWithIdentifier_orOutApplications___block_invoke_2()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"SBStatusBarReturnToHearingAidNotification" object:0 userInfo:0];
}

- (id)_appDestinationForNextSceneToVisitForApps:(id)apps andBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene
{
  identifierCopy = identifier;
  sceneCopy = scene;
  appsCopy = apps;
  v11 = [(SBStatusBarTapManager *)self _allApplicationDestinationsForApplications:appsCopy windowScene:sceneCopy];
  v12 = [(SBStatusBarTapManager *)self _foregroundApplicationDestinationsForApplications:appsCopy windowScene:sceneCopy];

  v13 = [(SBStatusBarTapManager *)self _recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:identifierCopy];
  v14 = [v11 mutableCopy];
  v15 = [(SBStatusBarTapManager *)self _isUILocked:sceneCopy];

  if (v15)
  {
LABEL_6:
    firstObject = [v14 firstObject];
    goto LABEL_7;
  }

  [v14 minusOrderedSet:v12];
  if ([v14 count])
  {
    [v14 minusSet:v13];
    if (![v14 count])
    {
      [(SBStatusBarTapManager *)self _resetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:identifierCopy];
    }

    v16 = [v12 set];
    [(SBStatusBarTapManager *)self _addRecentlyTappedApplicationDestinations:v16 forBackgroundActivityWithIdentifier:identifierCopy];

    v17 = [(SBStatusBarTapManager *)self _recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:identifierCopy];

    v18 = [v11 mutableCopy];
    [v18 minusSet:v17];
    v13 = v17;
    v14 = v18;
    goto LABEL_6;
  }

  firstObject = 0;
LABEL_7:

  return firstObject;
}

- (void)_addRecentlyTappedApplicationDestinations:(id)destinations forBackgroundActivityWithIdentifier:(id)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  identifierCopy = identifier;
  if (!destinationsCopy)
  {
    [SBStatusBarTapManager _addRecentlyTappedApplicationDestinations:a2 forBackgroundActivityWithIdentifier:self];
  }

  backgroundActivityIdentifiersToRecentScenes = self->_backgroundActivityIdentifiersToRecentScenes;
  if (!backgroundActivityIdentifiersToRecentScenes)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = self->_backgroundActivityIdentifiersToRecentScenes;
    self->_backgroundActivityIdentifiersToRecentScenes = dictionary;

    backgroundActivityIdentifiersToRecentScenes = self->_backgroundActivityIdentifiersToRecentScenes;
  }

  v12 = [(NSMutableDictionary *)backgroundActivityIdentifiersToRecentScenes objectForKeyedSubscript:identifierCopy];
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

  allObjects = [destinationsCopy allObjects];
  [v15 addObjectsFromArray:allObjects];

  [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentScenes setObject:v15 forKeyedSubscript:identifierCopy];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = destinationsCopy;
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
        sceneIdentifier = [v22 sceneIdentifier];

        if (!sceneIdentifier)
        {
          [v15 removeObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  [(SBStatusBarTapManager *)self _scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:identifierCopy];
}

- (void)_scheduleResetRecentlyTappedSceneIdentifiersForBackgroundActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!self->_backgroundActivityIdentifiersToRecentSceneResetTimers)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    backgroundActivityIdentifiersToRecentSceneResetTimers = self->_backgroundActivityIdentifiersToRecentSceneResetTimers;
    self->_backgroundActivityIdentifiersToRecentSceneResetTimers = dictionary;
  }

  objc_initWeak(&location, self);
  v7 = [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentSceneResetTimers objectForKeyedSubscript:identifierCopy];
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
  v10 = identifierCopy;
  v14 = v10;
  v11 = [v9 timerWithTimeInterval:0 repeats:v13 block:8.0];

  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [mainRunLoop addTimer:v11 forMode:*MEMORY[0x277CBE738]];

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

- (id)_recentlyTappedApplicationDestinationsForBackgroundActivityWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_backgroundActivityIdentifiersToRecentScenes objectForKeyedSubscript:identifier];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)_isUILocked:(id)locked
{
  uiLockStateProvider = [locked uiLockStateProvider];
  v4 = uiLockStateProvider;
  if (uiLockStateProvider)
  {
    v5 = uiLockStateProvider;
  }

  else
  {
    v5 = +[SBLockScreenManager sharedInstance];
  }

  v6 = v5;

  isUILocked = [v6 isUILocked];
  return isUILocked;
}

- (id)_allApplicationDestinationsForApplications:(id)applications windowScene:(id)scene
{
  v46 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  sceneCopy = scene;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = applicationsCopy;
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
        bundleIdentifier = [v8 bundleIdentifier];
        v11 = [v9 _persistenceIdentifiersForBundleIdentifier:bundleIdentifier onlyIncludeLaunchableIdentifiers:1];

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (!v12)
        {

LABEL_20:
          v22 = SBLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(SBStatusBarTapManager *)v38 _allApplicationDestinationsForApplications:v8 windowScene:&v39, v22];
          }

          v23 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:v8 sceneIdentifier:0 windowScene:sceneCopy];
          [orderedSet addObject:v23];

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
              v19 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:v8 sceneIdentifier:v18 windowScene:sceneCopy];
              [orderedSet addObject:v19];
              v14 = 1;
            }

            else
            {
              v19 = SBLogCommon();
              if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
              {
                bundleIdentifier2 = [v8 bundleIdentifier];
                *buf = 138412546;
                v41 = v17;
                v42 = 2112;
                v43 = bundleIdentifier2;
                v21 = bundleIdentifier2;
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

  return orderedSet;
}

- (id)_foregroundApplicationDestinationsForApplications:(id)applications windowScene:(id)scene
{
  v51 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  sceneCopy = scene;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  sceneManager = [sceneCopy sceneManager];
  v9 = sceneManager;
  if (sceneManager)
  {
    v10 = sceneManager;
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
  externalForegroundApplicationSceneHandles = [v11 externalForegroundApplicationSceneHandles];
  v13 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          objc_enumerationMutation(externalForegroundApplicationSceneHandles);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        sceneIdentifier = [v17 sceneIdentifier];
        application = [v17 application];
        if ([applicationsCopy containsObject:application])
        {
          v20 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:application sceneIdentifier:sceneIdentifier windowScene:sceneCopy];
          [orderedSet addObject:v20];
        }
      }

      v14 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v14);
  }

  v21 = +[SBSystemApertureSceneElement activeElements];
  if ([v21 count])
  {
    v38 = orderedSet;
    v22 = MEMORY[0x277CBEB98];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __87__SBStatusBarTapManager__foregroundApplicationDestinationsForApplications_windowScene___block_invoke;
    v43[3] = &unk_2783C0CB8;
    v44 = applicationsCopy;
    v36 = v21;
    v23 = [v21 bs_compactMap:v43];
    v24 = [v22 setWithArray:v23];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
    externalApplicationSceneHandles = [v25 externalApplicationSceneHandles];

    v27 = [externalApplicationSceneHandles countByEnumeratingWithState:&v39 objects:v49 count:16];
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
            objc_enumerationMutation(externalApplicationSceneHandles);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          sceneIdentifier2 = [v31 sceneIdentifier];
          application2 = [v31 application];
          if ([v24 containsObject:application2])
          {
            v34 = [[_SBStatusBarTapApplicationDestination alloc] initWithApplication:application2 sceneIdentifier:sceneIdentifier2 windowScene:sceneCopy];
            [v38 addObject:v34];
          }
        }

        v28 = [externalApplicationSceneHandles countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v28);
    }

    orderedSet = v38;
    v21 = v36;
  }

  return orderedSet;
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

- (BOOL)_performAfterAttemptingUnlockForAppWithBundleIdentifier:(id)identifier windowScene:(id)scene completion:(id)completion
{
  sceneCopy = scene;
  completionCopy = completion;
  identifierCopy = identifier;
  v10 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v10 setName:@"Unlock to launch double height status bar app."];
  [(SBLockScreenUnlockRequest *)v10 setSource:24];
  [(SBLockScreenUnlockRequest *)v10 setWindowScene:sceneCopy];
  v11 = SBWorkspaceApplicationForIdentifier(identifierCopy);

  if (!SBWorkspaceApplicationCanActivateWhilePasscodeLocked(v11) || [sceneCopy isContinuityDisplayWindowScene])
  {
    [(SBLockScreenUnlockRequest *)v10 setIntent:3];
  }

  v12 = +[SBLockScreenManager sharedInstance];
  v13 = [v12 unlockWithRequest:v10 completion:completionCopy];

  return v13;
}

- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene
{
  identifierCopy = identifier;
  sceneCopy = scene;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBStatusBarTapManager handleTapForBackgroundActivityWithIdentifier:windowScene:]"];
    [currentHandler handleFailureInFunction:v17 file:@"SBStatusBarTapManager.m" lineNumber:69 description:@"this call must be made on the main thread"];
  }

  v8 = [(SBStatusBarTapManager *)self _handlerForBackgroundActivityWithIdentifier:identifierCopy windowScene:sceneCopy];
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
  v12 = identifierCopy;
  v22 = v12;
  v13 = MEMORY[0x223D6F7F0](v21);
  if (v9 && v9[3] && [(SBStatusBarTapManager *)self _isUILocked:sceneCopy])
  {
    bundleIdentifier = [v11 bundleIdentifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__SBStatusBarTapManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke_2;
    v18[3] = &unk_2783B3B78;
    v20 = v13;
    v19 = v9;
    [(SBStatusBarTapManager *)self _performAfterAttemptingUnlockForAppWithBundleIdentifier:bundleIdentifier windowScene:sceneCopy completion:v18];
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