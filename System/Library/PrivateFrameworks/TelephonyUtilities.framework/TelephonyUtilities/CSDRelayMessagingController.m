@interface CSDRelayMessagingController
- (BOOL)_canReceiveRelayCallsFromDestination:(id)a3 device:(id)a4;
- (BOOL)_shouldSendToPairedIDSDevice:(BOOL)a3;
- (BOOL)shouldProcessRelayMessageOfType:(int)a3;
- (BOOL)shouldScreenTimeRestrictMessage:(id)a3;
- (CSDRelayMessagingController)initWithQueue:(id)a3 callContainer:(id)a4 sessionMessenger:(id)a5 pairedDeviceMessenger:(id)a6 localRouteController:(id)a7;
- (CSDRelayMessagingController)initWithQueue:(id)a3 callContainer:(id)a4 sessionMessenger:(id)a5 pairedDeviceMessenger:(id)a6 localRouteController:(id)a7 featureFlags:(id)a8;
- (CSDRelayMessagingController)initWithQueue:(id)a3 localRouteController:(id)a4;
- (CSDRelayMessagingControllerClientMessagingDelegate)clientMessagingDelegate;
- (CSDRelayMessagingControllerCommonMessagingDelegate)commonMessagingDelegate;
- (CSDRelayMessagingControllerDelegate)delegate;
- (CSDRelayMessagingControllerHostMessagingDelegate)hostMessagingDelegate;
- (NSString)debugDescription;
- (id)_callsWithUniqueProxyIdentifiers:(id)a3;
- (id)bundleIdentifierForProvider:(id)a3;
- (id)identifiersForSessionInvitationWithMessage:(id)a3;
- (id)remoteDeviceForUPI:(id)a3;
- (int64_t)timeoutForInvitationWithMessage:(id)a3;
- (void)_handleCallChanged:(id)a3;
- (void)_handleConferenceConnectionDidClose:(id)a3;
- (void)_handleConferenceConnectionDidReceiveData:(id)a3;
- (void)_handleConferenceConnectionWillClose:(id)a3;
- (void)_handleRetrievedLocalInviteDictionary:(id)a3 forMessage:(id)a4;
- (void)_updateDialingIDSDeviceWithRequest:(id)a3;
- (void)checkShouldIgnoreSessionInviteWithMessage:(id)a3 fromDestination:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)disconnectMessagingConnectionForCall:(id)a3;
- (void)messenger:(id)a3 handledMessage:(id)a4 fromDestination:(id)a5 device:(id)a6;
- (void)performBlockOnTransportAvailability:(id)a3 forIdentifier:(id)a4;
- (void)prepareToDisconnectMessagingConnectionForCall:(id)a3;
- (void)requestAnswerForRequest:(id)a3 forCall:(id)a4;
- (void)sendAddRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 toConversation:(id)a5;
- (void)sendAnnouncementHasFinishedChangedForCall:(id)a3;
- (void)sendAnswerCallMessageToHostForCall:(id)a3;
- (void)sendBuzzMember:(id)a3 toConversation:(id)a4;
- (void)sendCallAnsweredElsewhereMessageToClientForCall:(id)a3;
- (void)sendCallConnectedMessageToClientForCall:(id)a3;
- (void)sendCallDialedMessageToClientForCall:(id)a3;
- (void)sendCallDisconnectedMessageToClientForCall:(id)a3;
- (void)sendCallStartedConnectingMessageToClientForCall:(id)a3;
- (void)sendCaptionsMessageToClientForCall:(id)a3 withCaptions:(id)a4;
- (void)sendConversationAudioPriorityToClientForConversation:(id)a3;
- (void)sendConversationToClientForConversation:(id)a3 withConversationMessageType:(int)a4;
- (void)sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:(id)a3;
- (void)sendDialCallFailedForScreenTimeForUniqueProxyIdentifier:(id)a3;
- (void)sendDialCallFailedForUniqueProxyIdentifier:(id)a3;
- (void)sendDialCallMessageToHostForCall:(id)a3 completionHandler:(id)a4;
- (void)sendDisconnectAllCallsMessageToHostForDisconnectedCall:(id)a3;
- (void)sendDisconnectCallMessageToHostForCall:(id)a3;
- (void)sendDisconnectCurrentCallMessageToHostForDisconnectedCall:(id)a3 activateHeld:(BOOL)a4;
- (void)sendEndActiveAndAnswerCallMessageToHostForCall:(id)a3;
- (void)sendEndHeldAndAnswerCallMessageToHostForCall:(id)a3;
- (void)sendGroupCallMessageToHostForCall:(id)a3 otherCall:(id)a4;
- (void)sendHoldActiveAndAnswerCallMessageToHostForCall:(id)a3;
- (void)sendHoldCallMessageToHostForCall:(id)a3;
- (void)sendIncomingCallMessageToClientForCall:(id)a3 cannotBeAnswered:(BOOL)a4 cannotRelayAudioOrVideoOnPairedDevice:(BOOL)a5;
- (void)sendInvitationSentMessageToClientForCall:(id)a3;
- (void)sendJoinConversationMessageToHostForCall:(id)a3 completionHandler:(id)a4;
- (void)sendLastReceptionistMessageChangedForCall:(id)a3;
- (void)sendNeedsManualInCallSoundsChangeMessageToClientForCall:(id)a3;
- (void)sendPerformSmartHoldingRequest:(id)a3;
- (void)sendPickRouteMessageToHostForRoute:(id)a3;
- (void)sendPullCallsMessageToHost;
- (void)sendPullRelayingCallsMessageToClientAndDisconnectCallsWithUPI:(id)a3;
- (void)sendPushCallsMessageToClientDestination:(id)a3;
- (void)sendPushRelayingCallsMessageToHostForSourceIdentifier:(id)a3;
- (void)sendReceivedDTMFUpdateForCall:(id)a3 dtmfUpdate:(id)a4;
- (void)sendReceptionistSessionChangedForCall:(id)a3;
- (void)sendReceptionistStateChangedForCall:(id)a3;
- (void)sendRequestCallStateMessageToHost;
- (void)sendResetStateMessageToClient;
- (void)sendResetWantsHoldMusicMessageToClientForCall:(id)a3;
- (void)sendScreeningChangedForCall:(id)a3;
- (void)sendSendHardPauseDigitsMessageToHostForCall:(id)a3;
- (void)sendSetCustomReply:(id)a3 forCall:(id)a4;
- (void)sendSmartHoldingSessionChangedForCall:(id)a3;
- (void)sendStartReceptionistReplyForCall:(id)a3;
- (void)sendSuppressRingtoneMessageForCall:(id)a3;
- (void)sendSwapCallsMessageToHost;
- (void)sendUngroupCallMessageToHostForCall:(id)a3;
- (void)sendUnholdCallMessageToHostForCall:(id)a3;
- (void)sendUpdateCallContextMessageToClientForCallProviderManager:(id)a3;
- (void)sendUpdateCallDisplayContextMessageToClientForCall:(id)a3;
- (void)sendUpdateCallModelMessageToClientForCall:(id)a3;
- (void)sendUpdateConversationsMessageToClient:(id)a3;
- (void)sendUpdateFailureExpectedMessageToClientForCall:(id)a3;
- (void)sendUpdateRemoteUplinkMutedCallMessageToClientForCall:(id)a3;
- (void)sendUpdateRemoteUplinkMutedCallMessageToHostForCall:(id)a3;
- (void)sendUpdateRoutesMessageToClientForRoutes:(id)a3;
- (void)sendUpdateSupportsDTMFUpdatesToClientForCall:(id)a3;
- (void)sendUpdateSupportsEmergencyFallbackToClientForCall:(id)a3;
- (void)sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall:(id)a3;
- (void)sendUpdateSystemVolume:(float)a3;
@end

@implementation CSDRelayMessagingController

- (CSDRelayMessagingController)initWithQueue:(id)a3 localRouteController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CSDRelayIDSSessionMessenger alloc] initWithQueue:v7 localRouteController:v6];
  v9 = [[CSDRelayPairedDeviceMessenger alloc] initWithQueue:v7];
  v10 = +[TUCallCenter sharedInstance];
  v11 = [(CSDRelayMessagingController *)self initWithQueue:v7 callContainer:v10 sessionMessenger:v8 pairedDeviceMessenger:v9 localRouteController:v6];

  return v11;
}

- (CSDRelayMessagingController)initWithQueue:(id)a3 callContainer:(id)a4 sessionMessenger:(id)a5 pairedDeviceMessenger:(id)a6 localRouteController:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(TUFeatureFlags);
  v18 = [(CSDRelayMessagingController *)self initWithQueue:v16 callContainer:v15 sessionMessenger:v14 pairedDeviceMessenger:v13 localRouteController:v12 featureFlags:v17];

  return v18;
}

- (CSDRelayMessagingController)initWithQueue:(id)a3 callContainer:(id)a4 sessionMessenger:(id)a5 pairedDeviceMessenger:(id)a6 localRouteController:(id)a7 featureFlags:(id)a8
{
  v27 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = CSDRelayMessagingController;
  v18 = [(CSDRelayMessagingController *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v19->_callCenter, a4);
    objc_storeStrong(&v19->_localRouteController, a7);
    objc_storeStrong(&v19->_sessionMessenger, a5);
    [(CSDRelayIDSMessenger *)v19->_sessionMessenger setDelegate:v19];
    objc_storeStrong(&v19->_featureFlags, a8);
    v20 = [[CSDRelayPairedDeviceMessenger alloc] initWithQueue:v19->_queue];
    pairedDeviceMessenger = v19->_pairedDeviceMessenger;
    v19->_pairedDeviceMessenger = v20;

    [(CSDRelayIDSMessenger *)v19->_pairedDeviceMessenger setDelegate:v19];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v19 selector:"_handleConferenceConnectionWillClose:" name:@"CSDRelayConferenceConnectionWillCloseNotification" object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v19 selector:"_handleConferenceConnectionDidClose:" name:@"CSDRelayConferenceConnectionDidCloseNotification" object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v19 selector:"_handleConferenceConnectionDidReceiveData:" name:@"CSDRelayConferenceConnectionDidReceiveDataNotification" object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v19 selector:"_handleCallChanged:" name:TUCallCenterCallStatusChangedInternalNotification object:0];
  }

  return v19;
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"%@\n", self];
  v4 = [(CSDRelayMessagingController *)self dialingIDSDestination];
  [v3 appendFormat:@"    dialingIDSDevice: %@\n", v4];

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDRelayMessagingController;
  [(CSDRelayMessagingController *)&v4 dealloc];
}

