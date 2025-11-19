@interface CSDRelayClientController
- (CSDRelayClientController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4;
- (CSDRelayClientController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4 featureFlags:(id)a5;
- (id)callWithUniqueProxyIdentifier:(id)a3;
- (void)handleAnnouncementHasFinishedChangedFromHost:(id)a3;
- (void)handleCallAnsweredElsewhereMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4;
- (void)handleCallConnectedMessageFromHost:(id)a3;
- (void)handleCallDialedMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4;
- (void)handleCallDisconnectedMessageFromHost:(id)a3;
- (void)handleCallStartedConnectingMessageFromHost:(id)a3;
- (void)handleCaptionsResultFromHost:(id)a3;
- (void)handleConversationProminenceMessageFromHost:(id)a3;
- (void)handleDeviceUnavailableMessageFromHost:(id)a3;
- (void)handleHardPauseDigitsAvailabilityMessageFromHost:(id)a3;
- (void)handleIncomingCallMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4;
- (void)handleInvitationSentMessageFromHost:(id)a3;
- (void)handleLastReceptionistMessageChangedFromHost:(id)a3;
- (void)handleNeedsManualInCallSoundsChangeMessageFromHost:(id)a3;
- (void)handleOngoingConversationMessageFromHost:(id)a3;
- (void)handlePullRelayingCallsMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4;
- (void)handlePushHostedCallsMessageFromHost:(id)a3 completion:(id)a4;
- (void)handleReceivedDTMFUpdateMessageFromHost:(id)a3;
- (void)handleReceptionistSessionChangedFromHost:(id)a3;
- (void)handleReceptionistStateChangedFromHost:(id)a3;
- (void)handleResetStateMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4;
- (void)handleResetWantsHoldMusicFromHost:(id)a3;
- (void)handleScreeningChangedFromHost:(id)a3;
- (void)handleSmartHoldingSessionChangedFromHost:(id)a3;
- (void)handleUpdateCallContextAvailableMessageFromHost:(id)a3;
- (void)handleUpdateCallDisplayContextMessageFromHost:(id)a3;
- (void)handleUpdateCallModelMessageFromHost:(id)a3;
- (void)handleUpdateConversationsMessageFromHost:(id)a3;
- (void)handleUpdateFailureExpectedMessageFromHost:(id)a3;
- (void)handleUpdateRemoteCallStateMessageFromHost:(id)a3;
- (void)handleUpdateRemoteUplinkMutedMessageFromHost:(id)a3;
- (void)handleUpdateRoutesMessageFromHost:(id)a3;
- (void)handleUpdateSupportsDTMFUpdatesMessageFromHost:(id)a3;
- (void)handleUpdateSupportsEmergencyFallbackMessageFromHost:(id)a3;
- (void)handleUpdateSupportsTTYWithVoiceMessageFromHost:(id)a3;
- (void)pullRemotelyHostedCallsForMessage:(id)a3 completion:(id)a4;
@end

@implementation CSDRelayClientController

- (CSDRelayClientController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [(CSDRelayClientController *)self initWithQueue:v7 assistantServicesObserver:v6 featureFlags:v8];

  return v9;
}

- (CSDRelayClientController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4 featureFlags:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSDRelayClientController;
  v12 = [(CSDRelayClientController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a3);
    objc_storeStrong(&v13->_assistantServicesObserver, a4);
    objc_storeStrong(&v13->_featureFlags, a5);
  }

  return v13;
}

- (id)callWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayClientController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDRelayController *)self callController];
  v7 = [v6 callContainer];
  v8 = [v7 callWithUniqueProxyIdentifier:v4];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [CSDCrashReporter simulateCrashReportWithFormat:@"Call is not of type CSDRelayCall, this should not be happening.  Please file a bug to [FaceTime | (New Bugs)]"];
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)handleIncomingCallMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 uniqueProxyIdentifier];
  v8 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v7];

  if (!v8)
  {
    v11 = [[CSDRelayCall alloc] initWithRelayMessage:v6 outgoing:0];
    v12 = [(CSDRelayController *)self callStateController];
    [v12 setCallDelegatesIfNeeded:v11];

    v13 = [(CSDRelayClientController *)self assistantServicesObserver];
    v14 = [v13 announceCallsProviderIdentifier];
    [(CSDRelayCall *)v11 setAnnounceProviderIdentifier:v14];

    [v6 hostCallCreationTime];
    [(CSDRelayCall *)v11 setHostCreationTime:?];
    [v6 messageSendTime];
    [(CSDRelayCall *)v11 setHostMessageSendTime:?];
    v15 = +[NSDate date];
    [v15 timeIntervalSince1970];
    [(CSDRelayCall *)v11 setClientMessageReceiveTime:?];

    if (v4)
    {
      -[CSDCall setEndpointOnCurrentDevice:](v11, "setEndpointOnCurrentDevice:", [v6 cannotBeAnswered] ^ 1);
      -[CSDRelayCall setCannotRelayAudioOrVideo:](v11, "setCannotRelayAudioOrVideo:", [v6 cannotRelayAudioOrVideoOnPairedDevice]);
    }

    v16 = [(CSDRelayController *)self callStateController];
    [v16 propertiesChangedForCall:v11];

    v17 = [(CSDCall *)v11 displayContext];
    v18 = [v6 displayContext];
    v19 = [v17 displayContextByMergingWithDisplayContext:v18];
    [(CSDCall *)v11 setDisplayContext:v19];

    v20 = [(CSDRelayCall *)v11 imageURL];

    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = [v6 image];
    v22 = [(CSDRelayClientController *)self featureFlags];
    v23 = [v22 callerIDSyncMacEnabled];

    if (v23)
    {
      v24 = +[NSFileManager defaultManager];
      v25 = [(CSDRelayCall *)v11 imageURL];
      v26 = [v25 URLByDeletingLastPathComponent];

      v27 = [v26 absoluteString];
      v28 = [v24 fileExistsAtPath:v27 isDirectory:0];

      if ((v28 & 1) == 0)
      {
        [v24 createDirectoryAtURL:v26 withIntermediateDirectories:1 attributes:0 error:0];
      }
    }

    if (v21)
    {
      v29 = [(CSDRelayCall *)v11 imageURL];
      v30 = [v21 writeToURL:v29 atomically:1];

      if (v30)
      {
LABEL_19:

LABEL_20:
        v33 = dispatch_time(0, 90000000000);
        v34 = [(CSDRelayClientController *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000AC810;
        block[3] = &unk_100619F48;
        block[4] = self;
        v36 = v11;
        v37 = v4;
        v9 = v11;
        dispatch_after(v33, v34, block);

        goto LABEL_21;
      }

      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = "Failed to persist business image";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
      }
    }

    else
    {
      v31 = sub_100004778();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v32 = "Got an imageURL but no imageData to persist";
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 typeString];
    *buf = 138412546;
    v39 = v10;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring %@ message because we already have a call with this uniqueProxyIdentifier: %@", buf, 0x16u);
  }

LABEL_21:
}

