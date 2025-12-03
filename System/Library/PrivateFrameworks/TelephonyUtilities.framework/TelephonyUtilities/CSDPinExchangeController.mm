@interface CSDPinExchangeController
- (BOOL)sendApprovalDisplayPinToDevice:(id)device;
- (BOOL)sendIDSAction:(id)action toDevice:(id)device;
- (BOOL)sendIDSAction:(id)action toDevices:(id)devices;
- (CSDPinExchangeController)initWithDelegate:(id)delegate;
- (id)allIDSTelephonyDevices;
- (id)idsDeviceFromUniqueID:(id)d;
- (void)cancelPinRequests;
- (void)displayErrorNotificationWithMessage:(id)message;
- (void)displayMismatchedAccountsNotification;
- (void)displayPinErrorNotification;
- (void)displaySlotsFullNotification;
- (void)removeErrorNotifications;
- (void)requestPinFromDevice:(id)device;
- (void)sendApprovalResponseToDevice:(id)device enteredCorrectly:(BOOL)correctly wasCancelled:(BOOL)cancelled;
- (void)sendPinCodeAndPromptForResponseToDevice:(id)device forSenderIdentityUUID:(id)d;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation CSDPinExchangeController

- (CSDPinExchangeController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
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

    objc_storeStrong(&v6->_pinExchangeDelegate, delegate);
    v8 = +[CSDThumperIDSService sharedInstance];
    [v8 addServiceDelegate:v6 queue:&_dispatch_main_q];
  }

  return v6;
}

