@interface SUBMessageEndpoint
+ (id)sharedEndpoint;
- (BOOL)isConnected;
- (SUBMessageEndpoint)init;
- (id)SUBDefaultPairedDevice;
- (id)dataCompress:(id)a3 shouldCompress:(BOOL)a4;
- (id)getMessageTimeout:(BOOL)a3 useTimeout:(id)a4;
- (void)_checkConnectivityForQueuedDisconnectedBlocks;
- (void)executeBlockWhenDisconnected:(id)a3;
- (void)handleMessage:(id)a3 withContext:(id)a4;
- (void)resume;
- (void)sendCloudMessage:(id)a3 isCritical:(BOOL)a4 useTimeout:(id)a5 destinations:(id)a6 completion:(id)a7;
- (void)sendCloudMessage:(id)a3 isCritical:(BOOL)a4 useTimeout:(id)a5 withReply:(id)a6 destinations:(id)a7;
- (void)sendErrorReply:(id)a3 toMessage:(id)a4 isCritical:(BOOL)a5;
- (void)sendMessage:(id)a3 isCritical:(BOOL)a4 useTimeout:(id)a5 withReply:(id)a6;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)setHandler:(id)a3 forMessagesOfType:(id)a4;
- (void)setHandler:(id)a3 forMessagesOfTypes:(id)a4;
- (void)suspend;
@end

@implementation SUBMessageEndpoint

+ (id)sharedEndpoint
{
  if (qword_1000339A0 != -1)
  {
    sub_100019BE4();
  }

  v3 = qword_100033998;

  return v3;
}

- (SUBMessageEndpoint)init
{
  v23.receiver = self;
  v23.super_class = SUBMessageEndpoint;
  v2 = [(SUBMessageEndpoint *)&v23 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.subridge.SUBMessageEndpoint", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.subridged.SUBMessageEndpoint.callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.subridged.SUBMessageEndpoint.sendMessage", v9);
    sendMessageQueue = v2->_sendMessageQueue;
    v2->_sendMessageQueue = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    pendingMessageCompletions = v2->_pendingMessageCompletions;
    v2->_pendingMessageCompletions = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    pendingMessageReplies = v2->_pendingMessageReplies;
    v2->_pendingMessageReplies = v16;

    v18 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.otaupdate"];
    service = v2->_service;
    v2->_service = v18;

    v20 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.otaupdate.cloud"];
    cloudService = v2->_cloudService;
    v2->_cloudService = v20;
  }

  return v2;
}

- (BOOL)isConnected
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IDSService *)self->_service devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          LOBYTE(v3) = [v6 isConnected];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)executeBlockWhenDisconnected:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_queue);
  if (v4)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = sub_1000140DC;
    v12[4] = sub_1000140EC;
    v5 = [SUBTransaction alloc];
    v6 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.executeBlockWhenDisconnected"];
    v7 = [(SUBTransaction *)v5 initWithNameAndTimeout:v6 timeOut:0];

    v13 = v7;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000140F4;
    block[3] = &unk_10002D678;
    block[4] = self;
    v10 = v4;
    v11 = v12;
    dispatch_async(queue, block);

    _Block_object_dispose(v12, 8);
  }
}

- (void)_checkConnectivityForQueuedDisconnectedBlocks
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(NSMutableArray *)self->_queuedDisconnectionBlock count])
  {
    if (![(SUBMessageEndpoint *)self isConnected])
    {
      v3 = self->_queuedDisconnectionBlock;
      queuedDisconnectionBlock = self->_queuedDisconnectionBlock;
      self->_queuedDisconnectionBlock = 0;

      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = sub_1000140DC;
      v13[4] = sub_1000140EC;
      v5 = [SUBTransaction alloc];
      v6 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge._checkConnectivityForQueuedDisconnectedBlocks"];
      v7 = [(SUBTransaction *)v5 initWithNameAndTimeout:v6 timeOut:0];

      v14 = v7;
      callbackQueue = self->_callbackQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100014334;
      block[3] = &unk_10002D598;
      v11 = v3;
      v12 = v13;
      v9 = v3;
      dispatch_async(callbackQueue, block);

      _Block_object_dispose(v13, 8);
    }
  }
}

