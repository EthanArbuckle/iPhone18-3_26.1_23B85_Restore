@interface TCCDService
+ (id)allServices;
+ (id)serviceAll;
+ (id)serviceDescriptionsForPlatformName:(id)name;
+ (id)tccdPlatformNameForDYLDPlatformName:(id)name;
+ (id)versionStringFromDYLDVersionNumber:(id)number;
- (NSBundle)defaultLocalizedResourcesBundle;
- (NSBundle)localizedResourcesBundle;
- (TCCDService)initWithName:(id)name availability:(id)availability;
- (TCCDService)macos_compositionChildService;
- (TCCDService)macos_compositionParentService;
- (TCCDService)subsequentRequestStringsRelatedService;
- (id)authorizationRightStateForValue:(unint64_t)value reason:(unint64_t)reason;
- (id)buttonTitleLocalizationKeyForAuthorization:(unint64_t)authorization desiredAuth:(unint64_t)auth;
- (id)descriptionDictionary;
- (id)descriptionForAuthorizationValue:(unint64_t)value reason:(unint64_t)reason;
- (id)localizedTextWithKey:(id)key;
- (id)requestTitleTextLocalizationKeyForAuthorization:(unint64_t)authorization;
- (id)usageDescriptionKeyForAuthorization:(unint64_t)authorization;
- (int64_t)compare:(id)compare;
- (int64_t)developmentAuthorizationValue;
- (unint64_t)accessActionStatusForAuthorizationValue:(unint64_t)value;
- (unint64_t)convertAccessUpdateStatustToMainSet:(unint64_t)set;
- (void)setLocalizedResourcesBundlePath:(id)path;
@end

@implementation TCCDService

+ (id)serviceAll
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A874;
  block[3] = &unk_1000A6468;
  block[4] = self;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_localizedResourcesBundle)
  {
    v3 = [NSBundle bundleWithPath:selfCopy->_localizedResourcesBundlePath];
    localizedResourcesBundle = selfCopy->_localizedResourcesBundle;
    selfCopy->_localizedResourcesBundle = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_localizedResourcesBundle;
  if (!v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BCF8;
    block[3] = &unk_1000A4F58;
    block[4] = selfCopy;
    if (qword_1000C1200 != -1)
    {
      dispatch_once(&qword_1000C1200, block);
    }

    v5 = selfCopy->_localizedResourcesBundle;
  }

  return v5;
}

- (unint64_t)accessActionStatusForAuthorizationValue:(unint64_t)value
{
  authorizationValueType = [(TCCDService *)self authorizationValueType];
  result = 0;
  if (authorizationValueType == 1 && value <= 5)
  {
    return qword_100080818[value];
  }

  return result;
}

- (unint64_t)convertAccessUpdateStatustToMainSet:(unint64_t)set
{
  result = set;
  v4 = set - 2;
  if (set - 2 <= 0xA && ((0x553u >> v4) & 1) != 0)
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
  block[4] = self;
  if (qword_1000C11E8 != -1)
  {
    dispatch_once(&qword_1000C11E8, block);
  }

  v2 = qword_1000C11E0;

  return v2;
}

+ (id)serviceDescriptionsForPlatformName:(id)name
{
  nameCopy = name;
  allServices = [self allServices];
  allObjects = [allServices allObjects];
  v6 = [allObjects sortedArrayUsingSelector:"compare:"];

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
        validOnPlatformNames = [v12 validOnPlatformNames];
        v14 = [validOnPlatformNames containsObject:nameCopy];

        if ((v14 & 1) != 0 || [nameCopy isEqualToString:@"all"])
        {
          serviceAll = [self serviceAll];
          if (v12 != serviceAll)
          {
            shouldTreatAsDeprecated = [v12 shouldTreatAsDeprecated];

            if (shouldTreatAsDeprecated)
            {
              continue;
            }

            serviceAll = [v12 descriptionDictionary];
            [v20 addObject:serviceAll];
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

+ (id)tccdPlatformNameForDYLDPlatformName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"macos"])
  {
    v4 = &TCCDPlatformNameMacOS;
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"ios"])
  {
    v4 = &TCCDPlatformNameIOS;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"watchos"])
  {
    v4 = &TCCDPlatformNameWatchOS;
    goto LABEL_9;
  }

  if ([nameCopy isEqualToString:@"tvos"])
  {
    v4 = &TCCDPlatformNameTVOS;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)versionStringFromDYLDVersionNumber:(id)number
{
  unsignedIntValue = [number unsignedIntValue];
  if (unsignedIntValue)
  {
    [NSString stringWithFormat:@"%u.%u.%u", BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), unsignedIntValue];
  }

  else
  {
    [NSString stringWithFormat:@"%u.%u", BYTE2(unsignedIntValue), BYTE1(unsignedIntValue), v6];
  }
  v4 = ;

  return v4;
}

