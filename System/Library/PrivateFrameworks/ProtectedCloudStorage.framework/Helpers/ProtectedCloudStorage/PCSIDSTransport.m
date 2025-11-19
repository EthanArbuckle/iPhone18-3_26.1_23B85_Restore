@interface PCSIDSTransport
+ (id)transportWithIDSServiceName:(id)a3;
- (PCSIDSMessagingDelegate)delegate;
- (PCSIDSMessagingDeviceManager)deviceManager;
- (PCSIDSTransport)initWithServiceName:(id)a3;
- (id)copyLocalPairedDevices;
- (void)sendMessage:(id)a3 toDevice:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7 handleReply:(id)a8;
- (void)sendResponse:(id)a3 toMessage:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setDeviceManager:(id)a3;
@end

@implementation PCSIDSTransport

+ (id)transportWithIDSServiceName:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000B1C8;
  v17 = sub_10000B1D8;
  v18 = 0;
  if (qword_100040720 != -1)
  {
    sub_1000228AC();
  }

  v5 = qword_100040710;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B23C;
  block[3] = &unk_100039010;
  v10 = v4;
  v11 = &v13;
  v12 = a1;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (PCSIDSTransport)initWithServiceName:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PCSIDSTransport;
  v5 = [(PCSIDSTransport *)&v17 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = objc_opt_new();
  pendingReplies = v5->_pendingReplies;
  v5->_pendingReplies = v6;

  v8 = dispatch_queue_create("com.apple.ProtectedCloudStorage.IDSMessaging", 0);
  internalQueue = v5->_internalQueue;
  v5->_internalQueue = v8;

  v10 = [[IDSService alloc] initWithService:v4];
  service = v5->_service;
  v5->_service = v10;

  if (v5->_service)
  {
    v12 = [(PCSIDSTransport *)v5 service];
    v13 = [(PCSIDSTransport *)v5 internalQueue];
    [v12 addDelegate:v5 queue:v13];

LABEL_4:
    v14 = v5;
    goto LABEL_8;
  }

  v15 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create IDSService for %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PCSIDSTransport *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B52C;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setDeviceManager:(id)a3
{
  v4 = a3;
  v5 = [(PCSIDSTransport *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B684;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)sendMessage:(id)a3 toDevice:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7 handleReply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  v18 = [(PCSIDSTransport *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B9D0;
  block[3] = &unk_100039038;
  v27 = v16;
  v28 = v17;
  v29 = a6;
  v24 = v15;
  v25 = self;
  v30 = a5;
  v26 = v14;
  v19 = v16;
  v20 = v14;
  v21 = v15;
  v22 = v17;
  dispatch_async(v18, block);
}

- (void)sendResponse:(id)a3 toMessage:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v13 idsContext];
  v16 = [v15 expectsPeerResponse];

  if (v16)
  {
    v17 = [(PCSIDSTransport *)self internalQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C020;
    v21[3] = &unk_100039060;
    v26 = a6;
    v22 = v13;
    v23 = self;
    v24 = v12;
    v27 = a5;
    v25 = v14;
    dispatch_async(v17, v21);
  }

  else
  {
    v18 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = [v13 message];
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Reply attempted to message that did not expect peer response: %@ -> %@", buf, 0x16u);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [v12 incomingResponseIdentifier];
  if (v13)
  {
    v14 = [(PCSIDSTransport *)self pendingReplies];
    v15 = [v14 objectForKeyedSubscript:v13];

    if (v15)
    {
      v16 = [[PCSIDSMessage alloc] initWithMessage:v10 idsContext:v12 fromID:v11];
      v17 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v12 incomingResponseIdentifier];
        v20 = [v12 outgoingResponseIdentifier];
        v30 = 138412546;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received reply for message ID %@ with ID %@", &v30, 0x16u);
      }

      [(PCSIDSMessage *)v15 runReplyHandlerWithMessage:v16 error:0];
      goto LABEL_14;
    }

    v27 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = [v12 outgoingResponseIdentifier];
      v30 = 138412546;
      v31 = v29;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Got message with ID %@ with response ID %@, but no reply handler available", &v30, 0x16u);
    }

    v25 = [(PCSIDSTransport *)self delegate];
    v16 = v25;
    v26 = 0;
LABEL_13:
    [(PCSIDSMessage *)v25 incomingMessage:v26 fromDevice:v11];
LABEL_14:

    goto LABEL_15;
  }

  v15 = [(PCSIDSTransport *)self delegate];
  v21 = qword_1000407B8;
  v22 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v22)
    {
      v23 = v21;
      v24 = [v12 outgoingResponseIdentifier];
      v30 = 138412290;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received message with ID %@", &v30, 0xCu);
    }

    v16 = [[PCSIDSMessage alloc] initWithMessage:v10 idsContext:v12 fromID:v11];
    v25 = v15;
    v26 = v16;
    goto LABEL_13;
  }

  if (v22)
  {
    v30 = 138412546;
    v31 = v11;
    v32 = 2112;
    v33 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Got message from %@ with id %@ with no delegate set", &v30, 0x16u);
  }

LABEL_15:
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  if (!a6)
  {
    v12 = [(PCSIDSTransport *)self pendingReplies];
    v13 = [v12 objectForKeyedSubscript:v10];

    if (v13)
    {
      [v13 runReplyHandlerWithMessage:0 error:v11];
    }

    else
    {
      v14 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error occurred sending message %@: %@", &v15, 0x16u);
      }
    }
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a4;
  v6 = [(PCSIDSTransport *)self deviceManager];
  v7 = v6;
  if (v6)
  {
    [v6 updatedIDSDevices:v5];
  }

  else
  {
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got devicesChanged with no manager set", v9, 2u);
    }
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v5 = a4;
  v6 = [(PCSIDSTransport *)self deviceManager];
  v7 = v6;
  if (v6)
  {
    [v6 updatedIDSDevices:v5];
  }

  else
  {
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Got connectedDevicesChanged with no manager set", v9, 2u);
    }
  }
}

- (id)copyLocalPairedDevices
{
  v2 = [(PCSIDSTransport *)self service];
  v3 = [v2 devices];

  if (v3)
  {
    v4 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 isLocallyPaired] && objc_msgSend(v10, "isConnected"))
          {
            v11 = [[PCSDevice alloc] initWithIDSDevice:v10];
            if (v11)
            {
              [v4 addObject:v11];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v12 = v4;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PCSIDSMessagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PCSIDSMessagingDeviceManager)deviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceManager);

  return WeakRetained;
}

@end