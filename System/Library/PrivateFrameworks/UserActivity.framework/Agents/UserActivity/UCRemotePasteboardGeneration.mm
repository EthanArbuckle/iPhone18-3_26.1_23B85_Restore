@interface UCRemotePasteboardGeneration
- (UCRemotePasteboardGeneration)initWithRequester:(id)requester;
- (id)stateAsString;
- (void)dealloc;
- (void)requestRemotePasteboardData:(id)data;
- (void)requestRemoteTypeInfo:(id)info;
- (void)updateState:(unint64_t)state;
@end

@implementation UCRemotePasteboardGeneration

- (UCRemotePasteboardGeneration)initWithRequester:(id)requester
{
  requesterCopy = requester;
  v13.receiver = self;
  v13.super_class = UCRemotePasteboardGeneration;
  v5 = [(UCRemotePasteboardGeneration *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(UCRemotePasteboardGeneration *)v5 setDataRequester:requesterCopy];
    [(UCRemotePasteboardGeneration *)v6 setDataRequested:0];
    v7 = +[NSUUID UUID];
    [(UCRemotePasteboardGeneration *)v6 setUuid:v7];

    [(UCRemotePasteboardGeneration *)v6 setState:0];
    v8 = dispatch_queue_attr_make_initially_inactive(0);
    v9 = dispatch_queue_create("com.apple.useractivity.remotegenerationresponse", v8);
    [(UCRemotePasteboardGeneration *)v6 setRespQueue:v9];

    v10 = sub_100001A30(@"pasteboard-fetch");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(UCRemotePasteboardGeneration *)v6 uuid];
      *buf = 138543362;
      v15 = uuid;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Created remote generation %{public}@", buf, 0xCu);
    }
  }

  return v6;
}

- (id)stateAsString
{
  state = [(UCRemotePasteboardGeneration *)self state];
  if (state - 1 > 5)
  {
    return @"New";
  }

  else
  {
    return *(&off_1000C5368 + state - 1);
  }
}

- (void)updateState:(unint64_t)state
{
  state = [(UCRemotePasteboardGeneration *)self state];
  if (state == 6 || state == 1)
  {
    v6 = sub_100001A30(@"pasteboard-fetch");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [NSNumber numberWithUnsignedInteger:[(UCRemotePasteboardGeneration *)self state]];
      v8 = [NSNumber numberWithUnsignedInteger:state];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Cannot update state from %@ to %@", &v9, 0x16u);
    }
  }

  else
  {

    [(UCRemotePasteboardGeneration *)self setState:state];
  }
}

- (void)dealloc
{
  v3 = sub_100001A30(@"pasteboard-fetch");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(UCRemotePasteboardGeneration *)self uuid];
    stateAsString = [(UCRemotePasteboardGeneration *)self stateAsString];
    *buf = 138543618;
    v9 = uuid;
    v10 = 2112;
    v11 = stateAsString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remote generation dealloc (type requested, data requested): %{public}@ %@", buf, 0x16u);
  }

  respQueue = [(UCRemotePasteboardGeneration *)self respQueue];
  dispatch_activate(respQueue);

  v7.receiver = self;
  v7.super_class = UCRemotePasteboardGeneration;
  [(UCRemotePasteboardGeneration *)&v7 dealloc];
}

- (void)requestRemoteTypeInfo:(id)info
{
  infoCopy = info;
  respQueue = [(UCRemotePasteboardGeneration *)self respQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002916C;
  block[3] = &unk_1000C52F8;
  block[4] = self;
  v6 = infoCopy;
  v18 = v6;
  dispatch_async(respQueue, block);

  if ([(UCRemotePasteboardGeneration *)self state]<= 1)
  {
    v7 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Fetching remote type info", buf, 2u);
    }

    v8 = objc_alloc_init(UARemotePasteboardTypeInfoRequestedEvent);
    v9 = mach_absolute_time();
    [(UCRemotePasteboardGeneration *)self updateState:2];
    dataRequester = [(UCRemotePasteboardGeneration *)self dataRequester];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100029294;
    v12[3] = &unk_1000C5320;
    selfCopy = self;
    v15 = v9;
    v13 = v8;
    v11 = v8;
    [dataRequester requestRemotePasteboardInfo:v12];
  }
}

- (void)requestRemotePasteboardData:(id)data
{
  dataCopy = data;
  if ([(UCRemotePasteboardGeneration *)self state]== 6)
  {
    v5 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
    dataCopy[2](dataCopy, 0, v5);
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_100001F14;
    v26 = sub_100029D58;
    v27 = 0;
    if ([(UCRemotePasteboardGeneration *)self state]<= 2)
    {
      v6 = dispatch_semaphore_create(0);
      v7 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[REMOTE GEN] Requesting types before PB data", buf, 2u);
      }

      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100029D60;
      v18 = &unk_1000C5348;
      v20 = &v22;
      v8 = v6;
      v19 = v8;
      [(UCRemotePasteboardGeneration *)self requestRemoteTypeInfo:&v15];
      v9 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "[REMOTE GEN] Waiting on type results", buf, 2u);
      }

      v10 = dispatch_time(0, 7000000000);
      if (dispatch_semaphore_wait(v8, v10))
      {
        v11 = sub_100001A30(@"pasteboard-server-remote-gen");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[REMOTE GEN] Timeout requesting type info", buf, 2u);
        }

        v12 = [NSError errorWithDomain:UAContinuityErrorDomain code:-120 userInfo:0, v15, v16, v17, v18];
        v13 = v23[5];
        v23[5] = v12;
      }
    }

    if (v23[5])
    {
      (dataCopy[2])(dataCopy, 0);
    }

    else
    {
      [(UCRemotePasteboardGeneration *)self setDataRequested:1];
      if ([(UCRemotePasteboardGeneration *)self streamProtocolVersion]== 2)
      {
        dataRequester = [(UCRemotePasteboardGeneration *)self dataRequester];
        [dataRequester requestStreamEndpointDataV2:dataCopy];
      }

      else
      {
        dataRequester = [(UCRemotePasteboardGeneration *)self dataRequester];
        [dataRequester requestStreamEndpointData:dataCopy];
      }
    }

    _Block_object_dispose(&v22, 8);
  }
}

@end