@interface TCCDRequestContext
- (NSDictionary)daemonDict;
- (NSString)identityDescription;
- (TCCDRequestContext)initWithRequestMessage:(id)message forServer:(id)server error:(id *)error;
- (id)initForSyncRequestForSubjectBundleIdentifier:(id)identifier service:(id)service;
- (void)dealloc;
- (void)presentAsynchronousDenialNotificationForService:(id)service;
- (void)presentAsynchronousDenialNotificationWithMessage:(id)message buttonTitle:(id)title;
- (void)presentSynchronousPromptWithHeader:(id)header message:(id)message aButtonTitle:(id)title aButtonAuth:(unint64_t)auth bButtonTitle:(id)buttonTitle bButtonAuth:(unint64_t)buttonAuth cButtonTitle:(id)cButtonTitle cButtonAuth:(unint64_t)self0 currentAuth:(unint64_t)self1 withTimeoutInSeconds:(unsigned int)self2 updatingResult:(id)self3;
@end

@implementation TCCDRequestContext

- (NSDictionary)daemonDict
{
  v12[0] = kTCCNotificationExtensionDaemonDataInitialPromptKey;
  v3 = [NSNumber numberWithBool:[(TCCDRequestContext *)self initialPrompt]];
  v13[0] = v3;
  v12[1] = kTCCNotificationExtensionDaemonDataDesiredAuthKey;
  v4 = [NSNumber numberWithUnsignedLongLong:[(TCCDRequestContext *)self desiredAuth]];
  v13[1] = v4;
  v12[2] = kTCCNotificationExtensionDaemonDataSetPromptKey;
  v5 = [NSNumber numberWithBool:[(TCCDRequestContext *)self accessSetPrompt]];
  v13[2] = v5;
  v12[3] = kTCCNotificationExtensionDaemonDataInfoString;
  service = [(TCCDRequestContext *)self service];
  service2 = [(TCCDRequestContext *)self service];
  requestNotificationExtensionTextLocalizationKey = [service2 requestNotificationExtensionTextLocalizationKey];
  v9 = [service localizedTextWithKey:requestNotificationExtensionTextLocalizationKey];
  v13[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (NSString)identityDescription
{
  v3 = objc_alloc_init(NSMutableString);
  subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];

  if (subjectIdentity)
  {
    subjectIdentity2 = [(TCCDRequestContext *)self subjectIdentity];
    identifier = [subjectIdentity2 identifier];
    [v3 appendFormat:@"Sub:{%@}", identifier];
  }

  attributionChain = [(TCCDRequestContext *)self attributionChain];
  responsibleProcess = [attributionChain responsibleProcess];

  if (responsibleProcess)
  {
    attributionChain2 = [(TCCDRequestContext *)self attributionChain];
    responsibleProcess2 = [attributionChain2 responsibleProcess];
    v11 = [responsibleProcess2 description];
    [v3 appendFormat:@"Resp:{%@}", v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (void)dealloc
{
  if (self->_promptingSemaphoreHeld)
  {
    v3 = tcc_access_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      messageIdentifier = self->_messageIdentifier;
      *buf = 138543362;
      v7 = messageIdentifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "signaling prompting semaphore for msgID=%{public}@", buf, 0xCu);
    }

    dispatch_semaphore_signal(self->_promptingSemaphore);
    self->_promptingSemaphoreHeld = 0;
  }

  v5.receiver = self;
  v5.super_class = TCCDRequestContext;
  [(TCCDRequestContext *)&v5 dealloc];
}

- (void)presentAsynchronousDenialNotificationWithMessage:(id)message buttonTitle:(id)title
{
  messageCopy = message;
  titleCopy = title;
  v8 = tcc_access_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];
    identifier = [subjectIdentity identifier];
    *buf = 136315394;
    *&buf[4] = "[TCCDRequestContext(AsynchronousNotification) presentAsynchronousDenialNotificationWithMessage:buttonTitle:]";
    v61 = 2112;
    v62 = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: called for %@", buf, 0x16u);
  }

  if (qword_1000C1188 != -1)
  {
    sub_100043CF0();
  }

  if (qword_1000C1178)
  {
    v11 = objc_opt_new();
    if (v11)
    {
      v12 = v11;
      v57 = messageCopy;
      [v11 setBody:messageCopy];
      v13 = qword_1000C1178;
      service = [(TCCDRequestContext *)self service];
      name = [service name];
      v16 = v13;
      v17 = name;
      v56 = titleCopy;
      v18 = titleCopy;
      if (!qword_1000C11A8)
      {
        v19 = objc_opt_new();
        v20 = qword_1000C11A8;
        qword_1000C11A8 = v19;
      }

      v21 = [NSString stringWithFormat:@"%@.%@", @"com.apple.tcc.notification", v17];
      v22 = [qword_1000C11A8 objectForKeyedSubscript:v21];
      if (!v22)
      {
        v55 = [UNNotificationAction actionWithIdentifier:@"BUTTON_ACTION_ID" title:v18 options:0];
        *buf = v55;
        v23 = [NSArray arrayWithObjects:buf count:1];
        v22 = [UNNotificationCategory categoryWithIdentifier:v21 actions:v23 intentIdentifiers:&__NSArray0__struct options:0];

        [qword_1000C11A8 setObject:v22 forKeyedSubscript:v21];
        allValues = [qword_1000C11A8 allValues];
        v25 = [NSSet setWithArray:allValues];
        [v16 setNotificationCategories:v25];
      }

      [v12 setCategoryIdentifier:v21];
      [v12 setInterruptionLevel:1];
      v26 = +[UNNotificationSound defaultSound];
      [v12 setSound:v26];

      [v12 setShouldIgnoreDoNotDisturb:1];
      [v12 setShouldBackgroundDefaultAction:1];
      v58 = @"TCCServiceName";
      service2 = [(TCCDRequestContext *)self service];
      name2 = [service2 name];
      v59 = name2;
      v29 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      [v12 setUserInfo:v29];

      v30 = +[NSUUID UUID];
      uUIDString = [v30 UUIDString];
      v32 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v12 trigger:0];

      if (v32)
      {
        [qword_1000C1178 addNotificationRequest:v32 withCompletionHandler:&stru_1000A63E8];

        titleCopy = v56;
        messageCopy = v57;
      }

      else
      {
        v47 = tcc_access_log();
        titleCopy = v56;
        messageCopy = v57;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          sub_100043D18(v47, v48, v49, v50, v51, v52, v53, v54);
        }
      }
    }

    else
    {
      v12 = tcc_access_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100043D90(v12, v40, v41, v42, v43, v44, v45, v46);
      }
    }
  }

  else
  {
    v12 = tcc_access_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100043E08(v12, v33, v34, v35, v36, v37, v38, v39);
    }
  }
}

