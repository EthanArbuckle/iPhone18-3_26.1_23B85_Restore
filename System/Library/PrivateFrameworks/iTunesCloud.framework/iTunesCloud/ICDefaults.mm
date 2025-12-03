@interface ICDefaults
+ (ICDefaults)standardDefaults;
- (BOOL)_shouldSpoofIPadRequestProperties;
- (BOOL)_shouldSpoofIPhoneRequestProperties;
- (BOOL)allowLowAffinityRecommendations;
- (BOOL)automaticDownloadsEnabled;
- (BOOL)bypassBagSanityChecks;
- (BOOL)enableMultipathTCP;
- (BOOL)isExplicitContentAllowedForCurrentYear;
- (BOOL)isExplicitContentAllowedForExpirationYear;
- (BOOL)isGrazingPathEnabled;
- (BOOL)isLegacyStoreCacheBusterEnabled;
- (BOOL)isPrivacyAcknowledgementDisabledForMusic;
- (BOOL)presetsFound;
- (BOOL)shouldAllowUntrustedHosts;
- (BOOL)shouldBypassURLBagCache;
- (BOOL)shouldForceLibraryRecommendationAnalysis;
- (BOOL)shouldForcePrivacyAcknowledgementRequiredForMusic;
- (BOOL)shouldForceServerToUseDAAPDebugFeature;
- (BOOL)shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff;
- (BOOL)shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync;
- (BOOL)shouldForceSilentAuthentications;
- (BOOL)shouldForceWatchInitialSyncCompletion;
- (BOOL)shouldForceiPhoneBehaviors;
- (BOOL)shouldReduceLibraryRecommendationsXPCInterval;
- (BOOL)shouldRunAgeVerification;
- (BOOL)shouldTreatFavoritingEntityRequestAsFailed;
- (BOOL)shouldTreatInitialSagaImportAsFailed;
- (BOOL)shouldTreatSagaAddComputerCallAsFailed;
- (BOOL)shouldTreatSubscriptionStatusAsExpired;
- (BOOL)shouldTreatSubscriptionStatusCheckAsIncomplete;
- (BOOL)socialProfileSupported;
- (ICAuthServiceClientTokenProviderDebugConfiguration)debugFetchConfiguration;
- (ICAuthServiceClientTokenProviderDebugConfiguration)debugRefreshConfiguration;
- (ICDefaults)init;
- (NSDate)ageVerificationExpirationDate;
- (NSDate)lastAllowedInteractiveAuthenticationTime;
- (NSDictionary)accountNotificationsNewMusicDictionary;
- (NSDictionary)accountNotificationsShowInLibraryDictionary;
- (NSDictionary)authServiceClientTokenCache;
- (NSDictionary)cachedHomeProperties;
- (NSDictionary)cachedMusicUserTokens;
- (NSDictionary)cachedSubscriptionStatus;
- (NSDictionary)lastCookieHeadersForRevokingMusicUserTokens;
- (NSDictionary)lastKnownLocalStoreAccountProperties;
- (NSDictionary)lastKnownSubscriptionStatusBaseCacheKey;
- (NSDictionary)mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates;
- (NSDictionary)pushNotificationState;
- (NSDictionary)sagaPushNotificationTimes;
- (NSNumber)authServiceClientTokenTimeToLive;
- (NSNumber)batteryLevelOverride;
- (NSNumber)chargingStateOverride;
- (NSNumber)deviceClassOverride;
- (NSNumber)fairPlayDeviceTypeOverride;
- (NSNumber)lastActiveAccountDSID;
- (NSNumber)networkLinkQualityOverride;
- (NSNumber)networkTypeOverride;
- (NSNumber)requestTimeoutOverride;
- (NSNumber)secureKeyRenewalTimeOverride;
- (NSString)defaultStoreFront;
- (NSString)deviceModelOverride;
- (NSString)hardwarePlatformOverride;
- (NSString)lastKnownHouseholdID;
- (NSString)productPlatformOverride;
- (NSString)productVersionOverride;
- (double)lastAuthenticationDialogResponseTime;
- (id)_musicUserDefaults;
- (void)_setOrRemoveInternalDefaultsObject:(id)object forKey:(id)key;
- (void)_setOrRemoveObject:(id)object forKey:(id)key;
- (void)addDebugConfiguration:(id)configuration;
- (void)clearAllPresets;
- (void)clearShouldForceServerToUseDAAPDebugFeatures;
- (void)deleteAutomaticDownloadsKey;
- (void)setAgeVerificationExpirationDate:(id)date;
- (void)setAutomaticDownloadsEnabled:(BOOL)enabled;
- (void)setExplicitContentAllowedForCurrentYear:(BOOL)year;
- (void)setExplicitContentAllowedForExpirationYear:(BOOL)year;
- (void)setIgnoreExtendedCertificateValidation:(BOOL)validation;
- (void)setLastAuthenticationDialogResponseTime:(double)time;
- (void)setPrefetchKeyIdentifiers:(id)identifiers;
- (void)setShouldForcePrivacyAcknowledgementRequiredForMusic:(BOOL)music;
- (void)setShouldRunAgeVerification:(BOOL)verification;
- (void)setSocialProfileSupported:(BOOL)supported;
- (void)synchronize;
@end

