@interface SBApplicationInfo
+ (uint64_t)_calculateApplicationSupportedTypesFromProxy:(uint64_t)proxy;
+ (uint64_t)_visibilityOverrideFromInfo:(void *)info entitlements:;
- (BOOL)_supportsApplicationType:(_BOOL8)result;
- (BOOL)browserEngineIsRegionallyRestricted;
- (BOOL)embeddedBrowserEngineIsRegionallyRestricted;
- (BOOL)isAppleApplication;
- (BOOL)statusBarHiddenWhenVerticallyCompact;
- (NSArray)staticApplicationShortcutItems;
- (NSUserDefaults)userDefaults;
- (id)_configureTags:(char)tags hasVisibilityOverride:;
- (id)dataContainerURL;
- (int64_t)backgroundStyle;
- (int64_t)backgroundStyleForRequestedBackgroundStyle:(int64_t)style;
- (uint64_t)_calculateVoipClassWithEntitlements:(uint64_t)entitlements;
- (unint64_t)uninstallCapability;
- (void)_loadFromProxy:(id)proxy;
@end

@implementation SBApplicationInfo

- (int64_t)backgroundStyle
{
  if (!self->_allowNonDefaultBackgroundStyle)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBApplicationInfo;
  return [(SBApplicationInfo *)&v5 backgroundStyle];
}

- (id)dataContainerURL
{
  dataContainerURLOverride = self->_dataContainerURLOverride;
  if (dataContainerURLOverride)
  {
    dataContainerURL = dataContainerURLOverride;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBApplicationInfo;
    dataContainerURL = [(SBApplicationInfo *)&v5 dataContainerURL];
  }

  return dataContainerURL;
}

- (BOOL)isAppleApplication
{
  if ([(SBApplicationInfo *)self isSystemApplication])
  {
    LOBYTE(v3) = 1;
  }

  else if (![(SBApplicationInfo *)self isProvisioningProfileValidated]|| (v3 = [(SBApplicationInfo *)self isBeta]) != 0)
  {
    bundleIdentifier = [(SBApplicationInfo *)self bundleIdentifier];
    v5 = [bundleIdentifier hasPrefix:@"com.apple."];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)statusBarHiddenWhenVerticallyCompact
{
  if (!self->_isOkemoLinked)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBApplicationInfo;
  return [(SBApplicationInfo *)&v5 statusBarHiddenWhenVerticallyCompact];
}

- (unint64_t)uninstallCapability
{
  uninstallCapability = self->_uninstallCapability;
  if (uninstallCapability == 2)
  {
    bundleIdentifier = [(SBApplicationInfo *)self bundleIdentifier];
    v4 = [objc_alloc(MEMORY[0x277D1C160]) initWithBundleIdentifier:bundleIdentifier];
    uninstallCapability = 2 * ([MEMORY[0x277D1C148] removabilityForAppWithIdentity:v4 error:0] != 3);
  }

  return uninstallCapability;
}

- (NSArray)staticApplicationShortcutItems
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SBApplicationInfo_staticApplicationShortcutItems__block_invoke;
  v4[3] = &unk_2783A8C18;
  v4[4] = self;
  [(SBApplicationInfo *)self _synchronize:v4];
  return self->_staticApplicationShortcutItems;
}

void __51__SBApplicationInfo_staticApplicationShortcutItems__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((*(v1 + 688) & 1) == 0)
  {
    if ([*(v1 + 448) count])
    {
      v3 = objc_alloc(MEMORY[0x277CF0BB8]);
      v4 = [*v2 bundleURL];
      v5 = [v3 initWithURL:v4];

      if (v5)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = *(*v2 + 56);
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v16;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v16 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v15 + 1) + 8 * i);
              v13[0] = MEMORY[0x277D85DD0];
              v13[1] = 3221225472;
              v13[2] = __51__SBApplicationInfo_staticApplicationShortcutItems__block_invoke_2;
              v13[3] = &unk_2783AE018;
              v14 = v5;
              [v11 _localizeWithHandler:v13];
            }

            v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v8);
        }

        *(*v2 + 688) = 1;
      }

      else
      {
        v12 = SBLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __51__SBApplicationInfo_staticApplicationShortcutItems__block_invoke_cold_1(v2, v12);
        }
      }
    }

    else
    {
      *(*v2 + 688) = 1;
    }
  }
}

id __51__SBApplicationInfo_staticApplicationShortcutItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) localizedStringForKey:v3 value:0 table:@"InfoPlist"];
  if ([v4 isEqualToString:v3])
  {
    v5 = [*(a1 + 32) localizedStringForKey:v3 value:0 table:@"InfoPlist-OrbHW"];

    v4 = v5;
  }

  return v4;
}

