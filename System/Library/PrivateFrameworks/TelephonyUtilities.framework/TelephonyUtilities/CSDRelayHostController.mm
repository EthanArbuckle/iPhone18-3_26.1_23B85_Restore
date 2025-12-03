@interface CSDRelayHostController
- (BOOL)_endCallWithActiveReceptionistState:(id)state reason:(int)reason;
- (BOOL)_updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:(id)request;
- (CSDRelayHostController)initWithQueue:(id)queue conversationManager:(id)manager featureFlags:(id)flags;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (void)_answerHostedCall:(id)call completionHandler:(id)handler;
- (void)_conferenceTransport:(id)transport didStopForCall:(id)call cleanly:(BOOL)cleanly error:(id)error;
- (void)_launchInCallApplicationForOutgoingCallOnHostIfNecessary;
- (void)handleAddMemberMessageFromClient:(id)client;
- (void)handleAnswerCallMessageFromClient:(id)client destination:(id)destination device:(id)device;
- (void)handleBuzzMemberMessageFromClient:(id)client;
- (void)handleDialCallMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion;
- (void)handleDisconnectAllCallsMessageFromClient:(id)client;
- (void)handleDisconnectCallMessageFromClient:(id)client;
- (void)handleDisconnectCurrentCallMessageFromClient:(id)client;
- (void)handleEndActiveAndAnswerMessageFromClient:(id)client;
- (void)handleEndHeldAndAnswerMessageFromClient:(id)client;
- (void)handleGroupCallMessageFromClient:(id)client;
- (void)handleHoldActiveAndAnswerMessageFromClient:(id)client;
- (void)handleHoldCallMessageFromClient:(id)client;
- (void)handleJoinConversationMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion;
- (void)handlePerformSmartHoldingRequestFromClient:(id)client;
- (void)handlePickRouteMessageFromClient:(id)client;
- (void)handlePushRelayingCallsMessageFromClient:(id)client;
- (void)handleReceptionistCustomReplyFromClient:(id)client;
- (void)handleRequestCallContextMessageFromClient:(id)client fromDevice:(id)device;
- (void)handleSendHardPauseDigitsMessageFromClient:(id)client;
- (void)handleStartReceptionistReplyFromClient:(id)client;
- (void)handleSwapCallsMessageFromClient:(id)client;
- (void)handleUngroupCallMessageFromClient:(id)client;
- (void)handleUnholdCallMessageFromClient:(id)client;
- (void)pushHostedCallsForRemoteInviteDictionary:(id)dictionary destination:(id)destination toPairedDevice:(BOOL)device completion:(id)completion;
@end

@implementation CSDRelayHostController

- (CSDRelayHostController)initWithQueue:(id)queue conversationManager:(id)manager featureFlags:(id)flags
{
  queueCopy = queue;
  managerCopy = manager;
  flagsCopy = flags;
  v15.receiver = self;
  v15.super_class = CSDRelayHostController;
  v12 = [(CSDRelayHostController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_featureFlags, flags);
    objc_storeStrong(&v13->_conversationManager, manager);
  }

  return v13;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callWithUniqueProxyIdentifier:identifierCopy];

  return v7;
}

- (void)_answerHostedCall:(id)call completionHandler:(id)handler
{
  callCopy = call;
  handlerCopy = handler;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([callCopy isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100204FC8;
    v11[3] = &unk_10061E7D8;
    v12 = callCopy;
    selfCopy = self;
    v14 = handlerCopy;
    uniqueProxyIdentifier = [v12 uniqueProxyIdentifier];
    [relayMessagingController performBlockOnTransportAvailability:v11 forIdentifier:uniqueProxyIdentifier];
  }
}

- (void)_conferenceTransport:(id)transport didStopForCall:(id)call cleanly:(BOOL)cleanly error:(id)error
{
  cleanlyCopy = cleanly;
  transportCopy = transport;
  callCopy = call;
  errorCopy = error;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([callCopy status] == 5 || objc_msgSend(callCopy, "status") == 6)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received did stop for call that is already disconnecting/disconnected", &v19, 2u);
    }
  }

  else
  {
    relayClientTransport = [callCopy relayClientTransport];
    v16 = [relayClientTransport isEqualToTransport:transportCopy];

    v17 = sub_100004778();
    v14 = v17;
    if (v16)
    {
      if (cleanlyCopy)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = callCopy;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Conference connection ended for call %@. Disconnecting call normally", &v19, 0xCu);
        }

        v14 = +[TUCallCenter sharedInstance];
        [v14 disconnectCall:callCopy];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10047BB7C();
        }

        v14 = +[TUCallCenter sharedInstance];
        [v14 disconnectCall:callCopy withReason:8];
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      relayClientTransport2 = [callCopy relayClientTransport];
      v19 = 138412546;
      v20 = transportCopy;
      v21 = 2112;
      v22 = relayClientTransport2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not disconnecting call because this conference transport is %@ but the call's current relay client transport is %@", &v19, 0x16u);
    }
  }
}