@implementation ICDefaults

+ (ICDefaults)standardDefaults
{
  if (standardDefaults_sOnceToken != -1)
  {
    dispatch_once(&standardDefaults_sOnceToken, &__block_literal_global_27796);
  }

  v3 = standardDefaults_sSharedInstance;

  return v3;
}

uint64_t __30__ICDefaults_standardDefaults__block_invoke()
{
  standardDefaults_sSharedInstance = objc_alloc_init(ICDefaults);

  return MEMORY[0x1EEE66BB8]();
}

- (ICDefaults)init
{
  v11.receiver = self;
  v11.super_class = ICDefaults;
  v2 = [(ICDefaults *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.itunescloud"];
    userDefaults = v3->_userDefaults;
    v3->_userDefaults = v4;

    v6 = +[ICDeviceInfo currentDeviceInfo];
    isInternalBuild = [v6 isInternalBuild];

    if (isInternalBuild)
    {
      v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.itunescloud.internal"];
      internalDefaults = v3->_internalDefaults;
      v3->_internalDefaults = v8;
    }

    [(NSUserDefaults *)v3->_userDefaults removeObjectForKey:@"ICDefaultsCachedSubscriptionStatusIsValid"];
  }

  return v3;
}

- (NSNumber)chargingStateOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults objectForKey:@"ICDefaultsKeyChargingStateOverride"];

  if (_NSIsNSNumber())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)batteryLevelOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults objectForKey:@"ICDefaultsKeyBatteryLevelOverride"];

  if (_NSIsNSNumber())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)networkTypeOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults objectForKey:@"ICDefaultsKeyNetworkTypeOverride"];

  if (_NSIsNSNumber())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)lastKnownLocalStoreAccountProperties
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastKnownLocalStoreAccountProperties"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)networkLinkQualityOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults objectForKey:@"ICDefaultsKeyNetworkLinkQualityOverride"];

  if (_NSIsNSNumber())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)lastKnownSubscriptionStatusBaseCacheKey
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastKnownSubscriptionStatusBaseCacheKey"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldSpoofIPhoneRequestProperties
{
  internalDefaults = [(ICDefaults *)self internalDefaults];

  if (!internalDefaults)
  {
    return 0;
  }

  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v5 = [internalDefaults2 BOOLForKey:@"ICDefaultsKeySpoofIPhone"];

  return v5;
}

- (NSString)productPlatformOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v4 = [internalDefaults objectForKey:@"ICDefaultsKeyProductPlatformOverride"];

  if (_NSIsNSString())
  {
    v5 = v4;
  }

  else
  {
    v5 = @"iOS";
    if (![(ICDefaults *)self _shouldSpoofIPhoneRequestProperties]&& ![(ICDefaults *)self _shouldSpoofIPadRequestProperties])
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_shouldSpoofIPadRequestProperties
{
  internalDefaults = [(ICDefaults *)self internalDefaults];

  if (!internalDefaults)
  {
    return 0;
  }

  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v5 = [internalDefaults2 BOOLForKey:@"ICDefaultsKeySpoofIPad"];

  return v5;
}

- (BOOL)shouldBypassURLBagCache
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyShouldBypassURLBagCache"];

  return v3;
}