- (void)requestPinFromDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting PIN from device %@", buf, 0xCu);
  }

  if ((+[TUCallCapabilities accountsSupportSecondaryCalling]& 1) != 0)
  {
    pinExchangeDelegate = [(CSDPinExchangeController *)self pinExchangeDelegate];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100143768;
    v8[3] = &unk_10061C5C0;
    v8[4] = self;
    v9 = deviceCopy;
    [pinExchangeDelegate displayServiceConfirmationWithCompletionHandler:v8];
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

  allIDSTelephonyDevices = [(CSDPinExchangeController *)self allIDSTelephonyDevices];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [allIDSTelephonyDevices countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(allIDSTelephonyDevices);
        }

        [(CSDPinExchangeController *)self sendIDSAction:@"CSDPinExchangeActionCancelledSecondary" toDevice:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allIDSTelephonyDevices countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)idsDeviceFromUniqueID:(id)d
{
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[CSDThumperIDSService sharedInstance];
  devices = [v4 devices];

  v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        uniqueID = [v9 uniqueID];
        v11 = [uniqueID isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  devices = [v3 devices];

  v5 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 supportsPhoneCalls])
        {
          [v2 addObject:v9];
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v2;
}

- (void)sendPinCodeAndPromptForResponseToDevice:(id)device forSenderIdentityUUID:(id)d
{
  deviceCopy = device;
  dCopy = d;
  uniqueID = [deviceCopy uniqueID];
  v9 = [(CSDPinExchangeController *)self idsDeviceFromUniqueID:uniqueID];

  if (v9)
  {
    if ([(CSDPinExchangeController *)self sendApprovalDisplayPinToDevice:v9])
    {
      [(CSDPinExchangeController *)self removeErrorNotifications];
      objc_initWeak(location, self);
      pinExchangeDelegate = [(CSDPinExchangeController *)self pinExchangeDelegate];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100143DB4;
      v14[3] = &unk_10061C5E8;
      objc_copyWeak(&v17, location);
      v15 = v9;
      v16 = dCopy;
      [pinExchangeDelegate displayPinMessageForDevice:v15 completionHandler:v14];

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
      uniqueID2 = [deviceCopy uniqueID];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = uniqueID2;
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

- (BOOL)sendApprovalDisplayPinToDevice:(id)device
{
  deviceCopy = device;
  pendingCodesToDevicesForApproval = [(CSDPinExchangeController *)self pendingCodesToDevicesForApproval];
  uniqueID = [deviceCopy uniqueID];
  v7 = [pendingCodesToDevicesForApproval objectForKeyedSubscript:uniqueID];

  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [deviceCopy uniqueID];
      v19 = 138412290;
      v20 = uniqueID2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to send PIN code because we already have one pending for device with unique ID %@", &v19, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    randomSixDigitCode = [(CSDPinExchangeController *)self randomSixDigitCode];
    if (!self->_pendingCodesToDevicesForApproval)
    {
      v12 = +[NSMutableDictionary dictionary];
      pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
      self->_pendingCodesToDevicesForApproval = v12;
    }

    v14 = [NSNumber numberWithUnsignedInteger:randomSixDigitCode];
    v15 = self->_pendingCodesToDevicesForApproval;
    uniqueID3 = [deviceCopy uniqueID];
    [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:uniqueID3];

    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending a PIN code to device %@ to display to enroll them into Thumper", &v19, 0xCu);
    }

    v10 = [(CSDPinExchangeController *)self sendIDSAction:@"CSDPinExchangeActionSendPIN" toDevice:deviceCopy];
  }

  return v10;
}

- (void)sendApprovalResponseToDevice:(id)device enteredCorrectly:(BOOL)correctly wasCancelled:(BOOL)cancelled
{
  v6 = @"CSDPinExchangeActionUnapproved";
  if (correctly)
  {
    v6 = @"CSDPinExchangeActionApproved";
  }

  if (cancelled)
  {
    v7 = @"CSDPinExchangeActionCancelledPrimary";
  }

  else
  {
    v7 = v6;
  }

  [(CSDPinExchangeController *)self sendIDSAction:v7 toDevice:device];
}

- (BOOL)sendIDSAction:(id)action toDevice:(id)device
{
  deviceCopy = device;
  deviceCopy2 = device;
  actionCopy = action;
  v8 = [NSArray arrayWithObjects:&deviceCopy count:1];

  LOBYTE(action) = [(CSDPinExchangeController *)self sendIDSAction:actionCopy toDevices:v8, deviceCopy];
  return action;
}

- (BOOL)sendIDSAction:(id)action toDevices:(id)devices
{
  actionCopy = action;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = devices;
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
        [v11 setObject:actionCopy forKeyedSubscript:@"CSDPinExchangeActionKey"];
        sharedInstance = [p_cache + 293 sharedInstance];
        callerID = [sharedInstance callerID];

        if ([callerID length])
        {
          [v11 setObject:callerID forKeyedSubscript:@"CSDPinExchangeCallerIDKey"];
        }

        else
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100476150(v59, &v60, v14);
          }
        }

        if ([(__CFString *)actionCopy isEqualToString:@"CSDPinExchangeActionSendPIN"])
        {
          pendingCodesToDevicesForApproval = self->_pendingCodesToDevicesForApproval;
          uniqueID = [v9 uniqueID];
          v17 = [(NSMutableDictionary *)pendingCodesToDevicesForApproval objectForKey:uniqueID];

          if (v17)
          {
            [v11 setObject:v17 forKeyedSubscript:@"CSDPinExchangePinKey"];
          }
        }

        v43 = callerID;
        v18 = sub_100004778();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v54 = actionCopy;
          v55 = 2112;
          v56 = v9;
          v57 = 2112;
          v58 = v11;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending IDS action %@ to device %@ with message %@", buf, 0x20u);
        }

        v44 = v11;
        v19 = JWEncodeDictionary();
        _FTCopyGzippedData = [v19 _FTCopyGzippedData];
        v20 = [NSDictionary dictionaryWithObject:"dictionaryWithObject:forKey:" forKey:?];
        v51 = v35;
        v52 = &off_10063ECD8;
        v21 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        if (v20)
        {
          v39 = v19;
          v41 = v6;
          sharedInstance2 = [p_cache + 293 sharedInstance];
          service = [sharedInstance2 service];
          v40 = v10;
          v24 = IMSingleObjectArray();
          [v24 __imSetFromArray];
          v26 = v25 = actionCopy;
          v45 = 0;
          v46 = 0;
          v38 = v21;
          v27 = [service sendMessage:v20 fromAccount:0 toDestinations:v26 priority:300 options:v21 identifier:&v46 error:&v45];
          v28 = v46;
          v29 = v45;

          actionCopy = v25;
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

- (void)displayErrorNotificationWithMessage:(id)message
{
  messageCopy = message;
  v5 = TUBundle();
  v6 = [v5 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

  serviceDescription = [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate serviceDescription];
  v8 = [IMUserNotification userNotificationWithIdentifier:@"com.apple.telephonyutilities.callservicesd.pinexchangeerror" title:serviceDescription message:messageCopy defaultButton:v6 alternateButton:0 otherButton:0];

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

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  serviceCopy = service;
  dCopy = d;
  v12 = [message objectForKey:@"CSDPinExchangeCompressedDataKey"];
  _FTDecompressData = [v12 _FTDecompressData];

  v14 = JWDecodeDictionary();
  v15 = +[CSDThumperIDSService sharedInstance];
  v16 = [v15 deviceForFromID:dCopy];

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v65 = serviceCopy;
    v66 = 2112;
    v67 = v16;
    v68 = 1024;
    isHSATrusted = [v16 isHSATrusted];
    v70 = 2112;
    v71 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received message for service %@ from device %@ (isHSATrusted=%d): %@", buf, 0x26u);
  }

  v18 = [v14 objectForKeyedSubscript:@"CSDPinExchangeActionKey"];
  v19 = [v14 objectForKeyedSubscript:@"CSDPinExchangeCallerIDKey"];
  if ([v18 isEqualToString:@"CSDPinExchangeActionRequestPIN"])
  {
    outgoingPinRequestIdentifier = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];

    if (outgoingPinRequestIdentifier)
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
    faceTimeProvider = [v56 faceTimeProvider];
    prioritizedSenderIdentities = [faceTimeProvider prioritizedSenderIdentities];

    v57 = prioritizedSenderIdentities;
    if ([prioritizedSenderIdentities count])
    {
      selfCopy = self;
      if ([prioritizedSenderIdentities count]== 1)
      {
        firstObject = [prioritizedSenderIdentities firstObject];
        uUID = [firstObject UUID];

        v27 = sub_100004778();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = uUID;
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
        uUID = [v27 countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (uUID)
        {
          v50 = v14;
          v51 = v18;
          v52 = _FTDecompressData;
          v53 = dCopy;
          v54 = serviceCopy;
          v36 = *v60;
          while (2)
          {
            for (i = 0; i != uUID; i = (i + 1))
            {
              if (*v60 != v36)
              {
                objc_enumerationMutation(v27);
              }

              v38 = v27;
              v39 = *(*(&v59 + 1) + 8 * i);
              handle = [v39 handle];
              isoCountryCode = [handle isoCountryCode];
              v42 = [TUHandle normalizedPhoneNumberHandleForValue:v19 isoCountryCode:isoCountryCode];

              if (handle)
              {
                v43 = v42 == 0;
              }

              else
              {
                v43 = 1;
              }

              if (!v43 && [v42 isEqualToHandle:handle])
              {
                uUID = [v39 UUID];

                dCopy = v53;
                serviceCopy = v54;
                _FTDecompressData = v52;
                v18 = v51;
                v27 = v38;
                goto LABEL_47;
              }

              v27 = v38;
            }

            uUID = [v38 countByEnumeratingWithState:&v59 objects:v63 count:16];
            if (uUID)
            {
              continue;
            }

            break;
          }

          dCopy = v53;
          serviceCopy = v54;
          _FTDecompressData = v52;
          v18 = v51;
LABEL_47:
          v14 = v50;
        }

LABEL_48:

        if (uUID)
        {
          if ([v16 isHSATrusted]&& ([v16 uniqueID], v44 = objc_claimAutoreleasedReturnValue(), v45 = [TUCallCapabilities isRelayCallingEnabledForDeviceWithID:v44], v44, v45))
          {
            v46 = sub_100004778();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Device requesting PIN is HSA trusted. Forgoing PIN exchange and enrolling the device immediately", buf, 2u);
            }

            pinExchangeDelegate = [(CSDPinExchangeController *)selfCopy pinExchangeDelegate];
            [pinExchangeDelegate enrollDevice:v16 forSenderIdentityUUID:uUID];

            v48 = sub_100004778();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v65 = v16;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Activated Thumper for requesting device %@", buf, 0xCu);
            }

            [(CSDPinExchangeController *)selfCopy sendIDSAction:@"CSDPinExchangeActionApproved" toDevice:v16];
          }

          else
          {
            v49 = sub_100004778();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v65 = v16;
              v66 = 2112;
              v67 = uUID;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Received request to enroll device %@ in Thumper for sender identity with UUID %@", buf, 0x16u);
            }

            [(CSDPinExchangeController *)selfCopy sendPinCodeAndPromptForResponseToDevice:v16 forSenderIdentityUUID:uUID];
          }

LABEL_61:

          goto LABEL_62;
        }

LABEL_56:
        uUID = sub_100004778();
        if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, uUID, OS_LOG_TYPE_DEFAULT, "[WARN] Aborting Thumper registration; could not obtain sender identity UUID.", buf, 2u);
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
      selfCopy5 = self;
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

          selfCopy5 = self;
          v29 = 0;
          v31 = 1;
          v32 = v16;
          v33 = 0;
          goto LABEL_25;
        }

        selfCopy5 = self;
        v29 = 0;
        v31 = 1;
