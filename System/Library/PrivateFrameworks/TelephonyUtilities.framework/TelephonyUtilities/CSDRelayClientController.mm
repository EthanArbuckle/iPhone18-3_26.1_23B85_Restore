@interface CSDRelayClientController
- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer;
- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer featureFlags:(id)flags;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (void)handleAnnouncementHasFinishedChangedFromHost:(id)host;
- (void)handleCallAnsweredElsewhereMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleCallConnectedMessageFromHost:(id)host;
- (void)handleCallDialedMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleCallDisconnectedMessageFromHost:(id)host;
- (void)handleCallStartedConnectingMessageFromHost:(id)host;
- (void)handleCaptionsResultFromHost:(id)host;
- (void)handleConversationProminenceMessageFromHost:(id)host;
- (void)handleDeviceUnavailableMessageFromHost:(id)host;
- (void)handleHardPauseDigitsAvailabilityMessageFromHost:(id)host;
- (void)handleIncomingCallMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleInvitationSentMessageFromHost:(id)host;
- (void)handleLastReceptionistMessageChangedFromHost:(id)host;
- (void)handleNeedsManualInCallSoundsChangeMessageFromHost:(id)host;
- (void)handleOngoingConversationMessageFromHost:(id)host;
- (void)handlePullRelayingCallsMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handlePushHostedCallsMessageFromHost:(id)host completion:(id)completion;
- (void)handleReceivedDTMFUpdateMessageFromHost:(id)host;
- (void)handleReceptionistSessionChangedFromHost:(id)host;
- (void)handleReceptionistStateChangedFromHost:(id)host;
- (void)handleResetStateMessageFromHost:(id)host fromPairedDevice:(BOOL)device;
- (void)handleResetWantsHoldMusicFromHost:(id)host;
- (void)handleScreeningChangedFromHost:(id)host;
- (void)handleSmartHoldingSessionChangedFromHost:(id)host;
- (void)handleUpdateCallContextAvailableMessageFromHost:(id)host;
- (void)handleUpdateCallDisplayContextMessageFromHost:(id)host;
- (void)handleUpdateCallModelMessageFromHost:(id)host;
- (void)handleUpdateConversationsMessageFromHost:(id)host;
- (void)handleUpdateFailureExpectedMessageFromHost:(id)host;
- (void)handleUpdateRemoteCallStateMessageFromHost:(id)host;
- (void)handleUpdateRemoteUplinkMutedMessageFromHost:(id)host;
- (void)handleUpdateRoutesMessageFromHost:(id)host;
- (void)handleUpdateSupportsDTMFUpdatesMessageFromHost:(id)host;
- (void)handleUpdateSupportsEmergencyFallbackMessageFromHost:(id)host;
- (void)handleUpdateSupportsTTYWithVoiceMessageFromHost:(id)host;
- (void)pullRemotelyHostedCallsForMessage:(id)message completion:(id)completion;
@end

@implementation CSDRelayClientController

- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer
{
  observerCopy = observer;
  queueCopy = queue;
  v8 = objc_alloc_init(TUFeatureFlags);
  v9 = [(CSDRelayClientController *)self initWithQueue:queueCopy assistantServicesObserver:observerCopy featureFlags:v8];

  return v9;
}

- (CSDRelayClientController)initWithQueue:(id)queue assistantServicesObserver:(id)observer featureFlags:(id)flags
{
  queueCopy = queue;
  observerCopy = observer;
  flagsCopy = flags;
  v15.receiver = self;
  v15.super_class = CSDRelayClientController;
  v12 = [(CSDRelayClientController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_assistantServicesObserver, observer);
    objc_storeStrong(&v13->_featureFlags, flags);
  }

  return v13;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(CSDRelayClientController *)self queue];
  dispatch_assert_queue_V2(queue);

  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  v8 = [callContainer callWithUniqueProxyIdentifier:identifierCopy];

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

