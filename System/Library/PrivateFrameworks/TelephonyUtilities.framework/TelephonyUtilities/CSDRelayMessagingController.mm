@interface CSDRelayMessagingController
- (BOOL)_canReceiveRelayCallsFromDestination:(id)destination device:(id)device;
- (BOOL)_shouldSendToPairedIDSDevice:(BOOL)device;
- (BOOL)shouldProcessRelayMessageOfType:(int)type;
- (BOOL)shouldScreenTimeRestrictMessage:(id)message;
- (CSDRelayMessagingController)initWithQueue:(id)queue callContainer:(id)container sessionMessenger:(id)messenger pairedDeviceMessenger:(id)deviceMessenger localRouteController:(id)controller;
- (CSDRelayMessagingController)initWithQueue:(id)queue callContainer:(id)container sessionMessenger:(id)messenger pairedDeviceMessenger:(id)deviceMessenger localRouteController:(id)controller featureFlags:(id)flags;
- (CSDRelayMessagingController)initWithQueue:(id)queue localRouteController:(id)controller;
- (CSDRelayMessagingControllerClientMessagingDelegate)clientMessagingDelegate;
- (CSDRelayMessagingControllerCommonMessagingDelegate)commonMessagingDelegate;
- (CSDRelayMessagingControllerDelegate)delegate;
- (CSDRelayMessagingControllerHostMessagingDelegate)hostMessagingDelegate;
- (NSString)debugDescription;
- (id)_callsWithUniqueProxyIdentifiers:(id)identifiers;
- (id)bundleIdentifierForProvider:(id)provider;
- (id)identifiersForSessionInvitationWithMessage:(id)message;
- (id)remoteDeviceForUPI:(id)i;
- (int64_t)timeoutForInvitationWithMessage:(id)message;
- (void)_handleCallChanged:(id)changed;
- (void)_handleConferenceConnectionDidClose:(id)close;
- (void)_handleConferenceConnectionDidReceiveData:(id)data;
- (void)_handleConferenceConnectionWillClose:(id)close;
- (void)_handleRetrievedLocalInviteDictionary:(id)dictionary forMessage:(id)message;
- (void)_updateDialingIDSDeviceWithRequest:(id)request;
- (void)checkShouldIgnoreSessionInviteWithMessage:(id)message fromDestination:(id)destination completion:(id)completion;
- (void)dealloc;
- (void)disconnectMessagingConnectionForCall:(id)call;
- (void)messenger:(id)messenger handledMessage:(id)message fromDestination:(id)destination device:(id)device;
- (void)performBlockOnTransportAvailability:(id)availability forIdentifier:(id)identifier;
- (void)prepareToDisconnectMessagingConnectionForCall:(id)call;
- (void)requestAnswerForRequest:(id)request forCall:(id)call;
- (void)sendAddRemoteMembers:(id)members otherInvitedHandles:(id)handles toConversation:(id)conversation;
- (void)sendAnnouncementHasFinishedChangedForCall:(id)call;
- (void)sendAnswerCallMessageToHostForCall:(id)call;
- (void)sendBuzzMember:(id)member toConversation:(id)conversation;
- (void)sendCallAnsweredElsewhereMessageToClientForCall:(id)call;
- (void)sendCallConnectedMessageToClientForCall:(id)call;
- (void)sendCallDialedMessageToClientForCall:(id)call;
- (void)sendCallDisconnectedMessageToClientForCall:(id)call;
- (void)sendCallStartedConnectingMessageToClientForCall:(id)call;
- (void)sendCaptionsMessageToClientForCall:(id)call withCaptions:(id)captions;
- (void)sendConversationAudioPriorityToClientForConversation:(id)conversation;
- (void)sendConversationToClientForConversation:(id)conversation withConversationMessageType:(int)type;
- (void)sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:(id)identifier;
- (void)sendDialCallFailedForScreenTimeForUniqueProxyIdentifier:(id)identifier;
- (void)sendDialCallFailedForUniqueProxyIdentifier:(id)identifier;
- (void)sendDialCallMessageToHostForCall:(id)call completionHandler:(id)handler;
- (void)sendDisconnectAllCallsMessageToHostForDisconnectedCall:(id)call;
- (void)sendDisconnectCallMessageToHostForCall:(id)call;
- (void)sendDisconnectCurrentCallMessageToHostForDisconnectedCall:(id)call activateHeld:(BOOL)held;
- (void)sendEndActiveAndAnswerCallMessageToHostForCall:(id)call;
- (void)sendEndHeldAndAnswerCallMessageToHostForCall:(id)call;
- (void)sendGroupCallMessageToHostForCall:(id)call otherCall:(id)otherCall;
- (void)sendHoldActiveAndAnswerCallMessageToHostForCall:(id)call;
- (void)sendHoldCallMessageToHostForCall:(id)call;
- (void)sendIncomingCallMessageToClientForCall:(id)call cannotBeAnswered:(BOOL)answered cannotRelayAudioOrVideoOnPairedDevice:(BOOL)device;
- (void)sendInvitationSentMessageToClientForCall:(id)call;
- (void)sendJoinConversationMessageToHostForCall:(id)call completionHandler:(id)handler;
- (void)sendLastReceptionistMessageChangedForCall:(id)call;
- (void)sendNeedsManualInCallSoundsChangeMessageToClientForCall:(id)call;
- (void)sendPerformSmartHoldingRequest:(id)request;
- (void)sendPickRouteMessageToHostForRoute:(id)route;
- (void)sendPullCallsMessageToHost;
- (void)sendPullRelayingCallsMessageToClientAndDisconnectCallsWithUPI:(id)i;
- (void)sendPushCallsMessageToClientDestination:(id)destination;
- (void)sendPushRelayingCallsMessageToHostForSourceIdentifier:(id)identifier;
- (void)sendReceivedDTMFUpdateForCall:(id)call dtmfUpdate:(id)update;
- (void)sendReceptionistSessionChangedForCall:(id)call;
- (void)sendReceptionistStateChangedForCall:(id)call;
- (void)sendRequestCallStateMessageToHost;
- (void)sendResetStateMessageToClient;
- (void)sendResetWantsHoldMusicMessageToClientForCall:(id)call;
- (void)sendScreeningChangedForCall:(id)call;
- (void)sendSendHardPauseDigitsMessageToHostForCall:(id)call;
- (void)sendSetCustomReply:(id)reply forCall:(id)call;
- (void)sendSmartHoldingSessionChangedForCall:(id)call;
- (void)sendStartReceptionistReplyForCall:(id)call;
- (void)sendSuppressRingtoneMessageForCall:(id)call;
- (void)sendSwapCallsMessageToHost;
- (void)sendUngroupCallMessageToHostForCall:(id)call;
- (void)sendUnholdCallMessageToHostForCall:(id)call;
- (void)sendUpdateCallContextMessageToClientForCallProviderManager:(id)manager;
- (void)sendUpdateCallDisplayContextMessageToClientForCall:(id)call;
- (void)sendUpdateCallModelMessageToClientForCall:(id)call;
- (void)sendUpdateConversationsMessageToClient:(id)client;
- (void)sendUpdateFailureExpectedMessageToClientForCall:(id)call;
- (void)sendUpdateRemoteUplinkMutedCallMessageToClientForCall:(id)call;
- (void)sendUpdateRemoteUplinkMutedCallMessageToHostForCall:(id)call;
- (void)sendUpdateRoutesMessageToClientForRoutes:(id)routes;
- (void)sendUpdateSupportsDTMFUpdatesToClientForCall:(id)call;
- (void)sendUpdateSupportsEmergencyFallbackToClientForCall:(id)call;
- (void)sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall:(id)call;
- (void)sendUpdateSystemVolume:(float)volume;
@end

@implementation CSDRelayMessagingController

- (CSDRelayMessagingController)initWithQueue:(id)queue localRouteController:(id)controller
{
  controllerCopy = controller;
  queueCopy = queue;
  v8 = [[CSDRelayIDSSessionMessenger alloc] initWithQueue:queueCopy localRouteController:controllerCopy];
  v9 = [[CSDRelayPairedDeviceMessenger alloc] initWithQueue:queueCopy];
  v10 = +[TUCallCenter sharedInstance];
  v11 = [(CSDRelayMessagingController *)self initWithQueue:queueCopy callContainer:v10 sessionMessenger:v8 pairedDeviceMessenger:v9 localRouteController:controllerCopy];

  return v11;
}

- (CSDRelayMessagingController)initWithQueue:(id)queue callContainer:(id)container sessionMessenger:(id)messenger pairedDeviceMessenger:(id)deviceMessenger localRouteController:(id)controller
{
  controllerCopy = controller;
  deviceMessengerCopy = deviceMessenger;
  messengerCopy = messenger;
  containerCopy = container;
  queueCopy = queue;
  v17 = objc_alloc_init(TUFeatureFlags);
  v18 = [(CSDRelayMessagingController *)self initWithQueue:queueCopy callContainer:containerCopy sessionMessenger:messengerCopy pairedDeviceMessenger:deviceMessengerCopy localRouteController:controllerCopy featureFlags:v17];

  return v18;
}