- (void)_handleCallChanged:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 isHostedOnCurrentDevice] & 1) == 0)
  {
    if ([v4 isEndpointOnCurrentDevice])
    {
      if ([v4 status] == 4)
      {
        v5 = [(CSDRelayMessagingController *)self sessionMessenger];
        v6 = [v4 uniqueProxyIdentifier];
        v7 = [v5 sessionForIdentifier:v6];

        if (!v7)
        {
          v8 = sub_100004778();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 138412290;
            v10 = v4;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Terminating relay call that we don't have a relay session for: %@", &v9, 0xCu);
          }

          [v4 setLocallyDisconnectedWithReasonIfNone:0];
        }
      }
    }
  }
}

- (id)remoteDeviceForUPI:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayMessagingController *)self sessionMessenger];
  v6 = [v5 sessionForIdentifier:v4];

  v7 = [v6 remoteDevice];

  return v7;
}

- (void)_handleConferenceConnectionWillClose:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ by preparing connected sessions to end", buf, 0xCu);
  }

  v7 = [(CSDRelayMessagingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE4B4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)_handleConferenceConnectionDidClose:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ by ending ending sessions", buf, 0xCu);
  }

  v7 = [(CSDRelayMessagingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE628;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)_handleConferenceConnectionDidReceiveData:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayMessagingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EE720;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_updateDialingIDSDeviceWithRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 hostIDSIdentifier];
  v6 = +[CSDRelayIDSService sharedInstance];
  v7 = [v6 devices];

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v56 = v7;
    v57 = 2112;
    v58 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating dialingIDSDevice using device list %@, host: %@", buf, 0x16u);
  }

  [(CSDRelayMessagingController *)self setDialingIDSDestination:0];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
  v36 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v49;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v49 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v48 + 1) + 8 * v13);
      if ([v14 isPairedDevice])
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v15 = v9;
    v16 = v14;

    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = self;
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "A paired device exists, so using that as the dialing device: %@", buf, 0xCu);
    }

    v19 = [v16 destination];
    [(CSDRelayMessagingController *)v17 setDialingIDSDestination:v19];
  }

  else
  {
LABEL_11:

    v15 = v9;
LABEL_16:
    v16 = +[TUCallCapabilities outgoingRelayCallerID];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v20 = v15;
    v39 = [v20 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v39)
    {
      v33 = self;
      v34 = v5;
      v35 = v4;
      v19 = 0;
      v38 = *v45;
      v37 = v20;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v20);
          }

          v22 = *(*(&v44 + 1) + 8 * i);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v23 = [v22 linkedUserURIs];
          v24 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v41;
            while (2)
            {
              for (j = 0; j != v25; j = j + 1)
              {
                if (*v41 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [*(*(&v40 + 1) + 8 * j) _stripFZIDPrefix];
                v29 = [v16 isEqualToString:v28];

                if (v29)
                {
                  if (!v19)
                  {
                    v19 = v22;
                    goto LABEL_35;
                  }

                  v30 = sub_100004778();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v56 = v19;
                    v57 = 2112;
                    v58 = v22;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] We found two devices with matching linkedUserURIs (arbitrarily choosing the first): %@ and %@", buf, 0x16u);
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }

LABEL_35:
            v20 = v37;
          }
        }

        v39 = [v20 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v39);

      v5 = v34;
      v4 = v35;
      if (v19)
      {
        v31 = sub_100004778();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v56 = v16;
          v57 = 2112;
          v58 = v19;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "A device exists with a linkedUserURI that matches Caller ID %@, so using that as the dialing device: %@", buf, 0x16u);
        }

        v32 = [v19 destination];
        [(CSDRelayMessagingController *)v33 setDialingIDSDestination:v32];

        goto LABEL_45;
      }
    }

    else
    {
    }

    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find a dialingIDSDevice. No paired devices exist and no devices that support phone calls and have a linkedUserURI for %@ exist.", buf, 0xCu);
    }
  }

LABEL_45:
}

- (BOOL)_shouldSendToPairedIDSDevice:(BOOL)a3
{
  v5 = +[CSDRelayIDSService sharedInstance];
  v6 = [v5 pairedDeviceExists];
  if (v6 && !a3)
  {
    v7 = [(CSDRelayMessagingController *)self sessionMessenger];
    v8 = [v7 deviceWithActiveSession];
    if (v8)
    {
      v9 = [(CSDRelayMessagingController *)self sessionMessenger];
      v10 = [v9 deviceWithActiveSession];
      v11 = +[CSDRelayIDSService sharedInstance];
      v12 = [v11 pairedDevice];
      v6 = [v10 isEqual:v12] ^ 1;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)_callsWithUniqueProxyIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(CSDRelayMessagingController *)self callCenter];
        v13 = [v12 callWithUniqueProxyIdentifier:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)_handleRetrievedLocalInviteDictionary:(id)a3 forMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDRelayMessagingController *)self identifiersForSessionInvitationWithMessage:v7];
  if (v6)
  {
    v9 = [[CSDMessagingRelayMessage alloc] initWithType:0];
    v10 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:v6];
    [(CSDMessagingRelayMessage *)v9 setInviteData:v10];

    v11 = [(CSDRelayMessagingController *)self sessionMessenger];
    v12 = [v8 firstObject];
    [v11 sendMessage:v9 andAcceptInvitationIfNecessaryForIdentifier:v12];
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047455C(v7, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = [(CSDRelayMessagingController *)self sessionMessenger];
    v21 = [v8 firstObject];
    [v20 cancelOrDeclineInvitationForIdentifier:v21];
  }
}

- (BOOL)_canReceiveRelayCallsFromDestination:(id)a3 device:(id)a4
{
  v5 = a4;
  if ([a3 canReceiveRelayedCalls])
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 canReceiveRelayedCalls];
  }

  return v6;
}

- (void)sendIncomingCallMessageToClientForCall:(id)a3 cannotBeAnswered:(BOOL)a4 cannotRelayAudioOrVideoOnPairedDevice:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendIncomingCallMessageToClientForCall: %@", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000EF4A8;
  v20[3] = &unk_10061B3D0;
  v10 = v8;
  v21 = v10;
  v22 = a5;
  v11 = objc_retainBlock(v20);
  if (v6)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Call cannot be answered. Only notifying the paired device", buf, 2u);
    }

    v13 = (v11[2])(v11);
    [v13 setCannotBeAnswered:1];
    v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v14 sendMessage:v13 completionHandler:0];
  }

  else
  {
    v15 = +[CSDRelayConferenceInterface sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000EF8FC;
    v16[3] = &unk_10061B3F8;
    v17 = v10;
    v18 = self;
    v19 = v11;
    [v15 prepareConferenceForCall:v17 remoteInviteDictionary:0 completion:v16];

    v13 = v17;
  }
}

- (void)sendUpdateConversationsMessageToClient:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateConversationsMessageToClient: %@", buf, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:54];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [CSDMessagingConversationRelayMessage alloc];
        v14 = [(CSDMessagingConversationRelayMessage *)v13 initWithConversation:v12, v16];
        [(CSDMessagingConversationRelayMessage *)v14 setType:1];
        [(CSDMessagingRelayMessage *)v6 addConversations:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v15 sendMessage:v6 completionHandler:0];
}

- (void)sendConversationToClientForConversation:(id)a3 withConversationMessageType:(int)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendConversationMessageToClientForConversation: %@", buf, 0xCu);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000EFDE0;
  v18 = &unk_10061B420;
  v19 = v6;
  v20 = a4;
  v8 = v6;
  v9 = objc_retainBlock(&v15);
  v13 = (v9[2])(v9, v10, v11, v12);
  v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger:v15];
  [v14 sendMessage:v13 completionHandler:0];
}

- (void)sendConversationAudioPriorityToClientForConversation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendConversationMessageToClientForConversation: %@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F0004;
  v10[3] = &unk_10061B448;
  v11 = v4;
  v6 = v4;
  v7 = objc_retainBlock(v10);
  v8 = (v7[2])();
  v9 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v9 sendMessage:v8 completionHandler:0];
}

- (void)sendCallDialedMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallDialedMessageToClientForCall: %@", &v26, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:3 uniqueProxyIdentifier:v7];

  v9 = [v4 handle];
  [(CSDMessagingRelayMessage *)v8 setTuHandle:v9];

  v10 = [v4 isoCountryCode];
  [(CSDMessagingRelayMessage *)v8 setIsoCountryCode:v10];

  v11 = [v4 provider];
  -[CSDMessagingRelayMessage setTuProvider:isVideo:](v8, "setTuProvider:isVideo:", v11, [v4 isVideo]);

  v12 = [v4 sourceIdentifier];
  [(CSDMessagingRelayMessage *)v8 setSourceIdentifier:v12];

  v13 = [v4 model];
  [(CSDMessagingRelayMessage *)v8 setCallModel:v13];

  -[CSDMessagingRelayMessage setVoicemail:](v8, "setVoicemail:", [v4 isVoicemail]);
  v14 = [v4 callerNameFromNetwork];
  [(CSDMessagingRelayMessage *)v8 setCallerNameFromNetwork:v14];

  -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v8, "setNeedsManualInCallSounds:", [v4 needsManualInCallSounds]);
  -[CSDMessagingRelayMessage setSoundRegion:](v8, "setSoundRegion:", [v4 soundRegion]);
  -[CSDMessagingRelayMessage setEmergency:](v8, "setEmergency:", [v4 isEmergency]);
  -[CSDMessagingRelayMessage setFailureExpected:](v8, "setFailureExpected:", [v4 isFailureExpected]);
  -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v8, "setSupportsEmergencyFallback:", [v4 supportsEmergencyFallback]);
  -[CSDMessagingRelayMessage setSOS:](v8, "setSOS:", [v4 isSOS]);
  -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v8, "setSupportsDTMFUpdates:", [v4 supportsDTMFUpdates]);
  v15 = [v4 displayContext];
  [(CSDMessagingRelayMessage *)v8 setDisplayContext:v15];

  v16 = [v4 localSenderIdentityUUID];
  [(CSDMessagingRelayMessage *)v8 setLocalSenderIdentityUUID:v16];

  v17 = [v4 localSenderIdentityAccountUUID];
  [(CSDMessagingRelayMessage *)v8 setLocalSenderIdentityAccountUUID:v17];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v8, "setRemoteUplinkMuted:", [v4 isRemoteUplinkMuted]);
  v18 = [v4 remoteParticipantHandles];
  [(CSDMessagingRelayMessage *)v8 setRemoteParticipantTUHandles:v18];

  -[CSDMessagingRelayMessage setTtyType:](v8, "setTtyType:", [v4 ttyType]);
  -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v8, "setSupportsTTYWithVoice:", [v4 supportsTTYWithVoice]);
  -[CSDMessagingRelayMessage setOriginatingUIType:](v8, "setOriginatingUIType:", [v4 originatingUIType]);
  if ([v4 isConversation])
  {
    v19 = [v4 callGroupUUID];
    v20 = [v19 UUIDString];
    if (v20)
    {
      v21 = [v4 callGroupUUID];
      v22 = [v21 UUIDString];
      [(CSDMessagingRelayMessage *)v8 setGroupUUIDString:v22];
    }

    else
    {
      [(CSDMessagingRelayMessage *)v8 setGroupUUIDString:@"No GroupUUID populated, but is conversation"];
    }
  }

  v23 = [(CSDRelayMessagingController *)self sessionMessenger];
  v24 = [v4 uniqueProxyIdentifier];
  [v23 sendMessage:v8 forIdentifier:v24 customizedForRemoteProtocolVersion:&stru_10061B488 completionHandler:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice:1])
  {
    v25 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v25 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendCallAnsweredElsewhereMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallAnsweredElsewhereMessageToClientForCall: %@", &v15, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:5 uniqueProxyIdentifier:v7];

  if ([v4 isScreening])
  {
    v9 = [(CSDRelayMessagingController *)self featureFlags];
    -[CSDMessagingRelayMessage setIsScreening:](v8, "setIsScreening:", [v9 LVMEverywhere]);
  }

  else
  {
    [(CSDMessagingRelayMessage *)v8 setIsScreening:0];
  }

  v10 = [(CSDMessagingRelayMessage *)v8 isScreening];
  v11 = [(CSDRelayMessagingController *)self sessionMessenger];
  v12 = v11;
  if (v10)
  {
    [v11 sendMessage:v8 forCall:v4 completionHandler:0];
  }

  else
  {
    v13 = [v4 uniqueProxyIdentifier];
    [v12 sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v13];
  }

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v14 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendCallDisconnectedMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallDisconnectedMessageToClientForCall: %@", &v13, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:6 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setDisconnectedReason:](v8, "setDisconnectedReason:", [v4 disconnectedReason]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v10];

  v11 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v11 sendMessage:v8 forCall:v4 completionHandler:0];

  v12 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v12 sendMessage:v8 wantsAcknowledgement:1 completionHandler:0];
}

