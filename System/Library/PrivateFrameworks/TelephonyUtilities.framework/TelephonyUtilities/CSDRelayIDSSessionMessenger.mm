@interface CSDRelayIDSSessionMessenger
- (BOOL)deviceOrDestinationWithActiveSessionCanReceiveMessagesForCallProvider:(id)a3 needsConversationRelaySupport:(BOOL)a4;
- (BOOL)sendMessage:(id)a3 andAcceptInvitationIfNecessaryForIdentifier:(id)a4;
- (BOOL)sendMessage:(id)a3 andCancelOrDeclineInvitationIfNecessaryForIdentifier:(id)a4;
- (CSDRelayIDSDualSession)currentSession;
- (CSDRelayIDSDualSession)waitingSession;
- (CSDRelayIDSSessionMessenger)initWithQueue:(id)a3 localRouteController:(id)a4;
- (IDSDestination)destinationWithActiveSession;
- (IDSDevice)deviceWithActiveSession;
- (id)_createSessionToDestinations:(id)a3;
- (id)_createSessionToDevices:(id)a3;
- (id)_createSessionsToAllDevicesSupportingProvider:(id)a3 requiresConversationRelaySupport:(BOOL)a4;
- (id)_sendMessageOptionsWithTimeout:(double)a3;
- (id)activeSessionForIdentifier:(id)a3;
- (id)deviceForFromID:(id)a3;
- (id)sessionForIdentifier:(id)a3;
- (int)sessionProtocolVersionForIdentifier:(id)a3;
- (void)_destroySession:(id)a3;
- (void)_sendMessage:(id)a3 andCancelInvitationIfNecessaryForSession:(id)a4;
- (void)_sendMessage:(id)a3 andDeclineInvitationIfNecessaryForSession:(id)a4;
- (void)acceptInvitationForIdentifier:(id)a3;
- (void)cancelOrDeclineInvitationForIdentifier:(id)a3;
- (void)dealloc;
- (void)endEndingSessions;
- (void)performBlockOnTransportAvailability:(id)a3 forIdentifier:(id)a4;
- (void)prepareConnectedSessionsToEnd;
- (void)prepareSessionToEndForIdentifier:(id)a3;
- (void)sendMessage:(id)a3 andStartSessionIfNecessaryForIdentifier:(id)a4 toDestination:(id)a5 timeout:(int64_t)a6 completionHandler:(id)a7;
- (void)sendMessage:(id)a3 andStartSessionIfNecessaryForIdentifiers:(id)a4 toDestination:(id)a5 timeout:(int64_t)a6 completionHandler:(id)a7;
- (void)sendMessage:(id)a3 forCall:(id)a4 completionHandler:(id)a5;
- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7;
- (void)session:(id)a3 endedWithReason:(int)a4;
- (void)session:(id)a3 receivedData:(id)a4 fromDestination:(id)a5 device:(id)a6;
- (void)session:(id)a3 receivedInvitationAcceptWithData:(id)a4 fromDestination:(id)a5 device:(id)a6;
- (void)session:(id)a3 receivedInvitationCancelWithData:(id)a4 fromDestination:(id)a5 device:(id)a6;
- (void)session:(id)a3 receivedInvitationDeclineWithData:(id)a4 fromDestination:(id)a5 device:(id)a6;
@end

@implementation CSDRelayIDSSessionMessenger

- (CSDRelayIDSSessionMessenger)initWithQueue:(id)a3 localRouteController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CSDRelayIDSSessionMessenger;
  v9 = [(CSDRelayIDSSessionMessenger *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = +[NSMutableArray array];
    sessions = v10->_sessions;
    v10->_sessions = v11;

    objc_storeStrong(&v10->_localRouteController, a4);
    v13 = +[CSDRelayIDSService sharedInstance];
    [v13 addServiceDelegate:v10 queue:v10->_queue];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[CSDRelayIDSService sharedInstance];
  [v3 removeServiceDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDRelayIDSSessionMessenger;
  [(CSDRelayIDSSessionMessenger *)&v4 dealloc];
}

- (void)performBlockOnTransportAvailability:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:v7];
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100245CD8;
    v10[3] = &unk_10061F8C8;
    v11 = v6;
    [v8 performBlockOnTransportAvailability:v10];
    v9 = v11;
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find session for identifier %@ to perform block on transport availability for. Dropping this block on the floor", buf, 0xCu);
    }
  }
}