- (NSUserDefaults)userDefaults
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SBApplicationInfo_userDefaults__block_invoke;
  v4[3] = &unk_2783A8C18;
  v4[4] = self;
  [(SBApplicationInfo *)self _synchronize:v4];
  return self->_lazy_userDefaults;
}

void __33__SBApplicationInfo_userDefaults__block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 528))
  {
    v2 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = [*(a1 + 32) preferenceDomain];
    v3 = [v2 initWithSuiteName:v6];
    v4 = *(a1 + 32);
    v5 = *(v4 + 528);
    *(v4 + 528) = v3;
  }
}

- (int64_t)backgroundStyleForRequestedBackgroundStyle:(int64_t)style
{
  if ([(SBApplicationInfo *)self canChangeBackgroundStyle])
  {
    return style;
  }

  return [(SBApplicationInfo *)self backgroundStyle];
}

- (BOOL)browserEngineIsRegionallyRestricted
{
  if ([(NSSet *)self->_eligibilityDomains containsObject:&unk_2833702E0])
  {
    bundleIdentifier = [(SBApplicationInfo *)self bundleIdentifier];
    processIdentity = [(SBApplicationInfo *)self processIdentity];
    personaString = [processIdentity personaString];
    v6 = !_appIsEligibleForDomainWithIdentifierAndPersona(&unk_2833702E0, bundleIdentifier, personaString);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)embeddedBrowserEngineIsRegionallyRestricted
{
  if ([(NSSet *)self->_eligibilityDomains containsObject:&unk_2833702F8])
  {
    bundleIdentifier = [(SBApplicationInfo *)self bundleIdentifier];
    processIdentity = [(SBApplicationInfo *)self processIdentity];
    personaString = [processIdentity personaString];
    v6 = !_appIsEligibleForDomainWithIdentifierAndPersona(&unk_2833702F8, bundleIdentifier, personaString);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_loadFromProxy:(id)proxy
{
  v161 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if (_loadFromProxy__onceToken != -1)
  {
    [SBApplicationInfo _loadFromProxy:];
  }

  v155.receiver = self;
  v155.super_class = SBApplicationInfo;
  [(SBApplicationInfo *)&v155 _loadFromProxy:proxyCopy];
  bundleIdentifier = [(SBApplicationInfo *)self bundleIdentifier];
  v6 = [proxyCopy objectsForInfoDictionaryKeys:_loadFromProxy____infoKeys];
  v7 = [proxyCopy entitlementValuesForKeys:_loadFromProxy____entitlementKeys];
  bundleURL = [(SBApplicationInfo *)self bundleURL];
  absoluteString = [bundleURL absoluteString];
  installInstanceID = self->_installInstanceID;
  self->_installInstanceID = absoluteString;

  self->_isNewsstand = [v6 BOOLForKey:@"UINewsstandApp"];
  v146 = bundleIdentifier;
  if ([bundleIdentifier isEqualToString:@"com.apple.webapp"])
  {
    self->_representsWebApplication = 1;
  }

  dataContainerURL = [(SBApplicationInfo *)self dataContainerURL];
  v147 = v7;
  if (!dataContainerURL)
  {
    if ([(SBApplicationInfo *)self isSystemApplication])
    {
      v12 = MEMORY[0x277CBEBC0];
      v13 = BSCurrentUserDirectory();
      dataContainerURL = [v12 fileURLWithPath:v13];

      v7 = v147;
    }

    else
    {
      dataContainerURL = 0;
    }
  }

  objc_storeStrong(&self->_restorationArchiveContainerURL, dataContainerURL);
  self->_isOkemoLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"8.0"];
  self->_isMonarchLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"9.0"];
  self->_isTigrisLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"11.0"];
  self->_isPeaceLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"12.0"];
  self->_isPeaceBLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"12.1"];
  self->_isYukonLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"13.0"];
  self->_isYukonELinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"13.2"];
  self->_isAzulLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"14.0"];
  self->_isAzulHWLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"14.1"];
  self->_isAzulBLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"14.2"];
  self->_isSkyLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"15.0"];
  self->_isSydneyLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"16.0"];
  self->_isCrystalLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"18.0"];
  self->_isLuckLinked = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"19.0"];
  if ([v6 BOOLForKey:@"SBIsLaunchableDuringSetup"])
  {
    v14 = 1;
  }

  else
  {
    v14 = [v7 BOOLForKey:@"com.apple.private.shortcuts.IntentsAvailableDuringBuddy"];
  }

  self->_isLaunchableDuringSetup = v14;
  self->_isLicensedToDevice = [proxyCopy hasMIDBasedSINF];
  v154.receiver = self;
  v154.super_class = SBApplicationInfo;
  displayName = [(SBApplicationInfo *)&v154 displayName];
  v148 = v6;
  if (![displayName length])
  {
    [(SBApplicationInfo *)self bundleURL];
    v17 = v16 = displayName;
    path = [v17 path];
    lastPathComponent = [path lastPathComponent];
    displayName = [lastPathComponent stringByDeletingPathExtension];

    v6 = v148;
    v7 = v147;
  }

  v143 = displayName;
  v20 = [displayName copy];
  displayName = self->_displayName;
  self->_displayName = v20;

  self->_preventsLaunchInterfaceSplitting = [v6 BOOLForKey:@"SBPreventsDefaultLaunchImageSplitting"];
  v22 = *MEMORY[0x277D65718];
  v23 = [v6 stringForKey:*MEMORY[0x277D65718]];
  launchInterfaceFileName = self->_launchInterfaceFileName;
  self->_launchInterfaceFileName = v23;

  v25 = [v6 objectForKey:v22];
  if (v25)
  {
    p_usesSplashBoard = &self->_usesSplashBoard;
    self->_usesSplashBoard = 1;
  }

  else
  {
    v26 = [v6 objectForKey:*MEMORY[0x277D65720]];
    if (v26)
    {
      p_usesSplashBoard = &self->_usesSplashBoard;
      self->_usesSplashBoard = 1;
    }

    else
    {
      v27 = [v6 objectForKey:*MEMORY[0x277D65708]];
      if (v27)
      {
        p_usesSplashBoard = &self->_usesSplashBoard;
        self->_usesSplashBoard = 1;
      }

      else
      {
        v28 = [v6 objectForKey:*MEMORY[0x277D65710]];
        p_usesSplashBoard = &self->_usesSplashBoard;
        self->_usesSplashBoard = v28 != 0;
      }

      v7 = v147;
    }

    v6 = v148;
  }

  v144 = dataContainerURL;

  if (!*p_usesSplashBoard)
  {
    v30 = [v6 objectForKey:@"UILaunchImages"];
    v31 = [SBApplicationLaunchImageParameters launchImageParametersFromLaunchImagesInfo:v30 withBundleIdentifier:v146 isMonarchLinked:self->_isMonarchLinked];
    launchImageInfo = self->_launchImageInfo;
    self->_launchImageInfo = v31;

    v7 = v147;
  }

  v33 = [v7 numberForKey:@"com.apple.springboard.disablecompatibilitymode.late2022"];
  if ([v33 BOOLValue])
  {
    self->_disablesClassicMode = 1;
  }

  else
  {
    v34 = [v7 numberForKey:@"com.apple.springboard.disablecompatibilitymode.forever"];
    self->_disablesClassicMode = [v34 BOOLValue];

    v7 = v147;
  }

  self->_statusBarIsLegacy = [(SBApplicationInfo *)self builtOnOrAfterSDKVersion:@"7.0"]^ 1;
  v35 = [v6 arrayForKey:*MEMORY[0x277CBEC60]];
  v36 = [v35 bs_objectsOfClass:objc_opt_class()];

  v145 = v36;
  if ([v36 count])
  {
    v142 = p_usesSplashBoard;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v150 objects:v160 count:16];
    if (v38)
    {
      v40 = v38;
      v39 = 0;
      v41 = *v151;
      v42 = *MEMORY[0x277CBEC58];
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v151 != v41)
          {
            objc_enumerationMutation(v37);
          }

          v44 = [*(*(&v150 + 1) + 8 * i) bs_safeArrayForKey:{v42, v142}];
          v45 = [v44 bs_objectsOfClass:objc_opt_class()];

          if ([v45 count])
          {
            if (v39)
            {
              [v39 addObjectsFromArray:v45];
            }

            else
            {
              v39 = [MEMORY[0x277CBEB58] setWithArray:v45];
            }
          }
        }

        v40 = [v37 countByEnumeratingWithState:&v150 objects:v160 count:16];
      }

      while (v40);
    }

    else
    {
      v39 = 0;
    }

    v46 = [v39 copy];
    urlSchemes = self->_urlSchemes;
    self->_urlSchemes = v46;

    v7 = v147;
    v6 = v148;
    p_usesSplashBoard = v142;
  }

  v48 = [v6 stringForKey:{@"UIApplicationShortcutWidget", v142}];
  v49 = [v48 copy];
  applicationShortcutWidgetBundleIdentifier = self->_applicationShortcutWidgetBundleIdentifier;
  self->_applicationShortcutWidgetBundleIdentifier = v49;

  v51 = MEMORY[0x277D669C8];
  v52 = [v6 objectForKey:@"UIApplicationShortcutItems"];
  v53 = [v51 _staticApplicationShortcutItemsFromInfoPlistEntry:v52];
  staticApplicationShortcutItems = self->_staticApplicationShortcutItems;
  self->_staticApplicationShortcutItems = v53;

  v55 = [v6 numberForKey:@"UIApplicationShortcutItemsVersion"];
  self->_dynamicApplicationShortcutItemsVersion = [v55 unsignedIntegerValue];

  if ([(SBApplicationInfo *)self isSystemApplication])
  {
    isDeletable = [proxyCopy isDeletable];
    v57 = 2;
    if (!isDeletable)
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 1;
  }

  self->_uninstallCapability = v57;
  self->_visibilityOverride = [SBApplicationInfo _visibilityOverrideFromInfo:v148 entitlements:v7];
  v58 = +[SBPlatformController sharedInstance];
  isInternalInstall = [v58 isInternalInstall];
  isCarrierInstall = [v58 isCarrierInstall];
  if ((isInternalInstall & 1) != 0 || (isCarrierInstall & 1) != 0 || (v61 = [v147 BOOLForKey:@"com.apple.springboard.allowIconVisibilityChanges"]) != 0)
  {
    LOBYTE(v61) = [v148 BOOLForKey:@"SBIconVisibilityAppLibraryOnly"];
  }

  self->_appLibraryOnlyByDefault = v61;
  tags = [(SBApplicationInfo *)self tags];
  v63 = self->_uninstallCapability == 2 || self->_visibilityOverride != 0;
  v64 = [(SBApplicationInfo *)self _configureTags:tags hasVisibilityOverride:v63];
  [(SBApplicationInfo *)self _overrideTags:v64];

  tags2 = [(SBApplicationInfo *)self tags];
  self->_hasHiddenTag = [tags2 containsObject:@"hidden"];

  isSystemApplication = [(SBApplicationInfo *)self isSystemApplication];
  if (isSystemApplication)
  {
    LOBYTE(isSystemApplication) = [v148 BOOLForKey:@"SBDisableSnapshots"];
  }

  self->_disablesSnapshots = isSystemApplication;
  isSystemApplication2 = [(SBApplicationInfo *)self isSystemApplication];
  if (isSystemApplication2)
  {
    LOBYTE(isSystemApplication2) = [v148 BOOLForKey:@"SBPrefersSavedSnapshots"];
  }

  self->_prefersSavedSnapshots = isSystemApplication2;
  self->_wantsLaunchWithoutPNG = [v148 BOOLForKey:@"SBWantsLiveResume"];
  self->_supportedTypes |= [SBApplicationInfo _calculateApplicationSupportedTypesFromProxy:proxyCopy];
  self->_defaultStatusBarStyle = [(SBApplicationInfo *)self requestedStatusBarStyle];
  if ([MEMORY[0x277D0ACA8] _applicationTypeForProxy:proxyCopy] > 1)
  {
    v69 = [v147 numberForKey:@"com.apple.springboard.appbackgroundstyle"];
    bOOLValue = [v69 BOOLValue];

    self->_canChangeBackgroundStyle = bOOLValue;
    self->_allowNonDefaultBackgroundStyle = bOOLValue;
    v71 = [v147 numberForKey:@"com.apple.developer.openURL-source"];
    bOOLValue2 = [v71 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
    self->_canChangeBackgroundStyle = 1;
    self->_allowNonDefaultBackgroundStyle = 1;
  }

  self->_alwaysReceivesOpenURLSource = bOOLValue2;
  supportedTypes = self->_supportedTypes;
  v73 = +[SBPlatformController sharedInstance];
  isMedusaCapable = [v73 isMedusaCapable];

  LOBYTE(v75) = 1;
  if (isMedusaCapable && (supportedTypes & 2) != 0)
  {
    v76 = +[SBDefaults localDefaults];
    applicationDefaults = [v76 applicationDefaults];
    forcesMedusaAdoption = [applicationDefaults forcesMedusaAdoption];

    if (forcesMedusaAdoption)
    {
      self->_wantsFullScreen = 0;
      goto LABEL_70;
    }

    if (self->_isMonarchLinked && *p_usesSplashBoard && ([v148 BOOLForKey:@"UIRequiresFullScreen"] & 1) == 0)
    {
      v75 = [(SBApplicationInfo *)self supportsAllInterfaceOrientations]^ 1;
    }

    else
    {
      LOBYTE(v75) = 1;
    }
  }

  self->_wantsFullScreen = v75;
LABEL_70:
  if ([(SBApplicationInfo *)self isSystemApplication])
  {
    v79 = MEMORY[0x277D75128];
    v80 = [v148 objectForKey:*MEMORY[0x277D76F18]];
    [v79 _statusBarStyleOverridesForArray:v80];

    v81 = STUIBackgroundActivityIdentifiersForStyleOverrides();
    ignoredBackgroundActivityIdentifiers = self->_ignoredBackgroundActivityIdentifiers;
    self->_ignoredBackgroundActivityIdentifiers = v81;
  }

  v83 = +[SBDefaults localDefaults];
  applicationDefaults2 = [v83 applicationDefaults];
  ignoresDeclaredNetworkUsage = [applicationDefaults2 ignoresDeclaredNetworkUsage];

  v86 = v148;
  if ((ignoresDeclaredNetworkUsage & 1) == 0)
  {
    v87 = [v148 numberForKey:@"SBUsesNetwork"];
    self->_networkUsageTypes = [v87 unsignedIntValue];
  }

  if ([v148 BOOLForKey:@"UIRequiresPersistentWiFi"])
  {
    self->_networkUsageTypes |= 2u;
  }

  if (![(SBApplicationInfo *)self isSystemApplication])
  {
    self->_isGameCenterEnabled = [proxyCopy isGameCenterEnabled];
    self->_wasGameCenterEverEnabled = [proxyCopy gameCenterEverEnabled];
  }

  v88 = [v148 objectForKey:*MEMORY[0x277D76640]];
  if (v88)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v89 = [v88 containsObject:@"hidpi"];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_84;
      }

      v89 = [v88 bs_BOOLForKey:@"hidpi"];
    }

    self->_requiresHiDPI = v89;
  }

