@interface CSDIncomingCallFilterDataSource
- (BOOL)isDestinationIDAllowedThroughDoNotDisturb:(id)disturb providerIdentifier:(id)identifier;
- (CSDIncomingCallFilterDataSource)init;
- (void)dealloc;
- (void)setFilterBlock:(id)block;
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
  _callFilterIdentifier = [(CSDIncomingCallFilterDataSource *)self _callFilterIdentifier];
  ICFUnregisterCallFilterResultBlockWithIdentifier();

  v4.receiver = self;
  v4.super_class = CSDIncomingCallFilterDataSource;
  [(CSDIncomingCallFilterDataSource *)&v4 dealloc];
}

- (void)setFilterBlock:(id)block
{
  blockCopy = block;
  _callFilterIdentifier = [(CSDIncomingCallFilterDataSource *)self _callFilterIdentifier];
  ICFRegisterCallFilterResultBlockWithIdentifier();
}

- (BOOL)isDestinationIDAllowedThroughDoNotDisturb:(id)disturb providerIdentifier:(id)identifier
{
  disturbCopy = disturb;
  identifierCopy = identifier;
  callProviderManager = [(CSDIncomingCallFilterDataSource *)self callProviderManager];
  v9 = [callProviderManager providerWithIdentifier:identifierCopy];

  featureFlags = [(CSDIncomingCallFilterDataSource *)self featureFlags];
  if ([featureFlags isFocusBasedSimSilencingEnabled])
  {
    isTelephonyProvider = [v9 isTelephonyProvider];

    if (isTelephonyProvider)
    {
      v12 = 1;
      goto LABEL_24;
    }
  }

  else
  {
  }

  bundleIdentifier = [v9 bundleIdentifier];
  if (!bundleIdentifier)
  {
    isTelephonyProvider2 = [v9 isTelephonyProvider];
    v15 = TUBundleIdentifierPhoneApplication;
    if (!isTelephonyProvider2)
    {
      v15 = identifierCopy;
    }

    bundleIdentifier = v15;
  }

  v16 = objc_alloc_init(DNDMutableClientEventDetails);
  [v16 setBundleIdentifier:bundleIdentifier];
  [v16 setType:1];
  v17 = objc_alloc_init(DNDMutableContactHandle);
  if ([disturbCopy destinationIdIsPhoneNumber])
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  [v17 setType:v18];
  [v17 setValue:disturbCopy];
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
    v29 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "isDestinationIDAllowedThroughDoNotDisturb: bundleID=%@", buf, 0xCu);
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v16;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "isDestinationIDAllowedThroughDoNotDisturb: eventDetails=%@", buf, 0xCu);
  }

  behaviorResolutionService = [(CSDIncomingCallFilterDataSource *)self behaviorResolutionService];
  v27 = 0;
  v23 = [behaviorResolutionService resolveBehaviorForEventDetails:v16 error:&v27];
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