@interface CSDPinExchangeController
- (BOOL)sendApprovalDisplayPinToDevice:(id)a3;
- (BOOL)sendIDSAction:(id)a3 toDevice:(id)a4;
- (BOOL)sendIDSAction:(id)a3 toDevices:(id)a4;
- (CSDPinExchangeController)initWithDelegate:(id)a3;
- (id)allIDSTelephonyDevices;
- (id)idsDeviceFromUniqueID:(id)a3;
- (void)cancelPinRequests;
- (void)displayErrorNotificationWithMessage:(id)a3;
- (void)displayMismatchedAccountsNotification;
- (void)displayPinErrorNotification;
- (void)displaySlotsFullNotification;
- (void)removeErrorNotifications;
- (void)requestPinFromDevice:(id)a3;
- (void)sendApprovalResponseToDevice:(id)a3 enteredCorrectly:(BOOL)a4 wasCancelled:(BOOL)a5;
- (void)sendPinCodeAndPromptForResponseToDevice:(id)a3 forSenderIdentityUUID:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation CSDPinExchangeController

- (CSDPinExchangeController)initWithDelegate:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSDPinExchangeController;
  v6 = [(CSDPinExchangeController *)&v11 init];
  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting up Pin Exchange controller", v10, 2u);
    }

    objc_storeStrong(&v6->_pinExchangeDelegate, a3);
    v8 = +[CSDThumperIDSService sharedInstance];
    [v8 addServiceDelegate:v6 queue:&_dispatch_main_q];
  }

  return v6;
}

- (void)requestPinFromDevice:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting PIN from device %@", buf, 0xCu);
  }

  if ((+[TUCallCapabilities accountsSupportSecondaryCalling]& 1) != 0)
  {
    v6 = [(CSDPinExchangeController *)self pinExchangeDelegate];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100143768;
    v8[3] = &unk_10061C5C0;
    v8[4] = self;
    v9 = v4;
    [v6 displayServiceConfirmationWithCompletionHandler:v8];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] accountsSupportSecondaryCalling=NO. Displaying mismatched accounts notification", buf, 2u);
    }

    [(CSDPinExchangeController *)self displayMismatchedAccountsNotification];
  }
}

- (void)cancelPinRequests
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling all PIN requests", buf, 2u);
  }

  v4 = [(CSDPinExchangeController *)self allIDSTelephonyDevices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(CSDPinExchangeController *)self sendIDSAction:@"CSDPinExchangeActionCancelledSecondary" toDevice:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)idsDeviceFromUniqueID:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[CSDThumperIDSService sharedInstance];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uniqueID];
        v11 = [v10 isEqualToString:v3];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)allIDSTelephonyDevices
{
  v2 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = +[CSDThumperIDSService sharedInstance];
  v4 = [v3 devices];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsPhoneCalls])
        {
          [v2 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)sendPinCodeAndPromptForResponseToDevice:(id)a3 forSenderIdentityUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uniqueID];
  v9 = [(CSDPinExchangeController *)self idsDeviceFromUniqueID:v8];

  if (v9)
  {
    if ([(CSDPinExchangeController *)self sendApprovalDisplayPinToDevice:v9])
    {
      [(CSDPinExchangeController *)self removeErrorNotifications];
      objc_initWeak(location, self);
      v10 = [(CSDPinExchangeController *)self pinExchangeDelegate];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100143DB4;
      v14[3] = &unk_10061C5E8;
      objc_copyWeak(&v17, location);
      v15 = v9;
      v16 = v7;
      [v10 displayPinMessageForDevice:v15 completionHandler:v14];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 uniqueID];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find device for unique ID %@", location, 0xCu);
    }
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10047610C(v13);
  }

LABEL_10:
}

- (BOOL)sendApprovalDisplayPinToDevice:(id)a3
{
  v4 = a3;
  v5 = [(CSDPinExchangeController *)self pendingCodesToDevicesForApproval];
  v6 = [v4 uniqueID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 uniqueID];
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to send PIN code because we already have one pending for device with unique ID %@", &v19, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = [(CSDPinExchangeController *)self randomSixDigitCode];
    if (!self->_pendingCodesToDevicesForApproval)
    {
      v12 = +[NSMutableDictionary dictionary];
      pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
      self->_pendingCodesToDevicesForApproval = v12;
    }

    v14 = [NSNumber numberWithUnsignedInteger:v11];
    v15 = self->_pendingCodesToDevicesForApproval;
    v16 = [v4 uniqueID];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending a PIN code to device %@ to display to enroll them into Thumper", &v19, 0xCu);
    }

    v10 = [(CSDPinExchangeController *)self sendIDSAction:@"CSDPinExchangeActionSendPIN" toDevice:v4];
  }

  return v10;
}

