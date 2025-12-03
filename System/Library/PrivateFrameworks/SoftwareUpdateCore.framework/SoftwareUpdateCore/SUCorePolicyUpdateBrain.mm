@interface SUCorePolicyUpdateBrain
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyUpdateBrain)initWithCoder:(id)coder;
- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType usingExtensions:(id)extensions;
- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType usingPolicies:(int64_t)policies usingExtensions:(id)extensions;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)selectSoftwareUpdatePrimaryAsset:(id *)asset secondaryAsset:(id *)secondaryAsset fromAssetQuery:(id)query;
@end

@implementation SUCorePolicyUpdateBrain

- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType usingPolicies:(int64_t)policies usingExtensions:(id)extensions
{
  v10.receiver = self;
  v10.super_class = SUCorePolicyUpdateBrain;
  v6 = [(SUCorePolicy *)&v10 initWithSoftwareUpdateAssetType:type documentationAssetType:assetType usingPolicies:policies usingExtensions:extensions];
  v7 = v6;
  if (v6)
  {
    compatibilityVersion = v6->_compatibilityVersion;
    v6->_compatibilityVersion = 0;
  }

  return v7;
}

- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType usingExtensions:(id)extensions
{
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v9 initWithSoftwareUpdateAssetType:type documentationAssetType:assetType usingExtensions:extensions];
  v6 = v5;
  if (v5)
  {
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = 0;
  }

  return v6;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D64460];
  purposeCopy = purpose;
  sharedLogger = [v4 sharedLogger];
  oslog = [sharedLogger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] constructSoftwareUpdateMAAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = SUCorePolicyUpdateBrain;
  v8 = [(SUCorePolicy *)&v17 constructSoftwareUpdateMAAssetQueryWithPurpose:purposeCopy];

  compatibilityVersion = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];

  if (compatibilityVersion)
  {
    compatibilityVersion2 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
    stringValue = [compatibilityVersion2 stringValue];
    [v8 addKeyValuePair:@"_CompatibilityVersion" with:stringValue];
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    compatibilityVersion3 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
    *buf = 138543362;
    selfCopy = compatibilityVersion3;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] querying SU metadata: compatibilityVersion=%{public}@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)selectSoftwareUpdatePrimaryAsset:(id *)asset secondaryAsset:(id *)secondaryAsset fromAssetQuery:(id)query
{
  v57 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] selectSoftwareUpdatePrimaryAsset:secondaryAsset:fromAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  if (asset)
  {
    sUCoreBorder_results = [queryCopy SUCoreBorder_results];
    v11 = [sUCoreBorder_results count];
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    v14 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v15 = [sUCoreBorder_results count];
        *buf = 134217984;
        selfCopy = v15;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %lu SU query results (before filtering)", buf, 0xCu);
      }

      assetCopy = asset;
      v47 = queryCopy;

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      oslog2 = [(SUCorePolicy *)self policyExtensions];
      v16 = [oslog2 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v49;
        while (2)
        {
          v19 = 0;
          v20 = sUCoreBorder_results;
          do
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(oslog2);
            }

            v21 = *(*(&v48 + 1) + 8 * v19);
            sUCoreBorder_results = [v21 filterSoftwareUpdateAssetArray:v20];

            mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
            oslog3 = [mEMORY[0x277D64460]3 oslog];

            if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [sUCoreBorder_results count];
              extensionName = [v21 extensionName];
              *buf = 134218242;
              selfCopy = v24;
              v54 = 2114;
              v55 = extensionName;
              _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
            }

            if (![sUCoreBorder_results count])
            {
              mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
              oslog4 = [mEMORY[0x277D64460]4 oslog];

              if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] 0 assets found, stopping filtering early", buf, 2u);
              }

              queryCopy = v47;
              goto LABEL_39;
            }

            ++v19;
            v20 = sUCoreBorder_results;
          }

          while (v17 != v19);
          v17 = [oslog2 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog5 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [sUCoreBorder_results count];
        *buf = 134217984;
        selfCopy = v28;
        _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %lu SU query results (before sorting on mastered version)", buf, 0xCu);
      }

      oslog2 = [sUCoreBorder_results sortedArrayUsingComparator:&__block_literal_global_2];
      lastObject = [oslog2 lastObject];
      attributes = [lastObject attributes];
      v31 = [attributes safeStringForKey:@"_MasteredVersion"];

      mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
      oslog6 = [mEMORY[0x277D64460]6 oslog];

      if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = v31;
        _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] found highestMasteredVersion = %{public}@", buf, 0xCu);
      }

      v34 = [oslog2 count];
      mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
      oslog7 = [mEMORY[0x277D64460]7 oslog];

      v37 = os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        queryCopy = v47;
        if (v37)
        {
          v38 = [oslog2 count];
          *buf = 134217984;
          selfCopy = v38;
          _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %ld assets found", buf, 0xCu);
        }

        if ([oslog2 count]>= 2)
        {
          mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
          v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"selectSoftwareUpdatePrimaryAsset found %lu assets when 1 was expected", -[NSObject count](oslog2, "count")];
          [mEMORY[0x277D64428] trackAnomaly:@"[POLICY_UPDATE_BRAIN] SELECT_UPDATE_ASSET" forReason:v40 withResult:8409 withError:0];

          mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
          oslog8 = [mEMORY[0x277D64460]8 oslog];

          if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy = v31;
            _os_log_impl(&dword_23193C000, oslog8, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] taking the last asset in the asset array, which is the highest mastered version (%{public}@)", buf, 0xCu);
          }
        }

        *assetCopy = [oslog2 lastObject];
      }

      else
      {
        queryCopy = v47;
        if (v37)
        {
          *buf = 0;
          _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] 0 assets found", buf, 2u);
        }
      }
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] 0 SU query results (before filtering)", buf, 2u);
    }

