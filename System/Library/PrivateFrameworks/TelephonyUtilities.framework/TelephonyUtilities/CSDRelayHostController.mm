@interface CSDRelayHostController
- (BOOL)_endCallWithActiveReceptionistState:(id)a3 reason:(int)a4;
- (BOOL)_updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:(id)a3;
- (CSDRelayHostController)initWithQueue:(id)a3 conversationManager:(id)a4 featureFlags:(id)a5;
- (id)callWithUniqueProxyIdentifier:(id)a3;
- (void)_answerHostedCall:(id)a3 completionHandler:(id)a4;
- (void)_conferenceTransport:(id)a3 didStopForCall:(id)a4 cleanly:(BOOL)a5 error:(id)a6;
- (void)_launchInCallApplicationForOutgoingCallOnHostIfNecessary;
- (void)handleAddMemberMessageFromClient:(id)a3;
- (void)handleAnswerCallMessageFromClient:(id)a3 destination:(id)a4 device:(id)a5;
- (void)handleBuzzMemberMessageFromClient:(id)a3;
- (void)handleDialCallMessageFromClient:(id)a3 destination:(id)a4 device:(id)a5 completion:(id)a6;
- (void)handleDisconnectAllCallsMessageFromClient:(id)a3;
- (void)handleDisconnectCallMessageFromClient:(id)a3;
- (void)handleDisconnectCurrentCallMessageFromClient:(id)a3;
- (void)handleEndActiveAndAnswerMessageFromClient:(id)a3;
- (void)handleEndHeldAndAnswerMessageFromClient:(id)a3;
- (void)handleGroupCallMessageFromClient:(id)a3;
- (void)handleHoldActiveAndAnswerMessageFromClient:(id)a3;
- (void)handleHoldCallMessageFromClient:(id)a3;
- (void)handleJoinConversationMessageFromClient:(id)a3 destination:(id)a4 device:(id)a5 completion:(id)a6;
- (void)handlePerformSmartHoldingRequestFromClient:(id)a3;
- (void)handlePickRouteMessageFromClient:(id)a3;
- (void)handlePushRelayingCallsMessageFromClient:(id)a3;
- (void)handleReceptionistCustomReplyFromClient:(id)a3;
- (void)handleRequestCallContextMessageFromClient:(id)a3 fromDevice:(id)a4;
- (void)handleSendHardPauseDigitsMessageFromClient:(id)a3;
- (void)handleStartReceptionistReplyFromClient:(id)a3;
- (void)handleSwapCallsMessageFromClient:(id)a3;
- (void)handleUngroupCallMessageFromClient:(id)a3;
- (void)handleUnholdCallMessageFromClient:(id)a3;
- (void)pushHostedCallsForRemoteInviteDictionary:(id)a3 destination:(id)a4 toPairedDevice:(BOOL)a5 completion:(id)a6;
@end

@implementation CSDRelayHostController

- (CSDRelayHostController)initWithQueue:(id)a3 conversationManager:(id)a4 featureFlags:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSDRelayHostController;
  v12 = [(CSDRelayHostController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    objc_storeStrong(&v13->_featureFlags, a5);
    objc_storeStrong(&v13->_conversationManager, a4);
  }

  return v13;
}

- (id)callWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callWithUniqueProxyIdentifier:v4];

  return v7;
}

- (void)_answerHostedCall:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([v6 isHostedOnCurrentDevice])
  {
    v9 = [(CSDRelayController *)self relayMessagingController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100204FC8;
    v11[3] = &unk_10061E7D8;
    v12 = v6;
    v13 = self;
    v14 = v7;
    v10 = [v12 uniqueProxyIdentifier];
    [v9 performBlockOnTransportAvailability:v11 forIdentifier:v10];
  }
}

- (void)_conferenceTransport:(id)a3 didStopForCall:(id)a4 cleanly:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(v13);

  if ([v11 status] == 5 || objc_msgSend(v11, "status") == 6)
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
    v15 = [v11 relayClientTransport];
    v16 = [v15 isEqualToTransport:v10];

    v17 = sub_100004778();
    v14 = v17;
    if (v16)
    {
      if (v7)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v11;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Conference connection ended for call %@. Disconnecting call normally", &v19, 0xCu);
        }

        v14 = +[TUCallCenter sharedInstance];
        [v14 disconnectCall:v11];
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10047BB7C();
        }

        v14 = +[TUCallCenter sharedInstance];
        [v14 disconnectCall:v11 withReason:8];
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v11 relayClientTransport];
      v19 = 138412546;
      v20 = v10;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not disconnecting call because this conference transport is %@ but the call's current relay client transport is %@", &v19, 0x16u);
    }
  }
}

