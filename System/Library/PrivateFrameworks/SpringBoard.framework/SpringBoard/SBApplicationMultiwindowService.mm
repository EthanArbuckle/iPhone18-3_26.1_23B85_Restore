@interface SBApplicationMultiwindowService
+ (SBApplicationMultiwindowService)sharedInstance;
- (SBApplicationMultiwindowService)init;
- (void)applicationServer:(id)server client:(id)client requestShelfPresentationForSceneWithIdentifier:(id)identifier;
- (void)applicationServer:(id)server client:(id)client showAllWindowsForBundleIdentifier:(id)identifier;
- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)identifier;
- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)identifier displayConfiguration:(id)configuration;
@end

@implementation SBApplicationMultiwindowService

+ (SBApplicationMultiwindowService)sharedInstance
{
  if (sharedInstance_onceToken_21 != -1)
  {
    +[SBApplicationMultiwindowService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_12;

  return v3;
}

void __49__SBApplicationMultiwindowService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBApplicationMultiwindowService);
  v1 = sharedInstance___sharedInstance_12;
  sharedInstance___sharedInstance_12 = v0;
}

- (SBApplicationMultiwindowService)init
{
  v11.receiver = self;
  v11.super_class = SBApplicationMultiwindowService;
  v2 = [(SBApplicationMultiwindowService *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0AAF8]);
    v4 = [v3 initWithEntitlement:*MEMORY[0x277D66E98]];
    triggerShowAllWindowsEntitlementAuthenticator = v2->_triggerShowAllWindowsEntitlementAuthenticator;
    v2->_triggerShowAllWindowsEntitlementAuthenticator = v4;

    v6 = objc_alloc(MEMORY[0x277D0AAF8]);
    v7 = [v6 initWithEntitlement:*MEMORY[0x277D66E90]];
    requestShelfPresentationEntitlementAuthenticator = v2->_requestShelfPresentationEntitlementAuthenticator;
    v2->_requestShelfPresentationEntitlementAuthenticator = v7;

    v9 = +[SBApplicationServer sharedInstance];
    [v9 setMultiwindowDelegate:v2];
  }

  return v2;
}

- (void)applicationServer:(id)server client:(id)client showAllWindowsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(FBServiceClientAuthenticator *)self->_triggerShowAllWindowsEntitlementAuthenticator authenticateClient:client])
  {
    [(SBApplicationMultiwindowService *)self triggerShowAllWindowsForApplicationBundleIdentifier:identifierCopy];
  }
}

- (void)applicationServer:(id)server client:(id)client requestShelfPresentationForSceneWithIdentifier:(id)identifier
{
  clientCopy = client;
  identifierCopy = identifier;
  if ([(FBServiceClientAuthenticator *)self->_requestShelfPresentationEntitlementAuthenticator authenticateClient:clientCopy])
  {
    v9 = identifierCopy;
    v10 = clientCopy;
    BSDispatchMain();
  }
}

void __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 windowSceneForSceneIdentifier:*(a1 + 32)];

  v4 = +[SBMainWorkspace sharedInstance];
  v5 = [v3 _fbsDisplayConfiguration];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke_2;
  v7[3] = &unk_2783AC5C0;
  v8 = v3;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v6 = v3;
  [v4 requestTransitionWithOptions:0 displayConfiguration:v5 builder:0 validator:v7];
}

uint64_t __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  [v3 setSource:54];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke_3;
  v5[3] = &unk_2783B3D40;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  [v3 modifyApplicationContext:v5];
  [v3 finalize];

  return 1;
}

