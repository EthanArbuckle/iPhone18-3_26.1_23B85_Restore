@interface CSDRelayCallDelegate
- (BOOL)_anyOtherCallHasAnEndpointElsewhere:(id)a3;
- (CSDCallController)callController;
- (CSDCallStateController)callStateController;
- (CSDRelayCallDelegate)init;
- (CSDRelayMessagingController)relayMessagingController;
- (id)localProviderWithIdentifier:(id)a3;
- (void)_handleJoinConversationResponse:(BOOL)a3 sessionAvailable:(BOOL)a4 forRelayCall:(id)a5;
- (void)_setAllCallsToHeldExceptCall:(id)a3;
- (void)relayCall:(id)a3 didAnswerWithRequest:(id)a4;
- (void)relayCall:(id)a3 didGroupWithOtherCall:(id)a4;
- (void)relayCallConferenceDidStartSuccessfullyForIncomingAnsweredCall:(id)a3;
- (void)relayCallConferenceDidStartSuccessfullyForPulledCall:(id)a3;
- (void)relayCallConferenceDidStop:(id)a3 cleanly:(BOOL)a4 error:(id)a5;
- (void)relayCallConferenceFailedToStart:(id)a3;
- (void)relayCallDidBecomeEndpointForPull:(id)a3;
- (void)relayCallDidDial:(id)a3;
- (void)relayCallDidDisconnect:(id)a3;
- (void)relayCallDidHold:(id)a3;
- (void)relayCallDidJoin:(id)a3;
- (void)relayCallDidSendHardPauseDigits:(id)a3;
- (void)relayCallDidUngroup:(id)a3;
- (void)relayCallDidUnhold:(id)a3;
@end

@implementation CSDRelayCallDelegate

- (CSDRelayCallDelegate)init
{
  v6.receiver = self;
  v6.super_class = CSDRelayCallDelegate;
  v2 = [(CSDRelayCallDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUDTMFSoundPlayer);
    dtmfSoundPlayer = v2->_dtmfSoundPlayer;
    v2->_dtmfSoundPlayer = v3;
  }

  return v2;
}

- (CSDRelayMessagingController)relayMessagingController
{
  v2 = [(CSDRelayCallDelegate *)self callStateController];
  v3 = [v2 relayMessagingController];

  return v3;
}

- (CSDCallController)callController
{
  v2 = [(CSDRelayCallDelegate *)self callStateController];
  v3 = [v2 callController];

  return v3;
}

- (void)_setAllCallsToHeldExceptCall:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSDRelayCallDelegate *)self callController];
  v6 = [v5 callContainer];
  v7 = [v6 callsHostedElsewhere];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (v12 != v4)
        {
          [v12 setCallStatus:2];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)_anyOtherCallHasAnEndpointElsewhere:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CSDRelayCallDelegate *)self callController];
  v6 = [v5 callContainer];
  v7 = [v6 callsHostedElsewhere];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (v13 != v4)
        {
          [*(*(&v15 + 1) + 8 * i) setCallStatus:2];
          if (v10)
          {
            v10 = 1;
          }

          else
          {
            v10 = [v13 isEndpointOnCurrentDevice] ^ 1;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)_handleJoinConversationResponse:(BOOL)a3 sessionAvailable:(BOOL)a4 forRelayCall:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (!a3)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047CE44();
    }

    v13 = v9;
    v14 = 9;
    goto LABEL_11;
  }

  if (!a4)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047CEAC();
    }

    v13 = v9;
    v14 = 8;
LABEL_11:
    [v13 setLocallyDisconnectedWithReasonIfNone:v14];
    goto LABEL_12;
  }

  if ([v8 isEndpointOnCurrentDevice])
  {
    v10 = [(CSDRelayCallDelegate *)self relayMessagingController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002219A0;
    v16[3] = &unk_10061EE88;
    v17 = v9;
    v11 = [v17 uniqueProxyIdentifier];
    [v10 performBlockOnTransportAvailability:v16 forIdentifier:v11];
  }

LABEL_12:
}

- (id)localProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self callStateController];
  v6 = [v5 callProviderManager];
  v7 = [v6 localProvidersByIdentifierForRemoteClients:0];

  v8 = [v7 objectForKeyedSubscript:v4];

  return v8;
}

- (void)relayCallDidJoin:(id)a3
{
  v4 = a3;
  v5 = [v4 hasRelaySupport:2];
  v6 = [(CSDRelayCallDelegate *)self _anyOtherCallHasAnEndpointElsewhere:v4];
  v7 = v6;
  if (!v5 || v6 && ([v4 isSOS] & 1) == 0)
  {
    [v4 setEndpointOnCurrentDevice:0];
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 isEndpointOnCurrentDevice];
    v10 = @"NO";
    if (v9)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (v5)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    *buf = 138412802;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    if (v7)
    {
      v10 = @"YES";
    }

    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Determined if endpoint should be on current device: %@; hasRelaySupport: %@, anyOtherCallHasAnEndpointElsewhere: %@", buf, 0x20u);
  }

  v13 = [v4 joinConversationRequest];

  if (v13)
  {
    v14 = [(CSDRelayCallDelegate *)self relayMessagingController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100221D10;
    v15[3] = &unk_10061EEB0;
    v15[4] = self;
    v16 = v4;
    [v14 sendJoinConversationMessageToHostForCall:v16 completionHandler:v15];
  }
}