- (void)_launchInCallApplicationForOutgoingCallOnHostIfNecessary
{
  v2 = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_launchInCallApplicationForOutgoingCallOnHostIfNecessary", v5, 2u);
  }

  v4 = dispatch_get_global_queue(-32768, 0);
  dispatch_async(v4, &stru_10061E7F8);
}

- (BOOL)_updateSenderIdentityBasedOnPreferredSimSettingForDialRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 provider];
  v6 = [v5 isTelephonyProvider];

  if ((v6 & 1) == 0)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Dial Request isn't for not telephony provider", buf, 2u);
    }

    goto LABEL_7;
  }

  v7 = [v4 localSenderIdentityAccountUUID];
  if (!v7)
  {
    v11 = [v4 localSenderIdentityUUID];

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = [(CSDRelayController *)self callStateController];
    v13 = [v12 callProviderManager];
    v14 = [v13 localProvidersByIdentifierForRemoteClients:0];

    v15 = [v14 objectForKeyedSubscript:@"com.apple.coretelephony"];
    v16 = [v15 prioritizedSenderIdentities];
    if ([v16 count] <= 1)
    {
    }

    else
    {
      v17 = [v4 handle];

      if (v17)
      {
        v18 = [v4 handle];
        v19 = [CNContact tu_contactHandlesForHandle:v18];
        v20 = [CNContact predicateForContactsMatchingHandleStrings:v19];

        v21 = +[CNGeminiManager descriptorForRequiredKeys];
        v44 = v21;
        v22 = [NSArray arrayWithObjects:&v44 count:1];

        v23 = +[TUCallCenter sharedInstance];
        v24 = [v23 contactStore];
        v41 = 0;
        v25 = [v24 unifiedContactsMatchingPredicate:v20 keysToFetch:v22 error:&v41];
        v26 = v41;

        if ([v25 count])
        {
          v39 = v22;
          v27 = [v25 firstObject];
          v28 = [v4 contactGeminiManager];
          v40 = v26;
          v29 = [v28 bestSenderIdentityForContact:v27 error:&v40];
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
            v31 = [v29 accountUUID];
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v31;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Contact preferred accountUUIDData %@", buf, 0xCu);
            }

            [v4 setLocalSenderIdentityAccountUUID:v31];
            v33 = [v15 prioritizedSenderIdentities];
            v34 = [v4 provider];
            [v34 setPrioritizedSenderIdentities:v33];

            v20 = v37;
            v35 = v38;
          }

          else
          {
            v31 = sub_100004778();
            v36 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
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
              sub_10047BC6C(v4);
            }
          }

          v22 = v39;
        }

        else
        {
          v27 = sub_100004778();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10047BCF0(v4);
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

- (void)handleDialCallMessageFromClient:(id)a3 destination:(id)a4 device:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 dialRequest];
  v15 = [v14 isSOS];

  if (v15)
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

  if (v12)
  {
    v18 = +[CSDRelayIDSService sharedInstance];
    v19 = [v18 pairedDevice];
    v20 = [v19 isEqual:v12];

    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  v22 = +[CSDRouteManager sharedInstance];
  v23 = [v22 isEligibleRouteAvailable];

  v24 = [v10 tuProvider];
  v25 = [v24 isTinCanProvider];

  if (v25 & 1) == 0 && (([v10 hasSourceIdentifier] | v21) & 1) == 0 && ((objc_msgSend(v10, "cannotRelayAudioOrVideoOnPairedDevice") | v23))
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v10 cannotRelayAudioOrVideoOnPairedDevice];
      *buf = 67109376;
      *v56 = v27;
      *&v56[4] = 1024;
      *&v56[6] = v23;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Dialing without relay because cannotRelayAudioOrVideoOnPairedDevice is set (%d) or an eligible route is available (%d)", buf, 0xEu);
    }

    v28 = [v10 dialRequest];
    [(CSDRelayConferenceConnection *)v28 setEndpointOnCurrentDevice:1];
    v29 = +[TUCallCenter sharedInstance];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100206060;
    v51[3] = &unk_10061E840;
    v52 = v10;
    v53 = v11;
    v54 = self;
    [v29 dialWithRequest:v28 completion:v51];

    (*(v13 + 2))(v13, 0, 0);
    goto LABEL_26;
  }

  v30 = sub_100004778();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v10 hasSourceIdentifier];
    v32 = [v10 cannotRelayAudioOrVideoOnPairedDevice];
    *buf = 67109888;
    *v56 = v25;
    *&v56[4] = 1024;
    *&v56[6] = v31;
    v57 = 1024;
    v58 = v32;
    v59 = 1024;
    v60 = v23;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Dialing with relay. isTinCanProvider: %d, message.hasSourceIdentifier: %d, message.cannotRelayAudioOrVideoOnPairedDevice: %d, eligibleRouteAvailable: %d", buf, 0x1Au);
  }

  v33 = +[TUCallCenter sharedInstance];
  if (([v33 anyCallIsEndpointOnCurrentDevice] & 1) == 0)
  {

    goto LABEL_22;
  }

  v34 = [v10 dialRequest];
  v35 = [v34 isSOS];

  if (v35)
  {
LABEL_22:
    v40 = [v10 uniqueProxyIdentifier];
    v28 = [[CSDRelayConferenceConnection alloc] initWithIdentifier:v40];
    [(CSDRelayConferenceConnection *)v28 setHost:1];
    [(CSDRelayConferenceConnection *)v28 setAudioDisabled:1];
    v41 = [v10 tuProvider];
    if ([v41 isTelephonyProvider])
    {
      v42 = +[TUCallCapabilities isWiFiCallingCurrentlyAvailable]^ 1;
    }

    else
    {
      v42 = 0;
    }

    [(CSDRelayConferenceConnection *)v28 setUsingBaseband:v42];

    v43 = +[CSDRelayConferenceInterface sharedInstance];
    v44 = [v10 inviteData];
    v45 = [v44 relayInviteDictionary];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_100206154;
    v47[3] = &unk_10061E8E0;
    v47[4] = self;
    v48 = v10;
    v49 = v40;
    v50 = v13;
    v46 = v40;
    [v43 prepareConferenceConnection:v28 remoteInviteDictionary:v45 completion:v47];

LABEL_26:
    goto LABEL_27;
  }

  v36 = sub_100004778();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v10 typeString];
    *buf = 138412290;
    *v56 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some non-relaying calls. Sending device busy message.", buf, 0xCu);
  }

  v38 = [(CSDRelayController *)self relayMessagingController];
  v39 = [v10 uniqueProxyIdentifier];
  [v38 sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:v39];

  (*(v13 + 2))(v13, 0, 0);