void __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) switcherController];
  v5 = [v4 windowManagementContext];

  LOBYTE(v4) = [v5 isChamoisOrFlexibleWindowing];
  v31 = a1;
  v6 = [*(a1 + 40) processHandle];
  v7 = [v6 bundleIdentifier];

  if (v4)
  {
    [v3 setRequestedAppExposeBundleID:v7];
    if ([v5 isFlexibleWindowingEnabled])
    {
      [v3 setRequestedUnlockedEnvironmentMode:2];
    }

    goto LABEL_26;
  }

  v27 = v5;
  v8 = [v3 previousLayoutState];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = [v8 elements];
  v32 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v32)
  {
    v25 = v8;
    v26 = v3;
    v10 = *v34;
    v28 = 0;
    v29 = *v34;
    v30 = v9;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v9);
      }

      v12 = *(*(&v33 + 1) + 8 * v11);
      v13 = [v12 workspaceEntity];
      v14 = [v13 applicationSceneEntity];
      v15 = [v14 application];
      v16 = [v14 sceneHandle];
      v17 = [v15 bundleIdentifier];
      if ([v17 isEqualToString:v7])
      {
        v18 = v7;
        v19 = [v16 sceneIdentifier];
        v20 = [v19 isEqualToString:*(v31 + 48)];

        if (v20)
        {
          v28 = [v12 layoutRole];
          v21 = 1;
        }

        else
        {
          v21 = 0;
        }

        v7 = v18;
        v10 = v29;
        v9 = v30;
      }

      else
      {

        v21 = 0;
      }

      if (v21)
      {
        break;
      }

      if (v32 == ++v11)
      {
        v32 = [v9 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v32)
        {
          goto LABEL_6;
        }

        break;
      }
    }

    v3 = v26;
    if (v28)
    {
      v5 = v27;
      if (v28 == 1)
      {
        v22 = [v26 previousLayoutState];
        v23 = [v22 elementWithRole:2];
        if (v23)
        {
          [v26 setRequestedWindowPickerRole:1];
        }

        else
        {
          [v26 setRequestedAppExposeBundleID:v7];
        }
      }

      else
      {
        [v26 setRequestedWindowPickerRole:?];
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v24 = SBLogAppSwitcher();
  v5 = v27;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke_3_cold_1(v7, v31, v24);
  }

  [v3 setRequestedAppExposeBundleID:v7];
LABEL_26:
}

- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = identifierCopy;
  BSDispatchMain();
}

void __87__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = +[SBMainWorkspace sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke_2;
  v3[3] = &unk_2783A98F0;
  v4 = *(a1 + 32);
  [v2 requestTransitionWithBuilder:v3];
}

void __87__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:33];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __87__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke_3;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
  [v3 finalize];
}

void __87__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setRequestedAppExposeBundleID:v2];
  [v3 setWaitsForSceneUpdates:0];
}

- (void)triggerShowAllWindowsForApplicationBundleIdentifier:(id)identifier displayConfiguration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v9 = identifierCopy;
  v6 = identifierCopy;
  v7 = configurationCopy;
  BSDispatchMain();
}

void __108__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier_displayConfiguration___block_invoke(uint64_t a1)
{
  v2 = +[SBMainWorkspace sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __108__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier_displayConfiguration___block_invoke_2;
  v4[3] = &unk_2783A98F0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 requestTransitionWithOptions:0 displayConfiguration:v3 builder:v4 validator:0];
}

void __108__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier_displayConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:33];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __108__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier_displayConfiguration___block_invoke_3;
  v4[3] = &unk_2783A98C8;
  v5 = *(a1 + 32);
  [v3 modifyApplicationContext:v4];
  [v3 finalize];
}

void __108__SBApplicationMultiwindowService_triggerShowAllWindowsForApplicationBundleIdentifier_displayConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setRequestedAppExposeBundleID:v2];
  [v3 setWaitsForSceneUpdates:0];
}

void __107__SBApplicationMultiwindowService_applicationServer_client_requestShelfPresentationForSceneWithIdentifier___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_fault_impl(&dword_21ED4E000, log, OS_LOG_TYPE_FAULT, "%@ requested shelf presentation with an invalid scene identifier (%@); defaulting to App Expose shelf", &v4, 0x16u);
}

@end