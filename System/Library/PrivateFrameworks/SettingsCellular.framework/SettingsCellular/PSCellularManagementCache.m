@interface PSCellularManagementCache
+ (id)sharedInstance;
- (BOOL)hasManagedCellularData;
- (BOOL)isGlobalDataModificationRestricted;
- (BOOL)isManaged:(id)a3;
- (NSString)mdmName;
- (PSCellularManagementCache)init;
- (id)initPrivate;
- (id)managedAppBundleIDs;
- (id)managedCellDataAppBundleIDs;
- (void)clearCache;
- (void)managedConfigurationProfileListDidChange;
- (void)managedConfigurationSettingsDidChange;
- (void)willEnterForeground;
@end

@implementation PSCellularManagementCache

+ (id)sharedInstance
{
  if (qword_280F75D00 != -1)
  {
    dispatch_once(&qword_280F75D00, &__block_literal_global);
  }

  v3 = _MergedGlobals_3;

  return v3;
}

uint64_t __43__PSCellularManagementCache_sharedInstance__block_invoke()
{
  _MergedGlobals_3 = [[PSCellularManagementCache alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = PSCellularManagementCache;
  v2 = [(PSCellularManagementCache *)&v9 init];
  v3 = v2;
  if (v2)
  {
    managedCellDataAppCache = v2->_managedCellDataAppCache;
    v2->_managedCellDataAppCache = 0;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v3 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v3 selector:sel_managedConfigurationSettingsDidChange name:*MEMORY[0x277D25CA0] object:0];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel_managedConfigurationProfileListDidChange name:*MEMORY[0x277D26148] object:0];
  }

  return v3;
}

- (PSCellularManagementCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSCellularManagementCache init]";
    _os_log_error_impl(&dword_2658CA000, v2, OS_LOG_TYPE_ERROR, "unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)clearCache
{
  v3 = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Clearing cellular management cache", v4, 2u);
  }

  [(PSCellularManagementCache *)self setManagedCellDataAppCache:0];
}

- (void)willEnterForeground
{
  v3 = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received willEnterForeground notification", v4, 2u);
  }

  [(PSCellularManagementCache *)self clearCache];
}

- (void)managedConfigurationSettingsDidChange
{
  v3 = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received managedConfigurationSettingsDidChange notification", v4, 2u);
  }

  [(PSCellularManagementCache *)self clearCache];
}

- (void)managedConfigurationProfileListDidChange
{
  v3 = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, v3, OS_LOG_TYPE_DEFAULT, "Received managedConfigurationProfileListDidChange notification", v4, 2u);
  }

  [(PSCellularManagementCache *)self clearCache];
}

- (BOOL)isGlobalDataModificationRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25D10]] == 2;

  return v3;
}

- (NSString)mdmName
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 installedProfileWithIdentifier:v3];

  v6 = [v5 friendlyName];

  return v6;
}

- (id)managedAppBundleIDs
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 managedAppIDs];

  return v3;
}

- (id)managedCellDataAppBundleIDs
{
  v2 = self;
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(PSCellularManagementCache *)self managedCellDataAppCache];

  if (!v3)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v2;
    v5 = [(PSCellularManagementCache *)v2 managedAppBundleIDs];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = +[PSAppDataUsagePolicyCache sharedInstance];
          v12 = [v11 policiesFor:v10];
          v13 = [v12 isManaged];

          if (v13)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v2 = v17;
    [(PSCellularManagementCache *)v17 setManagedCellDataAppCache:v4];
  }

  v14 = [(PSCellularManagementCache *)v2 managedCellDataAppCache];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)hasManagedCellularData
{
  v2 = [(PSCellularManagementCache *)self managedCellDataAppBundleIDs];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)isManaged:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PSCellularManagementCache *)self managedCellDataAppBundleIDs];
  v6 = [v5 containsObject:v4];

  v7 = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"is not managed";
    if (v6)
    {
      v8 = @"is managed";
    }

    v11 = 138543618;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2658CA000, v7, OS_LOG_TYPE_INFO, "For %{public}@, policy: %@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end