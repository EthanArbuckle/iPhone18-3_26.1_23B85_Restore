@interface SBWebClipService
+ (id)bestWebClipForTargetContentIdentifier:(id)a3 fromWebClips:(id)a4;
- (BOOL)_addActivationActionToSceneEntity:(id)a3 forWebClip:(id)a4;
- (SBWebClipService)initWithWorkspace:(id)a3 sceneManager:(id)a4 placeholderController:(id)a5 applicationController:(id)a6 lockScreenManager:(id)a7;
- (id)initForTestingWithPlaceholderController:(id)a3 applicationController:(id)a4;
- (id)targetApplicationBundleIdentifierForWebClip:(id)a3;
- (void)_applicationsDidChange:(id)a3;
- (void)_beginWaitingForBundleIdentifier:(id)a3 webClipIdentifier:(id)a4 launchOrigin:(id)a5;
- (void)_clearPendingLaunch;
- (void)_generateUserActivityDataFromUserActivity:(id)a3 completion:(id)a4;
- (void)_performActionIfContinuitySessionActive:(id)a3;
- (void)_placeholdersDidChange:(id)a3;
- (void)_queue_addConnection:(id)a3;
- (void)_queue_removeConnection:(id)a3;
- (void)buildLaunchActionsForAppClipWithWebClipIdentifier:(id)a3 completion:(id)a4;
- (void)launchWebClipWithIdentifier:(id)a3 origin:(id)a4;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)prepareToLaunchWebClipWithIdentifier:(id)a3 handler:(id)a4;
- (void)updateWebClipPropertiesWithIdentifier:(id)a3;
@end

@implementation SBWebClipService

- (SBWebClipService)initWithWorkspace:(id)a3 sceneManager:(id)a4 placeholderController:(id)a5 applicationController:(id)a6 lockScreenManager:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v34.receiver = self;
  v34.super_class = SBWebClipService;
  v17 = [(SBWebClipService *)&v34 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_workspace, v12);
    objc_storeWeak(&v18->_sceneManager, v13);
    objc_storeStrong(&v18->_placeholderController, a5);
    objc_storeStrong(&v18->_applicationController, a6);
    objc_storeStrong(&v18->_lockScreenManager, a7);
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v18->_connections;
    v18->_connections = v19;

    v18->_pendingLaunchTimeout = 5.0;
    v21 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.dimSumService"];
    legacyClientAuthenticator = v18->_legacyClientAuthenticator;
    v18->_legacyClientAuthenticator = v21;

    v23 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.webClipService"];
    clientAuthenticator = v18->_clientAuthenticator;
    v18->_clientAuthenticator = v23;

    v25 = BSDispatchQueueCreateWithQualityOfService();
    serviceQueue = v18->_serviceQueue;
    v18->_serviceQueue = v25;

    v27 = MEMORY[0x277CF32A0];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __113__SBWebClipService_initWithWorkspace_sceneManager_placeholderController_applicationController_lockScreenManager___block_invoke;
    v32[3] = &unk_2783A9A18;
    v28 = v18;
    v33 = v28;
    v29 = [v27 listenerWithConfigurator:v32];
    v30 = v28[8];
    v28[8] = v29;

    [v28[8] activate];
  }

  return v18;
}

void __113__SBWebClipService_initWithWorkspace_sceneManager_placeholderController_applicationController_lockScreenManager___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66CF0] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (id)initForTestingWithPlaceholderController:(id)a3 applicationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SBWebClipService *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeholderController, a3);
    objc_storeStrong(&v10->_applicationController, a4);
    v10->_pendingLaunchTimeout = 5.0;
  }

  return v10;
}