LABEL_27:
}

- (void)handleJoinConversationMessageFromClient:(id)a3 destination:(id)a4 device:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 joinConversationRequest];
  [v12 setEndpointOnCurrentDevice:0];
  [v12 setHostedOnCurrentDevice:1];
  v13 = [NSUUID alloc];
  v14 = [v9 uniqueProxyIdentifier];
  v15 = [v13 initWithUUIDString:v14];
  [v12 setUUID:v15];

  v16 = +[TUCallCenter sharedInstance];
  LODWORD(v14) = [v16 anyCallIsEndpointOnCurrentDevice];

  if (v14)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v9 typeString];
      *buf = 138412290;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some non-relaying calls. Sending device busy message.", buf, 0xCu);
    }

    v19 = [(CSDRelayController *)self relayMessagingController];
    v20 = [v9 uniqueProxyIdentifier];
    [v19 sendDeviceUnavailableMessageToClientForUniqueProxyIdentifier:v20];

    (*(v11 + 2))(v11, 0, 0);
  }

  v21 = [v12 UUID];
  v22 = [v21 UUIDString];

  v23 = [[CSDRelayConferenceConnection alloc] initWithIdentifier:v22];
  [(CSDRelayConferenceConnection *)v23 setHost:1];
  [(CSDRelayConferenceConnection *)v23 setAudioDisabled:1];
  v24 = +[CSDRelayConferenceInterface sharedInstance];
  v25 = [v9 inviteData];
  v26 = [v25 relayInviteDictionary];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100206B28;
  v32[3] = &unk_10061E930;
  v32[4] = self;
  v33 = v12;
  v34 = v10;
  v35 = v22;
  v36 = v9;
  v37 = v11;
  v27 = v11;
  v28 = v9;
  v29 = v22;
  v30 = v10;
  v31 = v12;
  [v24 prepareConferenceConnection:v23 remoteInviteDictionary:v26 completion:v32];
}

