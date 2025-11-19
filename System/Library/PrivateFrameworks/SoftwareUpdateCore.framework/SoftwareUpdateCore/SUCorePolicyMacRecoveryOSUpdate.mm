@interface SUCorePolicyMacRecoveryOSUpdate
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyMacRecoveryOSUpdate)initWithAssetType:(id)a3 targetRestoreVersion:(id)a4 usingPolicies:(int64_t)a5 usingExtensions:(id)a6;
- (SUCorePolicyMacRecoveryOSUpdate)initWithCoder:(id)a3;
- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)a3 assetAudience:(id)a4;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)selectSoftwareUpdatePrimaryAsset:(id *)a3 secondaryAsset:(id *)a4 fromAssetQuery:(id)a5;
@end

@implementation SUCorePolicyMacRecoveryOSUpdate

- (SUCorePolicyMacRecoveryOSUpdate)initWithAssetType:(id)a3 targetRestoreVersion:(id)a4 usingPolicies:(int64_t)a5 usingExtensions:(id)a6
{
  v10 = a4;
  v30.receiver = self;
  v30.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v11 = [(SUCorePolicy *)&v30 initWithSoftwareUpdateAssetType:a3 documentationAssetType:0 usingPolicies:a5 usingExtensions:a6];
  v12 = v11;
  if (v11)
  {
    v29.receiver = v11;
    v29.super_class = SUCorePolicyMacRecoveryOSUpdate;
    [(SUCorePolicy *)&v29 setTargetRestoreVersion:v10];
    [(SUCorePolicy *)v12 setDisableSplatCombo:1];
    v13 = [MEMORY[0x277D64418] sharedDevice];
    v14 = [v13 sfrRestoreVersion];
    installedSFRRestoreVersion = v12->_installedSFRRestoreVersion;
    v12->_installedSFRRestoreVersion = v14;

    v16 = [MEMORY[0x277D64418] sharedDevice];
    v17 = [v16 recoveryOSBuildVersion];
    installedRecoveryOSBuildVersion = v12->_installedRecoveryOSBuildVersion;
    v12->_installedRecoveryOSBuildVersion = v17;

    v19 = [MEMORY[0x277D64418] sharedDevice];
    v20 = [v19 recoveryOSProductVersion];
    installedRecoveryOSProductVersion = v12->_installedRecoveryOSProductVersion;
    v12->_installedRecoveryOSProductVersion = v20;

    v22 = [MEMORY[0x277D64418] sharedDevice];
    v23 = [v22 recoveryOSRestoreVersion];
    installedRecoveryOSRestoreVersion = v12->_installedRecoveryOSRestoreVersion;
    v12->_installedRecoveryOSRestoreVersion = v23;

    v25 = [MEMORY[0x277D64418] sharedDevice];
    v26 = [v25 recoveryOSReleaseType];
    installedRecoveryOSReleaseType = v12->_installedRecoveryOSReleaseType;
    v12->_installedRecoveryOSReleaseType = v26;
  }

  return v12;
}

- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)a3 assetAudience:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SUCorePolicyMacRecoveryOSUpdate *)self description];
    *buf = 138543362;
    v89 = v8;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateCatalogDownloadOptionsWithUUID for SUCorePolicyMacRecoveryOSUpdate: %{public}@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277D28A18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v9 setAdditionalServerParams:v10];

  v86.receiver = self;
  v86.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v11 = [(SUCorePolicy *)&v86 softwareUpdateScanPolicy];
  [v9 setDiscretionary:{objc_msgSend(v11, "discretionary")}];

  v85.receiver = self;
  v85.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v12 = [(SUCorePolicy *)&v85 softwareUpdateScanPolicy];
  [v9 setRequiresPowerPluggedIn:{objc_msgSend(v12, "requiresPowerPluggedIn")}];

  v84.receiver = self;
  v84.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v13 = [(SUCorePolicy *)&v84 softwareUpdateScanPolicy];
  [v9 setLiveServerCatalogOnly:{objc_msgSend(v13, "liveServerCatalogOnly")}];

  v68 = v5;
  [v9 setSessionId:v5];
  v14 = [v9 additionalServerParams];
  v15 = [(SUCorePolicy *)self targetRestoreVersion];
  [v14 setSafeObject:v15 forKey:@"TargetRestoreVersion"];

  v16 = [v9 additionalServerParams];
  v17 = [(SUCorePolicy *)self installedSFRVersion];
  [v16 setSafeObject:v17 forKey:@"InstalledSFRVersion"];

  v18 = [v9 additionalServerParams];
  v19 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
  [v18 setSafeObject:v19 forKey:@"InstalledSFRRestoreVersion"];

  v20 = [v9 additionalServerParams];
  v21 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  [v20 setSafeObject:v21 forKey:@"InstalledRecoveryOSRestoreVersion"];

  v22 = [v9 additionalServerParams];
  v23 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  [v22 setSafeObject:v23 forKey:@"InstalledRecoveryOSVersion"];

  v24 = [v9 additionalServerParams];
  v25 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  [v24 setSafeObject:v25 forKey:@"ReleaseType"];

  v26 = [v9 additionalServerParams];
  v83.receiver = self;
  v83.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v27 = [(SUCorePolicy *)&v83 productType];
  [v26 setSafeObject:v27 forKey:@"ProductType"];

  v28 = [v9 additionalServerParams];
  v82.receiver = self;
  v82.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v29 = [(SUCorePolicy *)&v82 hwModelStr];
  [v28 setSafeObject:v29 forKey:@"HWModelStr"];

  v30 = [v9 additionalServerParams];
  v81.receiver = self;
  v81.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v31 = [(SUCorePolicy *)&v81 deviceClass];
  [v30 setSafeObject:v31 forKey:@"DeviceName"];

  v32 = [v9 additionalServerParams];
  v33 = MEMORY[0x277CCABB0];
  v80.receiver = self;
  v80.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v34 = [(SUCorePolicy *)&v80 softwareUpdateScanPolicy];
  v35 = [v33 numberWithBool:{objc_msgSend(v34, "allowSameVersion")}];
  [v32 setSafeObject:v35 forKey:@"AllowSameBuildVersion"];

  v36 = [v9 additionalServerParams];
  v37 = MEMORY[0x277CCABB0];
  v79.receiver = self;
  v79.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v38 = [(SUCorePolicy *)&v79 softwareUpdateScanPolicy];
  v39 = [v37 numberWithBool:{objc_msgSend(v38, "allowSameVersion")}];
  [v36 setSafeObject:v39 forKey:@"AllowSameRestoreVersion"];

  v78.receiver = self;
  v78.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v40 = [(SUCorePolicy *)&v78 prerequisiteBuildVersion];
  [v9 setPrerequisiteProductVersion:v40];

  v77.receiver = self;
  v77.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v41 = [(SUCorePolicy *)&v77 prerequisiteProductVersion];
  [v9 setPrerequisiteBuildVersion:v41];

  v42 = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (v42)
  {
    v76.receiver = self;
    v76.super_class = SUCorePolicyMacRecoveryOSUpdate;
    v43 = [(SUCorePolicy *)&v76 downloadAuthorizationHeader];
    [v9 setDownloadAuthorizationHeader:v43];
  }

  v75.receiver = self;
  v75.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v44 = [(SUCorePolicy *)&v75 softwareUpdateScanPolicy];
  v45 = [v44 additionalServerParams];

  if (v45)
  {
    v46 = [v9 additionalServerParams];
    v74.receiver = self;
    v74.super_class = SUCorePolicyMacRecoveryOSUpdate;
    v47 = [(SUCorePolicy *)&v74 softwareUpdateScanPolicy];
    v48 = [v47 additionalServerParams];
    [v46 addEntriesFromDictionary:v48];
  }

  v49 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  v50 = [v9 sessionId];
  [v49 appendFormat:@"scanUUID:%@|", v50];

  v51 = [v9 additionalServerParams];
  [v49 appendFormat:@"additionalServerParams:%@|", v51];

  v52 = [MEMORY[0x277D64460] sharedLogger];
  v53 = [v52 oslog];

  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v89 = v49;
    _os_log_impl(&dword_23193C000, v53, OS_LOG_TYPE_DEFAULT, "[POLICY] MacRecoveryOSUpdate catalog download options summary: %{public}@", buf, 0xCu);
  }

  v67 = v49;

  v54 = [MEMORY[0x277D64460] sharedLogger];
  v55 = [v54 oslog];

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v89 = v9;
    _os_log_impl(&dword_23193C000, v55, OS_LOG_TYPE_DEFAULT, "[POLICY] MacRecoveryOSUpdate catalog downloadOptions: %{public}@", buf, 0xCu);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69.receiver = self;
  v69.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v56 = [(SUCorePolicy *)&v69 policyExtensions];
  v57 = [v56 countByEnumeratingWithState:&v70 objects:v87 count:16];
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
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v70 + 1) + 8 * i);
        v62 = [MEMORY[0x277D64460] sharedLogger];
        v63 = [v62 oslog];

        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = [v61 extensionName];
          *buf = 138543362;
          v89 = v64;
          _os_log_impl(&dword_23193C000, v63, OS_LOG_TYPE_DEFAULT, "[POLICY] extending MacRecoveryOSUpdate catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v61 extendMASoftwareUpdateCatalogDownloadOptions:v9];
      }

      v58 = [v56 countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v58);
  }

  v65 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] stringWithString:@"|"];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = objc_alloc(MEMORY[0x277D289D8]);
  v41.receiver = self;
  v41.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v8 = [(SUCorePolicy *)&v41 softwareUpdateAssetType];
  v36 = v4;
  v9 = [v7 initWithType:v8 andPurpose:v4];

  v10 = [(SUCorePolicy *)self hwModelStr];

  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = v11;
  if (v10)
  {
    v13 = [(SUCorePolicy *)self hwModelStr];
    v14 = [v12 initWithObjects:{v6, v13, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:v14];
  }

  else
  {
    v13 = [v11 initWithObjects:{v6, 0}];
    [v9 addKeyValueArray:@"SupportedDeviceModels" with:v13];
  }

  v15 = [(SUCorePolicy *)self hwModelStr];
  [v5 appendFormat:@"hwModelStr:%@|", v15];

  v16 = [(SUCorePolicy *)self productType];

  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = v17;
  if (v16)
  {
    v19 = [(SUCorePolicy *)self productType];
    v20 = [v18 initWithObjects:{v6, v19, 0}];
    [v9 addKeyValueArray:@"SupportedDevices" with:v20];
  }

  else
  {
    v19 = [v17 initWithObjects:{v6, 0}];
    [v9 addKeyValueArray:@"SupportedDevices" with:v19];
  }

  v21 = [(SUCorePolicy *)self productType];
  [v5 appendFormat:@"productType:%@|", v21];

  v22 = [MEMORY[0x277D64460] sharedLogger];
  v23 = [v22 oslog];

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v5;
    _os_log_impl(&dword_23193C000, v23, OS_LOG_TYPE_DEFAULT, "[POLICY] querying MacRecoveryOSUpdate metadata: %{public}@", buf, 0xCu);
  }

  v35 = v5;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = [(SUCorePolicy *)self policyExtensions];
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        v30 = [MEMORY[0x277D64460] sharedLogger];
        v31 = [v30 oslog];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v29 extensionName];
          *buf = 138543362;
          v44 = v32;
          _os_log_impl(&dword_23193C000, v31, OS_LOG_TYPE_DEFAULT, "[POLICY] extending MacRecoveryOSUpdate query for extension %{public}@", buf, 0xCu);
        }

        [v29 extendSoftwareUpdateMAAssetQuery:v9];
      }

      v26 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v26);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)selectSoftwareUpdatePrimaryAsset:(id *)a3 secondaryAsset:(id *)a4 fromAssetQuery:(id)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a3)
  {
    v10 = [MEMORY[0x277D64428] sharedDiag];
    [v10 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:@"Select MacRecoveryOSUpdate called with unexpected nil primaryAsset param" withResult:8102 withError:0];
    goto LABEL_57;
  }

  v10 = [v8 SUCoreBorder_results];
  v11 = [v10 count];
  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  log = v13;
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 MacRecoveryOSUpdate query results (before filtering)", buf, 2u);
    }

    goto LABEL_56;
  }

  if (v14)
  {
    *buf = 134217984;
    v83 = [v10 count];
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu MacRecoveryOSUpdate query results (before filtering)", buf, 0xCu);
  }

  v66 = a3;
  v67 = a4;
  v68 = v9;

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v65 = self;
  log = [(SUCorePolicy *)self policyExtensions];
  v15 = [log countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v78;
    do
    {
      v18 = 0;
      v19 = v10;
      do
      {
        if (*v78 != v17)
        {
          objc_enumerationMutation(log);
        }

        v20 = *(*(&v77 + 1) + 8 * v18);
        v10 = [v20 filterSoftwareUpdateAssetArray:v19];

        v21 = [MEMORY[0x277D64460] sharedLogger];
        v22 = [v21 oslog];

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v10 count];
          v24 = [v20 extensionName];
          *buf = 134218242;
          v83 = v23;
          v84 = 2114;
          v85 = v24;
          _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu MacRecoveryOSUpdate assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
        }

        if (![v10 count])
        {
          v49 = [MEMORY[0x277D64460] sharedLogger];
          v50 = [v49 oslog];

          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, v50, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 MacRecoveryOSUpdate assets found, stopping filtering early", buf, 2u);
          }

          v9 = v68;
          goto LABEL_56;
        }

        ++v18;
        v19 = v10;
      }

      while (v16 != v18);
      v16 = [log countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v16);
  }

  v25 = [v10 sortedArrayUsingComparator:&__block_literal_global_4];
  v26 = [v25 lastObject];
  v27 = [v26 attributes];
  v28 = [v27 safeStringForKey:@"RestoreVersion"];

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

  v33 = [MEMORY[0x277D64460] sharedLogger];
  v34 = [v33 oslog];

  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v32 count];
    *buf = 134217984;
    v83 = v35;
    _os_log_impl(&dword_23193C000, v34, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highest MacRecoveryOSUpdate assets in SUCorePolicyMacRecoveryOSUpdate", buf, 0xCu);
  }

  v64 = v30;
  v69 = v10;

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

        v44 = [v43 attributes];
        v45 = [v44 safeStringForKey:@"PrerequisiteBuild"];

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

  v51 = [(SUCorePolicy *)v65 softwareUpdateScanPolicy];
  v52 = [v51 restrictToFull];

  if (v52)
  {
    v53 = v40;
    v54 = 0;
    v9 = v68;
    v10 = v69;
    v56 = v66;
    v55 = v67;
    v57 = v64;
    goto LABEL_53;
  }

  v58 = [(SUCorePolicy *)v65 softwareUpdateScanPolicy];
  v59 = [v58 restrictToIncremental];

  v9 = v68;
  v10 = v69;
  v56 = v66;
  v55 = v67;
  v57 = v64;
  if (v59)
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

- (SUCorePolicyMacRecoveryOSUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v5 = [(SUCorePolicy *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstalledSFRRestoreVersion"];
    installedSFRRestoreVersion = v5->_installedSFRRestoreVersion;
    v5->_installedSFRRestoreVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSBuildVersion"];
    installedRecoveryOSBuildVersion = v5->_installedRecoveryOSBuildVersion;
    v5->_installedRecoveryOSBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSProductVersion"];
    installedRecoveryOSProductVersion = v5->_installedRecoveryOSProductVersion;
    v5->_installedRecoveryOSProductVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSRestoreVersion"];
    installedRecoveryOSRestoreVersion = v5->_installedRecoveryOSRestoreVersion;
    v5->_installedRecoveryOSRestoreVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstalledRecoveryOSReleaseType"];
    installedRecoveryOSReleaseType = v5->_installedRecoveryOSReleaseType;
    v5->_installedRecoveryOSReleaseType = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v4 = a3;
  [(SUCorePolicy *)&v10 encodeWithCoder:v4];
  v5 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion:v10.receiver];
  [v4 encodeObject:v5 forKey:@"InstalledSFRRestoreVersion"];

  v6 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  [v4 encodeObject:v6 forKey:@"InstalledRecoveryOSBuildVersion"];

  v7 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
  [v4 encodeObject:v7 forKey:@"InstalledRecoveryOSProductVersion"];

  v8 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  [v4 encodeObject:v8 forKey:@"InstalledRecoveryOSRestoreVersion"];

  v9 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  [v4 encodeObject:v9 forKey:@"InstalledRecoveryOSReleaseType"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v29.receiver = self;
      v29.super_class = SUCorePolicyMacRecoveryOSUpdate;
      if ([(SUCorePolicy *)&v29 isEqual:v5])
      {
        v6 = MEMORY[0x277D643F8];
        v7 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
        v8 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedSFRRestoreVersion];
        if ([v6 stringIsEqual:v7 to:v8])
        {
          v9 = MEMORY[0x277D643F8];
          v10 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
          v11 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSBuildVersion];
          if ([v9 stringIsEqual:v10 to:v11])
          {
            v12 = MEMORY[0x277D643F8];
            v13 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
            v14 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSProductVersion];
            v28 = v13;
            v15 = v13;
            v16 = v14;
            if ([v12 stringIsEqual:v15 to:v14])
            {
              v26 = MEMORY[0x277D643F8];
              v17 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
              v18 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSRestoreVersion];
              v19 = v26;
              v25 = v18;
              v27 = v17;
              if ([v19 stringIsEqual:v17 to:?])
              {
                v24 = MEMORY[0x277D643F8];
                v20 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
                v21 = [(SUCorePolicyMacRecoveryOSUpdate *)v5 installedRecoveryOSReleaseType];
                v22 = [v24 stringIsEqual:v20 to:v21];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v5 = [(SUCorePolicy *)&v17 copyWithZone:?];
  v6 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
  v7 = [v6 copyWithZone:a3];
  [v5 setInstalledSFRRestoreVersion:v7];

  v8 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  v9 = [v8 copyWithZone:a3];
  [v5 setInstalledRecoveryOSBuildVersion:v9];

  v10 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
  v11 = [v10 copyWithZone:a3];
  [v5 setInstalledRecoveryOSProductVersion:v11];

  v12 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  v13 = [v12 copyWithZone:a3];
  [v5 setInstalledRecoveryOSRestoreVersion:v13];

  v14 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  v15 = [v14 copyWithZone:a3];
  [v5 setInstalledRecoveryOSReleaseType:v15];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v4 = [(SUCorePolicy *)&v12 description];
  v5 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
  v6 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
  v7 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
  v8 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
  v9 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
  v10 = [v3 stringWithFormat:@"SUCorePolicyMacRecoveryOSUpdate(super:%@|installedSFRRestoreVersion:%@|installedRecoveryOSBuildVersion:%@|installedRecoveryOSProductVersion:%@|installedRecoveryOSRestoreVersion:%@|installedRecoveryOSReleaseType:%@)", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)summary
{
  v21.receiver = self;
  v21.super_class = SUCorePolicyMacRecoveryOSUpdate;
  v3 = [(SUCorePolicy *)&v21 summary];
  v4 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];

  if (v4)
  {
    v5 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedSFRRestoreVersion];
    v6 = [v3 stringByAppendingFormat:@"installedSFRRestoreVersion:%@|", v5];

    v3 = v6;
  }

  v7 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];

  if (v7)
  {
    v8 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSBuildVersion];
    v9 = [v3 stringByAppendingFormat:@"installedRecoveryOSBuildVersion:%@|", v8];

    v3 = v9;
  }

  v10 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];

  if (v10)
  {
    v11 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSProductVersion];
    v12 = [v3 stringByAppendingFormat:@"installedRecoveryOSProductVersion:%@|", v11];

    v3 = v12;
  }

  v13 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];

  if (v13)
  {
    v14 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSRestoreVersion];
    v15 = [v3 stringByAppendingFormat:@"installedRecoveryOSRestoreVersion:%@|", v14];

    v3 = v15;
  }

  v16 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];

  if (v16)
  {
    v17 = [(SUCorePolicyMacRecoveryOSUpdate *)self installedRecoveryOSReleaseType];
    v18 = [v3 stringByAppendingFormat:@"installedRecoveryOSReleaseType:%@|", v17];

    v3 = v18;
  }

  if (([v3 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v19 = [v3 stringByAppendingString:@"|"];

    v3 = v19;
  }

  return v3;
}

@end