- (void)prepareToLaunchWebClipWithIdentifier:(id)a3 handler:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v52 = a4;
  v7 = [MEMORY[0x277D75D70] webClipWithIdentifier:v6];
  if (!v7)
  {
    [SBWebClipService prepareToLaunchWebClipWithIdentifier:a2 handler:self];
  }

  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__117;
  v65 = __Block_byref_object_dispose__117;
  WeakRetained = objc_loadWeakRetained(&self->_sceneManager);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __65__SBWebClipService_prepareToLaunchWebClipWithIdentifier_handler___block_invoke;
  v60[3] = &unk_2783C0E80;
  v60[4] = &v61;
  [(SBWebClipService *)self _performActionIfContinuitySessionActive:v60];
  if (![v7 isAppClip])
  {
    v10 = +[SBIconController sharedIconRepository];
    v53 = [v10 bookmarkIconForWebClipIdentifier:v6];
    if (![v53 isBookmarkIcon])
    {
      v22 = 0;
LABEL_35:
      v9 = v22;
      v52[2]();
      goto LABEL_36;
    }

    v16 = v53;
    v51 = [v16 applicationToLaunch];
    if (v51)
    {
      if (![v16 representsWebApp])
      {
        v37 = [SBDeviceApplicationSceneEntity alloc];
        v38 = __sb__runningInSpringBoard();
        v39 = v38;
        if (v38)
        {
          v40 = SBFEffectiveDeviceClass() == 2;
        }

        else
        {
          a2 = [MEMORY[0x277D75418] currentDevice];
          v40 = [a2 userInterfaceIdiom] == 1;
        }

        v41 = v62[5];
        v42 = [v41 displayIdentity];
        v21 = [(SBDeviceApplicationSceneEntity *)v37 initWithApplication:v51 generatingNewPrimarySceneIfRequired:v40 sceneHandleProvider:v41 displayIdentity:v42];

        if ((v39 & 1) == 0)
        {
        }

        v33 = ![(SBWebClipService *)self _addActivationActionToSceneEntity:v21 forWebClip:v7];
        if (_os_feature_enabled_impl())
        {
          if (objc_opt_respondsToSelector())
          {
            v43 = [v51 bundleIdentifier];
            v44 = [v7 addTrustedClientBundleIdentifier:v43];

            if (v44)
            {
              [v7 updateOnDisk];
            }
          }
        }

        goto LABEL_32;
      }

      v17 = [SBWebApplication _webAppIdentifierFromWebClipIdentifier:v6];
      v18 = [SBDeviceApplicationSceneEntity alloc];
      v19 = v62[5];
      v20 = [v19 displayIdentity];
      v21 = [(SBDeviceApplicationSceneEntity *)v18 initWithApplication:v51 uniqueIdentifier:v17 sceneHandleProvider:v19 displayIdentity:v20];
    }

    else
    {
      v21 = 0;
    }

    v33 = 1;
LABEL_32:
    v34 = objc_alloc_init(SBActivationSettings);
    if (v33)
    {
      v35 = [v16 bookmark];
      v36 = [v35 launchURL];
      [(SBActivationSettings *)v34 setObject:v36 forActivationSetting:5];
    }

    [(SBWorkspaceEntity *)v21 applyActivationSettings:v34];

    v22 = v21;
    goto LABEL_35;
  }

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 applicationBundleIdentifier];
  if (!v10)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"SBWebClipService.m" lineNumber:166 description:{@"%@ Expects a target bundle identifier to be laid down for web clip with identifier %@.", v9, v6}];
  }

  v53 = +[SBIconController sharedIconRepository];
  v11 = [v53 bookmarkIconForWebClipIdentifier:v6];
  v12 = v11 == 0;

  if (v12)
  {
    v13 = [v53 addBookmarkIconForWebClip:v7];
  }

  v50 = [v62[5] newSceneIdentifierForBundleIdentifier:v10 supportsMultiwindow:0];
  v48 = [MEMORY[0x277D0AC98] storeForApplication:v10];
  v14 = [v48 sceneStoreForIdentifier:v50 creatingIfNecessary:1];
  [v14 setObject:v6 forKey:@"appClipIdentifier"];
  v47 = v14;
  if (v10)
  {
    v15 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:v10];
  }

  else
  {
    v15 = 0;
  }

  v23 = [(SBApplicationPlaceholderController *)self->_placeholderController placeholderForDisplayID:v10];
  v24 = [v15 bundleIdentifier];
  v25 = [SBAppClipPlaceholderWorkspaceEntity isAppClipUpdateAvailableForBundleIdentifier:v24];

  if (v15)
  {
    v26 = v23 == 0;
  }

  else
  {
    v26 = 0;
  }

  v27 = !v26;
  if (v27 | v25)
  {
    if (v23 == 0 && !v25)
    {
      v46 = [MEMORY[0x277CCA890] currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"SBWebClipService.m" lineNumber:200 description:{@"%@ Expects a placeholder application to be laid down for web clip with target bundle identifier %@.", v9, v10, v47}];
    }

    v28 = [[SBAppClipPlaceholderWorkspaceEntity alloc] initWithBundleIdentifier:v10 futureSceneIdentifier:v50 needsUpdate:v25];
    v29 = SBLogWebClip();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v68 = v9;
      v69 = 2114;
      v70 = v28;
      _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ Will launch app clip placeholder with workspace entity: %{public}@", buf, 0x16u);
    }

    (v52[2])(v52, v28);
  }

  else
  {
    v30 = v62[5];
    v31 = [v30 displayIdentity];
    v32 = [SBDeviceApplicationSceneEntity defaultEntityWithApplication:v15 sceneHandleProvider:v30 displayIdentity:v31];

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __65__SBWebClipService_prepareToLaunchWebClipWithIdentifier_handler___block_invoke_2;
    v54[3] = &unk_2783C0EA8;
    v28 = v32;
    v55 = v28;
    v56 = v9;
    v57 = v15;
    v58 = v6;
    v59 = v52;
    [(SBWebClipService *)self buildLaunchActionsForAppClipWithWebClipIdentifier:v58 completion:v54];
  }

