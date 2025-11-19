@interface WBSFeatureAvailability
+ (BOOL)_is2024StartPageDisabledOverride;
+ (BOOL)_isLockdownModeEnabled;
+ (BOOL)_isPasswordSharingAvailable;
+ (BOOL)_isWAPEnabled;
+ (BOOL)_yahooSearchProviderIsAvailable;
+ (BOOL)defaultSearchEngineMatchesExperiment;
+ (BOOL)getForcedCFPreferencesAppBoolValueForKey:(__CFString *)a3 applicationID:(__CFString *)a4 withFallbackValue:(unsigned __int8)a5;
+ (BOOL)hasInternalContent;
+ (BOOL)is2024CloudTabsEnabled;
+ (BOOL)is2024FavoritesEnabled;
+ (BOOL)is2024PrivacyReportEnabled;
+ (BOOL)is2024ReadingListEnabled;
+ (BOOL)is2024StartPageSectionTitleEnabled;
+ (BOOL)is2024SuggestionsEnabled;
+ (BOOL)isAirDropPasswordsEnabled;
+ (BOOL)isAllowFavoritesInFrequentlyVisitedEnabled;
+ (BOOL)isAllowLogOnURLsInFrequentlyVisitedEnabled;
+ (BOOL)isAutoFillDrivenByUIProcess;
+ (BOOL)isAutoFillInternalFeedbackUIEnabled;
+ (BOOL)isAutomaticPasskeyUpgradesEnabled;
+ (BOOL)isAutomaticStrongPasswordsEnabled;
+ (BOOL)isCompletionListRedesignEnabled;
+ (BOOL)isCrossFrameAutoFillEnabled;
+ (BOOL)isCustomizationSyncEnabled;
+ (BOOL)isDTOMitigationEnabled;
+ (BOOL)isDropOutliersInFrequentlyVisitedEnabled;
+ (BOOL)isHistoryClearingEnabled;
+ (BOOL)isInternalInstall;
+ (BOOL)isKeychainCardsInWalletEnabled;
+ (BOOL)isLabelPreviousSearchesInCompletionListEnabled;
+ (BOOL)isNetworkFetchingForPasswordsEnabled;
+ (BOOL)isNewTabAndWindowSyncingEnabled;
+ (BOOL)isOnDeviceSummarizationEnabled;
+ (BOOL)isOnboardingEnabled;
+ (BOOL)isOnboardingTipsEnabled;
+ (BOOL)isOngoingCredentialSharingEnabled;
+ (BOOL)isPasswordsAppFuzzySearchEnabled;
+ (BOOL)isPasswordsAppInstalled;
+ (BOOL)isPerSiteSettingSyncEnabled;
+ (BOOL)isPostFixSuggestionsEnabled;
+ (BOOL)isPrivateBrowsingEnabled;
+ (BOOL)isPromotePasskeyUpgradesEnabled;
+ (BOOL)isSaveForLaterEnabled;
+ (BOOL)isSavedAccountHistoryEnabled;
+ (BOOL)isSavedAccountHistoryInAutoFillEnabled;
+ (BOOL)isSearchEvaluationLoggingEnabled;
+ (BOOL)isSearchProviderEnabled:(unint64_t)a3;
+ (BOOL)isSiriReadThisEnabled;
+ (BOOL)isSolariumEnabled;
+ (BOOL)isStartPageSettingSyncEnabled;
+ (BOOL)isStreamlinedCompletionListEnabled;
+ (BOOL)isWAPEnabled;
+ (BOOL)isWebKitTextExtractionEnabled;
+ (BOOL)scribbleRequiresVisualSimilarity;
+ (BOOL)shouldShowInternalUI;
+ (BOOL)supportsURLCredentialStorageAccessControlGroups;
+ (void)toggleShowURLsInURLAutocompleteDebugChannel;
@end

@implementation WBSFeatureAvailability

+ (BOOL)isSolariumEnabled
{
  if (isSolariumEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isSolariumEnabled];
  }

  return isSolariumEnabled_isSolariumEnabled;
}

uint64_t __43__WBSFeatureAvailability_isSolariumEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  isSolariumEnabled_isSolariumEnabled = result;
  return result;
}

+ (BOOL)hasInternalContent
{
  if (hasInternalContent_onceToken != -1)
  {
    +[WBSFeatureAvailability hasInternalContent];
  }

  return hasInternalContent_hasInternalContent;
}

