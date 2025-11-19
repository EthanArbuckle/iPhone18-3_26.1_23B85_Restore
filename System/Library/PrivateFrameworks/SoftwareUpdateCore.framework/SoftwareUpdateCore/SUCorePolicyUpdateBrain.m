@interface SUCorePolicyUpdateBrain
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyUpdateBrain)initWithCoder:(id)a3;
- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 usingExtensions:(id)a5;
- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 usingPolicies:(int64_t)a5 usingExtensions:(id)a6;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)selectSoftwareUpdatePrimaryAsset:(id *)a3 secondaryAsset:(id *)a4 fromAssetQuery:(id)a5;
@end

@implementation SUCorePolicyUpdateBrain

- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 usingPolicies:(int64_t)a5 usingExtensions:(id)a6
{
  v10.receiver = self;
  v10.super_class = SUCorePolicyUpdateBrain;
  v6 = [(SUCorePolicy *)&v10 initWithSoftwareUpdateAssetType:a3 documentationAssetType:a4 usingPolicies:a5 usingExtensions:a6];
  v7 = v6;
  if (v6)
  {
    compatibilityVersion = v6->_compatibilityVersion;
    v6->_compatibilityVersion = 0;
  }

  return v7;
}

- (SUCorePolicyUpdateBrain)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 usingExtensions:(id)a5
{
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v9 initWithSoftwareUpdateAssetType:a3 documentationAssetType:a4 usingExtensions:a5];
  v6 = v5;
  if (v5)
  {
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = 0;
  }

  return v6;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D64460];
  v5 = a3;
  v6 = [v4 sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] constructSoftwareUpdateMAAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  v17.receiver = self;
  v17.super_class = SUCorePolicyUpdateBrain;
  v8 = [(SUCorePolicy *)&v17 constructSoftwareUpdateMAAssetQueryWithPurpose:v5];

  v9 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];

  if (v9)
  {
    v10 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
    v11 = [v10 stringValue];
    [v8 addKeyValuePair:@"_CompatibilityVersion" with:v11];
  }

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
    *buf = 138543362;
    v19 = v14;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] querying SU metadata: compatibilityVersion=%{public}@", buf, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)selectSoftwareUpdatePrimaryAsset:(id *)a3 secondaryAsset:(id *)a4 fromAssetQuery:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = self;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] selectSoftwareUpdatePrimaryAsset:secondaryAsset:fromAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  if (a3)
  {
    v10 = [v7 SUCoreBorder_results];
    v11 = [v10 count];
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v12 oslog];

    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v14)
      {
        v15 = [v10 count];
        *buf = 134217984;
        v53 = v15;
        _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %lu SU query results (before filtering)", buf, 0xCu);
      }

      v46 = a3;
      v47 = v7;

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v13 = [(SUCorePolicy *)self policyExtensions];
      v16 = [v13 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v49;
        while (2)
        {
          v19 = 0;
          v20 = v10;
          do
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v21 = *(*(&v48 + 1) + 8 * v19);
            v10 = [v21 filterSoftwareUpdateAssetArray:v20];

            v22 = [MEMORY[0x277D64460] sharedLogger];
            v23 = [v22 oslog];

            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v10 count];
              v25 = [v21 extensionName];
              *buf = 134218242;
              v53 = v24;
              v54 = 2114;
              v55 = v25;
              _os_log_impl(&dword_23193C000, v23, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
            }

            if (![v10 count])
            {
              v43 = [MEMORY[0x277D64460] sharedLogger];
              v44 = [v43 oslog];

              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_23193C000, v44, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] 0 assets found, stopping filtering early", buf, 2u);
              }

              v7 = v47;
              goto LABEL_39;
            }

            ++v19;
            v20 = v10;
          }

          while (v17 != v19);
          v17 = [v13 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v26 = [MEMORY[0x277D64460] sharedLogger];
      v27 = [v26 oslog];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [v10 count];
        *buf = 134217984;
        v53 = v28;
        _os_log_impl(&dword_23193C000, v27, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %lu SU query results (before sorting on mastered version)", buf, 0xCu);
      }

      v13 = [v10 sortedArrayUsingComparator:&__block_literal_global_2];
      v29 = [v13 lastObject];
      v30 = [v29 attributes];
      v31 = [v30 safeStringForKey:@"_MasteredVersion"];

      v32 = [MEMORY[0x277D64460] sharedLogger];
      v33 = [v32 oslog];

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v53 = v31;
        _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] found highestMasteredVersion = %{public}@", buf, 0xCu);
      }

      v34 = [v13 count];
      v35 = [MEMORY[0x277D64460] sharedLogger];
      v36 = [v35 oslog];

      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        v7 = v47;
        if (v37)
        {
          v38 = [v13 count];
          *buf = 134217984;
          v53 = v38;
          _os_log_impl(&dword_23193C000, v36, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] %ld assets found", buf, 0xCu);
        }

        if ([v13 count]>= 2)
        {
          v39 = [MEMORY[0x277D64428] sharedDiag];
          v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"selectSoftwareUpdatePrimaryAsset found %lu assets when 1 was expected", -[NSObject count](v13, "count")];
          [v39 trackAnomaly:@"[POLICY_UPDATE_BRAIN] SELECT_UPDATE_ASSET" forReason:v40 withResult:8409 withError:0];

          v41 = [MEMORY[0x277D64460] sharedLogger];
          v42 = [v41 oslog];

          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v53 = v31;
            _os_log_impl(&dword_23193C000, v42, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] taking the last asset in the asset array, which is the highest mastered version (%{public}@)", buf, 0xCu);
          }
        }

        *v46 = [v13 lastObject];
      }

      else
      {
        v7 = v47;
        if (v37)
        {
          *buf = 0;
          _os_log_impl(&dword_23193C000, v36, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] 0 assets found", buf, 2u);
        }
      }
    }

    else if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY_UPDATE_BRAIN] 0 SU query results (before filtering)", buf, 2u);
    }