- (IDSDestination)destinationWithActiveSession
{
  v2 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v3 = [v2 remoteDestination];

  return v3;
}

- (IDSDevice)deviceWithActiveSession
{
  v2 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v3 = [v2 remoteDevice];

  return v3;
}

- (id)_createSessionsToAllDevicesSupportingProvider:(id)a3 requiresConversationRelaySupport:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[NSMutableSet alloc] initWithArray:&__NSArray0__struct];
  v8 = +[CSDRelayIDSService sharedInstance];
  v9 = [v8 devices];

  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v9 count]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([v16 canReceiveMessagesForCallProvider:{v6, v24}] && (!v4 || objc_msgSend(v16, "canReceiveRelayedGFTCalls")))
        {
          v17 = [v16 destination];
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v18 = [v10 copy];
    v19 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v18];
    [v7 addObject:v19];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (v4)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = [v11 count];
      *buf = 138412802;
      v29 = v6;
      v30 = 2112;
      v31 = v20;
      v32 = 2048;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No primary devices found that support call provider %@, requiresConversationRelaySupport %@. primaryAccountDevices count: %lu, not creating a session.", buf, 0x20u);
    }
  }

  v22 = [v7 copy];

  return v22;
}

- (id)_createSessionToDevices:(id)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating session to devices: %@", buf, 0xCu);
  }

  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v3 count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 destination];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] destination for device returned a nil value, so we are going to skip creating a session to it: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v14];

  return v15;
}

- (id)_createSessionToDestinations:(id)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating session to destinations: %@", &v10, 0xCu);
  }

  if ([v3 count])
  {
    v5 = [IDSSession alloc];
    v6 = +[CSDRelayIDSService sharedInstance];
    v7 = [v6 account];
    v8 = [v5 initWithAccount:v7 destinations:v3 transportType:0];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Would have created a session to an empty destination set. Returning a nil session", &v10, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_destroySession:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying session %@", &v7, 0xCu);
  }

  v6 = [(CSDRelayIDSSessionMessenger *)self sessions];
  [v6 removeObject:v4];

  [v4 setDelegate:0];
}

- (CSDRelayIDSDualSession)waitingSession
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CSDRelayIDSSessionMessenger *)self sessions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 = *(*(&v10 + 1) + 8 * v7);

      if ([v5 state] == 1)
      {
        break;
      }

      v7 = v7 + 1;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

  return v5;
}

- (CSDRelayIDSDualSession)currentSession
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(CSDRelayIDSSessionMessenger *)self sessions];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v5 = *(*(&v10 + 1) + 8 * v7);

      if ([v5 state] >= 2 && objc_msgSend(v5, "state") < 4)
      {
        break;
      }

      v7 = v7 + 1;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

  return v5;
}

- (id)activeSessionForIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CSDRelayIDSSessionMessenger *)self sessions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 hasIdentifier:v4] && objc_msgSend(v9, "state") <= 3)
        {
          v6 = v9;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)sessionForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSDRelayIDSSessionMessenger *)self sessions];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v8 = *(*(&v13 + 1) + 8 * v10);

      if ([v8 hasIdentifier:v4])
      {
        break;
      }

      v10 = v10 + 1;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (int)sessionProtocolVersionForIdentifier:(id)a3
{
  v3 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:a3];
  v4 = [v3 remoteProtocolVersion];

  return v4;
}

- (void)prepareSessionToEndForIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to prepare session to end for identifier %@", &v7, 0xCu);
  }

  v6 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:v4];
  [v6 prepareToEnd];
}

- (void)prepareConnectedSessionsToEnd
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to prepare connected sessions to end", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CSDRelayIDSSessionMessenger *)self sessions];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 state] == 3)
        {
          [v9 prepareToEnd];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)acceptInvitationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accepting session for identifier %@", &v7, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:0];
  [(CSDRelayIDSSessionMessenger *)self sendMessage:v6 andAcceptInvitationIfNecessaryForIdentifier:v4];
}

- (void)cancelOrDeclineInvitationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling/declining session for identifier %@", &v7, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:0];
  [(CSDRelayIDSSessionMessenger *)self sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v4];
}

