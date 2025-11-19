@interface CSDIncomingCallFilter
- (BOOL)_doNotDisturbAllowsCallFromSourceAddress:(id)a3 providerIdentifier:(id)a4;
- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)a3;
- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)a3 countryCode:(id)a4;
- (BOOL)callDirectoryExtensionsAllowCallFromPhoneNumbers:(id)a3 error:(id *)a4;
- (BOOL)isOnEmergencyCall;
- (BOOL)liveLookupExtensionsAllowCallFromHandle:(id)a3;
- (BOOL)systemAllowsCallsFromSourceAddress:(id)a3 providerIdentifier:(id)a4;
- (CSDIncomingCallFilter)init;
- (CSDIncomingCallFilter)initWithDataSource:(id)a3 deviceLockObserver:(id)a4 callCenterObserver:(id)a5 callDirectoryStoreBuilder:(id)a6 callDirectoryManager:(id)a7 contactStore:(id)a8 featureFlags:(id)a9 queue:(id)a10;
- (id)_callDirectoryPhoneNumberVariantsForSourceAddress:(id)a3 countryCode:(id)a4;
- (id)_callFilterBlock;
- (id)blockedByExtension:(id)a3;
- (void)callsChangedForCallCenterObserver:(id)a3;
- (void)setOnEmergencyCall:(BOOL)a3;
@end

@implementation CSDIncomingCallFilter

