@interface CSDRelayCallDataSource
- (CSDRelayCallDataSource)initWithCallStateController:(id)controller queue:(id)queue;
- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingActiveCalls:(id)calls;
- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingHeldCalls:(id)calls andHoldingCalls:(id)holdingCalls;
- (void)answerCall:(id)call withRequest:(id)request whileHoldingActiveCalls:(id)calls;
- (void)dealloc;
- (void)disconnectAllCalls:(id)calls withReason:(int)reason;
- (void)disconnectCall:(id)call whileUngroupingCall:(id)ungroupingCall;
- (void)disconnectCalls:(id)calls whileHoldingCalls:(id)holdingCalls andUnholdingCalls:(id)unholdingCalls andUngroupingCalls:(id)ungroupingCalls;
- (void)groupCalls:(id)calls withCalls:(id)withCalls;
- (void)handleLocalFrequencyChanged:(id)changed;
- (void)handleLocalMeterLevelChanged:(id)changed;
- (void)handleMutedChanged:(id)changed;
- (void)handleRemoteFrequencyChanged:(id)changed;
- (void)handleRemoteMeterLevelChanged:(id)changed;
- (void)handleSendingAudioChanged:(id)changed;
- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls;
- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group;
@end

@implementation CSDRelayCallDataSource

- (CSDRelayCallDataSource)initWithCallStateController:(id)controller queue:(id)queue
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = CSDRelayCallDataSource;
  v7 = [(CSDCallDataSource *)&v17 initWithCallStateController:controllerCopy queue:queue];
  if (v7)
  {
    queue = [controllerCopy queue];
    v9 = [CSDRelayConferenceInterface sharedInstanceWithQueue:queue];

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

- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls
{
  callsCopy = calls;
  unholdingCallsCopy = unholdingCalls;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = callsCopy;
    v13 = 2112;
    v14 = unholdingCallsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to hold relay calls %@ while unholding relay calls %@", &v11, 0x16u);
  }

  if ([callsCopy count] && objc_msgSend(unholdingCallsCopy, "count"))
  {
    callStateController = [(CSDCallDataSource *)self callStateController];
    relayMessagingController = [callStateController relayMessagingController];
    [relayMessagingController sendSwapCallsMessageToHost];

LABEL_10:
    goto LABEL_11;
  }

  if ([callsCopy count])
  {
    callStateController = [callsCopy firstObject];
    [callStateController hold];
    goto LABEL_10;
  }

  if ([unholdingCallsCopy count])
  {
    callStateController = [unholdingCallsCopy firstObject];
    [callStateController unhold];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingActiveCalls:(id)calls
{
  callCopy = call;
  requestCopy = request;
  callsCopy = calls;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = callCopy;
    v48 = 2112;
    v49 = callsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked to answer relay call %@ while disconnecting active relay calls %@", buf, 0x16u);
  }

  if ([callCopy canBeAnsweredWithRequest:requestCopy])
  {
    callStateController = [(CSDCallDataSource *)self callStateController];
    callController = [callStateController callController];
    if ([callsCopy count])
    {
      relayMessagingController = [callStateController relayMessagingController];
      [relayMessagingController sendEndActiveAndAnswerCallMessageToHostForCall:callCopy];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      callContainer = [callController callContainer];
      callsHostedElsewhere = [callContainer callsHostedElsewhere];

      v17 = [callsHostedElsewhere countByEnumeratingWithState:&v39 objects:v45 count:16];
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
              objc_enumerationMutation(callsHostedElsewhere);
            }

            if ([*(*(&v39 + 1) + 8 * i) isOnHold])
            {

              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v26 = callsCopy;
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

              [callCopy answerWithRequest:requestCopy];
              goto LABEL_33;
            }
          }

          v18 = [callsHostedElsewhere countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [callCopy answerWithRequest:requestCopy];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      relayMessagingController2 = callsCopy;
      v22 = [relayMessagingController2 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
              objc_enumerationMutation(relayMessagingController2);
            }

            [*(*(&v31 + 1) + 8 * k) setLocallyDisconnectedWithReasonIfNone:{0, v31}];
          }

          v23 = [relayMessagingController2 countByEnumeratingWithState:&v31 objects:v43 count:16];
        }

        while (v23);
      }
    }

    else
    {
      [callCopy answerWithRequest:requestCopy];
      relayMessagingController2 = [callStateController relayMessagingController];
      [relayMessagingController2 sendAnswerCallMessageToHostForCall:callCopy];
    }

LABEL_33:
  }

  else
  {
    callStateController = sub_100004778();
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v47 = callCopy;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to answer call because canBeAnswered is NO: %@", buf, 0xCu);
    }
  }
}

- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingHeldCalls:(id)calls andHoldingCalls:(id)holdingCalls
{
  callCopy = call;
  requestCopy = request;
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v28 = callCopy;
    v29 = 2112;
    v30 = callsCopy;
    v31 = 2112;
    v32 = holdingCallsCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Asked to answer relay call %@ while disconnecting held relay calls %@ and holding relay calls %@", buf, 0x20u);
  }

  if ([callCopy canBeAnsweredWithRequest:requestCopy])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = callsCopy;
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

    [callCopy answerWithRequest:requestCopy];
    callStateController = [(CSDCallDataSource *)self callStateController];
    relayMessagingController = [callStateController relayMessagingController];
    [relayMessagingController sendEndHeldAndAnswerCallMessageToHostForCall:callCopy];
  }

  else
  {
    callStateController = sub_100004778();
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = callCopy;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to answer call because canBeAnswered is NO: %@", buf, 0xCu);
    }
  }
}