- (void)sendCaptionsMessageToClientForCall:(id)a3 withCaptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCaptionsMessageToClientForCall", buf, 2u);
  }

  v9 = [(CSDRelayMessagingController *)self featureFlags];
  v10 = [v9 LVMEverywhere];

  if (v10)
  {
    v11 = [CSDMessagingRelayMessage alloc];
    v12 = [v6 uniqueProxyIdentifier];
    v13 = [(CSDMessagingRelayMessage *)v11 initWithType:58 uniqueProxyIdentifier:v12];

    v14 = [[CSDMessagingCaptionsResult alloc] initWithCaptionsResult:v7];
    [(CSDMessagingRelayMessage *)v13 setCaptionsResult:v14];

    v15 = [(CSDRelayMessagingController *)self sessionMessenger];
    v16 = [v6 uniqueProxyIdentifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F0B58;
    v19[3] = &unk_10061B4B0;
    v19[4] = self;
    v17 = v13;
    v20 = v17;
    v21 = v6;
    [v15 sendMessage:v17 forIdentifier:v16 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v19];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v18 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v18 sendMessage:v17 completionHandler:0];
    }
  }
}

- (void)sendCallConnectedMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallConnectedMessageToClientForCall: %@", &v13, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:8 uniqueProxyIdentifier:v7];

  v9 = [v4 model];
  [(CSDMessagingRelayMessage *)v8 setCallModel:v9];

  v10 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v10 sendMessage:v8 completionHandler:0];

  if (([v4 isEndpointOnCurrentDevice] & 1) == 0 && objc_msgSend(v4, "isOutgoing"))
  {
    v11 = [(CSDRelayMessagingController *)self sessionMessenger];
    v12 = [v4 uniqueProxyIdentifier];
    [v11 sendMessage:v8 forIdentifier:v12];
  }
}

- (void)sendResetWantsHoldMusicMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendResetWantsHoldMusicMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:15 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateCallDisplayContextMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateCallDisplayContextMessageToClientForCall: %@", &v14, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:37 uniqueProxyIdentifier:v7];

  v9 = [v4 displayContext];
  [(CSDMessagingRelayMessage *)v8 setDisplayContext:v9];

  v10 = [v4 handle];
  [(CSDMessagingRelayMessage *)v8 setTuHandle:v10];

  v11 = [(CSDRelayMessagingController *)self sessionMessenger];
  v12 = [v4 uniqueProxyIdentifier];
  [v11 sendMessage:v8 forIdentifier:v12 waitUntilConnected:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v13 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v13 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateFailureExpectedMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateFailureExpectedMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:47 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setFailureExpected:](v8, "setFailureExpected:", [v4 isFailureExpected]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateSupportsEmergencyFallbackToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateSupportsEmergencyFallbackToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:48 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v8, "setSupportsEmergencyFallback:", [v4 supportsEmergencyFallback]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateRemoteUplinkMutedCallMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateRemoteUplinkMutedCallMessageToClientForCall: %@", &v17, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:39 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v8, "setRemoteUplinkMuted:", [v4 isRemoteUplinkMuted]);
  v9 = [v4 provider];
  v10 = [v9 isTinCanProvider];

  if (v10)
  {
    v11 = +[CSDRelayConferenceInterface sharedInstance];
    v12 = [(CSDMessagingRelayMessage *)v8 data];
    v13 = [v4 uniqueProxyIdentifier];
    [v11 sendData:v12 throughConferenceForIdentifier:v13];
  }

  v14 = [(CSDRelayMessagingController *)self sessionMessenger];
  v15 = [v4 uniqueProxyIdentifier];
  [v14 sendMessage:v8 forIdentifier:v15];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v16 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v16 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:41 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v8, "setSupportsTTYWithVoice:", [v4 supportsTTYWithVoice]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateCallModelMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateCallModelMessageToClientForCall: %@", &v13, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:17 uniqueProxyIdentifier:v7];

  v9 = [v4 model];
  [(CSDMessagingRelayMessage *)v8 setCallModel:v9];

  v10 = [(CSDRelayMessagingController *)self sessionMessenger];
  v11 = [v4 uniqueProxyIdentifier];
  [v10 sendMessage:v8 forIdentifier:v11];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v12 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v12 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendDeviceUnavailableMessageToClient", v8, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:18];
  [(CSDMessagingRelayMessage *)v6 setDisconnectedReason:10];
  v7 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v7 sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v4];
}

- (void)sendPullRelayingCallsMessageToClientAndDisconnectCallsWithUPI:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendPullRelayingCallsMessageToClient", v9, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:10];
  v7 = [v4 mutableCopy];

  [(CSDMessagingRelayMessage *)v6 setOtherUniqueProxyIdentifiers:v7];
  v8 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v8 sendMessage:v6 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];
}

- (void)sendScreeningChangedForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendScreeningChangedForCall", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  if ([v6 LVMEverywhere])
  {
    goto LABEL_6;
  }

  v7 = [(CSDRelayMessagingController *)self featureFlags];
  if ([v7 receptionistEnabled])
  {

LABEL_6:
LABEL_7:
    v8 = [CSDMessagingRelayMessage alloc];
    v9 = [v4 uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:57 uniqueProxyIdentifier:v9];

    -[CSDMessagingRelayMessage setIsScreening:](v10, "setIsScreening:", [v4 isScreening]);
    if ([v4 isScreening])
    {
      v11 = [v4 handle];
      [(CSDMessagingRelayMessage *)v10 setTuHandle:v11];

      v12 = [v4 isoCountryCode];
      [(CSDMessagingRelayMessage *)v10 setIsoCountryCode:v12];

      v13 = [v4 provider];
      -[CSDMessagingRelayMessage setTuProvider:isVideo:](v10, "setTuProvider:isVideo:", v13, [v4 isVideo]);

      v14 = [v4 sourceIdentifier];
      [(CSDMessagingRelayMessage *)v10 setSourceIdentifier:v14];

      v15 = [v4 model];
      [(CSDMessagingRelayMessage *)v10 setCallModel:v15];

      v16 = [v4 callerNameFromNetwork];
      [(CSDMessagingRelayMessage *)v10 setCallerNameFromNetwork:v16];

      -[CSDMessagingRelayMessage setShouldSuppressRingtone:](v10, "setShouldSuppressRingtone:", [v4 shouldSuppressRingtone]);
      -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v10, "setNeedsManualInCallSounds:", [v4 needsManualInCallSounds]);
      -[CSDMessagingRelayMessage setSoundRegion:](v10, "setSoundRegion:", [v4 soundRegion]);
      v17 = [v4 displayContext];
      [(CSDMessagingRelayMessage *)v10 setDisplayContext:v17];

      -[CSDMessagingRelayMessage setFailureExpected:](v10, "setFailureExpected:", [v4 isFailureExpected]);
      -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v10, "setSupportsEmergencyFallback:", [v4 supportsEmergencyFallback]);
      -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v10, "setSupportsDTMFUpdates:", [v4 supportsDTMFUpdates]);
      v18 = [v4 localSenderIdentityUUID];
      [(CSDMessagingRelayMessage *)v10 setLocalSenderIdentityUUID:v18];

      v19 = [v4 localSenderIdentityAccountUUID];
      [(CSDMessagingRelayMessage *)v10 setLocalSenderIdentityAccountUUID:v19];

      -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v10, "setRemoteUplinkMuted:", [v4 isRemoteUplinkMuted]);
      v20 = [v4 remoteParticipantHandles];
      [(CSDMessagingRelayMessage *)v10 setRemoteParticipantTUHandles:v20];

      -[CSDMessagingRelayMessage setTtyType:](v10, "setTtyType:", [v4 ttyType]);
      -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v10, "setSupportsTTYWithVoice:", [v4 supportsTTYWithVoice]);
      -[CSDMessagingRelayMessage setPriority:](v10, "setPriority:", [v4 priority]);
      -[CSDMessagingRelayMessage setOriginatingUIType:](v10, "setOriginatingUIType:", [v4 originatingUIType]);
      v21 = [v4 callGroupUUID];
      v22 = [v21 UUIDString];
      [(CSDMessagingRelayMessage *)v10 setGroupUUIDString:v22];

      -[CSDMessagingRelayMessage setRelayHostCanScreen:](v10, "setRelayHostCanScreen:", [v4 isEligibleForManualScreening]);
      v23 = [v4 imageURL];

      if (v23)
      {
        v24 = [NSData alloc];
        v25 = [v4 imageURL];
        v26 = [v24 initWithContentsOfURL:v25];

        [(CSDMessagingRelayMessage *)v10 setImage:v26];
      }

      v27 = [v4 smartHoldingSession];

      if (v27)
      {
        v28 = [CSDMessagingSmartHoldingSession alloc];
        v29 = [v4 smartHoldingSession];
        v27 = [(CSDMessagingSmartHoldingSession *)v28 initWithSmartHoldingSession:v29];
      }

      [(CSDMessagingRelayMessage *)v10 setSmartHoldingSession:v27];
    }

    v30 = [(CSDRelayMessagingController *)self sessionMessenger];
    v31 = [v4 uniqueProxyIdentifier];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000F1F30;
    v36[3] = &unk_10061B4B0;
    v36[4] = self;
    v32 = v10;
    v37 = v32;
    v38 = v4;
    [v30 sendMessage:v32 forIdentifier:v31 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v36];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v33 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v33 sendMessage:v32 completionHandler:0];
    }

    goto LABEL_16;
  }

  v34 = [(CSDRelayMessagingController *)self featureFlags];
  v35 = [v34 smartHoldingRelayEnabled];

  if (v35)
  {
    goto LABEL_7;
  }

  v32 = sub_100004778();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "featureFlags not enabled, not sending screening changed relay message", buf, 2u);
  }

