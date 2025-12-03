@interface CSDRelayDeviceMessenger
- (BOOL)shouldProcessMessage:(id)message forDevice:(id)device;
- (CSDRelayDeviceMessenger)initWithQueue:(id)queue;
- (id)_sendMessageOptions;
- (void)dealloc;
- (void)sendMessage:(id)message toDestinations:(id)destinations completionHandler:(id)handler;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation CSDRelayDeviceMessenger

- (CSDRelayDeviceMessenger)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = CSDRelayDeviceMessenger;
  v6 = [(CSDRelayDeviceMessenger *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(CSDRelayDeviceMessenger *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001B5B24;
  v18[3] = &unk_10061BE38;
  successCopy = success;
  v19 = identifierCopy;
  v20 = accountCopy;
  v21 = errorCopy;
  v15 = errorCopy;
  v16 = accountCopy;
  v17 = identifierCopy;
  dispatch_async(queue, v18);
}

- (BOOL)shouldProcessMessage:(id)message forDevice:(id)device
{
  messageCopy = message;
  if ([device isPairedDevice])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [messageCopy type] - 4;
    if (v7 <= 0x3D && ((1 << v7) & 0x3FE0000000000027) != 0)
    {
      LODWORD(v6) = TUDisableCallRelayIDSServiceMessaging() ^ 1;
    }

    else
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        typeString = [messageCopy typeString];
        v10 = 138412290;
        v11 = typeString;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Received incoming message of type: %@, not processing", &v10, 0xCu);
      }

      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dCopy = d;
  dataCopy = data;
  v11 = [IDSDestination destinationWithURI:dCopy];
  v12 = +[CSDRelayIDSService sharedInstance];
  v13 = [v12 deviceForFromID:dCopy];

  v14 = [[CSDMessagingRelayMessage alloc] initWithData:dataCopy];
  if (v13 && [(CSDRelayDeviceMessenger *)self shouldProcessMessage:v14 forDevice:v13])
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [(CSDMessagingRelayMessage *)v14 typeString];
      *buf = 138413058;
      v27 = typeString;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming message of type %@ from destination %@ device %@: %@", buf, 0x2Au);
    }

    v17 = +[TUCallCenter sharedInstance];
    queue = [v17 queue];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1001B5FE4;
    v22[3] = &unk_10061A450;
    v22[4] = self;
    v23 = v14;
    v24 = v11;
    v25 = v13;
    dispatch_async(queue, v22);
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[CSDRelayIDSService sharedInstance];
      devices = [v20 devices];
      *buf = 138412546;
      v27 = dCopy;
      v28 = 2112;
      v29 = devices;
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

- (void)sendMessage:(id)message toDestinations:(id)destinations completionHandler:(id)handler
{
  messageCopy = message;
  destinationsCopy = destinations;
  handlerCopy = handler;
  queue = [(CSDRelayDeviceMessenger *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B61C8;
  v15[3] = &unk_10061AF98;
  v15[4] = self;
  v16 = messageCopy;
  v17 = destinationsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = destinationsCopy;
  v14 = messageCopy;
  dispatch_async(queue, v15);
}

@end