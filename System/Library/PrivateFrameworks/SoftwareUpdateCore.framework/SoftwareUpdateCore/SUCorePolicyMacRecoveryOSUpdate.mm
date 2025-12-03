@interface SUCorePolicyMacRecoveryOSUpdate
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyMacRecoveryOSUpdate)initWithAssetType:(id)type targetRestoreVersion:(id)version usingPolicies:(int64_t)policies usingExtensions:(id)extensions;
- (SUCorePolicyMacRecoveryOSUpdate)initWithCoder:(id)coder;
- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)d assetAudience:(id)audience;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)selectSoftwareUpdatePrimaryAsset:(id *)asset secondaryAsset:(id *)secondaryAsset fromAssetQuery:(id)query;
@end

@implementation SUCorePolicyMacRecoveryOSUpdate

- (SUCorePolicyMacRecoveryOSUpdate)initWithAssetType:(id)type targetRestoreVersion:(id)version usingPolicies:(int64_t)policies usingExtensions:(id)extensions
{
  versionCopy = version;
  v30.receiver = self;
  v30.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v11 = [(SUCorePolicy *)&v30 initWithSoftwareUpdateAssetType:type documentationAssetType:0 usingPolicies:policies usingExtensions:extensions];
  v12 = v11;
  if (v11)
  {
    v29.receiver = v11;
    v29.super_class = SUCorePolicyMacRecoveryOSUpdate;
    [(SUCorePolicy *)&v29 setTargetRestoreVersion:versionCopy];
    [(SUCorePolicy *)v12 setDisableSplatCombo:1];
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    sfrRestoreVersion = [mEMORY[0x277D64418] sfrRestoreVersion];
    installedSFRRestoreVersion = v12->_installedSFRRestoreVersion;
    v12->_installedSFRRestoreVersion = sfrRestoreVersion;

    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    recoveryOSBuildVersion = [mEMORY[0x277D64418]2 recoveryOSBuildVersion];
    installedRecoveryOSBuildVersion = v12->_installedRecoveryOSBuildVersion;
    v12->_installedRecoveryOSBuildVersion = recoveryOSBuildVersion;

    mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
    recoveryOSProductVersion = [mEMORY[0x277D64418]3 recoveryOSProductVersion];
    installedRecoveryOSProductVersion = v12->_installedRecoveryOSProductVersion;
    v12->_installedRecoveryOSProductVersion = recoveryOSProductVersion;

    mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
    recoveryOSRestoreVersion = [mEMORY[0x277D64418]4 recoveryOSRestoreVersion];
    installedRecoveryOSRestoreVersion = v12->_installedRecoveryOSRestoreVersion;
    v12->_installedRecoveryOSRestoreVersion = recoveryOSRestoreVersion;

    mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
    recoveryOSReleaseType = [mEMORY[0x277D64418]5 recoveryOSReleaseType];
    installedRecoveryOSReleaseType = v12->_installedRecoveryOSReleaseType;
    v12->_installedRecoveryOSReleaseType = recoveryOSReleaseType;
  }

  return v12;
}

- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)d assetAudience:(id)audience
{
  v90 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SUCorePolicyMacRecoveryOSUpdate *)self description];
    *buf = 138543362;
    v89 = v8;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateCatalogDownloadOptionsWithUUID for SUCorePolicyMacRecoveryOSUpdate: %{public}@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D28A18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v9 setAdditionalServerParams:v10];

  v86.receiver = self;
  v86.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateScanPolicy = [(SUCorePolicy *)&v86 softwareUpdateScanPolicy];
  [v9 setDiscretionary:{objc_msgSend(softwareUpdateScanPolicy, "discretionary")}];

  v85.receiver = self;
  v85.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateScanPolicy2 = [(SUCorePolicy *)&v85 softwareUpdateScanPolicy];
  [v9 setRequiresPowerPluggedIn:{objc_msgSend(softwareUpdateScanPolicy2, "requiresPowerPluggedIn")}];

  v84.receiver = self;
  v84.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateScanPolicy3 = [(SUCorePolicy *)&v84 softwareUpdateScanPolicy];
  [v9 setLiveServerCatalogOnly:{objc_msgSend(softwareUpdateScanPolicy3, "liveServerCatalogOnly")}];

  v68 = dCopy;
  [v9 setSessionId:dCopy];
  additionalServerParams = [v9 additionalServerParams];
  targetRestoreVersion = [(SUCorePolicy *)self targetRestoreVersion];
  [additionalServerParams setSafeObject:targetRestoreVersion forKey:@"TargetRestoreVersion"];

  additionalServerParams2 = [v9 additionalServerParams];
  installedSFRVersion = [(SUCorePolicy *)self installedSFRVersion];
  [additionalServerParams2 setSafeObject:installedSFRVersion forKey:@"InstalledSFRVersion"];

  additionalServerParams3 = [v9 additionalServerParams];
  installedSFRRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
  [additionalServerParams3 setSafeObject:installedSFRRestoreVersion forKey:@"InstalledSFRRestoreVersion"];

  additionalServerParams4 = [v9 additionalServerParams];
  installedRecoveryOSRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  [additionalServerParams4 setSafeObject:installedRecoveryOSRestoreVersion forKey:@"InstalledRecoveryOSRestoreVersion"];

  additionalServerParams5 = [v9 additionalServerParams];
  installedRecoveryOSBuildVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  [additionalServerParams5 setSafeObject:installedRecoveryOSBuildVersion forKey:@"InstalledRecoveryOSVersion"];

  additionalServerParams6 = [v9 additionalServerParams];
  installedRecoveryOSReleaseType = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  [additionalServerParams6 setSafeObject:installedRecoveryOSReleaseType forKey:@"ReleaseType"];

  additionalServerParams7 = [v9 additionalServerParams];
  v83.receiver = self;
  v83.super_class = SUCorePolicyMacRecoveryOSUpdate;
  productType = [(SUCorePolicy *)&v83 productType];
  [additionalServerParams7 setSafeObject:productType forKey:@"ProductType"];

  additionalServerParams8 = [v9 additionalServerParams];
  v82.receiver = self;
  v82.super_class = SUCorePolicyMacRecoveryOSUpdate;
  hwModelStr = [(SUCorePolicy *)&v82 hwModelStr];
  [additionalServerParams8 setSafeObject:hwModelStr forKey:@"HWModelStr"];

  additionalServerParams9 = [v9 additionalServerParams];
  v81.receiver = self;
  v81.super_class = SUCorePolicyMacRecoveryOSUpdate;
  deviceClass = [(SUCorePolicy *)&v81 deviceClass];
  [additionalServerParams9 setSafeObject:deviceClass forKey:@"DeviceName"];

  additionalServerParams10 = [v9 additionalServerParams];
  v33 = MEMORY[0x277CCABB0];
  v80.receiver = self;
  v80.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateScanPolicy4 = [(SUCorePolicy *)&v80 softwareUpdateScanPolicy];
  v35 = [v33 numberWithBool:{objc_msgSend(softwareUpdateScanPolicy4, "allowSameVersion")}];
  [additionalServerParams10 setSafeObject:v35 forKey:@"AllowSameBuildVersion"];

  additionalServerParams11 = [v9 additionalServerParams];
  v37 = MEMORY[0x277CCABB0];
  v79.receiver = self;
  v79.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateScanPolicy5 = [(SUCorePolicy *)&v79 softwareUpdateScanPolicy];
  v39 = [v37 numberWithBool:{objc_msgSend(softwareUpdateScanPolicy5, "allowSameVersion")}];
  [additionalServerParams11 setSafeObject:v39 forKey:@"AllowSameRestoreVersion"];

  v78.receiver = self;
  v78.super_class = SUCorePolicyMacRecoveryOSUpdate;
  prerequisiteBuildVersion = [(SUCorePolicy *)&v78 prerequisiteBuildVersion];
  [v9 setPrerequisiteProductVersion:prerequisiteBuildVersion];

  v77.receiver = self;
  v77.super_class = SUCorePolicyMacRecoveryOSUpdate;
  prerequisiteProductVersion = [(SUCorePolicy *)&v77 prerequisiteProductVersion];
  [v9 setPrerequisiteBuildVersion:prerequisiteProductVersion];

  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (downloadAuthorizationHeader)
  {
    v76.receiver = self;
    v76.super_class = SUCorePolicyMacRecoveryOSUpdate;
    downloadAuthorizationHeader2 = [(SUCorePolicy *)&v76 downloadAuthorizationHeader];
    [v9 setDownloadAuthorizationHeader:downloadAuthorizationHeader2];
  }

  v75.receiver = self;
  v75.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateScanPolicy6 = [(SUCorePolicy *)&v75 softwareUpdateScanPolicy];
  additionalServerParams12 = [softwareUpdateScanPolicy6 additionalServerParams];

  if (additionalServerParams12)
  {
    additionalServerParams13 = [v9 additionalServerParams];
    v74.receiver = self;
    v74.super_class = SUCorePolicyMacRecoveryOSUpdate;
    softwareUpdateScanPolicy7 = [(SUCorePolicy *)&v74 softwareUpdateScanPolicy];
    additionalServerParams14 = [softwareUpdateScanPolicy7 additionalServerParams];
    [additionalServerParams13 addEntriesFromDictionary:additionalServerParams14];
  }

  v49 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  sessionId = [v9 sessionId];
  [v49 appendFormat:@"scanUUID:%@|", sessionId];

  additionalServerParams15 = [v9 additionalServerParams];
  [v49 appendFormat:@"additionalServerParams:%@|", additionalServerParams15];

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v89 = v49;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] MacRecoveryOSUpdate catalog download options summary: %{public}@", buf, 0xCu);
  }

  v67 = v49;

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v89 = v9;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] MacRecoveryOSUpdate catalog downloadOptions: %{public}@", buf, 0xCu);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69.receiver = self;
  v69.super_class = SUCorePolicyMacRecoveryOSUpdate;
  policyExtensions = [(SUCorePolicy *)&v69 policyExtensions];
  v57 = [policyExtensions countByEnumeratingWithState:&v70 objects:v87 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v71;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v71 != v59)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v61 = *(*(&v70 + 1) + 8 * i);
        mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
        oslog4 = [mEMORY[0x277D64460]4 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v61 extensionName];
          *buf = 138543362;
          v89 = extensionName;
          _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] extending MacRecoveryOSUpdate catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v61 extendMASoftwareUpdateCatalogDownloadOptions:v9];
      }

      v58 = [policyExtensions countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v58);
  }

  v65 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose
{
  v45 = *MEMORY[0x277D85DE8];
  purposeCopy = purpose;
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  null = [MEMORY[0x277CBEB68] null];
  v7 = objc_alloc(MEMORY[0x277D289D8]);
  v41.receiver = self;
  v41.super_class = SUCorePolicyMacRecoveryOSUpdate;
  softwareUpdateAssetType = [(SUCorePolicy *)&v41 softwareUpdateAssetType];
  v36 = purposeCopy;
  v9 = [v7 initWithType:softwareUpdateAssetType andPurpose:purposeCopy];

  hwModelStr = [(SUCorePolicy *)self hwModelStr];

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = v11;
  if (hwModelStr)
  {
    hwModelStr2 = [(SUCorePolicy *)self hwModelStr];
    v14 = [v12 initWithObjects:{null, hwModelStr2, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:v14];
  }

  else
  {
    hwModelStr2 = [v11 initWithObjects:{null, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:hwModelStr2];
  }

  hwModelStr3 = [(SUCorePolicy *)self hwModelStr];
  [v5 appendFormat:@"hwModelStr:%@|", hwModelStr3];

  productType = [(SUCorePolicy *)self productType];

  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = v17;
  if (productType)
  {
    productType2 = [(SUCorePolicy *)self productType];
    v20 = [v18 initWithObjects:{null, productType2, 0}];
    [v9 addKeyValueArray:@"SupportedDevices" with:v20];
  }

  else
  {
    productType2 = [v17 initWithObjects:{null, 0}];
    [v9 addKeyValueArray:@"SupportedDevices" with:productType2];
  }

  productType3 = [(SUCorePolicy *)self productType];
  [v5 appendFormat:@"productType:%@|", productType3];

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v5;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] querying MacRecoveryOSUpdate metadata: %{public}@", buf, 0xCu);
  }

  v35 = v5;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v25 = [policyExtensions countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v29 extensionName];
          *buf = 138543362;
          v44 = extensionName;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] extending MacRecoveryOSUpdate query for extension %{public}@", buf, 0xCu);
        }

        [v29 extendSoftwareUpdateMAAssetQuery:v9];
      }

      v26 = [policyExtensions countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v26);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)selectSoftwareUpdatePrimaryAsset:(id *)asset secondaryAsset:(id *)secondaryAsset fromAssetQuery:(id)query
{
  v87 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v9 = queryCopy;
  if (asset)
  {
    *asset = 0;
  }

  if (secondaryAsset)
  {
    *secondaryAsset = 0;
  }

  if (!asset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:@"Select MacRecoveryOSUpdate called with unexpected nil primaryAsset param" withResult:8102 withError:0];
    goto LABEL_57;
  }

  mEMORY[0x277D64428] = [queryCopy SUCoreBorder_results];
  v11 = [mEMORY[0x277D64428] count];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  log = oslog;
  v14 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 MacRecoveryOSUpdate query results (before filtering)", buf, 2u);
    }

    goto LABEL_56;
  }

  if (v14)
  {
    *buf = 134217984;
    v83 = [mEMORY[0x277D64428] count];
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu MacRecoveryOSUpdate query results (before filtering)", buf, 0xCu);
  }

  assetCopy = asset;
  secondaryAssetCopy = secondaryAsset;
  v68 = v9;

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  selfCopy = self;
  log = [(SUCorePolicy *)self policyExtensions];
  v15 = [log countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v78;
    do
    {
      v18 = 0;
      v19 = mEMORY[0x277D64428];
      do
      {
        if (*v78 != v17)
        {
          objc_enumerationMutation(log);
        }

        v20 = *(*(&v77 + 1) + 8 * v18);
        mEMORY[0x277D64428] = [v20 filterSoftwareUpdateAssetArray:v19];

        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [mEMORY[0x277D64428] count];
          extensionName = [v20 extensionName];
          *buf = 134218242;
          v83 = v23;
          v84 = 2114;
          v85 = extensionName;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu MacRecoveryOSUpdate assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
        }

        if (![mEMORY[0x277D64428] count])
        {
          mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
          oslog3 = [mEMORY[0x277D64460]3 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 MacRecoveryOSUpdate assets found, stopping filtering early", buf, 2u);
          }

          v9 = v68;
          goto LABEL_56;
        }

        ++v18;
        v19 = mEMORY[0x277D64428];
      }

      while (v16 != v18);
      v16 = [log countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v16);
  }

  v25 = [mEMORY[0x277D64428] sortedArrayUsingComparator:&__block_literal_global_4];
  lastObject = [v25 lastObject];
  attributes = [lastObject attributes];
  v28 = [attributes safeStringForKey:@"RestoreVersion"];

  v29 = MEMORY[0x277CCAC30];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __98__SUCorePolicyMacRecoveryOSUpdate_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2;
  v75[3] = &unk_27892C8F8;
  v30 = v28;
  v76 = v30;
  v31 = [v29 predicateWithBlock:v75];
  log = v25;
  v32 = [v25 filteredArrayUsingPredicate:v31];

  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog4 = [mEMORY[0x277D64460]4 oslog];

  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v32 count];
    *buf = 134217984;
    v83 = v35;
    _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highest MacRecoveryOSUpdate assets in SUCorePolicyMacRecoveryOSUpdate", buf, 0xCu);
  }

  v64 = v30;
  v69 = mEMORY[0x277D64428];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v36 = v32;
  v37 = [v36 countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (!v37)
  {
    v39 = 0;
    v40 = 0;
    goto LABEL_44;
  }

  v38 = v37;
  v39 = 0;
  v40 = 0;
  v41 = *v72;
  do
  {
    for (i = 0; i != v38; ++i)
    {
      if (*v72 != v41)
      {
        objc_enumerationMutation(v36);
      }

      v43 = *(*(&v71 + 1) + 8 * i);
      if (v39 || ([*(*(&v71 + 1) + 8 * i) attributes], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "safeStringForKey:", @"PrerequisiteBuild"), v47 = objc_claimAutoreleasedReturnValue(), v47, v46, !v47))
      {
        if (v40)
        {
          continue;
        }

        attributes2 = [v43 attributes];
        v45 = [attributes2 safeStringForKey:@"PrerequisiteBuild"];

        if (v45)
        {
          v40 = 0;
          continue;
        }

        v40 = v43;
      }

      else
      {
        v39 = v43;
      }

      v48 = v43;
    }

    v38 = [v36 countByEnumeratingWithState:&v71 objects:v81 count:16];
  }

  while (v38);
