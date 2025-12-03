@interface SRCHClient
+ (id)_connectionToService;
+ (void)initialize;
- (SRCHClient)initWithQueue:(id)queue XPCConnection:(id)connection;
- (void)_fetchCustomCategoriesWithRetryAttempt:(unint64_t)attempt bundleIdentifiers:(id)identifiers completion:(id)completion;
- (void)_setupConnection;
- (void)dealloc;
- (void)downloadDatabaseAssetIfNeeded:(id)needed;
- (void)fetchVersion:(id)version;
@end

@implementation SRCHClient

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_10002B230 = os_log_create("com.apple.SensorKit", "CHClient");
  }
}

+ (id)_connectionToService
{
  v2 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.SensorKit.CHSupportService"];

  return v2;
}

- (void)_setupConnection
{
  v3 = qword_10002B230;
  if (os_log_type_enabled(qword_10002B230, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Setting up connection to CH service", buf, 2u);
  }

  connection = self->_connection;
  [(NSXPCConnection *)connection _setQueue:self->_q];
  -[NSXPCConnection setRemoteObjectInterface:](connection, "setRemoteObjectInterface:", [objc_opt_class() remoteInterface]);
  [(NSXPCConnection *)connection setInterruptionHandler:&stru_1000248B8];
  objc_initWeak(buf, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000019F4;
  v5[3] = &unk_1000248E0;
  objc_copyWeak(&v6, buf);
  [(NSXPCConnection *)connection setInvalidationHandler:v5];
  self->_connectionDidInvalidate = 0;
  [(NSXPCConnection *)connection resume];
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

- (SRCHClient)initWithQueue:(id)queue XPCConnection:(id)connection
{
  v8.receiver = self;
  v8.super_class = SRCHClient;
  v6 = [(SRCHClient *)&v8 init];
  if (v6)
  {
    v6->_q = queue;
    v6->_connection = connection;
    [(SRCHClient *)v6 _setupConnection];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRCHClient;
  [(SRCHClient *)&v3 dealloc];
}

- (void)_fetchCustomCategoriesWithRetryAttempt:(unint64_t)attempt bundleIdentifiers:(id)identifiers completion:(id)completion
{
  v9 = sub_100001A70(self);
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001C84;
  v10[3] = &unk_100024908;
  v11[1] = attempt;
  objc_copyWeak(v11, &location);
  v10[4] = identifiers;
  v10[5] = completion;
  [objc_msgSend(v9 remoteObjectProxyWithErrorHandler:{v10), "fetchCustomCategoriesForBundleIdentifiers:completion:", identifiers, completion}];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)fetchVersion:(id)version
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001E80;
  v3[3] = &unk_100024930;
  v3[4] = version;
  [objc_msgSend(sub_100001A70(self) remoteObjectProxyWithErrorHandler:{v3), "fetchVersion:", version}];
}

- (void)downloadDatabaseAssetIfNeeded:(id)needed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100001FE4;
  v3[3] = &unk_100024930;
  v3[4] = needed;
  [objc_msgSend(sub_100001A70(self) remoteObjectProxyWithErrorHandler:{v3), "downloadDatabaseAssetIfNeeded:", needed}];
}

@end