- (void)endEndingSessions
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to end ending sessions", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CSDRelayIDSSessionMessenger *)self sessions];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 state] == 4)
        {
          [v9 end];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)deviceOrDestinationWithActiveSessionCanReceiveMessagesForCallProvider:(id)a3 needsConversationRelaySupport:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
  if ([v7 canReceiveMessagesForCallProvider:v6])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    v8 = [v9 canReceiveMessagesForCallProvider:v6];
  }

  if (v4)
  {
    v10 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    if ([v10 canReceiveRelayedGFTCalls])
    {
      v11 = 1;
    }

    else
    {
      v12 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
      v13 = +[CSDRelayIDSService sharedInstance];
      v14 = [v12 deviceForService:v13];
      v11 = [v14 canReceiveRelayedGFTCalls];
    }
  }

  else
  {
    v11 = 1;
  }

  return v8 & v11;
}

- (void)sendMessage:(id)a3 andStartSessionIfNecessaryForIdentifier:(id)a4 toDestination:(id)a5 timeout:(int64_t)a6 completionHandler:(id)a7
{
  v17 = a4;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [NSArray arrayWithObjects:&v17 count:1];

  [(CSDRelayIDSSessionMessenger *)self sendMessage:v15 andStartSessionIfNecessaryForIdentifiers:v16 toDestination:v13 timeout:a6 completionHandler:v12, v17];
}

- (void)sendMessage:(id)a3 andStartSessionIfNecessaryForIdentifiers:(id)a4 toDestination:(id)a5 timeout:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v12 typeString];
    *buf = 138412546;
    v46 = v17;
    v47 = 2112;
    v48 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sendMessageAndStartSessionIfNecessary for message type %@: %@", buf, 0x16u);
  }

  v18 = [v13 firstObject];
  v19 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:v18];

  if (v19)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10047DBE8(v13);
    }

LABEL_7:
    v21 = 0;
    v22 = 0;
    goto LABEL_8;
  }

  v23 = [(CSDRelayIDSSessionMessenger *)self currentSession];

  if (!v23)
  {
    v36 = sub_100004778();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (!v14)
    {
      if (v37)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] No IDSSession exists, and given device is nil. We can't start this session", buf, 2u);
      }

      goto LABEL_7;
    }

    if (v37)
    {
      *buf = 138412290;
      v46 = v14;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "No IDSSession exists. Starting a new one by inviting to destination %@", buf, 0xCu);
    }

    v32 = [NSSet setWithObject:v14];
    v22 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v32];
LABEL_23:

    if (v22)
    {
      v21 = 1;
      [(CSDRelayIDSSessionMessenger *)self _startSession:v22 withMessage:v12 identifiers:v13 timeout:a6 declineOnError:1];
    }

    else
    {
      v21 = 0;
    }

LABEL_8:
    if (v15)
    {
      v15[2](v15, v21, 1);
    }

    goto LABEL_10;
  }

  v24 = sub_100004778();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    *buf = 138412290;
    v46 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "A session exists: %@", buf, 0xCu);
  }

  v26 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v27 = [v26 remoteProtocolVersion];

  v28 = sub_100004778();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27 > 0)
  {
    v42 = v14;
    if (v29)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Starting a new session to the destination of the device with an active session", buf, 2u);
    }

    v30 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    v31 = [v30 destination];

    if (!v31)
    {
      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot start a new session, no valid destination", buf, 2u);
      }

      v21 = 0;
      v22 = 0;
      goto LABEL_8;
    }

    v32 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    v33 = [v32 destination];
    [NSSet setWithObject:v33];
    v35 = v34 = a6;
    v22 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v35];

    a6 = v34;
    v14 = v42;
    goto LABEL_23;
  }

  if (v29)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sending the message through the existing session", buf, 2u);
  }

  v38 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  [v38 addIdentifiers:v13];

  v39 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v40 = [v12 data];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100247F18;
  v43[3] = &unk_10061F8F0;
  v44 = v15;
  [v39 sendData:v40 waitUntilConnected:1 completion:v43];

  v22 = 0;
  v15 = 0;
LABEL_10:
}

