@interface CSDThumperPushHandler
- (id)serviceDescription;
- (void)displayIncomingPinCode:(id)a3 fromID:(id)a4 completionHandler:(id)a5;
- (void)displayPinMessageForDevice:(id)a3 completionHandler:(id)a4;
- (void)displayPinRequestFailure;
- (void)displayServiceConfirmationWithCompletionHandler:(id)a3;
- (void)enrollDevice:(id)a3 forSenderIdentityUUID:(id)a4;
- (void)pinCodeEnteredSuccessfully:(BOOL)a3 cancelled:(BOOL)a4 onPrimaryDevice:(id)a5;
- (void)unenrollDevice:(id)a3;
- (void)updateUINotification;
@end

@implementation CSDThumperPushHandler

- (id)serviceDescription
{
  v2 = TUBundle();
  v3 = TUStringKeyForNetwork();
  v4 = [v2 localizedStringForKey:v3 value:&stru_100631E68 table:@"TelephonyUtilities"];

  return v4;
}

- (void)enrollDevice:(id)a3 forSenderIdentityUUID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling relay calling on secondary device %@.", &v11, 0xCu);
  }

  v8 = [v5 uniqueIDOverride];
  [TUCallCapabilities setRelayCallingEnabled:1 forDeviceWithID:v8];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activating Thumper calling on secondary device %@ for telephony subscription with UUID %@.", &v11, 0x16u);
  }

  v10 = [v5 uniqueIDOverride];
  [TUCallCapabilities setThumperCallingAllowed:1 onSecondaryDeviceWithID:v10 forSenderIdentityWithUUID:v6];
}

- (void)unenrollDevice:(id)a3
{
  v4 = [a3 uniqueIDOverride];
  [TUCallCapabilities setThumperCallingAllowed:0 onSecondaryDeviceWithID:v4];

  [(CSDThumperPushHandler *)self updateUINotification];
}

- (void)displayPinMessageForDevice:(id)a3 completionHandler:(id)a4
{
  v32 = a4;
  v5 = a3;
  v31 = [v5 name];
  v6 = TUStringKeyForNetwork();
  v7 = [v5 normalizedDeviceType];

  v33 = [v6 stringByAppendingFormat:@"_%@", v7];

  v8 = TUBundle();
  v30 = [v8 localizedStringForKey:v33 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v9 = TUBundle();
  v10 = TUStringKeyForNetwork();
  v29 = [v9 localizedStringForKey:v10 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v11 = TUBundle();
  v28 = [v11 localizedStringForKey:@"ALLOW" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v12 = TUBundle();
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v27 = IMUserNotificationTitleKey;
  v14 = [NSString stringWithFormat:v30, v31];
  v15 = IMUserNotificationMessageKey;
  v16 = [NSArray arrayWithObject:&stru_100631E68];
  v17 = IMUserNotificationTextFieldValuesKey;
  v18 = [NSArray arrayWithObject:&stru_100631E68];
  v19 = IMUserNotificationTextFieldTitlesKey;
  v20 = IMUserNotificationDefaultButtonTitleKey;
  v21 = IMUserNotificationAlternateButtonTitleKey;
  v22 = [NSNumber numberWithInt:5];
  v23 = [NSDictionary dictionaryWithObjectsAndKeys:v29, v27, v14, v15, v16, v17, v18, v19, v28, v20, v13, v21, v22, kCFUserNotificationKeyboardTypesKey, 0];

  v24 = [IMUserNotification userNotificationWithIdentifier:@"PrimaryDeviceNotification" timeout:3 alertLevel:0 displayFlags:v23 displayInformation:0.0];
  v25 = +[IMUserNotificationCenter sharedInstance];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10010B42C;
  v34[3] = &unk_10061BC40;
  v35 = v32;
  v26 = v32;
  [v25 addUserNotification:v24 listener:0 completionHandler:v34];
}

- (void)displayServiceConfirmationWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing service confirmation dialog to user", buf, 2u);
  }

  v5 = TUBundle();
  v6 = TUStringKeyForNetwork();
  v7 = [v5 localizedStringForKey:v6 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v8 = TUBundle();
  v9 = TUStringKeyForNetwork();
  v10 = [v8 localizedStringForKey:v9 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v11 = TUBundle();
  v12 = [v11 localizedStringForKey:@"THUMPER_PUSH_HANDLER_CONSENT_ALERT_ENABLE" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v13 = TUBundle();
  v14 = [v13 localizedStringForKey:@"THUMPER_PUSH_HANDLER_CONSENT_ALERT_CANCEL" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v15 = [NSDictionary dictionaryWithObjectsAndKeys:v10, IMUserNotificationTitleKey, v7, IMUserNotificationMessageKey, v12, IMUserNotificationDefaultButtonTitleKey, v14, IMUserNotificationAlternateButtonTitleKey, 0];
  v16 = [IMUserNotification userNotificationWithIdentifier:@"SecondaryDeviceNotification" timeout:3 alertLevel:0 displayFlags:v15 displayInformation:0.0];
  v17 = +[IMUserNotificationCenter sharedInstance];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10010B824;
  v19[3] = &unk_10061BC40;
  v20 = v3;
  v18 = v3;
  [v17 addUserNotification:v16 listener:0 completionHandler:v19];
}

- (void)pinCodeEnteredSuccessfully:(BOOL)a3 cancelled:(BOOL)a4 onPrimaryDevice:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = v6;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PIN code entered with success=%d cancelled=%d", v11, 0xEu);
  }

  v9 = +[IMUserNotificationCenter sharedInstance];
  [v9 removeNotificationsForServiceIdentifier:@"PrimaryDeviceNotification"];

  v10 = +[IMUserNotificationCenter sharedInstance];
  [v10 removeNotificationsForServiceIdentifier:@"SecondaryDeviceNotification"];

  [(CSDThumperPushHandler *)self updateUINotification];
  if (v6)
  {
    [TUCallCapabilities setRelayCallingEnabled:1];
    [TUCallCapabilities setThumperCallingEnabled:1];
  }
}

- (void)displayIncomingPinCode:(id)a3 fromID:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device Pin Exchange received an incoming approval request", buf, 2u);
  }

  v11 = +[CSDThumperIDSService sharedInstance];
  v12 = [v11 deviceForFromID:v8];

  if ([v12 supportsPhoneCalls])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v12 linkedUserURIs];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        v19 = IDSCopyRawAddressForDestination();
        if (IMStringIsPhoneNumber())
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v20 = IMFormattedDisplayStringForNumber();

      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_12:
    }

    v21 = +[CSDThumperIDSService sharedInstance];
    v22 = [v21 service];
    v23 = [v22 uriForFromID:v8];

    v20 = IDSCopyRawAddressForDestination();
