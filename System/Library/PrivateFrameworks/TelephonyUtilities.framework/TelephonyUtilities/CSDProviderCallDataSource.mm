@interface CSDProviderCallDataSource
+ (BOOL)_isSystemProviderForIdentifier:(id)identifier;
- (BOOL)_actionRequiresReasonableUserIntent:(id)intent;
- (BOOL)_activeStandardCallExists;
- (BOOL)_allowRevertingStateForCompletedTransactionGroup:(id)group;
- (BOOL)_channelSourceAssertionsContainsPTTTransmissionIntent:(id)intent;
- (BOOL)_isChannelSourceAppForeground:(id)foreground;
- (BOOL)_isChannelSourceAppRunningPTTTransmissionAppIntent:(id)intent;
- (BOOL)_isRequestingCallSourceAppBackgroundRunning:(id)running;
- (BOOL)_meetsRequirementsToBeginTransmitting:(id)transmitting;
- (BOOL)_shouldAllowAction:(id)action forChannelSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error;
- (BOOL)_shouldAllowRequestedAction:(id)action forCallSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error;
- (BOOL)_shouldAllowRequestedTransaction:(id)transaction forCallSource:(id)source error:(id *)error;
- (BOOL)_shouldBlockIfScreenSharing;
- (BOOL)callSource:(id)source shouldProcessAction:(id)action error:(id *)error;
- (BOOL)transactionContainsChannelActions:(id)actions;
- (CSDBluetoothHangupCommandObserver)btHangupObserver;
- (CSDProcessObserverProtocol)processObserver;
- (CSDProviderCallDataSource)initWithCallStateController:(id)controller queue:(id)queue assistantServicesObserver:(id)observer coreTelephonyClient:(id)client chManager:(id)manager callSourceManager:(id)sourceManager protectedAppsUtilities:(id)utilities conversationManager:(id)self0 communicationTrustScoreDataProvider:(id)self1 deviceSupport:(id)self2 featureFlags:(id)self3;
- (CSDRelayCallDataSource)relayCallDataSource;
- (CSDRouteManager)routeManager;
- (CXCallSource)telephonyCallSource;
- (OS_dispatch_queue)processObserverQueue;
- (id)_ISOCountryCodeForCall:(id)call;
- (id)_ISOCountryCodeForCallWithUUID:(id)d provider:(id)provider callUpdate:(id)update;
- (id)_callGroupsWithBackingCallSource:(id)source;
- (id)_callWithUUID:(id)d;
- (id)_callWithUUID:(id)d backingCallSource:(id)source;
- (id)_callWithUUID:(id)d controllableByCallSource:(id)source;
- (id)_callWithUUID:(id)d providerIdentifier:(id)identifier;
- (id)_endMutuallyExclusiveCalls:(id)calls;
- (id)_identifiersForCalls:(id)calls;
- (id)_localProviderForCallSource:(id)source;
- (id)_providerForCallSource:(id)source;
- (id)_relayCallWithUUID:(id)d;
- (id)callGroupUUIDToCalls;
- (id)callSourceForDialRequest:(id)request;
- (id)callSourceWithIdentifier:(id)identifier;
- (id)channelProviderForIdentifier:(id)identifier;
- (id)conduit;
- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier;
- (id)providerWithIdentifier:(id)identifier;
- (id)remoteScaParticipants:(id)participants;
- (void)_addSupplementalActionsForRequestedTransaction:(id)transaction onCallSource:(id)source;
- (void)_commitUncommittedTransactions;
- (void)_deferCommittingTransactionsUntilAfterRunningBlock:(id)block;
- (void)_endCall:(id)call;
- (void)_performRequestedTransaction:(id)transaction onCallSource:(id)source;
- (void)_performTransaction:(id)transaction onChannelSource:(id)source;
- (void)_processCompletedCallAction:(id)action forCall:(id)call allowRevertingState:(BOOL)state isOnenessActive:(BOOL)active;
- (void)_processCompletedChannelAction:(id)action forCall:(id)call;
- (void)_processRequestedTransaction:(id)transaction fromCallSource:(id)source completion:(id)completion;
- (void)_processRequestedTransaction:(id)transaction fromProviderSource:(id)source completionHandler:(id)handler;
- (void)_startMonitoringAppForCall:(id)call;
- (void)_stopMonitoringPushToTalkAppProcess;
- (void)acquireIndefiniteProcessAssertionForCall:(id)call;
- (void)acquireTemporaryProcessAssertionForCall:(id)call;
- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingCalls:(id)calls andHoldingCalls:(id)holdingCalls;
- (void)callControllerHost:(id)host clientWithIdentifier:(id)identifier requestedTransaction:(id)transaction completion:(id)completion;
- (void)callSource:(id)source _reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion;
- (void)callSource:(id)source _reportedNewIncomingCallWithUUIDSilently:(id)silently update:(id)update;
- (void)callSource:(id)source registeredWithConfiguration:(id)configuration;
- (void)callSource:(id)source reportedAudioFinishedForCallWithUUID:(id)d;
- (void)callSource:(id)source reportedCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)callSource:(id)source reportedCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)callSource:(id)source reportedCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)callSource:(id)source reportedCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)callSource:(id)source reportedCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)callSource:(id)source reportedCallWithUUID:(id)d updated:(id)updated;
- (void)callSource:(id)source reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion;
- (void)callSource:(id)source reportedNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d connectedAtDate:(id)date;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)callSource:(id)source requestedTransaction:(id)transaction completion:(id)completion;
- (void)callSourceManager:(id)manager completedTransactionGroup:(id)group;
- (void)callSourcesChangedForCallSourceManager:(id)manager;
- (void)channelSourceManager:(id)manager completedTransactionGroup:(id)group;
- (void)channelSourcesChangedForChannelSourceManager:(id)manager;
- (void)didObserveBluetoothHangupCommand;
- (void)disconnectCalls:(id)calls whileHoldingCalls:(id)holdingCalls andUnholdingCalls:(id)unholdingCalls andUngroupingCalls:(id)ungroupingCalls;
- (void)groupCalls:(id)calls withCalls:(id)withCalls;
- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls;
- (void)holdOrEndOtherCallsBecauseCallWillBeginOutgoing:(id)outgoing;
- (void)invalidateIndefiniteProcessAssertionForCall:(id)call;
- (void)invalidateProcessAssertionForBundleIdentifier:(id)identifier;
- (void)performCallAction:(id)action forCall:(id)call;
- (void)performCallActions:(id)actions forCall:(id)call;
- (void)performChannelAction:(id)action forCall:(id)call;
- (void)performStartCallAction:(id)action forCall:(id)call;
- (void)presentAccessoryButtonEventsEnabledNotice;
- (void)presentIncomingTransmissionNotice;
- (void)providerSource:(id)source registeredWithConfiguration:(id)configuration;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d connectedAtDate:(id)date;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)providerSource:(id)source reportedChannelWithUUID:(id)d updated:(id)updated;
- (void)providerSource:(id)source reportedIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler;
- (void)providerSource:(id)source reportedIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler;
- (void)providerSource:(id)source requestedTransaction:(id)transaction completionHandler:(id)handler;
- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain;
- (void)pullCallWithHandoffActivityUserInfo:(id)info completion:(id)completion;
- (void)registerCall:(id)call;
- (void)restorePersistedBargeCallsIfNecessary;
- (void)screenTimeCallFilter:(id)filter didChangeAllowed:(BOOL)allowed forCallUUID:(id)d;
- (void)sendMMIOrUSSDCodeWithRequest:(id)request;
- (void)setCallProviderManager:(id)manager;
- (void)setTTYType:(int)type forCalls:(id)calls;
- (void)setUplinkMuted:(BOOL)muted forCalls:(id)calls userInitiated:(BOOL)initiated;
- (void)startObservingBluetoothHangupCommands;
- (void)startTrackingCall:(id)call;
- (void)stopObservingBluetoothHangupCommands;
- (void)stopTrackingCall:(id)call;
- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group;
- (void)updateFilteredOutReasonForCall:(id)call WithError:(id)error;
@end

@implementation CSDProviderCallDataSource

- (CXCallSource)telephonyCallSource
{
  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  v3 = [callSourceManager callSourceWithIdentifier:@"com.apple.coretelephony"];

  return v3;
}

- (void)_commitUncommittedTransactions
{
  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  [callSourceManager commitUncommittedTransactions];
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
  calls = [(CSDCallDataSource *)self calls];
  v5 = [calls countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(calls);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        callGroupUUID = [v9 callGroupUUID];

        if (callGroupUUID)
        {
          callGroupUUID2 = [v9 callGroupUUID];
          v12 = [v3 objectForKeyedSubscript:callGroupUUID2];

          if (v12)
          {
            callGroupUUID3 = [v9 callGroupUUID];
            callGroupUUID5 = [v3 objectForKeyedSubscript:callGroupUUID3];
            v15 = [callGroupUUID5 arrayByAddingObject:v9];
            callGroupUUID4 = [v9 callGroupUUID];
            [v3 setObject:v15 forKeyedSubscript:callGroupUUID4];
          }

          else
          {
            v23 = v9;
            callGroupUUID3 = [NSArray arrayWithObjects:&v23 count:1];
            callGroupUUID5 = [v9 callGroupUUID];
            [v3 setObject:callGroupUUID3 forKeyedSubscript:callGroupUUID5];
          }
        }
      }

      v6 = [calls countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];

  return v17;
}

- (id)_callWithUUID:(id)d providerIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v9 = [calls countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v19 + 1) + 8 * v13);

        uniqueProxyIdentifierUUID = [v11 uniqueProxyIdentifierUUID];
        if ([uniqueProxyIdentifierUUID isEqual:dCopy])
        {
          providerIdentifier = [v11 providerIdentifier];
          v17 = [providerIdentifier isEqualToString:identifierCopy];

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
      v10 = [calls countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (BOOL)_activeStandardCallExists
{
  calls = [(CSDCallDataSource *)self calls];
  v3 = [calls tu_containsObjectPassingTest:&stru_10061BC88];

  return v3;
}

- (void)_performTransaction:(id)transaction onChannelSource:(id)source
{
  transactionCopy = transaction;
  sourceCopy = source;
  callStateController = [(CSDCallDataSource *)self callStateController];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = transactionCopy;
  actions = [transactionCopy actions];
  v10 = [actions countByEnumeratingWithState:&v30 objects:v37 count:16];
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
          objc_enumerationMutation(actions);
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

          v16 = [CSDProviderBargeCall callForChannelSource:sourceCopy joinAction:v14];
          [callStateController setCallDelegatesIfNeeded:v16];
          [callStateController propertiesChangedForCall:v16];
        }
      }

      v11 = [actions countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  actions2 = [v25 actions];
  v18 = [actions2 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(actions2);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
        [channelSourceManager addAction:v22 toUncommittedTransactionForChannelSource:sourceCopy];
      }

      v19 = [actions2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }

  channelSourceManager2 = [(CSDProviderCallDataSource *)self channelSourceManager];
  [channelSourceManager2 commitUncommittedTransactions];
}

- (void)_processCompletedChannelAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
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

  v8 = callCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    state = [actionCopy state];
    v10 = sub_100004778();
    v11 = v10;
    if (state == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = actionCopy;
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
    v15 = actionCopy;
    state2 = [v15 state];
    v17 = sub_100004778();
    v18 = v17;
    if (state2 == 1)
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
      leaveDate = [v15 leaveDate];
      [v8 setDateEnded:leaveDate];

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
    state3 = [actionCopy state];
    v23 = sub_100004778();
    v24 = v23;
    if (state3 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = actionCopy;
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
      featureFlags = [(CSDProviderCallDataSource *)self featureFlags];
      sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

      if (sessionBasedMutingEnabled)
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
    state4 = [actionCopy state];
    v30 = sub_100004778();
    v15 = v30;
    if ((isKindOfClass & 1) == 0)
    {
      if (state4 == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 138412290;
          v39 = actionCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fulfilled action %@", &v38, 0xCu);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1004752D0();
      }

      goto LABEL_27;
    }

    if (state4 == 1)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 138412290;
        v39 = actionCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fufilled channel transmit stop action %@", &v38, 0xCu);
      }

      transmissionState = [v8 transmissionState];
      v32 = (transmissionState & 2) == 0;
      if ((transmissionState & 2) != 0)
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
  if ([actionCopy state]== 2)
  {
    v14 = +[CSDReportingController sharedInstance];
    [v14 reportProviderFailedWithAction:actionCopy forCall:v8];
LABEL_61:
  }
}

- (void)_processRequestedTransaction:(id)transaction fromProviderSource:(id)source completionHandler:(id)handler
{
  transactionCopy = transaction;
  sourceCopy = source;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = sourceCopy;
    v16 = 0;
    v12 = [(CSDProviderCallDataSource *)self _shouldAllowTransaction:transactionCopy forChannelSource:v11 shouldValidateUserIntent:1 error:&v16];
    v13 = v16;
    v14 = sub_100004778();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        *buf = 138412290;
        v18 = transactionCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Allowing transaction %@", buf, 0xCu);
      }

      [(CSDProviderCallDataSource *)self _performTransaction:transactionCopy onChannelSource:v11];
    }

    else
    {
      if (v15)
      {
        *buf = 138412290;
        v18 = transactionCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transaction %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13);
}

- (BOOL)_shouldAllowAction:(id)action forChannelSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error
{
  intentCopy = intent;
  actionCopy = action;
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = actionCopy;
    channelUUID = [v12 channelUUID];
    identifier = [sourceCopy identifier];
    v15 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID providerIdentifier:identifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = +[CSDPersistedChannelRegistry sharedInstance];
      activePersistedChannelIdentity = [v16 activePersistedChannelIdentity];

      v18 = [(CSDProviderCallDataSource *)self _isChannelSourceAppForeground:sourceCopy];
      if (activePersistedChannelIdentity)
      {
        errorCopy = error;
        v19 = v15;
        v20 = channelUUID;
        bundleIdentifier = [activePersistedChannelIdentity bundleIdentifier];
        bundleIdentifier2 = [sourceCopy bundleIdentifier];
        v23 = [bundleIdentifier isEqualToString:bundleIdentifier2];

        v24 = sub_100004778();
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        channelUUID = v20;
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

        error = errorCopy;
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
            v54 = channelUUID;
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

      dateConnected = [v15 dateConnected];

      if (dateConnected)
      {
        v36 = sub_100004778();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = channelUUID;
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
          v54 = channelUUID;
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
          v54 = channelUUID;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; could not find a joined channel with UUID %@", buf, 0xCu);
        }

        v26 = [NSError cx_channelErrorWithCode:4];
      }

      if ([v15 transmissionMode] == 2)
      {
        v51 = channelUUID;
        v41 = sub_100004778();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; channel is is in listen only mode.", buf, 2u);
        }

        v42 = [NSError cx_channelErrorWithCode:12];

        v26 = v42;
        channelUUID = v51;
      }

      if ([v15 isReceivingTransmission] && objc_msgSend(v15, "transmissionMode"))
      {
        v52 = channelUUID;
        v43 = sub_100004778();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; channel is already receiving transmission and mode is not full-duplex.", buf, 2u);
        }

        v44 = [NSError cx_channelErrorWithCode:6];

        v26 = v44;
        channelUUID = v52;
      }

      if (intentCopy && ![(CSDProviderCallDataSource *)self _meetsRequirementsToBeginTransmitting:sourceCopy])
      {
        v45 = sub_100004778();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = channelUUID;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit start action; app not foreground %@", buf, 0xCu);
        }

        v46 = 11;
LABEL_74:
        v49 = [NSError cx_channelErrorWithCode:v46];

        v26 = v49;
      }

LABEL_46:

      if (!error)
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
        v54 = channelUUID;
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
      v54 = channelUUID;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[WARN] Denying transmit stop action; channel was not in a transmitting state %@", buf, 0xCu);
    }

    v46 = 7;
    goto LABEL_74;
  }

  v27 = sub_100004778();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = actionCopy;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[WARN] Denying invalid action %@", buf, 0xCu);
  }

  v26 = [NSError cx_requestTransactionErrorWithCode:6];
  if (error)
  {
LABEL_47:
    if (v26)
    {
      v38 = v26;
      *error = v26;
    }
  }

LABEL_49:

  return v26 == 0;
}

