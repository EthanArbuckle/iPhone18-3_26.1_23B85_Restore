@interface SBApplicationShortcutService
+ (id)sharedInstance;
- (SBApplicationShortcutService)init;
- (id)_sanitizeApplicationShortcutItems:(id)a3 withEntitlements:(unint64_t)a4;
- (void)_authenticateClient:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5;
- (void)_checkEntitlementsForClient:(id)a3 withCompletionHandler:(id)a4;
- (void)applicationServer:(id)a3 client:(id)a4 fetchApplicationShortcutItemsOfTypes:(unint64_t)a5 forBundleIdentifier:(id)a6 withCompletion:(id)a7;
- (void)applicationServer:(id)a3 client:(id)a4 setDynamicApplicationShortcutItems:(id)a5 forBundleIdentifier:(id)a6;
@end

@implementation SBApplicationShortcutService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[SBApplicationShortcutService sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_8;

  return v3;
}

void __46__SBApplicationShortcutService_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBApplicationShortcutService);
  v1 = sharedInstance___sharedInstance_8;
  sharedInstance___sharedInstance_8 = v0;
}

- (SBApplicationShortcutService)init
{
  v11.receiver = self;
  v11.super_class = SBApplicationShortcutService;
  v2 = [(SBApplicationShortcutService *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D0AAF8]);
    v4 = [v3 initWithEntitlement:*MEMORY[0x277D66EB0]];
    serviceClientFullAccessEntitlementAuthenticator = v2->_serviceClientFullAccessEntitlementAuthenticator;
    v2->_serviceClientFullAccessEntitlementAuthenticator = v4;

    v6 = objc_alloc(MEMORY[0x277D0AAF8]);
    v7 = [v6 initWithEntitlement:*MEMORY[0x277D66EA8]];
    serviceClientCustomImageEntitlementAuthenticator = v2->_serviceClientCustomImageEntitlementAuthenticator;
    v2->_serviceClientCustomImageEntitlementAuthenticator = v7;

    v9 = +[SBApplicationServer sharedInstance];
    [v9 setShortcutDelegate:v2];
  }

  return v2;
}

- (void)_checkEntitlementsForClient:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6)
  {
    if (v7)
    {
      [(FBServiceClientAuthenticator *)self->_serviceClientFullAccessEntitlementAuthenticator authenticateClient:v7];
      [(FBServiceClientAuthenticator *)self->_serviceClientCustomImageEntitlementAuthenticator authenticateClient:v7];
    }

    v6[2](v6);
  }
}

- (void)_authenticateClient:(id)a3 forBundleIdentifier:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __94__SBApplicationShortcutService__authenticateClient_forBundleIdentifier_withCompletionHandler___block_invoke;
      v12[3] = &unk_2783B3610;
      v13 = v8;
      v14 = v9;
      v15 = v11;
      [(SBApplicationShortcutService *)self _checkEntitlementsForClient:v13 withCompletionHandler:v12];
    }

    else
    {
      (*(v10 + 2))(v10, 0, 0, 0);
    }
  }
}

void __94__SBApplicationShortcutService__authenticateClient_forBundleIdentifier_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) processHandle];
  v4 = [v2 bundleIdentifier];

  if (*(a1 + 40) && ([v4 isEqualToString:?] & 1) == 0)
  {
    v3 = *(*(a1 + 48) + 16);
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);
  }

  v3();
}