- (void)synchronize
{
  [(NSUserDefaults *)self->_userDefaults synchronize];
  internalDefaults = [(ICDefaults *)self internalDefaults];
  [internalDefaults synchronize];
}

- (NSDictionary)cachedSubscriptionStatus
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsCachedSubscriptionStatus"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isPrivacyAcknowledgementDisabledForMusic
{
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  v3 = [_musicUserDefaults BOOLForKey:@"suppressPrivacyWelcomeScreen"];

  return v3;
}

- (id)_musicUserDefaults
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_musicUserDefaults)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v5 = [bundleIdentifier isEqualToString:@"com.apple.Music"];

    if (v5)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    else
    {
      standardUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Music"];
    }

    musicUserDefaults = self->_musicUserDefaults;
    self->_musicUserDefaults = standardUserDefaults;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = self->_musicUserDefaults;

  return v8;
}

- (BOOL)shouldForcePrivacyAcknowledgementRequiredForMusic
{
  internalDefaults = [(ICDefaults *)self internalDefaults];

  if (!internalDefaults)
  {
    return 0;
  }

  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v5 = [internalDefaults2 BOOLForKey:@"ICInternalDefaultsKeyShouldForcePrivacyAcknowledgementRequiredForMusic"];

  return v5;
}

- (NSString)productVersionOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v4 = [internalDefaults objectForKey:@"ICDefaultsKeyProductVersionOverride"];

  if (_NSIsNSString())
  {
    productVersion = v4;
LABEL_6:
    v6 = productVersion;
    goto LABEL_7;
  }

  if ([(ICDefaults *)self _shouldSpoofIPhoneRequestProperties]|| [(ICDefaults *)self _shouldSpoofIPadRequestProperties])
  {
    productVersion = [MEMORY[0x1E698C8A8] productVersion];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSString)deviceModelOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v4 = [internalDefaults objectForKey:@"ICDefaultsKeyDeviceModelOverride"];

  if (_NSIsNSString())
  {
    v5 = v4;
LABEL_8:
    v8 = v5;
    goto LABEL_9;
  }

  if ([(ICDefaults *)self _shouldSpoofIPhoneRequestProperties])
  {
    v6 = @"iPhone";
    v7 = @"12,3";
LABEL_7:
    v5 = [(__CFString *)v6 stringByAppendingString:v7];
    goto LABEL_8;
  }

  if ([(ICDefaults *)self _shouldSpoofIPadRequestProperties])
  {
    v6 = @"iPad";
    v7 = @"8,12";
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSString)hardwarePlatformOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v4 = [internalDefaults objectForKey:@"ICDefaultsKeyHardwarePlatformOverride"];

  if (_NSIsNSString())
  {
    v5 = v4;
  }

  else if ([(ICDefaults *)self _shouldSpoofIPhoneRequestProperties])
  {
    v5 = @"t8030";
  }

  else if ([(ICDefaults *)self _shouldSpoofIPadRequestProperties])
  {
    v5 = @"t8027";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)deviceClassOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v4 = [internalDefaults objectForKey:@"ICDefaultsKeyDeviceClassOverride"];

  if (_NSIsNSNumber())
  {
    v5 = v4;
  }

  else if ([(ICDefaults *)self _shouldSpoofIPhoneRequestProperties])
  {
    v5 = &unk_1F2C92278;
  }

  else if ([(ICDefaults *)self _shouldSpoofIPadRequestProperties])
  {
    v5 = &unk_1F2C92290;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)fairPlayDeviceTypeOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults objectForKey:@"ICDefaultsKeyFairPlayDeviceTypeOverride"];

  if (_NSIsNSNumber())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearShouldForceServerToUseDAAPDebugFeatures
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  [internalDefaults removeObjectForKey:@"ICInternalDefaultsKeyForceResetSyncRequiredResponseFromCloudLibrary"];

  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  [internalDefaults2 removeObjectForKey:@"ICInternalDefaultsKeyForceBackoffResponseFromCloudLibrary"];
}