uint64_t __44__WBSFeatureAvailability_hasInternalContent__block_invoke()
{
  result = os_variant_has_internal_content();
  hasInternalContent_hasInternalContent = result;
  return result;
}

+ (BOOL)isAutoFillDrivenByUIProcess
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v2 safari_BOOLForKey:@"UIProcessDrivenAutoFill" defaultValue:0])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 safari_BOOLForKey:@"InternalDebugSiteIsolationEnabled" defaultValue:0];
  }

  return v3;
}

+ (BOOL)isWAPEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__WBSFeatureAvailability_isWAPEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isWAPEnabled_onceToken != -1)
  {
    dispatch_once(&isWAPEnabled_onceToken, block);
  }

  return isWAPEnabled_isWAPEnabled;
}

uint64_t __38__WBSFeatureAvailability_isWAPEnabled__block_invoke(uint64_t a1)
{
  isWAPEnabled_isWAPEnabled = [*(a1 + 32) _isWAPEnabled];
  v2 = dispatch_queue_create("com.apple.Safari.YttriumEligibilityObserver", 0);
  v3 = isWAPEnabled_queue;
  isWAPEnabled_queue = v2;

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __38__WBSFeatureAvailability_isWAPEnabled__block_invoke_2;
  handler[3] = &__block_descriptor_40_e8_v12__0i8l;
  handler[4] = *(a1 + 32);
  return notify_register_dispatch("com.apple.os-eligibility-domain.change.yttrium", &isWAPEnabled_notifyToken, isWAPEnabled_queue, handler);
}

+ (BOOL)_isWAPEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    os_eligibility_get_domain_answer();
    LOBYTE(v2) = 0;
  }

  return v2;
}

+ (BOOL)defaultSearchEngineMatchesExperiment
{
  v2 = +[WBSSearchEnginePreferenceObserver sharedObserver];
  v3 = [v2 defaultSearchEngineMatchesExperiment];

  return v3;
}

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    +[WBSFeatureAvailability isInternalInstall];
  }

  return isInternalInstall_isInternalInstall;
}

uint64_t __43__WBSFeatureAvailability_isInternalInstall__block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  isInternalInstall_isInternalInstall = result;
  return result;
}

+ (BOOL)isOngoingCredentialSharingEnabled
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 safari_isPasswordManagerTestMode];

  if (v4)
  {
    goto LABEL_19;
  }

  v5 = +[WBSKeychainSyncingMonitor sharedMonitor];
  v6 = [v5 keychainSyncSettingValue];

  if (v6 == 1)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v17 = 0;
      v9 = "Ongoing credential sharing is disabled because iCloud Keychain is disabled";
      v10 = &v17;
      goto LABEL_18;
    }
  }

  else if (v6)
  {
    v11 = +[WBSPrimaryAppleAccountObserver sharedObserver];
    v12 = [v11 isCurrentAppleIDManaged];

    if (v12)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v16 = 0;
        v9 = "Ongoing credential sharing is disabled for Managed Apple IDs";
        v10 = &v16;
        goto LABEL_18;
      }
    }

    else if (_os_feature_enabled_impl())
    {
      if ([a1 _isPasswordSharingAvailable])
      {
        LOBYTE(v8) = 1;
      }

      else
      {
        v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v8)
        {
          v14 = 0;
          v9 = "Ongoing credential sharing is disabled because profile that disables Password Sharing is installed to device.";
          v10 = &v14;
          goto LABEL_18;
        }
      }
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        v15 = 0;
        v9 = "Ongoing credential sharing is disabled because the runtime feature flag is disabled";
        v10 = &v15;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v18 = 0;
      v9 = "Ongoing credential sharing is disabled because iCloud Keychain state is unknown";
      v10 = &v18;
LABEL_18:
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
LABEL_19:
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

+ (BOOL)isPasswordsAppInstalled
{
  v6 = 0;
  v2 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Passwords" allowPlaceholder:1 error:&v6];
  v3 = v2;
  if (v2)
  {
    if ([v2 isPlaceholder])
    {
      v4 = ([v3 installType] - 7) < 3;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isHistoryClearingEnabled
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isSafariHistoryClearingAllowed];

  return v3;
}

+ (BOOL)isWebKitTextExtractionEnabled
{
  if (isWebKitTextExtractionEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isWebKitTextExtractionEnabled];
  }

  return isWebKitTextExtractionEnabled_isWebKitTextExtractionEnabled;
}