LABEL_36:
  _Block_object_dispose(&v61, 8);
}

void __65__SBWebClipService_prepareToLaunchWebClipWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 mainWindowScene];
  v3 = [v6 sceneManager];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __65__SBWebClipService_prepareToLaunchWebClipWithIdentifier_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) addActions:a2];
  v3 = SBLogWebClip();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v8 = 138543874;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Backing application exists for: %{public}@. Launching %{public}@.", &v8, 0x20u);
  }

  return (*(*(a1 + 64) + 16))();
}

- (BOOL)_addActivationActionToSceneEntity:(id)a3 forWebClip:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 application];
  v8 = [v7 info];
  v9 = [v8 supportsYttrium];

  if (v9 && (objc_opt_respondsToSelector() & 1) != 0 && [v6 alternativeFullScreen] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [v6 uuid];
    if (v10)
    {
      if (__loadBrowserSupportKitIfNecessary_onceToken != -1)
      {
        [SBWebClipService _addActivationActionToSceneEntity:forWebClip:];
      }

      if (__loadBrowserSupportKitIfNecessary_browserSupportKit)
      {
        goto LABEL_24;
      }

      if (__loadBrowserKitIfNecessary_onceToken != -1)
      {
        [SBWebClipService _addActivationActionToSceneEntity:forWebClip:];
      }

      if (__loadBrowserKitIfNecessary_browserKit)
      {
LABEL_24:
        if (objc_opt_respondsToSelector())
        {
          v11 = [MEMORY[0x277CF0B58] browserSupportKit_activationActionForWebClipWithUUID:v10];
          if (v11)
          {
            v12 = v11;
            goto LABEL_19;
          }
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [MEMORY[0x277CF0B58] browserKit_activationActionForWebClipWithUUID:v10];
          if (!v12)
          {
LABEL_21:

            goto LABEL_16;
          }

LABEL_19:
          v14 = [MEMORY[0x277CBEB98] setWithObject:v12];
          [v5 addActions:v14];

          LOBYTE(v12) = 1;
          goto LABEL_21;
        }
      }
    }

    LOBYTE(v12) = 0;
    goto LABEL_21;
  }

  LOBYTE(v12) = 0;
LABEL_16:

  return v12;
}

