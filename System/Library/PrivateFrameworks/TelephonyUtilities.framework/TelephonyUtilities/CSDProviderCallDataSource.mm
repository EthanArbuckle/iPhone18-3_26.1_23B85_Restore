@interface CSDProviderCallDataSource
+ (BOOL)_isSystemProviderForIdentifier:(id)a3;
- (BOOL)_actionRequiresReasonableUserIntent:(id)a3;
- (BOOL)_activeStandardCallExists;
- (BOOL)_allowRevertingStateForCompletedTransactionGroup:(id)a3;
- (BOOL)_channelSourceAssertionsContainsPTTTransmissionIntent:(id)a3;
- (BOOL)_isChannelSourceAppForeground:(id)a3;
- (BOOL)_isChannelSourceAppRunningPTTTransmissionAppIntent:(id)a3;
- (BOOL)_isRequestingCallSourceAppBackgroundRunning:(id)a3;
- (BOOL)_meetsRequirementsToBeginTransmitting:(id)a3;
- (BOOL)_shouldAllowAction:(id)a3 forChannelSource:(id)a4 shouldValidateUserIntent:(BOOL)a5 error:(id *)a6;
- (BOOL)_shouldAllowRequestedAction:(id)a3 forCallSource:(id)a4 shouldValidateUserIntent:(BOOL)a5 error:(id *)a6;
- (BOOL)_shouldAllowRequestedTransaction:(id)a3 forCallSource:(id)a4 error:(id *)a5;
- (BOOL)_shouldBlockIfScreenSharing;
- (BOOL)callSource:(id)a3 shouldProcessAction:(id)a4 error:(id *)a5;
- (BOOL)transactionContainsChannelActions:(id)a3;
- (CSDBluetoothHangupCommandObserver)btHangupObserver;
- (CSDProcessObserverProtocol)processObserver;
- (CSDProviderCallDataSource)initWithCallStateController:(id)a3 queue:(id)a4 assistantServicesObserver:(id)a5 coreTelephonyClient:(id)a6 chManager:(id)a7 callSourceManager:(id)a8 protectedAppsUtilities:(id)a9 conversationManager:(id)a10 communicationTrustScoreDataProvider:(id)a11 deviceSupport:(id)a12 featureFlags:(id)a13;
- (CSDRelayCallDataSource)relayCallDataSource;
- (CSDRouteManager)routeManager;
- (CXCallSource)telephonyCallSource;
- (OS_dispatch_queue)processObserverQueue;
- (id)_ISOCountryCodeForCall:(id)a3;
- (id)_ISOCountryCodeForCallWithUUID:(id)a3 provider:(id)a4 callUpdate:(id)a5;
- (id)_callGroupsWithBackingCallSource:(id)a3;
- (id)_callWithUUID:(id)a3;
- (id)_callWithUUID:(id)a3 backingCallSource:(id)a4;
- (id)_callWithUUID:(id)a3 controllableByCallSource:(id)a4;
- (id)_callWithUUID:(id)a3 providerIdentifier:(id)a4;
- (id)_endMutuallyExclusiveCalls:(id)a3;
- (id)_identifiersForCalls:(id)a3;
- (id)_localProviderForCallSource:(id)a3;
- (id)_providerForCallSource:(id)a3;
- (id)_relayCallWithUUID:(id)a3;
- (id)callGroupUUIDToCalls;
- (id)callSourceForDialRequest:(id)a3;
- (id)callSourceWithIdentifier:(id)a3;
- (id)channelProviderForIdentifier:(id)a3;
- (id)conduit;
- (id)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4;
- (id)providerWithIdentifier:(id)a3;
- (id)remoteScaParticipants:(id)a3;
- (void)_addSupplementalActionsForRequestedTransaction:(id)a3 onCallSource:(id)a4;
- (void)_commitUncommittedTransactions;
- (void)_deferCommittingTransactionsUntilAfterRunningBlock:(id)a3;
- (void)_endCall:(id)a3;
- (void)_performRequestedTransaction:(id)a3 onCallSource:(id)a4;
- (void)_performTransaction:(id)a3 onChannelSource:(id)a4;
- (void)_processCompletedCallAction:(id)a3 forCall:(id)a4 allowRevertingState:(BOOL)a5 isOnenessActive:(BOOL)a6;
- (void)_processCompletedChannelAction:(id)a3 forCall:(id)a4;
- (void)_processRequestedTransaction:(id)a3 fromCallSource:(id)a4 completion:(id)a5;
- (void)_processRequestedTransaction:(id)a3 fromProviderSource:(id)a4 completionHandler:(id)a5;
- (void)_startMonitoringAppForCall:(id)a3;
- (void)_stopMonitoringPushToTalkAppProcess;
- (void)acquireIndefiniteProcessAssertionForCall:(id)a3;
- (void)acquireTemporaryProcessAssertionForCall:(id)a3;
- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingCalls:(id)a5 andHoldingCalls:(id)a6;
- (void)callControllerHost:(id)a3 clientWithIdentifier:(id)a4 requestedTransaction:(id)a5 completion:(id)a6;
- (void)callSource:(id)a3 _reportedNewIncomingCallWithUUID:(id)a4 update:(id)a5 completion:(id)a6;
- (void)callSource:(id)a3 _reportedNewIncomingCallWithUUIDSilently:(id)a4 update:(id)a5;
- (void)callSource:(id)a3 registeredWithConfiguration:(id)a4;
- (void)callSource:(id)a3 reportedAudioFinishedForCallWithUUID:(id)a4;
- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 changedFrequencyData:(id)a5 forDirection:(int64_t)a6;
- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 changedMeterLevel:(float)a5 forDirection:(int64_t)a6;
- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 crossDeviceIdentifier:(id)a5 changedBytesOfDataUsed:(int64_t)a6;
- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 endedAtDate:(id)a5 privateReason:(int64_t)a6 failureContext:(id)a7;
- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 receivedDTMFUpdate:(id)a5;
- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 updated:(id)a5;
- (void)callSource:(id)a3 reportedNewIncomingCallWithUUID:(id)a4 update:(id)a5 completion:(id)a6;
- (void)callSource:(id)a3 reportedNewOutgoingCallWithUUID:(id)a4 update:(id)a5;
- (void)callSource:(id)a3 reportedOutgoingCallWithUUID:(id)a4 connectedAtDate:(id)a5;
- (void)callSource:(id)a3 reportedOutgoingCallWithUUID:(id)a4 sentInvitationAtDate:(id)a5;
- (void)callSource:(id)a3 reportedOutgoingCallWithUUID:(id)a4 startedConnectingAtDate:(id)a5;
- (void)callSource:(id)a3 requestedTransaction:(id)a4 completion:(id)a5;
- (void)callSourceManager:(id)a3 completedTransactionGroup:(id)a4;
- (void)callSourcesChangedForCallSourceManager:(id)a3;
- (void)channelSourceManager:(id)a3 completedTransactionGroup:(id)a4;
- (void)channelSourcesChangedForChannelSourceManager:(id)a3;
- (void)didObserveBluetoothHangupCommand;
- (void)disconnectCalls:(id)a3 whileHoldingCalls:(id)a4 andUnholdingCalls:(id)a5 andUngroupingCalls:(id)a6;
- (void)groupCalls:(id)a3 withCalls:(id)a4;
- (void)holdCalls:(id)a3 whileUnholdingCalls:(id)a4;
- (void)holdOrEndOtherCallsBecauseCallWillBeginOutgoing:(id)a3;
- (void)invalidateIndefiniteProcessAssertionForCall:(id)a3;
- (void)invalidateProcessAssertionForBundleIdentifier:(id)a3;
- (void)performCallAction:(id)a3 forCall:(id)a4;
- (void)performCallActions:(id)a3 forCall:(id)a4;
- (void)performChannelAction:(id)a3 forCall:(id)a4;
- (void)performStartCallAction:(id)a3 forCall:(id)a4;
- (void)presentAccessoryButtonEventsEnabledNotice;
- (void)presentIncomingTransmissionNotice;
- (void)providerSource:(id)a3 registeredWithConfiguration:(id)a4;
- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 connectedAtDate:(id)a5;
- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 disconnectedAtDate:(id)a5 disconnectedReason:(int64_t)a6;
- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 startedConnectingAtDate:(id)a5;
- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 updated:(id)a5;
- (void)providerSource:(id)a3 reportedIncomingTransmissionEndedForChannelWithUUID:(id)a4 reason:(int64_t)a5 completionHandler:(id)a6;
- (void)providerSource:(id)a3 reportedIncomingTransmissionStartedForChannelWithUUID:(id)a4 update:(id)a5 shouldReplaceOutgoingTransmission:(BOOL)a6 completionHandler:(id)a7;
- (void)providerSource:(id)a3 requestedTransaction:(id)a4 completionHandler:(id)a5;
- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4;
- (void)pullCallWithHandoffActivityUserInfo:(id)a3 completion:(id)a4;
- (void)registerCall:(id)a3;
- (void)restorePersistedBargeCallsIfNecessary;
- (void)screenTimeCallFilter:(id)a3 didChangeAllowed:(BOOL)a4 forCallUUID:(id)a5;
- (void)sendMMIOrUSSDCodeWithRequest:(id)a3;
- (void)setCallProviderManager:(id)a3;
- (void)setTTYType:(int)a3 forCalls:(id)a4;
- (void)setUplinkMuted:(BOOL)a3 forCalls:(id)a4 userInitiated:(BOOL)a5;
- (void)startObservingBluetoothHangupCommands;
- (void)startTrackingCall:(id)a3;
- (void)stopObservingBluetoothHangupCommands;
- (void)stopTrackingCall:(id)a3;
- (void)ungroupCall:(id)a3 fromOtherCallsInGroup:(id)a4;
- (void)updateFilteredOutReasonForCall:(id)a3 WithError:(id)a4;
@end

@implementation CSDProviderCallDataSource

- (CXCallSource)telephonyCallSource
{
  v2 = [(CSDProviderCallDataSource *)self callSourceManager];
  v3 = [v2 callSourceWithIdentifier:@"com.apple.coretelephony"];

  return v3;
}

- (void)_commitUncommittedTransactions
{
  v2 = [(CSDProviderCallDataSource *)self callSourceManager];
  [v2 commitUncommittedTransactions];
}

- (CSDRelayCallDataSource)relayCallDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_relayCallDataSource);

  return WeakRetained;
}

- (id)callGroupUUIDToCalls
{
  v3 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(CSDCallDataSource *)self calls];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 callGroupUUID];

        if (v10)
        {
          v11 = [v9 callGroupUUID];
          v12 = [v3 objectForKeyedSubscript:v11];

          if (v12)
          {
            v13 = [v9 callGroupUUID];
            v14 = [v3 objectForKeyedSubscript:v13];
            v15 = [v14 arrayByAddingObject:v9];
            v16 = [v9 callGroupUUID];
            [v3 setObject:v15 forKeyedSubscript:v16];
          }

          else
          {
            v23 = v9;
            v13 = [NSArray arrayWithObjects:&v23 count:1];
            v14 = [v9 callGroupUUID];
            [v3 setObject:v13 forKeyedSubscript:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)_callWithUUID:(id)a3 providerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(CSDCallDataSource *)self calls];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v19 + 1) + 8 * v13);

        v15 = [v11 uniqueProxyIdentifierUUID];
        if ([v15 isEqual:v6])
        {
          v16 = [v11 providerIdentifier];
          v17 = [v16 isEqualToString:v7];

          if (v17)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)_activeStandardCallExists
{
  v2 = [(CSDCallDataSource *)self calls];
  v3 = [v2 tu_containsObjectPassingTest:&stru_10061BC88];

  return v3;
}

- (void)_performTransaction:(id)a3 onChannelSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallDataSource *)self callStateController];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = v6;
  v9 = [v6 actions];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Creating new call due to requested action: %@", buf, 0xCu);
          }

          v16 = [CSDProviderBargeCall callForChannelSource:v7 joinAction:v14];
          [v8 setCallDelegatesIfNeeded:v16];
          [v8 propertiesChangedForCall:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [v25 actions];
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v23 = [(CSDProviderCallDataSource *)self channelSourceManager];
        [v23 addAction:v22 toUncommittedTransactionForChannelSource:v7];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  v24 = [(CSDProviderCallDataSource *)self channelSourceManager];
  [v24 commitUncommittedTransactions];
}

- (void)_processCompletedChannelAction:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100475204();
    }

    v8 = 0;
    goto LABEL_61;
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v6 state];
    v10 = sub_100004778();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fulfilled channel connect action %@", &v38, 0xCu);
      }

      v12 = +[CSDPersistedChannelRegistry sharedInstance];
      [v12 notePushToTalkChannelConnectedForCall:v8];

      [v8 setTransmissionState:1];
      v13 = +[NSDate date];
      [v8 setDateConnected:v13];

      [v8 setHeld:1];
      [(CSDProviderCallDataSource *)self startObservingBluetoothHangupCommands];
      [(CSDProviderCallDataSource *)self _startMonitoringAppForCall:v8];
      [v8 playSoundForSoundType:18 completion:0];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100475470();
      }

      [v8 setTransmissionState:0];
      v21 = +[NSDate date];
      [v8 setDateEnded:v21];
    }

    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v6;
    v16 = [v15 state];
    v17 = sub_100004778();
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fulfilled channel leave action %@", &v38, 0xCu);
      }

      [(CSDProviderCallDataSource *)self stopObservingBluetoothHangupCommands];
      [(CSDProviderCallDataSource *)self _stopMonitoringPushToTalkAppProcess];
      [v8 setTransmissionState:0];
      v19 = [v15 leaveDate];
      [v8 setDateEnded:v19];

      v20 = +[CSDPersistedChannelRegistry sharedInstance];
      [v20 tearDownPersistedChannelForCall:v8 teardownType:1];

      [v8 playSoundForSoundType:19 completion:0];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100475408();
      }

      [v8 setTransmissionState:0];
      v26 = +[NSDate date];
      [v8 setDateEnded:v26];

      [v8 setEndedReason:1];
      v27 = +[CSDPersistedChannelRegistry sharedInstance];
      [v27 tearDownPersistedChannelForCall:v8 teardownType:3];
    }

LABEL_27:

    goto LABEL_59;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v6 state];
    v23 = sub_100004778();
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = v6;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fufilled channel transmit start action %@", &v38, 0xCu);
      }

      if ([v8 transmissionState] == 2)
      {
        v25 = [v8 transmissionState] | 0xC;
      }

      else
      {
        v25 = 12;
      }

      [v8 setTransmissionState:v25];
      v34 = [(CSDProviderCallDataSource *)self featureFlags];
      v35 = [v34 sessionBasedMutingEnabled];

      if (v35)
      {
        [v8 setUplinkMuted:1];
      }

      else
      {
        [v8 setUnderlyingUplinkMuted:1];
      }

      [v8 setHeld:0];
    }

    else
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1004753A0();
      }

      if (([v8 transmissionState] & 2) != 0)
      {
        [v8 setTransmissionState:2];
      }

      else
      {
        [v8 setTransmissionState:1];
        [v8 setHeld:1];
      }

      [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:v8];
      [v8 playSoundForSoundType:22 completion:0];
    }

    [v8 setDeferredTransmitStartAction:0];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v29 = [v6 state];
    v30 = sub_100004778();
    v15 = v30;
    if ((isKindOfClass & 1) == 0)
    {
      if (v29 == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 138412290;
          v39 = v6;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fulfilled action %@", &v38, 0xCu);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1004752D0();
      }

      goto LABEL_27;
    }

    if (v29 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = v6;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fufilled channel transmit stop action %@", &v38, 0xCu);
      }

      v31 = [v8 transmissionState];
      v32 = (v31 & 2) == 0;
      if ((v31 & 2) != 0)
      {
        v33 = 10;
      }

      else
      {
        v33 = 9;
      }

      [v8 setTransmissionState:v33];
      [v8 playSoundForTransmissionState:objc_msgSend(v8 completion:{"transmissionState"), 0}];
      [v8 setTransmissionState:{objc_msgSend(v8, "transmissionState") & 0xFFFFFFFFFFFFFFF7}];
      [v8 setHeld:v32];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_100475338();
      }

      [v8 disconnectWithReason:14];
    }

    [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:v8];
  }

LABEL_59:
  if ([v6 state]== 2)
  {
    v14 = +[CSDReportingController sharedInstance];
    [v14 reportProviderFailedWithAction:v6 forCall:v8];
LABEL_61:
  }
}

- (void)_processRequestedTransaction:(id)a3 fromProviderSource:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    v16 = 0;
    v12 = [(CSDProviderCallDataSource *)self _shouldAllowTransaction:v8 forChannelSource:v11 shouldValidateUserIntent:1 error:&v16];
    v13 = v16;
    v14 = sub_100004778();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Allowing transaction %@", buf, 0xCu);
      }

      [(CSDProviderCallDataSource *)self _performTransaction:v8 onChannelSource:v11];
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transaction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v10[2](v10, v13);
}

- (BOOL)_shouldAllowAction:(id)a3 forChannelSource:(id)a4 shouldValidateUserIntent:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v10;
    v13 = [v12 channelUUID];
    v14 = [v11 identifier];
    v15 = [(CSDProviderCallDataSource *)self _callWithUUID:v13 providerIdentifier:v14];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = +[CSDPersistedChannelRegistry sharedInstance];
      v17 = [v16 activePersistedChannelIdentity];

      v18 = [(CSDProviderCallDataSource *)self _isChannelSourceAppForeground:v11];
      if (v17)
      {
        v50 = a6;
        v19 = v15;
        v20 = v13;
        v21 = [v17 bundleIdentifier];
        v22 = [v11 bundleIdentifier];
        v23 = [v21 isEqualToString:v22];

        v24 = sub_100004778();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        v13 = v20;
        if (v23)
        {
          if (v25)
          {
            *buf = 138412290;
            v54 = v20;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Allowing join action to proceed for UUID %@. App has a persisted channel on file.", buf, 0xCu);
          }

          v26 = 0;
          v15 = v19;
        }

        else
        {
          if (v25)
          {
            *buf = 138412290;
            v54 = v20;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[WARN] Denying join action for UUID %@. There is some other app with the channel.", buf, 0xCu);
          }

          v15 = v19;
          if (v18)
          {
            v33 = 3;
          }

          else
          {
            v33 = 11;
          }

          v26 = [NSError cx_channelErrorWithCode:v33];
        }

        a6 = v50;
      }

      else
      {
        v31 = sub_100004778();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v32)
          {
            *buf = 138412290;
            v54 = v13;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Allowing join action to proceed for UUID %@. No persisted channel on file and app is FG", buf, 0xCu);
          }

          v26 = 0;
        }

        else
        {
          if (v32)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Denying channel join because app not foreground.", buf, 2u);
          }

          v26 = [NSError cx_channelErrorWithCode:11];
        }
      }

      v35 = [v15 dateConnected];

      if (v35)
      {
        v36 = sub_100004778();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v13;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] Denying join action; found existing joined channel with UUID %@", buf, 0xCu);
        }

        v37 = [NSError cx_channelErrorWithCode:3];

        v26 = v37;
      }

      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v15 || ([v15 dateConnected], v28 = objc_claimAutoreleasedReturnValue(), v28, !v28))
      {
        v29 = sub_100004778();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v13;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Denying leave action; could not find a joined channel with UUID %@", buf, 0xCu);
        }

        v26 = [NSError cx_channelErrorWithCode:4];
        goto LABEL_46;
      }

