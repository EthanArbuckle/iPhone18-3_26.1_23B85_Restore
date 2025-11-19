@interface SUPolicyFactory
- (SUCorePolicy)corePolicy;
- (SUCorePolicy)rollbackPolicy;
- (SUDownloadOptions)downloadOptions;
- (SUInstallOptions)installOptions;
- (SUPolicyFactory)init;
- (SUPolicyGlobalOptions)globalOptions;
- (SURollbackOptions)rollbackOptions;
- (SUScanOptions)scanOptions;
- (id)_SUAssetTypeForScanOptions:(id)a3;
- (id)existingExtensionOfClass:(Class)a3 inPolicy:(id)a4;
- (unint64_t)coreMDMPathForSUSPath:(unint64_t)a3;
- (void)augmentCorePolicy:(id)a3 WithApplyPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithDocumentationDownloadPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithDocumentationScanPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithGlobalPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithLoadBrainPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithPreflightPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithPreparePolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithResumePolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithRollbackPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithSUDownloadPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithSUScanPolicy:(id)a4;
- (void)augmentCorePolicy:(id)a3 WithSuspendPolicy:(id)a4;
- (void)augmentPolicy:(id)a3;
- (void)createCorePolicy;
- (void)createRollbackPolicy;
- (void)modifyPolicy:(id)a3 forTypes:(id)a4;
- (void)removePolicyExtensionOfClass:(Class)a3 forPolicy:(id)a4;
- (void)setDownloadOptions:(id)a3;
- (void)setGlobalOptions:(id)a3;
- (void)setInstallOptions:(id)a3;
- (void)setPolicyExtension:(id)a3 forPolicy:(id)a4;
- (void)setRollbackOptions:(id)a3;
- (void)setScanOptions:(id)a3;
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

- (void)setGlobalOptions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SUPolicyFactory_setGlobalOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setScanOptions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SUPolicyFactory_setScanOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setDownloadOptions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUPolicyFactory_setDownloadOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

uint64_t __38__SUPolicyFactory_setDownloadOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 modifyPolicy:v3 forTypes:&unk_287B6F8E0];
}

- (void)setInstallOptions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__SUPolicyFactory_setInstallOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

uint64_t __37__SUPolicyFactory_setInstallOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = v2[1];

  return [v2 modifyPolicy:v3 forTypes:&unk_287B6F8F8];
}

- (void)setRollbackOptions:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SUPolicyFactory_setRollbackOptions___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)augmentPolicy:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = +[SUPreferences sharedInstance];
  v6 = [v5 queryCustomerBuilds];

  if (v6)
  {
    v7 = v4;
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
      v7 = v4;
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
    [v4 setUseReserveSpace:{objc_msgSend(v11, "softwareUpdateReserveDisabled") ^ 1}];
  }

  else
  {
    [v4 setUseReserveSpace:1];
  }

  v12 = +[SUPreferences sharedInstance];
  [v4 setDisableSplatCombo:{objc_msgSend(v12, "disableSplombo")}];

  v13 = +[SUPreferences sharedInstance];
  [v4 setEnablePreSUStaging:{objc_msgSend(v13, "enablePreSUStaging")}];

  v14 = +[SUPreferences sharedInstance];
  [v4 setEnablePreSUStagingForOptionalAssets:{objc_msgSend(v14, "enablePreSUStagingForOptionalAssets")}];

  v15 = +[SUPreferences sharedInstance];
  [v4 setDisableAlternateUpdate:{objc_msgSend(v15, "disableAlternateScan")}];

  v16 = +[SUPreferences sharedInstance];
  v17 = [v16 alternateAudience];
  [v4 setAlternateAssetAudienceUUID:v17];

  v18 = +[SUPreferences sharedInstance];
  v19 = [v18 softwareUpdateReserveSize];
  [v4 setReserveSpaceSizeOverride:v19];

  v20 = +[SUPreferences sharedInstance];
  v21 = [v20 systemGrowthMarginSize];
  [v4 setSystemGrowthMarginOverride:v21];

  v22 = +[SUPreferences sharedInstance];
  v23 = [v22 ssoUsernameForPersonalization];
  if (!v23)
  {
    goto LABEL_14;
  }

  v24 = v23;
  v25 = +[SUPreferences sharedInstance];
  v26 = [v25 ssoTokenForPersonalization];

  if (v26)
  {
    SULogInfo(@"SSO UserName and Token are set for personalization, setting it in policy", v27, v28, v29, v30, v31, v32, v33, v52);
    v34 = +[SUPreferences sharedInstance];
    v35 = [v34 ssoTokenForPersonalization];
    v22 = [v35 dataUsingEncoding:4];

    v36 = +[SUPreferences sharedInstance];
    v37 = [v36 ssoUsernameForPersonalization];
    v38 = [v37 dataUsingEncoding:4];

    v53 = 0;
    v39 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v38, "length") + objc_msgSend(v22, "length") + 1}];
    [v39 appendData:v38];
    [v39 appendBytes:&v53 length:1];
    [v39 appendData:v22];
    [v4 setSsoToken:v39];

