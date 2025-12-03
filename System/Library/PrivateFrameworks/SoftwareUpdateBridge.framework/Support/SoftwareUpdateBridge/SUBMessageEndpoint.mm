@interface SUBMessageEndpoint
+ (id)sharedEndpoint;
- (BOOL)isConnected;
- (SUBMessageEndpoint)init;
- (id)SUBDefaultPairedDevice;
- (id)dataCompress:(id)compress shouldCompress:(BOOL)shouldCompress;
- (id)getMessageTimeout:(BOOL)timeout useTimeout:(id)useTimeout;
- (void)_checkConnectivityForQueuedDisconnectedBlocks;
- (void)executeBlockWhenDisconnected:(id)disconnected;
- (void)handleMessage:(id)message withContext:(id)context;
- (void)resume;
- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout destinations:(id)destinations completion:(id)completion;
- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply destinations:(id)destinations;
- (void)sendErrorReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical;
- (void)sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)setHandler:(id)handler forMessagesOfType:(id)type;
- (void)setHandler:(id)handler forMessagesOfTypes:(id)types;
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
  devices = [(IDSService *)self->_service devices];
  v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          LOBYTE(v3) = [v6 isConnected];
          goto LABEL_11;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)executeBlockWhenDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  dispatch_assert_queue_not_V2(self->_queue);
  if (disconnectedCopy)
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
    v10 = disconnectedCopy;
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

- (id)getMessageTimeout:(BOOL)timeout useTimeout:(id)useTimeout
{
  timeoutCopy = timeout;
  useTimeoutCopy = useTimeout;
  v6 = useTimeoutCopy;
  if (useTimeoutCopy)
  {
    v7 = useTimeoutCopy;
  }

  else if (timeoutCopy)
  {
    v7 = &off_10002F568;
  }

  else
  {
    v7 = &off_10002F580;
  }

  return v7;
}

- (void)sendMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply
{
  messageCopy = message;
  timeoutCopy = timeout;
  replyCopy = reply;
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
  v21 = messageCopy;
  criticalCopy = critical;
  v22 = timeoutCopy;
  v23 = replyCopy;
  v24 = v26;
  v17 = timeoutCopy;
  v18 = messageCopy;
  v19 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v26, 8);
}

- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout destinations:(id)destinations completion:(id)completion
{
  messageCopy = message;
  timeoutCopy = timeout;
  destinationsCopy = destinations;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  if (timeoutCopy)
  {
    unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1000140DC;
  v33[4] = sub_1000140EC;
  v17 = [SUBTransaction alloc];
  v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage1.1"];
  v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:unsignedLongLongValue];

  v34 = v19;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015894;
  block[3] = &unk_10002D790;
  v30 = v33;
  v31 = unsignedLongLongValue;
  block[4] = self;
  v26 = messageCopy;
  criticalCopy = critical;
  v27 = timeoutCopy;
  v28 = destinationsCopy;
  v29 = completionCopy;
  v21 = destinationsCopy;
  v22 = timeoutCopy;
  v23 = messageCopy;
  v24 = completionCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v33, 8);
}

- (void)sendCloudMessage:(id)message isCritical:(BOOL)critical useTimeout:(id)timeout withReply:(id)reply destinations:(id)destinations
{
  messageCopy = message;
  timeoutCopy = timeout;
  replyCopy = reply;
  destinationsCopy = destinations;
  dispatch_assert_queue_not_V2(self->_queue);
  if (timeoutCopy)
  {
    unsignedLongLongValue = [timeoutCopy unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_1000140DC;
  v33[4] = sub_1000140EC;
  v17 = [SUBTransaction alloc];
  v18 = [NSString stringWithFormat:@"%s", "com.apple.SoftwareUpdateBridge.sendCloudMessage2.1"];
  v19 = [(SUBTransaction *)v17 initWithNameAndTimeout:v18 timeOut:unsignedLongLongValue];

  v34 = v19;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F58;
  block[3] = &unk_10002D790;
  v30 = v33;
  v31 = unsignedLongLongValue;
  block[4] = self;
  v26 = messageCopy;
  criticalCopy = critical;
  v27 = timeoutCopy;
  v28 = destinationsCopy;
  v29 = replyCopy;
  v21 = destinationsCopy;
  v22 = timeoutCopy;
  v23 = messageCopy;
  v24 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v33, 8);
}

- (void)setHandler:(id)handler forMessagesOfType:(id)type
{
  handlerCopy = handler;
  typeCopy = type;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016848;
  block[3] = &unk_10002D7E0;
  v12 = typeCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = typeCopy;
  v10 = handlerCopy;
  dispatch_sync(queue, block);
}

- (void)setHandler:(id)handler forMessagesOfTypes:(id)types
{
  handlerCopy = handler;
  typesCopy = types;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016978;
  block[3] = &unk_10002D2E0;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = typesCopy;
  v9 = typesCopy;
  v10 = handlerCopy;
  dispatch_sync(queue, block);
}

- (id)dataCompress:(id)compress shouldCompress:(BOOL)shouldCompress
{
  shouldCompressCopy = shouldCompress;
  compressCopy = compress;
  memset(&stream, 0, sizeof(stream));
  if (compression_stream_init(&stream, !shouldCompressCopy, COMPRESSION_ZLIB))
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
    stream.src_ptr = [compressCopy bytes];
    stream.src_size = [compressCopy length];
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

- (void)sendErrorReply:(id)reply toMessage:(id)message isCritical:(BOOL)critical
{
  replyCopy = reply;
  messageCopy = message;
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
  v17 = replyCopy;
  criticalCopy = critical;
  v18 = messageCopy;
  v19 = v21;
  v14 = messageCopy;
  v15 = replyCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v21, 8);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (errorCopy)
  {
    v20 = SUBError(@"SUBError", 2, errorCopy, @"failed to send message", v16, v17, v18, v19, v28);
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSMutableDictionary *)self->_pendingMessageCompletions objectForKeyedSubscript:identifierCopy];
  if (errorCopy)
  {
    v22 = [(NSMutableDictionary *)self->_pendingMessageReplies objectForKeyedSubscript:identifierCopy];
    v23 = objc_retainBlock(v22);
  }

  else
  {
    v23 = 0;
  }

  if (v21 | v23)
  {
    v29 = serviceCopy;
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
    successCopy = success;
    v33 = v23;
    v34 = v36;
    dispatch_async(callbackQueue, block);
    if (v21)
    {
      [(NSMutableDictionary *)self->_pendingMessageCompletions removeObjectForKey:identifierCopy];
    }

    if (v23)
    {
      [(NSMutableDictionary *)self->_pendingMessageReplies removeObjectForKey:identifierCopy];
    }

    _Block_object_dispose(v36, 8);
    serviceCopy = v29;
  }
}