LABEL_16:
}

- (void)sendAnnouncementHasFinishedChangedForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendAnnouncementHasFinishedChangedForCall", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  v7 = [v6 LVMEverywhere];

  if (v7)
  {
    v8 = [CSDMessagingRelayMessage alloc];
    v9 = [v4 uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:64 uniqueProxyIdentifier:v9];

    -[CSDMessagingRelayMessage setAnnouncementHasFinished:](v10, "setAnnouncementHasFinished:", [v4 screeningAnnouncementHasFinished]);
    v11 = [(CSDRelayMessagingController *)self sessionMessenger];
    v12 = [v4 uniqueProxyIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F21DC;
    v15[3] = &unk_10061B4B0;
    v15[4] = self;
    v13 = v10;
    v16 = v13;
    v17 = v4;
    [v11 sendMessage:v13 forIdentifier:v12 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v15];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v14 sendMessage:v13 completionHandler:0];
    }
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LVMEverywhere not enabled, not announcement has finished", buf, 2u);
    }
  }
}

- (void)sendReceptionistStateChangedForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendReceptionistStateChangedForCall", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [CSDMessagingRelayMessage alloc];
    v9 = [v4 uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:59 uniqueProxyIdentifier:v9];

    -[CSDMessagingRelayMessage setReceptionistState:](v10, "setReceptionistState:", [v4 receptionistState]);
    v11 = [(CSDRelayMessagingController *)self sessionMessenger];
    v12 = [v4 uniqueProxyIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F2408;
    v15[3] = &unk_10061B4B0;
    v15[4] = self;
    v13 = v10;
    v16 = v13;
    v17 = v4;
    [v11 sendMessage:v13 forIdentifier:v12 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v15];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v14 sendMessage:v13 completionHandler:0];
    }
  }
}

- (void)sendLastReceptionistMessageChangedForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendLastReceptionistMesageChangedForCall", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [CSDMessagingRelayMessage alloc];
    v9 = [v4 uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:60 uniqueProxyIdentifier:v9];

    v11 = [v4 lastReceptionistMessage];
    [(CSDMessagingRelayMessage *)v10 setLastReceptionistMessage:v11];

    v12 = [(CSDRelayMessagingController *)self sessionMessenger];
    v13 = [v4 uniqueProxyIdentifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F2640;
    v16[3] = &unk_10061B4B0;
    v16[4] = self;
    v14 = v10;
    v17 = v14;
    v18 = v4;
    [v12 sendMessage:v14 forIdentifier:v13 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v16];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v15 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v15 sendMessage:v14 completionHandler:0];
    }
  }
}

- (void)sendReceptionistSessionChangedForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendLastReceptionistMesageChangedForCall", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = objc_alloc_init(CSDMessagingReceptionistSession);
    v9 = [v4 receptionistSession];
    v10 = [v9 predictedName];
    [(CSDMessagingReceptionistSession *)v8 setPredictedName:v10];

    v11 = [v4 receptionistSession];
    v12 = [v11 summary];
    [(CSDMessagingReceptionistSession *)v8 setSummary:v12];

    v13 = [CSDMessagingRelayMessage alloc];
    v14 = [v4 uniqueProxyIdentifier];
    v15 = [(CSDMessagingRelayMessage *)v13 initWithType:65 uniqueProxyIdentifier:v14];

    [(CSDMessagingRelayMessage *)v15 setReceptionistSession:v8];
    v16 = [(CSDRelayMessagingController *)self sessionMessenger];
    v17 = [v4 uniqueProxyIdentifier];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F28D8;
    v20[3] = &unk_10061B4B0;
    v20[4] = self;
    v18 = v15;
    v21 = v18;
    v22 = v4;
    [v16 sendMessage:v18 forIdentifier:v17 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v20];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v19 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v19 sendMessage:v18 completionHandler:0];
    }
  }
}

- (void)sendSmartHoldingSessionChangedForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendSmartHoldingSessionChangedForCall", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  v7 = [v6 waitOnHoldEnabled];

  if (v7)
  {
    v8 = [v4 smartHoldingSession];

    if (v8)
    {
      v9 = [CSDMessagingSmartHoldingSession alloc];
      v10 = [v4 smartHoldingSession];
      v8 = [(CSDMessagingSmartHoldingSession *)v9 initWithSmartHoldingSession:v10];
    }

    v11 = [CSDMessagingRelayMessage alloc];
    v12 = [v4 uniqueProxyIdentifier];
    v13 = [(CSDMessagingRelayMessage *)v11 initWithType:61 uniqueProxyIdentifier:v12];

    [(CSDMessagingRelayMessage *)v13 setSmartHoldingSession:v8];
    v14 = [(CSDRelayMessagingController *)self sessionMessenger];
    v15 = [v4 uniqueProxyIdentifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F2B4C;
    v18[3] = &unk_10061B4B0;
    v18[4] = self;
    v16 = v13;
    v19 = v16;
    v20 = v4;
    [v14 sendMessage:v16 forIdentifier:v15 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v18];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v17 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v17 sendMessage:v16 completionHandler:0];
    }
  }
}

- (void)sendStartReceptionistReplyForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendStartReceptionistReply", buf, 2u);
  }

  v6 = [(CSDRelayMessagingController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [[CSDMessagingRelayMessage alloc] initWithType:62];
    v9 = [(CSDRelayMessagingController *)self sessionMessenger];
    v10 = [v4 uniqueProxyIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F2D88;
    v13[3] = &unk_10061B4B0;
    v13[4] = self;
    v11 = v8;
    v14 = v11;
    v15 = v4;
    [v9 sendMessage:v11 forIdentifier:v10 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v13];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v12 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v12 sendMessage:v11 completionHandler:0];
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "receptionistEnabled not enabled, not sending start receptionist reply", buf, 2u);
    }
  }
}

- (void)sendSetCustomReply:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendSetCustomReply", buf, 2u);
  }

  v9 = [(CSDRelayMessagingController *)self featureFlags];
  v10 = [v9 receptionistEnabled];

  if (v10)
  {
    v11 = [[CSDMessagingRelayMessage alloc] initWithType:63];
    [(CSDMessagingRelayMessage *)v11 setCustomReply:v6];
    v12 = [(CSDRelayMessagingController *)self sessionMessenger];
    v13 = [v7 uniqueProxyIdentifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F2FDC;
    v16[3] = &unk_10061B4B0;
    v16[4] = self;
    v14 = v11;
    v17 = v14;
    v18 = v7;
    [v12 sendMessage:v14 forIdentifier:v13 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v16];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      v15 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [v15 sendMessage:v14 completionHandler:0];
    }
  }

  else
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "receptionistEnabled not enabled, not sending receptionist custom reply", buf, 2u);
    }
  }
}

- (void)sendResetStateMessageToClient
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendResetStateMessageToClient", buf, 2u);
  }

  v4 = [[CSDMessagingRelayMessage alloc] initWithType:23];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSDRelayMessagingController *)self callCenter];
  v6 = [v5 currentAudioAndVideoCalls];

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

        [(CSDMessagingRelayMessage *)v4 addCall:*(*(&v13 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v11 sendMessage:v4 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v12 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v12 sendMessage:v4 wantsAcknowledgement:1 completionHandler:0];
  }
}

- (void)sendCallStartedConnectingMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallStartedConnectingMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:29 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v9 sendMessage:v8 completionHandler:0];

  if (([v4 isEndpointOnCurrentDevice] & 1) == 0 && objc_msgSend(v4, "isOutgoing"))
  {
    v10 = [(CSDRelayMessagingController *)self sessionMessenger];
    v11 = [v4 uniqueProxyIdentifier];
    [v10 sendMessage:v8 forIdentifier:v11];
  }
}

- (void)sendDialCallFailedForUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendDialCallFailedForUniqueProxyIdentifier: %@", &v6, 0xCu);
  }

  [(CSDRelayMessagingController *)self sendDialCallFailedForUniqueProxyIdentifier:v4 withDisconnectedReason:14];
}

- (void)sendDialCallFailedForScreenTimeForUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendDialCallFailedForScreenTimeForUniqueProxyIdentifier: %@", &v6, 0xCu);
  }

  [(CSDRelayMessagingController *)self sendDialCallFailedForUniqueProxyIdentifier:v4 withDisconnectedReason:25];
}

- (void)sendPushCallsMessageToClientDestination:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendPushCallsMessageToClientDestination: %@", buf, 0xCu);
  }

  v35 = self;
  v36 = [[CSDMessagingRelayMessage alloc] initWithType:30];
  v6 = [(CSDRelayMessagingController *)self callCenter];
  v7 = [v6 _allCalls];

  v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  v9 = +[CSDRelayIDSService sharedInstance];
  v10 = [v4 deviceForService:v9];

  v38 = v8;
  if (v10)
  {
    v11 = +[CSDRelayIDSService sharedInstance];
    v12 = [v11 pairedDevice];
    v34 = [v12 isEqual:v10];
  }

  else
  {
    v34 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (!v13)
  {
    v37 = 0;
    goto LABEL_36;
  }

  v14 = v13;
  v37 = 0;
  v15 = *v52;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v52 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v51 + 1) + 8 * i);
      if (v10)
      {
        v18 = [*(*(&v51 + 1) + 8 * i) provider];
        v19 = [v10 canReceiveMessagesForCallProvider:v18];

        if (v19)
        {
          v20 = sub_100004778();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v57 = v17;
            v58 = 2112;
            v59 = v4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Allowing call: %@ to be pushed to destination: %@", buf, 0x16u);
          }

LABEL_21:

          v21 = 1;
          goto LABEL_22;
        }
      }

      else if ([v4 isGuest] && (objc_msgSend(v17, "needsConversationOrVideoRelaySupport") & 1) == 0)
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v57 = v17;
          v58 = 2112;
          v59 = v4;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Allowing call: %@ to be pushed to destination: %@", buf, 0x16u);
        }

        v37 = 1;
        goto LABEL_21;
      }

      v21 = 0;