- (void)handleIncomingCallMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v8 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v8)
  {
    v11 = [[CSDRelayCall alloc] initWithRelayMessage:hostCopy outgoing:0];
    callStateController = [(CSDRelayController *)self callStateController];
    [callStateController setCallDelegatesIfNeeded:v11];

    assistantServicesObserver = [(CSDRelayClientController *)self assistantServicesObserver];
    announceCallsProviderIdentifier = [assistantServicesObserver announceCallsProviderIdentifier];
    [(CSDRelayCall *)v11 setAnnounceProviderIdentifier:announceCallsProviderIdentifier];

    [hostCopy hostCallCreationTime];
    [(CSDRelayCall *)v11 setHostCreationTime:?];
    [hostCopy messageSendTime];
    [(CSDRelayCall *)v11 setHostMessageSendTime:?];
    v15 = +[NSDate date];
    [v15 timeIntervalSince1970];
    [(CSDRelayCall *)v11 setClientMessageReceiveTime:?];

    if (deviceCopy)
    {
      -[CSDCall setEndpointOnCurrentDevice:](v11, "setEndpointOnCurrentDevice:", [hostCopy cannotBeAnswered] ^ 1);
      -[CSDRelayCall setCannotRelayAudioOrVideo:](v11, "setCannotRelayAudioOrVideo:", [hostCopy cannotRelayAudioOrVideoOnPairedDevice]);
    }

    callStateController2 = [(CSDRelayController *)self callStateController];
    [callStateController2 propertiesChangedForCall:v11];

    displayContext = [(CSDCall *)v11 displayContext];
    displayContext2 = [hostCopy displayContext];
    v19 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
    [(CSDCall *)v11 setDisplayContext:v19];

    imageURL = [(CSDRelayCall *)v11 imageURL];

    if (!imageURL)
    {
      goto LABEL_20;
    }

    image = [hostCopy image];
    featureFlags = [(CSDRelayClientController *)self featureFlags];
    callerIDSyncMacEnabled = [featureFlags callerIDSyncMacEnabled];

    if (callerIDSyncMacEnabled)
    {
      v24 = +[NSFileManager defaultManager];
      imageURL2 = [(CSDRelayCall *)v11 imageURL];
      uRLByDeletingLastPathComponent = [imageURL2 URLByDeletingLastPathComponent];

      absoluteString = [uRLByDeletingLastPathComponent absoluteString];
      v28 = [v24 fileExistsAtPath:absoluteString isDirectory:0];

      if ((v28 & 1) == 0)
      {
        [v24 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
      }
    }

    if (image)
    {
      imageURL3 = [(CSDRelayCall *)v11 imageURL];
      v30 = [image writeToURL:imageURL3 atomically:1];

      if (v30)
      {
LABEL_19:

LABEL_20:
        v33 = dispatch_time(0, 90000000000);
        queue = [(CSDRelayClientController *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000AC810;
        block[3] = &unk_100619F48;
        block[4] = self;
        v36 = v11;
        v37 = deviceCopy;
        v9 = v11;
        dispatch_after(v33, queue, block);

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
    typeString = [hostCopy typeString];
    *buf = 138412546;
    v39 = typeString;
    v40 = 2112;
    v41 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring %@ message because we already have a call with this uniqueProxyIdentifier: %@", buf, 0x16u);
  }

LABEL_21:
}

- (void)handleConversationProminenceMessageFromHost:(id)host
{
  hostCopy = host;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = hostCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleConversationProminenceMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleUpdateConversationsMessageFromHost:(id)host
{
  hostCopy = host;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = hostCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleUpdateConversationsMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleOngoingConversationMessageFromHost:(id)host
{
  hostCopy = host;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = hostCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "handleOngoingConversationMessageFromHost: %@", &v5, 0xCu);
  }
}

- (void)handleCallDialedMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v8 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  v9 = sub_100004778();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (deviceCopy)
    {
      if (v10)
      {
        typeString = [hostCopy typeString];
        v16 = 138412290;
        v17 = typeString;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating new call for %@ message", &v16, 0xCu);
      }

      v9 = [[CSDRelayCall alloc] initWithRelayMessage:hostCopy outgoing:1];
      callStateController = [(CSDRelayController *)self callStateController];
      [callStateController setCallDelegatesIfNeeded:v9];

      [v9 setEndpointOnCurrentDevice:0];
      callStateController2 = [(CSDRelayController *)self callStateController];
      [callStateController2 propertiesChangedForCall:v9];
    }

    else
    {
      if (!v10)
      {
LABEL_12:

        goto LABEL_13;
      }

      callStateController2 = [hostCopy typeString];
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      v16 = 138412546;
      v17 = callStateController2;
      v18 = 2112;
      v19 = uniqueProxyIdentifier2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring %@ message because no call exists for %@ and the message is not from the paired device", &v16, 0x16u);
    }

    goto LABEL_12;
  }

  if (v10)
  {
    typeString2 = [hostCopy typeString];
    v16 = 138412546;
    v17 = typeString2;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "We already have a call for this %@ message: %@. Updating it with new values", &v16, 0x16u);
  }

  [v8 updateWithRelayMessage:hostCopy];
LABEL_13:
}

- (void)handleCallAnsweredElsewhereMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
    callController = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier2];

    if (callController)
    {
      v34 = callController;
      callsHostedElsewhere = [NSArray arrayWithObjects:&v34 count:1];
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier3 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        *buf = 138412546;
        v31 = uniqueProxyIdentifier3;
        v32 = 2112;
        v33 = allCalls;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", buf, 0x16u);
      }

      callsHostedElsewhere = 0;
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

    callController = [(CSDRelayController *)self callController];
    callContainer = [callController callContainer];
    callsHostedElsewhere = [callContainer callsHostedElsewhere];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = callsHostedElsewhere;
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
        if (device || (([*(*(&v25 + 1) + 8 * v20) isScreening] & 1) != 0 || objc_msgSend(hostCopy, "isScreening")) && (-[CSDRelayClientController featureFlags](self, "featureFlags"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "LVMEverywhere"), v22, (v23 & 1) != 0))
        {
          if ([v21 isScreening] & 1) != 0 || (objc_msgSend(hostCopy, "isScreening"))
          {
            featureFlags = [(CSDRelayClientController *)self featureFlags];
            [v21 setScreening:{objc_msgSend(featureFlags, "LVMEverywhere")}];
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

- (void)handleCallDisconnectedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v5 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v5)
  {
    [v5 setLocallyDisconnectedWithReasonIfNone:objc_msgSend(hostCopy stopConference:{"disconnectedReason"), 1}];
  }

  else
  {
    v6 = +[CSDRelayConferenceInterface sharedInstance];
    uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
    [v6 stopConferenceForIdentifier:uniqueProxyIdentifier2];
  }
}

