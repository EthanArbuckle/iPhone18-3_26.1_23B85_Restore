@interface CSDRelayIDSDualSession
- (BOOL)hasIdentifier:(id)identifier;
- (CSDRelayIDSDualSessionDelegate)delegate;
- (NSArray)allIdentifiers;
- (id)transport;
- (void)addIdentifier:(id)identifier;
- (void)addIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)mergeSession:(id)session;
- (void)pendData:(id)data completion:(id)completion;
- (void)performBlockOnTransportAvailability:(id)availability;
- (void)prepareToEnd;
- (void)removeIdentifier:(id)identifier;
- (void)removeIdentifiers:(id)identifiers;
- (void)removePendingData;
- (void)runBlocksPendingTransportAvailability:(BOOL)availability;
- (void)sendData:(id)data toDestinations:(id)destinations completion:(id)completion;
- (void)sendData:(id)data waitUntilConnected:(BOOL)connected completion:(id)completion;
- (void)sendDataAndAcceptInvitationIfNecessary:(id)necessary;
- (void)sendDataAndCancelInvitationIfNecessary:(id)necessary;
- (void)sendDataAndDeclineInvitationIfNecessary:(id)necessary;
- (void)sendPendingData;
- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data;
- (void)sessionProvider:(id)provider receivedInvitationCancelFromID:(id)d withData:(id)data;
- (void)sessionProvider:(id)provider receivedInvitationDeclineFromID:(id)d withData:(id)data;
- (void)sessionProvider:(id)provider receivedSessionMessageFromID:(id)d withData:(id)data;
- (void)sessionProviderStarted:(id)started;
@end

@implementation CSDRelayIDSDualSession

- (void)dealloc
{
  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailability:0];
  [(CSDRelayIDSDualSession *)self removePendingData];
  v3.receiver = self;
  v3.super_class = CSDRelayIDSDualSession;
  [(CSDRelayIDSDualSession *)&v3 dealloc];
}

- (id)transport
{
  v7.receiver = self;
  v7.super_class = CSDRelayIDSDualSession;
  transport = [(CSDIDSDualSession *)&v7 transport];
  remoteDestination = [(CSDRelayIDSDualSession *)self remoteDestination];
  [transport setRemoteDestination:remoteDestination];

  remoteDevice = [(CSDRelayIDSDualSession *)self remoteDevice];
  [transport setRemoteDevice:remoteDevice];

  return transport;
}

- (NSArray)allIdentifiers
{
  identifiers = [(CSDRelayIDSDualSession *)self identifiers];
  allObjects = [identifiers allObjects];

  return allObjects;
}

- (BOOL)hasIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = [(CSDRelayIDSDualSession *)self identifiers];
  v6 = [identifiers containsObject:identifierCopy];

  return v6;
}

- (void)addIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = [(CSDRelayIDSDualSession *)self identifiers];
  [identifiers addObject:identifierCopy];
}

- (void)addIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  identifiers = [(CSDRelayIDSDualSession *)self identifiers];
  [identifiers addObjectsFromArray:identifiersCopy];
}

- (void)removeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = [(CSDRelayIDSDualSession *)self identifiers];
  [identifiers removeObject:identifierCopy];
}