LABEL_34:
      v26 = 0;
      goto LABEL_46;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v15 && ([v15 dateConnected], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
      {
        v26 = 0;
      }

      else
      {
        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v13;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; could not find a joined channel with UUID %@", buf, 0xCu);
        }

        v26 = [NSError cx_channelErrorWithCode:4];
      }

      if ([v15 transmissionMode] == 2)
      {
        v51 = v13;
        v41 = sub_100004778();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; channel is is in listen only mode.", buf, 2u);
        }

        v42 = [NSError cx_channelErrorWithCode:12];

        v26 = v42;
        v13 = v51;
      }

      if ([v15 isReceivingTransmission] && objc_msgSend(v15, "transmissionMode"))
      {
        v52 = v13;
        v43 = sub_100004778();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; channel is already receiving transmission and mode is not full-duplex.", buf, 2u);
        }

        v44 = [NSError cx_channelErrorWithCode:6];

        v26 = v44;
        v13 = v52;
      }

      if (v7 && ![(CSDProviderCallDataSource *)self _meetsRequirementsToBeginTransmitting:v11])
      {
        v45 = sub_100004778();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v13;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; app not foreground %@", buf, 0xCu);
        }

        v46 = 11;
LABEL_74:
        v49 = [NSError cx_channelErrorWithCode:v46];

        v26 = v49;
      }

LABEL_46:

      if (!a6)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_34;
    }

    if (v15 && ([v15 dateConnected], v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
    {
      v26 = 0;
    }

    else
    {
      v47 = sub_100004778();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = v13;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; could not find a joined channel with UUID %@", buf, 0xCu);
      }

      v26 = [NSError cx_channelErrorWithCode:4];
      if (!v15)
      {
        goto LABEL_46;
      }
    }

    if ([v15 isSendingTransmission])
    {
      goto LABEL_46;
    }

    v48 = sub_100004778();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v13;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit stop action; channel was not in a transmitting state %@", buf, 0xCu);
    }

    v46 = 7;
    goto LABEL_74;
  }

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Denying invalid action %@", buf, 0xCu);
  }

  v26 = [NSError cx_requestTransactionErrorWithCode:6];
  if (a6)
  {
LABEL_47:
    if (v26)
    {
      v38 = v26;
      *a6 = v26;
    }
  }

LABEL_49:

  return v26 == 0;
}

- (void)restorePersistedBargeCallsIfNecessary
{
  v3 = +[CSDPersistedChannelRegistry sharedInstance];
  v4 = [v3 activePersistedChannelIdentity];

  if (v4)
  {
    v5 = [v4 channelUUID];
    v6 = [(CSDProviderCallDataSource *)self _callWithUUID:v5];

    v7 = sub_100004778();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = [0 uniqueProxyIdentifier];
        v27 = 138412546;
        v28 = v9;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found existing call with identifier %@; will not attempt to restore a call from persisted channel identity %@", &v27, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
        v27 = 138412290;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to restore a call from persisted channel identity %@", &v27, 0xCu);
      }

      v7 = [CSDProviderBargeCall callForChannelIdentity:v4];
      v10 = [v7 applicationRecord];
      v11 = sub_100004778();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v7 uniqueProxyIdentifier];
          v27 = 138412546;
          v28 = v13;
          v29 = 2112;
          v30 = v4;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Restoring call with identifier %@ from persisted channel identity %@", &v27, 0x16u);
        }

        v14 = [(CSDProviderCallDataSource *)self channelSourceManager];
        v15 = [v7 providerIdentifier];
        v16 = [v14 channelSourceForIdentifier:v15];

        v17 = [v7 provider];
        v18 = v17 | v16;

        if (v18)
        {
          v19 = [v7 provider];

          if (!v19 && v16)
          {
            v20 = sub_100004778();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v7 uniqueProxyIdentifierUUID];
              v27 = 138412546;
              v28 = v21;
              v29 = 2112;
              v30 = v16;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding channel source %@ to restored channel with UUID %@", &v27, 0x16u);
            }

            [v7 setProviderSource:v16];
          }
        }

        else
        {
          v23 = sub_100004778();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v27 = 138412290;
            v28 = v4;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Synthesizing and registering persisted barge call's provider %@", &v27, 0xCu);
          }

          v24 = [[CSDChannelProvider alloc] initWithApplicationRecord:v10];
          v25 = [(CSDProviderCallDataSource *)self channelProviderManager];
          [v25 registerProvider:v24];
        }

        v22 = [(CSDCallDataSource *)self callStateController];
        [v22 setCallDelegatesIfNeeded:v7];
        [v22 propertiesChangedForCall:v7];
        [v7 setTransmissionState:1];
        v26 = +[NSDate date];
        [v7 setDateConnected:v26];

        [v7 setHeld:1];
        [(CSDProviderCallDataSource *)self startObservingBluetoothHangupCommands];
        [(CSDProviderCallDataSource *)self _startMonitoringAppForCall:v7];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1004754D8();
        }

        v16 = +[CSDPersistedChannelRegistry sharedInstance];
        v22 = [v4 bundleIdentifier];
        [v16 tearDownPersistedChannelForBundleIdentifier:v22 teardownType:2];
      }
    }
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "A persisted channel identity was not found, no call restoration will be attempted", &v27, 2u);
    }
  }
}

- (BOOL)transactionContainsChannelActions:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 actions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)channelSourceManager:(id)a3 completedTransactionGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113300;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)channelSourcesChangedForChannelSourceManager:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallDataSource *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113638;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)providerSource:(id)a3 requestedTransaction:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Provider source %@ received requested transaction %@", &v12, 0x16u);
  }

  [(CSDProviderCallDataSource *)self _processRequestedTransaction:v9 fromProviderSource:v8 completionHandler:v10];
}

- (void)providerSource:(id)a3 registeredWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Channel source %@ registered with configuration %@", &v21, 0x16u);
  }

  v9 = [[CSDChannelProvider alloc] initWithSource:v6 configuration:v7];
  v10 = [(CSDProviderCallDataSource *)self channelProviderManager];
  [v10 registerProvider:v9];

  v11 = +[CSDPersistedChannelRegistry sharedInstance];
  v12 = [v11 activePersistedChannelIdentity];

  v13 = [(CSDChannelProvider *)v9 identifier];
  v14 = [v12 applicationIdentifier];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    [(CSDProviderCallDataSource *)self restorePersistedBargeCallsIfNecessary];
    v16 = [v12 channelUUID];
    v17 = [v12 applicationIdentifier];
    v18 = [(CSDProviderCallDataSource *)self _callWithUUID:v16 providerIdentifier:v17];

    v19 = sub_100004778();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = 138412546;
        v22 = v6;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Channel source flushing properties %@ for restored call %@", &v21, 0x16u);
      }

      v19 = [(CSDCallDataSource *)self callStateController];
      [v19 propertiesChangedForCall:v18];
    }

    else if (v20)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Channel source couldn't find call to flush properties", &v21, 2u);
    }
  }
}

- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 startedConnectingAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ started connecting channel with UUID %@ at date %@", &v17, 0x20u);
  }

  v12 = [v8 identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 providerIdentifier:v12];

  if (!v13)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  v14 = [v13 dateStartedConnecting];

  if (v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 uniqueProxyIdentifier];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a started connecting date.", &v17, 0xCu);
    }

    goto LABEL_12;
  }

  if (!v10)
  {
    v15 = +[NSDate date];
    [v13 setDateStartedConnecting:v15];
LABEL_12:

    goto LABEL_13;
  }

  [v13 setDateStartedConnecting:v10];
LABEL_13:
}

- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 connectedAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ connected channel with UUID %@ at date %@", &v17, 0x20u);
  }

  v12 = [v8 identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 providerIdentifier:v12];

  if (!v13)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  v14 = [v13 dateConnected];

  if (v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v13 uniqueProxyIdentifier];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a connected date.", &v17, 0xCu);
    }

    goto LABEL_12;
  }

  if (!v10)
  {
    v15 = +[NSDate date];
    [v13 setDateConnected:v15];
LABEL_12:

    goto LABEL_13;
  }

  [v13 setDateConnected:v10];
LABEL_13:
}

- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 disconnectedAtDate:(id)a5 disconnectedReason:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138413058;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2048;
    v25 = a6;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel source %@ disconnected channel with UUID %@ with reason %ld at date %@", &v20, 0x2Au);
  }

  v14 = [v10 identifier];
  v15 = [(CSDProviderCallDataSource *)self _callWithUUID:v11 providerIdentifier:v14];

  if (!v15)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v20, 0x16u);
    }

    goto LABEL_9;
  }

  v16 = [v15 dateEnded];

  if (v16)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v15 uniqueProxyIdentifier];
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a disconnected date.", &v20, 0xCu);
    }

LABEL_9:

    goto LABEL_16;
  }

  if (a6 != 1)
  {
    a6 = -1;
  }

  if (v12)
  {
    [v15 setDateEnded:v12];
  }

  else
  {
    v19 = +[NSDate date];
    [v15 setDateEnded:v19];
  }

  [v15 setEndedReason:a6];
LABEL_16:
}

- (void)providerSource:(id)a3 reportedChannelWithUUID:(id)a4 updated:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ updated channel with UUID %@ with update %@", &v17, 0x20u);
  }

  v12 = [v8 identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 providerIdentifier:v12];

  if ([v13 isSendingTransmission] && (objc_msgSend(v10, "hasSet") & 0x200) != 0)
  {
    v14 = v13;
    if ([v10 transmissionMode] == 2 || objc_msgSend(v14, "isReceivingTransmission") && objc_msgSend(v10, "transmissionMode") == 1)
    {
      [v14 stopTransmissionWithOriginator:2];
    }
  }

  if (v13)
  {
    if (([v10 hasSet] & 0x400) != 0)
    {
      v15 = [v10 accessoryButtonEventsEnabled];
      if (v15 != [v13 accessoryButtonEventsEnabled])
      {
        [(CSDProviderCallDataSource *)self presentAccessoryButtonEventsEnabledNotice];
      }
    }

    v16 = [v10 csd_callUpdate];
    [v13 updateWithCallUpdate:v16];
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v17, 0x16u);
    }
  }
}

- (void)providerSource:(id)a3 reportedIncomingTransmissionEndedForChannelWithUUID:(id)a4 reason:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 UUIDString];
    v20 = 138412802;
    v21 = v10;
    v22 = 2112;
    v23 = v14;
    v24 = 2048;
    v25 = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel source %@ reported a channel with UUID %@ ended an incoming transmission with reason %ld", &v20, 0x20u);
  }

  v15 = [v10 identifier];
  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:v11 providerIdentifier:v15];

  if (v16)
  {
    if (([v16 transmissionState] & 2) != 0)
    {
      [v16 setActiveRemoteParticipant:0];
      if (![v16 transmissionMode] && (objc_msgSend(v16, "transmissionState") & 4) != 0)
      {
        [v16 setTransmissionState:12];
      }

      else
      {
        [v16 setTransmissionState:1];
        [v16 hold];
        [v16 setHeld:1];
      }

      v19 = 0;
      if (v12)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v17 = 7;
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v20, 0x16u);
    }

    v17 = 4;
  }

  v19 = [NSError cx_channelErrorWithCode:v17];
  if (v12)
  {
LABEL_10:
    v12[2](v12, v19);
  }

LABEL_11:
}

- (void)providerSource:(id)a3 reportedIncomingTransmissionStartedForChannelWithUUID:(id)a4 update:(id)a5 shouldReplaceOutgoingTransmission:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 UUIDString];
    v37 = 138412802;
    v38 = v12;
    v39 = 2112;
    v40 = v17;
    v41 = 2112;
    v42 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Channel source %@ reported a channel with UUID %@ started an incoming transmission with update %@", &v37, 0x20u);
  }

  v18 = [v12 identifier];
  v19 = [(CSDProviderCallDataSource *)self _callWithUUID:v13 providerIdentifier:v18];

  v20 = [v14 activeRemoteParticipant];
  v21 = [v20 name];
  v22 = [v21 length];

  if (v22)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 postNotificationName:@"CSDBargeCallSetValidActiveRemoteParticipantNameNotification" object:v19];
  }

  if ([(CSDProviderCallDataSource *)self _activeStandardCallExists])
  {
    v24 = 2;
    goto LABEL_29;
  }

  if (v19)
  {
    if ([v19 transmissionState])
    {
      [v19 setTransmissionState:2];
      v32 = [v14 csd_callUpdate];
      [v19 updateWithCallUpdate:v32 notifyDelegate:0];

      [v19 unhold];
      [v19 setHeld:0];
      goto LABEL_21;
    }

    if (([v19 transmissionState] & 2) != 0)
    {
      v35 = [v14 csd_callUpdate];
      [v19 updateWithCallUpdate:v35 notifyDelegate:1];

      goto LABEL_24;
    }

    if ([v19 transmissionMode] == 1 && (objc_msgSend(v19, "transmissionState") & 4) != 0 && v8)
    {
      v25 = sub_100004778();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Replacing outgoing PTT transmission with incoming active remote speaker.", &v37, 2u);
      }

      [v19 setTransmissionState:{objc_msgSend(v19, "transmissionState") | 2}];
      v26 = [v14 csd_callUpdate];
      [v19 updateWithCallUpdate:v26 notifyDelegate:0];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v27 = v19;
      v28 = [CXChannelTransmitStopAction alloc];
      v29 = [v27 uniqueProxyIdentifierUUID];
      v30 = [v28 initWithChannelUUID:v29];

      [v30 setOriginator:2];
      [(CSDProviderCallDataSource *)self performChannelAction:v30 forCall:v27];

      goto LABEL_33;
    }

    if (![v19 transmissionMode] && (objc_msgSend(v19, "transmissionState") & 4) != 0)
    {
      [v19 setTransmissionState:{objc_msgSend(v19, "transmissionState") | 2}];
      v30 = [v14 csd_callUpdate];
      [v19 updateWithCallUpdate:v30 notifyDelegate:0];
LABEL_33:

LABEL_21:
      v33 = [v19 providerDisplayMonitor];
      v34 = [v33 isVisible];

      if ((v34 & 1) == 0)
      {
        [(CSDProviderCallDataSource *)self presentIncomingTransmissionNotice];
      }

LABEL_24:
      v36 = 0;
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v24 = 6;
  }

  else
  {
    v31 = sub_100004778();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412546;
      v38 = v12;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v37, 0x16u);
    }

    v24 = 4;
  }

LABEL_29:
  v36 = [NSError cx_channelErrorWithCode:v24];
  if (v15)
  {
LABEL_30:
    v15[2](v15, v36);
  }

LABEL_31:
}

- (void)presentIncomingTransmissionNotice
{
  v3 = +[NSURL faceTimeShowIncomingTransmissionNoticeUIURL];
  v2 = v3;
  TUOpenURLWithCompletion();
}

- (void)presentAccessoryButtonEventsEnabledNotice
{
  v3 = +[NSURL faceTimeShowAccessoryButtonEventsNoticeUIURL];
  v2 = v3;
  TUOpenURLWithCompletion();
}

- (BOOL)_meetsRequirementsToBeginTransmitting:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self _isChannelSourceAppForeground:v4];
  v6 = [v4 isPermittedToUseBluetoothAccessories];
  LOBYTE(self) = [(CSDProviderCallDataSource *)self _isChannelSourceAppRunningPTTTransmissionAppIntent:v4];

  return (self | v6 | v5) & 1;
}

- (BOOL)_isChannelSourceAppForeground:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self processObserver];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [(CSDProviderCallDataSource *)self processObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115214;
  block[3] = &unk_10061AE20;
  v11 = v5;
  v12 = v4;
  v13 = &v14;
  v7 = v4;
  v8 = v5;
  dispatch_sync(v6, block);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

- (BOOL)_isChannelSourceAppRunningPTTTransmissionAppIntent:(id)a3
{
  v4 = [a3 bundleIdentifier];
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v4];

  v14 = 0;
  v6 = [RBSProcessHandle handleForPredicate:v5 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004755B0();
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = [v6 currentState];
    v8 = [v10 assertions];

    if (v8)
    {
      v11 = [v8 valueForKey:@"domain"];
      v9 = [(CSDProviderCallDataSource *)self _channelSourceAssertionsContainsPTTTransmissionIntent:v11];
    }

    else
    {
      v9 = 0;
    }

    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ChannelSource has PushToTalkTransmissionIntent assertion: %d", buf, 8u);
    }
  }

  return v9;
}

- (BOOL)_channelSourceAssertionsContainsPTTTransmissionIntent:(id)a3
{
  if (a3)
  {
    return [a3 containsObject:@"com.apple.siri.pushtotalk:PTTActivation"];
  }

  else
  {
    return 0;
  }
}

- (void)startObservingBluetoothHangupCommands
{
  v3 = [(CSDProviderCallDataSource *)self btHangupObserver];
  [v3 setDelegate:self];

  v4 = [(CSDProviderCallDataSource *)self btHangupObserver];
  [v4 startObservingHangupCommands];
}

- (void)stopObservingBluetoothHangupCommands
{
  v2 = [(CSDProviderCallDataSource *)self btHangupObserver];
  [v2 stopObservingHangupCommands];
}

