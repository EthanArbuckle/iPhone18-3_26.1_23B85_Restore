@interface UNCNotificationSourceDescription
+ (id)_validEnvironmentFromEnvironment:(id)environment;
+ (id)applicationSourceDescriptionWithApplication:(id)application;
+ (id)applicationSourceDescriptionWithBundleIdentifier:(id)identifier;
+ (id)sourceDescriptionWithBundleIdentifier:(id)identifier;
+ (id)systemSourceDescriptionWithBundleIdentifier:(id)identifier;
+ (id)systemSourceDescriptionWithBundleURL:(id)l;
+ (id)systemSourceDirectoryURLs;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)setDefaultCategoriesFromArray:(id)array bundle:(id)bundle;
- (void)setDefaultTopicsFromArray:(id)array bundle:(id)bundle;
- (void)setIconFilesFromDictionary:(id)dictionary;
- (void)setSystemPropertiesFromDictionary:(id)dictionary bundle:(id)bundle;
@end

@implementation UNCNotificationSourceDescription

+ (id)systemSourceDirectoryURLs
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  if (UNIsInternalInstall())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = BSSystemRootDirectory();
    v11[0] = v4;
    v11[1] = @"AppleInternal";
    v11[2] = @"Library";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    v6 = [v3 pathWithComponents:v5];
    v7 = [v2 arrayByAddingObject:v6];

    v2 = v7;
  }

  v8 = [v2 bs_map:&__block_literal_global_9];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __70__UNCNotificationSourceDescription_Factory__systemSourceDirectoryURLs__block_invoke(uint64_t a1, void *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFF8];
  v3 = a2;
  v4 = BSSystemRootDirectory();
  v9[0] = v4;
  v9[1] = v3;
  v9[2] = @"UserNotifications";
  v9[3] = @"Bundles";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v6 = [v2 fileURLWithPathComponents:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)applicationSourceDescriptionWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:?];
    correspondingApplicationRecord = [v4 correspondingApplicationRecord];
    unc_isEligibleToDeliverNotifications = [correspondingApplicationRecord unc_isEligibleToDeliverNotifications];

    if (unc_isEligibleToDeliverNotifications)
    {
      v7 = [self applicationSourceDescriptionWithApplication:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)applicationSourceDescriptionWithApplication:(id)application
{
  v127 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v5 = applicationCopy;
  if (!applicationCopy)
  {
    v10 = 0;
    goto LABEL_70;
  }

  selfCopy = self;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  bundleURL = [v5 bundleURL];
  dataContainerURL = [v5 dataContainerURL];
  groupContainerURLs = [v5 groupContainerURLs];
  v10 = objc_alloc_init(UNCNotificationSourceDescription);
  v100 = bundleIdentifier;
  [(UNCNotificationSourceDescription *)v10 setBundleIdentifier:bundleIdentifier];
  v99 = bundleURL;
  [(UNCNotificationSourceDescription *)v10 setBundleURL:bundleURL];
  v96 = dataContainerURL;
  [(UNCNotificationSourceDescription *)v10 setDataContainerURL:dataContainerURL];
  v95 = groupContainerURLs;
  [(UNCNotificationSourceDescription *)v10 setGroupContainerURLS:groupContainerURLs];
  appState = [v5 appState];
  -[UNCNotificationSourceDescription setRestricted:](v10, "setRestricted:", [appState isRestricted]);
  v11 = v5;
  mEMORY[0x1E698E730] = [MEMORY[0x1E698E730] sharedInstance];
  LODWORD(bundleURL) = [mEMORY[0x1E698E730] deviceClass];

  v13 = 0x1E696A000;
  v88 = bundleURL;
  v101 = v11;
  if (bundleURL == 4)
  {
    v112 = 0uLL;
    v113 = 0uLL;
    v110 = 0uLL;
    v111 = 0uLL;
    plugInKitPlugins = [v11 plugInKitPlugins];
    v22 = [plugInKitPlugins countByEnumeratingWithState:&v110 objects:v126 count:16];
    if (v22)
    {
      v23 = v22;
      v92 = v5;
      v24 = *v111;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v111 != v24)
          {
            objc_enumerationMutation(plugInKitPlugins);
          }

          v26 = *(*(&v110 + 1) + 8 * i);
          v27 = [v26 objectForInfoDictionaryKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class() inScope:1];
          v28 = [v27 isEqualToString:@"com.apple.watchkit"];

          if (v28)
          {
            v29 = v26;
            v11 = v101;
            v30 = v101;
            v13 = 0x1E696A000uLL;
LABEL_25:

            v5 = v92;
            goto LABEL_26;
          }
        }

        v23 = [plugInKitPlugins countByEnumeratingWithState:&v110 objects:v126 count:16];
        if (v23)
        {
          continue;
        }

        goto LABEL_21;
      }
    }

LABEL_22:
    v29 = v11;
    goto LABEL_26;
  }

  v108 = 0uLL;
  v109 = 0uLL;
  v106 = 0uLL;
  v107 = 0uLL;
  plugInKitPlugins = [v11 plugInKitPlugins];
  v15 = [plugInKitPlugins countByEnumeratingWithState:&v106 objects:v125 count:16];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v92 = v5;
  v17 = *v107;
  while (2)
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v107 != v17)
      {
        objc_enumerationMutation(plugInKitPlugins);
      }

      v19 = *(*(&v106 + 1) + 8 * j);
      v20 = [v19 objectForInfoDictionaryKey:@"NSExtensionPointIdentifier" ofClass:objc_opt_class() inScope:1];
      v21 = [v20 isEqualToString:@"com.apple.usernotifications.service"];

      if (v21)
      {
        v13 = 0x1E696A000uLL;
        v30 = [v19 entitlementValueForKey:@"com.apple.developer.usernotifications.filtering" ofClass:objc_opt_class()];
        -[UNCNotificationSourceDescription setAllowServiceExtensionFiltering:](v10, "setAllowServiceExtensionFiltering:", [v30 BOOLValue]);
        v11 = v101;
        v29 = v101;
        goto LABEL_25;
      }
    }

    v16 = [plugInKitPlugins countByEnumeratingWithState:&v106 objects:v125 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v11 = v101;
  v29 = v101;
  v5 = v92;
  v13 = 0x1E696A000;
LABEL_26:

  correspondingApplicationRecord = [v11 correspondingApplicationRecord];
  v32 = correspondingApplicationRecord;
  if (correspondingApplicationRecord)
  {
    localizedName = [correspondingApplicationRecord localizedName];
    [(UNCNotificationSourceDescription *)v10 setDisplayName:localizedName];

    appClipMetadata = [v32 appClipMetadata];
    [(UNCNotificationSourceDescription *)v10 setIsAppClip:appClipMetadata != 0];

    appClipMetadata2 = [v32 appClipMetadata];
    -[UNCNotificationSourceDescription setWantsEphemeralNotifications:](v10, "setWantsEphemeralNotifications:", [appClipMetadata2 wantsEphemeralNotifications]);
  }

  v93 = v32;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v36 = objc_opt_class();
  v37 = [v29 entitlementValueForKey:@"com.apple.developer.icloud-services" ofClass:v36 valuesOfClass:objc_opt_class()];
  v38 = [v37 countByEnumeratingWithState:&v102 objects:v124 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v103;
    while (2)
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v103 != v40)
        {
          objc_enumerationMutation(v37);
        }

        if (![*(*(&v102 + 1) + 8 * k) caseInsensitiveCompare:@"cloudkit"])
        {
          v42 = 1;
          goto LABEL_38;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v102 objects:v124 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }

    v42 = 0;
LABEL_38:
    v11 = v101;
  }

  else
  {
    v42 = 0;
  }

  [(UNCNotificationSourceDescription *)v10 setUsesCloudKit:v42];
  v91 = [v29 entitlementValueForKey:@"aps-environment" ofClass:objc_opt_class()];
  v90 = [selfCopy _validEnvironmentFromEnvironment:?];
  [(UNCNotificationSourceDescription *)v10 setPushEnvironment:?];
  v43 = *(v13 + 3480);
  v44 = [v29 entitlementValueForKey:@"com.apple.developer.usernotifications.critical-alerts" ofClass:objc_opt_class()];
  v46 = v88 != 4 || v29 == v11;
  if (!v44 && !v46)
  {
    v47 = *(v13 + 3480);
    v44 = [v11 entitlementValueForKey:@"com.apple.developer.usernotifications.critical-alerts" ofClass:objc_opt_class()];
  }

  v89 = v44;
  -[UNCNotificationSourceDescription setAllowCriticalAlerts:](v10, "setAllowCriticalAlerts:", [v44 BOOLValue]);
  v48 = *(v13 + 3480);
  v49 = [v29 entitlementValueForKey:@"com.apple.developer.usernotifications.time-sensitive" ofClass:objc_opt_class()];
  if (v49 == 0 && !v46)
  {
    v50 = *(v13 + 3480);
    v49 = [v11 entitlementValueForKey:@"com.apple.developer.usernotifications.time-sensitive" ofClass:objc_opt_class()];
  }

  v87 = v49;
  bOOLValue = [v49 BOOLValue];
  [(UNCNotificationSourceDescription *)v10 setAllowTimeSensitive:?];
  v51 = *(v13 + 3480);
  v52 = [v29 entitlementValueForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
  if (v52 == 0 && !v46)
  {
    v53 = *(v13 + 3480);
    v52 = [v11 entitlementValueForKey:@"com.apple.developer.usernotifications.communication" ofClass:objc_opt_class()];
  }

  v86 = v52;
  bOOLValue2 = [v52 BOOLValue];
  un_isFirstPartyIdentifier = [v100 un_isFirstPartyIdentifier];
  v55 = *MEMORY[0x1E696E6A0];
  CanDonateIntent = INBundleProxyCanDonateIntent();
  v57 = *MEMORY[0x1E696E688];
  v58 = INBundleProxyCanDonateIntent();
  v59 = *MEMORY[0x1E696E6E8];
  v60 = INBundleProxyCanDonateIntent();
  v98 = [v29 entitlementValueForKey:@"application-identifier" ofClass:objc_opt_class()];
  if ((v60 & 1) == 0 && (v58 & 1) == 0 && (CanDonateIntent & 1) == 0)
  {
    v60 = [v98 isEqualToString:@"com.apple.internal.suiautomation"] != 0;
    v58 = v60;
    CanDonateIntent = v60;
  }

  [(UNCNotificationSourceDescription *)v10 setAllowCalls:bOOLValue2 & v60];
  [(UNCNotificationSourceDescription *)v10 setAllowIntercom:bOOLValue2 & v58];
  [(UNCNotificationSourceDescription *)v10 setAllowMessages:bOOLValue2 & CanDonateIntent];
  if ((v60 & 1) == 0 && (v58 & 1) == 0 && (CanDonateIntent & 1) == 0 && ((bOOLValue2 ^ 1) & 1) == 0)
  {
    v61 = *MEMORY[0x1E6983350];
    if (os_log_type_enabled(*MEMORY[0x1E6983350], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544386;
      v80 = &stru_1F563BF08;
      v115 = v100;
      if (un_isFirstPartyIdentifier)
      {
        v80 = v57;
      }

      v116 = 2114;
      v117 = @"com.apple.developer.usernotifications.communication";
      v118 = 2114;
      v119 = v59;
      v120 = 2114;
      v121 = v80;
      v122 = 2114;
      v123 = v55;
      _os_log_error_impl(&dword_1DA7A9000, v61, OS_LOG_TYPE_ERROR, "[%{public}@] Error: App has '%{public}@' entitlement but does not support donating [%{public}@,%{public}@,%{public}@]. Communication API features will be denied to app.", buf, 0x34u);
    }
  }

  v62 = *MEMORY[0x1E69DDBE0];
  v63 = objc_opt_class();
  v64 = [v29 objectForInfoDictionaryKey:v62 ofClass:v63 valuesOfClass:objc_opt_class()];
  LOBYTE(v62) = [v64 containsObject:*MEMORY[0x1E69DDBD8]];
  activityTypes = [v101 activityTypes];
  v66 = [activityTypes copy];

  [(UNCNotificationSourceDescription *)v10 setActivityTypes:v66];
  -[UNCNotificationSourceDescription setSupportsContentAvailableRemoteNotifications:](v10, "setSupportsContentAvailableRemoteNotifications:", (v62 | ([v101 isNewsstandApp] & objc_msgSend(v64, "containsObject:", @"newsstand-content"))) & 1);
  applicationType = [v101 applicationType];
  v68 = [applicationType isEqualToString:@"System"];
  if (v68)
  {
    v69 = [v101 objectForInfoDictionaryKey:@"UNUserNotificationCenter" ofClass:objc_opt_class()];
    if (v99)
    {
      v70 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:v99];
      [(UNCNotificationSourceDescription *)v10 setSystemPropertiesFromDictionary:v69 bundle:v70];
    }

    v81 = v69;
    v84 = v29;
    if (bOOLValue)
    {
      defaultSettings = [(UNCNotificationSourceDescription *)v10 defaultSettings];
      [defaultSettings setSupportsTimeSensitive:1];
    }

    [(UNCNotificationSourceDescription *)v10 setAllowPrivateProperties:1, v81];
    v72 = [v101 objectForInfoDictionaryKey:@"SBAppUsesLocalNotifications" ofClass:0];
    un_safeBoolValue = [v72 un_safeBoolValue];

    v74 = [v101 objectForInfoDictionaryKey:@"BBDataProvider" ofClass:0];
    un_safeBoolValue2 = [v74 un_safeBoolValue];

    v76 = [v101 objectForInfoDictionaryKey:@"UNUserNotificationCenter" ofClass:0];
    LOBYTE(v74) = v76 != 0;

    [(UNCNotificationSourceDescription *)v10 setUseDefaultDataProvider:(v74 | un_safeBoolValue) & ~un_safeBoolValue2 & 1];
    v77 = v99;
    v29 = v84;
  }

  else
  {
    [(UNCNotificationSourceDescription *)v10 setUseDefaultDataProvider:1];
    v77 = v99;
  }

  -[UNCNotificationSourceDescription setAllowAlternateLaunchBundleIdentifiers:](v10, "setAllowAlternateLaunchBundleIdentifiers:", v68 | [v93 isWebApp]);

LABEL_70:
  v78 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)sourceDescriptionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self systemSourceDescriptionWithBundleIdentifier:identifierCopy];
  if (!v5)
  {
    v5 = [self applicationSourceDescriptionWithBundleIdentifier:identifierCopy];
  }

  return v5;
}

+ (id)systemSourceDescriptionWithBundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    [self systemSourceDirectoryURLs];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) URLByAppendingPathComponent:{identifierCopy, v16}];
        systemSourcePathExtension = [self systemSourcePathExtension];
        v12 = [v10 URLByAppendingPathExtension:systemSourcePathExtension];

        v13 = [UNCNotificationSourceDescription systemSourceDescriptionWithBundleURL:v12];

        if (v13)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)systemSourceDescriptionWithBundleURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x1E698E640]) initWithURL:lCopy];
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v7 = [bundleIdentifier stringByAppendingPathExtension:@"bundle"];
    lastPathComponent = [lCopy lastPathComponent];
    v9 = [v7 isEqualToString:lastPathComponent];

    if (v9)
    {
      localizedInfoDictionary = [v4 localizedInfoDictionary];
      v11 = [localizedInfoDictionary bs_safeObjectForKey:*MEMORY[0x1E695E120] ofType:objc_opt_class()];
      if (!v11)
      {
        v11 = [localizedInfoDictionary bs_safeObjectForKey:*MEMORY[0x1E695E4F8] ofType:objc_opt_class()];
      }

      infoDictionary = [v4 infoDictionary];
      v13 = [infoDictionary bs_safeObjectForKey:@"UNUserNotificationCenter" ofType:objc_opt_class()];
      v14 = objc_alloc_init(UNCNotificationSourceDescription);
      [(UNCNotificationSourceDescription *)v14 setAllowPrivateProperties:1];
      [(UNCNotificationSourceDescription *)v14 setBundleIdentifier:v6];
      [(UNCNotificationSourceDescription *)v14 setBundleURL:lCopy];
      [(UNCNotificationSourceDescription *)v14 setDisplayName:v11];
      [(UNCNotificationSourceDescription *)v14 setUseDefaultDataProvider:1];
      [(UNCNotificationSourceDescription *)v14 setSystemPropertiesFromDictionary:v13 bundle:v4];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)_validEnvironmentFromEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = environmentCopy;
  if (!environmentCopy || (v5 = *MEMORY[0x1E698CF20], [environmentCopy caseInsensitiveCompare:*MEMORY[0x1E698CF20]]) && (v5 = *MEMORY[0x1E698CF18], objc_msgSend(v4, "caseInsensitiveCompare:", *MEMORY[0x1E698CF18])) && (v5 = *MEMORY[0x1E698CF10], objc_msgSend(v4, "caseInsensitiveCompare:", *MEMORY[0x1E698CF10])) && (v5 = *MEMORY[0x1E698CF28], objc_msgSend(v4, "caseInsensitiveCompare:", *MEMORY[0x1E698CF28])))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)setSystemPropertiesFromDictionary:(id)dictionary bundle:(id)bundle
{
  bundleCopy = bundle;
  dictionaryCopy = dictionary;
  v47 = [dictionaryCopy bs_safeObjectForKey:@"UNUniversalApplicationIdentifier" ofType:objc_opt_class()];
  v45 = [dictionaryCopy bs_safeObjectForKey:@"UNIntentsBundleIdentifier" ofType:objc_opt_class()];
  v43 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIcons" ofType:objc_opt_class()];
  v46 = [dictionaryCopy bs_safeObjectForKey:@"UNDefaultSettings" ofType:objc_opt_class()];
  v8 = [dictionaryCopy bs_safeObjectForKey:@"UNDefaultCategories" ofType:objc_opt_class()];
  v9 = [UNCNotificationSourceSettingsDescription notificationSourceSettingsDescriptionFromDictionary:v46];
  v40 = [dictionaryCopy bs_safeObjectForKey:@"UNDefaultTopics" ofType:objc_opt_class()];
  v44 = [dictionaryCopy bs_safeObjectForKey:@"UNCustomSettingsBundle" ofType:objc_opt_class()];
  v42 = [dictionaryCopy bs_safeObjectForKey:@"UNCustomSettingsDetailControllerClass" ofType:objc_opt_class()];
  v10 = [dictionaryCopy objectForKey:@"UNSuppressUserAuthorizationPrompt"];
  un_safeBoolValue = [v10 un_safeBoolValue];

  v11 = [dictionaryCopy objectForKey:@"UNSuppressDismissalSync"];
  un_safeBoolValue2 = [v11 un_safeBoolValue];

  v12 = [dictionaryCopy objectForKey:@"UNSuppressIconMask"];
  un_safeBoolValue3 = [v12 un_safeBoolValue];

  v13 = [dictionaryCopy objectForKey:@"UNAllowUnlimitedContentBody"];
  un_safeBoolValue4 = [v13 un_safeBoolValue];

  v14 = [dictionaryCopy objectForKey:@"UNAllowAlternateLaunchBundleIdentifiers"];
  un_safeBoolValue5 = [v14 un_safeBoolValue];

  v15 = [dictionaryCopy objectForKey:@"UNAutomaticallyShowSettings"];
  un_safeBoolValue6 = [v15 un_safeBoolValue];

  v16 = [dictionaryCopy objectForKey:@"UNHideSettings"];
  un_safeBoolValue7 = [v16 un_safeBoolValue];

  v18 = [dictionaryCopy objectForKey:@"UNDaemonShouldReceiveBackgroundResponses"];
  un_safeBoolValue8 = [v18 un_safeBoolValue];

  v19 = [dictionaryCopy objectForKey:@"UNDaemonShouldReceiveNotificationSettingsUpdates"];
  un_safeBoolValue9 = [v19 un_safeBoolValue];

  v20 = [dictionaryCopy objectForKey:@"UNDaemonShouldReceiveApplicationEvents"];
  un_safeBoolValue10 = [v20 un_safeBoolValue];

  v21 = [dictionaryCopy objectForKey:@"UNRequiresTopics"];
  un_safeBoolValue11 = [v21 un_safeBoolValue];

  v22 = [dictionaryCopy objectForKey:@"UNAllowCriticalAlerts"];
  un_safeBoolValue12 = [v22 un_safeBoolValue];

  v23 = [dictionaryCopy objectForKey:@"UNAllowCalls"];
  un_safeBoolValue13 = [v23 un_safeBoolValue];

  v24 = [dictionaryCopy objectForKey:@"UNAllowIntercom"];
  un_safeBoolValue14 = [v24 un_safeBoolValue];

  v25 = [dictionaryCopy objectForKey:@"UNAllowMessages"];
  LOBYTE(v24) = [v25 un_safeBoolValue];

  v26 = [dictionaryCopy objectForKey:@"UNSupportsProvisionalAlerts"];

  un_safeBoolValue15 = [v26 un_safeBoolValue];
  [(UNCNotificationSourceDescription *)self setDefaultCategoriesFromArray:v8 bundle:bundleCopy];
  [(UNCNotificationSourceDescription *)self setDefaultSettings:v9];
  [(UNCNotificationSourceDescription *)self setDefaultTopicsFromArray:v40 bundle:bundleCopy];

  [(UNCNotificationSourceDescription *)self setIconFilesFromDictionary:v43];
  [(UNCNotificationSourceDescription *)self setAutomaticallyShowSettings:un_safeBoolValue6];
  [(UNCNotificationSourceDescription *)self setHideSettings:un_safeBoolValue7];
  [(UNCNotificationSourceDescription *)self setUniversalApplicationIdentifier:v47];
  [(UNCNotificationSourceDescription *)self setIntentsBundleIdentifier:v45];
  [(UNCNotificationSourceDescription *)self setSuppressDismissalSync:un_safeBoolValue2];
  [(UNCNotificationSourceDescription *)self setSuppressIconMask:un_safeBoolValue3];
  [(UNCNotificationSourceDescription *)self setSuppressUserAuthorizationPrompt:un_safeBoolValue];
  [(UNCNotificationSourceDescription *)self setAllowUnlimitedContentBody:un_safeBoolValue4];
  [(UNCNotificationSourceDescription *)self setAllowAlternateLaunchBundleIdentifiers:un_safeBoolValue5];
  [(UNCNotificationSourceDescription *)self setDaemonShouldReceiveBackgroundResponses:un_safeBoolValue8];
  [(UNCNotificationSourceDescription *)self setDaemonShouldReceiveNotificationSettingsUpdates:un_safeBoolValue9];
  [(UNCNotificationSourceDescription *)self setDaemonShouldReceiveApplicationEvents:un_safeBoolValue10];
  [(UNCNotificationSourceDescription *)self setRequiresTopics:un_safeBoolValue11];
  [(UNCNotificationSourceDescription *)self setCustomSettingsBundle:v44];
  [(UNCNotificationSourceDescription *)self setCustomSettingsDetailControllerClass:v42];
  [(UNCNotificationSourceDescription *)self setAllowCriticalAlerts:un_safeBoolValue12];
  [(UNCNotificationSourceDescription *)self setAllowCalls:un_safeBoolValue13];
  [(UNCNotificationSourceDescription *)self setAllowIntercom:([(UNCNotificationSourceDescription *)self allowIntercom]| un_safeBoolValue14) & 1];
  [(UNCNotificationSourceDescription *)self setAllowMessages:([(UNCNotificationSourceDescription *)self allowMessages]| v24) & 1];
  [(UNCNotificationSourceDescription *)self setSupportsProvisionalAlerts:un_safeBoolValue15];
}