LABEL_14:
  }

  v40 = [[SUPolicyGlobal alloc] initWithGlobalOptions:self->_globalOptions];
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithGlobalPolicy:v40];

  v41 = [[SUPolicyScanSoftwareUpdate alloc] initWithScanOptions:self->_scanOption];
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithSUScanPolicy:v41];

  v42 = [[SUPolicyScanSUDocumentation alloc] initWithScanOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithDocumentationScanPolicy:v42];

  v43 = objc_alloc_init(SUPolicyDocumentationDownload);
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithDocumentationDownloadPolicy:v43];

  v44 = objc_alloc_init(SUPolicyScanBrain);
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithLoadBrainPolicy:v44];

  v45 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithPreflightPolicy:v45];

  v46 = [[SUPolicyDownload alloc] initWithDownloadOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithSUDownloadPolicy:v46];

  v47 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithPreparePolicy:v47];

  v48 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithSuspendPolicy:v48];

  v49 = objc_alloc_init(SUPolicy);
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithResumePolicy:v49];

  v50 = [[SUPolicyApply alloc] initWithInstallOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithApplyPolicy:v50];

  v51 = [[SUPolicyRollback alloc] initWithRollbackOptions:0];
  [(SUPolicyFactory *)self augmentCorePolicy:v4 WithRollbackPolicy:v51];
}

- (void)modifyPolicy:(id)a3 forTypes:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
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

        v13 = [*(*(&v16 + 1) + 8 * v12) intValue];
        if (v13 <= 3)
        {
          if (v13)
          {
            if (v13 == 1)
            {
              v14 = [[SUPolicyScanSoftwareUpdate alloc] initWithScanOptions:self->_scanOption];
              [(SUPolicyFactory *)self augmentCorePolicy:v6 WithSUScanPolicy:v14];
            }

            else
            {
              if (v13 != 2)
              {
                goto LABEL_23;
              }

              v14 = [[SUPolicyScanSUDocumentation alloc] initWithScanOptions:self->_scanOption];
              [(SUPolicyFactory *)self augmentCorePolicy:v6 WithDocumentationScanPolicy:v14];
            }
          }

          else
          {
            v14 = [[SUPolicyGlobal alloc] initWithGlobalOptions:self->_globalOptions];
            [(SUPolicyFactory *)self augmentCorePolicy:v6 WithGlobalPolicy:v14];
          }
        }

        else if (v13 > 9)
        {
          if (v13 == 10)
          {
            v14 = [[SUPolicyApply alloc] initWithInstallOptions:self->_installOptions];
            [(SUPolicyFactory *)self augmentCorePolicy:v6 WithApplyPolicy:v14];
          }

          else
          {
            if (v13 != 12)
            {
              goto LABEL_23;
            }

            v14 = [[SUPolicyRollback alloc] initWithRollbackOptions:self->_rollbackOptions];
            [(SUPolicyFactory *)self augmentCorePolicy:v6 WithRollbackPolicy:v14];
          }
        }

        else if (v13 == 4)
        {
          v14 = [[SUPolicyScanBrain alloc] initWithScanOptions:self->_scanOption];
          [(SUPolicyFactory *)self augmentCorePolicy:v6 WithLoadBrainPolicy:v14];
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_23;
          }

          v14 = [[SUPolicyDownload alloc] initWithDownloadOptions:self->_downloadOptions];
          [(SUPolicyFactory *)self augmentCorePolicy:v6 WithSUDownloadPolicy:v14];
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

