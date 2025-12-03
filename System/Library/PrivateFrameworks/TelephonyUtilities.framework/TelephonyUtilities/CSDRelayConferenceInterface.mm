@interface CSDRelayConferenceInterface
+ (id)sharedInstanceWithQueue:(id)queue;
- (BOOL)isMutedForIdentifier:(id)identifier;
- (BOOL)isSendingAudioForIdentifier:(id)identifier;
- (CSDAVConference)activeConference;
- (CSDRelayConferenceInterface)initWithSerialQueue:(id)queue;
- (id)_conferenceConnectionsForConference:(id)conference;
- (id)activeConferenceConnectionForIdentifier:(id)identifier;
- (id)conferenceConnectionForIdentifier:(id)identifier;
- (int64_t)inputAudioPowerSpectrumTokenForIdentifier:(id)identifier;
- (int64_t)outputAudioPowerSpectrumTokenForIdentifier:(id)identifier;
- (int64_t)spatialAudioSourceIdentifierForIdentifier:(id)identifier;
- (void)_cleanUpAllConferenceConnectionsForConference:(id)conference withError:(id)error;
- (void)_cleanUpConferenceConnection:(id)connection error:(id)error;
- (void)_postDidCloseNotificationForConference:(id)conference;
- (void)_postDidCloseNotificationForConferenceIfNecessary:(id)necessary;
- (void)_prepareConferenceForConferenceConnection:(id)connection remoteInviteDictionary:(id)dictionary;
- (void)_stopConference:(id)conference;
- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d;
- (void)conference:(id)conference endedWithReason:(int64_t)reason error:(id)error;
- (void)conference:(id)conference inputFrequencyLevelChangedTo:(id)to;
- (void)conference:(id)conference inputLevelChangedTo:(float)to;
- (void)conference:(id)conference outputFrequencyLevelChangedTo:(id)to;
- (void)conference:(id)conference outputLevelChangedTo:(float)to;
- (void)conferenceFinishedPreparing:(id)preparing;
- (void)conferenceStarted:(id)started;
- (void)connectionClosedForConference:(id)conference;
- (void)dealloc;
- (void)mutedChangedForConference:(id)conference;
- (void)prepareConferenceConnection:(id)connection remoteInviteDictionary:(id)dictionary completion:(id)completion;
- (void)prepareConferenceForCall:(id)call remoteInviteDictionary:(id)dictionary completion:(id)completion;
- (void)prepareToStopConferenceForIdentifier:(id)identifier;
- (void)sendData:(id)data throughConferenceForIdentifier:(id)identifier;
- (void)sendingAudioChangedForConference:(id)conference;
- (void)setConferenceActiveForIdentifier:(id)identifier;
- (void)startConferenceForIdentifier:(id)identifier usingTransport:(id)transport remoteInviteDictionary:(id)dictionary didStartHandler:(id)handler didStopHandler:(id)stopHandler;
- (void)stopConferenceForIdentifier:(id)identifier;
- (void)uplinkMutedStatusChanged:(id)changed;
@end

@implementation CSDRelayConferenceInterface

+ (id)sharedInstanceWithQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013CD1C;
  block[3] = &unk_100619D38;
  queueCopy = queue;
  v3 = qword_1006ACD50;
  v4 = queueCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACD50, block);
  }

  v5 = qword_1006ACD48;
  v6 = qword_1006ACD48;

  return v5;
}

- (CSDRelayConferenceInterface)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = CSDRelayConferenceInterface;
  v6 = [(CSDRelayConferenceInterface *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[NSMutableArray array];
    conferenceConnections = v7->_conferenceConnections;
    v7->_conferenceConnections = v8;

    v10 = +[NSMutableSet set];
    conferencesAwaitingConnectionClose = v7->_conferencesAwaitingConnectionClose;
    v7->_conferencesAwaitingConnectionClose = v10;

    conferenceCreationBlock = v7->_conferenceCreationBlock;
    v7->_conferenceCreationBlock = &stru_10061C4B0;

    *&v7->_connectionTimeout = xmmword_10057A1F0;
    v7->_prepareToStopTimeout = 10.0;
    v13 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v7 selector:"uplinkMutedStatusChanged:" name:TUAudioSystemUplinkMuteStatusChangedNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDRelayConferenceInterface;
  [(CSDRelayConferenceInterface *)&v4 dealloc];
}

- (void)uplinkMutedStatusChanged:(id)changed
{
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_async(queue, &stru_10061C4D0);
}

- (BOOL)isMutedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];

  if (v6)
  {
    conference = [v6 conference];
    isMuted = [conference isMuted];
  }

  else
  {
    isMuted = 0;
  }

  return isMuted;
}

