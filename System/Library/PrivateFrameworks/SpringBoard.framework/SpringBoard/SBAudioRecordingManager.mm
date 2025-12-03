@interface SBAudioRecordingManager
- (BOOL)_callProviderAttributionExistsForAttribution:(id)attribution callDescriptors:(id)descriptors;
- (SBAudioRecordingManager)init;
- (double)_verificationDelayForApplication:(id)application;
- (int)_pidForAttribution:(id)attribution;
- (void)_coverSheetDidPresent:(id)present;
- (void)_removeBackgroundActivityAssertion;
- (void)_verifyBackgroundAudioActivityForApplication:(id)application withDelay:(BOOL)delay;
- (void)dealloc;
- (void)setNowRecordingAppForActiveAudioRecordingAttributions:(id)attributions callDescriptors:(id)descriptors;
@end

@implementation SBAudioRecordingManager

- (void)_removeBackgroundActivityAssertion
{
  backgroundActivityAssertion = self->_backgroundActivityAssertion;
  if (backgroundActivityAssertion)
  {
    [(SBSBackgroundActivityAssertion *)backgroundActivityAssertion invalidate];
    v4 = self->_backgroundActivityAssertion;
    self->_backgroundActivityAssertion = 0;
  }
}

- (SBAudioRecordingManager)init
{
  v5.receiver = self;
  v5.super_class = SBAudioRecordingManager;
  v2 = [(SBAudioRecordingManager *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__coverSheetDidPresent_ name:@"SBCoverSheetDidPresentNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBAudioRecordingManager;
  [(SBAudioRecordingManager *)&v4 dealloc];
}

- (void)setNowRecordingAppForActiveAudioRecordingAttributions:(id)attributions callDescriptors:(id)descriptors
{
  v33 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  descriptorsCopy = descriptors;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = attributionsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        v12 = +[SBApplicationController sharedInstance];
        bundleIdentifier = [v11 bundleIdentifier];
        v14 = [v12 applicationWithBundleIdentifier:bundleIdentifier];

        if ([(SBAudioRecordingManager *)self _callProviderAttributionExistsForAttribution:v11 callDescriptors:descriptorsCopy])
        {
        }

        else if (v14)
        {
          goto LABEL_12;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v14 = 0;
LABEL_12:

  v15 = BSEqualObjects();
  if (v14)
  {
    objc_storeStrong(&self->_nowRecordingApplication, v14);
    [v14 setNowRecordingApplication:1];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v16 = +[SBSceneManagerCoordinator sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __97__SBAudioRecordingManager_setNowRecordingAppForActiveAudioRecordingAttributions_callDescriptors___block_invoke;
    v21[3] = &unk_2783B7178;
    v17 = v14;
    v22 = v17;
    v23 = &v24;
    [v16 enumerateSceneManagersWithBlock:v21];

    if (*(v25 + 24) == 1)
    {
      [(SBAudioRecordingManager *)self _verifyBackgroundAudioActivityForApplication:v17 withDelay:1];
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    [(SBApplication *)self->_nowRecordingApplication setNowRecordingApplication:0];
    nowRecordingApplication = self->_nowRecordingApplication;
    self->_nowRecordingApplication = 0;

    [(SBAudioRecordingManager *)self _removeBackgroundActivityAssertion];
  }

  if ((v15 & 1) == 0)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBNowRecordingAppDidChangeNotification" object:self];
  }
}

void __97__SBAudioRecordingManager_setNowRecordingAppForActiveAudioRecordingAttributions_callDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a2 externalForegroundApplicationSceneHandles];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) application];
        v9 = [v8 isEqual:*(a1 + 32)];

        if (v9)
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)_verifyBackgroundAudioActivityForApplication:(id)application withDelay:(BOOL)delay
{
  delayCopy = delay;
  applicationCopy = application;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke;
  v15 = &unk_2783A92D8;
  v7 = applicationCopy;
  v16 = v7;
  selfCopy = self;
  v8 = MEMORY[0x223D6F7F0](&v12);
  v9 = v8;
  if (delayCopy)
  {
    [(SBAudioRecordingManager *)self _verificationDelayForApplication:v7, v12, v13, v14, v15];
    v11 = dispatch_time(0, (v10 * 1000000000.0));
    dispatch_after(v11, MEMORY[0x277D85CD0], v9);
  }

  else
  {
    (*(v8 + 16))(v8);
  }
}

void __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v21[0] = @"com.apple.camera";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  if ([v3 containsObject:v2])
  {
    v4 = SBLogStatusBarish();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v2;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "Skipping verification of background audio activity for %{public}@ because this app is exempt", buf, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 32) info];
    v5 = [v4 hasHiddenTag];
    v6 = [*(a1 + 32) isSystemApplication];
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = [*(a1 + 32) isNowRecordingApplication];
      v9 = SBLogStatusBarish();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) bundleIdentifier];
        *buf = 138543618;
        v18 = v10;
        v19 = 1026;
        v20 = v8;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Verify background audio activity for %{public}@, Recording: %{public}d", buf, 0x12u);
      }

      v14 = [*(a1 + 40) backgroundActivityAssertion];
      if (v14)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8;
      }

      if (v11 == 1)
      {
        v12 = [*(a1 + 32) processState];
        v13 = [v12 pid];

        v14 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BCA8] forPID:v13 exclusive:1 showsWhenForeground:0];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke_12;
        v16[3] = &unk_2783A8C18;
        v16[4] = *(a1 + 40);
        [v14 acquireWithHandler:&__block_literal_global_455 invalidationHandler:v16];
        objc_storeStrong((*(a1 + 40) + 16), v14);
      }
    }

    else
    {
      v14 = SBLogStatusBarish();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v2;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "Skipping verification of background audio activity for %{public}@ because this app is a hidden system app", buf, 0xCu);
      }
    }
  }
}

void __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke_10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke_10_cold_1(v2);
    }
  }
}

void __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke_12(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SBAudioRecordingManager__verifyBackgroundAudioActivityForApplication_withDelay___block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (double)_verificationDelayForApplication:(id)application
{
  isFaceTime = [application isFaceTime];
  result = 1.5;
  if (isFaceTime)
  {
    return 2.0;
  }

  return result;
}

- (BOOL)_callProviderAttributionExistsForAttribution:(id)attribution callDescriptors:(id)descriptors
{
  v24 = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  descriptorsCopy = descriptors;
  v8 = [descriptorsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(descriptorsCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [SBActivityAttribution alloc];
        callProviderAttribution = [v12 callProviderAttribution];
        v15 = [(SBActivityAttribution *)v13 initWithSTActivityAttribution:callProviderAttribution];

        if (v15)
        {
          v16 = [(SBAudioRecordingManager *)self _pidForAttribution:attributionCopy];
          if (v16 == [(SBAudioRecordingManager *)self _pidForAttribution:v15])
          {

            v17 = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = [descriptorsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (int)_pidForAttribution:(id)attribution
{
  if (attribution)
  {
    [attribution auditToken];
  }

  return BSPIDForAuditToken();
}

- (void)_coverSheetDidPresent:(id)present
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        application = [*(*(&v10 + 1) + 8 * v8) application];
        if (SBWorkspaceUnlockedEnvironmentLayoutStateHasMatchingApplication(application))
        {
          [(SBAudioRecordingManager *)self _verifyBackgroundAudioActivityForApplication:application withDelay:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end