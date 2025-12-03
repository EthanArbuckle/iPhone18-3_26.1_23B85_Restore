@interface PSCellularManagementCache
+ (id)sharedInstance;
- (BOOL)hasManagedCellularData;
- (BOOL)isGlobalDataModificationRestricted;
- (BOOL)isManaged:(id)managed;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_managedConfigurationSettingsDidChange name:*MEMORY[0x277D25CA0] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_managedConfigurationProfileListDidChange name:*MEMORY[0x277D26148] object:0];
  }

  return v3;
}

- (PSCellularManagementCache)init
{
  v5 = *MEMORY[0x277D85DE8];
  getLogger = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "[PSCellularManagementCache init]";
    _os_log_error_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_ERROR, "unsupported initializer called: %s", &v3, 0xCu);
  }

  objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"Unsupported initializer" reason:@"Unsupported initializer called" userInfo:0]);
}

- (void)clearCache
{
  getLogger = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Clearing cellular management cache", v4, 2u);
  }

  [(PSCellularManagementCache *)self setManagedCellDataAppCache:0];
}

- (void)willEnterForeground
{
  getLogger = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Received willEnterForeground notification", v4, 2u);
  }

  [(PSCellularManagementCache *)self clearCache];
}

- (void)managedConfigurationSettingsDidChange
{
  getLogger = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Received managedConfigurationSettingsDidChange notification", v4, 2u);
  }

  [(PSCellularManagementCache *)self clearCache];
}

- (void)managedConfigurationProfileListDidChange
{
  getLogger = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_DEFAULT, "Received managedConfigurationProfileListDidChange notification", v4, 2u);
  }

  [(PSCellularManagementCache *)self clearCache];
}

- (BOOL)isGlobalDataModificationRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D10]] == 2;

  return v3;
}

- (NSString)mdmName
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [mEMORY[0x277D262A0]2 installedProfileWithIdentifier:installedMDMProfileIdentifier];

  friendlyName = [v5 friendlyName];

  return friendlyName;
}

- (id)managedAppBundleIDs
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managedAppIDs = [mEMORY[0x277D262A0] managedAppIDs];

  return managedAppIDs;
}

- (id)managedCellDataAppBundleIDs
{
  selfCopy = self;
  v23 = *MEMORY[0x277D85DE8];
  managedCellDataAppCache = [(PSCellularManagementCache *)self managedCellDataAppCache];

  if (!managedCellDataAppCache)
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = selfCopy;
    managedAppBundleIDs = [(PSCellularManagementCache *)selfCopy managedAppBundleIDs];
    v6 = [managedAppBundleIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(managedAppBundleIDs);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          v11 = +[PSAppDataUsagePolicyCache sharedInstance];
          v12 = [v11 policiesFor:v10];
          isManaged = [v12 isManaged];

          if (isManaged)
          {
            [v4 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [managedAppBundleIDs countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    selfCopy = v17;
    [(PSCellularManagementCache *)v17 setManagedCellDataAppCache:v4];
  }

  managedCellDataAppCache2 = [(PSCellularManagementCache *)selfCopy managedCellDataAppCache];
  v15 = *MEMORY[0x277D85DE8];

  return managedCellDataAppCache2;
}

- (BOOL)hasManagedCellularData
{
  managedCellDataAppBundleIDs = [(PSCellularManagementCache *)self managedCellDataAppBundleIDs];
  v3 = [managedCellDataAppBundleIDs count] != 0;

  return v3;
}

- (BOOL)isManaged:(id)managed
{
  v15 = *MEMORY[0x277D85DE8];
  managedCopy = managed;
  managedCellDataAppBundleIDs = [(PSCellularManagementCache *)self managedCellDataAppBundleIDs];
  v6 = [managedCellDataAppBundleIDs containsObject:managedCopy];

  getLogger = [(PSCellularManagementCache *)self getLogger];
  if (os_log_type_enabled(getLogger, OS_LOG_TYPE_INFO))
  {
    v8 = @"is not managed";
    if (v6)
    {
      v8 = @"is managed";
    }

    v11 = 138543618;
    v12 = managedCopy;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2658CA000, getLogger, OS_LOG_TYPE_INFO, "For %{public}@, policy: %@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end