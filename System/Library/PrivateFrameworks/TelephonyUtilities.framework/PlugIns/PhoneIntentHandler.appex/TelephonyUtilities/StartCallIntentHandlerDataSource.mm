@interface StartCallIntentHandlerDataSource
- (BOOL)callRinging;
- (BOOL)callsInProgress;
- (BOOL)expectFoundInAppsContacts;
- (BOOL)expectUpstreamContactRecommendation;
- (BOOL)hasCamera;
- (BOOL)isAirplaneModeEnabled;
- (BOOL)isFaceTimeAudioBlocked;
- (BOOL)isFaceTimeVideoBlocked;
- (BOOL)useLegacyContactResolution;
- (BOOL)useLegacyHandleResolution;
- (CallHistoryDataSource)callHistoryDataSource;
- (EmergencyServicesOverrideProvider)emergencyServicesOverrideProvider;
- (FavoritesDataSource)favoritesDataSource;
- (NSArray)siriEmergencyServices;
- (RadiosPreferences)radiosPreferences;
- (StartCallIntentHandlerDataSource)initWithDispatchQueue:(id)queue featureFlags:(id)flags emergencyProvider:(id)provider emergencyServicesOverrideProvider:(id)overrideProvider;
- (TUCallProvider)emergencyProvider;
- (TUCallProviderManager)providerManager;
- (TUContactsDataSource)contactsDataSource;
- (TUSenderIdentityClient)senderIdentityClient;
- (id)fetchSPIHandlesForGroupID:(id)d;
- (id)restrictedContacts:(id)contacts callProvider:(id)provider;
- (unint64_t)callFilterStatusForDialRequest:(id)request;
@end

@implementation StartCallIntentHandlerDataSource

- (StartCallIntentHandlerDataSource)initWithDispatchQueue:(id)queue featureFlags:(id)flags emergencyProvider:(id)provider emergencyServicesOverrideProvider:(id)overrideProvider
{
  queueCopy = queue;
  flagsCopy = flags;
  providerCopy = provider;
  overrideProviderCopy = overrideProvider;
  v20.receiver = self;
  v20.super_class = StartCallIntentHandlerDataSource;
  v15 = [(StartCallIntentHandlerDataSource *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dispatchQueue, queue);
    v17 = [TUCallCenter callCenterWithQueue:v16->_dispatchQueue];
    callCenter = v16->_callCenter;
    v16->_callCenter = v17;

    objc_storeStrong(&v16->_featureFlags, flags);
    objc_storeStrong(&v16->_emergencyProvider, provider);
    objc_storeStrong(&v16->_emergencyServicesOverrideProvider, overrideProvider);
  }

  return v16;
}

- (TUCallProviderManager)providerManager
{
  providerManager = self->_providerManager;
  if (!providerManager)
  {
    v4 = objc_alloc_init(TUCallProviderManager);
    v5 = self->_providerManager;
    self->_providerManager = v4;

    providerManager = self->_providerManager;
  }

  return providerManager;
}

- (TUCallProvider)emergencyProvider
{
  emergencyProvider = self->_emergencyProvider;
  if (!emergencyProvider)
  {
    providerManager = [(StartCallIntentHandlerDataSource *)self providerManager];
    emergencyProvider = [providerManager emergencyProvider];
    v6 = self->_emergencyProvider;
    self->_emergencyProvider = emergencyProvider;

    emergencyProvider = self->_emergencyProvider;
  }

  return emergencyProvider;
}

- (EmergencyServicesOverrideProvider)emergencyServicesOverrideProvider
{
  emergencyServicesOverrideProvider = self->_emergencyServicesOverrideProvider;
  if (!emergencyServicesOverrideProvider)
  {
    v4 = objc_alloc_init(EmergencyServicesOverrideProvider);
    v5 = self->_emergencyServicesOverrideProvider;
    self->_emergencyServicesOverrideProvider = v4;

    emergencyServicesOverrideProvider = self->_emergencyServicesOverrideProvider;
  }

  return emergencyServicesOverrideProvider;
}