- (void)handleCallConnectedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setLocallyConnected];
    callModel = [hostCopy callModel];
    [v6 setModel:callModel];
  }

  else
  {
    callModel = sub_100004778();
    if (os_log_type_enabled(callModel, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, callModel, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handlePullRelayingCallsMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  otherUniqueProxyIdentifiers = [host otherUniqueProxyIdentifiers];
  v7 = [NSSet setWithArray:otherUniqueProxyIdentifiers];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v11 = [callsHostedElsewhere countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if (([v15 isHostedOnCurrentDevice] & 1) == 0)
        {
          if (!deviceCopy || ([v15 uniqueProxyIdentifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "containsObject:", v16), v16, v17))
          {
            [v15 setLocallyDisconnectedWithReasonIfNone:7];
          }

          [v15 setEndpointOnCurrentDevice:0];
          v18 = +[CSDRelayConferenceInterface sharedInstance];
          uniqueProxyIdentifier = [v15 uniqueProxyIdentifier];
          [v18 stopConferenceForIdentifier:uniqueProxyIdentifier];
        }
      }

      v12 = [callsHostedElsewhere countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)handleResetWantsHoldMusicFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setWantsHoldMusic:0];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleCaptionsResultFromHost:(id)host
{
  hostCopy = host;
  featureFlags = [(CSDRelayClientController *)self featureFlags];
  lVMEverywhere = [featureFlags LVMEverywhere];

  if (lVMEverywhere)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v7 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    captionsResult = [hostCopy captionsResult];
    tuCaptionsResult = [captionsResult tuCaptionsResult];

    callStateController = [(CSDRelayController *)self callStateController];
    [callStateController updateClientsWithCaptionsResults:tuCaptionsResult forCall:v7];
  }
}

- (void)handleUpdateCallModelMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];

  if (uniqueProxyIdentifier)
  {
    uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
    callsHostedElsewhere = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier2];

    if (callsHostedElsewhere)
    {
      callModel = [hostCopy callModel];
      [callsHostedElsewhere setModel:callModel];
    }

    else
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier3 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        *buf = 138412546;
        v26 = uniqueProxyIdentifier3;
        v27 = 2112;
        v28 = allCalls;
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
    callController = [(CSDRelayController *)self callController];
    callContainer = [callController callContainer];
    callsHostedElsewhere = [callContainer callsHostedElsewhere];

    v11 = [callsHostedElsewhere countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(callsHostedElsewhere);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          callModel2 = [hostCopy callModel];
          [v15 setModel:callModel2];
        }

        v12 = [callsHostedElsewhere countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }
  }
}

