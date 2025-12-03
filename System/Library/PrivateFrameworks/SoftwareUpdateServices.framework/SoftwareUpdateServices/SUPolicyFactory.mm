@interface SUPolicyFactory
- (SUCorePolicy)corePolicy;
- (SUCorePolicy)rollbackPolicy;
- (SUDownloadOptions)downloadOptions;
- (SUInstallOptions)installOptions;
- (SUPolicyFactory)init;
- (SUPolicyGlobalOptions)globalOptions;
- (SURollbackOptions)rollbackOptions;
- (SUScanOptions)scanOptions;
- (id)_SUAssetTypeForScanOptions:(id)options;
- (id)existingExtensionOfClass:(Class)class inPolicy:(id)policy;
- (unint64_t)coreMDMPathForSUSPath:(unint64_t)path;
- (void)augmentCorePolicy:(id)policy WithApplyPolicy:(id)applyPolicy;
- (void)augmentCorePolicy:(id)policy WithDocumentationDownloadPolicy:(id)downloadPolicy;
- (void)augmentCorePolicy:(id)policy WithDocumentationScanPolicy:(id)scanPolicy;
- (void)augmentCorePolicy:(id)policy WithGlobalPolicy:(id)globalPolicy;
- (void)augmentCorePolicy:(id)policy WithLoadBrainPolicy:(id)brainPolicy;
- (void)augmentCorePolicy:(id)policy WithPreflightPolicy:(id)preflightPolicy;
- (void)augmentCorePolicy:(id)policy WithPreparePolicy:(id)preparePolicy;
- (void)augmentCorePolicy:(id)policy WithResumePolicy:(id)resumePolicy;
- (void)augmentCorePolicy:(id)policy WithRollbackPolicy:(id)rollbackPolicy;
- (void)augmentCorePolicy:(id)policy WithSUDownloadPolicy:(id)downloadPolicy;
- (void)augmentCorePolicy:(id)policy WithSUScanPolicy:(id)scanPolicy;
- (void)augmentCorePolicy:(id)policy WithSuspendPolicy:(id)suspendPolicy;
- (void)augmentPolicy:(id)policy;
- (void)createCorePolicy;
- (void)createRollbackPolicy;
- (void)modifyPolicy:(id)policy forTypes:(id)types;
- (void)removePolicyExtensionOfClass:(Class)class forPolicy:(id)policy;
- (void)setDownloadOptions:(id)options;
- (void)setGlobalOptions:(id)options;
- (void)setInstallOptions:(id)options;
- (void)setPolicyExtension:(id)extension forPolicy:(id)policy;
- (void)setRollbackOptions:(id)options;
- (void)setScanOptions:(id)options;
@end

@implementation SUPolicyFactory

- (SUPolicyFactory)init
{
  v10.receiver = self;
  v10.super_class = SUPolicyFactory;
  v2 = [(SUPolicyFactory *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.softwareupdateservices.SUPolicyFactoryQueue", v3);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v4;

    v6 = v2->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __23__SUPolicyFactory_init__block_invoke;
    block[3] = &unk_279CAA708;
    v9 = v2;
    dispatch_sync(v6, block);
  }

  return v2;
}

uint64_t __23__SUPolicyFactory_init__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = objc_alloc_init(SUPolicyGlobalOptions);
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = v6;

  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = 0;

  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *(a1 + 32);
  v14 = *(v13 + 48);
  *(v13 + 48) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 56);
  *(v15 + 56) = 0;

  [*(a1 + 32) createCorePolicy];
  v17 = *(a1 + 32);

  return [v17 createRollbackPolicy];
}

- (void)setGlobalOptions:(id)options
{
  optionsCopy = options;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUPolicyFactory_setGlobalOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(stateQueue, v7);
}

uint64_t __36__SUPolicyFactory_setGlobalOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  [*(a1 + 32) modifyPolicy:*(*(a1 + 32) + 8) forTypes:&unk_287B6F898];
  v2 = *(a1 + 32);
  v3 = v2[2];

  return [v2 modifyPolicy:v3 forTypes:&unk_287B6F8B0];
}

