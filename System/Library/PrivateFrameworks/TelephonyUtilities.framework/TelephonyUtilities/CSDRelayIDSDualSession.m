@interface CSDRelayIDSDualSession
- (BOOL)hasIdentifier:(id)a3;
- (CSDRelayIDSDualSessionDelegate)delegate;
- (NSArray)allIdentifiers;
- (id)transport;
- (void)addIdentifier:(id)a3;
- (void)addIdentifiers:(id)a3;
- (void)dealloc;
- (void)mergeSession:(id)a3;
- (void)pendData:(id)a3 completion:(id)a4;
- (void)performBlockOnTransportAvailability:(id)a3;
- (void)prepareToEnd;
- (void)removeIdentifier:(id)a3;
- (void)removeIdentifiers:(id)a3;
- (void)removePendingData;
- (void)runBlocksPendingTransportAvailability:(BOOL)a3;
- (void)sendData:(id)a3 toDestinations:(id)a4 completion:(id)a5;
- (void)sendData:(id)a3 waitUntilConnected:(BOOL)a4 completion:(id)a5;
- (void)sendDataAndAcceptInvitationIfNecessary:(id)a3;
- (void)sendDataAndCancelInvitationIfNecessary:(id)a3;
- (void)sendDataAndDeclineInvitationIfNecessary:(id)a3;
- (void)sendPendingData;
- (void)sessionProvider:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5;
- (void)sessionProvider:(id)a3 receivedInvitationCancelFromID:(id)a4 withData:(id)a5;
- (void)sessionProvider:(id)a3 receivedInvitationDeclineFromID:(id)a4 withData:(id)a5;
- (void)sessionProvider:(id)a3 receivedSessionMessageFromID:(id)a4 withData:(id)a5;
- (void)sessionProviderStarted:(id)a3;
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
  v3 = [(CSDIDSDualSession *)&v7 transport];
  v4 = [(CSDRelayIDSDualSession *)self remoteDestination];
  [v3 setRemoteDestination:v4];

  v5 = [(CSDRelayIDSDualSession *)self remoteDevice];
  [v3 setRemoteDevice:v5];

  return v3;
}

- (NSArray)allIdentifiers
{
  v2 = [(CSDRelayIDSDualSession *)self identifiers];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)hasIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayIDSDualSession *)self identifiers];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)addIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayIDSDualSession *)self identifiers];
  [v5 addObject:v4];
}

- (void)addIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayIDSDualSession *)self identifiers];
  [v5 addObjectsFromArray:v4];
}

- (void)removeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayIDSDualSession *)self identifiers];
  [v5 removeObject:v4];
}

- (void)removeIdentifiers:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(CSDRelayIDSDualSession *)self identifiers];
        [v10 removeObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)mergeSession:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayIDSDualSession *)self identifiers];
  v6 = [v4 allIdentifiers];
  [v5 addObjectsFromArray:v6];

  v7 = [v4 identifiers];
  [v7 removeAllObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v4 blocksPendingTransportAvailability];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v8);
        }

        [(CSDRelayIDSDualSession *)self performBlockOnTransportAvailability:*(*(&v14 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = [v4 blocksPendingTransportAvailability];
  [v13 removeAllObjects];
}

- (void)runBlocksPendingTransportAvailability:(BOOL)a3
{
  v3 = a3;
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
        if (v3)
        {
          v10 = [(CSDRelayIDSDualSession *)self transport];
        }

        else
        {
          v10 = 0;
        }

        v11 = sub_100004778();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_retainBlock(v9);
          v13 = [(CSDRelayIDSDualSession *)self acceptPayloadData];
          *buf = 138413058;
          v14 = @"non-nil";
          if (!v13)
          {
            v14 = @"nil";
          }

          v23 = self;
          v24 = 2112;
          v25 = v12;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: %@ running block %@ with transport %@ and %@ accept payload data", buf, 0x2Au);
        }

        v15 = [(CSDRelayIDSDualSession *)self acceptPayloadData];
        (v9)[2](v9, v10, v15);
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v6);
  }

  v16 = [(CSDRelayIDSDualSession *)self blocksPendingTransportAvailability];
  [v16 removeAllObjects];
}

- (void)performBlockOnTransportAvailability:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_retainBlock(v4);
    *buf = 138412546;
    v16 = self;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ pending block on transport availability: %@", buf, 0x16u);
  }

  v7 = [(CSDRelayIDSDualSession *)self blocksPendingTransportAvailability];
  v8 = objc_retainBlock(v4);
  [v7 addObject:v8];

  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailabilityIfNecessary:1];
  v9 = dispatch_time(0, 20000000000);
  v10 = +[TUCallCenter sharedInstance];
  v11 = [v10 queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C5D3C;
  v13[3] = &unk_10061ACD0;
  v13[4] = self;
  v14 = v4;
  v12 = v4;
  dispatch_after(v9, v11, v13);
}

- (void)pendData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = objc_alloc_init(CSDRelayIDSDualSessionData);
  [(CSDRelayIDSDualSessionData *)v9 setData:v7];

  [(CSDRelayIDSDualSessionData *)v9 setCompletion:v6];
  v8 = [(CSDRelayIDSDualSession *)self pendingData];
  [v8 addObject:v9];
}