+ (id)bestWebClipForTargetContentIdentifier:(id)a3 fromWebClips:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  if (!v5)
  {
    if (v7 != 1)
    {
      goto LABEL_19;
    }

LABEL_18:
    v18 = [v6 firstObject];
    goto LABEL_20;
  }

  v9 = [v5 length];
  if (v8 == 1 && !v9)
  {
    goto LABEL_18;
  }

  if (![v5 length])
  {
LABEL_19:
    v18 = 0;
    goto LABEL_20;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        v16 = [v15 identifier];
        v17 = v16;
        if (v16 && [v16 length] && (objc_msgSend(v17, "isEqualToString:", v5) & 1) != 0)
        {
          v18 = v15;

          if (v18)
          {
            goto LABEL_20;
          }

          goto LABEL_24;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  v20 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  if (!v20)
  {
    v18 = 0;
    goto LABEL_56;
  }

  v21 = 0x277CCA000uLL;
  v22 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v20 resolvingAgainstBaseURL:0];
  v23 = [v22 host];
  if (!v23)
  {
    v18 = 0;
    goto LABEL_55;
  }

  v40 = v22;
  v41 = v20;
  v42 = v6;
  v43 = v5;
  v24 = [v20 pathComponents];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v10;
  v50 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v50)
  {
    v44 = 0;
    goto LABEL_54;
  }

  v45 = v23;
  v46 = 0;
  v44 = 0;
  v49 = *v52;
  do
  {
    v25 = 0;
    do
    {
      if (*v52 != v49)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v51 + 1) + 8 * v25);
      v27 = [v26 pageURL];
      v28 = [objc_alloc(*(v21 + 3296)) initWithURL:v27 resolvingAgainstBaseURL:0];
      v29 = [v28 host];
      v30 = [v27 pathComponents];
      if (v29)
      {
        v48 = v26;
        v31 = [v27 absoluteString];
        if (![v31 length])
        {
          goto LABEL_45;
        }

        v32 = BSEqualStrings();

        if (!v32)
        {
          goto LABEL_43;
        }

        v33 = [v24 count];
        if (v33 < [v30 count])
        {
          goto LABEL_43;
        }

        v34 = 0;
        if (![v24 count])
        {
LABEL_41:
          if (v34 < v46)
          {
            v23 = v45;
LABEL_43:
            v21 = 0x277CCA000;
            goto LABEL_46;
          }

          v31 = v44;
          v23 = v45;
          v44 = v48;
          v46 = v34;
          v21 = 0x277CCA000;
LABEL_45:

          goto LABEL_46;
        }

        while (1)
        {
          v35 = [v24 objectAtIndex:v34];
          if (v34 >= [v30 count])
          {

            goto LABEL_41;
          }

          v36 = v24;
          v37 = [v30 objectAtIndex:v34];
          v38 = BSEqualStrings();

          if (!v38)
          {
            break;
          }

          ++v34;
          v24 = v36;
          if (v34 >= [v36 count])
          {
            goto LABEL_41;
          }
        }

        v23 = v45;
        v21 = 0x277CCA000;
        v24 = v36;
      }

LABEL_46:

      ++v25;
    }

    while (v25 != v50);
    v39 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    v50 = v39;
  }

  while (v39);
LABEL_54:

  v6 = v42;
  v5 = v43;
  v22 = v40;
  v20 = v41;
  v18 = v44;
LABEL_55:

LABEL_56:
LABEL_20:

  return v18;
}