- (void)_launchInCallApplicationForOutgoingCallOnHostIfNecessary
{
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_launchInCallApplicationForOutgoingCallOnHostIfNecessary", v5, 2u);
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v4, &stru_10061E7F8);
}

- (BOOL)_updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:(id)request
{
  requestCopy = request;
  provider = [requestCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if ((isTelephonyProvider & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dial Request isn't for not telephony provider", buf, 2u);
    }

    goto LABEL_7;
  }

  localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
  if (!localSenderIdentityAccountUUID)
  {
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];

    if (localSenderIdentityUUID)
    {
      goto LABEL_7;
    }

    callStateController = [(CSDRelayController *)self callStateController];
    callProviderManager = [callStateController callProviderManager];
    v14 = [callProviderManager localProvidersByIdentifierForRemoteClients:0];

    v15 = [v14 objectForKeyedSubscript:@"com.apple.coretelephony"];
    prioritizedSenderIdentities = [v15 prioritizedSenderIdentities];
    if ([prioritizedSenderIdentities count] <= 1)
    {
    }

    else
    {
      handle = [requestCopy handle];

      if (handle)
      {
        handle2 = [requestCopy handle];
        v19 = [CNContact tu_contactHandlesForHandle:handle2];
        v20 = [CNContact predicateForContactsMatchingHandleStrings:v19];

        v21 = +[CNGeminiManager descriptorForRequiredKeys];
        v44 = v21;
        v22 = [NSArray arrayWithObjects:&v44 count:1];

        v23 = +[TUCallCenter sharedInstance];
        contactStore = [v23 contactStore];
        v41 = 0;
        v25 = [contactStore unifiedContactsMatchingPredicate:v20 keysToFetch:v22 error:&v41];
        v26 = v41;

        if ([v25 count])
        {
          v39 = v22;
          firstObject = [v25 firstObject];
          contactGeminiManager = [requestCopy contactGeminiManager];
          v40 = v26;
          v29 = [contactGeminiManager bestSenderIdentityForContact:firstObject error:&v40];
          v38 = v40;

          v30 = sub_100004778();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v29;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Fetched sender identifity for Contact  %@", buf, 0xCu);
          }

          v9 = v29 != 0;
          if (v29)
          {
            v37 = v20;
            accountUUID = [v29 accountUUID];
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = accountUUID;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Contact preferred accountUUIDData %@", buf, 0xCu);
            }

            [requestCopy setLocalSenderIdentityAccountUUID:accountUUID];
            prioritizedSenderIdentities2 = [v15 prioritizedSenderIdentities];
            provider2 = [requestCopy provider];
            [provider2 setPrioritizedSenderIdentities:prioritizedSenderIdentities2];

            v20 = v37;
            v35 = v38;
          }

          else
          {
            accountUUID = sub_100004778();
            v36 = os_log_type_enabled(accountUUID, OS_LOG_TYPE_ERROR);
            v35 = v38;
            if (v38)
            {
              if (v36)
              {
                sub_10047BC04();
              }
            }

            else if (v36)
            {
              sub_10047BC6C(requestCopy);
            }
          }

          v22 = v39;
        }

        else
        {
          firstObject = sub_100004778();
          if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
          {
            sub_10047BCF0(requestCopy);
          }

          v9 = 0;
          v35 = v26;
        }

        goto LABEL_31;
      }
    }

    v9 = 0;
LABEL_31:

    goto LABEL_8;
  }

LABEL_7:
  v9 = 0;
LABEL_8:

  return v9;
}