void __55__WBSFeatureAvailability_isWebKitTextExtractionEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isWebKitTextExtractionEnabled_isWebKitTextExtractionEnabled = [v0 BOOLForKey:@"DebugDisableWebKitTextExtraction"] ^ 1;
}

+ (BOOL)isPrivateBrowsingEnabled
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isSafariPrivateBrowsingAllowed];

  return v3;
}

+ (BOOL)is2024CloudTabsEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSFeatureAvailability_is2024CloudTabsEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (is2024CloudTabsEnabled_onceToken != -1)
  {
    dispatch_once(&is2024CloudTabsEnabled_onceToken, block);
  }

  return is2024CloudTabsEnabled_is2024CloudTabsEnabled;
}

void __48__WBSFeatureAvailability_is2024CloudTabsEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v3 safari_BOOLForKey:@"WBSEnable2024CloudTabs" defaultValue:1])
  {
    v2 = [*(a1 + 32) _is2024StartPageDisabledOverride] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  is2024CloudTabsEnabled_is2024CloudTabsEnabled = v2;
}

+ (BOOL)_is2024StartPageDisabledOverride
{
  if (_is2024StartPageDisabledOverride_onceToken != -1)
  {
    +[WBSFeatureAvailability _is2024StartPageDisabledOverride];
  }

  return _is2024StartPageDisabledOverride_is2024StartPageDisabledOverride;
}

void __58__WBSFeatureAvailability__is2024StartPageDisabledOverride__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  _is2024StartPageDisabledOverride_is2024StartPageDisabledOverride = [v0 safari_BOOLForKey:@"WBSDisable2024StartPageOverride" defaultValue:0];
}

+ (BOOL)is2024PrivacyReportEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WBSFeatureAvailability_is2024PrivacyReportEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (is2024PrivacyReportEnabled_onceToken != -1)
  {
    dispatch_once(&is2024PrivacyReportEnabled_onceToken, block);
  }

  return is2024PrivacyReportEnabled_is2024PrivacyReportEnabled;
}

void __52__WBSFeatureAvailability_is2024PrivacyReportEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v3 safari_BOOLForKey:@"WBSEnable2024PrivacyReport" defaultValue:1])
  {
    v2 = [*(a1 + 32) _is2024StartPageDisabledOverride] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  is2024PrivacyReportEnabled_is2024PrivacyReportEnabled = v2;
}

+ (BOOL)is2024ReadingListEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSFeatureAvailability_is2024ReadingListEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (is2024ReadingListEnabled_onceToken != -1)
  {
    dispatch_once(&is2024ReadingListEnabled_onceToken, block);
  }

  return is2024ReadingListEnabled_is2024ReadingListEnabled;
}

void __50__WBSFeatureAvailability_is2024ReadingListEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v3 safari_BOOLForKey:@"WBSEnable2024ReadingList" defaultValue:1])
  {
    v2 = [*(a1 + 32) _is2024StartPageDisabledOverride] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  is2024ReadingListEnabled_is2024ReadingListEnabled = v2;
}

+ (BOOL)is2024FavoritesEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSFeatureAvailability_is2024FavoritesEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (is2024FavoritesEnabled_onceToken != -1)
  {
    dispatch_once(&is2024FavoritesEnabled_onceToken, block);
  }

  return is2024FavoritesEnabled_is2024FavoritesEnabled;
}

void __48__WBSFeatureAvailability_is2024FavoritesEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v3 safari_BOOLForKey:@"WBSEnable2024Favorites" defaultValue:1])
  {
    v2 = [*(a1 + 32) _is2024StartPageDisabledOverride] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  is2024FavoritesEnabled_is2024FavoritesEnabled = v2;
}

+ (BOOL)isOnboardingEnabled
{
  if (isOnboardingEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isOnboardingEnabled];
  }

  return isOnboardingEnabled_isOnboardingEnabled;
}

void __45__WBSFeatureAvailability_isOnboardingEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isOnboardingEnabled_isOnboardingEnabled = [v0 safari_BOOLForKey:@"EnableSafariOnboarding" defaultValue:1];
}