- (id)targetApplicationBundleIdentifierForWebClip:(id)a3
{
  v3 = [a3 identifier];
  if (v3)
  {
    v4 = +[SBIconController sharedIconRepository];
    v5 = [v4 bookmarkIconForWebClipIdentifier:v3];
    if ([v5 isBookmarkIcon])
    {
      v6 = [v5 applicationToLaunch];
      v7 = [v6 bundleIdentifier];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)launchWebClipWithIdentifier:(id)a3 origin:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [(SBWebClipService *)self _clearPendingLaunch];
  v9 = [v8 unsignedIntegerValue];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = SBLogWebClip();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = SBSStringFromWebClipServiceLaunchOrigin();
    *buf = 138543874;
    v25 = v11;
    v26 = 2114;
    v27 = v7;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request to launch web clip with identifier: %{public}@ origin: %{public}@", buf, 0x20u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke;
  v17[3] = &unk_2783C0F70;
  v18 = v7;
  v19 = self;
  v22 = a2;
  v23 = v9;
  v20 = v11;
  v21 = v8;
  v14 = v8;
  v15 = v11;
  v16 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke(uint64_t a1)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75D70] webClipWithIdentifier:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 applicationBundleIdentifier];
    if ([v3 isAppClip])
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_cold_1(a1, (a1 + 32));
    }

    else if (v4)
    {
      v30 = [*(*(a1 + 40) + 24) placeholderForDisplayID:v4];
      v6 = [*(*(a1 + 40) + 32) applicationWithBundleIdentifier:v4];
      if (!(v6 | v30))
      {
        v7 = SBLogWebClip();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 48);
          v9 = *(a1 + 32);
          *buf = 138543874;
          *&buf[4] = v8;
          *&buf[12] = 2114;
          *&buf[14] = v9;
          *&buf[22] = 2114;
          v44 = v4;
          _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Can't launch web clip with identifier:%{public}@ because a placeholder or application for:%{public}@ could not be found. Will wait for placeholder or application to be installed.", buf, 0x20u);
        }

        [*(a1 + 40) _beginWaitingForBundleIdentifier:v4 webClipIdentifier:*(a1 + 32) launchOrigin:*(a1 + 56)];
        objc_initWeak(buf, *(a1 + 40));
        v10 = *(*(a1 + 40) + 88);
        v11 = dispatch_time(0, (*(*(a1 + 40) + 120) * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_88;
        block[3] = &unk_2783C0F48;
        objc_copyWeak(v34, buf);
        v34[1] = v10;
        v32 = *(a1 + 48);
        v4 = v4;
        v33 = v4;
        dispatch_after(v11, MEMORY[0x277D85CD0], block);

        objc_destroyWeak(v34);
        objc_destroyWeak(buf);
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    v30 = 0;
    v6 = 0;
LABEL_15:
    v12 = &stru_283094718;
    if (v4)
    {
      v12 = v4;
    }

    v13 = v12;
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = *(a1 + 40);
    v47 = @"SBWebClipServiceWillLaunchWebClipBundleIdentifierKey";
    v48[0] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [v14 postNotificationName:@"SBWebClipServiceWillLaunchWebClipNotificationName" object:v15 userInfo:v16];

    v17 = *(a1 + 72) - 1;
    if (v17 > 2)
    {
      v18 = 29;
      v19 = 43;
    }

    else
    {
      v18 = dword_21F8A8510[v17];
      v19 = qword_21F8A8520[v17];
    }

    v20 = objc_alloc_init(SBLockScreenUnlockRequest);
    [(SBLockScreenUnlockRequest *)v20 setSource:v18];
    [(SBLockScreenUnlockRequest *)v20 setIntent:3];
    v21 = MEMORY[0x277CCACA8];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v21 stringWithFormat:@"%@: Open web clip: %@", v23, *(a1 + 32)];
    [(SBLockScreenUnlockRequest *)v20 setName:v24];

    [(SBLockScreenUnlockRequest *)v20 setWantsBiometricPresentation:1];
    [(SBLockScreenUnlockRequest *)v20 setConfirmedNotInPocket:1];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v44 = __Block_byref_object_copy__117;
    v45 = __Block_byref_object_dispose__117;
    v46 = 0;
    v25 = *(a1 + 40);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_2;
    v40[3] = &unk_2783C0ED0;
    v42 = buf;
    v26 = v20;
    v41 = v26;
    [v25 _performActionIfContinuitySessionActive:v40];
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v29 = *(v28 + 40);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_3;
    v35[3] = &unk_2783C0F20;
    v35[4] = v28;
    v36 = v27;
    v38 = buf;
    v39 = v19;
    v37 = *(a1 + 48);
    [v29 unlockWithRequest:v26 completion:v35];

    _Block_object_dispose(buf, 8);
    goto LABEL_21;
  }

  v4 = SBLogWebClip();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_cold_2();
  }

LABEL_21:
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = [a2 mainWindowScene];
  v3 = [v6 _sbDisplayConfiguration];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(a1 + 32) setWindowScene:v6];
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_3(uint64_t a1, int a2, __n128 a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    a3.n128_u64[0] = 3221225472;
    v12[1] = 3221225472;
    v12[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_4;
    v12[3] = &unk_2783C0EF8;
    v13[4] = *(a1 + 64);
    v6 = *(a1 + 48);
    v10 = a3;
    v11 = v6;
    v7 = *&v6.f64[0];
    v8 = *(a1 + 40);
    v14.val[1] = v11;
    *&v14.val[0].f64[0] = v5;
    *&v14.val[0].f64[1] = v8;
    vst2q_f64(v13, v14);
    [v5 prepareToLaunchWebClipWithIdentifier:v4 handler:{v12, *&v10}];
  }

  else
  {
    v9 = SBLogWebClip();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_3_cold_1();
    }
  }
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_5;
    v7[3] = &unk_2783B7368;
    v10 = *(a1 + 64);
    v8 = v3;
    v9 = *(a1 + 40);
    [WeakRetained requestTransitionWithOptions:0 displayConfiguration:v5 builder:v7 validator:&__block_literal_global_378];

    v6 = v8;
  }

  else
  {
    v6 = SBLogWebClip();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_4_cold_1();
    }
  }
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEventLabel:@"ActivateWebClipFromSBS"];
  [v3 setSource:*(a1 + 48)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_6;
  v8[3] = &unk_2783A98C8;
  v9 = *(a1 + 32);
  [v3 modifyApplicationContext:v8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_7;
  v5[3] = &unk_2783A8BF0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = [v3 addCompletionHandler:v5];
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_7(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = SBLogWebClip();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Did launch web clip with workspace entity: %{public}@", &v5, 0x16u);
  }
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && WeakRetained[11] == *(a1 + 56))
  {
    [WeakRetained _clearPendingLaunch];
    v4 = SBLogWebClip();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_88_cold_1(a1, v4);
    }
  }
}