LABEL_22:
      if (([v10 canReceiveRelayedGFTCalls] & 1) != 0 || !objc_msgSend(v17, "needsConversationOrVideoRelaySupport"))
      {
        if (v21)
        {
          v23 = [v17 uniqueProxyIdentifier];
          [v39 addObject:v23];

          [v38 addObject:v17];
          continue;
        }
      }

      else
      {
        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v57 = v17;
          v58 = 2112;
          v59 = v4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not allowing call: %@ to be pushed to destination: %@ because the call requires conversation or video relay support", buf, 0x16u);
        }
      }

      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = v17;
        v58 = 2112;
        v59 = v4;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping call: %@ to track for pushing to destination: %@", buf, 0x16u);
      }
    }

    v14 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  }

  while (v14);
LABEL_36:

  if ([v39 count])
  {
    v25 = v38;
    if (v37)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v26 = v38;
      v27 = [v26 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v48;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v48 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [(CSDRelayMessagingController *)v35 sendCallAnsweredElsewhereMessageToClientForCall:*(*(&v47 + 1) + 8 * j)];
          }

          v28 = [v26 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v28);
      }
    }

    v31 = [(CSDRelayMessagingController *)v35 hostMessagingDelegate];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000F3F2C;
    v41[3] = &unk_10061B4D8;
    v42 = v38;
    v32 = v36;
    v43 = v36;
    v44 = v35;
    v45 = v39;
    v46 = v4;
    [v31 pushHostedCallsForRemoteInviteDictionary:0 destination:v46 toPairedDevice:v34 completion:v41];

    v33 = v42;
  }

  else
  {
    v33 = sub_100004778();
    v32 = v36;
    v25 = v38;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Found no calls to send sendPushCallsMessageToClientDestination", buf, 2u);
    }
  }
}

- (void)sendUpdateCallContextMessageToClientForCallProviderManager:(id)a3
{
  v4 = a3;
  v5 = [[CSDMessagingRelayMessage alloc] initWithType:33];
  v6 = +[CSDCallCapabilities sharedInstance];
  v7 = [v6 callCapabilitiesState];
  [(CSDMessagingRelayMessage *)v5 setCallCapabilitiesState:v7];

  v8 = [v4 providersByIdentifierForRemoteClients:0];

  v9 = [v8 allValues];
  [(CSDMessagingRelayMessage *)v5 setTuProviders:v9];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) Sending UpdateCallContext message: %@", &v12, 0xCu);
  }

  v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v11 sendMessage:v5 completionHandler:0];
}

- (void)sendNeedsManualInCallSoundsChangeMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendNeedsManualInCallSoundsChangeMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:34 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v8, "setNeedsManualInCallSounds:", [v4 needsManualInCallSounds]);
  -[CSDMessagingRelayMessage setSoundRegion:](v8, "setSoundRegion:", [v4 soundRegion]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendInvitationSentMessageToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendInvitationSentMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:35 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateRoutesMessageToClientForRoutes:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateRoutesMessageToClientForRoutes: %@", buf, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:44];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = [CSDMessagingRoute alloc];
        v14 = [(CSDMessagingRoute *)v13 initWithTURoute:v12, v16];
        [(CSDMessagingRelayMessage *)v6 addRoutes:v14];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v15 sendMessage:v6 completionHandler:0];
}

- (void)sendUpdateSupportsDTMFUpdatesToClientForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateSupportsDTMFUpdatesToClientForCall: %@", &v11, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:55 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v8, "setSupportsDTMFUpdates:", [v4 supportsDTMFUpdates]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];
}

- (void)sendReceivedDTMFUpdateForCall:(id)a3 dtmfUpdate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendReceivedDTMFUpdateForCall: %@ dtmfUpdate: %@", &v15, 0x16u);
  }

  v9 = [CSDMessagingRelayMessage alloc];
  v10 = [v6 uniqueProxyIdentifier];
  v11 = [(CSDMessagingRelayMessage *)v9 initWithType:56 uniqueProxyIdentifier:v10];

  v12 = [v7 digits];
  [(CSDMessagingRelayMessage *)v11 setDtmfUpdateDigits:v12];

  v13 = [(CSDRelayMessagingController *)self sessionMessenger];
  v14 = [v6 uniqueProxyIdentifier];
  [v13 sendMessage:v11 forIdentifier:v14];
}

- (void)sendDialCallMessageToHostForCall:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendDialCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v9 = [v6 dialRequest];
  [(CSDRelayMessagingController *)self _updateDialingIDSDeviceWithRequest:v9];

  v10 = [(CSDRelayMessagingController *)self dialingIDSDestination];

  if (!v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No dialing IDS device found. If we aren't already in a session, this dial call attempt will fail.", buf, 2u);
    }
  }

  v12 = +[CSDRelayConferenceInterface sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F4B34;
  v15[3] = &unk_10061B500;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [v12 prepareConferenceForCall:v14 remoteInviteDictionary:0 completion:v15];
}

- (void)sendJoinConversationMessageToHostForCall:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendJoinConversationMessageToHostForCall: %@", buf, 0xCu);
  }

  v9 = [v6 dialRequest];
  [(CSDRelayMessagingController *)self _updateDialingIDSDeviceWithRequest:v9];

  v10 = [(CSDRelayMessagingController *)self dialingIDSDestination];

  if (!v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No dialing IDS device found. If we aren't already in a session, this join conversation request will fail.", buf, 2u);
    }
  }

  v12 = +[CSDRelayConferenceInterface sharedInstance];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F50D8;
  v15[3] = &unk_10061B500;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [v12 prepareConferenceForCall:v14 remoteInviteDictionary:0 completion:v15];
}

- (void)sendAnswerCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000F57E8;
  v34[3] = &unk_10061B528;
  v6 = v4;
  v35 = v6;
  v36 = self;
  v7 = objc_retainBlock(v34);
  v8 = [v6 receptionistState];
  if ([v6 isScreening])
  {
    v9 = [(CSDRelayMessagingController *)self featureFlags];
    v10 = [v9 LVMEverywhere];

    if (v10)
    {
      v11 = (v7[2])(v7);
      v12 = [(CSDRelayMessagingController *)self sessionMessenger];
      v13 = [v6 uniqueProxyIdentifier];
      [v12 sendMessage:v11 forIdentifier:v13 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendAnswerCallMessageToHostForCall, return", buf, 2u);
      }

LABEL_30:

      goto LABEL_31;
    }
  }

  if ([v6 isAnswerFromScreening])
  {
    v30 = [v6 receptionistState] != 3;
  }

  else
  {
    v30 = 0;
  }

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 receptionistState];
    if ([v6 isScreening])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v18 = self;
    v19 = v7;
    v20 = v8;
    v21 = [v6 status];
    v22 = [v6 isAnswerFromScreening];
    *buf = 134219010;
    if (v22)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v38 = v16;
    if (v30)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v39 = 2112;
    v40 = v17;
    v41 = 2048;
    v42 = v21;
    v8 = v20;
    v7 = v19;
    self = v18;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sendAnswerCallMessageToHostForCall: rs: %lu, cs: %@, status: %lu, answerFromScreening: %@, canAnswerFromReceptionist: %@", buf, 0x34u);
  }

  if (![v6 isEndpointOnCurrentDevice] || v8 && (objc_msgSend(v6, "status") != 1 || !v30))
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Do not prepare conference for call: %@", buf, 0xCu);
    }

    v11 = (v7[2])(v7);
    v28 = [(CSDRelayMessagingController *)self sessionMessenger];
    v14 = v28;
    if (v8)
    {
      [v28 sendMessage:v11 forCall:v6 completionHandler:0];
    }

    else
    {
      v29 = [v6 uniqueProxyIdentifier];
      [v14 sendMessage:v11 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v29];
    }

    goto LABEL_30;
  }

  v25 = +[CSDRelayConferenceInterface sharedInstance];
  v26 = [v6 remoteInviteDictionary];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F595C;
  v31[3] = &unk_10061B550;
  v33 = v7;
  v31[4] = self;
  v32 = v6;
  [v25 prepareConferenceForCall:v32 remoteInviteDictionary:v26 completion:v31];

  v11 = v33;
LABEL_31:
}

- (void)sendDisconnectCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendDisconnectCallMessageToHostForCall: %@", &v16, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:9 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setDisconnectedReason:](v8, "setDisconnectedReason:", [v4 disconnectedReason]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  v11 = [v9 sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v10];

  if ((v11 & 1) == 0)
  {
    v12 = [(CSDRelayMessagingController *)self featureFlags];
    v13 = [v12 LVMEverywhere];

    if (v13)
    {
      v14 = [(CSDRelayMessagingController *)self sessionMessenger];
      [v14 sendMessage:v8 forCall:v4 completionHandler:0];
    }
  }

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v15 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v15 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendHoldCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendHoldCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:11 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUnholdCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendUnholdCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:12 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendGroupCallMessageToHostForCall:(id)a3 otherCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendGroupCallMessageToHostForCall: %@ otherCall: %@", &v16, 0x16u);
  }

  v9 = [CSDMessagingRelayMessage alloc];
  v10 = [v6 uniqueProxyIdentifier];
  v11 = [(CSDMessagingRelayMessage *)v9 initWithType:13 uniqueProxyIdentifier:v10];

  v12 = [v7 uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v11 addOtherUniqueProxyIdentifiers:v12];

  v13 = [(CSDRelayMessagingController *)self sessionMessenger];
  v14 = [v6 uniqueProxyIdentifier];
  [v13 sendMessage:v11 forIdentifier:v14];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v15 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v15 sendMessage:v11 completionHandler:0];
  }
}

- (void)sendUngroupCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendUngroupCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:14 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendSwapCallsMessageToHost
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendSwapCallsMessageToHost", v7, 2u);
  }

  v4 = [[CSDMessagingRelayMessage alloc] initWithType:16];
  v5 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v5 sendMessage:v4 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v6 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v6 sendMessage:v4 completionHandler:0];
  }
}

- (void)sendEndActiveAndAnswerCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendEndActiveAndAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  v7 = [v4 remoteInviteDictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F6444;
  v9[3] = &unk_10061B578;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v6 prepareConferenceForCall:v8 remoteInviteDictionary:v7 completion:v9];
}

- (void)sendEndHeldAndAnswerCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendEndHeldAndAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  v7 = [v4 remoteInviteDictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F66E8;
  v9[3] = &unk_10061B578;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v6 prepareConferenceForCall:v8 remoteInviteDictionary:v7 completion:v9];
}

- (void)sendHoldActiveAndAnswerCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendHoldActiveAndAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v6 = [(CSDRelayMessagingController *)self sessionMessenger];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [v6 sessionProtocolVersionForIdentifier:v7];

  if (v8 <= 2)
  {
    v9 = [(CSDRelayMessagingController *)self callCenter];
    v10 = [v9 callWithStatus:1];

    if (v10)
    {
      v11 = [v10 provider];
      if ([v11 isFaceTimeProvider])
      {

LABEL_9:
        [(CSDRelayMessagingController *)self sendHoldCallMessageToHostForCall:v10];
        goto LABEL_10;
      }

      v14 = [v4 provider];
      v15 = [v14 isFaceTimeProvider];

      if (v15)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    [(CSDRelayMessagingController *)self sendAnswerCallMessageToHostForCall:v4];
    goto LABEL_11;
  }

  v12 = +[CSDRelayConferenceInterface sharedInstance];
  v13 = [v4 remoteInviteDictionary];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F6A58;
  v16[3] = &unk_10061B578;
  v17 = v4;
  v18 = self;
  [v12 prepareConferenceForCall:v17 remoteInviteDictionary:v13 completion:v16];

  v10 = v17;
LABEL_11:
}