- (void)setPolicyExtension:(id)a3 forPolicy:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v8 = MEMORY[0x277CBEB18];
  v9 = [v7 policyExtensions];
  v10 = [v8 arrayWithArray:v9];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [v7 policyExtensions];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 removeObject:v16];
          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v10 addObject:v6];
  [v7 setPolicyExtensions:v10];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removePolicyExtensionOfClass:(Class)a3 forPolicy:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = MEMORY[0x277CBEB18];
  v6 = [v4 policyExtensions];
  v7 = [v5 arrayWithArray:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v4 policyExtensions];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v7 removeObject:v13];
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v4 setPolicyExtensions:v7];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)existingExtensionOfClass:(Class)a3 inPolicy:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 policyExtensions];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)augmentCorePolicy:(id)a3 WithGlobalPolicy:(id)a4
{
  v11 = a3;
  stateQueue = self->_stateQueue;
  v7 = a4;
  dispatch_assert_queue_V2(stateQueue);
  [v11 setCacheDeleteUrgency:{objc_msgSend(v7, "cacheDeleteUrgency")}];
  [v11 setCheckAvailableSpace:{objc_msgSend(v7, "checkAvailableSpace")}];
  v8 = [v7 updateMetricContext];
  [v11 setUpdateMetricContext:v8];

  v9 = [v7 updateMetricEventFields];

  v10 = [v11 setUpdateMetricEventFieldsFromDictionary:v9];
}

- (void)augmentCorePolicy:(id)a3 WithSUScanPolicy:(id)a4
{
  v32 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = [v32 softwareUpdateScanPolicy];
  [v7 setAllowsCellular:{objc_msgSend(v6, "allowsCellular")}];
  [v7 setDiscretionary:{objc_msgSend(v6, "discretionary")}];
  [v7 setRequiresPowerPluggedIn:{objc_msgSend(v6, "requiresPowerPluggedIn")}];
  [v7 setRestrictToIncremental:{objc_msgSend(v6, "restrictToIncremental")}];
  [v7 setRestrictToFull:{objc_msgSend(v6, "restrictToFull")}];
  [v7 setAllowSameVersion:{objc_msgSend(v6, "allowSameVersion")}];
  [v7 setDownloadTimeoutSecs:{objc_msgSend(v6, "downloadTimeoutSecs")}];
  v8 = [v6 scanType];
  [v7 setRampingScanType:v8];

  v9 = [v6 sessionID];
  [v7 setSessionId:v9];

  v10 = [v6 scanOptions];
  v11 = [v10 managedScanOptions];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D641B8]);
    [v12 setSupervised:1];
    [v12 setMDMUseDelayPeriod:{objc_msgSend(v11, "useDelayPeriod") == 1}];
    v13 = [v11 requestedProductMarketingVersion];
    [v12 setRequestedPMV:v13];

    [v12 setDelayPeriodSecs:{objc_msgSend(v11, "delayPeriodSeconds")}];
    [v12 setMdmSoftwareUpdatePath:{-[SUPolicyFactory coreMDMPathForSUSPath:](self, "coreMDMPathForSUSPath:", objc_msgSend(v11, "MDMSoftwareUpdatePath"))}];
    [(SUPolicyFactory *)self setPolicyExtension:v12 forPolicy:v32];
    SULogDebug(@"%s: managed scan options = %@, mdmExtension = %@", v14, v15, v16, v17, v18, v19, v20, "[SUPolicyFactory augmentCorePolicy:WithSUScanPolicy:]");
  }

  if ([v6 isSplatOnlyScan])
  {
    v21 = +[SUPreferences sharedInstance];
    [v7 setAllowSameVersion:{objc_msgSend(v21, "allowSameRestoreVersionSplatUpdate")}];

    v22 = objc_alloc_init(MEMORY[0x277D641C0]);
    v23 = [MEMORY[0x277D64420] sharedDevice];
    v24 = [v23 splatRestoreVersion];
    [v22 setInstalledSplatRestoreVersion:v24];

    v25 = [MEMORY[0x277D64420] sharedDevice];
    v26 = [v25 splatBuildVersion];
    [v22 setInstalledSplatBuildVersion:v26];

    v27 = [MEMORY[0x277D64420] sharedDevice];
    v28 = [v27 splatProductVersion];
    [v22 setInstalledSplatProductVersion:v28];

    v29 = [MEMORY[0x277D64420] sharedDevice];
    v30 = [v29 splatReleaseType];
    [v22 setInstalledSplatReleaseType:v30];

    v31 = +[SUPreferences sharedInstance];
    [v22 setAllowSameRestoreVersion:{objc_msgSend(v31, "allowSameRestoreVersionSplatUpdate")}];

    [(SUPolicyFactory *)self setPolicyExtension:v22 forPolicy:v32];
  }
}

