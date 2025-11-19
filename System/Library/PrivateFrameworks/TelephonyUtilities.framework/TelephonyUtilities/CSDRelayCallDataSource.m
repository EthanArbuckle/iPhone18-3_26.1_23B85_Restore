@interface CSDRelayCallDataSource
- (CSDRelayCallDataSource)initWithCallStateController:(id)a3 queue:(id)a4;
- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingActiveCalls:(id)a5;
- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingHeldCalls:(id)a5 andHoldingCalls:(id)a6;
- (void)answerCall:(id)a3 withRequest:(id)a4 whileHoldingActiveCalls:(id)a5;
- (void)dealloc;
- (void)disconnectAllCalls:(id)a3 withReason:(int)a4;
- (void)disconnectCall:(id)a3 whileUngroupingCall:(id)a4;
- (void)disconnectCalls:(id)a3 whileHoldingCalls:(id)a4 andUnholdingCalls:(id)a5 andUngroupingCalls:(id)a6;
- (void)groupCalls:(id)a3 withCalls:(id)a4;
- (void)handleLocalFrequencyChanged:(id)a3;
- (void)handleLocalMeterLevelChanged:(id)a3;
- (void)handleMutedChanged:(id)a3;
- (void)handleRemoteFrequencyChanged:(id)a3;
- (void)handleRemoteMeterLevelChanged:(id)a3;
- (void)handleSendingAudioChanged:(id)a3;
- (void)holdCalls:(id)a3 whileUnholdingCalls:(id)a4;
- (void)ungroupCall:(id)a3 fromOtherCallsInGroup:(id)a4;
@end

@implementation CSDRelayCallDataSource

- (CSDRelayCallDataSource)initWithCallStateController:(id)a3 queue:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = CSDRelayCallDataSource;
  v7 = [(CSDCallDataSource *)&v17 initWithCallStateController:v6 queue:a4];
  if (v7)
  {
    v8 = [v6 queue];
    v9 = [CSDRelayConferenceInterface sharedInstanceWithQueue:v8];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"handleLocalFrequencyChanged:" name:@"CSDRelayConferenceLocalFrequencyChangedNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v7 selector:"handleRemoteFrequencyChanged:" name:@"CSDRelayConferenceRemoteFrequencyChangedNotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"handleLocalMeterLevelChanged:" name:@"CSDRelayConferenceLocalMeterLevelChangedNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"handleRemoteMeterLevelChanged:" name:@"CSDRelayConferenceRemoteMeterLevelChangedNotification" object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"handleMutedChanged:" name:@"CSDRelayConferenceMutedChangedNotification" object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v7 selector:"handleSendingAudioChanged:" name:@"CSDRelayConferenceSendingAudioChangedNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDRelayCallDataSource;
  [(CSDRelayCallDataSource *)&v4 dealloc];
}

- (void)holdCalls:(id)a3 whileUnholdingCalls:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to hold relay calls %@ while unholding relay calls %@", &v11, 0x16u);
  }

  if ([v6 count] && objc_msgSend(v7, "count"))
  {
    v9 = [(CSDCallDataSource *)self callStateController];
    v10 = [v9 relayMessagingController];
    [v10 sendSwapCallsMessageToHost];

LABEL_10:
    goto LABEL_11;
  }

  if ([v6 count])
  {
    v9 = [v6 firstObject];
    [v9 hold];
    goto LABEL_10;
  }

  if ([v7 count])
  {
    v9 = [v7 firstObject];
    [v9 unhold];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingActiveCalls:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = v8;
    v48 = 2112;
    v49 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked to answer relay call %@ while disconnecting active relay calls %@", buf, 0x16u);
  }

  if ([v8 canBeAnsweredWithRequest:v9])
  {
    v12 = [(CSDCallDataSource *)self callStateController];
    v13 = [v12 callController];
    if ([v10 count])
    {
      v14 = [v12 relayMessagingController];
      [v14 sendEndActiveAndAnswerCallMessageToHostForCall:v8];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = [v13 callContainer];
      v16 = [v15 callsHostedElsewhere];

      v17 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v40;
        while (2)
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v16);
            }

            if ([*(*(&v39 + 1) + 8 * i) isOnHold])
            {

              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v26 = v10;
              v27 = [v26 countByEnumeratingWithState:&v35 objects:v44 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v36;
                do
                {
                  for (j = 0; j != v28; j = j + 1)
                  {
                    if (*v36 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    [*(*(&v35 + 1) + 8 * j) setLocallyDisconnectedWithReasonIfNone:0];
                  }

                  v28 = [v26 countByEnumeratingWithState:&v35 objects:v44 count:16];
                }

                while (v28);
              }

              [v8 answerWithRequest:v9];
              goto LABEL_33;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [v8 answerWithRequest:v9];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v21 = v10;
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (k = 0; k != v23; k = k + 1)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v31 + 1) + 8 * k) setLocallyDisconnectedWithReasonIfNone:{0, v31}];
          }

          v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v23);
      }
    }

    else
    {
      [v8 answerWithRequest:v9];
      v21 = [v12 relayMessagingController];
      [v21 sendAnswerCallMessageToHostForCall:v8];
    }