- (BOOL)isSendingAudioForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];

  if (v6)
  {
    conference = [v6 conference];
    isSendingAudio = [conference isSendingAudio];
  }

  else
  {
    isSendingAudio = 0;
  }

  return isSendingAudio;
}

- (int64_t)inputAudioPowerSpectrumTokenForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];

  if (v6)
  {
    conference = [v6 conference];
    inputAudioPowerSpectrumToken = [conference inputAudioPowerSpectrumToken];
  }

  else
  {
    inputAudioPowerSpectrumToken = 0;
  }

  return inputAudioPowerSpectrumToken;
}

- (int64_t)outputAudioPowerSpectrumTokenForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];

  if (v6)
  {
    conference = [v6 conference];
    outputAudioPowerSpectrumToken = [conference outputAudioPowerSpectrumToken];
  }

  else
  {
    outputAudioPowerSpectrumToken = 0;
  }

  return outputAudioPowerSpectrumToken;
}

- (int64_t)spatialAudioSourceIdentifierForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];

  if (v6)
  {
    conference = [v6 conference];
    callID = [conference callID];
  }

  else
  {
    callID = 0;
  }

  return callID;
}

- (void)prepareConferenceConnection:(id)connection remoteInviteDictionary:(id)dictionary completion:(id)completion
{
  connectionCopy = connection;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
    *buf = 138412802;
    v41 = connectionCopy;
    v42 = 2112;
    v43 = dictionaryCopy;
    v44 = 2112;
    v45 = conferenceConnections;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asked to prepare conference connection %@ remoteInviteDictionary %@, current conference connections: %@", buf, 0x20u);
  }

  v33 = completionCopy;
  v34 = connectionCopy;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  conferenceConnections2 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v15 = [conferenceConnections2 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v36;
LABEL_5:
    v19 = 0;
    while (1)
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(conferenceConnections2);
      }

      v20 = *(*(&v35 + 1) + 8 * v19);
      if (([v20 isPreparedToStop] & 1) == 0)
      {
        conference = [v20 conference];
        state = [conference state];

        if (state - 4 < 2)
        {
          if (dictionaryCopy)
          {
            conference2 = [v20 conference];
            v24 = v20;

            v17 = v24;
            if (conference2)
            {
LABEL_18:

              v25 = sub_100004778();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v41 = conference2;
                v42 = 2112;
                v43 = v17;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not preparing a new conference because another conference already exists: %@, relayConferenceConnectionToReuse: %@", buf, 0x16u);
              }

              v26 = v34;
              [v34 setConference:conference2];
              v27 = v33;
              [v34 setDidPrepareHandler:v33];
              conferenceConnections3 = [(CSDRelayConferenceInterface *)self conferenceConnections];
              [conferenceConnections3 addObject:v34];

              if ([conference2 state] >= 3)
              {
                localInviteDictionary = [conference2 localInviteDictionary];
                [v34 invokeDidPrepareIfNecessary:localInviteDictionary];
                goto LABEL_29;
              }

              goto LABEL_30;
            }
          }
        }

        else if (state - 2 <= 1)
        {
          conference2 = [v20 conference];
          if (conference2)
          {
            goto LABEL_18;
          }
        }
      }

      if (v16 == ++v19)
      {
        v16 = [conferenceConnections2 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v16)
        {
          goto LABEL_5;
        }

        goto LABEL_23;
      }
    }
  }

  v17 = 0;
LABEL_23:

  v26 = v34;
  identifier = [v34 identifier];
  localInviteDictionary = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifier];

  if (localInviteDictionary)
  {
    v31 = sub_100004778();
    v27 = v33;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100475E84(localInviteDictionary, v31);
    }
  }

  else
  {
    v27 = v33;
    [v34 setDidPrepareHandler:v33];
    conferenceConnections4 = [(CSDRelayConferenceInterface *)self conferenceConnections];
    [conferenceConnections4 addObject:v34];

    [(CSDRelayConferenceInterface *)self _prepareConferenceForConferenceConnection:v34 remoteInviteDictionary:dictionaryCopy];
  }

  conference2 = 0;
LABEL_29:

LABEL_30:
}

- (void)prepareConferenceForCall:(id)call remoteInviteDictionary:(id)dictionary completion:(id)completion
{
  completionCopy = completion;
  dictionaryCopy = dictionary;
  callCopy = call;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = [[CSDRelayConferenceConnection alloc] initWithCall:callCopy];
  [(CSDRelayConferenceInterface *)self prepareConferenceConnection:v12 remoteInviteDictionary:dictionaryCopy completion:completionCopy];
}