- (void)resume
{
  dispatch_assert_queue_not_V2(self->_queue);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000140DC;
  v8[4] = sub_1000140EC;
  v3 = [SUBTransaction alloc];
  v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.resume"];
  v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:0];

  v9 = v5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014580;
  block[3] = &unk_10002D598;
  block[4] = self;
  block[5] = v8;
  dispatch_async(queue, block);
  _Block_object_dispose(v8, 8);
}

- (void)suspend
{
  dispatch_assert_queue_not_V2(self->_queue);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_1000140DC;
  v8[4] = sub_1000140EC;
  v3 = [SUBTransaction alloc];
  v4 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.suspend"];
  v5 = [(SUBTransaction *)v3 initWithNameAndTimeout:v4 timeOut:0];

  v9 = v5;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001471C;
  block[3] = &unk_10002D598;
  block[4] = self;
  block[5] = v8;
  dispatch_async(queue, block);
  _Block_object_dispose(v8, 8);
}

- (id)getMessageTimeout:(BOOL)a3 useTimeout:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if (v4)
  {
    v7 = &off_10002F568;
  }

  else
  {
    v7 = &off_10002F580;
  }

  return v7;
}

- (void)sendMessage:(id)a3 isCritical:(BOOL)a4 useTimeout:(id)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_not_V2(self->_queue);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_1000140DC;
  v26[4] = sub_1000140EC;
  v13 = [SUBTransaction alloc];
  v14 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendMessage.2.1"];
  v15 = [(SUBTransaction *)v13 initWithNameAndTimeout:v14 timeOut:0];

  v27 = v15;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015090;
  block[3] = &unk_10002D740;
  block[4] = self;
  v21 = v10;
  v25 = a4;
  v22 = v11;
  v23 = v12;
  v24 = v26;
  v17 = v11;
  v18 = v10;
  v19 = v12;
  dispatch_async(queue, block);

  _Block_object_dispose(v26, 8);
}

- (void)sendCloudMessage:(id)a3 isCritical:(BOOL)a4 useTimeout:(id)a5 destinations:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  dispatch_assert_queue_not_V2(self->_queue);
  if (v13)
  {
    v16 = [v13 unsignedLongLongValue];
  }

  else
  {
    v16 = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1000140DC;
  v33[4] = sub_1000140EC;
  v17 = [SUBTransaction alloc];
  v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage1.1"];
  v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:v16];

  v34 = v19;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015894;
  block[3] = &unk_10002D790;
  v30 = v33;
  v31 = v16;
  block[4] = self;
  v26 = v12;
  v32 = a4;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v15;
  dispatch_async(queue, block);

  _Block_object_dispose(v33, 8);
}

- (void)sendCloudMessage:(id)a3 isCritical:(BOOL)a4 useTimeout:(id)a5 withReply:(id)a6 destinations:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  dispatch_assert_queue_not_V2(self->_queue);
  if (v13)
  {
    v16 = [v13 unsignedLongLongValue];
  }

  else
  {
    v16 = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1000140DC;
  v33[4] = sub_1000140EC;
  v17 = [SUBTransaction alloc];
  v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage2.1"];
  v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:v16];

  v34 = v19;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F58;
  block[3] = &unk_10002D790;
  v30 = v33;
  v31 = v16;
  block[4] = self;
  v26 = v12;
  v32 = a4;
  v27 = v13;
  v28 = v15;
  v29 = v14;
  v21 = v15;
  v22 = v13;
  v23 = v12;
  v24 = v14;
  dispatch_async(queue, block);

  _Block_object_dispose(v33, 8);
}

- (void)setHandler:(id)a3 forMessagesOfType:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016848;
  block[3] = &unk_10002D7E0;
  v12 = v7;
  v13 = v6;
  block[4] = self;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)setHandler:(id)a3 forMessagesOfTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016978;
  block[3] = &unk_10002D2E0;
  v13 = self;
  v14 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (id)dataCompress:(id)a3 shouldCompress:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  memset(&stream, 0, sizeof(stream));
  if (compression_stream_init(&stream, !v4, COMPRESSION_ZLIB))
  {
    v6 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Compression failed, returning nil", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v8 = objc_alloc_init(NSMutableData);
    stream.src_ptr = [v5 bytes];
    stream.src_size = [v5 length];
    while (1)
    {
      stream.dst_ptr = buf;
      stream.dst_size = 4096;
      v9 = compression_stream_process(&stream, 1);
      if (v9)
      {
        break;
      }

      if (stream.dst_size)
      {
        v10 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
LABEL_17:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to compress", v12, 2u);
        }

        goto LABEL_18;
      }

      [v8 appendBytes:buf length:4096];
    }

    if (v9 != COMPRESSION_STATUS_END)
    {
      v10 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        goto LABEL_17;
      }