LABEL_44:

  softwareUpdateScanPolicy = [(SUCorePolicy *)selfCopy softwareUpdateScanPolicy];
  restrictToFull = [softwareUpdateScanPolicy restrictToFull];

  if (restrictToFull)
  {
    v53 = v40;
    v54 = 0;
    v9 = v68;
    mEMORY[0x277D64428] = v69;
    v56 = assetCopy;
    v55 = secondaryAssetCopy;
    v57 = v64;
    goto LABEL_53;
  }

  softwareUpdateScanPolicy2 = [(SUCorePolicy *)selfCopy softwareUpdateScanPolicy];
  restrictToIncremental = [softwareUpdateScanPolicy2 restrictToIncremental];

  v9 = v68;
  mEMORY[0x277D64428] = v69;
  v56 = assetCopy;
  v55 = secondaryAssetCopy;
  v57 = v64;
  if (restrictToIncremental)
  {
    v60 = v39;
    goto LABEL_51;
  }

  if (v39 || !v40)
  {
    v53 = v39;
    v54 = v40;
  }

  else
  {
    v60 = v40;
LABEL_51:
    v53 = v60;
    v54 = 0;
  }

LABEL_53:
  v61 = v53;
  *v56 = v53;
  if (v55)
  {
    v62 = v54;
    *v55 = v54;
  }