- (BOOL)sendMessage:(id)a3 andAcceptInvitationIfNecessaryForIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 typeString];
    v31 = 138412802;
    v32 = v7;
    v33 = 2112;
    v34 = v9;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendMessage:andAcceptInvitationIfNecessaryForIdentifier for identifier %@ and message type %@: %@", &v31, 0x20u);
  }

  [v6 addProtocolVersion];
  v10 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:v7];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 138412290;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v31, 0xCu);
  }

  v12 = [(CSDRelayIDSSessionMessenger *)self currentSession];

  if (!v12)
  {
    v22 = sub_100004778();
    v23 = v22;
    if (v10)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138412290;
        v32 = v10;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No current session already exists, so sending the message through this session %@", &v31, 0xCu);
      }

      v24 = [v6 data];
      [v10 sendDataAndAcceptInvitationIfNecessary:v24];

      goto LABEL_16;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v30 = [(CSDRelayIDSSessionMessenger *)self sessions];
      v31 = 138412802;
      v32 = v7;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v30;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not determine session to accept for identifier %@ and message %@. All sessions: %@", &v31, 0x20u);
    }

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    v31 = 138412290;
    v32 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "A current session already exists: %@", &v31, 0xCu);
  }

  v15 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v16 = [v15 remoteProtocolVersion];

  v17 = sub_100004778();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16 <= 0)
  {
    if (v18)
    {
      LOWORD(v31) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending the message through the current session", &v31, 2u);
    }

    v26 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    [v26 addIdentifier:v7];

    v27 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    v28 = [v6 data];
    [v27 sendDataAndAcceptInvitationIfNecessary:v28];

    goto LABEL_23;
  }

  if (v18)
  {
    v31 = 138412290;
    v32 = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending the message through the current session and declining this one %@", &v31, 0xCu);
  }

  v19 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  [v19 mergeSession:v10];

  v20 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v21 = [v6 data];
  [v20 sendDataAndAcceptInvitationIfNecessary:v21];

  [v10 sendDataAndDeclineInvitationIfNecessary:0];
LABEL_16:
  v25 = 1;
LABEL_24:

  return v25;
}

- (BOOL)sendMessage:(id)a3 andCancelOrDeclineInvitationIfNecessaryForIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 typeString];
    v17 = 138412802;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendMessage:andCancelOrDeclineInvitationIfNecessaryForIdentifier for identifier %@ and message type %@: %@", &v17, 0x20u);
  }

  v10 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:v7];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v17, 0xCu);
  }

  if (v10)
  {
    v12 = [v10 allIdentifiers];
    v13 = [v12 count];

    if (v13 < 2)
    {
      if ([v10 isInitiator])
      {
        [(CSDRelayIDSSessionMessenger *)self _sendMessage:v6 andCancelInvitationIfNecessaryForSession:v10];
      }

      else
      {
        [(CSDRelayIDSSessionMessenger *)self _sendMessage:v6 andDeclineInvitationIfNecessaryForSession:v10];
      }
    }

    else
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 allIdentifiers];
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session has multiple identifiers: %@. Removing identifier %@ and not canceling/declining", &v17, 0x16u);
      }

      [(CSDRelayIDSSessionMessenger *)self sendMessage:v6 forIdentifier:v7];
      [v10 removeIdentifier:v7];
    }
  }

  return v10 != 0;
}

- (void)_sendMessage:(id)a3 andCancelInvitationIfNecessaryForSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 typeString];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_sendMessage:andCancelInvitationIfNecessaryForIdentifier for session %@ and message type %@: %@", &v11, 0x20u);
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v11, 0xCu);
  }

  v10 = [v5 data];
  [v6 sendDataAndCancelInvitationIfNecessary:v10];
}

- (void)_sendMessage:(id)a3 andDeclineInvitationIfNecessaryForSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 typeString];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_sendMessage:andDeclineInvitationIfNecessaryForIdentifier for session %@ and message type %@: %@", &v11, 0x20u);
  }

  [v5 addProtocolVersion];
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v11, 0xCu);
  }

  v10 = [v5 data];
  [v6 sendDataAndDeclineInvitationIfNecessary:v10];
}

