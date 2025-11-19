@interface SUCorePolicyMacUpdateBrain
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyMacUpdateBrain)initWithAssetType:(id)a3 majorTargetBuild:(id)a4 minorTargetBuild:(id)a5 usingPolicies:(int64_t)a6 usingExtensions:(id)a7;
- (SUCorePolicyMacUpdateBrain)initWithCoder:(id)a3;
- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)a3 assetAudience:(id)a4;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)a3 majorSecondaryAsset:(id *)a4 minorPrimaryAsset:(id *)a5 minorSecondaryAsset:(id *)a6 fromAssetQuery:(id)a7;
@end

@implementation SUCorePolicyMacUpdateBrain

- (SUCorePolicyMacUpdateBrain)initWithAssetType:(id)a3 majorTargetBuild:(id)a4 minorTargetBuild:(id)a5 usingPolicies:(int64_t)a6 usingExtensions:(id)a7
{
  v13 = a4;
  v14 = a5;
  v19.receiver = self;
  v19.super_class = SUCorePolicyMacUpdateBrain;
  v15 = [(SUCorePolicy *)&v19 initWithSoftwareUpdateAssetType:a3 documentationAssetType:0 usingPolicies:a6 usingExtensions:a7];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:20];
    compatibilityVersion = v15->_compatibilityVersion;
    v15->_compatibilityVersion = v16;

    objc_storeStrong(&v15->_majorTargetBuildVersion, a4);
    objc_storeStrong(&v15->_minorTargetBuildVersion, a5);
  }

  return v15;
}

- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)a3 assetAudience:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SUCorePolicyMacUpdateBrain *)self description];
    *buf = 138543362;
    v72 = v7;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateCatalogDownloadOptionsWithUUID for MacUpdateBrainPolicy: %{public}@", buf, 0xCu);
  }

  v69.receiver = self;
  v69.super_class = SUCorePolicyMacUpdateBrain;
  v8 = [(SUCorePolicy *)&v69 softwareUpdateScanPolicy];
  v9 = [v8 additionalServerParams];
  v10 = [v9 mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (v12)
  {
    v13 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
    [v11 addObject:v13];
  }

  v14 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

  if (v14)
  {
    v15 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
    [v11 addObject:v15];
  }

  v53 = v11;
  [v10 setSafeObject:v11 forKey:@"TargetBuildVersionArray"];
  v68.receiver = self;
  v68.super_class = SUCorePolicyMacUpdateBrain;
  v16 = [(SUCorePolicy *)&v68 productType];
  [v10 setSafeObject:v16 forKey:@"ProductType"];

  v67.receiver = self;
  v67.super_class = SUCorePolicyMacUpdateBrain;
  v17 = [(SUCorePolicy *)&v67 hwModelStr];
  [v10 setSafeObject:v17 forKey:@"HWModelStr"];

  v66.receiver = self;
  v66.super_class = SUCorePolicyMacUpdateBrain;
  v18 = [(SUCorePolicy *)&v66 deviceClass];
  [v10 setSafeObject:v18 forKey:@"DeviceName"];

  v65.receiver = self;
  v65.super_class = SUCorePolicyMacUpdateBrain;
  v19 = [(SUCorePolicy *)&v65 prerequisiteBuildVersion];
  [v10 setSafeObject:v19 forKey:@"BuildVersion"];

  v20 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  [v10 setSafeObject:v20 forKey:@"CompatibilityVersion"];

  v21 = objc_alloc_init(MEMORY[0x277D28A18]);
  [v21 setDiscretionary:0];
  [v21 setSessionId:v54];
  [v21 setAdditionalServerParams:v10];
  v22 = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (v22)
  {
    v64.receiver = self;
    v64.super_class = SUCorePolicyMacUpdateBrain;
    v23 = [(SUCorePolicy *)&v64 downloadAuthorizationHeader];
    [v21 setDownloadAuthorizationHeader:v23];
  }

  v24 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  v25 = [v21 sessionId];
  [v24 appendFormat:@"scanUUID:%@|", v25];

  v26 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  [v24 appendFormat:@"CompatibilityVersion:%@|", v26];

  v27 = [v11 componentsJoinedByString:{@", "}];
  [v24 appendFormat:@"TargetBuildVersionArray:%@|", v27];

  v63.receiver = self;
  v63.super_class = SUCorePolicyMacUpdateBrain;
  v28 = [(SUCorePolicy *)&v63 productType];

  if (v28)
  {
    v29 = [(SUCorePolicy *)self productType];
    [v24 appendFormat:@"ProductType:%@|", v29];
  }

  v62.receiver = self;
  v62.super_class = SUCorePolicyMacUpdateBrain;
  v30 = [(SUCorePolicy *)&v62 hwModelStr];

  if (v30)
  {
    v31 = [(SUCorePolicy *)self hwModelStr];
    [v24 appendFormat:@"HWModelStr:%@|", v31];
  }

  v61.receiver = self;
  v61.super_class = SUCorePolicyMacUpdateBrain;
  v32 = [(SUCorePolicy *)&v61 deviceClass];

  if (v32)
  {
    v33 = [(SUCorePolicy *)self deviceClass];
    [v24 appendFormat:@"DeviceClass:%@|", v33];
  }

  v60.receiver = self;
  v60.super_class = SUCorePolicyMacUpdateBrain;
  v34 = [(SUCorePolicy *)&v60 prerequisiteBuildVersion];

  if (v34)
  {
    v35 = [(SUCorePolicy *)self prerequisiteBuildVersion];
    [v24 appendFormat:@"BuildVersion:%@|", v35];
  }

  v52 = v10;
  v36 = [MEMORY[0x277D64460] sharedLogger];
  v37 = [v36 oslog];

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = v24;
    _os_log_impl(&dword_23193C000, v37, OS_LOG_TYPE_DEFAULT, "[POLICY] MacUpdateBrain catalog download options summary: %{public}@", buf, 0xCu);
  }

  v51 = v24;

  v38 = [MEMORY[0x277D64460] sharedLogger];
  v39 = [v38 oslog];

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = v21;
    _os_log_impl(&dword_23193C000, v39, OS_LOG_TYPE_DEFAULT, "[POLICY] MacUpdateBrain catalog downloadOptions: %{public}@", buf, 0xCu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55.receiver = self;
  v55.super_class = SUCorePolicyMacUpdateBrain;
  v40 = [(SUCorePolicy *)&v55 policyExtensions];
  v41 = [v40 countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v56 + 1) + 8 * i);
        v46 = [MEMORY[0x277D64460] sharedLogger];
        v47 = [v46 oslog];

        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v45 extensionName];
          *buf = 138543362;
          v72 = v48;
          _os_log_impl(&dword_23193C000, v47, OS_LOG_TYPE_DEFAULT, "[POLICY] extending MacUpdateBrain catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v45 extendMASoftwareUpdateCatalogDownloadOptions:v21];
      }

      v42 = [v40 countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v42);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = objc_alloc(MEMORY[0x277D289D8]);
  v56.receiver = self;
  v56.super_class = SUCorePolicyMacUpdateBrain;
  v8 = [(SUCorePolicy *)&v56 softwareUpdateAssetType];
  v47 = v4;
  v9 = [v7 initWithType:v8 andPurpose:v4];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  v12 = [v10 stringWithFormat:@"%d", objc_msgSend(v11, "intValue")];

  [v9 addKeyValuePair:@"_CompatibilityVersion" with:v12];
  v45 = v12;
  [v5 appendFormat:@"CompatibilityVersion:%@", v12];
  v55.receiver = self;
  v55.super_class = SUCorePolicyMacUpdateBrain;
  v13 = [(SUCorePolicy *)&v55 hwModelStr];

  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = v14;
  if (v13)
  {
    v54.receiver = self;
    v54.super_class = SUCorePolicyMacUpdateBrain;
    v16 = [(SUCorePolicy *)&v54 hwModelStr];
    v17 = [v15 initWithObjects:{v6, v16, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:v17];
  }

  else
  {
    v16 = [v14 initWithObjects:{v6, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:v16];
  }

  v18 = [(SUCorePolicy *)self hwModelStr];
  [v5 appendFormat:@"hwModelStr:%@|", v18];

  v53.receiver = self;
  v53.super_class = SUCorePolicyMacUpdateBrain;
  v19 = [(SUCorePolicy *)&v53 productType];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v52.receiver = self;
    v52.super_class = SUCorePolicyMacUpdateBrain;
    v21 = [(SUCorePolicy *)&v52 productType];
    v22 = [v20 initWithObjects:{v6, v21, 0}];
    [v9 addKeyValueArray:@"SupportedDevices" with:v22];
  }

  v23 = [(SUCorePolicy *)self productType];
  [v5 appendFormat:@"productType:%@|", v23];

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (v25)
  {
    v26 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
    [v24 addObject:v26];
  }

  v27 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

  if (v27)
  {
    v28 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
    [v24 addObject:v28];
  }

  [v24 addObject:v6];
  v29 = v9;
  [v9 addKeyValueArray:@"Build" with:v24];
  v44 = v24;
  v30 = [v24 componentsJoinedByString:{@", "}];
  [v5 appendFormat:@"Builds:%@|", v30];

  v31 = [MEMORY[0x277D64460] sharedLogger];
  v32 = [v31 oslog];

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v5;
    _os_log_impl(&dword_23193C000, v32, OS_LOG_TYPE_DEFAULT, "[POLICY] querying MacUpdateBrain metadata: %{public}@", buf, 0xCu);
  }

  v46 = v5;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v33 = [(SUCorePolicy *)self policyExtensions];
  v34 = [v33 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v49;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v48 + 1) + 8 * i);
        v39 = [MEMORY[0x277D64460] sharedLogger];
        v40 = [v39 oslog];

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [v38 extensionName];
          *buf = 138543362;
          v59 = v41;
          _os_log_impl(&dword_23193C000, v40, OS_LOG_TYPE_DEFAULT, "[POLICY] extending query for extension %{public}@", buf, 0xCu);
        }

        [v38 extendSoftwareUpdateMAAssetQuery:v29];
      }

      v35 = [v33 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v35);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)a3 majorSecondaryAsset:(id *)a4 minorPrimaryAsset:(id *)a5 minorSecondaryAsset:(id *)a6 fromAssetQuery:(id)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v67 = self;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "[POLICY] Select major/minor MacUpdateBrain for policy: %{public}@", buf, 0xCu);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v15 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (a3 || !v15)
  {
    v19 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

    if (!a5 && v19)
    {
      v16 = [MEMORY[0x277D64428] sharedDiag];
      v17 = v16;
      v18 = @"Select major/minor MacUpdateBrain called with unexpected nil minorPrimaryAsset param";
      goto LABEL_17;
    }

    v17 = [v12 SUCoreBorder_results];
    v20 = [v17 count];
    v21 = [MEMORY[0x277D64460] sharedLogger];
    v22 = [v21 oslog];

    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (!v20)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 MacUpdateBrain query results (before filtering)", buf, 2u);
      }

      goto LABEL_57;
    }

    if (v23)
    {
      v24 = [v17 count];
      *buf = 134217984;
      v67 = v24;
      _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu MacUpdateBrain query results (before filtering)", buf, 0xCu);
    }

    v57 = a5;
    v59 = v12;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v22 = [(SUCorePolicy *)self policyExtensions];
    v25 = [v22 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v63;
      while (2)
      {
        v28 = 0;
        v29 = v17;
        do
        {
          if (*v63 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v62 + 1) + 8 * v28);
          v17 = [v30 filterSoftwareUpdateAssetArray:{v29, v57}];

          v31 = [MEMORY[0x277D64460] sharedLogger];
          v32 = [v31 oslog];

          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v17 count];
            v34 = [v30 extensionName];
            *buf = 134218242;
            v67 = v33;
            v68 = 2114;
            v69 = v34;
            _os_log_impl(&dword_23193C000, v32, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
          }

          if (![v17 count])
          {
            v43 = [MEMORY[0x277D64460] sharedLogger];
            v44 = [v43 oslog];

            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23193C000, v44, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found, stopping filtering early", buf, 2u);
            }

            v12 = v59;
            goto LABEL_57;
          }

          ++v28;
          v29 = v17;
        }

        while (v26 != v28);
        v26 = [v22 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v35 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

    if (v35)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __141__SUCorePolicyMacUpdateBrain_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke;
      v61[3] = &unk_27892C8F8;
      v61[4] = self;
      v36 = [MEMORY[0x277CCAC30] predicateWithBlock:v61];
      v37 = [v17 filteredArrayUsingPredicate:v36];

      v38 = [MEMORY[0x277D64460] sharedLogger];
      v39 = [v38 oslog];

      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v37 count];
        *buf = 134217984;
        v67 = v40;
        _os_log_impl(&dword_23193C000, v39, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for major assets in SUCorePolicyMacUpdateBrain", buf, 0xCu);
      }

      if ([v37 count] >= 2)
      {
        v41 = [MEMORY[0x277D64460] sharedLogger];
        v42 = [v41 oslog];

        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [SUCorePolicyMacUpdateBrain selectSoftwareUpdateMajorPrimaryAsset:v42 majorSecondaryAsset:? minorPrimaryAsset:? minorSecondaryAsset:? fromAssetQuery:?];
        }
      }

      v22 = [v37 firstObject];
    }

    else
    {
      v22 = 0;
    }

    v45 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

    if (v45)
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __141__SUCorePolicyMacUpdateBrain_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_380;
      v60[3] = &unk_27892C8F8;
      v60[4] = self;
      v46 = [MEMORY[0x277CCAC30] predicateWithBlock:v60];
      v47 = [v17 filteredArrayUsingPredicate:v46];

      v48 = [MEMORY[0x277D64460] sharedLogger];
      v49 = [v48 oslog];

      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v47 count];
        *buf = 134217984;
        v67 = v50;
        _os_log_impl(&dword_23193C000, v49, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for minor assets in SUCorePolicyMacUpdateBrain", buf, 0xCu);
      }

      v51 = v58;
      v12 = v59;
      if ([v47 count] >= 2)
      {
        v52 = [MEMORY[0x277D64460] sharedLogger];
        v53 = [v52 oslog];

        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [SUCorePolicyMacUpdateBrain selectSoftwareUpdateMajorPrimaryAsset:v53 majorSecondaryAsset:? minorPrimaryAsset:? minorSecondaryAsset:? fromAssetQuery:?];
        }
      }

      v45 = [v47 firstObject];

      if (!a3)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v51 = v58;
      v12 = v59;
      if (!a3)
      {
        goto LABEL_54;
      }
    }

    v54 = v22;
    *a3 = v22;