- (void)setIconFilesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconApplicationIdentifier" ofType:objc_opt_class()];
  v15 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconUTI" ofType:objc_opt_class()];
  [(UNCNotificationSourceDescription *)self setIconApplicationIdentifier:v23];
  [(UNCNotificationSourceDescription *)self setIconUTI:v15];
  v20 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconCarPlay" ofType:objc_opt_class()];
  v22 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconDefault" ofType:objc_opt_class()];
  v21 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconSettings" ofType:objc_opt_class()];
  v19 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconSettingsSheet" ofType:objc_opt_class()];
  v18 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconSubordinate" ofType:objc_opt_class()];
  v17 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLookSmall" ofType:objc_opt_class()];
  v16 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLookLarge" ofType:objc_opt_class()];
  v5 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchListSmall" ofType:objc_opt_class()];
  v6 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchListLarge" ofType:objc_opt_class()];
  v7 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook394h" ofType:objc_opt_class()];
  v14 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook448h" ofType:objc_opt_class()];
  v13 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchList394h" ofType:objc_opt_class()];
  v8 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchList448h" ofType:objc_opt_class()];
  v12 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook430h" ofType:objc_opt_class()];
  v11 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook484h" ofType:objc_opt_class()];
  v10 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook430h" ofType:objc_opt_class()];
  v9 = [dictionaryCopy bs_safeObjectForKey:@"UNNotificationIconWatchQuickLook484h" ofType:objc_opt_class()];

  [(UNCNotificationSourceDescription *)self setDefaultIconFile:v22];
  [(UNCNotificationSourceDescription *)self setSettingsIconFile:v21];
  [(UNCNotificationSourceDescription *)self setSettingsSheetIconFile:v19];
  [(UNCNotificationSourceDescription *)self setSubordinateIconFile:v18];
  [(UNCNotificationSourceDescription *)self setCarPlayIconFile:v20];
  [(UNCNotificationSourceDescription *)self setWatchQuickLookSmallIconFile:v17];
  [(UNCNotificationSourceDescription *)self setWatchQuickLookLargeIconFile:v16];
  [(UNCNotificationSourceDescription *)self setWatchListSmallIconFile:v5];
  [(UNCNotificationSourceDescription *)self setWatchListLargeIconFile:v6];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook394hIconFile:v7];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook448hIconFile:v14];
  [(UNCNotificationSourceDescription *)self setWatchList394hIconFile:v13];
  [(UNCNotificationSourceDescription *)self setWatchList448hIconFile:v8];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook430hIconFile:v12];
  [(UNCNotificationSourceDescription *)self setWatchQuickLook484hIconFile:v11];
  [(UNCNotificationSourceDescription *)self setWatchList430hIconFile:v10];
  [(UNCNotificationSourceDescription *)self setWatchList484hIconFile:v9];
}

