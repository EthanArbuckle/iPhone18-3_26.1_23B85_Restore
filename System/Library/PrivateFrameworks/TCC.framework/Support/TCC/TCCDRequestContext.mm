@interface TCCDRequestContext
- (NSDictionary)daemonDict;
- (NSString)identityDescription;
- (TCCDRequestContext)initWithRequestMessage:(id)a3 forServer:(id)a4 error:(id *)a5;
- (id)initForSyncRequestForSubjectBundleIdentifier:(id)a3 service:(id)a4;
- (void)dealloc;
- (void)presentAsynchronousDenialNotificationForService:(id)a3;
- (void)presentAsynchronousDenialNotificationWithMessage:(id)a3 buttonTitle:(id)a4;
- (void)presentSynchronousPromptWithHeader:(id)a3 message:(id)a4 aButtonTitle:(id)a5 aButtonAuth:(unint64_t)a6 bButtonTitle:(id)a7 bButtonAuth:(unint64_t)a8 cButtonTitle:(id)a9 cButtonAuth:(unint64_t)a10 currentAuth:(unint64_t)a11 withTimeoutInSeconds:(unsigned int)a12 updatingResult:(id)a13;
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
  v6 = [(TCCDRequestContext *)self service];
  v7 = [(TCCDRequestContext *)self service];
  v8 = [v7 requestNotificationExtensionTextLocalizationKey];
  v9 = [v6 localizedTextWithKey:v8];
  v13[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];

  return v10;
}

- (NSString)identityDescription
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(TCCDRequestContext *)self subjectIdentity];

  if (v4)
  {
    v5 = [(TCCDRequestContext *)self subjectIdentity];
    v6 = [v5 identifier];
    [v3 appendFormat:@"Sub:{%@}", v6];
  }

  v7 = [(TCCDRequestContext *)self attributionChain];
  v8 = [v7 responsibleProcess];

  if (v8)
  {
    v9 = [(TCCDRequestContext *)self attributionChain];
    v10 = [v9 responsibleProcess];
    v11 = [v10 description];
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

- (void)presentAsynchronousDenialNotificationWithMessage:(id)a3 buttonTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = tcc_access_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [(TCCDRequestContext *)self subjectIdentity];
    v10 = [v9 identifier];
    *buf = 136315394;
    *&buf[4] = "[TCCDRequestContext(AsynchronousNotification) presentAsynchronousDenialNotificationWithMessage:buttonTitle:]";
    v61 = 2112;
    v62 = v10;
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
      v57 = v6;
      [v11 setBody:v6];
      v13 = qword_1000C1178;
      v14 = [(TCCDRequestContext *)self service];
      v15 = [v14 name];
      v16 = v13;
      v17 = v15;
      v56 = v7;
      v18 = v7;
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
        v24 = [qword_1000C11A8 allValues];
        v25 = [NSSet setWithArray:v24];
        [v16 setNotificationCategories:v25];
      }

      [v12 setCategoryIdentifier:v21];
      [v12 setInterruptionLevel:1];
      v26 = +[UNNotificationSound defaultSound];
      [v12 setSound:v26];

      [v12 setShouldIgnoreDoNotDisturb:1];
      [v12 setShouldBackgroundDefaultAction:1];
      v58 = @"TCCServiceName";
      v27 = [(TCCDRequestContext *)self service];
      v28 = [v27 name];
      v59 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      [v12 setUserInfo:v29];

      v30 = +[NSUUID UUID];
      v31 = [v30 UUIDString];
      v32 = [UNNotificationRequest requestWithIdentifier:v31 content:v12 trigger:0];

      if (v32)
      {
        [qword_1000C1178 addNotificationRequest:v32 withCompletionHandler:&stru_1000A63E8];

        v7 = v56;
        v6 = v57;
      }

      else
      {
        v47 = tcc_access_log();
        v7 = v56;
        v6 = v57;
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

- (void)presentAsynchronousDenialNotificationForService:(id)a3
{
  v4 = a3;
  v5 = [v4 notificationTitleTextLocalizationKey];
  v6 = [v4 localizedTextWithKey:v5];

  v7 = [(TCCDRequestContext *)self subjectIdentity];
  v8 = [v7 displayName];
  v9 = [NSString stringWithValidatedFormat:v6 validFormatSpecifiers:@"%@" error:0, v8];

  if (v9)
  {
    v10 = [v4 notificationButtonTitleLocalizationKey];
    v11 = [v4 localizedTextWithKey:v10];

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
      sub_100043F0C(v4, self, v11);
    }
  }
}