- (void)didObserveBluetoothHangupCommand
{
  v3 = +[CSDPersistedChannelRegistry sharedInstance];
  v11 = [v3 activePersistedChannelIdentity];

  v4 = [v11 channelUUID];
  v5 = [(CSDProviderCallDataSource *)self _callWithUUID:v4];
  v6 = [v5 provider];
  v7 = [v6 bundleIdentifier];
  v8 = [v11 bundleIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
      if ([v10 transmissionMode] != 2)
      {
        if ([v10 isSendingTransmission])
        {
          [v10 stopTransmissionWithOriginator:1];
        }

        else if (([v10 isHeld] & 1) != 0 || objc_msgSend(v10, "isReceivingTransmission") && !objc_msgSend(v10, "transmissionMode"))
        {
          [v10 startTransmissionWithOriginator:1];
        }
      }
    }
  }
}

- (void)acquireTemporaryProcessAssertionForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationRecord];
  v6 = [v5 bundleIdentifier];
  v7 = [CSDVoIPProcessAssertion processAssertionWithBundleIdentifier:v6];

  LODWORD(v6) = [v7 acquire];
  v8 = sub_100004778();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 uniqueProxyIdentifier];
      *buf = 134218242;
      v17 = v7;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Taking temporary process assertion %p for barge call with identifier %@", buf, 0x16u);
    }

    v11 = dispatch_time(0, 15000000000);
    v12 = [(CSDCallDataSource *)self queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10011592C;
    v13[3] = &unk_100619D88;
    v14 = v7;
    v15 = v4;
    dispatch_after(v11, v12, v13);

    v9 = v14;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100475618(v7, v4);
  }
}

- (void)acquireIndefiniteProcessAssertionForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationRecord];
  v6 = [v5 bundleIdentifier];

  if ([v6 length])
  {
    v7 = [(CSDProviderCallDataSource *)self processAssertionManager];
    [v7 acquireProcessAssertionForBundleIdentifier:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 uniqueProxyIdentifier];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot obtain process assertion; bundle identifier not found for call with identifier %@.", &v9, 0xCu);
    }
  }
}

- (void)invalidateIndefiniteProcessAssertionForCall:(id)a3
{
  v4 = [a3 applicationRecord];
  v5 = [v4 bundleIdentifier];

  [(CSDProviderCallDataSource *)self invalidateProcessAssertionForBundleIdentifier:v5];
}

- (void)invalidateProcessAssertionForBundleIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 length])
  {
    v4 = [(CSDProviderCallDataSource *)self processAssertionManager];
    [v4 invalidateProcessAssertionForBundleIdentifier:v5];
  }
}

- (id)channelProviderForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self channelProviderManager];
  v6 = [v5 providerForIdentifier:v4];

  return v6;
}

- (void)performChannelAction:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform action %@ for call %@", buf, 0x16u);
  }

  v9 = [v7 providerSource];

  if (v9)
  {
    v10 = [v7 providerSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v7 providerSource];
      if ([v6 originator] != 2 && -[CSDProviderCallDataSource channelSource:shouldProcessAction:error:](self, "channelSource:shouldProcessAction:error:", v12, v6, 0))
      {
        [(CSDProviderCallDataSource *)self acquireTemporaryProcessAssertionForCall:v7];
      }

      v13 = [(CSDProviderCallDataSource *)self channelSourceManager];
      [v13 addAction:v6 toUncommittedTransactionForChannelSource:v12];

      v14 = [(CSDProviderCallDataSource *)self channelSourceManager];
      [v14 commitUncommittedTransactions];

LABEL_23:
      goto LABEL_24;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 providerSource];
      *buf = 138412290;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Provider source was not of type CXChannelSource: %@", buf, 0xCu);
    }

LABEL_18:

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v6;
      v17 = objc_alloc_init(_LSOpenConfiguration);
      v28 = FBSOpenApplicationOptionKeyActivateSuspended;
      v29 = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [v17 setFrontBoardOptions:v18];

      v19 = [v7 applicationRecord];
      v20 = [v19 bundleIdentifier];

      if ([v20 length])
      {
        v21 = +[LSApplicationWorkspace defaultWorkspace];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100116050;
        v23[3] = &unk_10061BCD8;
        v23[4] = self;
        v24 = v7;
        v25 = v12;
        v26 = v20;
        v27 = v25;
        [v21 openApplicationWithBundleIdentifier:v26 configuration:v17 completionHandler:v23];
      }

      else
      {
        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Could not obtain bundle identifier; cannot process action %@", buf, 0xCu);
        }

        [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:v7];
      }

      goto LABEL_23;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring action %@ until a provider source connects to call %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  [v6 fulfill];
  [(CSDProviderCallDataSource *)self _processCompletedChannelAction:v6 forCall:v7];
LABEL_24:
}

- (void)_startMonitoringAppForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 providerSource];
  v6 = [v5 bundleIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 providerSource];
    v9 = [v8 bundleIdentifier];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(CSDProviderCallDataSource *)self processObserverQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100116424;
      block[3] = &unk_100619D88;
      block[4] = self;
      v12 = v4;
      v20 = v12;
      dispatch_async(v11, block);

      objc_initWeak(location, self);
      objc_copyWeak(&v17, location);
      v16 = v12;
      v13 = [(CSDProviderCallDataSource *)self processObserver:_NSConcreteStackBlock];
      [v13 setProcessStateChanged:&v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(location);

      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BargeCall provider bundle identifier was empty so we are not able to start monitoring the process.", location, 2u);
  }

LABEL_8:
}

- (void)_stopMonitoringPushToTalkAppProcess
{
  v2 = [(CSDProviderCallDataSource *)self processObserver];
  [v2 setProcessStateChanged:0];
}

- (CSDProviderCallDataSource)initWithCallStateController:(id)a3 queue:(id)a4 assistantServicesObserver:(id)a5 coreTelephonyClient:(id)a6 chManager:(id)a7 callSourceManager:(id)a8 protectedAppsUtilities:(id)a9 conversationManager:(id)a10 communicationTrustScoreDataProvider:(id)a11 deviceSupport:(id)a12 featureFlags:(id)a13
{
  v18 = a3;
  v19 = a4;
  obj = a5;
  v20 = a5;
  v21 = v19;
  v119 = v20;
  v22 = a6;
  v125 = a7;
  v124 = a8;
  v23 = a9;
  v120 = a10;
  v24 = a11;
  v25 = a12;
  v121 = a13;
  v146.receiver = self;
  v146.super_class = CSDProviderCallDataSource;
  v123 = v18;
  v26 = [(CSDCallDataSource *)&v146 initWithCallStateController:v18 queue:v19];
  v27 = v26;
  if (v26)
  {
    v118 = v24;
    objc_storeStrong(&v26->_assistantServicesObserver, obj);
    v28 = v22;
    if (!v22)
    {
      v28 = [[CSDCoreTelephonyClient alloc] initWithQueue:v19 shouldRegisterForECBMNotification:0];
    }

    objc_storeStrong(&v27->_coreTelephonyClient, v28);
    obja = v22;
    if (!v22)
    {
    }

    v29 = objc_alloc_init(NSMutableDictionary);
    pendingCallsToChatUUIDs = v27->_pendingCallsToChatUUIDs;
    v27->_pendingCallsToChatUUIDs = v29;

    incomingCallFilterQueryResult = v27->_incomingCallFilterQueryResult;
    v27->_incomingCallFilterQueryResult = &stru_10061FB80;

    v144[0] = _NSConcreteStackBlock;
    v144[1] = 3221225472;
    v144[2] = sub_1002530E4;
    v144[3] = &unk_10061FBA8;
    v32 = v123;
    v145 = v32;
    v33 = objc_retainBlock(v144);
    systemAllowsCall = v27->_systemAllowsCall;
    v27->_systemAllowsCall = v33;

    v142[0] = _NSConcreteStackBlock;
    v142[1] = 3221225472;
    v142[2] = sub_100253168;
    v142[3] = &unk_10061FBD0;
    v35 = v32;
    v143 = v35;
    v36 = objc_retainBlock(v142);
    callDirectoryAllowsCallFromSourceAddress = v27->_callDirectoryAllowsCallFromSourceAddress;
    v27->_callDirectoryAllowsCallFromSourceAddress = v36;

    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_1002531D0;
    v140[3] = &unk_10061FBD0;
    v38 = v35;
    v141 = v38;
    v39 = objc_retainBlock(v140);
    liveLookupExtensionsAllowCallsFromHandle = v27->_liveLookupExtensionsAllowCallsFromHandle;
    v27->_liveLookupExtensionsAllowCallsFromHandle = v39;

    v138[0] = _NSConcreteStackBlock;
    v138[1] = 3221225472;
    v138[2] = sub_100253238;
    v138[3] = &unk_10061FBF8;
    v41 = v38;
    v139 = v41;
    v42 = objc_retainBlock(v138);
    blockedByExtension = v27->_blockedByExtension;
    v27->_blockedByExtension = v42;

    supportsPrimaryCalling = v27->_supportsPrimaryCalling;
    v27->_supportsPrimaryCalling = &stru_10061FC18;

    v136[0] = _NSConcreteStackBlock;
    v136[1] = 3221225472;
    v136[2] = sub_1002532C0;
    v136[3] = &unk_10061FC40;
    v45 = v41;
    v137 = v45;
    v46 = objc_retainBlock(v136);
    shouldPreferRelayOverDirectSecondaryCalling = v27->_shouldPreferRelayOverDirectSecondaryCalling;
    v27->_shouldPreferRelayOverDirectSecondaryCalling = v46;

    v48 = [[CSDVoIPProcessAssertionManager alloc] initWithSerialQueue:v19];
    processAssertionManager = v27->_processAssertionManager;
    v27->_processAssertionManager = v48;

    v50 = objc_alloc_init(CSDCallFilterController);
    callFilterController = v27->_callFilterController;
    v27->_callFilterController = v50;

    v52 = v27->_callFilterController;
    v53 = [[CSDCommunicationHistoryCallFilter alloc] initWithChManager:v125 featureFlags:v121];
    [(CSDCallFilterController *)v52 addCallFilter:v53];

    v54 = v27->_callFilterController;
    v55 = [[CSDContactsCallFilter alloc] initWithFeatureFlags:v121];
    [(CSDCallFilterController *)v54 addCallFilter:v55];

    v56 = v27->_callFilterController;
    v57 = [[CSDOwnNumberCallFilter alloc] initWithQueue:v21];
    [(CSDCallFilterController *)v56 addCallFilter:v57];

    v58 = [[CSDSIMFocusCallFilter alloc] initWithQueue:v21];
    callFilterSIMFocus = v27->_callFilterSIMFocus;
    v27->_callFilterSIMFocus = v58;

    v60 = objc_opt_new();
    LODWORD(v57) = [v60 isClarityBoardEnabled];

    if (v57)
    {
      v61 = [[CSDClarityUICallFilter alloc] initWithQueue:v21];
      clarityUICallFilter = v27->_clarityUICallFilter;
      v27->_clarityUICallFilter = v61;

      [(CSDCallFilterController *)v27->_callFilterController addCallFilter:v27->_clarityUICallFilter];
    }

    v63 = [CSDScreenTimeCallFilter alloc];
    v64 = [v45 callProviderManager];
    v65 = [(CSDScreenTimeCallFilter *)v63 initWithCallProviderManager:v64 delegate:v27 queue:v21];
    screenTimeCallFilter = v27->_screenTimeCallFilter;
    v27->_screenTimeCallFilter = v65;

    [(CSDCallFilterController *)v27->_callFilterController addCallFilter:v27->_screenTimeCallFilter];
    objc_initWeak(&location, v27);
    v133[0] = _NSConcreteStackBlock;
    v133[1] = 3221225472;
    v133[2] = sub_100253320;
    v133[3] = &unk_10061FC68;
    objc_copyWeak(&v134, &location);
    v67 = objc_retainBlock(v133);
    shouldFilterCall = v27->_shouldFilterCall;
    v27->_shouldFilterCall = v67;

    isAutoAnswerDeviceBlock = v27->_isAutoAnswerDeviceBlock;
    v27->_isAutoAnswerDeviceBlock = &stru_10061FC88;

    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_1002536FC;
    v131[3] = &unk_10061FC68;
    objc_copyWeak(&v132, &location);
    v70 = objc_retainBlock(v131);
    focusAllowsCall = v27->_focusAllowsCall;
    v27->_focusAllowsCall = v70;

    v129[0] = _NSConcreteStackBlock;
    v129[1] = 3221225472;
    v129[2] = sub_10025378C;
    v129[3] = &unk_10061FCB0;
    objc_copyWeak(&v130, &location);
    v72 = objc_retainBlock(v129);
    isEligibleBlock = v27->_isEligibleBlock;
    v27->_isEligibleBlock = v72;

    lowPowerModeEnabledBlock = v27->_lowPowerModeEnabledBlock;
    v27->_lowPowerModeEnabledBlock = &stru_10061FCD0;

    v27->_dispatchDelay = 2.0;
    v75 = v124;
    v76 = v124;
    if (!v124)
    {
      v76 = [[CXCallSourceManager alloc] initWithDelegate:v27 queue:v21];
      v75 = 0;
    }

    objc_storeStrong(&v27->_callSourceManager, v76);
    if (!v75)
    {
    }

    v77 = [[CXCallControllerHost alloc] initWithDelegate:v27 delegateQueue:v21];
    callControllerHost = v27->_callControllerHost;
    v27->_callControllerHost = v77;

    v79 = [[CSDCallSourceFetcher alloc] initWithSerialQueue:v21];
    callSourceFetcher = v27->_callSourceFetcher;
    v27->_callSourceFetcher = v79;

    [(CSDCallSourceFetcher *)v27->_callSourceFetcher setDataSource:v27];
    v81 = +[NSMutableDictionary dictionary];
    pendingPulledCallContexts = v27->_pendingPulledCallContexts;
    v27->_pendingPulledCallContexts = v81;

    v83 = [CXInProcessCallSource alloc];
    v84 = TUPreferredFaceTimeBundleIdentifier();
    v85 = TUBundle();
    v86 = [v85 localizedStringForKey:@"FACETIME" value:&stru_100631E68 table:@"TelephonyUtilities"];
    v87 = [v83 initWithIdentifier:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider" bundleIdentifier:v84 fallbackLocalizedName:v86];
    faceTimeCallSource = v27->_faceTimeCallSource;
    v27->_faceTimeCallSource = v87;

    v89 = [[CSDFaceTimeProviderDelegate alloc] initWithCallSource:v27->_faceTimeCallSource queue:v21 chManager:v125 conversationManager:v120];
    faceTimeProviderDelegate = v27->_faceTimeProviderDelegate;
    v27->_faceTimeProviderDelegate = v89;

    [(CSDFaceTimeProviderDelegate *)v27->_faceTimeProviderDelegate setCallDataSource:v27];
    [(CXCallSourceManager *)v27->_callSourceManager addCallSource:v27->_faceTimeCallSource];
    v91 = [CXInProcessCallSource alloc];
    v92 = [v91 initWithIdentifier:@"com.apple.telephonyutilities.callservicesd.TinCan" bundleIdentifier:TUBundleIdentifierTinCan];
    tinCanCallSource = v27->_tinCanCallSource;
    v27->_tinCanCallSource = v92;

    v94 = [[CSDTinCanIDSProviderDelegate alloc] initWithCallSource:v27->_tinCanCallSource queue:v21];
    tinCanProviderDelegate = v27->_tinCanProviderDelegate;
    v27->_tinCanProviderDelegate = v94;

    [(CXCallSourceManager *)v27->_callSourceManager addCallSource:v27->_tinCanCallSource];
    v96 = [[CXChannelSourceManager alloc] initWithDelegate:v27 queue:v21];
    channelSourceManager = v27->_channelSourceManager;
    v27->_channelSourceManager = v96;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100253884;
    block[3] = &unk_100619D88;
    v98 = v27;
    v127 = v98;
    v128 = v21;
    dispatch_async(v128, block);
    if (TUShouldCreateSuperboxProvider())
    {
      v99 = [[CXInProcessCallSource alloc] initWithIdentifier:@"com.apple.Superbox" bundleIdentifier:@"com.apple.Superbox" fallbackLocalizedName:@"Superbox"];
      v100 = v98[19];
      v98[19] = v99;

      v101 = [_TtC13callservicesd27CSDSuperboxProviderDelegate alloc];
      v102 = [v98 superboxCallSource];
      v103 = [(CSDSuperboxProviderDelegate *)v101 initWithCallSource:v102];
      v104 = v98[20];
      v98[20] = v103;

      v105 = [v98 callSourceManager];
      v106 = [v98 superboxCallSource];
      [v105 addCallSource:v106];
    }

    v107 = v23;
    if (!v23)
    {
      v107 = objc_alloc_init(CSDProtectedAppsUtilities);
    }

    objc_storeStrong(v98 + 48, v107);
    if (!v23)
    {
    }

    objc_storeStrong(v98 + 14, a13);
    v108 = +[FTServerBag sharedInstance];
    v109 = v98[50];
    v98[50] = v108;

    v110 = v25;
    if (!v25)
    {
      v110 = +[FTDeviceSupport sharedInstance];
    }

    objc_storeStrong(v98 + 51, v110);
    if (!v25)
    {
    }

    v111 = v98[14];
    v112 = v98[51];
    if (TUCommunicationTrustEnabled())
    {
      v113 = v118;
      v114 = v118;
      if (!v118)
      {
        v114 = objc_alloc_init(CSDCommunicationTrustScoreDataProvider);
        v113 = 0;
      }

      objc_storeStrong(v98 + 49, v114);
      if (!v113)
      {
      }
    }

    objc_destroyWeak(&v130);
    objc_destroyWeak(&v132);
    objc_destroyWeak(&v134);
    objc_destroyWeak(&location);

    v22 = obja;
    v24 = v118;
  }

  return v27;
}

- (void)registerCall:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v11 registerCall:v4];
  if (![(CSDCallDataSource *)self shouldTrackCall:v4])
  {
    v9 = [(CSDProviderCallDataSource *)self callControllerHost];
    v10 = [v4 cxCall];
    [v9 removeCall:v10];
    goto LABEL_6;
  }

  v5 = [v4 provider];
  v6 = [v5 isTinCanProvider];

  v7 = [v4 isPTT];
  v8 = v7;
  if ((v6 & 1) == 0 && (v7 & 1) == 0)
  {
    v9 = [(CSDProviderCallDataSource *)self callControllerHost];
    v10 = [v4 cxCall];
    [v9 addOrUpdateCall:v10];
LABEL_6:

    goto LABEL_7;
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = v4;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Ignoring to add %@ call since it is TinCan (%d) or PTT Barge Call (%d).", buf, 0x18u);
  }

