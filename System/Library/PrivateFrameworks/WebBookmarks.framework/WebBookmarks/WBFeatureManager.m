@interface WBFeatureManager
+ (WBFeatureManager)sharedFeatureManager;
- (WBFeatureManager)init;
- (void)_updateToAccessLevel:(int64_t)a3;
@end

@implementation WBFeatureManager

+ (WBFeatureManager)sharedFeatureManager
{
  if (sharedFeatureManager_onceToken != -1)
  {
    +[WBFeatureManager sharedFeatureManager];
  }

  v3 = sharedFeatureManager_sharedFeatureManager;

  return v3;
}

uint64_t __40__WBFeatureManager_sharedFeatureManager__block_invoke()
{
  sharedFeatureManager_sharedFeatureManager = objc_alloc_init(WBFeatureManager);

  return MEMORY[0x2821F96F8]();
}

- (WBFeatureManager)init
{
  v8.receiver = self;
  v8.super_class = WBFeatureManager;
  v2 = [(WBFeatureManager *)&v8 init];
  if (v2)
  {
    if (processAccessLevel_onceToken != -1)
    {
      [WBFeatureManager init];
    }

    if (processAccessLevel_accessLevel)
    {
      v3 = 2;
    }

    else if ([MEMORY[0x277D49A08] hasInternalContent])
    {
      keyExistsAndHasValidFormat = 0;
      AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SafariDebugOverrideLaunchMode", *MEMORY[0x277CBF008], &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        v3 = AppIntegerValue;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    v2->_accessLevel = v3;
    [(WBFeatureManager *)v2 _updateToAccessLevel:?];
    v5 = v2;
  }

  return v2;
}

- (void)_updateToAccessLevel:(int64_t)a3
{
  *&self->_offlineReadingListAvailable = 1;
  if (a3 == 1)
  {
    self->_offlineReadingListAvailable = 0;
  }

  else if (a3 == 2)
  {
    self->_favoritesFolderSelectionShouldSync = 1;
  }
}

@end