- (id)_sanitizeApplicationShortcutItems:(id)a3 withEntitlements:(unint64_t)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * v11) copy];
        v13 = v12;
        if ((v4 & 2) == 0)
        {
          v14 = [v12 bundleIdentifierToLaunch];

          if (v14)
          {
            v15 = SBLogCommon();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [SBApplicationShortcutService _sanitizeApplicationShortcutItems:withEntitlements:];
            }

            [v13 setBundleIdentifierToLaunch:0];
          }
        }

        v16 = [v13 icon];
        if ((v4 & 3) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = SBLogCommon();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [SBApplicationShortcutService _sanitizeApplicationShortcutItems:withEntitlements:];
            }

            [v13 setIcon:0];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v16 imageData];

            if (v18)
            {
              v19 = SBLogCommon();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                [SBApplicationShortcutService _sanitizeApplicationShortcutItems:withEntitlements:];
              }

              [v13 setIcon:0];
            }
          }
        }

        if (v13)
        {
          [v6 addObject:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)applicationServer:(id)a3 client:(id)a4 fetchApplicationShortcutItemsOfTypes:(unint64_t)a5 forBundleIdentifier:(id)a6 withCompletion:(id)a7
{
  v11 = a4;
  v12 = a6;
  v13 = a7;
  if (v13)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke;
    v14[3] = &unk_2783B36A8;
    v19 = a5;
    v15 = v12;
    v18 = v13;
    v16 = self;
    v17 = v11;
    [(SBApplicationShortcutService *)self _authenticateClient:v17 forBundleIdentifier:v15 withCompletionHandler:v14];
  }
}

void __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v6];
  v8 = v7;
  v9 = *(a1 + 64);
  if ((v9 & 0x1000002) != 0)
  {
    v10 = [v7 isLocked];
    v11 = *(a1 + 64);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = 1;
    v11 = *(a1 + 64);
    if (a2)
    {
LABEL_3:
      v41 = v8;
      v42 = v11;
      v43 = v11 & 8;
      v12 = +[SBApplicationController sharedInstance];
      v13 = [v12 applicationWithBundleIdentifier:v6];

      v89 = 0;
      v90 = &v89;
      v91 = 0x2020000000;
      v92 = 0;
      v85 = 0;
      v86 = &v85;
      v87 = 0x2020000000;
      v88 = 0;
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v84 = 0;
      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v80 = 0;
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0;
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__39;
      v71 = __Block_byref_object_dispose__39;
      v72 = 0;
      if ((v9 & 0x1000000) != 0)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_22;
        block[3] = &unk_2783B3638;
        v61 = &v89;
        v59 = v6;
        v62 = &v85;
        v63 = &v81;
        v64 = &v77;
        v65 = &v73;
        v66 = &v67;
        v60 = *(a1 + 32);
        dispatch_sync(MEMORY[0x277D85CD0], block);
      }

      if (v43)
      {
        v15 = v13;
        if (*(v78 + 24) == 1)
        {
          if (*(v86 + 24))
          {
            v14 = 0;
          }

          else
          {
            v14 = 3;
          }

          if (!v13)
          {
LABEL_29:
            v23 = 0;
            if ((v9 & 0x1000000) != 0)
            {
              v22 = 0;
              v20 = 0;
              if (v68[5])
              {
                v52 = 0;
                v53 = &v52;
                v54 = 0x3032000000;
                v55 = __Block_byref_object_copy__39;
                v56 = __Block_byref_object_dispose__39;
                v57 = 0;
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_2;
                v46[3] = &unk_2783B3660;
                v48 = &v67;
                v49 = &v52;
                v47 = v6;
                v50 = &v81;
                v51 = v14;
                dispatch_sync(MEMORY[0x277D85CD0], v46);
                v23 = v53[5];

                _Block_object_dispose(&v52, 8);
                v22 = 0;
                v20 = 0;
              }
            }

            else
            {
              v22 = 0;
              v20 = 0;
            }

            goto LABEL_33;
          }
        }

        else
        {
          v14 = 0;
          if (!v13)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = v13;
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      v17 = [v15 info];
      v18 = [v17 isBlockedForScreenTimeExpiration];

      if ((v9 & 0x1000001) != 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = 0;
        v15 = v13;
      }

      else
      {
        v15 = v13;
        v21 = [v13 info];
        v20 = [v21 staticApplicationShortcutItems];
      }

      if ((v18 | v10))
      {
        v22 = 0;
        if ((v9 & 0x1000000) == 0)
        {
LABEL_25:
          v23 = 0;
LABEL_33:
          if ((v42 & 4) == 0)
          {
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_3;
            v44[3] = &__block_descriptor_33_e53_B24__0__SBSApplicationShortcutItem_8__NSDictionary_16l;
            v45 = v43 >> 3;
            v30 = [MEMORY[0x277CCAC30] predicateWithBlock:v44];
            v31 = [v23 filteredArrayUsingPredicate:v30];

            v32 = [v22 filteredArrayUsingPredicate:v30];

            v23 = v31;
            v22 = v32;
          }

          v33 = *(a1 + 56);
          v34 = [objc_alloc(MEMORY[0x277D669D8]) initWithStaticApplicationShortcutItems:v20 dynamicApplicationShortcutItems:v22 composedApplicationShortcutItems:v23];
          (*(v33 + 16))(v33, v34);

          _Block_object_dispose(&v67, 8);
          _Block_object_dispose(&v73, 8);
          _Block_object_dispose(&v77, 8);
          _Block_object_dispose(&v81, 8);
          _Block_object_dispose(&v85, 8);
          _Block_object_dispose(&v89, 8);

          v8 = v41;
          goto LABEL_36;
        }
      }

      else
      {
        v22 = [v15 dynamicApplicationShortcutItems];
        if ((v9 & 0x1000000) == 0)
        {
          goto LABEL_25;
        }
      }

      v39 = v14;
      v24 = [v15 info];
      v38 = MEMORY[0x277D661A8];
      v40 = [v15 displayName];
      v25 = [v24 itemID];
      v37 = [v25 unsignedIntegerValue];
      v36 = v90[3];
      v26 = [v24 supportsMultiwindow];
      v27 = [v15 isSystemApplication];
      v28 = [v15 isInternalApplication];
      v29 = [v24 isBeta];
      BYTE5(v35) = *(v82 + 24);
      BYTE4(v35) = *(v74 + 24);
      BYTE3(v35) = v29;
      BYTE2(v35) = v28;
      BYTE1(v35) = v27;
      LOBYTE(v35) = v26;
      v23 = [v38 composedShortcutsForApplicationWithBundleIdentifier:v6 iconDisplayName:v40 staticItems:v20 dynamicItems:v22 applicationItemID:v37 numberOfDisplayItemsInSwitcher:v36 supportsMultipleWindows:v35 isSystemApplication:v39 isInternalApplication:? isApplicationInBeta:? isApplicationHidden:? iconManagerAllowsEditing:? removeStyle:?];

      goto LABEL_33;
    }
  }

  v16 = SBLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_cold_1(a1, v16);
  }

  (*(*(a1 + 56) + 16))();