- (void)sendPendingData
{
  v3 = [(CSDRelayIDSDualSession *)self pendingData];
  v4 = [v3 copy];

  v5 = [(CSDRelayIDSDualSession *)self pendingData];
  [v5 removeAllObjects];

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
        v12 = [v11 data];
        v13 = [v11 completion];
        [(CSDRelayIDSDualSession *)self sendData:v12 waitUntilConnected:1 completion:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)removePendingData
{
  v3 = [(CSDRelayIDSDualSession *)self pendingData];
  v4 = [v3 copy];

  v5 = [(CSDRelayIDSDualSession *)self pendingData];
  [v5 removeAllObjects];

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
        v12 = [v11 completion];

        if (v12)
        {
          v13 = [v11 completion];
          v13[2](v13, 1);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)sendData:(id)a3 waitUntilConnected:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "sendData self: %@", &v17, 0xCu);
  }

  v11 = [(CSDIDSDualSession *)self state];
  if (v11 - 1 < 2)
  {
    v14 = sub_100004778();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v15)
      {
        v17 = 138412290;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session %@ is not connected and waitUntilConnected is YES. Pending data", &v17, 0xCu);
      }

      [(CSDRelayIDSDualSession *)self pendData:v8 completion:v9];
      goto LABEL_22;
    }

    if (v15)
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session %@ is not connected but waitUntilConnected is NO. Sending data", &v17, 0xCu);
    }

LABEL_19:
    v12 = [(CSDIDSDualSession *)self sessionProvider];
    [v12 sendData:v8];
    v13 = 0;
    goto LABEL_20;
  }

  if (v11 - 4 >= 2)
  {
    if (v11 != 3)
    {
      v13 = 0;
      if (!v9)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Session %@ is connected. Sending data", &v17, 0xCu);
    }

    goto LABEL_19;
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Session %@ is ending/ended. Dropping data on the floor", &v17, 0xCu);
  }

  v13 = 1;
LABEL_20:

  if (v9)
  {
LABEL_21:
    v9[2](v9, v13);
LABEL_22:
  }

LABEL_23:
}

- (void)sendData:(id)a3 toDestinations:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = self;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "self: %@ destinations: %@", &v16, 0x16u);
  }

  v12 = [(CSDIDSDualSession *)self state];
  if (v12 - 2 >= 4)
  {
    if (v12 != 1)
    {
      v14 = 0;
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session %@ is waiting. Sending data", &v16, 0xCu);
    }

    v13 = [(CSDIDSDualSession *)self sessionProvider];
    [v13 sendData:v8 toDestinations:v9];
    v14 = 0;
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Session %@ is not waiting. Dropping data on the floor", &v16, 0xCu);
    }

    v14 = 1;
  }

  if (v10)
  {
LABEL_12:
    v10[2](v10, v14);
  }

LABEL_13:
}

- (void)sendDataAndAcceptInvitationIfNecessary:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!v4)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _acceptInvitationWithData:v4 alwaysSendData:1];
}

- (void)sendDataAndCancelInvitationIfNecessary:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!v4)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _cancelInvitationWithData:v4 reason:0 alwaysSendData:1];
}

- (void)sendDataAndDeclineInvitationIfNecessary:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"non-nil";
    if (!v4)
    {
      v6 = @"nil";
    }

    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "self: %@ data: %@", &v7, 0x16u);
  }

  [(CSDIDSDualSession *)self _declineInvitationWithData:v4 alwaysSendData:1];
}

- (void)prepareToEnd
{
  v3 = [(CSDIDSDualSession *)self state];
  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting session %@ to ending for prepareToEnd", &v6, 0xCu);
    }

    [(CSDIDSDualSession *)self setState:4];
  }

  else
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not setting session %@ to ending for prepareToEnd because session is not connected", &v6, 0xCu);
    }
  }
}

- (void)sessionProviderStarted:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSDRelayIDSDualSession;
  [(CSDIDSDualSession *)&v4 sessionProviderStarted:a3];
  [(CSDRelayIDSDualSession *)self sendPendingData];
  [(CSDRelayIDSDualSession *)self setHasStarted:1];
  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailabilityIfNecessary:1];
}

- (void)sessionProvider:(id)a3 receivedInvitationAcceptFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  [(CSDRelayIDSDualSession *)self setHasReceivedAccept:1];
  [(CSDRelayIDSDualSession *)self setAcceptPayloadData:v8];
  [(CSDRelayIDSDualSession *)self runBlocksPendingTransportAvailabilityIfNecessary:1];
  v9 = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:v7];
  [(CSDRelayIDSDualSession *)self setRemoteDestination:v10];
  v11 = [v9 deviceForFromID:v7];
  [(CSDRelayIDSDualSession *)self setRemoteDevice:v11];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invitation ACCEPT with data for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [v9 session:self receivedInvitationAcceptWithData:v8 fromDestination:v10 device:v11];
}

- (void)sessionProvider:(id)a3 receivedInvitationCancelFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:v7];
  v11 = [v9 deviceForFromID:v7];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invitation CANCEL with data for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [v9 session:self receivedInvitationCancelWithData:v8 fromDestination:v10 device:v11];
}

- (void)sessionProvider:(id)a3 receivedInvitationDeclineFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:v7];
  v11 = [v9 deviceForFromID:v7];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received invitation DECLINE with data for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [v9 session:self receivedInvitationDeclineWithData:v8 fromDestination:v10 device:v11];
}

- (void)sessionProvider:(id)a3 receivedSessionMessageFromID:(id)a4 withData:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDRelayIDSDualSession *)self delegate];
  v10 = [IDSDestination destinationWithURI:v7];
  v11 = [v9 deviceForFromID:v7];
  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138413058;
    v14 = self;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Received session MESSAGE for session %@ from (fromID=%@) destination %@ device %@", &v13, 0x2Au);
  }

  [v9 session:self receivedData:v8 fromDestination:v10 device:v11];
}

- (CSDRelayIDSDualSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end