@interface HangUpCallIntentHandler
- (HangUpCallIntentHandler)init;
- (void)confirmHangUpCall:(id)a3 completion:(id)a4;
- (void)handleHangUpCall:(id)a3 completion:(id)a4;
@end

@implementation HangUpCallIntentHandler

- (HangUpCallIntentHandler)init
{
  v8.receiver = self;
  v8.super_class = HangUpCallIntentHandler;
  v2 = [(HangUpCallIntentHandler *)&v8 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.TelephonyUtilities.PhoneIntentHandler.%@", objc_opt_class()];
    v4 = dispatch_queue_create([v3 UTF8String], 0);

    v5 = [TUCallCenter callCenterWithQueue:v4];
    callCenter = v2->_callCenter;
    v2->_callCenter = v5;
  }

  return v2;
}

- (void)confirmHangUpCall:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Confirming Siri request to hang up: %@", buf, 0xCu);
  }

  v9 = [(HangUpCallIntentHandler *)self callCenter];
  v10 = [v9 queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100022C34;
  v12[3] = &unk_10004CF28;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_sync(v10, v12);
}

- (void)handleHangUpCall:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IntentHandlerDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Handling Siri request to hang up: %@", buf, 0xCu);
  }

  v9 = [(HangUpCallIntentHandler *)self callCenter];
  v10 = [v9 queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100022E78;
  v12[3] = &unk_10004CF28;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_sync(v10, v12);
}

@end