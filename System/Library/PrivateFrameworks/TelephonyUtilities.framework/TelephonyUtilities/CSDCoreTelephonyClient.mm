@interface CSDCoreTelephonyClient
+ (BOOL)_isNSErrorFatal:(id)fatal;
- (BOOL)isEmergencyCallbackModeEnabled;
- (BOOL)isInHomeCountryForSubscriptionUUID:(id)d;
- (CSDCarrierBundleProviderController)carrierBundleProviderController;
- (CSDCoreTelephonyClient)initWithQueue:(id)queue shouldRegisterForECBMNotification:(BOOL)notification;
- (CSDCoreTelephonyClientDelegate)delegate;
- (CTXPCContexts)activeContexts;
- (NSDictionary)thumperDeviceInfo;
- (NSSet)subscriptions;
- (NSSet)telephonySubscriptions;
- (NSUUID)preferredVoiceSubscriptionUUID;
- (id)ISOCountryCodeForMobileCountryCode:(id)code mobileNetworkCode:(id)networkCode;
- (id)ISOCountryCodeForSubscriptionUUID:(id)d;
- (id)_subscriptionWithUUID:(id)d;
- (id)accountISOCountryCodeForSubscriptionUUID:(id)d;
- (id)callCapabilitiesForSubscription:(id)subscription;
- (id)capabilityInfoForSubscription:(id)subscription capability:(id)capability;
- (id)legacySystemCapabilities;
- (id)mobileCountryCodeForSubscription:(id)subscription error:(id *)error;
- (id)mobileNetworkCodeForSubscription:(id)subscription error:(id *)error;
- (id)spamIdentifiersForSubscriptionUUID:(id)d;
- (id)systemCapabilitiesForSubscription:(id)subscription;
- (void)activeSubscriptionsDidChange;
- (void)addSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier toSubscription:(id)subscription;
- (void)callCapabilitiesChanged:(id)changed capabilities:(id)capabilities;
- (void)context:(id)context capabilitiesChanged:(id)changed;
- (void)ctEmergencyCallbackModeStatusChangedWithUserInfo:(id)info;
- (void)endEmergencyCallbackMode;
- (void)legacyAddSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier;
- (void)legacyRecheckAccountStatusForCapability:(id)capability;
- (void)legacyRemoveSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier;
- (void)phoneServicesCapabilitiesChanged:(id)changed;
- (void)recheckAccountStatusForSubscription:(id)subscription capability:(id)capability;
- (void)removeSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier fromSubscription:(id)subscription;
- (void)setLegacyCapability:(id)capability enabled:(BOOL)enabled capabilityInformation:(id)information;
@end

@implementation CSDCoreTelephonyClient

- (CSDCoreTelephonyClient)initWithQueue:(id)queue shouldRegisterForECBMNotification:(BOOL)notification
{
  notificationCopy = notification;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CSDCoreTelephonyClient;
  v8 = [(CSDCoreTelephonyClient *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v10 = [[CoreTelephonyClient alloc] initWithQueue:queueCopy];
    client = v9->_client;
    v9->_client = v10;

    [(CoreTelephonyClient *)v9->_client setDelegate:v9];
    v12 = objc_alloc_init(NSMutableDictionary);
    mobileCodesToISOCountryCode = v9->_mobileCodesToISOCountryCode;
    v9->_mobileCodesToISOCountryCode = v12;

    v14 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"01", @"gp", @"02", @"gp", @"03", @"gp", @"08", @"gp", @"09", @"gf", @"10", @"mq", @"12", @"gp", @"20", 0}];
    [(NSMutableDictionary *)v9->_mobileCodesToISOCountryCode setObject:v14 forKeyedSubscript:@"340"];

    objc_initWeak(&location, v9);
    if (notificationCopy)
    {
      TUCTServerConnection();
      objc_copyWeak(&v18, &location);
      v15 = _CTServerConnectionRegisterBlockForNotification() >> 32;
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registered for kCTEmergencyCallBackModeStatusNotification with error: %d", buf, 8u);
      }

      objc_destroyWeak(&v18);
    }

    objc_destroyWeak(&location);
  }

  return v9;
}