LABEL_33:
  }

  else
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to answer call because canBeAnswered is NO: %@", buf, 0xCu);
    }
  }
}

- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingHeldCalls:(id)a5 andHoldingCalls:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = v10;
    v29 = 2112;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Asked to answer relay call %@ while disconnecting held relay calls %@ and holding relay calls %@", buf, 0x20u);
  }

  if ([v10 canBeAnsweredWithRequest:v11])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v22 + 1) + 8 * v19) setLocallyDisconnectedWithReasonIfNone:{0, v22}];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }

    [v10 answerWithRequest:v11];
    v20 = [(CSDCallDataSource *)self callStateController];
    v21 = [v20 relayMessagingController];
    [v21 sendEndHeldAndAnswerCallMessageToHostForCall:v10];
  }

  else
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to answer call because canBeAnswered is NO: %@", buf, 0xCu);
    }
  }
}

- (void)answerCall:(id)a3 withRequest:(id)a4 whileHoldingActiveCalls:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked to answer relay call %@ while holding relay calls %@", buf, 0x16u);
  }

  if ([v8 canBeAnsweredWithRequest:v9])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v19 + 1) + 8 * v16) setCallStatus:{2, v19}];
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v14);
    }

    [v8 answerWithRequest:v9];
    v17 = [(CSDCallDataSource *)self callStateController];
    v18 = [v17 relayMessagingController];
    [v18 sendHoldActiveAndAnswerCallMessageToHostForCall:v8];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to answer call because canBeAnswered is NO: %@", buf, 0xCu);
    }
  }
}

- (void)groupCalls:(id)a3 withCalls:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v5;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to group relay calls %@ with relay calls %@", buf, 0x16u);
  }

  v8 = [v5 firstObject];
  v9 = [v6 firstObject];
  [v8 groupWithOtherCall:v9];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v24 + 1) + 8 * v14) setCallStatus:1];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) setCallStatus:{1, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)ungroupCall:(id)a3 fromOtherCallsInGroup:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to ungroup relay call %@ from other relay calls in group %@", buf, 0x16u);
  }

  [v5 ungroup];
  [v5 setCallStatus:1];
  if ([v6 count] == 1)
  {
    v8 = [v6 firstObject];
    [v8 setCallGroupUUID:0];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) setCallStatus:{2, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)disconnectCall:(id)a3 whileUngroupingCall:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to disconnect relay call %@ while ungrouping relay call %@", &v8, 0x16u);
  }

  [v5 disconnect];
  [v6 setCallGroupUUID:0];
}

- (void)disconnectAllCalls:(id)a3 withReason:(int)a4
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to disconnect relay calls %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v15 + 1) + 8 * v11) setLocallyDisconnectedWithReasonIfNone:{0, v15}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v12 = [(CSDCallDataSource *)self callStateController];
    v13 = [v12 relayMessagingController];
    v14 = [v7 firstObject];
    [v13 sendDisconnectAllCallsMessageToHostForDisconnectedCall:v14];
  }
}