- (CSDRelayMessagingController)initWithQueue:(id)queue callContainer:(id)container sessionMessenger:(id)messenger pairedDeviceMessenger:(id)deviceMessenger localRouteController:(id)controller featureFlags:(id)flags
{
  queueCopy = queue;
  containerCopy = container;
  messengerCopy = messenger;
  controllerCopy = controller;
  flagsCopy = flags;
  v28.receiver = self;
  v28.super_class = CSDRelayMessagingController;
  v18 = [(CSDRelayMessagingController *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_callCenter, container);
    objc_storeStrong(&v19->_localRouteController, controller);
    objc_storeStrong(&v19->_sessionMessenger, messenger);
    [(CSDRelayIDSMessenger *)v19->_sessionMessenger setDelegate:v19];
    objc_storeStrong(&v19->_featureFlags, flags);
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
  dialingIDSDestination = [(CSDRelayMessagingController *)self dialingIDSDestination];
  [v3 appendFormat:@"    dialingIDSDevice: %@\n", dialingIDSDestination];

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

- (void)_handleCallChanged:(id)changed
{
  object = [changed object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([object isHostedOnCurrentDevice] & 1) == 0)
  {
    if ([object isEndpointOnCurrentDevice])
    {
      if ([object status] == 4)
      {
        sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
        uniqueProxyIdentifier = [object uniqueProxyIdentifier];
        v7 = [sessionMessenger sessionForIdentifier:uniqueProxyIdentifier];

        if (!v7)
        {
          v8 = sub_100004778();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 138412290;
            v10 = object;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Terminating relay call that we don't have a relay session for: %@", &v9, 0xCu);
          }

          [object setLocallyDisconnectedWithReasonIfNone:0];
        }
      }
    }
  }
}

- (id)remoteDeviceForUPI:(id)i
{
  iCopy = i;
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  v6 = [sessionMessenger sessionForIdentifier:iCopy];

  remoteDevice = [v6 remoteDevice];

  return remoteDevice;
}

- (void)_handleConferenceConnectionWillClose:(id)close
{
  closeCopy = close;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [closeCopy name];
    *buf = 138412290;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ by preparing connected sessions to end", buf, 0xCu);
  }

  queue = [(CSDRelayMessagingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE4B4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleConferenceConnectionDidClose:(id)close
{
  closeCopy = close;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [closeCopy name];
    *buf = 138412290;
    v10 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handling %@ by ending ending sessions", buf, 0xCu);
  }

  queue = [(CSDRelayMessagingController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE628;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleConferenceConnectionDidReceiveData:(id)data
{
  dataCopy = data;
  queue = [(CSDRelayMessagingController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EE720;
  v7[3] = &unk_100619D88;
  v8 = dataCopy;
  selfCopy = self;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)_updateDialingIDSDeviceWithRequest:(id)request
{
  requestCopy = request;
  hostIDSIdentifier = [requestCopy hostIDSIdentifier];
  v6 = +[CSDRelayIDSService sharedInstance];
  devices = [v6 devices];

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v56 = devices;
    v57 = 2112;
    v58 = hostIDSIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating dialingIDSDevice using device list %@, host: %@", buf, 0x16u);
  }

  [(CSDRelayMessagingController *)self setDialingIDSDestination:0];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = devices;
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

    selfCopy = self;
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "A paired device exists, so using that as the dialing device: %@", buf, 0xCu);
    }

    destination = [v16 destination];
    [(CSDRelayMessagingController *)selfCopy setDialingIDSDestination:destination];
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
      selfCopy2 = self;
      v34 = hostIDSIdentifier;
      v35 = requestCopy;
      destination = 0;
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
          linkedUserURIs = [v22 linkedUserURIs];
          v24 = [linkedUserURIs countByEnumeratingWithState:&v40 objects:v52 count:16];
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
                  objc_enumerationMutation(linkedUserURIs);
                }

                _stripFZIDPrefix = [*(*(&v40 + 1) + 8 * j) _stripFZIDPrefix];
                v29 = [v16 isEqualToString:_stripFZIDPrefix];

                if (v29)
                {
                  if (!destination)
                  {
                    destination = v22;
                    goto LABEL_35;
                  }

                  v30 = sub_100004778();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v56 = destination;
                    v57 = 2112;
                    v58 = v22;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] We found two devices with matching linkedUserURIs (arbitrarily choosing the first): %@ and %@", buf, 0x16u);
                  }
                }
              }

              v25 = [linkedUserURIs countByEnumeratingWithState:&v40 objects:v52 count:16];
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

      hostIDSIdentifier = v34;
      requestCopy = v35;
      if (destination)
      {
        v31 = sub_100004778();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v56 = v16;
          v57 = 2112;
          v58 = destination;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "A device exists with a linkedUserURI that matches Caller ID %@, so using that as the dialing device: %@", buf, 0x16u);
        }

        v19Destination = [destination destination];
        [(CSDRelayMessagingController *)selfCopy2 setDialingIDSDestination:v19Destination];

        goto LABEL_45;
      }
    }

    else
    {
    }

    destination = sub_100004778();
    if (os_log_type_enabled(destination, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v56 = v16;
      _os_log_impl(&_mh_execute_header, destination, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find a dialingIDSDevice. No paired devices exist and no devices that support phone calls and have a linkedUserURI for %@ exist.", buf, 0xCu);
    }
  }

LABEL_45:
}

- (BOOL)_shouldSendToPairedIDSDevice:(BOOL)device
{
  v5 = +[CSDRelayIDSService sharedInstance];
  pairedDeviceExists = [v5 pairedDeviceExists];
  if (pairedDeviceExists && !device)
  {
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    deviceWithActiveSession = [sessionMessenger deviceWithActiveSession];
    if (deviceWithActiveSession)
    {
      sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
      deviceWithActiveSession2 = [sessionMessenger2 deviceWithActiveSession];
      v11 = +[CSDRelayIDSService sharedInstance];
      pairedDevice = [v11 pairedDevice];
      pairedDeviceExists = [deviceWithActiveSession2 isEqual:pairedDevice] ^ 1;
    }

    else
    {
      LOBYTE(pairedDeviceExists) = 1;
    }
  }

  return pairedDeviceExists;
}

- (id)_callsWithUniqueProxyIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [identifiersCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = identifiersCopy;
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
        callCenter = [(CSDRelayMessagingController *)self callCenter];
        v13 = [callCenter callWithUniqueProxyIdentifier:v11];

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

- (void)_handleRetrievedLocalInviteDictionary:(id)dictionary forMessage:(id)message
{
  dictionaryCopy = dictionary;
  messageCopy = message;
  v8 = [(CSDRelayMessagingController *)self identifiersForSessionInvitationWithMessage:messageCopy];
  if (dictionaryCopy)
  {
    v9 = [[CSDMessagingRelayMessage alloc] initWithType:0];
    v10 = [[CSDMessagingAVConferenceInviteData alloc] initWithRelayInviteDictionary:dictionaryCopy];
    [(CSDMessagingRelayMessage *)v9 setInviteData:v10];

    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    firstObject = [v8 firstObject];
    [sessionMessenger sendMessage:v9 andAcceptInvitationIfNecessaryForIdentifier:firstObject];
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047455C(messageCopy, v13, v14, v15, v16, v17, v18, v19);
    }

    sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
    firstObject2 = [v8 firstObject];
    [sessionMessenger2 cancelOrDeclineInvitationForIdentifier:firstObject2];
  }
}

- (BOOL)_canReceiveRelayCallsFromDestination:(id)destination device:(id)device
{
  deviceCopy = device;
  if ([destination canReceiveRelayedCalls])
  {
    canReceiveRelayedCalls = 1;
  }

  else
  {
    canReceiveRelayedCalls = [deviceCopy canReceiveRelayedCalls];
  }

  return canReceiveRelayedCalls;
}

- (void)sendIncomingCallMessageToClientForCall:(id)call cannotBeAnswered:(BOOL)answered cannotRelayAudioOrVideoOnPairedDevice:(BOOL)device
{
  answeredCopy = answered;
  callCopy = call;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = callCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendIncomingCallMessageToClientForCall: %@", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000EF4A8;
  v20[3] = &unk_10061B3D0;
  v10 = callCopy;
  v21 = v10;
  deviceCopy = device;
  v11 = objc_retainBlock(v20);
  if (answeredCopy)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Call cannot be answered. Only notifying the paired device", buf, 2u);
    }

    v13 = (v11[2])(v11);
    [v13 setCannotBeAnswered:1];
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v13 completionHandler:0];
  }

  else
  {
    v15 = +[CSDRelayConferenceInterface sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000EF8FC;
    v16[3] = &unk_10061B3F8;
    v17 = v10;
    selfCopy = self;
    v19 = v11;
    [v15 prepareConferenceForCall:v17 remoteInviteDictionary:0 completion:v16];

    v13 = v17;
  }
}

- (void)sendUpdateConversationsMessageToClient:(id)client
{
  clientCopy = client;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = clientCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateConversationsMessageToClient: %@", buf, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:54];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = clientCopy;
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

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v6 completionHandler:0];
}

- (void)sendConversationToClientForConversation:(id)conversation withConversationMessageType:(int)type
{
  conversationCopy = conversation;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendConversationMessageToClientForConversation: %@", buf, 0xCu);
  }

  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000EFDE0;
  v18 = &unk_10061B420;
  v19 = conversationCopy;
  typeCopy = type;
  v8 = conversationCopy;
  v9 = objc_retainBlock(&v15);
  v13 = (v9[2])(v9, v10, v11, v12);
  v14 = [(CSDRelayMessagingController *)self pairedDeviceMessenger:v15];
  [v14 sendMessage:v13 completionHandler:0];
}

- (void)sendConversationAudioPriorityToClientForConversation:(id)conversation
{
  conversationCopy = conversation;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendConversationMessageToClientForConversation: %@", buf, 0xCu);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F0004;
  v10[3] = &unk_10061B448;
  v11 = conversationCopy;
  v6 = conversationCopy;
  v7 = objc_retainBlock(v10);
  v8 = (v7[2])();
  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
}

- (void)sendCallDialedMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallDialedMessageToClientForCall: %@", &v26, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:3 uniqueProxyIdentifier:uniqueProxyIdentifier];

  handle = [callCopy handle];
  [(CSDMessagingRelayMessage *)v8 setTuHandle:handle];

  isoCountryCode = [callCopy isoCountryCode];
  [(CSDMessagingRelayMessage *)v8 setIsoCountryCode:isoCountryCode];

  provider = [callCopy provider];
  -[CSDMessagingRelayMessage setTuProvider:isVideo:](v8, "setTuProvider:isVideo:", provider, [callCopy isVideo]);

  sourceIdentifier = [callCopy sourceIdentifier];
  [(CSDMessagingRelayMessage *)v8 setSourceIdentifier:sourceIdentifier];

  model = [callCopy model];
  [(CSDMessagingRelayMessage *)v8 setCallModel:model];

  -[CSDMessagingRelayMessage setVoicemail:](v8, "setVoicemail:", [callCopy isVoicemail]);
  callerNameFromNetwork = [callCopy callerNameFromNetwork];
  [(CSDMessagingRelayMessage *)v8 setCallerNameFromNetwork:callerNameFromNetwork];

  -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v8, "setNeedsManualInCallSounds:", [callCopy needsManualInCallSounds]);
  -[CSDMessagingRelayMessage setSoundRegion:](v8, "setSoundRegion:", [callCopy soundRegion]);
  -[CSDMessagingRelayMessage setEmergency:](v8, "setEmergency:", [callCopy isEmergency]);
  -[CSDMessagingRelayMessage setFailureExpected:](v8, "setFailureExpected:", [callCopy isFailureExpected]);
  -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v8, "setSupportsEmergencyFallback:", [callCopy supportsEmergencyFallback]);
  -[CSDMessagingRelayMessage setSOS:](v8, "setSOS:", [callCopy isSOS]);
  -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v8, "setSupportsDTMFUpdates:", [callCopy supportsDTMFUpdates]);
  displayContext = [callCopy displayContext];
  [(CSDMessagingRelayMessage *)v8 setDisplayContext:displayContext];

  localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
  [(CSDMessagingRelayMessage *)v8 setLocalSenderIdentityUUID:localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [callCopy localSenderIdentityAccountUUID];
  [(CSDMessagingRelayMessage *)v8 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v8, "setRemoteUplinkMuted:", [callCopy isRemoteUplinkMuted]);
  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  [(CSDMessagingRelayMessage *)v8 setRemoteParticipantTUHandles:remoteParticipantHandles];

  -[CSDMessagingRelayMessage setTtyType:](v8, "setTtyType:", [callCopy ttyType]);
  -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v8, "setSupportsTTYWithVoice:", [callCopy supportsTTYWithVoice]);
  -[CSDMessagingRelayMessage setOriginatingUIType:](v8, "setOriginatingUIType:", [callCopy originatingUIType]);
  if ([callCopy isConversation])
  {
    callGroupUUID = [callCopy callGroupUUID];
    uUIDString = [callGroupUUID UUIDString];
    if (uUIDString)
    {
      callGroupUUID2 = [callCopy callGroupUUID];
      uUIDString2 = [callGroupUUID2 UUIDString];
      [(CSDMessagingRelayMessage *)v8 setGroupUUIDString:uUIDString2];
    }

    else
    {
      [(CSDMessagingRelayMessage *)v8 setGroupUUIDString:@"No GroupUUID populated, but is conversation"];
    }
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:&stru_10061B488 completionHandler:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice:1])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendCallAnsweredElsewhereMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallAnsweredElsewhereMessageToClientForCall: %@", &v15, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:5 uniqueProxyIdentifier:uniqueProxyIdentifier];

  if ([callCopy isScreening])
  {
    featureFlags = [(CSDRelayMessagingController *)self featureFlags];
    -[CSDMessagingRelayMessage setIsScreening:](v8, "setIsScreening:", [featureFlags LVMEverywhere]);
  }

  else
  {
    [(CSDMessagingRelayMessage *)v8 setIsScreening:0];
  }

  isScreening = [(CSDMessagingRelayMessage *)v8 isScreening];
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  v12 = sessionMessenger;
  if (isScreening)
  {
    [sessionMessenger sendMessage:v8 forCall:callCopy completionHandler:0];
  }

  else
  {
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [v12 sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:uniqueProxyIdentifier2];
  }

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendCallDisconnectedMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallDisconnectedMessageToClientForCall: %@", &v13, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:6 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setDisconnectedReason:](v8, "setDisconnectedReason:", [callCopy disconnectedReason]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:uniqueProxyIdentifier2];

  sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger2 sendMessage:v8 forCall:callCopy completionHandler:0];

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v8 wantsAcknowledgement:1 completionHandler:0];
}

