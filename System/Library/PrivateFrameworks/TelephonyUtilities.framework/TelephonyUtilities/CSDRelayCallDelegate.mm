@interface CSDRelayCallDelegate
- (BOOL)_anyOtherCallHasAnEndpointElsewhere:(id)elsewhere;
- (CSDCallController)callController;
- (CSDCallStateController)callStateController;
- (CSDRelayCallDelegate)init;
- (CSDRelayMessagingController)relayMessagingController;
- (id)localProviderWithIdentifier:(id)identifier;
- (void)_handleJoinConversationResponse:(BOOL)response sessionAvailable:(BOOL)available forRelayCall:(id)call;
- (void)_setAllCallsToHeldExceptCall:(id)call;
- (void)relayCall:(id)call didAnswerWithRequest:(id)request;
- (void)relayCall:(id)call didGroupWithOtherCall:(id)otherCall;
- (void)relayCallConferenceDidStartSuccessfullyForIncomingAnsweredCall:(id)call;
- (void)relayCallConferenceDidStartSuccessfullyForPulledCall:(id)call;
- (void)relayCallConferenceDidStop:(id)stop cleanly:(BOOL)cleanly error:(id)error;
- (void)relayCallConferenceFailedToStart:(id)start;
- (void)relayCallDidBecomeEndpointForPull:(id)pull;
- (void)relayCallDidDial:(id)dial;
- (void)relayCallDidDisconnect:(id)disconnect;
- (void)relayCallDidHold:(id)hold;
- (void)relayCallDidJoin:(id)join;
- (void)relayCallDidSendHardPauseDigits:(id)digits;
- (void)relayCallDidUngroup:(id)ungroup;
- (void)relayCallDidUnhold:(id)unhold;
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
  callStateController = [(CSDRelayCallDelegate *)self callStateController];
  relayMessagingController = [callStateController relayMessagingController];

  return relayMessagingController;
}

- (CSDCallController)callController
{
  callStateController = [(CSDRelayCallDelegate *)self callStateController];
  callController = [callStateController callController];

  return callController;
}