+ (BOOL)is2024SuggestionsEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__WBSFeatureAvailability_is2024SuggestionsEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (is2024SuggestionsEnabled_onceToken != -1)
  {
    dispatch_once(&is2024SuggestionsEnabled_onceToken, block);
  }

  return is2024SuggestionsEnabled_is2024SuggestionsEnabled;
}

void __50__WBSFeatureAvailability_is2024SuggestionsEnabled__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v3 safari_BOOLForKey:@"WBSEnable2024Suggestions" defaultValue:1])
  {
    v2 = [*(a1 + 32) _is2024StartPageDisabledOverride] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  is2024SuggestionsEnabled_is2024SuggestionsEnabled = v2;
}

+ (BOOL)isCustomizationSyncEnabled
{
  if ([a1 isPerSiteSettingSyncEnabled])
  {
    return 1;
  }

  return [a1 isStartPageSettingSyncEnabled];
}

+ (BOOL)isPerSiteSettingSyncEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_BOOLForKey:@"WBSEnablePerSiteSettingsSync" defaultValue:1];

  return v3;
}

+ (BOOL)isSavedAccountHistoryEnabled
{
  v2 = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [v2 safari_BOOLForKey:@"WBSSavedAccountHistory" defaultValue:1];

  return v3;
}

+ (BOOL)isAllowFavoritesInFrequentlyVisitedEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 BOOLForKey:@"FrequentlyVisitedSitesAllowSitesFromFavorites"];

  return v3;
}

+ (BOOL)_yahooSearchProviderIsAvailable
{
  if (_yahooSearchProviderIsAvailable_onceToken != -1)
  {
    +[WBSFeatureAvailability _yahooSearchProviderIsAvailable];
  }

  return _yahooSearchProviderIsAvailable_yahooSearchProviderIsAvailable;
}

void __57__WBSFeatureAvailability__yahooSearchProviderIsAvailable__block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] internetServicesRegion];
  v1 = [v0 copy];
  v2 = v1;
  v3 = &stru_1F3064D08;
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  v5 = [(__CFString *)v4 isEqualToString:@"TH"];
  _yahooSearchProviderIsAvailable_yahooSearchProviderIsAvailable = v5 ^ 1;
}

+ (BOOL)isSearchProviderEnabled:(unint64_t)a3
{
  if (a3 < 3)
  {
    return [a1 _shouldShowChineseFeatures];
  }

  if (a3 == 3)
  {
    return [a1 _shouldShowRussianFeatures];
  }

  if (a3 == 4)
  {
    return [a1 _yahooSearchProviderIsAvailable];
  }

  return 0;
}

+ (BOOL)supportsURLCredentialStorageAccessControlGroups
{
  if (supportsURLCredentialStorageAccessControlGroups_onceToken != -1)
  {
    +[WBSFeatureAvailability supportsURLCredentialStorageAccessControlGroups];
  }

  return supportsURLCredentialStorageAccessControlGroups_supportsURLCredentialStorageAccessControlGroups;
}

uint64_t __73__WBSFeatureAvailability_supportsURLCredentialStorageAccessControlGroups__block_invoke()
{
  result = [MEMORY[0x1E695AC50] instancesRespondToSelector:NSSelectorFromString(&cfstr_Allcredentials.isa)];
  supportsURLCredentialStorageAccessControlGroups_supportsURLCredentialStorageAccessControlGroups = result;
  return result;
}

+ (BOOL)shouldShowInternalUI
{
  if (shouldShowInternalUI_onceToken != -1)
  {
    +[WBSFeatureAvailability shouldShowInternalUI];
  }

  if (shouldShowInternalUI_hasInternalUI == 1)
  {
    v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v3 = [v2 BOOLForKey:@"hideInternalUI"] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

uint64_t __46__WBSFeatureAvailability_shouldShowInternalUI__block_invoke()
{
  result = os_variant_has_internal_ui();
  shouldShowInternalUI_hasInternalUI = result;
  return result;
}

+ (BOOL)is2024StartPageSectionTitleEnabled
{
  if (+[WBSFeatureAvailability is2024FavoritesEnabled](WBSFeatureAvailability, "is2024FavoritesEnabled") || +[WBSFeatureAvailability is2024CloudTabsEnabled](WBSFeatureAvailability, "is2024CloudTabsEnabled") || +[WBSFeatureAvailability is2024SuggestionsEnabled](WBSFeatureAvailability, "is2024SuggestionsEnabled") || +[WBSFeatureAvailability is2024PrivacyReportEnabled])
  {
    return 1;
  }

  return +[WBSFeatureAvailability is2024ReadingListEnabled];
}

+ (BOOL)isStartPageSettingSyncEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_BOOLForKey:@"WBSEnableCloudSettingsSync" defaultValue:1];

  return v3;
}