- (void)restorePersistedBargeCallsIfNecessary
{
  v3 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v3 activePersistedChannelIdentity];

  if (activePersistedChannelIdentity)
  {
    channelUUID = [activePersistedChannelIdentity channelUUID];
    v6 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID];

    v7 = sub_100004778();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        uniqueProxyIdentifier = [0 uniqueProxyIdentifier];
        v27 = 138412546;
        v28 = uniqueProxyIdentifier;
        v29 = 2112;
        v30 = activePersistedChannelIdentity;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found existing call with identifier %@; will not attempt to restore a call from persisted channel identity %@", &v27, 0x16u);
      }
    }

    else
    {
      if (v8)
      {
        v27 = 138412290;
        v28 = activePersistedChannelIdentity;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting to restore a call from persisted channel identity %@", &v27, 0xCu);
      }

      v7 = [CSDProviderBargeCall callForChannelIdentity:activePersistedChannelIdentity];
      applicationRecord = [v7 applicationRecord];
      v11 = sub_100004778();
      v12 = v11;
      if (applicationRecord)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          uniqueProxyIdentifier2 = [v7 uniqueProxyIdentifier];
          v27 = 138412546;
          v28 = uniqueProxyIdentifier2;
          v29 = 2112;
          v30 = activePersistedChannelIdentity;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Restoring call with identifier %@ from persisted channel identity %@", &v27, 0x16u);
        }

        channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
        providerIdentifier = [v7 providerIdentifier];
        v16 = [channelSourceManager channelSourceForIdentifier:providerIdentifier];

        provider = [v7 provider];
        v18 = provider | v16;

        if (v18)
        {
          provider2 = [v7 provider];

          if (!provider2 && v16)
          {
            v20 = sub_100004778();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              uniqueProxyIdentifierUUID = [v7 uniqueProxyIdentifierUUID];
              v27 = 138412546;
              v28 = uniqueProxyIdentifierUUID;
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
            v28 = activePersistedChannelIdentity;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Synthesizing and registering persisted barge call's provider %@", &v27, 0xCu);
          }

          v24 = [[CSDChannelProvider alloc] initWithApplicationRecord:applicationRecord];
          channelProviderManager = [(CSDProviderCallDataSource *)self channelProviderManager];
          [channelProviderManager registerProvider:v24];
        }

        callStateController = [(CSDCallDataSource *)self callStateController];
        [callStateController setCallDelegatesIfNeeded:v7];
        [callStateController propertiesChangedForCall:v7];
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
        callStateController = [activePersistedChannelIdentity bundleIdentifier];
        [v16 tearDownPersistedChannelForBundleIdentifier:callStateController teardownType:2];
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

- (BOOL)transactionContainsChannelActions:(id)actions
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  actions = [actions actions];
  v4 = [actions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(actions);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [actions countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)channelSourceManager:(id)manager completedTransactionGroup:(id)group
{
  managerCopy = manager;
  groupCopy = group;
  queue = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113300;
  block[3] = &unk_100619E58;
  v12 = managerCopy;
  v13 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  v10 = managerCopy;
  dispatch_async(queue, block);
}

- (void)channelSourcesChangedForChannelSourceManager:(id)manager
{
  managerCopy = manager;
  queue = [(CSDCallDataSource *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100113638;
  v7[3] = &unk_100619D88;
  v8 = managerCopy;
  selfCopy = self;
  v6 = managerCopy;
  dispatch_async(queue, v7);
}

- (void)providerSource:(id)source requestedTransaction:(id)transaction completionHandler:(id)handler
{
  sourceCopy = source;
  transactionCopy = transaction;
  handlerCopy = handler;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = sourceCopy;
    v14 = 2112;
    v15 = transactionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Provider source %@ received requested transaction %@", &v12, 0x16u);
  }

  [(CSDProviderCallDataSource *)self _processRequestedTransaction:transactionCopy fromProviderSource:sourceCopy completionHandler:handlerCopy];
}

- (void)providerSource:(id)source registeredWithConfiguration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Channel source %@ registered with configuration %@", &v21, 0x16u);
  }

  v9 = [[CSDChannelProvider alloc] initWithSource:sourceCopy configuration:configurationCopy];
  channelProviderManager = [(CSDProviderCallDataSource *)self channelProviderManager];
  [channelProviderManager registerProvider:v9];

  v11 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v11 activePersistedChannelIdentity];

  identifier = [(CSDChannelProvider *)v9 identifier];
  applicationIdentifier = [activePersistedChannelIdentity applicationIdentifier];
  v15 = [identifier isEqualToString:applicationIdentifier];

  if (v15)
  {
    [(CSDProviderCallDataSource *)self restorePersistedBargeCallsIfNecessary];
    channelUUID = [activePersistedChannelIdentity channelUUID];
    applicationIdentifier2 = [activePersistedChannelIdentity applicationIdentifier];
    v18 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID providerIdentifier:applicationIdentifier2];

    callStateController = sub_100004778();
    v20 = os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = 138412546;
        v22 = sourceCopy;
        v23 = 2112;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "Channel source flushing properties %@ for restored call %@", &v21, 0x16u);
      }

      callStateController = [(CSDCallDataSource *)self callStateController];
      [callStateController propertiesChangedForCall:v18];
    }

    else if (v20)
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "Channel source couldn't find call to flush properties", &v21, 2u);
    }
  }
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d startedConnectingAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = sourceCopy;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ started connecting channel with UUID %@ at date %@", &v17, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (!v13)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = sourceCopy;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  dateStartedConnecting = [v13 dateStartedConnecting];

  if (dateStartedConnecting)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
      v17 = 138412290;
      v18 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a started connecting date.", &v17, 0xCu);
    }

    goto LABEL_12;
  }

  if (!dateCopy)
  {
    v15 = +[NSDate date];
    [v13 setDateStartedConnecting:v15];
LABEL_12:

    goto LABEL_13;
  }

  [v13 setDateStartedConnecting:dateCopy];
LABEL_13:
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d connectedAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = sourceCopy;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ connected channel with UUID %@ at date %@", &v17, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (!v13)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = sourceCopy;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  dateConnected = [v13 dateConnected];

  if (dateConnected)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
      v17 = 138412290;
      v18 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a connected date.", &v17, 0xCu);
    }

    goto LABEL_12;
  }

  if (!dateCopy)
  {
    v15 = +[NSDate date];
    [v13 setDateConnected:v15];
LABEL_12:

    goto LABEL_13;
  }

  [v13 setDateConnected:dateCopy];
LABEL_13:
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138413058;
    v21 = sourceCopy;
    v22 = 2112;
    v23 = dCopy;
    v24 = 2048;
    reasonCopy = reason;
    v26 = 2112;
    v27 = dateCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel source %@ disconnected channel with UUID %@ with reason %ld at date %@", &v20, 0x2Au);
  }

  identifier = [sourceCopy identifier];
  v15 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if (!v15)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412546;
      v21 = sourceCopy;
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v20, 0x16u);
    }

    goto LABEL_9;
  }

  dateEnded = [v15 dateEnded];

  if (dateEnded)
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [v15 uniqueProxyIdentifier];
      v20 = 138412290;
      v21 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Call with UUID %@ already has a disconnected date.", &v20, 0xCu);
    }

LABEL_9:

    goto LABEL_16;
  }

  if (reason != 1)
  {
    reason = -1;
  }

  if (dateCopy)
  {
    [v15 setDateEnded:dateCopy];
  }

  else
  {
    v19 = +[NSDate date];
    [v15 setDateEnded:v19];
  }

  [v15 setEndedReason:reason];
LABEL_16:
}

- (void)providerSource:(id)source reportedChannelWithUUID:(id)d updated:(id)updated
{
  sourceCopy = source;
  dCopy = d;
  updatedCopy = updated;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = sourceCopy;
    v19 = 2112;
    v20 = dCopy;
    v21 = 2112;
    v22 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Channel source %@ updated channel with UUID %@ with update %@", &v17, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  if ([v13 isSendingTransmission] && (objc_msgSend(updatedCopy, "hasSet") & 0x200) != 0)
  {
    v14 = v13;
    if ([updatedCopy transmissionMode] == 2 || objc_msgSend(v14, "isReceivingTransmission") && objc_msgSend(updatedCopy, "transmissionMode") == 1)
    {
      [v14 stopTransmissionWithOriginator:2];
    }
  }

  if (v13)
  {
    if (([updatedCopy hasSet] & 0x400) != 0)
    {
      accessoryButtonEventsEnabled = [updatedCopy accessoryButtonEventsEnabled];
      if (accessoryButtonEventsEnabled != [v13 accessoryButtonEventsEnabled])
      {
        [(CSDProviderCallDataSource *)self presentAccessoryButtonEventsEnabledNotice];
      }
    }

    csd_callUpdate = [updatedCopy csd_callUpdate];
    [v13 updateWithCallUpdate:csd_callUpdate];
  }

  else
  {
    csd_callUpdate = sub_100004778();
    if (os_log_type_enabled(csd_callUpdate, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = sourceCopy;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&_mh_execute_header, csd_callUpdate, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v17, 0x16u);
    }
  }
}

- (void)providerSource:(id)source reportedIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler
{
  sourceCopy = source;
  dCopy = d;
  handlerCopy = handler;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v20 = 138412802;
    v21 = sourceCopy;
    v22 = 2112;
    v23 = uUIDString;
    v24 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Channel source %@ reported a channel with UUID %@ ended an incoming transmission with reason %ld", &v20, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

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
      if (handlerCopy)
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
      v21 = sourceCopy;
      v22 = 2112;
      v23 = dCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v20, 0x16u);
    }

    v17 = 4;
  }

  v19 = [NSError cx_channelErrorWithCode:v17];
  if (handlerCopy)
  {
LABEL_10:
    handlerCopy[2](handlerCopy, v19);
  }

LABEL_11:
}

- (void)providerSource:(id)source reportedIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler
{
  transmissionCopy = transmission;
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  handlerCopy = handler;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v37 = 138412802;
    v38 = sourceCopy;
    v39 = 2112;
    v40 = uUIDString;
    v41 = 2112;
    v42 = updateCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Channel source %@ reported a channel with UUID %@ started an incoming transmission with update %@", &v37, 0x20u);
  }

  identifier = [sourceCopy identifier];
  v19 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy providerIdentifier:identifier];

  activeRemoteParticipant = [updateCopy activeRemoteParticipant];
  name = [activeRemoteParticipant name];
  v22 = [name length];

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
      csd_callUpdate = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate notifyDelegate:0];

      [v19 unhold];
      [v19 setHeld:0];
      goto LABEL_21;
    }

    if (([v19 transmissionState] & 2) != 0)
    {
      csd_callUpdate2 = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate2 notifyDelegate:1];

      goto LABEL_24;
    }

    if ([v19 transmissionMode] == 1 && (objc_msgSend(v19, "transmissionState") & 4) != 0 && transmissionCopy)
    {
      v25 = sub_100004778();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Replacing outgoing PTT transmission with incoming active remote speaker.", &v37, 2u);
      }

      [v19 setTransmissionState:{objc_msgSend(v19, "transmissionState") | 2}];
      csd_callUpdate3 = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate3 notifyDelegate:0];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_21;
      }

      v27 = v19;
      v28 = [CXChannelTransmitStopAction alloc];
      uniqueProxyIdentifierUUID = [v27 uniqueProxyIdentifierUUID];
      csd_callUpdate4 = [v28 initWithChannelUUID:uniqueProxyIdentifierUUID];

      [csd_callUpdate4 setOriginator:2];
      [(CSDProviderCallDataSource *)self performChannelAction:csd_callUpdate4 forCall:v27];

      goto LABEL_33;
    }

    if (![v19 transmissionMode] && (objc_msgSend(v19, "transmissionState") & 4) != 0)
    {
      [v19 setTransmissionState:{objc_msgSend(v19, "transmissionState") | 2}];
      csd_callUpdate4 = [updateCopy csd_callUpdate];
      [v19 updateWithCallUpdate:csd_callUpdate4 notifyDelegate:0];
LABEL_33:

LABEL_21:
      providerDisplayMonitor = [v19 providerDisplayMonitor];
      isVisible = [providerDisplayMonitor isVisible];

      if ((isVisible & 1) == 0)
      {
        [(CSDProviderCallDataSource *)self presentIncomingTransmissionNotice];
      }

LABEL_24:
      v36 = 0;
      if (!handlerCopy)
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
      v38 = sourceCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for channel source %@ and UUID %@", &v37, 0x16u);
    }

    v24 = 4;
  }

LABEL_29:
  v36 = [NSError cx_channelErrorWithCode:v24];
  if (handlerCopy)
  {
LABEL_30:
    handlerCopy[2](handlerCopy, v36);
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

- (BOOL)_meetsRequirementsToBeginTransmitting:(id)transmitting
{
  transmittingCopy = transmitting;
  v5 = [(CSDProviderCallDataSource *)self _isChannelSourceAppForeground:transmittingCopy];
  isPermittedToUseBluetoothAccessories = [transmittingCopy isPermittedToUseBluetoothAccessories];
  LOBYTE(self) = [(CSDProviderCallDataSource *)self _isChannelSourceAppRunningPTTTransmissionAppIntent:transmittingCopy];

  return (self | isPermittedToUseBluetoothAccessories | v5) & 1;
}

- (BOOL)_isChannelSourceAppForeground:(id)foreground
{
  foregroundCopy = foreground;
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115214;
  block[3] = &unk_10061AE20;
  v11 = processObserver;
  v12 = foregroundCopy;
  v13 = &v14;
  v7 = foregroundCopy;
  v8 = processObserver;
  dispatch_sync(processObserverQueue, block);

  LOBYTE(processObserverQueue) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return processObserverQueue;
}

- (BOOL)_isChannelSourceAppRunningPTTTransmissionAppIntent:(id)intent
{
  bundleIdentifier = [intent bundleIdentifier];
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:bundleIdentifier];

  v14 = 0;
  v6 = [RBSProcessHandle handleForPredicate:v5 error:&v14];
  v7 = v14;
  if (v7)
  {
    assertions = sub_100004778();
    if (os_log_type_enabled(assertions, OS_LOG_TYPE_ERROR))
    {
      sub_1004755B0();
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    currentState = [v6 currentState];
    assertions = [currentState assertions];

    if (assertions)
    {
      v11 = [assertions valueForKey:@"domain"];
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

- (BOOL)_channelSourceAssertionsContainsPTTTransmissionIntent:(id)intent
{
  if (intent)
  {
    return [intent containsObject:@"com.apple.siri.pushtotalk:PTTActivation"];
  }

  else
  {
    return 0;
  }
}

- (void)startObservingBluetoothHangupCommands
{
  btHangupObserver = [(CSDProviderCallDataSource *)self btHangupObserver];
  [btHangupObserver setDelegate:self];

  btHangupObserver2 = [(CSDProviderCallDataSource *)self btHangupObserver];
  [btHangupObserver2 startObservingHangupCommands];
}

- (void)stopObservingBluetoothHangupCommands
{
  btHangupObserver = [(CSDProviderCallDataSource *)self btHangupObserver];
  [btHangupObserver stopObservingHangupCommands];
}

- (void)didObserveBluetoothHangupCommand
{
  v3 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v3 activePersistedChannelIdentity];

  channelUUID = [activePersistedChannelIdentity channelUUID];
  v5 = [(CSDProviderCallDataSource *)self _callWithUUID:channelUUID];
  provider = [v5 provider];
  bundleIdentifier = [provider bundleIdentifier];
  bundleIdentifier2 = [activePersistedChannelIdentity bundleIdentifier];
  v9 = [bundleIdentifier isEqualToString:bundleIdentifier2];

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

- (void)acquireTemporaryProcessAssertionForCall:(id)call
{
  callCopy = call;
  applicationRecord = [callCopy applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];
  v7 = [CSDVoIPProcessAssertion processAssertionWithBundleIdentifier:bundleIdentifier];

  LODWORD(bundleIdentifier) = [v7 acquire];
  v8 = sub_100004778();
  v9 = v8;
  if (bundleIdentifier)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      *buf = 134218242;
      v17 = v7;
      v18 = 2112;
      v19 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Taking temporary process assertion %p for barge call with identifier %@", buf, 0x16u);
    }

    v11 = dispatch_time(0, 15000000000);
    queue = [(CSDCallDataSource *)self queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10011592C;
    v13[3] = &unk_100619D88;
    v14 = v7;
    v15 = callCopy;
    dispatch_after(v11, queue, v13);

    v9 = v14;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100475618(v7, callCopy);
  }
}

- (void)acquireIndefiniteProcessAssertionForCall:(id)call
{
  callCopy = call;
  applicationRecord = [callCopy applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  if ([bundleIdentifier length])
  {
    processAssertionManager = [(CSDProviderCallDataSource *)self processAssertionManager];
    [processAssertionManager acquireProcessAssertionForBundleIdentifier:bundleIdentifier];
  }

  else
  {
    processAssertionManager = sub_100004778();
    if (os_log_type_enabled(processAssertionManager, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      v9 = 138412290;
      v10 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, processAssertionManager, OS_LOG_TYPE_DEFAULT, "Cannot obtain process assertion; bundle identifier not found for call with identifier %@.", &v9, 0xCu);
    }
  }
}

- (void)invalidateIndefiniteProcessAssertionForCall:(id)call
{
  applicationRecord = [call applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  [(CSDProviderCallDataSource *)self invalidateProcessAssertionForBundleIdentifier:bundleIdentifier];
}

- (void)invalidateProcessAssertionForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    processAssertionManager = [(CSDProviderCallDataSource *)self processAssertionManager];
    [processAssertionManager invalidateProcessAssertionForBundleIdentifier:identifierCopy];
  }
}

- (id)channelProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  channelProviderManager = [(CSDProviderCallDataSource *)self channelProviderManager];
  v6 = [channelProviderManager providerForIdentifier:identifierCopy];

  return v6;
}

- (void)performChannelAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = actionCopy;
    v32 = 2112;
    v33 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform action %@ for call %@", buf, 0x16u);
  }

  providerSource = [callCopy providerSource];

  if (providerSource)
  {
    providerSource2 = [callCopy providerSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      providerSource3 = [callCopy providerSource];
      if ([actionCopy originator] != 2 && -[CSDProviderCallDataSource channelSource:shouldProcessAction:error:](self, "channelSource:shouldProcessAction:error:", providerSource3, actionCopy, 0))
      {
        [(CSDProviderCallDataSource *)self acquireTemporaryProcessAssertionForCall:callCopy];
      }

      channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
      [channelSourceManager addAction:actionCopy toUncommittedTransactionForChannelSource:providerSource3];

      channelSourceManager2 = [(CSDProviderCallDataSource *)self channelSourceManager];
      [channelSourceManager2 commitUncommittedTransactions];

LABEL_23:
      goto LABEL_24;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      providerSource4 = [callCopy providerSource];
      *buf = 138412290;
      v31 = providerSource4;
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
      providerSource3 = actionCopy;
      v17 = objc_alloc_init(_LSOpenConfiguration);
      v28 = FBSOpenApplicationOptionKeyActivateSuspended;
      v29 = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [v17 setFrontBoardOptions:v18];

      applicationRecord = [callCopy applicationRecord];
      bundleIdentifier = [applicationRecord bundleIdentifier];

      if ([bundleIdentifier length])
      {
        v21 = +[LSApplicationWorkspace defaultWorkspace];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100116050;
        v23[3] = &unk_10061BCD8;
        v23[4] = self;
        v24 = callCopy;
        v25 = providerSource3;
        v26 = bundleIdentifier;
        v27 = v25;
        [v21 openApplicationWithBundleIdentifier:v26 configuration:v17 completionHandler:v23];
      }

      else
      {
        v22 = sub_100004778();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = providerSource3;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Could not obtain bundle identifier; cannot process action %@", buf, 0xCu);
        }

        [(CSDProviderCallDataSource *)self invalidateIndefiniteProcessAssertionForCall:callCopy];
      }

      goto LABEL_23;
    }

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = actionCopy;
      v32 = 2112;
      v33 = callCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring action %@ until a provider source connects to call %@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  [actionCopy fulfill];
  [(CSDProviderCallDataSource *)self _processCompletedChannelAction:actionCopy forCall:callCopy];
LABEL_24:
}

