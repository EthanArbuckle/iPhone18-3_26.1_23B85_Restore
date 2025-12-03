@interface SUBUserNotification
+ (BOOL)activeWatchShouldOfferUnpair;
- (id)internalMessageFromDenialInfo:(id)info;
- (void)postSpaceNotificationWithUnpair;
- (void)showDownloadAndPrepareError:(id)error;
- (void)showDuetConditions:(id)conditions;
- (void)showInstallationError:(id)error;
- (void)showUserNotificationHeader:(id)header message:(id)message internalMessage:(id)internalMessage defButton:(id)button altButton:(id)altButton bridgePane:(id)pane showOnLockLockScreen:(BOOL)screen dismissalHandler:(id)self0;
@end

@implementation SUBUserNotification

- (void)showUserNotificationHeader:(id)header message:(id)message internalMessage:(id)internalMessage defButton:(id)button altButton:(id)altButton bridgePane:(id)pane showOnLockLockScreen:(BOOL)screen dismissalHandler:(id)self0
{
  headerCopy = header;
  messageCopy = message;
  internalMessageCopy = internalMessage;
  buttonCopy = button;
  altButtonCopy = altButton;
  paneCopy = pane;
  handlerCopy = handler;
  v21 = [[SUBTransaction alloc] initWithName:@"ShowingUserNotification"];
  v22 = objc_opt_new();
  v23 = v22;
  if (headerCopy)
  {
    [v22 setObject:headerCopy forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
  }

  if (messageCopy)
  {
    v24 = messageCopy;
    v25 = MGGetBoolAnswer();
    if (internalMessageCopy && v25)
    {
      internalMessageCopy = [NSString stringWithFormat:@"%@\n[Internal Only : %@]", v24, internalMessageCopy];

      v24 = internalMessageCopy;
    }

    [v23 setObject:v24 forKeyedSubscript:kCFUserNotificationAlertMessageKey];
  }

  if (buttonCopy)
  {
    [v23 setObject:buttonCopy forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];
  }

  if (altButtonCopy)
  {
    [v23 setObject:altButtonCopy forKeyedSubscript:kCFUserNotificationAlternateButtonTitleKey];
  }

  if (screen)
  {
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
    [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDontDismissOnUnlock];
  }

  error = -1;
  v27 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 0, &error, v23);
  if (!v27 || error)
  {
    v28 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v45 = error;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed to display notification: %{public}d", buf, 8u);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    if (handlerCopy)
    {
      v29 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000018F4;
      block[3] = &unk_10002C750;
      v42 = handlerCopy;
      v41 = v21;
      dispatch_async(v29, block);
    }
  }

  v30 = dispatch_get_global_queue(0, 0);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100001938;
  v35[3] = &unk_10002C778;
  v38 = handlerCopy;
  v39 = v27;
  v36 = paneCopy;
  v37 = v21;
  v31 = v21;
  v32 = handlerCopy;
  v33 = paneCopy;
  dispatch_async(v30, v35);
}