- (void)startConferenceForIdentifier:(id)identifier usingTransport:(id)transport remoteInviteDictionary:(id)dictionary didStartHandler:(id)handler didStopHandler:(id)stopHandler
{
  identifierCopy = identifier;
  transportCopy = transport;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  stopHandlerCopy = stopHandler;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to start conference for identifier %@", &v34, 0xCu);
  }

  v19 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];
  v20 = v19;
  if (v19)
  {
    [v19 setTransport:transportCopy];
    if (handlerCopy)
    {
      v21 = handlerCopy;
    }

    else
    {
      v21 = &stru_10061C510;
    }

    [v20 setDidStartHandler:v21];
    if (stopHandlerCopy)
    {
      v22 = stopHandlerCopy;
    }

    else
    {
      v22 = &stru_10061C530;
    }

    [v20 setDidStopHandler:v22];
    activeConference = [(CSDRelayConferenceInterface *)self activeConference];

    if (activeConference)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "We already have an active conference. Invoking this conference connection's didStart immediately", &v34, 2u);
      }

      activeConference2 = [(CSDRelayConferenceInterface *)self activeConference];
      [v20 setConference:activeConference2];

      identifier = [v20 identifier];
      [(CSDRelayConferenceInterface *)self setConferenceActiveForIdentifier:identifier];

      [v20 invokeDidStartIfNecessary:1 error:0];
    }

    else
    {
      conference = [v20 conference];
      remoteInviteDictionary = [conference remoteInviteDictionary];

      if (!remoteInviteDictionary)
      {
        if (dictionaryCopy)
        {
          conference2 = [v20 conference];
          [conference2 setRemoteInviteDictionary:dictionaryCopy];
        }

        else
        {
          isHost = [v20 isHost];
          conference2 = [v20 conference];
          [conference2 setCaller:isHost];
        }
      }

      conference3 = [v20 conference];
      transport = [v20 transport];
      [conference3 startConnectionWithTransport:transport];
    }
  }

  else
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100475EFC(identifierCopy, self, v27);
    }
  }
}

- (void)sendData:(id)data throughConferenceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asked to send data to conference for identifier %@", &v12, 0xCu);
  }

  v10 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];
  conference = [v10 conference];
  [conference sendData:dataCopy];
}

- (void)setConferenceActiveForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting conference connection active: %@", &v9, 0xCu);
    }

    identifier = [v6 identifier];
    -[CSDRelayConferenceInterface updateConferenceForIdentifier:isUsingBaseband:disableAudio:isTinCan:](self, "updateConferenceForIdentifier:isUsingBaseband:disableAudio:isTinCan:", identifier, [v6 isUsingBaseband], 0, objc_msgSend(v6, "isTinCan"));
  }
}

- (void)prepareToStopConferenceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to prepare to stop conference for identifier %@", buf, 0xCu);
  }

  v7 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [v7 setPreparedToStop:1];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    conference = [v8 conference];
    v10 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:conference];

    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if (![*(*(&v22 + 1) + 8 * v14) isPreparedToStop])
          {

            goto LABEL_16;
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pausing audio and setting up timeout for conference connection: %@", buf, 0xCu);
    }

    conference2 = [v8 conference];
    [conference2 setSendingAudio:0];

    [(CSDRelayConferenceInterface *)self prepareToStopTimeout];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    queue2 = [(CSDRelayConferenceInterface *)self queue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013E55C;
    v20[3] = &unk_100619D88;
    v20[4] = self;
    v21 = v8;
    dispatch_after(v18, queue2, v20);
  }

LABEL_16:
}

- (void)stopConferenceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to stop conference for identifier %@", &v10, 0xCu);
  }

  v7 = [(CSDRelayConferenceInterface *)self conferenceConnectionForIdentifier:identifierCopy];
  if (v7)
  {
    [(CSDRelayConferenceInterface *)self _cleanUpConferenceConnection:v7 error:0];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
      v10 = 138412546;
      v11 = identifierCopy;
      v12 = 2112;
      v13 = conferenceConnections;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find conference connection for identifier %@. All conference connections: %@", &v10, 0x16u);
    }
  }
}