- (CTXPCContexts)activeContexts
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  activeContexts = self->_activeContexts;
  if (!activeContexts)
  {
    client = [(CSDCoreTelephonyClient *)self client];
    v11 = 0;
    v6 = [client getActiveContexts:&v11];
    v7 = v11;
    v8 = self->_activeContexts;
    self->_activeContexts = v6;

    if (!self->_activeContexts && [objc_opt_class() _isNSErrorFatal:v7])
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10047D41C(self, v7, v9);
      }
    }

    activeContexts = self->_activeContexts;
  }

  return activeContexts;
}

- (CSDCarrierBundleProviderController)carrierBundleProviderController
{
  carrierBundleProviderController = self->_carrierBundleProviderController;
  if (!carrierBundleProviderController)
  {
    v4 = objc_alloc_init(CSDCarrierBundleProviderController);
    v5 = self->_carrierBundleProviderController;
    self->_carrierBundleProviderController = v4;

    carrierBundleProviderController = self->_carrierBundleProviderController;
  }

  return carrierBundleProviderController;
}

- (NSUUID)preferredVoiceSubscriptionUUID
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  activeContexts = [(CSDCoreTelephonyClient *)self activeContexts];
  voicePreferred = [activeContexts voicePreferred];

  return voicePreferred;
}

- (NSSet)subscriptions
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  activeContexts = [(CSDCoreTelephonyClient *)self activeContexts];
  subscriptions = [activeContexts subscriptions];

  if (subscriptions)
  {
    v6 = [NSSet setWithArray:subscriptions];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)telephonySubscriptions
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableSet set];
  subscriptions = [(CSDCoreTelephonyClient *)self subscriptions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 csd_isTelephony])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)isEmergencyCallbackModeEnabled
{
  TUCTServerConnection();
  v2 = _CTServerConnectionGetEmergencyCallBackMode();
  if ([objc_opt_class() _isCTErrorFatal:v2])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10047D4C8();
    }
  }

  return 0;
}

- (NSDictionary)thumperDeviceInfo
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  client = [(CSDCoreTelephonyClient *)self client];
  v9 = 0;
  v5 = [client getPhoneServicesDeviceInfo:&v9];
  v6 = v9;

  if (!v5 && [objc_opt_class() _isNSErrorFatal:v6])
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10047D538();
    }
  }

  return v5;
}

- (id)callCapabilitiesForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  if (([subscriptionCopy csd_isUnknown] & 1) != 0 || (-[CSDCoreTelephonyClient client](self, "client"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
  {
    v11 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v14 = 0;
    v9 = [client getCallCapabilities:context error:&v14];
    v10 = v14;

    if (v9)
    {
      v11 = [CSDCTCallCapabilities callCapabilitiesForCTCallCapabilities:v9];
    }

    else
    {
      if ([objc_opt_class() _isNSErrorFatal:v10])
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10047D5A0();
        }
      }

      v11 = 0;
    }
  }

  return v11;
}

- (id)capabilityInfoForSubscription:(id)subscription capability:(id)capability
{
  subscriptionCopy = subscription;
  capabilityCopy = capability;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v9 = 0;
  }

  else
  {
    v16 = 0;
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v15 = 0;
    v12 = [client context:context getCapability:capabilityCopy status:&v16 with:&v15];
    v9 = v15;

    if (!v9 && [objc_opt_class() _isNSErrorFatal:v12])
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10047D608();
      }
    }
  }

  return v9;
}

- (id)systemCapabilitiesForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v6 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v12 = 0;
    v6 = [client context:context getSystemCapabilities:&v12];
    v9 = v12;

    if (!v6 && [objc_opt_class() _isNSErrorFatal:v9])
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10047D678();
      }
    }
  }

  return v6;
}

- (void)addSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier toSubscription:(id)subscription
{
  identifierCopy = identifier;
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([subscriptionCopy csd_isUnknown] & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:addPhoneServicesDevice:withCompletion:] with idsDeviceIdentifier: %@", buf, 0xCu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10023041C;
    v12[3] = &unk_10061A4C0;
    v13 = identifierCopy;
    [client context:context addPhoneServicesDevice:v13 withCompletion:v12];
  }
}