LABEL_39:
  }

  else
  {
    sUCoreBorder_results = [MEMORY[0x277D64428] sharedDiag];
    [sUCoreBorder_results trackError:@"[POLICY_UPDATE_BRAIN] SELECT_UPDATE_ASSET" forReason:@"selectSoftwareUpdatePrimaryAsset called with unexpected nil primaryAsset param" withResult:8102 withError:0];
  }

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __90__SUCorePolicyUpdateBrain_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 safeStringForKey:@"_MasteredVersion"];
  v7 = [v4 attributes];

  v8 = [v7 safeStringForKey:@"_MasteredVersion"];
  v9 = [v6 compare:v8 options:64];

  return v9;
}

- (SUCorePolicyUpdateBrain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_CompatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SUCorePolicyUpdateBrain;
  coderCopy = coder;
  [(SUCorePolicy *)&v6 encodeWithCoder:coderCopy];
  v5 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"_CompatibilityVersion"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v11.receiver = self;
      v11.super_class = SUCorePolicyUpdateBrain;
      if ([(SUCorePolicy *)&v11 isEqual:v5])
      {
        v6 = MEMORY[0x277D643F8];
        compatibilityVersion = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
        compatibilityVersion2 = [(SUCorePolicyUpdateBrain *)v5 compatibilityVersion];
        v9 = [v6 numberIsEqual:compatibilityVersion to:compatibilityVersion2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v9 copyWithZone:?];
  compatibilityVersion = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
  v7 = [compatibilityVersion copyWithZone:zone];
  [v5 setCompatibilityVersion:v7];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  compatibilityVersion = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
  v8.receiver = self;
  v8.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v8 description];
  v6 = [v3 stringWithFormat:@"SUCorePolicyUpdateBrain(compatibilityVersion:%@|super:%@)", compatibilityVersion, v5];

  return v6;
}

- (id)summary
{
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  summary = [(SUCorePolicy *)&v9 summary];
  compatibilityVersion = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];

  if (compatibilityVersion)
  {
    compatibilityVersion2 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
    v6 = [summary stringByAppendingFormat:@"|compatibilityVersion=%@", compatibilityVersion2];

    summary = v6;
  }

  if (([summary isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v7 = [summary stringByAppendingString:@"|"];

    summary = v7;
  }

  return summary;
}

@end