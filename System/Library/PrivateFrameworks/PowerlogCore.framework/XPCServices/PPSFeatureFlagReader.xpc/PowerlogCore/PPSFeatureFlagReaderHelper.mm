@interface PPSFeatureFlagReaderHelper
- (id)createXPCConnection;
- (id)getFeatureFlags;
- (void)closeXPCConnection;
@end

@implementation PPSFeatureFlagReaderHelper

- (id)getFeatureFlags
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000020D8();
  }

  v4 = +[NSDate date];
  v5 = [(PPSFeatureFlagReaderHelper *)self createXPCConnection];
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = sub_100001B3C;
  v15[3] = sub_100001B4C;
  v16 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001B54;
  v13[3] = &unk_100004300;
  v13[4] = &v14;
  [v5 getFeatureFlags:v13];
  v6 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10000210C(v15, v6);
  }

  [(PPSFeatureFlagReaderHelper *)self closeXPCConnection];
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:v4];
  v9 = v8;
  v10 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v18 = v9;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v7;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] Time for getting getFeatureFlags reading to run: %f, %@, %@", buf, 0x20u);
  }

  v11 = *(v15[0] + 40);
  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)createXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000218C();
  }

  v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.PPSFeatureFlagReader"];
  connectionToServer = self->_connectionToServer;
  self->_connectionToServer = v4;

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSFeatureFlagReaderProtocol];
  [(NSXPCConnection *)self->_connectionToServer setRemoteObjectInterface:v6];

  [(NSXPCConnection *)self->_connectionToServer setInterruptionHandler:&stru_100004320];
  [(NSXPCConnection *)self->_connectionToServer setInvalidationHandler:&stru_100004340];
  [(NSXPCConnection *)self->_connectionToServer resume];
  v7 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1000021C0();
  }

  v8 = [(NSXPCConnection *)self->_connectionToServer synchronousRemoteObjectProxyWithErrorHandler:&stru_100004380];

  return v8;
}

- (void)closeXPCConnection
{
  v3 = logPPSFeatureFlagReaderHelper();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10000230C();
  }

  [(NSXPCConnection *)self->_connectionToServer invalidate];
}

@end