- (id)_sendMessageOptionsWithTimeout:(double)a3
{
  v4 = [NSMutableDictionary dictionaryWithCapacity:3];
  v5 = [NSNumber numberWithDouble:a3];
  [v4 setObject:v5 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionWantsClientAcknowledgementKey];
  if (+[IDSDevice pairedDeviceUniqueIDOverrideExists])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Removing IDSSendMessageOptionForceLocalDeliveryKey key from sendMessage options because pairedDeviceUniqueIDOverride exists", v9, 2u);
    }

    [v4 removeObjectForKey:IDSSendMessageOptionForceLocalDeliveryKey];
  }

  v7 = [v4 copy];

  return v7;
}

- (void)sendMessage:(id)a3 forCall:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDRelayIDSSessionMessenger *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100248AC0;
  v15[3] = &unk_10061AF98;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)service:(id)a3 account:(id)a4 inviteReceivedForSession:(id)a5 fromID:(id)a6 withContext:(id)a7
{
  v34 = a3;
  v35 = a4;
  v38 = a5;
  v13 = a6;
  v37 = a7;
  v40 = [IDSDestination destinationWithURI:v13];
  v14 = +[CSDRelayIDSService sharedInstance];
  v15 = [v14 deviceForFromID:v13];

  v39 = [[CSDMessagingRelayMessage alloc] initWithData:v37];
  v36 = [(CSDRelayIDSMessenger *)self delegate];
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = +[NSDate date];
    [v17 timeIntervalSince1970];
    *buf = 138413570;
    *&buf[4] = v38;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v51 = v40;
    *v52 = 2112;
    *&v52[2] = v15;
    *&v52[10] = 2112;
    *&v52[12] = v39;
    v53 = 2048;
    v54 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for session %@ from (fromID=%@) destination %@ device %@ with message %@ (timestamp: %f)", buf, 0x3Eu);
  }

  v19 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
  if ([v40 isEqual:v20])
  {

LABEL_8:
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
      v25 = [v40 isEqual:v24];
      if (v15)
      {
        v7 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
        v26 = [v15 isEqual:v7];
      }

      else
      {
        v26 = 0;
      }

      v27 = [(CSDRelayIDSSessionMessenger *)self currentSession];
      *buf = 67109632;
      *&buf[4] = v25;
      *&buf[8] = 1024;
      *&buf[10] = v26;
      *&buf[14] = 1024;
      *&buf[16] = v27 == 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "... and it's from the same destination that we have an active session with (%d) or it's from the same device that we have an active session with (%d) or we don't have a session (%d)", buf, 0x14u);

      if (v15)
      {
      }
    }

    if (v39)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v51 = sub_100028740;
      *v52 = sub_10003291C;
      *&v52[8] = self->_queue;
      objc_initWeak(&location, self);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100249ABC;
      v41[3] = &unk_10061F940;
      v47 = buf;
      objc_copyWeak(&v48, &location);
      v42 = v36;
      v43 = v39;
      v44 = v38;
      v45 = v40;
      v46 = v15;
      [v42 checkShouldIgnoreSessionInviteWithMessage:v43 fromDestination:v45 completion:v41];

      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_30;
    }

    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "... but there was no accompanying message so just ignoring the invite", buf, 2u);
    }

LABEL_29:

    goto LABEL_30;
  }

  if (v15)
  {
    v21 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    v22 = [v15 isEqual:v21];

    if (v22)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v29 = sub_100004778();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "... but it is from a different device than the one that we have an active session with", buf, 2u);
  }

  v30 = [v36 shouldDeclineSecondSessionInviteWithMessage:v39];
  v28 = sub_100004778();
  v31 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (!v30)
  {
    if (v31)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "... and we were NOT told to decline the invite, so just ignoring it", buf, 2u);
    }

    goto LABEL_29;
  }

  if (v31)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "... and we were told to decline the invite", buf, 2u);
  }

  v32 = [[CSDMessagingRelayMessage alloc] initWithType:18];
  [(CSDMessagingRelayMessage *)v32 setDisconnectedReason:10];
  v33 = [(CSDMessagingRelayMessage *)v32 data];
  [v38 declineInvitationWithData:v33];

LABEL_30:
}

- (id)deviceForFromID:(id)a3
{
  v3 = a3;
  v4 = +[CSDRelayIDSService sharedInstance];
  v5 = [v4 deviceForFromID:v3];

  return v5;
}

