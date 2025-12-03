@interface NSUserDefaults(MTAdditions)
+ (id)_applePodcastsFoundationSettingsUserDefaults;
+ (id)_applePodcastsFoundationSharedUserDefaults;
+ (uint64_t)shouldReadSettingsFromSharedUserDefaults;
@end

@implementation NSUserDefaults(MTAdditions)

+ (id)_applePodcastsFoundationSharedUserDefaults
{
  if (_applePodcastsFoundationSharedUserDefaults_onceToken != -1)
  {
    +[NSUserDefaults(MTAdditions) _applePodcastsFoundationSharedUserDefaults];
  }

  v1 = _applePodcastsFoundationSharedUserDefaults_defaults;

  return v1;
}

+ (id)_applePodcastsFoundationSettingsUserDefaults
{
  appUserDefaultsForUnitTesting = [MEMORY[0x1E695E000] appUserDefaultsForUnitTesting];

  if (appUserDefaultsForUnitTesting)
  {
    appUserDefaultsForUnitTesting2 = [MEMORY[0x1E695E000] appUserDefaultsForUnitTesting];
  }

  else
  {
    if ([self shouldReadSettingsFromSharedUserDefaults])
    {
      [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    }

    else
    {
      [MEMORY[0x1E695E000] standardUserDefaults];
    }
    appUserDefaultsForUnitTesting2 = ;
  }

  return appUserDefaultsForUnitTesting2;
}

+ (uint64_t)shouldReadSettingsFromSharedUserDefaults
{
  if ([self settingsAppWritesDirectlyToSharedUserDefaults])
  {
    return 1;
  }

  else
  {
    return +[PFClientUtil isPodcastsApp]^ 1;
  }
}

@end