LABEL_7:
}

- (void)startTrackingCall:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v10 startTrackingCall:v4];
  v5 = [v4 provider];
  if ([v5 isSystemProvider])
  {
    goto LABEL_4;
  }

  v6 = [v4 isPTT];

  if ((v6 & 1) == 0)
  {
    v5 = [(CSDProviderCallDataSource *)self processAssertionManager];
    v7 = [v4 provider];
    v8 = [v7 bundleIdentifier];
    [v5 acquireProcessAssertionForBundleIdentifier:v8];

LABEL_4:
  }

  v9 = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  [v9 startMonitoringCall:v4];
}

- (void)stopTrackingCall:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v13 stopTrackingCall:v4];
  v5 = [v4 provider];
  v6 = [v5 isSystemProvider];

  if ((v6 & 1) == 0)
  {
    v7 = [(CSDProviderCallDataSource *)self processAssertionManager];
    v8 = [v4 provider];
    v9 = [v8 bundleIdentifier];
    [v7 invalidateProcessAssertionForBundleIdentifier:v9];
  }

  v10 = [(CSDProviderCallDataSource *)self callSourceManager];
  v11 = [v4 uniqueProxyIdentifierUUID];
  [v10 failOutstandingActionsForCallWithUUID:v11];

  v12 = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  [v12 stopMonitoringCall:v4];
}

- (id)conduit
{
  v2 = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
  v3 = [v2 conduit];

  return v3;
}

- (CSDRouteManager)routeManager
{
  routeManager = self->_routeManager;
  if (!routeManager)
  {
    v4 = +[CSDRouteManager sharedInstance];
    v5 = self->_routeManager;
    self->_routeManager = v4;

    routeManager = self->_routeManager;
  }

  return routeManager;
}

- (void)setCallProviderManager:(id)a3
{
  objc_storeStrong(&self->_callProviderManager, a3);
  v5 = a3;
  callProviderManager = self->_callProviderManager;
  v7 = [(CSDCallDataSource *)self queue];
  [(CSDCallProviderManager *)callProviderManager addDelegate:self queue:v7];
}

- (id)_callWithUUID:(id)a3
{
  v4 = [a3 UUIDString];
  v5 = [(CSDCallDataSource *)self callWithUniqueProxyIdentifier:v4];

  return v5;
}

- (id)_relayCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self relayCallDataSource];
  v6 = [v4 UUIDString];

  v7 = [v5 callWithUniqueProxyIdentifier:v6];

  return v7;
}

- (id)_callWithUUID:(id)a3 backingCallSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(CSDCallDataSource *)self calls];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v19;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v18 + 1) + 8 * v13);

        v15 = [v11 uniqueProxyIdentifierUUID];
        if ([v15 isEqual:v6])
        {
          v16 = [v11 backingCallSource];

          if (v16 == v7)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_callWithUUID:(id)a3 controllableByCallSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [(CSDCallDataSource *)self calls];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v20 + 1) + 8 * v13);

        v15 = [v11 backingCallSource];
        v16 = v15;
        if (v15 == v7)
        {
          v17 = [v11 uniqueProxyIdentifierUUID];
          v18 = [v17 isEqual:v6];

          if (v18)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }

        v13 = v13 + 1;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_callGroupsWithBackingCallSource:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [(CSDCallDataSource *)self calls];
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [v11 callGroupUUID];
        if (v12)
        {
          goto LABEL_7;
        }

        v13 = [v11 backingCallSource];

        if (v13 == v4)
        {
          v35 = v11;
          v12 = [NSArray arrayWithObjects:&v35 count:1];
          [v5 addObject:v12];
LABEL_7:
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v14 = [v6 countByEnumeratingWithState:&v30 objects:v36 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = [(CSDProviderCallDataSource *)self callGroupUUIDToCalls];
  v16 = [v15 allValues];

  v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        v22 = [v21 firstObject];
        v23 = [v22 backingCallSource];

        if (v23 == v4)
        {
          [v5 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = [v5 copy];

  return v24;
}

- (id)_providerForCallSource:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [v5 providersByIdentifierForRemoteClients:0];
  v7 = [v4 identifier];

  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)_localProviderForCallSource:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [v5 localProvidersByIdentifierForRemoteClients:0];
  v7 = [v4 identifier];

  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (id)_ISOCountryCodeForCall:(id)a3
{
  v4 = a3;
  v5 = [v4 provider];
  if ([v5 isFaceTimeProvider])
  {
    v6 = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    v7 = [v4 uniqueProxyIdentifierUUID];
    v8 = [v6 ISOCountryCodeForCallWithUUID:v7];
    goto LABEL_6;
  }

  if ([v5 isTelephonyProvider])
  {
    v6 = [v4 localSenderIdentityUUID];
    if (!v6)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v7 = [(CSDProviderCallDataSource *)self coreTelephonyClient];
    v8 = [v7 ISOCountryCodeForSubscriptionUUID:v6];
LABEL_6:
    v9 = v8;

LABEL_7:
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_ISOCountryCodeForCallWithUUID:(id)a3 provider:(id)a4 callUpdate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isFaceTimeProvider])
  {
    v11 = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    v12 = [v11 ISOCountryCodeForCallWithUUID:v8];
  }

  else
  {
    if (![v9 isTelephonyProvider])
    {
      v12 = 0;
      goto LABEL_9;
    }

    v11 = [v10 localSenderIdentityUUID];
    if (v11)
    {
      v13 = [(CSDProviderCallDataSource *)self coreTelephonyClient];
      v12 = [v13 ISOCountryCodeForSubscriptionUUID:v11];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_9:

  return v12;
}

- (id)_identifiersForCalls:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) uniqueProxyIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)_shouldBlockIfScreenSharing
{
  if (TUAllowCallsDuringScreenSharing())
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [(CSDCallDataSource *)self calls];
    v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v8 + 1) + 8 * i) isSharingScreen])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (void)_deferCommittingTransactionsUntilAfterRunningBlock:(id)a3
{
  v4 = a3;
  [(CSDProviderCallDataSource *)self setDeferCommittingTransactions:1];
  v4[2](v4);

  [(CSDProviderCallDataSource *)self setDeferCommittingTransactions:0];

  [(CSDProviderCallDataSource *)self _commitUncommittedTransactions];
}

- (BOOL)_allowRevertingStateForCompletedTransactionGroup:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 allActions];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) state] == 1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = 0;
            goto LABEL_12;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)_endCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uniqueProxyIdentifier];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Ending mutually exclusive call with uPI %@ because we have a newer incoming call that can not co-exist with it.", &v10, 0xCu);
  }

  v7 = [CXEndCallAction alloc];
  v8 = [v4 uniqueProxyIdentifierUUID];
  v9 = [v7 initWithCallUUID:v8];

  [(CSDProviderCallDataSource *)self performCallAction:v9 forCall:v4];
}

- (id)_endMutuallyExclusiveCalls:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_endMutuallyExclusiveCalls: update=%@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(CSDCallDataSource *)self calls];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (!v7)
  {

    v9 = 0;
LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v19;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      if ([v12 isMutuallyExclusiveCall])
      {
        if (v9)
        {
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Found multiple existing mutually exclusive calls.  Ending call %@", buf, 0xCu);
          }

          [(CSDProviderCallDataSource *)self _endCall:v12];
        }

        else
        {
          v9 = v12;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  }

  while (v8);

  if (!v9)
  {
    v15 = 0;
    goto LABEL_25;
  }

  if (![v4 isMutuallyExclusiveCall])
  {
    [(CSDProviderCallDataSource *)self _endCall:v9];
    goto LABEL_24;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ignoring mutually exclusive update", buf, 2u);
  }

  v15 = [NSError cx_incomingCallErrorWithCode:102];
LABEL_25:
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v9;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_endMutuallyExclusiveCalls: mutuallyExclusiveCall=%@, error=%@", buf, 0x16u);
  }

  return v15;
}

- (void)_processCompletedCallAction:(id)a3 forCall:(id)a4 allowRevertingState:(BOOL)a5 isOnenessActive:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(CSDCallDataSource *)self callStateController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [v13 state];
    v15 = sub_100004778();
    v16 = v15;
    if (v14 != 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10047F020();
      }

      if (v6)
      {
        [v11 disconnectWithReason:51];
      }

      v27 = +[NSDate date];
      [v11 setDateEnded:v27];

      goto LABEL_130;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Start call action fulfilled: %@", buf, 0xCu);
    }

    v17 = [v13 dateStarted];
    [v11 setDateStartedOutgoing:v17];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v10;
    if ([v24 state]== 1)
    {
      v25 = sub_100004778();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Join call action fulfilled: %@", buf, 0xCu);
      }

      v26 = [v24 dateStarted];
      [v11 setDateStartedOutgoing:v26];
      goto LABEL_14;
    }

    v31 = [v11 faceTimeIDStatus];
    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10047EF9C();
    }

    if (v31 == 1)
    {
      v33 = 531;
    }

    else
    {
      v33 = 508;
    }

    [v11 setProviderFailureReasonIfNecessary:v33];
    v34 = v11;
    if (v6)
    {
      v35 = 51;
LABEL_74:
      [v34 disconnectWithReason:v35];
      goto LABEL_75;
    }

LABEL_73:
    v35 = 14;
    goto LABEL_74;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v28 = [v13 state];
    v29 = sub_100004778();
    v30 = v29;
    if (v28 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v13;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Answer call action fulfilled: %@", buf, 0xCu);
      }

      v17 = [v13 dateConnected];
      [v11 setDateConnected:v17];
LABEL_6:

      v18 = [v11 provider];
      v19 = [v18 isTinCanProvider];

      if (!v19)
      {
LABEL_130:

        goto LABEL_131;
      }

      v20 = [(CSDProviderCallDataSource *)self featureFlags];
      v21 = [v20 sessionBasedMutingEnabled];

      v22 = v11;
      v23 = 1;
      if (v21)
      {
        [v11 setUplinkMuted:1];
        goto LABEL_130;
      }

LABEL_129:
      [v22 setUnderlyingUplinkMuted:v23];
      goto LABEL_130;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10047EF34();
    }

    v39 = v11;
    v40 = 509;
LABEL_40:
    [v39 setProviderFailureReasonIfNecessary:v40];
    [v11 disconnectWithReason:14];
    goto LABEL_130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v10;
    v36 = [v24 state];
    v37 = sub_100004778();
    v38 = v37;
    if (v36 != 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10047EECC();
      }

      [v11 setEndedReason:1];
      v44 = +[NSDate date];
      [v11 setDateEnded:v44];

      [v11 setProviderFailureReasonIfNecessary:520];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v24;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "End call action fulfilled: %@", buf, 0xCu);
    }

    v26 = [v24 dateEnded];
    [v11 setDateEnded:v26];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v10;
    v41 = [v24 state];
    v42 = sub_100004778();
    v43 = v42;
    if (v41 == 1)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Set held call action fulfilled: %@", buf, 0xCu);
      }

      [v11 setHeld:{-[NSObject isOnHold](v24, "isOnHold")}];
      goto LABEL_75;
    }

    if (v7)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Set held call action failed but reverting state is allowed: %@", buf, 0xCu);
      }

      [v12 resetClientCallProvisionalStates];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10047EDC0();
    }

    [v11 setProviderFailureReasonIfNecessary:512];
    v34 = v11;
    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    if ([v13 state]== 1)
    {
      v45 = [v13 callUUIDToGroupWith];

      if (v45)
      {
        v46 = [v13 callUUIDToGroupWith];
        v47 = [(CSDProviderCallDataSource *)self _callWithUUID:v46];

        v48 = sub_100004778();
        v49 = v48;
        if (v47)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v13;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Set group call action fulfilled: %@", buf, 0xCu);
          }

          v50 = [v47 callGroupUUID];

          if (!v50)
          {
            v51 = +[NSUUID UUID];
            [v47 setCallGroupUUID:v51];
          }

          v49 = [v47 callGroupUUID];
          [v11 setCallGroupUUID:v49];
        }

        else if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_10047EE28(v13, self);
        }
      }

      else
      {
        [v11 setCallGroupUUID:0];
      }

      goto LABEL_130;
    }

    v55 = sub_100004778();
    v56 = v55;
    if (v7)
    {
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v13;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[WARN] Set group call action failed but reverting state is allowed: %@", buf, 0xCu);
      }

      [v12 resetClientCallProvisionalStates];
      goto LABEL_130;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_10047EDC0();
    }

    v39 = v11;
    v40 = 513;
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v10;
    v52 = [v24 state];
    v53 = sub_100004778();
    v54 = v53;
    if (v52 == 1)
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Play DTMF call action fulfilled: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      sub_10047ED58();
    }

    if ([v24 type]== 2 || [v24 type]== 3)
    {
      [v11 dequeueNextPauseDigits];
    }

    goto LABEL_75;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v10;
    v57 = [v24 state];
    v58 = sub_100004778();
    v26 = v58;
    if (v57 == 1)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Set sending video call action fulfilled: %@", buf, 0xCu);
      }

      [v11 setSendingVideo:{-[NSObject isSendingVideo](v24, "isSendingVideo")}];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_10047ECF0();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    if ([v13 state]!= 1)
    {
      v64 = [(CSDProviderCallDataSource *)self featureFlags];
      v65 = [v64 sessionBasedMutingEnabled];

      v66 = sub_100004778();
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      if (v65)
      {
        if (v67)
        {
          sub_10047EC88();
        }

        [v11 setUplinkMuted:-[NSObject isMuted](v13 userInitiated:{"isMuted") ^ 1, 1}];
        goto LABEL_130;
      }

      if (v67)
      {
        sub_10047EBC4();
      }

      if (([v13 isBottomUpMute]& 1) != 0)
      {
        goto LABEL_130;
      }

      v23 = [v13 isMuted]^ 1;
      v22 = v11;
      goto LABEL_129;
    }

    v59 = sub_100004778();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v13;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Set muted call action fulfilled: %@", buf, 0xCu);
    }

    v60 = [(CSDProviderCallDataSource *)self featureFlags];
    if ([v60 sessionBasedMutingEnabled])
    {
      v61 = [v13 isSystemInitiated];

      if ((v61 & 1) == 0)
      {
        [v11 setUplinkMuted:-[NSObject isMuted](v13 userInitiated:{"isMuted"), -[NSObject isSystemInitiated](v13, "isSystemInitiated") ^ 1}];
        goto LABEL_121;
      }
    }

    else
    {
    }

    [v11 setUnderlyingUplinkMuted:-[NSObject isMuted](v13 bottomUpMute:{"isMuted"), -[NSObject isBottomUpMute](v13, "isBottomUpMute")}];
LABEL_121:
    if ([v13 isMuted])
    {
      [v11 setUplinkWasExplicitlyMuted:1];
    }

    goto LABEL_130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v10;
    v62 = [v24 state];
    v63 = sub_100004778();
    v26 = v63;
    if (v62 == 1)
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Set tty call action fulfilled: %@", buf, 0xCu);
      }

      [v11 setTtyType:{sub_100025BB8(-[NSObject ttyType](v24, "ttyType"))}];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_10047EB5C();
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v10;
      v73 = [v24 state];
      v74 = sub_100004778();
      v26 = v74;
      if (v73 == 1)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v89 = v24;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Set screening call action fulfilled: %@", buf, 0xCu);
        }

        [v11 setScreening:{-[NSObject isScreening](v24, "isScreening")}];
        goto LABEL_75;
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        sub_10047EAF4();
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v10;
        v75 = [v24 state];
        v76 = sub_100004778();
        v26 = v76;
        if (v75 == 1)
        {
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v24;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Allow audio injection action fulfilled: %@", buf, 0xCu);
          }

          [v11 setInjectingAudio:{-[NSObject willInject](v24, "willInject")}];
          goto LABEL_75;
        }

        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          sub_10047EA8C();
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v82 = [v10 state];
          v83 = sub_100004778();
          v24 = v83;
          if (v82 == 1)
          {
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v89 = v10;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Action fulfilled: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            sub_10047EA24();
          }

          goto LABEL_75;
        }

        v24 = v10;
        if (![v24 isSystemInitiated]|| [v24 translationEngine])
        {
LABEL_75:

          goto LABEL_131;
        }

        if ([v24 isTranslating])
        {
          v77 = [v24 localLanguage];
          v78 = [NSLocale localeWithLocaleIdentifier:v77];

          v79 = [v24 remoteLanguage];
          v80 = [NSLocale localeWithLocaleIdentifier:v79];

          v81 = [[TUCallTranslationStartRequest alloc] initWithCall:v11 localLocale:v78 remoteLocale:v80 translationLinks:3 remoteAudioMode:0 translationMode:0];
        }

        else
        {
          v81 = [[TUCallTranslationStopRequest alloc] initWithCall:v11];
        }

        v84 = sub_100004778();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v89 = v81;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "perform TUCallTranslationRequest for CXSetTranslatingCallAction %@", buf, 0xCu);
        }

        v85 = [v12 callTranslationController];
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_100256150;
        v86[3] = &unk_10061A4C0;
        v87 = v81;
        v26 = v81;
        [v85 performRequest:v26 forCall:v11 completion:v86];
      }
    }

LABEL_14:

    goto LABEL_75;
  }

  if ([v10 state]== 2)
  {
    v68 = sub_100004778();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v10;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Set relaying call action failed: %@", buf, 0xCu);
    }

    v69 = [v11 provider];
    v70 = [v69 isTinCanProvider];

    if (v70)
    {
      v71 = sub_100004778();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v10;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[WARN] Set relaying call action failed: %@", buf, 0xCu);
      }

      [v11 setProviderFailureReasonIfNecessary:514];
      [v11 disconnectWithReason:14];
    }
  }

LABEL_131:
  if ([v10 state]== 2)
  {
    v72 = +[CSDReportingController sharedInstance];
    [v72 reportProviderFailedWithAction:v10 forCall:v11];
  }
}