- (TUSenderIdentityClient)senderIdentityClient
{
  senderIdentityClient = self->_senderIdentityClient;
  if (!senderIdentityClient)
  {
    v4 = objc_alloc_init(TUSenderIdentityClient);
    v5 = self->_senderIdentityClient;
    self->_senderIdentityClient = v4;

    senderIdentityClient = self->_senderIdentityClient;
  }

  return senderIdentityClient;
}

- (FavoritesDataSource)favoritesDataSource
{
  favoritesDataSource = self->_favoritesDataSource;
  if (!favoritesDataSource)
  {
    v4 = [[StartCallDefaultFavoritesDataSource alloc] initWithCallCenter:self->_callCenter];
    v5 = self->_favoritesDataSource;
    self->_favoritesDataSource = v4;

    favoritesDataSource = self->_favoritesDataSource;
  }

  return favoritesDataSource;
}

- (CallHistoryDataSource)callHistoryDataSource
{
  callHistoryDataSource = self->_callHistoryDataSource;
  if (!callHistoryDataSource)
  {
    v4 = [CHManager siriManagerForIntentType:objc_opt_class()];
    v5 = self->_callHistoryDataSource;
    self->_callHistoryDataSource = v4;

    callHistoryDataSource = self->_callHistoryDataSource;
  }

  return callHistoryDataSource;
}

- (RadiosPreferences)radiosPreferences
{
  radiosPreferences = self->_radiosPreferences;
  if (!radiosPreferences)
  {
    v4 = objc_alloc_init(RadiosPreferences);
    v5 = self->_radiosPreferences;
    self->_radiosPreferences = v4;

    radiosPreferences = self->_radiosPreferences;
  }

  return radiosPreferences;
}

- (BOOL)isAirplaneModeEnabled
{
  radiosPreferences = [(StartCallIntentHandlerDataSource *)self radiosPreferences];
  airplaneMode = [radiosPreferences airplaneMode];

  return airplaneMode;
}

- (unint64_t)callFilterStatusForDialRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  dispatchQueue = [(StartCallIntentHandlerDataSource *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F9F0;
  block[3] = &unk_10004D050;
  v10 = requestCopy;
  v11 = &v12;
  block[4] = self;
  v6 = requestCopy;
  dispatch_sync(dispatchQueue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

- (id)restrictedContacts:(id)contacts callProvider:(id)provider
{
  contactsCopy = contacts;
  providerCopy = provider;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10001FBCC;
  v21 = sub_10001FBDC;
  v22 = 0;
  dispatchQueue = [(StartCallIntentHandlerDataSource *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001FBE4;
  v13[3] = &unk_10004D078;
  v13[4] = self;
  v14 = contactsCopy;
  v15 = providerCopy;
  v16 = &v17;
  v9 = providerCopy;
  v10 = contactsCopy;
  dispatch_sync(dispatchQueue, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

- (BOOL)callRinging
{
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if there is any call ringing currently", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001FE18;
  v9[3] = &unk_10004D0A0;
  v9[4] = self;
  v9[5] = buf;
  dispatch_sync(dispatchQueue, v9);
  v5 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v11[24])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "is there any call ringing currently? %@", v14, 0xCu);
  }

  v7 = v11[24];
  _Block_object_dispose(buf, 8);
  return v7;
}

- (BOOL)callsInProgress
{
  v3 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking if there is any call in progress.", buf, 2u);
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2020000000;
  v13 = 0;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100020054;
  v9[3] = &unk_10004D0A0;
  v9[4] = self;
  v9[5] = buf;
  dispatch_sync(dispatchQueue, v9);
  v5 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v11[24])
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    *v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "is there any call in progress? %@", v14, 0xCu);
  }

  v7 = v11[24];
  _Block_object_dispose(buf, 8);
  return v7;
}

- (BOOL)hasCamera
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100020138;
  v5[3] = &unk_10004D0C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isFaceTimeAudioBlocked
{
  v2 = +[FTDeviceSupport sharedInstance];
  callingBlocked = [v2 callingBlocked];

  return callingBlocked;
}

- (BOOL)isFaceTimeVideoBlocked
{
  v2 = +[FTDeviceSupport sharedInstance];
  faceTimeBlocked = [v2 faceTimeBlocked];

  return faceTimeBlocked;
}

- (TUContactsDataSource)contactsDataSource
{
  callCenter = [(StartCallIntentHandlerDataSource *)self callCenter];
  contactStore = [callCenter contactStore];

  return contactStore;
}

- (BOOL)useLegacyContactResolution
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"UseLegacyContactResolution"];

  return v3;
}

