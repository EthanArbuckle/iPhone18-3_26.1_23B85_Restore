@interface BYDaemonContext
- (BYDaemonContext)init;
- (LAContext)applePayAuthenticationContext;
- (LAContext)biometricAuthenticationContext;
- (void)_destroyContexts;
- (void)_prepareContextTimeout;
- (void)setApplePayAuthenticationContext:(id)context;
- (void)setBiometricAuthenticationContext:(id)context;
@end

@implementation BYDaemonContext

- (BYDaemonContext)init
{
  v10.receiver = self;
  v10.super_class = BYDaemonContext;
  v2 = [(BYDaemonContext *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.purplebuddy.context", v3);
    contextQueue = v2->_contextQueue;
    v2->_contextQueue = v4;

    v6 = +[BYSetupStateNotifier sharedNotifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005328;
    v8[3] = &unk_100020868;
    v9 = v2;
    [v6 addStateCompletionObserver:v8 forState:2];
  }

  return v2;
}

- (void)setApplePayAuthenticationContext:(id)context
{
  contextCopy = context;
  contextQueue = [(BYDaemonContext *)self contextQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005484;
  v7[3] = &unk_1000208D8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(contextQueue, v7);
}

- (LAContext)applePayAuthenticationContext
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000055E0;
  v11 = sub_1000055F0;
  v12 = 0;
  contextQueue = [(BYDaemonContext *)self contextQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000055F8;
  v6[3] = &unk_100020900;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(contextQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setBiometricAuthenticationContext:(id)context
{
  contextCopy = context;
  contextQueue = [(BYDaemonContext *)self contextQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000056C0;
  v7[3] = &unk_1000208D8;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(contextQueue, v7);
}

- (LAContext)biometricAuthenticationContext
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000055E0;
  v11 = sub_1000055F0;
  v12 = 0;
  contextQueue = [(BYDaemonContext *)self contextQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000581C;
  v6[3] = &unk_100020900;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(contextQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)_prepareContextTimeout
{
  v3 = dispatch_time(0, 300000000000);
  contextQueue = [(BYDaemonContext *)self contextQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058E4;
  block[3] = &unk_100020868;
  block[4] = self;
  dispatch_after(v3, contextQueue, block);
}

- (void)_destroyContexts
{
  contextQueue = [(BYDaemonContext *)self contextQueue];
  dispatch_assert_queue_V2(contextQueue);

  if (self->_applePayAuthenticationContext)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Destroying Apple Pay context", buf, 2u);
    }

    [(LAContext *)self->_applePayAuthenticationContext invalidate];
    applePayAuthenticationContext = self->_applePayAuthenticationContext;
    self->_applePayAuthenticationContext = 0;
  }

  if (self->_biometricAuthenticationContext)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Destroying Biometric context", v8, 2u);
    }

    [(LAContext *)self->_biometricAuthenticationContext invalidate];
    biometricAuthenticationContext = self->_biometricAuthenticationContext;
    self->_biometricAuthenticationContext = 0;
  }
}

@end