- (void)sendApprovalResponseToDevice:(id)a3 enteredCorrectly:(BOOL)a4 wasCancelled:(BOOL)a5
{
  v6 = @"CSDPinExchangeActionUnapproved";
  if (a4)
  {
    v6 = @"CSDPinExchangeActionApproved";
  }

  if (a5)
  {
    v7 = @"CSDPinExchangeActionCancelledPrimary";
  }

  else
  {
    v7 = v6;
  }

  [(CSDPinExchangeController *)self sendIDSAction:v7 toDevice:a3];
}

- (BOOL)sendIDSAction:(id)a3 toDevice:(id)a4
{
  v10 = a4;
  v6 = a4;
  v7 = a3;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  LOBYTE(a3) = [(CSDPinExchangeController *)self sendIDSAction:v7 toDevices:v8, v10];
  return a3;
}

- (BOOL)sendIDSAction:(id)a3 toDevices:(id)a4
{
  v5 = a3;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a4;
  v37 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v37)
  {
    v6 = 1;
    v35 = IDSSendMessageOptionTimeoutKey;
    v36 = *v48;
    p_cache = &OBJC_METACLASS___CSDInterventionProvider.cache;
    do
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = IDSCopyIDForDevice();
        v11 = +[NSMutableDictionary dictionary];
        [v11 setObject:v5 forKeyedSubscript:@"CSDPinExchangeActionKey"];
        v12 = [p_cache + 293 sharedInstance];
        v13 = [v12 callerID];

        if ([v13 length])
        {
          [v11 setObject:v13 forKeyedSubscript:@"CSDPinExchangeCallerIDKey"];
        }

        else
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100476150(v59, &v60, v14);
          }
        }

        if ([(__CFString *)v5 isEqualToString:@"CSDPinExchangeActionSendPIN"])
        {
          pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
          v16 = [v9 uniqueID];
          v17 = [(NSMutableDictionary *)pendingCodesToDevicesForApproval objectForKey:v16];

          if (v17)
          {
            [v11 setObject:v17 forKeyedSubscript:@"CSDPinExchangePinKey"];
          }
        }

        v43 = v13;
        v18 = sub_100004778();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v54 = v5;
          v55 = 2112;
          v56 = v9;
          v57 = 2112;
          v58 = v11;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending IDS action %@ to device %@ with message %@", buf, 0x20u);
        }

        v44 = v11;
        v19 = JWEncodeDictionary();
        v42 = [v19 _FTCopyGzippedData];
        v20 = [NSDictionary dictionaryWithObject:"dictionaryWithObject:forKey:" forKey:?];
        v51 = v35;
        v52 = &off_10063ECD8;
        v21 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        if (v20)
        {
          v39 = v19;
          v41 = v6;
          v22 = [p_cache + 293 sharedInstance];
          v23 = [v22 service];
          v40 = v10;
          v24 = IMSingleObjectArray();
          [v24 __imSetFromArray];
          v26 = v25 = v5;
          v45 = 0;
          v46 = 0;
          v38 = v21;
          v27 = [v23 sendMessage:v20 fromAccount:0 toDestinations:v26 priority:300 options:v21 identifier:&v46 error:&v45];
          v28 = v46;
          v29 = v45;

          v5 = v25;
          if (v27 && [(__CFString *)v25 isEqualToString:@"CSDPinExchangeActionRequestPIN"])
          {
            [(CSDPinExchangeController *)self setOutgoingPinRequestIdentifier:v28];
          }

          v30 = sub_100004778();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v31 = @"NO";
            if (v27)
            {
              v31 = @"YES";
            }

            v54 = v31;
            v55 = 2112;
            v56 = v29;
            v57 = 2112;
            v58 = v28;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Thumper IDS action sent to device with success: %@ error: %@ identifier: %@", buf, 0x20u);
          }

          v10 = v40;
          v6 = v41 & v27;
          p_cache = (&OBJC_METACLASS___CSDInterventionProvider + 16);
          v21 = v38;
          v19 = v39;
        }

        else
        {
          v28 = 0;
          v29 = 0;
        }
      }

      v37 = [obj countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v37);
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6 & 1;
}

