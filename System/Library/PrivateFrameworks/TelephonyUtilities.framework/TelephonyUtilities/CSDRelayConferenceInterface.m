@interface CSDRelayConferenceInterface
+ (id)sharedInstanceWithQueue:(id)a3;
- (BOOL)isMutedForIdentifier:(id)a3;
- (BOOL)isSendingAudioForIdentifier:(id)a3;
- (CSDAVConference)activeConference;
- (CSDRelayConferenceInterface)initWithSerialQueue:(id)a3;
- (id)_conferenceConnectionsForConference:(id)a3;
- (id)activeConferenceConnectionForIdentifier:(id)a3;
- (id)conferenceConnectionForIdentifier:(id)a3;
- (int64_t)inputAudioPowerSpectrumTokenForIdentifier:(id)a3;
- (int64_t)outputAudioPowerSpectrumTokenForIdentifier:(id)a3;
- (int64_t)spatialAudioSourceIdentifierForIdentifier:(id)a3;
- (void)_cleanUpAllConferenceConnectionsForConference:(id)a3 withError:(id)a4;
- (void)_cleanUpConferenceConnection:(id)a3 error:(id)a4;
- (void)_postDidCloseNotificationForConference:(id)a3;
- (void)_postDidCloseNotificationForConferenceIfNecessary:(id)a3;
- (void)_prepareConferenceForConferenceConnection:(id)a3 remoteInviteDictionary:(id)a4;
- (void)_stopConference:(id)a3;
- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5;
- (void)conference:(id)a3 endedWithReason:(int64_t)a4 error:(id)a5;
- (void)conference:(id)a3 inputFrequencyLevelChangedTo:(id)a4;
- (void)conference:(id)a3 inputLevelChangedTo:(float)a4;
- (void)conference:(id)a3 outputFrequencyLevelChangedTo:(id)a4;
- (void)conference:(id)a3 outputLevelChangedTo:(float)a4;
- (void)conferenceFinishedPreparing:(id)a3;
- (void)conferenceStarted:(id)a3;
- (void)connectionClosedForConference:(id)a3;
- (void)dealloc;
- (void)mutedChangedForConference:(id)a3;
- (void)prepareConferenceConnection:(id)a3 remoteInviteDictionary:(id)a4 completion:(id)a5;
- (void)prepareConferenceForCall:(id)a3 remoteInviteDictionary:(id)a4 completion:(id)a5;
- (void)prepareToStopConferenceForIdentifier:(id)a3;
- (void)sendData:(id)a3 throughConferenceForIdentifier:(id)a4;
- (void)sendingAudioChangedForConference:(id)a3;
- (void)setConferenceActiveForIdentifier:(id)a3;
- (void)startConferenceForIdentifier:(id)a3 usingTransport:(id)a4 remoteInviteDictionary:(id)a5 didStartHandler:(id)a6 didStopHandler:(id)a7;
- (void)stopConferenceForIdentifier:(id)a3;
- (void)uplinkMutedStatusChanged:(id)a3;
@end

@implementation CSDRelayConferenceInterface

+ (id)sharedInstanceWithQueue:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013CD1C;
  block[3] = &unk_100619D38;
  v9 = a3;
  v3 = qword_1006ACD50;
  v4 = v9;
  if (v3 != -1)
  {
    dispatch_once(&qword_1006ACD50, block);
  }

  v5 = qword_1006ACD48;
  v6 = qword_1006ACD48;

  return v5;
}