- (void)_startMonitoringAppForCall:(id)call
{
  callCopy = call;
  providerSource = [callCopy providerSource];
  bundleIdentifier = [providerSource bundleIdentifier];
  if (bundleIdentifier)
  {
    v7 = bundleIdentifier;
    providerSource2 = [callCopy providerSource];
    bundleIdentifier2 = [providerSource2 bundleIdentifier];
    v10 = [bundleIdentifier2 length];

    if (v10)
    {
      processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100116424;
      block[3] = &unk_100619D88;
      block[4] = self;
      v12 = callCopy;
      v20 = v12;
      dispatch_async(processObserverQueue, block);

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
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  [processObserver setProcessStateChanged:0];
}

- (CSDProviderCallDataSource)initWithCallStateController:(id)controller queue:(id)queue assistantServicesObserver:(id)observer coreTelephonyClient:(id)client chManager:(id)manager callSourceManager:(id)sourceManager protectedAppsUtilities:(id)utilities conversationManager:(id)self0 communicationTrustScoreDataProvider:(id)self1 deviceSupport:(id)self2 featureFlags:(id)self3
{
  controllerCopy = controller;
  queueCopy = queue;
  obj = observer;
  observerCopy = observer;
  v21 = queueCopy;
  v119 = observerCopy;
  clientCopy = client;
  managerCopy = manager;
  sourceManagerCopy = sourceManager;
  utilitiesCopy = utilities;
  conversationManagerCopy = conversationManager;
  providerCopy = provider;
  supportCopy = support;
  flagsCopy = flags;
  v146.receiver = self;
  v146.super_class = CSDProviderCallDataSource;
  v123 = controllerCopy;
  v26 = [(CSDCallDataSource *)&v146 initWithCallStateController:controllerCopy queue:queueCopy];
  v27 = v26;
  if (v26)
  {
    v118 = providerCopy;
    objc_storeStrong(&v26->_assistantServicesObserver, obj);
    v28 = clientCopy;
    if (!clientCopy)
    {
      v28 = [[CSDCoreTelephonyClient alloc] initWithQueue:queueCopy shouldRegisterForECBMNotification:0];
    }

    objc_storeStrong(&v27->_coreTelephonyClient, v28);
    obja = clientCopy;
    if (!clientCopy)
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

    v48 = [[CSDVoIPProcessAssertionManager alloc] initWithSerialQueue:queueCopy];
    processAssertionManager = v27->_processAssertionManager;
    v27->_processAssertionManager = v48;

    v50 = objc_alloc_init(CSDCallFilterController);
    callFilterController = v27->_callFilterController;
    v27->_callFilterController = v50;

    v52 = v27->_callFilterController;
    v53 = [[CSDCommunicationHistoryCallFilter alloc] initWithChManager:managerCopy featureFlags:flagsCopy];
    [(CSDCallFilterController *)v52 addCallFilter:v53];

    v54 = v27->_callFilterController;
    v55 = [[CSDContactsCallFilter alloc] initWithFeatureFlags:flagsCopy];
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
    callProviderManager = [v45 callProviderManager];
    v65 = [(CSDScreenTimeCallFilter *)v63 initWithCallProviderManager:callProviderManager delegate:v27 queue:v21];
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
    v75 = sourceManagerCopy;
    v76 = sourceManagerCopy;
    if (!sourceManagerCopy)
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

    v89 = [[CSDFaceTimeProviderDelegate alloc] initWithCallSource:v27->_faceTimeCallSource queue:v21 chManager:managerCopy conversationManager:conversationManagerCopy];
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
      superboxCallSource = [v98 superboxCallSource];
      v103 = [(CSDSuperboxProviderDelegate *)v101 initWithCallSource:superboxCallSource];
      v104 = v98[20];
      v98[20] = v103;

      callSourceManager = [v98 callSourceManager];
      superboxCallSource2 = [v98 superboxCallSource];
      [callSourceManager addCallSource:superboxCallSource2];
    }

    v107 = utilitiesCopy;
    if (!utilitiesCopy)
    {
      v107 = objc_alloc_init(CSDProtectedAppsUtilities);
    }

    objc_storeStrong(v98 + 48, v107);
    if (!utilitiesCopy)
    {
    }

    objc_storeStrong(v98 + 14, flags);
    v108 = +[FTServerBag sharedInstance];
    v109 = v98[50];
    v98[50] = v108;

    v110 = supportCopy;
    if (!supportCopy)
    {
      v110 = +[FTDeviceSupport sharedInstance];
    }

    objc_storeStrong(v98 + 51, v110);
    if (!supportCopy)
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

    clientCopy = obja;
    providerCopy = v118;
  }

  return v27;
}

- (void)registerCall:(id)call
{
  callCopy = call;
  v11.receiver = self;
  v11.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v11 registerCall:callCopy];
  if (![(CSDCallDataSource *)self shouldTrackCall:callCopy])
  {
    callControllerHost = [(CSDProviderCallDataSource *)self callControllerHost];
    cxCall = [callCopy cxCall];
    [callControllerHost removeCall:cxCall];
    goto LABEL_6;
  }

  provider = [callCopy provider];
  isTinCanProvider = [provider isTinCanProvider];

  isPTT = [callCopy isPTT];
  v8 = isPTT;
  if ((isTinCanProvider & 1) == 0 && (isPTT & 1) == 0)
  {
    callControllerHost = [(CSDProviderCallDataSource *)self callControllerHost];
    cxCall = [callCopy cxCall];
    [callControllerHost addOrUpdateCall:cxCall];
LABEL_6:

    goto LABEL_7;
  }

  callControllerHost = sub_100004778();
  if (os_log_type_enabled(callControllerHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = callCopy;
    v14 = 1024;
    v15 = isTinCanProvider;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, callControllerHost, OS_LOG_TYPE_DEFAULT, "Ignoring to add %@ call since it is TinCan (%d) or PTT Barge Call (%d).", buf, 0x18u);
  }

LABEL_7:
}

- (void)startTrackingCall:(id)call
{
  callCopy = call;
  v10.receiver = self;
  v10.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v10 startTrackingCall:callCopy];
  provider = [callCopy provider];
  if ([provider isSystemProvider])
  {
    goto LABEL_4;
  }

  isPTT = [callCopy isPTT];

  if ((isPTT & 1) == 0)
  {
    provider = [(CSDProviderCallDataSource *)self processAssertionManager];
    provider2 = [callCopy provider];
    bundleIdentifier = [provider2 bundleIdentifier];
    [provider acquireProcessAssertionForBundleIdentifier:bundleIdentifier];

LABEL_4:
  }

  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  [screenTimeCallFilter startMonitoringCall:callCopy];
}

- (void)stopTrackingCall:(id)call
{
  callCopy = call;
  v13.receiver = self;
  v13.super_class = CSDProviderCallDataSource;
  [(CSDCallDataSource *)&v13 stopTrackingCall:callCopy];
  provider = [callCopy provider];
  isSystemProvider = [provider isSystemProvider];

  if ((isSystemProvider & 1) == 0)
  {
    processAssertionManager = [(CSDProviderCallDataSource *)self processAssertionManager];
    provider2 = [callCopy provider];
    bundleIdentifier = [provider2 bundleIdentifier];
    [processAssertionManager invalidateProcessAssertionForBundleIdentifier:bundleIdentifier];
  }

  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
  [callSourceManager failOutstandingActionsForCallWithUUID:uniqueProxyIdentifierUUID];

  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  [screenTimeCallFilter stopMonitoringCall:callCopy];
}