- (void)displayErrorNotificationWithMessage:(id)a3
{
  v4 = a3;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v7 = [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate serviceDescription];
  v8 = [IMUserNotification userNotificationWithIdentifier:@"com.apple.telephonyutilities.callservicesd.pinexchangeerror" title:v7 message:v4 defaultButton:v6 alternateButton:0 otherButton:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001449CC;
  block[3] = &unk_100619D38;
  v11 = v8;
  v9 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeErrorNotifications
{
  v2 = +[IMUserNotificationCenter sharedInstance];
  [v2 removeNotificationsForServiceIdentifier:@"com.apple.telephonyutilities.callservicesd.pinexchangeerror"];
}

- (void)displayPinErrorNotification
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Displaying PIN error notification", v6, 2u);
  }

  v4 = TUBundle();
  v5 = [v4 localizedStringForKey:@"INCORRECT_PIN_ENTERED" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [(CSDPinExchangeController *)self displayErrorNotificationWithMessage:v5];
}

- (void)displayMismatchedAccountsNotification
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Displaying mismatched accounts notification", v8, 2u);
  }

  v4 = objc_alloc_init(TUFeatureFlags);
  [v4 appleAccountRebrandEnabled];
  v5 = TUBundle();
  v6 = TUStringKeyForNetwork();
  v7 = [v5 localizedStringForKey:v6 value:&stru_100631E68 table:@"TelephonyUtilities"];
  [(CSDPinExchangeController *)self displayErrorNotificationWithMessage:v7];
}

- (void)displaySlotsFullNotification
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Displaying slots full notification", v6, 2u);
  }

  v4 = TUBundle();
  v5 = [v4 localizedStringForKey:@"MAX_SLOTS_FILLED" value:&stru_100631E68 table:@"TelephonyUtilities"];
  [(CSDPinExchangeController *)self displayErrorNotificationWithMessage:v5];
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a3;
  v11 = a6;
  v12 = [a5 objectForKey:@"CSDPinExchangeCompressedDataKey"];
  v13 = [v12 _FTDecompressData];

  v14 = JWDecodeDictionary();
  v15 = +[CSDThumperIDSService sharedInstance];
  v16 = [v15 deviceForFromID:v11];

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v65 = v10;
    v66 = 2112;
    v67 = v16;
    v68 = 1024;
    v69 = [v16 isHSATrusted];
    v70 = 2112;
    v71 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received message for service %@ from device %@ (isHSATrusted=%d): %@", buf, 0x26u);
  }

  v18 = [v14 objectForKeyedSubscript:@"CSDPinExchangeActionKey"];
  v19 = [v14 objectForKeyedSubscript:@"CSDPinExchangeCallerIDKey"];
  if ([v18 isEqualToString:@"CSDPinExchangeActionRequestPIN"])
  {
    v20 = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];

    if (v20)
    {
      v21 = sub_100004778();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring pin request: There is already a pending pin request that has not yet completed.", buf, 2u);
      }

      goto LABEL_9;
    }

    v56 = objc_alloc_init(TUCallProviderManager);
    v23 = [v56 faceTimeProvider];
    v24 = [v23 prioritizedSenderIdentities];

    v57 = v24;
    if ([v24 count])
    {
      v55 = self;
      if ([v24 count]== 1)
      {
        v25 = [v24 firstObject];
        v26 = [v25 UUID];

        v27 = sub_100004778();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "One sender identity exists; continuing Thumper registration using UUID %@", buf, 0xCu);
        }

        goto LABEL_48;
      }

      v34 = [v19 length];
      v30 = sub_100004778();
      v35 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        if (v35)
        {
          *buf = 138412546;
          v65 = v19;
          v66 = 2112;
          v67 = v57;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Multiple sender identities exist; checking whether caller ID %@ matches a sender identity in %@", buf, 0x16u);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v27 = v57;
        v26 = [v27 countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v26)
        {
          v50 = v14;
          v51 = v18;
          v52 = v13;
          v53 = v11;
          v54 = v10;
          v36 = *v60;
          while (2)
          {
            for (i = 0; i != v26; i = (i + 1))
            {
              if (*v60 != v36)
              {
                objc_enumerationMutation(v27);
              }

              v38 = v27;
              v39 = *(*(&v59 + 1) + 8 * i);
              v40 = [v39 handle];
              v41 = [v40 isoCountryCode];
              v42 = [TUHandle normalizedPhoneNumberHandleForValue:v19 isoCountryCode:v41];

              if (v40)
              {
                v43 = v42 == 0;
              }

              else
              {
                v43 = 1;
              }

              if (!v43 && [v42 isEqualToHandle:v40])
              {
                v26 = [v39 UUID];

                v11 = v53;
                v10 = v54;
                v13 = v52;
                v18 = v51;
                v27 = v38;
                goto LABEL_47;
              }

              v27 = v38;
            }

            v26 = [v38 countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v11 = v53;
          v10 = v54;
          v13 = v52;
          v18 = v51;
LABEL_47:
          v14 = v50;
        }

LABEL_48:

        if (v26)
        {
          if ([v16 isHSATrusted]&& ([v16 uniqueID], v44 = objc_claimAutoreleasedReturnValue(), v45 = [TUCallCapabilities isRelayCallingEnabledForDeviceWithID:v44], v44, v45))
          {
            v46 = sub_100004778();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Device requesting PIN is HSA trusted. Forgoing PIN exchange and enrolling the device immediately", buf, 2u);
            }

            v47 = [(CSDPinExchangeController *)v55 pinExchangeDelegate];
            [v47 enrollDevice:v16 forSenderIdentityUUID:v26];

            v48 = sub_100004778();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = v16;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Activated Thumper for requesting device %@", buf, 0xCu);
            }

            [(CSDPinExchangeController *)v55 sendIDSAction:@"CSDPinExchangeActionApproved" toDevice:v16];
          }

          else
          {
            v49 = sub_100004778();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v65 = v16;
              v66 = 2112;
              v67 = v26;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received request to enroll device %@ in Thumper for sender identity with UUID %@", buf, 0x16u);
            }

            [(CSDPinExchangeController *)v55 sendPinCodeAndPromptForResponseToDevice:v16 forSenderIdentityUUID:v26];
          }

LABEL_61:

          goto LABEL_62;
        }