- (void)handleConversationProminenceMessageFromHost:(id)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleConversationProminenceMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleUpdateConversationsMessageFromHost:(id)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleUpdateConversationsMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleOngoingConversationMessageFromHost:(id)a3
{
  v3 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleOngoingConversationMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleCallDialedMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 uniqueProxyIdentifier];
  v8 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v7];

  v9 = sub_100004778();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v4)
    {
      if (v10)
      {
        v12 = [v6 typeString];
        v16 = 138412290;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating new call for %@ message", &v16, 0xCu);
      }

      v9 = [[CSDRelayCall alloc] initWithRelayMessage:v6 outgoing:1];
      v13 = [(CSDRelayController *)self callStateController];
      [v13 setCallDelegatesIfNeeded:v9];

      [v9 setEndpointOnCurrentDevice:0];
      v14 = [(CSDRelayController *)self callStateController];
      [v14 propertiesChangedForCall:v9];
    }

    else
    {
      if (!v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [v6 typeString];
      v15 = [v6 uniqueProxyIdentifier];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring %@ message because no call exists for %@ and the message is not from the paired device", &v16, 0x16u);
    }

    goto LABEL_12;
  }

  if (v10)
  {
    v11 = [v6 typeString];
    v16 = 138412546;
    v17 = v11;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "We already have a call for this %@ message: %@. Updating it with new values", &v16, 0x16u);
  }

  [v8 updateWithRelayMessage:v6];