LABEL_18:
      compression_stream_destroy(&stream);
      v7 = 0;
      goto LABEL_19;
    }

    if (stream.dst_ptr > buf)
    {
      [v8 appendBytes:buf length:stream.dst_ptr - buf];
    }

    v7 = v8;
LABEL_19:
  }

  return v7;
}

- (id)SUBDefaultPairedDevice
{
  v3 = [(IDSService *)self->_service linkedDevicesWithRelationship:1];
  v4 = [(IDSService *)self->_service linkedDevicesWithRelationship:2];
  if (v3 | v4)
  {
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + objc_msgSend(v4, "count"));
    v6 = v5;
    if (v3)
    {
      [v5 addObjectsFromArray:v3];
    }

    if (v4)
    {
      [v6 addObjectsFromArray:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) isDefaultPairedDevice])
        {
          v8 = IDSCopyIDForDevice();
          goto LABEL_17;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v8;
}

- (void)sendErrorReply:(id)a3 toMessage:(id)a4 isCritical:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_1000140DC;
  v21[4] = sub_1000140EC;
  v10 = [SUBTransaction alloc];
  v11 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendErrorReply"];
  v12 = [(SUBTransaction *)v10 initWithNameAndTimeout:v11 timeOut:0];

  v22 = v12;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000182F0;
  block[3] = &unk_10002D7B8;
  block[4] = self;
  v17 = v8;
  v20 = a5;
  v18 = v9;
  v19 = v21;
  v14 = v9;
  v15 = v8;
  dispatch_async(queue, block);

  _Block_object_dispose(v21, 8);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  dispatch_assert_queue_V2(self->_queue);
  if (v15)
  {
    v20 = SUBError(@"SUBError", 2, v15, @"failed to send message", v16, v17, v18, v19, v28);
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSMutableDictionary *)self->_pendingMessageCompletions objectForKeyedSubscript:v14];
  if (v15)
  {
    v22 = [(NSMutableDictionary *)self->_pendingMessageReplies objectForKeyedSubscript:v14];
    v23 = objc_retainBlock(v22);
  }

  else
  {
    v23 = 0;
  }

  if (v21 | v23)
  {
    v29 = v12;
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x3032000000;
    v36[3] = sub_1000140DC;
    v36[4] = sub_1000140EC;
    v24 = [SUBTransaction alloc];
    v25 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.service.1"];
    v26 = [(SUBTransaction *)v24 initWithNameAndTimeout:v25 timeOut:0];

    v37 = v26;
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018AFC;
    block[3] = &unk_10002D830;
    v32 = v21;
    v31 = v20;
    v35 = a6;
    v33 = v23;
    v34 = v36;
    dispatch_async(callbackQueue, block);
    if (v21)
    {
      [(NSMutableDictionary *)self->_pendingMessageCompletions removeObjectForKey:v14];
    }

    if (v23)
    {
      [(NSMutableDictionary *)self->_pendingMessageReplies removeObjectForKey:v14];
    }

    _Block_object_dispose(v36, 8);
    v12 = v29;
  }
}