- (void)answerCall:(id)call withRequest:(id)request whileHoldingActiveCalls:(id)calls
{
  callCopy = call;
  requestCopy = request;
  callsCopy = calls;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = callCopy;
    v26 = 2112;
    v27 = callsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Asked to answer relay call %@ while holding relay calls %@", buf, 0x16u);
  }

  if ([callCopy canBeAnsweredWithRequest:requestCopy])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = callsCopy;
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

    [callCopy answerWithRequest:requestCopy];
    callStateController = [(CSDCallDataSource *)self callStateController];
    relayMessagingController = [callStateController relayMessagingController];
    [relayMessagingController sendHoldActiveAndAnswerCallMessageToHostForCall:callCopy];
  }

  else
  {
    callStateController = sub_100004778();
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = callCopy;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to answer call because canBeAnswered is NO: %@", buf, 0xCu);
    }
  }
}

- (void)groupCalls:(id)calls withCalls:(id)withCalls
{
  callsCopy = calls;
  withCallsCopy = withCalls;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = callsCopy;
    v32 = 2112;
    v33 = withCallsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to group relay calls %@ with relay calls %@", buf, 0x16u);
  }

  firstObject = [callsCopy firstObject];
  firstObject2 = [withCallsCopy firstObject];
  [firstObject groupWithOtherCall:firstObject2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = callsCopy;
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
  v15 = withCallsCopy;
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

- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group
{
  callCopy = call;
  groupCopy = group;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = callCopy;
    v21 = 2112;
    v22 = groupCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to ungroup relay call %@ from other relay calls in group %@", buf, 0x16u);
  }

  [callCopy ungroup];
  [callCopy setCallStatus:1];
  if ([groupCopy count] == 1)
  {
    firstObject = [groupCopy firstObject];
    [firstObject setCallGroupUUID:0];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = groupCopy;
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

- (void)disconnectCall:(id)call whileUngroupingCall:(id)ungroupingCall
{
  callCopy = call;
  ungroupingCallCopy = ungroupingCall;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = callCopy;
    v10 = 2112;
    v11 = ungroupingCallCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Asked to disconnect relay call %@ while ungrouping relay call %@", &v8, 0x16u);
  }

  [callCopy disconnect];
  [ungroupingCallCopy setCallGroupUUID:0];
}

- (void)disconnectAllCalls:(id)calls withReason:(int)reason
{
  callsCopy = calls;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = callsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Asked to disconnect relay calls %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = callsCopy;
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
    callStateController = [(CSDCallDataSource *)self callStateController];
    relayMessagingController = [callStateController relayMessagingController];
    firstObject = [v7 firstObject];
    [relayMessagingController sendDisconnectAllCallsMessageToHostForDisconnectedCall:firstObject];
  }
}

- (void)disconnectCalls:(id)calls whileHoldingCalls:(id)holdingCalls andUnholdingCalls:(id)unholdingCalls andUngroupingCalls:(id)ungroupingCalls
{
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  unholdingCallsCopy = unholdingCalls;
  ungroupingCallsCopy = ungroupingCalls;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v60 = callsCopy;
    v61 = 2112;
    v62 = holdingCallsCopy;
    v63 = 2112;
    v64 = unholdingCallsCopy;
    v65 = 2112;
    v66 = ungroupingCallsCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Asked to disconnect relay calls %@ while holding relay calls %@ and unholding relay calls %@ and ungrouping calls %@", buf, 0x2Au);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = callsCopy;
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
  v20 = holdingCallsCopy;
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
  v25 = unholdingCallsCopy;
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
  v30 = ungroupingCallsCopy;
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
    callStateController = [(CSDCallDataSource *)self callStateController];
    relayMessagingController = [callStateController relayMessagingController];
    firstObject = [v15 firstObject];
    [relayMessagingController sendDisconnectCurrentCallMessageToHostForDisconnectedCall:firstObject activateHeld:v35 != 0];
  }
}

- (void)handleLocalFrequencyChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];

  callStateController = [(CSDCallDataSource *)self callStateController];
  callController = [callStateController callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];
  [(CSDCallDataSource *)self handleFrequencyDataChanged:object inDirection:2 forCalls:callsHostedElsewhere];
}

- (void)handleRemoteFrequencyChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];

  callStateController = [(CSDCallDataSource *)self callStateController];
  callController = [callStateController callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];
  [(CSDCallDataSource *)self handleFrequencyDataChanged:object inDirection:1 forCalls:callsHostedElsewhere];
}

- (void)handleLocalMeterLevelChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];

  [object floatValue];
  v7 = v6;
  callStateController = [(CSDCallDataSource *)self callStateController];
  callController = [callStateController callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];
  LODWORD(v12) = v7;
  [(CSDCallDataSource *)self handleMeterLevelChanged:2 inDirection:callsHostedElsewhere forCalls:v12];
}

- (void)handleRemoteMeterLevelChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  object = [changedCopy object];

  [object floatValue];
  v7 = v6;
  callStateController = [(CSDCallDataSource *)self callStateController];
  callController = [callStateController callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];
  LODWORD(v12) = v7;
  [(CSDCallDataSource *)self handleMeterLevelChanged:1 inDirection:callsHostedElsewhere forCalls:v12];
}

- (void)handleMutedChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  callStateController = [(CSDCallDataSource *)self callStateController];
  callController = [callStateController callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v11 = [callsHostedElsewhere countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        [*(*(&v15 + 1) + 8 * v14) propertiesChanged];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [callsHostedElsewhere countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)handleSendingAudioChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received notification: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  callStateController = [(CSDCallDataSource *)self callStateController];
  callController = [callStateController callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v11 = [callsHostedElsewhere countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        [*(*(&v15 + 1) + 8 * v14) propertiesChanged];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [callsHostedElsewhere countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

@end