- (void)showDownloadAndPrepareError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    userInfo = [errorCopy userInfo];
    v7 = [userInfo objectForKey:NSUnderlyingErrorKey];

    code = [v5 code];
    if (code <= 9)
    {
      if ((code - 7) < 3)
      {
        v52 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v48 = [v52 localizedStringForKey:@"GENERIC_DOWNLOAD_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v10 = v55 = self;
        v11 = [v10 localizedStringForKey:@"GENERIC_DOWNLOAD_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        v12 = [v5 description];
        v13 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v14 = [v13 localizedStringForKey:@"OPEN_APP_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        v15 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v16 = [v15 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        LOBYTE(v40) = 1;
        v17 = v48;
        [(SUBUserNotification *)v55 showUserNotificationHeader:v48 message:v11 internalMessage:v12 defButton:v14 altButton:v16 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK" showOnLockLockScreen:v40 dismissalHandler:0];

LABEL_10:
      }
    }

    else
    {
      if (code > 24)
      {
        if (code == 25)
        {
          userInfo2 = [v5 userInfo];
          v32 = [NSString stringWithUTF8String:SUBMessageRequiredDiskSpaceKey[0]];
          v33 = [userInfo2 objectForKeyedSubscript:v32];

          if ([v33 unsignedLongLongValue])
          {
            if (+[SUBUserNotification activeWatchShouldOfferUnpair])
            {
              [(SUBUserNotification *)self postSpaceNotificationWithUnpair];
            }

            else
            {
              v54 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
              v57 = v7;
              v45 = [v54 localizedStringForKey:@"INSTALL_DISK_SPACE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
              v51 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
              v47 = [v51 localizedStringForKey:@"INSTALL_DISK_SPACE_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
              [v33 unsignedLongLongValue];
              v43 = CPFSSizeStrings();
              v34 = [NSString stringWithFormat:v47, v43];
              v35 = [v5 description];
              v36 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
              v37 = [v36 localizedStringForKey:@"LEARN_MORE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
              v38 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
              v39 = [v38 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
              LOBYTE(v42) = 1;
              [(SUBUserNotification *)self showUserNotificationHeader:v45 message:v34 internalMessage:v35 defButton:v37 altButton:v39 bridgePane:@"https://support.apple.com/kb/HT211283" showOnLockLockScreen:v42 dismissalHandler:0];

              v7 = v57;
            }
          }
        }

        else if (code == 54)
        {
          v18 = [v5 description];
          v49 = [NSString stringWithFormat:@"Unable to determine free space on device: %@", v18];

          v53 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
          v44 = [v53 localizedStringForKey:@"INSTALL_DISK_SPACE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
          v46 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
          v19 = [v46 localizedStringForKey:@"INSTALL_DISK_SPACE_MESSAGE_SPACE_CHECK_ERROR" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
          v20 = [NSString stringWithFormat:v19];
          v21 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
          v22 = [v21 localizedStringForKey:@"LEARN_MORE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
          v23 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
          v24 = [v23 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
          LOBYTE(v41) = 1;
          [(SUBUserNotification *)self showUserNotificationHeader:v44 message:v20 internalMessage:v49 defButton:v22 altButton:v24 bridgePane:@"https://support.apple.com/kb/HT211283" showOnLockLockScreen:v41 dismissalHandler:0];
        }

        goto LABEL_21;
      }

      if (code != 10)
      {
        if (code == 23)
        {
          v9 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "update was cancelled by user action", buf, 2u);
          }
        }

        goto LABEL_21;
      }

      domain = [v7 domain];
      v26 = [domain isEqualToString:kCFErrorDomainMobileSoftwareUpdate];

      if (v26)
      {
        v52 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v50 = [v52 localizedStringForKey:@"VERIFICATION_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v10 = v56 = self;
        v11 = [v10 localizedStringForKey:@"VERIFICATION_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        v12 = [v5 description];
        v27 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v28 = [v27 localizedStringForKey:@"OPEN_APP_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        v29 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v30 = [v29 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        LOBYTE(v40) = 1;
        v17 = v50;
        [(SUBUserNotification *)v56 showUserNotificationHeader:v50 message:v11 internalMessage:v12 defButton:v28 altButton:v30 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK" showOnLockLockScreen:v40 dismissalHandler:0];

        goto LABEL_10;
      }
    }

LABEL_21:
  }
}

- (void)showInstallationError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v50 = errorCopy;
    if ([errorCopy code] == 25)
    {
      userInfo = [v50 userInfo];
      v6 = [NSString stringWithUTF8String:SUBMessageRequiredDiskSpaceKey[0]];
      v7 = [userInfo objectForKeyedSubscript:v6];

      if (![v7 unsignedLongLongValue])
      {
LABEL_8:

        errorCopy = v50;
        goto LABEL_9;
      }

      selfCopy = self;
      v43 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v46 = [v43 localizedStringForKey:@"INSTALL_DISK_SPACE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v42 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v8 = [v42 localizedStringForKey:@"INSTALL_DISK_SPACE_MESSAGE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v49 = v7;
      [v7 unsignedLongLongValue];
      v9 = CPFSSizeStrings();
      v10 = [NSString stringWithFormat:v8, v9];
      v11 = [v50 description];
      v12 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v13 = [v12 localizedStringForKey:@"OPEN_APP_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v14 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v15 = v46;
      v16 = [v14 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      LOBYTE(v40) = 1;
      [(SUBUserNotification *)selfCopy showUserNotificationHeader:v46 message:v10 internalMessage:v11 defButton:v13 altButton:v16 bridgePane:@"bridge:tab=SETTINGS&root=GENERAL_LINK&path=USAGE_LINK" showOnLockLockScreen:v40 dismissalHandler:0];

      v17 = v8;
      v19 = v42;
      v18 = v43;
LABEL_7:

      v7 = v49;
      goto LABEL_8;
    }

    if ([v50 code] == 54)
    {
      v20 = [v50 description];
      v49 = [NSString stringWithFormat:@"Unable to determine free space on device: %@", v20];

      selfCopy2 = self;
      v21 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v47 = [v21 localizedStringForKey:@"INSTALL_DISK_SPACE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v22 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v23 = [v22 localizedStringForKey:@"INSTALL_DISK_SPACE_MESSAGE_SPACE_CHECK_ERROR" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v18 = v21;
      v19 = v22;
      v9 = [NSString stringWithFormat:v23];
      v10 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v11 = [v10 localizedStringForKey:@"LEARN_MORE" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v12 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v15 = v47;
      v24 = [v12 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      LOBYTE(v41) = 1;
      [(SUBUserNotification *)selfCopy2 showUserNotificationHeader:v47 message:v9 internalMessage:v49 defButton:v11 altButton:v24 bridgePane:@"https://support.apple.com/kb/HT211283" showOnLockLockScreen:v41 dismissalHandler:0];

      v17 = v23;
      goto LABEL_7;
    }

    v25 = [v50 code] == 24;
    errorCopy = v50;
    if (!v25)
    {
      v25 = [v50 code] == 18;
      errorCopy = v50;
      if (!v25)
      {
        userInfo2 = [v50 userInfo];
        v27 = [userInfo2 objectForKey:NSUnderlyingErrorKey];

        domain = [v27 domain];
        v48 = v27;
        selfCopy3 = self;
        if ([domain isEqualToString:kCFErrorDomainMobileSoftwareUpdate])
        {
          code = [v27 code];

          if (code == 2)
          {
            v31 = @"VERIFICATION_MESSAGE";
            v32 = @"VERIFICATION_HEADER";
            goto LABEL_19;
          }
        }

        else
        {
        }

        v31 = @"INSTALLATION_MESSAGE";
        v32 = @"INSTALLATION_HEADER";
LABEL_19:
        v33 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v49 = [v33 localizedStringForKey:v32 value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];

        v34 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v18 = [v34 localizedStringForKey:v31 value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];

        v19 = MGCopyAnswer();
        v35 = selfCopy3;
        if ([v19 isEqualToString:@"Internal"] && v48)
        {
          v36 = [v48 description];
          v37 = [NSString stringWithFormat:@"%@\n\nInternal Only\n\n%@", v18, v36];

          v18 = v37;
        }

        v38 = [v50 description];
        v9 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v10 = [v9 localizedStringForKey:@"OPEN_APP_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        v17 = v38;
        v11 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v12 = [v11 localizedStringForKey:@"CLOSE_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
        LOBYTE(v39) = 1;
        [(SUBUserNotification *)v35 showUserNotificationHeader:v49 message:v18 internalMessage:v17 defButton:v10 altButton:v12 bridgePane:@"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK" showOnLockLockScreen:v39 dismissalHandler:0];
        v15 = v48;
        goto LABEL_7;
      }
    }
  }

LABEL_9:
}

- (id)internalMessageFromDenialInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  if (infoCopy)
  {
    v5 = [infoCopy objectForKeyedSubscript:@"ChargerRequiredForApply"];
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v6 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Unexpected value passed for chargerRequiredForUpdate. Assuming required", buf, 2u);
      }

      v5 = &__kCFBooleanTrue;
    }

    v7 = [v4 objectForKeyedSubscript:@"ChargerConnected"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v7 BOOLValue])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
    }

    else
    {
      v10 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalid value passed for chargerConnected", buf, 2u);
      }

      v9 = @"Unknown";
    }

    v11 = [v4 objectForKeyedSubscript:@"BatteryLevel"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [NSString stringWithFormat:@"%@", v11];
    }

    else
    {
      v13 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Invalid value passed for battery level", buf, 2u);
      }

      v12 = @"Unknown";
    }

    if ([v5 BOOLValue])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = [NSString stringWithFormat:@"ChargerRequired: %@ ChargerConnected: %@ BatteryLevel: %@", v14, v9, v12];
  }

  else
  {
    v16 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[SUBUserNotification internalMessageFromDenialInfo:]";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invalid denialInfo passed to %s", buf, 0xCu);
    }

    v15 = @"Unable to parse error info";
  }

  return v15;
}

- (void)showDuetConditions:(id)conditions
{
  conditionsCopy = conditions;
  denialReasons = [conditionsCopy denialReasons];

  if (!denialReasons)
  {
    goto LABEL_48;
  }

  denialReasons2 = [conditionsCopy denialReasons];
  userInfo = [denialReasons2 userInfo];

  selfCopy = self;
  if (!userInfo || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Invalid denialInfo passed to showDuetConditions. Showing default alert", buf, 2u);
    }

    denialReasons3 = [conditionsCopy denialReasons];
    v15 = [denialReasons3 description];

    v16 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v12 = v16;
    v17 = @"INSTALLATION_PAUSED_CHARGER";
    goto LABEL_13;
  }

  v8 = [userInfo objectForKeyedSubscript:@"RichDenialReasonsSupported"];

  v9 = softwareupdatebridge_log;
  v10 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v47 = conditionsCopy;
    if (v10)
    {
      *buf = 138412290;
      v50 = userInfo;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: DenialReasons passed in using new format : %@", buf, 0xCu);
    }

    v11 = [userInfo objectForKeyedSubscript:@"MinNeededBatteryLevelWithoutChargerForApply"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v11;
    }

    else
    {
      v12 = [NSNumber numberWithInteger:60];

      v19 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unexpected value passed for requiredBatteryLevelWithoutCharger. Assuming default(%@)", buf, 0xCu);
      }
    }

    v20 = [userInfo objectForKeyedSubscript:@"MinNeededBatteryLevelWithChargerForApply"];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = v20;
    }

    else
    {
      v21 = [NSNumber numberWithInteger:50];

      v22 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v50 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unexpected value passed for requiredBatteryLevelWithCharger. Assuming default(%@)", buf, 0xCu);
      }
    }

    v23 = [userInfo objectForKeyedSubscript:@"ChargerRequiredForApply"];
    if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v24 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Unexpected value passed for chargerRequiredForUpdate. Assuming required", buf, 2u);
      }

      v23 = &__kCFBooleanTrue;
    }

    v25 = [userInfo objectForKeyedSubscript:@"ChargerConnected"];
    v15 = [(SUBUserNotification *)self internalMessageFromDenialInfo:userInfo];
    if ([v23 BOOLValue])
    {
      if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v25 BOOLValue] & 1) == 0)
      {
        v43 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Charger is required for update and not connected. Showing charger required message in notification", buf, 2u);
        }

        v27 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v28 = v27;
        v29 = @"INSTALLATION_PAUSED_CHARGER";
      }

      else
      {
        v26 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Charger is required for update and is connected. Showing low battery message in notification", buf, 2u);
        }

        v27 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
        v28 = v27;
        v29 = @"INSTALLATION_PAUSED_BATTERY";
      }

      v18 = [v27 localizedStringForKey:v29 value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    }

    else
    {
      v45 = v25;
      v33 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: Charger is not required for update. Showing new combined battery/charger message in notification", buf, 2u);
      }

      v28 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
      v34 = [v28 localizedStringForKey:@"INSTALLATION_PAUSED_CHARGER_OPTIONAL" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
      v35 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v34, [v21 intValue], objc_msgSend(v12, "intValue"));
      v36 = [NSString stringWithFormat:@"%@", v35];
      v18 = [NSString localizedUserNotificationStringForKey:v36 arguments:0];

      conditionsCopy = v47;
      v25 = v45;
    }

    goto LABEL_44;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DenialReasons]: DenialReasons passed in using legacy format", buf, 2u);
  }

  v15 = [userInfo valueForKey:@"ChargerConnected"];
  if (!v15)
  {
    goto LABEL_49;
  }

  denialReasons4 = [conditionsCopy denialReasons];
  code = [denialReasons4 code];

  if (![v15 BOOLValue])
  {
    v32 = @"INSTALLATION_PAUSED_CHARGER";
    goto LABEL_51;
  }

  if ((*&code & 0x10000) == 0)
  {
LABEL_49:
    v18 = 0;
    goto LABEL_45;
  }

  v32 = @"INSTALLATION_PAUSED_BATTERY";
