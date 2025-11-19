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
- (void)_setOrRemoveInternalDefaultsObject:(id)a3 forKey:(id)a4;
- (void)_setOrRemoveObject:(id)a3 forKey:(id)a4;
- (void)addDebugConfiguration:(id)a3;
- (void)clearAllPresets;
- (void)clearShouldForceServerToUseDAAPDebugFeatures;
- (void)deleteAutomaticDownloadsKey;
- (void)setAgeVerificationExpirationDate:(id)a3;
- (void)setAutomaticDownloadsEnabled:(BOOL)a3;
- (void)setExplicitContentAllowedForCurrentYear:(BOOL)a3;
- (void)setExplicitContentAllowedForExpirationYear:(BOOL)a3;
- (void)setIgnoreExtendedCertificateValidation:(BOOL)a3;
- (void)setLastAuthenticationDialogResponseTime:(double)a3;
- (void)setPrefetchKeyIdentifiers:(id)a3;
- (void)setShouldForcePrivacyAcknowledgementRequiredForMusic:(BOOL)a3;
- (void)setShouldRunAgeVerification:(BOOL)a3;
- (void)setSocialProfileSupported:(BOOL)a3;
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
    v7 = [v6 isInternalBuild];

    if (v7)
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
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 objectForKey:@"ICDefaultsKeyChargingStateOverride"];

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
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 objectForKey:@"ICDefaultsKeyBatteryLevelOverride"];

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
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 objectForKey:@"ICDefaultsKeyNetworkTypeOverride"];

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
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 objectForKey:@"ICDefaultsKeyNetworkLinkQualityOverride"];

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
  v3 = [(ICDefaults *)self internalDefaults];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICDefaults *)self internalDefaults];
  v5 = [v4 BOOLForKey:@"ICDefaultsKeySpoofIPhone"];

  return v5;
}

- (NSString)productPlatformOverride
{
  v3 = [(ICDefaults *)self internalDefaults];
  v4 = [v3 objectForKey:@"ICDefaultsKeyProductPlatformOverride"];

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
  v3 = [(ICDefaults *)self internalDefaults];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICDefaults *)self internalDefaults];
  v5 = [v4 BOOLForKey:@"ICDefaultsKeySpoofIPad"];

  return v5;
}

- (BOOL)shouldBypassURLBagCache
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyShouldBypassURLBagCache"];

  return v3;
}

- (void)synchronize
{
  [(NSUserDefaults *)self->_userDefaults synchronize];
  v3 = [(ICDefaults *)self internalDefaults];
  [v3 synchronize];
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
  v2 = [(ICDefaults *)self _musicUserDefaults];
  v3 = [v2 BOOLForKey:@"suppressPrivacyWelcomeScreen"];

  return v3;
}

- (id)_musicUserDefaults
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_musicUserDefaults)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.Music"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.Music"];
    }

    musicUserDefaults = self->_musicUserDefaults;
    self->_musicUserDefaults = v6;
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = self->_musicUserDefaults;

  return v8;
}

- (BOOL)shouldForcePrivacyAcknowledgementRequiredForMusic
{
  v3 = [(ICDefaults *)self internalDefaults];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICDefaults *)self internalDefaults];
  v5 = [v4 BOOLForKey:@"ICInternalDefaultsKeyShouldForcePrivacyAcknowledgementRequiredForMusic"];

  return v5;
}

