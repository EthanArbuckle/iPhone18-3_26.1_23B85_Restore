@interface MBSettingsContext
+ (id)defaultSettingsContext;
- (MBSettingsContext)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MBSettingsContext

+ (id)defaultSettingsContext
{
  v2 = objc_alloc_init(MBSettingsContext);

  return v2;
}

- (MBSettingsContext)init
{
  v11.receiver = self;
  v11.super_class = MBSettingsContext;
  v2 = [(MBSettingsContext *)&v11 init];
  if (v2)
  {
    v3 = [MBMobileInstallation alloc];
    v4 = [(MBMobileInstallation *)v3 initWithSafeHarborDir:kMBSafeHarborDir];
    mobileInstallation = v2->_mobileInstallation;
    v2->_mobileInstallation = v4;

    v6 = CFPreferencesCopyValue(@"SafeHarborExpirationPeriod", @"com.apple.MobileBackup", kMBMobileUserName, kCFPreferencesAnyHost);
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      v9 = v8;
    }

    else
    {
      MBIsInternalInstall();
      v9 = 0x4143C68000000000;
    }

    *&v2->_safeHarborExpiration = v9;
    v2->_backupPolicy = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMobileInstallation:self->_mobileInstallation];
  [v4 setSafeHarborExpiration:self->_safeHarborExpiration];
  [v4 setShouldPreserveSettings:self->_shouldPreserveSettings];
  [v4 setBackupPolicy:self->_backupPolicy];
  return v4;
}

@end