- (void)setScanOptions:(id)options
{
  optionsCopy = options;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUPolicyFactory_setScanOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(stateQueue, v7);
}

uint64_t __34__SUPolicyFactory_setScanOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _SUAssetTypeForScanOptions:*(a1 + 40)];
  v3 = [*(a1 + 32) _SUAssetTypeForScanOptions:*(*(a1 + 32) + 32)];
  v4 = [v2 isEqualToString:v3];

  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) createCorePolicy];
  }

  if ([*(*(a1 + 32) + 32) disableSplatCombo])
  {
    [*(*(a1 + 32) + 8) setDisableSplatCombo:1];
  }

  if ([*(*(a1 + 32) + 32) disablePreSoftwareUpdateStaging])
  {
    [*(*(a1 + 32) + 8) setEnablePreSUStaging:0];
    [*(*(a1 + 32) + 8) setEnablePreSUStagingForOptionalAssets:0];
  }

  v5 = *(a1 + 32);
  v6 = v5[1];

  return [v5 modifyPolicy:v6 forTypes:&unk_287B6F8C8];
}

- (void)setDownloadOptions:(id)options
{
  optionsCopy = options;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUPolicyFactory_setDownloadOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(stateQueue, v7);
}

uint64_t __38__SUPolicyFactory_setDownloadOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 modifyPolicy:v3 forTypes:&unk_287B6F8E0];
}

- (void)setInstallOptions:(id)options
{
  optionsCopy = options;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUPolicyFactory_setInstallOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(stateQueue, v7);
}

uint64_t __37__SUPolicyFactory_setInstallOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 modifyPolicy:v3 forTypes:&unk_287B6F8F8];
}

- (void)setRollbackOptions:(id)options
{
  optionsCopy = options;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUPolicyFactory_setRollbackOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(stateQueue, v7);
}

uint64_t __38__SUPolicyFactory_setRollbackOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 56), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[2];

  return [v2 modifyPolicy:v3 forTypes:&unk_287B6F910];
}

- (SUPolicyGlobalOptions)globalOptions
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SUPolicyFactory_globalOptions__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (SUScanOptions)scanOptions
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SUPolicyFactory_scanOptions__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (SUDownloadOptions)downloadOptions
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUPolicyFactory_downloadOptions__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (SUInstallOptions)installOptions
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SUPolicyFactory_installOptions__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (SURollbackOptions)rollbackOptions
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUPolicyFactory_rollbackOptions__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (SUCorePolicy)corePolicy
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SUPolicyFactory_corePolicy__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (SUCorePolicy)rollbackPolicy
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18;
  v11 = __Block_byref_object_dispose__18;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SUPolicyFactory_rollbackPolicy__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)createCorePolicy
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = [(SUPolicyFactory *)self _SUAssetTypeForScanOptions:self->_scanOption];
  v3 = [MEMORY[0x277D641C8] getAssetTypeForKind:2 usingFamily:1];
  v4 = [objc_alloc(MEMORY[0x277D641A8]) initWithSoftwareUpdateAssetType:v6 documentationAssetType:v3 usingPolicies:0 usingExtensions:0];
  [(SUPolicyFactory *)self augmentPolicy:v4];
  corePolicy = self->_corePolicy;
  self->_corePolicy = v4;
}

- (void)createRollbackPolicy
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v6 = [MEMORY[0x277D641C8] getAssetTypeForKind:7 usingFamily:1];
  v3 = [MEMORY[0x277D641C8] getAssetTypeForKind:2 usingFamily:1];
  v4 = [objc_alloc(MEMORY[0x277D641A8]) initWithSoftwareUpdateAssetType:v6 documentationAssetType:v3 usingPolicies:0 usingExtensions:0];
  [(SUPolicyFactory *)self augmentPolicy:v4];
  rollbackPolicy = self->_rollbackPolicy;
  self->_rollbackPolicy = v4;
}

