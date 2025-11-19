@interface CSDThumperCapabilitiesMonitor
- (BOOL)shouldEnrollDefaultPairedDeviceForAccountID:(id)a3;
- (BOOL)shouldUnenrollDefaultPairedDeviceForAccountID:(id)a3;
- (BOOL)thumperCallingAllowedOnDefaultPairedDeviceDefault;
- (CSDThumperCapabilitiesMonitor)init;
- (CSDThumperCapabilitiesMonitorDataSource)dataSource;
- (NPSDomainAccessor)domainAccessor;
- (id)thumperCapabilitiesStatesForPreferenceKey:(__CFString *)a3;
- (void)_checkIfDevicesShouldBeUnenrolled;
- (void)_thumperIsNoLongerEnabledForAccountID:(id)a3;
- (void)_thumperIsNoLongerSupportedForAccountID:(id)a3;
- (void)_thumperIsNowEnabledForAccountID:(id)a3;
- (void)_updateDefaultPairedDeviceUniqueIDDefault;
- (void)_updateThumperCallingPreferences;
- (void)didAddCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)didRemoveCapabilitiesForSenderIdentityWithUUID:(id)a3;
- (void)enrollDefaultPairedDevice;
- (void)enrollDefaultPairedDeviceForAccountID:(id)a3;
- (void)handleIDSDeviceListChangedNotification:(id)a3;
- (void)saveThumperCapabilitiesStates:(id)a3 forPreferenceKey:(__CFString *)a4;
- (void)showEmergencyAddressDisclaimerOnSecondaryDevice;
- (void)showReminderNotificationOnSecondaryDevice;
- (void)unenrollDefaultPairedDeviceForAccountID:(id)a3;
- (void)updateState;
@end

@implementation CSDThumperCapabilitiesMonitor

- (CSDThumperCapabilitiesMonitor)init
{
  v10.receiver = self;
  v10.super_class = CSDThumperCapabilitiesMonitor;
  v2 = [(CSDThumperCapabilitiesMonitor *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.thumpercapabilitiesmonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v5;

    [TUCallCapabilities addDelegate:v2 queue:v2->_queue];
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[CSDThumperIDSService sharedInstance];
    [v7 addObserver:v2 selector:"handleIDSDeviceListChangedNotification:" name:@"CSDIDSDeviceListChangedNotification" object:v8];
  }

  return v2;
}

- (void)updateState
{
  v3 = [(CSDThumperCapabilitiesMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9BD4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (NPSDomainAccessor)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [objc_alloc(CUTWeakLinkClass()) initWithDomain:TUBundleIdentifierCallServicesDaemon];
    v5 = self->_domainAccessor;
    self->_domainAccessor = v4;

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (BOOL)thumperCallingAllowedOnDefaultPairedDeviceDefault
{
  v6 = 0;
  v2 = [(CSDThumperCapabilitiesMonitor *)self domainAccessor];
  v3 = [v2 BOOLForKey:@"thumperCallingAllowedOnDefaultPairedDevice" keyExistsAndHasValidFormat:&v6];

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v8 = v6;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "thumperCallingAllowedOnDefaultPairedDeviceDefault keyExists: %d isAllowed: %d", buf, 0xEu);
  }

  return v3 & 1 | ((v6 & 1) == 0);
}

- (void)_thumperIsNoLongerSupportedForAccountID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing Thumper available notification on secondary device for account ID %@", &v6, 0xCu);
  }

  [(CSDThumperCapabilitiesMonitor *)self removeReminderNotificationOnSecondaryDevice];
}

- (void)_thumperIsNowEnabledForAccountID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Displaying Thumper enabled disclaimer on secondary device for account ID %@", &v6, 0xCu);
  }

  [(CSDThumperCapabilitiesMonitor *)self showEmergencyAddressDisclaimerOnSecondaryDevice];
}

- (void)_thumperIsNoLongerEnabledForAccountID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Dismissing Thumper enabled disclaimer on secondary device for account ID %@", &v6, 0xCu);
  }

  [(CSDThumperCapabilitiesMonitor *)self removeEmergencyAddressDisclaimerOnSecondaryDevice];
}