- (void)handleDialCallMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion
{
  clientCopy = client;
  destinationCopy = destination;
  deviceCopy = device;
  completionCopy = completion;
  dialRequest = [clientCopy dialRequest];
  isSOS = [dialRequest isSOS];

  if (isSOS)
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "For received dial call message, the dial request is SOS, so disconnecting all existing calls immediately.", buf, 2u);
    }

    v17 = +[TUCallCenter sharedInstance];
    [v17 disconnectAllCalls];
  }

  if (deviceCopy)
  {
    v18 = +[CSDRelayIDSService sharedInstance];
    pairedDevice = [v18 pairedDevice];
    v20 = [pairedDevice isEqual:deviceCopy];

    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  v22 = +[CSDRouteManager sharedInstance];
  isEligibleRouteAvailable = [v22 isEligibleRouteAvailable];

  tuProvider = [clientCopy tuProvider];
  isTinCanProvider = [tuProvider isTinCanProvider];

  if (isTinCanProvider & 1) == 0 && (([clientCopy hasSourceIdentifier] | v21) & 1) == 0 && ((objc_msgSend(clientCopy, "cannotRelayAudioOrVideoOnPairedDevice") | isEligibleRouteAvailable))
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      cannotRelayAudioOrVideoOnPairedDevice = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
      *buf = 67109376;
      *v56 = cannotRelayAudioOrVideoOnPairedDevice;
      *&v56[4] = 1024;
      *&v56[6] = isEligibleRouteAvailable;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Dialing without relay because cannotRelayAudioOrVideoOnPairedDevice is set (%d) or an eligible route is available (%d)", buf, 0xEu);
    }

    dialRequest2 = [clientCopy dialRequest];
    [(CSDRelayConferenceConnection *)dialRequest2 setEndpointOnCurrentDevice:1];
    v29 = +[TUCallCenter sharedInstance];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100206060;
    v51[3] = &unk_10061E840;
    v52 = clientCopy;
    v53 = destinationCopy;
    selfCopy = self;
    [v29 dialWithRequest:dialRequest2 completion:v51];

    (*(completionCopy + 2))(completionCopy, 0, 0);
    goto LABEL_26;
  }

  v30 = sub_100004778();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    hasSourceIdentifier = [clientCopy hasSourceIdentifier];
    cannotRelayAudioOrVideoOnPairedDevice2 = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
    *buf = 67109888;
    *v56 = isTinCanProvider;
    *&v56[4] = 1024;
    *&v56[6] = hasSourceIdentifier;
    v57 = 1024;
    v58 = cannotRelayAudioOrVideoOnPairedDevice2;
    v59 = 1024;
    v60 = isEligibleRouteAvailable;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Dialing with relay. isTinCanProvider: %d, message.hasSourceIdentifier: %d, message.cannotRelayAudioOrVideoOnPairedDevice: %d, eligibleRouteAvailable: %d", buf, 0x1Au);
  }

  v33 = +[TUCallCenter sharedInstance];
  if (([v33 anyCallIsEndpointOnCurrentDevice] & 1) == 0)
  {

    goto LABEL_22;
  }

  dialRequest3 = [clientCopy dialRequest];
  isSOS2 = [dialRequest3 isSOS];

  if (isSOS2)
  {
LABEL_22:
    uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
    dialRequest2 = [[CSDRelayConferenceConnection alloc] initWithIdentifier:uniqueProxyIdentifier];
    [(CSDRelayConferenceConnection *)dialRequest2 setHost:1];
    [(CSDRelayConferenceConnection *)dialRequest2 setAudioDisabled:1];
    tuProvider2 = [clientCopy tuProvider];
    if ([tuProvider2 isTelephonyProvider])
    {
      v42 = +[TUCallCapabilities isWiFiCallingCurrentlyAvailable]^ 1;
    }

    else
    {
      v42 = 0;
    }

    [(CSDRelayConferenceConnection *)dialRequest2 setUsingBaseband:v42];

    v43 = +[CSDRelayConferenceInterface sharedInstance];
    inviteData = [clientCopy inviteData];
    relayInviteDictionary = [inviteData relayInviteDictionary];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100206154;
    v47[3] = &unk_10061E8E0;
    v47[4] = self;
    v48 = clientCopy;
    v49 = uniqueProxyIdentifier;
    v50 = completionCopy;
    v46 = uniqueProxyIdentifier;
    [v43 prepareConferenceConnection:dialRequest2 remoteInviteDictionary:relayInviteDictionary completion:v47];

LABEL_26:
    goto LABEL_27;
  }

  v36 = sub_100004778();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [clientCopy typeString];
    *buf = 138412290;
    *v56 = typeString;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some non-relaying calls. Sending device busy message.", buf, 0xCu);
  }

  relayMessagingController = [(CSDRelayController *)self relayMessagingController];
  uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
  [relayMessagingController sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:uniqueProxyIdentifier2];

  (*(completionCopy + 2))(completionCopy, 0, 0);
LABEL_27:
}