- (void)_setAllCallsToHeldExceptCall:(id)call
{
  callCopy = call;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  callController = [(CSDRelayCallDelegate *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v8 = [callsHostedElsewhere countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (v12 != callCopy)
        {
          [v12 setCallStatus:2];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [callsHostedElsewhere countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)_anyOtherCallHasAnEndpointElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  callController = [(CSDRelayCallDelegate *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v8 = [callsHostedElsewhere countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (v13 != elsewhereCopy)
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

      v9 = [callsHostedElsewhere countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)_handleJoinConversationResponse:(BOOL)response sessionAvailable:(BOOL)available forRelayCall:(id)call
{
  callCopy = call;
  v9 = callCopy;
  if (!response)
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

  if (!available)
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

  if ([callCopy isEndpointOnCurrentDevice])
  {
    relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1002219A0;
    v16[3] = &unk_10061EE88;
    v17 = v9;
    uniqueProxyIdentifier = [v17 uniqueProxyIdentifier];
    [relayMessagingController performBlockOnTransportAvailability:v16 forIdentifier:uniqueProxyIdentifier];
  }

LABEL_12:
}

- (id)localProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callStateController = [(CSDRelayCallDelegate *)self callStateController];
  callProviderManager = [callStateController callProviderManager];
  v7 = [callProviderManager localProvidersByIdentifierForRemoteClients:0];

  v8 = [v7 objectForKeyedSubscript:identifierCopy];

  return v8;
}

- (void)relayCallDidJoin:(id)join
{
  joinCopy = join;
  v5 = [joinCopy hasRelaySupport:2];
  v6 = [(CSDRelayCallDelegate *)self _anyOtherCallHasAnEndpointElsewhere:joinCopy];
  v7 = v6;
  if (!v5 || v6 && ([joinCopy isSOS] & 1) == 0)
  {
    [joinCopy setEndpointOnCurrentDevice:0];
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isEndpointOnCurrentDevice = [joinCopy isEndpointOnCurrentDevice];
    v10 = @"NO";
    if (isEndpointOnCurrentDevice)
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

  joinConversationRequest = [joinCopy joinConversationRequest];

  if (joinConversationRequest)
  {
    relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100221D10;
    v15[3] = &unk_10061EEB0;
    v15[4] = self;
    v16 = joinCopy;
    [relayMessagingController sendJoinConversationMessageToHostForCall:v16 completionHandler:v15];
  }
}

- (void)relayCallDidDial:(id)dial
{
  dialCopy = dial;
  v5 = [dialCopy hasRelaySupport:2];
  v6 = [(CSDRelayCallDelegate *)self _anyOtherCallHasAnEndpointElsewhere:dialCopy];
  v7 = v6;
  if (!v5 || v6 && ([dialCopy isSOS] & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Decided to override endpoint to the host device", buf, 2u);
    }

    [dialCopy setEndpointOnCurrentDevice:0];
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if ([dialCopy isEndpointOnCurrentDevice])
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

    isSOS = [dialCopy isSOS];
    *buf = 138413058;
    if (isSOS)
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

  dialRequest = [dialCopy dialRequest];

  if (dialRequest)
  {
    relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100221F58;
    v17[3] = &unk_10061EEB0;
    v18 = dialCopy;
    selfCopy = self;
    [relayMessagingController sendDialCallMessageToHostForCall:v18 completionHandler:v17];
  }
}

- (void)relayCall:(id)call didAnswerWithRequest:(id)request
{
  callCopy = call;
  if ([callCopy canBeAnsweredWithAudioOrVideoRelayWithRequest:request])
  {
    [callCopy setLocallyConnecting];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = callCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting endpoint elsewhere for call because it can't be answered with audio or video relay: %@", buf, 0xCu);
    }

    [callCopy setEndpointOnCurrentDevice:0];
    [callCopy setLocallyConnected];
  }

  if ([callCopy isScreening])
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "not starting conference for screening call", buf, 2u);
    }

    goto LABEL_11;
  }

  if ([callCopy isEndpointOnCurrentDevice])
  {
    relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10022236C;
    v11[3] = &unk_10061EE88;
    v12 = callCopy;
    uniqueProxyIdentifier = [v12 uniqueProxyIdentifier];
    [relayMessagingController performBlockOnTransportAvailability:v11 forIdentifier:uniqueProxyIdentifier];

    v8 = v12;
LABEL_11:
  }
}

- (void)relayCallDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  [relayMessagingController sendDisconnectCallMessageToHostForCall:disconnectCopy];
}

- (void)relayCallDidHold:(id)hold
{
  holdCopy = hold;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  [relayMessagingController sendHoldCallMessageToHostForCall:holdCopy];
}

- (void)relayCallDidUnhold:(id)unhold
{
  unholdCopy = unhold;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  [relayMessagingController sendUnholdCallMessageToHostForCall:unholdCopy];
}

- (void)relayCall:(id)call didGroupWithOtherCall:(id)otherCall
{
  otherCallCopy = otherCall;
  callCopy = call;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  [relayMessagingController sendGroupCallMessageToHostForCall:callCopy otherCall:otherCallCopy];
}

- (void)relayCallDidUngroup:(id)ungroup
{
  ungroupCopy = ungroup;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  [relayMessagingController sendUngroupCallMessageToHostForCall:ungroupCopy];
}

- (void)relayCallDidSendHardPauseDigits:(id)digits
{
  digitsCopy = digits;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  [relayMessagingController sendSendHardPauseDigitsMessageToHostForCall:digitsCopy];
}

- (void)relayCallDidBecomeEndpointForPull:(id)pull
{
  pullCopy = pull;
  relayMessagingController = [(CSDRelayCallDelegate *)self relayMessagingController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100222790;
  v8[3] = &unk_10061EE88;
  v9 = pullCopy;
  v6 = pullCopy;
  uniqueProxyIdentifier = [v6 uniqueProxyIdentifier];
  [relayMessagingController performBlockOnTransportAvailability:v8 forIdentifier:uniqueProxyIdentifier];
}

- (void)relayCallConferenceDidStartSuccessfullyForIncomingAnsweredCall:(id)call
{
  callCopy = call;
  [(CSDRelayCallDelegate *)self _setAllCallsToHeldExceptCall:callCopy];
  [callCopy setLocallyConnected];
}

- (void)relayCallConferenceDidStartSuccessfullyForPulledCall:(id)call
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

- (void)relayCallConferenceFailedToStart:(id)start
{
  startCopy = start;
  isEndpointOnCurrentDevice = [startCopy isEndpointOnCurrentDevice];
  v5 = sub_100004778();
  v6 = v5;
  if (isEndpointOnCurrentDevice)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10047D0B4();
    }

    [startCopy setLocallyDisconnectedWithReasonIfNone:8];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = startCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not disconnecting call for failed conference start because it is not an endpoint here: %@", &v7, 0xCu);
    }
  }
}

- (void)relayCallConferenceDidStop:(id)stop cleanly:(BOOL)cleanly error:(id)error
{
  stopCopy = stop;
  errorCopy = error;
  if ([stopCopy isEndpointOnCurrentDevice])
  {
    if (errorCopy || !cleanly)
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

    [stopCopy setLocallyDisconnectedWithReasonIfNone:v9];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = stopCopy;
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