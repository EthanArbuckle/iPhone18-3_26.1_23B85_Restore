@interface PCSIDSTransport
+ (id)transportWithIDSServiceName:(id)name;
- (PCSIDSMessagingDelegate)delegate;
- (PCSIDSMessagingDeviceManager)deviceManager;
- (PCSIDSTransport)initWithServiceName:(id)name;
- (id)copyLocalPairedDevices;
- (void)sendMessage:(id)message toDevice:(id)device withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description handleReply:(id)reply;
- (void)sendResponse:(id)response toMessage:(id)message withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setDelegate:(id)delegate;
- (void)setDeviceManager:(id)manager;
@end

@implementation PCSIDSTransport

+ (id)transportWithIDSServiceName:(id)name
{
  nameCopy = name;
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
  v10 = nameCopy;
  v11 = &v13;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (PCSIDSTransport)initWithServiceName:(id)name
{
  nameCopy = name;
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

  v10 = [[IDSService alloc] initWithService:nameCopy];
  service = v5->_service;
  v5->_service = v10;

  if (v5->_service)
  {
    service = [(PCSIDSTransport *)v5 service];
    internalQueue = [(PCSIDSTransport *)v5 internalQueue];
    [service addDelegate:v5 queue:internalQueue];

LABEL_4:
    v14 = v5;
    goto LABEL_8;
  }

  v15 = qword_1000407B8;
  if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = nameCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create IDSService for %@", buf, 0xCu);
  }

  v14 = 0;
LABEL_8:

  return v14;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  internalQueue = [(PCSIDSTransport *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B52C;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)setDeviceManager:(id)manager
{
  managerCopy = manager;
  internalQueue = [(PCSIDSTransport *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000B684;
  v7[3] = &unk_100038CA8;
  v7[4] = self;
  v8 = managerCopy;
  v6 = managerCopy;
  dispatch_sync(internalQueue, v7);
}

- (void)sendMessage:(id)message toDevice:(id)device withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description handleReply:(id)reply
{
  messageCopy = message;
  deviceCopy = device;
  descriptionCopy = description;
  replyCopy = reply;
  internalQueue = [(PCSIDSTransport *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B9D0;
  block[3] = &unk_100039038;
  v27 = descriptionCopy;
  v28 = replyCopy;
  timeoutCopy = timeout;
  v24 = deviceCopy;
  selfCopy = self;
  priorityCopy = priority;
  v26 = messageCopy;
  v19 = descriptionCopy;
  v20 = messageCopy;
  v21 = deviceCopy;
  v22 = replyCopy;
  dispatch_async(internalQueue, block);
}

- (void)sendResponse:(id)response toMessage:(id)message withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description
{
  responseCopy = response;
  messageCopy = message;
  descriptionCopy = description;
  idsContext = [messageCopy idsContext];
  expectsPeerResponse = [idsContext expectsPeerResponse];

  if (expectsPeerResponse)
  {
    internalQueue = [(PCSIDSTransport *)self internalQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C020;
    v21[3] = &unk_100039060;
    timeoutCopy = timeout;
    v22 = messageCopy;
    selfCopy = self;
    v24 = responseCopy;
    priorityCopy = priority;
    v25 = descriptionCopy;
    dispatch_async(internalQueue, v21);
  }

  else
  {
    v18 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      message = [messageCopy message];
      *buf = 138412546;
      v29 = message;
      v30 = 2112;
      v31 = responseCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Reply attempted to message that did not expect peer response: %@ -> %@", buf, 0x16u);
    }
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  if (incomingResponseIdentifier)
  {
    pendingReplies = [(PCSIDSTransport *)self pendingReplies];
    delegate2 = [pendingReplies objectForKeyedSubscript:incomingResponseIdentifier];

    if (delegate2)
    {
      v16 = [[PCSIDSMessage alloc] initWithMessage:messageCopy idsContext:contextCopy fromID:dCopy];
      v17 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
        outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
        v30 = 138412546;
        v31 = incomingResponseIdentifier2;
        v32 = 2112;
        v33 = outgoingResponseIdentifier;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received reply for message ID %@ with ID %@", &v30, 0x16u);
      }

      [(PCSIDSMessage *)delegate2 runReplyHandlerWithMessage:v16 error:0];
      goto LABEL_14;
    }

    v27 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
      v30 = 138412546;
      v31 = outgoingResponseIdentifier2;
      v32 = 2112;
      v33 = incomingResponseIdentifier;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Got message with ID %@ with response ID %@, but no reply handler available", &v30, 0x16u);
    }

    delegate = [(PCSIDSTransport *)self delegate];
    v16 = delegate;
    v26 = 0;
LABEL_13:
    [(PCSIDSMessage *)delegate incomingMessage:v26 fromDevice:dCopy];
LABEL_14:

    goto LABEL_15;
  }

  delegate2 = [(PCSIDSTransport *)self delegate];
  v21 = qword_1000407B8;
  v22 = os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT);
  if (delegate2)
  {
    if (v22)
    {
      v23 = v21;
      outgoingResponseIdentifier3 = [contextCopy outgoingResponseIdentifier];
      v30 = 138412290;
      v31 = outgoingResponseIdentifier3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Received message with ID %@", &v30, 0xCu);
    }

    v16 = [[PCSIDSMessage alloc] initWithMessage:messageCopy idsContext:contextCopy fromID:dCopy];
    delegate = delegate2;
    v26 = v16;
    goto LABEL_13;
  }

  if (v22)
  {
    v30 = 138412546;
    v31 = dCopy;
    v32 = 2112;
    v33 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Got message from %@ with id %@ with no delegate set", &v30, 0x16u);
  }

LABEL_15:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    pendingReplies = [(PCSIDSTransport *)self pendingReplies];
    v13 = [pendingReplies objectForKeyedSubscript:identifierCopy];

    if (v13)
    {
      [v13 runReplyHandlerWithMessage:0 error:errorCopy];
    }

    else
    {
      v14 = qword_1000407B8;
      if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = identifierCopy;
        v17 = 2112;
        v18 = errorCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error occurred sending message %@: %@", &v15, 0x16u);
      }
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  deviceManager = [(PCSIDSTransport *)self deviceManager];
  v7 = deviceManager;
  if (deviceManager)
  {
    [deviceManager updatedIDSDevices:changedCopy];
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

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  changedCopy = changed;
  deviceManager = [(PCSIDSTransport *)self deviceManager];
  v7 = deviceManager;
  if (deviceManager)
  {
    [deviceManager updatedIDSDevices:changedCopy];
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
  service = [(PCSIDSTransport *)self service];
  devices = [service devices];

  if (devices)
  {
    v4 = +[NSMutableArray array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = devices;
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