- (void)augmentCorePolicy:(id)a3 WithDocumentationScanPolicy:(id)a4
{
  v20 = a3;
  stateQueue = self->_stateQueue;
  v7 = a4;
  dispatch_assert_queue_V2(stateQueue);
  v8 = [v20 documentationScanPolicy];
  [v8 setAllowsCellular:{objc_msgSend(v7, "allowsCellular")}];
  [v8 setDiscretionary:{objc_msgSend(v7, "discretionary")}];
  [v8 setRequiresPowerPluggedIn:{objc_msgSend(v7, "requiresPowerPluggedIn")}];
  [v8 setDownloadTimeoutSecs:{objc_msgSend(v7, "downloadTimeoutSecs")}];
  v9 = [v7 scanOptions];

  v10 = [v9 managedScanOptions];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D641B8]);
    [v11 setSupervised:1];
    [v11 setMDMUseDelayPeriod:{objc_msgSend(v10, "useDelayPeriod") == 1}];
    v12 = [v10 requestedProductMarketingVersion];
    [v11 setRequestedPMV:v12];

    [v11 setDelayPeriodSecs:{objc_msgSend(v10, "delayPeriodSeconds")}];
    [v11 setMdmSoftwareUpdatePath:{-[SUPolicyFactory coreMDMPathForSUSPath:](self, "coreMDMPathForSUSPath:", objc_msgSend(v10, "MDMSoftwareUpdatePath"))}];
    [(SUPolicyFactory *)self setPolicyExtension:v11 forPolicy:v20];
    SULogDebug(@"%s: managed scan options = %@, mdmExtension = %@", v13, v14, v15, v16, v17, v18, v19, "[SUPolicyFactory augmentCorePolicy:WithDocumentationScanPolicy:]");
  }
}

- (void)augmentCorePolicy:(id)a3 WithDocumentationDownloadPolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v9 = [v7 documentationDownloadPolicy];

  [v9 setAllowsCellular:{objc_msgSend(v6, "allowsCellular")}];
  [v9 setDiscretionary:{objc_msgSend(v6, "discretionary")}];
  [v9 setRequiresPowerPluggedIn:{objc_msgSend(v6, "requiresPowerPluggedIn")}];
  [v9 setRequiresInexpensiveAccess:{objc_msgSend(v6, "allowExpensiveNetwork") ^ 1}];
  v8 = [v6 downloadTimeoutSecs];

  [v9 setDownloadTimeoutSecs:v8];
}

- (void)augmentCorePolicy:(id)a3 WithLoadBrainPolicy:(id)a4
{
  v20 = a3;
  stateQueue = self->_stateQueue;
  v7 = a4;
  dispatch_assert_queue_V2(stateQueue);
  v8 = [v20 loadBrainPolicy];
  [v8 setAllowsCellular:{objc_msgSend(v7, "allowsCellular")}];
  [v8 setDiscretionary:{objc_msgSend(v7, "discretionary")}];
  [v8 setSkipPhase:{objc_msgSend(v7, "skipPhase")}];
  v9 = [v7 scanOptions];

  v10 = [v9 managedScanOptions];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D641B8]);
    [v11 setSupervised:1];
    [v11 setMDMUseDelayPeriod:{objc_msgSend(v10, "useDelayPeriod") == 1}];
    v12 = [v10 requestedProductMarketingVersion];
    [v11 setRequestedPMV:v12];

    [v11 setDelayPeriodSecs:{objc_msgSend(v10, "delayPeriodSeconds")}];
    [v11 setMdmSoftwareUpdatePath:{-[SUPolicyFactory coreMDMPathForSUSPath:](self, "coreMDMPathForSUSPath:", objc_msgSend(v10, "MDMSoftwareUpdatePath"))}];
    [(SUPolicyFactory *)self setPolicyExtension:v11 forPolicy:v20];
    SULogDebug(@"%s: managed scan options = %@, mdmExtension = %@", v13, v14, v15, v16, v17, v18, v19, "[SUPolicyFactory augmentCorePolicy:WithLoadBrainPolicy:]");
  }
}

