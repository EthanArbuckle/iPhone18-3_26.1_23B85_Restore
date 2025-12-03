@interface PBFWallpaperKitBridge
+ (id)defaultBridge;
- (BOOL)dataMigratorDeterminedLegacyWallpaperMigrationRequired;
- (BOOL)shouldDefaultWallpaperDisableModifyingLegibilityBlur;
- (BOOL)shouldInstallHeroPosterAsDefaultLockScreenWallpaper;
- (NSString)defaultWallpaperIdentifier;
- (void)clearLegacyWallpaperMigrationKeys;
@end

@implementation PBFWallpaperKitBridge

+ (id)defaultBridge
{
  if (defaultBridge_onceToken != -1)
  {
    +[PBFWallpaperKitBridge defaultBridge];
  }

  v3 = defaultBridge_defaultBridge;

  return v3;
}

void __38__PBFWallpaperKitBridge_defaultBridge__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultBridge_defaultBridge;
  defaultBridge_defaultBridge = v0;
}

- (NSString)defaultWallpaperIdentifier
{
  defaultWallpaperManager = [getWKDefaultWallpaperManagerClass() defaultWallpaperManager];
  v3 = defaultWallpaperManager;
  if (defaultWallpaperManager)
  {
    defaultWallpaperBundle = [defaultWallpaperManager defaultWallpaperBundle];
    identifier = [defaultWallpaperBundle identifier];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldInstallHeroPosterAsDefaultLockScreenWallpaper
{
  defaultWallpaperIdentifier = [(PBFWallpaperKitBridge *)self defaultWallpaperIdentifier];
  v3 = [defaultWallpaperIdentifier length];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D37C70]);
    v5 = [v4 lockScreenWallpaperConfigurationIncludingValuesForTypes:0];
    wallpaperType = [v5 wallpaperType];
    v7 = PBFLogMigration();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = wallpaperType == 4;
    if (v9)
    {
      if (v8)
      {
        v14 = 0;
        v10 = "(shouldInstallCollectionsPosterAsDefaultLockScreenWallpaper) Color is set, we migrated, and there's no existing wallpaper - returning YES.";
        v11 = &v14;
LABEL_11:
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else if (v8)
    {
      v13 = 0;
      v10 = "(shouldInstallCollectionsPosterAsDefaultLockScreenWallpaper) A preference has been set, going with legacy wallpaper -- returning NO";
      v11 = &v13;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v4 = PBFLogMigration();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(PBFWallpaperKitBridge *)v4 shouldInstallHeroPosterAsDefaultLockScreenWallpaper];
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (BOOL)dataMigratorDeterminedLegacyWallpaperMigrationRequired
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = PBFLogMigration();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "(dataMigratorDeterminedLegacyWallpaperMigrationRequired) Detecting if we need to do a data update", &v11, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
  v4 = [v3 objectForKey:@"SBLegacyWallpaperMigrationNeeded"];
  v5 = PBFLogMigration();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(dataMigratorDeterminedLegacyWallpaperMigrationRequired) springBoardIndicatedDataStoreMigrationNeeded: (%{public}@)", &v11, 0xCu);
  }

  if (v4 && (objc_opt_self(), v6 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v9 = PBFLogMigration();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "(dataMigratorDeterminedLegacyWallpaperMigrationRequired) springBoardIndicatedDataStoreMigrationNeeded was invalid (%{public}@); nothing to do.", &v11, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)clearLegacyWallpaperMigrationKeys
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
  [v2 removeObjectForKey:@"SBLegacyWallpaperMigrationNeeded"];
}

- (BOOL)shouldDefaultWallpaperDisableModifyingLegibilityBlur
{
  defaultWallpaperManager = [getWKDefaultWallpaperManagerClass() defaultWallpaperManager];
  v3 = defaultWallpaperManager;
  if (defaultWallpaperManager)
  {
    defaultWallpaperBundle = [defaultWallpaperManager defaultWallpaperBundle];
    disableModifyingLegibilityBlur = [defaultWallpaperBundle disableModifyingLegibilityBlur];
  }

  else
  {
    disableModifyingLegibilityBlur = 0;
  }

  return disableModifyingLegibilityBlur;
}

@end