LABEL_13:
}

- (void)handleCallAnsweredElsewhereMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 uniqueProxyIdentifier];

  if (v7)
  {
    v8 = [v6 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      v34 = v9;
      v10 = [NSArray arrayWithObjects:&v34 count:1];
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v6 uniqueProxyIdentifier];
        v15 = [(CSDRelayController *)self allCalls];
        *buf = 138412546;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call answered elsewhere message had no uniqueProxyIdentifier set. Using current calls", buf, 2u);
    }

    v9 = [(CSDRelayController *)self callController];
    v12 = [v9 callContainer];
    v10 = [v12 callsHostedElsewhere];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * v20);
        if (a4 || (([*(*(&v25 + 1) + 8 * v20) isScreening] & 1) != 0 || objc_msgSend(v6, "isScreening")) && (-[CSDRelayClientController featureFlags](self, "featureFlags"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "LVMEverywhere"), v22, (v23 & 1) != 0))
        {
          if ([v21 isScreening] & 1) != 0 || (objc_msgSend(v6, "isScreening"))
          {
            v24 = [(CSDRelayClientController *)self featureFlags];
            [v21 setScreening:{objc_msgSend(v24, "LVMEverywhere")}];
          }

          else
          {
            [v21 setScreening:0];
          }

          [v21 setCallStatus:1];
          [v21 setEndpointOnCurrentDevice:{objc_msgSend(v21, "isScreening")}];
        }

        else
        {
          [v21 setLocallyDisconnectedWithReasonIfNone:1];
        }

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v18);
  }
}

- (void)handleCallDisconnectedMessageFromHost:(id)a3
{
  v8 = a3;
  v4 = [v8 uniqueProxyIdentifier];
  v5 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v4];

  if (v5)
  {
    [v5 setLocallyDisconnectedWithReasonIfNone:objc_msgSend(v8 stopConference:{"disconnectedReason"), 1}];
  }

  else
  {
    v6 = +[CSDRelayConferenceInterface sharedInstance];
    v7 = [v8 uniqueProxyIdentifier];
    [v6 stopConferenceForIdentifier:v7];
  }
}

- (void)handleCallConnectedMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setLocallyConnected];
    v7 = [v4 callModel];
    [v6 setModel:v7];
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

- (void)handlePullRelayingCallsMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 otherUniqueProxyIdentifiers];
  v7 = [NSSet setWithArray:v6];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(CSDRelayController *)self callController];
  v9 = [v8 callContainer];
  v10 = [v9 callsHostedElsewhere];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v15 isHostedOnCurrentDevice] & 1) == 0)
        {
          if (!v4 || ([v15 uniqueProxyIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "containsObject:", v16), v16, v17))
          {
            [v15 setLocallyDisconnectedWithReasonIfNone:7];
          }

          [v15 setEndpointOnCurrentDevice:0];
          v18 = +[CSDRelayConferenceInterface sharedInstance];
          v19 = [v15 uniqueProxyIdentifier];
          [v18 stopConferenceForIdentifier:v19];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)handleResetWantsHoldMusicFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setWantsHoldMusic:0];
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

- (void)handleCaptionsResultFromHost:(id)a3
{
  v11 = a3;
  v4 = [(CSDRelayClientController *)self featureFlags];
  v5 = [v4 LVMEverywhere];

  if (v5)
  {
    v6 = [v11 uniqueProxyIdentifier];
    v7 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v6];

    v8 = [v11 captionsResult];
    v9 = [v8 tuCaptionsResult];

    v10 = [(CSDRelayController *)self callStateController];
    [v10 updateClientsWithCaptionsResults:v9 forCall:v7];
  }
}