- (void)augmentPolicy:(id)policy
{
  policyCopy = policy;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = +[SUPreferences sharedInstance];
  queryCustomerBuilds = [v5 queryCustomerBuilds];

  if (queryCustomerBuilds)
  {
    v7 = policyCopy;
    v8 = 0;
LABEL_3:
    [v7 setReleaseType:v8];
    goto LABEL_8;
  }

  v9 = +[SUPreferences sharedInstance];
  if ([v9 useEmptyPatches])
  {
    v10 = +[SUUtility currentReleaseTypeIsInternal];

    if (v10)
    {
      v8 = @"Empty";
      v7 = policyCopy;
      goto LABEL_3;
    }
  }

  else
  {
  }

LABEL_8:
  if (_os_feature_enabled_impl())
  {
    v11 = +[SUPreferences sharedInstance];
    [policyCopy setUseReserveSpace:{objc_msgSend(v11, "softwareUpdateReserveDisabled") ^ 1}];
  }

  else
  {
    [policyCopy setUseReserveSpace:1];
  }

  v12 = +[SUPreferences sharedInstance];
  [policyCopy setDisableSplatCombo:{objc_msgSend(v12, "disableSplombo")}];

  v13 = +[SUPreferences sharedInstance];
  [policyCopy setEnablePreSUStaging:{objc_msgSend(v13, "enablePreSUStaging")}];

  v14 = +[SUPreferences sharedInstance];
  [policyCopy setEnablePreSUStagingForOptionalAssets:{objc_msgSend(v14, "enablePreSUStagingForOptionalAssets")}];

  v15 = +[SUPreferences sharedInstance];
  [policyCopy setDisableAlternateUpdate:{objc_msgSend(v15, "disableAlternateScan")}];

  v16 = +[SUPreferences sharedInstance];
  alternateAudience = [v16 alternateAudience];
  [policyCopy setAlternateAssetAudienceUUID:alternateAudience];

  v18 = +[SUPreferences sharedInstance];
  softwareUpdateReserveSize = [v18 softwareUpdateReserveSize];
  [policyCopy setReserveSpaceSizeOverride:softwareUpdateReserveSize];

  v20 = +[SUPreferences sharedInstance];
  systemGrowthMarginSize = [v20 systemGrowthMarginSize];
  [policyCopy setSystemGrowthMarginOverride:systemGrowthMarginSize];

  v22 = +[SUPreferences sharedInstance];
  ssoUsernameForPersonalization = [v22 ssoUsernameForPersonalization];
  if (!ssoUsernameForPersonalization)
  {
    goto LABEL_14;
  }

  v24 = ssoUsernameForPersonalization;
  v25 = +[SUPreferences sharedInstance];
  ssoTokenForPersonalization = [v25 ssoTokenForPersonalization];

  if (ssoTokenForPersonalization)
  {
    SULogInfo(@"SSO UserName and Token are set for personalization, setting it in policy", v27, v28, v29, v30, v31, v32, v33, v52);
    v34 = +[SUPreferences sharedInstance];
    ssoTokenForPersonalization2 = [v34 ssoTokenForPersonalization];
    v22 = [ssoTokenForPersonalization2 dataUsingEncoding:4];

    v36 = +[SUPreferences sharedInstance];
    ssoUsernameForPersonalization2 = [v36 ssoUsernameForPersonalization];
    v38 = [ssoUsernameForPersonalization2 dataUsingEncoding:4];

    v53 = 0;
    v39 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v38, "length") + objc_msgSend(v22, "length") + 1}];
    [v39 appendData:v38];
    [v39 appendBytes:&v53 length:1];
    [v39 appendData:v22];
    [policyCopy setSsoToken:v39];

LABEL_14:
  }

  v40 = [[SUPolicyGlobal alloc] initWithGlobalOptions:self->_globalOptions];
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithGlobalPolicy:v40];

  v41 = [[SUPolicyScanSoftwareUpdate alloc] initWithScanOptions:self->_scanOption];
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithSUScanPolicy:v41];

  v42 = [[SUPolicyScanSUDocumentation alloc] initWithScanOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithDocumentationScanPolicy:v42];

  v43 = objc_alloc_init(SUPolicyDocumentationDownload);
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithDocumentationDownloadPolicy:v43];

  v44 = objc_alloc_init(SUPolicyScanBrain);
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithLoadBrainPolicy:v44];

  v45 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithPreflightPolicy:v45];

  v46 = [[SUPolicyDownload alloc] initWithDownloadOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithSUDownloadPolicy:v46];

  v47 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithPreparePolicy:v47];

  v48 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithSuspendPolicy:v48];

  v49 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithResumePolicy:v49];

  v50 = [[SUPolicyApply alloc] initWithInstallOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithApplyPolicy:v50];

  v51 = [[SUPolicyRollback alloc] initWithRollbackOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithRollbackPolicy:v51];
}