- (void)sendCaptionsMessageToClientForCall:(id)call withCaptions:(id)captions
{
  callCopy = call;
  captionsCopy = captions;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCaptionsMessageToClientForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  lVMEverywhere = [featureFlags LVMEverywhere];

  if (lVMEverywhere)
  {
    v11 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v13 = [(CSDMessagingRelayMessage *)v11 initWithType:58 uniqueProxyIdentifier:uniqueProxyIdentifier];

    v14 = [[CSDMessagingCaptionsResult alloc] initWithCaptionsResult:captionsCopy];
    [(CSDMessagingRelayMessage *)v13 setCaptionsResult:v14];

    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000F0B58;
    v19[3] = &unk_10061B4B0;
    v19[4] = self;
    v17 = v13;
    v20 = v17;
    v21 = callCopy;
    [sessionMessenger sendMessage:v17 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v19];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v17 completionHandler:0];
    }
  }
}

- (void)sendCallConnectedMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallConnectedMessageToClientForCall: %@", &v13, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:8 uniqueProxyIdentifier:uniqueProxyIdentifier];

  model = [callCopy model];
  [(CSDMessagingRelayMessage *)v8 setCallModel:model];

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v8 completionHandler:0];

  if (([callCopy isEndpointOnCurrentDevice] & 1) == 0 && objc_msgSend(callCopy, "isOutgoing"))
  {
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];
  }
}

- (void)sendResetWantsHoldMusicMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendResetWantsHoldMusicMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:15 uniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateCallDisplayContextMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateCallDisplayContextMessageToClientForCall: %@", &v14, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:37 uniqueProxyIdentifier:uniqueProxyIdentifier];

  displayContext = [callCopy displayContext];
  [(CSDMessagingRelayMessage *)v8 setDisplayContext:displayContext];

  handle = [callCopy handle];
  [(CSDMessagingRelayMessage *)v8 setTuHandle:handle];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2 waitUntilConnected:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateFailureExpectedMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateFailureExpectedMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:47 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setFailureExpected:](v8, "setFailureExpected:", [callCopy isFailureExpected]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateSupportsEmergencyFallbackToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateSupportsEmergencyFallbackToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:48 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v8, "setSupportsEmergencyFallback:", [callCopy supportsEmergencyFallback]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateRemoteUplinkMutedCallMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateRemoteUplinkMutedCallMessageToClientForCall: %@", &v17, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:39 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v8, "setRemoteUplinkMuted:", [callCopy isRemoteUplinkMuted]);
  provider = [callCopy provider];
  isTinCanProvider = [provider isTinCanProvider];

  if (isTinCanProvider)
  {
    v11 = +[CSDRelayConferenceInterface sharedInstance];
    data = [(CSDMessagingRelayMessage *)v8 data];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [v11 sendData:data throughConferenceForIdentifier:uniqueProxyIdentifier2];
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier3];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:41 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v8, "setSupportsTTYWithVoice:", [callCopy supportsTTYWithVoice]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateCallModelMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateCallModelMessageToClientForCall: %@", &v13, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:17 uniqueProxyIdentifier:uniqueProxyIdentifier];

  model = [callCopy model];
  [(CSDMessagingRelayMessage *)v8 setCallModel:model];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendDeviceUnavailableMessageToClient", v8, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:18];
  [(CSDMessagingRelayMessage *)v6 setDisconnectedReason:10];
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:identifierCopy];
}

- (void)sendPullRelayingCallsMessageToClientAndDisconnectCallsWithUPI:(id)i
{
  iCopy = i;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendPullRelayingCallsMessageToClient", v9, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:10];
  v7 = [iCopy mutableCopy];

  [(CSDMessagingRelayMessage *)v6 setOtherUniqueProxyIdentifiers:v7];
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger sendMessage:v6 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];
}

- (void)sendScreeningChangedForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendScreeningChangedForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  if ([featureFlags LVMEverywhere])
  {
    goto LABEL_6;
  }

  featureFlags2 = [(CSDRelayMessagingController *)self featureFlags];
  if ([featureFlags2 receptionistEnabled])
  {

LABEL_6:
LABEL_7:
    v8 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:57 uniqueProxyIdentifier:uniqueProxyIdentifier];

    -[CSDMessagingRelayMessage setIsScreening:](v10, "setIsScreening:", [callCopy isScreening]);
    if ([callCopy isScreening])
    {
      handle = [callCopy handle];
      [(CSDMessagingRelayMessage *)v10 setTuHandle:handle];

      isoCountryCode = [callCopy isoCountryCode];
      [(CSDMessagingRelayMessage *)v10 setIsoCountryCode:isoCountryCode];

      provider = [callCopy provider];
      -[CSDMessagingRelayMessage setTuProvider:isVideo:](v10, "setTuProvider:isVideo:", provider, [callCopy isVideo]);

      sourceIdentifier = [callCopy sourceIdentifier];
      [(CSDMessagingRelayMessage *)v10 setSourceIdentifier:sourceIdentifier];

      model = [callCopy model];
      [(CSDMessagingRelayMessage *)v10 setCallModel:model];

      callerNameFromNetwork = [callCopy callerNameFromNetwork];
      [(CSDMessagingRelayMessage *)v10 setCallerNameFromNetwork:callerNameFromNetwork];

      -[CSDMessagingRelayMessage setShouldSuppressRingtone:](v10, "setShouldSuppressRingtone:", [callCopy shouldSuppressRingtone]);
      -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v10, "setNeedsManualInCallSounds:", [callCopy needsManualInCallSounds]);
      -[CSDMessagingRelayMessage setSoundRegion:](v10, "setSoundRegion:", [callCopy soundRegion]);
      displayContext = [callCopy displayContext];
      [(CSDMessagingRelayMessage *)v10 setDisplayContext:displayContext];

      -[CSDMessagingRelayMessage setFailureExpected:](v10, "setFailureExpected:", [callCopy isFailureExpected]);
      -[CSDMessagingRelayMessage setSupportsEmergencyFallback:](v10, "setSupportsEmergencyFallback:", [callCopy supportsEmergencyFallback]);
      -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v10, "setSupportsDTMFUpdates:", [callCopy supportsDTMFUpdates]);
      localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
      [(CSDMessagingRelayMessage *)v10 setLocalSenderIdentityUUID:localSenderIdentityUUID];

      localSenderIdentityAccountUUID = [callCopy localSenderIdentityAccountUUID];
      [(CSDMessagingRelayMessage *)v10 setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

      -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v10, "setRemoteUplinkMuted:", [callCopy isRemoteUplinkMuted]);
      remoteParticipantHandles = [callCopy remoteParticipantHandles];
      [(CSDMessagingRelayMessage *)v10 setRemoteParticipantTUHandles:remoteParticipantHandles];

      -[CSDMessagingRelayMessage setTtyType:](v10, "setTtyType:", [callCopy ttyType]);
      -[CSDMessagingRelayMessage setSupportsTTYWithVoice:](v10, "setSupportsTTYWithVoice:", [callCopy supportsTTYWithVoice]);
      -[CSDMessagingRelayMessage setPriority:](v10, "setPriority:", [callCopy priority]);
      -[CSDMessagingRelayMessage setOriginatingUIType:](v10, "setOriginatingUIType:", [callCopy originatingUIType]);
      callGroupUUID = [callCopy callGroupUUID];
      uUIDString = [callGroupUUID UUIDString];
      [(CSDMessagingRelayMessage *)v10 setGroupUUIDString:uUIDString];

      -[CSDMessagingRelayMessage setRelayHostCanScreen:](v10, "setRelayHostCanScreen:", [callCopy isEligibleForManualScreening]);
      imageURL = [callCopy imageURL];

      if (imageURL)
      {
        v24 = [NSData alloc];
        imageURL2 = [callCopy imageURL];
        v26 = [v24 initWithContentsOfURL:imageURL2];

        [(CSDMessagingRelayMessage *)v10 setImage:v26];
      }

      smartHoldingSession = [callCopy smartHoldingSession];

      if (smartHoldingSession)
      {
        v28 = [CSDMessagingSmartHoldingSession alloc];
        smartHoldingSession2 = [callCopy smartHoldingSession];
        smartHoldingSession = [(CSDMessagingSmartHoldingSession *)v28 initWithSmartHoldingSession:smartHoldingSession2];
      }

      [(CSDMessagingRelayMessage *)v10 setSmartHoldingSession:smartHoldingSession];
    }

    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000F1F30;
    v36[3] = &unk_10061B4B0;
    v36[4] = self;
    v32 = v10;
    v37 = v32;
    v38 = callCopy;
    [sessionMessenger sendMessage:v32 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v36];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v32 completionHandler:0];
    }

    goto LABEL_16;
  }

  featureFlags3 = [(CSDRelayMessagingController *)self featureFlags];
  smartHoldingRelayEnabled = [featureFlags3 smartHoldingRelayEnabled];

  if (smartHoldingRelayEnabled)
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

