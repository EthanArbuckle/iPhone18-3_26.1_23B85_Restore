@interface BaseRequestHandler
+ (NSArray)managedConfigurations;
+ (OS_dispatch_queue)globalSerialQueue;
+ (id)deleteHandlerForConfiguration:(id)a3;
+ (id)handlerForConfiguration:(id)a3;
- (BaseRequestHandler)init;
- (BaseRequestHandler)initWithConfiguration:(id)a3;
- (id)description;
- (void)onCalloutQueue:(id)a3;
@end

@implementation BaseRequestHandler

+ (OS_dispatch_queue)globalSerialQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031BE4;
  block[3] = &unk_1001DF350;
  block[4] = a1;
  if (qword_100213AE0 != -1)
  {
    dispatch_once(&qword_100213AE0, block);
  }

  v2 = qword_100213AD8;

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BaseRequestHandler *)self configuration];
  v6 = [v5 userIdentity];
  v7 = [v6 accountDSID];
  v8 = [NSString stringWithFormat:@"<%@ %p: [dsid=%@, active=%d]>", v4, self, v7, self->_active];

  return v8;
}

- (void)onCalloutQueue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003130C;
    block[3] = &unk_1001DF5C8;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

- (BaseRequestHandler)initWithConfiguration:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = BaseRequestHandler;
  v6 = [(BaseRequestHandler *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [v5 userIdentity];
    userIdentity = v7->_userIdentity;
    v7->_userIdentity = v8;

    v10 = [v5 userIdentityStore];
    userIdentityStore = v7->_userIdentityStore;
    v7->_userIdentityStore = v10;

    v12 = [ML3MusicLibrary musicLibraryForUserAccount:v7->_userIdentity];
    musicLibrary = v7->_musicLibrary;
    v7->_musicLibrary = v12;
  }

  return v7;
}

- (BaseRequestHandler)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use handlerForConfiguration: or initWithConfiguration:"];

  return 0;
}

+ (NSArray)managedConfigurations
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100031594;
  v11 = sub_1000315A4;
  v12 = 0;
  v3 = [objc_opt_class() globalSerialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000315AC;
  v6[3] = &unk_1001DA780;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)deleteHandlerForConfiguration:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100031594;
    v16 = sub_1000315A4;
    v17 = 0;
    v5 = [objc_opt_class() globalSerialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000317B0;
    block[3] = &unk_1001DA758;
    v11 = a1;
    v9 = v4;
    v10 = &v12;
    dispatch_sync(v5, block);

    v6 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)handlerForConfiguration:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100031594;
  v17 = sub_1000315A4;
  v18 = 0;
  v5 = [objc_opt_class() globalSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031A88;
  block[3] = &unk_1001DA758;
  v10 = v4;
  v11 = &v13;
  v12 = a1;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

@end