- (void)_updateThumperCallingPreferences
{
  if (+[TUCallCapabilities areCTCapabilitiesValid])
  {
    v39 = self;
    v3 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
    v4 = [v3 thumperCallingCapabilitiesStateByUUID];

    v51 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v44 = v4;
    v5 = [v4 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v61;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v61 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v60 + 1) + 8 * i);
          v11 = [v44 objectForKeyedSubscript:v10];
          v12 = [v11 publiclyAccessibleCopy];

          v13 = [v12 accountID];
          if (v13)
          {
            [v51 setObject:v12 forKeyedSubscript:v13];
          }

          else
          {
            v14 = sub_100004778();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v67 = v10;
              v68 = 2112;
              v69 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not obtain Thumper account identifier for sender identity UUID %@ from data source capabilities state %@", buf, 0x16u);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v7);
    }

    v43 = +[TUCallCapabilities supportsPrimaryCalling];
    v15 = v39;
    v45 = [(CSDThumperCapabilitiesMonitor *)v39 thumperCapabilitiesStatesForPreferenceKey:@"thumperCallingCapabilitiesStates"];
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v67 = v45;
      v68 = 2112;
      v69 = v51;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Comparing cached Thumper capabilities state %@ with data source capabilities state %@", buf, 0x16u);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v17 = [v51 allKeys];
    v46 = [v17 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v46)
    {
      v41 = 0;
      v38 = 0;
      v42 = *v57;
      *&v18 = 138412290;
      v37 = v18;
      v40 = v17;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v57 != v42)
          {
            objc_enumerationMutation(v17);
          }

          v20 = *(*(&v56 + 1) + 8 * j);
          v21 = [v51 objectForKeyedSubscript:{v20, v37}];
          v22 = [v21 isAssociated];
          v23 = [v21 isSupported];
          v50 = [v21 isEnabled];
          v49 = [v21 supportsDefaultPairedDevice];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v24 = v45;
          v25 = [v24 countByEnumeratingWithState:&v52 objects:v64 count:16];
          if (v25)
          {
            v47 = v23;
            v48 = v22;
            v26 = *v53;
            while (2)
            {
              for (k = 0; k != v25; k = k + 1)
              {
                if (*v53 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = *(*(&v52 + 1) + 8 * k);
                v29 = [v28 accountID];
                v30 = TUStringsAreCaseInsensitiveEqual();

                if (v30)
                {
                  LODWORD(v25) = [v28 isAssociated];
                  v32 = [v28 isSupported];
                  v31 = [v28 supportsDefaultPairedDevice];
                  goto LABEL_31;
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v52 objects:v64 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

            v31 = 0;
            v32 = 0;
LABEL_31:
            v17 = v40;
            v23 = v47;
            v22 = v48;
          }

          else
          {
            v31 = 0;
            v32 = 0;
          }

          if (v43)
          {
            if (v31 != v49)
            {
              if (v49)
              {
                [(CSDThumperCapabilitiesMonitor *)v39 enrollDefaultPairedDeviceForAccountID:v20];
              }

              else
              {
                [(CSDThumperCapabilitiesMonitor *)v39 unenrollDefaultPairedDeviceForAccountID:v20];
              }
            }
          }

          else
          {
            v34 = v25 == v22 && v32 == v23;
            if ((v34 || (v22 & 1) == 0 || (v23 & 1) == 0) | v50 & 1)
            {
              v41 |= !v34;
            }

            else
            {
              v35 = sub_100004778();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v37;
                v67 = v20;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Should show Thumper available notification for account ID %@", buf, 0xCu);
              }

              v41 = 1;
              v38 = 1;
            }
          }
        }

        v46 = [v17 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v46);

      v15 = v39;
      if (!(v43 & 1 | ((v41 & 1) == 0)))
      {
        if (v38)
        {
          [(CSDThumperCapabilitiesMonitor *)v39 showReminderNotificationOnSecondaryDevice];
        }

        else
        {
          [(CSDThumperCapabilitiesMonitor *)v39 removeReminderNotificationOnSecondaryDevice];
        }
      }
    }

    else
    {
    }

    v36 = [v51 allValues];
    [(CSDThumperCapabilitiesMonitor *)v15 saveThumperCapabilitiesStates:v36 forPreferenceKey:@"thumperCallingCapabilitiesStates"];
  }
}

