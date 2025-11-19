@interface TCCDService
+ (id)allServices;
+ (id)serviceAll;
+ (id)serviceDescriptionsForPlatformName:(id)a3;
+ (id)tccdPlatformNameForDYLDPlatformName:(id)a3;
+ (id)versionStringFromDYLDVersionNumber:(id)a3;
- (NSBundle)defaultLocalizedResourcesBundle;
- (NSBundle)localizedResourcesBundle;
- (TCCDService)initWithName:(id)a3 availability:(id)a4;
- (TCCDService)macos_compositionChildService;
- (TCCDService)macos_compositionParentService;
- (TCCDService)subsequentRequestStringsRelatedService;
- (id)authorizationRightStateForValue:(unint64_t)a3 reason:(unint64_t)a4;
- (id)buttonTitleLocalizationKeyForAuthorization:(unint64_t)a3 desiredAuth:(unint64_t)a4;
- (id)descriptionDictionary;
- (id)descriptionForAuthorizationValue:(unint64_t)a3 reason:(unint64_t)a4;
- (id)localizedTextWithKey:(id)a3;
- (id)requestTitleTextLocalizationKeyForAuthorization:(unint64_t)a3;
- (id)usageDescriptionKeyForAuthorization:(unint64_t)a3;
- (int64_t)compare:(id)a3;
- (int64_t)developmentAuthorizationValue;
- (unint64_t)accessActionStatusForAuthorizationValue:(unint64_t)a3;
- (unint64_t)convertAccessUpdateStatustToMainSet:(unint64_t)a3;
- (void)setLocalizedResourcesBundlePath:(id)a3;
@end

@implementation TCCDService

+ (id)serviceAll
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A874;
  block[3] = &unk_1000A6468;
  block[4] = a1;
  if (qword_1000C11F8 != -1)
  {
    dispatch_once(&qword_1000C11F8, block);
  }

  v2 = qword_1000C11F0;

  return v2;
}

- (TCCDService)macos_compositionParentService
{
  WeakRetained = objc_loadWeakRetained(&self->_macos_compositionParentService);

  return WeakRetained;
}

- (NSBundle)localizedResourcesBundle
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_localizedResourcesBundle)
  {
    v3 = [NSBundle bundleWithPath:v2->_localizedResourcesBundlePath];
    localizedResourcesBundle = v2->_localizedResourcesBundle;
    v2->_localizedResourcesBundle = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_localizedResourcesBundle;
  if (!v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BCF8;
    block[3] = &unk_1000A4F58;
    block[4] = v2;
    if (qword_1000C1200 != -1)
    {
      dispatch_once(&qword_1000C1200, block);
    }

    v5 = v2->_localizedResourcesBundle;
  }

  return v5;
}

- (unint64_t)accessActionStatusForAuthorizationValue:(unint64_t)a3
{
  v4 = [(TCCDService *)self authorizationValueType];
  result = 0;
  if (v4 == 1 && a3 <= 5)
  {
    return qword_100080818[a3];
  }

  return result;
}

- (unint64_t)convertAccessUpdateStatustToMainSet:(unint64_t)a3
{
  result = a3;
  v4 = a3 - 2;
  if (a3 - 2 <= 0xA && ((0x553u >> v4) & 1) != 0)
  {
    return qword_100080848[v4];
  }

  return result;
}

+ (id)allServices
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046D50;
  block[3] = &unk_1000A6468;
  block[4] = a1;
  if (qword_1000C11E8 != -1)
  {
    dispatch_once(&qword_1000C11E8, block);
  }

  v2 = qword_1000C11E0;

  return v2;
}