- (void)sendAnnouncementHasFinishedChangedForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendAnnouncementHasFinishedChangedForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  lVMEverywhere = [featureFlags LVMEverywhere];

  if (lVMEverywhere)
  {
    v8 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:64 uniqueProxyIdentifier:uniqueProxyIdentifier];

    -[CSDMessagingRelayMessage setAnnouncementHasFinished:](v10, "setAnnouncementHasFinished:", [callCopy screeningAnnouncementHasFinished]);
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F21DC;
    v15[3] = &unk_10061B4B0;
    v15[4] = self;
    v13 = v10;
    v16 = v13;
    v17 = callCopy;
    [sessionMessenger sendMessage:v13 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v15];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v13 completionHandler:0];
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

- (void)sendReceptionistStateChangedForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendReceptionistStateChangedForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    v8 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:59 uniqueProxyIdentifier:uniqueProxyIdentifier];

    -[CSDMessagingRelayMessage setReceptionistState:](v10, "setReceptionistState:", [callCopy receptionistState]);
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F2408;
    v15[3] = &unk_10061B4B0;
    v15[4] = self;
    v13 = v10;
    v16 = v13;
    v17 = callCopy;
    [sessionMessenger sendMessage:v13 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v15];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v13 completionHandler:0];
    }
  }
}

- (void)sendLastReceptionistMessageChangedForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendLastReceptionistMesageChangedForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    v8 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = [(CSDMessagingRelayMessage *)v8 initWithType:60 uniqueProxyIdentifier:uniqueProxyIdentifier];

    lastReceptionistMessage = [callCopy lastReceptionistMessage];
    [(CSDMessagingRelayMessage *)v10 setLastReceptionistMessage:lastReceptionistMessage];

    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F2640;
    v16[3] = &unk_10061B4B0;
    v16[4] = self;
    v14 = v10;
    v17 = v14;
    v18 = callCopy;
    [sessionMessenger sendMessage:v14 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v16];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v14 completionHandler:0];
    }
  }
}

- (void)sendReceptionistSessionChangedForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendLastReceptionistMesageChangedForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    v8 = objc_alloc_init(CSDMessagingReceptionistSession);
    receptionistSession = [callCopy receptionistSession];
    predictedName = [receptionistSession predictedName];
    [(CSDMessagingReceptionistSession *)v8 setPredictedName:predictedName];

    receptionistSession2 = [callCopy receptionistSession];
    summary = [receptionistSession2 summary];
    [(CSDMessagingReceptionistSession *)v8 setSummary:summary];

    v13 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v15 = [(CSDMessagingRelayMessage *)v13 initWithType:65 uniqueProxyIdentifier:uniqueProxyIdentifier];

    [(CSDMessagingRelayMessage *)v15 setReceptionistSession:v8];
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F28D8;
    v20[3] = &unk_10061B4B0;
    v20[4] = self;
    v18 = v15;
    v21 = v18;
    v22 = callCopy;
    [sessionMessenger sendMessage:v18 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v20];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v18 completionHandler:0];
    }
  }
}

- (void)sendSmartHoldingSessionChangedForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendSmartHoldingSessionChangedForCall", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

  if (waitOnHoldEnabled)
  {
    smartHoldingSession = [callCopy smartHoldingSession];

    if (smartHoldingSession)
    {
      v9 = [CSDMessagingSmartHoldingSession alloc];
      smartHoldingSession2 = [callCopy smartHoldingSession];
      smartHoldingSession = [(CSDMessagingSmartHoldingSession *)v9 initWithSmartHoldingSession:smartHoldingSession2];
    }

    v11 = [CSDMessagingRelayMessage alloc];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v13 = [(CSDMessagingRelayMessage *)v11 initWithType:61 uniqueProxyIdentifier:uniqueProxyIdentifier];

    [(CSDMessagingRelayMessage *)v13 setSmartHoldingSession:smartHoldingSession];
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F2B4C;
    v18[3] = &unk_10061B4B0;
    v18[4] = self;
    v16 = v13;
    v19 = v16;
    v20 = callCopy;
    [sessionMessenger sendMessage:v16 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v18];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v16 completionHandler:0];
    }
  }
}

- (void)sendStartReceptionistReplyForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendStartReceptionistReply", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    v8 = [[CSDMessagingRelayMessage alloc] initWithType:62];
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F2D88;
    v13[3] = &unk_10061B4B0;
    v13[4] = self;
    v11 = v8;
    v14 = v11;
    v15 = callCopy;
    [sessionMessenger sendMessage:v11 forIdentifier:uniqueProxyIdentifier customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v13];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v11 completionHandler:0];
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

- (void)sendSetCustomReply:(id)reply forCall:(id)call
{
  replyCopy = reply;
  callCopy = call;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendSetCustomReply", buf, 2u);
  }

  featureFlags = [(CSDRelayMessagingController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    v11 = [[CSDMessagingRelayMessage alloc] initWithType:63];
    [(CSDMessagingRelayMessage *)v11 setCustomReply:replyCopy];
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000F2FDC;
    v16[3] = &unk_10061B4B0;
    v16[4] = self;
    v14 = v11;
    v17 = v14;
    v18 = callCopy;
    [sessionMessenger sendMessage:v14 forIdentifier:uniqueProxyIdentifier customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:v16];

    if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
      [pairedDeviceMessenger sendMessage:v14 completionHandler:0];
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
  callCenter = [(CSDRelayMessagingController *)self callCenter];
  currentAudioAndVideoCalls = [callCenter currentAudioAndVideoCalls];

  v7 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v13 objects:v18 count:16];
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
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        [(CSDMessagingRelayMessage *)v4 addCall:*(*(&v13 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger sendMessage:v4 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v4 wantsAcknowledgement:1 completionHandler:0];
  }
}

- (void)sendCallStartedConnectingMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendCallStartedConnectingMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:29 uniqueProxyIdentifier:uniqueProxyIdentifier];

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v8 completionHandler:0];

  if (([callCopy isEndpointOnCurrentDevice] & 1) == 0 && objc_msgSend(callCopy, "isOutgoing"))
  {
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];
  }
}

- (void)sendDialCallFailedForUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendDialCallFailedForUniqueProxyIdentifier: %@", &v6, 0xCu);
  }

  [(CSDRelayMessagingController *)self sendDialCallFailedForUniqueProxyIdentifier:identifierCopy withDisconnectedReason:14];
}

- (void)sendDialCallFailedForScreenTimeForUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendDialCallFailedForScreenTimeForUniqueProxyIdentifier: %@", &v6, 0xCu);
  }

  [(CSDRelayMessagingController *)self sendDialCallFailedForUniqueProxyIdentifier:identifierCopy withDisconnectedReason:25];
}

- (void)sendPushCallsMessageToClientDestination:(id)destination
{
  destinationCopy = destination;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = destinationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendPushCallsMessageToClientDestination: %@", buf, 0xCu);
  }

  selfCopy = self;
  v36 = [[CSDMessagingRelayMessage alloc] initWithType:30];
  callCenter = [(CSDRelayMessagingController *)self callCenter];
  _allCalls = [callCenter _allCalls];

  v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_allCalls count]);
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_allCalls count]);
  v9 = +[CSDRelayIDSService sharedInstance];
  v10 = [destinationCopy deviceForService:v9];

  v38 = v8;
  if (v10)
  {
    v11 = +[CSDRelayIDSService sharedInstance];
    pairedDevice = [v11 pairedDevice];
    v34 = [pairedDevice isEqual:v10];
  }

  else
  {
    v34 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = _allCalls;
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
        provider = [*(*(&v51 + 1) + 8 * i) provider];
        v19 = [v10 canReceiveMessagesForCallProvider:provider];

        if (v19)
        {
          v20 = sub_100004778();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v57 = v17;
            v58 = 2112;
            v59 = destinationCopy;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Allowing call: %@ to be pushed to destination: %@", buf, 0x16u);
          }

LABEL_21:

          v21 = 1;
          goto LABEL_22;
        }
      }

      else if ([destinationCopy isGuest] && (objc_msgSend(v17, "needsConversationOrVideoRelaySupport") & 1) == 0)
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v57 = v17;
          v58 = 2112;
          v59 = destinationCopy;
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
          uniqueProxyIdentifier = [v17 uniqueProxyIdentifier];
          [v39 addObject:uniqueProxyIdentifier];

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
          v59 = destinationCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not allowing call: %@ to be pushed to destination: %@ because the call requires conversation or video relay support", buf, 0x16u);
        }
      }

      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v57 = v17;
        v58 = 2112;
        v59 = destinationCopy;
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

            [(CSDRelayMessagingController *)selfCopy sendCallAnsweredElsewhereMessageToClientForCall:*(*(&v47 + 1) + 8 * j)];
          }

          v28 = [v26 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v28);
      }
    }

    hostMessagingDelegate = [(CSDRelayMessagingController *)selfCopy hostMessagingDelegate];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000F3F2C;
    v41[3] = &unk_10061B4D8;
    v42 = v38;
    v32 = v36;
    v43 = v36;
    v44 = selfCopy;
    v45 = v39;
    v46 = destinationCopy;
    [hostMessagingDelegate pushHostedCallsForRemoteInviteDictionary:0 destination:v46 toPairedDevice:v34 completion:v41];

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

- (void)sendUpdateCallContextMessageToClientForCallProviderManager:(id)manager
{
  managerCopy = manager;
  v5 = [[CSDMessagingRelayMessage alloc] initWithType:33];
  v6 = +[CSDCallCapabilities sharedInstance];
  callCapabilitiesState = [v6 callCapabilitiesState];
  [(CSDMessagingRelayMessage *)v5 setCallCapabilitiesState:callCapabilitiesState];

  v8 = [managerCopy providersByIdentifierForRemoteClients:0];

  allValues = [v8 allValues];
  [(CSDMessagingRelayMessage *)v5 setTuProviders:allValues];

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) Sending UpdateCallContext message: %@", &v12, 0xCu);
  }

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v5 completionHandler:0];
}

- (void)sendNeedsManualInCallSoundsChangeMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendNeedsManualInCallSoundsChangeMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:34 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setNeedsManualInCallSounds:](v8, "setNeedsManualInCallSounds:", [callCopy needsManualInCallSounds]);
  -[CSDMessagingRelayMessage setSoundRegion:](v8, "setSoundRegion:", [callCopy soundRegion]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendInvitationSentMessageToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendInvitationSentMessageToClientForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:35 uniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUpdateRoutesMessageToClientForRoutes:(id)routes
{
  routesCopy = routes;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = routesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateRoutesMessageToClientForRoutes: %@", buf, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:44];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = routesCopy;
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

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v6 completionHandler:0];
}