- (void)_updateDefaultPairedDeviceUniqueIDDefault
{
  v3 = TUBundleIdentifierTelephonyUtilitiesFramework;
  v4 = CFPreferencesCopyAppValue(@"PreviousDefaultPairedDeviceUniqueID", TUBundleIdentifierTelephonyUtilitiesFramework);
  v5 = +[CSDThumperIDSService sharedInstance];
  v6 = [v5 defaultPairedDevice];
  v7 = [v6 uniqueIDOverride];

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Default paired device unique ID was %@ and is now %@", &v11, 0x16u);
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if ((TUStringsAreEqualOrNil() & 1) == 0)
    {
      CFPreferencesSetAppValue(@"PreviousDefaultPairedDeviceUniqueID", v7, v3);
      CFPreferencesAppSynchronize(v3);
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Check if devices should be enrolled now that the default paired device changed.", &v11, 2u);
      }

      if ([v4 length])
      {
        v10 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
        [v10 removeThumperRegisteredDeviceID:v4 forThumperAccountID:0];
      }

      if ([v7 length])
      {
        [(CSDThumperCapabilitiesMonitor *)self enrollDefaultPairedDevice];
      }
    }
  }
}

- (void)_checkIfDevicesShouldBeUnenrolled
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v3 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
    if (v3)
    {
      v4 = sub_100004778();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Checking to see if any devices have been removed from this iCloud account.", buf, 2u);
      }

      v5 = +[CSDThumperIDSService sharedInstance];
      v6 = [v5 devices];
      v7 = [v6 valueForKey:@"uniqueIDOverride"];
      v8 = [NSSet setWithArray:v7];

      if ([v8 count])
      {
        [v3 localThumperAccounts];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = v29 = 0u;
        v20 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v20)
        {
          v19 = *v27;
          do
          {
            v9 = 0;
            do
            {
              if (*v27 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v21 = v9;
              v10 = *(*(&v26 + 1) + 8 * v9);
              v22 = 0u;
              v23 = 0u;
              v24 = 0u;
              v25 = 0u;
              v11 = [v10 allowedSecondaryDeviceIDs];
              v12 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v23;
                do
                {
                  for (i = 0; i != v13; i = i + 1)
                  {
                    if (*v23 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = *(*(&v22 + 1) + 8 * i);
                    if (([v8 containsObject:v16] & 1) == 0)
                    {
                      v17 = sub_100004778();
                      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v31 = v16;
                        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device with the uniqueID %@ will be unpaired from Thumper because it is no longer on the IDSService.", buf, 0xCu);
                      }

                      [v3 removeThumperRegisteredDeviceID:v16 forThumperAccountID:0];
                    }
                  }

                  v13 = [v11 countByEnumeratingWithState:&v22 objects:v32 count:16];
                }

                while (v13);
              }

              v9 = v21 + 1;
            }

            while ((v21 + 1) != v20);
            v20 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
          }

          while (v20);
        }
      }
    }
  }
}

- (void)didAddCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDThumperCapabilitiesMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling add capabilities for sender identity UUID %@", &v12, 0x16u);
    }

    v8 = [v6 thumperCallingCapabilitiesStateByUUID];
    v9 = [v8 objectForKeyedSubscript:v4];

    v10 = sub_100004778();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Thumper calling preferences update initiated by add capabilities for sender identity UUID %@", &v12, 0xCu);
      }

      [(CSDThumperCapabilitiesMonitor *)self _updateThumperCallingPreferences];
    }

    else
    {
      if (v11)
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Skipping Thumper preferences update; Thumper capabilities state does not exist for UUID %@", &v12, 0xCu);
      }
    }
  }
}

- (void)didRemoveCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDThumperCapabilitiesMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ is handling remove capabilities for sender identity UUID %@", buf, 0x16u);
    }

    v20 = self;

    [v6 secondaryThumperAccounts];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v24 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v21 + 1) + 8 * i) accountID];
          if (v13)
          {
            v14 = [CTXPCContextInfo csd_unknownContextInfoForAccountID:v13];
            v15 = v14;
            if (v14)
            {
              v16 = [v14 uuid];
              v17 = [v16 isEqual:v4];

              if (v17)
              {

                v19 = sub_100004778();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v27 = v4;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Skipping Thumper calling preferences update; unknown context info found for sender identity UUID %@", buf, 0xCu);
                }

                goto LABEL_21;
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Thumper calling preferences update initiated by remove capabilities for sender identity UUID %@", buf, 0xCu);
    }

    [(CSDThumperCapabilitiesMonitor *)v20 _updateThumperCallingPreferences];
LABEL_21:
  }
}

- (void)didChangeThumperCallingCapabilitiesForSenderIdentityWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDThumperCapabilitiesMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling change Thumper calling capabilities for sender identity with UUID %@", &v7, 0x16u);
  }

  [(CSDThumperCapabilitiesMonitor *)self _updateThumperCallingPreferences];
}