+ (id)serviceDescriptionsForPlatformName:(id)a3
{
  v4 = a3;
  v19 = [a1 allServices];
  v5 = [v19 allObjects];
  v6 = [v5 sortedArrayUsingSelector:"compare:"];

  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 validOnPlatformNames];
        v14 = [v13 containsObject:v4];

        if ((v14 & 1) != 0 || [v4 isEqualToString:@"all"])
        {
          v15 = [a1 serviceAll];
          if (v12 != v15)
          {
            v16 = [v12 shouldTreatAsDeprecated];

            if (v16)
            {
              continue;
            }

            v15 = [v12 descriptionDictionary];
            [v20 addObject:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = [v20 copy];

  return v17;
}

+ (id)tccdPlatformNameForDYLDPlatformName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"macos"])
  {
    v4 = &TCCDPlatformNameMacOS;
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"ios"])
  {
    v4 = &TCCDPlatformNameIOS;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"watchos"])
  {
    v4 = &TCCDPlatformNameWatchOS;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"tvos"])
  {
    v4 = &TCCDPlatformNameTVOS;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)versionStringFromDYLDVersionNumber:(id)a3
{
  v3 = [a3 unsignedIntValue];
  if (v3)
  {
    [NSString stringWithFormat:@"%u.%u.%u", BYTE2(v3), BYTE1(v3), v3];
  }

  else
  {
    [NSString stringWithFormat:@"%u.%u", BYTE2(v3), BYTE1(v3), v6];
  }
  v4 = ;

  return v4;
}