LABEL_56:
LABEL_57:

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t __98__SUCorePolicyMacRecoveryOSUpdate_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 safeStringForKey:@"RestoreVersion"];

  v7 = [v4 attributes];

  v8 = [v7 safeStringForKey:@"RestoreVersion"];

  v9 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v6];
  v10 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v8];
  v11 = [v9 compare:v10];

  return v11;
}

uint64_t __98__SUCorePolicyMacRecoveryOSUpdate_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"RestoreVersion"];

  v5 = [MEMORY[0x277D643F8] stringIsEqual:*(a1 + 32) to:v4];
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = @"NO";
    v12 = 138543874;
    if (v5)
    {
      v9 = @"YES";
    }

    v13 = v8;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering highest MacRecoveryOSUpdate restore version, highestRestoreVersion=%{public}@, assetRestoreVersion=%{public}@ | keep=%{public}@", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (SUCorePolicyMacRecoveryOSUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v5 = [(SUCorePolicy *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstalledSFRRestoreVersion"];
    installedSFRRestoreVersion = v5->_installedSFRRestoreVersion;
    v5->_installedSFRRestoreVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSBuildVersion"];
    installedRecoveryOSBuildVersion = v5->_installedRecoveryOSBuildVersion;
    v5->_installedRecoveryOSBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSProductVersion"];
    installedRecoveryOSProductVersion = v5->_installedRecoveryOSProductVersion;
    v5->_installedRecoveryOSProductVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSRestoreVersion"];
    installedRecoveryOSRestoreVersion = v5->_installedRecoveryOSRestoreVersion;
    v5->_installedRecoveryOSRestoreVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSReleaseType"];
    installedRecoveryOSReleaseType = v5->_installedRecoveryOSReleaseType;
    v5->_installedRecoveryOSReleaseType = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = SUCorePolicyMacRecoveryOSUpdate;
  coderCopy = coder;
  [(SUCorePolicy *)&v10 encodeWithCoder:coderCopy];
  v5 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"InstalledSFRRestoreVersion"];

  installedRecoveryOSBuildVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  [coderCopy encodeObject:installedRecoveryOSBuildVersion forKey:@"InstalledRecoveryOSBuildVersion"];

  installedRecoveryOSProductVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
  [coderCopy encodeObject:installedRecoveryOSProductVersion forKey:@"InstalledRecoveryOSProductVersion"];

  installedRecoveryOSRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  [coderCopy encodeObject:installedRecoveryOSRestoreVersion forKey:@"InstalledRecoveryOSRestoreVersion"];

  installedRecoveryOSReleaseType = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  [coderCopy encodeObject:installedRecoveryOSReleaseType forKey:@"InstalledRecoveryOSReleaseType"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v29.receiver = self;
      v29.super_class = SUCorePolicyMacRecoveryOSUpdate;
      if ([(SUCorePolicy *)&v29 isEqual:v5])
      {
        v6 = MEMORY[0x277D643F8];
        installedSFRRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
        installedSFRRestoreVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedSFRRestoreVersion];
        if ([v6 stringIsEqual:installedSFRRestoreVersion to:installedSFRRestoreVersion2])
        {
          v9 = MEMORY[0x277D643F8];
          installedRecoveryOSBuildVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
          installedRecoveryOSBuildVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSBuildVersion];
          if ([v9 stringIsEqual:installedRecoveryOSBuildVersion to:installedRecoveryOSBuildVersion2])
          {
            v12 = MEMORY[0x277D643F8];
            installedRecoveryOSProductVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
            installedRecoveryOSProductVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSProductVersion];
            v28 = installedRecoveryOSProductVersion;
            v15 = installedRecoveryOSProductVersion;
            v16 = installedRecoveryOSProductVersion2;
            if ([v12 stringIsEqual:v15 to:installedRecoveryOSProductVersion2])
            {
              v26 = MEMORY[0x277D643F8];
              installedRecoveryOSRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
              installedRecoveryOSRestoreVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSRestoreVersion];
              v19 = v26;
              v25 = installedRecoveryOSRestoreVersion2;
              v27 = installedRecoveryOSRestoreVersion;
              if ([v19 stringIsEqual:installedRecoveryOSRestoreVersion to:?])
              {
                v24 = MEMORY[0x277D643F8];
                installedRecoveryOSReleaseType = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
                installedRecoveryOSReleaseType2 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSReleaseType];
                v22 = [v24 stringIsEqual:installedRecoveryOSReleaseType to:installedRecoveryOSReleaseType2];
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v5 = [(SUCorePolicy *)&v17 copyWithZone:?];
  installedSFRRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
  v7 = [installedSFRRestoreVersion copyWithZone:zone];
  [v5 setInstalledSFRRestoreVersion:v7];

  installedRecoveryOSBuildVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  v9 = [installedRecoveryOSBuildVersion copyWithZone:zone];
  [v5 setInstalledRecoveryOSBuildVersion:v9];

  installedRecoveryOSProductVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
  v11 = [installedRecoveryOSProductVersion copyWithZone:zone];
  [v5 setInstalledRecoveryOSProductVersion:v11];

  installedRecoveryOSRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  v13 = [installedRecoveryOSRestoreVersion copyWithZone:zone];
  [v5 setInstalledRecoveryOSRestoreVersion:v13];

  installedRecoveryOSReleaseType = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  v15 = [installedRecoveryOSReleaseType copyWithZone:zone];
  [v5 setInstalledRecoveryOSReleaseType:v15];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v4 = [(SUCorePolicy *)&v12 description];
  installedSFRRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
  installedRecoveryOSBuildVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  installedRecoveryOSProductVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
  installedRecoveryOSRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  installedRecoveryOSReleaseType = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  v10 = [v3 stringWithFormat:@"SUCorePolicyMacRecoveryOSUpdate(super:%@|installedSFRRestoreVersion:%@|installedRecoveryOSBuildVersion:%@|installedRecoveryOSProductVersion:%@|installedRecoveryOSRestoreVersion:%@|installedRecoveryOSReleaseType:%@)", v4, installedSFRRestoreVersion, installedRecoveryOSBuildVersion, installedRecoveryOSProductVersion, installedRecoveryOSRestoreVersion, installedRecoveryOSReleaseType];

  return v10;
}