+ (BOOL)isSiriReadThisEnabled
{
  if (isSiriReadThisEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isSiriReadThisEnabled];
  }

  return isSiriReadThisEnabled_isSiriReadThisEnabled;
}

void __47__WBSFeatureAvailability_isSiriReadThisEnabled__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    isSiriReadThisEnabled_isSiriReadThisEnabled = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
    isSiriReadThisEnabled_isSiriReadThisEnabled = [v0 BOOLForKey:@"EnableSiriReadThis"];
  }
}

+ (BOOL)isAirDropPasswordsEnabled
{
  v3 = +[WBSPrimaryAppleAccountObserver sharedObserver];
  v4 = [v3 isUsingICloud];

  if (v4)
  {
    v5 = +[WBSPrimaryAppleAccountObserver sharedObserver];
    v6 = [v5 isCurrentAppleIDManaged];

    if (!v6)
    {
      if ([a1 _isPasswordSharingAvailable])
      {
        LOBYTE(v8) = 1;
        return v8;
      }

      v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (!v8)
      {
        return v8;
      }

      v12 = 0;
      v9 = "AirDrop password sharing is disabled because profile that disables Password Sharing is installed to device.";
      v10 = &v12;
      goto LABEL_7;
    }

    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v13 = 0;
      v9 = "AirDrop password sharing is disabled for Managed Apple IDs";
      v10 = &v13;
LABEL_7:
      _os_log_impl(&dword_1B8447000, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 0;
      v9 = "AirDrop password sharing is disabled because user don't have iCloud";
      v10 = buf;
      goto LABEL_7;
    }
  }

  return v8;
}

+ (BOOL)_isPasswordSharingAvailable
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isPasswordSharingAllowed];

  return v3;
}

+ (BOOL)isNewTabAndWindowSyncingEnabled
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__WBSFeatureAvailability_isNewTabAndWindowSyncingEnabled__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isNewTabAndWindowSyncingEnabled_onceToken != -1)
  {
    dispatch_once(&isNewTabAndWindowSyncingEnabled_onceToken, block);
  }

  return isNewTabAndWindowSyncingEnabled_isNewTabAndWindowSyncingEnabled;
}

void __57__WBSFeatureAvailability_isNewTabAndWindowSyncingEnabled__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isSafariProfilesEnabled])
  {
    v1 = [MEMORY[0x1E695E000] safari_browserDefaults];
    isNewTabAndWindowSyncingEnabled_isNewTabAndWindowSyncingEnabled = [v1 safari_BOOLForKey:@"EnableSafariProfileNewTabAndWindowBehaviorSyncing" defaultValue:1];
  }

  else
  {
    isNewTabAndWindowSyncingEnabled_isNewTabAndWindowSyncingEnabled = 0;
  }
}

+ (void)toggleShowURLsInURLAutocompleteDebugChannel
{
  if (_WBSFeatureAvailabilityIsShowURLsInURLAutocompleteDebugChannelEnabled == 1)
  {
    _WBSFeatureAvailabilityIsShowURLsInURLAutocompleteDebugChannelEnabled = 0;
  }

  else
  {
    _WBSFeatureAvailabilityIsShowURLsInURLAutocompleteDebugChannelEnabled = 1;
    v3 = dispatch_time(0, 600000000000);
    v4 = MEMORY[0x1E69E96A0];

    dispatch_after(v3, v4, &__block_literal_global_135);
  }
}

+ (BOOL)isStreamlinedCompletionListEnabled
{
  if (isStreamlinedCompletionListEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isStreamlinedCompletionListEnabled];
  }

  return isStreamlinedCompletionListEnabled_usesStreamlinedCompletionList;
}

void __60__WBSFeatureAvailability_isStreamlinedCompletionListEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isStreamlinedCompletionListEnabled_usesStreamlinedCompletionList = [v0 BOOLForKey:@"DebugStreamlinedCompletionList"];
}