LABEL_17:
    v24 = TUBundle();
    v25 = TUStringKeyForNetworkAndProduct();
    v26 = [v24 localizedStringForKey:v25 value:&stru_100631E68 table:@"TelephonyUtilities"];

    v27 = TUBundle();
    v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_100631E68 table:@"TelephonyUtilities"];

    v29 = [NSString stringWithFormat:v26, v20, v7];
    v30 = [IMUserNotification userNotificationWithIdentifier:@"SecondaryDeviceNotification" title:v29 message:0 defaultButton:v28 alternateButton:0 otherButton:0];

    if (v30)
    {
      [v30 setUsesNotificationCenter:0];
      [v30 setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
      v31 = +[IMUserNotificationCenter sharedInstance];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10010BE30;
      v32[3] = &unk_10061BC40;
      v33 = v9;
      [v31 addUserNotification:v30 listener:0 completionHandler:v32];
    }
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] We received an incoming pin code alert from a non-telephony device: %@", buf, 0xCu);
    }
  }
}

- (void)displayPinRequestFailure
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request for pin exchange failed", v14, 2u);
  }

  v3 = TUBundle();
  v4 = TUStringKeyForNetwork();
  v5 = [v3 localizedStringForKey:v4 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v6 = TUBundle();
  v7 = TUStringKeyForNetworkAndProduct();
  v8 = [v6 localizedStringForKey:v7 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v9 = TUBundle();
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v11 = [IMUserNotification userNotificationWithIdentifier:@"SecondaryDeviceNotification" title:v5 message:v8 defaultButton:v10 alternateButton:0 otherButton:0];
  v12 = v11;
  if (v11)
  {
    [v11 setUsesNotificationCenter:0];
    [v12 setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
    v13 = +[IMUserNotificationCenter sharedInstance];
    [v13 addUserNotification:v12 listener:0 completionHandler:0];
  }
}

- (void)updateUINotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = TUCallCapabilitiesThumperPinAlertCompletedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

@end