- (NSString)productVersionOverride
{
  v3 = [(ICDefaults *)self internalDefaults];
  v4 = [v3 objectForKey:@"ICDefaultsKeyProductVersionOverride"];

  if (_NSIsNSString())
  {
    v5 = v4;
LABEL_6:
    v6 = v5;
    goto LABEL_7;
  }

  if ([(ICDefaults *)self _shouldSpoofIPhoneRequestProperties]|| [(ICDefaults *)self _shouldSpoofIPadRequestProperties])
  {
    v5 = [MEMORY[0x1E698C8A8] productVersion];
    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSString)deviceModelOverride
{
  v3 = [(ICDefaults *)self internalDefaults];
  v4 = [v3 objectForKey:@"ICDefaultsKeyDeviceModelOverride"];

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
  v3 = [(ICDefaults *)self internalDefaults];
  v4 = [v3 objectForKey:@"ICDefaultsKeyHardwarePlatformOverride"];

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
  v3 = [(ICDefaults *)self internalDefaults];
  v4 = [v3 objectForKey:@"ICDefaultsKeyDeviceClassOverride"];

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
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 objectForKey:@"ICDefaultsKeyFairPlayDeviceTypeOverride"];

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
  v3 = [(ICDefaults *)self internalDefaults];
  [v3 removeObjectForKey:@"ICInternalDefaultsKeyForceResetSyncRequiredResponseFromCloudLibrary"];

  v4 = [(ICDefaults *)self internalDefaults];
  [v4 removeObjectForKey:@"ICInternalDefaultsKeyForceBackoffResponseFromCloudLibrary"];
}

- (BOOL)isLegacyStoreCacheBusterEnabled
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isInternalBuild];

  return v3 && CFPreferencesGetAppBooleanValue(@"ISCacheBuster", @"com.apple.itunesstored", 0) != 0;
}

- (NSNumber)requestTimeoutOverride
{
  v3 = [(ICDefaults *)self internalDefaults];
  if (v3)
  {
    v4 = [(ICDefaults *)self internalDefaults];
    v5 = [v4 objectForKey:@"ICInternalDefaultsKeyRequestTimeoutOverrideValue"];
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
  v2 = self;
  v3 = [(NSUserDefaults *)self->_internalDefaults objectForKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  v4 = [(NSUserDefaults *)v2->_internalDefaults objectForKey:@"ICDefaultsKeyDebugRefreshConfiguration"];
  LOBYTE(v2) = (v3 | v4) != 0;

  return v2;
}

- (void)clearAllPresets
{
  [(NSUserDefaults *)self->_internalDefaults removeObjectForKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  [(NSUserDefaults *)self->_internalDefaults removeObjectForKey:@"ICDefaultsKeyDebugRefreshConfiguration"];
  internalDefaults = self->_internalDefaults;

  [(NSUserDefaults *)internalDefaults synchronize];
}

- (void)addDebugConfiguration:(id)a3
{
  v4 = MEMORY[0x1E696ACC8];
  v9 = 0;
  v5 = a3;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v9];
  v7 = v9;
  [v5 commandOption];
  [(NSUserDefaults *)self->_internalDefaults setObject:v6 forKey:@"ICDefaultsKeyDebugFetchConfiguration"];
  v8 = [v5 commandOption];

  if ((v8 & 2) != 0)
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

- (void)_setOrRemoveInternalDefaultsObject:(id)a3 forKey:(id)a4
{
  internalDefaults = self->_internalDefaults;
  if (a3)
  {
    [(NSUserDefaults *)internalDefaults setObject:a3 forKey:a4];
  }

  else
  {
    [(NSUserDefaults *)internalDefaults removeObjectForKey:a4];
  }
}

- (void)_setOrRemoveObject:(id)a3 forKey:(id)a4
{
  userDefaults = self->_userDefaults;
  if (a3)
  {
    [(NSUserDefaults *)userDefaults setObject:a3 forKey:a4];
  }

  else
  {
    [(NSUserDefaults *)userDefaults removeObjectForKey:a4];
  }
}

- (BOOL)shouldAllowUntrustedHosts
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICDefaultsKeyAllowUntrustedHosts"];

  return v3;
}

- (BOOL)shouldForceSilentAuthentications
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICDefaultsKeyForceSilentAuthentications"];

  return v3;
}

- (BOOL)shouldForceWatchInitialSyncCompletion
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyForceWatchInitialSyncCompletion"];

  return v3;
}