- (id)conduit
{
  faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
  conduit = [faceTimeProviderDelegate conduit];

  return conduit;
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

- (void)setCallProviderManager:(id)manager
{
  objc_storeStrong(&self->_callProviderManager, manager);
  managerCopy = manager;
  callProviderManager = self->_callProviderManager;
  queue = [(CSDCallDataSource *)self queue];
  [(CSDCallProviderManager *)callProviderManager addDelegate:self queue:queue];
}

- (id)_callWithUUID:(id)d
{
  uUIDString = [d UUIDString];
  v5 = [(CSDCallDataSource *)self callWithUniqueProxyIdentifier:uUIDString];

  return v5;
}

- (id)_relayCallWithUUID:(id)d
{
  dCopy = d;
  relayCallDataSource = [(CSDProviderCallDataSource *)self relayCallDataSource];
  uUIDString = [dCopy UUIDString];

  v7 = [relayCallDataSource callWithUniqueProxyIdentifier:uUIDString];

  return v7;
}

- (id)_callWithUUID:(id)d backingCallSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v9 = [calls countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v18 + 1) + 8 * v13);

        uniqueProxyIdentifierUUID = [v11 uniqueProxyIdentifierUUID];
        if ([uniqueProxyIdentifierUUID isEqual:dCopy])
        {
          backingCallSource = [v11 backingCallSource];

          if (backingCallSource == sourceCopy)
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
      v10 = [calls countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_callWithUUID:(id)d controllableByCallSource:(id)source
{
  dCopy = d;
  sourceCopy = source;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v9 = [calls countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v20 + 1) + 8 * v13);

        backingCallSource = [v11 backingCallSource];
        v16 = backingCallSource;
        if (backingCallSource == sourceCopy)
        {
          uniqueProxyIdentifierUUID = [v11 uniqueProxyIdentifierUUID];
          v18 = [uniqueProxyIdentifierUUID isEqual:dCopy];

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
      v10 = [calls countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_callGroupsWithBackingCallSource:(id)source
{
  sourceCopy = source;
  v5 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v7 = [calls countByEnumeratingWithState:&v30 objects:v36 count:16];
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
          objc_enumerationMutation(calls);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        callGroupUUID = [v11 callGroupUUID];
        if (callGroupUUID)
        {
          goto LABEL_7;
        }

        backingCallSource = [v11 backingCallSource];

        if (backingCallSource == sourceCopy)
        {
          v35 = v11;
          callGroupUUID = [NSArray arrayWithObjects:&v35 count:1];
          [v5 addObject:callGroupUUID];
LABEL_7:
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v14 = [calls countByEnumeratingWithState:&v30 objects:v36 count:16];
      v8 = v14;
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  callGroupUUIDToCalls = [(CSDProviderCallDataSource *)self callGroupUUIDToCalls];
  allValues = [callGroupUUIDToCalls allValues];

  v17 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v21 = *(*(&v26 + 1) + 8 * i);
        firstObject = [v21 firstObject];
        backingCallSource2 = [firstObject backingCallSource];

        if (backingCallSource2 == sourceCopy)
        {
          [v5 addObject:v21];
        }
      }

      v18 = [allValues countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  v24 = [v5 copy];

  return v24;
}

- (id)_providerForCallSource:(id)source
{
  sourceCopy = source;
  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [callProviderManager providersByIdentifierForRemoteClients:0];
  identifier = [sourceCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];

  return v8;
}

- (id)_localProviderForCallSource:(id)source
{
  sourceCopy = source;
  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [callProviderManager localProvidersByIdentifierForRemoteClients:0];
  identifier = [sourceCopy identifier];

  v8 = [v6 objectForKeyedSubscript:identifier];

  return v8;
}

- (id)_ISOCountryCodeForCall:(id)call
{
  callCopy = call;
  provider = [callCopy provider];
  if ([provider isFaceTimeProvider])
  {
    faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
    v8 = [faceTimeProviderDelegate ISOCountryCodeForCallWithUUID:uniqueProxyIdentifierUUID];
    goto LABEL_6;
  }

  if ([provider isTelephonyProvider])
  {
    faceTimeProviderDelegate = [callCopy localSenderIdentityUUID];
    if (!faceTimeProviderDelegate)
    {
      v9 = 0;
      goto LABEL_7;
    }

    uniqueProxyIdentifierUUID = [(CSDProviderCallDataSource *)self coreTelephonyClient];
    v8 = [uniqueProxyIdentifierUUID ISOCountryCodeForSubscriptionUUID:faceTimeProviderDelegate];
LABEL_6:
    v9 = v8;

LABEL_7:
    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_ISOCountryCodeForCallWithUUID:(id)d provider:(id)provider callUpdate:(id)update
{
  dCopy = d;
  providerCopy = provider;
  updateCopy = update;
  if ([providerCopy isFaceTimeProvider])
  {
    faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    v12 = [faceTimeProviderDelegate ISOCountryCodeForCallWithUUID:dCopy];
  }

  else
  {
    if (![providerCopy isTelephonyProvider])
    {
      v12 = 0;
      goto LABEL_9;
    }

    faceTimeProviderDelegate = [updateCopy localSenderIdentityUUID];
    if (faceTimeProviderDelegate)
    {
      coreTelephonyClient = [(CSDProviderCallDataSource *)self coreTelephonyClient];
      v12 = [coreTelephonyClient ISOCountryCodeForSubscriptionUUID:faceTimeProviderDelegate];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_9:

  return v12;
}

- (id)_identifiersForCalls:(id)calls
{
  callsCopy = calls;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(callsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = callsCopy;
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

        uniqueProxyIdentifier = [*(*(&v12 + 1) + 8 * i) uniqueProxyIdentifier];
        [v4 addObject:uniqueProxyIdentifier];
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
    calls = [(CSDCallDataSource *)self calls];
    v3 = [calls countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(calls);
          }

          if ([*(*(&v8 + 1) + 8 * i) isSharingScreen])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [calls countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_deferCommittingTransactionsUntilAfterRunningBlock:(id)block
{
  blockCopy = block;
  [(CSDProviderCallDataSource *)self setDeferCommittingTransactions:1];
  blockCopy[2](blockCopy);

  [(CSDProviderCallDataSource *)self setDeferCommittingTransactions:0];

  [(CSDProviderCallDataSource *)self _commitUncommittedTransactions];
}

- (BOOL)_allowRevertingStateForCompletedTransactionGroup:(id)group
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allActions = [group allActions];
  v4 = [allActions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allActions);
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

      v5 = [allActions countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)_endCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    v10 = 138412290;
    v11 = uniqueProxyIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Ending mutually exclusive call with uPI %@ because we have a newer incoming call that can not co-exist with it.", &v10, 0xCu);
  }

  v7 = [CXEndCallAction alloc];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
  v9 = [v7 initWithCallUUID:uniqueProxyIdentifierUUID];

  [(CSDProviderCallDataSource *)self performCallAction:v9 forCall:callCopy];
}

- (id)_endMutuallyExclusiveCalls:(id)calls
{
  callsCopy = calls;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = callsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_endMutuallyExclusiveCalls: update=%@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  calls = [(CSDCallDataSource *)self calls];
  v7 = [calls countByEnumeratingWithState:&v18 objects:v26 count:16];
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
        objc_enumerationMutation(calls);
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

    v8 = [calls countByEnumeratingWithState:&v18 objects:v26 count:16];
  }

  while (v8);

  if (!v9)
  {
    v15 = 0;
    goto LABEL_25;
  }

  if (![callsCopy isMutuallyExclusiveCall])
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

- (void)_processCompletedCallAction:(id)action forCall:(id)call allowRevertingState:(BOOL)state isOnenessActive:(BOOL)active
{
  activeCopy = active;
  stateCopy = state;
  actionCopy = action;
  callCopy = call;
  callStateController = [(CSDCallDataSource *)self callStateController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    state = [v13 state];
    v15 = sub_100004778();
    v16 = v15;
    if (state != 1)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10047F020();
      }

      if (activeCopy)
      {
        [callCopy disconnectWithReason:51];
      }

      v27 = +[NSDate date];
      [callCopy setDateEnded:v27];

      goto LABEL_130;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Start call action fulfilled: %@", buf, 0xCu);
    }

    dateStarted = [v13 dateStarted];
    [callCopy setDateStartedOutgoing:dateStarted];
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    if ([v24 state]== 1)
    {
      v25 = sub_100004778();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Join call action fulfilled: %@", buf, 0xCu);
      }

      dateStarted2 = [v24 dateStarted];
      [callCopy setDateStartedOutgoing:dateStarted2];
      goto LABEL_14;
    }

    faceTimeIDStatus = [callCopy faceTimeIDStatus];
    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_10047EF9C();
    }

    if (faceTimeIDStatus == 1)
    {
      v33 = 531;
    }

    else
    {
      v33 = 508;
    }

    [callCopy setProviderFailureReasonIfNecessary:v33];
    v34 = callCopy;
    if (activeCopy)
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
    v13 = actionCopy;
    state2 = [v13 state];
    v29 = sub_100004778();
    v30 = v29;
    if (state2 == 1)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v13;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Answer call action fulfilled: %@", buf, 0xCu);
      }

      dateStarted = [v13 dateConnected];
      [callCopy setDateConnected:dateStarted];
LABEL_6:

      provider = [callCopy provider];
      isTinCanProvider = [provider isTinCanProvider];

      if (!isTinCanProvider)
      {
LABEL_130:

        goto LABEL_131;
      }

      featureFlags = [(CSDProviderCallDataSource *)self featureFlags];
      sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

      v22 = callCopy;
      v23 = 1;
      if (sessionBasedMutingEnabled)
      {
        [callCopy setUplinkMuted:1];
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

    v39 = callCopy;
    v40 = 509;
LABEL_40:
    [v39 setProviderFailureReasonIfNecessary:v40];
    [callCopy disconnectWithReason:14];
    goto LABEL_130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state3 = [v24 state];
    v37 = sub_100004778();
    v38 = v37;
    if (state3 != 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_10047EECC();
      }

      [callCopy setEndedReason:1];
      v44 = +[NSDate date];
      [callCopy setDateEnded:v44];

      [callCopy setProviderFailureReasonIfNecessary:520];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v24;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "End call action fulfilled: %@", buf, 0xCu);
    }

    dateStarted2 = [v24 dateEnded];
    [callCopy setDateEnded:dateStarted2];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state4 = [v24 state];
    v42 = sub_100004778();
    v43 = v42;
    if (state4 == 1)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Set held call action fulfilled: %@", buf, 0xCu);
      }

      [callCopy setHeld:{-[NSObject isOnHold](v24, "isOnHold")}];
      goto LABEL_75;
    }

    if (stateCopy)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[WARN] Set held call action failed but reverting state is allowed: %@", buf, 0xCu);
      }

      [callStateController resetClientCallProvisionalStates];
      goto LABEL_75;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10047EDC0();
    }

    [callCopy setProviderFailureReasonIfNecessary:512];
    v34 = callCopy;
    goto LABEL_73;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    if ([v13 state]== 1)
    {
      callUUIDToGroupWith = [v13 callUUIDToGroupWith];

      if (callUUIDToGroupWith)
      {
        callUUIDToGroupWith2 = [v13 callUUIDToGroupWith];
        v47 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUIDToGroupWith2];

        v48 = sub_100004778();
        callGroupUUID2 = v48;
        if (v47)
        {
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v13;
            _os_log_impl(&_mh_execute_header, callGroupUUID2, OS_LOG_TYPE_DEFAULT, "Set group call action fulfilled: %@", buf, 0xCu);
          }

          callGroupUUID = [v47 callGroupUUID];

          if (!callGroupUUID)
          {
            v51 = +[NSUUID UUID];
            [v47 setCallGroupUUID:v51];
          }

          callGroupUUID2 = [v47 callGroupUUID];
          [callCopy setCallGroupUUID:callGroupUUID2];
        }

        else if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_10047EE28(v13, self);
        }
      }

      else
      {
        [callCopy setCallGroupUUID:0];
      }

      goto LABEL_130;
    }

    v55 = sub_100004778();
    v56 = v55;
    if (stateCopy)
    {
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v13;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[WARN] Set group call action failed but reverting state is allowed: %@", buf, 0xCu);
      }

      [callStateController resetClientCallProvisionalStates];
      goto LABEL_130;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_10047EDC0();
    }

    v39 = callCopy;
    v40 = 513;
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state5 = [v24 state];
    v53 = sub_100004778();
    v54 = v53;
    if (state5 == 1)
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
      [callCopy dequeueNextPauseDigits];
    }

    goto LABEL_75;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state6 = [v24 state];
    v58 = sub_100004778();
    dateStarted2 = v58;
    if (state6 == 1)
    {
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Set sending video call action fulfilled: %@", buf, 0xCu);
      }

      [callCopy setSendingVideo:{-[NSObject isSendingVideo](v24, "isSendingVideo")}];
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
    v13 = actionCopy;
    if ([v13 state]!= 1)
    {
      featureFlags2 = [(CSDProviderCallDataSource *)self featureFlags];
      sessionBasedMutingEnabled2 = [featureFlags2 sessionBasedMutingEnabled];

      v66 = sub_100004778();
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      if (sessionBasedMutingEnabled2)
      {
        if (v67)
        {
          sub_10047EC88();
        }

        [callCopy setUplinkMuted:-[NSObject isMuted](v13 userInitiated:{"isMuted") ^ 1, 1}];
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
      v22 = callCopy;
      goto LABEL_129;
    }

    v59 = sub_100004778();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = v13;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Set muted call action fulfilled: %@", buf, 0xCu);
    }

    featureFlags3 = [(CSDProviderCallDataSource *)self featureFlags];
    if ([featureFlags3 sessionBasedMutingEnabled])
    {
      isSystemInitiated = [v13 isSystemInitiated];

      if ((isSystemInitiated & 1) == 0)
      {
        [callCopy setUplinkMuted:-[NSObject isMuted](v13 userInitiated:{"isMuted"), -[NSObject isSystemInitiated](v13, "isSystemInitiated") ^ 1}];
        goto LABEL_121;
      }
    }

    else
    {
    }

    [callCopy setUnderlyingUplinkMuted:-[NSObject isMuted](v13 bottomUpMute:{"isMuted"), -[NSObject isBottomUpMute](v13, "isBottomUpMute")}];
LABEL_121:
    if ([v13 isMuted])
    {
      [callCopy setUplinkWasExplicitlyMuted:1];
    }

    goto LABEL_130;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = actionCopy;
    state7 = [v24 state];
    v63 = sub_100004778();
    dateStarted2 = v63;
    if (state7 == 1)
    {
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v24;
        _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Set tty call action fulfilled: %@", buf, 0xCu);
      }

      [callCopy setTtyType:{sub_100025BB8(-[NSObject ttyType](v24, "ttyType"))}];
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
      v24 = actionCopy;
      state8 = [v24 state];
      v74 = sub_100004778();
      dateStarted2 = v74;
      if (state8 == 1)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v89 = v24;
          _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Set screening call action fulfilled: %@", buf, 0xCu);
        }

        [callCopy setScreening:{-[NSObject isScreening](v24, "isScreening")}];
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
        v24 = actionCopy;
        state9 = [v24 state];
        v76 = sub_100004778();
        dateStarted2 = v76;
        if (state9 == 1)
        {
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v89 = v24;
            _os_log_impl(&_mh_execute_header, dateStarted2, OS_LOG_TYPE_DEFAULT, "Allow audio injection action fulfilled: %@", buf, 0xCu);
          }

          [callCopy setInjectingAudio:{-[NSObject willInject](v24, "willInject")}];
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
          state10 = [actionCopy state];
          v83 = sub_100004778();
          v24 = v83;
          if (state10 == 1)
          {
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v89 = actionCopy;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Action fulfilled: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            sub_10047EA24();
          }

          goto LABEL_75;
        }

        v24 = actionCopy;
        if (![v24 isSystemInitiated]|| [v24 translationEngine])
        {
LABEL_75:

          goto LABEL_131;
        }

        if ([v24 isTranslating])
        {
          localLanguage = [v24 localLanguage];
          v78 = [NSLocale localeWithLocaleIdentifier:localLanguage];

          remoteLanguage = [v24 remoteLanguage];
          v80 = [NSLocale localeWithLocaleIdentifier:remoteLanguage];

          v81 = [[TUCallTranslationStartRequest alloc] initWithCall:callCopy localLocale:v78 remoteLocale:v80 translationLinks:3 remoteAudioMode:0 translationMode:0];
        }

        else
        {
          v81 = [[TUCallTranslationStopRequest alloc] initWithCall:callCopy];
        }

        v84 = sub_100004778();
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v89 = v81;
          _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "perform TUCallTranslationRequest for CXSetTranslatingCallAction %@", buf, 0xCu);
        }

        callTranslationController = [callStateController callTranslationController];
        v86[0] = _NSConcreteStackBlock;
        v86[1] = 3221225472;
        v86[2] = sub_100256150;
        v86[3] = &unk_10061A4C0;
        v87 = v81;
        dateStarted2 = v81;
        [callTranslationController performRequest:dateStarted2 forCall:callCopy completion:v86];
      }
    }

LABEL_14:

    goto LABEL_75;
  }

  if ([actionCopy state]== 2)
  {
    v68 = sub_100004778();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v89 = actionCopy;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Set relaying call action failed: %@", buf, 0xCu);
    }

    provider2 = [callCopy provider];
    isTinCanProvider2 = [provider2 isTinCanProvider];

    if (isTinCanProvider2)
    {
      v71 = sub_100004778();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = actionCopy;
        _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "[WARN] Set relaying call action failed: %@", buf, 0xCu);
      }

      [callCopy setProviderFailureReasonIfNecessary:514];
      [callCopy disconnectWithReason:14];
    }
  }

LABEL_131:
  if ([actionCopy state]== 2)
  {
    v72 = +[CSDReportingController sharedInstance];
    [v72 reportProviderFailedWithAction:actionCopy forCall:callCopy];
  }
}

- (BOOL)_actionRequiresReasonableUserIntent:(id)intent
{
  intentCopy = intent;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  v6 = objc_opt_class();

  LOBYTE(v6) = [v5 containsObject:v6];
  return v6;
}

- (BOOL)_shouldAllowRequestedAction:(id)action forCallSource:(id)source shouldValidateUserIntent:(BOOL)intent error:(id *)error
{
  intentCopy = intent;
  actionCopy = action;
  sourceCopy = source;
  v12 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = actionCopy;
    callUUID = [v13 callUUID];
    v15 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID controllableByCallSource:sourceCopy];

    callUUID2 = [v13 callUUID];
    v53 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID2];

    callUUID3 = [v13 callUUID];
    v54 = [(CSDProviderCallDataSource *)self _relayCallWithUUID:callUUID3];

    if (-[CSDProviderCallDataSource _actionRequiresReasonableUserIntent:](self, "_actionRequiresReasonableUserIntent:", v13) && intentCopy && (-[CSDProviderCallDataSource callProviderManager](self, "callProviderManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 validateUserIntentForCallSource:sourceCopy], v18, (v19 & 1) == 0))
    {
      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        identifier = [sourceCopy identifier];
        *buf = 138412546;
        v56 = v39;
        v57 = 2112;
        maximumCallGroups = identifier;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested %@ because user intent could not be validated for call source with identifier: %@", buf, 0x16u);
      }

      +[CSDCrashReporter simulateCrashReportFromPID:withKillCode:usingReasonWithFormat:](CSDCrashReporter, "simulateCrashReportFromPID:withKillCode:usingReasonWithFormat:", [sourceCopy processIdentifier], 3735931409, @"Not allowing requested %@ because user intent could not be reasonably validated to gain access to the microphone while in the background.", objc_opt_class());
      v32 = [NSError cx_requestTransactionErrorWithCode:6];
      v27 = v53;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = v15;
        v52 = [(CSDProviderCallDataSource *)self _callGroupsWithBackingCallSource:sourceCopy];
        callStateController = [(CSDCallDataSource *)self callStateController];
        featureFlags = [callStateController featureFlags];
        if ([featureFlags appProtectionEnabled])
        {
          protectedAppsUtilities = [(CSDProviderCallDataSource *)self protectedAppsUtilities];
          bundleIdentifier = [v12 bundleIdentifier];
          v24 = [protectedAppsUtilities shouldBlockCallWithBundleIdentifier:bundleIdentifier];

          v25 = v54;
          if (v24)
          {
            v26 = sub_100004778();
            v27 = v53;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier2 = [v12 bundleIdentifier];
              *buf = 138412290;
              v56 = bundleIdentifier2;
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
            callUUID4 = [v13 callUUID];
            *buf = 138412290;
            v56 = callUUID4;
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
            v56 = sourceCopy;
            v57 = 2048;
            maximumCallGroups = [v12 maximumCallGroups];
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
        callUUIDToGroupWith = [v13 callUUIDToGroupWith];
        v36 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUIDToGroupWith controllableByCallSource:sourceCopy];

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
            calls = [(CSDCallDataSource *)self calls];
            *buf = 138412802;
            v56 = v13;
            v57 = 2112;
            maximumCallGroups = sourceCopy;
            v59 = 2112;
            v60 = calls;
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

          if (error)
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
          callUUID5 = [v13 callUUID];
          uUIDString = [callUUID5 UUIDString];
          calls2 = [(CSDCallDataSource *)self calls];
          *buf = 138412802;
          v56 = uUIDString;
          v57 = 2112;
          maximumCallGroups = sourceCopy;
          v59 = 2112;
          v60 = calls2;
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
    identifier2 = [sourceCopy identifier];
    v31 = [identifier2 isEqualToString:@"com.apple.coretelephony"];

    if (v31)
    {
      v32 = 0;
      if (!error)
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
    v56 = actionCopy;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested action because action is not allowed to be requested: %@", buf, 0xCu);
  }

  v32 = [NSError cx_requestTransactionErrorWithCode:6];
  if (error)
  {
LABEL_54:
    v49 = v32;
    *error = v32;
  }

LABEL_55:

  return v32 == 0;
}

- (BOOL)_shouldAllowRequestedTransaction:(id)transaction forCallSource:(id)source error:(id *)error
{
  transactionCopy = transaction;
  sourceCopy = source;
  actions = [transactionCopy actions];
  v11 = [actions count];

  if (v11)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    actions2 = [transactionCopy actions];
    v13 = [actions2 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
            objc_enumerationMutation(actions2);
          }

          v17 = *(*(&v24 + 1) + 8 * v16);
          v23 = 0;
          [(CSDProviderCallDataSource *)self _shouldAllowRequestedAction:v17 forCallSource:sourceCopy shouldValidateUserIntent:1 error:&v23];
          v18 = v23;
          if (v18)
          {
            v19 = v18;
            goto LABEL_12;
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [actions2 countByEnumeratingWithState:&v24 objects:v30 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_12:

    if (error)
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
      v29 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction because it is empty: %@", buf, 0xCu);
    }

    v19 = [NSError cx_requestTransactionErrorWithCode:3];
    if (error)
    {
LABEL_13:
      v20 = v19;
      *error = v19;
    }
  }

  return v19 == 0;
}

- (void)_processRequestedTransaction:(id)transaction fromCallSource:(id)source completion:(id)completion
{
  transactionCopy = transaction;
  sourceCopy = source;
  v15 = 0;
  completionCopy = completion;
  v11 = [(CSDProviderCallDataSource *)self _shouldAllowRequestedTransaction:transactionCopy forCallSource:sourceCopy error:&v15];
  v12 = v15;
  v13 = sub_100004778();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v14)
    {
      *buf = 138412290;
      v17 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Allowing requested transaction: %@", buf, 0xCu);
    }

    [(CSDProviderCallDataSource *)self _performRequestedTransaction:transactionCopy onCallSource:sourceCopy];
  }

  else
  {
    if (v14)
    {
      *buf = 138412290;
      v17 = transactionCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Not allowing requested transaction: %@", buf, 0xCu);
    }
  }

  completionCopy[2](completionCopy, v12);
}

- (BOOL)_isRequestingCallSourceAppBackgroundRunning:(id)running
{
  runningCopy = running;
  processObserver = [(CSDProviderCallDataSource *)self processObserver];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100256F74;
  block[3] = &unk_10061AE20;
  v11 = processObserver;
  v12 = runningCopy;
  v13 = &v14;
  v7 = runningCopy;
  v8 = processObserver;
  dispatch_sync(processObserverQueue, block);

  LOBYTE(processObserverQueue) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return processObserverQueue;
}

- (void)_performRequestedTransaction:(id)transaction onCallSource:(id)source
{
  transactionCopy = transaction;
  sourceCopy = source;
  callStateController = [(CSDCallDataSource *)self callStateController];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = transactionCopy;
  obj = [transactionCopy actions];
  v9 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  v10 = sourceCopy;
  if (v9)
  {
    v11 = v9;
    v12 = *v38;
    v10 = sourceCopy;
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
          v17 = [[CSDProviderCall alloc] initOutgoingWithRequestedStartCallAction:v16 backingCallSource:sourceCopy];

          if ([(CSDProviderCallDataSource *)self _isRequestingCallSourceAppBackgroundRunning:sourceCopy])
          {
            callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
            v19 = [callProviderManager validateBackgroundCallIntentForCallSource:sourceCopy];

            if (v19)
            {
              [v17 setLaunchInBackground:1];
            }
          }

          [callStateController setCallDelegatesIfNeeded:v17];
          [callStateController propertiesChangedForCall:v17];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          v20 = v14;
          callUUID = [v20 callUUID];
          v17 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID backingCallSource:sourceCopy];

          backingCallSource = [v17 backingCallSource];

          v10 = backingCallSource;
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
  actions = [v31 actions];
  v24 = [actions countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(actions);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
        [callSourceManager addAction:v28 toUncommittedTransactionForCallSource:v10];
      }

      v25 = [actions countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v25);
  }

  [(CSDProviderCallDataSource *)self _addSupplementalActionsForRequestedTransaction:v31 onCallSource:v10];
  callSourceManager2 = [(CSDProviderCallDataSource *)self callSourceManager];
  [callSourceManager2 commitUncommittedTransactions];
}