- (void)_beginWaitingForBundleIdentifier:(id)a3 webClipIdentifier:(id)a4 launchOrigin:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(SBWebClipService *)self _clearPendingLaunch];
  v16 = [MEMORY[0x277CCAB98] defaultCenter];
  [v16 addObserver:self selector:sel__placeholdersDidChange_ name:@"SBApplicationPlaceholdersDidChangeNotification" object:self->_placeholderController];
  [v16 addObserver:self selector:sel__applicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:self->_applicationController];
  v11 = [v10 copy];

  pendingBundleIdentifier = self->_pendingBundleIdentifier;
  self->_pendingBundleIdentifier = v11;

  v13 = [v9 copy];
  pendingWebClipIdentifier = self->_pendingWebClipIdentifier;
  self->_pendingWebClipIdentifier = v13;

  pendingLaunchOrigin = self->_pendingLaunchOrigin;
  self->_pendingLaunchOrigin = v8;
}

- (void)_clearPendingLaunch
{
  if (self->_pendingBundleIdentifier)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:@"SBApplicationPlaceholdersDidChangeNotification" object:self->_placeholderController];
    [v6 removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:self->_applicationController];
    pendingBundleIdentifier = self->_pendingBundleIdentifier;
    self->_pendingBundleIdentifier = 0;

    pendingWebClipIdentifier = self->_pendingWebClipIdentifier;
    self->_pendingWebClipIdentifier = 0;

    pendingLaunchOrigin = self->_pendingLaunchOrigin;
    self->_pendingLaunchOrigin = 0;

    ++self->_pendingLaunchGenerationCount;
  }
}

