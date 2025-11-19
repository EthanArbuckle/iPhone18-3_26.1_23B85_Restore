@interface CSDIncomingCallFilterDataSource
- (BOOL)isDestinationIDAllowedThroughDoNotDisturb:(id)a3 providerIdentifier:(id)a4;
- (CSDIncomingCallFilterDataSource)init;
- (void)dealloc;
- (void)setFilterBlock:(id)a3;
@end

@implementation CSDIncomingCallFilterDataSource

- (CSDIncomingCallFilterDataSource)init
{
  v10.receiver = self;
  v10.super_class = CSDIncomingCallFilterDataSource;
  v2 = [(CSDIncomingCallFilterDataSource *)&v10 init];
  if (v2)
  {
    v3 = [DNDEventBehaviorResolutionService serviceForClientIdentifier:TUBundleIdentifierCallServicesDaemon];
    behaviorResolutionService = v2->_behaviorResolutionService;
    v2->_behaviorResolutionService = v3;

    v5 = objc_alloc_init(TUCallProviderManager);
    callProviderManager = v2->_callProviderManager;
    v2->_callProviderManager = v5;

    v7 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v2->_featureFlags;
    v2->_featureFlags = v7;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(CSDIncomingCallFilterDataSource *)self _callFilterIdentifier];
  ICFUnregisterCallFilterResultBlockWithIdentifier();

  v4.receiver = self;
  v4.super_class = CSDIncomingCallFilterDataSource;
  [(CSDIncomingCallFilterDataSource *)&v4 dealloc];
}

- (void)setFilterBlock:(id)a3
{
  v4 = a3;
  v5 = [(CSDIncomingCallFilterDataSource *)self _callFilterIdentifier];
  ICFRegisterCallFilterResultBlockWithIdentifier();
}

- (BOOL)isDestinationIDAllowedThroughDoNotDisturb:(id)a3 providerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDIncomingCallFilterDataSource *)self callProviderManager];
  v9 = [v8 providerWithIdentifier:v7];

  v10 = [(CSDIncomingCallFilterDataSource *)self featureFlags];
  if ([v10 isFocusBasedSimSilencingEnabled])
  {
    v11 = [v9 isTelephonyProvider];

    if (v11)
    {
      v12 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  v13 = [v9 bundleIdentifier];
  if (!v13)
  {
    v14 = [v9 isTelephonyProvider];
    v15 = TUBundleIdentifierPhoneApplication;
    if (!v14)
    {
      v15 = v7;
    }

    v13 = v15;
  }

  v16 = objc_alloc_init(DNDMutableClientEventDetails);
  [v16 setBundleIdentifier:v13];
  [v16 setType:1];
  v17 = objc_alloc_init(DNDMutableContactHandle);
  if ([v6 destinationIdIsPhoneNumber])
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  [v17 setType:v18];
  [v17 setValue:v6];
  [v16 setSender:v17];
  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v9;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "isDestinationIDAllowedThroughDoNotDisturb: provider=%@", buf, 0xCu);
  }

  v20 = sub_100004778();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "isDestinationIDAllowedThroughDoNotDisturb: bundleID=%@", buf, 0xCu);
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "isDestinationIDAllowedThroughDoNotDisturb: eventDetails=%@", buf, 0xCu);
  }

  v22 = [(CSDIncomingCallFilterDataSource *)self behaviorResolutionService];
  v27 = 0;
  v23 = [v22 resolveBehaviorForEventDetails:v16 error:&v27];
  v24 = v27;

  if (v23)
  {
    v12 = [v23 interruptionSuppression] == 0;
  }

  else
  {
    v25 = sub_100004778();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Error encountered resolving behavior via DND. Defaulting isDestinationIDAllowedThroughDoNotDisturb to YES. error=%@", buf, 0xCu);
    }

    v12 = 1;
  }

LABEL_24:
  return v12;
}

@end