- (void)handleAnswerCallMessageFromClient:(id)a3 destination:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 uniqueProxyIdentifier];
  v12 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v11];

  if (!v12)
  {
    v16 = sub_100004778();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_46:

      goto LABEL_47;
    }

    v17 = [v8 uniqueProxyIdentifier];
    v18 = [(CSDRelayController *)self allCalls];
    *buf = 138412546;
    *v41 = v17;
    *&v41[8] = 2112;
    v42 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);

LABEL_45:
    goto LABEL_46;
  }

  if (v10)
  {
    v13 = +[CSDRelayIDSService sharedInstance];
    v14 = [v13 pairedDevice];
    v15 = [v14 isEqual:v10];
  }

  else
  {
    v15 = 0;
  }

  v19 = [(CSDRelayHostController *)self featureFlags];
  if ([v19 LVMEverywhere] && (objc_msgSend(v8, "isScreening") & 1) != 0)
  {
    goto LABEL_11;
  }

  if (v15)
  {
    if ([v8 cannotRelayAudioOrVideoOnPairedDevice])
    {
LABEL_11:

LABEL_12:
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109632;
        *v41 = [v8 wantsHoldMusic];
        *&v41[4] = 1024;
        *&v41[6] = [v8 cannotRelayAudioOrVideoOnPairedDevice];
        LOWORD(v42) = 1024;
        *(&v42 + 2) = [v8 isScreening];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Answering without relay because wantsHoldMusic is set (%d) or cannotRelayAudioOrVideoOnPairedDevice is set (%d) or screening (%d)", buf, 0x14u);
      }

      v21 = +[CSDRouteManager sharedInstance];
      v16 = [v21 preferredRouteForCall:v12];

      v17 = [[TUAnswerRequest alloc] initWithCall:v12];
      if (v16)
      {
        [v16 uniqueIdentifier];
      }

      else
      {
        [v8 sourceIdentifier];
      }
      v25 = ;
      [v17 setSourceIdentifier:v25];

      [v17 setWantsHoldMusic:{objc_msgSend(v8, "wantsHoldMusic")}];
      [v17 setPauseVideoToStart:{objc_msgSend(v8, "wantsHoldMusic")}];
      if ([v8 receptionistState] && objc_msgSend(v12, "isReceptionistCapable") && (-[CSDRelayHostController featureFlags](self, "featureFlags"), v26 = objc_claimAutoreleasedReturnValue(), v27 = TUReceptionistAvailable(), v26, (v27 & 1) != 0))
      {
        v28 = 2;
      }

      else
      {
        if ([v8 receptionistState])
        {
          v29 = sub_100004778();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Downgrading to LVM because receptionist is not available", buf, 2u);
          }
        }

        v28 = [v8 isScreening];
      }

      [v17 setScreeningType:v28];
      if ([v12 isVideo])
      {
        if ([v8 hasProtoVideo])
        {
          v30 = +[FTDeviceSupport sharedInstance];
          v31 = [v30 isGreenTea];

          if ((v31 & 1) == 0)
          {
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Requesting downgrade to audio because paired device requested to answer call and we are not green tea", buf, 2u);
            }

            [v17 setBehavior:4];
          }
        }
      }

      v33 = +[TUCallCenter sharedInstance];
      [v33 answerWithRequest:v17];

      if ([v8 isExpectedEndpointOnMessagingDevice])
      {
        [v12 setExpectedRelayClientDestination:v9];
      }

      goto LABEL_45;
    }

    v34 = [v8 wantsHoldMusic];

    if (v34)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v22 = [(CSDRelayHostController *)self featureFlags];
  if (![v22 LVMEverywhere] || !objc_msgSend(v12, "isScreening"))
  {

    goto LABEL_26;
  }

  v23 = [v8 isScreening];

  if (v23)
  {
LABEL_26:
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1002077F0;
    v37[3] = &unk_100619D88;
    v38 = v12;
    v39 = v8;
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
    v36 = [(CSDRelayController *)self relayMessagingController];
    [v36 sendPushCallsMessageToClientDestination:v9];
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

- (void)handleDisconnectCallMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    v7 = +[TUCallCenter sharedInstance];
    [v7 disconnectCall:v6 withReason:{objc_msgSend(v4, "disconnectedReason")}];

    v8 = +[CSDRelayConferenceInterface sharedInstance];
    v9 = [v6 uniqueProxyIdentifier];
    [v8 stopConferenceForIdentifier:v9];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 uniqueProxyIdentifier];
      v11 = [(CSDRelayController *)self allCalls];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v12, 0x16u);
    }
  }
}