LABEL_84:
  self->_voipClass = [(SBApplicationInfo *)self _calculateVoipClassWithEntitlements:v147];
  v90 = [MEMORY[0x277CF8A10] declarationForBundleIdentifier:v146 info:v148 entitlements:v147];
  carPlayDeclaration = self->_carPlayDeclaration;
  self->_carPlayDeclaration = v90;

  if ([(SBApplicationInfo *)self isSystemApplication])
  {
    self->_alwaysLaunchesSuspended = [v148 BOOLForKey:@"SBLaunchSuspendedAlways"];
  }

  self->_systemAppSupportsLocalNotifications = [v148 BOOLForKey:@"SBAppUsesLocalNotifications"];
  if ([(SBApplicationInfo *)self isSystemApplication])
  {
    v92 = [v148 arrayForKey:@"SBDomainsToPreheat"];
    v93 = [v92 bs_objectsOfClass:objc_opt_class()];
    domainsToPreheat = self->_domainsToPreheat;
    self->_domainsToPreheat = v93;
  }

  v95 = [v148 stringForKey:*MEMORY[0x277D77270]];
  if (v95)
  {
    v96 = v95;

LABEL_91:
    self->_whitePointAdaptivityStyle = _UIWhitePointAdaptivityStyleFromString();

    goto LABEL_92;
  }

  v96 = [v148 stringForKey:*MEMORY[0x277D77628]];

  if (v96)
  {
    goto LABEL_91;
  }

  self->_whitePointAdaptivityStyle = 0;
