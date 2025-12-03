@interface SUCorePolicyMacUpdateBrain
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyMacUpdateBrain)initWithAssetType:(id)type majorTargetBuild:(id)build minorTargetBuild:(id)targetBuild usingPolicies:(int64_t)policies usingExtensions:(id)extensions;
- (SUCorePolicyMacUpdateBrain)initWithCoder:(id)coder;
- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)d assetAudience:(id)audience;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)asset majorSecondaryAsset:(id *)secondaryAsset minorPrimaryAsset:(id *)primaryAsset minorSecondaryAsset:(id *)minorSecondaryAsset fromAssetQuery:(id)query;
@end

@implementation SUCorePolicyMacUpdateBrain

- (SUCorePolicyMacUpdateBrain)initWithAssetType:(id)type majorTargetBuild:(id)build minorTargetBuild:(id)targetBuild usingPolicies:(int64_t)policies usingExtensions:(id)extensions
{
  buildCopy = build;
  targetBuildCopy = targetBuild;
  v19.receiver = self;
  v19.super_class = SUCorePolicyMacUpdateBrain;
  v15 = [(SUCorePolicy *)&v19 initWithSoftwareUpdateAssetType:type documentationAssetType:0 usingPolicies:policies usingExtensions:extensions];
  if (v15)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:20];
    compatibilityVersion = v15->_compatibilityVersion;
    v15->_compatibilityVersion = v16;

    objc_storeStrong(&v15->_majorTargetBuildVersion, build);
    objc_storeStrong(&v15->_minorTargetBuildVersion, targetBuild);
  }

  return v15;
}

- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)d assetAudience:(id)audience
{
  v73 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SUCorePolicyMacUpdateBrain *)self description];
    *buf = 138543362;
    v72 = v7;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateCatalogDownloadOptionsWithUUID for MacUpdateBrainPolicy: %{public}@", buf, 0xCu);
  }

  v69.receiver = self;
  v69.super_class = SUCorePolicyMacUpdateBrain;
  softwareUpdateScanPolicy = [(SUCorePolicy *)&v69 softwareUpdateScanPolicy];
  additionalServerParams = [softwareUpdateScanPolicy additionalServerParams];
  v10 = [additionalServerParams mutableCopy];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (majorTargetBuildVersion)
  {
    majorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
    [v11 addObject:majorTargetBuildVersion2];
  }

  minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

  if (minorTargetBuildVersion)
  {
    minorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
    [v11 addObject:minorTargetBuildVersion2];
  }

  v53 = v11;
  [v10 setSafeObject:v11 forKey:@"TargetBuildVersionArray"];
  v68.receiver = self;
  v68.super_class = SUCorePolicyMacUpdateBrain;
  productType = [(SUCorePolicy *)&v68 productType];
  [v10 setSafeObject:productType forKey:@"ProductType"];

  v67.receiver = self;
  v67.super_class = SUCorePolicyMacUpdateBrain;
  hwModelStr = [(SUCorePolicy *)&v67 hwModelStr];
  [v10 setSafeObject:hwModelStr forKey:@"HWModelStr"];

  v66.receiver = self;
  v66.super_class = SUCorePolicyMacUpdateBrain;
  deviceClass = [(SUCorePolicy *)&v66 deviceClass];
  [v10 setSafeObject:deviceClass forKey:@"DeviceName"];

  v65.receiver = self;
  v65.super_class = SUCorePolicyMacUpdateBrain;
  prerequisiteBuildVersion = [(SUCorePolicy *)&v65 prerequisiteBuildVersion];
  [v10 setSafeObject:prerequisiteBuildVersion forKey:@"BuildVersion"];

  compatibilityVersion = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  [v10 setSafeObject:compatibilityVersion forKey:@"CompatibilityVersion"];

  v21 = objc_alloc_init(MEMORY[0x277D28A18]);
  [v21 setDiscretionary:0];
  [v21 setSessionId:dCopy];
  [v21 setAdditionalServerParams:v10];
  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (downloadAuthorizationHeader)
  {
    v64.receiver = self;
    v64.super_class = SUCorePolicyMacUpdateBrain;
    downloadAuthorizationHeader2 = [(SUCorePolicy *)&v64 downloadAuthorizationHeader];
    [v21 setDownloadAuthorizationHeader:downloadAuthorizationHeader2];
  }

  v24 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  sessionId = [v21 sessionId];
  [v24 appendFormat:@"scanUUID:%@|", sessionId];

  compatibilityVersion2 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  [v24 appendFormat:@"CompatibilityVersion:%@|", compatibilityVersion2];

  v27 = [v11 componentsJoinedByString:{@", "}];
  [v24 appendFormat:@"TargetBuildVersionArray:%@|", v27];

  v63.receiver = self;
  v63.super_class = SUCorePolicyMacUpdateBrain;
  productType2 = [(SUCorePolicy *)&v63 productType];

  if (productType2)
  {
    productType3 = [(SUCorePolicy *)self productType];
    [v24 appendFormat:@"ProductType:%@|", productType3];
  }

  v62.receiver = self;
  v62.super_class = SUCorePolicyMacUpdateBrain;
  hwModelStr2 = [(SUCorePolicy *)&v62 hwModelStr];

  if (hwModelStr2)
  {
    hwModelStr3 = [(SUCorePolicy *)self hwModelStr];
    [v24 appendFormat:@"HWModelStr:%@|", hwModelStr3];
  }

  v61.receiver = self;
  v61.super_class = SUCorePolicyMacUpdateBrain;
  deviceClass2 = [(SUCorePolicy *)&v61 deviceClass];

  if (deviceClass2)
  {
    deviceClass3 = [(SUCorePolicy *)self deviceClass];
    [v24 appendFormat:@"DeviceClass:%@|", deviceClass3];
  }

  v60.receiver = self;
  v60.super_class = SUCorePolicyMacUpdateBrain;
  prerequisiteBuildVersion2 = [(SUCorePolicy *)&v60 prerequisiteBuildVersion];

  if (prerequisiteBuildVersion2)
  {
    prerequisiteBuildVersion3 = [(SUCorePolicy *)self prerequisiteBuildVersion];
    [v24 appendFormat:@"BuildVersion:%@|", prerequisiteBuildVersion3];
  }

  v52 = v10;
  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = v24;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] MacUpdateBrain catalog download options summary: %{public}@", buf, 0xCu);
  }

  v51 = v24;

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = v21;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] MacUpdateBrain catalog downloadOptions: %{public}@", buf, 0xCu);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55.receiver = self;
  v55.super_class = SUCorePolicyMacUpdateBrain;
  policyExtensions = [(SUCorePolicy *)&v55 policyExtensions];
  v41 = [policyExtensions countByEnumeratingWithState:&v56 objects:v70 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v45 = *(*(&v56 + 1) + 8 * i);
        mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
        oslog4 = [mEMORY[0x277D64460]4 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v45 extensionName];
          *buf = 138543362;
          v72 = extensionName;
          _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] extending MacUpdateBrain catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v45 extendMASoftwareUpdateCatalogDownloadOptions:v21];
      }

      v42 = [policyExtensions countByEnumeratingWithState:&v56 objects:v70 count:16];
    }

    while (v42);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose
{
  v60 = *MEMORY[0x277D85DE8];
  purposeCopy = purpose;
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  null = [MEMORY[0x277CBEB68] null];
  v7 = objc_alloc(MEMORY[0x277D289D8]);
  v56.receiver = self;
  v56.super_class = SUCorePolicyMacUpdateBrain;
  softwareUpdateAssetType = [(SUCorePolicy *)&v56 softwareUpdateAssetType];
  v47 = purposeCopy;
  v9 = [v7 initWithType:softwareUpdateAssetType andPurpose:purposeCopy];

  v10 = MEMORY[0x277CCACA8];
  compatibilityVersion = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  v12 = [v10 stringWithFormat:@"%d", objc_msgSend(compatibilityVersion, "intValue")];

  [v9 addKeyValuePair:@"_CompatibilityVersion" with:v12];
  v45 = v12;
  [v5 appendFormat:@"CompatibilityVersion:%@", v12];
  v55.receiver = self;
  v55.super_class = SUCorePolicyMacUpdateBrain;
  hwModelStr = [(SUCorePolicy *)&v55 hwModelStr];

  v14 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = v14;
  if (hwModelStr)
  {
    v54.receiver = self;
    v54.super_class = SUCorePolicyMacUpdateBrain;
    hwModelStr2 = [(SUCorePolicy *)&v54 hwModelStr];
    v17 = [v15 initWithObjects:{null, hwModelStr2, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:v17];
  }

  else
  {
    hwModelStr2 = [v14 initWithObjects:{null, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:hwModelStr2];
  }

  hwModelStr3 = [(SUCorePolicy *)self hwModelStr];
  [v5 appendFormat:@"hwModelStr:%@|", hwModelStr3];

  v53.receiver = self;
  v53.super_class = SUCorePolicyMacUpdateBrain;
  productType = [(SUCorePolicy *)&v53 productType];

  if (productType)
  {
    v20 = objc_alloc(MEMORY[0x277CBEB18]);
    v52.receiver = self;
    v52.super_class = SUCorePolicyMacUpdateBrain;
    productType2 = [(SUCorePolicy *)&v52 productType];
    v22 = [v20 initWithObjects:{null, productType2, 0}];
    [v9 addKeyValueArray:@"SupportedDevices" with:v22];
  }

  productType3 = [(SUCorePolicy *)self productType];
  [v5 appendFormat:@"productType:%@|", productType3];

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (majorTargetBuildVersion)
  {
    majorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
    [v24 addObject:majorTargetBuildVersion2];
  }

  minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

  if (minorTargetBuildVersion)
  {
    minorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
    [v24 addObject:minorTargetBuildVersion2];
  }

  [v24 addObject:null];
  v29 = v9;
  [v9 addKeyValueArray:@"Build" with:v24];
  v44 = v24;
  v30 = [v24 componentsJoinedByString:{@", "}];
  [v5 appendFormat:@"Builds:%@|", v30];

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v5;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] querying MacUpdateBrain metadata: %{public}@", buf, 0xCu);
  }

  v46 = v5;

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v34 = [policyExtensions countByEnumeratingWithState:&v48 objects:v57 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v38 = *(*(&v48 + 1) + 8 * i);
        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v38 extensionName];
          *buf = 138543362;
          v59 = extensionName;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] extending query for extension %{public}@", buf, 0xCu);
        }

        [v38 extendSoftwareUpdateMAAssetQuery:v29];
      }

      v35 = [policyExtensions countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v35);
  }

  v42 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)asset majorSecondaryAsset:(id *)secondaryAsset minorPrimaryAsset:(id *)primaryAsset minorSecondaryAsset:(id *)minorSecondaryAsset fromAssetQuery:(id)query
{
  v71 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] Select major/minor MacUpdateBrain for policy: %{public}@", buf, 0xCu);
  }

  if (asset)
  {
    *asset = 0;
  }

  if (secondaryAsset)
  {
    *secondaryAsset = 0;
  }

  if (primaryAsset)
  {
    *primaryAsset = 0;
  }

  if (minorSecondaryAsset)
  {
    *minorSecondaryAsset = 0;
  }

  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (asset || !majorTargetBuildVersion)
  {
    minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

    if (!primaryAsset && minorTargetBuildVersion)
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      sUCoreBorder_results = mEMORY[0x277D64428];
      v18 = @"Select major/minor MacUpdateBrain called with unexpected nil minorPrimaryAsset param";
      goto LABEL_17;
    }

    sUCoreBorder_results = [queryCopy SUCoreBorder_results];
    v20 = [sUCoreBorder_results count];
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    v23 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
    if (!v20)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 MacUpdateBrain query results (before filtering)", buf, 2u);
      }

      goto LABEL_57;
    }

    if (v23)
    {
      v24 = [sUCoreBorder_results count];
      *buf = 134217984;
      selfCopy = v24;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu MacUpdateBrain query results (before filtering)", buf, 0xCu);
    }

    primaryAssetCopy = primaryAsset;
    v59 = queryCopy;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    oslog2 = [(SUCorePolicy *)self policyExtensions];
    v25 = [oslog2 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v63;
      while (2)
      {
        v28 = 0;
        v29 = sUCoreBorder_results;
        do
        {
          if (*v63 != v27)
          {
            objc_enumerationMutation(oslog2);
          }

          v30 = *(*(&v62 + 1) + 8 * v28);
          sUCoreBorder_results = [v30 filterSoftwareUpdateAssetArray:{v29, primaryAssetCopy}];

          mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
          oslog3 = [mEMORY[0x277D64460]3 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [sUCoreBorder_results count];
            extensionName = [v30 extensionName];
            *buf = 134218242;
            selfCopy = v33;
            v68 = 2114;
            v69 = extensionName;
            _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
          }

          if (![sUCoreBorder_results count])
          {
            mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
            oslog4 = [mEMORY[0x277D64460]4 oslog];

            if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found, stopping filtering early", buf, 2u);
            }

            queryCopy = v59;
            goto LABEL_57;
          }

          ++v28;
          v29 = sUCoreBorder_results;
        }

        while (v26 != v28);
        v26 = [oslog2 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    majorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

    if (majorTargetBuildVersion2)
    {
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __141__SUCorePolicyMacUpdateBrain_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke;
      v61[3] = &unk_27892C8F8;
      v61[4] = self;
      v36 = [MEMORY[0x277CCAC30] predicateWithBlock:v61];
      v37 = [sUCoreBorder_results filteredArrayUsingPredicate:v36];

      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog5 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v37 count];
        *buf = 134217984;
        selfCopy = v40;
        _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for major assets in SUCorePolicyMacUpdateBrain", buf, 0xCu);
      }

      if ([v37 count] >= 2)
      {
        mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
        oslog6 = [mEMORY[0x277D64460]6 oslog];

        if (os_log_type_enabled(oslog6, OS_LOG_TYPE_ERROR))
        {
          [SUCorePolicyMacUpdateBrain selectSoftwareUpdateMajorPrimaryAsset:oslog6 majorSecondaryAsset:? minorPrimaryAsset:? minorSecondaryAsset:? fromAssetQuery:?];
        }
      }

      oslog2 = [v37 firstObject];
    }

    else
    {
      oslog2 = 0;
    }

    minorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

    if (minorTargetBuildVersion2)
    {
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __141__SUCorePolicyMacUpdateBrain_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_380;
      v60[3] = &unk_27892C8F8;
      v60[4] = self;
      v46 = [MEMORY[0x277CCAC30] predicateWithBlock:v60];
      v47 = [sUCoreBorder_results filteredArrayUsingPredicate:v46];

      mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
      oslog7 = [mEMORY[0x277D64460]7 oslog];

      if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v47 count];
        *buf = 134217984;
        selfCopy = v50;
        _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for minor assets in SUCorePolicyMacUpdateBrain", buf, 0xCu);
      }

      v51 = v58;
      queryCopy = v59;
      if ([v47 count] >= 2)
      {
        mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
        oslog8 = [mEMORY[0x277D64460]8 oslog];

        if (os_log_type_enabled(oslog8, OS_LOG_TYPE_ERROR))
        {
          [SUCorePolicyMacUpdateBrain selectSoftwareUpdateMajorPrimaryAsset:oslog8 majorSecondaryAsset:? minorPrimaryAsset:? minorSecondaryAsset:? fromAssetQuery:?];
        }
      }

      minorTargetBuildVersion2 = [v47 firstObject];

      if (!asset)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v51 = v58;
      queryCopy = v59;
      if (!asset)
      {
        goto LABEL_54;
      }
    }

    v54 = oslog2;
    *asset = oslog2;