- (void)sendDisconnectCurrentCallMessageToHostForDisconnectedCall:(id)a3 activateHeld:(BOOL)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSMessaging Client->Host) sendDisconnectCurrentCallToHost", v15, 2u);
  }

  v8 = [[CSDMessagingRelayMessage alloc] initWithType:21];
  v9 = [v6 uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v8 setUniqueProxyIdentifier:v9];

  if ([(TUFeatureFlags *)self->_featureFlags automaticCallActivationDisabled]&& !a4)
  {
    [(CSDMessagingRelayMessage *)v8 setAutomaticCallActivationDisabled:1];
  }

  v10 = [(CSDRelayMessagingController *)self sessionMessenger];
  v11 = [v6 uniqueProxyIdentifier];
  v12 = [v10 sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [(CSDRelayMessagingController *)self sessionMessenger];
    [v13 sendMessage:v8 forCall:v6 completionHandler:0];
  }

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v14 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendDisconnectAllCallsMessageToHostForDisconnectedCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendDisconnectAllCallsToHost", v11, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:22];
  v7 = [v4 uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v6 setUniqueProxyIdentifier:v7];

  v8 = [(CSDRelayMessagingController *)self sessionMessenger];
  v9 = [v4 uniqueProxyIdentifier];

  [v8 sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v9];
  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v10 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v10 sendMessage:v6 completionHandler:0];
  }
}

- (void)sendSendHardPauseDigitsMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendSendHardPauseDigitsMessageToHost", v10, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:25];
  v7 = [v4 uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v6 setUniqueProxyIdentifier:v7];

  v8 = [(CSDRelayMessagingController *)self sessionMessenger];
  v9 = [v4 uniqueProxyIdentifier];

  [v8 sendMessage:v6 forIdentifier:v9];
}

- (void)sendRequestCallStateMessageToHost
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendRequestCallStateMessageToHost", v6, 2u);
  }

  v4 = [[CSDMessagingRelayMessage alloc] initWithType:28];
  v5 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v5 sendMessage:v4 timeout:1 wantsAcknowledgement:3 maximumRetryAttempts:0 completionHandler:300.0];
}

- (void)sendPullCallsMessageToHost
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendPullCallsMessageToHost", buf, 2u);
  }

  v4 = [[CSDMessagingRelayMessage alloc] initWithType:31];
  v5 = [(CSDRelayMessagingController *)self callCenter];
  v6 = [v5 _allCalls];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 uniqueProxyIdentifier];
        [v7 addObject:v14];

        [(CSDMessagingRelayMessage *)v4 addCall:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v15 = [(CSDRelayMessagingController *)self clientMessagingDelegate];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000F7254;
  v18[3] = &unk_10061B5A0;
  v19 = v4;
  v20 = self;
  v21 = v7;
  v16 = v7;
  v17 = v4;
  [v15 pullRemotelyHostedCallsForMessage:v17 completion:v18];
}

- (void)sendPushRelayingCallsMessageToHostForSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendPushRelayingCallsMessageToHostForSourceIdentifier: %@", &v8, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:32];
  [(CSDMessagingRelayMessage *)v6 setSourceIdentifier:v4];
  v7 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v7 sendMessage:v6 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];
}

- (void)sendUpdateRemoteUplinkMutedCallMessageToHostForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateRemoteUplinkMutedCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:39 uniqueProxyIdentifier:v7];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v8, "setRemoteUplinkMuted:", [v4 isRemoteUplinkMuted]);
  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];
  [v9 sendMessage:v8 forIdentifier:v10];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v11 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v11 sendMessage:v8 completionHandler:0];
  }
}

- (void)sendPickRouteMessageToHostForRoute:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendPickRouteMessageToHostForRoute: %@", &v9, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:45];
  v7 = [[CSDMessagingRoute alloc] initWithTURoute:v4];
  [(CSDMessagingRelayMessage *)v6 setRoute:v7];

  v8 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v8 sendMessage:v6 completionHandler:0];
}

- (void)sendPerformSmartHoldingRequest:(id)a3
{
  v4 = a3;
  v7 = [[CSDMessagingRelayMessage alloc] initWithType:66];
  v5 = [[CSDMessagingSmartHoldingRequest alloc] initWithRequest:v4];

  [(CSDMessagingRelayMessage *)v7 setSmartHoldingRequest:v5];
  v6 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [v6 sendMessage:v7 completionHandler:0];
}

- (void)sendSuppressRingtoneMessageForCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendSuppressRingtoneMessageForCall", v11, 2u);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  v7 = [v4 uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:27 uniqueProxyIdentifier:v7];

  v9 = [(CSDRelayMessagingController *)self sessionMessenger];
  v10 = [v4 uniqueProxyIdentifier];

  [v9 sendMessage:v8 forIdentifier:v10 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];
}

- (void)sendUpdateSystemVolume:(float)a3
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendUpdateSystemVolume: %f", &v13, 0xCu);
  }

  v6 = +[CSDFaceTimeAudioIDSService sharedInstance];
  v7 = [v6 pairedDevice];
  v8 = [v7 capabilities];
  v9 = [v8 valueForCapability:IDSRegistrationPropertySupportsCalls25];

  if (v9)
  {
    v10 = [[CSDMessagingRelayMessage alloc] initWithType:40];
    *&v11 = a3;
    [(CSDMessagingRelayMessage *)v10 setSystemVolume:v11];
    v12 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v12 sendMessage:v10 completionHandler:0];
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Paired device does not support system volume updates, not sending message", &v13, 2u);
    }
  }
}

- (void)sendBuzzMember:(id)a3 toConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 UUID];
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendBuzzMember: %@ toConversationWithUUID: %@", &v21, 0x16u);
  }

  v10 = [[CSDMessagingRelayMessage alloc] initWithType:51];
  v11 = [CSDMessagingConversationMember memberWithTUConversationMember:v6];
  v12 = [NSMutableArray arrayWithObject:v11];
  [(CSDMessagingRelayMessage *)v10 setConversationMembers:v12];

  v13 = [v7 UUID];
  v14 = [v13 UUIDString];
  [(CSDMessagingRelayMessage *)v10 setConversationUUIDString:v14];

  v15 = [(CSDRelayMessagingController *)self callCenter];
  v16 = [v7 groupUUID];
  v17 = [v15 callForConversationWithGroupUUID:v16];

  if (!v17)
  {
    v20 = sub_100004778();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10047470C(v7);
    }

    goto LABEL_8;
  }

  v18 = [(CSDRelayMessagingController *)self sessionMessenger];
  v19 = [v17 uniqueProxyIdentifier];
  [v18 sendMessage:v10 forIdentifier:v19];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v20 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v20 sendMessage:v10 completionHandler:0];
LABEL_8:
  }
}

- (void)sendAddRemoteMembers:(id)a3 otherInvitedHandles:(id)a4 toConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 UUID];
    v22 = 138412802;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendAddRemoteMembers: %@ otherInvitedHandles: %@ toConversationWithUUID: %@", &v22, 0x20u);
  }

  v13 = [CSDMessagingRelayMessage alloc];
  v14 = [v10 UUID];
  v15 = [(CSDMessagingRelayMessage *)v13 initAddRemoteMemberMessageWithMembers:v8 otherInvitedHandles:v9 conversationWithUUID:v14];

  v16 = [(CSDRelayMessagingController *)self callCenter];
  v17 = [v10 groupUUID];
  v18 = [v16 callForConversationWithGroupUUID:v17];

  if (!v18)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047479C(v10);
    }

    goto LABEL_8;
  }

  v19 = [(CSDRelayMessagingController *)self sessionMessenger];
  v20 = [v18 uniqueProxyIdentifier];
  [v19 sendMessage:v15 forIdentifier:v20];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    v21 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v21 sendMessage:v15 completionHandler:0];
LABEL_8:
  }
}

- (void)requestAnswerForRequest:(id)a3 forCall:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v20 behavior];
  if ((v7 - 1) > 3)
  {
    v8 = 19;
  }

  else
  {
    v8 = dword_10057A1A0[(v7 - 1)];
  }

  v9 = [CSDMessagingRelayMessage alloc];
  v10 = [v6 uniqueProxyIdentifier];
  v11 = [(CSDMessagingRelayMessage *)v9 initWithType:43 uniqueProxyIdentifier:v10];

  [(CSDMessagingRelayMessage *)v11 setRequestActionType:v8];
  v12 = [v20 sourceIdentifier];
  [(CSDMessagingRelayMessage *)v11 setSourceIdentifier:v12];

  if ([v6 isHostedOnCurrentDevice])
  {
    v13 = [(CSDRelayMessagingController *)self sessionMessenger];
    v14 = [v6 uniqueProxyIdentifier];
    v15 = [v20 endpointIDSDestination];
    v16 = [NSSet setWithObject:v15];
    [v13 sendMessage:v11 forIdentifier:v14 toDestinations:v16];
  }

  else
  {
    v17 = [v20 endpointIDSDestination];
    [(CSDMessagingRelayMessage *)v11 setEndpointIDSDestination:v17];

    v18 = [(CSDRelayMessagingController *)self sessionMessenger];
    v19 = [v6 uniqueProxyIdentifier];
    [v18 sendMessage:v11 forIdentifier:v19 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

    if (![(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      goto LABEL_9;
    }

    v13 = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [v13 sendMessage:v11 completionHandler:0];
  }

LABEL_9:
}

- (void)messenger:(id)a3 handledMessage:(id)a4 fromDestination:(id)a5 device:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(CSDRelayMessagingController *)self _canReceiveRelayCallsFromDestination:v10 device:v11])
  {
    if (-[CSDRelayMessagingController shouldProcessRelayMessageOfType:](self, "shouldProcessRelayMessageOfType:", [v9 type]))
    {
      if (v11 || ([v10 isGuest] & 1) != 0)
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v9 typeString];
          *buf = 138412546;
          v48 = v13;
          v49 = 2112;
          v50 = v9;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handle incoming %@ message: %@", buf, 0x16u);
        }

        if (v11)
        {
          v14 = +[CSDRelayIDSService sharedInstance];
          v15 = [v14 pairedDevice];
          v16 = [v15 isEqual:v11];
        }

        else
        {
          v16 = 0;
        }

        v28 = +[CSDReportingController sharedInstance];
        [v28 reportRelayMessageReceived:v9 fromPairedDevice:v16];

        v19 = [(CSDRelayMessagingController *)self clientMessagingDelegate];
        v22 = [(CSDRelayMessagingController *)self hostMessagingDelegate];
        v23 = [(CSDRelayMessagingController *)self commonMessagingDelegate];
        switch([v9 type])
        {
          case 1u:
            [v19 handleIncomingCallMessageFromHost:v9 fromPairedDevice:v16];
            break;
          case 2u:
            if ([v9 disconnectedReason] == 14)
            {
              goto LABEL_63;
            }

            v32 = [v9 tuProvider];
            v33 = [v11 canReceiveMessagesForCallProvider:v32];

            if (v33)
            {
              if (![(CSDRelayMessagingController *)self shouldScreenTimeRestrictMessage:v9])
              {
                v45[0] = _NSConcreteStackBlock;
                v45[1] = 3221225472;
                v45[2] = sub_1000F9150;
                v45[3] = &unk_10061B5C8;
                v45[4] = self;
                v46 = v9;
                [v22 handleDialCallMessageFromClient:v46 destination:v10 device:v11 completion:v45];
                v29 = v46;
                goto LABEL_103;
              }

              v30 = sub_100004778();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v38 = [v9 destinationID];
                v34 = [v9 tuProvider];
                v35 = [v9 isEmergency];
                *buf = 138412802;
                v48 = v38;
                v49 = 2112;
                v50 = v34;
                v51 = 1024;
                LODWORD(v52) = v35;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Screen Time restricted the call for dial call message with destinationID %@ and provider: %@ is emergency: (%d)", buf, 0x1Cu);
              }

              goto LABEL_72;
            }

            v36 = sub_100004778();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v9 tuProvider];
              *buf = 138412802;
              v48 = v11;
              v49 = 2112;
              v50 = v37;
              v51 = 2112;
              v52 = v9;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] We determined that device: %@ cannot process messages for provider %@. Ignoring incoming message: %@", buf, 0x20u);
            }

            break;
          case 3u:
            [v19 handleCallDialedMessageFromHost:v9 fromPairedDevice:v16];
            break;
          case 4u:
            [v22 handleAnswerCallMessageFromClient:v9 destination:v10 device:v11];
            break;
          case 5u:
            [v19 handleCallAnsweredElsewhereMessageFromHost:v9 fromPairedDevice:v16];
            break;
          case 6u:
LABEL_63:
            [v19 handleCallDisconnectedMessageFromHost:v9];
            break;
          case 7u:
            [v23 handlePlayDTMFToneForKeyMessage:v9];
            break;
          case 8u:
            [v19 handleCallConnectedMessageFromHost:v9];
            break;
          case 9u:
            [v22 handleDisconnectCallMessageFromClient:v9];
            break;
          case 0xAu:
            [v19 handlePullRelayingCallsMessageFromHost:v9 fromPairedDevice:v16];
            break;
          case 0xBu:
            [v22 handleHoldCallMessageFromClient:v9];
            break;
          case 0xCu:
            [v22 handleUnholdCallMessageFromClient:v9];
            break;
          case 0xDu:
            [v22 handleGroupCallMessageFromClient:v9];
            break;
          case 0xEu:
            [v22 handleUngroupCallMessageFromClient:v9];
            break;
          case 0xFu:
            [v19 handleResetWantsHoldMusicFromHost:v9];
            break;
          case 0x10u:
            [v22 handleSwapCallsMessageFromClient:v9];
            break;
          case 0x11u:
            [v19 handleUpdateCallModelMessageFromHost:v9];
            break;
          case 0x12u:
            [v19 handleDeviceUnavailableMessageFromHost:v9];
            break;
          case 0x13u:
            [v22 handleEndActiveAndAnswerMessageFromClient:v9];
            break;
          case 0x14u:
            [v22 handleEndHeldAndAnswerMessageFromClient:v9];
            break;
          case 0x15u:
            [v22 handleDisconnectCurrentCallMessageFromClient:v9];
            break;
          case 0x16u:
            [v22 handleDisconnectAllCallsMessageFromClient:v9];
            break;
          case 0x17u:
            [v19 handleResetStateMessageFromHost:v9 fromPairedDevice:v16];
            break;
          case 0x18u:
            [v19 handleHardPauseDigitsAvailabilityMessageFromHost:v9];
            break;
          case 0x19u:
            [v22 handleSendHardPauseDigitsMessageFromClient:v9];
            break;
          case 0x1Au:
            [v19 handleUpdateRemoteCallStateMessageFromHost:v9];
            break;
          case 0x1Bu:
            [v23 handleSuppressRingtoneMessage:v9];
            break;
          case 0x1Cu:
            [v22 handleRequestCallContextMessageFromClient:v9 fromDevice:v11];
            break;
          case 0x1Du:
            [v19 handleCallStartedConnectingMessageFromHost:v9];
            break;
          case 0x1Eu:
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_1000F92B8;
            v41[3] = &unk_10061B578;
            v41[4] = self;
            v42 = v9;
            [v19 handlePushHostedCallsMessageFromHost:v42 completion:v41];
            v29 = v42;
            goto LABEL_103;
          case 0x1Fu:
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_1000F92C8;
            v39[3] = &unk_10061B578;
            v39[4] = self;
            v40 = v9;
            [v22 handlePullHostedCallsMessageFromClient:v40 destination:v10 fromPairedDevice:v16 completion:v39];
            v29 = v40;
            goto LABEL_103;
          case 0x20u:
            [v22 handlePushRelayingCallsMessageFromClient:v9];
            break;
          case 0x21u:
            [v19 handleUpdateCallContextAvailableMessageFromHost:v9];
            break;
          case 0x22u:
            [v19 handleNeedsManualInCallSoundsChangeMessageFromHost:v9];
            break;
          case 0x23u:
            [v19 handleInvitationSentMessageFromHost:v9];
            break;
          case 0x24u:
            [v22 handleHoldActiveAndAnswerMessageFromClient:v9];
            break;
          case 0x25u:
            [v19 handleUpdateCallDisplayContextMessageFromHost:v9];
            break;
          case 0x26u:
            [v23 handleSetUplinkMutedMessage:v9];
            break;
          case 0x27u:
            [v19 handleUpdateRemoteUplinkMutedMessageFromHost:v9];
            break;
          case 0x28u:
            [v23 handleUpdateSystemVolumeMessageFromHost:v9];
            break;
          case 0x29u:
            [v19 handleUpdateSupportsTTYWithVoiceMessageFromHost:v9];
            break;
          case 0x2Au:
            [v23 handleSetTTYTypeMessage:v9];
            break;
          case 0x2Bu:
            [v23 handleRequestActionMessage:v9];
            break;
          case 0x2Cu:
            [v19 handleUpdateRoutesMessageFromHost:v9];
            break;
          case 0x2Du:
            [v22 handlePickRouteMessageFromClient:v9];
            break;
          case 0x2Fu:
            [v19 handleUpdateFailureExpectedMessageFromHost:v9];
            break;
          case 0x30u:
            [v19 handleUpdateSupportsEmergencyFallbackMessageFromHost:v9];
            break;
          case 0x31u:
            goto LABEL_93;
          case 0x32u:
            if ([(CSDRelayMessagingController *)self shouldScreenTimeRestrictMessage:v9])
            {
              v30 = sub_100004778();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Screen Time restricted the call for Join Conversation message", buf, 2u);
              }

LABEL_72:

              v31 = [v9 uniqueProxyIdentifier];
              [(CSDRelayMessagingController *)self sendDialCallFailedForScreenTimeForUniqueProxyIdentifier:v31];
            }

            else
            {
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_1000F9204;
              v43[3] = &unk_10061B5C8;
              v43[4] = self;
              v44 = v9;
              [v22 handleJoinConversationMessageFromClient:v44 destination:v10 device:v11 completion:v43];
              v29 = v44;
LABEL_103:
            }

            break;
          case 0x33u:
            [v22 handleBuzzMemberMessageFromClient:v9];
            break;
          case 0x34u:
            [v22 handleAddMemberMessageFromClient:v9];
            break;
          case 0x35u:
            [v19 handleConversationProminenceMessageFromHost:v9];
            break;
          case 0x36u:
            [v19 handleUpdateConversationsMessageFromHost:v9];
LABEL_93:
            [v19 handleOngoingConversationMessageFromHost:v9];
            break;
          case 0x37u:
            [v19 handleUpdateSupportsDTMFUpdatesMessageFromHost:v9];
            break;
          case 0x38u:
            [v19 handleReceivedDTMFUpdateMessageFromHost:v9];
            break;
          case 0x39u:
            [v19 handleScreeningChangedFromHost:v9];
            break;
          case 0x3Au:
            [v19 handleCaptionsResultFromHost:v9];
            break;
          case 0x3Bu:
            [v19 handleReceptionistStateChangedFromHost:v9];
            break;
          case 0x3Cu:
            [v19 handleLastReceptionistMessageChangedFromHost:v9];
            break;
          case 0x3Du:
            [v19 handleSmartHoldingSessionChangedFromHost:v9];
            break;
          case 0x3Eu:
            [v22 handleStartReceptionistReplyFromClient:v9];
            break;
          case 0x3Fu:
            [v22 handleReceptionistCustomReplyFromClient:v9];
            break;
          case 0x40u:
            [v19 handleAnnouncementHasFinishedChangedFromHost:v9];
            break;
          case 0x41u:
            [v19 handleReceptionistSessionChangedFromHost:v9];
            break;
          case 0x42u:
            [v22 handlePerformSmartHoldingRequestFromClient:v9];
            break;
          default:
            break;
        }

LABEL_15:

LABEL_27:
        goto LABEL_28;
      }

      v19 = sub_100004778();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v48 = v10;
        v49 = 2112;
        v50 = v9;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] We determined that device is null and destination: %@ is not guest. Ignoring incoming message: %@", buf, 0x16u);
      }

      goto LABEL_28;
    }

    v19 = sub_100004778();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v24 = [v9 type];
    if (v24 >= 0x43)
    {
      v22 = [NSString stringWithFormat:@"(unknown: %i)", v24];
    }

    else
    {
      v22 = *(&off_10061B608 + v24);
    }

    *buf = 138412290;
    v48 = v22;
    v25 = "[WARN] Ignoring %@ relay message since our device does not suppport processing messages of that type.";
    v26 = v19;
    v27 = 12;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_27;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = v10;
    v49 = 2112;
    v50 = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Messaging device can't receive relayed calls ... destination %@ device %@", buf, 0x16u);
  }

  v18 = [(CSDRelayMessagingController *)self shouldDeclineSessionInviteWithMessageWhenRelayIsDisabled:v9];
  v19 = sub_100004778();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v21 = [v9 typeString];
      *buf = 138412546;
      v48 = v21;
      v49 = 2112;
      v50 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "... and we were told to decline the session invite. Declining incoming %@ message: %@", buf, 0x16u);
    }

    v19 = [[CSDMessagingRelayMessage alloc] initWithType:18];
    [v19 setDisconnectedReason:12];
    v22 = [(CSDRelayMessagingController *)self sessionMessenger];
    v23 = [v9 uniqueProxyIdentifier];
    [v22 sendMessage:v19 andCancelOrDeclineInvitationIfNecessaryForIdentifier:v23];
    goto LABEL_15;
  }

  if (v20)
  {
    v22 = [v9 typeString];
    *buf = 138412546;
    v48 = v22;
    v49 = 2112;
    v50 = v9;
    v25 = "... and we were told not to decline the session invite. Ignoring incoming %@ message: %@";
    v26 = v19;
    v27 = 22;
    goto LABEL_26;
  }