- (void)handleUpdateCallModelMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];

  if (v5)
  {
    v6 = [v4 uniqueProxyIdentifier];
    v7 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v6];

    if (v7)
    {
      v8 = [v4 callModel];
      [v7 setModel:v8];
    }

    else
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 uniqueProxyIdentifier];
        v19 = [(CSDRelayController *)self allCalls];
        *buf = 138412546;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [(CSDRelayController *)self callController];
    v10 = [v9 callContainer];
    v7 = [v10 callsHostedElsewhere];

    v11 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v4 callModel];
          [v15 setModel:v16];
        }

        v12 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)handleDeviceUnavailableMessageFromHost:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CSDRelayController *)self callController];
  v6 = [v5 callContainer];
  v7 = [v6 callsHostedElsewhere];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 isEndpointOnCurrentDevice])
        {
          [v12 setLocallyDisconnectedWithReasonIfNone:{objc_msgSend(v4, "disconnectedReason")}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)handleResetStateMessageFromHost:(id)a3 fromPairedDevice:(BOOL)a4
{
  v33 = a4;
  v5 = a3;
  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 callsHostedElsewhere];
  v8 = [NSMutableSet setWithArray:v7];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = v5;
  v9 = [v5 protoCalls];
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [(CSDRelayCall *)v14 uniqueProxyIdentifier];
        v16 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v15];

        if (v16)
        {
          [v8 removeObject:v16];
          v17 = [(CSDRelayCall *)v14 isEqualToCall:v16];
          v18 = sub_100004778();
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              *buf = 138412546;
              v44 = v16;
              v45 = 2112;
              v46 = v14;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not resetting call %@ with protoCall %@ because they are equal", buf, 0x16u);
            }
          }

          else
          {
            if (v19)
            {
              *buf = 138412546;
              v44 = v16;
              v45 = 2112;
              v46 = v14;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Resetting call %@ with protoCall %@", buf, 0x16u);
            }

            [(CSDRelayCall *)v14 updateRelayCall:v16];
          }
        }

        else
        {
          if (!v33)
          {
            continue;
          }

          v20 = sub_100004778();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v14;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating new call with protoCall %@", buf, 0xCu);
          }

          v21 = [CSDRelayCall alloc];
          v22 = [(CSDRelayCall *)v14 uniqueProxyIdentifier];
          v16 = [(CSDRelayCall *)v21 initWithUniqueProxyIdentifier:v22 endpointOnCurrentDevice:0];

          v23 = [(CSDRelayController *)self callStateController];
          [v23 setCallDelegatesIfNeeded:v16];

          [(CSDRelayCall *)v14 updateRelayCall:v16];
          v24 = [(CSDRelayController *)self callStateController];
          [v24 propertiesChangedForCall:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v11);
  }

  if (v33)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v8;
    v26 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v35;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v34 + 1) + 8 * j);
          if ([(CSDRelayCall *)v30 status]!= 3)
          {
            v31 = sub_100004778();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Existing call no longer exists and is not sending: %@", buf, 0xCu);
            }

            [(CSDRelayCall *)v30 setLocallyDisconnectedWithReasonIfNone:0];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v27);
    }
  }
}

- (void)handleHardPauseDigitsAvailabilityMessageFromHost:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(CSDRelayController *)self callController];
  v6 = [v5 callContainer];
  v7 = [v6 callsHostedElsewhere];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        v13 = [v4 hardPauseDigits];
        [v12 setHardPauseDigits:v13];

        [v12 setHardPauseDigitsState:{objc_msgSend(v4, "hardPauseDigitsState")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)handleUpdateSupportsDTMFUpdatesMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setSupportsDTMFUpdates:{objc_msgSend(v4, "supportsDTMFUpdates")}];
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

- (void)handleReceivedDTMFUpdateMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (!v6)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 uniqueProxyIdentifier];
      v12 = [(CSDRelayController *)self allCalls];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v14, 0x16u);
    }

    goto LABEL_6;
  }

  if ([v4 hasDtmfUpdateDigits])
  {
    v7 = [TUCallDTMFUpdate alloc];
    v8 = [v4 dtmfUpdateDigits];
    v9 = [v7 initWithDigits:v8];

    v10 = [(CSDRelayController *)self callStateController];
    [v10 handleReceivedCallDTMFUpdate:v9 forCall:v6];

LABEL_6:
    goto LABEL_10;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100472AB8(v4, v13);
  }

LABEL_10:
}

- (void)handleScreeningChangedFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleScreeningChangedFromHost %@", &v46, 0xCu);
  }

  v6 = [(CSDRelayClientController *)self featureFlags];
  v7 = [v6 LVMEverywhere];

  if (v7)
  {
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    v10 = [v4 isScreening];
    if (v9)
    {
      if (v10)
      {
        -[NSObject setScreening:](v9, "setScreening:", [v4 isScreening]);
      }

      else
      {
        v23 = [v9 isScreening];
        -[NSObject setScreening:](v9, "setScreening:", [v4 isScreening]);
        if (v23)
        {
          [v9 setLocallyDisconnectedWithReasonIfNone:1 stopConference:1];
        }
      }

      goto LABEL_44;
    }

    if (!v10)
    {
      goto LABEL_41;
    }

    v11 = [(CSDRelayClientController *)self featureFlags];
    if (([v11 LVMEverywhere] & 1) == 0)
    {
      v12 = [(CSDRelayClientController *)self featureFlags];
      if (![v12 receptionistEnabled])
      {
        v24 = [(CSDRelayClientController *)self featureFlags];
        v25 = [v24 smartHoldingRelayEnabled];

        if ((v25 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_14:
        v13 = [[CSDRelayCall alloc] initWithRelayMessage:v4 outgoing:0];
        [(CSDCall *)v13 setEndpointOnCurrentDevice:0];
        v14 = [(CSDRelayController *)self callStateController];
        [v14 setCallDelegatesIfNeeded:v13];

        v15 = [(CSDRelayClientController *)self assistantServicesObserver];
        v16 = [v15 announceCallsProviderIdentifier];
        [(CSDRelayCall *)v13 setAnnounceProviderIdentifier:v16];

        [v4 hostCallCreationTime];
        [(CSDRelayCall *)v13 setHostCreationTime:?];
        [v4 messageSendTime];
        [(CSDRelayCall *)v13 setHostMessageSendTime:?];
        v17 = +[NSDate date];
        [v17 timeIntervalSince1970];
        [(CSDRelayCall *)v13 setClientMessageReceiveTime:?];

        [(CSDCall *)v13 setScreening:1];
        [(CSDRelayCall *)v13 setCallStatus:1];
        [(CSDCall *)v13 setEndpointOnCurrentDevice:1];
        v18 = [v4 smartHoldingSession];

        if (v18)
        {
          v19 = [v4 smartHoldingSession];
          v18 = [v19 tuSmartHoldingSession];
        }

        v20 = [(CSDCall *)v13 smartHoldingSession];

        if (v20 && v18)
        {
          v21 = [(CSDCall *)v13 smartHoldingSession];
          if ([v21 state])
          {
            v22 = [v18 state];

            if (!v22)
            {
              [(CSDCall *)v13 setSmartHoldingActiveSessionCount:[(CSDCall *)v13 smartHoldingActiveSessionCount]+ 1];
            }
          }

          else
          {
          }
        }

        [(CSDCall *)v13 setSmartHoldingSession:v18];
        v26 = [(CSDRelayController *)self callStateController];
        [v26 propertiesChangedForCall:v13];

        v27 = [(CSDCall *)v13 displayContext];
        v28 = [v4 displayContext];
        v29 = [v27 displayContextByMergingWithDisplayContext:v28];
        [(CSDCall *)v13 setDisplayContext:v29];

        v30 = [(CSDRelayCall *)v13 imageURL];

        if (!v30)
        {
          goto LABEL_40;
        }

        v31 = [v4 image];
        v32 = [(CSDRelayClientController *)self featureFlags];
        v33 = [v32 callerIDSyncMacEnabled];

        if (v33)
        {
          v34 = +[NSFileManager defaultManager];
          v35 = [(CSDRelayCall *)v13 imageURL];
          v36 = [v35 URLByDeletingLastPathComponent];

          v37 = [v36 absoluteString];
          v38 = [v34 fileExistsAtPath:v37 isDirectory:0];

          if ((v38 & 1) == 0)
          {
            [v34 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:0];
          }
        }

        if (v31)
        {
          v39 = [(CSDRelayCall *)v13 imageURL];
          v40 = [v31 writeToURL:v39 atomically:1];

          if (v40)
          {
LABEL_39:

LABEL_40:
LABEL_41:
            v43 = sub_100004778();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v4 uniqueProxyIdentifier];
              v45 = [(CSDRelayController *)self allCalls];
              v46 = 138412546;
              v47 = v44;
              v48 = 2112;
              v49 = v45;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v46, 0x16u);
            }

            goto LABEL_44;
          }

          v41 = sub_100004778();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            v42 = "Failed to persist business image";
LABEL_37:
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v42, &v46, 2u);
          }
        }

        else
        {
          v41 = sub_100004778();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v46) = 0;
            v42 = "Got an imageURL but no imageData to persist";
            goto LABEL_37;
          }
        }

        goto LABEL_39;
      }
    }

    goto LABEL_14;
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v46) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "LVMEverywhere is not enabled, ignoring handleScreeningChangedFromHost message", &v46, 2u);
  }