- (void)sendUpdateSupportsDTMFUpdatesToClientForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateSupportsDTMFUpdatesToClientForCall: %@", &v11, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:55 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setSupportsDTMFUpdates:](v8, "setSupportsDTMFUpdates:", [callCopy supportsDTMFUpdates]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];
}

- (void)sendReceivedDTMFUpdateForCall:(id)call dtmfUpdate:(id)update
{
  callCopy = call;
  updateCopy = update;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = callCopy;
    v17 = 2112;
    v18 = updateCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendReceivedDTMFUpdateForCall: %@ dtmfUpdate: %@", &v15, 0x16u);
  }

  v9 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v11 = [(CSDMessagingRelayMessage *)v9 initWithType:56 uniqueProxyIdentifier:uniqueProxyIdentifier];

  digits = [updateCopy digits];
  [(CSDMessagingRelayMessage *)v11 setDtmfUpdateDigits:digits];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v11 forIdentifier:uniqueProxyIdentifier2];
}

- (void)sendDialCallMessageToHostForCall:(id)call completionHandler:(id)handler
{
  callCopy = call;
  handlerCopy = handler;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendDialCallMessageToHostForCall: %@", buf, 0xCu);
  }

  dialRequest = [callCopy dialRequest];
  [(CSDRelayMessagingController *)self _updateDialingIDSDeviceWithRequest:dialRequest];

  dialingIDSDestination = [(CSDRelayMessagingController *)self dialingIDSDestination];

  if (!dialingIDSDestination)
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
  v16 = callCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = callCopy;
  [v12 prepareConferenceForCall:v14 remoteInviteDictionary:0 completion:v15];
}

- (void)sendJoinConversationMessageToHostForCall:(id)call completionHandler:(id)handler
{
  callCopy = call;
  handlerCopy = handler;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendJoinConversationMessageToHostForCall: %@", buf, 0xCu);
  }

  dialRequest = [callCopy dialRequest];
  [(CSDRelayMessagingController *)self _updateDialingIDSDeviceWithRequest:dialRequest];

  dialingIDSDestination = [(CSDRelayMessagingController *)self dialingIDSDestination];

  if (!dialingIDSDestination)
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
  v16 = callCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v13 = handlerCopy;
  v14 = callCopy;
  [v12 prepareConferenceForCall:v14 remoteInviteDictionary:0 completion:v15];
}

- (void)sendAnswerCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000F57E8;
  v34[3] = &unk_10061B528;
  v6 = callCopy;
  v35 = v6;
  selfCopy = self;
  v7 = objc_retainBlock(v34);
  receptionistState = [v6 receptionistState];
  if ([v6 isScreening])
  {
    featureFlags = [(CSDRelayMessagingController *)self featureFlags];
    lVMEverywhere = [featureFlags LVMEverywhere];

    if (lVMEverywhere)
    {
      v11 = (v7[2])(v7);
      sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
      uniqueProxyIdentifier = [v6 uniqueProxyIdentifier];
      [sessionMessenger sendMessage:v11 forIdentifier:uniqueProxyIdentifier customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

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
    receptionistState2 = [v6 receptionistState];
    if ([v6 isScreening])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    selfCopy2 = self;
    v19 = v7;
    v20 = receptionistState;
    status = [v6 status];
    isAnswerFromScreening = [v6 isAnswerFromScreening];
    *buf = 134219010;
    if (isAnswerFromScreening)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v38 = receptionistState2;
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
    v42 = status;
    receptionistState = v20;
    v7 = v19;
    self = selfCopy2;
    v43 = 2112;
    v44 = v23;
    v45 = 2112;
    v46 = v24;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "sendAnswerCallMessageToHostForCall: rs: %lu, cs: %@, status: %lu, answerFromScreening: %@, canAnswerFromReceptionist: %@", buf, 0x34u);
  }

  if (![v6 isEndpointOnCurrentDevice] || receptionistState && (objc_msgSend(v6, "status") != 1 || !v30))
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Do not prepare conference for call: %@", buf, 0xCu);
    }

    v11 = (v7[2])(v7);
    sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
    v14 = sessionMessenger2;
    if (receptionistState)
    {
      [sessionMessenger2 sendMessage:v11 forCall:v6 completionHandler:0];
    }

    else
    {
      uniqueProxyIdentifier2 = [v6 uniqueProxyIdentifier];
      [v14 sendMessage:v11 andCancelOrDeclineInvitationIfNecessaryForIdentifier:uniqueProxyIdentifier2];
    }

    goto LABEL_30;
  }

  v25 = +[CSDRelayConferenceInterface sharedInstance];
  remoteInviteDictionary = [v6 remoteInviteDictionary];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F595C;
  v31[3] = &unk_10061B550;
  v33 = v7;
  v31[4] = self;
  v32 = v6;
  [v25 prepareConferenceForCall:v32 remoteInviteDictionary:remoteInviteDictionary completion:v31];

  v11 = v33;
LABEL_31:
}

- (void)sendDisconnectCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendDisconnectCallMessageToHostForCall: %@", &v16, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:9 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setDisconnectedReason:](v8, "setDisconnectedReason:", [callCopy disconnectedReason]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  v11 = [sessionMessenger sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:uniqueProxyIdentifier2];

  if ((v11 & 1) == 0)
  {
    featureFlags = [(CSDRelayMessagingController *)self featureFlags];
    lVMEverywhere = [featureFlags LVMEverywhere];

    if (lVMEverywhere)
    {
      sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
      [sessionMessenger2 sendMessage:v8 forCall:callCopy completionHandler:0];
    }
  }

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendHoldCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendHoldCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:11 uniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendUnholdCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendUnholdCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:12 uniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendGroupCallMessageToHostForCall:(id)call otherCall:(id)otherCall
{
  callCopy = call;
  otherCallCopy = otherCall;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = callCopy;
    v18 = 2112;
    v19 = otherCallCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendGroupCallMessageToHostForCall: %@ otherCall: %@", &v16, 0x16u);
  }

  v9 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v11 = [(CSDMessagingRelayMessage *)v9 initWithType:13 uniqueProxyIdentifier:uniqueProxyIdentifier];

  uniqueProxyIdentifier2 = [otherCallCopy uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v11 addOtherUniqueProxyIdentifiers:uniqueProxyIdentifier2];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v11 forIdentifier:uniqueProxyIdentifier3];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v11 completionHandler:0];
  }
}

- (void)sendUngroupCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendUngroupCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:14 uniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
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
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger sendMessage:v4 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v4 completionHandler:0];
  }
}

- (void)sendEndActiveAndAnswerCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendEndActiveAndAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  remoteInviteDictionary = [callCopy remoteInviteDictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F6444;
  v9[3] = &unk_10061B578;
  v10 = callCopy;
  selfCopy = self;
  v8 = callCopy;
  [v6 prepareConferenceForCall:v8 remoteInviteDictionary:remoteInviteDictionary completion:v9];
}

- (void)sendEndHeldAndAnswerCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendEndHeldAndAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  remoteInviteDictionary = [callCopy remoteInviteDictionary];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F66E8;
  v9[3] = &unk_10061B578;
  v10 = callCopy;
  selfCopy = self;
  v8 = callCopy;
  [v6 prepareConferenceForCall:v8 remoteInviteDictionary:remoteInviteDictionary completion:v9];
}

- (void)sendHoldActiveAndAnswerCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendHoldActiveAndAnswerCallMessageToHostForCall: %@", buf, 0xCu);
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [sessionMessenger sessionProtocolVersionForIdentifier:uniqueProxyIdentifier];

  if (v8 <= 2)
  {
    callCenter = [(CSDRelayMessagingController *)self callCenter];
    v10 = [callCenter callWithStatus:1];

    if (v10)
    {
      provider = [v10 provider];
      if ([provider isFaceTimeProvider])
      {

LABEL_9:
        [(CSDRelayMessagingController *)self sendHoldCallMessageToHostForCall:v10];
        goto LABEL_10;
      }

      provider2 = [callCopy provider];
      isFaceTimeProvider = [provider2 isFaceTimeProvider];

      if (isFaceTimeProvider)
      {
        goto LABEL_9;
      }
    }

LABEL_10:
    [(CSDRelayMessagingController *)self sendAnswerCallMessageToHostForCall:callCopy];
    goto LABEL_11;
  }

  v12 = +[CSDRelayConferenceInterface sharedInstance];
  remoteInviteDictionary = [callCopy remoteInviteDictionary];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000F6A58;
  v16[3] = &unk_10061B578;
  v17 = callCopy;
  selfCopy = self;
  [v12 prepareConferenceForCall:v17 remoteInviteDictionary:remoteInviteDictionary completion:v16];

  v10 = v17;
LABEL_11:
}

- (void)sendDisconnectCurrentCallMessageToHostForDisconnectedCall:(id)call activateHeld:(BOOL)held
{
  callCopy = call;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "IDSMessaging Client->Host) sendDisconnectCurrentCallToHost", v15, 2u);
  }

  v8 = [[CSDMessagingRelayMessage alloc] initWithType:21];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v8 setUniqueProxyIdentifier:uniqueProxyIdentifier];

  if ([(TUFeatureFlags *)self->_featureFlags automaticCallActivationDisabled]&& !held)
  {
    [(CSDMessagingRelayMessage *)v8 setAutomaticCallActivationDisabled:1];
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  v12 = [sessionMessenger sendMessage:v8 andCancelOrDeclineInvitationIfNecessaryForIdentifier:uniqueProxyIdentifier2];

  if ((v12 & 1) == 0)
  {
    sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
    [sessionMessenger2 sendMessage:v8 forCall:callCopy completionHandler:0];
  }

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendDisconnectAllCallsMessageToHostForDisconnectedCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendDisconnectAllCallsToHost", v11, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:22];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v6 setUniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];

  [sessionMessenger sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:uniqueProxyIdentifier2];
  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v6 completionHandler:0];
  }
}

- (void)sendSendHardPauseDigitsMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendSendHardPauseDigitsMessageToHost", v10, 2u);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:25];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [(CSDMessagingRelayMessage *)v6 setUniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];

  [sessionMessenger sendMessage:v6 forIdentifier:uniqueProxyIdentifier2];
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
  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v4 timeout:1 wantsAcknowledgement:3 maximumRetryAttempts:0 completionHandler:300.0];
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
  callCenter = [(CSDRelayMessagingController *)self callCenter];
  _allCalls = [callCenter _allCalls];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_allCalls count]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = _allCalls;
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
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        [v7 addObject:uniqueProxyIdentifier];

        [(CSDMessagingRelayMessage *)v4 addCall:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  clientMessagingDelegate = [(CSDRelayMessagingController *)self clientMessagingDelegate];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000F7254;
  v18[3] = &unk_10061B5A0;
  v19 = v4;
  selfCopy = self;
  v21 = v7;
  v16 = v7;
  v17 = v4;
  [clientMessagingDelegate pullRemotelyHostedCallsForMessage:v17 completion:v18];
}