- (void)handleHoldCallMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

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
      v8 = [v4 uniqueProxyIdentifier];
      v9 = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleUnholdCallMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

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
      v8 = [v4 uniqueProxyIdentifier];
      v9 = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleGroupCallMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

  if (!v6)
  {
    v9 = sub_100004778();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v11 = [v4 uniqueProxyIdentifier];
    v12 = [(CSDRelayController *)self allCalls];
    *buf = 138412546;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);

    goto LABEL_13;
  }

  if ([v4 otherUniqueProxyIdentifiersCount])
  {
    v7 = [v4 otherUniqueProxyIdentifiers];
    v8 = [v7 firstObject];
    v9 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      v10 = +[TUCallCenter sharedInstance];
      [v10 groupCall:v6 withOtherCall:v9];

      goto LABEL_17;
    }

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 otherUniqueProxyIdentifiers];
      v19 = [v18 firstObject];
      v20 = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with other uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
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
      v21 = [(CSDRelayController *)self allCalls];
      *buf = 138412290;
      v25 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find another call to group with. All calls: %@", buf, 0xCu);
    }
  }

  v9 = v23;
LABEL_17:
}

- (void)handleUngroupCallMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

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
      v8 = [v4 uniqueProxyIdentifier];
      v9 = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleSwapCallsMessageFromClient:(id)a3
{
  v3 = +[TUCallCenter sharedInstance];
  [v3 swapCalls];
}

- (void)handleEndActiveAndAnswerMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

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
      v8 = [v4 uniqueProxyIdentifier];
      v9 = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleEndHeldAndAnswerMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

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
      v8 = [v4 uniqueProxyIdentifier];
      v9 = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleHoldActiveAndAnswerMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v5];

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
      v8 = [v4 uniqueProxyIdentifier];
      v9 = [(CSDRelayController *)self allCalls];
      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
    }
  }
}

- (void)handleDisconnectCurrentCallMessageFromClient:(id)a3
{
  v3 = a3;
  v4 = [v3 automaticCallActivationDisabled];
  v5 = +[TUCallCenter sharedInstance];
  v6 = v5;
  if (v4)
  {
    [v5 disconnectCurrentCall];
  }

  else
  {
    [v5 disconnectCurrentCallAndActivateHeld];
  }

  v8 = +[CSDRelayConferenceInterface sharedInstance];
  v7 = [v3 uniqueProxyIdentifier];

  [v8 stopConferenceForIdentifier:v7];
}

- (void)handleDisconnectAllCallsMessageFromClient:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  [v4 disconnectAllCalls];

  v6 = +[CSDRelayConferenceInterface sharedInstance];
  v5 = [v3 uniqueProxyIdentifier];

  [v6 stopConferenceForIdentifier:v5];
}

- (void)handleSendHardPauseDigitsMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];

  if (v5)
  {
    v6 = [v4 uniqueProxyIdentifier];
    v7 = [(CSDRelayHostController *)self callWithUniqueProxyIdentifier:v6];
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
  v6 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "...so sending hard pause digits for call %@", &v11, 0xCu);
    }

    goto LABEL_3;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10047BFA8(v6);
  }

LABEL_4:
}