LABEL_44:
}

- (void)handleReceptionistStateChangedFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistStateChangedFromHost %@", &v13, 0xCu);
  }

  v6 = [(CSDRelayClientController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      -[NSObject setReceptionistState:](v9, "setReceptionistState:", [v4 receptionistState]);
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 uniqueProxyIdentifier];
        v12 = [(CSDRelayController *)self allCalls];
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistStateChangedFromHost message", &v13, 2u);
    }
  }
}

- (void)handleLastReceptionistMessageChangedFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleLastReceptionistMessageChangedFromHost %@", &v13, 0xCu);
  }

  v6 = [(CSDRelayClientController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      v10 = [v4 lastReceptionistMessage];
      [v9 setLastReceptionistMessage:v10];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 uniqueProxyIdentifier];
        v12 = [(CSDRelayController *)self allCalls];
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleLastReceptionistMessageChangedFromHost message", &v13, 2u);
    }
  }
}

- (void)handleReceptionistSessionChangedFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistSessionChangedFromHost %@", &v17, 0xCu);
  }

  v6 = [(CSDRelayClientController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      v10 = [v4 receptionistSession];
      v11 = [TUReceptionistSession alloc];
      v12 = [v10 summary];
      v13 = [v10 predictedName];
      v14 = [v11 initWithSummary:v12 predictedName:v13];

      [v9 setReceptionistSession:v14];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 uniqueProxyIdentifier];
        v16 = [(CSDRelayController *)self allCalls];
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleReceptionistSessionChangedFromHost message", &v17, 2u);
    }
  }
}

- (void)handleSmartHoldingSessionChangedFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleSmartHoldingSessionChangedFromHost %@", &v17, 0xCu);
  }

  v6 = [(CSDRelayClientController *)self featureFlags];
  v7 = [v6 waitOnHoldEnabled];

  if (v7)
  {
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      v10 = [v4 smartHoldingSession];

      if (v10)
      {
        v11 = [v4 smartHoldingSession];
        v10 = [v11 tuSmartHoldingSession];
      }

      v12 = [v9 smartHoldingSession];

      if (v12 && v10)
      {
        v13 = [v9 smartHoldingSession];
        if ([v13 state])
        {
          v14 = [v10 state];

          if (!v14)
          {
            [v9 setSmartHoldingActiveSessionCount:[v9 smartHoldingActiveSessionCount]+ 1];
          }
        }

        else
        {
        }
      }

      [v9 setSmartHoldingSession:v10];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v4 uniqueProxyIdentifier];
        v16 = [(CSDRelayController *)self allCalls];
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "smart holding is not enabled, ignoring handleSmartHoldingSessionChangedFromHost message", &v17, 2u);
    }
  }
}