- (void)handleJoinConversationMessageFromClient:(id)client destination:(id)destination device:(id)device completion:(id)completion
{
  clientCopy = client;
  destinationCopy = destination;
  completionCopy = completion;
  joinConversationRequest = [clientCopy joinConversationRequest];
  [joinConversationRequest setEndpointOnCurrentDevice:0];
  [joinConversationRequest setHostedOnCurrentDevice:1];
  v13 = [NSUUID alloc];
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v15 = [v13 initWithUUIDString:uniqueProxyIdentifier];
  [joinConversationRequest setUUID:v15];

  v16 = +[TUCallCenter sharedInstance];
  LODWORD(uniqueProxyIdentifier) = [v16 anyCallIsEndpointOnCurrentDevice];

  if (uniqueProxyIdentifier)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [clientCopy typeString];
      *buf = 138412290;
      v39 = typeString;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some non-relaying calls. Sending device busy message.", buf, 0xCu);
    }

    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    [relayMessagingController sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:uniqueProxyIdentifier2];

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  uUID = [joinConversationRequest UUID];
  uUIDString = [uUID UUIDString];

  v23 = [[CSDRelayConferenceConnection alloc] initWithIdentifier:uUIDString];
  [(CSDRelayConferenceConnection *)v23 setHost:1];
  [(CSDRelayConferenceConnection *)v23 setAudioDisabled:1];
  v24 = +[CSDRelayConferenceInterface sharedInstance];
  inviteData = [clientCopy inviteData];
  relayInviteDictionary = [inviteData relayInviteDictionary];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100206B28;
  v32[3] = &unk_10061E930;
  v32[4] = self;
  v33 = joinConversationRequest;
  v34 = destinationCopy;
  v35 = uUIDString;
  v36 = clientCopy;
  v37 = completionCopy;
  v27 = completionCopy;
  v28 = clientCopy;
  v29 = uUIDString;
  v30 = destinationCopy;
  v31 = joinConversationRequest;
  [v24 prepareConferenceConnection:v23 remoteInviteDictionary:relayInviteDictionary completion:v32];
}

- (void)handleAnswerCallMessageFromClient:(id)client destination:(id)destination device:(id)device
{
  clientCopy = client;
  destinationCopy = destination;
  deviceCopy = device;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v12 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v12)
  {
    v16 = sub_100004778();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_46:

      goto LABEL_47;
    }

    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    allCalls = [(CSDRelayController *)self allCalls];
    *buf = 138412546;
    *v41 = uniqueProxyIdentifier2;
    *&v41[8] = 2112;
    v42 = allCalls;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);

LABEL_45:
    goto LABEL_46;
  }

  if (deviceCopy)
  {
    v13 = +[CSDRelayIDSService sharedInstance];
    pairedDevice = [v13 pairedDevice];
    v15 = [pairedDevice isEqual:deviceCopy];
  }

  else
  {
    v15 = 0;
  }

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  if ([featureFlags LVMEverywhere] && (objc_msgSend(clientCopy, "isScreening") & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v15)
  {
    if ([clientCopy cannotRelayAudioOrVideoOnPairedDevice])
    {
LABEL_11:

LABEL_12:
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v41 = [clientCopy wantsHoldMusic];
        *&v41[4] = 1024;
        *&v41[6] = [clientCopy cannotRelayAudioOrVideoOnPairedDevice];
        LOWORD(v42) = 1024;
        *(&v42 + 2) = [clientCopy isScreening];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Answering without relay because wantsHoldMusic is set (%d) or cannotRelayAudioOrVideoOnPairedDevice is set (%d) or screening (%d)", buf, 0x14u);
      }

      v21 = +[CSDRouteManager sharedInstance];
      v16 = [v21 preferredRouteForCall:v12];

      uniqueProxyIdentifier2 = [[TUAnswerRequest alloc] initWithCall:v12];
      if (v16)
      {
        [v16 uniqueIdentifier];
      }

      else
      {
        [clientCopy sourceIdentifier];
      }
      v25 = ;
      [uniqueProxyIdentifier2 setSourceIdentifier:v25];

      [uniqueProxyIdentifier2 setWantsHoldMusic:{objc_msgSend(clientCopy, "wantsHoldMusic")}];
      [uniqueProxyIdentifier2 setPauseVideoToStart:{objc_msgSend(clientCopy, "wantsHoldMusic")}];
      if ([clientCopy receptionistState] && objc_msgSend(v12, "isReceptionistCapable") && (-[CSDRelayHostController featureFlags](self, "featureFlags"), v26 = objc_claimAutoreleasedReturnValue(), v27 = TUReceptionistAvailable(), v26, (v27 & 1) != 0))
      {
        isScreening = 2;
      }

      else
      {
        if ([clientCopy receptionistState])
        {
          v29 = sub_100004778();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Downgrading to LVM because receptionist is not available", buf, 2u);
          }
        }

        isScreening = [clientCopy isScreening];
      }

      [uniqueProxyIdentifier2 setScreeningType:isScreening];
      if ([v12 isVideo])
      {
        if ([clientCopy hasProtoVideo])
        {
          v30 = +[FTDeviceSupport sharedInstance];
          isGreenTea = [v30 isGreenTea];

          if ((isGreenTea & 1) == 0)
          {
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Requesting downgrade to audio because paired device requested to answer call and we are not green tea", buf, 2u);
            }

            [uniqueProxyIdentifier2 setBehavior:4];
          }
        }
      }

      v33 = +[TUCallCenter sharedInstance];
      [v33 answerWithRequest:uniqueProxyIdentifier2];

      if ([clientCopy isExpectedEndpointOnMessagingDevice])
      {
        [v12 setExpectedRelayClientDestination:destinationCopy];
      }

      goto LABEL_45;
    }

    wantsHoldMusic = [clientCopy wantsHoldMusic];

    if (wantsHoldMusic)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  featureFlags2 = [(CSDRelayHostController *)self featureFlags];
  if (![featureFlags2 LVMEverywhere] || !objc_msgSend(v12, "isScreening"))
  {

    goto LABEL_26;
  }

  isScreening2 = [clientCopy isScreening];

  if (isScreening2)
  {
LABEL_26:
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1002077F0;
    v37[3] = &unk_100619D88;
    v38 = v12;
    v39 = clientCopy;
    [(CSDRelayHostController *)self _answerHostedCall:v38 completionHandler:v37];

    goto LABEL_47;
  }

  if (([v12 isHostedOnCurrentDevice] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v35 = sub_100004778();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "set screening to NO", buf, 2u);
    }

    [v12 setScreening:0];
    [v12 setReceptionistState:7];
    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    [relayMessagingController sendPushCallsMessageToClientDestination:destinationCopy];
  }

  else
  {
    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v41 = v12;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Ignoring request to answer call since this message was meant for the primary host device. Marking the call as answeredElsewhere: %@", buf, 0xCu);
    }

    [v12 setLocallyDisconnectedWithReasonIfNone:1];
  }

