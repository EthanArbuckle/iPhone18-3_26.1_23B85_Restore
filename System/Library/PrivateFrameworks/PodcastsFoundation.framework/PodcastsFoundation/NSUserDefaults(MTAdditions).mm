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
  v2 = [MEMORY[0x1E695E000] appUserDefaultsForUnitTesting];

  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] appUserDefaultsForUnitTesting];
  }

  else
  {
    if ([a1 shouldReadSettingsFromSharedUserDefaults])
    {
      [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    }

    else
    {
      [MEMORY[0x1E695E000] standardUserDefaults];
    }
    v3 = ;
  }

  return v3;
}

+ (uint64_t)shouldReadSettingsFromSharedUserDefaults
{
  if ([a1 settingsAppWritesDirectlyToSharedUserDefaults])
  {
    return 1;
  }

  else
  {
    return +[PFClientUtil isPodcastsApp]^ 1;
  }
}

@end