- (TCCDService)initWithName:(id)name availability:(id)availability
{
  nameCopy = name;
  availabilityCopy = availability;
  v32.receiver = self;
  v32.super_class = TCCDService;
  v8 = [(TCCDService *)&v32 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    [(TCCDService *)v8 setName:v9];

    name = [(TCCDService *)v8 name];
    v11 = [name substringFromIndex:{objc_msgSend(@"kTCCService", "length")}];
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
    [availabilityCopy enumerateKeysAndObjectsUsingBlock:&v26];
    [(TCCDService *)v13 setValidOnPlatformNames:v14, v26, v27, v28, v29];
    [(TCCDService *)v13 setUsesTwoStagePrompting:0];
    [(TCCDService *)v13 setPlatformAvailability:availabilityCopy];
    [(TCCDService *)v13 setAuthorizationValueType:1];
    [(TCCDService *)v13 setAuthorizationRightsMask:7];
    [(TCCDService *)v13 setAuthorizationVersionNumber:1];
    [(TCCDService *)v13 setAllowedForAvocadoWidget:1];
    v15 = +[TCCDService defaultLocalizedResourcesBundlePath];
    [(TCCDService *)v13 setLocalizedResourcesBundlePath:v15];

    [(TCCDService *)v13 setAllowAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_ALLOW"];
    [(TCCDService *)v13 setDenyAuthorizationButtonTitleLocalizationKey:@"REQUEST_ACCESS_DENY"];
    name2 = [(TCCDService *)v13 name];
    v17 = [TCCDService requestTitleTextLocalizationKeyNameForServiceName:name2];
    [(TCCDService *)v13 setRequestTitleTextLocalizationKey:v17];

    requestTitleTextLocalizationKey = [(TCCDService *)v13 requestTitleTextLocalizationKey];

    if (!requestTitleTextLocalizationKey)
    {
      sub_10004CDB8();
    }

    name3 = [(TCCDService *)v13 name];
    v20 = [TCCDService requestDenyNotificationTitleTextLocalizationKeyNameForServiceName:name3];
    [(TCCDService *)v13 setNotificationTitleTextLocalizationKey:v20];

    notificationTitleTextLocalizationKey = [(TCCDService *)v13 notificationTitleTextLocalizationKey];

    if (!notificationTitleTextLocalizationKey)
    {
      sub_10004CDB8();
    }

    name4 = [(TCCDService *)v13 name];
    v23 = [TCCDService requestDenyNotificationButtonTitleTextLocalizationKeyNameForServiceName:name4];
    [(TCCDService *)v13 setNotificationButtonTitleLocalizationKey:v23];

    notificationButtonTitleLocalizationKey = [(TCCDService *)v13 notificationButtonTitleLocalizationKey];

    if (!notificationButtonTitleLocalizationKey)
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
  name = [(TCCDService *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  externalName = [(TCCDService *)self externalName];
  [v3 setObject:externalName forKeyedSubscript:@"externalName"];

  usageDescriptionKeyName = [(TCCDService *)self usageDescriptionKeyName];
  [v3 setObject:usageDescriptionKeyName forKeyedSubscript:@"usageDescriptionKeyName"];

  validOnPlatformNames = [(TCCDService *)self validOnPlatformNames];
  allObjects = [validOnPlatformNames allObjects];
  [v3 setObject:allObjects forKeyedSubscript:@"platforms"];

  platformAvailability = [(TCCDService *)self platformAvailability];
  [v3 setObject:platformAvailability forKeyedSubscript:@"platformAvailibilityVersionNumbers"];

  fullAccessUsageDescriptionKeyName = [(TCCDService *)self fullAccessUsageDescriptionKeyName];

  if (fullAccessUsageDescriptionKeyName)
  {
    fullAccessUsageDescriptionKeyName2 = [(TCCDService *)self fullAccessUsageDescriptionKeyName];
    [v3 setObject:fullAccessUsageDescriptionKeyName2 forKeyedSubscript:@"fullAccessUsageDescriptionKeyName"];
  }

  addAccessUsageDescriptionKeyName = [(TCCDService *)self addAccessUsageDescriptionKeyName];

  if (addAccessUsageDescriptionKeyName)
  {
    addAccessUsageDescriptionKeyName2 = [(TCCDService *)self addAccessUsageDescriptionKeyName];
    [v3 setObject:addAccessUsageDescriptionKeyName2 forKeyedSubscript:@"addAccessUsageDescriptionKeyName"];
  }

  if ([(TCCDService *)self supportsStagedPrompting])
  {
    v14 = [NSNumber numberWithBool:[(TCCDService *)self supportsStagedPrompting]];
    [v3 setObject:v14 forKeyedSubscript:@"supportsStagedPrompting"];
  }

  v15 = objc_opt_new();
  platformAvailability2 = [(TCCDService *)self platformAvailability];
  v48 = _NSConcreteStackBlock;
  v49 = 3221225472;
  v50 = sub_10004B92C;
  v51 = &unk_1000A67A0;
  v17 = v15;
  v52 = v17;
  selfCopy = self;
  [platformAvailability2 enumerateKeysAndObjectsUsingBlock:&v48];

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

  macos_hardenedRuntimeEntitlementName = [(TCCDService *)self macos_hardenedRuntimeEntitlementName];

  if (macos_hardenedRuntimeEntitlementName)
  {
    macos_hardenedRuntimeEntitlementName2 = [(TCCDService *)self macos_hardenedRuntimeEntitlementName];
    [v3 setObject:macos_hardenedRuntimeEntitlementName2 forKeyedSubscript:@"macos_hardenedRuntimeEntitlementName"];
  }

  macos_minimumSDKVersionNumber = [(TCCDService *)self macos_minimumSDKVersionNumber];

  if (macos_minimumSDKVersionNumber)
  {
    macos_minimumSDKVersionNumber2 = [(TCCDService *)self macos_minimumSDKVersionNumber];
    [v3 setObject:macos_minimumSDKVersionNumber2 forKeyedSubscript:@"macos_minimumSDKVersionNumber"];

    v27 = objc_opt_class();
    macos_minimumSDKVersionNumber3 = [(TCCDService *)self macos_minimumSDKVersionNumber];
    v29 = [v27 versionStringFromDYLDVersionNumber:macos_minimumSDKVersionNumber3];
    [v3 setObject:v29 forKeyedSubscript:@"macos_minimumSDKVersionString"];
  }

  macos_helpAnchor = [(TCCDService *)self macos_helpAnchor];

  if (macos_helpAnchor)
  {
    macos_helpAnchor2 = [(TCCDService *)self macos_helpAnchor];
    [v3 setObject:macos_helpAnchor2 forKeyedSubscript:@"macos_helpAnchor"];
  }

  tvOS_minimumSDKVersionNumber = [(TCCDService *)self tvOS_minimumSDKVersionNumber];

  if (tvOS_minimumSDKVersionNumber)
  {
    tvOS_minimumSDKVersionNumber2 = [(TCCDService *)self tvOS_minimumSDKVersionNumber];
    [v3 setObject:tvOS_minimumSDKVersionNumber2 forKeyedSubscript:@"tvOS_minimumSDKVersionNumber"];

    v34 = objc_opt_class();
    tvOS_minimumSDKVersionNumber3 = [(TCCDService *)self tvOS_minimumSDKVersionNumber];
    v36 = [v34 versionStringFromDYLDVersionNumber:tvOS_minimumSDKVersionNumber3];
    [v3 setObject:v36 forKeyedSubscript:@"tvOS_minimumSDKVersionString"];
  }

  watchOS_minimumSDKVersionNumber = [(TCCDService *)self watchOS_minimumSDKVersionNumber];

  if (watchOS_minimumSDKVersionNumber)
  {
    watchOS_minimumSDKVersionNumber2 = [(TCCDService *)self watchOS_minimumSDKVersionNumber];
    [v3 setObject:watchOS_minimumSDKVersionNumber2 forKeyedSubscript:@"watchOS_minimumSDKVersionNumber"];

    v39 = objc_opt_class();
    watchOS_minimumSDKVersionNumber3 = [(TCCDService *)self watchOS_minimumSDKVersionNumber];
    v41 = [v39 versionStringFromDYLDVersionNumber:watchOS_minimumSDKVersionNumber3];
    [v3 setObject:v41 forKeyedSubscript:@"watchOS_minimumSDKVersionString"];
  }

  iOS_minimumSDKVersionNumber = [(TCCDService *)self iOS_minimumSDKVersionNumber];

  if (iOS_minimumSDKVersionNumber)
  {
    iOS_minimumSDKVersionNumber2 = [(TCCDService *)self iOS_minimumSDKVersionNumber];
    [v3 setObject:iOS_minimumSDKVersionNumber2 forKeyedSubscript:@"iOS_minimumSDKVersionNumber"];

    v44 = objc_opt_class();
    iOS_minimumSDKVersionNumber3 = [(TCCDService *)self iOS_minimumSDKVersionNumber];
    v46 = [v44 versionStringFromDYLDVersionNumber:iOS_minimumSDKVersionNumber3];
    [v3 setObject:v46 forKeyedSubscript:@"iOS_minimumSDKVersionString"];
  }

  return v3;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  name = [(TCCDService *)self name];
  name2 = [compareCopy name];

  v7 = [name compare:name2];
  return v7;
}

- (id)authorizationRightStateForValue:(unint64_t)value reason:(unint64_t)reason
{
  if ([(TCCDService *)self authorizationValueType]== 1)
  {
    v6 = objc_alloc_init(TCCDAuthorizationRightState);
    [(TCCDAuthorizationRightState *)v6 setRight:value];
    [(TCCDAuthorizationRightState *)v6 setReason:reason];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)descriptionForAuthorizationValue:(unint64_t)value reason:(unint64_t)reason
{
  if ([(TCCDService *)self authorizationValueType]== 1)
  {
    v7 = [(TCCDService *)self authorizationRightStateForValue:value reason:reason];
    value = [v7 description];
  }

  else
  {
    value = [NSString stringWithFormat:@"0x%llx", value];
  }

  return value;
}

- (int64_t)developmentAuthorizationValue
{
  if (![(TCCDService *)self applyDevelopmentAuthorizationPolicy])
  {
    return 0;
  }

  name = [(TCCDService *)self name];
  v4 = [NSString stringWithFormat:@"DevelopmentAuthorizationPolicy.%@", name];

  v5 = CFPreferencesCopyValue(v4, @"com.apple.tccd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v5 && (v6 = v5, v7 = CFGetTypeID(v5), v7 == CFStringGetTypeID()))
  {
    if ([v6 caseInsensitiveCompare:@"allow"])
    {
      if ([v6 caseInsensitiveCompare:@"deny"])
      {
        [v6 caseInsensitiveCompare:@"none"];
        defaultDevelopmentAuthorizationValue = 0;
      }

      else
      {
        defaultDevelopmentAuthorizationValue = 2;
      }
    }

    else
    {
      defaultDevelopmentAuthorizationValue = 1;
    }
  }

  else
  {
    defaultDevelopmentAuthorizationValue = [(TCCDService *)self defaultDevelopmentAuthorizationValue];
  }

  return defaultDevelopmentAuthorizationValue;
}

- (void)setLocalizedResourcesBundlePath:(id)path
{
  self->_localizedResourcesBundlePath = [path copy];

  _objc_release_x1();
}

- (NSBundle)defaultLocalizedResourcesBundle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_defaultLocalizedResourcesBundle)
  {
    v3 = +[TCCDService defaultLocalizedResourcesBundlePath];
    v4 = [NSBundle bundleWithPath:v3];
    defaultLocalizedResourcesBundle = selfCopy->_defaultLocalizedResourcesBundle;
    selfCopy->_defaultLocalizedResourcesBundle = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_defaultLocalizedResourcesBundle;
  if (!v6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004BEA8;
    block[3] = &unk_1000A4F58;
    block[4] = selfCopy;
    if (qword_1000C1208 != -1)
    {
      dispatch_once(&qword_1000C1208, block);
    }

    v6 = selfCopy->_defaultLocalizedResourcesBundle;
  }

  return v6;
}

- (id)localizedTextWithKey:(id)key
{
  keyCopy = key;
  localizedResourcesBundle = [(TCCDService *)self localizedResourcesBundle];
  v6 = localizedResourcesBundle;
  if (localizedResourcesBundle)
  {
    v7 = [localizedResourcesBundle localizedStringForKey:keyCopy value:&stru_1000A7240 table:0];
    if (!v7)
    {
      v8 = +[TCCDPlatform currentPlatform];
      server = [v8 server];
      logHandle = [server logHandle];

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        sub_10004CF20(self, keyCopy, logHandle);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)requestTitleTextLocalizationKeyForAuthorization:(unint64_t)authorization
{
  switch(authorization)
  {
    case 4uLL:
      requestAddTitleTextLocalizationKey = [(TCCDService *)self requestAddTitleTextLocalizationKey];
      break;
    case 3uLL:
      requestAddTitleTextLocalizationKey = [(TCCDService *)self requestLimitedTitleTextLocalizationKey];
      break;
    case 2uLL:
      requestAddTitleTextLocalizationKey = [(TCCDService *)self requestFullTitleTextLocalizationKey];
      break;
    default:
      requestAddTitleTextLocalizationKey = 0;
      break;
  }

  return requestAddTitleTextLocalizationKey;
}

- (id)buttonTitleLocalizationKeyForAuthorization:(unint64_t)authorization desiredAuth:(unint64_t)auth
{
  addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self localizationKeyForButtonAuth:authorization desiredAuth:auth];
  if (!addModifyAddedAuthorizationButtonTitleLocalizationKey)
  {
    if (authorization > 3)
    {
      switch(authorization)
      {
        case 4uLL:
          addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self addModifyAddedAuthorizationButtonTitleLocalizationKey];
          break;
        case 5uLL:
          addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self sessionPidAuthorizationButtonTitleLocalizationKey];
          break;
        case 6uLL:
          addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self moreAuthorizationOptionsButtonTitleLocalizationKey];
          break;
      }
    }

    else if (authorization)
    {
      if (authorization == 2)
      {
        addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self allowAuthorizationButtonTitleLocalizationKey];
      }

      else if (authorization == 3)
      {
        addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self limitedAuthorizationButtonTitleLocalizationKey];
      }
    }

    else
    {
      addModifyAddedAuthorizationButtonTitleLocalizationKey = [(TCCDService *)self denyAuthorizationButtonTitleLocalizationKey];
    }
  }

  return addModifyAddedAuthorizationButtonTitleLocalizationKey;
}

- (id)usageDescriptionKeyForAuthorization:(unint64_t)authorization
{
  if (authorization == 4)
  {
    addAccessUsageDescriptionKeyName = [(TCCDService *)self addAccessUsageDescriptionKeyName];
  }

  else if (authorization == 2)
  {
    addAccessUsageDescriptionKeyName = [(TCCDService *)self fullAccessUsageDescriptionKeyName];
  }

  else
  {
    addAccessUsageDescriptionKeyName = 0;
  }

  return addAccessUsageDescriptionKeyName;
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