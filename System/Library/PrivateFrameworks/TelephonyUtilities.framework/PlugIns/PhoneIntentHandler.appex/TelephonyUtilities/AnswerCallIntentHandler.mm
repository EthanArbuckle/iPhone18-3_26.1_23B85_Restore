@interface AnswerCallIntentHandler
- (AnswerCallIntentHandler)init;
- (AnswerCallIntentHandler)initWithDataSource:(id)a3;
- (void)handleAnswerCall:(id)a3 completion:(id)a4;
@end

@implementation AnswerCallIntentHandler

- (AnswerCallIntentHandler)init
{
  v3 = objc_alloc_init(AnswerCallIntentHandlerDefaultDataSource);
  v4 = [(AnswerCallIntentHandler *)self initWithDataSource:v3];

  return v4;
}

- (AnswerCallIntentHandler)initWithDataSource:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = AnswerCallIntentHandler;
  v6 = [(AnswerCallIntentHandler *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
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

- (void)handleAnswerCall:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Siri request to answer incoming call: %@", buf, 0xCu);
  }

  v9 = [(AnswerCallIntentHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024314;
  block[3] = &unk_10004CE38;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

@end