- (void)handleDeviceUnavailableMessageFromHost:(id)host
{
  hostCopy = host;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v8 = [callsHostedElsewhere countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 isEndpointOnCurrentDevice])
        {
          [v12 setLocallyDisconnectedWithReasonIfNone:{objc_msgSend(hostCopy, "disconnectedReason")}];
        }
      }

      v9 = [callsHostedElsewhere countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)handleResetStateMessageFromHost:(id)host fromPairedDevice:(BOOL)device
{
  deviceCopy = device;
  hostCopy = host;
  v6 = +[TUCallCenter sharedInstance];
  callsHostedElsewhere = [v6 callsHostedElsewhere];
  v8 = [NSMutableSet setWithArray:callsHostedElsewhere];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v32 = hostCopy;
  protoCalls = [hostCopy protoCalls];
  v10 = [protoCalls countByEnumeratingWithState:&v38 objects:v47 count:16];
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
          objc_enumerationMutation(protoCalls);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        uniqueProxyIdentifier = [(CSDRelayCall *)v14 uniqueProxyIdentifier];
        v16 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

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
          if (!deviceCopy)
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
          uniqueProxyIdentifier2 = [(CSDRelayCall *)v14 uniqueProxyIdentifier];
          v16 = [(CSDRelayCall *)v21 initWithUniqueProxyIdentifier:uniqueProxyIdentifier2 endpointOnCurrentDevice:0];

          callStateController = [(CSDRelayController *)self callStateController];
          [callStateController setCallDelegatesIfNeeded:v16];

          [(CSDRelayCall *)v14 updateRelayCall:v16];
          callStateController2 = [(CSDRelayController *)self callStateController];
          [callStateController2 propertiesChangedForCall:v16];
        }
      }

      v11 = [protoCalls countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v11);
  }

  if (deviceCopy)
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

- (void)handleHardPauseDigitsAvailabilityMessageFromHost:(id)host
{
  hostCopy = host;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v8 = [callsHostedElsewhere countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(callsHostedElsewhere);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        hardPauseDigits = [hostCopy hardPauseDigits];
        [v12 setHardPauseDigits:hardPauseDigits];

        [v12 setHardPauseDigitsState:{objc_msgSend(hostCopy, "hardPauseDigitsState")}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [callsHostedElsewhere countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)handleUpdateSupportsDTMFUpdatesMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setSupportsDTMFUpdates:{objc_msgSend(hostCopy, "supportsDTMFUpdates")}];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleReceivedDTMFUpdateMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v14 = 138412546;
      v15 = uniqueProxyIdentifier2;
      v16 = 2112;
      v17 = allCalls;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v14, 0x16u);
    }

    goto LABEL_6;
  }

  if ([hostCopy hasDtmfUpdateDigits])
  {
    v7 = [TUCallDTMFUpdate alloc];
    dtmfUpdateDigits = [hostCopy dtmfUpdateDigits];
    v9 = [v7 initWithDigits:dtmfUpdateDigits];

    callStateController = [(CSDRelayController *)self callStateController];
    [callStateController handleReceivedCallDTMFUpdate:v9 forCall:v6];

LABEL_6:
    goto LABEL_10;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100472AB8(hostCopy, v13);
  }

LABEL_10:
}