- (void)disconnectCalls:(id)a3 whileHoldingCalls:(id)a4 andUnholdingCalls:(id)a5 andUngroupingCalls:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v60 = v10;
    v61 = 2112;
    v62 = v11;
    v63 = 2112;
    v64 = v12;
    v65 = 2112;
    v66 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Asked to disconnect relay calls %@ while holding relay calls %@ and unholding relay calls %@ and ungrouping calls %@", buf, 0x2Au);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      v19 = 0;
      do
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v51 + 1) + 8 * v19) setLocallyDisconnectedWithReasonIfNone:0];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v17);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = v11;
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      v24 = 0;
      do
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v47 + 1) + 8 * v24) setCallStatus:2];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v22);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v25 = v12;
  v26 = [v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v44;
    do
    {
      v29 = 0;
      do
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v43 + 1) + 8 * v29) setCallStatus:1];
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v27);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v30 = v13;
  v31 = [v30 countByEnumeratingWithState:&v39 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v40;
    do
    {
      v34 = 0;
      do
      {
        if (*v40 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v39 + 1) + 8 * v34) setCallGroupUUID:{0, v39}];
        v34 = v34 + 1;
      }

      while (v32 != v34);
      v32 = [v30 countByEnumeratingWithState:&v39 objects:v55 count:16];
    }

    while (v32);
  }

  v35 = [v25 count];
  if ([v15 count])
  {
    v36 = [(CSDCallDataSource *)self callStateController];
    v37 = [v36 relayMessagingController];
    v38 = [v15 firstObject];
    [v37 sendDisconnectCurrentCallMessageToHostForDisconnectedCall:v38 activateHeld:v35 != 0];
  }
}

- (void)handleLocalFrequencyChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v10 = [v4 object];

  v6 = [(CSDCallDataSource *)self callStateController];
  v7 = [v6 callController];
  v8 = [v7 callContainer];
  v9 = [v8 callsHostedElsewhere];
  [(CSDCallDataSource *)self handleFrequencyDataChanged:v10 inDirection:2 forCalls:v9];
}

- (void)handleRemoteFrequencyChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v10 = [v4 object];

  v6 = [(CSDCallDataSource *)self callStateController];
  v7 = [v6 callController];
  v8 = [v7 callContainer];
  v9 = [v8 callsHostedElsewhere];
  [(CSDCallDataSource *)self handleFrequencyDataChanged:v10 inDirection:1 forCalls:v9];
}

- (void)handleLocalMeterLevelChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v13 = [v4 object];

  [v13 floatValue];
  v7 = v6;
  v8 = [(CSDCallDataSource *)self callStateController];
  v9 = [v8 callController];
  v10 = [v9 callContainer];
  v11 = [v10 callsHostedElsewhere];
  LODWORD(v12) = v7;
  [(CSDCallDataSource *)self handleMeterLevelChanged:2 inDirection:v11 forCalls:v12];
}

- (void)handleRemoteMeterLevelChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v13 = [v4 object];

  [v13 floatValue];
  v7 = v6;
  v8 = [(CSDCallDataSource *)self callStateController];
  v9 = [v8 callController];
  v10 = [v9 callContainer];
  v11 = [v10 callsHostedElsewhere];
  LODWORD(v12) = v7;
  [(CSDCallDataSource *)self handleMeterLevelChanged:1 inDirection:v11 forCalls:v12];
}

- (void)handleMutedChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CSDCallDataSource *)self callStateController];
  v8 = [v7 callController];
  v9 = [v8 callContainer];
  v10 = [v9 callsHostedElsewhere];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) propertiesChanged];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)handleSendingAudioChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(CSDCallDataSource *)self callStateController];
  v8 = [v7 callController];
  v9 = [v8 callContainer];
  v10 = [v9 callsHostedElsewhere];

  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) propertiesChanged];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

@end