@interface CSDRelayDeviceMessenger
- (BOOL)shouldProcessMessage:(id)a3 forDevice:(id)a4;
- (CSDRelayDeviceMessenger)initWithQueue:(id)a3;
- (id)_sendMessageOptions;
- (void)dealloc;
- (void)sendMessage:(id)a3 toDestinations:(id)a4 completionHandler:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation CSDRelayDeviceMessenger

- (CSDRelayDeviceMessenger)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSDRelayDeviceMessenger;
  v6 = [(CSDRelayDeviceMessenger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = +[CSDRelayIDSService sharedInstance];
    [v8 addServiceDelegate:v7 queue:v7->_queue];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CSDRelayIDSService sharedInstance];
  [v3 removeServiceDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDRelayDeviceMessenger;
  [(CSDRelayDeviceMessenger *)&v4 dealloc];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(CSDRelayDeviceMessenger *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B5B24;
  v18[3] = &unk_10061BE38;
  v22 = a6;
  v19 = v12;
  v20 = v11;
  v21 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  dispatch_async(v14, v18);
}

- (BOOL)shouldProcessMessage:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  if ([a4 isPairedDevice])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [v5 type] - 4;
    if (v7 <= 0x3D && ((1 << v7) & 0x3FE0000000000027) != 0)
    {
      LODWORD(v6) = TUDisableCallRelayIDSServiceMessaging() ^ 1;
    }

    else
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 typeString];
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Received incoming message of type: %@, not processing", &v10, 0xCu);
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v9 = a6;
  v10 = a5;
  v11 = [IDSDestination destinationWithURI:v9];
  v12 = +[CSDRelayIDSService sharedInstance];
  v13 = [v12 deviceForFromID:v9];

  v14 = [[CSDMessagingRelayMessage alloc] initWithData:v10];
  if (v13 && [(CSDRelayDeviceMessenger *)self shouldProcessMessage:v14 forDevice:v13])
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(CSDMessagingRelayMessage *)v14 typeString];
      *buf = 138413058;
      v27 = v16;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming message of type %@ from destination %@ device %@: %@", buf, 0x2Au);
    }

    v17 = +[TUCallCenter sharedInstance];
    v18 = [v17 queue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001B5FE4;
    v22[3] = &unk_10061A450;
    v22[4] = self;
    v23 = v14;
    v24 = v11;
    v25 = v13;
    dispatch_async(v18, v22);
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[CSDRelayIDSService sharedInstance];
      v21 = [v20 devices];
      *buf = 138412546;
      v27 = v9;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] No device found for fromID %@. All devices: %@", buf, 0x16u);
    }
  }
}

- (id)_sendMessageOptions
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:2];
  [v2 setObject:&off_10063ED50 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  v3 = [v2 copy];

  return v3;
}

- (void)sendMessage:(id)a3 toDestinations:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDRelayDeviceMessenger *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B61C8;
  v15[3] = &unk_10061AF98;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

@end