- (CSDRelayConferenceInterface)initWithSerialQueue:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CSDRelayConferenceInterface;
  v6 = [(CSDRelayConferenceInterface *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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

- (void)uplinkMutedStatusChanged:(id)a3
{
  v3 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_async(v3, &stru_10061C4D0);
}

- (BOOL)isMutedForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 conference];
    v8 = [v7 isMuted];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSendingAudioForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 conference];
    v8 = [v7 isSendingAudio];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)inputAudioPowerSpectrumTokenForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 conference];
    v8 = [v7 inputAudioPowerSpectrumToken];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)outputAudioPowerSpectrumTokenForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 conference];
    v8 = [v7 outputAudioPowerSpectrumToken];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)spatialAudioSourceIdentifierForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];

  if (v6)
  {
    v7 = [v6 conference];
    v8 = [v7 callID];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)prepareConferenceConnection:(id)a3 remoteInviteDictionary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CSDRelayConferenceInterface *)self conferenceConnections];
    *buf = 138412802;
    v41 = v8;
    v42 = 2112;
    v43 = v9;
    v44 = 2112;
    v45 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asked to prepare conference connection %@ remoteInviteDictionary %@, current conference connections: %@", buf, 0x20u);
  }

  v33 = v10;
  v34 = v8;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v35 + 1) + 8 * v19);
      if (([v20 isPreparedToStop] & 1) == 0)
      {
        v21 = [v20 conference];
        v22 = [v21 state];

        if (v22 - 4 < 2)
        {
          if (v9)
          {
            v23 = [v20 conference];
            v24 = v20;

            v17 = v24;
            if (v23)
            {
LABEL_18:

              v25 = sub_100004778();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v41 = v23;
                v42 = 2112;
                v43 = v17;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not preparing a new conference because another conference already exists: %@, relayConferenceConnectionToReuse: %@", buf, 0x16u);
              }

              v26 = v34;
              [v34 setConference:v23];
              v27 = v33;
              [v34 setDidPrepareHandler:v33];
              v28 = [(CSDRelayConferenceInterface *)self conferenceConnections];
              [v28 addObject:v34];

              if ([v23 state] >= 3)
              {
                v29 = [v23 localInviteDictionary];
                [v34 invokeDidPrepareIfNecessary:v29];
                goto LABEL_29;
              }

              goto LABEL_30;
            }
          }
        }

        else if (v22 - 2 <= 1)
        {
          v23 = [v20 conference];
          if (v23)
          {
            goto LABEL_18;
          }
        }
      }

      if (v16 == ++v19)
      {
        v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
  v30 = [v34 identifier];
  v29 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v30];

  if (v29)
  {
    v31 = sub_100004778();
    v27 = v33;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_100475E84(v29, v31);
    }
  }

  else
  {
    v27 = v33;
    [v34 setDidPrepareHandler:v33];
    v32 = [(CSDRelayConferenceInterface *)self conferenceConnections];
    [v32 addObject:v34];

    [(CSDRelayConferenceInterface *)self _prepareConferenceForConferenceConnection:v34 remoteInviteDictionary:v9];
  }

  v23 = 0;
LABEL_29:

LABEL_30:
}

- (void)prepareConferenceForCall:(id)a3 remoteInviteDictionary:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [[CSDRelayConferenceConnection alloc] initWithCall:v10];
  [(CSDRelayConferenceInterface *)self prepareConferenceConnection:v12 remoteInviteDictionary:v9 completion:v8];
}

- (void)startConferenceForIdentifier:(id)a3 usingTransport:(id)a4 remoteInviteDictionary:(id)a5 didStartHandler:(id)a6 didStopHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v17);

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Asked to start conference for identifier %@", &v34, 0xCu);
  }

  v19 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v12];
  v20 = v19;
  if (v19)
  {
    [v19 setTransport:v13];
    if (v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = &stru_10061C510;
    }

    [v20 setDidStartHandler:v21];
    if (v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = &stru_10061C530;
    }

    [v20 setDidStopHandler:v22];
    v23 = [(CSDRelayConferenceInterface *)self activeConference];

    if (v23)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "We already have an active conference. Invoking this conference connection's didStart immediately", &v34, 2u);
      }

      v25 = [(CSDRelayConferenceInterface *)self activeConference];
      [v20 setConference:v25];

      v26 = [v20 identifier];
      [(CSDRelayConferenceInterface *)self setConferenceActiveForIdentifier:v26];

      [v20 invokeDidStartIfNecessary:1 error:0];
    }

    else
    {
      v28 = [v20 conference];
      v29 = [v28 remoteInviteDictionary];

      if (!v29)
      {
        if (v14)
        {
          v30 = [v20 conference];
          [v30 setRemoteInviteDictionary:v14];
        }

        else
        {
          v31 = [v20 isHost];
          v30 = [v20 conference];
          [v30 setCaller:v31];
        }
      }

      v32 = [v20 conference];
      v33 = [v20 transport];
      [v32 startConnectionWithTransport:v33];
    }
  }

  else
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100475EFC(v12, self, v27);
    }
  }
}

- (void)sendData:(id)a3 throughConferenceForIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asked to send data to conference for identifier %@", &v12, 0xCu);
  }

  v10 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v6];
  v11 = [v10 conference];
  [v11 sendData:v7];
}

- (void)setConferenceActiveForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting conference connection active: %@", &v9, 0xCu);
    }

    v8 = [v6 identifier];
    -[CSDRelayConferenceInterface updateConferenceForIdentifier:isUsingBaseband:disableAudio:isTinCan:](self, "updateConferenceForIdentifier:isUsingBaseband:disableAudio:isTinCan:", v8, [v6 isUsingBaseband], 0, objc_msgSend(v6, "isTinCan"));
  }
}