- (void)handleAnnouncementHasFinishedChangedFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleAnnouncementHasFinishedChangedFromHost %@", &v13, 0xCu);
  }

  v6 = [(CSDRelayClientController *)self featureFlags];
  v7 = [v6 receptionistEnabled];

  if (v7)
  {
    v8 = [v4 uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v8];

    if (v9)
    {
      -[NSObject setScreeningAnnouncementHasFinished:](v9, "setScreeningAnnouncementHasFinished:", [v4 announcementHasFinished]);
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v4 uniqueProxyIdentifier];
        v12 = [(CSDRelayController *)self allCalls];
        v13 = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "receptionistEnabled is not enabled, ignoring handleAnnouncementHasFinishedChangedFromHost message", &v13, 2u);
    }
  }
}

- (void)handleUpdateRemoteCallStateMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleUpdateRemoteCallStateMessageFromHost %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = v4;
  v6 = [v4 protoCalls];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 uniqueProxyIdentifier];
        v13 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v12];

        if (!v13)
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v11 uniqueProxyIdentifier];
            v18 = [(CSDRelayController *)self allCalls];
            *buf = 138412546;
            v25 = v17;
            v26 = 2112;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
          }

          goto LABEL_14;
        }

        v14 = [v11 isEqualToCall:v13];
        v15 = sub_100004778();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 138412546;
            v25 = v13;
            v26 = 2112;
            v27 = v11;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not updating call %@ with protoCall %@ because they are equal", buf, 0x16u);
          }

LABEL_14:

          goto LABEL_18;
        }

        if (v16)
        {
          *buf = 138412546;
          v25 = v13;
          v26 = 2112;
          v27 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating call %@ with protoCall %@", buf, 0x16u);
        }

        [v11 updateRelayCall:v13];
LABEL_18:
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)handleCallStartedConnectingMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setLocallyConnecting];
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

- (void)handlePushHostedCallsMessageFromHost:(id)a3 completion:(id)a4
{
  v30 = a3;
  v28 = self;
  v29 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(CSDRelayController *)self callController];
  v7 = [v6 callContainer];
  v8 = [v7 currentAudioAndVideoCalls];

  v9 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if ([v13 isScreening])
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          v16 = [v13 receptionistState];
          v17 = [v13 isAnswerFromScreening];
          *buf = 138412802;
          if (v17)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v36 = v15;
          v37 = 1024;
          v38 = v16;
          v39 = 2112;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] handlePushHostedCallsMessageFromHost: isScreening: %@, receptionistState: %d, isAnswerFromScreening: %@", buf, 0x1Cu);
        }

        if ([v13 isScreening] & 1) == 0 && objc_msgSend(v13, "receptionistState") || (objc_msgSend(v13, "isAnswerFromScreening"))
        {
          [v13 setLocallyConnected];

          v19 = v28;
          goto LABEL_24;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = v28;
  v20 = [(CSDRelayController *)v28 callController];
  v21 = [v20 callContainer];
  v22 = [v21 hasCurrentCalls];

  if (v22)
  {
    v23 = sub_100004778();
    v25 = v29;
    v24 = v30;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v30 typeString];
      *buf = 138412290;
      v36 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some calls", buf, 0xCu);
    }

    (*(v29 + 2))(v29, 0);
  }

  else
  {
LABEL_24:
    v27 = v19;
    v25 = v29;
    v24 = v30;
    [(CSDRelayClientController *)v27 pullRemotelyHostedCallsForMessage:v30 completion:v29];
  }
}

- (void)handleUpdateCallContextAvailableMessageFromHost:(id)a3
{
  v11 = a3;
  v4 = [v11 callCapabilitiesState];

  if (v4)
  {
    v5 = +[CSDCallCapabilities sharedInstance];
    v6 = [v11 callCapabilitiesState];
    [v5 updatePairedHostDeviceCallCapabilitiesState:v6];
  }

  v7 = [v11 providers];

  if (v7)
  {
    v8 = [(CSDRelayController *)self callStateController];
    v9 = [v8 callProviderManager];
    v10 = [v11 tuProviders];
    [v9 registerPairedHostDeviceProviders:v10];
  }
}