- (BOOL)isLegacyStoreCacheBusterEnabled
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  isInternalBuild = [v2 isInternalBuild];

  return isInternalBuild && CFPreferencesGetAppBooleanValue(@"ISCacheBuster", @"com.apple.itunesstored", 0) != 0;
}

- (NSNumber)requestTimeoutOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  if (internalDefaults)
  {
    internalDefaults2 = [(ICDefaults *)self internalDefaults];
    v5 = [internalDefaults2 objectForKey:@"ICInternalDefaultsKeyRequestTimeoutOverrideValue"];
  }

  else
  {
    v5 = 0;
  }

  if (_NSIsNSNumber())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)presetsFound
{
  selfCopy = self;
  v3 = [(NSUserDefaults *)self->_internalDefaults objectForKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  v4 = [(NSUserDefaults *)selfCopy->_internalDefaults objectForKey:@"ICDefaultsKeyDebugRefreshConfiguration"];
  LOBYTE(selfCopy) = (v3 | v4) != 0;

  return selfCopy;
}

- (void)clearAllPresets
{
  [(NSUserDefaults *)self->_internalDefaults removeObjectForKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  [(NSUserDefaults *)self->_internalDefaults removeObjectForKey:@"ICDefaultsKeyDebugRefreshConfiguration"];
  internalDefaults = self->_internalDefaults;

  [(NSUserDefaults *)internalDefaults synchronize];
}

- (void)addDebugConfiguration:(id)configuration
{
  v4 = MEMORY[0x1E696ACC8];
  v9 = 0;
  configurationCopy = configuration;
  v6 = [v4 archivedDataWithRootObject:configurationCopy requiringSecureCoding:1 error:&v9];
  v7 = v9;
  [configurationCopy commandOption];
  [(NSUserDefaults *)self->_internalDefaults setObject:v6 forKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  commandOption = [configurationCopy commandOption];

  if ((commandOption & 2) != 0)
  {
    [(NSUserDefaults *)self->_internalDefaults setObject:v6 forKey:@"ICDefaultsKeyDebugRefreshConfiguration"];
  }

  [(NSUserDefaults *)self->_internalDefaults synchronize];
}

- (ICAuthServiceClientTokenProviderDebugConfiguration)debugRefreshConfiguration
{
  v2 = [(NSUserDefaults *)self->_internalDefaults objectForKey:@"ICDefaultsKeyDebugRefreshConfiguration"];
  v5 = 0;
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v5];

  return v3;
}

- (ICAuthServiceClientTokenProviderDebugConfiguration)debugFetchConfiguration
{
  v2 = [(NSUserDefaults *)self->_internalDefaults objectForKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  v5 = 0;
  v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v5];

  return v3;
}

- (void)_setOrRemoveInternalDefaultsObject:(id)object forKey:(id)key
{
  internalDefaults = self->_internalDefaults;
  if (object)
  {
    [(NSUserDefaults *)internalDefaults setObject:object forKey:key];
  }

  else
  {
    [(NSUserDefaults *)internalDefaults removeObjectForKey:key];
  }
}

- (void)_setOrRemoveObject:(id)object forKey:(id)key
{
  userDefaults = self->_userDefaults;
  if (object)
  {
    [(NSUserDefaults *)userDefaults setObject:object forKey:key];
  }

  else
  {
    [(NSUserDefaults *)userDefaults removeObjectForKey:key];
  }
}

- (BOOL)shouldAllowUntrustedHosts
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICDefaultsKeyAllowUntrustedHosts"];

  return v3;
}

- (BOOL)shouldForceSilentAuthentications
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICDefaultsKeyForceSilentAuthentications"];

  return v3;
}