- (void)handleRequestCallContextMessageFromClient:(id)a3 fromDevice:(id)a4
{
  v5 = a4;
  v6 = [(CSDRelayController *)self relayMessagingController];
  [v6 sendResetStateMessageToClient];

  v7 = [(CSDRelayController *)self relayMessagingController];
  v8 = [(CSDRelayController *)self callStateController];
  v9 = [v8 callProviderManager];
  [v7 sendUpdateCallContextMessageToClientForCallProviderManager:v9];

  LODWORD(v7) = [v5 canReceiveRelayedGFTCalls];
  if (v7)
  {
    v14 = [(CSDRelayController *)self relayMessagingController];
    v10 = +[TUCallCenter sharedInstance];
    v11 = [v10 conversationManager];
    v12 = [v11 activeConversations];
    v13 = [v12 allObjects];
    [v14 sendUpdateConversationsMessageToClient:v13];
  }
}

- (void)handlePushRelayingCallsMessageFromClient:(id)a3
{
  v3 = a3;
  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 callsWithAnEndpointElsewhere];
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [v3 sourceIdentifier];
    if (!v7)
    {
      goto LABEL_4;
    }

    v8 = v7;
    v9 = +[CSDRouteManager sharedInstance];
    v10 = [v3 sourceIdentifier];
    v11 = [v9 isAnyRouteAvailableWithUniqueIdentifier:v10 forCall:v6];

    if (!v11)
    {
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v3 sourceIdentifier];
        *buf = 138412290;
        v34 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find any audio route with source identifier %@. Ignoring push relaying calls request", buf, 0xCu);
      }
    }

    else
    {
LABEL_4:
      v12 = [v3 sourceIdentifier];

      if (v12)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v3 sourceIdentifier];
          *buf = 138412290;
          v34 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting sourceIdentifier to %@ for all calls before pulling", buf, 0xCu);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = +[TUCallCenter sharedInstance];
        v16 = [v15 currentAudioAndVideoCalls];

        v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v28 + 1) + 8 * i);
              v22 = [v3 sourceIdentifier];
              [v21 setSourceIdentifier:v22];
            }

            v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
          }

          while (v18);
        }
      }

      else
      {
        v16 = +[NSURL faceTimeShowInCallUIURL];
        v27 = sub_100004778();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v16;
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
      v25 = [v24 _allCalls];
      *buf = 138412290;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to pull relaying calls from client when no calls with an endpoint elsewhere exist. All calls: %@", buf, 0xCu);
    }
  }
}

- (void)handlePickRouteMessageFromClient:(id)a3
{
  v3 = [a3 route];
  v6 = [v3 tuRoute];

  v4 = +[TUCallCenter sharedInstance];
  v5 = [v4 routeController];
  [v5 pickRoute:v6];
}

- (void)pushHostedCallsForRemoteInviteDictionary:(id)a3 destination:(id)a4 toPairedDevice:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_1000286F4;
  v32[4] = sub_100032904;
  v26 = a6;
  v33 = objc_retainBlock(v26);
  v12 = +[TUCallCenter sharedInstance];
  if ([v12 hasCurrentVideoCalls] & v7)
  {
    v13 = +[FTDeviceSupport sharedInstance];
    v14 = [v13 isGreenTea];

    if (v14)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] We cannot send video calls to audio only device in china", buf, 2u);
      }

      (*(v26 + 2))(v26, 0);
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
  v17 = [v16 currentAudioAndVideoCalls];

  v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v18)
  {
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        if ([v21 hasRelaySupport:2])
        {
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v21 receptionistState];
            *buf = 67109120;
            LODWORD(v35) = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] call.receptionistState: %d", buf, 8u);
          }

          if ([v21 receptionistState])
          {
            [v21 setUplinkMuted:1];
          }

          [v21 setEndpointOnCurrentDevice:0];
          [v21 setExpectedRelayClientDestination:v11];
          v24 = +[CSDRelayConferenceInterface sharedInstance];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100209570;
          v27[3] = &unk_10061E9A0;
          v27[5] = self;
          v27[6] = v32;
          v27[4] = v21;
          [v24 prepareConferenceForCall:v21 remoteInviteDictionary:v10 completion:v27];
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

      v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v18);
  }

LABEL_24:
  _Block_object_dispose(v32, 8);
}

