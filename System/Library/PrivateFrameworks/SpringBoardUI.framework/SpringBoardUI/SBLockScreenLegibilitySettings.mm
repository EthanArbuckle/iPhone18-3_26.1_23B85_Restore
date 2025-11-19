@interface SBLockScreenLegibilitySettings
+ (id)defaultSettings;
@end

@implementation SBLockScreenLegibilitySettings

+ (id)defaultSettings
{
  if (defaultSettings_onceToken != -1)
  {
    +[SBLockScreenLegibilitySettings defaultSettings];
  }

  v3 = defaultSettings___DefaultSettings;

  return v3;
}

uint64_t __49__SBLockScreenLegibilitySettings_defaultSettings__block_invoke()
{
  v0 = [[SBLockScreenLegibilitySettings alloc] initWithStyle:2];
  v1 = defaultSettings___DefaultSettings;
  defaultSettings___DefaultSettings = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end