- (void)removeSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier fromSubscription:(id)subscription
{
  identifierCopy = identifier;
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([subscriptionCopy csd_isUnknown] & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:removePhoneServicesDevice:withCompletion:] with idsDeviceIdentifier: %@", buf, 0xCu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100230600;
    v12[3] = &unk_10061A4C0;
    v13 = identifierCopy;
    [client context:context removePhoneServicesDevice:v13 withCompletion:v12];
  }
}

- (void)recheckAccountStatusForSubscription:(id)subscription capability:(id)capability
{
  subscriptionCopy = subscription;
  capabilityCopy = capability;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([subscriptionCopy csd_isUnknown] & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = capabilityCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling [CoreTelephonyClient context:recheckPhoneServicesAccountStatus:] with capability: %@", &v13, 0xCu);
    }

    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v12 = [client context:context recheckPhoneServicesAccountStatus:capabilityCopy];
  }
}

- (void)endEmergencyCallbackMode
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = @"NO";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionEnableEmergencyCallBackMode() with %@", &v6, 0xCu);
  }

  TUCTServerConnection();
  v4 = _CTServerConnectionEnableEmergencyCallBackMode();
  if ([objc_opt_class() _isCTErrorFatal:v4])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047D4C8();
    }
  }
}

- (void)setLegacyCapability:(id)capability enabled:(BOOL)enabled capabilityInformation:(id)information
{
  enabledCopy = enabled;
  capabilityCopy = capability;
  informationCopy = information;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = capabilityCopy;
    v14 = 1024;
    v15 = enabledCopy;
    v16 = 2112;
    v17 = informationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionSetCapabilityExtended() with capability: %@ value: %d capabilityInformation: %@", &v12, 0x1Cu);
  }

  TUCTServerConnection();
  v10 = _CTServerConnectionSetCapabilityExtended();
  if ([objc_opt_class() _isCTErrorFatal:v10])
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = capabilityCopy;
      v14 = 1024;
      v15 = v10;
      v16 = 1024;
      LODWORD(v17) = HIDWORD(v10);
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error setting capability for %@ calling (domain=%d, code=%d)", &v12, 0x18u);
    }
  }
}

- (id)legacySystemCapabilities
{
  TUCTServerConnection();
  v2 = _CTServerConnectionCopySystemCapabilities();
  if ([objc_opt_class() _isCTErrorFatal:v2])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10047D7D0();
    }
  }

  return 0;
}

- (void)legacyAddSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = kCTCapabilityPhoneServices;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    *v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionPhoneServicesAddDevice() with capability: %@ idsDeviceIdentifier: %@", &v8, 0x16u);
  }

  TUCTServerConnection();
  v6 = _CTServerConnectionPhoneServicesAddDevice();
  if ([objc_opt_class() _isCTErrorFatal:v6])
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = v4;
      v10 = 1024;
      *v11 = v6;
      *&v11[4] = 1024;
      *&v11[6] = HIDWORD(v6);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error adding device for %@ calling (domain=%d, code=%d)", &v8, 0x18u);
    }
  }
}

- (void)legacyRemoveSecondaryThumperDeviceWithIDSDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = kCTCapabilityPhoneServices;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    *v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionPhoneServicesRemoveDevice() with capability: %@ idsDeviceIdentifier: %@", &v8, 0x16u);
  }

  TUCTServerConnection();
  v6 = _CTServerConnectionPhoneServicesRemoveDevice();
  if ([objc_opt_class() _isCTErrorFatal:v6])
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412802;
      v9 = v4;
      v10 = 1024;
      *v11 = v6;
      *&v11[4] = 1024;
      *&v11[6] = HIDWORD(v6);
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error removing device for %@ calling (domain=%d, code=%d)", &v8, 0x18u);
    }
  }
}

