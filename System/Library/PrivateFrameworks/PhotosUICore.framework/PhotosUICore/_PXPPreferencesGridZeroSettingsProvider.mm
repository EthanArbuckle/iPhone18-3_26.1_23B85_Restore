@interface _PXPPreferencesGridZeroSettingsProvider
- (BOOL)isStacksEnabled;
- (_PXPPreferencesGridZeroSettingsProvider)init;
- (void)dealloc;
- (void)preferencesDidChange;
@end

@implementation _PXPPreferencesGridZeroSettingsProvider

- (_PXPPreferencesGridZeroSettingsProvider)init
{
  v5.receiver = self;
  v5.super_class = _PXPPreferencesGridZeroSettingsProvider;
  v2 = [(_PXPPreferencesGridZeroSettingsProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    PXRegisterPreferencesObserver(v2);
  }

  return v3;
}

- (void)preferencesDidChange
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*off_1E7722060 object:0];
}

- (BOOL)isStacksEnabled
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StacksEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    v2 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

- (void)dealloc
{
  PXUnregisterPreferencesObserver(self);
  v3.receiver = self;
  v3.super_class = _PXPPreferencesGridZeroSettingsProvider;
  [(_PXPPreferencesGridZeroSettingsProvider *)&v3 dealloc];
}

@end