- (BOOL)_actionRequiresReasonableUserIntent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = objc_opt_class();

  LOBYTE(v6) = [v5 containsObject:v6];
  return v6;
}

- (BOOL)_shouldAllowRequestedAction:(id)a3 forCallSource:(id)a4 shouldValidateUserIntent:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [(CSDProviderCallDataSource *)self _providerForCallSource:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v14 = [v13 callUUID];
    v15 = [(CSDProviderCallDataSource *)self _callWithUUID:v14 controllableByCallSource:v11];

    v16 = [v13 callUUID];
    v53 = [(CSDProviderCallDataSource *)self _callWithUUID:v16];

    v17 = [v13 callUUID];
    v54 = [(CSDProviderCallDataSource *)self _relayCallWithUUID:v17];

    if (-[CSDProviderCallDataSource _actionRequiresReasonableUserIntent:](self, "_actionRequiresReasonableUserIntent:", v13) && v7 && (-[CSDProviderCallDataSource callProviderManager](self, "callProviderManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 validateUserIntentForCallSource:v11], v18, (v19 & 1) == 0))
    {
      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        v40 = [v11 identifier];
        *buf = 138412546;
        v56 = v39;
        v57 = 2112;
        v58 = v40;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested %@ because user intent could not be validated for call source with identifier: %@", buf, 0x16u);
      }

      +[CSDCrashReporter simulateCrashReportFromPID:withKillCode:usingReasonWithFormat:](CSDCrashReporter, "simulateCrashReportFromPID:withKillCode:usingReasonWithFormat:", [v11 processIdentifier], 3735931409, @"Not allowing requested %@ because user intent could not be reasonably validated to gain access to the microphone while in the background.", objc_opt_class());
      v32 = [NSError cx_requestTransactionErrorWithCode:6];
      v27 = v53;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = v15;
        v52 = [(CSDProviderCallDataSource *)self _callGroupsWithBackingCallSource:v11];
        v20 = [(CSDCallDataSource *)self callStateController];
        v21 = [v20 featureFlags];
        if ([v21 appProtectionEnabled])
        {
          v22 = [(CSDProviderCallDataSource *)self protectedAppsUtilities];
          v23 = [v12 bundleIdentifier];
          v24 = [v22 shouldBlockCallWithBundleIdentifier:v23];

          v25 = v54;
          if (v24)
          {
            v26 = sub_100004778();
            v27 = v53;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v28 = [v12 bundleIdentifier];
              *buf = 138412290;
              v56 = v28;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Blocking outgoing call because the originating app [Bundle Identifier: %@] responsible for the call is hidden and currently not foregrounded", buf, 0xCu);
            }

            v29 = 8;
            v15 = v51;
            goto LABEL_43;
          }
        }

        else
        {

          v25 = v54;
        }

        v27 = v53;
        if (v53 | v25)
        {
          v26 = sub_100004778();
          v15 = v51;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v41 = [v13 callUUID];
            *buf = 138412290;
            v56 = v41;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested start call action because a call with same UUID (%@) already exists", buf, 0xCu);
          }

          v29 = 5;
        }

        else
        {
          v42 = [v52 count];
          v15 = v51;
          if (v42 < [v12 maximumCallGroups])
          {
            v32 = 0;
LABEL_44:

            goto LABEL_53;
          }

          v26 = sub_100004778();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v56 = v11;
            v57 = 2048;
            v58 = [v12 maximumCallGroups];
            v59 = 2112;
            v60 = v52;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested start call action because call source %@ is at the maximum call group count of %lu: %@", buf, 0x20u);
          }

          v29 = 7;
        }

LABEL_43:

        v32 = [NSError cx_requestTransactionErrorWithCode:v29];
        goto LABEL_44;
      }

      objc_opt_class();
      v25 = v54;
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v13 callUUIDToGroupWith], v34 = objc_claimAutoreleasedReturnValue(), v34, v34))
      {
        v35 = [v13 callUUIDToGroupWith];
        v36 = [(CSDProviderCallDataSource *)self _callWithUUID:v35 controllableByCallSource:v11];

        v27 = v53;
        if (v36)
        {
          v32 = 0;
        }

        else
        {
          v47 = sub_100004778();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [(CSDCallDataSource *)self calls];
            *buf = 138412802;
            v56 = v13;
            v57 = 2112;
            v58 = v11;
            v59 = 2112;
            v60 = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because no call was found to group with for action %@ and call source %@. All calls: %@", buf, 0x20u);

            v27 = v53;
          }

          v32 = [NSError cx_requestTransactionErrorWithCode:4];
        }
      }

      else
      {
        objc_opt_class();
        v27 = v53;
        if ((objc_opt_isKindOfClass() & 1) != 0 && v54)
        {
          v37 = sub_100004778();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v56 = v53;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested answer call action because a relay call with same UUID already exists: %@", buf, 0xCu);
          }

          v32 = [NSError cx_requestTransactionErrorWithCode:5];
LABEL_53:

          if (a6)
          {
            goto LABEL_54;
          }

          goto LABEL_55;
        }

        if (v15)
        {
          v32 = 0;
          goto LABEL_53;
        }

        v43 = sub_100004778();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v13 callUUID];
          v45 = [v44 UUIDString];
          v46 = [(CSDCallDataSource *)self calls];
          *buf = 138412802;
          v56 = v45;
          v57 = 2112;
          v58 = v11;
          v59 = 2112;
          v60 = v46;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because no call was found for call UUID %@ and call source %@. All calls: %@", buf, 0x20u);

          v15 = 0;
          v27 = v53;
        }

        v32 = [NSError cx_requestTransactionErrorWithCode:4];
      }
    }

    v25 = v54;
    goto LABEL_53;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [v11 identifier];
    v31 = [v30 isEqualToString:@"com.apple.coretelephony"];

    if (v31)
    {
      v32 = 0;
      if (!a6)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  v33 = sub_100004778();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v10;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because action is not allowed to be requested: %@", buf, 0xCu);
  }

  v32 = [NSError cx_requestTransactionErrorWithCode:6];
  if (a6)
  {
LABEL_54:
    v49 = v32;
    *a6 = v32;
  }

LABEL_55:

  return v32 == 0;
}

- (BOOL)_shouldAllowRequestedTransaction:(id)a3 forCallSource:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 actions];
  v11 = [v10 count];

  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [v8 actions];
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v23 = 0;
          [(CSDProviderCallDataSource *)self _shouldAllowRequestedAction:v17 forCallSource:v9 shouldValidateUserIntent:1 error:&v23];
          v18 = v23;
          if (v18)
          {
            v19 = v18;
            goto LABEL_12;
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_12:

    if (a5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction because it is empty: %@", buf, 0xCu);
    }

    v19 = [NSError cx_requestTransactionErrorWithCode:3];
    if (a5)
    {
LABEL_13:
      v20 = v19;
      *a5 = v19;
    }
  }

  return v19 == 0;
}

- (void)_processRequestedTransaction:(id)a3 fromCallSource:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v15 = 0;
  v10 = a5;
  v11 = [(CSDProviderCallDataSource *)self _shouldAllowRequestedTransaction:v8 forCallSource:v9 error:&v15];
  v12 = v15;
  v13 = sub_100004778();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowing requested transaction: %@", buf, 0xCu);
    }

    [(CSDProviderCallDataSource *)self _performRequestedTransaction:v8 onCallSource:v9];
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction: %@", buf, 0xCu);
    }
  }

  v10[2](v10, v12);
}

- (BOOL)_isRequestingCallSourceAppBackgroundRunning:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self processObserver];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = [(CSDProviderCallDataSource *)self processObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100256F74;
  block[3] = &unk_10061AE20;
  v11 = v5;
  v12 = v4;
  v13 = &v14;
  v7 = v4;
  v8 = v5;
  dispatch_sync(v6, block);

  LOBYTE(v6) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v6;
}

- (void)_performRequestedTransaction:(id)a3 onCallSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallDataSource *)self callStateController];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = v6;
  obj = [v6 actions];
  v9 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  v10 = v7;
  if (v9)
  {
    v11 = v9;
    v12 = *v38;
    v10 = v7;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = sub_100004778();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Dialing new call due to requested start call action: %@", buf, 0xCu);
          }

          v16 = v14;
          v17 = [[CSDProviderCall alloc] initOutgoingWithRequestedStartCallAction:v16 backingCallSource:v7];

          if ([(CSDProviderCallDataSource *)self _isRequestingCallSourceAppBackgroundRunning:v7])
          {
            v18 = [(CSDProviderCallDataSource *)self callProviderManager];
            v19 = [v18 validateBackgroundCallIntentForCallSource:v7];

            if (v19)
            {
              [v17 setLaunchInBackground:1];
            }
          }

          [v8 setCallDelegatesIfNeeded:v17];
          [v8 propertiesChangedForCall:v17];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v20 = v14;
          v21 = [v20 callUUID];
          v17 = [(CSDProviderCallDataSource *)self _callWithUUID:v21 backingCallSource:v7];

          v22 = [v17 backingCallSource];

          v10 = v22;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = [v31 actions];
  v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        v29 = [(CSDProviderCallDataSource *)self callSourceManager];
        [v29 addAction:v28 toUncommittedTransactionForCallSource:v10];
      }

      v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v25);
  }

  [(CSDProviderCallDataSource *)self _addSupplementalActionsForRequestedTransaction:v31 onCallSource:v10];
  v30 = [(CSDProviderCallDataSource *)self callSourceManager];
  [v30 commitUncommittedTransactions];
}

- (void)_addSupplementalActionsForRequestedTransaction:(id)a3 onCallSource:(id)a4
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [a3 actions];
  v4 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    v7 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
    v29 = *v39;
    do
    {
      v8 = 0;
      v30 = v5;
      do
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * v8);
        v10 = v7[352];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v9;
          v12 = [v11 callUUID];
          v13 = [(CSDProviderCallDataSource *)self _callWithUUID:v12];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) == 0 || ([v11 isOnHold])
              {
LABEL_27:

                goto LABEL_28;
              }
            }
          }

          v32 = v8;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v14 = [(CSDCallDataSource *)self calls];
          v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (!v15)
          {
            goto LABEL_26;
          }

          v16 = v15;
          v17 = *v35;
          while (2)
          {
            v18 = 0;
LABEL_12:
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v34 + 1) + 8 * v18);
            if (v19 != v13)
            {
              v20 = [*(*(&v34 + 1) + 8 * v18) provider];
              v21 = [v13 provider];
              if ([v20 isEqualToCallProvider:v21])
              {
                goto LABEL_23;
              }

              if ([v19 isOnHold])
              {
                goto LABEL_23;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isVideoUpgradeFromCall:v19])
              {
                goto LABEL_23;
              }

              v22 = [v19 isPTT];

              if ((v22 & 1) == 0)
              {
                v23 = [CXSetHeldCallAction alloc];
                v24 = [v19 uniqueProxyIdentifierUUID];
                v20 = [v23 initWithCallUUID:v24 onHold:1];

                v25 = sub_100004778();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v43 = v19;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding supplemental set held call action for existing call %@", buf, 0xCu);
                }

                v21 = [(CSDProviderCallDataSource *)self callSourceManager];
                v26 = [v19 backingCallSource];
                [v21 addAction:v20 toUncommittedTransactionForCallSource:v26];

LABEL_23:
              }
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
              if (!v16)
              {
LABEL_26:

                v27 = [(CSDCallDataSource *)self callStateController];
                [v27 deactivatePTTBargeCalls];

                v6 = v29;
                v5 = v30;
                v7 = &swift_cvw_initEnumMetadataSinglePayloadWithLayoutString_ptr;
                v8 = v32;
                goto LABEL_27;
              }

              continue;
            }

            goto LABEL_12;
          }
        }

LABEL_28:
        v8 = v8 + 1;
      }

      while (v8 != v5);
      v28 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      v5 = v28;
    }

    while (v28);
  }
}

- (void)answerCall:(id)a3 withRequest:(id)a4 whileDisconnectingCalls:(id)a5 andHoldingCalls:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100257918;
  v14[3] = &unk_10061A428;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = self;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v14];
}

- (void)holdCalls:(id)a3 whileUnholdingCalls:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257A1C;
  v8[3] = &unk_100619E58;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)groupCalls:(id)a3 withCalls:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257B1C;
  v8[3] = &unk_100619E58;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)ungroupCall:(id)a3 fromOtherCallsInGroup:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257C1C;
  v8[3] = &unk_100619E58;
  v9 = a3;
  v10 = a4;
  v11 = self;
  v6 = v10;
  v7 = v9;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)disconnectCalls:(id)a3 whileHoldingCalls:(id)a4 andUnholdingCalls:(id)a5 andUngroupingCalls:(id)a6
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100257D68;
  v14[3] = &unk_10061A428;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = self;
  v10 = v18;
  v11 = v17;
  v12 = v16;
  v13 = v15;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v14];
}

- (void)setUplinkMuted:(BOOL)a3 forCalls:(id)a4 userInitiated:(BOOL)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100257E58;
  v7[3] = &unk_10061FCF8;
  v10 = a3;
  v11 = a5;
  v8 = a4;
  v9 = self;
  v6 = v8;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v7];
}

- (void)setTTYType:(int)a3 forCalls:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100257F38;
  v6[3] = &unk_10061CF48;
  v9 = a3;
  v7 = a4;
  v8 = self;
  v5 = v7;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v6];
}

- (void)sendMMIOrUSSDCodeWithRequest:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025800C;
  v4[3] = &unk_100619D88;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CSDProviderCallDataSource *)v5 _deferCommittingTransactionsUntilAfterRunningBlock:v4];
}

- (void)pullCallWithHandoffActivityUserInfo:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002581F8;
  v8[3] = &unk_10061AF20;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (id)callSourceForDialRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 provider];
  v6 = [v5 isTelephonyProvider];

  if (v6)
  {
    v7 = [(CSDProviderCallDataSource *)self telephonyCallSource];
LABEL_9:
    v14 = v7;
    goto LABEL_10;
  }

  v8 = [v4 provider];
  v9 = [v8 isFaceTimeProvider];

  if (v9)
  {
    v7 = [(CSDProviderCallDataSource *)self faceTimeCallSource];
    goto LABEL_9;
  }

  v10 = [v4 provider];
  v11 = [v10 isTinCanProvider];

  if (v11)
  {
    v7 = [(CSDProviderCallDataSource *)self tinCanCallSource];
    goto LABEL_9;
  }

  v12 = [v4 provider];
  v13 = [v12 isSuperboxProvider];

  if (v13)
  {
    v7 = [(CSDProviderCallDataSource *)self superboxCallSource];
    goto LABEL_9;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CSDProviderCallDataSource *)self callSourceManager];
    v18 = [v17 callSources];
    v19 = 138412546;
    v20 = v4;
    v21 = 2112;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine call source for dial request: %@. All call sources: %@", &v19, 0x16u);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)providerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [v5 providersByIdentifierForRemoteClients:0];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (void)performCallAction:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform action %@ for call %@", &v22, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CSDProviderCallDataSource *)self holdOrEndOtherCallsBecauseCallWillBeginOutgoing:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (([v7 isIncoming] & 1) == 0)
    {
      v9 = [(CSDCallDataSource *)self callStateController];
      v10 = [v9 callCenter];
      v11 = [v10 isOnenessActiveBlock];
      v12 = v11[2]();

      if (v12)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failing join call action %@ since device has active oneness session", &v22, 0xCu);
        }

        [v6 fail];
        [(CSDProviderCallDataSource *)self _processCompletedCallAction:v6 forCall:v7 allowRevertingState:0 isOnenessActive:1];
        goto LABEL_28;
      }
    }
  }

  v14 = [(CSDProviderCallDataSource *)self featureFlags];
  if (![v14 sharePlayInCallsEnabled])
  {
    goto LABEL_17;
  }

  v15 = [v7 provider];
  if (([v15 isTelephonyProvider] & 1) == 0)
  {

LABEL_17:
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_25:
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Action is handled by CSDConversationCallCoordinator, not notifying backing call source.", &v22, 2u);
    }

    [v6 fulfill];
    goto LABEL_28;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_25;
  }

LABEL_18:
  v16 = [v7 backingCallSource];

  if (v16)
  {
    v17 = [(CSDProviderCallDataSource *)self callSourceManager];
    v18 = [v7 backingCallSource];
    [v17 addAction:v6 toUncommittedTransactionForCallSource:v18];

    if (![(CSDProviderCallDataSource *)self deferCommittingTransactions])
    {
      [(CSDProviderCallDataSource *)self _commitUncommittedTransactions];
    }
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARN] Dropping to add action since there is no backing call source", &v22, 2u);
    }
  }

LABEL_28:
}

- (void)performCallActions:(id)a3 forCall:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100258A68;
  v8[3] = &unk_100619E58;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)holdOrEndOtherCallsBecauseCallWillBeginOutgoing:(id)a3
{
  v3 = a3;
  [v3 callCenter];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v39 = v51 = 0u;
  obj = [v39 currentCallGroups];
  v4 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v49;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v48 + 1) + 8 * i) calls];
        v10 = [v9 firstObject];
        v11 = [v10 provider];
        v12 = [v3 provider];
        v13 = [v11 isEqualToCallProvider:v12];

        v6 += v13;
      }

      v5 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = [(CSDCallDataSource *)self calls];
  v15 = [v14 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    v40 = v14;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v44 + 1) + 8 * j);
        if (v19 != v3 && ([*(*(&v44 + 1) + 8 * j) isOnHold] & 1) == 0 && objc_msgSend(v19, "status") == 1 && (objc_msgSend(v3, "isVideoUpgradeFromCall:", v19) & 1) == 0 && (objc_msgSend(v19, "isPTT") & 1) == 0)
        {
          v20 = [v19 provider];
          v21 = [v3 provider];
          v22 = [v20 isEqualToCallProvider:v21];

          if (v22)
          {
            v23 = [v3 provider];
            v24 = v6 >= [v23 maximumCallGroups];
          }

          else
          {
            v24 = 0;
          }

          if (([v19 isScreening] & 1) != 0 || ((objc_msgSend(v19, "isMutuallyExclusiveCall") | v24) & 1) != 0 || (objc_msgSend(v19, "model"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "supportsHolding"), v25, !v26))
          {
            v30 = [CXEndCallAction alloc];
            v28 = [v19 uniqueProxyIdentifierUUID];
            v29 = [v30 initWithCallUUID:v28];
          }

          else
          {
            v27 = [CXSetHeldCallAction alloc];
            v28 = [v19 uniqueProxyIdentifierUUID];
            v29 = [v27 initWithCallUUID:v28 onHold:1];
          }

          v31 = v29;

          v32 = sub_100004778();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            [v19 uniqueProxyIdentifierUUID];
            v33 = obja = v31;
            [v19 model];
            v35 = v34 = v24;
            v36 = [v35 supportsHolding];
            *buf = 138413058;
            v53 = obja;
            v54 = 2112;
            v55 = v33;
            v56 = 1024;
            v57 = v34;
            v58 = 1024;
            v59 = v36;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending action %@ for existing call with uniqueProxyIdentifierUUID=%@ maximumCallGroupsReachedForProvider=%d supportsHolding=%d", buf, 0x22u);

            v31 = obja;
          }

          v37 = [(CSDProviderCallDataSource *)self callSourceManager];
          v38 = [v19 backingCallSource];
          [v37 addAction:v31 toUncommittedTransactionForCallSource:v38];

          v14 = v40;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v16);
  }
}