LABEL_28:
}

- (BOOL)shouldProcessRelayMessageOfType:(int)a3
{
  v3 = 1;
  if (a3 <= 0x24)
  {
    if (((1 << a3) & 0x1000791A10) != 0)
    {
      v4 = +[FTDeviceSupport sharedInstance];
      v3 = [v4 deviceType] == 2;
    }

    else
    {
      if (a3 != 2)
      {
        return v3;
      }

      v4 = +[FTDeviceSupport sharedInstance];
      if ([v4 deviceType] == 2)
      {
        v3 = 1;
      }

      else
      {
        v6 = +[FTDeviceSupport sharedInstance];
        v3 = [v6 deviceType] == 6;
      }
    }
  }

  return v3;
}

- (void)checkShouldIgnoreSessionInviteWithMessage:(id)a3 fromDestination:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[TUCallCapabilities debugDescription];
    v43 = 138412290;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TUCallCapabilities: %@", &v43, 0xCu);
  }

  v13 = [v10 isGuest];
  if (v13 && !-[CSDRelayMessagingController _canReceiveGuestSessionInviteForMessageType:](self, "_canReceiveGuestSessionInviteForMessageType:", [v8 type]))
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v8 typeString];
      v31 = +[FTDeviceSupport sharedInstance];
      v32 = [v31 model];
      v43 = 138412546;
      v44 = v30;
      v45 = 2112;
      v46 = v32;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Setting should ignore session to YES for %@ message because message is from a guest destination and this device is not a supported Guest Session device (%@)", &v43, 0x16u);
    }

    goto LABEL_20;
  }

  v14 = [v8 type];
  if (v14 == 31)
  {
    v27 = [(CSDRelayMessagingController *)self callCenter];
    v28 = [v27 anyCallPassesTest:&stru_10061B5E8];

    if (v28)
    {
      goto LABEL_15;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(CSDRelayMessagingController *)self callCenter];
      v34 = [v33 _allCalls];
      v43 = 138412290;
      v44 = v34;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Setting should ignore session to YES because no calls exist with an endpoint on the current device: %@", &v43, 0xCu);
    }

LABEL_20:
    v29 = 1;
LABEL_29:

    goto LABEL_30;
  }

  if (v14 == 1)
  {
    v15 = [v8 tuProvider];
    v16 = [v8 destinationID];
    v17 = [v15 identifier];
    v18 = [TUICFInterface allowCallForDestinationID:v16 providerIdentifier:v17];

    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v8 destinationID];
      v21 = [v15 identifier];
      v43 = 138412802;
      v44 = v18;
      v45 = 2112;
      v46 = v20;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Query result: %@ for handle: %@ provider: %@", &v43, 0x20u);
    }

    if ([v8 priority] != 2 && (objc_msgSend(v18, "allowCallForDestinationID") & 1) == 0)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v8 destinationID];
        v43 = 138412546;
        v44 = v35;
        v45 = 2112;
        v46 = v15;
        v37 = "[WARN] Setting should ignore session to YES because TUICFInterface allowCall = NO for destinationID %@ and provider %@";
        v38 = v24;
        v39 = 22;
        goto LABEL_26;
      }

LABEL_27:

      v29 = 1;
LABEL_28:

      goto LABEL_29;
    }

    v22 = [(CSDRelayMessagingController *)self callCenter];
    v23 = [v22 callWithStatus:3];

    if (v23)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(CSDRelayMessagingController *)self callCenter];
        v26 = [v25 callWithStatus:3];
        v43 = 138412290;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Setting should ignore session to YES because a call exists with sending status: %@", &v43, 0xCu);
      }

      goto LABEL_27;
    }

    if ([(CSDRelayMessagingController *)self shouldScreenTimeRestrictMessage:v8])
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v8 destinationID];
        v36 = [v8 isEmergency];
        v43 = 138412802;
        v44 = v35;
        v45 = 2112;
        v46 = v15;
        v47 = 1024;
        LODWORD(v48) = v36;
        v37 = "[WARN] Setting should ignore session to YES because screen time filtered message for destinationID %@ and provider %@ with emergency (%d)";
        v38 = v24;
        v39 = 28;
LABEL_26:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, &v43, v39);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if ((+[TUCallCapabilities supportsPrimaryCalling]& 1) == 0)
    {
      v40 = [(CSDRelayMessagingController *)self callCenter];
      v41 = [v40 shouldPreferRelayOverDirectSecondaryCallingForProvider:v15 isVideo:{objc_msgSend(v8, "isVideo")}];

      if ((v41 & 1) == 0)
      {
        if ([v15 isTelephonyProvider]&& +[TUCallCapabilities isDirectTelephonyCallingCurrentlyAvailable])
        {
          v24 = sub_100004778();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          LOWORD(v43) = 0;
          v42 = "[WARN] Setting should ignore session to YES because relay is not preferred, message provider is Telephony, and isDirectTelephonyCallingCurrentlyAvailable is YES";
LABEL_51:
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v42, &v43, 2u);
          goto LABEL_27;
        }

        if (-[NSObject isFaceTimeProvider](v15, "isFaceTimeProvider") && ([v8 isVideo] & 1) == 0 && +[TUCallCapabilities isDirectFaceTimeAudioCallingCurrentlyAvailable](TUCallCapabilities, "isDirectFaceTimeAudioCallingCurrentlyAvailable"))
        {
          v24 = sub_100004778();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          LOWORD(v43) = 0;
          v42 = "[WARN] Setting should ignore session to YES because relay is not preferred, message provider is FaceTime Audio, and isDirectFaceTimeAudioCallingCurrentlyAvailable is YES";
          goto LABEL_51;
        }

        if (-[NSObject isFaceTimeProvider](v15, "isFaceTimeProvider") && [v8 isVideo] && +[TUCallCapabilities isDirectFaceTimeVideoCallingCurrentlyAvailable](TUCallCapabilities, "isDirectFaceTimeVideoCallingCurrentlyAvailable"))
        {
          v24 = sub_100004778();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          LOWORD(v43) = 0;
          v42 = "[WARN] Setting should ignore session to YES because relay is not preferred, message provider is FaceTime Video, and isDirectFaceTimeVideoCallingCurrentlyAvailable is YES";
          goto LABEL_51;
        }

        if ([v15 isTinCanProvider]&& +[TUCallCapabilities isDirectFaceTimeAudioCallingCurrentlyAvailable])
        {
          v24 = sub_100004778();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_27;
          }

          LOWORD(v43) = 0;
          v42 = "[WARN] Setting should ignore session to YES because relay is not preferred, message provider is TinCan, and isDirectFaceTimeAudioCallingCurrentlyAvailable is YES";
          goto LABEL_51;
        }
      }
    }

    v29 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v29 = 0;
LABEL_30:
  v9[2](v9, v29);
}

- (BOOL)shouldScreenTimeRestrictMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 destinationID];
  if ([v5 length])
  {
    v6 = [v4 destinationID];
  }

  else
  {
    v6 = TUCallFilterUnknownCallerAddress;
  }

  v7 = v6;

  v8 = [(CSDRelayMessagingController *)self callCenter];
  v9 = [v4 isEmergency];
  v10 = [v8 callFilterController];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v8 callFilterController];
    v12 = [NSSet setWithObject:v7];
    v13 = [v4 tuProvider];
    v14 = [(CSDRelayMessagingController *)self bundleIdentifierForProvider:v13];
    v15 = [v11 shouldRestrictAddresses:v12 forBundleIdentifier:v14 performSynchronously:1];
  }

  else
  {
    v15 = 0;
  }

  return (v9 ^ 1) & v15;
}

- (id)bundleIdentifierForProvider:(id)a3
{
  v3 = a3;
  if ([v3 isTinCanProvider])
  {
    v4 = &TUBundleIdentifierTinCan;
  }

  else
  {
    if (![v3 isTelephonyProvider])
    {
      if ([v3 isFaceTimeProvider])
      {
        TUPreferredFaceTimeBundleIdentifier();
      }

      else
      {
        [v3 bundleIdentifier];
      }
      v5 = ;
      goto LABEL_6;
    }

    v4 = &TUBundleIdentifierMobilePhoneApplication;
  }

  v5 = *v4;
LABEL_6:
  v6 = v5;

  return v6;
}

- (int64_t)timeoutForInvitationWithMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  if (v4 == 2)
  {
    v6 = [v3 tuProvider];
    [v3 isVideo];
    v5 = TUOutgoingInvitationTimeoutForCallProvider();
  }

  else if (v4 == 1)
  {
    v5 = TUIncomingInvitationTimeout();
  }

  else
  {
    v5 = 30;
  }

  return v5;
}

- (id)identifiersForSessionInvitationWithMessage:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  if (([v3 type] & 0xFFFFFFFE) == 0x1E)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 protoCalls];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) uniqueProxyIdentifier];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v11 = [v3 uniqueProxyIdentifier];

    if (!v11)
    {
      goto LABEL_13;
    }

    v5 = [v3 uniqueProxyIdentifier];
    [v4 addObject:v5];
  }

LABEL_13:
  v12 = [v4 copy];

  return v12;
}

- (void)performBlockOnTransportAvailability:(id)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayMessagingController *)self sessionMessenger];
  [v8 performBlockOnTransportAvailability:v7 forIdentifier:v6];
}

- (void)prepareToDisconnectMessagingConnectionForCall:(id)a3
{
  v4 = a3;
  v6 = [(CSDRelayMessagingController *)self sessionMessenger];
  v5 = [v4 uniqueProxyIdentifier];

  [v6 prepareSessionToEndForIdentifier:v5];
}

- (void)disconnectMessagingConnectionForCall:(id)a3
{
  v4 = a3;
  v6 = [(CSDRelayMessagingController *)self sessionMessenger];
  v5 = [v4 uniqueProxyIdentifier];

  [v6 cancelOrDeclineInvitationForIdentifier:v5];
}

- (CSDRelayMessagingControllerClientMessagingDelegate)clientMessagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientMessagingDelegate);

  return WeakRetained;
}

- (CSDRelayMessagingControllerCommonMessagingDelegate)commonMessagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_commonMessagingDelegate);

  return WeakRetained;
}

- (CSDRelayMessagingControllerHostMessagingDelegate)hostMessagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostMessagingDelegate);

  return WeakRetained;
}

- (CSDRelayMessagingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end