- (void)presentAsynchronousDenialNotificationForService:(id)service
{
  serviceCopy = service;
  notificationTitleTextLocalizationKey = [serviceCopy notificationTitleTextLocalizationKey];
  v6 = [serviceCopy localizedTextWithKey:notificationTitleTextLocalizationKey];

  subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];
  displayName = [subjectIdentity displayName];
  v9 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, displayName];

  if (v9)
  {
    notificationButtonTitleLocalizationKey = [serviceCopy notificationButtonTitleLocalizationKey];
    v11 = [serviceCopy localizedTextWithKey:notificationButtonTitleLocalizationKey];

    if (v11)
    {
      [(TCCDRequestContext *)self presentAsynchronousDenialNotificationWithMessage:v9 buttonTitle:v11];
    }
  }

  else
  {
    v11 = tcc_access_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100043F0C(serviceCopy, self, v11);
    }
  }
}

- (void)presentSynchronousPromptWithHeader:(id)header message:(id)message aButtonTitle:(id)title aButtonAuth:(unint64_t)auth bButtonTitle:(id)buttonTitle bButtonAuth:(unint64_t)buttonAuth cButtonTitle:(id)cButtonTitle cButtonAuth:(unint64_t)self0 currentAuth:(unint64_t)self1 withTimeoutInSeconds:(unsigned int)self2 updatingResult:(id)self3
{
  headerCopy = header;
  messageCopy = message;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  cButtonTitleCopy = cButtonTitle;
  resultCopy = result;
  if (qword_1000C11A0 != -1)
  {
    sub_100043FD0();
  }

  [(TCCDRequestContext *)self setPromptingSemaphore:qword_1000C1190];
  if (![(TCCDRequestContext *)self promptingSemaphoreHeld])
  {
    [(TCCDRequestContext *)self setPromptingSemaphoreHeld:1];
    promptingSemaphore = [(TCCDRequestContext *)self promptingSemaphore];
    v23 = dispatch_semaphore_wait(promptingSemaphore, 0);

    if (v23)
    {
      v24 = tcc_access_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        identityDescription = [(TCCDRequestContext *)self identityDescription];
        *buf = 138543362;
        *&buf[4] = identityDescription;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Delaying prompt for %{public}@", buf, 0xCu);
      }

      promptingSemaphore2 = [(TCCDRequestContext *)self promptingSemaphore];
      dispatch_semaphore_wait(promptingSemaphore2, 0xFFFFFFFFFFFFFFFFLL);

      [resultCopy setDatabaseAction:2];
      goto LABEL_139;
    }
  }

  service = [(TCCDRequestContext *)self service];
  [service ios_watchKitUserNotificationNumber];
  v162 = v159 = resultCopy;
  if (v162)
  {
  }

  else
  {
    subjectIdentity = [(TCCDRequestContext *)self subjectIdentity];
    is_wk2_proxy = [subjectIdentity is_wk2_proxy];

    if (!is_wk2_proxy)
    {
      v43 = 0;
      v162 = 0;
      goto LABEL_24;
    }
  }

  subjectIdentity2 = [(TCCDRequestContext *)self subjectIdentity];
  pluginBundleIdentifier = [subjectIdentity2 pluginBundleIdentifier];

  if (pluginBundleIdentifier)
  {
    v31 = tcc_sync_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_100043FE4(v162, self, v31);
    }

    sharedDeviceConnection = [sub_100043430() sharedDeviceConnection];
    integerValue = [v162 integerValue];
    subjectIdentity3 = [(TCCDRequestContext *)self subjectIdentity];
    displayName = [subjectIdentity3 displayName];
    subjectIdentity4 = [(TCCDRequestContext *)self subjectIdentity];
    pluginBundleIdentifier2 = [subjectIdentity4 pluginBundleIdentifier];
    [sharedDeviceConnection showUserNotification:integerValue applicationName:displayName extensionBundleID:pluginBundleIdentifier2];
  }

  else
  {
    subjectIdentity5 = [(TCCDRequestContext *)self subjectIdentity];
    is_wk2_proxy2 = [subjectIdentity5 is_wk2_proxy];

    if (!is_wk2_proxy2)
    {
      v43 = 0;
      goto LABEL_24;
    }

    v40 = v162;
    if (!v162)
    {
      v40 = &off_1000ADF28;
    }

    v41 = tcc_sync_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      sub_1000440E4(v40, self, v41);
    }

    sharedDeviceConnection = [sub_100043430() sharedDeviceConnection];
    v162 = v40;
    integerValue2 = [v40 integerValue];
    subjectIdentity3 = [(TCCDRequestContext *)self subjectIdentity];
    displayName = [subjectIdentity3 displayName];
    [sharedDeviceConnection showUserNotification:integerValue2 bundleID:displayName];
  }

  v43 = 1;
  resultCopy = v159;