- (void)handleScreeningChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412290;
    v47 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleScreeningChangedFromHost %@", &v46, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  lVMEverywhere = [featureFlags LVMEverywhere];

  if (lVMEverywhere)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    isScreening = [hostCopy isScreening];
    if (v9)
    {
      if (isScreening)
      {
        -[NSObject setScreening:](v9, "setScreening:", [hostCopy isScreening]);
      }

      else
      {
        isScreening2 = [v9 isScreening];
        -[NSObject setScreening:](v9, "setScreening:", [hostCopy isScreening]);
        if (isScreening2)
        {
          [v9 setLocallyDisconnectedWithReasonIfNone:1 stopConference:1];
        }
      }

      goto LABEL_44;
    }

    if (!isScreening)
    {
      goto LABEL_41;
    }

    featureFlags2 = [(CSDRelayClientController *)self featureFlags];
    if (([featureFlags2 LVMEverywhere] & 1) == 0)
    {
      featureFlags3 = [(CSDRelayClientController *)self featureFlags];
      if (![featureFlags3 receptionistEnabled])
      {
        featureFlags4 = [(CSDRelayClientController *)self featureFlags];
        smartHoldingRelayEnabled = [featureFlags4 smartHoldingRelayEnabled];

        if ((smartHoldingRelayEnabled & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_14:
        v13 = [[CSDRelayCall alloc] initWithRelayMessage:hostCopy outgoing:0];
        [(CSDCall *)v13 setEndpointOnCurrentDevice:0];
        callStateController = [(CSDRelayController *)self callStateController];
        [callStateController setCallDelegatesIfNeeded:v13];

        assistantServicesObserver = [(CSDRelayClientController *)self assistantServicesObserver];
        announceCallsProviderIdentifier = [assistantServicesObserver announceCallsProviderIdentifier];
        [(CSDRelayCall *)v13 setAnnounceProviderIdentifier:announceCallsProviderIdentifier];

        [hostCopy hostCallCreationTime];
        [(CSDRelayCall *)v13 setHostCreationTime:?];
        [hostCopy messageSendTime];
        [(CSDRelayCall *)v13 setHostMessageSendTime:?];
        v17 = +[NSDate date];
        [v17 timeIntervalSince1970];
        [(CSDRelayCall *)v13 setClientMessageReceiveTime:?];

        [(CSDCall *)v13 setScreening:1];
        [(CSDRelayCall *)v13 setCallStatus:1];
        [(CSDCall *)v13 setEndpointOnCurrentDevice:1];
        smartHoldingSession = [hostCopy smartHoldingSession];

        if (smartHoldingSession)
        {
          smartHoldingSession2 = [hostCopy smartHoldingSession];
          smartHoldingSession = [smartHoldingSession2 tuSmartHoldingSession];
        }

        smartHoldingSession3 = [(CSDCall *)v13 smartHoldingSession];

        if (smartHoldingSession3 && smartHoldingSession)
        {
          smartHoldingSession4 = [(CSDCall *)v13 smartHoldingSession];
          if ([smartHoldingSession4 state])
          {
            state = [smartHoldingSession state];

            if (!state)
            {
              [(CSDCall *)v13 setSmartHoldingActiveSessionCount:[(CSDCall *)v13 smartHoldingActiveSessionCount]+ 1];
            }
          }

          else
          {
          }
        }

        [(CSDCall *)v13 setSmartHoldingSession:smartHoldingSession];
        callStateController2 = [(CSDRelayController *)self callStateController];
        [callStateController2 propertiesChangedForCall:v13];

        displayContext = [(CSDCall *)v13 displayContext];
        displayContext2 = [hostCopy displayContext];
        v29 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
        [(CSDCall *)v13 setDisplayContext:v29];

        imageURL = [(CSDRelayCall *)v13 imageURL];

        if (!imageURL)
        {
          goto LABEL_40;
        }

        image = [hostCopy image];
        featureFlags5 = [(CSDRelayClientController *)self featureFlags];
        callerIDSyncMacEnabled = [featureFlags5 callerIDSyncMacEnabled];

        if (callerIDSyncMacEnabled)
        {
          v34 = +[NSFileManager defaultManager];
          imageURL2 = [(CSDRelayCall *)v13 imageURL];
          uRLByDeletingLastPathComponent = [imageURL2 URLByDeletingLastPathComponent];

          absoluteString = [uRLByDeletingLastPathComponent absoluteString];
          v38 = [v34 fileExistsAtPath:absoluteString isDirectory:0];

          if ((v38 & 1) == 0)
          {
            [v34 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
          }
        }

        if (image)
        {
          imageURL3 = [(CSDRelayCall *)v13 imageURL];
          v40 = [image writeToURL:imageURL3 atomically:1];

          if (v40)
          {
LABEL_39:

LABEL_40:
LABEL_41:
            v43 = sub_100004778();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
              allCalls = [(CSDRelayController *)self allCalls];
              v46 = 138412546;
              v47 = uniqueProxyIdentifier2;
              v48 = 2112;
              v49 = allCalls;
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

- (void)handleReceptionistStateChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistStateChangedFromHost %@", &v13, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v9)
    {
      -[NSObject setReceptionistState:](v9, "setReceptionistState:", [hostCopy receptionistState]);
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v13 = 138412546;
        v14 = uniqueProxyIdentifier2;
        v15 = 2112;
        v16 = allCalls;
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

- (void)handleLastReceptionistMessageChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleLastReceptionistMessageChangedFromHost %@", &v13, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v9)
    {
      lastReceptionistMessage = [hostCopy lastReceptionistMessage];
      [v9 setLastReceptionistMessage:lastReceptionistMessage];
    }

    else
    {
      lastReceptionistMessage = sub_100004778();
      if (os_log_type_enabled(lastReceptionistMessage, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v13 = 138412546;
        v14 = uniqueProxyIdentifier2;
        v15 = 2112;
        v16 = allCalls;
        _os_log_impl(&_mh_execute_header, lastReceptionistMessage, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
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

- (void)handleReceptionistSessionChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleReceptionistSessionChangedFromHost %@", &v17, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v9)
    {
      receptionistSession = [hostCopy receptionistSession];
      v11 = [TUReceptionistSession alloc];
      summary = [receptionistSession summary];
      predictedName = [receptionistSession predictedName];
      v14 = [v11 initWithSummary:summary predictedName:predictedName];

      [v9 setReceptionistSession:v14];
    }

    else
    {
      receptionistSession = sub_100004778();
      if (os_log_type_enabled(receptionistSession, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v17 = 138412546;
        v18 = uniqueProxyIdentifier2;
        v19 = 2112;
        v20 = allCalls;
        _os_log_impl(&_mh_execute_header, receptionistSession, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v17, 0x16u);
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

- (void)handleSmartHoldingSessionChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleSmartHoldingSessionChangedFromHost %@", &v17, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

  if (waitOnHoldEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v9)
    {
      smartHoldingSession = [hostCopy smartHoldingSession];

      if (smartHoldingSession)
      {
        smartHoldingSession2 = [hostCopy smartHoldingSession];
        smartHoldingSession = [smartHoldingSession2 tuSmartHoldingSession];
      }

      smartHoldingSession3 = [v9 smartHoldingSession];

      if (smartHoldingSession3 && smartHoldingSession)
      {
        smartHoldingSession4 = [v9 smartHoldingSession];
        if ([smartHoldingSession4 state])
        {
          state = [smartHoldingSession state];

          if (!state)
          {
            [v9 setSmartHoldingActiveSessionCount:[v9 smartHoldingActiveSessionCount]+ 1];
          }
        }

        else
        {
        }
      }

      [v9 setSmartHoldingSession:smartHoldingSession];
    }

    else
    {
      smartHoldingSession = sub_100004778();
      if (os_log_type_enabled(smartHoldingSession, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v17 = 138412546;
        v18 = uniqueProxyIdentifier2;
        v19 = 2112;
        v20 = allCalls;
        _os_log_impl(&_mh_execute_header, smartHoldingSession, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v17, 0x16u);
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

- (void)handleAnnouncementHasFinishedChangedFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleAnnouncementHasFinishedChangedFromHost %@", &v13, 0xCu);
  }

  featureFlags = [(CSDRelayClientController *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
    v9 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

    if (v9)
    {
      -[NSObject setScreeningAnnouncementHasFinished:](v9, "setScreeningAnnouncementHasFinished:", [hostCopy announcementHasFinished]);
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
        allCalls = [(CSDRelayController *)self allCalls];
        v13 = 138412546;
        v14 = uniqueProxyIdentifier2;
        v15 = 2112;
        v16 = allCalls;
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

- (void)handleUpdateRemoteCallStateMessageFromHost:(id)host
{
  hostCopy = host;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = hostCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleUpdateRemoteCallStateMessageFromHost %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = hostCopy;
  protoCalls = [hostCopy protoCalls];
  v7 = [protoCalls countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(protoCalls);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        uniqueProxyIdentifier = [v11 uniqueProxyIdentifier];
        v13 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

        if (!v13)
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            uniqueProxyIdentifier2 = [v11 uniqueProxyIdentifier];
            allCalls = [(CSDRelayController *)self allCalls];
            *buf = 138412546;
            v25 = uniqueProxyIdentifier2;
            v26 = 2112;
            v27 = allCalls;
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

      v8 = [protoCalls countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v8);
  }
}

- (void)handleCallStartedConnectingMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setLocallyConnecting];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handlePushHostedCallsMessageFromHost:(id)host completion:(id)completion
{
  hostCopy = host;
  selfCopy = self;
  completionCopy = completion;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  callController = [(CSDRelayController *)self callController];
  callContainer = [callController callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v9 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v31 objects:v41 count:16];
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
          objc_enumerationMutation(currentAudioAndVideoCalls);
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

          receptionistState = [v13 receptionistState];
          isAnswerFromScreening = [v13 isAnswerFromScreening];
          *buf = 138412802;
          if (isAnswerFromScreening)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v36 = v15;
          v37 = 1024;
          v38 = receptionistState;
          v39 = 2112;
          v40 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] handlePushHostedCallsMessageFromHost: isScreening: %@, receptionistState: %d, isAnswerFromScreening: %@", buf, 0x1Cu);
        }

        if ([v13 isScreening] & 1) == 0 && objc_msgSend(v13, "receptionistState") || (objc_msgSend(v13, "isAnswerFromScreening"))
        {
          [v13 setLocallyConnected];

          v19 = selfCopy;
          goto LABEL_24;
        }
      }

      v10 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v31 objects:v41 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v19 = selfCopy;
  callController2 = [(CSDRelayController *)selfCopy callController];
  callContainer2 = [callController2 callContainer];
  hasCurrentCalls = [callContainer2 hasCurrentCalls];

  if (hasCurrentCalls)
  {
    v23 = sub_100004778();
    v25 = completionCopy;
    v24 = hostCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      typeString = [hostCopy typeString];
      *buf = 138412290;
      v36 = typeString;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Received %@ message, but we already have some calls", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  else
  {
LABEL_24:
    v27 = v19;
    v25 = completionCopy;
    v24 = hostCopy;
    [(CSDRelayClientController *)v27 pullRemotelyHostedCallsForMessage:hostCopy completion:completionCopy];
  }
}

- (void)handleUpdateCallContextAvailableMessageFromHost:(id)host
{
  hostCopy = host;
  callCapabilitiesState = [hostCopy callCapabilitiesState];

  if (callCapabilitiesState)
  {
    v5 = +[CSDCallCapabilities sharedInstance];
    callCapabilitiesState2 = [hostCopy callCapabilitiesState];
    [v5 updatePairedHostDeviceCallCapabilitiesState:callCapabilitiesState2];
  }

  providers = [hostCopy providers];

  if (providers)
  {
    callStateController = [(CSDRelayController *)self callStateController];
    callProviderManager = [callStateController callProviderManager];
    tuProviders = [hostCopy tuProviders];
    [callProviderManager registerPairedHostDeviceProviders:tuProviders];
  }
}

- (void)handleNeedsManualInCallSoundsChangeMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setNeedsManualInCallSounds:{objc_msgSend(hostCopy, "needsManualInCallSounds")}];
    [v6 setSoundRegion:{objc_msgSend(hostCopy, "soundRegion")}];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleInvitationSentMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setLocallyHasSentInvitation];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleUpdateCallDisplayContextMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    tuHandle = [hostCopy tuHandle];
    [v6 setHandle:tuHandle];

    displayContext = [v6 displayContext];
    displayContext2 = [hostCopy displayContext];
    v10 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
    [v6 setDisplayContext:v10];
  }

  else
  {
    displayContext = sub_100004778();
    if (os_log_type_enabled(displayContext, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v13 = 138412546;
      v14 = uniqueProxyIdentifier2;
      v15 = 2112;
      v16 = allCalls;
      _os_log_impl(&_mh_execute_header, displayContext, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v13, 0x16u);
    }
  }
}

- (void)handleUpdateRemoteUplinkMutedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (!v6)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v18 = 138412546;
      v19 = uniqueProxyIdentifier2;
      v20 = 2112;
      v21 = allCalls;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v18, 0x16u);
    }

    goto LABEL_10;
  }

  provider = [v6 provider];
  isTinCanProvider = [provider isTinCanProvider];

  if (!isTinCanProvider)
  {
    [v6 setRemoteUplinkMuted:{objc_msgSend(hostCopy, "isRemoteUplinkMuted")}];
    goto LABEL_11;
  }

  [hostCopy messageSendTime];
  v10 = v9;
  [v6 remoteUplinkMutedSetTime];
  if (v10 <= v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      [hostCopy messageSendTime];
      v16 = v15;
      [v6 remoteUplinkMutedSetTime];
      v18 = 138412802;
      v19 = hostCopy;
      v20 = 2048;
      v21 = v16;
      v22 = 2048;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring %@ because messageSendTime (%f) <= call.remoteUplinkMutedSetTime (%f)", &v18, 0x20u);
    }

LABEL_10:

    goto LABEL_11;
  }

  [v6 setRemoteUplinkMuted:{objc_msgSend(hostCopy, "isRemoteUplinkMuted")}];
  [hostCopy messageSendTime];
  [v6 setRemoteUplinkMutedSetTime:?];
LABEL_11:
}

- (void)handleUpdateRoutesMessageFromHost:(id)host
{
  hostCopy = host;
  routes = [hostCopy routes];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [routes count]);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  routes2 = [hostCopy routes];
  v8 = [routes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(routes2);
        }

        tuRoute = [*(*(&v16 + 1) + 8 * v11) tuRoute];
        [v6 addObject:tuRoute];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [routes2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  callStateController = [(CSDRelayController *)self callStateController];
  pairedHostDeviceRouteController = [callStateController pairedHostDeviceRouteController];
  v15 = [v6 copy];
  [pairedHostDeviceRouteController handleUpdatedPairedHostDeviceRoutes:v15];
}

- (void)handleUpdateFailureExpectedMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setFailureExpected:{objc_msgSend(hostCopy, "isFailureExpected")}];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleUpdateSupportsEmergencyFallbackMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setSupportsEmergencyFallback:{objc_msgSend(hostCopy, "supportsEmergencyFallback")}];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)handleUpdateSupportsTTYWithVoiceMessageFromHost:(id)host
{
  hostCopy = host;
  uniqueProxyIdentifier = [hostCopy uniqueProxyIdentifier];
  v6 = [(CSDRelayClientController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v6)
  {
    [v6 setSupportsTTYWithVoice:{objc_msgSend(hostCopy, "supportsTTYWithVoice")}];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier2 = [hostCopy uniqueProxyIdentifier];
      allCalls = [(CSDRelayController *)self allCalls];
      v10 = 138412546;
      v11 = uniqueProxyIdentifier2;
      v12 = 2112;
      v13 = allCalls;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find call with uniqueProxyIdentifier %@. All current calls: %@", &v10, 0x16u);
    }
  }
}

- (void)pullRemotelyHostedCallsForMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1000285E8;
  v29[4] = sub_10003288C;
  completionCopy = completion;
  v30 = objc_retainBlock(completionCopy);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  protoCalls = [messageCopy protoCalls];
  v7 = [protoCalls countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v7)
  {
    v8 = *v26;
    obj = protoCalls;
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
        uniqueProxyIdentifier = [v10 uniqueProxyIdentifier];
        v13 = [(CSDRelayConferenceConnection *)v11 initWithIdentifier:uniqueProxyIdentifier];

        v14 = +[CSDRelayConferenceInterface sharedInstance];
        inviteData = [messageCopy inviteData];
        relayInviteDictionary = [inviteData relayInviteDictionary];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_1000B096C;
        v21[3] = &unk_10061A888;
        v24 = v29;
        v21[4] = self;
        v21[5] = v10;
        v17 = v13;
        v22 = v17;
        v23 = messageCopy;
        [v14 prepareConferenceConnection:v17 remoteInviteDictionary:relayInviteDictionary completion:v21];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      protoCalls = obj;
      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(v29, 8);
}

@end