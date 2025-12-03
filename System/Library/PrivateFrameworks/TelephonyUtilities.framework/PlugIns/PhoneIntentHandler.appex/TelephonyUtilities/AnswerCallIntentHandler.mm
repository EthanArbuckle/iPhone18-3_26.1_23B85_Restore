@interface AnswerCallIntentHandler
- (AnswerCallIntentHandler)init;
- (AnswerCallIntentHandler)initWithDataSource:(id)source;
- (void)handleAnswerCall:(id)call completion:(id)completion;
@end

@implementation AnswerCallIntentHandler

- (AnswerCallIntentHandler)init
{
  v3 = objc_alloc_init(AnswerCallIntentHandlerDefaultDataSource);
  v4 = [(AnswerCallIntentHandler *)self initWithDataSource:v3];

  return v4;
}

- (AnswerCallIntentHandler)initWithDataSource:(id)source
{
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = AnswerCallIntentHandler;
  v6 = [(AnswerCallIntentHandler *)&v14 init];
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

- (void)handleAnswerCall:(id)call completion:(id)completion
{
  callCopy = call;
  completionCopy = completion;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received Siri request to answer incoming call: %@", buf, 0xCu);
  }

  queue = [(AnswerCallIntentHandler *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024314;
  block[3] = &unk_10004CE38;
  block[4] = self;
  v13 = callCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = callCopy;
  dispatch_sync(queue, block);
}

@end