- (void)handleIDSDeviceListChangedNotification:(id)a3
{
  v4 = [(CSDThumperCapabilitiesMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB194;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)showReminderNotificationOnSecondaryDevice
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Show a reminder to the user that thumper is now available.", buf, 2u);
  }

  v3 = TUBundle();
  v4 = TUStringKeyForNetwork();
  v5 = [v3 localizedStringForKey:v4 value:&stru_100631E68 table:@"TelephonyUtilities"];

  v6 = TUBundle();
  v7 = [v6 localizedStringForKey:@"NOT_NOW" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v8 = TUBundle();
  v9 = [v8 localizedStringForKey:@"TURN_ON" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v10 = TUThumperCarrierName();
  v11 = [v10 length];
  +[TUCallCapabilities supportsThumperCallingOverCellularData];
  TUBundle();
  if (v11)
    v12 = {;
    v13 = TUStringKeyForNetworkAndProduct();
    v14 = [v12 localizedStringForKey:v13 value:&stru_100631E68 table:@"TelephonyUtilities"];
    v15 = [NSString stringWithFormat:v14, v10];
  }

  else
    v12 = {;
    v13 = TUStringKeyForNetworkAndProduct();
    v15 = [v12 localizedStringForKey:v13 value:&stru_100631E68 table:@"TelephonyUtilities"];
  }

  [IMUserNotification userNotificationWithIdentifier:@"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumpersupported" title:v5 message:v15 defaultButton:v9 alternateButton:v7 otherButton:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB4B4;
  block[3] = &unk_100619D88;
  v19 = v18 = @"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumpersupported";
  v16 = v19;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)showEmergencyAddressDisclaimerOnSecondaryDevice
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Show a disclaimer to the user about their emergency address info now that thumper is enabled.", buf, 2u);
  }

  [(CSDThumperCapabilitiesMonitor *)self removeReminderNotificationOnSecondaryDevice];
  v4 = TUBundle();
  v5 = [v4 localizedStringForKey:@"THUMPER_EMERGENCY_ADDRESS_INFO_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v6 = TUBundle();
  v7 = [v6 localizedStringForKey:@"THUMPER_EMERGENCY_ADDRESS_INFO_MESSAGE" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v8 = TUBundle();
  v9 = [v8 localizedStringForKey:@"PREFERENCES_BUTTON_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];

  v10 = TUBundle();
  v11 = [v10 localizedStringForKey:@"OK" value:&stru_100631E68 table:@"TelephonyUtilities"];

  [IMUserNotification userNotificationWithIdentifier:@"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumperenabled" title:v5 message:v7 defaultButton:v11 alternateButton:v9 otherButton:0];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CB904;
  v13[3] = &unk_100619D88;
  v15 = v14 = @"com.apple.telephonyutilities.callservicesd.thumperpushhandler.secondarydevicethumperenabled";
  v12 = v15;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)saveThumperCapabilitiesStates:(id)a3 forPreferenceKey:(__CFString *)a4
{
  v6 = a3;
  v7 = [(CSDThumperCapabilitiesMonitor *)self queue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v19 = a4;
    v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v21 = 0;
          v15 = [v14 archivedDataWithError:&v21];
          v16 = v21;
          v17 = v16;
          if (v15)
          {
            [v8 addObject:v15];
          }

          else if (v16)
          {
            v18 = sub_100004778();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v27 = v17;
              _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Archiving Thumper capabilities state object failed with error %@", buf, 0xCu);
            }
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);
    }

    a4 = v19;
    v6 = v20;
  }

  else
  {
    v8 = 0;
  }

  CFPreferencesSetAppValue(a4, v8, TUBundleIdentifierTelephonyUtilitiesFramework);
}

- (id)thumperCapabilitiesStatesForPreferenceKey:(__CFString *)a3
{
  v4 = [(CSDThumperCapabilitiesMonitor *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = CFPreferencesCopyAppValue(a3, TUBundleIdentifierTelephonyUtilitiesFramework);
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = +[NSMutableArray array];
      v7 = v5;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (!v8)
      {
        goto LABEL_24;
      }

      v9 = v8;
      v10 = *v21;
      while (1)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = 0;
            v13 = [TUThumperCTCapabilitiesState unarchivedObjectFromData:v12 error:&v19];
            v14 = v19;
            if (v13)
            {
              [v6 addObject:v13];
            }

            else
            {
              v16 = sub_100004778();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v25 = v14;
                _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unarchiving Thumper capabilities state object failed with error %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v14 = sub_100004778();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_17;
            }

            v15 = objc_opt_class();
            *buf = 138412546;
            v25 = v15;
            v26 = 2112;
            v27 = v12;
            v13 = v15;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Archived object was of unexpected class %@: %@", buf, 0x16u);
          }

LABEL_17:
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (!v9)
        {
          goto LABEL_24;
        }
      }
    }

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100473BA8(v5, v7);
    }

    v6 = 0;
LABEL_24:
  }

  else
  {
    v6 = 0;
  }

  v17 = [v6 copy];

  return v17;
}