- (void)_addSupplementalActionsForRequestedTransaction:(id)transaction onCallSource:(id)source
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [transaction actions];
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
          callUUID = [v11 callUUID];
          v13 = [(CSDProviderCallDataSource *)self _callWithUUID:callUUID];

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
          calls = [(CSDCallDataSource *)self calls];
          v15 = [calls countByEnumeratingWithState:&v34 objects:v44 count:16];
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
              objc_enumerationMutation(calls);
            }

            v19 = *(*(&v34 + 1) + 8 * v18);
            if (v19 != v13)
            {
              provider = [*(*(&v34 + 1) + 8 * v18) provider];
              provider2 = [v13 provider];
              if ([provider isEqualToCallProvider:provider2])
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

              isPTT = [v19 isPTT];

              if ((isPTT & 1) == 0)
              {
                v23 = [CXSetHeldCallAction alloc];
                uniqueProxyIdentifierUUID = [v19 uniqueProxyIdentifierUUID];
                provider = [v23 initWithCallUUID:uniqueProxyIdentifierUUID onHold:1];

                v25 = sub_100004778();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v43 = v19;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Adding supplemental set held call action for existing call %@", buf, 0xCu);
                }

                provider2 = [(CSDProviderCallDataSource *)self callSourceManager];
                backingCallSource = [v19 backingCallSource];
                [provider2 addAction:provider toUncommittedTransactionForCallSource:backingCallSource];

LABEL_23:
              }
            }

            if (v16 == ++v18)
            {
              v16 = [calls countByEnumeratingWithState:&v34 objects:v44 count:16];
              if (!v16)
              {
LABEL_26:

                callStateController = [(CSDCallDataSource *)self callStateController];
                [callStateController deactivatePTTBargeCalls];

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

- (void)answerCall:(id)call withRequest:(id)request whileDisconnectingCalls:(id)calls andHoldingCalls:(id)holdingCalls
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100257918;
  v14[3] = &unk_10061A428;
  callCopy = call;
  requestCopy = request;
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  selfCopy = self;
  v10 = holdingCallsCopy;
  v11 = callsCopy;
  v12 = requestCopy;
  v13 = callCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v14];
}

- (void)holdCalls:(id)calls whileUnholdingCalls:(id)unholdingCalls
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257A1C;
  v8[3] = &unk_100619E58;
  callsCopy = calls;
  unholdingCallsCopy = unholdingCalls;
  selfCopy = self;
  v6 = unholdingCallsCopy;
  v7 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)groupCalls:(id)calls withCalls:(id)withCalls
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257B1C;
  v8[3] = &unk_100619E58;
  callsCopy = calls;
  withCallsCopy = withCalls;
  selfCopy = self;
  v6 = withCallsCopy;
  v7 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)ungroupCall:(id)call fromOtherCallsInGroup:(id)group
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100257C1C;
  v8[3] = &unk_100619E58;
  callCopy = call;
  groupCopy = group;
  selfCopy = self;
  v6 = groupCopy;
  v7 = callCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)disconnectCalls:(id)calls whileHoldingCalls:(id)holdingCalls andUnholdingCalls:(id)unholdingCalls andUngroupingCalls:(id)ungroupingCalls
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100257D68;
  v14[3] = &unk_10061A428;
  callsCopy = calls;
  holdingCallsCopy = holdingCalls;
  unholdingCallsCopy = unholdingCalls;
  ungroupingCallsCopy = ungroupingCalls;
  selfCopy = self;
  v10 = ungroupingCallsCopy;
  v11 = unholdingCallsCopy;
  v12 = holdingCallsCopy;
  v13 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v14];
}

- (void)setUplinkMuted:(BOOL)muted forCalls:(id)calls userInitiated:(BOOL)initiated
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100257E58;
  v7[3] = &unk_10061FCF8;
  mutedCopy = muted;
  initiatedCopy = initiated;
  callsCopy = calls;
  selfCopy = self;
  v6 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v7];
}

- (void)setTTYType:(int)type forCalls:(id)calls
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100257F38;
  v6[3] = &unk_10061CF48;
  typeCopy = type;
  callsCopy = calls;
  selfCopy = self;
  v5 = callsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v6];
}

- (void)sendMMIOrUSSDCodeWithRequest:(id)request
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025800C;
  v4[3] = &unk_100619D88;
  selfCopy = self;
  requestCopy = request;
  v3 = requestCopy;
  [(CSDProviderCallDataSource *)selfCopy _deferCommittingTransactionsUntilAfterRunningBlock:v4];
}

- (void)pullCallWithHandoffActivityUserInfo:(id)info completion:(id)completion
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002581F8;
  v8[3] = &unk_10061AF20;
  infoCopy = info;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = infoCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (id)callSourceForDialRequest:(id)request
{
  requestCopy = request;
  provider = [requestCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if (isTelephonyProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self telephonyCallSource];
LABEL_9:
    v14 = telephonyCallSource;
    goto LABEL_10;
  }

  provider2 = [requestCopy provider];
  isFaceTimeProvider = [provider2 isFaceTimeProvider];

  if (isFaceTimeProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self faceTimeCallSource];
    goto LABEL_9;
  }

  provider3 = [requestCopy provider];
  isTinCanProvider = [provider3 isTinCanProvider];

  if (isTinCanProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self tinCanCallSource];
    goto LABEL_9;
  }

  provider4 = [requestCopy provider];
  isSuperboxProvider = [provider4 isSuperboxProvider];

  if (isSuperboxProvider)
  {
    telephonyCallSource = [(CSDProviderCallDataSource *)self superboxCallSource];
    goto LABEL_9;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
    callSources = [callSourceManager callSources];
    v19 = 138412546;
    v20 = requestCopy;
    v21 = 2112;
    v22 = callSources;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine call source for dial request: %@. All call sources: %@", &v19, 0x16u);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)providerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  v6 = [callProviderManager providersByIdentifierForRemoteClients:0];
  v7 = [v6 objectForKeyedSubscript:identifierCopy];

  return v7;
}

- (void)performCallAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = actionCopy;
    v24 = 2112;
    v25 = callCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform action %@ for call %@", &v22, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CSDProviderCallDataSource *)self holdOrEndOtherCallsBecauseCallWillBeginOutgoing:callCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (([callCopy isIncoming] & 1) == 0)
    {
      callStateController = [(CSDCallDataSource *)self callStateController];
      callCenter = [callStateController callCenter];
      isOnenessActiveBlock = [callCenter isOnenessActiveBlock];
      v12 = isOnenessActiveBlock[2]();

      if (v12)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = actionCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failing join call action %@ since device has active oneness session", &v22, 0xCu);
        }

        [actionCopy fail];
        [(CSDProviderCallDataSource *)self _processCompletedCallAction:actionCopy forCall:callCopy allowRevertingState:0 isOnenessActive:1];
        goto LABEL_28;
      }
    }
  }

  featureFlags = [(CSDProviderCallDataSource *)self featureFlags];
  if (![featureFlags sharePlayInCallsEnabled])
  {
    goto LABEL_17;
  }

  provider = [callCopy provider];
  if (([provider isTelephonyProvider] & 1) == 0)
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

    [actionCopy fulfill];
    goto LABEL_28;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_25;
  }

LABEL_18:
  backingCallSource = [callCopy backingCallSource];

  if (backingCallSource)
  {
    callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
    backingCallSource2 = [callCopy backingCallSource];
    [callSourceManager addAction:actionCopy toUncommittedTransactionForCallSource:backingCallSource2];

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

- (void)performCallActions:(id)actions forCall:(id)call
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100258A68;
  v8[3] = &unk_100619E58;
  actionsCopy = actions;
  selfCopy = self;
  callCopy = call;
  v6 = callCopy;
  v7 = actionsCopy;
  [(CSDProviderCallDataSource *)self _deferCommittingTransactionsUntilAfterRunningBlock:v8];
}

- (void)holdOrEndOtherCallsBecauseCallWillBeginOutgoing:(id)outgoing
{
  outgoingCopy = outgoing;
  [outgoingCopy callCenter];
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

        calls = [*(*(&v48 + 1) + 8 * i) calls];
        firstObject = [calls firstObject];
        provider = [firstObject provider];
        provider2 = [outgoingCopy provider];
        v13 = [provider isEqualToCallProvider:provider2];

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
  calls2 = [(CSDCallDataSource *)self calls];
  v15 = [calls2 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v45;
    v40 = calls2;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(calls2);
        }

        v19 = *(*(&v44 + 1) + 8 * j);
        if (v19 != outgoingCopy && ([*(*(&v44 + 1) + 8 * j) isOnHold] & 1) == 0 && objc_msgSend(v19, "status") == 1 && (objc_msgSend(outgoingCopy, "isVideoUpgradeFromCall:", v19) & 1) == 0 && (objc_msgSend(v19, "isPTT") & 1) == 0)
        {
          provider3 = [v19 provider];
          provider4 = [outgoingCopy provider];
          v22 = [provider3 isEqualToCallProvider:provider4];

          if (v22)
          {
            provider5 = [outgoingCopy provider];
            v24 = v6 >= [provider5 maximumCallGroups];
          }

          else
          {
            v24 = 0;
          }

          if (([v19 isScreening] & 1) != 0 || ((objc_msgSend(v19, "isMutuallyExclusiveCall") | v24) & 1) != 0 || (objc_msgSend(v19, "model"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "supportsHolding"), v25, !v26))
          {
            v30 = [CXEndCallAction alloc];
            uniqueProxyIdentifierUUID = [v19 uniqueProxyIdentifierUUID];
            v29 = [v30 initWithCallUUID:uniqueProxyIdentifierUUID];
          }

          else
          {
            v27 = [CXSetHeldCallAction alloc];
            uniqueProxyIdentifierUUID = [v19 uniqueProxyIdentifierUUID];
            v29 = [v27 initWithCallUUID:uniqueProxyIdentifierUUID onHold:1];
          }

          v31 = v29;

          v32 = sub_100004778();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            [v19 uniqueProxyIdentifierUUID];
            v33 = obja = v31;
            [v19 model];
            v35 = v34 = v24;
            supportsHolding = [v35 supportsHolding];
            *buf = 138413058;
            v53 = obja;
            v54 = 2112;
            v55 = v33;
            v56 = 1024;
            v57 = v34;
            v58 = 1024;
            v59 = supportsHolding;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sending action %@ for existing call with uniqueProxyIdentifierUUID=%@ maximumCallGroupsReachedForProvider=%d supportsHolding=%d", buf, 0x22u);

            v31 = obja;
          }

          callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
          backingCallSource = [v19 backingCallSource];
          [callSourceManager addAction:v31 toUncommittedTransactionForCallSource:backingCallSource];

          calls2 = v40;
        }
      }

      v16 = [calls2 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v16);
  }
}

- (void)performStartCallAction:(id)action forCall:(id)call
{
  actionCopy = action;
  callCopy = call;
  [(CSDProviderCallDataSource *)self holdOrEndOtherCallsBecauseCallWillBeginOutgoing:callCopy];
  callStateController = [(CSDCallDataSource *)self callStateController];
  [callStateController deactivatePTTBargeCalls];

  isoCountryCode = [callCopy isoCountryCode];

  if (!isoCountryCode)
  {
    v10 = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCall:callCopy];
    if ([v10 length])
    {
      v11 = objc_alloc_init(CXCallUpdate);
      [v11 setISOCountryCode:v10];
      [callCopy updateWithCallUpdate:v11];
    }
  }

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = actionCopy;
    v15 = 2112;
    v16 = callCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Asked to perform start call action %@ for call %@", &v13, 0x16u);
  }

  [(CSDProviderCallDataSource *)self performCallAction:actionCopy forCall:callCopy];
}

- (void)callSource:(id)source registeredWithConfiguration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = sourceCopy;
    v21 = 2112;
    v22 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call source %@ registered with configuration %@", &v19, 0x16u);
  }

  v9 = [[TUCallProvider alloc] initWithCallSource:sourceCopy configuration:configurationCopy];
  identifier = [sourceCopy identifier];
  v11 = [identifier isEqualToString:@"com.apple.coretelephony"];

  if (v11)
  {
    [v9 setBundleIdentifier:TUBundleIdentifierPhoneApplication];
    localizedName = [v9 localizedName];
    if (localizedName)
    {
      [v9 setLocalizedName:localizedName];
    }

    else
    {
      v13 = TUResolvedPhoneString();
      [v9 setLocalizedName:v13];
    }
  }

  callProviderManager = [(CSDProviderCallDataSource *)self callProviderManager];
  [callProviderManager registerLocalProvider:v9];

  identifier2 = [sourceCopy identifier];
  v16 = [identifier2 isEqualToString:@"com.apple.coretelephony"];

  if (v16)
  {
    faceTimeProviderDelegate = [(CSDProviderCallDataSource *)self faceTimeProviderDelegate];
    prioritizedSenderIdentities = [configurationCopy prioritizedSenderIdentities];
    [faceTimeProviderDelegate updateProviderConfigurationWithSenderIdentities:prioritizedSenderIdentities];
  }
}

- (BOOL)callSource:(id)source shouldProcessAction:(id)action error:(id *)error
{
  sourceCopy = source;
  actionCopy = action;
  v15 = 0;
  v10 = [(CSDProviderCallDataSource *)self _shouldAllowRequestedAction:actionCopy forCallSource:sourceCopy shouldValidateUserIntent:0 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047F168();
    }
  }

  if (error)
  {
    v13 = v11;
    *error = v11;
  }

  return v10;
}