LABEL_47:
}

- (void)handleDisconnectCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 disconnectCall:v6 withReason:{objc_msgSend(clientCopy, "disconnectedReason")}];

    v8 = +[CSDRelayConferenceInterface sharedInstance];
    uniqueProxyIdentifier2 = [v6 uniqueProxyIdentifier];
    [v8 stopConferenceForIdentifier:uniqueProxyIdentifier2];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier3 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v12 = 138412546;
      v13 = uniqueProxyIdentifier3;
      v14 = 2112;
      v15 = allCalls;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v12, 0x16u);
    }
  }
}

- (void)handleHoldCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 holdCall:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleUnholdCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 unholdCall:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleGroupCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v9 = sub_100004778();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    allCalls = [(CSDRelayController *)self allCalls];
    *buf = 138412546;
    v25 = uniqueProxyIdentifier2;
    v26 = 2112;
    v27 = allCalls;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);

    goto LABEL_13;
  }

  if ([clientCopy otherUniqueProxyIdentifiersCount])
  {
    otherUniqueProxyIdentifiers = [clientCopy otherUniqueProxyIdentifiers];
    firstObject = [otherUniqueProxyIdentifiers firstObject];
    v9 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:firstObject];

    if (v9)
    {
      v10 = +[TUCallCenter sharedInstance];
      [v10 groupCall:v6 withOtherCall:v9];

      goto LABEL_17;
    }

    uniqueProxyIdentifier2 = sub_100004778();
    if (os_log_type_enabled(uniqueProxyIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      otherUniqueProxyIdentifiers2 = [clientCopy otherUniqueProxyIdentifiers];
      firstObject2 = [otherUniqueProxyIdentifiers2 firstObject];
      allCalls2 = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v25 = firstObject2;
      v26 = 2112;
      v27 = allCalls2;
      _os_log_impl(&_mh_execute_header, uniqueProxyIdentifier2, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with other uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }

LABEL_13:

    goto LABEL_17;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No other unique proxy identifiers included. Assuming legacy behavior", buf, 2u);
  }

  v14 = +[TUCallCenter sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100208060;
  v22[3] = &unk_10061A040;
  v15 = v6;
  v23 = v15;
  v16 = [v14 callPassingTest:v22];

  if (v16)
  {
    v17 = +[TUCallCenter sharedInstance];
    [v17 groupCall:v15 withOtherCall:v16];
  }

  else
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      allCalls3 = [(CSDRelayController *)self allCalls];
      *buf = 138412290;
      v25 = allCalls3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find another call to group with. All calls: %@", buf, 0xCu);
    }
  }

  v9 = v23;
LABEL_17:
}

- (void)handleUngroupCallMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 ungroupCall:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleSwapCallsMessageFromClient:(id)client
{
  v3 = +[TUCallCenter sharedInstance];
  [v3 swapCalls];
}

- (void)handleEndActiveAndAnswerMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002083C0;
    v10[3] = &unk_100619D38;
    v11 = v6;
    [(CSDRelayHostController *)self _answerHostedCall:v11 completionHandler:v10];
    v7 = v11;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v13 = uniqueProxyIdentifier2;
      v14 = 2112;
      v15 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleEndHeldAndAnswerMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1002085A8;
    v10[3] = &unk_100619D38;
    v11 = v6;
    [(CSDRelayHostController *)self _answerHostedCall:v11 completionHandler:v10];
    v7 = v11;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v13 = uniqueProxyIdentifier2;
      v14 = 2112;
      v15 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleHoldActiveAndAnswerMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100208790;
    v10[3] = &unk_100619D38;
    v11 = v6;
    [(CSDRelayHostController *)self _answerHostedCall:v11 completionHandler:v10];
    v7 = v11;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v13 = uniqueProxyIdentifier2;
      v14 = 2112;
      v15 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleDisconnectCurrentCallMessageFromClient:(id)client
{
  clientCopy = client;
  automaticCallActivationDisabled = [clientCopy automaticCallActivationDisabled];
  v5 = +[TUCallCenter sharedInstance];
  v6 = v5;
  if (automaticCallActivationDisabled)
  {
    [v5 disconnectCurrentCall];
  }

  else
  {
    [v5 disconnectCurrentCallAndActivateHeld];
  }

  v8 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];

  [v8 stopConferenceForIdentifier:uniqueProxyIdentifier];
}

- (void)handleDisconnectAllCallsMessageFromClient:(id)client
{
  clientCopy = client;
  v4 = +[TUCallCenter sharedInstance];
  [v4 disconnectAllCalls];

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];

  [v6 stopConferenceForIdentifier:uniqueProxyIdentifier];
}

- (void)handleSendHardPauseDigitsMessageFromClient:(id)client
{
  clientCopy = client;
  uniqueProxyIdentifier = [clientCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [clientCopy uniqueProxyIdentifier];
    v7 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier2];
LABEL_3:

    [v7 sendHardPauseDigits];
    goto LABEL_4;
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No call was specified with SendHardPauseDigits message...", &v11, 2u);
  }

  v9 = +[TUCallCenter sharedInstance];
  v7 = [v9 callPassingTest:&stru_10061E950];

  v10 = sub_100004778();
  uniqueProxyIdentifier2 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, uniqueProxyIdentifier2, OS_LOG_TYPE_DEFAULT, "...so sending hard pause digits for call %@", &v11, 0xCu);
    }

    goto LABEL_3;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10047BFA8(uniqueProxyIdentifier2);
  }

LABEL_4:
}

- (void)handleRequestCallContextMessageFromClient:(id)client fromDevice:(id)device
{
  deviceCopy = device;
  relayMessagingController = [(CSDRelayController *)self relayMessagingController];
  [relayMessagingController sendResetStateMessageToClient];

  relayMessagingController2 = [(CSDRelayController *)self relayMessagingController];
  callStateController = [(CSDRelayController *)self callStateController];
  callProviderManager = [callStateController callProviderManager];
  [relayMessagingController2 sendUpdateCallContextMessageToClientForCallProviderManager:callProviderManager];

  LODWORD(relayMessagingController2) = [deviceCopy canReceiveRelayedGFTCalls];
  if (relayMessagingController2)
  {
    relayMessagingController3 = [(CSDRelayController *)self relayMessagingController];
    v10 = +[TUCallCenter sharedInstance];
    conversationManager = [v10 conversationManager];
    activeConversations = [conversationManager activeConversations];
    allObjects = [activeConversations allObjects];
    [relayMessagingController3 sendUpdateConversationsMessageToClient:allObjects];
  }
}

- (void)handlePushRelayingCallsMessageFromClient:(id)client
{
  clientCopy = client;
  v4 = +[TUCallCenter sharedInstance];
  callsWithAnEndpointElsewhere = [v4 callsWithAnEndpointElsewhere];
  firstObject = [callsWithAnEndpointElsewhere firstObject];

  if (firstObject)
  {
    sourceIdentifier = [clientCopy sourceIdentifier];
    if (!sourceIdentifier)
    {
      goto LABEL_4;
    }

    v8 = sourceIdentifier;
    v9 = +[CSDRouteManager sharedInstance];
    sourceIdentifier2 = [clientCopy sourceIdentifier];
    v11 = [v9 isAnyRouteAvailableWithUniqueIdentifier:sourceIdentifier2 forCall:firstObject];

    if (!v11)
    {
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        sourceIdentifier3 = [clientCopy sourceIdentifier];
        *buf = 138412290;
        v34 = sourceIdentifier3;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find any audio route with source identifier %@. Ignoring push relaying calls request", buf, 0xCu);
      }
    }

    else
    {
LABEL_4:
      sourceIdentifier4 = [clientCopy sourceIdentifier];

      if (sourceIdentifier4)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          sourceIdentifier5 = [clientCopy sourceIdentifier];
          *buf = 138412290;
          v34 = sourceIdentifier5;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting sourceIdentifier to %@ for all calls before pulling", buf, 0xCu);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = +[TUCallCenter sharedInstance];
        currentAudioAndVideoCalls = [v15 currentAudioAndVideoCalls];

        v17 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v29;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v29 != v19)
              {
                objc_enumerationMutation(currentAudioAndVideoCalls);
              }

              v21 = *(*(&v28 + 1) + 8 * i);
              sourceIdentifier6 = [clientCopy sourceIdentifier];
              [v21 setSourceIdentifier:sourceIdentifier6];
            }

            v18 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v18);
        }
      }

      else
      {
        currentAudioAndVideoCalls = +[NSURL faceTimeShowInCallUIURL];
        v27 = sub_100004778();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = currentAudioAndVideoCalls;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Opening URL for handled pushRelayingCalls message from client: %@", buf, 0xCu);
        }

        TUOpenURL();
      }

      v23 = +[TUCallCenter sharedInstance];
      [v23 pullRelayingCallsFromClient];
    }
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = +[TUCallCenter sharedInstance];
      _allCalls = [v24 _allCalls];
      *buf = 138412290;
      v34 = _allCalls;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to pull relaying calls from client when no calls with an endpoint elsewhere exist. All calls: %@", buf, 0xCu);
    }
  }
}