LABEL_92:
  dataContainerURL2 = [(SBApplicationInfo *)self dataContainerURL];
  v98 = [dataContainerURL2 URLByAppendingPathComponent:@"Documents/Inbox/"];
  documentInboxURL = self->_documentInboxURL;
  self->_documentInboxURL = v98;

  v100 = [v147 numberForKey:@"com.apple.springboard.disallowNotificationCenter"];
  self->_disallowsNotificationCenter = [v100 BOOLValue];

  v101 = [v147 numberForKey:@"com.apple.springboard.disallowControlCenter"];
  self->_disallowsControlCenter = [v101 BOOLValue];

  v102 = [v147 numberForKey:@"com.apple.springboard.deliveropenurlusingworkspace"];
  self->_alwaysDeliversOpenURLActionsUsingWorkspace = [v102 BOOLValue];

  if ([(SBApplicationInfo *)self isNewsstand])
  {
    v103 = [v147 stringForKey:@"com.apple.newsstand.content-notification-daily-limit"];
    v104 = v103;
    if (v103)
    {
      integerValue = [v103 integerValue];
      self->_allowedNKNotificationsPerDay = integerValue & ~(integerValue >> 63);
      v106 = SBLogCommon();
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        allowedNKNotificationsPerDay = self->_allowedNKNotificationsPerDay;
        bundleIdentifier2 = [(SBApplicationInfo *)self bundleIdentifier];
        *buf = 134218242;
        v157 = allowedNKNotificationsPerDay;
        v158 = 2114;
        v159 = bundleIdentifier2;
        _os_log_impl(&dword_21ED4E000, v106, OS_LOG_TYPE_INFO, "NKThrottle: setting _allowedContentNotificationsPerDay=%lu for app=%{public}@", buf, 0x16u);
      }

      v86 = v148;
    }

    else
    {
      self->_allowedNKNotificationsPerDay = 1;
    }
  }

  else
  {
    self->_allowedNKNotificationsPerDay = 0;
  }

  systemAppSupportsLocalNotifications = [(SBApplicationInfo *)self type]!= 1 || [(SBApplicationInfo *)self systemAppSupportsLocalNotifications];
  self->_usesRLNDataProvider = systemAppSupportsLocalNotifications;
  if ([v86 BOOLForKey:@"SBShouldLaunchLiveImmediately"])
  {
    self->_shouldSkipCrossfadeToLive = 1;
  }

  else
  {
    bundleIdentifier3 = [(SBApplicationInfo *)self bundleIdentifier];
    self->_shouldSkipCrossfadeToLive = [bundleIdentifier3 isEqualToString:@"com.apple.camera"];
  }

  [proxyCopy installType];
  self->_cloudDemoted = FBSInstallTypeIsCloudDemoted();
  self->_supports64Bit = [proxyCopy compatibilityState] != 2;
  v149.receiver = self;
  v149.super_class = SBApplicationInfo;
  self->_supportsMultiwindow = [(SBApplicationInfo *)&v149 supportsMultiwindow];
  v111 = [v147 numberForKey:@"com.apple.developer.on-demand-install-capable"];
  bOOLValue3 = [v111 BOOLValue];

  if (bOOLValue3)
  {
    self->_supportsMultiwindow = 0;
    self->_appClip = 1;
  }

  self->_supportsYttrium = [v86 BOOLForKey:@"UISupportsYttrium"];
  self->_requiresPreSolariumDesign = [v86 BOOLForKey:@"UIDesignRequiresCompatibility"];
  self->_wantsExclusiveForeground = [v86 BOOLForKey:@"SBWantsExclusiveForeground"];
  diskUsage = [proxyCopy diskUsage];
  staticUsage = [diskUsage staticUsage];
  self->_applicationSizeInBytes = [staticUsage unsignedLongLongValue];

  self->_arcadeApplication = [proxyCopy isArcadeApp];
  v115 = objc_opt_new();
  v116 = v115;
  if (self->_arcadeApplication)
  {
    [v115 addObject:@" Arcade"];
  }

  else
  {
    genre = [proxyCopy genre];

    if (genre)
    {
      genre2 = [proxyCopy genre];
      [v116 addObject:genre2];
    }

    subgenres = [proxyCopy subgenres];

    if (subgenres)
    {
      subgenres2 = [proxyCopy subgenres];
      [v116 addObjectsFromArray:subgenres2];
    }
  }

  if (![v116 count])
  {
    [v116 removeAllObjects];
    if ([(SBApplicationInfo *)self isSystemApplication])
    {
      v121 = @" System";
    }

    else if ([(SBApplicationInfo *)self isInternalApplication])
    {
      v121 = @" Internal";
    }

    else
    {
      v121 = @"Other";
    }

    [v116 addObject:v121];
  }

  v122 = [v116 copy];
  iTunesCategoriesOrderedByRelevancy = self->_iTunesCategoriesOrderedByRelevancy;
  self->_iTunesCategoriesOrderedByRelevancy = v122;

  v124 = [v147 stringForKey:@"useractivity-team-identifier"];
  userActivityTeamIdentifier = self->_userActivityTeamIdentifier;
  self->_userActivityTeamIdentifier = v124;

  self->_identifiedGame = [MEMORY[0x277D0C988] applicationIsIdentifiedGame:proxyCopy info:v86 entitlements:v147];
  vendorName = [proxyCopy vendorName];
  v127 = [vendorName copy];
  vendorName = self->_vendorName;
  self->_vendorName = v127;

  v129 = [v147 numberForKey:@"com.apple.developer.storekit.external-purchase-link"];
  if ([v129 BOOLValue])
  {
    self->_triggersStoreKitMessaging = 1;
  }

  else
  {
    v130 = [v147 numberForKey:@"com.apple.developer.storekit.external-purchase"];
    self->_triggersStoreKitMessaging = [v130 BOOLValue];
  }

  self->_requiresAuthorizationForAutoUpdates = [v86 BOOLForKey:@"NSAppNeedsAutoUpdateConsent"];
  v131 = [v86 objectForKey:@"NSAllowMicModeControlWithoutSensorsActive"];

  if (v131)
  {
    v132 = @"NSAllowMicModeControlWithoutSensorsActive";
  }

  else
  {
    v132 = @"NSAlwaysAllowMicrophoneModeControl";
  }

  self->_supportsInactiveMicModeSelection = [v86 BOOLForKey:v132];
  if (([v146 isEqualToString:@"com.apple.mobilesafari"] & 1) == 0 && (objc_msgSend(v146, "isEqualToString:", @"com.apple.SafariViewService") & 1) == 0)
  {
    v133 = [v147 numberForKey:@"com.apple.developer.web-browser-engine.host"];
    bOOLValue4 = [v133 BOOLValue];

    if (bOOLValue4)
    {
      v135 = [MEMORY[0x277CBEB98] setWithObject:&unk_2833702E0];
      eligibilityDomains = self->_eligibilityDomains;
      self->_eligibilityDomains = v135;
    }

    v137 = [v147 numberForKey:@"com.apple.developer.embedded-web-browser-engine"];
    bOOLValue5 = [v137 BOOLValue];

    if (bOOLValue5)
    {
      v139 = self->_eligibilityDomains;
      if (v139)
      {
        [(NSSet *)v139 setByAddingObject:&unk_2833702F8];
      }

      else
      {
        [MEMORY[0x277CBEB98] setWithObject:&unk_2833702F8];
      }
      v140 = ;
      v141 = self->_eligibilityDomains;
      self->_eligibilityDomains = v140;
    }
  }
}