- (void)legacyRecheckAccountStatusForCapability:(id)capability
{
  capabilityCopy = capability;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = capabilityCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling _CTServerConnectionPhoneServicesAccountStatusChanged() and _CTServerConnectionSendBarrier() with capability: %@", buf, 0xCu);
  }

  TUCTServerConnection();
  v5 = capabilityCopy;
  v6 = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  _CTServerConnectionPhoneServicesAccountStatusChanged();
  TUCTServerConnection();
  _CTServerConnectionSendBarrier();
}

- (id)accountISOCountryCodeForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:dCopy];
  if (v6)
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [v6 context];
    v17 = 0;
    v9 = [client copyMobileSubscriberCountryCode:context error:&v17];
    v10 = v17;

    if (v9)
    {
      client2 = [(CSDCoreTelephonyClient *)self client];
      v16 = v10;
      v12 = [client2 copyMobileSubscriberIsoCountryCode:v9 error:&v16];
      v13 = v16;

      if ([v12 length] || !objc_msgSend(objc_opt_class(), "_isNSErrorFatal:", v13))
      {
        goto LABEL_15;
      }

      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10047D840();
      }
    }

    else
    {
      if (![objc_opt_class() _isNSErrorFatal:v10])
      {
        v12 = 0;
        goto LABEL_16;
      }

      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10047D8B0();
      }

      v12 = 0;
      v13 = v10;
    }

LABEL_15:
    v10 = v13;
LABEL_16:

    goto LABEL_17;
  }

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10047D920();
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (BOOL)isInHomeCountryForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:dCopy];

  if (v6)
  {
    v7 = +[CTXPCServiceSubscriptionContext contextWithSlot:](CTXPCServiceSubscriptionContext, "contextWithSlot:", [v6 slotID]);
    client = [(CSDCoreTelephonyClient *)self client];
    v15 = 0;
    v9 = [client getRoamingStatus:v7 error:&v15];
    v10 = v15;

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [v9 isVoiceRoaming] ^ 1;
    }

    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"NO";
      if (v11)
      {
        v13 = @"YES";
      }

      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "isInHomeCountryForSubscriptionUUID: %@ for subscription context - %@.", buf, 0x16u);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)spamIdentifiersForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  carrierBundleProviderController = [(CSDCoreTelephonyClient *)self carrierBundleProviderController];
  v7 = [carrierBundleProviderController spamIdentifiersForSubscriptionUUID:dCopy];

  return v7;
}

- (id)ISOCountryCodeForSubscriptionUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:dCopy];
  if (v6)
  {
    v17 = 0;
    v7 = [(CSDCoreTelephonyClient *)self mobileCountryCodeForSubscription:v6 error:&v17];
    v8 = v17;
    v9 = v8;
    if (v7)
    {
      v16 = v8;
      v10 = [(CSDCoreTelephonyClient *)self mobileNetworkCodeForSubscription:v6 error:&v16];
      v11 = v16;

      if (v10)
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v19 = v7;
          v20 = 2112;
          v21 = v10;
          v22 = 2112;
          v23 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Retrieved mobile country code %@ and mobile network code %@ for subscription %@", buf, 0x20u);
        }

        v13 = [(CSDCoreTelephonyClient *)self ISOCountryCodeForMobileCountryCode:v7 mobileNetworkCode:v10];
      }

      else
      {
        if ([objc_opt_class() _isNSErrorFatal:v11])
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10047D988();
          }
        }

        v13 = 0;
      }
    }

    else
    {
      if (![objc_opt_class() _isNSErrorFatal:v8])
      {
        v13 = 0;
        goto LABEL_20;
      }

      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10047D8B0();
      }

      v13 = 0;
      v11 = v9;
    }

    v9 = v11;