- (void)updateFilteredOutReasonForCall:(id)call WithError:(id)error
{
  callCopy = call;
  errorCopy = error;
  v8 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_21;
  }

  if ([errorCopy code] == 4)
  {
    if (![callCopy filteredOutReason])
    {
      v9 = callCopy;
      v10 = 1;
LABEL_17:
      [v9 setFilteredOutReason:v10];
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ([v8 code] == 3)
  {
    if ([callCopy filteredOutReason])
    {
      goto LABEL_18;
    }

    featureFlags = self->_featureFlags;
    deviceSupport = self->_deviceSupport;
    if (TUCommunicationTrustEnabled())
    {
      if ([callCopy commTrustScore] == 2)
      {
        goto LABEL_22;
      }

      liveLookupExtensionsAllowCallsFromHandle = [(CSDProviderCallDataSource *)self liveLookupExtensionsAllowCallsFromHandle];
    }

    else
    {
      liveLookupExtensionsAllowCallsFromHandle = [(CSDProviderCallDataSource *)self callDirectoryAllowsCallFromSourceAddress];
    }

    v14 = liveLookupExtensionsAllowCallsFromHandle;
    handle = [callCopy handle];
    value = [handle value];
    v17 = (v14)[2](v14, value);

    if (v17)
    {
      v9 = callCopy;
      v10 = 6;
      goto LABEL_17;
    }

LABEL_22:
    [callCopy setFilteredOutReason:4];
    blockedByExtension = [(CSDProviderCallDataSource *)self blockedByExtension];
    handle2 = [callCopy handle];
    value2 = [handle2 value];
    v22 = (blockedByExtension)[2](blockedByExtension, value2);
    [callCopy setBlockedByExtension:v22];

    goto LABEL_18;
  }

  if ([v8 code] == 104)
  {
    v9 = callCopy;
    v10 = 7;
    goto LABEL_17;
  }

  if ([v8 code] == 105)
  {
    v9 = callCopy;
    v10 = 8;
    goto LABEL_17;
  }

LABEL_18:
  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 67109120;
    v23[1] = [callCopy filteredOutReason];
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updated filtered out reason to %d", v23, 8u);
  }

LABEL_21:
}

- (void)callSource:(id)source _reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  completionCopy = completion;
  selfCopy = self;
  v238 = sourceCopy;
  v241 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  callStateController = [(CSDCallDataSource *)self callStateController];
  v269 = 0;
  v270 = &v269;
  v271 = 0x3032000000;
  v272 = sub_100028750;
  v273 = sub_100032924;
  v274 = 0;
  answeringMachineController = [callStateController answeringMachineController];
  isAvailable = [answeringMachineController isAvailable];

  assistantServicesObserver = [(CSDProviderCallDataSource *)self assistantServicesObserver];
  announceCallsProviderIdentifier = [assistantServicesObserver announceCallsProviderIdentifier];
  [updateCopy setAnnounceProviderIdentifier:announceCallsProviderIdentifier];

  account = [updateCopy account];
  localSenderIdentityUUID = [updateCopy localSenderIdentityUUID];
  if (account || !localSenderIdentityUUID)
  {
    goto LABEL_19;
  }

  v15 = [v241 senderIdentityForUUID:localSenderIdentityUUID];
  v16 = v15;
  if (v15)
  {
    handle = [v15 handle];
    if (handle)
    {
      v18 = [CXHandle handleWithTUHandle:handle];
    }

    else
    {
      v18 = 0;
    }

    iSOCountryCode = [v16 ISOCountryCode];
    if (![iSOCountryCode length])
    {
      coreTelephonyClient = [(CSDProviderCallDataSource *)self coreTelephonyClient];
      v21 = [coreTelephonyClient accountISOCountryCodeForSubscriptionUUID:localSenderIdentityUUID];

      iSOCountryCode = v21;
    }

    accountUUID = [v16 accountUUID];
    localizedName = [v16 localizedName];
    localizedServiceName = [v16 localizedServiceName];
    localizedShortName = [v16 localizedShortName];
    v26 = localizedShortName;
    if (accountUUID && localizedName && localizedServiceName && iSOCountryCode && localizedShortName)
    {
      v27 = [[CXAccount alloc] initWithUUID:accountUUID description:localizedName serviceName:localizedServiceName isoCountryCode:iSOCountryCode handle:v18 shortLabel:localizedShortName];
      [updateCopy setAccount:v27];
    }

    else if (!accountUUID)
    {
LABEL_17:

      goto LABEL_18;
    }

    uUIDString = [accountUUID UUIDString];
    [updateCopy setLocalSenderSubscriptionIdentifier:uUIDString];

    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  isTelephonyProvider = [v241 isTelephonyProvider];
  if (localSenderIdentityUUID)
  {
    v30 = isTelephonyProvider;
  }

  else
  {
    v30 = 0;
  }

  if (v30 == 1)
  {
    coreTelephonyClient2 = [(CSDProviderCallDataSource *)selfCopy coreTelephonyClient];
    v233 = [coreTelephonyClient2 isInHomeCountryForSubscriptionUUID:localSenderIdentityUUID];

    localizedCallerName = [updateCopy localizedCallerName];
    v33 = [localizedCallerName length] == 0;

    if (v33)
    {
      v232 = 0;
    }

    else
    {
      coreTelephonyClient3 = [(CSDProviderCallDataSource *)selfCopy coreTelephonyClient];
      v35 = [coreTelephonyClient3 spamIdentifiersForSubscriptionUUID:localSenderIdentityUUID];

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
            localizedCallerName2 = [updateCopy localizedCallerName];
            LOBYTE(v40) = [localizedCallerName2 rangeOfString:v40 options:1] == 0x7FFFFFFFFFFFFFFFLL;

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

  localMemberHandleValue = [updateCopy localMemberHandleValue];
  if (localMemberHandleValue)
  {
    localSenderSubscriptionIdentifier = [updateCopy localSenderSubscriptionIdentifier];
    v44 = localSenderSubscriptionIdentifier == 0;

    if (v44)
    {
      coreTelephonyClient4 = [(CSDProviderCallDataSource *)selfCopy coreTelephonyClient];
      telephonySubscriptions = [coreTelephonyClient4 telephonySubscriptions];

      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v47 = telephonySubscriptions;
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
            phoneNumber = [v51 phoneNumber];
            if (phoneNumber)
            {
              phoneNumber2 = [v51 phoneNumber];
              v54 = _FTAreIDsEquivalent();

              if (v54)
              {
                labelID = [v51 labelID];
                [updateCopy setLocalSenderSubscriptionIdentifier:labelID];
              }
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v261 objects:v291 count:16];
        }

        while (v48);
      }
    }
  }

  iSOCountryCode2 = [updateCopy ISOCountryCode];
  if (!iSOCountryCode2)
  {
    iSOCountryCode2 = [(CSDProviderCallDataSource *)selfCopy _ISOCountryCodeForCallWithUUID:dCopy provider:v241 callUpdate:updateCopy];
    if (iSOCountryCode2)
    {
      [updateCopy setISOCountryCode:iSOCountryCode2];
    }
  }

  v230 = iSOCountryCode2;
  callContainer = [callStateController callContainer];
  _allCalls = [callContainer _allCalls];
  if ([_allCalls count])
  {
    goto LABEL_54;
  }

  if (![v241 isTelephonyProvider])
  {
    if (!isAvailable)
    {
LABEL_54:
      v231 = 0;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v231 = 0;
  if (((v232 | v233 ^ 1) & 1) == 0 && ((isAvailable ^ 1) & 1) == 0)
  {
LABEL_60:
    lowPowerModeEnabledBlock = [(CSDProviderCallDataSource *)selfCopy lowPowerModeEnabledBlock];
    v60 = lowPowerModeEnabledBlock[2]();

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

  if ([updateCopy priority] == 2 && objc_msgSend(v241, "isTelephonyProvider"))
  {
    v67 = [(CSDProviderCallDataSource *)selfCopy _endMutuallyExclusiveCalls:updateCopy];
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
      v148 = callStateController;
      v244 = v148;
      v251 = v64;
      v229 = dCopy;
      v245 = v229;
      v246 = selfCopy;
      v250 = &v269;
      v249 = completionCopy;
      v252 = v66;
      v227 = v238;
      v247 = v227;
      v225 = updateCopy;
      v248 = v225;
      v253 = v66;
      v254 = v233;
      v255 = isAvailable;
      v256 = v232;
      v149 = objc_retainBlock(v243);
      isAutoAnswerDeviceBlock = [(CSDProviderCallDataSource *)selfCopy isAutoAnswerDeviceBlock];
      v151 = isAutoAnswerDeviceBlock[2]();

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

        callContainer2 = [v153 callContainer];
        _allCalls2 = [callContainer2 _allCalls];
        if ([_allCalls2 count])
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
        if (isAvailable)
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

      featureFlags = [v148 featureFlags];
      callScreeningEnabledM3 = [featureFlags callScreeningEnabledM3];

      if ((callScreeningEnabledM3 & v64 & v231 & v151) != 0)
      {
        v165 = 1;
      }

      else
      {
        v165 = 2;
      }

      if (((v63 | callScreeningEnabledM3 & v64) & v231 & v151) == 1)
      {
        v166 = sub_100004778();
        if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v276 = v165;
          _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "Sending update to see if it should be screened with type %ld", buf, 0xCu);
        }

        [v148 screenUpdate:v225 withProvider:v241 callSource:v227 callUUID:v229 screeningType:v165];
        [(CSDProviderCallDataSource *)selfCopy dispatchDelay];
        v168 = dispatch_time(0, (v167 * 1000000000.0));
        queue = [(CSDCallDataSource *)selfCopy queue];
        dispatch_after(v168, queue, v149);
      }

      else
      {
        (v149[2])(v149);
      }

      v133 = v244;
      goto LABEL_188;
    }

    v65 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v238 UUID:dCopy update:updateCopy originatingUIType:45];
    [v65 setLocalUserInHomeCountry:v233];
    [v65 setAnsweringMachineAvailable:isAvailable];
    [v65 setIdentifiedSpamInCallerName:v232];
    [callStateController setCallDelegatesIfNeeded:v65];
    [callStateController propertiesChangedForCall:v65];
    v63 = 0;
    v64 = 0;
    v66 = 0;
LABEL_155:

    goto LABEL_156;
  }

  routeManager = [(CSDProviderCallDataSource *)selfCopy routeManager];
  incomingCallFilterQueryResult = [(CSDProviderCallDataSource *)selfCopy incomingCallFilterQueryResult];
  remoteHandle = [updateCopy remoteHandle];
  value = [remoteHandle value];
  identifier = [v238 identifier];
  v226 = (incomingCallFilterQueryResult)[2](incomingCallFilterQueryResult, value, identifier);

  v73 = sub_100004778();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    remoteHandle2 = [updateCopy remoteHandle];
    value2 = [remoteHandle2 value];
    v76 = TULoggableStringForHandle();
    identifier2 = [v238 identifier];
    *buf = 138412802;
    *v276 = v226;
    *&v276[8] = 2112;
    v277 = v76;
    v278 = 2112;
    v279 = identifier2;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Query result: %@ for handle: %@ callSource: %@", buf, 0x20u);
  }

  featureFlags = selfCopy->_featureFlags;
  deviceSupport = selfCopy->_deviceSupport;
  if (TUCommunicationTrustEnabled())
  {
    if ([updateCopy commTrustScore] == 2 || !objc_msgSend(v226, "allowCallForDestinationID"))
    {
      v224 = 1;
    }

    else
    {
      liveLookupExtensionsAllowCallsFromHandle = [(CSDProviderCallDataSource *)selfCopy liveLookupExtensionsAllowCallsFromHandle];
      remoteHandle3 = [updateCopy remoteHandle];
      value3 = [remoteHandle3 value];
      if ((liveLookupExtensionsAllowCallsFromHandle)[2](liveLookupExtensionsAllowCallsFromHandle, value3))
      {
        systemAllowsCall = [(CSDProviderCallDataSource *)selfCopy systemAllowsCall];
        remoteHandle4 = [updateCopy remoteHandle];
        value4 = [remoteHandle4 value];
        identifier3 = [v238 identifier];
        v223 = (systemAllowsCall)[2](systemAllowsCall, value4, identifier3);

        v87 = v223 ^ 1;
      }

      else
      {
        v87 = 1;
      }

      v224 = v87;
    }

    if ([updateCopy commTrustScore])
    {
      isFromBlockList = [v226 isFromBlockList];
    }

    else
    {
      isFromBlockList = 1;
    }
  }

  else
  {
    incomingCallFilterQueryResult2 = [(CSDProviderCallDataSource *)selfCopy incomingCallFilterQueryResult];
    remoteHandle5 = [updateCopy remoteHandle];
    value5 = [remoteHandle5 value];
    identifier4 = [v238 identifier];
    v92 = (*(incomingCallFilterQueryResult2 + 16))(incomingCallFilterQueryResult2, value5, identifier4);

    LODWORD(incomingCallFilterQueryResult2) = [v92 allowCallForDestinationID];
    isFromBlockList = [v92 isFromBlockList];

    v224 = incomingCallFilterQueryResult2 ^ 1;
  }

  v93 = sub_100004778();
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    v94 = @"NO";
    if (isFromBlockList)
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

  featureFlags2 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
  isFocusBasedSimSilencingEnabled = [featureFlags2 isFocusBasedSimSilencingEnabled];

  if (isFocusBasedSimSilencingEnabled)
  {
    v98 = sub_100004778();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      isTelephonyProvider2 = [v241 isTelephonyProvider];
      *buf = 67109376;
      *v276 = v224;
      *&v276[4] = 1024;
      *&v276[6] = isTelephonyProvider2;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "simFocus: shouldSilence:%d, isTelephonyProvider: %d", buf, 0xEu);
    }

    if ([v241 isTelephonyProvider])
    {
      focusAllowsCall = [(CSDProviderCallDataSource *)selfCopy focusAllowsCall];
      v101 = (focusAllowsCall)[2](focusAllowsCall, updateCopy, v241);

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

  isCarModeActive = [routeManager isCarModeActive];
  if ([routeManager isAnyVehicleRouteAvailableForAnyCall])
  {
    isAnyBluetoothHeadphoneRouteAvailableForAnyCall = 1;
  }

  else
  {
    isAnyBluetoothHeadphoneRouteAvailableForAnyCall = [routeManager isAnyBluetoothHeadphoneRouteAvailableForAnyCall];
  }

  if (isCarModeActive & isAnyBluetoothHeadphoneRouteAvailableForAnyCall & 1) != 0 || isCarModeActive && ([routeManager isCarPlayRouteAvailable])
  {
    v105 = 1;
  }

  else
  {
    featureFlags3 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
    if ([featureFlags3 nearbyFaceTimeEnabled])
    {
      v105 = [updateCopy nearbyMode] != 0;
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
    *v276 = isCarModeActive;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "carModeActive=%d", buf, 8u);
  }

  v108 = sub_100004778();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    isCarPlayRouteAvailable = [routeManager isCarPlayRouteAvailable];
    *buf = 67109120;
    *v276 = isCarPlayRouteAvailable;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "routeManager.isCarPlayRouteAvailable=%d", buf, 8u);
  }

  v110 = sub_100004778();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v276 = v105;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "shouldIgnoreDND=%d", buf, 8u);
  }

  supportsPrimaryCalling = [(CSDProviderCallDataSource *)selfCopy supportsPrimaryCalling];
  if (supportsPrimaryCalling[2]())
  {
    isTelephonyProvider3 = 0;
  }

  else
  {
    isTelephonyProvider3 = [v241 isTelephonyProvider];
  }

  v113 = sub_100004778();
  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v276 = isTelephonyProvider3;
    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "isThumperCall=%d", buf, 8u);
  }

  if (!v241 || ([v241 isSystemProvider] & 1) != 0)
  {
LABEL_124:
    protectedAppsUtilities = [(CSDProviderCallDataSource *)selfCopy protectedAppsUtilities];
    bundleIdentifier = [v238 bundleIdentifier];
    v120 = [protectedAppsUtilities shouldBlockCallWithBundleIdentifier:bundleIdentifier];

    if (v120)
    {
      v121 = sub_100004778();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier2 = [v238 bundleIdentifier];
        *buf = 138412290;
        *v276 = bundleIdentifier2;
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

      v65 = routeManager;
      goto LABEL_155;
    }

    if (isFromBlockList)
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

    if ([(CSDProviderCallDataSource *)selfCopy _shouldBlockIfScreenSharing])
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
        isCarPlayRouteAvailable2 = [routeManager isCarPlayRouteAvailable];
        *buf = 67109632;
        *v276 = isCarModeActive;
        *&v276[4] = 1024;
        *&v276[6] = isAnyBluetoothHeadphoneRouteAvailableForAnyCall;
        LOWORD(v277) = 1024;
        *(&v277 + 2) = isCarPlayRouteAvailable2;
        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "[WARN] Returning error for add incoming call request because call did not pass DND filter. CarMode (%d) BT Audio Route (%d), CarPlay (%d)", buf, 0x14u);
      }

      v137 = [NSError cx_incomingCallErrorWithCode:3];
      v138 = v270[5];
      v270[5] = v137;

      v63 = 0;
      v64 = 1;
      goto LABEL_153;
    }

    supportsPrimaryCalling2 = [(CSDProviderCallDataSource *)selfCopy supportsPrimaryCalling];
    if (supportsPrimaryCalling2[2]())
    {
    }

    else
    {
      shouldPreferRelayOverDirectSecondaryCalling = [(CSDProviderCallDataSource *)selfCopy shouldPreferRelayOverDirectSecondaryCalling];
      v140 = (shouldPreferRelayOverDirectSecondaryCalling)[2](shouldPreferRelayOverDirectSecondaryCalling, v241, [updateCopy hasVideo]);

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

    shouldFilterCall = [(CSDProviderCallDataSource *)selfCopy shouldFilterCall];
    v145 = (shouldFilterCall)[2](shouldFilterCall, updateCopy, v241);

    if (v145)
    {
      v146 = [NSError cx_incomingCallErrorWithCode:4];
      v147 = v270[5];
      v270[5] = v146;

      v63 = 0;
      v64 = [updateCopy filteredOutReason] != 5;
      goto LABEL_153;
    }

    if (!([routeManager isCarPlayRouteAvailable] & 1 | ((v231 & 1) == 0)) && ((isAvailable ^ 1) & 1) == 0)
    {
      v170 = selfCopy->_featureFlags;
      v171 = selfCopy->_deviceSupport;
      if (TUCommunicationTrustEnabled())
      {
        if ([updateCopy commTrustScore] <= 4)
        {
          featureFlags4 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
          if (!TUReceptionistAvailable())
          {
LABEL_196:

            goto LABEL_197;
          }

          remoteHandle6 = [updateCopy remoteHandle];
          value6 = [remoteHandle6 value];
          serverBag = [(CSDProviderCallDataSource *)selfCopy serverBag];
          if (isTelephonyProvider3 & 1 | ((TUCheckReceptionistDisclosed() & 1) == 0))
          {

            goto LABEL_196;
          }

          isEligibleBlock = [(CSDProviderCallDataSource *)selfCopy isEligibleBlock];
          v218 = (isEligibleBlock)[2](isEligibleBlock, updateCopy, v241, 1);

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
    featureFlags5 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
    if ([featureFlags5 nudityDetectionEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      remoteParticipantHandles = [updateCopy remoteParticipantHandles];
      v178 = [(CSDProviderCallDataSource *)selfCopy remoteScaParticipants:remoteParticipantHandles];
      if ([updateCopy hasVideo])
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

    if ([updateCopy requiresAuthentication])
    {
      v184 = sub_100004778();
      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_DEFAULT, "[WARN] Update requires additional authentication before it can be answered", buf, 2u);
      }

      v185 = [CSDIDSPendingChat alloc];
      uUID = [updateCopy UUID];
      hasVideo = [updateCopy hasVideo];
      remoteHandle7 = [updateCopy remoteHandle];
      tuHandle = [remoteHandle7 tuHandle];
      v190 = [(CSDIDSPendingChat *)v185 initWithUUID:uUID isVideo:hasVideo handle:tuHandle];

      v191 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v238 UUID:dCopy update:updateCopy originatingUIType:45];
      [v191 setLocalUserInHomeCountry:v233];
      [v191 setAnsweringMachineAvailable:isAvailable];
      [v191 setIdentifiedSpamInCallerName:v232];
      answeringMachineController2 = [callStateController answeringMachineController];
      LODWORD(remoteHandle7) = answeringMachineController2 == 0;

      if ((remoteHandle7 | isAvailable))
      {
        if ((TUCallScreeningEnabled() & 1) == 0)
        {
          [v191 setLiveVoicemailUnavailableReason:5];
        }
      }

      else
      {
        answeringMachineController3 = [callStateController answeringMachineController];
        [v191 setLiveVoicemailUnavailableReason:{objc_msgSend(answeringMachineController3, "liveVoicemailUnavailableReason")}];
      }

      [callStateController setCallDelegatesIfNeeded:v191];
      pendingCallsToChatUUIDs = [(CSDProviderCallDataSource *)selfCopy pendingCallsToChatUUIDs];
      uuid = [(CSDIDSPendingChat *)v190 uuid];
      [pendingCallsToChatUUIDs setObject:v191 forKeyedSubscript:uuid];

      v209 = +[NSNotificationCenter defaultCenter];
      v289 = @"CSDIDSPendingChatKey";
      v290 = v190;
      v210 = [NSDictionary dictionaryWithObjects:&v290 forKeys:&v289 count:1];
      [v209 postNotificationName:@"CSDIDSPendingMessageDidReceiveInviteNotification" object:0 userInfo:v210];

      goto LABEL_132;
    }

    v193 = [(CSDProviderCallDataSource *)selfCopy _endMutuallyExclusiveCalls:updateCopy];
    v194 = v270[5];
    v270[5] = v193;

    featureFlags6 = [(CSDProviderCallDataSource *)selfCopy featureFlags];
    if ([featureFlags6 uplevelFTAEnabled])
    {
      isUpgradeToVideo = [updateCopy isUpgradeToVideo];

      if (!isUpgradeToVideo)
      {
        v198 = 0;
LABEL_230:
        if (!v270[5])
        {
          v213 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:v238 UUID:dCopy update:updateCopy originatingUIType:45];
          [v213 setLocalUserInHomeCountry:v233];
          [v213 setUpgradedFromCallUUID:v198];
          [v213 setAnsweringMachineAvailable:isAvailable];
          [v213 setIdentifiedSpamInCallerName:v232];
          answeringMachineController4 = [callStateController answeringMachineController];
          v215 = answeringMachineController4 == 0;

          if ((v215 | isAvailable))
          {
            if ((TUCallScreeningEnabled() & 1) == 0)
            {
              [v213 setLiveVoicemailUnavailableReason:5];
            }
          }

          else
          {
            answeringMachineController5 = [callStateController answeringMachineController];
            [v213 setLiveVoicemailUnavailableReason:{objc_msgSend(answeringMachineController5, "liveVoicemailUnavailableReason")}];
          }

          [callStateController setCallDelegatesIfNeeded:v213];
          [callStateController propertiesChangedForCall:v213];
        }

        goto LABEL_132;
      }

      v259 = 0u;
      v260 = 0u;
      v257 = 0u;
      v258 = 0u;
      callCenter = [callStateController callCenter];
      featureFlags6 = [callCenter currentCalls];

      v198 = [featureFlags6 countByEnumeratingWithState:&v257 objects:v288 count:16];
      if (v198)
      {
        v199 = *v258;
        while (2)
        {
          for (k = 0; k != v198; k = k + 1)
          {
            if (*v258 != v199)
            {
              objc_enumerationMutation(featureFlags6);
            }

            v201 = *(*(&v257 + 1) + 8 * k);
            handle2 = [v201 handle];
            v203 = [CXHandle handleWithTUHandle:handle2];

            remoteHandle8 = [updateCopy remoteHandle];
            v205 = [v203 isEqual:remoteHandle8];

            if (v205)
            {
              v211 = [NSUUID alloc];
              callUUID = [v201 callUUID];
              v198 = [v211 initWithUUIDString:callUUID];

              goto LABEL_229;
            }
          }

          v198 = [featureFlags6 countByEnumeratingWithState:&v257 objects:v288 count:16];
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

  bundleIdentifier3 = [v241 bundleIdentifier];
  voipApplicationController = [callStateController voipApplicationController];
  v116 = [voipApplicationController shouldAllowIncomingCall:bundleIdentifier3];

  if (v116)
  {
    voipApplicationController2 = [callStateController voipApplicationController];
    [voipApplicationController2 noteReportedNewIncomingVoIPCallForBundleIdentifier:bundleIdentifier3];

    goto LABEL_124;
  }

  v131 = sub_100004778();
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring add incoming call request because we are not allowing the app to receive calls: ", buf, 2u);
  }

  v132 = [NSError cx_incomingCallErrorWithCode:106];
  (*(completionCopy + 2))(completionCopy, v132);

  v133 = routeManager;
LABEL_188:

  _Block_object_dispose(&v269, 8);
}

- (void)callSource:(id)source _reportedNewIncomingCallWithUUIDSilently:(id)silently update:(id)update
{
  sourceCopy = source;
  silentlyCopy = silently;
  updateCopy = update;
  v11 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  callStateController = [(CSDCallDataSource *)self callStateController];
  iSOCountryCode = [updateCopy ISOCountryCode];
  if (!iSOCountryCode)
  {
    iSOCountryCode = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCallWithUUID:silentlyCopy provider:v11 callUpdate:updateCopy];
    if (iSOCountryCode)
    {
      [updateCopy setISOCountryCode:iSOCountryCode];
    }
  }

  v22 = v11;
  incomingCallFilterQueryResult = [(CSDProviderCallDataSource *)self incomingCallFilterQueryResult];
  remoteHandle = [updateCopy remoteHandle];
  value = [remoteHandle value];
  identifier = [sourceCopy identifier];
  v18 = (incomingCallFilterQueryResult)[2](incomingCallFilterQueryResult, value, identifier);

  isFromBlockList = [v18 isFromBlockList];
  v20 = sub_100004778();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "creating protected call", buf, 2u);
  }

  v21 = [[CSDProviderCall alloc] initIncomingWithBackingCallSource:sourceCopy UUID:silentlyCopy update:updateCopy originatingUIType:45];
  [v21 setDisconnectedReason:21];
  [v21 setSupportsRecents:isFromBlockList ^ 1];
  [v21 setLocalUserInHomeCountry:0];
  [v21 setAnsweringMachineAvailable:0];
  [v21 setFilteredOutReason:10];
  [callStateController setCallDelegatesIfNeeded:v21];
  [callStateController propertiesChangedForCall:v21];
}