void __36__SBApplicationInfo__loadFromProxy___block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] setWithObjects:{@"SBIsLaunchableDuringSetup", *MEMORY[0x277D65718], *MEMORY[0x277D65720], *MEMORY[0x277D65708], *MEMORY[0x277D65710], @"UILaunchImages", *MEMORY[0x277CBEC60], @"UIApplicationShortcutWidget", @"UIApplicationShortcutItems", @"UIApplicationShortcutItemsVersion", @"SBIconVisibilitySetByAppPreference", @"SBIconVisibilityDefaultVisible", @"SBIconVisibilityDefaultVisibleInstallTypes", @"SBIconVisibilityDefaultVisiblePlatforms", @"SBIconVisibilityDefaultVisibleFeatureFlag", @"SBIconVisibilityAppLibraryOnly", @"SBDisableSnapshots", @"SBPrefersSavedSnapshots", @"SBWantsLiveResume", @"UIRequiresFullScreen", *MEMORY[0x277D76F18], @"SBUsesNetwork", @"UIRequiresPersistentWiFi", @"SBPreventsDefaultLaunchImageSplitting", *MEMORY[0x277D76640], @"UIApplicationShouldDisableScreenJail", @"SBLaunchSuspendedAlways", @"SBRequiresPasscodeBeforeFirstUnlock", @"SBAppUsesLocalNotifications", @"SBDomainsToPreheat", @"SBShouldLaunchLiveImmediately", *MEMORY[0x277D77270], *MEMORY[0x277D77628], @"UISupportsYttrium", @"UINewsstandApp", @"SBWantsExclusiveForeground", @"UIApplicationInterfaceManifest", *MEMORY[0x277D766D8], @"AVInitialRouteSharingPolicy", @"CFBundleAlternateNames", @"NSAppNeedsAutoUpdateConsent", @"LSApplicationCategoryType", @"NSAllowMicModeControlWithoutSensorsActive", @"NSAlwaysAllowMicrophoneModeControl", @"UIDesignRequiresCompatibility", 0}];
  v1 = [MEMORY[0x277CF8A10] requiredInfoKeys];
  [v0 unionSet:v1];

  v2 = [v0 copy];
  v3 = _loadFromProxy____infoKeys;
  _loadFromProxy____infoKeys = v2;

  v7 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.springboard.allowIconVisibilityChanges", @"com.apple.developer.legacyvoip", @"com.apple.springboard.disallowNotificationCenter", @"com.apple.springboard.disallowControlCenter", @"com.apple.newsstand.content-notification-daily-limit", @"com.apple.springboard.appbackgroundstyle", @"com.apple.springboard.disablecompatibilitymode.late2022", @"com.apple.springboard.disablecompatibilitymode.forever", @"com.apple.developer.openURL-source", @"com.apple.developer.on-demand-install-capable", @"com.apple.springboard.deliveropenurlusingworkspace", @"com.apple.developer.storekit.external-purchase", @"com.apple.developer.storekit.external-purchase-link", @"com.apple.developer.sustained-execution", @"com.apple.developer.kernel.increased-memory-limit", @"com.apple.developer.kernel.increased-debugging-memory-limit", @"com.apple.private.shortcuts.IntentsAvailableDuringBuddy", @"com.apple.developer.web-browser-engine.host", @"com.apple.developer.embedded-web-browser-engine", @"useractivity-team-identifier", 0}];

  v4 = [MEMORY[0x277CF8A10] requiredEntitlementKeys];
  [v7 unionSet:v4];

  v5 = [v7 copy];
  v6 = _loadFromProxy____entitlementKeys;
  _loadFromProxy____entitlementKeys = v5;
}