LABEL_54:
    if (v51)
    {
      v55 = minorTargetBuildVersion2;
      *v51 = minorTargetBuildVersion2;
    }

LABEL_57:
    goto LABEL_58;
  }

  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  sUCoreBorder_results = mEMORY[0x277D64428];
  v18 = @"Select major/minor MacUpdateBrain called with unexpected nil majorPrimaryAsset param";
LABEL_17:
  [mEMORY[0x277D64428] trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v18 withResult:8102 withError:0];
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

- (SUCorePolicyMacUpdateBrain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SUCorePolicyMacUpdateBrain;
  v5 = [(SUCorePolicy *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MajorTargetBuildVersion"];
    majorTargetBuildVersion = v5->_majorTargetBuildVersion;
    v5->_majorTargetBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinorTargetBuildVersion"];
    minorTargetBuildVersion = v5->_minorTargetBuildVersion;
    v5->_minorTargetBuildVersion = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SUCorePolicyMacUpdateBrain;
  coderCopy = coder;
  [(SUCorePolicy *)&v8 encodeWithCoder:coderCopy];
  v5 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"CompatibilityVersion"];

  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
  [coderCopy encodeObject:majorTargetBuildVersion forKey:@"MajorTargetBuildVersion"];

  minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
  [coderCopy encodeObject:minorTargetBuildVersion forKey:@"MinorTargetBuildVersion"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v17.receiver = self;
      v17.super_class = SUCorePolicyMacUpdateBrain;
      if ([(SUCorePolicy *)&v17 isEqual:v5])
      {
        v6 = MEMORY[0x277D643F8];
        compatibilityVersion = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
        compatibilityVersion2 = [(SUCorePolicyMacUpdateBrain *)v5 compatibilityVersion];
        if ([v6 numberIsEqual:compatibilityVersion to:compatibilityVersion2])
        {
          v9 = MEMORY[0x277D643F8];
          majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
          majorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)v5 majorTargetBuildVersion];
          if ([v9 stringIsEqual:majorTargetBuildVersion to:majorTargetBuildVersion2])
          {
            v12 = MEMORY[0x277D643F8];
            minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
            minorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)v5 minorTargetBuildVersion];
            v15 = [v12 stringIsEqual:minorTargetBuildVersion to:minorTargetBuildVersion2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SUCorePolicyMacUpdateBrain;
  v4 = [(SUCorePolicy *)&v12 copyWithZone:zone];
  compatibilityVersion = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  v6 = [compatibilityVersion copy];
  [v4 setCompatibilityVersion:v6];

  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
  v8 = [majorTargetBuildVersion copy];
  [v4 setMajorTargetBuildVersion:v8];

  minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
  v10 = [minorTargetBuildVersion copy];
  [v4 setMinorTargetBuildVersion:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  compatibilityVersion = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
  minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
  v10.receiver = self;
  v10.super_class = SUCorePolicyMacUpdateBrain;
  v7 = [(SUCorePolicy *)&v10 description];
  v8 = [v3 stringWithFormat:@"SUCorePolicyMacUpdateBrain(compatibilityVersion:%@|majorTargetBuildVersion:%@|minorTargetBuildVersion:%@|super:%@)", compatibilityVersion, majorTargetBuildVersion, minorTargetBuildVersion, v7];

  return v8;
}

- (id)summary
{
  v15.receiver = self;
  v15.super_class = SUCorePolicyMacUpdateBrain;
  summary = [(SUCorePolicy *)&v15 summary];
  compatibilityVersion = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];

  if (compatibilityVersion)
  {
    compatibilityVersion2 = [(SUCorePolicyMacUpdateBrain *)self compatibilityVersion];
    v6 = [summary stringByAppendingFormat:@"|compatibilityVersion=%@", compatibilityVersion2];

    summary = v6;
  }

  majorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];

  if (majorTargetBuildVersion)
  {
    majorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self majorTargetBuildVersion];
    v9 = [summary stringByAppendingFormat:@"|majorTargetBuildVersion=%@", majorTargetBuildVersion2];

    summary = v9;
  }

  minorTargetBuildVersion = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];

  if (minorTargetBuildVersion)
  {
    minorTargetBuildVersion2 = [(SUCorePolicyMacUpdateBrain *)self minorTargetBuildVersion];
    v12 = [summary stringByAppendingFormat:@"|minorTargetBuildVersion=%@", minorTargetBuildVersion2];

    summary = v12;
  }

  if (([summary isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v13 = [summary stringByAppendingString:@"|"];

    summary = v13;
  }

  return summary;
}

@end