LABEL_20:

    goto LABEL_21;
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10047D920();
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (id)ISOCountryCodeForMobileCountryCode:(id)code mobileNetworkCode:(id)networkCode
{
  codeCopy = code;
  networkCodeCopy = networkCode;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  mobileCodesToISOCountryCode = [(CSDCoreTelephonyClient *)self mobileCodesToISOCountryCode];
  v10 = [mobileCodesToISOCountryCode objectForKeyedSubscript:codeCopy];
  v11 = [v10 objectForKeyedSubscript:networkCodeCopy];

  if ([v11 length])
  {
    v12 = v11;
  }

  else
  {
    *buf = 0;
    TUCTServerConnection();
    v13 = _CTServerConnectionCopyISOForMCC();
    v12 = v11;
    if ([objc_opt_class() _isCTErrorFatal:v13])
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10047D9F8();
      }
    }
  }

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v12;
    v18 = 2112;
    v19 = codeCopy;
    v20 = 2112;
    v21 = networkCodeCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Retrieved ISO country code %@ for mobile country code %@ and mobile network code %@", buf, 0x20u);
  }

  return v12;
}

- (id)mobileCountryCodeForSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v8 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v8 = [client copyMobileCountryCode:context error:error];
  }

  return v8;
}

- (id)mobileNetworkCodeForSubscription:(id)subscription error:(id *)error
{
  subscriptionCopy = subscription;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([subscriptionCopy csd_isUnknown])
  {
    v8 = 0;
  }

  else
  {
    client = [(CSDCoreTelephonyClient *)self client];
    context = [subscriptionCopy context];
    v8 = [client copyMobileNetworkCode:context error:error];
  }

  return v8;
}

+ (BOOL)_isNSErrorFatal:(id)fatal
{
  fatalCopy = fatal;
  v4 = fatalCopy != 0;
  domain = [fatalCopy domain];
  if ([domain isEqualToString:NSPOSIXErrorDomain])
  {
    code = [fatalCopy code];

    if (fatalCopy)
    {
      v7 = code == 35;
    }

    else
    {
      v7 = 1;
    }

    v4 = !v7;
  }

  else
  {
  }

  return v4;
}

- (id)_subscriptionWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  subscriptions = [(CSDCoreTelephonyClient *)self subscriptions];
  v7 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uuid = [v10 uuid];
        v12 = [uuid isEqual:dCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)activeSubscriptionsDidChange
{
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDCoreTelephonyClient *)self setActiveContexts:0];
  delegate = [(CSDCoreTelephonyClient *)self delegate];
  [delegate subscriptionsDidChangeForClient:self];
}

- (void)callCapabilitiesChanged:(id)changed capabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  changedCopy = changed;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  uuid = [changedCopy uuid];

  v10 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:uuid];

  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = capabilitiesCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received delegate callback callCapabilitiesChanged: with context: %@ info: %@", &v14, 0x16u);
    }

    v12 = [CSDCTCallCapabilities callCapabilitiesForCTCallCapabilities:capabilitiesCopy];
    delegate = [(CSDCoreTelephonyClient *)self delegate];
    [delegate client:self subscription:v10 callCapabilitiesDidChange:v12];
  }
}

- (void)context:(id)context capabilitiesChanged:(id)changed
{
  changedCopy = changed;
  contextCopy = context;
  queue = [(CSDCoreTelephonyClient *)self queue];
  dispatch_assert_queue_V2(queue);

  uuid = [contextCopy uuid];

  v10 = [(CSDCoreTelephonyClient *)self _subscriptionWithUUID:uuid];

  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = changedCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received context:capabilitiesChanged: with context: %@ info: %@", &v13, 0x16u);
    }

    delegate = [(CSDCoreTelephonyClient *)self delegate];
    [delegate client:self subscription:v10 capabilitiesDidChange:changedCopy];
  }
}

- (void)phoneServicesCapabilitiesChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = changedCopy;
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling phoneServicesCapabilitiesChanged: with userInfo %@", buf, 0x16u);
  }

  queue = [(CSDCoreTelephonyClient *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100231F4C;
  v9[3] = &unk_100619D88;
  v9[4] = self;
  v10 = changedCopy;
  v8 = changedCopy;
  dispatch_async(queue, v9);
}

- (void)ctEmergencyCallbackModeStatusChangedWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received kCTEmergencyCallBackModeStatusNotification with userInfo %@", buf, 0xCu);
  }

  queue = [(CSDCoreTelephonyClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002320BC;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CSDCoreTelephonyClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end