- (void)performStartCallAction:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CSDProviderCallDataSource *)self holdOrEndOtherCallsBecauseCallWillBeginOutgoing:v7];
  v8 = [(CSDCallDataSource *)self callStateController];
  [v8 deactivatePTTBargeCalls];

  v9 = [v7 isoCountryCode];

  if (!v9)
  {
    v10 = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCall:v7];
    if ([v10 length])
    {
      v11 = objc_alloc_init(CXCallUpdate);
      [v11 setISOCountryCode:v10];
      [v7 updateWithCallUpdate:v11];
    }
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asked to perform start call action %@ for call %@", &v13, 0x16u);
  }

  [(CSDProviderCallDataSource *)self performCallAction:v6 forCall:v7];
}

- (void)callSource:(id)a3 registeredWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call source %@ registered with configuration %@", &v19, 0x16u);
  }

  v9 = [[TUCallProvider alloc] initWithCallSource:v6 configuration:v7];
  v10 = [v6 identifier];
  v11 = [v10 isEqualToString:@"com.apple.coretelephony"];

  if (v11)
  {
    [v9 setBundleIdentifier:TUBundleIdentifierPhoneApplication];
    v12 = [v9 localizedName];
    if (v12)
    {
      [v9 setLocalizedName:v12];
    }

    else
    {
      v13 = TUResolvedPhoneString();
      [v9 setLocalizedName:v13];
    }
  }

  v14 = [(CSDProviderCallDataSource *)self callProviderManager];
  [v14 registerLocalProvider:v9];

  v15 = [v6 identifier];
  v16 = [v15 isEqualToString:@"com.apple.coretelephony"];

  if (v16)
  {
    v17 = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    v18 = [v7 prioritizedSenderIdentities];
    [v17 updateProviderConfigurationWithSenderIdentities:v18];
  }
}

- (BOOL)callSource:(id)a3 shouldProcessAction:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v15 = 0;
  v10 = [(CSDProviderCallDataSource *)self _shouldAllowRequestedAction:v9 forCallSource:v8 shouldValidateUserIntent:0 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047F168();
    }
  }

  if (a5)
  {
    v13 = v11;
    *a5 = v11;
  }

  return v10;
}

- (void)updateFilteredOutReasonForCall:(id)a3 WithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_21;
  }

  if ([v7 code] == 4)
  {
    if (![v6 filteredOutReason])
    {
      v9 = v6;
      v10 = 1;
LABEL_17:
      [v9 setFilteredOutReason:v10];
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([v8 code] == 3)
  {
    if ([v6 filteredOutReason])
    {
      goto LABEL_18;
    }

    featureFlags = self->_featureFlags;
    deviceSupport = self->_deviceSupport;
    if (TUCommunicationTrustEnabled())
    {
      if ([v6 commTrustScore] == 2)
      {
        goto LABEL_22;
      }

      v13 = [(CSDProviderCallDataSource *)self liveLookupExtensionsAllowCallsFromHandle];
    }

    else
    {
      v13 = [(CSDProviderCallDataSource *)self callDirectoryAllowsCallFromSourceAddress];
    }

    v14 = v13;
    v15 = [v6 handle];
    v16 = [v15 value];
    v17 = (v14)[2](v14, v16);

    if (v17)
    {
      v9 = v6;
      v10 = 6;
      goto LABEL_17;
    }

LABEL_22:
    [v6 setFilteredOutReason:4];
    v19 = [(CSDProviderCallDataSource *)self blockedByExtension];
    v20 = [v6 handle];
    v21 = [v20 value];
    v22 = (v19)[2](v19, v21);
    [v6 setBlockedByExtension:v22];

    goto LABEL_18;
  }

  if ([v8 code] == 104)
  {
    v9 = v6;
    v10 = 7;
    goto LABEL_17;
  }

  if ([v8 code] == 105)
  {
    v9 = v6;
    v10 = 8;
    goto LABEL_17;
  }

LABEL_18:
  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 67109120;
    v23[1] = [v6 filteredOutReason];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updated filtered out reason to %d", v23, 8u);
  }

LABEL_21:
}

- (void)callSource:(id)a3 _reportedNewIncomingCallWithUUID:(id)a4 update:(id)a5 completion:(id)a6
{
  v10 = a3;
  v237 = a4;
  v11 = a5;
  v235 = a6;
  v242 = self;
  v238 = v10;
  v241 = [(CSDProviderCallDataSource *)self _providerForCallSource:v10];
  v240 = [(CSDCallDataSource *)self callStateController];
  v269 = 0;
  v270 = &v269;
  v271 = 0x3032000000;
  v272 = sub_100028750;
  v273 = sub_100032924;
  v274 = 0;
  v12 = [v240 answeringMachineController];
  v234 = [v12 isAvailable];

  v13 = [(CSDProviderCallDataSource *)self assistantServicesObserver];
  v14 = [v13 announceCallsProviderIdentifier];
  [v11 setAnnounceProviderIdentifier:v14];

  v236 = [v11 account];
  v239 = [v11 localSenderIdentityUUID];
  if (v236 || !v239)
  {
    goto LABEL_19;
  }

  v15 = [v241 senderIdentityForUUID:v239];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 handle];
    if (v17)
    {
      v18 = [CXHandle handleWithTUHandle:v17];
    }

    else
    {
      v18 = 0;
    }

    v19 = [v16 ISOCountryCode];
    if (![v19 length])
    {
      v20 = [(CSDProviderCallDataSource *)self coreTelephonyClient];
      v21 = [v20 accountISOCountryCodeForSubscriptionUUID:v239];

      v19 = v21;
    }

    v22 = [v16 accountUUID];
    v23 = [v16 localizedName];
    v24 = [v16 localizedServiceName];
    v25 = [v16 localizedShortName];
    v26 = v25;
    if (v22 && v23 && v24 && v19 && v25)
    {
      v27 = [[CXAccount alloc] initWithUUID:v22 description:v23 serviceName:v24 isoCountryCode:v19 handle:v18 shortLabel:v25];
      [v11 setAccount:v27];
    }

    else if (!v22)
    {
LABEL_17:

      goto LABEL_18;
    }

    v28 = [v22 UUIDString];
    [v11 setLocalSenderSubscriptionIdentifier:v28];

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  v29 = [v241 isTelephonyProvider];
  if (v239)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == 1)
  {
    v31 = [(CSDProviderCallDataSource *)v242 coreTelephonyClient];
    v233 = [v31 isInHomeCountryForSubscriptionUUID:v239];

    v32 = [v11 localizedCallerName];
    v33 = [v32 length] == 0;

    if (v33)
    {
      v232 = 0;
    }

    else
    {
      v34 = [(CSDProviderCallDataSource *)v242 coreTelephonyClient];
      v35 = [v34 spamIdentifiersForSubscriptionUUID:v239];

      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v265 objects:v292 count:16];
      if (v37)
      {
        v38 = *v266;
        while (2)
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v266 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = *(*(&v265 + 1) + 8 * i);
            v41 = [v11 localizedCallerName];
            LOBYTE(v40) = [v41 rangeOfString:v40 options:1] == 0x7FFFFFFFFFFFFFFFLL;

            if ((v40 & 1) == 0)
            {
              v232 = 1;
              goto LABEL_35;
            }
          }

          v37 = [v36 countByEnumeratingWithState:&v265 objects:v292 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }
      }

      v232 = 0;
LABEL_35:
    }
  }

  else
  {
    v232 = 0;
    v233 = 0;
  }

  v42 = [v11 localMemberHandleValue];
  if (v42)
  {
    v43 = [v11 localSenderSubscriptionIdentifier];
    v44 = v43 == 0;

    if (v44)
    {
      v45 = [(CSDProviderCallDataSource *)v242 coreTelephonyClient];
      v46 = [v45 telephonySubscriptions];

      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v47 = v46;
      v48 = [v47 countByEnumeratingWithState:&v261 objects:v291 count:16];
      if (v48)
      {
        v49 = *v262;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v262 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v261 + 1) + 8 * j);
            v52 = [v51 phoneNumber];
            if (v52)
            {
              v53 = [v51 phoneNumber];
              v54 = _FTAreIDsEquivalent();

              if (v54)
              {
                v55 = [v51 labelID];
                [v11 setLocalSenderSubscriptionIdentifier:v55];
              }
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v261 objects:v291 count:16];
        }

        while (v48);
      }
    }
  }

  v56 = [v11 ISOCountryCode];
  if (!v56)
  {
    v56 = [(CSDProviderCallDataSource *)v242 _ISOCountryCodeForCallWithUUID:v237 provider:v241 callUpdate:v11];
    if (v56)
    {
      [v11 setISOCountryCode:v56];
    }
  }

  v230 = v56;
  v57 = [v240 callContainer];
  v58 = [v57 _allCalls];
  if ([v58 count])
  {
    goto LABEL_54;
  }

  if (![v241 isTelephonyProvider])
  {
    if (!v234)
    {
LABEL_54:
      v231 = 0;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v231 = 0;
  if (((v232 | v233 ^ 1) & 1) == 0 && ((v234 ^ 1) & 1) == 0)
  {
LABEL_60:
    v59 = [(CSDProviderCallDataSource *)v242 lowPowerModeEnabledBlock];
    v60 = v59[2]();

    v231 = v60 ^ 1;
  }

LABEL_61:

  if (+[SOSUtilities shouldBlockNonEmergencyCalls])
  {
    v61 = sub_100004778();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because SOS is active", buf, 2u);
    }

    v62 = [NSError cx_incomingCallErrorWithCode:3];
    v63 = 0;
    v64 = 0;
    v65 = v270[5];
    v270[5] = v62;
    v66 = 1;
    goto LABEL_155;
  }

  if ([v11 priority] == 2 && objc_msgSend(v241, "isTelephonyProvider"))
  {
    v67 = [(CSDProviderCallDataSource *)v242 _endMutuallyExclusiveCalls:v11];
    v68 = v270[5];
    v270[5] = v67;

    if (v270[5])
    {
      v63 = 0;
      v64 = 0;
      v66 = 0;
LABEL_156:
      v243[0] = _NSConcreteStackBlock;
      v243[1] = 3221225472;
      v243[2] = sub_10025B54C;
      v243[3] = &unk_10061FD20;
      v148 = v240;
      v244 = v148;
      v251 = v64;
      v229 = v237;
      v245 = v229;
      v246 = v242;
      v250 = &v269;
      v249 = v235;
      v252 = v66;
      v227 = v238;
      v247 = v227;
      v225 = v11;
      v248 = v225;
      v253 = v66;
      v254 = v233;
      v255 = v234;
      v256 = v232;
      v149 = objc_retainBlock(v243);
      v150 = [(CSDProviderCallDataSource *)v242 isAutoAnswerDeviceBlock];
      v151 = v150[2]();

      v152 = sub_100004778();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
      {
        v221 = v149;
        v153 = v148;
        if (v64)
        {
          v154 = @"YES";
        }

        else
        {
          v154 = @"NO";
        }

        if (v63)
        {
          v155 = @"YES";
        }

        else
        {
          v155 = @"NO";
        }

        v156 = [v153 callContainer];
        v157 = [v156 _allCalls];
        if ([v157 count])
        {
          v158 = @"NO";
        }

        else
        {
          v158 = @"YES";
        }

        *buf = 138413826;
        if (v233)
        {
          v159 = @"YES";
        }

        else
        {
          v159 = @"NO";
        }

        *v276 = v154;
        *&v276[8] = 2112;
        if (v232)
        {
          v160 = @"YES";
        }

        else
        {
          v160 = @"NO";
        }

        v277 = v155;
        if (v234)
        {
          v161 = @"YES";
        }

        else
        {
          v161 = @"NO";
        }

        v278 = 2112;
        if (v151)
        {
          v162 = @"YES";
        }

        else
        {
          v162 = @"NO";
        }

        v279 = v158;
        v280 = 2112;
        v281 = v159;
        v282 = 2112;
        v283 = v160;
        v284 = 2112;
        v285 = v161;
        v286 = 2112;
        v287 = v162;
        _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, "Should we send to AnsweringMachine? shouldSendToLVM=%@ shouldSendToReceptionist=%@ noOtherCalls=%@ homeCountry=%@ hasSpamIdentifierInCarrierName=%@ isAnsweringMachineAvailable=%@ isAutoAnswerDevice=%@", buf, 0x48u);

        v148 = v220;
        v149 = v221;
      }

      v163 = [v148 featureFlags];
      v164 = [v163 callScreeningEnabledM3];

      if ((v164 & v64 & v231 & v151) != 0)
      {
        v165 = 1;
      }

      else
      {
        v165 = 2;
      }

      if (((v63 | v164 & v64) & v231 & v151) == 1)
      {
        v166 = sub_100004778();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v276 = v165;
          _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "Sending update to see if it should be screened with type %ld", buf, 0xCu);
        }

        [v148 screenUpdate:v225 withProvider:v241 callSource:v227 callUUID:v229 screeningType:v165];
        [(CSDProviderCallDataSource *)v242 dispatchDelay];
        v168 = dispatch_time(0, (v167 * 1000000000.0));
        v169 = [(CSDCallDataSource *)v242 queue];
        dispatch_after(v168, v169, v149);
      }

      else
      {
        (v149[2])(v149);
      }

      v133 = v244;
      goto LABEL_188;
    }

    v65 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v238 UUID:v237 update:v11 originatingUIType:45];
    [v65 setLocalUserInHomeCountry:v233];
    [v65 setAnsweringMachineAvailable:v234];
    [v65 setIdentifiedSpamInCallerName:v232];
    [v240 setCallDelegatesIfNeeded:v65];
    [v240 propertiesChangedForCall:v65];
    v63 = 0;
    v64 = 0;
    v66 = 0;
LABEL_155:

    goto LABEL_156;
  }

  v228 = [(CSDProviderCallDataSource *)v242 routeManager];
  v69 = [(CSDProviderCallDataSource *)v242 incomingCallFilterQueryResult];
  v70 = [v11 remoteHandle];
  v71 = [v70 value];
  v72 = [v238 identifier];
  v226 = (v69)[2](v69, v71, v72);

  v73 = sub_100004778();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v11 remoteHandle];
    v75 = [v74 value];
    v76 = TULoggableStringForHandle();
    v77 = [v238 identifier];
    *buf = 138412802;
    *v276 = v226;
    *&v276[8] = 2112;
    v277 = v76;
    v278 = 2112;
    v279 = v77;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Query result: %@ for handle: %@ callSource: %@", buf, 0x20u);
  }

  featureFlags = v242->_featureFlags;
  deviceSupport = v242->_deviceSupport;
  if (TUCommunicationTrustEnabled())
  {
    if ([v11 commTrustScore] == 2 || !objc_msgSend(v226, "allowCallForDestinationID"))
    {
      v224 = 1;
    }

    else
    {
      v80 = [(CSDProviderCallDataSource *)v242 liveLookupExtensionsAllowCallsFromHandle];
      v81 = [v11 remoteHandle];
      v82 = [v81 value];
      if ((v80)[2](v80, v82))
      {
        v83 = [(CSDProviderCallDataSource *)v242 systemAllowsCall];
        v84 = [v11 remoteHandle];
        v85 = [v84 value];
        v86 = [v238 identifier];
        v223 = (v83)[2](v83, v85, v86);

        v87 = v223 ^ 1;
      }

      else
      {
        v87 = 1;
      }

      v224 = v87;
    }

    if ([v11 commTrustScore])
    {
      v222 = [v226 isFromBlockList];
    }

    else
    {
      v222 = 1;
    }
  }

  else
  {
    v88 = [(CSDProviderCallDataSource *)v242 incomingCallFilterQueryResult];
    v89 = [v11 remoteHandle];
    v90 = [v89 value];
    v91 = [v238 identifier];
    v92 = (*(v88 + 16))(v88, v90, v91);

    LODWORD(v88) = [v92 allowCallForDestinationID];
    v222 = [v92 isFromBlockList];

    v224 = v88 ^ 1;
  }

  v93 = sub_100004778();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    v94 = @"NO";
    if (v222)
    {
      v95 = @"YES";
    }

    else
    {
      v95 = @"NO";
    }

    if (v224)
    {
      v94 = @"YES";
    }

    *buf = 138412546;
    *v276 = v95;
    *&v276[8] = 2112;
    v277 = v94;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "shouldBlock: %@ shouldSilence %@", buf, 0x16u);
  }

  v96 = [(CSDProviderCallDataSource *)v242 featureFlags];
  v97 = [v96 isFocusBasedSimSilencingEnabled];

  if (v97)
  {
    v98 = sub_100004778();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      v99 = [v241 isTelephonyProvider];
      *buf = 67109376;
      *v276 = v224;
      *&v276[4] = 1024;
      *&v276[6] = v99;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "simFocus: shouldSilence:%d, isTelephonyProvider: %d", buf, 0xEu);
    }

    if ([v241 isTelephonyProvider])
    {
      v100 = [(CSDProviderCallDataSource *)v242 focusAllowsCall];
      v101 = (v100)[2](v100, v11, v241);

      v102 = sub_100004778();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v276 = v101;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "simFocus: focusAllowsCall result: %d", buf, 8u);
      }

      LOBYTE(v224) = v224 | v101 ^ 1;
    }
  }

  v103 = [v228 isCarModeActive];
  if ([v228 isAnyVehicleRouteAvailableForAnyCall])
  {
    v104 = 1;
  }

  else
  {
    v104 = [v228 isAnyBluetoothHeadphoneRouteAvailableForAnyCall];
  }

  if (v103 & v104 & 1) != 0 || v103 && ([v228 isCarPlayRouteAvailable])
  {
    v105 = 1;
  }

  else
  {
    v106 = [(CSDProviderCallDataSource *)v242 featureFlags];
    if ([v106 nearbyFaceTimeEnabled])
    {
      v105 = [v11 nearbyMode] != 0;
    }

    else
    {
      v105 = 0;
    }
  }

  v107 = sub_100004778();
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v276 = v103;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "carModeActive=%d", buf, 8u);
  }

  v108 = sub_100004778();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = [v228 isCarPlayRouteAvailable];
    *buf = 67109120;
    *v276 = v109;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "routeManager.isCarPlayRouteAvailable=%d", buf, 8u);
  }

  v110 = sub_100004778();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v276 = v105;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "shouldIgnoreDND=%d", buf, 8u);
  }

  v111 = [(CSDProviderCallDataSource *)v242 supportsPrimaryCalling];
  if (v111[2]())
  {
    v112 = 0;
  }

  else
  {
    v112 = [v241 isTelephonyProvider];
  }

  v113 = sub_100004778();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v276 = v112;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "isThumperCall=%d", buf, 8u);
  }

  if (!v241 || ([v241 isSystemProvider] & 1) != 0)
  {
LABEL_124:
    v118 = [(CSDProviderCallDataSource *)v242 protectedAppsUtilities];
    v119 = [v238 bundleIdentifier];
    v120 = [v118 shouldBlockCallWithBundleIdentifier:v119];

    if (v120)
    {
      v121 = sub_100004778();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        v122 = [v238 bundleIdentifier];
        *buf = 138412290;
        *v276 = v122;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "[WARN] Blocking incoming call UI because the originating app [Bundle Identifier: %@] responsible for the call is hidden and currently not foregrounded", buf, 0xCu);
      }

      v123 = [NSError cx_incomingCallErrorWithCode:6];
      v124 = v270[5];
      v270[5] = v123;