- (void)handleBuzzMemberMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayHostController *)self featureFlags];
  v7 = [v6 gftOnWatch];

  if (v7)
  {
    v8 = [v4 conversationMembers];
    v9 = [v8 firstObject];
    v10 = [v9 tuConversationMember];

    v11 = [NSUUID alloc];
    v12 = [v4 conversationUUIDString];
    v13 = [v11 initWithUUIDString:v12];

    v14 = [(CSDRelayHostController *)self conversationManager];
    v15 = [v14 activeConversationWithUUID:v13];

    if (v15 && v10)
    {
      v16 = [(CSDRelayHostController *)self conversationManager];
      [v16 buzzMember:v10 destinationID:0 invitationContext:0 conversation:v15];
    }

    else
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412802;
        v18 = v13;
        v19 = 2112;
        v20 = v10;
        v21 = 2112;
        v22 = v4;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "No active conversation with UUID: %@ or member: %@ found for buzz member message %@", &v17, 0x20u);
      }
    }
  }
}

- (void)handleAddMemberMessageFromClient:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayHostController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayHostController *)self featureFlags];
  v7 = [v6 gftOnWatch];

  if (v7)
  {
    v8 = +[NSMutableSet set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [v4 conversationMembers];
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v32 + 1) + 8 * v13) tuConversationMember];
          [v8 addObject:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    v15 = +[NSMutableSet set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = [v4 handlesToInvites];
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * v20) tuHandle];
          [v15 addObject:v21];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v18);
    }

    v22 = [NSUUID alloc];
    v23 = [v4 conversationUUIDString];
    v24 = [v22 initWithUUIDString:v23];

    v25 = [(CSDRelayHostController *)self conversationManager];
    v26 = [v25 activeConversationWithUUID:v24];

    if (v26 && ([v15 count] || objc_msgSend(v8, "count")))
    {
      v27 = [(CSDRelayHostController *)self conversationManager];
      [v27 addRemoteMembers:v8 otherInvitedHandles:v15 invitationPreferences:0 toConversation:v26];
    }

    else
    {
      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10047C124();
      }
    }
  }
}

- (void)handleReceptionistCustomReplyFromClient:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistCustomReplyFromClient", buf, 2u);
  }

  v6 = [(CSDRelayHostController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if ((v7 & 1) == 0)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistCustomReplyFromClient message", v12, 2u);
    }

    goto LABEL_8;
  }

  v8 = [v4 customReply];

  if (v8)
  {
    v9 = [(CSDRelayController *)self callStateController];
    v10 = [v9 answeringMachineController];
    v11 = [v4 customReply];
    [v10 setCustomReply:v11];

LABEL_8:
  }
}

- (void)handleStartReceptionistReplyFromClient:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleStartReceptionistReplyFromClient", buf, 2u);
  }

  v5 = [(CSDRelayHostController *)self featureFlags];
  v6 = [v5 receptionistEnabled];

  if (v6)
  {
    v7 = [(CSDRelayController *)self callStateController];
    v8 = [v7 answeringMachineController];
    [v8 startReceptionistReply];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleStartReceptionistReplyFromClient message", v9, 2u);
    }
  }
}

- (void)handlePerformSmartHoldingRequestFromClient:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handlePerformSmartHoldingRequestFromClient", buf, 2u);
  }

  v6 = [v4 smartHoldingRequest];
  if (v6)
  {
    v7 = [(CSDRelayController *)self callStateController];
    v8 = [v7 callContainer];
    v9 = [v6 callUUID];
    v10 = [v8 callWithUniqueProxyIdentifier:v9];

    if (v10)
    {
      v11 = [(CSDRelayController *)self callStateController];
      v12 = [v11 smartHoldingController];

      if (v12)
      {
        v13 = [(CSDRelayController *)self callStateController];
        v14 = [v13 smartHoldingController];
        v15 = [v6 tuSmartHoldingRequest];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10020A30C;
        v16[3] = &unk_10061A4C0;
        v17 = v6;
        [v14 performRequest:v15 call:v10 completion:v16];
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

- (BOOL)_endCallWithActiveReceptionistState:(id)a3 reason:(int)a4
{
  v6 = a3;
  v7 = [v6 receptionistState];
  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      v13 = [v6 receptionistState];
      v14 = 1024;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ending call with receptionistState %lu, reason: %d", &v12, 0x12u);
    }

    v9 = [(CSDRelayController *)self relayMessagingController];
    [v9 sendCallDisconnectedMessageToClientForCall:v6];

    if ([v6 isHostedOnCurrentDevice] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 disconnectWithReason:54];
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

  return v7 != 0;
}

@end