- (void)session:(id)a3 endedWithReason:(int)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session ended with reason %d", &v16, 8u);
  }

  v8 = [(CSDRelayIDSMessenger *)self delegate];
  v9 = [v6 allIdentifiers];
  v10 = [v9 firstObject];
  v11 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:v10];

  if (v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not notifying delegate of messenger connection end because a different active session with the same identifier exists: %@", &v16, 0xCu);
    }
  }

  else if (a4 >= 5)
  {
    if (a4 == 5)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Notifying delegate that connection could not establish link", &v16, 2u);
      }

      v12 = [v6 allIdentifiers];
      [v8 messengerConnectionCouldNotEstablishLink:self forIdentifiers:v12 didStartConnecting:{objc_msgSend(v6, "hasStartedConnecting")}];
    }

    else
    {
      if (a4 != 6)
      {
        goto LABEL_11;
      }

      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Notifying delegate of connection failure", &v16, 2u);
      }

      v12 = [v6 allIdentifiers];
      [v8 messengerConnectionFailed:self forIdentifiers:v12 didStartConnecting:{objc_msgSend(v6, "hasStartedConnecting")}];
    }
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notifying delegate of connection end", &v16, 2u);
    }

    v12 = [v6 allIdentifiers];
    [v8 messengerConnectionEnded:self forIdentifiers:v12 didStartConnecting:{objc_msgSend(v6, "hasStartedConnecting")}];
  }

LABEL_11:
  [(CSDRelayIDSSessionMessenger *)self _destroySession:v6];
}

- (void)session:(id)a3 receivedInvitationAcceptWithData:(id)a4 fromDestination:(id)a5 device:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    v14 = [[CSDMessagingRelayMessage alloc] initWithData:v11];
    [v10 setReceiverProtocolVersion:{-[CSDMessagingRelayMessage protocolVersion](v14, "protocolVersion")}];
    v15 = [(CSDRelayIDSMessenger *)self delegate];
    [v15 messenger:self handledMessage:v14 fromDestination:v12 device:v13];
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received invitation accept with no data payload.", v17, 2u);
    }
  }
}

- (void)session:(id)a3 receivedInvitationCancelWithData:(id)a4 fromDestination:(id)a5 device:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = [(CSDRelayIDSMessenger *)self delegate];
  if (v11)
  {
    v15 = [[CSDMessagingRelayMessage alloc] initWithData:v11];
    v16 = [v10 remoteDevice];
    [v14 messenger:self handledMessage:v15 fromDestination:v13 device:v16];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received invitation cancel with no data payload. Assuming the invitation was answered elsewhere", v18, 2u);
    }

    v15 = [[CSDMessagingRelayMessage alloc] initWithType:5];
    [v14 messenger:self handledMessage:v15 fromDestination:v13 device:v12];
  }
}

- (void)session:(id)a3 receivedInvitationDeclineWithData:(id)a4 fromDestination:(id)a5 device:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = sub_100004778();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "receivedInvitationDeclineWithData", buf, 2u);
    }

    v16 = [[CSDMessagingRelayMessage alloc] initWithData:v10];
    [v13 setReceiverProtocolVersion:{-[CSDMessagingRelayMessage protocolVersion](v16, "protocolVersion")}];

    v13 = [(CSDRelayIDSMessenger *)self delegate];
    [v13 messenger:self handledMessage:v16 fromDestination:v11 device:v12];
  }

  else
  {
    if (v15)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received invitation decline with no data payload. Assuming invitation was accepted by sending a message through another session", v17, 2u);
    }

    v16 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    [(CSDMessagingRelayMessage *)v16 mergeSession:v13];
  }
}

- (void)session:(id)a3 receivedData:(id)a4 fromDestination:(id)a5 device:(id)a6
{
  v16 = a3;
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [[CSDMessagingRelayMessage alloc] initWithData:v12];

  v14 = [(CSDRelayIDSMessenger *)self delegate];
  if ([v16 remoteProtocolVersion] <= 0)
  {
    v15 = [v14 identifiersForSessionInvitationWithMessage:v13];
    [v16 addIdentifiers:v15];
  }

  [v14 messenger:self handledMessage:v13 fromDestination:v10 device:v11];
}

@end