LABEL_24:
  selfCopy = self;
  v45 = headerCopy;
  v46 = messageCopy;
  v47 = titleCopy;
  v170 = buttonTitleCopy;
  v169 = cButtonTitleCopy;
  v157 = resultCopy;
  v48 = objc_opt_new();
  v161 = v45;
  if (!v45)
  {
    sub_100044330();
  }

  if (!v47)
  {
    sub_100044304();
  }

  if (!v170)
  {
    sub_1000442D8();
  }

  v49 = v48;
  v168 = v47;
  v160 = v46;
  v156 = v43;
  v50 = tcc_access_log();
  v167 = selfCopy;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    subjectIdentity6 = [(TCCDRequestContext *)selfCopy subjectIdentity];
    identifier = [subjectIdentity6 identifier];
    service2 = [(TCCDRequestContext *)selfCopy service];
    name = [service2 name];
    *buf = 136315650;
    *&buf[4] = "display_prompt";
    *&buf[12] = 2112;
    *&buf[14] = identifier;
    *&buf[22] = 2112;
    v181 = name;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s: called for %@ for service %@", buf, 0x20u);
  }

  service3 = [(TCCDRequestContext *)selfCopy service];
  localizedResourcesBundle = [service3 localizedResourcesBundle];
  bundleURL = [localizedResourcesBundle bundleURL];
  [v49 setObject:bundleURL forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

  [v49 setObject:v161 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  if (v160)
  {
    [v49 setObject:v160 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  v158 = headerCopy;
  v187 = xmmword_1000809E0;
  v188 = unk_1000809F0;
  cButtonAuthCopy = buttonAuth;
  v59 = v168;
  if (v169)
  {
    *&v187 = buttonAuth;
    cButtonAuthCopy = cButtonAuth;
  }

  *(&v187 + 1) = cButtonAuthCopy;
  *&v188 = auth;
  v186[0] = kCFUserNotificationDefaultButtonTitleKey;
  v186[1] = kCFUserNotificationAlternateButtonTitleKey;
  v60 = 0;
  v186[2] = kCFUserNotificationOtherButtonTitleKey;
  v186[3] = 0;
  v155 = 134217984;
  do
  {
    v61 = v186[v60];
    if (!v61)
    {
      goto LABEL_43;
    }

    v62 = *(&v187 + v60 * 8);
    if (v62 == auth)
    {
      v63 = v49;
      v64 = v59;
LABEL_42:
      [v63 setObject:v64 forKeyedSubscript:v61];
      goto LABEL_43;
    }

    if (v62 == buttonAuth)
    {
      v63 = v49;
      v64 = v170;
      goto LABEL_42;
    }

    if (v62 == cButtonAuth)
    {
      if (!v169)
      {
        goto LABEL_43;
      }

      v63 = v49;
      v64 = v169;
      goto LABEL_42;
    }

    v65 = tcc_access_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v62;
      _os_log_error_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "tried to assign invalid auth %llu to button", buf, 0xCu);
    }

    v59 = v168;
LABEL_43:

    ++v60;
  }

  while (v60 != 4);
  v66 = _os_feature_enabled_impl();
  headerCopy = v158;
  v67 = v167;
  if ((v66 & 1) != 0 && _os_feature_enabled_impl())
  {
    service4 = [(TCCDRequestContext *)v167 service];
    name2 = [service4 name];
    buttonAuth = +[TCCDPlatform currentPlatform];
    server = [buttonAuth server];
    temporaryDirectory = [server temporaryDirectory];
    v72 = [TCCDIconGenerator createIconForTCCService:name2 withTempDirectory:temporaryDirectory];
    if (v72)
    {
      v73 = +[NSFileManager defaultManager];
      path = [v72 path];
      LODWORD(v155) = [v73 fileExistsAtPath:path];

      headerCopy = v158;
      v67 = v167;

      if (v155)
      {
        service4 = [v72 path];
        [v49 setObject:service4 forKeyedSubscript:SBUserNotificationHeaderImagePath];
        goto LABEL_54;
      }
    }

    else
    {

LABEL_54:
    }
  }

  if (_os_feature_enabled_impl())
  {
    service5 = [(TCCDRequestContext *)v67 service];
    usesTwoStagePrompting = [service5 usesTwoStagePrompting];

    if (usesTwoStagePrompting)
    {
      [v49 setObject:&off_1000ADF40 forKeyedSubscript:SBUserNotificationButtonLayoutDirectionKey];
    }
  }

  service6 = [(TCCDRequestContext *)v67 service];
  name3 = [service6 name];
  v79 = [name3 isEqualToString:@"kTCCServiceFocusStatus"];

  if (v79)
  {
    [v49 setObject:@"com.apple.FocusSettingsUI.UserNotificationExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  }

  service7 = [(TCCDRequestContext *)v67 service];
  name4 = [service7 name];
  service9 = [name4 isEqualToString:@"kTCCServicePhotos"];

  if (service9)
  {
    [v49 setObject:@"com.apple.mobileslideshow.PhotosTCCNotificationExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  }

  service8 = [(TCCDRequestContext *)v67 service];
  name5 = [service8 name];
  if (([name5 isEqualToString:@"kTCCServiceCalendar"] & 1) == 0)
  {

    goto LABEL_68;
  }

  service9 = [(TCCDRequestContext *)v67 service];
  supportsStagedPrompting = [service9 supportsStagedPrompting];

  if (supportsStagedPrompting)
  {
    service10 = [(TCCDRequestContext *)v67 service];
    service9 = [service10 authSpecificNotificationExtensionBundleIdentifier];
    v87 = [NSNumber numberWithUnsignedLongLong:[(TCCDRequestContext *)v67 desiredAuth]];
    service8 = [service9 objectForKeyedSubscript:v87];

    if (service8)
    {
      [v49 setObject:service8 forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    }

LABEL_68:
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    service11 = [(TCCDRequestContext *)v67 service];
    service8 = [service11 name];
    if ([service8 isEqualToString:@"kTCCServiceAddressBook"])
    {
      service9 = [(TCCDRequestContext *)v67 desiredAuth];

      if (service9 == 2)
      {
        v89 = tcc_access_log();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          service8 = [(TCCDRequestContext *)v67 subjectIdentity];
          service9 = [service8 identifier];
          *buf = 136315394;
          *&buf[4] = "display_prompt";
          *&buf[12] = 2112;
          *&buf[14] = service9;
          _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_INFO, "%s: Contacts full access prompt called for %@", buf, 0x16u);
        }

        [v49 setObject:@"com.apple.ContactsUI.FullAccessSettingsPromptExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
        [v49 setObject:0 forKeyedSubscript:SBUserNotificationHeaderImageAssetCatalogPathKey];
        [v49 setObject:0 forKeyedSubscript:SBUserNotificationHeaderImageAssetCatalogImageKey];
      }
    }

    else
    {
    }
  }

  if (_os_feature_enabled_impl())
  {
    service12 = [(TCCDRequestContext *)v67 service];
    service8 = [service12 name];
    service9 = [service8 isEqualToString:@"kTCCServiceBluetoothAlways"];

    if (service9)
    {
      [v49 setObject:@"com.apple.corelocation.CoreLocationNumberedMapCalloutPromptPlugin" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    }
  }

  service13 = [(TCCDRequestContext *)v67 service];
  supportsStagedPrompting2 = [service13 supportsStagedPrompting];
  v93 = supportsStagedPrompting2;
  v94 = &SBSProcessIDForDisplayIdentifier_ptr;
  if (!supportsStagedPrompting2)
  {
LABEL_83:
    v96 = _os_feature_enabled_impl();
    if (v96)
    {
      service8 = [(TCCDRequestContext *)v167 service];
      service9 = [service8 name];
      if ([service9 isEqualToString:@"kTCCServiceBluetoothAlways"])
      {

        v67 = v167;
        v94 = &SBSProcessIDForDisplayIdentifier_ptr;
        if (v93)
        {
          goto LABEL_86;
        }

        goto LABEL_88;
      }
    }

    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
    {
      [(TCCDRequestContext *)v167 service];
      v98 = v97 = buttonAuth;
      name6 = [v98 name];
      v100 = [name6 isEqualToString:@"kTCCServiceAddressBook"];

      headerCopy = v158;
      buttonAuth = v97;
      if (!v96)
      {
LABEL_95:
        if (v93)
        {
        }

        resultCopy = v159;
        v67 = v167;
        v94 = &SBSProcessIDForDisplayIdentifier_ptr;
        if (v100)
        {
          goto LABEL_98;
        }

        goto LABEL_112;
      }
    }

    else
    {
      v100 = 0;
      if ((v96 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    goto LABEL_95;
  }

  service14 = [(TCCDRequestContext *)v67 service];
  service8 = [service14 name];
  if (([service8 isEqualToString:@"kTCCServiceCalendar"] & 1) == 0)
  {
    v154 = service8;
    v155 = service14;
    buttonAuth = [(TCCDRequestContext *)v67 service];
    name7 = [buttonAuth name];
    if (([name7 isEqualToString:@"kTCCServicePhotos"] & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:

    service14 = v155;
    service8 = v154;
  }

LABEL_88:
  resultCopy = v159;
LABEL_98:
  v184[0] = kTCCNotificationExtensionClientDataKey;
  clientDict = [(TCCDRequestContext *)v67 clientDict];
  v102 = clientDict;
  if (clientDict)
  {
    v103 = clientDict;
  }

  else
  {
    v103 = &__NSDictionary0__struct;
  }

  v185[0] = v103;
  v184[1] = kTCCNotificationExtensionDaemonDataKey;
  daemonDict = [(TCCDRequestContext *)v67 daemonDict];
  v105 = daemonDict;
  if (daemonDict)
  {
    v106 = daemonDict;
  }

  else
  {
    v106 = &__NSDictionary0__struct;
  }

  v185[1] = v106;
  v184[2] = @"ClientBundleIdentifier";
  subjectIdentity7 = [(TCCDRequestContext *)v67 subjectIdentity];
  identifier2 = [subjectIdentity7 identifier];
  v185[2] = identifier2;
  v109 = [NSDictionary dictionaryWithObjects:v185 forKeys:v184 count:3];

  v110 = objc_alloc_init(NSExtensionItem);
  [v110 setUserInfo:v109];
  v111 = tcc_access_log();
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v109;
    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "extensionItem.userInfo: %@", buf, 0xCu);
  }

  v183 = v110;
  v112 = [v94[427] arrayWithObjects:&v183 count:1];
  v173 = 0;
  v113 = [NSKeyedArchiver archivedDataWithRootObject:v112 requiringSecureCoding:1 error:&v173];
  v114 = v173;

  if (v114)
  {
    v115 = tcc_access_log();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      sub_1000441B0(v114, v115, v116, v117, v118, v119, v120, v121);
    }
  }

  else
  {
    [v49 setObject:v113 forKeyedSubscript:SBUserNotificationExtensionItemsKey];
  }

LABEL_112:
  if (&SBUserNotificationDefaultButtonTag)
  {
    [v49 setObject:&off_1000ADF58 forKeyedSubscript:SBUserNotificationDefaultButtonTag];
  }

  if ([(TCCDRequestContext *)v67 reminderPrompt])
  {
    [v49 setObject:&off_1000B0250 forKeyedSubscript:SBUserNotificationAllowedApplicationsKey];
  }

  v122 = tcc_access_log();
  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
  {
    sub_10004421C(v49, v122);
  }

  error = 0;
  v123 = CFUserNotificationCreate(0, 0.0, 0x20uLL, &error, v49);
  v124 = error;
  if (!v123 || error)
  {
    service15 = [(TCCDRequestContext *)v67 service];
    name8 = [service15 name];
    identityDescription2 = [(TCCDRequestContext *)v67 identityDescription];
    v152 = v124;
    v127 = v157;
    [v157 denyAuthorizationWithErrorCode:2 format:{@"Failed CFUserNotificationCreate(): status %d; service %{public}@ and subject %{public}@", v152, name8, identityDescription2}];
LABEL_130:

    goto LABEL_133;
  }

  v125 = v123;
  if ([(TCCDRequestContext *)v67 reminderPrompt])
  {
    v126 = tcc_access_log();
    v127 = v157;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
    {
      sub_100044294(v126);
    }

    v128 = [NSValue valueWithPointer:v125];
    *buf = v157;
    *&buf[8] = v67;
    v129 = [v94[427] arrayWithObjects:buf count:2];
    v130 = sub_100043730();
    [v130 setObject:v129 forKeyedSubscript:v128];

    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v125, sub_100043774, 0);
    if (RunLoopSource)
    {
      v132 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v132, kCFRunLoopCommonModes);
      v125 = v132;
    }

    else
    {
      v141 = sub_100043730();
      [v141 removeObjectForKey:v128];
    }

    CFRelease(v125);

LABEL_133:
    v142 = v160;
    goto LABEL_134;
  }

  v137 = +[TCCDPlatform currentPlatform];
  server2 = [v137 server];
  generateBacktraceOnPrompt = [server2 generateBacktraceOnPrompt];

  v127 = v157;
  if (generateBacktraceOnPrompt)
  {
    v140 = dispatch_get_global_queue(0, 0);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100043C14;
    v181 = &unk_1000A4F58;
    v182 = v67;
    dispatch_async(v140, buf);
  }

  responseFlags = 0;
  error = CFUserNotificationReceiveResponse(v125, seconds, &responseFlags);
  CFRelease(v125);
  if (error)
  {
    service15 = [(TCCDRequestContext *)v67 service];
    name8 = [service15 name];
    identityDescription2 = [(TCCDRequestContext *)v67 identityDescription];
    [v157 denyAuthorizationWithErrorCode:2 format:{@"Failed CFUserNotificationReceiveResponse(): service %{public}@, subject %{public}@, status: %d", name8, identityDescription2, error}];
    goto LABEL_130;
  }

  v145 = tcc_access_log();
  if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
  {
    v146 = responseFlags;
    service16 = [(TCCDRequestContext *)v67 service];
    name9 = [service16 name];
    subjectIdentity8 = [(TCCDRequestContext *)v67 subjectIdentity];
    identifier3 = [subjectIdentity8 identifier];
    *v174 = 134218498;
    v175 = v146;
    resultCopy = v159;
    v176 = 2114;
    v177 = name9;
    v178 = 2114;
    v179 = identifier3;
    _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_INFO, "CFUserNotification response: 0x%lx; service %{public}@ and subject %{public}@", v174, 0x20u);

    v127 = v157;
  }

  v151 = responseFlags & 3;
  [v127 setAuthorizationValue:*(&v187 + v151)];
  [v127 setDatabaseAction:1];
  if (v151 != 3)
  {
    [v127 setAuthorizationReason:2];
    goto LABEL_133;
  }

  v142 = v160;
  if (seconds)
  {
    [v127 setDatabaseFlags:{objc_msgSend(v127, "databaseFlags") | 1}];
    [v127 setAuthorizationReason:9];
  }

  else
  {
    [v127 setAuthorizationReason:13];
    if ([v127 promptType] == 2)
    {
      [v127 setAuthorizationValue:currentAuth];
    }
  }

LABEL_134:
  for (i = 3; i != -1; --i)
  {
  }

  if (v156)
  {
    sharedDeviceConnection2 = [sub_100043430() sharedDeviceConnection];
    [sharedDeviceConnection2 hideUserNotification];
  }

LABEL_139:
}

- (TCCDRequestContext)initWithRequestMessage:(id)message forServer:(id)server error:(id *)error
{
  messageCopy = message;
  serverCopy = server;
  v60.receiver = self;
  v60.super_class = TCCDRequestContext;
  v10 = [(TCCDRequestContext *)&v60 init];
  v11 = v10;
  if (!v10 || ([(TCCDRequestContext *)v10 setPromptingPolicy:0], [(TCCDRequestContext *)v11 setUsageStringPolicy:0], [(TCCDRequestContext *)v11 setRecordUpgradePolicy:0], [(TCCDRequestContext *)v11 setPromptStringType:0], [(TCCDRequestContext *)v11 setUserTccdUnavailable:0], [(TCCDRequestContext *)v11 setServer:serverCopy], !messageCopy) || !serverCopy)
  {
LABEL_57:
    v46 = v11;
    goto LABEL_58;
  }

  v11->_spiVersion = 1;
  v12 = xpc_dictionary_get_value(messageCopy, "TCCD_MSG_REQUEST_TYPE_KEY");
  if (v12)
  {
    v13 = v12;
    uint64 = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_REQUEST_TYPE_KEY");

    if (!uint64)
    {
      functionName = v11->_functionName;
      v11->_functionName = @"TCCAccessRequest";

      v11->_spiVersion = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_SPI_VERSION");
      goto LABEL_11;
    }
  }

  string = xpc_dictionary_get_string(messageCopy, "function");
  if (string)
  {
    v16 = [NSString stringWithUTF8String:string];
    v17 = v11->_functionName;
    v11->_functionName = v16;

LABEL_11:
    v21 = [serverCopy serviceFromMessage:messageCopy error:error];
    service = v11->_service;
    v11->_service = v21;

    if (v11->_service)
    {
      v23 = xpc_dictionary_get_string(messageCopy, "TCCD_MSG_ID");
      v24 = (v23 ? [[NSString alloc] initWithUTF8String:v23] : @"?");
      messageIdentifier = v11->_messageIdentifier;
      v11->_messageIdentifier = v24;

      v26 = [[TCCDAttributionChain alloc] initWithMessage:messageCopy];
      p_attributionChain = &v11->_attributionChain;
      attributionChain = v11->_attributionChain;
      v11->_attributionChain = v26;

      if (v11->_attributionChain)
      {
        requestingProcess = [(TCCDAttributionChain *)v11->_attributionChain requestingProcess];

        if (requestingProcess)
        {
          accessingProcess = [*p_attributionChain accessingProcess];

          if (accessingProcess)
          {
            responsibleProcess = [*p_attributionChain responsibleProcess];

            if (responsibleProcess)
            {
              v32 = xpc_dictionary_get_dictionary(messageCopy, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
              v33 = xpc_dictionary_get_dictionary(v32, "TCCD_MSG_CREDENTIAL_ASSUMED_IDENTITY");
              v34 = v33;
              if (v33)
              {
                xpc_dictionary_get_uint64(v33, "TCCD_MSG_IDENTITY_TYPE_KEY");
                if (xpc_dictionary_get_string(v34, "TCCD_MSG_IDENTITY_ID_KEY"))
                {
                  v35 = tcc_identity_create();
                  v36 = tcc_object_copy_description();
                  logHandle = [serverCopy logHandle];
                  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100053988(&v11->_attributionChain, v36, logHandle);
                  }

                  explicitlyAssumedIdentity = v11->_explicitlyAssumedIdentity;
                  v11->_explicitlyAssumedIdentity = v35;
                }
              }

              v11->_userTccdUnavailable = xpc_dictionary_get_BOOL(messageCopy, "user_tccd_unavailable");
              spiVersion = v11->_spiVersion;
              if (spiVersion == 2)
              {
                v11->_promptingPolicy = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_POLICY_KEY");
                v11->_usageStringPolicy = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_USAGE_STRING_POLICY_KEY");
                v11->_recordUpgradePolicy = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_RECORD_UPGRADE_POLICY_POLICY_KEY");
                v11->_promptRightsMask = xpc_dictionary_get_uint64(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_RIGHTS_MASK_KEY");
                v11->_desiredAuth = xpc_dictionary_get_uint64(messageCopy, "desired_auth_value");
                v11->_promptStringType = xpc_dictionary_get_uint64(messageCopy, "request_prompt_string_type");
                if (!-[TCCDAttributionChain accessingProcessSpecified](v11->_attributionChain, "accessingProcessSpecified") || (-[TCCDAttributionChain requestingProcess](v11->_attributionChain, "requestingProcess"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 hasEntitlement:@"com.apple.private.tcc.set_client_data" containsServiceAllOrService:v11->_service options:0], v47, v48))
                {
                  length = 0;
                  data = xpc_dictionary_get_data(messageCopy, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_CLIENT_DICT_KEY", &length);
                  if (data)
                  {
                    if (length)
                    {
                      v50 = CFDataCreate(0, data, length);
                      if (v50)
                      {
                        v51 = v50;
                        v52 = CFPropertyListCreateWithData(0, v50, 0, 0, 0);
                        if (v52)
                        {
                          v53 = v52;
                          v54 = CFGetTypeID(v52);
                          if (v54 == CFDictionaryGetTypeID())
                          {
                            Copy = CFDictionaryCreateCopy(0, v53);
                            clientDict = v11->_clientDict;
                            v11->_clientDict = Copy;
                          }

                          CFRelease(v53);
                        }

                        CFRelease(v51);
                      }
                    }
                  }

                  logHandle2 = [serverCopy logHandle];
                  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100053A14(&v11->_attributionChain, logHandle2);
                  }
                }

                v11->_initialPrompt = 1;
              }

              else if (spiVersion == 1)
              {
                v40 = xpc_dictionary_get_value(messageCopy, "require_purpose");
                v41 = v40;
                if (v40 && xpc_get_type(v40) == &_xpc_type_BOOL)
                {
                  value = xpc_BOOL_get_value(v41);
                  v43 = 1;
                  if (!value)
                  {
                    v43 = 2;
                  }

                  v11->_usageStringPolicy = v43;
                }

                v44 = xpc_dictionary_get_BOOL(messageCopy, "preflight");
                v45 = 2;
                if (!v44)
                {
                  v45 = 0;
                }

                v11->_promptingPolicy = v45;
                v11->_recordUpgradePolicy = 1;
              }

              goto LABEL_57;
            }

            v18 = @"Failed to create Responsible Process from message.";
          }

          else
          {
            v18 = @"Failed to create Accessing Process from message.";
          }
        }

        else
        {
          v18 = @"Failed to create Requesting Process from message.";
        }
      }

      else
      {
        v18 = @"Failed to create Attribution Chain from message.";
      }

      if (error)
      {
        v19 = 5;
        goto LABEL_40;
      }
    }

LABEL_41:
    v46 = 0;
    goto LABEL_58;
  }

  if (!error)
  {
    goto LABEL_41;
  }

  v18 = @"Refusing Request for missing function key.";
  v19 = 7;
LABEL_40:
  v46 = 0;
  *error = [TCCDServer newErrorWithCode:v19 format:v18];
LABEL_58:

  return v46;
}

- (id)initForSyncRequestForSubjectBundleIdentifier:(id)identifier service:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v8 = [(TCCDRequestContext *)self initWithRequestMessage:0 forServer:0 error:0];
  v9 = v8;
  if (v8)
  {
    functionName = v8->_functionName;
    v8->_spiVersion = 2;
    v8->_functionName = @"TCCAccessRequest";

    objc_storeStrong(&v9->_service, service);
    v11 = [[TCCDAccessIdentity alloc] initWithBundleIdentifier:identifierCopy isWK2Proxy:1];
    subjectIdentity = v9->_subjectIdentity;
    v9->_subjectIdentity = v11;

    v9->_watchInitiatedPrompt = 1;
  }

  return v9;
}

@end