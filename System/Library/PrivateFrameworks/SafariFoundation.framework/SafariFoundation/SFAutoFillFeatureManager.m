@interface SFAutoFillFeatureManager
+ (BOOL)defaultValueForPasswordAndCreditCardAutoFill;
+ (SFAutoFillFeatureManager)sharedFeatureManager;
+ (__CFString)autoFillPreferencesDomain;
+ (id)_syncManager;
+ (void)autoFillPreferencesDidChange;
- (BOOL)isUserAllowedToTogglePasswordAutoFillEnabledState;
- (BOOL)shouldAutoFillPasswordsFromKeychain;
- (BOOL)userIsEligibleForPasskeys;
- (BOOL)userIsEligibleForPasskeysWithICloudKeychain;
- (SFAutoFillFeatureManager)init;
- (id)_getBundleRecordIdentifierWithString:(id)a3;
- (id)_getVerificationCodeProviderBundleIdentifier;
- (void)_refreshCachedAutoFillRestrictionValues;
- (void)dealloc;
- (void)reportPasswordAutoFillProviderTelemetry;
- (void)setShouldAutoFillPasswordsFromKeychain:(BOOL)a3;
@end

@implementation SFAutoFillFeatureManager

+ (SFAutoFillFeatureManager)sharedFeatureManager
{
  if (sharedFeatureManager_onceToken != -1)
  {
    +[SFAutoFillFeatureManager sharedFeatureManager];
  }

  v3 = sharedFeatureManager_sharedObserver;

  return v3;
}

uint64_t __48__SFAutoFillFeatureManager_sharedFeatureManager__block_invoke()
{
  sharedFeatureManager_sharedObserver = objc_alloc_init(SFAutoFillFeatureManager);

  return MEMORY[0x2821F96F8]();
}

- (SFAutoFillFeatureManager)init
{
  v7.receiver = self;
  v7.super_class = SFAutoFillFeatureManager;
  v2 = [(SFAutoFillFeatureManager *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D262A0] sharedConnection];
    if (objc_opt_respondsToSelector())
    {
      [v3 registerObserver:v2];
    }

    else
    {
      [v3 addObserver:v2];
    }

    [(SFAutoFillFeatureManager *)v2 _refreshCachedAutoFillRestrictionValues];
    [(SFAutoFillFeatureManager *)v2 _refreshCachedIsPasswordsAppInstalled];
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 addObserver:v2 selector:sel__refreshCachedIsPasswordsAppInstalled name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v4 addObserver:v2 selector:sel__refreshCachedIsPasswordsAppInstalled name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    [v3 unregisterObserver:self];
  }

  else
  {
    [v3 removeObserver:self];
  }

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SFAutoFillFeatureManager;
  [(SFAutoFillFeatureManager *)&v5 dealloc];
}

+ (id)_syncManager
{
  v2 = _syncManager_syncManager;
  if (!_syncManager_syncManager)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getNPSManagerClass_softClass;
    v12 = getNPSManagerClass_softClass;
    if (!getNPSManagerClass_softClass)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getNPSManagerClass_block_invoke;
      v8[3] = &unk_279B61628;
      v8[4] = &v9;
      __getNPSManagerClass_block_invoke(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    v5 = objc_alloc_init(v3);
    v6 = _syncManager_syncManager;
    _syncManager_syncManager = v5;

    v2 = _syncManager_syncManager;
  }

  return v2;
}

+ (void)autoFillPreferencesDidChange
{
  CFPreferencesAppSynchronize([a1 autoFillPreferencesDomain]);
  v4 = [a1 _syncManager];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"AutoFillPasswords", @"AutoFillFromAddressBook", 0}];
  [v4 synchronizeUserDefaultsDomain:@"com.apple.WebUI" keys:v3];
}

- (BOOL)userIsEligibleForPasskeys
{
  overrideUserIsEligibleForPasskeys = self->_overrideUserIsEligibleForPasskeys;
  if (overrideUserIsEligibleForPasskeys)
  {

    return [(NSNumber *)overrideUserIsEligibleForPasskeys BOOLValue];
  }

  else
  {
    v5 = +[SFCredentialProviderExtensionManager sharedManager];
    v6 = [v5 atLeastOneEnabledExtensionSupportsPasskeys];

    if (v6)
    {
      return 1;
    }

    else
    {

      return [(SFAutoFillFeatureManager *)self userIsEligibleForPasskeysWithICloudKeychain];
    }
  }
}

- (BOOL)userIsEligibleForPasskeysWithICloudKeychain
{
  v2 = +[SFAutoFillFeatureManager sharedFeatureManager];
  v3 = [v2 shouldAutoFillPasswordsFromKeychain];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D49A50] sharedMonitor];
  v5 = [v4 isKeychainSyncEnabled];

  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x277D499F0] currentDevice];
  v7 = [v6 hasPasscode];

  return v7;
}

