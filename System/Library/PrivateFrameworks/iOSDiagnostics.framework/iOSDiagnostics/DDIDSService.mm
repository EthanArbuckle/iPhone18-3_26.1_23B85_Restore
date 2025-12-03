@interface DDIDSService
- (BOOL)_sendIDSMessage:(id)message;
- (BOOL)hasDestination:(id)destination;
- (DAIDSMessageReceiver)receiver;
- (DDIDSService)initWithServiceType:(int64_t)type;
- (NSString)description;
- (id)_destinationFromID:(id)d;
- (id)_selfTokenFromID:(id)d;
- (void)availableDestinationsWithCompletion:(id)completion;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation DDIDSService

- (DDIDSService)initWithServiceType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = DDIDSService;
  v3 = [(DDIDSService *)&v11 init];
  if (v3)
  {
    v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.iosdiagnostics"];
    service = v3->_service;
    v3->_service = v4;

    v6 = dispatch_queue_create("com.apple.Diagnostics.IDSDelegateQueue", 0);
    queue = v3->_queue;
    v3->_queue = v6;

    [(IDSService *)v3->_service addDelegate:v3 queue:v3->_queue];
    v8 = objc_alloc_init(NSMutableDictionary);
    messageStorage = v3->_messageStorage;
    v3->_messageStorage = v8;
  }

  return v3;
}