- (void)setDefaultCategoriesFromArray:(id)array bundle:(id)bundle
{
  arrayCopy = array;
  bundleCopy = bundle;
  if ([arrayCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__UNCNotificationSourceDescription_Factory__setDefaultCategoriesFromArray_bundle___block_invoke;
    v9[3] = &unk_1E85D7528;
    v10 = bundleCopy;
    v8 = [arrayCopy bs_map:v9];
    [(UNCNotificationSourceDescription *)self setDefaultCategories:v8];
  }

  else
  {
    [(UNCNotificationSourceDescription *)self setDefaultCategories:0];
  }
}

UNCNotificationCategoryRecord *__82__UNCNotificationSourceDescription_Factory__setDefaultCategoriesFromArray_bundle___block_invoke(uint64_t a1, void *a2)
{
  v116 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0x1E696A000uLL;
  v73 = [v3 bs_safeObjectForKey:@"UNCategoryIdentifier" ofType:objc_opt_class()];
  v5 = [*(a1 + 32) localizedInfoDictionary];
  v70 = [v3 bs_safeObjectForKey:@"UNCategoryHiddenPreviewsBodyPlaceholder" ofType:objc_opt_class()];
  v69 = [v5 bs_safeObjectForKey:v70 ofType:objc_opt_class()];
  [v3 bs_safeObjectForKey:@"UNCategorySummaryFormat" ofType:objc_opt_class()];
  v68 = v104 = v5;
  v67 = [v5 bs_safeObjectForKey:v68 ofType:objc_opt_class()];
  v66 = [v3 bs_safeObjectForKey:@"UNCategoryBackgroundStyle" ofType:objc_opt_class()];
  v65 = [v3 bs_safeObjectForKey:@"UNCategoryListPriority" ofType:objc_opt_class()];
  v64 = [v3 bs_safeObjectForKey:@"UNCategoryIntentIdentifiers" ofType:objc_opt_class()];
  v71 = v3;
  v6 = [v3 bs_safeObjectForKey:@"UNCategoryActions" ofType:objc_opt_class()];
  v79 = [MEMORY[0x1E695DF70] array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  obj = v6;
  v80 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v80)
  {
    v77 = *v106;
    do
    {
      v7 = 0;
      do
      {
        if (*v106 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v84 = v7;
        v8 = *(*(&v105 + 1) + 8 * v7);
        v9 = *(v4 + 3776);
        v10 = [v8 bs_safeObjectForKey:@"UNActionIdentifier" ofType:objc_opt_class()];
        v11 = *(v4 + 3776);
        v12 = [v8 bs_safeObjectForKey:@"UNActionTitle" ofType:objc_opt_class()];
        v13 = *(v4 + 3776);
        v14 = [v104 bs_safeObjectForKey:v12 ofType:objc_opt_class()];
        v99 = v14;
        if (v12)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          v16 = *MEMORY[0x1E6983348];
          if (os_log_type_enabled(*MEMORY[0x1E6983348], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v110 = v73;
            v111 = 2114;
            v112 = v10;
            v113 = 2114;
            v114 = v12;
            _os_log_error_impl(&dword_1DA7A9000, v16, OS_LOG_TYPE_ERROR, "Error: Category (%{public}@) has an action (%{public}@) whose title key (%{public}@) is mapped to a missing localized string.", buf, 0x20u);
          }
        }

        v102 = v10;
        v17 = *(v4 + 3776);
        v18 = [v8 bs_safeObjectForKey:@"UNActionTextInputButtonTitle" ofType:objc_opt_class()];
        v19 = *(v4 + 3776);
        v97 = v18;
        v95 = [v104 bs_safeObjectForKey:v18 ofType:objc_opt_class()];
        v20 = *(v4 + 3776);
        v21 = [v8 bs_safeObjectForKey:@"UNActionTextInputPlaceholder" ofType:objc_opt_class()];
        v22 = *(v4 + 3776);
        v92 = [v104 bs_safeObjectForKey:v21 ofType:objc_opt_class()];
        v23 = *(v4 + 3776);
        v90 = [v8 bs_safeObjectForKey:@"UNActionSystemIconName" ofType:objc_opt_class()];
        v24 = *(v4 + 3776);
        v88 = [v8 bs_safeObjectForKey:@"UNActionTemplateIconName" ofType:objc_opt_class()];
        v25 = *(v4 + 3776);
        v26 = [v8 bs_safeObjectForKey:@"UNActionURL" ofType:objc_opt_class()];
        v86 = v26;
        if (v26)
        {
          v27 = [MEMORY[0x1E695DFF8] URLWithString:v26];
        }

        else
        {
          v27 = 0;
        }

        v28 = [v8 bs_safeObjectForKey:@"UNActionAuthenticationRequired" ofType:objc_opt_class()];
        v82 = [v28 un_safeBoolValue];

        v29 = [v8 bs_safeObjectForKey:@"UNActionDestructive" ofType:objc_opt_class()];
        v30 = [v29 un_safeBoolValue];

        v31 = [v8 objectForKey:@"UNActionForeground"];
        if (v31)
        {
          v32 = [v8 bs_safeObjectForKey:@"UNActionForeground" ofType:objc_opt_class()];
          v33 = [v32 un_safeBoolValue];
        }

        else
        {
          v33 = v27 != 0;
        }

        v34 = [v8 bs_safeObjectForKey:@"UNActionPreventNotificationDismissal" ofType:objc_opt_class()];
        v35 = [v34 un_safeBoolValue];

        v36 = [v8 bs_safeObjectForKey:@"UNActionTextInput" ofType:objc_opt_class()];
        LODWORD(v34) = [v36 un_safeBoolValue];

        v37 = objc_alloc_init(UNCNotificationActionRecord);
        [(UNCNotificationActionRecord *)v37 setIdentifier:v102];
        [(UNCNotificationActionRecord *)v37 setTitle:v99];
        [(UNCNotificationActionRecord *)v37 setTextInputButtonTitle:v95];
        [(UNCNotificationActionRecord *)v37 setTextInputPlaceholder:v92];
        [(UNCNotificationActionRecord *)v37 setUrl:v27];
        [(UNCNotificationActionRecord *)v37 setAuthenticationRequired:v82];
        [(UNCNotificationActionRecord *)v37 setDestructive:v30];
        [(UNCNotificationActionRecord *)v37 setForeground:v33];
        [(UNCNotificationActionRecord *)v37 setShouldPreventNotificationDismiss:v35];
        if (v34)
        {
          v38 = @"TextInput";
        }

        else
        {
          v38 = @"Default";
        }

        [(UNCNotificationActionRecord *)v37 setActionType:v38];
        if (v90)
        {
          v39 = v90;
        }

        else
        {
          v39 = v88;
        }

        [(UNCNotificationActionRecord *)v37 setHasSystemIcon:v90 != 0];
        [(UNCNotificationActionRecord *)v37 setIconImageName:v39];
        [v79 addObject:v37];

        v7 = v84 + 1;
        v4 = 0x1E696A000;
      }

      while (v80 != v84 + 1);
      v80 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
    }

    while (v80);
  }

  v40 = [v71 objectForKey:@"UNCategoryAllowInCarPlay"];
  v103 = [v40 un_safeBoolValue];

  v41 = [v71 objectForKey:@"UNCategoryCustomDismissAction"];
  v101 = [v41 un_safeBoolValue];

  v42 = [v71 objectForKey:@"UNCategoryFollowActivityAction"];
  v100 = [v42 un_safeBoolValue];

  v43 = [v71 objectForKey:@"UNCategoryCustomSilenceAction"];
  v98 = [v43 un_safeBoolValue];

  v44 = [v71 objectForKey:@"UNCategoryHiddenPreviewsShowSubtitle"];
  v96 = [v44 un_safeBoolValue];

  v45 = [v71 objectForKey:@"UNCategoryHiddenPreviewsShowTitle"];
  v94 = [v45 un_safeBoolValue];

  v46 = [v71 objectForKey:@"UNCategoryPresentFullScreenAlertOverList"];
  v93 = [v46 un_safeBoolValue];

  v47 = [v71 objectForKey:@"UNCategoryPreventAutomaticLock"];
  v91 = [v47 un_safeBoolValue];

  v48 = [v71 objectForKey:@"UNCategoryPreventAutomaticRemovalFromRecents"];
  v89 = [v48 un_safeBoolValue];

  v49 = [v71 objectForKey:@"UNCategoryPreventDismissWhenClosed"];
  v87 = [v49 un_safeBoolValue];

  v50 = [v71 objectForKey:@"UNCategoryRevealAdditionalContentWhenPresented"];
  v85 = [v50 un_safeBoolValue];

  v51 = [v71 objectForKey:@"UNCategoryAllowActionsInCarPlay"];
  v83 = [v51 un_safeBoolValue];

  v52 = [v71 objectForKey:@"UNCategoryAllowPersistentBannersInCarPlay"];
  v81 = [v52 un_safeBoolValue];

  v53 = [v71 objectForKey:@"UNCategoryPlayMediaWhenRaised"];
  v78 = [v53 un_safeBoolValue];

  v54 = [v71 objectForKey:@"UNCategoryPreventClearFromList"];
  v76 = [v54 un_safeBoolValue];

  v55 = [v71 objectForKey:@"UNCategoryAlwaysDisplayNotificationsIndicator"];
  v75 = [v55 un_safeBoolValue];

  v56 = [v71 objectForKey:@"UNCategorySuppressDelayForForwardedNotifications"];
  v72 = [v56 un_safeBoolValue];

  v57 = [v71 objectForKey:@"UNCategorySuppressDismissActionInCarPlay"];
  v63 = [v57 un_safeBoolValue];

  v58 = [v71 objectForKey:@"UNCategorySuppressPresentationInAmbient"];
  v59 = [v58 un_safeBoolValue];

  v60 = objc_alloc_init(UNCNotificationCategoryRecord);
  [(UNCNotificationCategoryRecord *)v60 setIdentifier:v73];
  [(UNCNotificationCategoryRecord *)v60 setPrivateBody:v69];
  [(UNCNotificationCategoryRecord *)v60 setSummaryFormat:v67];
  [(UNCNotificationCategoryRecord *)v60 setBackgroundStyle:v66];
  [(UNCNotificationCategoryRecord *)v60 setListPriority:v65];
  [(UNCNotificationCategoryRecord *)v60 setActions:v79];
  [(UNCNotificationCategoryRecord *)v60 setShouldAllowInCarPlay:v103];
  [(UNCNotificationCategoryRecord *)v60 setHasCustomDismissAction:v101];
  [(UNCNotificationCategoryRecord *)v60 setHasFollowActivityAction:v100];
  [(UNCNotificationCategoryRecord *)v60 setHasCustomSilenceAction:v98];
  [(UNCNotificationCategoryRecord *)v60 setIntentIdentifiers:v64];
  [(UNCNotificationCategoryRecord *)v60 setPrivacyOptionShowSubtitle:v96];
  [(UNCNotificationCategoryRecord *)v60 setPrivacyOptionShowTitle:v94];
  [(UNCNotificationCategoryRecord *)v60 setPresentFullScreenAlertOverList:v93];
  [(UNCNotificationCategoryRecord *)v60 setPreventAutomaticLock:v91];
  [(UNCNotificationCategoryRecord *)v60 setPreventAutomaticRemovalFromRecent:v89];
  [(UNCNotificationCategoryRecord *)v60 setPreventDismissWhenClosed:v87];
  [(UNCNotificationCategoryRecord *)v60 setRevealAdditionalContentWhenPresented:v85];
  [(UNCNotificationCategoryRecord *)v60 setShouldAllowActionsInCarPlay:v83];
  [(UNCNotificationCategoryRecord *)v60 setShouldAllowPersistentBannersInCarPlay:v81];
  [(UNCNotificationCategoryRecord *)v60 setPlayMediaWhenRaised:v78];
  [(UNCNotificationCategoryRecord *)v60 setPreventClearFromList:v76];
  [(UNCNotificationCategoryRecord *)v60 setAlwaysDisplayNotificationsIndicator:v75];
  [(UNCNotificationCategoryRecord *)v60 setSuppressDelayForForwardedNotifications:v72];
  [(UNCNotificationCategoryRecord *)v60 setSuppressDismissActionInCarPlay:v63];
  [(UNCNotificationCategoryRecord *)v60 setSuppressPresentationInAmbient:v59];

  v61 = *MEMORY[0x1E69E9840];

  return v60;
}

- (void)setDefaultTopicsFromArray:(id)array bundle:(id)bundle
{
  arrayCopy = array;
  bundleCopy = bundle;
  if ([arrayCopy count])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__UNCNotificationSourceDescription_Factory__setDefaultTopicsFromArray_bundle___block_invoke;
    v9[3] = &unk_1E85D7528;
    v10 = bundleCopy;
    v8 = [arrayCopy bs_map:v9];
    [(UNCNotificationSourceDescription *)self setDefaultTopics:v8];
  }

  else
  {
    [(UNCNotificationSourceDescription *)self setDefaultTopics:0];
  }
}

UNCNotificationTopicRecord *__78__UNCNotificationSourceDescription_Factory__setDefaultTopicsFromArray_bundle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bs_safeObjectForKey:@"UNTopicIdentifier" ofType:objc_opt_class()];
  v5 = [v3 bs_safeObjectForKey:@"UNTopicDisplayName" ofType:objc_opt_class()];
  v6 = [*(a1 + 32) localizedInfoDictionary];
  v7 = [v6 bs_safeObjectForKey:v5 ofType:objc_opt_class()];
  v8 = [v3 bs_safeObjectForKey:@"UNTopicDefaultSettings" ofType:objc_opt_class()];

  v9 = [UNCNotificationSourceSettingsDescription notificationSourceSettingsDescriptionFromDictionary:v8];
  v10 = objc_alloc_init(UNCNotificationTopicRecord);
  [(UNCNotificationTopicRecord *)v10 setIdentifier:v4];
  [(UNCNotificationTopicRecord *)v10 setDisplayName:v7];
  -[UNCNotificationTopicRecord setSupportsAlerts:](v10, "setSupportsAlerts:", [v9 supportsAlerts]);
  -[UNCNotificationTopicRecord setSupportsBadges:](v10, "setSupportsBadges:", [v9 supportsBadges]);
  -[UNCNotificationTopicRecord setSupportsSounds:](v10, "setSupportsSounds:", [v9 supportsSounds]);
  -[UNCNotificationTopicRecord setSupportsLockScreen:](v10, "setSupportsLockScreen:", [v9 supportsLockScreen]);
  -[UNCNotificationTopicRecord setSupportsNotificationCenter:](v10, "setSupportsNotificationCenter:", [v9 supportsNotificationCenter]);
  -[UNCNotificationTopicRecord setSupportsCarPlay:](v10, "setSupportsCarPlay:", [v9 supportsCarPlay]);
  -[UNCNotificationTopicRecord setEnablesAlerts:](v10, "setEnablesAlerts:", [v9 supportsAlerts]);
  -[UNCNotificationTopicRecord setEnablesBadges:](v10, "setEnablesBadges:", [v9 supportsBadges]);
  -[UNCNotificationTopicRecord setEnablesSounds:](v10, "setEnablesSounds:", [v9 supportsSounds]);
  -[UNCNotificationTopicRecord setEnablesLockScreen:](v10, "setEnablesLockScreen:", [v9 supportsLockScreen]);
  -[UNCNotificationTopicRecord setEnablesNotificationCenter:](v10, "setEnablesNotificationCenter:", [v9 supportsNotificationCenter]);
  -[UNCNotificationTopicRecord setEnablesCarPlay:](v10, "setEnablesCarPlay:", [v9 supportsCarPlay]);
  -[UNCNotificationTopicRecord setModalAlertStyle:](v10, "setModalAlertStyle:", [v9 modalAlertStyle]);
  -[UNCNotificationTopicRecord setSupportsTimeSensitive:](v10, "setSupportsTimeSensitive:", [v9 supportsTimeSensitive]);

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  bundleIdentifier = [(UNCNotificationSourceDescription *)self bundleIdentifier];
  v290[0] = MEMORY[0x1E69E9820];
  v290[1] = 3221225472;
  v290[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke;
  v290[3] = &unk_1E85D7AD0;
  v7 = equalCopy;
  v291 = v7;
  v8 = [v5 appendString:bundleIdentifier counterpart:v290];

  intentsBundleIdentifier = [(UNCNotificationSourceDescription *)self intentsBundleIdentifier];
  v288[0] = MEMORY[0x1E69E9820];
  v288[1] = 3221225472;
  v288[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_2;
  v288[3] = &unk_1E85D7AD0;
  v10 = v7;
  v289 = v10;
  v11 = [v5 appendString:intentsBundleIdentifier counterpart:v288];

  universalApplicationIdentifier = [(UNCNotificationSourceDescription *)self universalApplicationIdentifier];
  v286[0] = MEMORY[0x1E69E9820];
  v286[1] = 3221225472;
  v286[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_3;
  v286[3] = &unk_1E85D7AD0;
  v13 = v10;
  v287 = v13;
  v14 = [v5 appendString:universalApplicationIdentifier counterpart:v286];

  displayName = [(UNCNotificationSourceDescription *)self displayName];
  v284[0] = MEMORY[0x1E69E9820];
  v284[1] = 3221225472;
  v284[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_4;
  v284[3] = &unk_1E85D7AD0;
  v16 = v13;
  v285 = v16;
  v17 = [v5 appendString:displayName counterpart:v284];

  pushEnvironment = [(UNCNotificationSourceDescription *)self pushEnvironment];
  v282[0] = MEMORY[0x1E69E9820];
  v282[1] = 3221225472;
  v282[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_5;
  v282[3] = &unk_1E85D7AD0;
  v19 = v16;
  v283 = v19;
  v20 = [v5 appendString:pushEnvironment counterpart:v282];

  defaultIconFile = [(UNCNotificationSourceDescription *)self defaultIconFile];
  v280[0] = MEMORY[0x1E69E9820];
  v280[1] = 3221225472;
  v280[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_6;
  v280[3] = &unk_1E85D7AD0;
  v22 = v19;
  v281 = v22;
  v23 = [v5 appendString:defaultIconFile counterpart:v280];

  subordinateIconFile = [(UNCNotificationSourceDescription *)self subordinateIconFile];
  v278[0] = MEMORY[0x1E69E9820];
  v278[1] = 3221225472;
  v278[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_7;
  v278[3] = &unk_1E85D7AD0;
  v25 = v22;
  v279 = v25;
  v26 = [v5 appendString:subordinateIconFile counterpart:v278];

  settingsIconFile = [(UNCNotificationSourceDescription *)self settingsIconFile];
  v276[0] = MEMORY[0x1E69E9820];
  v276[1] = 3221225472;
  v276[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_8;
  v276[3] = &unk_1E85D7AD0;
  v28 = v25;
  v277 = v28;
  v29 = [v5 appendString:settingsIconFile counterpart:v276];

  settingsSheetIconFile = [(UNCNotificationSourceDescription *)self settingsSheetIconFile];
  v274[0] = MEMORY[0x1E69E9820];
  v274[1] = 3221225472;
  v274[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_9;
  v274[3] = &unk_1E85D7AD0;
  v31 = v28;
  v275 = v31;
  v32 = [v5 appendString:settingsSheetIconFile counterpart:v274];

  carPlayIconFile = [(UNCNotificationSourceDescription *)self carPlayIconFile];
  v272[0] = MEMORY[0x1E69E9820];
  v272[1] = 3221225472;
  v272[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_10;
  v272[3] = &unk_1E85D7AD0;
  v34 = v31;
  v273 = v34;
  v35 = [v5 appendString:carPlayIconFile counterpart:v272];

  watchQuickLookSmallIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookSmallIconFile];
  v270[0] = MEMORY[0x1E69E9820];
  v270[1] = 3221225472;
  v270[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_11;
  v270[3] = &unk_1E85D7AD0;
  v37 = v34;
  v271 = v37;
  v38 = [v5 appendString:watchQuickLookSmallIconFile counterpart:v270];

  watchQuickLookLargeIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookLargeIconFile];
  v268[0] = MEMORY[0x1E69E9820];
  v268[1] = 3221225472;
  v268[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_12;
  v268[3] = &unk_1E85D7AD0;
  v40 = v37;
  v269 = v40;
  v41 = [v5 appendString:watchQuickLookLargeIconFile counterpart:v268];

  watchListSmallIconFile = [(UNCNotificationSourceDescription *)self watchListSmallIconFile];
  v266[0] = MEMORY[0x1E69E9820];
  v266[1] = 3221225472;
  v266[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_13;
  v266[3] = &unk_1E85D7AD0;
  v43 = v40;
  v267 = v43;
  v44 = [v5 appendString:watchListSmallIconFile counterpart:v266];

  watchListLargeIconFile = [(UNCNotificationSourceDescription *)self watchListLargeIconFile];
  v264[0] = MEMORY[0x1E69E9820];
  v264[1] = 3221225472;
  v264[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_14;
  v264[3] = &unk_1E85D7AD0;
  v46 = v43;
  v265 = v46;
  v47 = [v5 appendString:watchListLargeIconFile counterpart:v264];

  watchQuickLook394hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook394hIconFile];
  v262[0] = MEMORY[0x1E69E9820];
  v262[1] = 3221225472;
  v262[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_15;
  v262[3] = &unk_1E85D7AD0;
  v49 = v46;
  v263 = v49;
  v50 = [v5 appendString:watchQuickLook394hIconFile counterpart:v262];

  watchQuickLook448hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook448hIconFile];
  v260[0] = MEMORY[0x1E69E9820];
  v260[1] = 3221225472;
  v260[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_16;
  v260[3] = &unk_1E85D7AD0;
  v52 = v49;
  v261 = v52;
  v53 = [v5 appendString:watchQuickLook448hIconFile counterpart:v260];

  watchList394hIconFile = [(UNCNotificationSourceDescription *)self watchList394hIconFile];
  v258[0] = MEMORY[0x1E69E9820];
  v258[1] = 3221225472;
  v258[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_17;
  v258[3] = &unk_1E85D7AD0;
  v55 = v52;
  v259 = v55;
  v56 = [v5 appendString:watchList394hIconFile counterpart:v258];

  watchList448hIconFile = [(UNCNotificationSourceDescription *)self watchList448hIconFile];
  v256[0] = MEMORY[0x1E69E9820];
  v256[1] = 3221225472;
  v256[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_18;
  v256[3] = &unk_1E85D7AD0;
  v58 = v55;
  v257 = v58;
  v59 = [v5 appendString:watchList448hIconFile counterpart:v256];

  watchQuickLook430hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook430hIconFile];
  v254[0] = MEMORY[0x1E69E9820];
  v254[1] = 3221225472;
  v254[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_19;
  v254[3] = &unk_1E85D7AD0;
  v61 = v58;
  v255 = v61;
  v62 = [v5 appendString:watchQuickLook430hIconFile counterpart:v254];

  watchQuickLook484hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook484hIconFile];
  v252[0] = MEMORY[0x1E69E9820];
  v252[1] = 3221225472;
  v252[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_20;
  v252[3] = &unk_1E85D7AD0;
  v64 = v61;
  v253 = v64;
  v65 = [v5 appendString:watchQuickLook484hIconFile counterpart:v252];

  watchList430hIconFile = [(UNCNotificationSourceDescription *)self watchList430hIconFile];
  v250[0] = MEMORY[0x1E69E9820];
  v250[1] = 3221225472;
  v250[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_21;
  v250[3] = &unk_1E85D7AD0;
  v67 = v64;
  v251 = v67;
  v68 = [v5 appendString:watchList430hIconFile counterpart:v250];

  watchList484hIconFile = [(UNCNotificationSourceDescription *)self watchList484hIconFile];
  v248[0] = MEMORY[0x1E69E9820];
  v248[1] = 3221225472;
  v248[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_22;
  v248[3] = &unk_1E85D7AD0;
  v70 = v67;
  v249 = v70;
  v71 = [v5 appendString:watchList484hIconFile counterpart:v248];

  customSettingsBundle = [(UNCNotificationSourceDescription *)self customSettingsBundle];
  v246[0] = MEMORY[0x1E69E9820];
  v246[1] = 3221225472;
  v246[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_23;
  v246[3] = &unk_1E85D7AD0;
  v73 = v70;
  v247 = v73;
  v74 = [v5 appendString:customSettingsBundle counterpart:v246];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self customSettingsDetailControllerClass];
  v244[0] = MEMORY[0x1E69E9820];
  v244[1] = 3221225472;
  v244[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_24;
  v244[3] = &unk_1E85D7AD0;
  v76 = v73;
  v245 = v76;
  v77 = [v5 appendString:customSettingsDetailControllerClass counterpart:v244];

  bundleURL = [(UNCNotificationSourceDescription *)self bundleURL];
  v242[0] = MEMORY[0x1E69E9820];
  v242[1] = 3221225472;
  v242[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_25;
  v242[3] = &unk_1E85D7AF8;
  v79 = v76;
  v243 = v79;
  v80 = [v5 appendObject:bundleURL counterpart:v242];

  dataContainerURL = [(UNCNotificationSourceDescription *)self dataContainerURL];
  v240[0] = MEMORY[0x1E69E9820];
  v240[1] = 3221225472;
  v240[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_26;
  v240[3] = &unk_1E85D7AF8;
  v82 = v79;
  v241 = v82;
  v83 = [v5 appendObject:dataContainerURL counterpart:v240];

  groupContainerURLS = [(UNCNotificationSourceDescription *)self groupContainerURLS];
  v238[0] = MEMORY[0x1E69E9820];
  v238[1] = 3221225472;
  v238[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_27;
  v238[3] = &unk_1E85D7AF8;
  v85 = v82;
  v239 = v85;
  v86 = [v5 appendObject:groupContainerURLS counterpart:v238];

  defaultCategories = [(UNCNotificationSourceDescription *)self defaultCategories];
  v236[0] = MEMORY[0x1E69E9820];
  v236[1] = 3221225472;
  v236[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_28;
  v236[3] = &unk_1E85D7AF8;
  v88 = v85;
  v237 = v88;
  v89 = [v5 appendObject:defaultCategories counterpart:v236];

  defaultSettings = [(UNCNotificationSourceDescription *)self defaultSettings];
  v234[0] = MEMORY[0x1E69E9820];
  v234[1] = 3221225472;
  v234[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_29;
  v234[3] = &unk_1E85D7AF8;
  v91 = v88;
  v235 = v91;
  v92 = [v5 appendObject:defaultSettings counterpart:v234];

  defaultTopics = [(UNCNotificationSourceDescription *)self defaultTopics];
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_30;
  v232[3] = &unk_1E85D7AF8;
  v94 = v91;
  v233 = v94;
  v95 = [v5 appendObject:defaultTopics counterpart:v232];

  activityTypes = [(UNCNotificationSourceDescription *)self activityTypes];
  v230[0] = MEMORY[0x1E69E9820];
  v230[1] = 3221225472;
  v230[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_31;
  v230[3] = &unk_1E85D7AF8;
  v97 = v94;
  v231 = v97;
  v98 = [v5 appendObject:activityTypes counterpart:v230];

  allowCriticalAlerts = [(UNCNotificationSourceDescription *)self allowCriticalAlerts];
  v228[0] = MEMORY[0x1E69E9820];
  v228[1] = 3221225472;
  v228[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_32;
  v228[3] = &unk_1E85D7AA8;
  v100 = v97;
  v229 = v100;
  v101 = [v5 appendBool:allowCriticalAlerts counterpart:v228];
  allowTimeSensitive = [(UNCNotificationSourceDescription *)self allowTimeSensitive];
  v226[0] = MEMORY[0x1E69E9820];
  v226[1] = 3221225472;
  v226[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_33;
  v226[3] = &unk_1E85D7AA8;
  v103 = v100;
  v227 = v103;
  v104 = [v5 appendBool:allowTimeSensitive counterpart:v226];
  allowTimeSensitive2 = [(UNCNotificationSourceDescription *)self allowTimeSensitive];
  v224[0] = MEMORY[0x1E69E9820];
  v224[1] = 3221225472;
  v224[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_34;
  v224[3] = &unk_1E85D7AA8;
  v106 = v103;
  v225 = v106;
  v107 = [v5 appendBool:allowTimeSensitive2 counterpart:v224];
  allowCalls = [(UNCNotificationSourceDescription *)self allowCalls];
  v222[0] = MEMORY[0x1E69E9820];
  v222[1] = 3221225472;
  v222[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_35;
  v222[3] = &unk_1E85D7AA8;
  v109 = v106;
  v223 = v109;
  v110 = [v5 appendBool:allowCalls counterpart:v222];
  allowIntercom = [(UNCNotificationSourceDescription *)self allowIntercom];
  v220[0] = MEMORY[0x1E69E9820];
  v220[1] = 3221225472;
  v220[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_36;
  v220[3] = &unk_1E85D7AA8;
  v112 = v109;
  v221 = v112;
  v113 = [v5 appendBool:allowIntercom counterpart:v220];
  allowMessages = [(UNCNotificationSourceDescription *)self allowMessages];
  v218[0] = MEMORY[0x1E69E9820];
  v218[1] = 3221225472;
  v218[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_37;
  v218[3] = &unk_1E85D7AA8;
  v115 = v112;
  v219 = v115;
  v116 = [v5 appendBool:allowMessages counterpart:v218];
  allowPrivateProperties = [(UNCNotificationSourceDescription *)self allowPrivateProperties];
  v216[0] = MEMORY[0x1E69E9820];
  v216[1] = 3221225472;
  v216[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_38;
  v216[3] = &unk_1E85D7AA8;
  v118 = v115;
  v217 = v118;
  v119 = [v5 appendBool:allowPrivateProperties counterpart:v216];
  allowUnlimitedContentBody = [(UNCNotificationSourceDescription *)self allowUnlimitedContentBody];
  v214[0] = MEMORY[0x1E69E9820];
  v214[1] = 3221225472;
  v214[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_39;
  v214[3] = &unk_1E85D7AA8;
  v121 = v118;
  v215 = v121;
  v122 = [v5 appendBool:allowUnlimitedContentBody counterpart:v214];
  allowAlternateLaunchBundleIdentifiers = [(UNCNotificationSourceDescription *)self allowAlternateLaunchBundleIdentifiers];
  v212[0] = MEMORY[0x1E69E9820];
  v212[1] = 3221225472;
  v212[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_40;
  v212[3] = &unk_1E85D7AA8;
  v124 = v121;
  v213 = v124;
  v125 = [v5 appendBool:allowAlternateLaunchBundleIdentifiers counterpart:v212];
  allowServiceExtensionFiltering = [(UNCNotificationSourceDescription *)self allowServiceExtensionFiltering];
  v210[0] = MEMORY[0x1E69E9820];
  v210[1] = 3221225472;
  v210[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_41;
  v210[3] = &unk_1E85D7AA8;
  v127 = v124;
  v211 = v127;
  v128 = [v5 appendBool:allowServiceExtensionFiltering counterpart:v210];
  hideSettings = [(UNCNotificationSourceDescription *)self hideSettings];
  v208[0] = MEMORY[0x1E69E9820];
  v208[1] = 3221225472;
  v208[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_42;
  v208[3] = &unk_1E85D7AA8;
  v130 = v127;
  v209 = v130;
  v131 = [v5 appendBool:hideSettings counterpart:v208];
  automaticallyShowSettings = [(UNCNotificationSourceDescription *)self automaticallyShowSettings];
  v206[0] = MEMORY[0x1E69E9820];
  v206[1] = 3221225472;
  v206[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_43;
  v206[3] = &unk_1E85D7AA8;
  v133 = v130;
  v207 = v133;
  v134 = [v5 appendBool:automaticallyShowSettings counterpart:v206];
  suppressDismissalSync = [(UNCNotificationSourceDescription *)self suppressDismissalSync];
  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 3221225472;
  v204[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_44;
  v204[3] = &unk_1E85D7AA8;
  v136 = v133;
  v205 = v136;
  v137 = [v5 appendBool:suppressDismissalSync counterpart:v204];
  suppressIconMask = [(UNCNotificationSourceDescription *)self suppressIconMask];
  v202[0] = MEMORY[0x1E69E9820];
  v202[1] = 3221225472;
  v202[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_45;
  v202[3] = &unk_1E85D7AA8;
  v139 = v136;
  v203 = v139;
  v140 = [v5 appendBool:suppressIconMask counterpart:v202];
  suppressUserAuthorizationPrompt = [(UNCNotificationSourceDescription *)self suppressUserAuthorizationPrompt];
  v200[0] = MEMORY[0x1E69E9820];
  v200[1] = 3221225472;
  v200[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_46;
  v200[3] = &unk_1E85D7AA8;
  v142 = v139;
  v201 = v142;
  v143 = [v5 appendBool:suppressUserAuthorizationPrompt counterpart:v200];
  useDefaultDataProvider = [(UNCNotificationSourceDescription *)self useDefaultDataProvider];
  v198[0] = MEMORY[0x1E69E9820];
  v198[1] = 3221225472;
  v198[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_47;
  v198[3] = &unk_1E85D7AA8;
  v145 = v142;
  v199 = v145;
  v146 = [v5 appendBool:useDefaultDataProvider counterpart:v198];
  usesCloudKit = [(UNCNotificationSourceDescription *)self usesCloudKit];
  v196[0] = MEMORY[0x1E69E9820];
  v196[1] = 3221225472;
  v196[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_48;
  v196[3] = &unk_1E85D7AA8;
  v148 = v145;
  v197 = v148;
  v149 = [v5 appendBool:usesCloudKit counterpart:v196];
  requiresTopics = [(UNCNotificationSourceDescription *)self requiresTopics];
  v194[0] = MEMORY[0x1E69E9820];
  v194[1] = 3221225472;
  v194[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_49;
  v194[3] = &unk_1E85D7AA8;
  v151 = v148;
  v195 = v151;
  v152 = [v5 appendBool:requiresTopics counterpart:v194];
  supportsContentAvailableRemoteNotifications = [(UNCNotificationSourceDescription *)self supportsContentAvailableRemoteNotifications];
  v192[0] = MEMORY[0x1E69E9820];
  v192[1] = 3221225472;
  v192[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_50;
  v192[3] = &unk_1E85D7AA8;
  v154 = v151;
  v193 = v154;
  v155 = [v5 appendBool:supportsContentAvailableRemoteNotifications counterpart:v192];
  isRestricted = [(UNCNotificationSourceDescription *)self isRestricted];
  v190[0] = MEMORY[0x1E69E9820];
  v190[1] = 3221225472;
  v190[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_51;
  v190[3] = &unk_1E85D7AA8;
  v157 = v154;
  v191 = v157;
  v158 = [v5 appendBool:isRestricted counterpart:v190];
  daemonShouldReceiveBackgroundResponses = [(UNCNotificationSourceDescription *)self daemonShouldReceiveBackgroundResponses];
  v188[0] = MEMORY[0x1E69E9820];
  v188[1] = 3221225472;
  v188[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_52;
  v188[3] = &unk_1E85D7AA8;
  v160 = v157;
  v189 = v160;
  v161 = [v5 appendBool:daemonShouldReceiveBackgroundResponses counterpart:v188];
  daemonShouldReceiveNotificationSettingsUpdates = [(UNCNotificationSourceDescription *)self daemonShouldReceiveNotificationSettingsUpdates];
  v186[0] = MEMORY[0x1E69E9820];
  v186[1] = 3221225472;
  v186[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_53;
  v186[3] = &unk_1E85D7AA8;
  v163 = v160;
  v187 = v163;
  v164 = [v5 appendBool:daemonShouldReceiveNotificationSettingsUpdates counterpart:v186];
  daemonShouldReceiveApplicationEvents = [(UNCNotificationSourceDescription *)self daemonShouldReceiveApplicationEvents];
  v184[0] = MEMORY[0x1E69E9820];
  v184[1] = 3221225472;
  v184[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_54;
  v184[3] = &unk_1E85D7AA8;
  v166 = v163;
  v185 = v166;
  v167 = [v5 appendBool:daemonShouldReceiveApplicationEvents counterpart:v184];
  isAppClip = [(UNCNotificationSourceDescription *)self isAppClip];
  v182[0] = MEMORY[0x1E69E9820];
  v182[1] = 3221225472;
  v182[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_55;
  v182[3] = &unk_1E85D7AA8;
  v169 = v166;
  v183 = v169;
  v170 = [v5 appendBool:isAppClip counterpart:v182];
  wantsEphemeralNotifications = [(UNCNotificationSourceDescription *)self wantsEphemeralNotifications];
  v180[0] = MEMORY[0x1E69E9820];
  v180[1] = 3221225472;
  v180[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_56;
  v180[3] = &unk_1E85D7AA8;
  v172 = v169;
  v181 = v172;
  v173 = [v5 appendBool:wantsEphemeralNotifications counterpart:v180];
  supportsProvisionalAlerts = [(UNCNotificationSourceDescription *)self supportsProvisionalAlerts];
  v178[0] = MEMORY[0x1E69E9820];
  v178[1] = 3221225472;
  v178[2] = __44__UNCNotificationSourceDescription_isEqual___block_invoke_57;
  v178[3] = &unk_1E85D7AA8;
  v179 = v172;
  v175 = v172;
  v176 = [v5 appendBool:supportsProvisionalAlerts counterpart:v178];
  LOBYTE(v172) = [v5 isEqual];

  return v172;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  bundleIdentifier = [(UNCNotificationSourceDescription *)self bundleIdentifier];
  v5 = [builder appendString:bundleIdentifier];

  intentsBundleIdentifier = [(UNCNotificationSourceDescription *)self intentsBundleIdentifier];
  v7 = [builder appendString:intentsBundleIdentifier];

  universalApplicationIdentifier = [(UNCNotificationSourceDescription *)self universalApplicationIdentifier];
  v9 = [builder appendString:universalApplicationIdentifier];

  displayName = [(UNCNotificationSourceDescription *)self displayName];
  v11 = [builder appendString:displayName];

  pushEnvironment = [(UNCNotificationSourceDescription *)self pushEnvironment];
  v13 = [builder appendString:pushEnvironment];

  defaultIconFile = [(UNCNotificationSourceDescription *)self defaultIconFile];
  v15 = [builder appendString:defaultIconFile];

  subordinateIconFile = [(UNCNotificationSourceDescription *)self subordinateIconFile];
  v17 = [builder appendString:subordinateIconFile];

  settingsIconFile = [(UNCNotificationSourceDescription *)self settingsIconFile];
  v19 = [builder appendString:settingsIconFile];

  settingsSheetIconFile = [(UNCNotificationSourceDescription *)self settingsSheetIconFile];
  v21 = [builder appendString:settingsSheetIconFile];

  carPlayIconFile = [(UNCNotificationSourceDescription *)self carPlayIconFile];
  v23 = [builder appendString:carPlayIconFile];

  watchQuickLookSmallIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookSmallIconFile];
  v25 = [builder appendString:watchQuickLookSmallIconFile];

  watchQuickLookLargeIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookLargeIconFile];
  v27 = [builder appendString:watchQuickLookLargeIconFile];

  watchListSmallIconFile = [(UNCNotificationSourceDescription *)self watchListSmallIconFile];
  v29 = [builder appendString:watchListSmallIconFile];

  watchListLargeIconFile = [(UNCNotificationSourceDescription *)self watchListLargeIconFile];
  v31 = [builder appendString:watchListLargeIconFile];

  watchQuickLook394hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook394hIconFile];
  v33 = [builder appendString:watchQuickLook394hIconFile];

  watchQuickLook448hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook448hIconFile];
  v35 = [builder appendString:watchQuickLook448hIconFile];

  watchList394hIconFile = [(UNCNotificationSourceDescription *)self watchList394hIconFile];
  v37 = [builder appendString:watchList394hIconFile];

  watchList448hIconFile = [(UNCNotificationSourceDescription *)self watchList448hIconFile];
  v39 = [builder appendString:watchList448hIconFile];

  watchQuickLook430hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook430hIconFile];
  v41 = [builder appendString:watchQuickLook430hIconFile];

  watchQuickLook484hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook484hIconFile];
  v43 = [builder appendString:watchQuickLook484hIconFile];

  watchList430hIconFile = [(UNCNotificationSourceDescription *)self watchList430hIconFile];
  v45 = [builder appendString:watchList430hIconFile];

  watchList484hIconFile = [(UNCNotificationSourceDescription *)self watchList484hIconFile];
  v47 = [builder appendString:watchList484hIconFile];

  customSettingsBundle = [(UNCNotificationSourceDescription *)self customSettingsBundle];
  v49 = [builder appendString:customSettingsBundle];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self customSettingsDetailControllerClass];
  v51 = [builder appendString:customSettingsDetailControllerClass];

  bundleURL = [(UNCNotificationSourceDescription *)self bundleURL];
  v53 = [builder appendObject:bundleURL];

  dataContainerURL = [(UNCNotificationSourceDescription *)self dataContainerURL];
  v55 = [builder appendObject:dataContainerURL];

  groupContainerURLS = [(UNCNotificationSourceDescription *)self groupContainerURLS];
  v57 = [builder appendObject:groupContainerURLS];

  defaultCategories = [(UNCNotificationSourceDescription *)self defaultCategories];
  v59 = [builder appendObject:defaultCategories];

  defaultSettings = [(UNCNotificationSourceDescription *)self defaultSettings];
  v61 = [builder appendObject:defaultSettings];

  defaultTopics = [(UNCNotificationSourceDescription *)self defaultTopics];
  v63 = [builder appendObject:defaultTopics];

  activityTypes = [(UNCNotificationSourceDescription *)self activityTypes];
  v65 = [builder appendObject:activityTypes];

  v66 = [builder appendBool:{-[UNCNotificationSourceDescription allowCriticalAlerts](self, "allowCriticalAlerts")}];
  v67 = [builder appendBool:{-[UNCNotificationSourceDescription allowTimeSensitive](self, "allowTimeSensitive")}];
  v68 = [builder appendBool:{-[UNCNotificationSourceDescription allowCalls](self, "allowCalls")}];
  v69 = [builder appendBool:{-[UNCNotificationSourceDescription allowIntercom](self, "allowIntercom")}];
  v70 = [builder appendBool:{-[UNCNotificationSourceDescription allowMessages](self, "allowMessages")}];
  v71 = [builder appendBool:{-[UNCNotificationSourceDescription allowPrivateProperties](self, "allowPrivateProperties")}];
  v72 = [builder appendBool:{-[UNCNotificationSourceDescription allowUnlimitedContentBody](self, "allowUnlimitedContentBody")}];
  v73 = [builder appendBool:{-[UNCNotificationSourceDescription allowAlternateLaunchBundleIdentifiers](self, "allowAlternateLaunchBundleIdentifiers")}];
  v74 = [builder appendBool:{-[UNCNotificationSourceDescription allowServiceExtensionFiltering](self, "allowServiceExtensionFiltering")}];
  v75 = [builder appendBool:{-[UNCNotificationSourceDescription hideSettings](self, "hideSettings")}];
  v76 = [builder appendBool:{-[UNCNotificationSourceDescription automaticallyShowSettings](self, "automaticallyShowSettings")}];
  v77 = [builder appendBool:{-[UNCNotificationSourceDescription suppressDismissalSync](self, "suppressDismissalSync")}];
  v78 = [builder appendBool:{-[UNCNotificationSourceDescription suppressIconMask](self, "suppressIconMask")}];
  v79 = [builder appendBool:{-[UNCNotificationSourceDescription suppressUserAuthorizationPrompt](self, "suppressUserAuthorizationPrompt")}];
  v80 = [builder appendBool:{-[UNCNotificationSourceDescription useDefaultDataProvider](self, "useDefaultDataProvider")}];
  v81 = [builder appendBool:{-[UNCNotificationSourceDescription usesCloudKit](self, "usesCloudKit")}];
  v82 = [builder appendBool:{-[UNCNotificationSourceDescription requiresTopics](self, "requiresTopics")}];
  v83 = [builder appendBool:{-[UNCNotificationSourceDescription supportsContentAvailableRemoteNotifications](self, "supportsContentAvailableRemoteNotifications")}];
  v84 = [builder appendBool:{-[UNCNotificationSourceDescription isRestricted](self, "isRestricted")}];
  v85 = [builder appendBool:{-[UNCNotificationSourceDescription daemonShouldReceiveBackgroundResponses](self, "daemonShouldReceiveBackgroundResponses")}];
  v86 = [builder appendBool:{-[UNCNotificationSourceDescription daemonShouldReceiveNotificationSettingsUpdates](self, "daemonShouldReceiveNotificationSettingsUpdates")}];
  v87 = [builder appendBool:{-[UNCNotificationSourceDescription daemonShouldReceiveApplicationEvents](self, "daemonShouldReceiveApplicationEvents")}];
  v88 = [builder appendBool:{-[UNCNotificationSourceDescription isAppClip](self, "isAppClip")}];
  v89 = [builder appendBool:{-[UNCNotificationSourceDescription wantsEphemeralNotifications](self, "wantsEphemeralNotifications")}];
  v90 = [builder appendBool:{-[UNCNotificationSourceDescription supportsProvisionalAlerts](self, "supportsProvisionalAlerts")}];
  v91 = [builder hash];

  return v91;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  bundleIdentifier = [(UNCNotificationSourceDescription *)self bundleIdentifier];
  [v3 appendString:bundleIdentifier withName:@"bundleIdentifier"];

  intentsBundleIdentifier = [(UNCNotificationSourceDescription *)self intentsBundleIdentifier];
  [v3 appendString:intentsBundleIdentifier withName:@"intentsBundleIdentifier"];

  universalApplicationIdentifier = [(UNCNotificationSourceDescription *)self universalApplicationIdentifier];
  [v3 appendString:universalApplicationIdentifier withName:@"universalApplicationIdentifier"];

  displayName = [(UNCNotificationSourceDescription *)self displayName];
  [v3 appendString:displayName withName:@"displayName"];

  pushEnvironment = [(UNCNotificationSourceDescription *)self pushEnvironment];
  [v3 appendString:pushEnvironment withName:@"pushEnvironment"];

  defaultIconFile = [(UNCNotificationSourceDescription *)self defaultIconFile];
  [v3 appendString:defaultIconFile withName:@"defaultIconFile"];

  subordinateIconFile = [(UNCNotificationSourceDescription *)self subordinateIconFile];
  [v3 appendString:subordinateIconFile withName:@"subordinateIconFile"];

  settingsIconFile = [(UNCNotificationSourceDescription *)self settingsIconFile];
  [v3 appendString:settingsIconFile withName:@"settingsIconFile"];

  settingsSheetIconFile = [(UNCNotificationSourceDescription *)self settingsSheetIconFile];
  [v3 appendString:settingsSheetIconFile withName:@"settingsSheetIconFile"];

  carPlayIconFile = [(UNCNotificationSourceDescription *)self carPlayIconFile];
  [v3 appendString:carPlayIconFile withName:@"carPlayIconFile"];

  watchQuickLookSmallIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookSmallIconFile];
  [v3 appendString:watchQuickLookSmallIconFile withName:@"watchQuickLookSmallIconFile"];

  watchQuickLookLargeIconFile = [(UNCNotificationSourceDescription *)self watchQuickLookLargeIconFile];
  [v3 appendString:watchQuickLookLargeIconFile withName:@"watchQuickLookLargeIconFile"];

  watchListSmallIconFile = [(UNCNotificationSourceDescription *)self watchListSmallIconFile];
  [v3 appendString:watchListSmallIconFile withName:@"watchListSmallIconFile"];

  watchListLargeIconFile = [(UNCNotificationSourceDescription *)self watchListLargeIconFile];
  [v3 appendString:watchListLargeIconFile withName:@"watchListLargeIconFile"];

  watchQuickLook394hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook394hIconFile];
  [v3 appendString:watchQuickLook394hIconFile withName:@"watchQuickLook394hIconFile"];

  watchQuickLook448hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook448hIconFile];
  [v3 appendString:watchQuickLook448hIconFile withName:@"watchQuickLook448hIconFile"];

  watchList394hIconFile = [(UNCNotificationSourceDescription *)self watchList394hIconFile];
  [v3 appendString:watchList394hIconFile withName:@"watchList394hIconFile"];

  watchList448hIconFile = [(UNCNotificationSourceDescription *)self watchList448hIconFile];
  [v3 appendString:watchList448hIconFile withName:@"watchList448hIconFile"];

  watchQuickLook430hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook430hIconFile];
  [v3 appendString:watchQuickLook430hIconFile withName:@"watchQuickLook430hIconFile"];

  watchQuickLook484hIconFile = [(UNCNotificationSourceDescription *)self watchQuickLook484hIconFile];
  [v3 appendString:watchQuickLook484hIconFile withName:@"watchQuickLook484hIconFile"];

  watchList430hIconFile = [(UNCNotificationSourceDescription *)self watchList430hIconFile];
  [v3 appendString:watchList430hIconFile withName:@"watchList430hIconFile"];

  watchList484hIconFile = [(UNCNotificationSourceDescription *)self watchList484hIconFile];
  [v3 appendString:watchList484hIconFile withName:@"watchList484hIconFile"];

  customSettingsBundle = [(UNCNotificationSourceDescription *)self customSettingsBundle];
  [v3 appendString:customSettingsBundle withName:@"customSettingsBundle"];

  customSettingsDetailControllerClass = [(UNCNotificationSourceDescription *)self customSettingsDetailControllerClass];
  [v3 appendString:customSettingsDetailControllerClass withName:@"customSettingsDetailControllerClass"];

  bundleURL = [(UNCNotificationSourceDescription *)self bundleURL];
  v29 = [v3 appendObject:bundleURL withName:@"bundleURL"];

  dataContainerURL = [(UNCNotificationSourceDescription *)self dataContainerURL];
  v31 = [v3 appendObject:dataContainerURL withName:@"dataContainerURL"];

  groupContainerURLS = [(UNCNotificationSourceDescription *)self groupContainerURLS];
  v33 = [v3 appendObject:groupContainerURLS withName:@"groupContainerURLS"];

  defaultCategories = [(UNCNotificationSourceDescription *)self defaultCategories];
  v35 = [v3 appendObject:defaultCategories withName:@"defaultCategories"];

  defaultSettings = [(UNCNotificationSourceDescription *)self defaultSettings];
  v37 = [v3 appendObject:defaultSettings withName:@"defaultSettings"];

  defaultTopics = [(UNCNotificationSourceDescription *)self defaultTopics];
  v39 = [v3 appendObject:defaultTopics withName:@"defaultTopics"];

  activityTypes = [(UNCNotificationSourceDescription *)self activityTypes];
  v41 = [v3 appendObject:activityTypes withName:@"activityTypes"];

  v42 = [v3 appendBool:-[UNCNotificationSourceDescription allowCriticalAlerts](self withName:{"allowCriticalAlerts"), @"allowCriticalAlerts"}];
  v43 = [v3 appendBool:-[UNCNotificationSourceDescription allowTimeSensitive](self withName:{"allowTimeSensitive"), @"allowTimeSensitive"}];
  v44 = [v3 appendBool:-[UNCNotificationSourceDescription allowCalls](self withName:{"allowCalls"), @"allowCalls"}];
  v45 = [v3 appendBool:-[UNCNotificationSourceDescription allowIntercom](self withName:{"allowIntercom"), @"allowIntercom"}];
  v46 = [v3 appendBool:-[UNCNotificationSourceDescription allowMessages](self withName:{"allowMessages"), @"allowMessages"}];
  v47 = [v3 appendBool:-[UNCNotificationSourceDescription allowPrivateProperties](self withName:{"allowPrivateProperties"), @"allowPrivateProperties"}];
  v48 = [v3 appendBool:-[UNCNotificationSourceDescription allowUnlimitedContentBody](self withName:{"allowUnlimitedContentBody"), @"allowUnlimitedContentBody"}];
  v49 = [v3 appendBool:-[UNCNotificationSourceDescription allowAlternateLaunchBundleIdentifiers](self withName:{"allowAlternateLaunchBundleIdentifiers"), @"allowAlternateLaunchBundleIdentifiers"}];
  v50 = [v3 appendBool:-[UNCNotificationSourceDescription allowServiceExtensionFiltering](self withName:{"allowServiceExtensionFiltering"), @"allowServiceExtensionFiltering"}];
  v51 = [v3 appendBool:-[UNCNotificationSourceDescription hideSettings](self withName:{"hideSettings"), @"hideSettings"}];
  v52 = [v3 appendBool:-[UNCNotificationSourceDescription automaticallyShowSettings](self withName:{"automaticallyShowSettings"), @"automaticallyShowSettings"}];
  v53 = [v3 appendBool:-[UNCNotificationSourceDescription suppressDismissalSync](self withName:{"suppressDismissalSync"), @"suppressDismissalSync"}];
  v54 = [v3 appendBool:-[UNCNotificationSourceDescription suppressIconMask](self withName:{"suppressIconMask"), @"suppressIconMask"}];
  v55 = [v3 appendBool:-[UNCNotificationSourceDescription suppressUserAuthorizationPrompt](self withName:{"suppressUserAuthorizationPrompt"), @"suppressUserAuthorizationPrompt"}];
  v56 = [v3 appendBool:-[UNCNotificationSourceDescription useDefaultDataProvider](self withName:{"useDefaultDataProvider"), @"useDefaultDataProvider"}];
  v57 = [v3 appendBool:-[UNCNotificationSourceDescription usesCloudKit](self withName:{"usesCloudKit"), @"usesCloudKit"}];
  v58 = [v3 appendBool:-[UNCNotificationSourceDescription requiresTopics](self withName:{"requiresTopics"), @"requiresTopics"}];
  v59 = [v3 appendBool:-[UNCNotificationSourceDescription supportsContentAvailableRemoteNotifications](self withName:{"supportsContentAvailableRemoteNotifications"), @"supportsContentAvailableRemoteNotifications"}];
  v60 = [v3 appendBool:-[UNCNotificationSourceDescription isRestricted](self withName:{"isRestricted"), @"restricted"}];
  v61 = [v3 appendBool:-[UNCNotificationSourceDescription daemonShouldReceiveBackgroundResponses](self withName:{"daemonShouldReceiveBackgroundResponses"), @"daemonShouldReceiveBackgroundResponses"}];
  v62 = [v3 appendBool:-[UNCNotificationSourceDescription daemonShouldReceiveNotificationSettingsUpdates](self withName:{"daemonShouldReceiveNotificationSettingsUpdates"), @"daemonShouldReceiveNotificationSettingsUpdates"}];
  v63 = [v3 appendBool:-[UNCNotificationSourceDescription daemonShouldReceiveApplicationEvents](self withName:{"daemonShouldReceiveApplicationEvents"), @"daemonShouldReceiveApplicationEvents"}];
  v64 = [v3 appendBool:-[UNCNotificationSourceDescription isAppClip](self withName:{"isAppClip"), @"isAppClip"}];
  v65 = [v3 appendBool:-[UNCNotificationSourceDescription wantsEphemeralNotifications](self withName:{"wantsEphemeralNotifications"), @"wantsEphemeralNotifications"}];
  v66 = [v3 appendBool:-[UNCNotificationSourceDescription supportsProvisionalAlerts](self withName:{"supportsProvisionalAlerts"), @"supportsProvisionalAlerts"}];
  build = [v3 build];

  return build;
}

@end