LABEL_51:
  v16 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v12 = v16;
  v17 = v32;
LABEL_13:
  v18 = [v16 localizedStringForKey:v17 value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
LABEL_44:

LABEL_45:
  if (v18)
  {
    v37 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v38 = [v37 localizedStringForKey:@"INSTALLATION_PAUSED_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    [conditionsCopy denialReasons];
    v39 = v48 = conditionsCopy;
    v40 = [v39 description];
    v41 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
    v42 = [v41 localizedStringForKey:@"OK_BUTTON" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
    LOBYTE(v44) = 1;
    [(SUBUserNotification *)selfCopy showUserNotificationHeader:v38 message:v18 internalMessage:v40 defButton:v42 altButton:0 bridgePane:0 showOnLockLockScreen:v44 dismissalHandler:0];

    conditionsCopy = v48;
  }

LABEL_48:
}

+ (BOOL)activeWatchShouldOfferUnpair
{
  v2 = SUBActiveNRDevice();
  v3 = [v2 valueForProperty:NRDevicePropertyProductType];
  v4 = [NSSet setWithArray:&off_10002F538];
  lowercaseString = [v3 lowercaseString];
  v6 = [v4 containsObject:lowercaseString];

  return v6;
}

- (void)postSpaceNotificationWithUnpair
{
  v22[0] = kCFUserNotificationAlertHeaderKey;
  v2 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v3 = [v2 localizedStringForKey:@"INSTALL_DISK_SPACE_HEADER" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v23[0] = v3;
  v22[1] = kCFUserNotificationAlertMessageKey;
  v4 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v5 = [v4 localizedStringForKey:@"INSTALL_DISK_SPACE_MUST_UNPAIR" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v23[1] = v5;
  v22[2] = kCFUserNotificationAlternateButtonTitleKey;
  v6 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v7 = [v6 localizedStringForKey:@"UNPAIR" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v23[2] = v7;
  v22[3] = kCFUserNotificationDefaultButtonTitleKey;
  v8 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/SoftwareUpdateBridge.framework"];
  v9 = [v8 localizedStringForKey:@"CLOSE_DIALOG" value:&stru_10002D9A0 table:@"SoftwareUpdateBridge"];
  v23[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];

  error = -1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v10);
  if (!v16[3] || error)
  {
    v12 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v21 = error;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[SpaceNotification]: failed to display notification: %{public}d", buf, 8u);
    }

    v13 = v16[3];
    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000038FC;
    v14[3] = &unk_10002C7E0;
    v14[4] = &v15;
    dispatch_async(v11, v14);
  }

  _Block_object_dispose(&v15, 8);
}

@end