- (id)activeConferenceConnectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v7 = [conferenceConnections countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(conferenceConnections);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        if ([identifier isEqualToString:identifierCopy] && !objc_msgSend(v10, "isPreparedToStop"))
        {
          conference = [v10 conference];
          state = [conference state];

          if (state <= 5)
          {
            v7 = v10;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v7 = [conferenceConnections countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v7;
}

- (id)conferenceConnectionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v7 = [conferenceConnections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(conferenceConnections);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [conferenceConnections countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)_conferenceConnectionsForConference:(id)conference
{
  conferenceCopy = conference;
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v8 = [conferenceConnections countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(conferenceConnections);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        conference = [v12 conference];

        if (conference == conferenceCopy)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [conferenceConnections countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (CSDAVConference)activeConference
{
  queue = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
  conference2 = [conferenceConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (conference2)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != conference2; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(conferenceConnections);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 isPreparedToStop] & 1) == 0)
        {
          conference = [v8 conference];
          if ([conference state] == 4)
          {

LABEL_13:
            conference2 = [v8 conference];
            goto LABEL_14;
          }

          conference3 = [v8 conference];
          state = [conference3 state];

          if (state == 5)
          {
            goto LABEL_13;
          }
        }
      }

      conference2 = [conferenceConnections countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (conference2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return conference2;
}

- (void)_prepareConferenceForConferenceConnection:(id)connection remoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  connectionCopy = connection;
  conferenceCreationBlock = [(CSDRelayConferenceInterface *)self conferenceCreationBlock];
  v9 = conferenceCreationBlock[2]();
  [connectionCopy setConference:v9];

  conference = [connectionCopy conference];
  [conference setDelegate:self];

  queue = [(CSDRelayConferenceInterface *)self queue];
  conference2 = [connectionCopy conference];
  [conference2 setDelegateQueue:queue];

  [(CSDRelayConferenceInterface *)self connectionTimeout];
  v14 = v13;
  conference3 = [connectionCopy conference];
  [conference3 setConnectionTimeout:v14];

  v18 = objc_alloc_init(CSDAVConferenceConfiguration);
  [(CSDAVConferenceConfiguration *)v18 setCaller:dictionaryCopy == 0];
  capabilities = [connectionCopy capabilities];
  [(CSDAVConferenceConfiguration *)v18 setCapabilities:capabilities];

  [(CSDAVConferenceConfiguration *)v18 setRequiresInviteDictionary:1];
  [(CSDAVConferenceConfiguration *)v18 setRemoteInviteDictionary:dictionaryCopy];

  conference4 = [connectionCopy conference];

  [conference4 prepareWithConfiguration:v18];
}

- (void)_cleanUpAllConferenceConnectionsForConference:(id)conference withError:(id)error
{
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:conference, 0];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CSDRelayConferenceInterface *)self _cleanUpConferenceConnection:*(*(&v12 + 1) + 8 * v11) error:errorCopy];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_cleanUpConferenceConnection:(id)connection error:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  conferenceConnections = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v9 = [conferenceConnections containsObject:connectionCopy];

  if (v9)
  {
    conferenceConnections2 = [(CSDRelayConferenceInterface *)self conferenceConnections];
    [conferenceConnections2 removeObject:connectionCopy];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cleaning up conference connection %@", buf, 0xCu);
    }

    [connectionCopy invokeDidPrepareIfNecessary:0];
    v34 = NSLocalizedFailureReasonErrorKey;
    errorCopy = [NSString stringWithFormat:@"Conference cleaned up before handling a didStart with error: %@", errorCopy];
    v35 = errorCopy;
    v13 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.telephonyutilities" code:1 userInfo:v13];
    [connectionCopy invokeDidStartIfNecessary:0 error:v14];

    [connectionCopy invokeDidStopIfNecessary:errorCopy == 0 error:errorCopy];
    conference = [connectionCopy conference];
    v16 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:conference];

    if ([v16 count] || (objc_msgSend(connectionCopy, "conference"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "state"), v17, v18 < 4))
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      conference2 = v16;
      v20 = [conference2 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v26 = v16;
        v27 = errorCopy;
        v28 = connectionCopy;
        v22 = *v30;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(conference2);
            }

            v24 = *(*(&v29 + 1) + 8 * i);
            if ([v24 isPreparedToStop])
            {
              v25 = sub_100004778();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v37 = v24;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Also cleaning up conference connection which is already prepared to stop %@", buf, 0xCu);
              }

              [(CSDRelayConferenceInterface *)self _cleanUpConferenceConnection:v24 error:0];
            }
          }

          v21 = [conference2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v21);
        errorCopy = v27;
        connectionCopy = v28;
        v16 = v26;
      }
    }

    else
    {
      conference2 = [connectionCopy conference];
      [(CSDRelayConferenceInterface *)self _stopConference:conference2];
    }
  }
}

