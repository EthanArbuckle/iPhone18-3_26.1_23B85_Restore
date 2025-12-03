@interface IdentifyIncomingCallerIntentHandler
- (IdentifyIncomingCallerIntentHandler)init;
- (IdentifyIncomingCallerIntentHandler)initWithDataSource:(id)source;
- (int64_t)preferredCallProviderFor:(id)for;
- (void)handleIdentifyIncomingCaller:(id)caller completion:(id)completion;
@end

@implementation IdentifyIncomingCallerIntentHandler

- (IdentifyIncomingCallerIntentHandler)init
{
  v3 = objc_alloc_init(IdentifyIncomingCallerIntentHandlerDefaultDataSource);
  v4 = [(IdentifyIncomingCallerIntentHandler *)self initWithDataSource:v3];

  return v4;
}

- (IdentifyIncomingCallerIntentHandler)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = IdentifyIncomingCallerIntentHandler;
  v6 = [(IdentifyIncomingCallerIntentHandler *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, source);
    v8 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
    v9 = dispatch_queue_create([v8 UTF8String], 0);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = [TUCallCenter callCenterWithQueue:v7->_queue];
    callCenter = v7->_callCenter;
    v7->_callCenter = v11;
  }

  return v7;
}

- (void)handleIdentifyIncomingCaller:(id)caller completion:(id)completion
{
  callerCopy = caller;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = callerCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Siri request to identify incoming caller: %@", buf, 0xCu);
  }

  queue = [(IdentifyIncomingCallerIntentHandler *)self queue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000DE98;
  v11[3] = &unk_10004CF28;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_sync(queue, v11);
}

- (int64_t)preferredCallProviderFor:(id)for
{
  forCopy = for;
  if ([forCopy isTelephonyProvider])
  {
    v4 = 1;
  }

  else if ([forCopy isFaceTimeProvider])
  {
    v4 = 2;
  }

  else
  {
    identifier = [forCopy identifier];
    v6 = [identifier length];

    if (v6)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end