LABEL_36:
}

void __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_22(void *a1)
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v3 = [v2 _recentAppLayoutsController];
  v4 = [v3 recentDisplayItemsForBundleIdentifier:a1[4] includingHiddenAppLayouts:0];
  *(*(a1[6] + 8) + 24) = [v4 count];

  v5 = +[SBLockStateAggregator sharedInstance];
  *(*(a1[7] + 8) + 24) = [v5 hasAnyLockState];

  v6 = [SBApp windowSceneManager];
  v7 = [v6 embeddedDisplayWindowScene];
  v17 = [v7 iconController];

  v8 = [v17 iconManager];
  v9 = 0;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    v9 = [v8 isEditingAllowed];
  }

  *(*(a1[8] + 8) + 24) = v9;
  v10 = [v17 iconModel];
  v11 = [v10 applicationIconForBundleIdentifier:a1[4]];

  if (v11)
  {
    *(*(a1[9] + 8) + 24) = [v17 isUninstallSupportedForIcon:v11];
    if (*(*(a1[7] + 8) + 24))
    {
      v12 = 0;
    }

    else
    {
      v12 = [v8 isIconIgnored:v11];
    }
  }

  else
  {
    v12 = 0;
    *(*(a1[9] + 8) + 24) = 0;
  }

  *(*(a1[10] + 8) + 24) = v12;
  v13 = +[SBApplicationPlaceholderController sharedInstance];
  v14 = [v13 placeholderForDisplayID:a1[5]];
  v15 = *(a1[11] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

void __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_2(void *a1)
{
  v12 = +[SBApplicationPlaceholderController sharedInstance];
  v2 = [v12 placeholdersByDisplayID];
  v3 = [v2 count] > 1;

  v4 = [*(*(a1[5] + 8) + 40) applicationItemID];
  v5 = [v4 unsignedIntegerValue];

  v6 = [*(*(a1[5] + 8) + 40) applicationDisplayName];
  LOBYTE(v11) = [*(*(a1[5] + 8) + 40) canBeShared];
  LOBYTE(v10) = *(*(a1[7] + 8) + 24);
  v7 = [MEMORY[0x277D661A8] composedShortcutsForDownloadingApplicationWithBundleIdentifier:a1[4] iconDisplayName:v6 applicationItemID:v5 canModifyDownloadState:0 prioritizationIsAvailable:v3 downloadingInformationAgent:*(*(a1[5] + 8) + 40) iconManagerAllowsEditing:v10 removeStyle:a1[8] canShare:v11];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

uint64_t __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32) == 1 && ([MEMORY[0x277D661A8] sbh_isShortcutItemDeleteOrRemove:v5] & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277D661A8] sbh_isShortcutItemSpringBoardOnly:v5] ^ 1;
  }

  return v7;
}