- (void)prepareToStopConferenceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to prepare to stop conference for identifier %@", buf, 0xCu);
  }

  v7 = [(CSDRelayConferenceInterface *)self activeConferenceConnectionForIdentifier:v4];
  v8 = v7;
  if (v7)
  {
    [v7 setPreparedToStop:1];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [v8 conference];
    v10 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:v9];

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

    v16 = [v8 conference];
    [v16 setSendingAudio:0];

    [(CSDRelayConferenceInterface *)self prepareToStopTimeout];
    v18 = dispatch_time(0, (v17 * 1000000000.0));
    v19 = [(CSDRelayConferenceInterface *)self queue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013E55C;
    v20[3] = &unk_100619D88;
    v20[4] = self;
    v21 = v8;
    dispatch_after(v18, v19, v20);
  }

LABEL_16:
}

- (void)stopConferenceForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to stop conference for identifier %@", &v10, 0xCu);
  }

  v7 = [(CSDRelayConferenceInterface *)self conferenceConnectionForIdentifier:v4];
  if (v7)
  {
    [(CSDRelayConferenceInterface *)self _cleanUpConferenceConnection:v7 error:0];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(CSDRelayConferenceInterface *)self conferenceConnections];
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did not find conference connection for identifier %@. All conference connections: %@", &v10, 0x16u);
    }
  }
}

- (id)activeConferenceConnectionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifier];
        if ([v11 isEqualToString:v4] && !objc_msgSend(v10, "isPreparedToStop"))
        {
          v12 = [v10 conference];
          v13 = [v12 state];

          if (v13 <= 5)
          {
            v7 = v10;
            goto LABEL_14;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)conferenceConnectionForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_conferenceConnectionsForConference:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 conference];

        if (v13 == v4)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (CSDAVConference)activeConference
{
  v3 = [(CSDRelayConferenceInterface *)self queue];
  dispatch_assert_queue_V2(v3);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if (([v8 isPreparedToStop] & 1) == 0)
        {
          v9 = [v8 conference];
          if ([v9 state] == 4)
          {

LABEL_13:
            v5 = [v8 conference];
            goto LABEL_14;
          }

          v10 = [v8 conference];
          v11 = [v10 state];

          if (v11 == 5)
          {
            goto LABEL_13;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

- (void)_prepareConferenceForConferenceConnection:(id)a3 remoteInviteDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayConferenceInterface *)self conferenceCreationBlock];
  v9 = v8[2]();
  [v7 setConference:v9];

  v10 = [v7 conference];
  [v10 setDelegate:self];

  v11 = [(CSDRelayConferenceInterface *)self queue];
  v12 = [v7 conference];
  [v12 setDelegateQueue:v11];

  [(CSDRelayConferenceInterface *)self connectionTimeout];
  v14 = v13;
  v15 = [v7 conference];
  [v15 setConnectionTimeout:v14];

  v18 = objc_alloc_init(CSDAVConferenceConfiguration);
  [(CSDAVConferenceConfiguration *)v18 setCaller:v6 == 0];
  v16 = [v7 capabilities];
  [(CSDAVConferenceConfiguration *)v18 setCapabilities:v16];

  [(CSDAVConferenceConfiguration *)v18 setRequiresInviteDictionary:1];
  [(CSDAVConferenceConfiguration *)v18 setRemoteInviteDictionary:v6];

  v17 = [v7 conference];

  [v17 prepareWithConfiguration:v18];
}

- (void)_cleanUpAllConferenceConnectionsForConference:(id)a3 withError:(id)a4
{
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:a3, 0];
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

        [(CSDRelayConferenceInterface *)self _cleanUpConferenceConnection:*(*(&v12 + 1) + 8 * v11) error:v6];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_cleanUpConferenceConnection:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDRelayConferenceInterface *)self conferenceConnections];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(CSDRelayConferenceInterface *)self conferenceConnections];
    [v10 removeObject:v6];

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cleaning up conference connection %@", buf, 0xCu);
    }

    [v6 invokeDidPrepareIfNecessary:0];
    v34 = NSLocalizedFailureReasonErrorKey;
    v12 = [NSString stringWithFormat:@"Conference cleaned up before handling a didStart with error: %@", v7];
    v35 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v14 = [NSError errorWithDomain:@"com.apple.telephonyutilities" code:1 userInfo:v13];
    [v6 invokeDidStartIfNecessary:0 error:v14];

    [v6 invokeDidStopIfNecessary:v7 == 0 error:v7];
    v15 = [v6 conference];
    v16 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:v15];

    if ([v16 count] || (objc_msgSend(v6, "conference"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "state"), v17, v18 < 4))
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = v16;
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v26 = v16;
        v27 = v7;
        v28 = v6;
        v22 = *v30;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(v19);
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

          v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v21);
        v7 = v27;
        v6 = v28;
        v16 = v26;
      }
    }

    else
    {
      v19 = [v6 conference];
      [(CSDRelayConferenceInterface *)self _stopConference:v19];
    }
  }
}