LABEL_132:
      v63 = 0;
      v64 = 0;
      v66 = 0;
LABEL_154:

      v65 = v228;
      goto LABEL_155;
    }

    if (v222)
    {
      v125 = sub_100004778();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because it was on the block list", buf, 2u);
      }

      v126 = [NSError cx_incomingCallErrorWithCode:4];
      v127 = v270[5];
      v270[5] = v126;

      goto LABEL_132;
    }

    if ([(CSDProviderCallDataSource *)v242 _shouldBlockIfScreenSharing])
    {
      v128 = sub_100004778();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "[WARN] Blocking call because we are screen sharing and don't want to let that notification come through", buf, 2u);
      }

      v129 = [NSError cx_incomingCallErrorWithCode:104];
      v130 = v270[5];
      v270[5] = v129;

LABEL_137:
      v63 = 0;
      v64 = 0;
LABEL_153:
      v66 = 1;
      goto LABEL_154;
    }

    if (!v105 && (v224 & 1) != 0)
    {
      v135 = sub_100004778();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        v136 = [v228 isCarPlayRouteAvailable];
        *buf = 67109632;
        *v276 = v103;
        *&v276[4] = 1024;
        *&v276[6] = v104;
        LOWORD(v277) = 1024;
        *(&v277 + 2) = v136;
        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because call did not pass DND filter. CarMode (%d) BT Audio Route (%d), CarPlay (%d)", buf, 0x14u);
      }

      v137 = [NSError cx_incomingCallErrorWithCode:3];
      v138 = v270[5];
      v270[5] = v137;

      v63 = 0;
      v64 = 1;
      goto LABEL_153;
    }

    v134 = [(CSDProviderCallDataSource *)v242 supportsPrimaryCalling];
    if (v134[2]())
    {
    }

    else
    {
      v139 = [(CSDProviderCallDataSource *)v242 shouldPreferRelayOverDirectSecondaryCalling];
      v140 = (v139)[2](v139, v241, [v11 hasVideo]);

      if (v140)
      {
        v141 = sub_100004778();
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because it is a direct call to a secondary device and relay calling is preferred over direct calling", buf, 2u);
        }

        v142 = [NSError cx_incomingCallErrorWithCode:100];
        v143 = v270[5];
        v270[5] = v142;

        goto LABEL_132;
      }
    }

    v144 = [(CSDProviderCallDataSource *)v242 shouldFilterCall];
    v145 = (v144)[2](v144, v11, v241);

    if (v145)
    {
      v146 = [NSError cx_incomingCallErrorWithCode:4];
      v147 = v270[5];
      v270[5] = v146;

      v63 = 0;
      v64 = [v11 filteredOutReason] != 5;
      goto LABEL_153;
    }

    if (!([v228 isCarPlayRouteAvailable] & 1 | ((v231 & 1) == 0)) && ((v234 ^ 1) & 1) == 0)
    {
      v170 = v242->_featureFlags;
      v171 = v242->_deviceSupport;
      if (TUCommunicationTrustEnabled())
      {
        if ([v11 commTrustScore] <= 4)
        {
          v172 = [(CSDProviderCallDataSource *)v242 featureFlags];
          if (!TUReceptionistAvailable())
          {
LABEL_196:

            goto LABEL_197;
          }

          v173 = [v11 remoteHandle];
          v174 = [v173 value];
          v175 = [(CSDProviderCallDataSource *)v242 serverBag];
          if (v112 & 1 | ((TUCheckReceptionistDisclosed() & 1) == 0))
          {

            goto LABEL_196;
          }

          v217 = [(CSDProviderCallDataSource *)v242 isEligibleBlock];
          v218 = (v217)[2](v217, v11, v241, 1);

          if (v218)
          {
            v219 = sub_100004778();
            if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v219, OS_LOG_TYPE_DEFAULT, "Call has commTrustScore of unknown or less and we're not sending to LVM, send to Receptionist", buf, 2u);
            }

            v64 = 0;
            v63 = 1;
            goto LABEL_153;
          }
        }
      }
    }

LABEL_197:
    v176 = [(CSDProviderCallDataSource *)v242 featureFlags];
    if ([v176 nudityDetectionEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v177 = [v11 remoteParticipantHandles];
      v178 = [(CSDProviderCallDataSource *)v242 remoteScaParticipants:v177];
      if ([v11 hasVideo])
      {
        v179 = 1;
      }

      else
      {
        v179 = 2;
      }

      v180 = [SCAnalysisHistory shouldDeclineIncomingCallFromParticipants:v178 callType:v179];

      if (v180)
      {
        v181 = sub_100004778();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because it was on the sensitive content shared list", buf, 2u);
        }

        v182 = [NSError cx_incomingCallErrorWithCode:7];
        v183 = v270[5];
        v270[5] = v182;

        goto LABEL_137;
      }
    }

    else
    {
    }

    if ([v11 requiresAuthentication])
    {
      v184 = sub_100004778();
      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "[WARN] Update requires additional authentication before it can be answered", buf, 2u);
      }

      v185 = [CSDIDSPendingChat alloc];
      v186 = [v11 UUID];
      v187 = [v11 hasVideo];
      v188 = [v11 remoteHandle];
      v189 = [v188 tuHandle];
      v190 = [(CSDIDSPendingChat *)v185 initWithUUID:v186 isVideo:v187 handle:v189];

      v191 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v238 UUID:v237 update:v11 originatingUIType:45];
      [v191 setLocalUserInHomeCountry:v233];
      [v191 setAnsweringMachineAvailable:v234];
      [v191 setIdentifiedSpamInCallerName:v232];
      v192 = [v240 answeringMachineController];
      LODWORD(v188) = v192 == 0;

      if ((v188 | v234))
      {
        if ((TUCallScreeningEnabled() & 1) == 0)
        {
          [v191 setLiveVoicemailUnavailableReason:5];
        }
      }

      else
      {
        v206 = [v240 answeringMachineController];
        [v191 setLiveVoicemailUnavailableReason:{objc_msgSend(v206, "liveVoicemailUnavailableReason")}];
      }

      [v240 setCallDelegatesIfNeeded:v191];
      v207 = [(CSDProviderCallDataSource *)v242 pendingCallsToChatUUIDs];
      v208 = [(CSDIDSPendingChat *)v190 uuid];
      [v207 setObject:v191 forKeyedSubscript:v208];

      v209 = +[NSNotificationCenter defaultCenter];
      v289 = @"CSDIDSPendingChatKey";
      v290 = v190;
      v210 = [NSDictionary dictionaryWithObjects:&v290 forKeys:&v289 count:1];
      [v209 postNotificationName:@"CSDIDSPendingMessageDidReceiveInviteNotification" object:0 userInfo:v210];

      goto LABEL_132;
    }

    v193 = [(CSDProviderCallDataSource *)v242 _endMutuallyExclusiveCalls:v11];
    v194 = v270[5];
    v270[5] = v193;

    v195 = [(CSDProviderCallDataSource *)v242 featureFlags];
    if ([v195 uplevelFTAEnabled])
    {
      v196 = [v11 isUpgradeToVideo];

      if (!v196)
      {
        v198 = 0;
LABEL_230:
        if (!v270[5])
        {
          v213 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v238 UUID:v237 update:v11 originatingUIType:45];
          [v213 setLocalUserInHomeCountry:v233];
          [v213 setUpgradedFromCallUUID:v198];
          [v213 setAnsweringMachineAvailable:v234];
          [v213 setIdentifiedSpamInCallerName:v232];
          v214 = [v240 answeringMachineController];
          v215 = v214 == 0;

          if ((v215 | v234))
          {
            if ((TUCallScreeningEnabled() & 1) == 0)
            {
              [v213 setLiveVoicemailUnavailableReason:5];
            }
          }

          else
          {
            v216 = [v240 answeringMachineController];
            [v213 setLiveVoicemailUnavailableReason:{objc_msgSend(v216, "liveVoicemailUnavailableReason")}];
          }

          [v240 setCallDelegatesIfNeeded:v213];
          [v240 propertiesChangedForCall:v213];
        }

        goto LABEL_132;
      }

      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      v197 = [v240 callCenter];
      v195 = [v197 currentCalls];

      v198 = [v195 countByEnumeratingWithState:&v257 objects:v288 count:16];
      if (v198)
      {
        v199 = *v258;
        while (2)
        {
          for (k = 0; k != v198; k = k + 1)
          {
            if (*v258 != v199)
            {
              objc_enumerationMutation(v195);
            }

            v201 = *(*(&v257 + 1) + 8 * k);
            v202 = [v201 handle];
            v203 = [CXHandle handleWithTUHandle:v202];

            v204 = [v11 remoteHandle];
            v205 = [v203 isEqual:v204];

            if (v205)
            {
              v211 = [NSUUID alloc];
              v212 = [v201 callUUID];
              v198 = [v211 initWithUUIDString:v212];

              goto LABEL_229;
            }
          }

          v198 = [v195 countByEnumeratingWithState:&v257 objects:v288 count:16];
          if (v198)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v198 = 0;
    }

LABEL_229:

    goto LABEL_230;
  }

  v114 = [v241 bundleIdentifier];
  v115 = [v240 voipApplicationController];
  v116 = [v115 shouldAllowIncomingCall:v114];

  if (v116)
  {
    v117 = [v240 voipApplicationController];
    [v117 noteReportedNewIncomingVoIPCallForBundleIdentifier:v114];

    goto LABEL_124;
  }

  v131 = sub_100004778();
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring add incoming call request because we are not allowing the app to receive calls: ", buf, 2u);
  }

  v132 = [NSError cx_incomingCallErrorWithCode:106];
  (*(v235 + 2))(v235, v132);

  v133 = v228;
LABEL_188:

  _Block_object_dispose(&v269, 8);
}

- (void)callSource:(id)a3 _reportedNewIncomingCallWithUUIDSilently:(id)a4 update:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDProviderCallDataSource *)self _providerForCallSource:v8];
  v12 = [(CSDCallDataSource *)self callStateController];
  v13 = [v10 ISOCountryCode];
  if (!v13)
  {
    v13 = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCallWithUUID:v9 provider:v11 callUpdate:v10];
    if (v13)
    {
      [v10 setISOCountryCode:v13];
    }
  }

  v22 = v11;
  v14 = [(CSDProviderCallDataSource *)self incomingCallFilterQueryResult];
  v15 = [v10 remoteHandle];
  v16 = [v15 value];
  v17 = [v8 identifier];
  v18 = (v14)[2](v14, v16, v17);

  v19 = [v18 isFromBlockList];
  v20 = sub_100004778();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "creating protected call", buf, 2u);
  }

  v21 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v8 UUID:v9 update:v10 originatingUIType:45];
  [v21 setDisconnectedReason:21];
  [v21 setSupportsRecents:v19 ^ 1];
  [v21 setLocalUserInHomeCountry:0];
  [v21 setAnsweringMachineAvailable:0];
  [v21 setFilteredOutReason:10];
  [v12 setCallDelegatesIfNeeded:v21];
  [v12 propertiesChangedForCall:v21];
}

- (void)callSource:(id)a3 reportedNewIncomingCallWithUUID:(id)a4 update:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 UUIDString];
    *buf = 138412802;
    v47 = v10;
    v48 = 2112;
    v49 = v15;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received add incoming call request from call source %@ with UUID %@ update %@", buf, 0x20u);
  }

  [CSDSignposts trace:4];
  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:v11];
  v17 = [(CSDProviderCallDataSource *)self _relayCallWithUUID:v11];
  if (!(v16 | v17))
  {
    if ([v12 shouldSilentlyRegisterIMAVCall])
    {
      [(CSDProviderCallDataSource *)self callSource:v10 _reportedNewIncomingCallWithUUIDSilently:v11 update:v12];
      v13[2](v13, 0);
      goto LABEL_39;
    }

    v20 = [(CSDProviderCallDataSource *)self _providerForCallSource:v10];
    featureFlags = self->_featureFlags;
    deviceSupport = self->_deviceSupport;
    if (!TUCommunicationTrustEnabled())
    {
LABEL_38:
      [(CSDProviderCallDataSource *)self callSource:v10 _reportedNewIncomingCallWithUUID:v11 update:v12 completion:v13];

      goto LABEL_39;
    }

    v23 = [(CSDCommunicationTrustScoreDataProviderProtocol *)self->_communicationTrustScoreDataProvider getTrustScoreFor:v12 callProvider:v20];
    v24 = v23;
    [v12 setCommTrustScore:v23];
    [v12 setIsKnownCaller:v24 > 4];
    v25 = [(CSDProviderCallDataSource *)self serverBag];
    v26 = [v25 objectForKey:@"disable-receptionist-disclosure-checks"];

    v45 = v26;
    if (v26)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        LODWORD(v26) = [v26 BOOLValue];
      }

      else
      {
        LODWORD(v26) = 0;
      }
    }

    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      if (v26)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      v47 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "specialUnknown: disclosureChecksEnabled=%@", buf, 0xCu);
    }

    if (v26 & 1 | (([v20 isTelephonyProvider] & 1) == 0))
    {
      goto LABEL_37;
    }

    if (![v12 isKnownCaller])
    {
      goto LABEL_37;
    }

    v29 = [v12 remoteHandle];
    v30 = [v29 value];
    [(CSDProviderCallDataSource *)self serverBag];
    v31 = v44 = v20;
    v43 = TUCheckReceptionistDisclosed();

    v20 = v44;
    if (!v43)
    {
LABEL_37:

      goto LABEL_38;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "We have a known caller, might force it to specialUnknown", buf, 2u);
    }

    v33 = +[NSUserDefaults tu_defaults];
    v34 = [v33 objectForKey:@"specialUnknownValue"];

    if (v34)
    {
      v35 = +[NSUserDefaults tu_defaults];
      [v12 setSpecialUnknown:{objc_msgSend(v35, "BOOLForKey:", @"specialUnknownValue"}];

      v36 = sub_100004778();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v37 = [v12 specialUnknown];
      v38 = @"NO";
      if (v37)
      {
        v38 = @"YES";
      }

      *buf = 138412290;
      v47 = v38;
      v39 = "Default set, set specialUnknown: %@";
    }

    else
    {
      [v12 setSpecialUnknown:arc4random_uniform(0x64u) < 0x32];
      v36 = sub_100004778();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      v40 = [v12 specialUnknown];
      v41 = @"NO";
      if (v40)
      {
        v41 = @"YES";
      }

      *buf = 138412290;
      v47 = v41;
      v39 = "Default not set, calculated specialUnknown: %@";
    }

    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v39, buf, 0xCu);
LABEL_33:
    v20 = v44;

    if ([v12 specialUnknown])
    {
      v42 = sub_100004778();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "We are forcing a known caller to be specialUnknown", buf, 2u);
      }

      [v12 setCommTrustScore:4];
      [v12 setIsKnownCaller:0];
    }

    goto LABEL_37;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = v16;
    v48 = 2112;
    v49 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring add incoming call request because a call already exists with the same UUID: existingCall: %@, relayCallWithUUID: %@", buf, 0x16u);
  }

  v19 = [NSError cx_incomingCallErrorWithCode:2];
  (v13)[2](v13, v19);

LABEL_39:
}

- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 updated:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 UUIDString];
    *buf = 138412802;
    v44 = v8;
    v45 = 2112;
    v46 = v12;
    v47 = 2112;
    v48 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with update %@", buf, 0x20u);
  }

  v13 = sub_100004778();
  if (os_signpost_enabled(v13))
  {
    v14 = [v10 UUID];
    v15 = [v14 UUIDString];
    *buf = 138543362;
    v44 = v15;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSDProviderCallDataSource", "callSourceUpdated-%{public}@", buf, 0xCu);
  }

  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 controllableByCallSource:v8];
  if ((-[NSObject isMutuallyExclusiveCall](v16, "isMutuallyExclusiveCall") & 1) != 0 || [v10 isMutuallyExclusiveCall])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = [(CSDCallDataSource *)self calls];
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v37 = self;
      v38 = v8;
      v20 = *v40;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          v23 = [v16 uniqueProxyIdentifierUUID];
          v24 = [v22 uniqueProxyIdentifierUUID];
          v25 = [v23 isEqual:v24];

          if (!v25)
          {

            v17 = [[CXEndCallAction alloc] initWithCallUUID:v9];
            v26 = sub_100004778();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v44 = v17;
              v45 = 2112;
              v46 = v9;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Sending %@ for existing call with uniqueProxyIdentifierUUID=%@ since it cannot co-exist with ongoing calls.", buf, 0x16u);
            }

            self = v37;
            [(CSDProviderCallDataSource *)v37 performCallAction:v17 forCall:v16];
            v8 = v38;
            goto LABEL_19;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      self = v37;
      v8 = v38;
    }