+ (BOOL)isLabelPreviousSearchesInCompletionListEnabled
{
  if (isLabelPreviousSearchesInCompletionListEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isLabelPreviousSearchesInCompletionListEnabled];
  }

  return isLabelPreviousSearchesInCompletionListEnabled_usesLabelPreviousSearchesInCompletionList;
}

void __72__WBSFeatureAvailability_isLabelPreviousSearchesInCompletionListEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isLabelPreviousSearchesInCompletionListEnabled_usesLabelPreviousSearchesInCompletionList = [v0 BOOLForKey:@"DebugLabelPreviousSearchesInCompletionList"];
}

+ (BOOL)isSearchEvaluationLoggingEnabled
{
  if (isSearchEvaluationLoggingEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isSearchEvaluationLoggingEnabled];
  }

  return isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled;
}

void __58__WBSFeatureAvailability_isSearchEvaluationLoggingEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled = [v0 BOOLForKey:@"WBSDebugSearchEvaluationLogging"];

  if (isSearchEvaluationLoggingEnabled_isSearchEvaluationLoggingEnabled == 1)
  {
    v1 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v1 removeObjectForKey:@"WBSDebugSearchEvaluationLogging"];

    v2 = dispatch_time(0, 900000000000);
    v3 = MEMORY[0x1E69E96A0];

    dispatch_after(v2, v3, &__block_literal_global_144);
  }
}

+ (BOOL)isDTOMitigationEnabled
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = [MEMORY[0x1E696EE70] sharedInstance];
    v4 = [v3 isFeatureEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)isSaveForLaterEnabled
{
  if (isSaveForLaterEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isSaveForLaterEnabled];
  }

  return isSaveForLaterEnabled_saveForLaterEnabled;
}

void __47__WBSFeatureAvailability_isSaveForLaterEnabled__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    isSaveForLaterEnabled_saveForLaterEnabled = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
    isSaveForLaterEnabled_saveForLaterEnabled = [v0 BOOLForKey:@"EnableSaveForLater"];
  }
}

+ (BOOL)isOnDeviceSummarizationEnabled
{
  if (isOnDeviceSummarizationEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isOnDeviceSummarizationEnabled];
  }

  return isOnDeviceSummarizationEnabled_onDeviceSummarizationEnabled;
}

void __56__WBSFeatureAvailability_isOnDeviceSummarizationEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isOnDeviceSummarizationEnabled_onDeviceSummarizationEnabled = [v0 safari_BOOLForKey:@"EnableOnDeviceSummarization" defaultValue:1];
}

+ (BOOL)isAutomaticStrongPasswordsEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_BOOLForKey:@"EnableAutomaticStrongPasswords" defaultValue:1];

  return v3;
}

+ (BOOL)isAutomaticPasskeyUpgradesEnabled
{
  v2 = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [v2 safari_BOOLForKey:@"AllowAutomaticPasskeyUpgrades" defaultValue:1];

  return v3;
}

+ (BOOL)isKeychainCardsInWalletEnabled
{
  if (isKeychainCardsInWalletEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isKeychainCardsInWalletEnabled];
  }

  return isKeychainCardsInWalletEnabled_isKeychainCardsInWalletEnabled;
}

void __56__WBSFeatureAvailability_isKeychainCardsInWalletEnabled__block_invoke()
{
  if (_os_feature_enabled_impl())
  {
    isKeychainCardsInWalletEnabled_isKeychainCardsInWalletEnabled = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
    isKeychainCardsInWalletEnabled_isKeychainCardsInWalletEnabled = [v0 BOOLForKey:@"EnableKeychainCardsInWallet"];
  }
}

+ (BOOL)scribbleRequiresVisualSimilarity
{
  if (scribbleRequiresVisualSimilarity_onceToken != -1)
  {
    +[WBSFeatureAvailability scribbleRequiresVisualSimilarity];
  }

  return scribbleRequiresVisualSimilarity_requiresVisualSimilarity;
}

void __58__WBSFeatureAvailability_scribbleRequiresVisualSimilarity__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  scribbleRequiresVisualSimilarity_requiresVisualSimilarity = [v0 safari_BOOLForKey:@"DebugScribbleRequiresVisualSimilarity" defaultValue:1];
}

