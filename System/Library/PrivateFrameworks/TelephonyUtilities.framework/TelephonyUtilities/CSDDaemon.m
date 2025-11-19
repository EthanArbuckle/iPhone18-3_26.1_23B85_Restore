@interface CSDDaemon
- (CSDDaemon)init;
- (NSString)debugDescription;
- (id)_setUpTemporaryDirectory;
- (void)_observeSignal:(int)a3 usingHandler:(id)a4;
- (void)_setUpLanguageChangeListener;
- (void)dealloc;
- (void)propertiesDidChangeForConfiguration:(id)a3;
@end

@implementation CSDDaemon

- (CSDDaemon)init
{
  v19.receiver = self;
  v19.super_class = CSDDaemon;
  v2 = [(CSDDaemon *)&v19 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000FADA8;
    v16 = &unk_10061A740;
    objc_copyWeak(&v17, &location);
    v3 = objc_retainBlock(&v13);
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.calls", v4);
    v6 = *(v2 + 27);
    *(v2 + 27) = v5;

    v7 = [CSDAssistantServicesObserver alloc];
    v8 = [(CSDAssistantServicesObserver *)v7 initWithQueue:*(v2 + 27), v13, v14, v15, v16];
    v9 = *(v2 + 17);
    *(v2 + 17) = v8;

    v10 = +[_TtC13callservicesd19CSDAnalyticsManager sharedInstance];
    v11 = *(v2 + 30);
    *(v2 + 30) = v10;

    dispatch_sync(*(v2 + 27), v3);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CSDDaemon *)self signalHandlerDispatchSources];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dispatch_source_cancel(*(*(&v10 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = CSDDaemon;
  [(CSDDaemon *)&v9 dealloc];
}

- (void)_observeSignal:(int)a3 usingHandler:(id)a4
{
  v6 = a4;
  signal(a3, 1);
  v7 = [(CSDDaemon *)self queue];
  source = dispatch_source_create(&_dispatch_source_type_signal, a3, 0, v7);

  dispatch_source_set_event_handler(source, v6);
  v8 = [(CSDDaemon *)self signalHandlerDispatchSources];
  [v8 addObject:source];

  dispatch_resume(source);
}

- (NSString)debugDescription
{
  v3 = +[NSMutableString string];
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 debugDescription];
  [v3 appendFormat:@"%@\n", v5];

  v6 = +[TUCallCapabilities debugDescription];
  [v3 appendFormat:@"%@\n", v6];

  v7 = +[CSDCallCapabilities sharedInstance];
  v8 = [v7 debugDescription];
  [v3 appendFormat:@"%@\n", v8];

  v9 = +[CSDRelayIDSService sharedInstance];
  v10 = [v9 debugDescription];
  [v3 appendFormat:@"%@\n", v10];

  v11 = [(CSDDaemon *)self relayMessagingController];
  v12 = [v11 debugDescription];
  [v3 appendFormat:@"%@\n", v12];

  return v3;
}

- (void)_setUpLanguageChangeListener
{
  out_token = 0;
  v2 = dispatch_get_global_queue(2, 0);
  notify_register_dispatch("com.apple.language.changed", &out_token, v2, &stru_10061B8C0);
}

- (id)_setUpTemporaryDirectory
{
  bzero(v6, 0x400uLL);
  [TUBundleIdentifierTelephonyUtilitiesFramework UTF8String];
  if (!_set_user_dir_suffix() || !confstr(65537, v6, 0x400uLL) || mkdir(v6, 0x1C0u) && *__error() != 17)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10047492C();
    }

LABEL_13:

    exit(1);
  }

  bzero(v5, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v6, v5))
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004748A4();
    }

    goto LABEL_13;
  }

  v2 = [NSString stringWithUTF8String:v5];

  return v2;
}

- (void)propertiesDidChangeForConfiguration:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "User configuration changed", v6, 2u);
  }

  v5 = [(CSDDaemon *)self userConfiguration];
  [v5 synchronize];
}

@end