- (CSDIncomingCallFilter)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000286B4;
  v14 = sub_1000328E4;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001ADD7C;
  block[3] = &unk_10061ABF0;
  v8 = self;
  v9 = &v10;
  v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.incomingcallfilter", 0);
  v2 = v8;
  v3 = v7;
  dispatch_sync(v3, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (CSDIncomingCallFilter)initWithDataSource:(id)a3 deviceLockObserver:(id)a4 callCenterObserver:(id)a5 callDirectoryStoreBuilder:(id)a6 callDirectoryManager:(id)a7 contactStore:(id)a8 featureFlags:(id)a9 queue:(id)a10
{
  v38 = a3;
  v37 = a4;
  v36 = a5;
  v17 = a6;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v18 = a10;
  v43.receiver = self;
  v43.super_class = CSDIncomingCallFilter;
  v19 = [(CSDIncomingCallFilter *)&v43 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, a10);
    objc_storeStrong(&v20->_dataSource, a3);
    objc_storeStrong(&v20->_featureFlags, a9);
    if (([(TUFeatureFlags *)v20->_featureFlags communicationTrustAdoption]& 1) == 0)
    {
      dataSource = v20->_dataSource;
      v22 = [(CSDIncomingCallFilter *)v20 _callFilterBlock];
      [(CSDIncomingCallFilterDataSource *)dataSource setFilterBlock:v22];
    }

    v20->_twoTimeCallthroughInterval = 180.0;
    objc_storeStrong(&v20->_deviceLockObserver, a4);
    objc_storeStrong(&v20->_callCenterObserver, a5);
    [(CSDCallCenterObserver *)v20->_callCenterObserver setTriggers:1];
    [(CSDCallCenterObserver *)v20->_callCenterObserver setDelegate:v20];
    v23 = objc_alloc_init(CXCallDirectorySanitizer);
    callDirectorySanitizer = v20->_callDirectorySanitizer;
    v20->_callDirectorySanitizer = v23;

    v25 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v20->_callProviderManager;
    v20->_callProviderManager = v25;

    v27 = [(TUCallProviderManager *)v20->_callProviderManager emergencyProvider];
    v28 = [v27 identifier];
    v29 = [v28 copy];
    emergencyProviderIdentifier = v20->_emergencyProviderIdentifier;
    v20->_emergencyProviderIdentifier = v29;

    objc_storeStrong(&v20->_callDirectoryManager, a7);
    objc_storeStrong(&v20->_contactStore, a8);
    objc_initWeak(&location, v20);
    deviceLockObserver = v20->_deviceLockObserver;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1001AE23C;
    v39[3] = &unk_10061D920;
    objc_copyWeak(&v41, &location);
    v40 = v17;
    [(CSDDeviceLockStateObserver *)deviceLockObserver performBlockAfterFirstUnlock:v39];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v20;
}

- (id)_callFilterBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001AE38C;
  v4[3] = &unk_10061D948;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (BOOL)_doNotDisturbAllowsCallFromSourceAddress:(id)a3 providerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v8 = [(CSDIncomingCallFilter *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AE6F8;
  v12[3] = &unk_10061D970;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)a3
{
  v4 = a3;
  v5 = [(CSDIncomingCallFilter *)self dataSource];
  v6 = [v5 networkCountryCode];
  LOBYTE(self) = [(CSDIncomingCallFilter *)self callDirectoryAllowsCallFromSourceAddress:v4 countryCode:v6];

  return self;
}

- (BOOL)callDirectoryAllowsCallFromSourceAddress:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 destinationIdIsPhoneNumber])
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sourceAddress is phone number, continuing", buf, 2u);
    }

    v9 = [(CSDIncomingCallFilter *)self contactStore];
    v42 = CNContactPhoneNumbersKey;
    v10 = [NSArray arrayWithObjects:&v42 count:1];
    v11 = [v9 contactForDestinationId:v6 keysToFetch:v10];

    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "contact=%@", buf, 0xCu);
    }

    if (v11)
    {
      v13 = 1;
LABEL_38:

      goto LABEL_39;
    }

    v14 = [v6 copy];
    v15 = [(CSDIncomingCallFilter *)self callDirectoryStore];

    if (v15)
    {
      v16 = [(CSDIncomingCallFilter *)self _callDirectoryPhoneNumberVariantsForSourceAddress:v6 countryCode:v7];
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "phoneNumberVariants: %@", buf, 0xCu);
      }

      if ([v16 count])
      {
        v38 = 0;
        v33 = [(CSDIncomingCallFilter *)self callDirectoryExtensionsAllowCallFromPhoneNumbers:v16 error:&v38];
        v18 = v38;
        if (v18)
        {
          v19 = sub_100004778();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1004790E0();
          }
        }

        v32 = v18;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v20 = v16;
        v21 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v35;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v35 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v34 + 1) + 8 * i);
              v26 = [v25 length];
              if (v26 > [v6 length])
              {
                v27 = [v25 copy];

                v14 = v27;
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v34 objects:v39 count:16];
          }

          while (v22);
        }

        v11 = 0;
        if (!v33)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    v28 = [(CSDIncomingCallFilter *)self callDirectoryManager];

    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = sub_100004778();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "callDirectory allowed call, checking live blocking info using qualifiedNumber: %@", buf, 0xCu);
    }

    if ([(CSDIncomingCallFilter *)self liveLookupExtensionsAllowCallFromHandle:v14])
    {
LABEL_33:
      v13 = 1;
LABEL_37:

      goto LABEL_38;
    }

LABEL_34:
    v30 = sub_100004778();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v6;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Disallowing call from source address %@ since blocked by call directory or live caller id lookup", buf, 0xCu);
    }

    v13 = 0;
    goto LABEL_37;
  }

  v13 = 1;
LABEL_39:

  return v13;
}

- (BOOL)callDirectoryExtensionsAllowCallFromPhoneNumbers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CSDIncomingCallFilter *)self callDirectoryStore];
  LOBYTE(a4) = [v7 containsBlockingEntryForEnabledExtensionWithPhoneNumberInArray:v6 error:a4];

  return a4 ^ 1;
}

- (BOOL)liveLookupExtensionsAllowCallFromHandle:(id)a3
{
  v4 = a3;
  v5 = [(CSDIncomingCallFilter *)self callDirectoryManager];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Checking live blocking info using handle: %@", &v12, 0xCu);
  }

  v7 = [(CSDIncomingCallFilter *)self callDirectoryManager];
  v8 = [v7 fetchLiveBlockingInfoForHandle:v4];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disallowing call from source address %@ since blocked by live caller id lookup", &v12, 0xCu);
    }

    v10 = 0;
  }

  else
  {
LABEL_8:
    v10 = 1;
  }

  return v10;
}