- (void)handleNeedsManualInCallSoundsChangeMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setNeedsManualInCallSounds:{objc_msgSend(v4, "needsManualInCallSounds")}];
    [v6 setSoundRegion:{objc_msgSend(v4, "soundRegion")}];
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

- (void)handleInvitationSentMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setLocallyHasSentInvitation];
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

- (void)handleUpdateCallDisplayContextMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    v7 = [v4 tuHandle];
    [v6 setHandle:v7];

    v8 = [v6 displayContext];
    v9 = [v4 displayContext];
    v10 = [v8 displayContextByMergingWithDisplayContext:v9];
    [v6 setDisplayContext:v10];
  }

  else
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v4 uniqueProxyIdentifier];
      v12 = [(CSDRelayController *)self allCalls];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
    }
  }
}

- (void)handleUpdateRemoteUplinkMutedMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (!v6)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 uniqueProxyIdentifier];
      v14 = [(CSDRelayController *)self allCalls];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v18, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = [v6 provider];
  v8 = [v7 isTinCanProvider];

  if (!v8)
  {
    [v6 setRemoteUplinkMuted:{objc_msgSend(v4, "isRemoteUplinkMuted")}];
    goto LABEL_11;
  }

  [v4 messageSendTime];
  v10 = v9;
  [v6 remoteUplinkMutedSetTime];
  if (v10 <= v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [v4 messageSendTime];
      v16 = v15;
      [v6 remoteUplinkMutedSetTime];
      v18 = 138412802;
      v19 = v4;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because messageSendTime (%f) <= call.remoteUplinkMutedSetTime (%f)", &v18, 0x20u);
    }

LABEL_10:

    goto LABEL_11;
  }

  [v6 setRemoteUplinkMuted:{objc_msgSend(v4, "isRemoteUplinkMuted")}];
  [v4 messageSendTime];
  [v6 setRemoteUplinkMutedSetTime:?];
LABEL_11:
}

- (void)handleUpdateRoutesMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 routes];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v4 routes];
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

        v12 = [*(*(&v16 + 1) + 8 * v11) tuRoute];
        [v6 addObject:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [(CSDRelayController *)self callStateController];
  v14 = [v13 pairedHostDeviceRouteController];
  v15 = [v6 copy];
  [v14 handleUpdatedPairedHostDeviceRoutes:v15];
}

- (void)handleUpdateFailureExpectedMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setFailureExpected:{objc_msgSend(v4, "isFailureExpected")}];
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

- (void)handleUpdateSupportsEmergencyFallbackMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setSupportsEmergencyFallback:{objc_msgSend(v4, "supportsEmergencyFallback")}];
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

- (void)handleUpdateSupportsTTYWithVoiceMessageFromHost:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:v5];

  if (v6)
  {
    [v6 setSupportsTTYWithVoice:{objc_msgSend(v4, "supportsTTYWithVoice")}];
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

- (void)pullRemotelyHostedCallsForMessage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1000285E8;
  v29[4] = sub_10003288C;
  v18 = a4;
  v30 = objc_retainBlock(v18);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 protoCalls];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = *v26;
    obj = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [CSDRelayConferenceConnection alloc];
        v12 = [v10 uniqueProxyIdentifier];
        v13 = [(CSDRelayConferenceConnection *)v11 initWithIdentifier:v12];

        v14 = +[CSDRelayConferenceInterface sharedInstance];
        v15 = [v5 inviteData];
        v16 = [v15 relayInviteDictionary];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000B096C;
        v21[3] = &unk_10061A888;
        v24 = v29;
        v21[4] = self;
        v21[5] = v10;
        v17 = v13;
        v22 = v17;
        v23 = v5;
        [v14 prepareConferenceConnection:v17 remoteInviteDictionary:v16 completion:v21];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v6 = obj;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(v29, 8);
}

@end