+ (BOOL)isOnboardingTipsEnabled
{
  if (+[WBSFeatureAvailability isOnboardingEnabled])
  {
    if (isOnboardingTipsEnabled_onceToken != -1)
    {
      +[WBSFeatureAvailability isOnboardingTipsEnabled];
    }

    v2 = isOnboardingTipsEnabled_isOnboardingTipsEnabled;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void __49__WBSFeatureAvailability_isOnboardingTipsEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isOnboardingTipsEnabled_isOnboardingTipsEnabled = [v0 safari_BOOLForKey:@"EnableSafariOnboardingTips" defaultValue:1];
}

+ (BOOL)isPostFixSuggestionsEnabled
{
  if (isPostFixSuggestionsEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isPostFixSuggestionsEnabled];
  }

  return isPostFixSuggestionsEnabled_isPostFixSuggestionsEnabled;
}

void __53__WBSFeatureAvailability_isPostFixSuggestionsEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isPostFixSuggestionsEnabled_isPostFixSuggestionsEnabled = [v0 BOOLForKey:@"EnablePoistFixSuggestions"];
}

+ (BOOL)isDropOutliersInFrequentlyVisitedEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 BOOLForKey:@"EnableDropOutliersInFrequentlyVisited"];

  return v3;
}

+ (BOOL)isAllowLogOnURLsInFrequentlyVisitedEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 BOOLForKey:@"FrequentlyVisitedSitesAllowLogonURLs"];

  return v3;
}

+ (BOOL)isCompletionListRedesignEnabled
{
  if (isCompletionListRedesignEnabled_onceToken != -1)
  {
    +[WBSFeatureAvailability isCompletionListRedesignEnabled];
  }

  return isCompletionListRedesignEnabled_isCompletionListRedesignEnabled;
}

void __57__WBSFeatureAvailability_isCompletionListRedesignEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] safari_browserDefaults];
  isCompletionListRedesignEnabled_isCompletionListRedesignEnabled = [v0 safari_BOOLForKey:@"EnableCompletionListRedesignKey" defaultValue:1];
}

uint64_t __38__WBSFeatureAvailability_isWAPEnabled__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _isWAPEnabled];
  isWAPEnabled_isWAPEnabled = result;
  return result;
}

+ (BOOL)isPasswordsAppFuzzySearchEnabled
{
  v2 = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [v2 safari_BOOLForKey:@"EnablePasswordsFuzzySearch" defaultValue:1];

  return v3;
}

+ (BOOL)isPromotePasskeyUpgradesEnabled
{
  v2 = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [v2 safari_BOOLForKey:@"PromotePasskeyUpgrades" defaultValue:1];

  return v3;
}

+ (BOOL)getForcedCFPreferencesAppBoolValueForKey:(__CFString *)a3 applicationID:(__CFString *)a4 withFallbackValue:(unsigned __int8)a5
{
  v5 = a5;
  if (CFPreferencesAppValueIsForced(a3, a4))
  {
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(a3, a4, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v5 = AppBooleanValue;
    }
  }

  return v5 != 0;
}

+ (BOOL)isSavedAccountHistoryInAutoFillEnabled
{
  v2 = [MEMORY[0x1E695E000] pm_defaults];
  v3 = [v2 safari_BOOLForKey:@"WBSSavedAccountHistoryInAutoFill" defaultValue:0];

  return v3;
}

+ (BOOL)isCrossFrameAutoFillEnabled
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 safari_BOOLForKey:@"EnableCrossFrameAutoFill" defaultValue:1];

  return v3;
}

+ (BOOL)isAutoFillInternalFeedbackUIEnabled
{
  v2 = [a1 shouldShowInternalUI];
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"WBSAutoFillInternalFeedbackUIEnabled"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)_isLockdownModeEnabled
{
  v2 = [MEMORY[0x1E69AD388] shared];
  v3 = [v2 enabled];

  return v3;
}

+ (BOOL)isNetworkFetchingForPasswordsEnabled
{
  v3 = [MEMORY[0x1E695E000] pm_defaults];
  LOBYTE(a1) = [v3 safari_BOOLForKey:@"WBSPasswordsAppBackgroundNetworkingEnabled" defaultValue:{objc_msgSend(a1, "_isLockdownModeEnabled") ^ 1}];

  return a1;
}

@end