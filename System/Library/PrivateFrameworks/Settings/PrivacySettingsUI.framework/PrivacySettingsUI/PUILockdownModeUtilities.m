@interface PUILockdownModeUtilities
+ (BOOL)getCanShowLockdownMode;
+ (BOOL)isCaptivePortalModeIgnoredForContainerPath:(id)a3;
+ (BOOL)isLockdownModeEnabled;
+ (BOOL)isLockdownModeEnabledInAccount;
@end

@implementation PUILockdownModeUtilities

+ (BOOL)getCanShowLockdownMode
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getUMUserManagerClass_softClass;
  v11 = getUMUserManagerClass_softClass;
  if (!getUMUserManagerClass_softClass)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __getUMUserManagerClass_block_invoke;
    v7[3] = &unk_279BA0D08;
    v7[4] = &v8;
    __getUMUserManagerClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = [v2 sharedManager];
  v5 = [v4 isSharedIPad];

  return v5 ^ 1;
}

+ (BOOL)isLockdownModeEnabled
{
  v2 = [getLockdownModeManagerClass() shared];
  v3 = [v2 enabled];

  return v3;
}

+ (BOOL)isLockdownModeEnabledInAccount
{
  v2 = [getLockdownModeManagerClass() shared];
  v3 = [v2 enabledInAccount];

  return v3;
}

+ (BOOL)isCaptivePortalModeIgnoredForContainerPath:(id)a3
{
  v3 = a3;
  v4 = [get_WKSystemPreferencesClass() isCaptivePortalModeIgnored:v3];

  return v4;
}

@end