- (void)_placeholdersDidChange:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->_pendingBundleIdentifier)
  {
    v4 = [a3 userInfo];
    v5 = [v4 objectForKey:@"__placeholdersAdded"];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v18 + 1) + 8 * i) applicationBundleID];
          v12 = [v11 isEqualToString:self->_pendingBundleIdentifier];

          if (v12)
          {
            v13 = SBLogWebClip();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = objc_opt_class();
              v15 = NSStringFromClass(v14);
              pendingBundleIdentifier = self->_pendingBundleIdentifier;
              pendingWebClipIdentifier = self->_pendingWebClipIdentifier;
              *buf = 138543874;
              v23 = v15;
              v24 = 2114;
              v25 = pendingWebClipIdentifier;
              v26 = 2114;
              v27 = pendingBundleIdentifier;
              _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Placeholder added. Retrying web clip launch with identifier:%{public}@ for:%{public}@.", buf, 0x20u);
            }

            [(SBWebClipService *)self launchWebClipWithIdentifier:self->_pendingWebClipIdentifier origin:self->_pendingLaunchOrigin];
            [(SBWebClipService *)self _clearPendingLaunch];
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)_applicationsDidChange:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_pendingBundleIdentifier)
  {
    v4 = [a3 userInfo];
    v5 = [v4 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v16 + 1) + 8 * i) isEqualToString:{self->_pendingBundleIdentifier, v16}])
          {
            v11 = SBLogWebClip();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = objc_opt_class();
              v13 = NSStringFromClass(v12);
              pendingBundleIdentifier = self->_pendingBundleIdentifier;
              pendingWebClipIdentifier = self->_pendingWebClipIdentifier;
              *buf = 138543874;
              v21 = v13;
              v22 = 2114;
              v23 = pendingWebClipIdentifier;
              v24 = 2114;
              v25 = pendingBundleIdentifier;
              _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Application added. Retrying web clip launch with identifier:%{public}@ for:%{public}@.", buf, 0x20u);
            }

            [(SBWebClipService *)self launchWebClipWithIdentifier:self->_pendingWebClipIdentifier origin:self->_pendingLaunchOrigin];
            [(SBWebClipService *)self _clearPendingLaunch];
            goto LABEL_14;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)updateWebClipPropertiesWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = SBLogWebClip();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request to update app clip properties with identifier: %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SBWebClipService_updateWebClipPropertiesWithIdentifier___block_invoke;
  v9[3] = &unk_2783A92D8;
  v10 = v3;
  v11 = v5;
  v7 = v5;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __58__SBWebClipService_updateWebClipPropertiesWithIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75D70] webClipWithIdentifier:*(a1 + 32)];
  if (v2)
  {
    v3 = +[SBIconController sharedIconRepository];
    v4 = [v3 bookmarkIconForWebClipIdentifier:*(a1 + 32)];
    if (v4)
    {
      [v3 updateExistingBookmarkIcon:v4 forUpdatedWebClip:v2];
    }

    else
    {
      v7 = SBLogWebClip();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v10 = [v2 applicationBundleIdentifier];
        v11 = 138543874;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Didn't find an icon for webClip identifier %{public}@ and application bundle identifier %{public}@.", &v11, 0x20u);
      }
    }
  }

  else
  {
    v3 = SBLogWebClip();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v11 = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Didn't find a web clip with identifier %{public}@.", &v11, 0x16u);
    }
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogWebClip();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412546;
    v26 = v9;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%@ Received connection: %{public}@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __62__SBWebClipService_listener_didReceiveConnection_withContext___block_invoke;
  v24[3] = &unk_2783AB730;
  v24[4] = self;
  [v6 configureConnection:v24];
  clientAuthenticator = self->_clientAuthenticator;
  v11 = [v6 remoteProcess];
  v12 = [v11 auditToken];
  if ([(FBServiceClientAuthenticator *)clientAuthenticator authenticateAuditToken:v12])
  {

LABEL_6:
    v16 = SBLogWebClip();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412546;
      v26 = v18;
      v27 = 2114;
      v28 = v6;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "%@ Client authenticated, will add connection: %{public}@", buf, 0x16u);
    }

    serviceQueue = self->_serviceQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SBWebClipService_listener_didReceiveConnection_withContext___block_invoke_96;
    block[3] = &unk_2783A92D8;
    block[4] = self;
    v20 = v6;
    v23 = v20;
    dispatch_async(serviceQueue, block);
    [v20 activate];

    goto LABEL_12;
  }

  legacyClientAuthenticator = self->_legacyClientAuthenticator;
  v14 = [v6 remoteProcess];
  v15 = [v14 auditToken];
  LODWORD(legacyClientAuthenticator) = [(FBServiceClientAuthenticator *)legacyClientAuthenticator authenticateAuditToken:v15];

  if (legacyClientAuthenticator)
  {
    goto LABEL_6;
  }

  v21 = SBLogWebClip();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [SBWebClipService listener:v6 didReceiveConnection:v21 withContext:?];
  }

  [v6 invalidate];
LABEL_12:
}

void __62__SBWebClipService_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66CF0] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66CF0] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __62__SBWebClipService_listener_didReceiveConnection_withContext___block_invoke_2;
  v9 = &unk_2783AB6E0;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(*(a1 + 32) + 72), v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __62__SBWebClipService_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogWebClip();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ Connection invalidated: %{public}@", &v8, 0x16u);
    }

    [WeakRetained _queue_removeConnection:v3];
  }
}

- (void)_queue_addConnection:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogWebClip();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ Adding Connection: %{public}@", &v8, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serviceQueue);
  [(NSMutableArray *)self->_connections addObject:v4];
}

- (void)_queue_removeConnection:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogWebClip();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%@ Removing Connection: %{public}@", &v8, 0x16u);
  }

  dispatch_assert_queue_V2(self->_serviceQueue);
  [(NSMutableArray *)self->_connections removeObject:v4];
}