- (void)_stopConference:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling stop on conference %@", &v9, 0xCu);
  }

  [(__CFString *)v4 stop];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = @"CSDRelayConferenceConnectionWillCloseNotification";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting %@", &v9, 0xCu);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"CSDRelayConferenceConnectionWillCloseNotification" object:0];

  v8 = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
  [v8 addObject:v4];
}

- (void)_postDidCloseNotificationForConferenceIfNecessary:(id)a3
{
  v7 = a3;
  v4 = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
  v5 = [v4 containsObject:v7];

  if (v5)
  {
    v6 = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
    [v6 removeObject:v7];

    [(CSDRelayConferenceInterface *)self _postDidCloseNotificationForConference:v7];
  }
}

- (void)_postDidCloseNotificationForConference:(id)a3
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

- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  v25 = @"CSDRelayConferenceConnectionDidReceiveDataNotificationDataKey";
  v26 = v8;
  v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = v7;
  v11 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:v7];
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

- (void)conferenceFinishedPreparing:(id)a3
{
  v4 = a3;
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
  v6 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:v4, 0];
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
        v12 = [v4 localInviteDictionary];
        [v11 invokeDidPrepareIfNecessary:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)conferenceStarted:(id)a3
{
  v4 = a3;
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
  v6 = [(CSDRelayConferenceInterface *)self _conferenceConnectionsForConference:v4, 0];
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

- (void)conference:(id)a3 endedWithReason:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v20 = a4;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "reason: %ld error: %@", buf, 0x16u);
  }

  [(CSDRelayConferenceInterface *)self _cleanUpAllConferenceConnectionsForConference:v8 withError:v9];
  if (a4 <= 7)
  {
    if (((1 << a4) & 0xFA) != 0)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100476084(v9, a4, v11);
      }

      [(CSDRelayConferenceInterface *)self _postDidCloseNotificationForConference:v8];
    }

    else
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting up close connection timeout because conference ended reason was normal", buf, 2u);
      }

      v13 = [(CSDRelayConferenceInterface *)self conferencesAwaitingConnectionClose];
      [v13 addObject:v8];

      [(CSDRelayConferenceInterface *)self closeConnectionTimeout];
      v15 = dispatch_time(0, (v14 * 1000000000.0));
      v16 = [(CSDRelayConferenceInterface *)self queue];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10013FD2C;
      v17[3] = &unk_100619D88;
      v17[4] = self;
      v18 = v8;
      dispatch_after(v15, v16, v17);
    }
  }
}

- (void)connectionClosedForConference:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  [(CSDRelayConferenceInterface *)self _cleanUpAllConferenceConnectionsForConference:v4 withError:0];
  [(CSDRelayConferenceInterface *)self _postDidCloseNotificationForConferenceIfNecessary:v4];
}

- (void)mutedChangedForConference:(id)a3
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

- (void)sendingAudioChangedForConference:(id)a3
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

- (void)conference:(id)a3 inputFrequencyLevelChangedTo:(id)a4
{
  v4 = a4;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CSDRelayConferenceLocalFrequencyChangedNotification" object:v4];
}

- (void)conference:(id)a3 outputFrequencyLevelChangedTo:(id)a4
{
  v4 = a4;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"CSDRelayConferenceRemoteFrequencyChangedNotification" object:v4];
}

- (void)conference:(id)a3 inputLevelChangedTo:(float)a4
{
  v7 = +[NSNotificationCenter defaultCenter];
  *&v5 = a4;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 postNotificationName:@"CSDRelayConferenceLocalMeterLevelChangedNotification" object:v6];
}

- (void)conference:(id)a3 outputLevelChangedTo:(float)a4
{
  v7 = +[NSNotificationCenter defaultCenter];
  *&v5 = a4;
  v6 = [NSNumber numberWithFloat:v5];
  [v7 postNotificationName:@"CSDRelayConferenceRemoteMeterLevelChangedNotification" object:v6];
}

@end