- (void)setPrefetchKeyIdentifiers:(id)a3
{
  v5 = a3;
  if (_NSIsNSArray())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(NSUserDefaults *)self->_userDefaults setValue:v4 forKey:@"ICDefaultsKeyPrefetchKeyIdentifiers"];
}

- (void)setSocialProfileSupported:(BOOL)a3
{
  userDefaults = self->_userDefaults;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [(NSUserDefaults *)userDefaults setValue:v4 forKey:@"ICDefaultsKeySocialProfileSupported"];
}

- (BOOL)socialProfileSupported
{
  v2 = [(NSUserDefaults *)self->_userDefaults valueForKey:@"ICDefaultsKeySocialProfileSupported"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)enableMultipathTCP
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICEnableMultipathTCP"];

  return v3;
}

- (NSNumber)secureKeyRenewalTimeOverride
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 objectForKey:@"ICInternalDefaultsKeySecureKeyRenewalTimeOverride"];

  return v3;
}

- (BOOL)allowLowAffinityRecommendations
{
  v2 = [(ICDefaults *)self _musicUserDefaults];
  v3 = [v2 BOOLForKey:@"allowLowAffinityRecommendations"];

  return v3;
}

- (void)deleteAutomaticDownloadsKey
{
  v3 = [(ICDefaults *)self _musicUserDefaults];
  v4 = [v3 valueForKey:@"DownloadOnAddToLibrary"];

  if (v4)
  {
    v5 = [(ICDefaults *)self _musicUserDefaults];
    [v5 removeObjectForKey:@"DownloadOnAddToLibrary"];

    v6 = [(ICDefaults *)self _musicUserDefaults];
    [v6 synchronize];
  }
}

- (void)setAutomaticDownloadsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICDefaults *)self _musicUserDefaults];
  [v5 setBool:v3 forKey:@"DownloadOnAddToLibrary"];

  [(ICDefaults *)self synchronize];
}

- (BOOL)automaticDownloadsEnabled
{
  v2 = [(ICDefaults *)self _musicUserDefaults];
  v3 = [v2 BOOLForKey:@"DownloadOnAddToLibrary"];

  return v3;
}

- (BOOL)shouldTreatInitialSagaImportAsFailed
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyTreatInitialSagaImportAsFailed"];

  return v3;
}

- (BOOL)shouldTreatSagaAddComputerCallAsFailed
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyTreatSagaAddComputerCallAsFailed"];

  return v3;
}

- (BOOL)shouldForceServerToUseDAAPDebugFeatureAlwaysBackoff
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyForceBackoffResponseFromCloudLibrary"];

  return v3;
}

- (BOOL)shouldForceServerToUseDAAPDebugFeatureAlwaysPerformResetSync
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyForceResetSyncRequiredResponseFromCloudLibrary"];

  return v3;
}

- (BOOL)shouldForceServerToUseDAAPDebugFeature
{
  v3 = [(ICDefaults *)self internalDefaults];
  if ([v3 BOOLForKey:@"ICInternalDefaultsKeyForceResetSyncRequiredResponseFromCloudLibrary"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(ICDefaults *)self internalDefaults];
    v4 = [v5 BOOLForKey:@"ICInternalDefaultsKeyForceBackoffResponseFromCloudLibrary"];
  }

  return v4;
}

- (BOOL)shouldTreatFavoritingEntityRequestAsFailed
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyTreatFavoriteEntityRequestAsFailed"];

  return v3;
}

- (BOOL)shouldTreatSubscriptionStatusCheckAsIncomplete
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyTreatSubscriptionStatusAsIncomplete"];

  return v3;
}

- (BOOL)shouldTreatSubscriptionStatusAsExpired
{
  v2 = [(ICDefaults *)self internalDefaults];
  v3 = [v2 BOOLForKey:@"ICInternalDefaultsKeyTreatSubscriptionStatusAsExpired"];

  return v3;
}

- (BOOL)shouldReduceLibraryRecommendationsXPCInterval
{
  v2 = [(ICDefaults *)self _musicUserDefaults];
  v3 = [v2 BOOLForKey:@"reduceLibraryRecommendationsXPCInterval"];

  return v3;
}