LABEL_24:
        v32 = v16;
        v33 = 1;
LABEL_25:
        [(CSDPinExchangeController *)selfCopy5 handlePINCodeEnteredSuccessfully:v29 canceled:v31 fromDevice:v32 isPrimaryDevice:v33];
        goto LABEL_62;
      }

      selfCopy5 = self;
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
  [(CSDPinExchangeDelegate *)pinExchangeDelegate displayIncomingPinCode:v21 fromID:dCopy completionHandler:v58];
LABEL_9:

LABEL_62:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v16 = sub_100004778();
  v17 = v16;
  if (successCopy)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received didSendWithSuccess=YES for message with identifier %@", &v22, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100476264(identifierCopy, errorCopy, v17);
    }

    outgoingPinRequestIdentifier = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];
    v19 = [outgoingPinRequestIdentifier isEqualToString:identifierCopy];

    if (v19)
    {
      [(CSDPinExchangeDelegate *)self->_pinExchangeDelegate displayPinRequestFailure];
    }
  }

  outgoingPinRequestIdentifier2 = [(CSDPinExchangeController *)self outgoingPinRequestIdentifier];
  v21 = [outgoingPinRequestIdentifier2 isEqualToString:identifierCopy];

  if (v21)
  {
    [(CSDPinExchangeController *)self setOutgoingPinRequestIdentifier:0];
  }
}

@end