- (void)applicationServer:(id)a3 client:(id)a4 setDynamicApplicationShortcutItems:(id)a5 forBundleIdentifier:(id)a6
{
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112__SBApplicationShortcutService_applicationServer_client_setDynamicApplicationShortcutItems_forBundleIdentifier___block_invoke;
  v13[3] = &unk_2783B36D0;
  v13[4] = self;
  v14 = v10;
  v15 = v9;
  v11 = v9;
  v12 = v10;
  [(SBApplicationShortcutService *)self _authenticateClient:v11 forBundleIdentifier:a6 withCompletionHandler:v13];
}

void __112__SBApplicationShortcutService_applicationServer_client_setDynamicApplicationShortcutItems_forBundleIdentifier___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = [*(a1 + 32) _sanitizeApplicationShortcutItems:*(a1 + 40) withEntitlements:a3];
    v9 = +[SBApplicationController sharedInstance];
    v10 = [v9 applicationWithBundleIdentifier:v7];
    [v10 setDynamicApplicationShortcutItems:v8];
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __112__SBApplicationShortcutService_applicationServer_client_setDynamicApplicationShortcutItems_forBundleIdentifier___block_invoke_cold_1(a1, v11);
    }
  }
}

- (void)_sanitizeApplicationShortcutItems:withEntitlements:.cold.1()
{
  v2 = OUTLINED_FUNCTION_1_12();
  v3 = NSStringFromClass(v2);
  *v1 = 138543362;
  *v0 = v3;
  OUTLINED_FUNCTION_0_22(&dword_21ED4E000, v4, v5, "[%{public}@] Client is not entitled to set bundleIdentifierToLaunch. Ignoring.");
}

- (void)_sanitizeApplicationShortcutItems:withEntitlements:.cold.2()
{
  v2 = OUTLINED_FUNCTION_1_12();
  v3 = NSStringFromClass(v2);
  *v1 = 138543362;
  *v0 = v3;
  OUTLINED_FUNCTION_0_22(&dword_21ED4E000, v4, v5, "[%{public}@] Client is not entitled to set an icon using a custom (dynamic, non-masked) image. Ignoring.");
}

- (void)_sanitizeApplicationShortcutItems:withEntitlements:.cold.3()
{
  v2 = OUTLINED_FUNCTION_1_12();
  v3 = NSStringFromClass(v2);
  *v1 = 138543362;
  *v0 = v3;
  OUTLINED_FUNCTION_0_22(&dword_21ED4E000, v4, v5, "[%{public}@] Client is not entitled to set a contact icon with custom image data. Ignoring.");
}

void __129__SBApplicationShortcutService_applicationServer_client_fetchApplicationShortcutItemsOfTypes_forBundleIdentifier_withCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [*(a1 + 48) processHandle];
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not entitled to request application shortcut items on behalf of another process. Ignoring request.", &v7, 0x16u);
}

void __112__SBApplicationShortcutService_applicationServer_client_setDynamicApplicationShortcutItems_forBundleIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [*(a1 + 48) processHandle];
  v7 = 138543618;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "[%{public}@] Client process [%@] is not entitled to change dynamic application shortcut items on behalf of another process. Ignoring request.", &v7, 0x16u);
}

@end