- (void)handleMessage:(id)message withContext:(id)context
{
  messageCopy = message;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_queue);
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
  v63 = 0;
  v9 = [NSPropertyListSerialization propertyListWithData:messageCopy options:0 format:0 error:&v63];
  v10 = v63;
  if (v9)
  {
    if (!incomingResponseIdentifier)
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
          v51 = outgoingResponseIdentifier;
          v13 = v13;
          v54 = v13;
          v52 = v9;
          v53 = contextCopy;
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
            outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
            *buf = 138412546;
            *&buf[4] = outgoingResponseIdentifier2;
            *&buf[12] = 2112;
            *&buf[14] = v12;
            _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "No handler for message %@ of type %@", buf, 0x16u);
          }

          v43 = SUBError(@"SUBError", 1, 0, @"No handler for message type '%@'", v38, v39, v40, v41, v12);
          outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
          [(SUBMessageEndpoint *)self _sendErrorReply:v43 toMessage:outgoingResponseIdentifier3 isCritical:1];
        }
      }

      else
      {
        v30 = softwareupdatebridge_log;
        if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
        {
          log = v30;
          outgoingResponseIdentifier4 = [contextCopy outgoingResponseIdentifier];
          *buf = 138543618;
          *&buf[4] = outgoingResponseIdentifier4;
          *&buf[12] = 2082;
          *&buf[14] = SUBMessageTypeKey[0];
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Got message %{public}@ without %{public}s key", buf, 0x16u);
        }

        v13 = SUBError(@"SUBError", 1, 0, @"Dropping message without '%s' key", v31, v32, v33, v34, SUBMessageTypeKey[0]);
        outgoingResponseIdentifier5 = [contextCopy outgoingResponseIdentifier];
        [(SUBMessageEndpoint *)self _sendErrorReply:v13 toMessage:outgoingResponseIdentifier5 isCritical:1];
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
      *&buf[4] = outgoingResponseIdentifier;
      *&buf[12] = 2114;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to parse IDS message %{public}@: %{public}@", buf, 0x16u);
    }

    if (!incomingResponseIdentifier)
    {
      v12 = SUBError(@"SUBError", 1, v10, @"Unparseable IDS message", v19, v20, v21, v22, v45);
      outgoingResponseIdentifier6 = [contextCopy outgoingResponseIdentifier];
      [(SUBMessageEndpoint *)self _sendErrorReply:v12 toMessage:outgoingResponseIdentifier6 isCritical:1];

      goto LABEL_21;
    }
  }

  v12 = [(NSMutableDictionary *)self->_pendingMessageReplies objectForKeyedSubscript:incomingResponseIdentifier];
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
    v59 = outgoingResponseIdentifier;
    v27 = incomingResponseIdentifier;
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
      *&buf[4] = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No reply handler set for message identifier %{public}@", buf, 0xCu);
    }
  }

LABEL_21:
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  dataCopy = data;
  dCopy = d;
  contextCopy = context;
  v13 = [(IDSService *)self->_cloudService linkedDeviceForFromID:dCopy withRelationship:3];
  v14 = [(IDSService *)self->_service linkedDeviceForFromID:dCopy withRelationship:3];
  if (v13 | v14)
  {
    [(SUBMessageEndpoint *)self handleMessage:dataCopy withContext:contextCopy];
  }

  else
  {
    v15 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Incoming data from from unknown device (%{public}@), dropping..", &v16, 0xCu);
    }
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  dispatch_assert_queue_V2(self->_queue);

  [(SUBMessageEndpoint *)self _checkConnectivityForQueuedDisconnectedBlocks];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l fromID:(id)d context:(id)context
{
  lCopy = l;
  dCopy = d;
  contextCopy = context;
  v13 = [(IDSService *)self->_cloudService linkedDeviceForFromID:dCopy withRelationship:3];
  if (v13)
  {
    v14 = [NSData dataWithContentsOfURL:lCopy];
    v15 = [(SUBMessageEndpoint *)self dataCompress:v14 shouldCompress:0];
    [(SUBMessageEndpoint *)self handleMessage:v15 withContext:contextCopy];
  }

  else
  {
    v16 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = dCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Message sent by unknown device (%{public}@), dropping", &v17, 0xCu);
    }
  }
}

@end