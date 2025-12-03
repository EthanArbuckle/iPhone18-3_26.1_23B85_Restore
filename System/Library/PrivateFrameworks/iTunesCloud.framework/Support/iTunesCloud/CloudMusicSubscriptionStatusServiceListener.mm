@interface CloudMusicSubscriptionStatusServiceListener
+ (CloudMusicSubscriptionStatusServiceListener)sharedMusicSubscriptionStatusServiceListener;
- (BOOL)isActive;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (void)dealloc;
- (void)performSubscriptionStatusRequest:(id)request forUniqueIdentifier:(id)identifier;
- (void)setSubscriptionStatusFromResponsePayload:(id)payload forUserIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)start;
- (void)stop;
@end

@implementation CloudMusicSubscriptionStatusServiceListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setExportedObject:self];
  v6 = +[ICMusicSubscriptionStatusRemoteRequesting serviceInterface];
  [connectionCopy setExportedInterface:v6];

  v7 = +[ICMusicSubscriptionStatusRemoteRequesting clientInterface];
  [connectionCopy setRemoteObjectInterface:v7];

  v8 = +[ICDeviceSetupStatusMonitor sharedMonitor];
  isDeviceSetupComplete = [v8 isDeviceSetupComplete];

  if (isDeviceSetupComplete)
  {
    [connectionCopy resume];
  }

  else
  {
    v10 = +[ICDeviceSetupStatusMonitor sharedMonitor];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A8808;
    v12[3] = &unk_1001DF578;
    v13 = connectionCopy;
    [v10 performBlockAfterDeviceSetup:v12];
  }

  return 1;
}

- (void)setSubscriptionStatusFromResponsePayload:(id)payload forUserIdentity:(id)identity withCompletionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  payloadCopy = payload;
  v11 = +[NSXPCConnection currentConnection];
  v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = identityCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request from remote client connection %{public}@ to update subscription status for %{public}@", buf, 0x20u);
  }

  v13 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A89C4;
  v16[3] = &unk_1001DC888;
  v16[4] = self;
  v17 = identityCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  [v13 setSubscriptionStatusFromResponsePayload:payloadCopy forUserIdentity:v15 withCompletionHandler:v16];
}

- (void)performSubscriptionStatusRequest:(id)request forUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  requestCopy = request;
  v8 = +[NSXPCConnection currentConnection];
  v9 = +[ICMusicSubscriptionStatusController sharedStatusController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A8BCC;
  v12[3] = &unk_1001DF4E0;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = v8;
  v10 = v8;
  v11 = identifierCopy;
  [v9 performSubscriptionStatusRequest:requestCopy withStatusHandler:v12];
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8E90;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)start
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A8FEC;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (BOOL)isActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A917C;
  v5[3] = &unk_1001DEF50;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  [(CloudMusicSubscriptionStatusServiceListener *)self stop];
  v3.receiver = self;
  v3.super_class = CloudMusicSubscriptionStatusServiceListener;
  [(CloudMusicSubscriptionStatusServiceListener *)&v3 dealloc];
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = CloudMusicSubscriptionStatusServiceListener;
  v2 = [(CloudMusicSubscriptionStatusServiceListener *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.CloudMusicSubscriptionStatusServiceListener.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = [NSXPCListener alloc];
    v6 = +[ICMusicSubscriptionStatusRemoteRequesting machServiceName];
    v7 = [v5 initWithMachServiceName:v6];
    serviceListener = v2->_serviceListener;
    v2->_serviceListener = v7;
  }

  return v2;
}

+ (CloudMusicSubscriptionStatusServiceListener)sharedMusicSubscriptionStatusServiceListener
{
  if (qword_100213CA0 != -1)
  {
    dispatch_once(&qword_100213CA0, &stru_1001DC860);
  }

  v3 = qword_100213C98;

  return v3;
}

@end