- (BOOL)useLegacyHandleResolution
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"UseLegacyHandleResolution"];

  return v3;
}

- (NSArray)siriEmergencyServices
{
  featureFlags = [(StartCallIntentHandlerDataSource *)self featureFlags];
  emergencyServicesOverrideEnabled = [featureFlags emergencyServicesOverrideEnabled];

  if ((emergencyServicesOverrideEnabled & 1) == 0)
  {
    v8 = IntentHandlerDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10003087C();
    }

    goto LABEL_7;
  }

  emergencyProvider = [(StartCallIntentHandlerDataSource *)self emergencyProvider];
  emergencyLabeledHandles = [emergencyProvider emergencyLabeledHandles];
  v7 = [emergencyLabeledHandles count];

  v8 = IntentHandlerDefaultLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      sub_1000308B0();
    }

LABEL_7:

    emergencyProvider2 = [(StartCallIntentHandlerDataSource *)self emergencyProvider];
    emergencyLabeledHandles2 = [emergencyProvider2 emergencyLabeledHandles];
    goto LABEL_8;
  }

  if (v9)
  {
    sub_100030918();
  }

  emergencyProvider2 = [(StartCallIntentHandlerDataSource *)self emergencyServicesOverrideProvider];
  emergencyLabeledHandles2 = [emergencyProvider2 emergencyServicesOverrides];
LABEL_8:
  v12 = emergencyLabeledHandles2;

  return v12;
}

- (BOOL)expectUpstreamContactRecommendation
{
  v2 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _os_feature_enabled_impl();
    v4 = @"OFF";
    if (v3)
    {
      v4 = @"ON";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SiriInference/native_flow_contact_resolution: %@", &v6, 0xCu);
  }

  return _os_feature_enabled_impl();
}

- (BOOL)expectFoundInAppsContacts
{
  v2 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = _os_feature_enabled_impl();
    v4 = @"OFF";
    if (v3)
    {
      v4 = @"ON";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SiriInference/found_in_app_contacts: %@", &v6, 0xCu);
  }

  return _os_feature_enabled_impl();
}

- (id)fetchSPIHandlesForGroupID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_UNSPECIFIED, 0);
  v6 = dispatch_queue_create("com.apple.messages.imcore.spi.qos-unspecified", v5);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10001FBCC;
  v21 = sub_10001FBDC;
  v22 = 0;
  if ([dCopy length])
  {
    v16 = dispatch_semaphore_create(0);
    IMSPIQueryChatWithGuid();
    v7 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v16, v7);
  }

  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    handles = [v18[5] handles];
    *buf = 138412290;
    v24 = handles;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "spiChat person handles: %@", buf, 0xCu);
  }

  v10 = v18[5];
  if (v10)
  {
    handles2 = [v10 handles];
    v12 = [handles2 count] == 0;

    if (!v12)
    {
      handles3 = [v18[5] handles];
      v14 = [handles3 copy];

      v4 = v14;
    }
  }

  _Block_object_dispose(&v17, 8);

  return v4;
}

@end