+ (uint64_t)_visibilityOverrideFromInfo:(void *)info entitlements:
{
  v4 = a2;
  infoCopy = info;
  objc_opt_self();
  v6 = +[SBPlatformController sharedInstance];
  isInternalInstall = [v6 isInternalInstall];
  isCarrierInstall = [v6 isCarrierInstall];
  if ([v4 BOOLForKey:@"SBIconVisibilitySetByAppPreference"] && (((isInternalInstall | isCarrierInstall) & 1) != 0 || objc_msgSend(infoCopy, "BOOLForKey:", @"com.apple.springboard.allowIconVisibilityChanges")))
  {
    v9 = [v4 objectForKey:@"SBIconVisibilityDefaultVisible"];

    if (v9)
    {
      if ([v4 BOOLForKey:@"SBIconVisibilityDefaultVisible"])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v12 = objc_opt_self();
      v13 = [v4 arrayForKey:@"SBIconVisibilityDefaultVisibleInstallTypes" withValuesOfClass:v12];

      if (v13)
      {
        v14 = @"user";
        if (isCarrierInstall)
        {
          v14 = @"carrier";
        }

        if (isInternalInstall)
        {
          v15 = @"internal";
        }

        else
        {
          v15 = v14;
        }

        v16 = [v13 containsObject:v15];
      }

      else
      {
        v16 = 0;
      }

      v17 = objc_opt_self();
      v18 = [v4 arrayForKey:@"SBIconVisibilityDefaultVisiblePlatforms" withValuesOfClass:v17];

      if (v18)
      {
        deviceClass = [v6 deviceClass];
        v16 |= [v18 containsObject:deviceClass];
      }

      v20 = [v4 stringForKey:@"SBIconVisibilityDefaultVisibleFeatureFlag"];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 componentsSeparatedByString:@"/"];
        if ([v22 count] == 2)
        {
          v23 = [v22 objectAtIndex:0];
          v24 = [v22 objectAtIndex:1];
          [v23 UTF8String];
          [v24 UTF8String];
          LOBYTE(v16) = _os_feature_enabled_impl() | v16;
        }
      }

      if (v16)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (uint64_t)_calculateApplicationSupportedTypesFromProxy:(uint64_t)proxy
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_self();
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
LABEL_3:
      v3 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom != 1)
    {
      goto LABEL_3;
    }
  }

  deviceFamily = [v2 deviceFamily];
  v7 = deviceFamily;
  if (deviceFamily)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [deviceFamily countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v3 = 0;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) description];
          if ([v12 isEqualToString:@"2"])
          {
            v13 = 2;
          }

          else
          {
            v13 = [v12 isEqualToString:@"1"];
          }

          v3 |= v13;
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