- (BOOL)shouldForceLibraryRecommendationAnalysis
{
  v2 = [(ICDefaults *)self _musicUserDefaults];
  v3 = [v2 BOOLForKey:@"forceLibraryRecommendations"];

  return v3;
}

- (void)setShouldForcePrivacyAcknowledgementRequiredForMusic:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICDefaults *)self internalDefaults];
  [v4 setBool:v3 forKey:@"ICInternalDefaultsKeyShouldForcePrivacyAcknowledgementRequiredForMusic"];
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

- (void)setExplicitContentAllowedForExpirationYear:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICDefaults *)self internalDefaults];
  [v4 setBool:v3 forKey:@"ICDefaultsKeyExplicitContentAllowedForExpirationYear"];
}

- (BOOL)isExplicitContentAllowedForExpirationYear
{
  v3 = [(ICDefaults *)self internalDefaults];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(ICDefaults *)self internalDefaults];
  v6 = [v5 valueForKey:@"ICDefaultsKeyExplicitContentAllowedForExpirationYear"];

  if (!v6)
  {
    return 1;
  }

  v7 = [(ICDefaults *)self internalDefaults];
  v8 = [v7 BOOLForKey:@"ICDefaultsKeyExplicitContentAllowedForExpirationYear"];

  return v8;
}

- (void)setExplicitContentAllowedForCurrentYear:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICDefaults *)self internalDefaults];
  [v4 setBool:v3 forKey:@"ICDefaultsKeyExplicitContentAllowedForCurrentYear"];
}

- (BOOL)isExplicitContentAllowedForCurrentYear
{
  v3 = [(ICDefaults *)self internalDefaults];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(ICDefaults *)self internalDefaults];
  v6 = [v5 valueForKey:@"ICDefaultsKeyExplicitContentAllowedForCurrentYear"];

  if (!v6)
  {
    return 1;
  }

  v7 = [(ICDefaults *)self internalDefaults];
  v8 = [v7 BOOLForKey:@"ICDefaultsKeyExplicitContentAllowedForCurrentYear"];

  return v8;
}

- (void)setAgeVerificationExpirationDate:(id)a3
{
  v6 = a3;
  v4 = [(ICDefaults *)self internalDefaults];
  v5 = v4;
  if (v6)
  {
    [v4 setObject:v6 forKey:@"ICDefaultsKeyAgeVerificationExpirationDate"];
  }

  else
  {
    [v4 removeObjectForKey:@"ICDefaultsKeyAgeVerificationExpirationDate"];
  }
}

- (NSDate)ageVerificationExpirationDate
{
  v3 = [(ICDefaults *)self internalDefaults];

  if (v3)
  {
    v4 = [(ICDefaults *)self internalDefaults];
    v5 = [v4 objectForKey:@"ICDefaultsKeyAgeVerificationExpirationDate"];

    if (_NSIsNSDate())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setShouldRunAgeVerification:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICDefaults *)self internalDefaults];
  [v4 setBool:v3 forKey:@"ICDefaultsKeyShouldRunAgeVerification"];
}

- (BOOL)shouldRunAgeVerification
{
  v3 = [(ICDefaults *)self internalDefaults];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICDefaults *)self internalDefaults];
  v5 = [v4 BOOLForKey:@"ICDefaultsKeyShouldRunAgeVerification"];

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
  v3 = [(ICDefaults *)self internalDefaults];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICDefaults *)self internalDefaults];
  v5 = [v4 BOOLForKey:@"ICDefaultsKeyBypassBagSanityChecks"];

  return v5;
}

- (void)setIgnoreExtendedCertificateValidation:(BOOL)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a3];

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

- (void)setLastAuthenticationDialogResponseTime:(double)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
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
  v3 = [v2 localStoreAccountProperties];
  v4 = [v3 storefrontIdentifier];

  return v4;
}

@end