- (BOOL)shouldForceWatchInitialSyncCompletion
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyForceWatchInitialSyncCompletion"];

  return v3;
}

- (void)setPrefetchKeyIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (_NSIsNSArray())
  {
    v4 = identifiersCopy;
  }

  else
  {
    v4 = 0;
  }

  [(NSUserDefaults *)self->_userDefaults setValue:v4 forKey:@"ICDefaultsKeyPrefetchKeyIdentifiers"];
}

- (void)setSocialProfileSupported:(BOOL)supported
{
  userDefaults = self->_userDefaults;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:supported];
  [(NSUserDefaults *)userDefaults setValue:v4 forKey:@"ICDefaultsKeySocialProfileSupported"];
}

- (BOOL)socialProfileSupported
{
  v2 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"ICDefaultsKeySocialProfileSupported"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)enableMultipathTCP
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICEnableMultipathTCP"];

  return v3;
}

- (NSNumber)secureKeyRenewalTimeOverride
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults objectForKey:@"ICInternalDefaultsKeySecureKeyRenewalTimeOverride"];

  return v3;
}

- (BOOL)allowLowAffinityRecommendations
{
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  v3 = [_musicUserDefaults BOOLForKey:@"allowLowAffinityRecommendations"];

  return v3;
}

- (void)deleteAutomaticDownloadsKey
{
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  v4 = [_musicUserDefaults valueForKey:@"DownloadOnAddToLibrary"];

  if (v4)
  {
    _musicUserDefaults2 = [(ICDefaults *)self _musicUserDefaults];
    [_musicUserDefaults2 removeObjectForKey:@"DownloadOnAddToLibrary"];

    _musicUserDefaults3 = [(ICDefaults *)self _musicUserDefaults];
    [_musicUserDefaults3 synchronize];
  }
}

- (void)setAutomaticDownloadsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  [_musicUserDefaults setBool:enabledCopy forKey:@"DownloadOnAddToLibrary"];

  [(ICDefaults *)self synchronize];
}

- (BOOL)automaticDownloadsEnabled
{
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  v3 = [_musicUserDefaults BOOLForKey:@"DownloadOnAddToLibrary"];

  return v3;
}

- (BOOL)shouldTreatInitialSagaImportAsFailed
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyTreatInitialSagaImportAsFailed"];

  return v3;
}

- (BOOL)shouldTreatSagaAddComputerCallAsFailed
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyTreatSagaAddComputerCallAsFailed"];

  return v3;
}

- (BOOL)shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyForceBackoffResponseFromCloudLibrary"];

  return v3;
}

- (BOOL)shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyForceResetSyncRequiredResponseFromCloudLibrary"];

  return v3;
}

- (BOOL)shouldForceServerToUseDAAPDebugFeature
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  if ([internalDefaults BOOLForKey:@"ICInternalDefaultsKeyForceResetSyncRequiredResponseFromCloudLibrary"])
  {
    v4 = 1;
  }

  else
  {
    internalDefaults2 = [(ICDefaults *)self internalDefaults];
    v4 = [internalDefaults2 BOOLForKey:@"ICInternalDefaultsKeyForceBackoffResponseFromCloudLibrary"];
  }

  return v4;
}

- (BOOL)shouldTreatFavoritingEntityRequestAsFailed
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyTreatFavoriteEntityRequestAsFailed"];

  return v3;
}

- (BOOL)shouldTreatSubscriptionStatusCheckAsIncomplete
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyTreatSubscriptionStatusAsIncomplete"];

  return v3;
}

- (BOOL)shouldTreatSubscriptionStatusAsExpired
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v3 = [internalDefaults BOOLForKey:@"ICInternalDefaultsKeyTreatSubscriptionStatusAsExpired"];

  return v3;
}

- (BOOL)shouldReduceLibraryRecommendationsXPCInterval
{
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  v3 = [_musicUserDefaults BOOLForKey:@"reduceLibraryRecommendationsXPCInterval"];

  return v3;
}