- (void)enrollDefaultPairedDevice
{
  v3 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localThumperAccounts];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) accountID];
          v11 = [v4 thumperCallingCapabilitiesStateForAccountID:v10];
          if ([v11 supportsDefaultPairedDevice])
          {
            [(CSDThumperCapabilitiesMonitor *)self enrollDefaultPairedDeviceForAccountID:v10];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)enrollDefaultPairedDeviceForAccountID:(id)a3
{
  v8 = a3;
  v4 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  if (v4)
  {
    v5 = +[CSDThumperIDSService sharedInstance];
    v6 = [v5 defaultPairedDevice];
    v7 = [v6 uniqueIDOverride];

    if ([v7 length] && -[CSDThumperCapabilitiesMonitor shouldEnrollDefaultPairedDeviceForAccountID:](self, "shouldEnrollDefaultPairedDeviceForAccountID:", v8))
    {
      [v4 removeThumperRegisteredDeviceID:v7 forThumperAccountID:0];
      [v4 addThumperRegisteredDeviceID:v7 forThumperAccountID:v8];
    }
  }
}

- (void)unenrollDefaultPairedDeviceForAccountID:(id)a3
{
  v8 = a3;
  v4 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  if (v4)
  {
    v5 = +[CSDThumperIDSService sharedInstance];
    v6 = [v5 defaultPairedDevice];
    v7 = [v6 uniqueIDOverride];

    if ([v7 length] && (!v8 || -[CSDThumperCapabilitiesMonitor shouldUnenrollDefaultPairedDeviceForAccountID:](self, "shouldUnenrollDefaultPairedDeviceForAccountID:", v8)))
    {
      [v4 removeThumperRegisteredDeviceID:v7 forThumperAccountID:v8];
    }
  }
}

- (BOOL)shouldEnrollDefaultPairedDeviceForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  if (v5)
  {
    v6 = +[CSDThumperIDSService sharedInstance];
    v7 = [v6 defaultPairedDevice];
    v8 = [v7 uniqueIDOverride];

    v9 = [v5 thumperCallingCapabilitiesStateForAccountID:v4];
    if (+[TUCallCapabilities supportsPrimaryCalling](TUCallCapabilities, "supportsPrimaryCalling") && [v8 length] && (objc_msgSend(v5, "isThumperRegisteredDeviceID:forThumperAccountID:", v8, v4) & 1) == 0 && -[CSDThumperCapabilitiesMonitor thumperCallingAllowedOnDefaultPairedDeviceDefault](self, "thumperCallingAllowedOnDefaultPairedDeviceDefault") && objc_msgSend(v9, "isSupported") && objc_msgSend(v9, "isEnabled"))
    {
      v10 = [v9 supportsDefaultPairedDevice];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldUnenrollDefaultPairedDeviceForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(CSDThumperCapabilitiesMonitor *)self dataSource];
  if (v5)
  {
    v6 = +[CSDThumperIDSService sharedInstance];
    v7 = [v6 defaultPairedDevice];
    v8 = [v7 uniqueIDOverride];

    v9 = [v5 thumperCallingCapabilitiesStateForAccountID:v4];
    if (+[TUCallCapabilities supportsPrimaryCalling](TUCallCapabilities, "supportsPrimaryCalling") && [v8 length] && objc_msgSend(v5, "isThumperRegisteredDeviceID:forThumperAccountID:", v8, v4))
    {
      if ([(CSDThumperCapabilitiesMonitor *)self thumperCallingAllowedOnDefaultPairedDeviceDefault])
      {
        v10 = [v9 supportsDefaultPairedDevice] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 1;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (CSDThumperCapabilitiesMonitorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end