- (void)sendPushRelayingCallsMessageToHostForSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client->Host) sendPushRelayingCallsMessageToHostForSourceIdentifier: %@", &v8, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:32];
  [(CSDMessagingRelayMessage *)v6 setSourceIdentifier:identifierCopy];
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger sendMessage:v6 forIdentifier:0 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];
}

- (void)sendUpdateRemoteUplinkMutedCallMessageToHostForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendUpdateRemoteUplinkMutedCallMessageToHostForCall: %@", &v12, 0xCu);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:39 uniqueProxyIdentifier:uniqueProxyIdentifier];

  -[CSDMessagingRelayMessage setRemoteUplinkMuted:](v8, "setRemoteUplinkMuted:", [callCopy isRemoteUplinkMuted]);
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v8 completionHandler:0];
  }
}

- (void)sendPickRouteMessageToHostForRoute:(id)route
{
  routeCopy = route;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = routeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Host->Client) sendPickRouteMessageToHostForRoute: %@", &v9, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:45];
  v7 = [[CSDMessagingRoute alloc] initWithTURoute:routeCopy];
  [(CSDMessagingRelayMessage *)v6 setRoute:v7];

  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v6 completionHandler:0];
}

- (void)sendPerformSmartHoldingRequest:(id)request
{
  requestCopy = request;
  v7 = [[CSDMessagingRelayMessage alloc] initWithType:66];
  v5 = [[CSDMessagingSmartHoldingRequest alloc] initWithRequest:requestCopy];

  [(CSDMessagingRelayMessage *)v7 setSmartHoldingRequest:v5];
  pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
  [pairedDeviceMessenger sendMessage:v7 completionHandler:0];
}

- (void)sendSuppressRingtoneMessageForCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendSuppressRingtoneMessageForCall", v11, 2u);
  }

  v6 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v8 = [(CSDMessagingRelayMessage *)v6 initWithType:27 uniqueProxyIdentifier:uniqueProxyIdentifier];

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];

  [sessionMessenger sendMessage:v8 forIdentifier:uniqueProxyIdentifier2 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];
}

- (void)sendUpdateSystemVolume:(float)volume
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    volumeCopy = volume;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendUpdateSystemVolume: %f", &v13, 0xCu);
  }

  v6 = +[CSDFaceTimeAudioIDSService sharedInstance];
  pairedDevice = [v6 pairedDevice];
  capabilities = [pairedDevice capabilities];
  v9 = [capabilities valueForCapability:IDSRegistrationPropertySupportsCalls25];

  if (v9)
  {
    v10 = [[CSDMessagingRelayMessage alloc] initWithType:40];
    *&v11 = volume;
    [(CSDMessagingRelayMessage *)v10 setSystemVolume:v11];
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v10 completionHandler:0];
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

- (void)sendBuzzMember:(id)member toConversation:(id)conversation
{
  memberCopy = member;
  conversationCopy = conversation;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v21 = 138412546;
    v22 = memberCopy;
    v23 = 2112;
    v24 = uUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendBuzzMember: %@ toConversationWithUUID: %@", &v21, 0x16u);
  }

  v10 = [[CSDMessagingRelayMessage alloc] initWithType:51];
  v11 = [CSDMessagingConversationMember memberWithTUConversationMember:memberCopy];
  v12 = [NSMutableArray arrayWithObject:v11];
  [(CSDMessagingRelayMessage *)v10 setConversationMembers:v12];

  uUID2 = [conversationCopy UUID];
  uUIDString = [uUID2 UUIDString];
  [(CSDMessagingRelayMessage *)v10 setConversationUUIDString:uUIDString];

  callCenter = [(CSDRelayMessagingController *)self callCenter];
  groupUUID = [conversationCopy groupUUID];
  v17 = [callCenter callForConversationWithGroupUUID:groupUUID];

  if (!v17)
  {
    pairedDeviceMessenger = sub_100004778();
    if (os_log_type_enabled(pairedDeviceMessenger, OS_LOG_TYPE_ERROR))
    {
      sub_10047470C(conversationCopy);
    }

    goto LABEL_8;
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier = [v17 uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v10 forIdentifier:uniqueProxyIdentifier];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v10 completionHandler:0];
LABEL_8:
  }
}