- (BOOL)shouldForceLibraryRecommendationAnalysis
{
  _musicUserDefaults = [(ICDefaults *)self _musicUserDefaults];
  v3 = [_musicUserDefaults BOOLForKey:@"forceLibraryRecommendations"];

  return v3;
}

- (void)setShouldForcePrivacyAcknowledgementRequiredForMusic:(BOOL)music
{
  musicCopy = music;
  internalDefaults = [(ICDefaults *)self internalDefaults];
  [internalDefaults setBool:musicCopy forKey:@"ICInternalDefaultsKeyShouldForcePrivacyAcknowledgementRequiredForMusic"];
}

- (BOOL)isGrazingPathEnabled
{
  v3 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"ICDefaultsKeyGrazingPathEnabled"];

  if (!v3)
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"ICDefaultsKeyGrazingPathEnabled"];
}

- (void)setExplicitContentAllowedForExpirationYear:(BOOL)year
{
  yearCopy = year;
  internalDefaults = [(ICDefaults *)self internalDefaults];
  [internalDefaults setBool:yearCopy forKey:@"ICDefaultsKeyExplicitContentAllowedForExpirationYear"];
}

- (BOOL)isExplicitContentAllowedForExpirationYear
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  if (!internalDefaults)
  {
    return 1;
  }

  v4 = internalDefaults;
  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v6 = [internalDefaults2 valueForKey:@"ICDefaultsKeyExplicitContentAllowedForExpirationYear"];

  if (!v6)
  {
    return 1;
  }

  internalDefaults3 = [(ICDefaults *)self internalDefaults];
  v8 = [internalDefaults3 BOOLForKey:@"ICDefaultsKeyExplicitContentAllowedForExpirationYear"];

  return v8;
}

- (void)setExplicitContentAllowedForCurrentYear:(BOOL)year
{
  yearCopy = year;
  internalDefaults = [(ICDefaults *)self internalDefaults];
  [internalDefaults setBool:yearCopy forKey:@"ICDefaultsKeyExplicitContentAllowedForCurrentYear"];
}

- (BOOL)isExplicitContentAllowedForCurrentYear
{
  internalDefaults = [(ICDefaults *)self internalDefaults];
  if (!internalDefaults)
  {
    return 1;
  }

  v4 = internalDefaults;
  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v6 = [internalDefaults2 valueForKey:@"ICDefaultsKeyExplicitContentAllowedForCurrentYear"];

  if (!v6)
  {
    return 1;
  }

  internalDefaults3 = [(ICDefaults *)self internalDefaults];
  v8 = [internalDefaults3 BOOLForKey:@"ICDefaultsKeyExplicitContentAllowedForCurrentYear"];

  return v8;
}

- (void)setAgeVerificationExpirationDate:(id)date
{
  dateCopy = date;
  internalDefaults = [(ICDefaults *)self internalDefaults];
  v5 = internalDefaults;
  if (dateCopy)
  {
    [internalDefaults setObject:dateCopy forKey:@"ICDefaultsKeyAgeVerificationExpirationDate"];
  }

  else
  {
    [internalDefaults removeObjectForKey:@"ICDefaultsKeyAgeVerificationExpirationDate"];
  }
}

- (NSDate)ageVerificationExpirationDate
{
  internalDefaults = [(ICDefaults *)self internalDefaults];

  if (internalDefaults)
  {
    internalDefaults2 = [(ICDefaults *)self internalDefaults];
    v5 = [internalDefaults2 objectForKey:@"ICDefaultsKeyAgeVerificationExpirationDate"];

    if (_NSIsNSDate())
    {
      internalDefaults = v5;
    }

    else
    {
      internalDefaults = 0;
    }
  }

  return internalDefaults;
}

- (void)setShouldRunAgeVerification:(BOOL)verification
{
  verificationCopy = verification;
  internalDefaults = [(ICDefaults *)self internalDefaults];
  [internalDefaults setBool:verificationCopy forKey:@"ICDefaultsKeyShouldRunAgeVerification"];
}

- (BOOL)shouldRunAgeVerification
{
  internalDefaults = [(ICDefaults *)self internalDefaults];

  if (!internalDefaults)
  {
    return 0;
  }

  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v5 = [internalDefaults2 BOOLForKey:@"ICDefaultsKeyShouldRunAgeVerification"];

  return v5;
}

