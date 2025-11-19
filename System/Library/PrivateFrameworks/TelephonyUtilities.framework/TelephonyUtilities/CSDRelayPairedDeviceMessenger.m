@interface CSDRelayPairedDeviceMessenger
- (BOOL)shouldProcessMessage:(id)a3 forDevice:(id)a4;
- (CSDRelayPairedDeviceMessenger)initWithQueue:(id)a3;
- (void)_retryReliableMessageWithIdentifierIfNecessary:(id)a3 message:(id)a4 timeout:(double)a5 maximumRetryAttempts:(unint64_t)a6;
- (void)dealloc;
- (void)sendMessage:(id)a3 timeout:(double)a4 wantsAcknowledgement:(BOOL)a5 maximumRetryAttempts:(unint64_t)a6 completionHandler:(id)a7;
- (void)sendMessage:(id)a3 wantsAcknowledgement:(BOOL)a4 completionHandler:(id)a5;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation CSDRelayPairedDeviceMessenger

- (CSDRelayPairedDeviceMessenger)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CSDRelayPairedDeviceMessenger;
  v6 = [(CSDRelayPairedDeviceMessenger *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = +[NSMutableSet set];
    identifiersWaitingForAcknowledgement = v7->_identifiersWaitingForAcknowledgement;
    v7->_identifiersWaitingForAcknowledgement = v8;

    v10 = +[CSDRelayIDSService sharedInstance];
    [v10 addServiceDelegate:v7 queue:v7->_queue];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CSDRelayIDSService sharedInstance];
  [v3 removeServiceDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDRelayPairedDeviceMessenger;
  [(CSDRelayPairedDeviceMessenger *)&v4 dealloc];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 hasBeenDeliveredWithContext:(id)a6
{
  v7 = a5;
  v8 = [(CSDRelayPairedDeviceMessenger *)self queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100120810;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, v10);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = [(CSDRelayPairedDeviceMessenger *)self queue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100120A48;
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
  if (v13 && [(CSDRelayPairedDeviceMessenger *)self shouldProcessMessage:v14 forDevice:v13])
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
    v22[2] = sub_100120F08;
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

- (void)_retryReliableMessageWithIdentifierIfNecessary:(id)a3 message:(id)a4 timeout:(double)a5 maximumRetryAttempts:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(CSDRelayPairedDeviceMessenger *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = [(CSDRelayPairedDeviceMessenger *)self identifiersWaitingForAcknowledgement];
  v14 = [v13 containsObject:v10];

  if ((v14 & 1) == 0)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not attempting retry since message is no longer waiting for acknowledgement: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v15 = [(CSDRelayPairedDeviceMessenger *)self identifiersWaitingForAcknowledgement];
  [v15 removeObject:v10];

  v16 = sub_100004778();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!a6)
  {
    if (v17)
    {
      v18 = [v11 type];
      if (v18 >= 0x43)
      {
        v19 = [NSString stringWithFormat:@"(unknown: %i)", v18];
      }

      else
      {
        v19 = *(&off_10061BEA8 + v18);
      }

      *buf = 138412546;
      v21 = v19;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Not attempting retry since we are out of retry attempts for %@ message with identifier: %@", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  if (v17)
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retrying message send with identifier: %@", buf, 0xCu);
  }

  [(CSDRelayPairedDeviceMessenger *)self sendMessage:v11 timeout:1 wantsAcknowledgement:a6 - 1 maximumRetryAttempts:0 completionHandler:a5];
LABEL_14:
}

- (void)sendMessage:(id)a3 wantsAcknowledgement:(BOOL)a4 completionHandler:(id)a5
{
  v5 = 15.0;
  if (a4)
  {
    v5 = 30.0;
  }

  [CSDRelayPairedDeviceMessenger sendMessage:"sendMessage:timeout:wantsAcknowledgement:maximumRetryAttempts:completionHandler:" timeout:a3 wantsAcknowledgement:v5 maximumRetryAttempts:? completionHandler:?];
}

- (void)sendMessage:(id)a3 timeout:(double)a4 wantsAcknowledgement:(BOOL)a5 maximumRetryAttempts:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [(CSDRelayPairedDeviceMessenger *)self queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100121444;
  v17[3] = &unk_10061BE88;
  v20 = a4;
  v22 = a5;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v21 = a6;
  v15 = v13;
  v16 = v12;
  dispatch_async(v14, v17);
}

@end