- (void)handlePickRouteMessageFromClient:(id)client
{
  route = [client route];
  tuRoute = [route tuRoute];

  v4 = +[TUCallCenter sharedInstance];
  routeController = [v4 routeController];
  [routeController pickRoute:tuRoute];
}

- (void)pushHostedCallsForRemoteInviteDictionary:(id)dictionary destination:(id)destination toPairedDevice:(BOOL)device completion:(id)completion
{
  deviceCopy = device;
  dictionaryCopy = dictionary;
  destinationCopy = destination;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1000286F4;
  v32[4] = sub_100032904;
  completionCopy = completion;
  v33 = objc_retainBlock(completionCopy);
  v12 = +[TUCallCenter sharedInstance];
  if ([v12 hasCurrentVideoCalls] & deviceCopy)
  {
    v13 = +[FTDeviceSupport sharedInstance];
    isGreenTea = [v13 isGreenTea];

    if (isGreenTea)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] We cannot send video calls to audio only device in china", buf, 2u);
      }

      (*(completionCopy + 2))(completionCopy, 0);
      goto LABEL_24;
    }
  }

  else
  {
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = +[TUCallCenter sharedInstance];
  currentAudioAndVideoCalls = [v16 currentAudioAndVideoCalls];

  v18 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        if ([v21 hasRelaySupport:2])
        {
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            receptionistState = [v21 receptionistState];
            *buf = 67109120;
            LODWORD(v35) = receptionistState;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] call.receptionistState: %d", buf, 8u);
          }

          if ([v21 receptionistState])
          {
            [v21 setUplinkMuted:1];
          }

          [v21 setEndpointOnCurrentDevice:0];
          [v21 setExpectedRelayClientDestination:destinationCopy];
          v24 = +[CSDRelayConferenceInterface sharedInstance];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100209570;
          v27[3] = &unk_10061E9A0;
          v27[5] = self;
          v27[6] = v32;
          v27[4] = v21;
          [v24 prepareConferenceForCall:v21 remoteInviteDictionary:dictionaryCopy completion:v27];
        }

        else
        {
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v35 = v21;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to push relaying calls to client but current call: %@ does not support audio+video relay", buf, 0xCu);
          }
        }
      }

      v18 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

LABEL_24:
  _Block_object_dispose(v32, 8);
}

- (void)handleBuzzMemberMessageFromClient:(id)client
{
  clientCopy = client;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    conversationMembers = [clientCopy conversationMembers];
    firstObject = [conversationMembers firstObject];
    tuConversationMember = [firstObject tuConversationMember];

    v11 = [NSUUID alloc];
    conversationUUIDString = [clientCopy conversationUUIDString];
    v13 = [v11 initWithUUIDString:conversationUUIDString];

    conversationManager = [(CSDRelayHostController *)self conversationManager];
    v15 = [conversationManager activeConversationWithUUID:v13];

    if (v15 && tuConversationMember)
    {
      conversationManager2 = [(CSDRelayHostController *)self conversationManager];
      [conversationManager2 buzzMember:tuConversationMember destinationID:0 invitationContext:0 conversation:v15];
    }

    else
    {
      conversationManager2 = sub_100004778();
      if (os_log_type_enabled(conversationManager2, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412802;
        v18 = v13;
        v19 = 2112;
        v20 = tuConversationMember;
        v21 = 2112;
        v22 = clientCopy;
        _os_log_error_impl(&_mh_execute_header, conversationManager2, OS_LOG_TYPE_ERROR, "No active conversation with UUID: %@ or member: %@ found for buzz member message %@", &v17, 0x20u);
      }
    }
  }
}