- (void)callSource:(id)source reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  completionCopy = completion;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138412802;
    v47 = sourceCopy;
    v48 = 2112;
    v49 = uUIDString;
    v50 = 2112;
    v51 = updateCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received add incoming call request from call source %@ with UUID %@ update %@", buf, 0x20u);
  }

  [CSDSignposts trace:4];
  v16 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy];
  v17 = [(CSDProviderCallDataSource *)self _relayCallWithUUID:dCopy];
  if (!(v16 | v17))
  {
    if ([updateCopy shouldSilentlyRegisterIMAVCall])
    {
      [(CSDProviderCallDataSource *)self callSource:sourceCopy _reportedNewIncomingCallWithUUIDSilently:dCopy update:updateCopy];
      completionCopy[2](completionCopy, 0);
      goto LABEL_39;
    }

    v20 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
    featureFlags = self->_featureFlags;
    deviceSupport = self->_deviceSupport;
    if (!TUCommunicationTrustEnabled())
    {
LABEL_38:
      [(CSDProviderCallDataSource *)self callSource:sourceCopy _reportedNewIncomingCallWithUUID:dCopy update:updateCopy completion:completionCopy];

      goto LABEL_39;
    }

    v23 = [(CSDCommunicationTrustScoreDataProviderProtocol *)self->_communicationTrustScoreDataProvider getTrustScoreFor:updateCopy callProvider:v20];
    v24 = v23;
    [updateCopy setCommTrustScore:v23];
    [updateCopy setIsKnownCaller:v24 > 4];
    serverBag = [(CSDProviderCallDataSource *)self serverBag];
    v26 = [serverBag objectForKey:@"disable-receptionist-disclosure-checks"];

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

    if (![updateCopy isKnownCaller])
    {
      goto LABEL_37;
    }

    remoteHandle = [updateCopy remoteHandle];
    value = [remoteHandle value];
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
      [updateCopy setSpecialUnknown:{objc_msgSend(v35, "BOOLForKey:", @"specialUnknownValue"}];

      v36 = sub_100004778();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      specialUnknown = [updateCopy specialUnknown];
      v38 = @"NO";
      if (specialUnknown)
      {
        v38 = @"YES";
      }

      *buf = 138412290;
      v47 = v38;
      v39 = "Default set, set specialUnknown: %@";
    }

    else
    {
      [updateCopy setSpecialUnknown:arc4random_uniform(0x64u) < 0x32];
      v36 = sub_100004778();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      specialUnknown2 = [updateCopy specialUnknown];
      v41 = @"NO";
      if (specialUnknown2)
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

    if ([updateCopy specialUnknown])
    {
      v42 = sub_100004778();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "We are forcing a known caller to be specialUnknown", buf, 2u);
      }

      [updateCopy setCommTrustScore:4];
      [updateCopy setIsKnownCaller:0];
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
  (completionCopy)[2](completionCopy, v19);

LABEL_39:
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d updated:(id)updated
{
  sourceCopy = source;
  dCopy = d;
  updatedCopy = updated;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138412802;
    v44 = sourceCopy;
    v45 = 2112;
    v46 = uUIDString;
    v47 = 2112;
    v48 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with update %@", buf, 0x20u);
  }

  v13 = sub_100004778();
  if (os_signpost_enabled(v13))
  {
    uUID = [updatedCopy UUID];
    uUIDString2 = [uUID UUIDString];
    *buf = 138543362;
    v44 = uUIDString2;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CSDProviderCallDataSource", "callSourceUpdated-%{public}@", buf, 0xCu);
  }

  call = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy controllableByCallSource:sourceCopy];
  if ((-[NSObject isMutuallyExclusiveCall](call, "isMutuallyExclusiveCall") & 1) != 0 || [updatedCopy isMutuallyExclusiveCall])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    calls = [(CSDCallDataSource *)self calls];
    v18 = [calls countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      selfCopy = self;
      v38 = sourceCopy;
      v20 = *v40;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(calls);
          }

          v22 = *(*(&v39 + 1) + 8 * i);
          uniqueProxyIdentifierUUID = [call uniqueProxyIdentifierUUID];
          uniqueProxyIdentifierUUID2 = [v22 uniqueProxyIdentifierUUID];
          v25 = [uniqueProxyIdentifierUUID isEqual:uniqueProxyIdentifierUUID2];

          if (!v25)
          {

            calls = [[CXEndCallAction alloc] initWithCallUUID:dCopy];
            v26 = sub_100004778();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v44 = calls;
              v45 = 2112;
              v46 = dCopy;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[WARN] Sending %@ for existing call with uniqueProxyIdentifierUUID=%@ since it cannot co-exist with ongoing calls.", buf, 0x16u);
            }

            self = selfCopy;
            [(CSDProviderCallDataSource *)selfCopy performCallAction:calls forCall:call];
            sourceCopy = v38;
            goto LABEL_19;
          }
        }

        v19 = [calls countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      self = selfCopy;
      sourceCopy = v38;
    }