- (void)relayCallDidDial:(id)a3
{
  v4 = a3;
  v5 = [v4 hasRelaySupport:2];
  v6 = [(CSDRelayCallDelegate *)self _anyOtherCallHasAnEndpointElsewhere:v4];
  v7 = v6;
  if (!v5 || v6 && ([v4 isSOS] & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Decided to override endpoint to the host device", buf, 2u);
    }

    [v4 setEndpointOnCurrentDevice:0];
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if ([v4 isEndpointOnCurrentDevice])
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    if (v5)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (v7)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = [v4 isSOS];
    *buf = 138413058;
    if (v13)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Determined if endpoint should be on current device: %@; hasRelaySupport: %@, anyOtherCallHasAnEndpointElsewhere: %@, relayCall.isSOS: %@", buf, 0x2Au);
  }

  v15 = [v4 dialRequest];

  if (v15)
  {
    v16 = [(CSDRelayCallDelegate *)self relayMessagingController];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100221F58;
    v17[3] = &unk_10061EEB0;
    v18 = v4;
    v19 = self;
    [v16 sendDialCallMessageToHostForCall:v18 completionHandler:v17];
  }
}

- (void)relayCall:(id)a3 didAnswerWithRequest:(id)a4
{
  v6 = a3;
  if ([v6 canBeAnsweredWithAudioOrVideoRelayWithRequest:a4])
  {
    [v6 setLocallyConnecting];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting endpoint elsewhere for call because it can't be answered with audio or video relay: %@", buf, 0xCu);
    }

    [v6 setEndpointOnCurrentDevice:0];
    [v6 setLocallyConnected];
  }

  if ([v6 isScreening])
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "not starting conference for screening call", buf, 2u);
    }

    goto LABEL_11;
  }

  if ([v6 isEndpointOnCurrentDevice])
  {
    v9 = [(CSDRelayCallDelegate *)self relayMessagingController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10022236C;
    v11[3] = &unk_10061EE88;
    v12 = v6;
    v10 = [v12 uniqueProxyIdentifier];
    [v9 performBlockOnTransportAvailability:v11 forIdentifier:v10];

    v8 = v12;
LABEL_11:
  }
}

- (void)relayCallDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self relayMessagingController];
  [v5 sendDisconnectCallMessageToHostForCall:v4];
}

- (void)relayCallDidHold:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self relayMessagingController];
  [v5 sendHoldCallMessageToHostForCall:v4];
}

- (void)relayCallDidUnhold:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self relayMessagingController];
  [v5 sendUnholdCallMessageToHostForCall:v4];
}

- (void)relayCall:(id)a3 didGroupWithOtherCall:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayCallDelegate *)self relayMessagingController];
  [v8 sendGroupCallMessageToHostForCall:v7 otherCall:v6];
}

- (void)relayCallDidUngroup:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self relayMessagingController];
  [v5 sendUngroupCallMessageToHostForCall:v4];
}

- (void)relayCallDidSendHardPauseDigits:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self relayMessagingController];
  [v5 sendSendHardPauseDigitsMessageToHostForCall:v4];
}

- (void)relayCallDidBecomeEndpointForPull:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCallDelegate *)self relayMessagingController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100222790;
  v8[3] = &unk_10061EE88;
  v9 = v4;
  v6 = v4;
  v7 = [v6 uniqueProxyIdentifier];
  [v5 performBlockOnTransportAvailability:v8 forIdentifier:v7];
}

- (void)relayCallConferenceDidStartSuccessfullyForIncomingAnsweredCall:(id)a3
{
  v4 = a3;
  [(CSDRelayCallDelegate *)self _setAllCallsToHeldExceptCall:v4];
  [v4 setLocallyConnected];
}

- (void)relayCallConferenceDidStartSuccessfullyForPulledCall:(id)a3
{
  v3 = +[NSURL faceTimeShowInCallUIURL];
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Opening URL for handled pushHostedCalls message from host: %@", &v5, 0xCu);
  }

  TUOpenURL();
}

- (void)relayCallConferenceFailedToStart:(id)a3
{
  v3 = a3;
  v4 = [v3 isEndpointOnCurrentDevice];
  v5 = sub_100004778();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047D0B4();
    }

    [v3 setLocallyDisconnectedWithReasonIfNone:8];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not disconnecting call for failed conference start because it is not an endpoint here: %@", &v7, 0xCu);
    }
  }
}

- (void)relayCallConferenceDidStop:(id)a3 cleanly:(BOOL)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 isEndpointOnCurrentDevice])
  {
    if (v8 || !a4)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10047D11C();
      }

      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    [v7 setLocallyDisconnectedWithReasonIfNone:v9];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not disconnecting call for conference didStop because it is not an endpoint here: %@", &v12, 0xCu);
    }
  }
}

- (CSDCallStateController)callStateController
{
  WeakRetained = objc_loadWeakRetained(&self->_callStateController);

  return WeakRetained;
}

@end