- (void)_performActionIfContinuitySessionActive:(id)a3
{
  v5 = a3;
  if (+[SBContinuitySessionManager areContinuitySessionsAllowed])
  {
    v3 = +[SBContinuitySessionManager sharedInstance];
    v4 = [v3 currentSession];

    if ([v4 state] == 11)
    {
      v5[2](v5, v4);
    }
  }
}

- (void)buildLaunchActionsForAppClipWithWebClipIdentifier:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = [MEMORY[0x277D75D70] webClipWithIdentifier:a3];
  if (!v8)
  {
    [SBWebClipService buildLaunchActionsForAppClipWithWebClipIdentifier:a2 completion:self];
  }

  v9 = [v8 appClipUserActivity];
  v10 = v9;
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __81__SBWebClipService_buildLaunchActionsForAppClipWithWebClipIdentifier_completion___block_invoke;
    v11[3] = &unk_2783C0F98;
    v12 = v9;
    v13 = v7;
    [(SBWebClipService *)self _generateUserActivityDataFromUserActivity:v12 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __81__SBWebClipService_buildLaunchActionsForAppClipWithWebClipIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v12 = [v3 dictionaryWithCapacity:4];
  [v12 setObject:v4 forKeyedSubscript:&unk_283371FD8];

  v5 = [*(a1 + 32) activityType];
  [v12 setObject:v5 forKeyedSubscript:&unk_283371FF0];

  v6 = [*(a1 + 32) activityType];
  [v12 setObject:v6 forKeyedSubscript:&unk_283372008];

  v7 = [MEMORY[0x277CBEAA8] date];
  [v12 setObject:v7 forKeyedSubscript:&unk_283372020];

  v8 = *(a1 + 40);
  v9 = MEMORY[0x277CBEB98];
  v10 = [objc_alloc(MEMORY[0x277D750D8]) initWithSettings:v12];
  v11 = [v9 setWithObject:v10];
  (*(v8 + 16))(v8, v11);
}

- (void)_generateUserActivityDataFromUserActivity:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBWebClipService__generateUserActivityDataFromUserActivity_completion___block_invoke;
  v8[3] = &unk_2783C0FC0;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 _createUserActivityDataWithOptions:MEMORY[0x277CBEC10] completionHandler:v8];
}

void __73__SBWebClipService__generateUserActivityDataFromUserActivity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SBWebClipService__generateUserActivityDataFromUserActivity_completion___block_invoke_2;
  v11[3] = &unk_2783ABA58;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __73__SBWebClipService__generateUserActivityDataFromUserActivity_completion___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __73__SBWebClipService__generateUserActivityDataFromUserActivity_completion___block_invoke_2_cold_1(a1, v2, v3);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)prepareToLaunchWebClipWithIdentifier:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWebClipService.m" lineNumber:152 description:@"No web clip for the given identifier"];
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_cold_1(void *a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1[8] object:a1[5] file:@"SBWebClipService.m" lineNumber:377 description:{@"%@ Expects a target bundle identifier to be laid down for app clip with identifier %@.", a1[6], *a2}];
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, v0, v0, "%{public}@ Can't launch web clip with identifier:%{public}@ because we couldn't find the underlying UIWebClip.", v1);
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_3_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, v0, v1, "%{public}@ Can't launch web clip with identifier:%{public}@ because unlock failed.", v2);
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_4_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, v0, v1, "%{public}@ Can't launch web clip with identifier:%{public}@ because workspace entity is nil.", v2);
}

void __55__SBWebClipService_launchWebClipWithIdentifier_origin___block_invoke_88_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "%{public}@ Timed out waiting for a placeholder or application to be installed for %@.", &v4, 0x16u);
}

- (void)listener:(uint64_t)a1 didReceiveConnection:(uint64_t)a2 withContext:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = 138412546;
  v9 = v6;
  v10 = 2114;
  v11 = a2;
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, a3, v7, "%@ Client authentication failed for connection: %{public}@", &v8);
}

- (void)buildLaunchActionsForAppClipWithWebClipIdentifier:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWebClipService.m" lineNumber:605 description:@"We expect to have a non-nil UIWebClip"];
}

void __73__SBWebClipService__generateUserActivityDataFromUserActivity_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *a2;
  v9 = 138543618;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  OUTLINED_FUNCTION_3_4(&dword_21ED4E000, a3, v8, "%{public}@ Failed to create user activity with error %{public}@", &v9);
}

@end