- (void)augmentCorePolicy:(id)a3 WithPreflightPolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v6 = [v5 downloadPreflightPolicy];

  [v6 setSkipPhase:0];
}

- (void)augmentCorePolicy:(id)a3 WithSUDownloadPolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v9 = [v7 softwareUpdateDownloadPolicy];

  [v9 setAllowsCellular:{objc_msgSend(v6, "allowsCellular")}];
  [v9 setDiscretionary:{objc_msgSend(v6, "discretionary")}];
  [v9 setRequiresPowerPluggedIn:{objc_msgSend(v6, "requiresPowerPluggedIn")}];
  [v9 setDownloadTimeoutSecs:{objc_msgSend(v6, "downloadTimeoutSecs")}];
  [v9 setRequiresInexpensiveAccess:{objc_msgSend(v6, "allowExpensiveNetwork") ^ 1}];
  [v9 setSkipPhase:{objc_msgSend(v6, "skipPhase")}];
  v8 = [v6 maxPreSUStagingOptionalSize];

  [v9 setMaxPreSUStagingOptionalSize:v8];
}

- (void)augmentCorePolicy:(id)a3 WithPreparePolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v9 = [v7 preparePolicy];

  v8 = [v6 skipPhase];
  [v9 setSkipPhase:v8];
}

- (void)augmentCorePolicy:(id)a3 WithSuspendPolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v9 = [v7 suspendPolicy];

  v8 = [v6 skipPhase];
  [v9 setSkipPhase:v8];
}

- (void)augmentCorePolicy:(id)a3 WithResumePolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v9 = [v7 resumePolicy];

  v8 = [v6 skipPhase];
  [v9 setSkipPhase:v8];
}

- (void)augmentCorePolicy:(id)a3 WithApplyPolicy:(id)a4
{
  v14 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = [v14 applyPolicy];
  [v7 setSkipPhase:{objc_msgSend(v6, "skipPhase")}];
  if (+[SUUtility isVirtualDevice])
  {
    [v7 setBaseApplyOptions:&unk_287B6F828];
  }

  v8 = [v6 installOptions];
  v9 = [v8 isManaged];

  if (v9)
  {
    v10 = [(SUDownloadOptions *)self->_downloadOptions descriptor];
    v11 = [v10 updateType];

    v12 = objc_opt_class();
    if (v11 == 4)
    {
      [(SUPolicyFactory *)self removePolicyExtensionOfClass:v12 forPolicy:v14];
    }

    else
    {
      v13 = [(SUPolicyFactory *)self existingExtensionOfClass:v12 inPolicy:v14];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x277D641B8]);
      }

      [v13 setSupervised:1];
      [(SUPolicyFactory *)self setPolicyExtension:v13 forPolicy:v14];
    }
  }
}

- (void)augmentCorePolicy:(id)a3 WithRollbackPolicy:(id)a4
{
  stateQueue = self->_stateQueue;
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(stateQueue);
  v8 = [v7 rollbackPolicy];

  [v8 setPerformPhase:{objc_msgSend(v6, "skipPhase") ^ 1}];
  LODWORD(v7) = [v6 cancelActiveUpdate];

  [v8 setSkipCancelPreviousUpdate:v7 ^ 1];
  [v8 setAdditionalOptions:0];
  [v8 setBaseRollbackOptions:0];
}

- (unint64_t)coreMDMPathForSUSPath:(unint64_t)a3
{
  result = a3;
  if (a3 >= 3)
  {
    SULogInfo(@"Unable to map SUS MDM SU path to SUCore MDM SU path (%lu). Returning SUCoreMDMSoftwareUpdatePathDefault", a2, a3, v3, v4, v5, v6, v7, a3);
    return 0;
  }

  return result;
}

- (id)_SUAssetTypeForScanOptions:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 containsType:4] && (objc_msgSend(v4, "types"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v6 == 1))
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