LABEL_56:
        v26 = sub_100004778();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting Thumper registration; could not obtain sender identity UUID.", buf, 2u);
        }

        goto LABEL_61;
      }

      if (v35)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting Thumper registration; multiple sender identities exist but caller ID not supplied", buf, 2u);
      }
    }

    else
    {
      v30 = sub_100004778();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1004761CC(v56, v30);
      }
    }

    goto LABEL_56;
  }

  if (![v18 isEqualToString:@"CSDPinExchangeActionSendPIN"])
  {
    if ([v18 isEqualToString:@"CSDPinExchangeActionOneTimeReminder"])
    {
      [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate resetOneTimeMessage];
      goto LABEL_62;
    }

    if ([v18 isEqualToString:@"CSDPinExchangeActionApproved"])
    {
      v28 = self;
      v29 = 1;
    }

    else
    {
      if (![v18 isEqualToString:@"CSDPinExchangeActionUnapproved"])
      {
        if (![v18 isEqualToString:@"CSDPinExchangeActionCancelledPrimary"])
        {
          if (![v18 isEqualToString:@"CSDPinExchangeActionCancelledSecondary"])
          {
            goto LABEL_62;
          }

          v28 = self;
          v29 = 0;
          v31 = 1;
          v32 = v16;
          v33 = 0;
          goto LABEL_25;
        }

        v28 = self;
        v29 = 0;
        v31 = 1;
LABEL_24:
        v32 = v16;
        v33 = 1;
LABEL_25:
        [(CSDPinExchangeController *)v28 handlePINCodeEnteredSuccessfully:v29 canceled:v31 fromDevice:v32 isPrimaryDevice:v33];
        goto LABEL_62;
      }

      v28 = self;
      v29 = 0;
    }

    v31 = 0;
    goto LABEL_24;
  }

  v21 = [v14 objectForKey:@"CSDPinExchangePinKey"];
  pinExchangeDelegate = self->_pinExchangeDelegate;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1001455F8;
  v58[3] = &unk_10061A650;
  v58[4] = self;
  [(CSDPinExchangeDelegate *)pinExchangeDelegate displayIncomingPinCode:v21 fromID:v11 completionHandler:v58];
LABEL_9:

LABEL_62:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = sub_100004778();
  v17 = v16;
  if (v8)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received didSendWithSuccess=YES for message with identifier %@", &v22, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100476264(v14, v15, v17);
    }

    v18 = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];
    v19 = [v18 isEqualToString:v14];

    if (v19)
    {
      [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate displayPinRequestFailure];
    }
  }

  v20 = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];
  v21 = [v20 isEqualToString:v14];

  if (v21)
  {
    [(CSDPinExchangeController *)self setOutgoingPinRequestIdentifier:0];
  }
}

@end