- (id)summary
{
  v21.receiver = self;
  v21.super_class = SUCorePolicyMacRecoveryOSUpdate;
  summary = [(SUCorePolicy *)&v21 summary];
  installedSFRRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];

  if (installedSFRRestoreVersion)
  {
    installedSFRRestoreVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
    v6 = [summary stringByAppendingFormat:@"installedSFRRestoreVersion:%@|", installedSFRRestoreVersion2];

    summary = v6;
  }

  installedRecoveryOSBuildVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];

  if (installedRecoveryOSBuildVersion)
  {
    installedRecoveryOSBuildVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
    v9 = [summary stringByAppendingFormat:@"installedRecoveryOSBuildVersion:%@|", installedRecoveryOSBuildVersion2];

    summary = v9;
  }

  installedRecoveryOSProductVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];

  if (installedRecoveryOSProductVersion)
  {
    installedRecoveryOSProductVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
    v12 = [summary stringByAppendingFormat:@"installedRecoveryOSProductVersion:%@|", installedRecoveryOSProductVersion2];

    summary = v12;
  }

  installedRecoveryOSRestoreVersion = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];

  if (installedRecoveryOSRestoreVersion)
  {
    installedRecoveryOSRestoreVersion2 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
    v15 = [summary stringByAppendingFormat:@"installedRecoveryOSRestoreVersion:%@|", installedRecoveryOSRestoreVersion2];

    summary = v15;
  }

  installedRecoveryOSReleaseType = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];

  if (installedRecoveryOSReleaseType)
  {
    installedRecoveryOSReleaseType2 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
    v18 = [summary stringByAppendingFormat:@"installedRecoveryOSReleaseType:%@|", installedRecoveryOSReleaseType2];

    summary = v18;
  }

  if (([summary isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v19 = [summary stringByAppendingString:@"|"];

    summary = v19;
  }

  return summary;
}

@end