- (BOOL)shouldAutoFillPasswordsFromKeychain
{
  if (self->_shouldOverrideShouldAutoFillFromKeychain)
  {
    LOBYTE(self) = self->_overrideShouldAutoFillFromKeychainValue;
  }

  else if (self->_cachedIsPasswordsAppInstalled && self->_cachedAutoFillRestrictionValue != 2)
  {
    LODWORD(self) = [(SFAutoFillFeatureManager *)self shouldAutoFillPasswords];
    if (self)
    {
      keyExistsAndHasValidFormat = 0;
      v3 = [objc_opt_class() autoFillPreferencesDomain];
      LODWORD(self) = CFPreferencesGetAppBooleanValue(@"AutoFillPasswords", v3, &keyExistsAndHasValidFormat);
      if (keyExistsAndHasValidFormat)
      {
        LOBYTE(self) = self != 0;
      }

      else
      {
        LOBYTE(self) = [objc_opt_class() defaultValueForPasswordAndCreditCardAutoFill];
      }
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self & 1;
}

- (void)setShouldAutoFillPasswordsFromKeychain:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"AutoFillPasswords", *v3, +[SFAutoFillFeatureManager autoFillPreferencesDomain]);

  +[SFAutoFillFeatureManager autoFillPreferencesDidChange];
}

- (BOOL)isUserAllowedToTogglePasswordAutoFillEnabledState
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 BOOLRestrictionForFeature:*MEMORY[0x277D26000]] == 0;

  return v3;
}

+ (BOOL)defaultValueForPasswordAndCreditCardAutoFill
{
  if (isUsingEducationMode_onceToken != -1)
  {
    +[SFAutoFillFeatureManager defaultValueForPasswordAndCreditCardAutoFill];
  }

  return (isUsingEducationMode_usingEducationMode & 1) != 0 || CFPreferencesGetAppBooleanValue(@"DefaultValueForPasswordAndCreditCardAutoFill", +[SFAutoFillFeatureManager autoFillPreferencesDomain], 0) != 0;
}

+ (__CFString)autoFillPreferencesDomain
{
  if (autoFillPreferencesDomain_onceToken != -1)
  {
    +[SFAutoFillFeatureManager autoFillPreferencesDomain];
  }

  return autoFillPreferencesDomain_sAutoFillPreferenceDomain;
}

uint64_t __53__SFAutoFillFeatureManager_autoFillPreferencesDomain__block_invoke()
{
  result = CPCopySharedResourcesPreferencesDomainForDomain();
  autoFillPreferencesDomain_sAutoFillPreferenceDomain = result;
  return result;
}

- (void)_refreshCachedAutoFillRestrictionValues
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  self->_cachedAutoFillRestrictionValue = [v3 BOOLRestrictionForFeature:*MEMORY[0x277D26030]];
  self->_cachedPasswordAutoFillEffectiveValue = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D26000]];
}

- (id)_getBundleRecordIdentifierWithString:(id)a3
{
  v3 = MEMORY[0x277CC1E98];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];

  v15 = 0;
  v7 = [v5 initWithURL:v6 error:&v15];
  v8 = v15;

  v9 = [v7 bundleRecord];
  v10 = [v9 bundleIdentifier];
  v11 = [v10 length];

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    if (v8)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXAutoFill();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(SFAutoFillFeatureManager *)v13 _getBundleRecordIdentifierWithString:v8];
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)_getVerificationCodeProviderBundleIdentifier
{
  v3 = [(SFAutoFillFeatureManager *)self _getBundleRecordIdentifierWithString:@"otpauth://abc"];
  v4 = [(SFAutoFillFeatureManager *)self _getBundleRecordIdentifierWithString:@"otpauth-migration://abc"];
  v5 = [v3 bundleIdentifier];
  v6 = *MEMORY[0x277D49CC0];
  if ([v5 isEqualToString:*MEMORY[0x277D49CC0]])
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {

LABEL_8:
    v10 = v3;
    goto LABEL_10;
  }

  v8 = [v4 bundleIdentifier];
  v9 = [v8 isEqualToString:v6];

  if (v9)
  {
    goto LABEL_8;
  }

  v10 = v4;
LABEL_10:
  v11 = [v10 bundleIdentifier];

  return v11;
}

- (void)reportPasswordAutoFillProviderTelemetry
{
  v3 = +[SFCredentialProviderExtensionManager sharedManager];
  v4 = [v3 getEnabledExtensionsSynchronously];
  v5 = [v4 count] != 0;

  v6 = [MEMORY[0x277D499B8] sharedLogger];
  [v6 reportIsUsingPasswordsApp:-[SFAutoFillFeatureManager shouldAutoFillPasswordsFromKeychain](self isUsingCredentialProviderExtension:{"shouldAutoFillPasswordsFromKeychain"), v5}];

  v8 = [MEMORY[0x277D499B8] sharedLogger];
  v7 = [(SFAutoFillFeatureManager *)self _getVerificationCodeProviderBundleIdentifier];
  [v8 reportVerificationCodeProvider:v7];
}

- (void)_getBundleRecordIdentifierWithString:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_26450F000, v3, OS_LOG_TYPE_ERROR, "Verification Code bundle identifier does not exist, error: %@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end