- (void)_stopConference:(id)conference
{
  conferenceCopy = conference;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = conferenceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling stop on conference %@", &v9, 0xCu);
  }

  [(__CFString *)conferenceCopy stop];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"CSDRelayConferenceConnectionWillCloseNotification";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting %@", &v9, 0xCu);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"CSDRelayConferenceConnectionWillCloseNotification" object:0];

  conferencesAwaitingConnectionClose = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
  [conferencesAwaitingConnectionClose addObject:conferenceCopy];
}

- (void)_postDidCloseNotificationForConferenceIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  conferencesAwaitingConnectionClose = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
  v5 = [conferencesAwaitingConnectionClose containsObject:necessaryCopy];

  if (v5)
  {
    conferencesAwaitingConnectionClose2 = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
    [conferencesAwaitingConnectionClose2 removeObject:necessaryCopy];

    [(CSDRelayConferenceInterface *)self _postDidCloseNotificationForConference:necessaryCopy];
  }
}

- (void)_postDidCloseNotificationForConference:(id)conference
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"CSDRelayConferenceConnectionDidCloseNotification";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting %@", &v5, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDRelayConferenceConnectionDidCloseNotification" object:0];
}

- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d
{
  conferenceCopy = conference;
  dataCopy = data;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v25 = @"CSDRelayConferenceConnectionDidReceiveDataNotificationDataKey";
  v26 = dataCopy;
  v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = conferenceCopy;
  v11 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:conferenceCopy];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        v17 = +[NSNotificationCenter defaultCenter];
        [v17 postNotificationName:@"CSDRelayConferenceConnectionDidReceiveDataNotification" object:v16 userInfo:v10];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)conferenceFinishedPreparing:(id)preparing
{
  preparingCopy = preparing;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:preparingCopy, 0];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        localInviteDictionary = [preparingCopy localInviteDictionary];
        [v11 invokeDidPrepareIfNecessary:localInviteDictionary];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)conferenceStarted:(id)started
{
  startedCopy = started;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:startedCopy, 0];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) invokeDidStartIfNecessary:1 error:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)conference:(id)conference endedWithReason:(int64_t)reason error:(id)error
{
  conferenceCopy = conference;
  errorCopy = error;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    reasonCopy = reason;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reason: %ld error: %@", buf, 0x16u);
  }

  [(CSDRelayConferenceInterface *)self _cleanUpAllConferenceConnectionsForConference:conferenceCopy withError:errorCopy];
  if (reason <= 7)
  {
    if (((1 << reason) & 0xFA) != 0)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100476084(errorCopy, reason, v11);
      }

      [(CSDRelayConferenceInterface *)self _postDidCloseNotificationForConference:conferenceCopy];
    }

    else
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting up close connection timeout because conference ended reason was normal", buf, 2u);
      }

      conferencesAwaitingConnectionClose = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
      [conferencesAwaitingConnectionClose addObject:conferenceCopy];

      [(CSDRelayConferenceInterface *)self closeConnectionTimeout];
      v15 = dispatch_time(0, (v14 * 1000000000.0));
      queue = [(CSDRelayConferenceInterface *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10013FD2C;
      v17[3] = &unk_100619D88;
      v17[4] = self;
      v18 = conferenceCopy;
      dispatch_after(v15, queue, v17);
    }
  }
}

- (void)connectionClosedForConference:(id)conference
{
  conferenceCopy = conference;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  [(CSDRelayConferenceInterface *)self _cleanUpAllConferenceConnectionsForConference:conferenceCopy withError:0];
  [(CSDRelayConferenceInterface *)self _postDidCloseNotificationForConferenceIfNecessary:conferenceCopy];
}

- (void)mutedChangedForConference:(id)conference
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDRelayConferenceMutedChangedNotification" object:0];
}

- (void)sendingAudioChangedForConference:(id)conference
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDRelayConferenceSendingAudioChangedNotification" object:0];
}

- (void)conference:(id)conference inputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CSDRelayConferenceLocalFrequencyChangedNotification" object:toCopy];
}

- (void)conference:(id)conference outputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CSDRelayConferenceRemoteFrequencyChangedNotification" object:toCopy];
}

- (void)conference:(id)conference inputLevelChangedTo:(float)to
{
  v7 = +[NSNotificationCenter defaultCenter];
  *&v5 = to;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 postNotificationName:@"CSDRelayConferenceLocalMeterLevelChangedNotification" object:v6];
}

- (void)conference:(id)conference outputLevelChangedTo:(float)to
{
  v7 = +[NSNotificationCenter defaultCenter];
  *&v5 = to;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 postNotificationName:@"CSDRelayConferenceRemoteMeterLevelChangedNotification" object:v6];
}

@end