- (void)availableDestinationsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  service = [(DDIDSService *)self service];
  devices = [service devices];

  v8 = [devices countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(devices);
        }

        v12 = [[DAIDSDestination alloc] initWithIDSDevice:*(*(&v28 + 1) + 8 * v11)];
        [v5 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [devices countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  service2 = [(DDIDSService *)self service];
  v14 = [service2 linkedDevicesWithRelationship:2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        v21 = [DAIDSDestination alloc];
        v22 = [(DAIDSDestination *)v21 initWithIDSDevice:v20, v24];
        [v5 addObject:v22];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v23 = [NSSet setWithArray:v5];
  completionCopy[2](completionCopy, v23);
}

- (BOOL)hasDestination:(id)destination
{
  destinationCopy = destination;
  service = [(DDIDSService *)self service];
  v6 = [service linkedDevicesWithRelationship:2];

  service2 = [(DDIDSService *)self service];
  devices = [service2 devices];
  v9 = [devices arrayByAddingObjectsFromArray:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([destinationCopy isEqual:{*(*(&v15 + 1) + 8 * i), v15}])
        {
          LOBYTE(v11) = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

- (BOOL)_sendIDSMessage:(id)message
{
  messageCopy = message;
  v5 = +[NSMutableDictionary dictionary];
  peerResponseIdentifier = [messageCopy peerResponseIdentifier];

  if (peerResponseIdentifier)
  {
    peerResponseIdentifier2 = [messageCopy peerResponseIdentifier];
    [v5 setObject:peerResponseIdentifier2 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
  }

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messageCopy expectsResponse]);
  [v5 setObject:v8 forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];

  [v5 setObject:&off_10001DA30 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
  service = [(DDIDSService *)self service];
  dictionary = [messageCopy dictionary];
  destination = [messageCopy destination];
  idsDestination = [destination idsDestination];
  v13 = [NSSet setWithObject:idsDestination];
  v31 = 0;
  v32 = 0;
  v14 = [service sendMessage:dictionary toDestinations:v13 priority:300 options:v5 identifier:&v32 error:&v31];
  v15 = v32;
  v26 = v31;

  if (v14)
  {
    queue = [(DDIDSService *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C4C8;
    block[3] = &unk_10001CAD0;
    v17 = messageCopy;
    v28 = v17;
    v18 = v15;
    v29 = v18;
    selfCopy = self;
    dispatch_async(queue, block);

    v19 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      peerResponseIdentifier3 = [v17 peerResponseIdentifier];
      *buf = 138412802;
      v34 = v18;
      v35 = 2112;
      v36 = v17;
      v37 = 2112;
      v38 = peerResponseIdentifier3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] > Outgoing message: %@, peer response identifier: %@", buf, 0x20u);
    }

    response2 = v28;
    v22 = v26;
    goto LABEL_11;
  }

  v23 = DiagnosticLogHandleForCategory();
  v22 = v26;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v34 = v15;
    v35 = 2112;
    v36 = messageCopy;
    v37 = 2112;
    v38 = v26;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Failed to send IDS message: %@, error: %@", buf, 0x20u);
  }

  response = [messageCopy response];

  if (response)
  {
    response2 = [messageCopy response];
    (response2)[2](response2, 0, v26, 0, 0);
LABEL_11:
  }

  return v14;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v13 = [(DDIDSService *)self _destinationFromID:dCopy];
  if (v13)
  {
    v14 = [[DDIDSIncomingMessage alloc] initWithIncomingDictionary:messageCopy destination:v13];
    if (!v14)
    {
      incomingResponseIdentifier = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(incomingResponseIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
        *buf = 138412546;
        v41 = outgoingResponseIdentifier;
        v42 = 2112;
        v43 = messageCopy;
        _os_log_impl(&_mh_execute_header, incomingResponseIdentifier, OS_LOG_TYPE_DEFAULT, "[%@] Invalid incoming message: %@", buf, 0x16u);
      }

      goto LABEL_20;
    }

    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
    if (incomingResponseIdentifier)
    {
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v41 = incomingResponseIdentifier;
        v42 = 2112;
        v43 = messageCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] < Incoming response message: %@", buf, 0x16u);
      }

      messageStorage = [(DDIDSService *)self messageStorage];
      v18 = [messageStorage objectForKeyedSubscript:incomingResponseIdentifier];

      messageStorage2 = [(DDIDSService *)self messageStorage];
      [messageStorage2 removeObjectForKey:incomingResponseIdentifier];

      response = [v18 response];

      if (response)
      {
        response2 = [v18 response];
        message = [(DDIDSIncomingMessage *)v14 message];
        data = [(DDIDSIncomingMessage *)v14 data];
        (*(response2 + 16))(response2, 1, 0, message, data);
      }

      else
      {
        response2 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(response2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = incomingResponseIdentifier;
          _os_log_impl(&_mh_execute_header, response2, OS_LOG_TYPE_DEFAULT, "[%@] No response handler for message. Dropping response.", buf, 0xCu);
        }
      }
    }

    else
    {
      receiver = [(DDIDSService *)self receiver];
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
LABEL_20:

        goto LABEL_21;
      }

      v27 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
        v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [contextCopy expectsPeerResponse]);
        *buf = 138412802;
        v41 = outgoingResponseIdentifier2;
        v42 = 2112;
        v43 = messageCopy;
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@] < New incoming message: %@, expects response: %@", buf, 0x20u);
      }

      receiver2 = [(DDIDSService *)self receiver];
      message2 = [(DDIDSIncomingMessage *)v14 message];
      data2 = [(DDIDSIncomingMessage *)v14 data];
      destination = [(DDIDSIncomingMessage *)v14 destination];
      expectsPeerResponse = [contextCopy expectsPeerResponse];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10000CC88;
      v35[3] = &unk_10001CAF8;
      v36 = v14;
      v37 = contextCopy;
      v38 = messageCopy;
      selfCopy = self;
      [receiver2 receiveMessage:message2 data:data2 fromDestination:destination expectsResponse:expectsPeerResponse response:v35];

      v18 = v36;
    }

    goto LABEL_20;
  }

  v14 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
  {
    sub_10000E41C(contextCopy);
  }

LABEL_21:
}

- (id)_destinationFromID:(id)d
{
  v4 = [(DDIDSService *)self _selfTokenFromID:d];
  service = [(DDIDSService *)self service];
  v6 = [service linkedDevicesWithRelationship:2];

  service2 = [(DDIDSService *)self service];
  devices = [service2 devices];
  v9 = [devices arrayByAddingObjectsFromArray:v6];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      v16 = IDSCopyForDevice();
      v17 = [v16 isEqualToString:{v4, v21}];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = v15;

    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = [[DAIDSDestination alloc] initWithIDSDevice:v18];
  }

  else
  {
LABEL_9:

    v18 = 0;
LABEL_12:
    v19 = 0;
  }

  return v19;
}

- (id)_selfTokenFromID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  if (([dCopy containsString:@"self-token:"] & 1) == 0)
  {
    v5 = [dCopy mutableCopy];
    [v5 replaceOccurrencesOfString:@"token" withString:@"self-token" options:1 range:{0, objc_msgSend(v5, "length")}];
    v4 = [v5 copy];
  }

  return v4;
}

- (NSString)description
{
  service = [(DDIDSService *)self service];
  v3 = [service description];
  v4 = [NSString stringWithFormat:@"%@", v3];

  return v4;
}

- (DAIDSMessageReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

@end