- (void)sendAddRemoteMembers:(id)members otherInvitedHandles:(id)handles toConversation:(id)conversation
{
  membersCopy = members;
  handlesCopy = handles;
  conversationCopy = conversation;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [conversationCopy UUID];
    v22 = 138412802;
    v23 = membersCopy;
    v24 = 2112;
    v25 = handlesCopy;
    v26 = 2112;
    v27 = uUID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "(IDSMessaging Client<->Host) sendAddRemoteMembers: %@ otherInvitedHandles: %@ toConversationWithUUID: %@", &v22, 0x20u);
  }

  v13 = [CSDMessagingRelayMessage alloc];
  uUID2 = [conversationCopy UUID];
  v15 = [(CSDMessagingRelayMessage *)v13 initAddRemoteMemberMessageWithMembers:membersCopy otherInvitedHandles:handlesCopy conversationWithUUID:uUID2];

  callCenter = [(CSDRelayMessagingController *)self callCenter];
  groupUUID = [conversationCopy groupUUID];
  v18 = [callCenter callForConversationWithGroupUUID:groupUUID];

  if (!v18)
  {
    pairedDeviceMessenger = sub_100004778();
    if (os_log_type_enabled(pairedDeviceMessenger, OS_LOG_TYPE_ERROR))
    {
      sub_10047479C(conversationCopy);
    }

    goto LABEL_8;
  }

  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier = [v18 uniqueProxyIdentifier];
  [sessionMessenger sendMessage:v15 forIdentifier:uniqueProxyIdentifier];

  if ([(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
  {
    pairedDeviceMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [pairedDeviceMessenger sendMessage:v15 completionHandler:0];
LABEL_8:
  }
}

- (void)requestAnswerForRequest:(id)request forCall:(id)call
{
  requestCopy = request;
  callCopy = call;
  behavior = [requestCopy behavior];
  if ((behavior - 1) > 3)
  {
    v8 = 19;
  }

  else
  {
    v8 = dword_10057A1A0[(behavior - 1)];
  }

  v9 = [CSDMessagingRelayMessage alloc];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  v11 = [(CSDMessagingRelayMessage *)v9 initWithType:43 uniqueProxyIdentifier:uniqueProxyIdentifier];

  [(CSDMessagingRelayMessage *)v11 setRequestActionType:v8];
  sourceIdentifier = [requestCopy sourceIdentifier];
  [(CSDMessagingRelayMessage *)v11 setSourceIdentifier:sourceIdentifier];

  if ([callCopy isHostedOnCurrentDevice])
  {
    sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    endpointIDSDestination = [requestCopy endpointIDSDestination];
    v16 = [NSSet setWithObject:endpointIDSDestination];
    [sessionMessenger sendMessage:v11 forIdentifier:uniqueProxyIdentifier2 toDestinations:v16];
  }

  else
  {
    endpointIDSDestination2 = [requestCopy endpointIDSDestination];
    [(CSDMessagingRelayMessage *)v11 setEndpointIDSDestination:endpointIDSDestination2];

    sessionMessenger2 = [(CSDRelayMessagingController *)self sessionMessenger];
    uniqueProxyIdentifier3 = [callCopy uniqueProxyIdentifier];
    [sessionMessenger2 sendMessage:v11 forIdentifier:uniqueProxyIdentifier3 customizedForRemoteProtocolVersion:0 waitUntilConnected:0 completionHandler:0];

    if (![(CSDRelayMessagingController *)self _shouldSendToPairedIDSDevice])
    {
      goto LABEL_9;
    }

    sessionMessenger = [(CSDRelayMessagingController *)self pairedDeviceMessenger];
    [sessionMessenger sendMessage:v11 completionHandler:0];
  }

LABEL_9:
}

- (void)messenger:(id)messenger handledMessage:(id)message fromDestination:(id)destination device:(id)device
{
  messageCopy = message;
  destinationCopy = destination;
  deviceCopy = device;
  if ([(CSDRelayMessagingController *)self _canReceiveRelayCallsFromDestination:destinationCopy device:deviceCopy])
  {
    if (-[CSDRelayMessagingController shouldProcessRelayMessageOfType:](self, "shouldProcessRelayMessageOfType:", [messageCopy type]))
    {
      if (deviceCopy || ([destinationCopy isGuest] & 1) != 0)
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          typeString = [messageCopy typeString];
          *buf = 138412546;
          v48 = typeString;
          v49 = 2112;
          v50 = messageCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Handle incoming %@ message: %@", buf, 0x16u);
        }

        if (deviceCopy)
        {
          v14 = +[CSDRelayIDSService sharedInstance];
          pairedDevice = [v14 pairedDevice];
          v16 = [pairedDevice isEqual:deviceCopy];
        }

        else
        {
          v16 = 0;
        }

        v28 = +[CSDReportingController sharedInstance];
        [v28 reportRelayMessageReceived:messageCopy fromPairedDevice:v16];

        clientMessagingDelegate = [(CSDRelayMessagingController *)self clientMessagingDelegate];
        hostMessagingDelegate = [(CSDRelayMessagingController *)self hostMessagingDelegate];
        commonMessagingDelegate = [(CSDRelayMessagingController *)self commonMessagingDelegate];
        switch([messageCopy type])
        {
          case 1u:
            [clientMessagingDelegate handleIncomingCallMessageFromHost:messageCopy fromPairedDevice:v16];
            break;
          case 2u:
            if ([messageCopy disconnectedReason] == 14)
            {
              goto LABEL_63;
            }

            tuProvider = [messageCopy tuProvider];
            v33 = [deviceCopy canReceiveMessagesForCallProvider:tuProvider];

            if (v33)
            {
              if (![(CSDRelayMessagingController *)self shouldScreenTimeRestrictMessage:messageCopy])
              {
                v45[0] = _NSConcreteStackBlock;
                v45[1] = 3221225472;
                v45[2] = sub_1000F9150;
                v45[3] = &unk_10061B5C8;
                v45[4] = self;
                v46 = messageCopy;
                [hostMessagingDelegate handleDialCallMessageFromClient:v46 destination:destinationCopy device:deviceCopy completion:v45];
                v29 = v46;
                goto LABEL_103;
              }

              v30 = sub_100004778();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                destinationID = [messageCopy destinationID];
                tuProvider2 = [messageCopy tuProvider];
                isEmergency = [messageCopy isEmergency];
                *buf = 138412802;
                v48 = destinationID;
                v49 = 2112;
                v50 = tuProvider2;
                v51 = 1024;
                LODWORD(v52) = isEmergency;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Screen Time restricted the call for dial call message with destinationID %@ and provider: %@ is emergency: (%d)", buf, 0x1Cu);
              }

              goto LABEL_72;
            }

            v36 = sub_100004778();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              tuProvider3 = [messageCopy tuProvider];
              *buf = 138412802;
              v48 = deviceCopy;
              v49 = 2112;
              v50 = tuProvider3;
              v51 = 2112;
              v52 = messageCopy;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] We determined that device: %@ cannot process messages for provider %@. Ignoring incoming message: %@", buf, 0x20u);
            }

            break;
          case 3u:
            [clientMessagingDelegate handleCallDialedMessageFromHost:messageCopy fromPairedDevice:v16];
            break;
          case 4u:
            [hostMessagingDelegate handleAnswerCallMessageFromClient:messageCopy destination:destinationCopy device:deviceCopy];
            break;
          case 5u:
            [clientMessagingDelegate handleCallAnsweredElsewhereMessageFromHost:messageCopy fromPairedDevice:v16];
            break;
          case 6u:
LABEL_63:
            [clientMessagingDelegate handleCallDisconnectedMessageFromHost:messageCopy];
            break;
          case 7u:
            [commonMessagingDelegate handlePlayDTMFToneForKeyMessage:messageCopy];
            break;
          case 8u:
            [clientMessagingDelegate handleCallConnectedMessageFromHost:messageCopy];
            break;
          case 9u:
            [hostMessagingDelegate handleDisconnectCallMessageFromClient:messageCopy];
            break;
          case 0xAu:
            [clientMessagingDelegate handlePullRelayingCallsMessageFromHost:messageCopy fromPairedDevice:v16];
            break;
          case 0xBu:
            [hostMessagingDelegate handleHoldCallMessageFromClient:messageCopy];
            break;
          case 0xCu:
            [hostMessagingDelegate handleUnholdCallMessageFromClient:messageCopy];
            break;
          case 0xDu:
            [hostMessagingDelegate handleGroupCallMessageFromClient:messageCopy];
            break;
          case 0xEu:
            [hostMessagingDelegate handleUngroupCallMessageFromClient:messageCopy];
            break;
          case 0xFu:
            [clientMessagingDelegate handleResetWantsHoldMusicFromHost:messageCopy];
            break;
          case 0x10u:
            [hostMessagingDelegate handleSwapCallsMessageFromClient:messageCopy];
            break;
          case 0x11u:
            [clientMessagingDelegate handleUpdateCallModelMessageFromHost:messageCopy];
            break;
          case 0x12u:
            [clientMessagingDelegate handleDeviceUnavailableMessageFromHost:messageCopy];
            break;
          case 0x13u:
            [hostMessagingDelegate handleEndActiveAndAnswerMessageFromClient:messageCopy];
            break;
          case 0x14u:
            [hostMessagingDelegate handleEndHeldAndAnswerMessageFromClient:messageCopy];
            break;
          case 0x15u:
            [hostMessagingDelegate handleDisconnectCurrentCallMessageFromClient:messageCopy];
            break;
          case 0x16u:
            [hostMessagingDelegate handleDisconnectAllCallsMessageFromClient:messageCopy];
            break;
          case 0x17u:
            [clientMessagingDelegate handleResetStateMessageFromHost:messageCopy fromPairedDevice:v16];
            break;
          case 0x18u:
            [clientMessagingDelegate handleHardPauseDigitsAvailabilityMessageFromHost:messageCopy];
            break;
          case 0x19u:
            [hostMessagingDelegate handleSendHardPauseDigitsMessageFromClient:messageCopy];
            break;
          case 0x1Au:
            [clientMessagingDelegate handleUpdateRemoteCallStateMessageFromHost:messageCopy];
            break;
          case 0x1Bu:
            [commonMessagingDelegate handleSuppressRingtoneMessage:messageCopy];
            break;
          case 0x1Cu:
            [hostMessagingDelegate handleRequestCallContextMessageFromClient:messageCopy fromDevice:deviceCopy];
            break;
          case 0x1Du:
            [clientMessagingDelegate handleCallStartedConnectingMessageFromHost:messageCopy];
            break;
          case 0x1Eu:
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_1000F92B8;
            v41[3] = &unk_10061B578;
            v41[4] = self;
            v42 = messageCopy;
            [clientMessagingDelegate handlePushHostedCallsMessageFromHost:v42 completion:v41];
            v29 = v42;
            goto LABEL_103;
          case 0x1Fu:
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_1000F92C8;
            v39[3] = &unk_10061B578;
            v39[4] = self;
            v40 = messageCopy;
            [hostMessagingDelegate handlePullHostedCallsMessageFromClient:v40 destination:destinationCopy fromPairedDevice:v16 completion:v39];
            v29 = v40;
            goto LABEL_103;
          case 0x20u:
            [hostMessagingDelegate handlePushRelayingCallsMessageFromClient:messageCopy];
            break;
          case 0x21u:
            [clientMessagingDelegate handleUpdateCallContextAvailableMessageFromHost:messageCopy];
            break;
          case 0x22u:
            [clientMessagingDelegate handleNeedsManualInCallSoundsChangeMessageFromHost:messageCopy];
            break;
          case 0x23u:
            [clientMessagingDelegate handleInvitationSentMessageFromHost:messageCopy];
            break;
          case 0x24u:
            [hostMessagingDelegate handleHoldActiveAndAnswerMessageFromClient:messageCopy];
            break;
          case 0x25u:
            [clientMessagingDelegate handleUpdateCallDisplayContextMessageFromHost:messageCopy];
            break;
          case 0x26u:
            [commonMessagingDelegate handleSetUplinkMutedMessage:messageCopy];
            break;
          case 0x27u:
            [clientMessagingDelegate handleUpdateRemoteUplinkMutedMessageFromHost:messageCopy];
            break;
          case 0x28u:
            [commonMessagingDelegate handleUpdateSystemVolumeMessageFromHost:messageCopy];
            break;
          case 0x29u:
            [clientMessagingDelegate handleUpdateSupportsTTYWithVoiceMessageFromHost:messageCopy];
            break;
          case 0x2Au:
            [commonMessagingDelegate handleSetTTYTypeMessage:messageCopy];
            break;
          case 0x2Bu:
            [commonMessagingDelegate handleRequestActionMessage:messageCopy];
            break;
          case 0x2Cu:
            [clientMessagingDelegate handleUpdateRoutesMessageFromHost:messageCopy];
            break;
          case 0x2Du:
            [hostMessagingDelegate handlePickRouteMessageFromClient:messageCopy];
            break;
          case 0x2Fu:
            [clientMessagingDelegate handleUpdateFailureExpectedMessageFromHost:messageCopy];
            break;
          case 0x30u:
            [clientMessagingDelegate handleUpdateSupportsEmergencyFallbackMessageFromHost:messageCopy];
            break;
          case 0x31u:
            goto LABEL_93;
          case 0x32u:
            if ([(CSDRelayMessagingController *)self shouldScreenTimeRestrictMessage:messageCopy])
            {
              v30 = sub_100004778();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[WARN] Screen Time restricted the call for Join Conversation message", buf, 2u);
              }

LABEL_72:

              uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
              [(CSDRelayMessagingController *)self sendDialCallFailedForScreenTimeForUniqueProxyIdentifier:uniqueProxyIdentifier];
            }

            else
            {
              v43[0] = _NSConcreteStackBlock;
              v43[1] = 3221225472;
              v43[2] = sub_1000F9204;
              v43[3] = &unk_10061B5C8;
              v43[4] = self;
              v44 = messageCopy;
              [hostMessagingDelegate handleJoinConversationMessageFromClient:v44 destination:destinationCopy device:deviceCopy completion:v43];
              v29 = v44;
LABEL_103:
            }

            break;
          case 0x33u:
            [hostMessagingDelegate handleBuzzMemberMessageFromClient:messageCopy];
            break;
          case 0x34u:
            [hostMessagingDelegate handleAddMemberMessageFromClient:messageCopy];
            break;
          case 0x35u:
            [clientMessagingDelegate handleConversationProminenceMessageFromHost:messageCopy];
            break;
          case 0x36u:
            [clientMessagingDelegate handleUpdateConversationsMessageFromHost:messageCopy];
LABEL_93:
            [clientMessagingDelegate handleOngoingConversationMessageFromHost:messageCopy];
            break;
          case 0x37u:
            [clientMessagingDelegate handleUpdateSupportsDTMFUpdatesMessageFromHost:messageCopy];
            break;
          case 0x38u:
            [clientMessagingDelegate handleReceivedDTMFUpdateMessageFromHost:messageCopy];
            break;
          case 0x39u:
            [clientMessagingDelegate handleScreeningChangedFromHost:messageCopy];
            break;
          case 0x3Au:
            [clientMessagingDelegate handleCaptionsResultFromHost:messageCopy];
            break;
          case 0x3Bu:
            [clientMessagingDelegate handleReceptionistStateChangedFromHost:messageCopy];
            break;
          case 0x3Cu:
            [clientMessagingDelegate handleLastReceptionistMessageChangedFromHost:messageCopy];
            break;
          case 0x3Du:
            [clientMessagingDelegate handleSmartHoldingSessionChangedFromHost:messageCopy];
            break;
          case 0x3Eu:
            [hostMessagingDelegate handleStartReceptionistReplyFromClient:messageCopy];
            break;
          case 0x3Fu:
            [hostMessagingDelegate handleReceptionistCustomReplyFromClient:messageCopy];
            break;
          case 0x40u:
            [clientMessagingDelegate handleAnnouncementHasFinishedChangedFromHost:messageCopy];
            break;
          case 0x41u:
            [clientMessagingDelegate handleReceptionistSessionChangedFromHost:messageCopy];
            break;
          case 0x42u:
            [hostMessagingDelegate handlePerformSmartHoldingRequestFromClient:messageCopy];
            break;
          default:
            break;
        }

LABEL_15:

LABEL_27:
        goto LABEL_28;
      }

      clientMessagingDelegate = sub_100004778();
      if (os_log_type_enabled(clientMessagingDelegate, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v48 = destinationCopy;
        v49 = 2112;
        v50 = messageCopy;
        _os_log_impl(&_mh_execute_header, clientMessagingDelegate, OS_LOG_TYPE_DEFAULT, "[WARN] We determined that device is null and destination: %@ is not guest. Ignoring incoming message: %@", buf, 0x16u);
      }

      goto LABEL_28;
    }

    clientMessagingDelegate = sub_100004778();
    if (!os_log_type_enabled(clientMessagingDelegate, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    type = [messageCopy type];
    if (type >= 0x43)
    {
      hostMessagingDelegate = [NSString stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      hostMessagingDelegate = *(&off_10061B608 + type);
    }

    *buf = 138412290;
    v48 = hostMessagingDelegate;
    v25 = "[WARN] Ignoring %@ relay message since our device does not suppport processing messages of that type.";
    v26 = clientMessagingDelegate;
    v27 = 12;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_27;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = destinationCopy;
    v49 = 2112;
    v50 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Messaging device can't receive relayed calls ... destination %@ device %@", buf, 0x16u);
  }

  v18 = [(CSDRelayMessagingController *)self shouldDeclineSessionInviteWithMessageWhenRelayIsDisabled:messageCopy];
  clientMessagingDelegate = sub_100004778();
  v20 = os_log_type_enabled(clientMessagingDelegate, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      typeString2 = [messageCopy typeString];
      *buf = 138412546;
      v48 = typeString2;
      v49 = 2112;
      v50 = messageCopy;
      _os_log_impl(&_mh_execute_header, clientMessagingDelegate, OS_LOG_TYPE_DEFAULT, "... and we were told to decline the session invite. Declining incoming %@ message: %@", buf, 0x16u);
    }

    clientMessagingDelegate = [[CSDMessagingRelayMessage alloc] initWithType:18];
    [clientMessagingDelegate setDisconnectedReason:12];
    hostMessagingDelegate = [(CSDRelayMessagingController *)self sessionMessenger];
    commonMessagingDelegate = [messageCopy uniqueProxyIdentifier];
    [hostMessagingDelegate sendMessage:clientMessagingDelegate andCancelOrDeclineInvitationIfNecessaryForIdentifier:commonMessagingDelegate];
    goto LABEL_15;
  }

  if (v20)
  {
    hostMessagingDelegate = [messageCopy typeString];
    *buf = 138412546;
    v48 = hostMessagingDelegate;
    v49 = 2112;
    v50 = messageCopy;
    v25 = "... and we were told not to decline the session invite. Ignoring incoming %@ message: %@";
    v26 = clientMessagingDelegate;
    v27 = 22;
    goto LABEL_26;
  }

LABEL_28:
}

- (BOOL)shouldProcessRelayMessageOfType:(int)type
{
  v3 = 1;
  if (type <= 0x24)
  {
    if (((1 << type) & 0x1000791A10) != 0)
    {
      v4 = +[FTDeviceSupport sharedInstance];
      v3 = [v4 deviceType] == 2;
    }

    else
    {
      if (type != 2)
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

- (void)checkShouldIgnoreSessionInviteWithMessage:(id)message fromDestination:(id)destination completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  destinationCopy = destination;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = +[TUCallCapabilities debugDescription];
    v43 = 138412290;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TUCallCapabilities: %@", &v43, 0xCu);
  }

  isGuest = [destinationCopy isGuest];
  if (isGuest && !-[CSDRelayMessagingController _canReceiveGuestSessionInviteForMessageType:](self, "_canReceiveGuestSessionInviteForMessageType:", [messageCopy type]))
  {
    tuProvider = sub_100004778();
    if (os_log_type_enabled(tuProvider, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [messageCopy typeString];
      v31 = +[FTDeviceSupport sharedInstance];
      model = [v31 model];
      v43 = 138412546;
      v44 = typeString;
      v45 = 2112;
      v46 = model;
      _os_log_impl(&_mh_execute_header, tuProvider, OS_LOG_TYPE_DEFAULT, "[WARN] Setting should ignore session to YES for %@ message because message is from a guest destination and this device is not a supported Guest Session device (%@)", &v43, 0x16u);
    }

    goto LABEL_20;
  }

  type = [messageCopy type];
  if (type == 31)
  {
    callCenter = [(CSDRelayMessagingController *)self callCenter];
    v28 = [callCenter anyCallPassesTest:&stru_10061B5E8];

    if (v28)
    {
      goto LABEL_15;
    }

    tuProvider = sub_100004778();
    if (os_log_type_enabled(tuProvider, OS_LOG_TYPE_DEFAULT))
    {
      callCenter2 = [(CSDRelayMessagingController *)self callCenter];
      _allCalls = [callCenter2 _allCalls];
      v43 = 138412290;
      v44 = _allCalls;
      _os_log_impl(&_mh_execute_header, tuProvider, OS_LOG_TYPE_DEFAULT, "[WARN] Setting should ignore session to YES because no calls exist with an endpoint on the current device: %@", &v43, 0xCu);
    }

LABEL_20:
    v29 = 1;
LABEL_29:

    goto LABEL_30;
  }

  if (type == 1)
  {
    tuProvider = [messageCopy tuProvider];
    destinationID = [messageCopy destinationID];
    identifier = [tuProvider identifier];
    v18 = [TUICFInterface allowCallForDestinationID:destinationID providerIdentifier:identifier];

    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      destinationID2 = [messageCopy destinationID];
      identifier2 = [tuProvider identifier];
      v43 = 138412802;
      v44 = v18;
      v45 = 2112;
      v46 = destinationID2;
      v47 = 2112;
      v48 = identifier2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Query result: %@ for handle: %@ provider: %@", &v43, 0x20u);
    }

    if ([messageCopy priority] != 2 && (objc_msgSend(v18, "allowCallForDestinationID") & 1) == 0)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        destinationID3 = [messageCopy destinationID];
        v43 = 138412546;
        v44 = destinationID3;
        v45 = 2112;
        v46 = tuProvider;
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

    callCenter3 = [(CSDRelayMessagingController *)self callCenter];
    v23 = [callCenter3 callWithStatus:3];

    if (v23)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        callCenter4 = [(CSDRelayMessagingController *)self callCenter];
        v26 = [callCenter4 callWithStatus:3];
        v43 = 138412290;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Setting should ignore session to YES because a call exists with sending status: %@", &v43, 0xCu);
      }

      goto LABEL_27;
    }

    if ([(CSDRelayMessagingController *)self shouldScreenTimeRestrictMessage:messageCopy])
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        destinationID3 = [messageCopy destinationID];
        isEmergency = [messageCopy isEmergency];
        v43 = 138412802;
        v44 = destinationID3;
        v45 = 2112;
        v46 = tuProvider;
        v47 = 1024;
        LODWORD(v48) = isEmergency;
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
      callCenter5 = [(CSDRelayMessagingController *)self callCenter];
      v41 = [callCenter5 shouldPreferRelayOverDirectSecondaryCallingForProvider:tuProvider isVideo:{objc_msgSend(messageCopy, "isVideo")}];

      if ((v41 & 1) == 0)
      {
        if ([tuProvider isTelephonyProvider]&& +[TUCallCapabilities isDirectTelephonyCallingCurrentlyAvailable])
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

        if (-[NSObject isFaceTimeProvider](tuProvider, "isFaceTimeProvider") && ([messageCopy isVideo] & 1) == 0 && +[TUCallCapabilities isDirectFaceTimeAudioCallingCurrentlyAvailable](TUCallCapabilities, "isDirectFaceTimeAudioCallingCurrentlyAvailable"))
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

        if (-[NSObject isFaceTimeProvider](tuProvider, "isFaceTimeProvider") && [messageCopy isVideo] && +[TUCallCapabilities isDirectFaceTimeVideoCallingCurrentlyAvailable](TUCallCapabilities, "isDirectFaceTimeVideoCallingCurrentlyAvailable"))
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

        if ([tuProvider isTinCanProvider]&& +[TUCallCapabilities isDirectFaceTimeAudioCallingCurrentlyAvailable])
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
  completionCopy[2](completionCopy, v29);
}

- (BOOL)shouldScreenTimeRestrictMessage:(id)message
{
  messageCopy = message;
  destinationID = [messageCopy destinationID];
  if ([destinationID length])
  {
    destinationID2 = [messageCopy destinationID];
  }

  else
  {
    destinationID2 = TUCallFilterUnknownCallerAddress;
  }

  v7 = destinationID2;

  callCenter = [(CSDRelayMessagingController *)self callCenter];
  isEmergency = [messageCopy isEmergency];
  callFilterController = [callCenter callFilterController];
  if (objc_opt_respondsToSelector())
  {
    callFilterController2 = [callCenter callFilterController];
    v12 = [NSSet setWithObject:v7];
    tuProvider = [messageCopy tuProvider];
    v14 = [(CSDRelayMessagingController *)self bundleIdentifierForProvider:tuProvider];
    v15 = [callFilterController2 shouldRestrictAddresses:v12 forBundleIdentifier:v14 performSynchronously:1];
  }

  else
  {
    v15 = 0;
  }

  return (isEmergency ^ 1) & v15;
}

- (id)bundleIdentifierForProvider:(id)provider
{
  providerCopy = provider;
  if ([providerCopy isTinCanProvider])
  {
    v4 = &TUBundleIdentifierTinCan;
  }

  else
  {
    if (![providerCopy isTelephonyProvider])
    {
      if ([providerCopy isFaceTimeProvider])
      {
        TUPreferredFaceTimeBundleIdentifier();
      }

      else
      {
        [providerCopy bundleIdentifier];
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

- (int64_t)timeoutForInvitationWithMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  if (type == 2)
  {
    tuProvider = [messageCopy tuProvider];
    [messageCopy isVideo];
    v5 = TUOutgoingInvitationTimeoutForCallProvider();
  }

  else if (type == 1)
  {
    v5 = TUIncomingInvitationTimeout();
  }

  else
  {
    v5 = 30;
  }

  return v5;
}

- (id)identifiersForSessionInvitationWithMessage:(id)message
{
  messageCopy = message;
  v4 = +[NSMutableArray array];
  if (([messageCopy type] & 0xFFFFFFFE) == 0x1E)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    protoCalls = [messageCopy protoCalls];
    v6 = [protoCalls countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(protoCalls);
          }

          uniqueProxyIdentifier = [*(*(&v14 + 1) + 8 * i) uniqueProxyIdentifier];
          [v4 addObject:uniqueProxyIdentifier];
        }

        v7 = [protoCalls countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    uniqueProxyIdentifier2 = [messageCopy uniqueProxyIdentifier];

    if (!uniqueProxyIdentifier2)
    {
      goto LABEL_13;
    }

    protoCalls = [messageCopy uniqueProxyIdentifier];
    [v4 addObject:protoCalls];
  }

LABEL_13:
  v12 = [v4 copy];

  return v12;
}

- (void)performBlockOnTransportAvailability:(id)availability forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  availabilityCopy = availability;
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  [sessionMessenger performBlockOnTransportAvailability:availabilityCopy forIdentifier:identifierCopy];
}

- (void)prepareToDisconnectMessagingConnectionForCall:(id)call
{
  callCopy = call;
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  [sessionMessenger prepareSessionToEndForIdentifier:uniqueProxyIdentifier];
}

- (void)disconnectMessagingConnectionForCall:(id)call
{
  callCopy = call;
  sessionMessenger = [(CSDRelayMessagingController *)self sessionMessenger];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  [sessionMessenger cancelOrDeclineInvitationForIdentifier:uniqueProxyIdentifier];
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