- (void)removeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        identifiers = [(CSDRelayIDSDualSession *)self identifiers];
        [identifiers removeObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [identifiersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)mergeSession:(id)session
{
  sessionCopy = session;
  identifiers = [(CSDRelayIDSDualSession *)self identifiers];
  allIdentifiers = [sessionCopy allIdentifiers];
  [identifiers addObjectsFromArray:allIdentifiers];

  identifiers2 = [sessionCopy identifiers];
  [identifiers2 removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  blocksPendingTransportAvailability = [sessionCopy blocksPendingTransportAvailability];
  v9 = [blocksPendingTransportAvailability countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(blocksPendingTransportAvailability);
        }

        [(CSDRelayIDSDualSession *)self performBlockOnTransportAvailability:*(*(&v14 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [blocksPendingTransportAvailability countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  blocksPendingTransportAvailability2 = [sessionCopy blocksPendingTransportAvailability];
  [blocksPendingTransportAvailability2 removeAllObjects];
}

- (void)runBlocksPendingTransportAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(CSDRelayIDSDualSession *)self blocksPendingTransportAvailability];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (availabilityCopy)
        {
          transport = [(CSDRelayIDSDualSession *)self transport];
        }

        else
        {
          transport = 0;
        }

        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_retainBlock(v9);
          acceptPayloadData = [(CSDRelayIDSDualSession *)self acceptPayloadData];
          *buf = 138413058;
          v14 = @"non-nil";
          if (!acceptPayloadData)
          {
            v14 = @"nil";
          }

          selfCopy = self;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = transport;
          v28 = 2112;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: %@ running block %@ with transport %@ and %@ accept payload data", buf, 0x2Au);
        }

        acceptPayloadData2 = [(CSDRelayIDSDualSession *)self acceptPayloadData];
        (v9)[2](v9, transport, acceptPayloadData2);
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v6);
  }

  blocksPendingTransportAvailability = [(CSDRelayIDSDualSession *)self blocksPendingTransportAvailability];
  [blocksPendingTransportAvailability removeAllObjects];
}

- (void)performBlockOnTransportAvailability:(id)availability
{
  availabilityCopy = availability;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(availabilityCopy);
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ pending block on transport availability: %@", buf, 0x16u);
  }

  blocksPendingTransportAvailability = [(CSDRelayIDSDualSession *)self blocksPendingTransportAvailability];
  v8 = objc_retainBlock(availabilityCopy);
  [blocksPendingTransportAvailability addObject:v8];

  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailabilityIfNecessary:1];
  v9 = dispatch_time(0, 20000000000);
  v10 = +[TUCallCenter sharedInstance];
  queue = [v10 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C5D3C;
  v13[3] = &unk_10061ACD0;
  v13[4] = self;
  v14 = availabilityCopy;
  v12 = availabilityCopy;
  dispatch_after(v9, queue, v13);
}

- (void)pendData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v9 = objc_alloc_init(CSDRelayIDSDualSessionData);
  [(CSDRelayIDSDualSessionData *)v9 setData:dataCopy];

  [(CSDRelayIDSDualSessionData *)v9 setCompletion:completionCopy];
  pendingData = [(CSDRelayIDSDualSession *)self pendingData];
  [pendingData addObject:v9];
}

- (void)sendPendingData
{
  pendingData = [(CSDRelayIDSDualSession *)self pendingData];
  v4 = [pendingData copy];

  pendingData2 = [(CSDRelayIDSDualSession *)self pendingData];
  [pendingData2 removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        data = [v11 data];
        completion = [v11 completion];
        [(CSDRelayIDSDualSession *)self sendData:data waitUntilConnected:1 completion:completion];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)removePendingData
{
  pendingData = [(CSDRelayIDSDualSession *)self pendingData];
  v4 = [pendingData copy];

  pendingData2 = [(CSDRelayIDSDualSession *)self pendingData];
  [pendingData2 removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        completion = [v11 completion];

        if (completion)
        {
          completion2 = [v11 completion];
          completion2[2](completion2, 1);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)sendData:(id)data waitUntilConnected:(BOOL)connected completion:(id)completion
{
  connectedCopy = connected;
  dataCopy = data;
  completionCopy = completion;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendData self: %@", &v17, 0xCu);
  }

  state = [(CSDIDSDualSession *)self state];
  if (state - 1 < 2)
  {
    v14 = sub_100004778();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (connectedCopy)
    {
      if (v15)
      {
        v17 = 138412290;
        selfCopy5 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session %@ is not connected and waitUntilConnected is YES. Pending data", &v17, 0xCu);
      }

      [(CSDRelayIDSDualSession *)self pendData:dataCopy completion:completionCopy];
      goto LABEL_22;
    }

    if (v15)
    {
      v17 = 138412290;
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session %@ is not connected but waitUntilConnected is NO. Sending data", &v17, 0xCu);
    }

LABEL_19:
    sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
    [sessionProvider sendData:dataCopy];
    v13 = 0;
    goto LABEL_20;
  }

  if (state - 4 >= 2)
  {
    if (state != 3)
    {
      v13 = 0;
      if (!completionCopy)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      selfCopy5 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Session %@ is connected. Sending data", &v17, 0xCu);
    }

    goto LABEL_19;
  }

  sessionProvider = sub_100004778();
  if (os_log_type_enabled(sessionProvider, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, sessionProvider, OS_LOG_TYPE_DEFAULT, "Session %@ is ending/ended. Dropping data on the floor", &v17, 0xCu);
  }

  v13 = 1;
LABEL_20:

  if (completionCopy)
  {
LABEL_21:
    completionCopy[2](completionCopy, v13);
LABEL_22:
  }

LABEL_23:
}

- (void)sendData:(id)data toDestinations:(id)destinations completion:(id)completion
{
  dataCopy = data;
  destinationsCopy = destinations;
  completionCopy = completion;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    selfCopy3 = self;
    v18 = 2112;
    v19 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: %@ destinations: %@", &v16, 0x16u);
  }

  state = [(CSDIDSDualSession *)self state];
  if (state - 2 >= 4)
  {
    if (state != 1)
    {
      v14 = 0;
      if (!completionCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Sending data", &v16, 0xCu);
    }

    sessionProvider = [(CSDIDSDualSession *)self sessionProvider];
    [sessionProvider sendData:dataCopy toDestinations:destinationsCopy];
    v14 = 0;
  }

  else
  {
    sessionProvider = sub_100004778();
    if (os_log_type_enabled(sessionProvider, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, sessionProvider, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Dropping data on the floor", &v16, 0xCu);
    }

    v14 = 1;
  }

  if (completionCopy)
  {
LABEL_12:
    completionCopy[2](completionCopy, v14);
  }

LABEL_13:
}

- (void)sendDataAndAcceptInvitationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!necessaryCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:necessaryCopy alwaysSendData:1];
}

- (void)sendDataAndCancelInvitationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!necessaryCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _cancelInvitationWithData:necessaryCopy reason:0 alwaysSendData:1];
}

- (void)sendDataAndDeclineInvitationIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!necessaryCopy)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _declineInvitationWithData:necessaryCopy alwaysSendData:1];
}

- (void)prepareToEnd
{
  state = [(CSDIDSDualSession *)self state];
  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (state == 3)
  {
    if (v5)
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting session %@ to ending for prepareToEnd", &v6, 0xCu);
    }

    [(CSDIDSDualSession *)self setState:4];
  }

  else
  {
    if (v5)
    {
      v6 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not setting session %@ to ending for prepareToEnd because session is not connected", &v6, 0xCu);
    }
  }
}

- (void)sessionProviderStarted:(id)started
{
  v4.receiver = self;
  v4.super_class = CSDRelayIDSDualSession;
  [(CSDIDSDualSession *)&v4 sessionProviderStarted:started];
  [(CSDRelayIDSDualSession *)self sendPendingData];
  [(CSDRelayIDSDualSession *)self setHasStarted:1];
  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailabilityIfNecessary:1];
}

- (void)sessionProvider:(id)provider receivedInvitationAcceptFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  [(CSDRelayIDSDualSession *)self setHasReceivedAccept:1];
  [(CSDRelayIDSDualSession *)self setAcceptPayloadData:dataCopy];
  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailabilityIfNecessary:1];
  delegate = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:dCopy];
  [(CSDRelayIDSDualSession *)self setRemoteDestination:v10];
  v11 = [delegate deviceForFromID:dCopy];
  [(CSDRelayIDSDualSession *)self setRemoteDevice:v11];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invitation ACCEPT with data for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [delegate session:self receivedInvitationAcceptWithData:dataCopy fromDestination:v10 device:v11];
}

- (void)sessionProvider:(id)provider receivedInvitationCancelFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  delegate = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:dCopy];
  v11 = [delegate deviceForFromID:dCopy];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invitation CANCEL with data for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [delegate session:self receivedInvitationCancelWithData:dataCopy fromDestination:v10 device:v11];
}

- (void)sessionProvider:(id)provider receivedInvitationDeclineFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  delegate = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:dCopy];
  v11 = [delegate deviceForFromID:dCopy];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invitation DECLINE with data for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [delegate session:self receivedInvitationDeclineWithData:dataCopy fromDestination:v10 device:v11];
}

- (void)sessionProvider:(id)provider receivedSessionMessageFromID:(id)d withData:(id)data
{
  dCopy = d;
  dataCopy = data;
  delegate = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:dCopy];
  v11 = [delegate deviceForFromID:dCopy];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    selfCopy = self;
    v15 = 2112;
    v16 = dCopy;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received session MESSAGE for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [delegate session:self receivedData:dataCopy fromDestination:v10 device:v11];
}

- (CSDRelayIDSDualSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end