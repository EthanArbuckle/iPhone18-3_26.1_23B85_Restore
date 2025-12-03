@interface AppleMusicAPITokenIDSService
+ (AppleMusicAPITokenIDSService)sharedService;
- (id)_init;
- (void)_performTokenRequest:(id)request completionHandler:(id)handler;
- (void)_start;
- (void)_stop;
- (void)dealloc;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)start;
- (void)stop;
@end

@implementation AppleMusicAPITokenIDSService

- (void)_stop
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(IDSService *)self->_service removeDelegate:self];
  v3 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    serviceName = self->_serviceName;
    v5 = 138543618;
    selfCopy = self;
    v7 = 2114;
    v8 = serviceName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ Stopped IDS service with name %{public}@.", &v5, 0x16u);
  }
}

- (void)_start
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(IDSService *)self->_service addDelegate:self queue:self->_accessQueue];
  v3 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    serviceName = self->_serviceName;
    v5 = 138543618;
    selfCopy = self;
    v7 = 2114;
    v8 = serviceName;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%{public}@ Started IDS service with name %{public}@.", &v5, 0x16u);
  }
}

- (void)_performTokenRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  clientIdentifier = [requestCopy clientIdentifier];
  clientVersion = [requestCopy clientVersion];
  if (clientIdentifier | clientVersion)
  {
    clientVersion2 = clientVersion;
  }

  else
  {
    v12 = [ICClientInfo _clientInfoForCloudDaemonOriginatedMusicKitRequestWithRequestingBundleIdentifier:v8];
    clientIdentifier = [v12 clientIdentifier];
    clientVersion2 = [v12 clientVersion];
    v13 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v35 = 2114;
      v36 = clientIdentifier;
      v37 = 2114;
      v38 = clientVersion2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@ No client identifier or version was specified in the ICAppleMusicAPITokenRequest instance. Falling back to default client identifier for daemon: %{public}@/%{public}@.", buf, 0x20u);
    }
  }

  v14 = [ICMutableClientInfo clientInfoForMusicKitRequestWithClientIdentifier:clientIdentifier clientVersion:clientVersion2 bundleIdentifier:v8];
  bagProfile = [requestCopy bagProfile];
  [v14 setBagProfile:bagProfile];

  bagProfileVersion = [requestCopy bagProfileVersion];
  [v14 setBagProfileVersion:bagProfileVersion];

  v17 = [v14 copy];
  v18 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v35 = 2114;
    v36 = requestCopy;
    v37 = 2114;
    v38 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@ Performing token request %{public}@ and %{public}@.", buf, 0x20u);
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10011C7E8;
  v30[3] = &unk_1001DEC70;
  v30[4] = self;
  v19 = requestCopy;
  v31 = v19;
  v32 = handlerCopy;
  v20 = handlerCopy;
  v21 = objc_retainBlock(v30);
  v22 = [[ICDeveloperTokenFetchRequest alloc] initWithClientInfo:v17 options:{objc_msgSend(v19, "shouldIgnoreDeveloperTokenCache")}];
  [v22 setClientType:0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10011C968;
  v26[3] = &unk_1001DECC0;
  v26[4] = self;
  v27 = v19;
  v28 = v17;
  v29 = v21;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  [v22 performRequestWithResponseHandler:v26];
}

- (void)stop
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011CD00;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)start
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011CD7C;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  dispatch_assert_queue_V2(self->_accessQueue);
  type = [protobufCopy type];
  v12 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138544130;
    v13 = "requestTokens";
    selfCopy2 = self;
    v20 = 2048;
    if (type != 1000)
    {
      v13 = 0;
    }

    v21 = type;
    v22 = 2082;
    v23 = v13;
    v24 = 2114;
    v25 = dCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@ Received IDS message %lu:'%{public}s' from ID %{public}@", buf, 0x2Au);
  }

  if (type == 1000)
  {
    v14 = [ICAppleMusicAPITokenRequest alloc];
    data = [protobufCopy data];
    v16 = [(ICAppleMusicAPITokenRequest *)v14 initWithData:data];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10011CFC8;
    v17[3] = &unk_1001DEC48;
    v17[4] = self;
    [(AppleMusicAPITokenIDSService *)self _performTokenRequest:v16 completionHandler:v17];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v20 = 2048;
      v21 = type;
      v22 = 2082;
      v23 = 0;
      v24 = 2114;
      v25 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ Received IDS message of unknown type %lu:'%{public}s' from ID %{public}@", buf, 0x2Au);
    }
  }
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011D2CC;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  v4.receiver = self;
  v4.super_class = AppleMusicAPITokenIDSService;
  [(AppleMusicAPITokenIDSService *)&v4 dealloc];
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = AppleMusicAPITokenIDSService;
  v2 = [(AppleMusicAPITokenIDSService *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.itunescloudd.AppleMusicAPITokenIDSService.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = [NSString stringWithUTF8String:"com.apple.private.alloy.itunescloudd"];
    serviceName = v2->_serviceName;
    v2->_serviceName = v5;

    v7 = [[IDSService alloc] initWithService:v2->_serviceName];
    service = v2->_service;
    v2->_service = v7;
  }

  return v2;
}

+ (AppleMusicAPITokenIDSService)sharedService
{
  if (qword_100213E40 != -1)
  {
    dispatch_once(&qword_100213E40, &stru_1001DEC20);
  }

  v3 = qword_100213E38;

  return v3;
}

@end