LABEL_20:
  return v3;
}

- (id)_configureTags:(char)tags hasVisibilityOverride:
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    if ((tags & 1) != 0 || ![self isInternalApplication])
    {
      v6 = 0;
    }

    else
    {
      v6 = @"SBInternalAppTag";
    }

    if ([self isAppleApplication])
    {
      if ([v5 count])
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      self = v8;
      if (!v6)
      {
        goto LABEL_16;
      }

      if (v8)
      {
        v9 = [v8 arrayByAddingObject:v6];

        self = v9;
LABEL_16:

        goto LABEL_17;
      }
    }

    else if (!v6)
    {
      self = 0;
      goto LABEL_16;
    }

    v11[0] = v6;
    self = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    goto LABEL_16;
  }

LABEL_17:

  return self;
}

- (BOOL)_supportsApplicationType:(_BOOL8)result
{
  if (result)
  {
    return (*(result + 648) & a2) != 0;
  }

  return result;
}

- (uint64_t)_calculateVoipClassWithEntitlements:(uint64_t)entitlements
{
  v3 = a2;
  if (entitlements)
  {
    if ([entitlements supportsBackgroundMode:*MEMORY[0x277D76790]])
    {
      if ([entitlements builtOnOrAfterSDKVersion:@"10.0"])
      {
        v4 = [v3 objectForKey:@"com.apple.developer.legacyvoip"];

        if (v4)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 1;
      }

      if ([entitlements builtOnOrAfterSDKVersion:@"15.0"])
      {
        entitlements = 2;
      }

      else
      {
        entitlements = v5;
      }
    }

    else
    {
      entitlements = 0;
    }
  }

  return entitlements;
}

void __51__SBApplicationInfo_staticApplicationShortcutItems__block_invoke_cold_1(id *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [*a1 bundleIdentifier];
  v5 = [*a1 bundleURL];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to localize staticApplicationShortcutItems for %@ because we failed to create a bundle for %@", &v6, 0x16u);
}

@end