- (void)presentSynchronousPromptWithHeader:(id)a3 message:(id)a4 aButtonTitle:(id)a5 aButtonAuth:(unint64_t)a6 bButtonTitle:(id)a7 bButtonAuth:(unint64_t)a8 cButtonTitle:(id)a9 cButtonAuth:(unint64_t)a10 currentAuth:(unint64_t)a11 withTimeoutInSeconds:(unsigned int)a12 updatingResult:(id)a13
{
  v19 = a3;
  v166 = a4;
  v165 = a5;
  v164 = a7;
  v163 = a9;
  v20 = a13;
  if (qword_1000C11A0 != -1)
  {
    sub_100043FD0();
  }

  [(TCCDRequestContext *)self setPromptingSemaphore:qword_1000C1190];
  if (![(TCCDRequestContext *)self promptingSemaphoreHeld])
  {
    [(TCCDRequestContext *)self setPromptingSemaphoreHeld:1];
    v22 = [(TCCDRequestContext *)self promptingSemaphore];
    v23 = dispatch_semaphore_wait(v22, 0);

    if (v23)
    {
      v24 = tcc_access_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [(TCCDRequestContext *)self identityDescription];
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Delaying prompt for %{public}@", buf, 0xCu);
      }

      v26 = [(TCCDRequestContext *)self promptingSemaphore];
      dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);

      [v20 setDatabaseAction:2];
      goto LABEL_139;
    }
  }

  v21 = [(TCCDRequestContext *)self service];
  [v21 ios_watchKitUserNotificationNumber];
  v162 = v159 = v20;
  if (v162)
  {
  }

  else
  {
    v27 = [(TCCDRequestContext *)self subjectIdentity];
    v28 = [v27 is_wk2_proxy];

    if (!v28)
    {
      v43 = 0;
      v162 = 0;
      goto LABEL_24;
    }
  }

  v29 = [(TCCDRequestContext *)self subjectIdentity];
  v30 = [v29 pluginBundleIdentifier];

  if (v30)
  {
    v31 = tcc_sync_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      sub_100043FE4(v162, self, v31);
    }

    v32 = [sub_100043430() sharedDeviceConnection];
    v33 = [v162 integerValue];
    v34 = [(TCCDRequestContext *)self subjectIdentity];
    v35 = [v34 displayName];
    v36 = [(TCCDRequestContext *)self subjectIdentity];
    v37 = [v36 pluginBundleIdentifier];
    [v32 showUserNotification:v33 applicationName:v35 extensionBundleID:v37];
  }

  else
  {
    v38 = [(TCCDRequestContext *)self subjectIdentity];
    v39 = [v38 is_wk2_proxy];

    if (!v39)
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

    v32 = [sub_100043430() sharedDeviceConnection];
    v162 = v40;
    v42 = [v40 integerValue];
    v34 = [(TCCDRequestContext *)self subjectIdentity];
    v35 = [v34 displayName];
    [v32 showUserNotification:v42 bundleID:v35];
  }

  v43 = 1;
  v20 = v159;