LABEL_39:
  }

  else
  {
    v10 = [MEMORY[0x277D64428] sharedDiag];
    [v10 trackError:@"[POLICY_UPDATE_BRAIN] SELECT_UPDATE_ASSET" forReason:@"selectSoftwareUpdatePrimaryAsset called with unexpected nil primaryAsset param" withResult:8102 withError:0];
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

- (SUCorePolicyUpdateBrain)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_CompatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUCorePolicyUpdateBrain;
  v4 = a3;
  [(SUCorePolicy *)&v6 encodeWithCoder:v4];
  v5 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion:v6.receiver];
  [v4 encodeObject:v5 forKey:@"_CompatibilityVersion"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v11.receiver = self;
      v11.super_class = SUCorePolicyUpdateBrain;
      if ([(SUCorePolicy *)&v11 isEqual:v5])
      {
        v6 = MEMORY[0x277D643F8];
        v7 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
        v8 = [(SUCorePolicyUpdateBrain *)v5 compatibilityVersion];
        v9 = [v6 numberIsEqual:v7 to:v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v9 copyWithZone:?];
  v6 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
  v7 = [v6 copyWithZone:a3];
  [v5 setCompatibilityVersion:v7];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
  v8.receiver = self;
  v8.super_class = SUCorePolicyUpdateBrain;
  v5 = [(SUCorePolicy *)&v8 description];
  v6 = [v3 stringWithFormat:@"SUCorePolicyUpdateBrain(compatibilityVersion:%@|super:%@)", v4, v5];

  return v6;
}

- (id)summary
{
  v9.receiver = self;
  v9.super_class = SUCorePolicyUpdateBrain;
  v3 = [(SUCorePolicy *)&v9 summary];
  v4 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];

  if (v4)
  {
    v5 = [(SUCorePolicyUpdateBrain *)self compatibilityVersion];
    v6 = [v3 stringByAppendingFormat:@"|compatibilityVersion=%@", v5];

    v3 = v6;
  }

  if (([v3 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v7 = [v3 stringByAppendingString:@"|"];

    v3 = v7;
  }

  return v3;
}

@end