- (BOOL)shouldForceiPhoneBehaviors
{
  if ([(ICDefaults *)self _shouldSpoofIPhoneRequestProperties])
  {
    return 1;
  }

  return [(ICDefaults *)self _shouldSpoofIPadRequestProperties];
}

- (BOOL)bypassBagSanityChecks
{
  internalDefaults = [(ICDefaults *)self internalDefaults];

  if (!internalDefaults)
  {
    return 0;
  }

  internalDefaults2 = [(ICDefaults *)self internalDefaults];
  v5 = [internalDefaults2 BOOLForKey:@"ICDefaultsKeyBypassBagSanityChecks"];

  return v5;
}

- (void)setIgnoreExtendedCertificateValidation:(BOOL)validation
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:validation];

  CFPreferencesSetAppValue(@"ISIgnoreExtendedValidation", v3, @"com.apple.itunesstored");
}

- (NSDictionary)sagaPushNotificationTimes
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeySagaPushNotificationTimes"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDictionary)cachedHomeProperties
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyCachedHomeProperties"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)lastKnownHouseholdID
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastKnownHouseholdID"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDictionary)accountNotificationsNewMusicDictionary
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyAccountNotificationsNewMusicSwitch"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)accountNotificationsShowInLibraryDictionary
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyAccountNotificationsShowInLibrarySwitch"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLastAuthenticationDialogResponseTime:(double)time
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  [(ICDefaults *)self _setOrRemoveObject:v4 forKey:@"ICDefaultsKeyLastAuthenticationDialogResponseTime"];
}

- (double)lastAuthenticationDialogResponseTime
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastAuthenticationDialogResponseTime"];
  v3 = 0.0;
  if (_NSIsNSNumber())
  {
    [v2 doubleValue];
    v3 = v4;
  }

  return v3;
}

- (NSDictionary)authServiceClientTokenCache
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyAuthServiceClientTokenCache"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSNumber)authServiceClientTokenTimeToLive
{
  v2 = [(NSUserDefaults *)self->_internalDefaults objectForKey:@"ICDefaultsKeyAuthServiceClientTokenTimeToLive"];
  if ([v2 isNSNumber])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)lastAllowedInteractiveAuthenticationTime
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastAllowedInteractiveAuthenticationTime"];
  if (_NSIsNSDate())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)lastCookieHeadersForRevokingMusicUserTokens
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__27761;
  v11 = __Block_byref_object_dispose__27762;
  v12 = 0;
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastCookieHeadersForRevokingMusicUserTokens"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__ICDefaults_lastCookieHeadersForRevokingMusicUserTokens__block_invoke;
    v6[3] = &unk_1E7BF71E8;
    v6[4] = &v7;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  v4 = [v8[5] copy];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__ICDefaults_lastCookieHeadersForRevokingMusicUserTokens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSString())
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKey:v9];
}

- (NSNumber)lastActiveAccountDSID
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyLastActiveAccountDSID"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDictionary)mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__27761;
  v11 = __Block_byref_object_dispose__27762;
  v12 = 0;
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsKeyMediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__ICDefaults_mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates__block_invoke;
    v6[3] = &unk_1E7BF71E8;
    v6[4] = &v7;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  v4 = [v8[5] copy];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __76__ICDefaults_mediaLibraryAccessApplicationIdentifiersWithTCCAcceptanceDates__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (_NSIsNSString() && _NSIsNSDate())
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

- (NSDictionary)pushNotificationState
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsRegisteredPushNotificationState"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDictionary)cachedMusicUserTokens
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"ICDefaultsCachedMusicUserTokens"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)defaultStoreFront
{
  v2 = +[ICUserIdentityStore defaultIdentityStore];
  localStoreAccountProperties = [v2 localStoreAccountProperties];
  storefrontIdentifier = [localStoreAccountProperties storefrontIdentifier];

  return storefrontIdentifier;
}

@end