LABEL_19:
  }

  if (call)
  {
    goto LABEL_22;
  }

  pendingPulledCallContexts = [(CSDProviderCallDataSource *)self pendingPulledCallContexts];
  v28 = [pendingPulledCallContexts objectForKeyedSubscript:dCopy];

  call = [v28 call];

  if (call)
  {
LABEL_22:
    isoCountryCode = [call isoCountryCode];
    if (!isoCountryCode)
    {
      iSOCountryCode = [updatedCopy ISOCountryCode];

      if (iSOCountryCode)
      {
        goto LABEL_25;
      }

      isoCountryCode = [(CSDProviderCallDataSource *)self _ISOCountryCodeForCall:call];
      iSOCountryCode2 = [updatedCopy ISOCountryCode];
      v36 = TUStringsAreEqualOrNil();

      if ((v36 & 1) == 0)
      {
        [updatedCopy setISOCountryCode:isoCountryCode];
      }
    }

LABEL_25:
    [call updateWithCallUpdate:updatedCopy];
    v31 = sub_100004778();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString3 = [dCopy UUIDString];
      *buf = 138413058;
      v44 = sourceCopy;
      v45 = 2112;
      v46 = uUIDString3;
      v47 = 2112;
      v48 = updatedCopy;
      v49 = 2112;
      v50 = call;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with update %@ => %@", buf, 0x2Au);
    }

    goto LABEL_28;
  }

  call = sub_100004778();
  if (os_log_type_enabled(call, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString4 = [dCopy UUIDString];
    calls2 = [(CSDCallDataSource *)self calls];
    *buf = 138412802;
    v44 = sourceCopy;
    v45 = 2112;
    v46 = uUIDString4;
    v47 = 2112;
    v48 = calls2;
    _os_log_impl(&_mh_execute_header, call, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", buf, 0x20u);
  }

LABEL_28:
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v20 = 138412802;
    v21 = sourceCopy;
    v22 = 2112;
    v23 = uUIDString;
    v24 = 2112;
    v25 = updateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ updated call with UUID %@ with DTMFUpdate %@", &v20, 0x20u);
  }

  v13 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy controllableByCallSource:sourceCopy];
  if (v13 && ([updateCopy digits], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
  {
    callStateController = [(CSDCallDataSource *)self callStateController];
    tuCallDTMFUpdate = [updateCopy tuCallDTMFUpdate];
    [callStateController handleReceivedCallDTMFUpdate:tuCallDTMFUpdate forCall:v13];
  }

  else
  {
    callStateController = sub_100004778();
    if (os_log_type_enabled(callStateController, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString2 = [dCopy UUIDString];
      calls = [(CSDCallDataSource *)self calls];
      v20 = 138412802;
      v21 = sourceCopy;
      v22 = 2112;
      v23 = uUIDString2;
      v24 = 2112;
      v25 = calls;
      _os_log_impl(&_mh_execute_header, callStateController, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v20, 0x20u);
    }
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    *buf = 138413314;
    v76 = sourceCopy;
    v77 = 2112;
    v78 = uUIDString;
    v79 = 2112;
    v80 = dateCopy;
    v81 = 2048;
    reasonCopy = reason;
    v83 = 2112;
    v84 = contextCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Call source %@ ended call with UUID %@ with ended at date %@ with reason %ld failure context %@", buf, 0x34u);
  }

  v18 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v19 = [(CSDProviderCallDataSource *)self _providerForCallSource:sourceCopy];
  v61 = contextCopy;
  if (!v18)
  {
    pendingCallsToChatUUIDs = [(CSDProviderCallDataSource *)self pendingCallsToChatUUIDs];
    v28 = [pendingCallsToChatUUIDs objectForKeyedSubscript:dCopy];

    if (v28)
    {
      v29 = +[NSNotificationCenter defaultCenter];
      v72[0] = @"CSDIDSPendingChatUUIDKey";
      v72[1] = @"CSDIDSPendingCallKey";
      v73[0] = dCopy;
      v73[1] = v28;
      [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
      v31 = v30 = v19;
      [v29 postNotificationName:@"CSDIDSPendingMessageDidReceiveCancelNotification" object:0 userInfo:v31];

      v19 = v30;
      pendingCallsToChatUUIDs2 = [(CSDProviderCallDataSource *)self pendingCallsToChatUUIDs];
      [pendingCallsToChatUUIDs2 setObject:0 forKeyedSubscript:dCopy];
    }

    else
    {
      pendingCallsToChatUUIDs2 = sub_100004778();
      if (os_log_type_enabled(pendingCallsToChatUUIDs2, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString2 = [dCopy UUIDString];
        calls = [(CSDCallDataSource *)self calls];
        *buf = 138412802;
        v76 = sourceCopy;
        v77 = 2112;
        v78 = uUIDString2;
        v79 = 2112;
        v80 = calls;
        _os_log_impl(&_mh_execute_header, pendingCallsToChatUUIDs2, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", buf, 0x20u);
      }
    }

    goto LABEL_19;
  }

  if ([v18 isIncoming] && v19 && (objc_msgSend(v19, "isSystemProvider") & 1) == 0 && (+[NSDate timeIntervalSinceReferenceDate](NSDate, "timeIntervalSinceReferenceDate"), v21 = v20, objc_msgSend(v18, "dateCreated"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSinceReferenceDate"), v24 = v21 - v23, v22, v24 < 2.0))
  {
    v36 = dateCopy;
    v37 = sub_100004778();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString3 = [dCopy UUIDString];
      *buf = 138412290;
      v76 = uUIDString3;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[WARN] Deferring acknowledgement of VoIP call with UUID %@ ended until minimum ring duration has passed", buf, 0xCu);
    }

    v39 = dispatch_time(0, ((2.0 - v24 + 0.01) * 1000000000.0));
    queue = [(CSDCallDataSource *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10025CDD4;
    block[3] = &unk_10061D378;
    block[4] = self;
    v67 = sourceCopy;
    v68 = dCopy;
    v69 = v36;
    reasonCopy2 = reason;
    v33 = v61;
    v70 = v61;
    v41 = v39;
    dateCopy = v36;
    dispatch_after(v41, queue, block);
  }

  else
  {
    dateEnded = [v18 dateEnded];

    if (dateEnded)
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

    [v18 setEndedReason:reason];
    v33 = contextCopy;
    [v18 setFailureContext:contextCopy];
    if (dateCopy)
    {
      [v18 setDateEnded:dateCopy];
    }

    else
    {
      v42 = +[NSDate date];
      [v18 setDateEnded:v42];
    }

    callGroupUUID = [v18 callGroupUUID];

    if (callGroupUUID)
    {
      v57 = v19;
      v58 = dateCopy;
      v59 = dCopy;
      v60 = sourceCopy;
      v44 = +[NSMutableArray array];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      calls2 = [(CSDCallDataSource *)self calls];
      v46 = [calls2 countByEnumeratingWithState:&v62 objects:v74 count:16];
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
              objc_enumerationMutation(calls2);
            }

            v50 = *(*(&v62 + 1) + 8 * i);
            if (v50 != v18)
            {
              callGroupUUID2 = [*(*(&v62 + 1) + 8 * i) callGroupUUID];
              callGroupUUID3 = [v18 callGroupUUID];
              v53 = [callGroupUUID2 isEqual:callGroupUUID3];

              if (v53)
              {
                [v44 addObject:v50];
              }
            }
          }

          v47 = [calls2 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v47);
      }

      dCopy = v59;
      sourceCopy = v60;
      v19 = v57;
      dateCopy = v58;
      v33 = v61;
      if ([v44 count] == 1)
      {
        v54 = sub_100004778();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          firstObject = [v44 firstObject];
          *buf = 138412290;
          v76 = firstObject;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Setting callGroupUUID to nil for orphaned grouped call %@", buf, 0xCu);
        }

        firstObject2 = [v44 firstObject];
        [firstObject2 setCallGroupUUID:0];
      }
    }
  }

LABEL_20:
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ sent invitation for outgoing call with UUID %@ at date %@", &v21, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v13 = v12;
  if (v12)
  {
    if ([v12 isOutgoing])
    {
      dateSentInvitation = [v13 dateSentInvitation];

      if (!dateSentInvitation)
      {
        if (dateCopy)
        {
          [v13 setDateSentInvitation:dateCopy];
          goto LABEL_15;
        }

        v15 = +[NSDate date];
        [v13 setDateSentInvitation:v15];
        goto LABEL_14;
      }

      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = uniqueProxyIdentifier;
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
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = uniqueProxyIdentifier;
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
    calls = [(CSDCallDataSource *)self calls];
    v20 = [(CSDProviderCallDataSource *)self _identifiersForCalls:calls];
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
  }

LABEL_15:
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ started connecting call with UUID %@ at date %@", &v21, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v13 = v12;
  if (v12)
  {
    if ([v12 isOutgoing])
    {
      dateStartedConnecting = [v13 dateStartedConnecting];

      if (!dateStartedConnecting)
      {
        if (dateCopy)
        {
          [v13 setDateStartedConnecting:dateCopy];
          goto LABEL_15;
        }

        v15 = +[NSDate date];
        [v13 setDateStartedConnecting:v15];
        goto LABEL_14;
      }

      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = uniqueProxyIdentifier;
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
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = uniqueProxyIdentifier;
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
    calls = [(CSDCallDataSource *)self calls];
    v20 = [(CSDProviderCallDataSource *)self _identifiersForCalls:calls];
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
  }

LABEL_15:
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d connectedAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412802;
    v22 = sourceCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = dateCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ connected outgoing call with UUID %@ at date %@", &v21, 0x20u);
  }

  v12 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v13 = v12;
  if (v12)
  {
    if (([v12 isOutgoing] & 1) == 0 && !objc_msgSend(v13, "shouldAcceptDateConnectedProviderUpdates"))
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = uniqueProxyIdentifier;
        v17 = "[WARN] Call with %@ is not outgoing";
        goto LABEL_16;
      }

LABEL_18:

      goto LABEL_19;
    }

    dateConnected = [v13 dateConnected];

    if (dateConnected)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        uniqueProxyIdentifier = [v13 uniqueProxyIdentifier];
        v21 = 138412290;
        v22 = uniqueProxyIdentifier;
        v17 = "[WARN] Call with UUID %@ already has a date connected";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v17, &v21, 0xCu);

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (!dateCopy)
    {
      v15 = +[NSDate date];
      [v13 setDateConnected:v15];
      goto LABEL_18;
    }

    [v13 setDateConnected:dateCopy];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      calls = [(CSDCallDataSource *)self calls];
      v20 = [(CSDProviderCallDataSource *)self _identifiersForCalls:calls];
      v21 = 138412802;
      v22 = sourceCopy;
      v23 = 2112;
      v24 = dCopy;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No call found for call source %@ and UUID %@. All calls: %@", &v21, 0x20u);
    }
  }

LABEL_19:
}

- (void)callSource:(id)source reportedNewOutgoingCallWithUUID:(id)d update:(id)update
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  v10 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  if (!v10)
  {
    v11 = [[CSDProviderCall alloc] initOutgoingWithUpdate:updateCopy callUUID:dCopy backingCallSource:sourceCopy isExpanseProvider:1];
    callStateController = [(CSDCallDataSource *)self callStateController];
    [callStateController setCallDelegatesIfNeeded:v11];
    [callStateController propertiesChangedForCall:v11];
  }
}

- (void)callSource:(id)source reportedAudioFinishedForCallWithUUID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v17 = 138412546;
    v18 = sourceCopy;
    v19 = 2112;
    v20 = uUIDString;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Call source %@ finished audio for call with UUID %@", &v17, 0x16u);
  }

  v10 = [(CSDProviderCallDataSource *)self _callWithUUID:dCopy backingCallSource:sourceCopy];
  v11 = sub_100004778();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      uUIDString2 = [dCopy UUIDString];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = uUIDString2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found call %@ for UUID %@, so setting hasAudioFinished", &v17, 0x16u);
    }

    [v10 setHasAudioFinished:1];
  }

  else
  {
    if (v12)
    {
      uUIDString3 = [dCopy UUIDString];
      v17 = 138412290;
      v18 = uUIDString3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did not find a call for UUID %@, so expediting deferred end interruption instead", &v17, 0xCu);
    }

    callStateController = [(CSDCallDataSource *)self callStateController];
    audioController = [callStateController audioController];
    [audioController expediteDeferredEndInterruptionForCallWithUUID:dCopy];
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  dataCopy = data;
  v11 = [(CSDProviderCallDataSource *)self _callWithUUID:d backingCallSource:source];
  v12 = v11;
  if (v11)
  {
    if (direction == 2)
    {
      v15 = v11;
      v13 = &v15;
      goto LABEL_6;
    }

    if (direction == 1)
    {
      v16 = v11;
      v13 = &v16;
LABEL_6:
      v14 = [NSArray arrayWithObjects:v13 count:1];
      [(CSDCallDataSource *)self handleFrequencyDataChanged:dataCopy inDirection:direction forCalls:v14];
    }
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  v9 = [(CSDProviderCallDataSource *)self _callWithUUID:d backingCallSource:source];
  v10 = v9;
  if (v9)
  {
    if (direction == 2)
    {
      v14 = v9;
      v11 = &v14;
      goto LABEL_6;
    }

    if (direction == 1)
    {
      v15 = v9;
      v11 = &v15;
LABEL_6:
      v12 = [NSArray arrayWithObjects:v11 count:1];
      *&v13 = level;
      [(CSDCallDataSource *)self handleMeterLevelChanged:direction inDirection:v12 forCalls:v13];
    }
  }
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  sourceCopy = source;
  dCopy = d;
  identifierCopy = identifier;
  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [dCopy UUIDString];
    v16 = 138413058;
    v17 = sourceCopy;
    v18 = 2112;
    v19 = uUIDString;
    v20 = 2112;
    v21 = identifierCopy;
    v22 = 2048;
    usedCopy = used;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Call source %@ received call with UUID: %@ crossDeviceIdentifier %@ bytesOfDataUsed %ld", &v16, 0x2Au);
  }

  uUIDString2 = [dCopy UUIDString];
  [(CSDCallDataSource *)self handleBytesOfDataUsedChanged:used forCallWithUniqueProxyIdentifier:uUIDString2 callHistoryIdentifier:identifierCopy];
}

- (void)callSource:(id)source requestedTransaction:(id)transaction completion:(id)completion
{
  sourceCopy = source;
  transactionCopy = transaction;
  completionCopy = completion;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = sourceCopy;
    v14 = 2112;
    v15 = transactionCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Call source %@ received requested transaction %@", &v12, 0x16u);
  }

  [(CSDProviderCallDataSource *)self _processRequestedTransaction:transactionCopy fromCallSource:sourceCopy completion:completionCopy];
}

- (void)callSourceManager:(id)manager completedTransactionGroup:(id)group
{
  managerCopy = manager;
  groupCopy = group;
  queue = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025DE08;
  block[3] = &unk_100619E58;
  v12 = managerCopy;
  v13 = groupCopy;
  selfCopy = self;
  v9 = groupCopy;
  v10 = managerCopy;
  dispatch_async(queue, block);
}

- (void)callSourcesChangedForCallSourceManager:(id)manager
{
  queue = [(CSDCallDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025E3E0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)callControllerHost:(id)host clientWithIdentifier:(id)identifier requestedTransaction:(id)transaction completion:(id)completion
{
  hostCopy = host;
  identifierCopy = identifier;
  transactionCopy = transaction;
  completionCopy = completion;
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = hostCopy;
    v24 = 2112;
    v25 = transactionCopy;
    v26 = 2112;
    v27 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Call controller host %@ requested transaction %@ for connection with identifier: %@", buf, 0x20u);
  }

  channelSourceManager = [(CSDProviderCallDataSource *)self channelSourceManager];
  v16 = [channelSourceManager channelSourceForIdentifier:identifierCopy];

  if (v16 && [(CSDProviderCallDataSource *)self transactionContainsChannelActions:transactionCopy])
  {
    [(CSDProviderCallDataSource *)self _processRequestedTransaction:transactionCopy fromProviderSource:v16 completionHandler:completionCopy];
  }

  else
  {
    callSourceFetcher = [(CSDProviderCallDataSource *)self callSourceFetcher];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10025E85C;
    v18[3] = &unk_10061FD48;
    v19 = transactionCopy;
    selfCopy = self;
    v21 = completionCopy;
    [callSourceFetcher fetchCallSourceForIdentifier:identifierCopy completion:v18];
  }
}

- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain
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
  calls = [(CSDCallDataSource *)self calls];
  v7 = [calls countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(calls);
        }

        [*(*(&v11 + 1) + 8 * v10) propertiesChanged];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [calls countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)callSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callSourceManager = [(CSDProviderCallDataSource *)self callSourceManager];
  v6 = [callSourceManager callSourceWithIdentifier:identifierCopy];

  return v6;
}

+ (BOOL)_isSystemProviderForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [identifierCopy isEqualToString:@"com.apple.coretelephony"];
  v5 = [identifierCopy isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  v6 = [identifierCopy isEqualToString:@"com.apple.Superbox"];
  v7 = [identifierCopy isEqualToString:@"com.apple.telephonyutilities.callservicesd.TinCan"];

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

- (id)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  addressesCopy = addresses;
  screenTimeCallFilter = [(CSDProviderCallDataSource *)self screenTimeCallFilter];
  v9 = [screenTimeCallFilter policyForAddresses:addressesCopy forBundleIdentifier:identifierCopy];

  return v9;
}

- (void)screenTimeCallFilter:(id)filter didChangeAllowed:(BOOL)allowed forCallUUID:(id)d
{
  allowedCopy = allowed;
  dCopy = d;
  queue = [(CSDCallDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v27 = allowedCopy;
    *&v27[4] = 2112;
    *&v27[6] = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Changed ScreenTime allowed %d for call with UUID %@", buf, 0x12u);
  }

  if (!allowedCopy)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    calls = [(CSDCallDataSource *)self calls];
    v11 = [calls countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(calls);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (([v16 isEmergency] & 1) == 0)
          {
            uniqueProxyIdentifierUUID = [v16 uniqueProxyIdentifierUUID];
            v18 = [uniqueProxyIdentifierUUID isEqual:dCopy];

            if (v18)
            {
              v19 = sub_100004778();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v20;
                *v27 = dCopy;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Call is not allowed by ScreenTime; disconnecting call with UUID: %@", buf, 0xCu);
              }

              [v16 disconnectWithReason:25];
            }
          }
        }

        v13 = [calls countByEnumeratingWithState:&v21 objects:v25 count:16];
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
    processObserverQueue = [(CSDProviderCallDataSource *)self processObserverQueue];
    v6 = [(CSDProcessObserver *)v4 initWithQueue:processObserverQueue];
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
    queue = [(CSDCallDataSource *)self queue];
    v6 = [(CSDBluetoothHangupCommandObserver *)v4 initWithQueue:queue];
    v7 = self->_btHangupObserver;
    self->_btHangupObserver = v6;

    btHangupObserver = self->_btHangupObserver;
  }

  return btHangupObserver;
}

- (id)remoteScaParticipants:(id)participants
{
  v3 = [CXHandle tuHandlesWithMembers:participants];
  allObjects = [v3 allObjects];

  v5 = [allObjects tu_mapObjectsUsingBlock:&stru_10061FD88];

  return v5;
}

@end