- (void)handleAddMemberMessageFromClient:(id)client
{
  clientCopy = client;
  queue = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (gftOnWatch)
  {
    v8 = +[NSMutableSet set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    conversationMembers = [clientCopy conversationMembers];
    v10 = [conversationMembers countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(conversationMembers);
          }

          tuConversationMember = [*(*(&v32 + 1) + 8 * v13) tuConversationMember];
          [v8 addObject:tuConversationMember];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [conversationMembers countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    v15 = +[NSMutableSet set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    handlesToInvites = [clientCopy handlesToInvites];
    v17 = [handlesToInvites countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(handlesToInvites);
          }

          tuHandle = [*(*(&v28 + 1) + 8 * v20) tuHandle];
          [v15 addObject:tuHandle];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [handlesToInvites countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v18);
    }

    v22 = [NSUUID alloc];
    conversationUUIDString = [clientCopy conversationUUIDString];
    v24 = [v22 initWithUUIDString:conversationUUIDString];

    conversationManager = [(CSDRelayHostController *)self conversationManager];
    v26 = [conversationManager activeConversationWithUUID:v24];

    if (v26 && ([v15 count] || objc_msgSend(v8, "count")))
    {
      conversationManager2 = [(CSDRelayHostController *)self conversationManager];
      [conversationManager2 addRemoteMembers:v8 otherInvitedHandles:v15 invitationPreferences:0 toConversation:v26];
    }

    else
    {
      conversationManager2 = sub_100004778();
      if (os_log_type_enabled(conversationManager2, OS_LOG_TYPE_ERROR))
      {
        sub_10047C124();
      }
    }
  }
}

- (void)handleReceptionistCustomReplyFromClient:(id)client
{
  clientCopy = client;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistCustomReplyFromClient", buf, 2u);
  }

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if ((receptionistEnabled & 1) == 0)
  {
    callStateController = sub_100004778();
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistCustomReplyFromClient message", v12, 2u);
    }

    goto LABEL_8;
  }

  customReply = [clientCopy customReply];

  if (customReply)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    answeringMachineController = [callStateController answeringMachineController];
    customReply2 = [clientCopy customReply];
    [answeringMachineController setCustomReply:customReply2];

LABEL_8:
  }
}

- (void)handleStartReceptionistReplyFromClient:(id)client
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleStartReceptionistReplyFromClient", buf, 2u);
  }

  featureFlags = [(CSDRelayHostController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    answeringMachineController = [callStateController answeringMachineController];
    [answeringMachineController startReceptionistReply];
  }

  else
  {
    callStateController = sub_100004778();
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleStartReceptionistReplyFromClient message", v9, 2u);
    }
  }
}

- (void)handlePerformSmartHoldingRequestFromClient:(id)client
{
  clientCopy = client;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handlePerformSmartHoldingRequestFromClient", buf, 2u);
  }

  smartHoldingRequest = [clientCopy smartHoldingRequest];
  if (smartHoldingRequest)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    callContainer = [callStateController callContainer];
    callUUID = [smartHoldingRequest callUUID];
    v10 = [callContainer callWithUniqueProxyIdentifier:callUUID];

    if (v10)
    {
      callStateController2 = [(CSDRelayController *)self callStateController];
      smartHoldingController = [callStateController2 smartHoldingController];

      if (smartHoldingController)
      {
        callStateController3 = [(CSDRelayController *)self callStateController];
        smartHoldingController2 = [callStateController3 smartHoldingController];
        tuSmartHoldingRequest = [smartHoldingRequest tuSmartHoldingRequest];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10020A30C;
        v16[3] = &unk_10061A4C0;
        v17 = smartHoldingRequest;
        [smartHoldingController2 performRequest:tuSmartHoldingRequest call:v10 completion:v16];
      }
    }
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C198();
    }
  }
}

- (BOOL)_endCallWithActiveReceptionistState:(id)state reason:(int)reason
{
  stateCopy = state;
  receptionistState = [stateCopy receptionistState];
  if (receptionistState)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      receptionistState2 = [stateCopy receptionistState];
      v14 = 1024;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ending call with receptionistState %lu, reason: %d", &v12, 0x12u);
    }

    relayMessagingController = [(CSDRelayController *)self relayMessagingController];
    [relayMessagingController sendCallDisconnectedMessageToClientForCall:stateCopy];

    if ([stateCopy isHostedOnCurrentDevice] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [stateCopy disconnectWithReason:54];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "not a CSDProviderCall class or not hosted on current device", &v12, 2u);
      }
    }
  }

  return receptionistState != 0;
}

@end