- (void)handleMessage:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [v7 incomingResponseIdentifier];
  v48 = [v7 outgoingResponseIdentifier];
  v63 = 0;
  v9 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:&v63];
  v10 = v63;
  if (v9)
  {
    if (!v8)
    {
      v11 = [NSString stringWithUTF8String:SUBMessageTypeKey[0]];
      v12 = [v9 objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = [(NSMutableDictionary *)self->_messageHandlers objectForKeyedSubscript:v12];
        if (v13)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v65 = sub_1000140DC;
          v66 = sub_1000140EC;
          v14 = [SUBTransaction alloc];
          v15 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.service.2.2"];
          v16 = [(SUBTransaction *)v14 initWithNameAndTimeout:v15 timeOut:0];

          v67 = v16;
          callbackQueue = self->_callbackQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000194A4;
          block[3] = &unk_10002D880;
          v50 = v12;
          v51 = v48;
          v13 = v13;
          v54 = v13;
          v52 = v9;
          v53 = v7;
          v55 = buf;
          dispatch_async(callbackQueue, block);

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v37 = softwareupdatebridge_log;
          if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
          {
            loga = v37;
            v42 = [v7 outgoingResponseIdentifier];
            *buf = 138412546;
            *&buf[4] = v42;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "No handler for message %@ of type %@", buf, 0x16u);
          }

          v43 = SUBError(@"SUBError", 1, 0, @"No handler for message type '%@'", v38, v39, v40, v41, v12);
          v44 = [v7 outgoingResponseIdentifier];
          [(SUBMessageEndpoint *)self _sendErrorReply:v43 toMessage:v44 isCritical:1];
        }
      }

      else
      {
        v30 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          log = v30;
          v35 = [v7 outgoingResponseIdentifier];
          *buf = 138543618;
          *&buf[4] = v35;
          *&buf[12] = 2082;
          *&buf[14] = SUBMessageTypeKey[0];
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Got message %{public}@ without %{public}s key", buf, 0x16u);
        }

        v13 = SUBError(@"SUBError", 1, 0, @"Dropping message without '%s' key", v31, v32, v33, v34, SUBMessageTypeKey[0]);
        v36 = [v7 outgoingResponseIdentifier];
        [(SUBMessageEndpoint *)self _sendErrorReply:v13 toMessage:v36 isCritical:1];
      }

      goto LABEL_21;
    }
  }

  else
  {
    v18 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v48;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to parse IDS message %{public}@: %{public}@", buf, 0x16u);
    }

    if (!v8)
    {
      v12 = SUBError(@"SUBError", 1, v10, @"Unparseable IDS message", v19, v20, v21, v22, v45);
      v29 = [v7 outgoingResponseIdentifier];
      [(SUBMessageEndpoint *)self _sendErrorReply:v12 toMessage:v29 isCritical:1];

      goto LABEL_21;
    }
  }

  v12 = [(NSMutableDictionary *)self->_pendingMessageReplies objectForKeyedSubscript:v8];
  if (v12)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v65 = sub_1000140DC;
    v66 = sub_1000140EC;
    v23 = [SUBTransaction alloc];
    v24 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.service.2.1"];
    v25 = [(SUBTransaction *)v23 initWithNameAndTimeout:v24 timeOut:0];

    v67 = v25;
    v26 = self->_callbackQueue;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1000192BC;
    v56[3] = &unk_10002D858;
    v57 = v10;
    v12 = v12;
    v61 = v12;
    v58 = v9;
    v59 = v48;
    v27 = v8;
    v60 = v27;
    v62 = buf;
    dispatch_async(v26, v56);
    [(NSMutableDictionary *)self->_pendingMessageReplies removeObjectForKey:v27];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No reply handler set for message identifier %{public}@", buf, 0xCu);
    }
  }

LABEL_21:
}

- (void)service:(id)a3 account:(id)a4 incomingData:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(IDSService *)self->_cloudService linkedDeviceForFromID:v11 withRelationship:3];
  v14 = [(IDSService *)self->_service linkedDeviceForFromID:v11 withRelationship:3];
  if (v13 | v14)
  {
    [(SUBMessageEndpoint *)self handleMessage:v10 withContext:v12];
  }

  else
  {
    v15 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming data from from unknown device (%{public}@), dropping..", &v16, 0xCu);
    }
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);

  [(SUBMessageEndpoint *)self _checkConnectivityForQueuedDisconnectedBlocks];
}

- (void)service:(id)a3 account:(id)a4 incomingResourceAtURL:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(IDSService *)self->_cloudService linkedDeviceForFromID:v11 withRelationship:3];
  if (v13)
  {
    v14 = [NSData dataWithContentsOfURL:v10];
    v15 = [(SUBMessageEndpoint *)self dataCompress:v14 shouldCompress:0];
    [(SUBMessageEndpoint *)self handleMessage:v15 withContext:v12];
  }

  else
  {
    v16 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Message sent by unknown device (%{public}@), dropping", &v17, 0xCu);
    }
  }
}

@end