- (void)modifyPolicy:(id)policy forTypes:(id)types
{
  v21 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  typesCopy = types;
  dispatch_assert_queue_V2(self->_stateQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        intValue = [*(*(&v16 + 1) + 8 * v12) intValue];
        if (intValue <= 3)
        {
          if (intValue)
          {
            if (intValue == 1)
            {
              v14 = [[SUPolicyScanSoftwareUpdate alloc] initWithScanOptions:self->_scanOption];
              [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithSUScanPolicy:v14];
            }

            else
            {
              if (intValue != 2)
              {
                goto LABEL_23;
              }

              v14 = [[SUPolicyScanSUDocumentation alloc] initWithScanOptions:self->_scanOption];
              [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithDocumentationScanPolicy:v14];
            }
          }

          else
          {
            v14 = [[SUPolicyGlobal alloc] initWithGlobalOptions:self->_globalOptions];
            [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithGlobalPolicy:v14];
          }
        }

        else if (intValue > 9)
        {
          if (intValue == 10)
          {
            v14 = [[SUPolicyApply alloc] initWithInstallOptions:self->_installOptions];
            [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithApplyPolicy:v14];
          }

          else
          {
            if (intValue != 12)
            {
              goto LABEL_23;
            }

            v14 = [[SUPolicyRollback alloc] initWithRollbackOptions:self->_rollbackOptions];
            [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithRollbackPolicy:v14];
          }
        }

        else if (intValue == 4)
        {
          v14 = [[SUPolicyScanBrain alloc] initWithScanOptions:self->_scanOption];
          [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithLoadBrainPolicy:v14];
        }

        else
        {
          if (intValue != 6)
          {
            goto LABEL_23;
          }

          v14 = [[SUPolicyDownload alloc] initWithDownloadOptions:self->_downloadOptions];
          [(SUPolicyFactory *)self augmentCorePolicy:policyCopy WithSUDownloadPolicy:v14];
        }

LABEL_23:
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setPolicyExtension:(id)extension forPolicy:(id)policy
{
  v23 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  policyCopy = policy;
  dispatch_assert_queue_V2(self->_stateQueue);
  v8 = MEMORY[0x277CBEB18];
  policyExtensions = [policyCopy policyExtensions];
  v10 = [v8 arrayWithArray:policyExtensions];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  policyExtensions2 = [policyCopy policyExtensions];
  v12 = [policyExtensions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(policyExtensions2);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 removeObject:v16];
          goto LABEL_11;
        }
      }

      v13 = [policyExtensions2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v10 addObject:extensionCopy];
  [policyCopy setPolicyExtensions:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removePolicyExtensionOfClass:(Class)class forPolicy:(id)policy
{
  v20 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  v5 = MEMORY[0x277CBEB18];
  policyExtensions = [policyCopy policyExtensions];
  v7 = [v5 arrayWithArray:policyExtensions];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  policyExtensions2 = [policyCopy policyExtensions];
  v9 = [policyExtensions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(policyExtensions2);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v7 removeObject:v13];
          goto LABEL_11;
        }
      }

      v10 = [policyExtensions2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [policyCopy setPolicyExtensions:v7];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)existingExtensionOfClass:(Class)class inPolicy:(id)policy
{
  v20 = *MEMORY[0x277D85DE8];
  policyCopy = policy;
  dispatch_assert_queue_V2(self->_stateQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  policyExtensions = [policyCopy policyExtensions];
  v7 = [policyExtensions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [policyExtensions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)augmentCorePolicy:(id)policy WithGlobalPolicy:(id)globalPolicy
{
  policyCopy = policy;
  stateQueue = self->_stateQueue;
  globalPolicyCopy = globalPolicy;
  dispatch_assert_queue_V2(stateQueue);
  [policyCopy setCacheDeleteUrgency:{objc_msgSend(globalPolicyCopy, "cacheDeleteUrgency")}];
  [policyCopy setCheckAvailableSpace:{objc_msgSend(globalPolicyCopy, "checkAvailableSpace")}];
  updateMetricContext = [globalPolicyCopy updateMetricContext];
  [policyCopy setUpdateMetricContext:updateMetricContext];

  updateMetricEventFields = [globalPolicyCopy updateMetricEventFields];

  v10 = [policyCopy setUpdateMetricEventFieldsFromDictionary:updateMetricEventFields];
}

- (void)augmentCorePolicy:(id)policy WithSUScanPolicy:(id)scanPolicy
{
  policyCopy = policy;
  scanPolicyCopy = scanPolicy;
  dispatch_assert_queue_V2(self->_stateQueue);
  softwareUpdateScanPolicy = [policyCopy softwareUpdateScanPolicy];
  [softwareUpdateScanPolicy setAllowsCellular:{objc_msgSend(scanPolicyCopy, "allowsCellular")}];
  [softwareUpdateScanPolicy setDiscretionary:{objc_msgSend(scanPolicyCopy, "discretionary")}];
  [softwareUpdateScanPolicy setRequiresPowerPluggedIn:{objc_msgSend(scanPolicyCopy, "requiresPowerPluggedIn")}];
  [softwareUpdateScanPolicy setRestrictToIncremental:{objc_msgSend(scanPolicyCopy, "restrictToIncremental")}];
  [softwareUpdateScanPolicy setRestrictToFull:{objc_msgSend(scanPolicyCopy, "restrictToFull")}];
  [softwareUpdateScanPolicy setAllowSameVersion:{objc_msgSend(scanPolicyCopy, "allowSameVersion")}];
  [softwareUpdateScanPolicy setDownloadTimeoutSecs:{objc_msgSend(scanPolicyCopy, "downloadTimeoutSecs")}];
  scanType = [scanPolicyCopy scanType];
  [softwareUpdateScanPolicy setRampingScanType:scanType];

  sessionID = [scanPolicyCopy sessionID];
  [softwareUpdateScanPolicy setSessionId:sessionID];

  scanOptions = [scanPolicyCopy scanOptions];
  managedScanOptions = [scanOptions managedScanOptions];

  if (managedScanOptions)
  {
    v12 = objc_alloc_init(MEMORY[0x277D641B8]);
    [v12 setSupervised:1];
    [v12 setMDMUseDelayPeriod:{objc_msgSend(managedScanOptions, "useDelayPeriod") == 1}];
    requestedProductMarketingVersion = [managedScanOptions requestedProductMarketingVersion];
    [v12 setRequestedPMV:requestedProductMarketingVersion];

    [v12 setDelayPeriodSecs:{objc_msgSend(managedScanOptions, "delayPeriodSeconds")}];
    [v12 setMdmSoftwareUpdatePath:{-[SUPolicyFactory coreMDMPathForSUSPath:](self, "coreMDMPathForSUSPath:", objc_msgSend(managedScanOptions, "MDMSoftwareUpdatePath"))}];
    [(SUPolicyFactory *)self setPolicyExtension:v12 forPolicy:policyCopy];
    SULogDebug(@"%s: managed scan options = %@, mdmExtension = %@", v14, v15, v16, v17, v18, v19, v20, "[SUPolicyFactory augmentCorePolicy:WithSUScanPolicy:]");
  }

  if ([scanPolicyCopy isSplatOnlyScan])
  {
    v21 = +[SUPreferences sharedInstance];
    [softwareUpdateScanPolicy setAllowSameVersion:{objc_msgSend(v21, "allowSameRestoreVersionSplatUpdate")}];

    v22 = objc_alloc_init(MEMORY[0x277D641C0]);
    mEMORY[0x277D64420] = [MEMORY[0x277D64420] sharedDevice];
    splatRestoreVersion = [mEMORY[0x277D64420] splatRestoreVersion];
    [v22 setInstalledSplatRestoreVersion:splatRestoreVersion];

    mEMORY[0x277D64420]2 = [MEMORY[0x277D64420] sharedDevice];
    splatBuildVersion = [mEMORY[0x277D64420]2 splatBuildVersion];
    [v22 setInstalledSplatBuildVersion:splatBuildVersion];

    mEMORY[0x277D64420]3 = [MEMORY[0x277D64420] sharedDevice];
    splatProductVersion = [mEMORY[0x277D64420]3 splatProductVersion];
    [v22 setInstalledSplatProductVersion:splatProductVersion];

    mEMORY[0x277D64420]4 = [MEMORY[0x277D64420] sharedDevice];
    splatReleaseType = [mEMORY[0x277D64420]4 splatReleaseType];
    [v22 setInstalledSplatReleaseType:splatReleaseType];

    v31 = +[SUPreferences sharedInstance];
    [v22 setAllowSameRestoreVersion:{objc_msgSend(v31, "allowSameRestoreVersionSplatUpdate")}];

    [(SUPolicyFactory *)self setPolicyExtension:v22 forPolicy:policyCopy];
  }
}

- (void)augmentCorePolicy:(id)policy WithDocumentationScanPolicy:(id)scanPolicy
{
  policyCopy = policy;
  stateQueue = self->_stateQueue;
  scanPolicyCopy = scanPolicy;
  dispatch_assert_queue_V2(stateQueue);
  documentationScanPolicy = [policyCopy documentationScanPolicy];
  [documentationScanPolicy setAllowsCellular:{objc_msgSend(scanPolicyCopy, "allowsCellular")}];
  [documentationScanPolicy setDiscretionary:{objc_msgSend(scanPolicyCopy, "discretionary")}];
  [documentationScanPolicy setRequiresPowerPluggedIn:{objc_msgSend(scanPolicyCopy, "requiresPowerPluggedIn")}];
  [documentationScanPolicy setDownloadTimeoutSecs:{objc_msgSend(scanPolicyCopy, "downloadTimeoutSecs")}];
  scanOptions = [scanPolicyCopy scanOptions];

  managedScanOptions = [scanOptions managedScanOptions];

  if (managedScanOptions)
  {
    v11 = objc_alloc_init(MEMORY[0x277D641B8]);
    [v11 setSupervised:1];
    [v11 setMDMUseDelayPeriod:{objc_msgSend(managedScanOptions, "useDelayPeriod") == 1}];
    requestedProductMarketingVersion = [managedScanOptions requestedProductMarketingVersion];
    [v11 setRequestedPMV:requestedProductMarketingVersion];

    [v11 setDelayPeriodSecs:{objc_msgSend(managedScanOptions, "delayPeriodSeconds")}];
    [v11 setMdmSoftwareUpdatePath:{-[SUPolicyFactory coreMDMPathForSUSPath:](self, "coreMDMPathForSUSPath:", objc_msgSend(managedScanOptions, "MDMSoftwareUpdatePath"))}];
    [(SUPolicyFactory *)self setPolicyExtension:v11 forPolicy:policyCopy];
    SULogDebug(@"%s: managed scan options = %@, mdmExtension = %@", v13, v14, v15, v16, v17, v18, v19, "[SUPolicyFactory augmentCorePolicy:WithDocumentationScanPolicy:]");
  }
}

- (void)augmentCorePolicy:(id)policy WithDocumentationDownloadPolicy:(id)downloadPolicy
{
  stateQueue = self->_stateQueue;
  downloadPolicyCopy = downloadPolicy;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  documentationDownloadPolicy = [policyCopy documentationDownloadPolicy];

  [documentationDownloadPolicy setAllowsCellular:{objc_msgSend(downloadPolicyCopy, "allowsCellular")}];
  [documentationDownloadPolicy setDiscretionary:{objc_msgSend(downloadPolicyCopy, "discretionary")}];
  [documentationDownloadPolicy setRequiresPowerPluggedIn:{objc_msgSend(downloadPolicyCopy, "requiresPowerPluggedIn")}];
  [documentationDownloadPolicy setRequiresInexpensiveAccess:{objc_msgSend(downloadPolicyCopy, "allowExpensiveNetwork") ^ 1}];
  downloadTimeoutSecs = [downloadPolicyCopy downloadTimeoutSecs];

  [documentationDownloadPolicy setDownloadTimeoutSecs:downloadTimeoutSecs];
}

- (void)augmentCorePolicy:(id)policy WithLoadBrainPolicy:(id)brainPolicy
{
  policyCopy = policy;
  stateQueue = self->_stateQueue;
  brainPolicyCopy = brainPolicy;
  dispatch_assert_queue_V2(stateQueue);
  loadBrainPolicy = [policyCopy loadBrainPolicy];
  [loadBrainPolicy setAllowsCellular:{objc_msgSend(brainPolicyCopy, "allowsCellular")}];
  [loadBrainPolicy setDiscretionary:{objc_msgSend(brainPolicyCopy, "discretionary")}];
  [loadBrainPolicy setSkipPhase:{objc_msgSend(brainPolicyCopy, "skipPhase")}];
  scanOptions = [brainPolicyCopy scanOptions];

  managedScanOptions = [scanOptions managedScanOptions];

  if (managedScanOptions)
  {
    v11 = objc_alloc_init(MEMORY[0x277D641B8]);
    [v11 setSupervised:1];
    [v11 setMDMUseDelayPeriod:{objc_msgSend(managedScanOptions, "useDelayPeriod") == 1}];
    requestedProductMarketingVersion = [managedScanOptions requestedProductMarketingVersion];
    [v11 setRequestedPMV:requestedProductMarketingVersion];

    [v11 setDelayPeriodSecs:{objc_msgSend(managedScanOptions, "delayPeriodSeconds")}];
    [v11 setMdmSoftwareUpdatePath:{-[SUPolicyFactory coreMDMPathForSUSPath:](self, "coreMDMPathForSUSPath:", objc_msgSend(managedScanOptions, "MDMSoftwareUpdatePath"))}];
    [(SUPolicyFactory *)self setPolicyExtension:v11 forPolicy:policyCopy];
    SULogDebug(@"%s: managed scan options = %@, mdmExtension = %@", v13, v14, v15, v16, v17, v18, v19, "[SUPolicyFactory augmentCorePolicy:WithLoadBrainPolicy:]");
  }
}

- (void)augmentCorePolicy:(id)policy WithPreflightPolicy:(id)preflightPolicy
{
  stateQueue = self->_stateQueue;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  downloadPreflightPolicy = [policyCopy downloadPreflightPolicy];

  [downloadPreflightPolicy setSkipPhase:0];
}

- (void)augmentCorePolicy:(id)policy WithSUDownloadPolicy:(id)downloadPolicy
{
  stateQueue = self->_stateQueue;
  downloadPolicyCopy = downloadPolicy;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  softwareUpdateDownloadPolicy = [policyCopy softwareUpdateDownloadPolicy];

  [softwareUpdateDownloadPolicy setAllowsCellular:{objc_msgSend(downloadPolicyCopy, "allowsCellular")}];
  [softwareUpdateDownloadPolicy setDiscretionary:{objc_msgSend(downloadPolicyCopy, "discretionary")}];
  [softwareUpdateDownloadPolicy setRequiresPowerPluggedIn:{objc_msgSend(downloadPolicyCopy, "requiresPowerPluggedIn")}];
  [softwareUpdateDownloadPolicy setDownloadTimeoutSecs:{objc_msgSend(downloadPolicyCopy, "downloadTimeoutSecs")}];
  [softwareUpdateDownloadPolicy setRequiresInexpensiveAccess:{objc_msgSend(downloadPolicyCopy, "allowExpensiveNetwork") ^ 1}];
  [softwareUpdateDownloadPolicy setSkipPhase:{objc_msgSend(downloadPolicyCopy, "skipPhase")}];
  maxPreSUStagingOptionalSize = [downloadPolicyCopy maxPreSUStagingOptionalSize];

  [softwareUpdateDownloadPolicy setMaxPreSUStagingOptionalSize:maxPreSUStagingOptionalSize];
}

- (void)augmentCorePolicy:(id)policy WithPreparePolicy:(id)preparePolicy
{
  stateQueue = self->_stateQueue;
  preparePolicyCopy = preparePolicy;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  preparePolicy = [policyCopy preparePolicy];

  skipPhase = [preparePolicyCopy skipPhase];
  [preparePolicy setSkipPhase:skipPhase];
}

- (void)augmentCorePolicy:(id)policy WithSuspendPolicy:(id)suspendPolicy
{
  stateQueue = self->_stateQueue;
  suspendPolicyCopy = suspendPolicy;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  suspendPolicy = [policyCopy suspendPolicy];

  skipPhase = [suspendPolicyCopy skipPhase];
  [suspendPolicy setSkipPhase:skipPhase];
}

- (void)augmentCorePolicy:(id)policy WithResumePolicy:(id)resumePolicy
{
  stateQueue = self->_stateQueue;
  resumePolicyCopy = resumePolicy;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  resumePolicy = [policyCopy resumePolicy];

  skipPhase = [resumePolicyCopy skipPhase];
  [resumePolicy setSkipPhase:skipPhase];
}

- (void)augmentCorePolicy:(id)policy WithApplyPolicy:(id)applyPolicy
{
  policyCopy = policy;
  applyPolicyCopy = applyPolicy;
  dispatch_assert_queue_V2(self->_stateQueue);
  applyPolicy = [policyCopy applyPolicy];
  [applyPolicy setSkipPhase:{objc_msgSend(applyPolicyCopy, "skipPhase")}];
  if (+[SUUtility isVirtualDevice])
  {
    [applyPolicy setBaseApplyOptions:&unk_287B6F828];
  }

  installOptions = [applyPolicyCopy installOptions];
  isManaged = [installOptions isManaged];

  if (isManaged)
  {
    descriptor = [(SUDownloadOptions *)self->_downloadOptions descriptor];
    updateType = [descriptor updateType];

    v12 = objc_opt_class();
    if (updateType == 4)
    {
      [(SUPolicyFactory *)self removePolicyExtensionOfClass:v12 forPolicy:policyCopy];
    }

    else
    {
      v13 = [(SUPolicyFactory *)self existingExtensionOfClass:v12 inPolicy:policyCopy];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x277D641B8]);
      }

      [v13 setSupervised:1];
      [(SUPolicyFactory *)self setPolicyExtension:v13 forPolicy:policyCopy];
    }
  }
}

- (void)augmentCorePolicy:(id)policy WithRollbackPolicy:(id)rollbackPolicy
{
  stateQueue = self->_stateQueue;
  rollbackPolicyCopy = rollbackPolicy;
  policyCopy = policy;
  dispatch_assert_queue_V2(stateQueue);
  rollbackPolicy = [policyCopy rollbackPolicy];

  [rollbackPolicy setPerformPhase:{objc_msgSend(rollbackPolicyCopy, "skipPhase") ^ 1}];
  LODWORD(policyCopy) = [rollbackPolicyCopy cancelActiveUpdate];

  [rollbackPolicy setSkipCancelPreviousUpdate:policyCopy ^ 1];
  [rollbackPolicy setAdditionalOptions:0];
  [rollbackPolicy setBaseRollbackOptions:0];
}

- (unint64_t)coreMDMPathForSUSPath:(unint64_t)path
{
  result = path;
  if (path >= 3)
  {
    SULogInfo(@"Unable to map SUS MDM SU path to SUCore MDM SU path (%lu). Returning SUCoreMDMSoftwareUpdatePathDefault", a2, path, v3, v4, v5, v6, v7, path);
    return 0;
  }

  return result;
}

- (id)_SUAssetTypeForScanOptions:(id)options
{
  optionsCopy = options;
  v4 = optionsCopy;
  if (optionsCopy && [optionsCopy containsType:4] && (objc_msgSend(v4, "types"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 == 1))
  {
    v7 = 7;
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x277D641C8] getAssetTypeForKind:v7 usingFamily:1];

  return v8;
}

@end