LABEL_54:
    if (v51)
    {
      v55 = v45;
      *v51 = v45;
    }

LABEL_57:
    goto LABEL_58;
  }

  v16 = [MEMORY[0x277D64428] sharedDiag];
  v17 = v16;
  v18 = @"Select major/minor MacUpdateBrain called with unexpected nil majorPrimaryAsset param";
LABEL_17:
  [v16 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v18 withResult:8102 withError:0];
LABEL_58:

  v56 = *MEMORY[0x277D85DE8];
}

uint64_t __141__SUCorePolicyMacUpdateBrain_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"Build"];

  v5 = MEMORY[0x277D643F8];
  v6 = [*(a1 + 32) majorTargetBuildVersion];
  v7 = [v5 stringIsEqual:v4 to:v6];

  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) majorTargetBuildVersion];
    v11 = v10;
    v12 = @"NO";
    v15 = 138543874;
    v16 = v4;
    v17 = 2114;
    if (v7)
    {
      v12 = @"YES";
    }

    v18 = v10;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering for major assets: assetBuildVersion=%{public}@ majorTargetBuildVersion=%{public}@ | keep=%{public}@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __141__SUCorePolicyMacUpdateBrain_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_380(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"Build"];

  v5 = MEMORY[0x277D643F8];
  v6 = [*(a1 + 32) minorTargetBuildVersion];
  v7 = [v5 stringIsEqual:v4 to:v6];

  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) minorTargetBuildVersion];
    v11 = v10;
    v12 = @"NO";
    v15 = 138543874;
    v16 = v4;
    v17 = 2114;
    if (v7)
    {
      v12 = @"YES";
    }

    v18 = v10;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering for minor assets: assetBuildVersion=%{public}@ minorTargetBuildVersion=%{public}@ | keep=%{public}@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (SUCorePolicyMacUpdateBrain)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SUCorePolicyMacUpdateBrain;
  v5 = [(SUCorePolicy *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CompatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MajorTargetBuildVersion"];
    majorTargetBuildVersion = v5->_majorTargetBuildVersion;
    v5->_majorTargetBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinorTargetBuildVersion"];
    minorTargetBuildVersion = v5->_minorTargetBuildVersion;
    v5->_minorTargetBuildVersion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUCorePolicyMacUpdateBrain;
  v4 = a3;
  [(SUCorePolicy *)&v8 encodeWithCoder:v4];
  v5 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion:v8.receiver];
  [v4 encodeObject:v5 forKey:@"CompatibilityVersion"];

  v6 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
  [v4 encodeObject:v6 forKey:@"MajorTargetBuildVersion"];

  v7 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
  [v4 encodeObject:v7 forKey:@"MinorTargetBuildVersion"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v17.receiver = self;
      v17.super_class = SUCorePolicyMacUpdateBrain;
      if ([(SUCorePolicy *)&v17 isEqual:v5])
      {
        v6 = MEMORY[0x277D643F8];
        v7 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
        v8 = [(SUCorePolicyMacUpdateBrain *)v5 compatibilityVersion];
        if ([v6 numberIsEqual:v7 to:v8])
        {
          v9 = MEMORY[0x277D643F8];
          v10 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
          v11 = [(SUCorePolicyMacUpdateBrain *)v5 majorTargetBuildVersion];
          if ([v9 stringIsEqual:v10 to:v11])
          {
            v12 = MEMORY[0x277D643F8];
            v13 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
            v14 = [(SUCorePolicyMacUpdateBrain *)v5 minorTargetBuildVersion];
            v15 = [v12 stringIsEqual:v13 to:v14];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SUCorePolicyMacUpdateBrain;
  v4 = [(SUCorePolicy *)&v12 copyWithZone:a3];
  v5 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  v6 = [v5 copy];
  [v4 setCompatibilityVersion:v6];

  v7 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
  v8 = [v7 copy];
  [v4 setMajorTargetBuildVersion:v8];

  v9 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
  v10 = [v9 copy];
  [v4 setMinorTargetBuildVersion:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  v5 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
  v6 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
  v10.receiver = self;
  v10.super_class = SUCorePolicyMacUpdateBrain;
  v7 = [(SUCorePolicy *)&v10 description];
  v8 = [v3 stringWithFormat:@"SUCorePolicyMacUpdateBrain(compatibilityVersion:%@|majorTargetBuildVersion:%@|minorTargetBuildVersion:%@|super:%@)", v4, v5, v6, v7];

  return v8;
}

- (id)summary
{
  v15.receiver = self;
  v15.super_class = SUCorePolicyMacUpdateBrain;
  v3 = [(SUCorePolicy *)&v15 summary];
  v4 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];

  if (v4)
  {
    v5 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
    v6 = [v3 stringByAppendingFormat:@"|compatibilityVersion=%@", v5];

    v3 = v6;
  }

  v7 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (v7)
  {
    v8 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
    v9 = [v3 stringByAppendingFormat:@"|majorTargetBuildVersion=%@", v8];

    v3 = v9;
  }

  v10 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

  if (v10)
  {
    v11 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
    v12 = [v3 stringByAppendingFormat:@"|minorTargetBuildVersion=%@", v11];

    v3 = v12;
  }

  if (([v3 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v13 = [v3 stringByAppendingString:@"|"];

    v3 = v13;
  }

  return v3;
}

@end