- (TCCDService)initWithName:(id)a3 availability:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = TCCDService;
  v8 = [(TCCDService *)&v32 init];
  if (v8)
  {
    v9 = [v6 copy];
    [(TCCDService *)v8 setName:v9];

    v10 = [(TCCDService *)v8 name];
    v11 = [v10 substringFromIndex:{objc_msgSend(@"kTCCService", "length")}];
    [(TCCDService *)v8 setExternalName:v11];

    [(TCCDService *)v8 setMdm_macos_allowedInPayloadDefition:1];
    v12 = objc_opt_new();
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_10004B1F0;
    v29 = &unk_1000A67A0;
    v13 = v8;
    v30 = v13;
    v14 = v12;
    v31 = v14;
    [v7 enumerateKeysAndObjectsUsingBlock:&v26];
    [(TCCDService *)v13 setValidOnPlatformNames:v14, v26, v27, v28, v29];
    [(TCCDService *)v13 setUsesTwoStagePrompting:0];
    [(TCCDService *)v13 setPlatformAvailability:v7];
    [(TCCDService *)v13 setAuthorizationValueType:1];
    [(TCCDService *)v13 setAuthorizationRightsMask:7];
    [(TCCDService *)v13 setAuthorizationVersionNumber:1];
    [(TCCDService *)v13 setAllowedForAvocadoWidget:1];
    v15 = +[TCCDService defaultLocalizedResourcesBundlePath];
    [(TCCDService *)v13 setLocalizedResourcesBundlePath:v15];

    [(TCCDService *)v13 setAllowAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_ALLOW"];
    [(TCCDService *)v13 setDenyAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_DENY"];
    v16 = [(TCCDService *)v13 name];
    v17 = [TCCDService requestTitleTextLocalizationKeyNameForServiceName:v16];
    [(TCCDService *)v13 setRequestTitleTextLocalizationKey:v17];

    v18 = [(TCCDService *)v13 requestTitleTextLocalizationKey];

    if (!v18)
    {
      sub_10004CDB8();
    }

    v19 = [(TCCDService *)v13 name];
    v20 = [TCCDService requestDenyNotificationTitleTextLocalizationKeyNameForServiceName:v19];
    [(TCCDService *)v13 setNotificationTitleTextLocalizationKey:v20];

    v21 = [(TCCDService *)v13 notificationTitleTextLocalizationKey];

    if (!v21)
    {
      sub_10004CDB8();
    }

    v22 = [(TCCDService *)v13 name];
    v23 = [TCCDService requestDenyNotificationButtonTitleTextLocalizationKeyNameForServiceName:v22];
    [(TCCDService *)v13 setNotificationButtonTitleLocalizationKey:v23];

    v24 = [(TCCDService *)v13 notificationButtonTitleLocalizationKey];

    if (!v24)
    {
      sub_10004CDB8();
    }

    [(TCCDService *)v13 setLimitedAuthorizationButtonTitleLocalizationKey:0];
    [(TCCDService *)v13 setRequestTitleTextAfterV2UpgradeLocalizationKey:0];
    [(TCCDService *)v13 setRequestAdditionalTextLocalizationKey:0];
    [(TCCDService *)v13 setRequestAdditionalTextAfterV2UpgradeLocalizationKey:0];
    [(TCCDService *)v13 setRequestTitleTextForSubsequentRequestsKey:0];
    [(TCCDService *)v13 setRequestAdditionalTextForSubsequentRequestsLocalizationKey:0];
    [(TCCDService *)v13 setRequestAdditionalTextForSettingsRequestsLocalizationKey:0];
    [(TCCDService *)v13 setRequestNotificationExtensionTextLocalizationKey:0];
    [(TCCDService *)v13 setReminderTitleTextLocalizationKey:0];
    [(TCCDService *)v13 setReminderAllowButtonTitleTextLocalizationKey:0];
    [(TCCDService *)v13 setReminderLimitedButtonTitleTextLocalizationKey:0];
    [(TCCDService *)v13 setCancelButtontitleLocalizationKey:@"REQUEST_ACCESS_CANCEL"];
    [(TCCDService *)v13 setAlternatePromptTitleEntitlement:0];
    [(TCCDService *)v13 setRequestEntitlementTitleTextLocalizationKey:0];
    [(TCCDService *)v13 setPromptAuthorizationChoiceBlock:&stru_1000A67C0];
    [(TCCDService *)v13 setPromptButtonLocalizationKeyBlock:&stru_1000A67E0];
    [(TCCDService *)v13 setDefaultDesiredAuth:2];
    [(TCCDService *)v13 setSyncAuthorizationTranslationBlock:&stru_1000A6800];
    [(TCCDService *)v13 setRecordAnalyticsPopulationBlock:&stru_1000A6840];
  }

  return v8;
}

- (id)descriptionDictionary
{
  v3 = objc_opt_new();
  v4 = [(TCCDService *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [(TCCDService *)self externalName];
  [v3 setObject:v5 forKeyedSubscript:@"externalName"];

  v6 = [(TCCDService *)self usageDescriptionKeyName];
  [v3 setObject:v6 forKeyedSubscript:@"usageDescriptionKeyName"];

  v7 = [(TCCDService *)self validOnPlatformNames];
  v8 = [v7 allObjects];
  [v3 setObject:v8 forKeyedSubscript:@"platforms"];

  v9 = [(TCCDService *)self platformAvailability];
  [v3 setObject:v9 forKeyedSubscript:@"platformAvailibilityVersionNumbers"];

  v10 = [(TCCDService *)self fullAccessUsageDescriptionKeyName];

  if (v10)
  {
    v11 = [(TCCDService *)self fullAccessUsageDescriptionKeyName];
    [v3 setObject:v11 forKeyedSubscript:@"fullAccessUsageDescriptionKeyName"];
  }

  v12 = [(TCCDService *)self addAccessUsageDescriptionKeyName];

  if (v12)
  {
    v13 = [(TCCDService *)self addAccessUsageDescriptionKeyName];
    [v3 setObject:v13 forKeyedSubscript:@"addAccessUsageDescriptionKeyName"];
  }

  if ([(TCCDService *)self supportsStagedPrompting])
  {
    v14 = [NSNumber numberWithBool:[(TCCDService *)self supportsStagedPrompting]];
    [v3 setObject:v14 forKeyedSubscript:@"supportsStagedPrompting"];
  }

  v15 = objc_opt_new();
  v16 = [(TCCDService *)self platformAvailability];
  v48 = _NSConcreteStackBlock;
  v49 = 3221225472;
  v50 = sub_10004B92C;
  v51 = &unk_1000A67A0;
  v17 = v15;
  v52 = v17;
  v53 = self;
  [v16 enumerateKeysAndObjectsUsingBlock:&v48];

  [v3 setObject:v17 forKeyedSubscript:{@"platformAvailibilityVersionStrings", v48, v49, v50, v51}];
  if ([(TCCDService *)self mdm_isAuthorizationDenyOnly])
  {
    v18 = [NSNumber numberWithBool:[(TCCDService *)self mdm_isAuthorizationDenyOnly]];
    [v3 setObject:v18 forKeyedSubscript:@"mdm_isAuthorizationDenyOnly"];
  }

  v19 = [NSNumber numberWithBool:[(TCCDService *)self mdm_macos_allowedInPayloadDefition]];
  [v3 setObject:v19 forKeyedSubscript:@"mdm_macos_allowedInPayloadDefition"];

  if ([(TCCDService *)self mdm_allowStandardUserToSetSystemService])
  {
    v20 = [NSNumber numberWithBool:[(TCCDService *)self mdm_allowStandardUserToSetSystemService]];
    [v3 setObject:v20 forKeyedSubscript:@"mdm_allowStandardUserToSetSystemService"];
  }

  if ([(TCCDService *)self macos_hasIndirectObject])
  {
    v21 = [NSNumber numberWithBool:[(TCCDService *)self macos_hasIndirectObject]];
    [v3 setObject:v21 forKeyedSubscript:@"macos_hasIndirectObject"];
  }

  if ([(TCCDService *)self macos_isPerSystem])
  {
    v22 = [NSNumber numberWithBool:[(TCCDService *)self macos_isPerSystem]];
    [v3 setObject:v22 forKeyedSubscript:@"macos_isPerSystem"];
  }

  v23 = [(TCCDService *)self macos_hardenedRuntimeEntitlementName];

  if (v23)
  {
    v24 = [(TCCDService *)self macos_hardenedRuntimeEntitlementName];
    [v3 setObject:v24 forKeyedSubscript:@"macos_hardenedRuntimeEntitlementName"];
  }

  v25 = [(TCCDService *)self macos_minimumSDKVersionNumber];

  if (v25)
  {
    v26 = [(TCCDService *)self macos_minimumSDKVersionNumber];
    [v3 setObject:v26 forKeyedSubscript:@"macos_minimumSDKVersionNumber"];

    v27 = objc_opt_class();
    v28 = [(TCCDService *)self macos_minimumSDKVersionNumber];
    v29 = [v27 versionStringFromDYLDVersionNumber:v28];
    [v3 setObject:v29 forKeyedSubscript:@"macos_minimumSDKVersionString"];
  }

  v30 = [(TCCDService *)self macos_helpAnchor];

  if (v30)
  {
    v31 = [(TCCDService *)self macos_helpAnchor];
    [v3 setObject:v31 forKeyedSubscript:@"macos_helpAnchor"];
  }

  v32 = [(TCCDService *)self tvOS_minimumSDKVersionNumber];

  if (v32)
  {
    v33 = [(TCCDService *)self tvOS_minimumSDKVersionNumber];
    [v3 setObject:v33 forKeyedSubscript:@"tvOS_minimumSDKVersionNumber"];

    v34 = objc_opt_class();
    v35 = [(TCCDService *)self tvOS_minimumSDKVersionNumber];
    v36 = [v34 versionStringFromDYLDVersionNumber:v35];
    [v3 setObject:v36 forKeyedSubscript:@"tvOS_minimumSDKVersionString"];
  }

  v37 = [(TCCDService *)self watchOS_minimumSDKVersionNumber];

  if (v37)
  {
    v38 = [(TCCDService *)self watchOS_minimumSDKVersionNumber];
    [v3 setObject:v38 forKeyedSubscript:@"watchOS_minimumSDKVersionNumber"];

    v39 = objc_opt_class();
    v40 = [(TCCDService *)self watchOS_minimumSDKVersionNumber];
    v41 = [v39 versionStringFromDYLDVersionNumber:v40];
    [v3 setObject:v41 forKeyedSubscript:@"watchOS_minimumSDKVersionString"];
  }

  v42 = [(TCCDService *)self iOS_minimumSDKVersionNumber];

  if (v42)
  {
    v43 = [(TCCDService *)self iOS_minimumSDKVersionNumber];
    [v3 setObject:v43 forKeyedSubscript:@"iOS_minimumSDKVersionNumber"];

    v44 = objc_opt_class();
    v45 = [(TCCDService *)self iOS_minimumSDKVersionNumber];
    v46 = [v44 versionStringFromDYLDVersionNumber:v45];
    [v3 setObject:v46 forKeyedSubscript:@"iOS_minimumSDKVersionString"];
  }

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(TCCDService *)self name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)authorizationRightStateForValue:(unint64_t)a3 reason:(unint64_t)a4
{
  if ([(TCCDService *)self authorizationValueType]== 1)
  {
    v6 = objc_alloc_init(TCCDAuthorizationRightState);
    [(TCCDAuthorizationRightState *)v6 setRight:a3];
    [(TCCDAuthorizationRightState *)v6 setReason:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)descriptionForAuthorizationValue:(unint64_t)a3 reason:(unint64_t)a4
{
  if ([(TCCDService *)self authorizationValueType]== 1)
  {
    v7 = [(TCCDService *)self authorizationRightStateForValue:a3 reason:a4];
    v8 = [v7 description];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"0x%llx", a3];
  }

  return v8;
}

- (int64_t)developmentAuthorizationValue
{
  if (![(TCCDService *)self applyDevelopmentAuthorizationPolicy])
  {
    return 0;
  }

  v3 = [(TCCDService *)self name];
  v4 = [NSString stringWithFormat:@"DevelopmentAuthorizationPolicy.%@", v3];

  v5 = CFPreferencesCopyValue(v4, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v5 && (v6 = v5, v7 = CFGetTypeID(v5), v7 == CFStringGetTypeID()))
  {
    if ([v6 caseInsensitiveCompare:@"allow"])
    {
      if ([v6 caseInsensitiveCompare:@"deny"])
      {
        [v6 caseInsensitiveCompare:@"none"];
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = [(TCCDService *)self defaultDevelopmentAuthorizationValue];
  }

  return v8;
}

- (void)setLocalizedResourcesBundlePath:(id)a3
{
  self->_localizedResourcesBundlePath = [a3 copy];

  _objc_release_x1();
}

- (NSBundle)defaultLocalizedResourcesBundle
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_defaultLocalizedResourcesBundle)
  {
    v3 = +[TCCDService defaultLocalizedResourcesBundlePath];
    v4 = [NSBundle bundleWithPath:v3];
    defaultLocalizedResourcesBundle = v2->_defaultLocalizedResourcesBundle;
    v2->_defaultLocalizedResourcesBundle = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_defaultLocalizedResourcesBundle;
  if (!v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BEA8;
    block[3] = &unk_1000A4F58;
    block[4] = v2;
    if (qword_1000C1208 != -1)
    {
      dispatch_once(&qword_1000C1208, block);
    }

    v6 = v2->_defaultLocalizedResourcesBundle;
  }

  return v6;
}

- (id)localizedTextWithKey:(id)a3
{
  v4 = a3;
  v5 = [(TCCDService *)self localizedResourcesBundle];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 localizedStringForKey:v4 value:&stru_1000A7240 table:0];
    if (!v7)
    {
      v8 = +[TCCDPlatform currentPlatform];
      v9 = [v8 server];
      v10 = [v9 logHandle];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10004CF20(self, v4, v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)requestTitleTextLocalizationKeyForAuthorization:(unint64_t)a3
{
  switch(a3)
  {
    case 4uLL:
      v3 = [(TCCDService *)self requestAddTitleTextLocalizationKey];
      break;
    case 3uLL:
      v3 = [(TCCDService *)self requestLimitedTitleTextLocalizationKey];
      break;
    case 2uLL:
      v3 = [(TCCDService *)self requestFullTitleTextLocalizationKey];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (id)buttonTitleLocalizationKeyForAuthorization:(unint64_t)a3 desiredAuth:(unint64_t)a4
{
  v6 = [(TCCDService *)self localizationKeyForButtonAuth:a3 desiredAuth:a4];
  if (!v6)
  {
    if (a3 > 3)
    {
      switch(a3)
      {
        case 4uLL:
          v6 = [(TCCDService *)self addModifyAddedAuthorizationButtonTitleLocalizationKey];
          break;
        case 5uLL:
          v6 = [(TCCDService *)self sessionPidAuthorizationButtonTitleLocalizationKey];
          break;
        case 6uLL:
          v6 = [(TCCDService *)self moreAuthorizationOptionsButtonTitleLocalizationKey];
          break;
      }
    }

    else if (a3)
    {
      if (a3 == 2)
      {
        v6 = [(TCCDService *)self allowAuthorizationButtonTitleLocalizationKey];
      }

      else if (a3 == 3)
      {
        v6 = [(TCCDService *)self limitedAuthorizationButtonTitleLocalizationKey];
      }
    }

    else
    {
      v6 = [(TCCDService *)self denyAuthorizationButtonTitleLocalizationKey];
    }
  }

  return v6;
}

- (id)usageDescriptionKeyForAuthorization:(unint64_t)a3
{
  if (a3 == 4)
  {
    v3 = [(TCCDService *)self addAccessUsageDescriptionKeyName];
  }

  else if (a3 == 2)
  {
    v3 = [(TCCDService *)self fullAccessUsageDescriptionKeyName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (TCCDService)subsequentRequestStringsRelatedService
{
  WeakRetained = objc_loadWeakRetained(&self->_subsequentRequestStringsRelatedService);

  return WeakRetained;
}

- (TCCDService)macos_compositionChildService
{
  WeakRetained = objc_loadWeakRetained(&self->_macos_compositionChildService);

  return WeakRetained;
}

@end