- (BOOL)systemAllowsCallsFromSourceAddress:(id)a3 providerIdentifier:(id)a4
{
  v6 = a3;
  v7 = [(CSDIncomingCallFilter *)self _doNotDisturbAllowsCallFromSourceAddress:v6 providerIdentifier:a4];
  if (!v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Disallowing call with sourceAddress %@ since _doNotDisturbAllowsCallFromSourceAddress returned NO", &v10, 0xCu);
    }
  }

  return v7;
}

- (id)blockedByExtension:(id)a3
{
  v4 = a3;
  v5 = [(CSDIncomingCallFilter *)self callDirectoryStore];
  if (!v5 || (v6 = v5, v7 = [v4 destinationIdIsPhoneNumber], v6, !v7))
  {
LABEL_13:
    v17 = [(CSDIncomingCallFilter *)self callDirectoryManager];
    if (v17 && (v18 = v17, v19 = [v4 destinationIdIsPhoneNumber], v18, v19))
    {
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "callDirectory allowed call, checking live blocking info", buf, 2u);
      }

      v21 = [(CSDIncomingCallFilter *)self callDirectoryManager];
      v14 = [v21 firstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:v4];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_19;
  }

  v8 = [(CSDIncomingCallFilter *)self dataSource];
  v9 = [v8 networkCountryCode];
  v10 = [(CSDIncomingCallFilter *)self _callDirectoryPhoneNumberVariantsForSourceAddress:v4 countryCode:v9];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "phoneNumberVariants: %@", buf, 0xCu);
  }

  if (![v10 count])
  {

    goto LABEL_13;
  }

  v12 = [(CSDIncomingCallFilter *)self callDirectoryStore];
  v13 = [v10 objectAtIndexedSubscript:0];
  v23 = 0;
  v14 = [v12 firstEnabledBlockingExtensionIdentifierForPhoneNumber:v13 error:&v23];
  v15 = v23;

  if (v15)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1004790E0();
    }
  }

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_19:

  return v14;
}

- (id)_callDirectoryPhoneNumberVariantsForSourceAddress:(id)a3 countryCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSMutableArray array];
  v9 = [[TUPhoneNumber alloc] initWithDigits:v7 countryCode:v6];

  v10 = [v9 digits];

  if (v10)
  {
    v11 = [(CSDIncomingCallFilter *)self callDirectorySanitizer];
    v12 = [v9 digits];
    v10 = [v11 canonicalizedPhoneNumber:v12];

    if (v10)
    {
      [v8 addObject:v10];
    }
  }

  v13 = [v9 unformattedInternationalRepresentation];
  if (v13)
  {
    v14 = [(CSDIncomingCallFilter *)self callDirectorySanitizer];
    v15 = [v14 canonicalizedPhoneNumber:v13];

    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    v16 = [NSLocale ITUCountryCodeForISOCountryCode:v6];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [NSString stringWithFormat:@"%ld%@", v16, v10];
LABEL_10:
      [v8 addObject:v15];
LABEL_11:
    }
  }

  v17 = [v8 copy];

  return v17;
}

- (BOOL)isOnEmergencyCall
{
  v3 = [(CSDIncomingCallFilter *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_onEmergencyCall;
}

- (void)setOnEmergencyCall:(BOOL)a3
{
  v5 = [(CSDIncomingCallFilter *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_onEmergencyCall = a3;
}

- (void)callsChangedForCallCenterObserver:(id)a3
{
  v4 = a3;
  v5 = +[TUCallCenter sharedInstance];
  v6 = [v5 queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001AF544;
  v8[3] = &unk_100619D88;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_async(v6, v8);
}

@end