LABEL_24:
  v44 = self;
  v45 = v19;
  v46 = v166;
  v47 = v165;
  v170 = v164;
  v169 = v163;
  v157 = v20;
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
  v167 = v44;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    v51 = [(TCCDRequestContext *)v44 subjectIdentity];
    v52 = [v51 identifier];
    v53 = [(TCCDRequestContext *)v44 service];
    v54 = [v53 name];
    *buf = 136315650;
    *&buf[4] = "display_prompt";
    *&buf[12] = 2112;
    *&buf[14] = v52;
    *&buf[22] = 2112;
    v181 = v54;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s: called for %@ for service %@", buf, 0x20u);
  }

  v55 = [(TCCDRequestContext *)v44 service];
  v56 = [v55 localizedResourcesBundle];
  v57 = [v56 bundleURL];
  [v49 setObject:v57 forKeyedSubscript:kCFUserNotificationLocalizationURLKey];

  [v49 setObject:v161 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  if (v160)
  {
    [v49 setObject:v160 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  v158 = v19;
  v187 = xmmword_1000809E0;
  v188 = unk_1000809F0;
  v58 = a8;
  v59 = v168;
  if (v169)
  {
    *&v187 = a8;
    v58 = a10;
  }

  *(&v187 + 1) = v58;
  *&v188 = a6;
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
    if (v62 == a6)
    {
      v63 = v49;
      v64 = v59;
LABEL_42:
      [v63 setObject:v64 forKeyedSubscript:v61];
      goto LABEL_43;
    }

    if (v62 == a8)
    {
      v63 = v49;
      v64 = v170;
      goto LABEL_42;
    }

    if (v62 == a10)
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
  v19 = v158;
  v67 = v167;
  if ((v66 & 1) != 0 && _os_feature_enabled_impl())
  {
    v68 = [(TCCDRequestContext *)v167 service];
    v69 = [v68 name];
    a8 = +[TCCDPlatform currentPlatform];
    v70 = [a8 server];
    v71 = [v70 temporaryDirectory];
    v72 = [TCCDIconGenerator createIconForTCCService:v69 withTempDirectory:v71];
    if (v72)
    {
      v73 = +[NSFileManager defaultManager];
      v74 = [v72 path];
      LODWORD(v155) = [v73 fileExistsAtPath:v74];

      v19 = v158;
      v67 = v167;

      if (v155)
      {
        v68 = [v72 path];
        [v49 setObject:v68 forKeyedSubscript:SBUserNotificationHeaderImagePath];
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
    v75 = [(TCCDRequestContext *)v67 service];
    v76 = [v75 usesTwoStagePrompting];

    if (v76)
    {
      [v49 setObject:&off_1000ADF40 forKeyedSubscript:SBUserNotificationButtonLayoutDirectionKey];
    }
  }

  v77 = [(TCCDRequestContext *)v67 service];
  v78 = [v77 name];
  v79 = [v78 isEqualToString:@"kTCCServiceFocusStatus"];

  if (v79)
  {
    [v49 setObject:@"com.apple.FocusSettingsUI.UserNotificationExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  }

  v80 = [(TCCDRequestContext *)v67 service];
  v81 = [v80 name];
  v82 = [v81 isEqualToString:@"kTCCServicePhotos"];

  if (v82)
  {
    [v49 setObject:@"com.apple.mobileslideshow.PhotosTCCNotificationExtension" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
  }

  v83 = [(TCCDRequestContext *)v67 service];
  v84 = [v83 name];
  if (([v84 isEqualToString:@"kTCCServiceCalendar"] & 1) == 0)
  {

    goto LABEL_68;
  }

  v82 = [(TCCDRequestContext *)v67 service];
  v85 = [v82 supportsStagedPrompting];

  if (v85)
  {
    v86 = [(TCCDRequestContext *)v67 service];
    v82 = [v86 authSpecificNotificationExtensionBundleIdentifier];
    v87 = [NSNumber numberWithUnsignedLongLong:[(TCCDRequestContext *)v67 desiredAuth]];
    v83 = [v82 objectForKeyedSubscript:v87];

    if (v83)
    {
      [v49 setObject:v83 forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    }

LABEL_68:
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v88 = [(TCCDRequestContext *)v67 service];
    v83 = [v88 name];
    if ([v83 isEqualToString:@"kTCCServiceAddressBook"])
    {
      v82 = [(TCCDRequestContext *)v67 desiredAuth];

      if (v82 == 2)
      {
        v89 = tcc_access_log();
        if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
        {
          v83 = [(TCCDRequestContext *)v67 subjectIdentity];
          v82 = [v83 identifier];
          *buf = 136315394;
          *&buf[4] = "display_prompt";
          *&buf[12] = 2112;
          *&buf[14] = v82;
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
    v90 = [(TCCDRequestContext *)v67 service];
    v83 = [v90 name];
    v82 = [v83 isEqualToString:@"kTCCServiceBluetoothAlways"];

    if (v82)
    {
      [v49 setObject:@"com.apple.corelocation.CoreLocationNumberedMapCalloutPromptPlugin" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    }
  }

  v91 = [(TCCDRequestContext *)v67 service];
  v92 = [v91 supportsStagedPrompting];
  v93 = v92;
  v94 = &SBSProcessIDForDisplayIdentifier_ptr;
  if (!v92)
  {
LABEL_83:
    v96 = _os_feature_enabled_impl();
    if (v96)
    {
      v83 = [(TCCDRequestContext *)v167 service];
      v82 = [v83 name];
      if ([v82 isEqualToString:@"kTCCServiceBluetoothAlways"])
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
      v98 = v97 = a8;
      v99 = [v98 name];
      v100 = [v99 isEqualToString:@"kTCCServiceAddressBook"];

      v19 = v158;
      a8 = v97;
      if (!v96)
      {
LABEL_95:
        if (v93)
        {
        }

        v20 = v159;
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

  v95 = [(TCCDRequestContext *)v67 service];
  v83 = [v95 name];
  if (([v83 isEqualToString:@"kTCCServiceCalendar"] & 1) == 0)
  {
    v154 = v83;
    v155 = v95;
    a8 = [(TCCDRequestContext *)v67 service];
    v153 = [a8 name];
    if (([v153 isEqualToString:@"kTCCServicePhotos"] & 1) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:

    v95 = v155;
    v83 = v154;
  }

LABEL_88:
  v20 = v159;
LABEL_98:
  v184[0] = kTCCNotificationExtensionClientDataKey;
  v101 = [(TCCDRequestContext *)v67 clientDict];
  v102 = v101;
  if (v101)
  {
    v103 = v101;
  }

  else
  {
    v103 = &__NSDictionary0__struct;
  }

  v185[0] = v103;
  v184[1] = kTCCNotificationExtensionDaemonDataKey;
  v104 = [(TCCDRequestContext *)v67 daemonDict];
  v105 = v104;
  if (v104)
  {
    v106 = v104;
  }

  else
  {
    v106 = &__NSDictionary0__struct;
  }

  v185[1] = v106;
  v184[2] = @"ClientBundleIdentifier";
  v107 = [(TCCDRequestContext *)v67 subjectIdentity];
  v108 = [v107 identifier];
  v185[2] = v108;
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
    v134 = [(TCCDRequestContext *)v67 service];
    v135 = [v134 name];
    v136 = [(TCCDRequestContext *)v67 identityDescription];
    v152 = v124;
    v127 = v157;
    [v157 denyAuthorizationWithErrorCode:2 format:{@"Failed CFUserNotificationCreate(): status %d; service %{public}@ and subject %{public}@", v152, v135, v136}];
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
  v138 = [v137 server];
  v139 = [v138 generateBacktraceOnPrompt];

  v127 = v157;
  if (v139)
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
  error = CFUserNotificationReceiveResponse(v125, a12, &responseFlags);
  CFRelease(v125);
  if (error)
  {
    v134 = [(TCCDRequestContext *)v67 service];
    v135 = [v134 name];
    v136 = [(TCCDRequestContext *)v67 identityDescription];
    [v157 denyAuthorizationWithErrorCode:2 format:{@"Failed CFUserNotificationReceiveResponse(): service %{public}@, subject %{public}@, status: %d", v135, v136, error}];
    goto LABEL_130;
  }

  v145 = tcc_access_log();
  if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
  {
    v146 = responseFlags;
    v147 = [(TCCDRequestContext *)v67 service];
    v148 = [v147 name];
    v149 = [(TCCDRequestContext *)v67 subjectIdentity];
    v150 = [v149 identifier];
    *v174 = 134218498;
    v175 = v146;
    v20 = v159;
    v176 = 2114;
    v177 = v148;
    v178 = 2114;
    v179 = v150;
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
  if (a12)
  {
    [v127 setDatabaseFlags:{objc_msgSend(v127, "databaseFlags") | 1}];
    [v127 setAuthorizationReason:9];
  }

  else
  {
    [v127 setAuthorizationReason:13];
    if ([v127 promptType] == 2)
    {
      [v127 setAuthorizationValue:a11];
    }
  }

LABEL_134:
  for (i = 3; i != -1; --i)
  {
  }

  if (v156)
  {
    v144 = [sub_100043430() sharedDeviceConnection];
    [v144 hideUserNotification];
  }

LABEL_139:
}

- (TCCDRequestContext)initWithRequestMessage:(id)a3 forServer:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v60.receiver = self;
  v60.super_class = TCCDRequestContext;
  v10 = [(TCCDRequestContext *)&v60 init];
  v11 = v10;
  if (!v10 || ([(TCCDRequestContext *)v10 setPromptingPolicy:0], [(TCCDRequestContext *)v11 setUsageStringPolicy:0], [(TCCDRequestContext *)v11 setRecordUpgradePolicy:0], [(TCCDRequestContext *)v11 setPromptStringType:0], [(TCCDRequestContext *)v11 setUserTccdUnavailable:0], [(TCCDRequestContext *)v11 setServer:v9], !v8) || !v9)
  {
LABEL_57:
    v46 = v11;
    goto LABEL_58;
  }

  v11->_spiVersion = 1;
  v12 = xpc_dictionary_get_value(v8, "TCCD_MSG_REQUEST_TYPE_KEY");
  if (v12)
  {
    v13 = v12;
    uint64 = xpc_dictionary_get_uint64(v8, "TCCD_MSG_REQUEST_TYPE_KEY");

    if (!uint64)
    {
      functionName = v11->_functionName;
      v11->_functionName = @"TCCAccessRequest";

      v11->_spiVersion = xpc_dictionary_get_uint64(v8, "TCCD_MSG_SPI_VERSION");
      goto LABEL_11;
    }
  }

  string = xpc_dictionary_get_string(v8, "function");
  if (string)
  {
    v16 = [NSString stringWithUTF8String:string];
    v17 = v11->_functionName;
    v11->_functionName = v16;

LABEL_11:
    v21 = [v9 serviceFromMessage:v8 error:a5];
    service = v11->_service;
    v11->_service = v21;

    if (v11->_service)
    {
      v23 = xpc_dictionary_get_string(v8, "TCCD_MSG_ID");
      v24 = (v23 ? [[NSString alloc] initWithUTF8String:v23] : @"?");
      messageIdentifier = v11->_messageIdentifier;
      v11->_messageIdentifier = v24;

      v26 = [[TCCDAttributionChain alloc] initWithMessage:v8];
      p_attributionChain = &v11->_attributionChain;
      attributionChain = v11->_attributionChain;
      v11->_attributionChain = v26;

      if (v11->_attributionChain)
      {
        v29 = [(TCCDAttributionChain *)v11->_attributionChain requestingProcess];

        if (v29)
        {
          v30 = [*p_attributionChain accessingProcess];

          if (v30)
          {
            v31 = [*p_attributionChain responsibleProcess];

            if (v31)
            {
              v32 = xpc_dictionary_get_dictionary(v8, "TCC_MSG_REQUEST_AUTHORIZATION_SUBJECT_CREDENTIAL_DICTIONARY_KEY");
              v33 = xpc_dictionary_get_dictionary(v32, "TCCD_MSG_CREDENTIAL_ASSUMED_IDENTITY");
              v34 = v33;
              if (v33)
              {
                xpc_dictionary_get_uint64(v33, "TCCD_MSG_IDENTITY_TYPE_KEY");
                if (xpc_dictionary_get_string(v34, "TCCD_MSG_IDENTITY_ID_KEY"))
                {
                  v35 = tcc_identity_create();
                  v36 = tcc_object_copy_description();
                  v37 = [v9 logHandle];
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100053988(&v11->_attributionChain, v36, v37);
                  }

                  explicitlyAssumedIdentity = v11->_explicitlyAssumedIdentity;
                  v11->_explicitlyAssumedIdentity = v35;
                }
              }

              v11->_userTccdUnavailable = xpc_dictionary_get_BOOL(v8, "user_tccd_unavailable");
              spiVersion = v11->_spiVersion;
              if (spiVersion == 2)
              {
                v11->_promptingPolicy = xpc_dictionary_get_uint64(v8, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_POLICY_KEY");
                v11->_usageStringPolicy = xpc_dictionary_get_uint64(v8, "TCCD_MSG_MESSAGE_OPTION_REQUEST_USAGE_STRING_POLICY_KEY");
                v11->_recordUpgradePolicy = xpc_dictionary_get_uint64(v8, "TCCD_MSG_MESSAGE_OPTION_REQUEST_RECORD_UPGRADE_POLICY_POLICY_KEY");
                v11->_promptRightsMask = xpc_dictionary_get_uint64(v8, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_RIGHTS_MASK_KEY");
                v11->_desiredAuth = xpc_dictionary_get_uint64(v8, "desired_auth_value");
                v11->_promptStringType = xpc_dictionary_get_uint64(v8, "request_prompt_string_type");
                if (!-[TCCDAttributionChain accessingProcessSpecified](v11->_attributionChain, "accessingProcessSpecified") || (-[TCCDAttributionChain requestingProcess](v11->_attributionChain, "requestingProcess"), v47 = objc_claimAutoreleasedReturnValue(), v48 = [v47 hasEntitlement:@"com.apple.private.tcc.set_client_data" containsServiceAllOrService:v11->_service options:0], v47, v48))
                {
                  length = 0;
                  data = xpc_dictionary_get_data(v8, "TCCD_MSG_MESSAGE_OPTION_REQUEST_PROMPT_CLIENT_DICT_KEY", &length);
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

                  v57 = [v9 logHandle];
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100053A14(&v11->_attributionChain, v57);
                  }
                }

                v11->_initialPrompt = 1;
              }

              else if (spiVersion == 1)
              {
                v40 = xpc_dictionary_get_value(v8, "require_purpose");
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

                v44 = xpc_dictionary_get_BOOL(v8, "preflight");
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

      if (a5)
      {
        v19 = 5;
        goto LABEL_40;
      }
    }

LABEL_41:
    v46 = 0;
    goto LABEL_58;
  }

  if (!a5)
  {
    goto LABEL_41;
  }

  v18 = @"Refusing Request for missing function key.";
  v19 = 7;
LABEL_40:
  v46 = 0;
  *a5 = [TCCDServer newErrorWithCode:v19 format:v18];
LABEL_58:

  return v46;
}

- (id)initForSyncRequestForSubjectBundleIdentifier:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TCCDRequestContext *)self initWithRequestMessage:0 forServer:0 error:0];
  v9 = v8;
  if (v8)
  {
    functionName = v8->_functionName;
    v8->_spiVersion = 2;
    v8->_functionName = @"TCCAccessRequest";

    objc_storeStrong(&v9->_service, a4);
    v11 = [[TCCDAccessIdentity alloc] initWithBundleIdentifier:v6 isWK2Proxy:1];
    subjectIdentity = v9->_subjectIdentity;
    v9->_subjectIdentity = v11;

    v9->_watchInitiatedPrompt = 1;
  }

  return v9;
}

@end