LABEL_19:
  }

  if (v16)
  {
    goto LABEL_22;
  }

  v27 = [(CSDProviderCallDataSource *)self pendingPulledCallContexts];
  v28 = [v27 objectForKeyedSubscript:v9];

  v16 = [v28 call];

  if (v16)
  {
LABEL_22:
    v29 = [v16 isoCountryCode];
    if (!v29)
    {
      v30 = [v10 ISOCountryCode];

      if (v30)
      {
        goto LABEL_25;
      }

      v29 = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCall:v16];
      v35 = [v10 ISOCountryCode];
      v36 = TUStringsAreEqualOrNil();

      if ((v36 & 1) == 0)
      {
        [v10 setISOCountryCode:v29];
      }
    }

LABEL_25:
    [v16 updateWithCallUpdate:v10];
    v31 = sub_100004778();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v9 UUIDString];
      *buf = 138413058;
      v44 = v8;
      v45 = 2112;
      v46 = v32;
      v47 = 2112;
      v48 = v10;
      v49 = 2112;
      v50 = v16;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with update %@ => %@", buf, 0x2Au);
    }

    goto LABEL_28;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v9 UUIDString];
    v34 = [(CSDCallDataSource *)self calls];
    *buf = 138412802;
    v44 = v8;
    v45 = 2112;
    v46 = v33;
    v47 = 2112;
    v48 = v34;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", buf, 0x20u);
  }

LABEL_28:
}

- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 receivedDTMFUpdate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 UUIDString];
    v20 = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with DTMFUpdate %@", &v20, 0x20u);
  }

  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 controllableByCallSource:v8];
  if (v13 && ([v10 digits], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
  {
    v16 = [(CSDCallDataSource *)self callStateController];
    v17 = [v10 tuCallDTMFUpdate];
    [v16 handleReceivedCallDTMFUpdate:v17 forCall:v13];
  }

  else
  {
    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v9 UUIDString];
      v19 = [(CSDCallDataSource *)self calls];
      v20 = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v18;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v20, 0x20u);
    }
  }
}

- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 endedAtDate:(id)a5 privateReason:(int64_t)a6 failureContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 UUIDString];
    *buf = 138413314;
    v76 = v12;
    v77 = 2112;
    v78 = v17;
    v79 = 2112;
    v80 = v14;
    v81 = 2048;
    v82 = a6;
    v83 = 2112;
    v84 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Call source %@ ended call with UUID %@ with ended at date %@ with reason %ld failure context %@", buf, 0x34u);
  }

  v18 = [(CSDProviderCallDataSource *)self _callWithUUID:v13 backingCallSource:v12];
  v19 = [(CSDProviderCallDataSource *)self _providerForCallSource:v12];
  v61 = v15;
  if (!v18)
  {
    v27 = [(CSDProviderCallDataSource *)self pendingCallsToChatUUIDs];
    v28 = [v27 objectForKeyedSubscript:v13];

    if (v28)
    {
      v29 = +[NSNotificationCenter defaultCenter];
      v72[0] = @"CSDIDSPendingChatUUIDKey";
      v72[1] = @"CSDIDSPendingCallKey";
      v73[0] = v13;
      v73[1] = v28;
      [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
      v31 = v30 = v19;
      [v29 postNotificationName:@"CSDIDSPendingMessageDidReceiveCancelNotification" object:0 userInfo:v31];

      v19 = v30;
      v32 = [(CSDProviderCallDataSource *)self pendingCallsToChatUUIDs];
      [v32 setObject:0 forKeyedSubscript:v13];
    }

    else
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v13 UUIDString];
        v35 = [(CSDCallDataSource *)self calls];
        *buf = 138412802;
        v76 = v12;
        v77 = 2112;
        v78 = v34;
        v79 = 2112;
        v80 = v35;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  if ([v18 isIncoming] && v19 && (objc_msgSend(v19, "isSystemProvider") & 1) == 0 && (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v21 = v20, objc_msgSend(v18, "dateCreated"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSinceReferenceDate"), v24 = v21 - v23, v22, v24 < 2.0))
  {
    v36 = v14;
    v37 = sub_100004778();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v13 UUIDString];
      *buf = 138412290;
      v76 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[WARN] Deferring acknowledgement of VoIP call with UUID %@ ended until minimum ring duration has passed", buf, 0xCu);
    }

    v39 = dispatch_time(0, ((2.0 - v24 + 0.01) * 1000000000.0));
    v40 = [(CSDCallDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10025CDD4;
    block[3] = &unk_10061D378;
    block[4] = self;
    v67 = v12;
    v68 = v13;
    v69 = v36;
    v71 = a6;
    v33 = v61;
    v70 = v61;
    v41 = v39;
    v14 = v36;
    dispatch_after(v41, v40, block);
  }

  else
  {
    v25 = [v18 dateEnded];

    if (v25)
    {
      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v76 = v18;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Call %@ already has a date ended", buf, 0xCu);
      }

LABEL_19:
      v33 = v61;
      goto LABEL_20;
    }

    [v18 setEndedReason:a6];
    v33 = v15;
    [v18 setFailureContext:v15];
    if (v14)
    {
      [v18 setDateEnded:v14];
    }

    else
    {
      v42 = +[NSDate date];
      [v18 setDateEnded:v42];
    }

    v43 = [v18 callGroupUUID];

    if (v43)
    {
      v57 = v19;
      v58 = v14;
      v59 = v13;
      v60 = v12;
      v44 = +[NSMutableArray array];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v45 = [(CSDCallDataSource *)self calls];
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v63;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v63 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v62 + 1) + 8 * i);
            if (v50 != v18)
            {
              v51 = [*(*(&v62 + 1) + 8 * i) callGroupUUID];
              v52 = [v18 callGroupUUID];
              v53 = [v51 isEqual:v52];

              if (v53)
              {
                [v44 addObject:v50];
              }
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v47);
      }

      v13 = v59;
      v12 = v60;
      v19 = v57;
      v14 = v58;
      v33 = v61;
      if ([v44 count] == 1)
      {
        v54 = sub_100004778();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v44 firstObject];
          *buf = 138412290;
          v76 = v55;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Setting callGroupUUID to nil for orphaned grouped call %@", buf, 0xCu);
        }

        v56 = [v44 firstObject];
        [v56 setCallGroupUUID:0];
      }
    }
  }

LABEL_20:
}

- (void)callSource:(id)a3 reportedOutgoingCallWithUUID:(id)a4 sentInvitationAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ sent invitation for outgoing call with UUID %@ at date %@", &v21, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 backingCallSource:v8];
  v13 = v12;
  if (v12)
  {
    if ([v12 isOutgoing])
    {
      v14 = [v13 dateSentInvitation];

      if (!v14)
      {
        if (v10)
        {
          [v13 setDateSentInvitation:v10];
          goto LABEL_15;
        }

        v15 = +[NSDate date];
        [v13 setDateSentInvitation:v15];
        goto LABEL_14;
      }

      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = v16;
        v17 = "[WARN] Call with UUID %@ already has a date started outgoing";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, &v21, 0xCu);
      }
    }

    else
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = v16;
        v17 = "[WARN] Call with UUID %@ is not outgoing";
        goto LABEL_13;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CSDCallDataSource *)self calls];
    v20 = [(CSDProviderCallDataSource *)self _identifiersForCalls:v19];
    v21 = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
  }

LABEL_15:
}

- (void)callSource:(id)a3 reportedOutgoingCallWithUUID:(id)a4 startedConnectingAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ started connecting call with UUID %@ at date %@", &v21, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 backingCallSource:v8];
  v13 = v12;
  if (v12)
  {
    if ([v12 isOutgoing])
    {
      v14 = [v13 dateStartedConnecting];

      if (!v14)
      {
        if (v10)
        {
          [v13 setDateStartedConnecting:v10];
          goto LABEL_15;
        }

        v15 = +[NSDate date];
        [v13 setDateStartedConnecting:v15];
        goto LABEL_14;
      }

      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = v16;
        v17 = "[WARN] Call with UUID %@ already has a date started connecting";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, &v21, 0xCu);
      }
    }

    else
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = v16;
        v17 = "[WARN] Call with UUID %@ is not outgoing";
        goto LABEL_13;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(CSDCallDataSource *)self calls];
    v20 = [(CSDProviderCallDataSource *)self _identifiersForCalls:v19];
    v21 = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
  }

LABEL_15:
}

- (void)callSource:(id)a3 reportedOutgoingCallWithUUID:(id)a4 connectedAtDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ connected outgoing call with UUID %@ at date %@", &v21, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:v9 backingCallSource:v8];
  v13 = v12;
  if (v12)
  {
    if (([v12 isOutgoing] & 1) == 0 && !objc_msgSend(v13, "shouldAcceptDateConnectedProviderUpdates"))
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = v16;
        v17 = "[WARN] Call with %@ is not outgoing";
        goto LABEL_16;
      }

LABEL_18:

      goto LABEL_19;
    }

    v14 = [v13 dateConnected];

    if (v14)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = v16;
        v17 = "[WARN] Call with UUID %@ already has a date connected";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, &v21, 0xCu);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (!v10)
    {
      v15 = +[NSDate date];
      [v13 setDateConnected:v15];
      goto LABEL_18;
    }

    [v13 setDateConnected:v10];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(CSDCallDataSource *)self calls];
      v20 = [(CSDProviderCallDataSource *)self _identifiersForCalls:v19];
      v21 = 138412802;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
    }
  }

LABEL_19:
}

- (void)callSource:(id)a3 reportedNewOutgoingCallWithUUID:(id)a4 update:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(CSDProviderCallDataSource *)self _callWithUUID:v8 backingCallSource:v13];
  if (!v10)
  {
    v11 = [[CSDProviderCall alloc] initOutgoingWithUpdate:v9 callUUID:v8 backingCallSource:v13 isExpanseProvider:1];
    v12 = [(CSDCallDataSource *)self callStateController];
    [v12 setCallDelegatesIfNeeded:v11];
    [v12 propertiesChangedForCall:v11];
  }
}

- (void)callSource:(id)a3 reportedAudioFinishedForCallWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 UUIDString];
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call source %@ finished audio for call with UUID %@", &v17, 0x16u);
  }

  v10 = [(CSDProviderCallDataSource *)self _callWithUUID:v7 backingCallSource:v6];
  v11 = sub_100004778();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v7 UUIDString];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found call %@ for UUID %@, so setting hasAudioFinished", &v17, 0x16u);
    }

    [v10 setHasAudioFinished:1];
  }

  else
  {
    if (v12)
    {
      v14 = [v7 UUIDString];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find a call for UUID %@, so expediting deferred end interruption instead", &v17, 0xCu);
    }

    v15 = [(CSDCallDataSource *)self callStateController];
    v16 = [v15 audioController];
    [v16 expediteDeferredEndInterruptionForCallWithUUID:v7];
  }
}

- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 changedFrequencyData:(id)a5 forDirection:(int64_t)a6
{
  v10 = a5;
  v11 = [(CSDProviderCallDataSource *)self _callWithUUID:a4 backingCallSource:a3];
  v12 = v11;
  if (v11)
  {
    if (a6 == 2)
    {
      v15 = v11;
      v13 = &v15;
      goto LABEL_6;
    }

    if (a6 == 1)
    {
      v16 = v11;
      v13 = &v16;
LABEL_6:
      v14 = [NSArray arrayWithObjects:v13 count:1];
      [(CSDCallDataSource *)self handleFrequencyDataChanged:v10 inDirection:a6 forCalls:v14];
    }
  }
}

- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 changedMeterLevel:(float)a5 forDirection:(int64_t)a6
{
  v9 = [(CSDProviderCallDataSource *)self _callWithUUID:a4 backingCallSource:a3];
  v10 = v9;
  if (v9)
  {
    if (a6 == 2)
    {
      v14 = v9;
      v11 = &v14;
      goto LABEL_6;
    }

    if (a6 == 1)
    {
      v15 = v9;
      v11 = &v15;
LABEL_6:
      v12 = [NSArray arrayWithObjects:v11 count:1];
      *&v13 = a5;
      [(CSDCallDataSource *)self handleMeterLevelChanged:a6 inDirection:v12 forCalls:v13];
    }
  }
}

- (void)callSource:(id)a3 reportedCallWithUUID:(id)a4 crossDeviceIdentifier:(id)a5 changedBytesOfDataUsed:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 UUIDString];
    v16 = 138413058;
    v17 = v10;
    v18 = 2112;
    v19 = v14;
    v20 = 2112;
    v21 = v12;
    v22 = 2048;
    v23 = a6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Call source %@ received call with UUID: %@ crossDeviceIdentifier %@ bytesOfDataUsed %ld", &v16, 0x2Au);
  }

  v15 = [v11 UUIDString];
  [(CSDCallDataSource *)self handleBytesOfDataUsedChanged:a6 forCallWithUniqueProxyIdentifier:v15 callHistoryIdentifier:v12];
}

- (void)callSource:(id)a3 requestedTransaction:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ received requested transaction %@", &v12, 0x16u);
  }

  [(CSDProviderCallDataSource *)self _processRequestedTransaction:v9 fromCallSource:v8 completion:v10];
}

- (void)callSourceManager:(id)a3 completedTransactionGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025DE08;
  block[3] = &unk_100619E58;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)callSourcesChangedForCallSourceManager:(id)a3
{
  v4 = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025E3E0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)callControllerHost:(id)a3 clientWithIdentifier:(id)a4 requestedTransaction:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Call controller host %@ requested transaction %@ for connection with identifier: %@", buf, 0x20u);
  }

  v15 = [(CSDProviderCallDataSource *)self channelSourceManager];
  v16 = [v15 channelSourceForIdentifier:v11];

  if (v16 && [(CSDProviderCallDataSource *)self transactionContainsChannelActions:v12])
  {
    [(CSDProviderCallDataSource *)self _processRequestedTransaction:v12 fromProviderSource:v16 completionHandler:v13];
  }

  else
  {
    v17 = [(CSDProviderCallDataSource *)self callSourceFetcher];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10025E85C;
    v18[3] = &unk_10061FD48;
    v19 = v12;
    v20 = self;
    v21 = v13;
    [v17 fetchCallSourceForIdentifier:v11 completion:v18];
  }
}

- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Marking all calls as changed because providers changed", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(CSDCallDataSource *)self calls];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) propertiesChanged];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)callSourceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCallDataSource *)self callSourceManager];
  v6 = [v5 callSourceWithIdentifier:v4];

  return v6;
}

+ (BOOL)_isSystemProviderForIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"com.apple.coretelephony"];
  v5 = [v3 isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  v6 = [v3 isEqualToString:@"com.apple.Superbox"];
  v7 = [v3 isEqualToString:@"com.apple.telephonyutilities.callservicesd.TinCan"];

  if (_TUIsInternalInstall() && v6)
  {
    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Because this is an internal install, com.apple.Superbox (aka Speakerbox) is acting as a system provider", v11, 2u);
    }

    v9 = 1;
  }

  else
  {
    v9 = v4 | v5 | v7;
  }

  return v9 & 1;
}

- (id)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  v9 = [v8 policyForAddresses:v7 forBundleIdentifier:v6];

  return v9;
}

- (void)screenTimeCallFilter:(id)a3 didChangeAllowed:(BOOL)a4 forCallUUID:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v27 = v5;
    *&v27[4] = 2112;
    *&v27[6] = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Changed ScreenTime allowed %d for call with UUID %@", buf, 0x12u);
  }

  if (!v5)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [(CSDCallDataSource *)self calls];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v22;
      *&v12 = 138412290;
      v20 = v12;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (([v16 isEmergency] & 1) == 0)
          {
            v17 = [v16 uniqueProxyIdentifierUUID];
            v18 = [v17 isEqual:v7];

            if (v18)
            {
              v19 = sub_100004778();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v20;
                *v27 = v7;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Call is not allowed by ScreenTime; disconnecting call with UUID: %@", buf, 0xCu);
              }

              [v16 disconnectWithReason:25];
            }
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }
  }
}

- (OS_dispatch_queue)processObserverQueue
{
  processObserverQueue = self->_processObserverQueue;
  if (!processObserverQueue)
  {
    v4 = dispatch_queue_create("com.apple.csd.providerdatasource.processobserver", 0);
    v5 = self->_processObserverQueue;
    self->_processObserverQueue = v4;

    processObserverQueue = self->_processObserverQueue;
  }

  return processObserverQueue;
}

- (CSDProcessObserverProtocol)processObserver
{
  processObserver = self->_processObserver;
  if (!processObserver)
  {
    v4 = [CSDProcessObserver alloc];
    v5 = [(CSDProviderCallDataSource *)self processObserverQueue];
    v6 = [(CSDProcessObserver *)v4 initWithQueue:v5];
    v7 = self->_processObserver;
    self->_processObserver = v6;

    processObserver = self->_processObserver;
  }

  return processObserver;
}

- (CSDBluetoothHangupCommandObserver)btHangupObserver
{
  btHangupObserver = self->_btHangupObserver;
  if (!btHangupObserver)
  {
    v4 = [CSDBluetoothHangupCommandObserver alloc];
    v5 = [(CSDCallDataSource *)self queue];
    v6 = [(CSDBluetoothHangupCommandObserver *)v4 initWithQueue:v5];
    v7 = self->_btHangupObserver;
    self->_btHangupObserver = v6;

    btHangupObserver = self->_btHangupObserver;
  }

  return btHangupObserver;
}

- (id)remoteScaParticipants:(id)a3
{
  v3 = [CXHandle tuHandlesWithMembers:a3];
  v4 = [v3 allObjects];

  v5 = [v4 tu_mapObjectsUsingBlock:&stru_10061FD88];

  return v5;
}

@end