@interface CSDCallStateController
+ (id)automaticNameAndPhotoQueue;
+ (void)sanitizeJoinConversationRequest:(id)a3;
- (BOOL)_hasAlreadyDeniedSendingNameAndPhotoToHandles:(id)a3;
- (BOOL)_nameAndPhotoSharingEnabled;
- (BOOL)_nonRingingCallExistsOnThisDevice;
- (BOOL)_sharingAudienceAllowsAutoSendNameAndPhoto;
- (BOOL)_shouldLaunchInCallApplicationForProviderOfCall:(id)a3;
- (BOOL)hasCustomGreetingFor:(id)a3;
- (BOOL)isCallEligible:(id)a3 forClient:(id)a4;
- (BOOL)isClientRecordingApplicationInstalled;
- (BOOL)isInCallUIActive;
- (BOOL)isTrackingVoIPCallForBundleIdentifier:(id)a3;
- (BOOL)multipleCallsActiveOrHeld;
- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)a3 callProvider:(id)a4;
- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)a3 conversationProvider:(id)a4;
- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)a3 isDefaultProvider:(BOOL)a4;
- (BOOL)shouldFilterClient:(id)a3;
- (BOOL)shouldHandleCarPlayControlEvents;
- (BOOL)shouldRelayToOtherDevices;
- (BOOL)shouldSendCall:(id)a3 forClient:(id)a4;
- (CSDCallContainer)callContainer;
- (CSDCallFilterController)callFilterController;
- (CSDCallStateController)init;
- (CSDCallStateController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4 chManager:(id)a5;
- (CSDCallStateController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4 featureFlags:(id)a5 serverBag:(id)a6 chManager:(id)a7;
- (IMNicknameProvider)nicknameProvider;
- (NSNumber)shouldHandleSecureMicrophoneEvents;
- (id)_screenWithRequest:(id)a3;
- (id)callForClient:(id)a3 usingCall:(id)a4;
- (id)callWithUniqueProxyIdentifier:(id)a3 fromCallsToAnswer:(id)a4;
- (id)clientInvalidationHandler;
- (id)currentCallsForClient:(id)a3;
- (id)currentProxyCalls;
- (id)eligibleCallsByFilteringCalls:(id)a3 forClient:(id)a4;
- (id)fetchPreferredFaceTimeAccountID;
- (id)outgoingCallFromDialRequest:(id)a3;
- (id)outgoingCallFromJoinRequest:(id)a3;
- (id)pendingCallInfoForUUID:(id)a3;
- (id)performDialCall:(id)a3 displayContext:(id)a4;
- (id)performJoinConversation:(id)a3;
- (void)_answerIncomingCall:(id)a3 withBehavior:(int64_t)a4;
- (void)_answerIncomingCallAsConversation:(id)a3;
- (void)_dial:(id)a3 displayContext:(id)a4 completion:(id)a5;
- (void)_endProxyCallsForConnectingVideoCall;
- (void)_handleActiveCallStatusChangeForHostedCall:(id)a3;
- (void)_handleAudioSessionInterruptionNotification:(id)a3;
- (void)_handleCSDRelayIDSActiveAccountsChanged:(id)a3;
- (void)_handleCSDRelayPairedDeviceConnectedNotification:(id)a3;
- (void)_handleCallConnectedNotification:(id)a3;
- (void)_handleCallDisplayContextChangedNotification:(id)a3;
- (void)_handleCallIsEmergencyChangedNotification:(id)a3;
- (void)_handleCallIsUsingBasebandChangedNotification:(id)a3;
- (void)_handleCallModelChangedNotification:(id)a3;
- (void)_handleCallRemoteParticipantHandlesChangedNotification:(id)a3;
- (void)_handleCallShouldSuppressRingtoneChangedNotification:(id)a3;
- (void)_handleCallStartedConnectingNotification:(id)a3;
- (void)_handleCallStartedOutgoingNotification:(id)a3;
- (void)_handleCallStatusChangedNotification:(id)a3;
- (void)_handleCallWantsHoldMusicChangedNotification:(id)a3;
- (void)_handleCarPlayControlEventNotification:(id)a3;
- (void)_handleConnectedCallStatusChangeForHostedCall:(id)a3;
- (void)_handleConnectingCallStatusChangeForHostedCall:(id)a3;
- (void)_handleConversationGroupUUIDChangedNotification:(id)a3;
- (void)_handleDisconnectedCallStatusChangeForHostedCall:(id)a3;
- (void)_handleDisconnectedCallStatusChangeForVoicemailCall;
- (void)_handleFaceTimeAvailabilityChangedNotification:(id)a3;
- (void)_handleFailureExpectedChangedNotification:(id)a3;
- (void)_handleGroupUUIDChangeForHostedCall:(id)a3;
- (void)_handleGroupUUIDChangedNotification:(id)a3;
- (void)_handleHardPauseStateChangedNotification:(id)a3;
- (void)_handleHeldCallStatusChangeForHostedCall:(id)a3;
- (void)_handleInvitationSentNotification:(id)a3;
- (void)_handleLastReceptionistMessageChangedNotification:(id)a3;
- (void)_handleLocaleChange:(id)a3;
- (void)_handleMixesVoiceWithMediaChangedNotification:(id)a3;
- (void)_handleNeedsManualInCallSoundsChangedNotification:(id)a3;
- (void)_handlePreferredRouteChangedNotification:(id)a3;
- (void)_handleReceptionistSessionChangedNotification:(id)a3;
- (void)_handleReceptionistStateChangedNotification:(id)a3;
- (void)_handleRelayCallingChanged;
- (void)_handleResetCallStateNotification:(id)a3;
- (void)_handleRingingCallStatusChangeForHostedCall:(id)a3;
- (void)_handleScreeningAnnouncementHasFinishedChangedNotification:(id)a3;
- (void)_handleScreeningChangedNotification:(id)a3;
- (void)_handleSendingCallStatusChangeForHostedCall:(id)a3;
- (void)_handleSupportsDTMFUpdatesChangedNotification:(id)a3;
- (void)_handleSupportsEmergencyFallbackChangedNotification:(id)a3;
- (void)_handleSystemVolumeDidChangeNotification:(id)a3;
- (void)_handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3;
- (void)_handleTUCallTTYTypeChangedNotification:(id)a3;
- (void)_handleUpdateRemoteUplinkMutedChangedNotification:(id)a3;
- (void)_launchICSForScreeningIfNeeded;
- (void)_launchInCallApplicationForCall:(id)a3 withURL:(id)a4;
- (void)_launchInCallApplicationForExistingCall;
- (void)_launchInCallApplicationForIncomingCallIfNecessary:(id)a3;
- (void)_launchInCallApplicationForOutgoingCallIfNecessary:(id)a3;
- (void)_launchInCallApplicationInTheBackground;
- (void)_performSmartHoldingRequest:(id)a3 completion:(id)a4;
- (void)_sendClientsReceivedCallDTMFUpdate:(id)a3 forCall:(id)a4;
- (void)_updateBluetoothAudioFormatIfNecessaryDueToMVMChange:(BOOL)a3;
- (void)_updateRoutesForDisconnectedCall;
- (void)activateInCallUIWithActivityContinuationIdentifier:(id)a3;
- (void)addPendingCallInfo:(id)a3;
- (void)answerCallWithRequest:(id)a3;
- (void)callHistoryManager:(id)a3 recentCallRequestedFor:(id)a4 withStartDate:(id)a5 avMode:(unint64_t)a6;
- (void)clearPendingCallInfoForUUID:(id)a3;
- (void)containsRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5 reply:(id)a6;
- (void)customSandboxedURLGreetingForAccountUUID:(id)a3 withCompletion:(id)a4;
- (void)deactivatePTTBargeCalls;
- (void)dealloc;
- (void)defaultGreeting:(id)a3;
- (void)deleteCustomGreetingForAccountUUID:(id)a3;
- (void)dialWithRequest:(id)a3 displayContext:(id)a4;
- (void)dialWithRequest:(id)a3 reply:(id)a4;
- (void)didChangeFaceTimeCallingAvailability;
- (void)didChangeRelayCallingCapabilities;
- (void)disconnectAllCalls;
- (void)disconnectBargeCall:(id)a3 bundleIdentifier:(id)a4 reason:(int)a5;
- (void)disconnectBargeCallsWithBundleIdentifier:(id)a3 reason:(int)a4;
- (void)disconnectCallWithUniqueProxyIdentifier:(id)a3;
- (void)disconnectCurrentCall;
- (void)disconnectCurrentCallAndActivateHeld;
- (void)downloadAndGenerateTranslationDisclosures;
- (void)enteredBackgroundForAllCalls;
- (void)enteredForegroundForCallWithUniqueProxyIdentifier:(id)a3;
- (void)fetchAnonymousXPCEndpoint:(id)a3;
- (void)fetchCurrentCallUpdates:(id)a3;
- (void)filterStatusForAddresses:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)groupCallWithUniqueProxyIdentifier:(id)a3 withOtherCallWithUniqueProxyIdentifier:(id)a4;
- (void)handleReceivedCallDTMFUpdate:(id)a3 forCall:(id)a4;
- (void)handleVolumeUpdateFromPairedDevice:(float)a3;
- (void)holdCallWithUniqueProxyIdentifier:(id)a3;
- (void)invalidate;
- (void)isRestrictedExclusivelyByScreenTime:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5 reply:(id)a6;
- (void)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5 reply:(id)a6;
- (void)joinConversationWithRequest:(id)a3;
- (void)localRoutesByUniqueIdentifier:(id)a3;
- (void)pairedHostDeviceRoutesByUniqueIdentifier:(id)a3;
- (void)performAnswerCall:(id)a3 withRequest:(id)a4;
- (void)performAnswerCallAsAudioDowngrade:(id)a3 withRequest:(id)a4;
- (void)performAnswerCallAsVideoUpgrade:(id)a3 withRequest:(id)a4;
- (void)performDisconnectCall:(id)a3;
- (void)performDisconnectCurrentCall;
- (void)performDisconnectCurrentCallAndActivateHeld:(BOOL)a3;
- (void)performEndActiveAndAnswerCall:(id)a3 withRequest:(id)a4;
- (void)performEndHeldAndAnswerCall:(id)a3 withRequest:(id)a4;
- (void)performGroupCall:(id)a3 withCall:(id)a4;
- (void)performHoldActiveAndAnswerCall:(id)a3 withRequest:(id)a4;
- (void)performHoldCall:(id)a3;
- (void)performPullCallFromClientUsingHandoffActivityUserInfo:(id)a3 completion:(id)a4;
- (void)performPullHostedCallsFromPairedHostDevice;
- (void)performPullRelayingCallsFromClientAndUpdateEndpoint:(BOOL)a3 updateExpectedDestination:(BOOL)a4 onlyIfNeedsEndpointConversationRelaySupport:(BOOL)a5;
- (void)performPushHostedCallsToDestination:(id)a3;
- (void)performPushRelayingCallsToHostWithSourceIdentifier:(id)a3;
- (void)performRecordingRequest:(id)a3 completion:(id)a4;
- (void)performSendMMIOrUSSDCodeWithRequest:(id)a3;
- (void)performSetLiveVoicemailUnavailableReason:(int64_t)a3 forCall:(id)a4;
- (void)performSmartHoldingRequest:(id)a3 completion:(id)a4;
- (void)performSwapCalls;
- (void)performTranslationRequest:(id)a3 completion:(id)a4;
- (void)performUngroupCall:(id)a3;
- (void)performUnholdCall:(id)a3;
- (void)performUpdateCallWithProxy:(id)a3;
- (void)pickLocalRouteWithUniqueIdentifier:(id)a3 shouldWaitUntilAvailable:(BOOL)a4;
- (void)pickPairedHostDeviceRouteWithUniqueIdentifier:(id)a3 shouldWaitUntilAvailable:(BOOL)a4;
- (void)playDTMFToneForCallWithUniqueProxyIdentifier:(id)a3 key:(unsigned __int8)a4;
- (void)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)propertiesChangedForCall:(id)a3;
- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4;
- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)a3 reply:(id)a4;
- (void)pullHostedCallsFromPairedHostDevice;
- (void)pullPersistedChannel:(id)a3;
- (void)pullRelayingCallsFromClient;
- (void)pullRelayingGFTCallsFromClientIfNecessary;
- (void)pushHostedCallsToDestination:(id)a3;
- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)a3;
- (void)registerAnonymousXPCEndpoint:(id)a3;
- (void)registerForSecureMicEvents;
- (void)reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:(id)a3;
- (void)requestInitialState:(id)a3;
- (void)requestVideoUpgradeForCallWithUniqueProxyIdentifier:(id)a3;
- (void)resetClientCallProvisionalStates;
- (void)saveCustomSandboxedURLGreeting:(id)a3 forAccountUUID:(id)a4;
- (void)screenUpdate:(id)a3 withProvider:(id)a4 callSource:(id)a5 callUUID:(id)a6 screeningType:(int64_t)a7;
- (void)screenWithRequest:(id)a3;
- (void)sendAutomaticNameAndPhotoUsingDialRequestIfPossible:(id)a3;
- (void)sendAutomaticNameAndPhotoUsingJoinRequestIfPossible:(id)a3;
- (void)sendCaptionsMessageToClientForCall:(id)a3 withCaptions:(id)a4;
- (void)sendClientsNotificationName:(id)a3 forCall:(id)a4 userInfo:(id)a5;
- (void)sendHardPauseDigitsForCallWithUniqueProxyIdentifier:(id)a3;
- (void)sendMMIOrUSSDCodeWithRequest:(id)a3;
- (void)sendNameAndPhotoToHandles:(id)a3 fromID:(id)a4;
- (void)sendNameAndPhotoUsingDialRequest:(id)a3;
- (void)sendNameAndPhotoUsingJoinRequest:(id)a3;
- (void)sendReceptionistReply:(id)a3;
- (void)setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:(id)a3 bluetoothAudioFormat:(int64_t)a4;
- (void)setCallDelegatesIfNeeded:(id)a3;
- (void)setClientCapabilities:(id)a3;
- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)a3;
- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)a3;
- (void)setDownlinkMuted:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setEmergencyMediaItems:(id)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setHasEmergencyVideoStream:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setIsSendingVideo:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setLiveVoicemailUnavailableReason:(int64_t)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setLocalDeviceVolume:(float)a3;
- (void)setMixesVoiceWithMedia:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setPairedHostDeviceVolume:(float)a3;
- (void)setRelayMessagingController:(id)a3;
- (void)setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:(id)a3 size:(CGSize)a4;
- (void)setRemoteVideoPresentationStateForCallWithUniqueProxyIdentifier:(id)a3 presentationState:(int)a4;
- (void)setScreenShareAttributesForCallWithUniqueProxyIdentifier:(id)a3 attributes:(id)a4;
- (void)setSharingScreen:(BOOL)a3 attributes:(id)a4 forCallWithUniqueProxyIdentifier:(id)a5;
- (void)setSharingScreen:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setTTYType:(int)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)setUplinkMuted:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4;
- (void)shouldAllowRingingCallStatusIndicator:(BOOL)a3;
- (void)shouldRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5 reply:(id)a6;
- (void)shouldSuppressInCallStatusBar:(BOOL)a3;
- (void)startReceptionistReply;
- (void)startTransmissionForBargeCall:(id)a3 sourceIsHandsfreeAccessory:(BOOL)a4;
- (void)stopTransmissionForBargeCall:(id)a3 sourceIsHandsfreeAccessory:(BOOL)a4;
- (void)swapCalls;
- (void)ungroupCallWithUniqueProxyIdentifier:(id)a3;
- (void)unholdCallWithUniqueProxyIdentifier:(id)a3;
- (void)updateCallWithProxy:(id)a3;
- (void)updateClientsWithCall:(id)a3;
- (void)updateClientsWithCaptionsResults:(id)a3 forCall:(id)a4;
- (void)updateClientsWithFrequency:(id)a3 inDirection:(int)a4 forCalls:(id)a5;
- (void)updateClientsWithMeterLevel:(float)a3 inDirection:(int)a4 forCalls:(id)a5;
- (void)validateIMAVPush:(id)a3 reply:(id)a4;
- (void)willEnterBackgroundForAllCalls;
- (void)willRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
@end

@implementation CSDCallStateController

- (id)currentProxyCalls
{
  v2 = [(CSDCallStateController *)self callContainer];
  v3 = [v2 _allCalls];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [TUProxyCall proxyCallWithCall:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (CSDCallContainer)callContainer
{
  v2 = [(CSDCallStateController *)self callController];
  v3 = [v2 callContainer];

  return v3;
}

+ (id)automaticNameAndPhotoQueue
{
  if (qword_1006ACE78 != -1)
  {
    sub_10047A154();
  }

  v3 = qword_1006ACE70;

  return v3;
}

- (BOOL)_nameAndPhotoSharingEnabled
{
  v2 = +[IMMeCardSharingStateController sharedInstance];
  v3 = [v2 sharingEnabled];

  return v3;
}

- (void)deactivatePTTBargeCalls
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for active PushToTalk barge calls to deactivate.", buf, 2u);
  }

  v4 = [(CSDCallStateController *)self callContainer];
  v5 = [v4 bargeCallsPassingTest:&stru_10061E0F0];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 deactivate];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)multipleCallsActiveOrHeld
{
  v2 = [(CSDCallStateController *)self callContainer];
  v3 = [v2 countOfCallsPassingTest:&stru_10061E0D0];

  return v3 > 1;
}

- (void)downloadAndGenerateTranslationDisclosures
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];

  v5 = [v4 objectForKey:@"ATP"];
  v6 = [v5 isEqualToString:@"1"];

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "skip downloading and generating translation disclosure in ATP environment", buf, 2u);
    }
  }

  else
  {
    *buf = 0;
    v12 = buf;
    v13 = 0x3032000000;
    v14 = sub_1000286D4;
    v15 = sub_1000328F4;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000326FC;
    v10[3] = &unk_10061DD80;
    v10[4] = self;
    v10[5] = buf;
    v8 = [[_LTLanguageStatus alloc] initWithTaskHint:9 useDedicatedMachPort:0 observations:v10];
    v9 = *(v12 + 5);
    *(v12 + 5) = v8;

    _Block_object_dispose(buf, 8);
  }
}

- (void)_updateRoutesForDisconnectedCall
{
  v3 = [(CSDCallStateController *)self localRouteController];
  [v3 clearState];

  v4 = [(CSDCallStateController *)self pairedHostDeviceRouteController];
  [v4 clearState];
}

- (CSDCallStateController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4 chManager:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(TUFeatureFlags);
  v12 = objc_alloc_init(CSDSharedConversationServerBag);
  v13 = [(CSDCallStateController *)self initWithQueue:v10 assistantServicesObserver:v9 featureFlags:v11 serverBag:v12 chManager:v8];

  return v13;
}

- (CSDCallStateController)init
{
  v46.receiver = self;
  v46.super_class = CSDCallStateController;
  v2 = [(CSDCallStateController *)&v46 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_handleCallStatusChangedNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_handleCallStatusChangedNotification:" name:TUCallCenterVideoCallStatusChangedNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_handleDowngradedToAudioNotification:" name:TUCallDowngradedToAudioNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleGroupUUIDChangedNotification:" name:TUCallGroupUUIDChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_handleGroupUUIDChangedNotification:" name:TUCallConversationChangedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_handleScreeningChangedNotification:" name:TUCallCenterIsScreeningChangedNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_handleReceptionistStateChangedNotification:" name:TUCallCenterReceptionistStateChangedNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_handleLastReceptionistMessageChangedNotification:" name:TUCallCenterLastReceptionistMessageChangedNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_handleReceptionistSessionChangedNotification:" name:TUCallCenterReceptionistSessionChangedNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"_handleScreeningAnnouncementHasFinishedChangedNotification:" name:TUCallScreeningDidFinishAnnouncementNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"_handleConversationGroupUUIDChangedNotification:" name:TUCallConversationGroupUUIDChangedNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"_handleCSDRelayIDSActiveAccountsChanged:" name:@"CSDRelayIDSActiveAccountsChanged" object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_handleCSDRelayPairedDeviceConnectedNotification:" name:@"CSDRelayPairedDeviceConnectedNotification" object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"_handlePreferredRouteChangedNotification:" name:@"CSDRouteManagerPreferredRouteChangedNotification" object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"_handleCallStartedOutgoingNotification:" name:@"CSDCallHasStartedOutgoingChangedNotification" object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_handleCallStartedConnectingNotification:" name:TUCallCenterCallStartedConnectingNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v2 selector:"_handleCallConnectedNotification:" name:TUCallCenterCallConnectedNotification object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v2 selector:"_handleNeedsManualInCallSoundsChangedNotification:" name:TUCallNeedsManualInCallSoundsChangedNotification object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 addObserver:v2 selector:"_handleCallWantsHoldMusicChangedNotification:" name:TUCallCenterCallWantsHoldMusicChangedNotification object:0];

    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:v2 selector:"_handleCallShouldSuppressRingtoneChangedNotification:" name:TUCallShouldSuppressRingingChangedNotification object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v2 selector:"_handleCallModelChangedNotification:" name:TUCallModelChangedNotification object:0];

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v2 selector:"_handleResetCallStateNotification:" name:TUCallCenterResetCallStateNotification object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v2 selector:"_handleHardPauseStateChangedNotification:" name:TUCallHardPauseDigitsStateChangedNotification object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v2 selector:"_handleCallIsUsingBasebandChangedNotification:" name:TUCallIsUsingBasebandChangedNotification object:0];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v2 selector:"_handleInvitationSentNotification:" name:TUCallCenterCallInvitationSentNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v2 selector:"_handleCallDisplayContextChangedNotification:" name:TUCallDisplayContextChangedNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v2 selector:"_handleUpdateRemoteUplinkMutedChangedNotification:" name:TUCallRemoteUplinkMutedChangedNotification object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v2 selector:"_handleCallRemoteParticipantHandlesChangedNotification:" name:TUCallRemoteParticipantHandlesChangedNotification object:0];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v2 selector:"_handleTUCallSupportsTTYWithVoiceChangedNotification:" name:TUCallSupportsTTYWithVoiceChangedNotification object:0];

    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v2 selector:"_handleTUCallTTYTypeChangedNotification:" name:TUCallTTYTypeChangedNotification object:0];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v2 selector:"_handleMixesVoiceWithMediaChangedNotification:" name:TUCallMixesVoiceWithMediaChangedNotification object:0];

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v2 selector:"_handleFailureExpectedChangedNotification:" name:TUCallCenterIsFailureExpectedChangedNotification object:0];

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v2 selector:"_handleSupportsEmergencyFallbackChangedNotification:" name:TUCallCenterSupportsEmergencyFallbackChangedNotification object:0];

    v36 = +[NSNotificationCenter defaultCenter];
    [v36 addObserver:v2 selector:"_handleSupportsDTMFUpdatesChangedNotification:" name:TUCallSupportsDTMFUpdatesChangedNotification object:0];

    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v2 selector:"_handleCallIsEmergencyChangedNotification:" name:TUCallCenterIsEmergencyChangedNotification object:0];

    if (MGGetBoolAnswer())
    {
      v38 = +[NSNotificationCenter defaultCenter];
      [v38 addObserver:v2 selector:"_handleCarPlayControlEventNotification:" name:TUCarPlayHardwareControlEventNotification object:0];
    }

    v39 = +[NSNotificationCenter defaultCenter];
    [v39 addObserver:v2 selector:"_handleAudioSessionInterruptionNotification:" name:AVAudioSessionInterruptionNotification object:0];

    v40 = +[NSNotificationCenter defaultCenter];
    [v40 addObserver:v2 selector:"_handleSystemVolumeDidChangeNotification:" name:TUAudioSystemActiveCategoryVolumeChangedNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1001BFE60, @"BluetoothTakeAudioNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v42 = +[NSNotificationCenter defaultCenter];
    [v42 addObserver:v2 selector:"_handleLocaleChange:" name:NSCurrentLocaleDidChangeNotification object:0];

    v43 = objc_alloc_init(NSMutableDictionary);
    pendingCallInfoDict = v2->_pendingCallInfoDict;
    v2->_pendingCallInfoDict = v43;
  }

  return v2;
}

- (CSDCallStateController)initWithQueue:(id)a3 assistantServicesObserver:(id)a4 featureFlags:(id)a5 serverBag:(id)a6 chManager:(id)a7
{
  v13 = a3;
  v110 = a4;
  v111 = a5;
  v109 = a6;
  v112 = a7;
  v14 = [(CSDCallStateController *)self init];
  if (v14)
  {
    dispatch_assert_queue_V2(v13);
    objc_storeStrong(&v14->_queue, a3);
    objc_storeStrong(&v14->_featureFlags, a5);
    objc_storeStrong(&v14->_serverBag, a6);
    v15 = [[CSDClientManager alloc] initWithSerialQueue:v14->_queue];
    clientManager = v14->_clientManager;
    v14->_clientManager = v15;

    v17 = +[NSXPCConnection callServicesClientXPCInterface];
    [(CSDClientManager *)v14->_clientManager setRemoteObjectInterface:v17];

    v18 = +[NSXPCConnection callServicesServerXPCInterface];
    [(CSDClientManager *)v14->_clientManager setExportedInterface:v18];

    [(CSDClientManager *)v14->_clientManager setExportedObject:v14];
    [(CSDClientManager *)v14->_clientManager setRequiredConnectionCapability:@"access-calls"];
    [(CSDClientManager *)v14->_clientManager setInterruptionHandler:&stru_10061DA28];
    v19 = [(CSDCallStateController *)v14 clientInvalidationHandler];
    [(CSDClientManager *)v14->_clientManager setInvalidationHandler:v19];

    queue = v14->_queue;
    v21 = [(CSDClientManager *)v14->_clientManager synchronousExportedObjectProxy];
    v22 = [TUCallCenter sharedInstanceWithQueue:queue server:v21 shouldRegister:0];

    v23 = v14->_clientManager;
    v24 = [v22 callServicesInterface];
    [(CSDClientManager *)v23 addLocalClientObject:v24];

    [v22 registerWithCompletionHandler:0];
    v25 = objc_alloc_init(_TtC13callservicesd25ConversationDialingServer);
    dialingServer = v14->_dialingServer;
    v14->_dialingServer = v25;

    v27 = [[CSDCallHistoryManager alloc] initWithCHManager:v112];
    callHistoryManager = v14->_callHistoryManager;
    v14->_callHistoryManager = v27;

    [(CSDCallHistoryManager *)v14->_callHistoryManager addDelegate:v14 queue:v14->_queue];
    v29 = [[CSDCallHistoryManagerXPCServer alloc] initWithManager:v14->_callHistoryManager];
    callHistoryManagerXPCServer = v14->_callHistoryManagerXPCServer;
    v14->_callHistoryManagerXPCServer = v29;

    v31 = objc_alloc_init(CSDCallProviderManager);
    callProviderManager = v14->_callProviderManager;
    v14->_callProviderManager = v31;

    [(CSDCallProviderManager *)v14->_callProviderManager addDelegate:v14 queue:v14->_queue];
    v33 = [[CSDCallProviderManagerXPCServer alloc] initWithProviderManager:v14->_callProviderManager];
    callProviderManagerXPCServer = v14->_callProviderManagerXPCServer;
    v14->_callProviderManagerXPCServer = v33;

    v35 = [[CSDRelayCallDataSource alloc] initWithCallStateController:v14 queue:v14->_queue];
    relayCallDataSource = v14->_relayCallDataSource;
    v14->_relayCallDataSource = v35;

    v107 = objc_alloc_init(CPApplicationController);
    v108 = objc_alloc_init(CSDConversationInvitationResolver);
    v37 = [CSDConversationManager alloc];
    v38 = [CSDReportingController sharedInstanceWithQueue:v13];
    v39 = [(CSDConversationManager *)v37 initWithReportingController:v38 cpApplicationController:v107 invitationResolver:v108];

    v40 = [(CSDCallStateController *)v14 featureFlags];
    LODWORD(v37) = [v40 sharePlayInCallsEnabled];

    if (v37)
    {
      v41 = [CSDConversationCallCoordinationManager alloc];
      v42 = [(CSDConversationManager *)v39 sharePlayAvailabilityManager];
      v43 = [(CSDConversationManager *)v39 activitySessionContainerProvider];
      v44 = -[CSDConversationCallCoordinationManager initWithConversationManager:sharePlayAvailabilityManager:compositeContainerProvider:relaySupportEnabled:serverBag:queue:](v41, "initWithConversationManager:sharePlayAvailabilityManager:compositeContainerProvider:relaySupportEnabled:serverBag:queue:", v39, v42, v43, [v111 sharePlayInCallsForRelayEnabled], v109, v13);
      conversationCallCoordinationManager = v14->_conversationCallCoordinationManager;
      v14->_conversationCallCoordinationManager = v44;

      v46 = [(CSDConversationManager *)v39 activitySessionContainerProvider];
      [v46 registerChildProvider:v14->_conversationCallCoordinationManager];
    }

    v47 = [[CSDProviderCallDataSource alloc] initWithCallStateController:v14 queue:v14->_queue assistantServicesObserver:v110 coreTelephonyClient:0 chManager:v112 callSourceManager:0 protectedAppsUtilities:0 conversationManager:v39 communicationTrustScoreDataProvider:0 deviceSupport:0 featureFlags:v111];
    providerCallDataSource = v14->_providerCallDataSource;
    v14->_providerCallDataSource = v47;

    [(CSDProviderCallDataSource *)v14->_providerCallDataSource setCallProviderManager:v14->_callProviderManager];
    [(CSDProviderCallDataSource *)v14->_providerCallDataSource setRelayCallDataSource:v14->_relayCallDataSource];
    v49 = objc_alloc_init(CSDChannelProviderManager);
    channelProviderManager = v14->_channelProviderManager;
    v14->_channelProviderManager = v49;

    [(CSDProviderCallDataSource *)v14->_providerCallDataSource setChannelProviderManager:v14->_channelProviderManager];
    v51 = [CSDCallController alloc];
    v52 = v14->_providerCallDataSource;
    v136[0] = v14->_relayCallDataSource;
    v136[1] = v52;
    v53 = [NSArray arrayWithObjects:v136 count:2];
    v54 = [(CSDCallController *)v51 initWithDataSources:v53 queue:v14->_queue];
    callController = v14->_callController;
    v14->_callController = v54;

    objc_initWeak(&location, v14);
    v132[0] = _NSConcreteStackBlock;
    v132[1] = 3221225472;
    v132[2] = sub_1001C0D60;
    v132[3] = &unk_10061DA50;
    objc_copyWeak(&v134, &location);
    v106 = v22;
    v133 = v106;
    [(CSDCallController *)v14->_callController setCallChanged:v132];
    v56 = objc_alloc_init(CSDRelayCallDelegate);
    relayCallDelegate = v14->_relayCallDelegate;
    v14->_relayCallDelegate = v56;

    [(CSDRelayCallDelegate *)v14->_relayCallDelegate setCallStateController:v14];
    v58 = [[CSDProcessObserver alloc] initWithQueue:v14->_queue];
    processObserver = v14->_processObserver;
    v14->_processObserver = v58;

    v60 = [[CSDApplicationInstallationObserver alloc] initWithQueue:v14->_queue];
    applicationInstallationObserver = v14->_applicationInstallationObserver;
    v14->_applicationInstallationObserver = v60;

    v62 = objc_alloc_init(CSDCarPlayManager);
    carPlayManager = v14->_carPlayManager;
    v14->_carPlayManager = v62;

    v130[0] = _NSConcreteStackBlock;
    v130[1] = 3221225472;
    v130[2] = sub_1001C0E9C;
    v130[3] = &unk_10061C9E0;
    objc_copyWeak(&v131, &location);
    [(CSDCarPlayManager *)v14->_carPlayManager setCarPlayScreenConnectionChanged:v130];
    v64 = objc_alloc_init(CSDCallHistoryController);
    callHistoryController = v14->_callHistoryController;
    v14->_callHistoryController = v64;

    v66 = v14->_callHistoryController;
    v67 = [(CSDCallStateController *)v14 providerCallDataSource];
    v68 = [v67 faceTimeProviderDelegate];
    v69 = [v68 firewallManager];
    [(CSDCallHistoryController *)v66 setDelegate:v69];

    v70 = [[CSDCallHistoryControllerXPCServer alloc] initWithCallHistoryController:v14->_callHistoryController];
    callHistoryControllerXPCServer = v14->_callHistoryControllerXPCServer;
    v14->_callHistoryControllerXPCServer = v70;

    [(CSDCallStateController *)v14 _handleRelayCallingChanged];
    v72 = [[CSDRecentsController alloc] initWithQueue:v14->_queue chManager:v112 providerManager:v14->_callProviderManager];
    recentsController = v14->_recentsController;
    v14->_recentsController = v72;

    v74 = +[CSDRouteController makeLocalRouteController];
    localRouteController = v14->_localRouteController;
    v14->_localRouteController = v74;

    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_1001C0F68;
    v127[3] = &unk_10061A600;
    objc_copyWeak(&v129, &location);
    v76 = v14;
    v128 = v76;
    [(CSDRouteController *)v14->_localRouteController setRoutesDidChangeHandler:v127];
    v125[0] = _NSConcreteStackBlock;
    v125[1] = 3221225472;
    v125[2] = sub_1001C1220;
    v125[3] = &unk_10061DAA0;
    objc_copyWeak(&v126, &location);
    [(CSDRouteController *)v14->_localRouteController setPickedRouteDidChangeHandler:v125];
    v123[0] = _NSConcreteStackBlock;
    v123[1] = 3221225472;
    v123[2] = sub_1001C133C;
    v123[3] = &unk_10061DAA0;
    objc_copyWeak(&v124, &location);
    [(CSDRouteController *)v14->_localRouteController setRouteWasPickedHandler:v123];
    v121[0] = _NSConcreteStackBlock;
    v121[1] = 3221225472;
    v121[2] = sub_1001C1458;
    v121[3] = &unk_10061DAA0;
    objc_copyWeak(&v122, &location);
    [(CSDRouteController *)v14->_localRouteController setTimedOutPickingRouteHandler:v121];
    v77 = objc_alloc_init(CSDDialingInterventionController);
    interventionController = v76->_interventionController;
    v76->_interventionController = v77;

    v79 = +[CSDRouteController makePairedHostDeviceRouteController];
    pairedHostDeviceRouteController = v76->_pairedHostDeviceRouteController;
    v76->_pairedHostDeviceRouteController = v79;

    v119[0] = _NSConcreteStackBlock;
    v119[1] = 3221225472;
    v119[2] = sub_1001C1574;
    v119[3] = &unk_10061A740;
    objc_copyWeak(&v120, &location);
    [(CSDRouteController *)v76->_pairedHostDeviceRouteController setRoutesDidChangeHandler:v119];
    v117[0] = _NSConcreteStackBlock;
    v117[1] = 3221225472;
    v117[2] = sub_1001C1750;
    v117[3] = &unk_10061DAA0;
    objc_copyWeak(&v118, &location);
    [(CSDRouteController *)v76->_pairedHostDeviceRouteController setPickedRouteDidChangeHandler:v117];
    v115[0] = _NSConcreteStackBlock;
    v115[1] = 3221225472;
    v115[2] = sub_1001C186C;
    v115[3] = &unk_10061DAA0;
    objc_copyWeak(&v116, &location);
    [(CSDRouteController *)v76->_pairedHostDeviceRouteController setRouteWasPickedHandler:v115];
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_1001C19B4;
    v113[3] = &unk_10061DAA0;
    objc_copyWeak(&v114, &location);
    [(CSDRouteController *)v76->_pairedHostDeviceRouteController setTimedOutPickingRouteHandler:v113];
    [(CSDClientManager *)v14->_clientManager startListeningOnMachServiceWithName:@"com.apple.telephonyutilities.callservicesdaemon.callstatecontroller"];
    [TUCallCapabilities addDelegate:v76 queue:v14->_queue];
    v81 = objc_alloc_init(TUHardwareControlsBroadcaster);
    hardwareControlsBroadcaster = v76->_hardwareControlsBroadcaster;
    v76->_hardwareControlsBroadcaster = v81;

    v83 = [[CSDSpeechAssetManager alloc] initWithQueue:v14->_queue];
    speechAssetManager = v76->_speechAssetManager;
    v76->_speechAssetManager = v83;

    featureFlags = v14->_featureFlags;
    if (TUCallScreeningActivatable())
    {
      v86 = [[CSDAnsweringMachineController alloc] initWith:v76 speechAssetManager:v76->_speechAssetManager];
      answeringMachineController = v76->_answeringMachineController;
      v76->_answeringMachineController = v86;

      v88 = +[_TtC13callservicesd19CSDAnalyticsManager sharedInstance];
      [v88 setAnalyticsManagerProvider:v76];
    }

    v89 = [(CSDCallStateController *)v76 featureFlags];
    v90 = [v89 callRecordingEnabled];

    if (v90)
    {
      v91 = [[CSDCallRecordingControllerFacade alloc] initWithQueue:v13 speechAssetManager:v76->_speechAssetManager];
      callRecordingControllerFacade = v76->_callRecordingControllerFacade;
      v76->_callRecordingControllerFacade = v91;
    }

    v93 = [(CSDCallStateController *)v76 featureFlags];
    v94 = [v93 audioCallTranslationEnabled];

    if (v94)
    {
      v95 = [[CSDCallTranslationController alloc] initWithQueue:v13 speechAssetManager:v76->_speechAssetManager];
      callTranslationController = v76->_callTranslationController;
      v76->_callTranslationController = v95;
    }

    v97 = [(CSDCallStateController *)v76 featureFlags];
    v98 = [v97 waitOnHoldEnabled];

    if (v98)
    {
      v99 = objc_alloc_init(CSDSmartHoldingController);
      smartHoldingController = v76->_smartHoldingController;
      v76->_smartHoldingController = v99;
    }

    v101 = [(CSDCallStateController *)v76 featureFlags];
    v102 = [v101 sessionBasedMutingEnabled];

    if (v102)
    {
      v103 = [[CSDAudioStateHandler alloc] initWith:v14->_queue delegate:v76];
      audioStateHandler = v76->_audioStateHandler;
      v76->_audioStateHandler = v103;
    }

    objc_destroyWeak(&v114);
    objc_destroyWeak(&v116);
    objc_destroyWeak(&v118);
    objc_destroyWeak(&v120);
    objc_destroyWeak(&v122);
    objc_destroyWeak(&v124);
    objc_destroyWeak(&v126);

    objc_destroyWeak(&v129);
    objc_destroyWeak(&v131);

    objc_destroyWeak(&v134);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)invalidate
{
  v2 = [(CSDCallStateController *)self clientManager];
  [v2 invalidate];
}

- (void)handleVolumeUpdateFromPairedDevice:(float)a3
{
  v5 = [(CSDCallStateController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C1BA8;
  v6[3] = &unk_100619EF8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (id)clientInvalidationHandler
{
  objc_initWeak(&location, self);
  clientInvalidationHandler = self->_clientInvalidationHandler;
  if (!clientInvalidationHandler)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001C1D34;
    v8[3] = &unk_10061AEF8;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_clientInvalidationHandler;
    self->_clientInvalidationHandler = v4;

    objc_destroyWeak(&v9);
    clientInvalidationHandler = self->_clientInvalidationHandler;
  }

  v6 = objc_retainBlock(clientInvalidationHandler);
  objc_destroyWeak(&location);

  return v6;
}

- (void)dealloc
{
  v3 = [(CSDCallStateController *)self callHistoryManagerXPCServer];
  [v3 invalidate];

  v4 = [(CSDCallStateController *)self callProviderManagerXPCServer];
  [v4 invalidate];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v7.receiver = self;
  v7.super_class = CSDCallStateController;
  [(CSDCallStateController *)&v7 dealloc];
}

- (void)registerForSecureMicEvents
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C2198;
  block[3] = &unk_100619D38;
  block[4] = self;
  if (qword_1006ACE68 != -1)
  {
    dispatch_once(&qword_1006ACE68, block);
  }
}

- (NSNumber)shouldHandleSecureMicrophoneEvents
{
  shouldHandleSecureMicrophoneEvents = self->_shouldHandleSecureMicrophoneEvents;
  if (!shouldHandleSecureMicrophoneEvents)
  {
    v4 = [NSNumber numberWithBool:MGGetBoolAnswer()];
    v5 = self->_shouldHandleSecureMicrophoneEvents;
    self->_shouldHandleSecureMicrophoneEvents = v4;

    shouldHandleSecureMicrophoneEvents = self->_shouldHandleSecureMicrophoneEvents;
  }

  return shouldHandleSecureMicrophoneEvents;
}

- (CSDCallFilterController)callFilterController
{
  v2 = [(CSDCallStateController *)self providerCallDataSource];
  v3 = [v2 callFilterController];

  return v3;
}

- (BOOL)shouldRelayToOtherDevices
{
  v2 = +[TUCallCapabilities supportsRelayingToOtherDevices];
  if (v2)
  {

    LOBYTE(v2) = +[TUCallCapabilities areRelayCallingFeaturesEnabled];
  }

  return v2;
}

- (void)_handleRelayCallingChanged
{
  v3 = +[TUCallCapabilities areRelayCallingFeaturesEnabled];
  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Relay capabilities enabled", buf, 2u);
    }

    [(CSDCallStateController *)self _requestCallStateFromHost];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Relay capabilities disabled", buf, 2u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [(CSDCallStateController *)self callContainer];
    v7 = [v6 callsHostedElsewhere];

    v8 = [v7 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          v13 = sub_100004778();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v12;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Disconnecting relaying call because relay calling is no longer enabled: %@", buf, 0xCu);
          }

          [v12 setLocallyDisconnectedWithReasonIfNone:8 stopConference:1];
          v14 = [(CSDCallStateController *)self relayMessagingController];
          [v14 disconnectMessagingConnectionForCall:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = [(CSDCallStateController *)self callContainer];
    v16 = [v15 callsWithAnEndpointElsewhere];

    v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Disconnecting call being relayed elsewhere because relay calling is no longer enabled: %@", buf, 0xCu);
          }

          v23 = [(CSDCallStateController *)self callCenter];
          [v23 disconnectCall:v21 withReason:8];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }
}

- (void)setRelayMessagingController:(id)a3
{
  v5 = a3;
  if (self->_relayMessagingController != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_relayMessagingController, a3);
    [(CSDCallStateController *)self _requestCallStateFromHost];
    v6 = [(CSDCallStateController *)self relayMessagingController];
    [v6 sendResetStateMessageToClient];

    v5 = v7;
  }
}

- (BOOL)shouldHandleCarPlayControlEvents
{
  v5 = [(CSDCallStateController *)self callContainer];
  v6 = [v5 currentAudioAndVideoCalls];
  v7 = [v6 count];
  if (!v7)
  {
    v2 = [(CSDCallStateController *)self callContainer];
    v3 = [v2 bargeCalls];
    if (![v3 count])
    {
      v9 = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  v8 = [(CSDCallStateController *)self carPlayManager];
  v9 = [v8 isCarPlayConnected];

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (void)_handleLocaleChange:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C2A38;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleAudioSessionInterruptionNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C2CF4;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleSystemVolumeDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callContainer];
  v6 = [v5 callPassingTest:&stru_10061DAE0];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKey:@"Volume"];
    [v8 floatValue];
    v10 = v9;

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting paired host device volume: %f", &v14, 0xCu);
    }

    v12 = [(CSDCallStateController *)self relayMessagingController];
    *&v13 = v10;
    [v12 sendUpdateSystemVolume:v13];
  }
}

- (void)_handleCarPlayControlEventNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C30D4;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_answerIncomingCall:(id)a3 withBehavior:(int64_t)a4
{
  v6 = a3;
  v7 = [[TUAnswerRequest alloc] initWithCall:v6];
  [v7 setSourceIdentifier:TUCallSourceIdentifierCarPlay];
  [v7 setBehavior:a4];
  [v7 setDowngradeToAudio:1];
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Answering incoming call: %@, %@", &v10, 0x16u);
  }

  v9 = [(CSDCallStateController *)self callCenter];
  [v9 answerWithRequest:v7];
}

- (void)_answerIncomingCallAsConversation:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callCenter];
  v6 = [v5 activeConversationForCall:v4];

  v7 = [[TUJoinConversationRequest alloc] initWithConversation:v6 originatingUIType:45];
  [v7 setVideoEnabled:{objc_msgSend(v4, "isVideo")}];
  [v7 setVideo:{objc_msgSend(v4, "isVideo")}];
  v8 = [v4 uniqueProxyIdentifierUUID];
  [v7 setUUID:v8];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Answering incoming call as conversation: %@, %@", &v12, 0x16u);
  }

  v10 = [(CSDCallStateController *)self callCenter];
  v11 = [v10 joinConversationWithConversationRequest:v7];
}

- (void)_launchInCallApplicationForIncomingCallIfNecessary:(id)a3
{
  v4 = a3;
  v5 = +[CSDCallCapabilities sharedInstance];
  if (![v5 _supportslaunchingInCallApplicationForIncomingCall])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [(CSDCallStateController *)self _shouldLaunchInCallApplicationForProviderOfCall:v4];

  if (v6)
  {
    v5 = +[NSURL faceTimeLaunchForIncomingCallURL];
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Opening URL for incoming call: %@", &v8, 0xCu);
    }

    [(CSDCallStateController *)self _launchInCallApplicationForCall:v4 withURL:v5];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_launchInCallApplicationInTheBackground
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Requesting to background launch InCallService", buf, 2u);
  }

  v4 = +[NSURL faceTimeNeedsBackgroundLaunchURL];
  v3 = v4;
  TUOpenURLWithCompletion();
}

- (void)_launchInCallApplicationForOutgoingCallIfNecessary:(id)a3
{
  v4 = a3;
  v5 = +[CSDCallCapabilities sharedInstance];
  if (![v5 _supportslaunchingInCallApplicationForIncomingCall])
  {
LABEL_13:

    goto LABEL_14;
  }

  v6 = [(CSDCallStateController *)self _shouldLaunchInCallApplicationForProviderOfCall:v4];

  if (v6)
  {
    v5 = +[NSURL faceTimeShowInCallUIURL];
    if (([v4 isConversation] & 1) == 0)
    {
      v7 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 isExpanseProvider];

        if (v8)
        {
          v9 = sub_100004778();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 138412290;
            v12 = v5;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not opening URL %@ because outgoing call is provided by SharePlay.", &v11, 0xCu);
          }

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Opening URL: %@ for outgoing call", &v11, 0xCu);
    }

    [(CSDCallStateController *)self _launchInCallApplicationForCall:v4 withURL:v5];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_launchInCallApplicationForExistingCall
{
  v2 = +[CSDCallCapabilities sharedInstance];
  v3 = [v2 _supportslaunchingInCallApplicationForIncomingCall];

  if (v3)
  {
    v5 = +[NSURL faceTimeShowInCallUIURL];
    v4 = v5;
    TUOpenURLWithCompletion();
  }
}

- (void)_launchInCallApplicationForCall:(id)a3 withURL:(id)a4
{
  v5 = a3;
  v8 = a4;
  v6 = v5;
  v7 = v8;
  TUOpenURLWithCompletion();
}

- (BOOL)_shouldLaunchInCallApplicationForProviderOfCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callCenter];
  v6 = [v5 activeConversationForCall:v4];

  v7 = [(CSDCallStateController *)self featureFlags];
  v8 = 1;
  if ([v7 groupFacetimeAsAServiceEnabled] && v6)
  {
    v9 = [v6 provider];
    v8 = [v9 isDefaultProvider];
  }

  return v8;
}

- (void)_endProxyCallsForConnectingVideoCall
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(CSDCallStateController *)self callContainer];
  v4 = [v3 currentCalls];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138412290;
    v13 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v10 isHostedOnCurrentDevice] & 1) == 0)
        {
          v11 = sub_100004778();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v13;
            v19 = v10;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Disconnecting proxy call because a video call started connecting: %@", buf, 0xCu);
          }

          v12 = [(CSDCallStateController *)self callCenter];
          [v12 disconnectCall:v10];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)updateClientsWithCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating clients with call: %@", buf, 0xCu);
  }

  v6 = [(CSDCallStateController *)self currentProxyCalls];
  v7 = [TUProxyCall proxyCallWithCall:v4];
  v8 = [(CSDCallStateController *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C46A4;
  v12[3] = &unk_10061A450;
  v12[4] = self;
  v13 = v7;
  v14 = v4;
  v15 = v6;
  v9 = v6;
  v10 = v4;
  v11 = v7;
  dispatch_async(v8, v12);
}

- (id)eligibleCallsByFilteringCalls:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([(CSDCallStateController *)self isCallEligible:v14 forClient:v7, v17])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (BOOL)shouldFilterClient:(id)a3
{
  v4 = [a3 isRemote];
  if (v4)
  {
    v5 = [(CSDCallStateController *)self featureFlags];
    v6 = [v5 filterGFTaaSCalls];

    LOBYTE(v4) = v6;
  }

  return v4;
}

- (BOOL)shouldSendCall:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CSDCallStateController *)self shouldFilterClient:v7])
  {
    v8 = [(CSDCallStateController *)self callCenter];
    v9 = [v8 activeConversationForCall:v6];

    v10 = [v9 provider];
    v11 = [v10 isTelephonyWithSharePlayProvider];

    if (v11)
    {
      v12 = 1;
LABEL_20:

      goto LABEL_21;
    }

    v13 = [v9 provider];
    v14 = [v13 identifier];

    if (!v14)
    {
      if (![v6 isConversation])
      {
        v14 = 0;
        goto LABEL_18;
      }

      v18 = [v6 providerContext];
      v14 = [v18 objectForKeyedSubscript:TUConversationProviderIdentifierKey];

      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (([TUConversationProvider matchesDefaultProviderIdentifier:v14]& 1) == 0)
    {
      v15 = +[CSDConversationProviderManager sharedInstance];
      v16 = [v15 providerIdentifiersForClient:v7];

      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "providerIdentifiers: %@ client: %@", &v20, 0x16u);
      }

      v12 = [v16 count] && (objc_msgSend(v16, "containsObject:", v14) & 1) != 0;
      goto LABEL_19;
    }

LABEL_18:
    v12 = 1;
LABEL_19:

    goto LABEL_20;
  }

  v12 = 1;
LABEL_21:

  return v12;
}

- (BOOL)isCallEligible:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v8 = [v7 capabilities];
  v9 = [v8 wantsToScreenCalls];

  v20 = v9;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001C5508;
  v16[3] = &unk_10061D3F0;
  v16[4] = &v17;
  sub_100004AA4(v7, @"access-screen-calls", v16, 0, "[CSDCallStateController isCallEligible:forClient:]");
  v10 = [(CSDCallStateController *)self featureFlags];
  if ([v10 nearbyFaceTimeEnabled])
  {
    v9 = [v7 capabilities];
    if ([v9 excludeFullNearbyCalls])
    {
      v11 = [v6 nearbyMode] != 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = [(CSDCallStateController *)self featureFlags];
  if ([v12 callScreeningEnabledM3] && objc_msgSend(v7, "isRemote") && objc_msgSend(v6, "isScreening") && (v18[3] & 1) == 0 && objc_msgSend(v6, "status") != 5 && objc_msgSend(v6, "status") != 6)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v13 = [v7 isRemote];
    if (v13 && ([v6 provider], v9 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v9, "supportsCurrentPlatform")))
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v14 = [(CSDCallStateController *)self shouldSendCall:v6 forClient:v7]&& v11;
      if (!v13)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:

  _Block_object_dispose(&v17, 8);
  return v14;
}

- (void)updateClientsWithFrequency:(id)a3 inDirection:(int)a4 forCalls:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDCallStateController *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C5604;
  v13[3] = &unk_10061A068;
  v16 = a4;
  v13[4] = self;
  v14 = v9;
  v15 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

- (void)updateClientsWithMeterLevel:(float)a3 inDirection:(int)a4 forCalls:(id)a5
{
  v8 = a5;
  v9 = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C58C0;
  block[3] = &unk_100619F20;
  v13 = a4;
  block[4] = self;
  v12 = v8;
  v14 = a3;
  v10 = v8;
  dispatch_async(v9, block);
}

- (void)updateClientsWithCaptionsResults:(id)a3 forCall:(id)a4
{
  v5 = a3;
  v6 = [(CSDCallStateController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5B24;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)resetClientCallProvisionalStates
{
  v3 = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C5C78;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)sendClientsNotificationName:(id)a3 forCall:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDCallStateController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C5E08;
  v15[3] = &unk_10061A450;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (void)handleReceivedCallDTMFUpdate:(id)a3 forCall:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(CSDCallStateController *)self _sendClientsReceivedCallDTMFUpdate:v8 forCall:v6];
  if ([v6 isHostedOnCurrentDevice])
  {
    v7 = [(CSDCallStateController *)self relayMessagingController];
    [v7 sendReceivedDTMFUpdateForCall:v6 dtmfUpdate:v8];
  }
}

- (void)_sendClientsReceivedCallDTMFUpdate:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C60E8;
  block[3] = &unk_100619E58;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_handleCallDisplayContextChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendUpdateCallDisplayContextMessageToClientForCall:v7];
  }
}

- (void)_handleUpdateRemoteUplinkMutedChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendUpdateRemoteUplinkMutedCallMessageToClientForCall:v7];
  }
}

- (void)_handleTUCallSupportsTTYWithVoiceChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  v8 = [v4 object];
  if ([v8 isHostedOnCurrentDevice])
  {
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall:v8];
  }
}

- (void)_handleTUCallTTYTypeChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  v8 = [v4 object];
  if ([v8 isHostedOnCurrentDevice])
  {
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 sendSetTTYTypeCallMessageForCall:v8 ttyType:{objc_msgSend(v8, "ttyType")}];
  }
}

- (void)_handleMixesVoiceWithMediaChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = v4;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v8, 0x16u);
  }

  [(CSDCallStateController *)self _updateBluetoothAudioFormatIfNecessaryDueToMVMChange:1];
}

- (void)_handleFailureExpectedChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  v8 = [v4 object];
  if ([v8 isHostedOnCurrentDevice])
  {
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 sendUpdateFailureExpectedMessageToClientForCall:v8];
  }
}

- (void)_handleSupportsEmergencyFallbackChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  v8 = [v4 object];
  if ([v8 isHostedOnCurrentDevice])
  {
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 sendUpdateSupportsEmergencyFallbackToClientForCall:v8];
  }
}

- (void)_handleSupportsDTMFUpdatesChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  v8 = [v4 object];
  if ([v8 isHostedOnCurrentDevice])
  {
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 sendUpdateSupportsDTMFUpdatesToClientForCall:v8];
  }
}

- (void)_handleGroupUUIDChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling groupUUIDChangedNotification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  v8 = v7;
  if (v7 && [v7 isHostedOnCurrentDevice])
  {
    [(CSDCallStateController *)self _handleGroupUUIDChangeForHostedCall:v8];
  }
}

- (void)_handleScreeningChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendScreeningChangedForCall:v7];
  }

  if ([v7 isScreening])
  {
    [(CSDCallStateController *)self _launchInCallApplicationInTheBackground];
  }
}

- (void)_handleReceptionistStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendReceptionistStateChangedForCall:v7];
  }

  if ([v7 isScreening] && objc_msgSend(v7, "receptionistState") == 3)
  {
    [(CSDCallStateController *)self _launchInCallApplicationForIncomingCallIfNecessary:v7];
  }
}

- (void)_handleLastReceptionistMessageChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendLastReceptionistMessageChangedForCall:v7];
  }
}

- (void)_handleReceptionistSessionChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendReceptionistSessionChangedForCall:v7];
  }
}

- (void)_handleScreeningAnnouncementHasFinishedChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendAnnouncementHasFinishedChangedForCall:v7];
  }
}

- (void)_handleConversationGroupUUIDChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling conversationGroupUUIDChangedNotification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if (v7)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendUpdateRemoteCallStateMessageToClient:1];
  }
}

- (void)_handleCallStatusChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v27, 0xCu);
  }

  v7 = [v4 object];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 provider];
    if ([v9 isFaceTimeProvider])
    {
      v10 = [v8 isActive];

      if (v10)
      {
        [(CSDCallStateController *)self registerForSecureMicEvents];
      }
    }

    else
    {
    }

    v11 = [v8 status];
    if (v11 <= 2)
    {
      if (v11 == 1)
      {
        if ([v8 isHostedOnCurrentDevice])
        {
          [(CSDCallStateController *)self _handleActiveCallStatusChangeForHostedCall:v8];
          v18 = [(CSDCallStateController *)self featureFlags];
          v19 = [v18 isRemoteCallControlOnWatchEnabled];

          if (v19)
          {
            v20 = [(CSDCallStateController *)self relayMessagingController];
            v21 = [(CSDCallStateController *)self localRouteController];
            v22 = [v21 routesByUniqueIdentifier];
            v23 = [v22 allValues];
            [v20 sendUpdateRoutesMessageToClientForRoutes:v23];
          }
        }
      }

      else if (v11 == 2 && [v8 isHostedOnCurrentDevice])
      {
        [(CSDCallStateController *)self _handleHeldCallStatusChangeForHostedCall:v8];
      }
    }

    else
    {
      switch(v11)
      {
        case 3:
          v15 = [v8 isAppleIntelligenceEnabled];

          if (v15)
          {
            [(CSDCallStateController *)self downloadAndGenerateTranslationDisclosures];
          }

          if ([v8 isHostedOnCurrentDevice])
          {
            [(CSDCallStateController *)self _handleSendingCallStatusChangeForHostedCall:v8];
          }

          if ([v8 isOutgoing])
          {
            if ([v8 isEndpointOnCurrentDevice])
            {
              v16 = [v8 provider];
              v17 = [v16 supportsCurrentPlatform];

              if (v17)
              {
                if ([v8 isConversation])
                {
                  [(CSDCallStateController *)self _launchInCallApplicationForOutgoingConversationIfNecessary:v8];
                }

                else
                {
                  [(CSDCallStateController *)self _launchInCallApplicationForOutgoingCallIfNecessary:v8];
                }
              }
            }
          }

          break;
        case 6:
          if ([v8 isHostedOnCurrentDevice])
          {
            [(CSDCallStateController *)self _handleDisconnectedCallStatusChangeForHostedCall:v8];
            if ([v8 isVoicemail])
            {
              [(CSDCallStateController *)self _handleDisconnectedCallStatusChangeForVoicemailCall];
            }
          }

          [(CSDCallStateController *)self _updateRoutesForDisconnectedCall];
          break;
        case 4:
          v12 = [v8 isAppleIntelligenceEnabled];

          if (v12)
          {
            [(CSDCallStateController *)self downloadAndGenerateTranslationDisclosures];
          }

          v13 = [v8 provider];
          v14 = [v13 supportsCurrentPlatform];

          if (v14)
          {
            [(CSDCallStateController *)self _launchInCallApplicationForIncomingCallIfNecessary:v8];
          }

          if ([v8 isHostedOnCurrentDevice])
          {
            [(CSDCallStateController *)self _handleRingingCallStatusChangeForHostedCall:v8];
          }

          break;
      }
    }
  }

  v24 = [(CSDCallStateController *)self localRouteController];
  v25 = [(CSDCallStateController *)self callContainer];
  v26 = [v25 currentAudioAndVideoCalls];
  [v24 updateStateWithCalls:v26];
}

- (void)_handleCallStartedOutgoingNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v12, 0xCu);
  }

  v7 = [v4 object];
  v8 = [v7 provider];
  v9 = [v8 isTinCanProvider];

  v10 = +[CSDRelayConferenceInterface sharedInstance];
  v11 = [v7 uniqueProxyIdentifier];
  [v10 updateConferenceForIdentifier:v11 isUsingBaseband:objc_msgSend(v7 disableAudio:"isUsingBaseband") isTinCan:{0, v9}];
}

- (void)_handleCallStartedConnectingNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v8, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    [(CSDCallStateController *)self _handleConnectingCallStatusChangeForHostedCall:v7];
  }

  if ([v7 isVideo])
  {
    [(CSDCallStateController *)self _endProxyCallsForConnectingVideoCall];
  }
}

- (void)_handleCallConnectedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v8, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    [(CSDCallStateController *)self _handleConnectedCallStatusChangeForHostedCall:v7];
  }
}

- (void)_handleNeedsManualInCallSoundsChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendNeedsManualInCallSoundsChangeMessageToClientForCall:v7];
  }
}

- (void)_handleCallWantsHoldMusicChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice] && (objc_msgSend(v7, "wantsHoldMusic") & 1) == 0)
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendResetWantsHoldMusicMessageToClientForCall:v7];
  }
}

- (void)_handleCallShouldSuppressRingtoneChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 shouldSuppressRingtone] && ((objc_msgSend(v7, "isHostedOnCurrentDevice") & 1) != 0 || (objc_msgSend(v7, "ringtoneSuppressedRemotely") & 1) == 0))
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendSuppressRingtoneMessageForCall:v7];
    goto LABEL_10;
  }

  if (([v7 shouldSuppressRingtone] & 1) == 0 && objc_msgSend(v7, "isHostedOnCurrentDevice"))
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendUpdateRemoteCallStateMessageToClient];
LABEL_10:
  }
}

- (void)_handleCallModelChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendUpdateCallModelMessageToClientForCall:v7];
  }
}

- (void)_handleResetCallStateNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v8, 0xCu);
  }

  v7 = [(CSDCallStateController *)self relayMessagingController];
  [v7 sendResetStateMessageToClient];
}

- (void)_handleHardPauseStateChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v11, 0xCu);
  }

  v7 = [v4 object];
  v8 = [(CSDCallStateController *)self relayMessagingController];
  v9 = [v7 hardPauseDigitsState];
  v10 = [v7 hardPauseDigits];
  [v8 sendHardPauseAvailabilityMessageToClientForState:v9 digits:v10];
}

- (void)_handleCallIsUsingBasebandChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v12, 0xCu);
  }

  v7 = [v4 object];
  if (([v7 isEndpointOnCurrentDevice] & 1) == 0 && objc_msgSend(v7, "hasStartedOutgoing"))
  {
    v8 = [v7 provider];
    v9 = [v8 isTinCanProvider];

    v10 = +[CSDRelayConferenceInterface sharedInstance];
    v11 = [v7 uniqueProxyIdentifier];
    [v10 updateConferenceForIdentifier:v11 isUsingBaseband:objc_msgSend(v7 disableAudio:"isUsingBaseband") isTinCan:{0, v9}];
  }
}

- (void)_handleFaceTimeAvailabilityChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
    }

    v7 = [(CSDCallStateController *)self relayMessagingController];
    v8 = [(CSDCallStateController *)self callProviderManager];
    [v7 sendUpdateCallContextMessageToClientForCallProviderManager:v8];
  }
}

- (void)_handleInvitationSentNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendInvitationSentMessageToClientForCall:v7];
  }
}

- (void)_handleCSDRelayIDSActiveAccountsChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C84A8;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleCSDRelayPairedDeviceConnectedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C860C;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handlePreferredRouteChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C8810;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_handleCallIsEmergencyChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = v4;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  v8 = [v4 object];
  if ([v8 isHostedOnCurrentDevice])
  {
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 sendUpdateRemoteCallStateMessageToClient:1];
  }
}

- (BOOL)_nonRingingCallExistsOnThisDevice
{
  v3 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v3);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(CSDCallStateController *)self callContainer];
  v5 = [v4 currentAudioAndVideoCalls];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 status] != 4 && objc_msgSend(v10, "isEndpointOnCurrentDevice"))
        {
          v12 = sub_100004778();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [(CSDCallStateController *)self callContainer];
            v14 = [v13 _allCalls];
            *buf = 138412546;
            v21 = v10;
            v22 = 2112;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Non-ringing call found on device: %@. All calls: %@", buf, 0x16u);
          }

          v11 = 1;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_14:

  return v11;
}

- (void)_handleRingingCallStatusChangeForHostedCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[CSDRouteManager sharedInstance];
  v7 = [v6 isAnyVehicleRouteAvailableForCall:v4];

  v8 = +[PDRRegistry sharedInstance];
  v9 = [v8 getActivePairedDevice];

  if (v9)
  {
    v10 = +[CSDRouteManager sharedInstance];
    v11 = [v10 isEligibleRouteAvailableForCall:v4];

    v12 = [v4 provider];
    v13 = [v12 isTinCanProvider];

    if (v13)
    {
      v14 = [v9 supportsCapability:674176742];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = 1;
LABEL_6:
  if (![v4 isConversation])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_15;
  }

  if ([v4 isConversation])
  {
    v15 = [(CSDCallStateController *)self featureFlags];
    if ([v15 conversationOneToOneModeEnabled])
    {
      v16 = [v4 remoteParticipantHandles];
      v17 = [v16 count];

      if (v17 == 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if ([v4 isConversation])
  {
    v19 = [(CSDCallStateController *)self featureFlags];
    v20 = [v19 gftOnWatch];

    v18 = v20 ^ 1;
  }

  else
  {
    v18 = 1;
  }

LABEL_15:
  if (!-[CSDCallStateController shouldRelayToOtherDevices](self, "shouldRelayToOtherDevices") || v7 & 1 | (([v4 hasRelaySupport:1] & 1) == 0) || ((objc_msgSend(v4, "isTTY") | v18) & 1) != 0 || ((v14 ^ 1) & 1) != 0)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138413826;
      v24 = v4;
      v25 = 1024;
      v26 = ![(CSDCallStateController *)self shouldRelayToOtherDevices];
      v27 = 1024;
      v28 = [v4 hasRelaySupport:1] ^ 1;
      v29 = 1024;
      v30 = v7;
      v31 = 1024;
      v32 = [v4 isTTY];
      v33 = 1024;
      v34 = [v4 isConversation];
      v35 = 1024;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring ringing call status change for call %@ because relay calling is disabled (%d) or this call doesn't support relaying call state (%d) or a vehicle route is available (%d) or call is TTY (%d) or call is conversation (%d) or shouldRelayTinCanCall (%d)", &v23, 0x30u);
    }
  }

  else
  {
    v22 = [(CSDCallStateController *)self relayMessagingController];
    [v22 sendIncomingCallMessageToClientForCall:v4 cannotBeAnswered:-[CSDCallStateController _nonRingingCallExistsOnThisDevice](self cannotRelayAudioOrVideoOnPairedDevice:{"_nonRingingCallExistsOnThisDevice"), v11}];
  }
}

- (void)_handleGroupUUIDChangeForHostedCall:(id)a3
{
  v8 = a3;
  v4 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v4);

  if (([v8 isConversation] & 1) != 0 || (-[CSDCallStateController featureFlags](self, "featureFlags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "gftOnWatch"), v5, v6))
  {
    if ([v8 isHostedOnCurrentDevice])
    {
      v7 = [(CSDCallStateController *)self relayMessagingController];
      [v7 sendUpdateRemoteCallStateMessageToClient:1];
    }
  }
}

- (void)_handleSendingCallStatusChangeForHostedCall:(id)a3
{
  v8 = a3;
  v4 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v4);

  if (![v8 isConversation] || (-[CSDCallStateController featureFlags](self, "featureFlags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "gftOnWatch"), v5, v6))
  {
    v7 = [(CSDCallStateController *)self relayMessagingController];
    [v7 sendCallDialedMessageToClientForCall:v8];
  }
}

- (void)_handleConnectingCallStatusChangeForHostedCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(__CFString *)v4 isEndpointOnCurrentDevice]&& ([(__CFString *)v4 isOutgoing]& 1) == 0)
  {
    v6 = [(CSDCallStateController *)self relayMessagingController];
    [v6 sendCallAnsweredElsewhereMessageToClientForCall:v4];

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ([(__CFString *)v4 isScreening])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v12 = 138412546;
      v13 = v8;
      v14 = 1024;
      v15 = [(__CFString *)v4 receptionistState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "call.isScreening: %@, call.receptionistState: %d", &v12, 0x12u);
    }

    if (([(__CFString *)v4 isScreening]& 1) == 0 && ![(__CFString *)v4 receptionistState])
    {
      v9 = +[CSDRelayConferenceInterface sharedInstance];
      v10 = [(__CFString *)v4 uniqueProxyIdentifier];
      [v9 stopConferenceForIdentifier:v10];
    }
  }

  if ([(__CFString *)v4 status]== 6)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not sending out call started connecting message because call is already disconnected: %@", &v12, 0xCu);
    }
  }

  else
  {
    v11 = [(CSDCallStateController *)self relayMessagingController];
    [v11 sendCallStartedConnectingMessageToClientForCall:v4];
  }
}

- (void)_handleConnectedCallStatusChangeForHostedCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([v4 status] == 6)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not sending out call connected message because call is already disconnected: %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = [(CSDCallStateController *)self relayMessagingController];
    [v6 sendCallConnectedMessageToClientForCall:v4];
  }
}

- (void)_handleActiveCallStatusChangeForHostedCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallStateController *)self relayMessagingController];
  [v6 sendUpdateRemoteCallStateMessageToClient];

  v8 = +[CSDRelayConferenceInterface sharedInstance];
  v7 = [v4 uniqueProxyIdentifier];

  [v8 setConferenceActiveForIdentifier:v7];
}

- (void)_handleCallRemoteParticipantHandlesChangedNotification:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  v7 = [v4 object];
  if ([v7 isHostedOnCurrentDevice])
  {
    v8 = [(CSDCallStateController *)self relayMessagingController];
    [v8 sendUpdateRemoteCallStateMessageToClient];
  }
}

- (void)_handleHeldCallStatusChangeForHostedCall:(id)a3
{
  v4 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDCallStateController *)self relayMessagingController];
  [v5 sendUpdateRemoteCallStateMessageToClient];
}

- (void)_handleDisconnectedCallStatusChangeForVoicemailCall
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [NSString stringWithUTF8String:"com.apple.telephonyutilities.callservicesdaemon.voicemailcallended"];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending voicemail call ended notification %@", &v4, 0xCu);
  }

  notify_post("com.apple.telephonyutilities.callservicesdaemon.voicemailcallended");
}

- (void)_handleDisconnectedCallStatusChangeForHostedCall:(id)a3
{
  v10 = a3;
  v4 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDCallStateController *)self relayMessagingController];
  [v5 sendNeedsManualInCallSoundsChangeMessageToClientForCall:v10];

  v6 = [(CSDCallStateController *)self relayMessagingController];
  [v6 sendCallDisconnectedMessageToClientForCall:v10];

  v7 = [v10 isEndpointOnCurrentDevice];
  v8 = +[CSDRelayConferenceInterface sharedInstance];
  v9 = [v10 uniqueProxyIdentifier];
  if (v7)
  {
    [v8 stopConferenceForIdentifier:v9];
  }

  else
  {
    [v8 prepareToStopConferenceForIdentifier:v9];
  }
}

- (void)_updateBluetoothAudioFormatIfNecessaryDueToMVMChange:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallStateController *)self featureFlags];
  v7 = [v6 expanseBTSwitchingEnabled];

  if (!v7)
  {
    return;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [(CSDCallStateController *)self callContainer];
  v9 = [v8 currentAudioAndVideoCalls];

  v10 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (!v10)
  {
LABEL_10:

    goto LABEL_21;
  }

  v11 = v10;
  v12 = *v39;
LABEL_4:
  v13 = 0;
  while (1)
  {
    if (*v39 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = *(*(&v38 + 1) + 8 * v13);
    if ([v14 mixesVoiceWithMedia])
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (!v11)
      {
        goto LABEL_10;
      }

      goto LABEL_4;
    }
  }

  v15 = v14;

  if (!v15)
  {
LABEL_21:
    [(CSDCallStateController *)self setCurrentlyTrackedA2DPRouteIdentifier:0];
    [0 setBluetoothAudioFormat:0];
    return;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [(CSDCallStateController *)self localRouteController];
  v17 = [v16 routesByUniqueIdentifier];
  v18 = [v17 allValues];

  v19 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (!v19)
  {
    goto LABEL_20;
  }

  v20 = v19;
  v21 = *v35;
  while (2)
  {
    for (i = 0; i != v20; i = i + 1)
    {
      if (*v35 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v34 + 1) + 8 * i);
      if ([v23 isCurrentlyPicked])
      {
        v24 = v23;

        if (!v24)
        {
          goto LABEL_39;
        }

        if (v3)
        {
          v3 = [v24 isBluetoothLE];
        }

        if ((([v24 isA2DPRoute] & 1) != 0 || v3) && objc_msgSend(v15, "bluetoothAudioFormat") != 1)
        {
          [v15 setBluetoothAudioFormat:1];
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Picked route %@ changed to A2DP, so muting", buf, 0xCu);
          }

          [v15 setUplinkMuted:1];
        }

        v26 = [(CSDCallStateController *)self currentlyTrackedA2DPRouteIdentifier];
        if ([v26 length])
        {
          v27 = [v24 uniqueIdentifier];
          v28 = [(CSDCallStateController *)self currentlyTrackedA2DPRouteIdentifier];
          if (([v27 isEqualToString:v28] & 1) == 0 && !objc_msgSend(v24, "isA2DPRoute"))
          {
            v30 = [v24 isBluetoothLE];

            if ((v30 & 1) == 0)
            {
              v31 = sub_100004778();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [(CSDCallStateController *)self currentlyTrackedA2DPRouteIdentifier];
                v33 = [v24 uniqueIdentifier];
                *buf = 138412546;
                v43 = v32;
                v44 = 2112;
                v45 = v33;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Picked route changed from %@ to %@, setting call's bluetooth audio format back to automatic", buf, 0x16u);
              }

              [v15 setBluetoothAudioFormat:0];
            }

            goto LABEL_36;
          }
        }

LABEL_36:
        if ([v24 isA2DPRoute] & 1) != 0 || (objc_msgSend(v24, "isBluetoothLE"))
        {
          v29 = [v24 uniqueIdentifier];
          [(CSDCallStateController *)self setCurrentlyTrackedA2DPRouteIdentifier:v29];
        }

        else
        {
          [(CSDCallStateController *)self setCurrentlyTrackedA2DPRouteIdentifier:0];
        }

        goto LABEL_42;
      }
    }

    v20 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_20:

LABEL_39:
  [(CSDCallStateController *)self setCurrentlyTrackedA2DPRouteIdentifier:0];
  [v15 setBluetoothAudioFormat:0];
LABEL_42:
}

- (id)outgoingCallFromDialRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 hostOnCurrentDevice];
  v6 = off_100616690;
  if (!v5)
  {
    v6 = off_100616698;
  }

  v7 = [objc_alloc(*v6) initOutgoingWithDialRequest:v4];

  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v7];
  [(CSDCallStateController *)self propertiesChangedForCall:v7];

  return v7;
}

- (id)outgoingCallFromJoinRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callCenter];
  [v4 setHostedOnCurrentDevice:{objc_msgSend(v5, "_shouldRelayJoinConversationRequest:", v4) ^ 1}];

  v6 = [v4 hostedOnCurrentDevice];
  v7 = off_100616690;
  if (!v6)
  {
    v7 = off_100616698;
  }

  v8 = [objc_alloc(*v7) initOutgoingWithJoinConversationRequest:v4];
  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v8];
  [(CSDCallStateController *)self propertiesChangedForCall:v8];

  return v8;
}

- (void)setCallDelegatesIfNeeded:(id)a3
{
  v19 = a3;
  v4 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDCallStateController *)self callCenter];
  v6 = [v5 callServicesInterface];
  [v6 registerCall:v19];

  [v19 setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(CSDCallStateController *)self relayCallDataSource];
    [v19 setDataSource:v7];

    v8 = v19;
    v9 = [v8 relayDelegate];

    if (!v9)
    {
      v10 = [(CSDCallStateController *)self relayCallDelegate];
      [v8 setRelayDelegate:v10];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(CSDCallStateController *)self providerCallDataSource];
    [v19 setDataSource:v11];

    v12 = v19;
    v13 = [v12 providerCallDelegate];

    if (!v13)
    {
      v14 = [(CSDCallStateController *)self providerCallDataSource];
      [v12 setProviderCallDelegate:v14];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [(CSDCallStateController *)self providerCallDataSource];
    [v19 setDataSource:v15];

    v16 = v19;
    v17 = [v16 providerBargeCallDelegate];

    if (!v17)
    {
      v18 = [(CSDCallStateController *)self providerCallDataSource];
      [v16 setProviderBargeCallDelegate:v18];
    }
  }
}

- (id)performDialCall:(id)a3 displayContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[SOSUtilities shouldBlockNonEmergencyCalls])
  {
    v8 = [(CSDCallStateController *)self callCenter];
    v9 = [v8 _isEmergencyDialRequest:v6];

    if ((v9 & 1) == 0)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dial request rejected due to SOS being active", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  v10 = [(CSDCallStateController *)self callCenter];
  v11 = [v10 frontmostCall];

  if (v11 && [v11 isEmergency])
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 0;
      v13 = "Dial request rejected due to active emergency call";
      v14 = &v24;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, v14, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v15 = [(CSDCallStateController *)self featureFlags];
  if ([v15 nudityDetectionEnabled])
  {
    v16 = [(CSDCallStateController *)self interventionController];
    v17 = [v16 interveneIfNeededForDialRequest:v6];

    if (v17)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 0;
        v13 = "Detected a previous sensitive content interaction with this dial, not dialing";
        v14 = &v23;
        goto LABEL_11;
      }

LABEL_12:

LABEL_18:
      v18 = 0;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v18 = [(CSDCallStateController *)self outgoingCallFromDialRequest:v6];
  v19 = [v18 dateAnsweredOrDialed];
  if (v19)
  {
    [v18 setDateAnsweredOrDialed:v19];
  }

  else
  {
    v20 = [v6 dateDialed];
    [v18 setDateAnsweredOrDialed:v20];
  }

  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v18];
  if (v18)
  {
    [(CSDCallStateController *)self sendAutomaticNameAndPhotoUsingDialRequestIfPossible:v6];
    [v18 dialWithRequest:v6 displayContext:v7];
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100479588();
    }
  }

LABEL_25:

  return v18;
}

+ (void)sanitizeJoinConversationRequest:(id)a3
{
  v3 = a3;
  v4 = +[CSDConversationProviderManager sharedInstance];
  v5 = [v3 provider];
  v6 = [v4 serviceForProvider:v5];

  v30 = v6;
  if (v6)
  {
    v7 = [v3 provider];
    v8 = [v7 isDefaultProvider];

    if (v8)
    {
      v9 = +[NSMutableSet set];
      v10 = +[NSMutableSet set];
      v11 = [v6 allAliases];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1001CA6E0;
      v35[3] = &unk_10061DD30;
      v12 = v9;
      v36 = v12;
      [v11 enumerateObjectsUsingBlock:v35];

      v13 = [v3 remoteMembers];
      v14 = [v13 count];

      if (v14 == 1)
      {
        v15 = [v3 remoteMembers];
        v16 = [v15 anyObject];
        [v10 addObject:v16];
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = [v3 remoteMembers];
        v17 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v29 = v3;
          v19 = *v32;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              v22 = [v21 handle];
              v23 = [v22 normalizedValue];
              v24 = [v12 containsObject:v23];

              if (v24)
              {
                v25 = sub_100004778();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v38 = v21;
                  v39 = 2112;
                  v40 = v30;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing %@ from sanitized join request since it matches a local alias on the ids service: %@", buf, 0x16u);
                }
              }

              else
              {
                [v10 addObject:v21];
              }
            }

            v18 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v18);
          v3 = v29;
        }
      }

      [v3 setRemoteMembers:v10];
      if ([v3 avMode] == 1)
      {
        v26 = [v3 mergedRemoteMembers];
        if ([v26 count] <= 1)
        {
        }

        else
        {
          v27 = [v3 supportsAVMode:2];

          if (v27)
          {
            v28 = sub_100004778();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting join request to TUConversationAVModeVideo from Audio since this is a GFT conversation", buf, 2u);
            }

            [v3 setAvMode:2];
            [v3 setVideoEnabled:0];
          }
        }
      }
    }
  }
}

- (id)performJoinConversation:(id)a3
{
  v4 = a3;
  [objc_opt_class() sanitizeJoinConversationRequest:v4];
  v5 = [(CSDCallStateController *)self callContainer];
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 callWithCallUUID:v7];

  v9 = [(CSDCallStateController *)self featureFlags];
  if ([v9 nudityDetectionEnabled])
  {
    v10 = [(CSDCallStateController *)self interventionController];
    v11 = [v10 interveneIfNeededForJoinRequest:v4];

    if (v11)
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Detected a previous sensitive content interaction with this dial, not dialing", &v21, 2u);
      }

      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (v8)
  {
    [(CSDCallStateController *)self _launchInCallApplicationForAnsweringCallIfNecessary:v8];
  }

  else
  {
    v8 = [(CSDCallStateController *)self outgoingCallFromJoinRequest:v4];
    [(CSDCallStateController *)self setCallDelegatesIfNeeded:v8];
  }

  [(CSDCallStateController *)self sendAutomaticNameAndPhotoUsingJoinRequestIfPossible:v4];
  v14 = [v4 translationRequestConfiguration];

  if (v14)
  {
    v15 = [TUCallTranslationStartRequest alloc];
    v16 = [v4 translationRequestConfiguration];
    v17 = [v15 initWithCall:v8 configuration:v16];

    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "translation request: %@", &v21, 0xCu);
    }

    v19 = [(CSDCallStateController *)self callTranslationController];
    [v19 performRequest:v17 forCall:v8 completion:&stru_10061DDA0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 joinConversationWithRequest:v4];
  }

  v8 = v8;
  v13 = v8;
LABEL_17:

  return v13;
}

- (void)performHoldCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDCallStateController *)self callContainer];
    v7 = [v6 currentAudioAndVideoCalls];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v8 = [v4 callGroupUUID];

  if (v8)
  {
    v9 = [(CSDCallStateController *)self callContainer];
    v10 = [v4 callGroupUUID];
    v11 = [v9 callsWithGroupUUID:v10];
  }

  else
  {
    v13 = v4;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  v12 = [v4 dataSource];
  [v12 holdCalls:v11 whileUnholdingCalls:&__NSArray0__struct];
}

- (void)performUnholdCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDCallStateController *)self callContainer];
    v7 = [v6 currentAudioAndVideoCalls];
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v8 = [v4 callGroupUUID];

  if (v8)
  {
    v9 = [(CSDCallStateController *)self callContainer];
    v10 = [v4 callGroupUUID];
    v11 = [v9 callsWithGroupUUID:v10];
  }

  else
  {
    v13 = v4;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  v12 = [v4 dataSource];
  [v12 holdCalls:&__NSArray0__struct whileUnholdingCalls:v11];
}

- (void)performGroupCall:(id)a3 withCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDCallStateController *)self callContainer];
    v10 = [v9 currentAudioAndVideoCalls];
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v11 = [v7 callGroupUUID];

  v12 = [v6 callGroupUUID];

  if (v11)
  {
    if (v12)
    {
      v13 = [(CSDCallStateController *)self callContainer];
      v14 = [v6 callGroupUUID];
      v15 = [v13 callsWithGroupUUID:v14];
    }

    else
    {
      v27 = v6;
      v15 = [NSArray arrayWithObjects:&v27 count:1];
    }

    v20 = [(CSDCallStateController *)self callContainer];
    v21 = [v7 callGroupUUID];
    v18 = [v20 callsWithGroupUUID:v21];
  }

  else
  {
    if (v12)
    {
      v16 = [(CSDCallStateController *)self callContainer];
      v17 = [v6 callGroupUUID];
      v18 = [v16 callsWithGroupUUID:v17];

      v26 = v7;
      v19 = &v26;
    }

    else
    {
      v25 = v7;
      v18 = [NSArray arrayWithObjects:&v25 count:1];
      v24 = v6;
      v19 = &v24;
    }

    v15 = [NSArray arrayWithObjects:v19 count:1, v24];
  }

  v22 = [v15 firstObject];
  v23 = [v22 dataSource];
  [v23 groupCalls:v15 withCalls:v18];
}

- (void)performUngroupCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDCallStateController *)self callContainer];
    v7 = [v6 currentAudioAndVideoCalls];
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v8 = [v4 callGroupUUID];

  if (v8)
  {
    v9 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(CSDCallStateController *)self callContainer];
    v11 = [v10 currentCalls];

    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          if (v16 != v4)
          {
            v17 = [*(*(&v21 + 1) + 8 * v15) callGroupUUID];
            v18 = [v4 callGroupUUID];
            v19 = [v17 isEqual:v18];

            if (v19)
            {
              [v9 addObject:v16];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v20 = [v4 dataSource];
    [v20 ungroupCall:v4 fromOtherCallsInGroup:v9];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to performUngroupCall because the call is not grouped", buf, 2u);
    }
  }
}

- (void)performSwapCalls
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDCallStateController *)self callContainer];
    v5 = [v4 currentAudioAndVideoCalls];
    *buf = 138412290;
    *v41 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v6 = [(CSDCallStateController *)self callContainer];
  v7 = [v6 callsPassingTest:&stru_10061DDC0];

  v8 = [(CSDCallStateController *)self callContainer];
  v9 = [v8 callsPassingTest:&stru_10061DDE0];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v36 + 1) + 8 * i) model];
        v16 = [v15 supportsHolding];

        if (!v16)
        {
          v17 = 1;
          goto LABEL_13;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_13:

  if ([v10 count] && (!objc_msgSend(v9, "count") ? (v18 = 1) : (v18 = v17), (v18 & 1) == 0))
  {
    v19 = objc_alloc_init(CSDCallDataSourceMap);
    v30 = v10;
    [(CSDCallDataSourceMap *)v19 addCalls:v10 forIdentifier:@"callsToHold"];
    v31 = v9;
    [(CSDCallDataSourceMap *)v19 addCalls:v9 forIdentifier:@"callsToUnhold"];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = [(CSDCallDataSourceMap *)v19 dataSources];
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v33;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v32 + 1) + 8 * j);
          v28 = [(CSDCallDataSourceMap *)v19 callsForDataSource:v27 identifier:@"callsToHold"];
          v29 = [(CSDCallDataSourceMap *)v19 callsForDataSource:v27 identifier:@"callsToUnhold"];
          [v27 holdCalls:v28 whileUnholdingCalls:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v24);
    }

    v10 = v30;
    v9 = v31;
  }

  else
  {
    v19 = sub_100004778();
    if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v10 count] == 0;
      v21 = [v9 count];
      *buf = 67109632;
      *v41 = v20;
      *&v41[4] = 1024;
      *&v41[6] = v21 == 0;
      v42 = 1024;
      v43 = v17;
      _os_log_impl(&_mh_execute_header, &v19->super, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to performSwapCalls because either there is no active call (%d), there is no held call (%d), or an active call exists that cannot be held (%d)", buf, 0x14u);
    }
  }
}

- (void)performAnswerCall:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CSDCallStateController *)self _launchInCallApplicationForAnsweringCallIfNecessary:v6];
  v8 = [v7 endpointIDSDestination];
  if (v8)
  {

LABEL_3:
    v9 = [(CSDCallStateController *)self relayMessagingController];
    [v9 requestAnswerForRequest:v7 forCall:v6];

    goto LABEL_23;
  }

  if (((*(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate + 16))(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate, v6) & 1) == 0)
  {
    v10 = [(CSDCallStateController *)self featureFlags];
    v11 = [v10 isRemoteCallControlOnWatchEnabled];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v12 = [v7 behavior];
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        [(CSDCallStateController *)self performEndHeldAndAnswerCall:v6 withRequest:v7];
      }
    }

    else
    {
      [(CSDCallStateController *)self performEndActiveAndAnswerCall:v6 withRequest:v7];
    }
  }

  else
  {
    switch(v12)
    {
      case 2:
        [(CSDCallStateController *)self performHoldActiveAndAnswerCall:v6 withRequest:v7];
        break;
      case 3:
        [(CSDCallStateController *)self performAnswerCallAsVideoUpgrade:v6 withRequest:v7];
        break;
      case 4:
        [(CSDCallStateController *)self performAnswerCallAsAudioDowngrade:v6 withRequest:v7];
        break;
    }
  }

  [(CSDCallStateController *)self deactivatePTTBargeCalls];
  v13 = [v7 endpointRapportEffectiveIdentifier];
  v14 = [v7 endpointRapportMediaSystemIdentifier];
  if ([v13 length] || objc_msgSend(v14, "length"))
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 uniqueProxyIdentifier];
      v18 = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "An endpointRapportMediaSystemIdentifier=%@ or endpointRapportEffectiveIdentifier=%@ is present on answer request for call with identifier %@ so attempting to pick matching route", &v18, 0x20u);
    }

    v17 = [(CSDCallStateController *)self callCenter];
    [v17 pickRouteForRapportDeviceWithMediaSystemIdentifier:v14 effectiveIdentifier:v13];
  }

LABEL_23:
}

- (id)callWithUniqueProxyIdentifier:(id)a3 fromCallsToAnswer:(id)a4
{
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 uniqueProxyIdentifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)performEndActiveAndAnswerCall:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = v6;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing end active calls and answer ringing call %@ for answer request %@", buf, 0x16u);
  }

  v9 = [v7 uniqueProxyIdentifier];
  if ([v9 length])
  {
    v10 = [(CSDCallStateController *)self callContainer];
    v11 = [v10 audioAndVideoCallsWithStatus:4];

    v12 = [(CSDCallStateController *)self callContainer];
    v13 = [v12 screeningCall];

    if (-[NSObject count](v11, "count") || ([v7 sendToScreening] & 1) != 0 || objc_msgSend(v7, "screeningType") || v13)
    {
      v14 = [(CSDCallStateController *)self callWithUniqueProxyIdentifier:v9 fromCallsToAnswer:v11];
      if (v14 || ([v7 sendToScreening] & 1) != 0 || objc_msgSend(v7, "screeningType") || (objc_msgSend(v13, "uniqueProxyIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", v9), v15, (v16 & 1) != 0))
      {
        if (-[NSObject isEqualToCall:](v14, "isEqualToCall:", v6) & 1) != 0 || ([v7 sendToScreening] & 1) != 0 || objc_msgSend(v7, "screeningType") || (objc_msgSend(v13, "isEqualToCall:", v6))
        {
          v17 = [v6 dataSource];
          if (v17)
          {
            v40 = v7;
            v18 = objc_alloc_init(NSMutableArray);
            v19 = [(CSDCallStateController *)self callContainer];
            v20 = [v19 audioAndVideoCallsWithStatus:1];

            if ([v20 count])
            {
              [v18 addObjectsFromArray:v20];
            }

            v34 = v20;
            v36 = v14;
            v37 = v13;
            v38 = v11;
            v21 = [(CSDCallStateController *)self callContainer];
            v22 = [v21 audioAndVideoCallsWithStatus:3];

            if ([v22 count])
            {
              [v18 addObjectsFromArray:v22];
            }

            v33 = v22;
            v39 = v9;
            v41 = v6;
            [v18 removeObject:v6];
            v23 = objc_alloc_init(CSDCallDataSourceMap);
            v35 = v18;
            [(CSDCallDataSourceMap *)v23 addCalls:v18 forIdentifier:@"callsToDisconnect"];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v24 = [(CSDCallDataSourceMap *)v23 dataSources];
            v25 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v43;
              do
              {
                for (i = 0; i != v26; i = i + 1)
                {
                  if (*v43 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v42 + 1) + 8 * i);
                  if (v29 != v17)
                  {
                    v30 = [(CSDCallDataSourceMap *)v23 callsForDataSource:*(*(&v42 + 1) + 8 * i) identifier:@"callsToDisconnect"];
                    [v29 disconnectCalls:v30 whileHoldingCalls:&__NSArray0__struct andUnholdingCalls:&__NSArray0__struct andUngroupingCalls:&__NSArray0__struct];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v42 objects:v46 count:16];
              }

              while (v26);
            }

            v31 = [(CSDCallDataSourceMap *)v23 callsForDataSource:v17 identifier:@"callsToDisconnect"];
            v7 = v40;
            v6 = v41;
            [v17 answerCall:v41 withRequest:v40 whileDisconnectingActiveCalls:v31];

            v11 = v38;
            v9 = v39;
            v14 = v36;
            v13 = v37;
            v32 = v35;
          }

          else
          {
            v32 = sub_100004778();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_1004796FC();
            }
          }
        }

        else
        {
          v17 = sub_100004778();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100479694();
          }
        }
      }

      else
      {
        v17 = sub_100004778();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10047962C();
        }
      }
    }

    else
    {
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1004795F0();
      }
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100479764();
    }
  }
}

- (void)performEndHeldAndAnswerCall:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing end held calls and answer ringing call %@ for answer request %@", buf, 0x16u);
  }

  v9 = [v7 uniqueProxyIdentifier];
  if ([v9 length])
  {
    v10 = [(CSDCallStateController *)self callContainer];
    v11 = [v10 audioAndVideoCallsWithStatus:4];

    if ([v11 count])
    {
      v12 = [(CSDCallStateController *)self callWithUniqueProxyIdentifier:v9 fromCallsToAnswer:v11];
      v13 = v12;
      if (v12)
      {
        if (([v12 isEqualToCall:v6]& 1) != 0)
        {
          v43 = [v6 dataSource];
          if (v43)
          {
            v38 = v13;
            v14 = objc_alloc_init(NSMutableArray);
            v15 = objc_alloc_init(NSMutableArray);
            v16 = [(CSDCallStateController *)self callContainer];
            v17 = [v16 audioAndVideoCallsWithStatus:1];

            if ([v17 count])
            {
              [v15 addObjectsFromArray:v17];
            }

            v41 = v7;
            v18 = [(CSDCallStateController *)self callContainer];
            v19 = [v18 audioAndVideoCallsWithStatus:2];

            if ([v19 count])
            {
              [v14 addObjectsFromArray:v19];
            }

            v35 = v17;
            v39 = v11;
            v20 = [(CSDCallStateController *)self callContainer];
            v21 = [v20 audioAndVideoCallsWithStatus:3];

            if ([v21 count])
            {
              [v14 addObjectsFromArray:v21];
            }

            v34 = v19;
            v40 = v9;
            [v14 removeObject:v6];
            v42 = v6;
            [v15 removeObject:v6];
            v22 = objc_alloc_init(CSDCallDataSourceMap);
            v37 = v14;
            [(CSDCallDataSourceMap *)v22 addCalls:v14 forIdentifier:@"callsToDisconnect"];
            v36 = v15;
            [(CSDCallDataSourceMap *)v22 addCalls:v15 forIdentifier:@"callsToHold"];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v23 = [(CSDCallDataSourceMap *)v22 dataSources];
            v24 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v45;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v45 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v44 + 1) + 8 * i);
                  if (v28 != v43)
                  {
                    v29 = [(CSDCallDataSourceMap *)v22 callsForDataSource:*(*(&v44 + 1) + 8 * i) identifier:@"callsToDisconnect"];
                    v30 = [(CSDCallDataSourceMap *)v22 callsForDataSource:v28 identifier:@"callsToHold"];
                    [v28 disconnectCalls:v29 whileHoldingCalls:v30 andUnholdingCalls:&__NSArray0__struct andUngroupingCalls:&__NSArray0__struct];
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v44 objects:v48 count:16];
              }

              while (v25);
            }

            v31 = [(CSDCallDataSourceMap *)v22 callsForDataSource:v43 identifier:@"callsToDisconnect"];
            v32 = [(CSDCallDataSourceMap *)v22 callsForDataSource:v43 identifier:@"callsToHold"];
            v7 = v41;
            v6 = v42;
            [v43 answerCall:v42 withRequest:v41 whileDisconnectingHeldCalls:v31 andHoldingCalls:v32];

            v11 = v39;
            v9 = v40;
            v33 = v37;
            v13 = v38;
          }

          else
          {
            v33 = sub_100004778();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              sub_100479808();
            }
          }
        }

        else
        {
          v43 = sub_100004778();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_1004797A0();
          }
        }
      }

      else
      {
        v43 = sub_100004778();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          sub_100479870();
        }
      }
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1004798D8();
      }
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100479914();
    }
  }
}

- (void)performHoldActiveAndAnswerCall:(id)a3 withRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v6;
    v51 = 2112;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing hold active calls and answer ringing call %@ for answer request %@", buf, 0x16u);
  }

  v9 = [v7 uniqueProxyIdentifier];
  if ([v9 length])
  {
    v10 = [(CSDCallStateController *)self callContainer];
    v11 = [v10 audioAndVideoCallsWithStatus:4];

    if ([v11 count])
    {
      v12 = [(CSDCallStateController *)self callWithUniqueProxyIdentifier:v9 fromCallsToAnswer:v11];
      v13 = v12;
      if (v12)
      {
        if (([v12 isEqualToCall:v6]& 1) != 0)
        {
          v14 = [v6 dataSource];
          if (v14)
          {
            v38 = v13;
            v39 = v11;
            v40 = v9;
            v43 = v7;
            v15 = objc_alloc_init(NSMutableArray);
            v16 = [(CSDCallStateController *)self callContainer];
            v17 = [v16 audioAndVideoCallsWithStatus:1];

            v42 = v17;
            if ([v17 count])
            {
              v18 = [v17 lastObject];
              if (v18)
              {
                v19 = +[TUAudioSystemController sharedAudioSystemController];
                v20 = [v18 audioCategory];
                v21 = [v18 audioMode];
                v22 = [v19 currentlyPickedRouteIdForCategory:v20 andMode:v21];

                if (v22)
                {
                  v23 = [v43 sourceIdentifier];

                  if (!v23)
                  {
                    v24 = [TUAudioSystemController sourceIdentifierForRouteID:v22];
                    [v43 setSourceIdentifier:v24];

                    v25 = sub_100004778();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      v26 = [v43 sourceIdentifier];
                      *buf = 138412290;
                      v50 = v26;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Changed sourceIdentifier of answerRequest to %@", buf, 0xCu);
                    }
                  }
                }

                v17 = v42;
              }

              [v15 addObjectsFromArray:v17];
            }

            v41 = v6;
            [v15 removeObject:v6];
            v27 = objc_alloc_init(CSDCallDataSourceMap);
            v37 = v15;
            [(CSDCallDataSourceMap *)v27 addCalls:v15 forIdentifier:@"callsToHold"];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v28 = [(CSDCallDataSourceMap *)v27 dataSources];
            v29 = [v28 countByEnumeratingWithState:&v44 objects:v48 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v45;
              do
              {
                for (i = 0; i != v30; i = i + 1)
                {
                  if (*v45 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v44 + 1) + 8 * i);
                  if (v33 != v14)
                  {
                    v34 = [(CSDCallDataSourceMap *)v27 callsForDataSource:*(*(&v44 + 1) + 8 * i) identifier:@"callsToHold"];
                    [v33 holdCalls:v34 whileUnholdingCalls:&__NSArray0__struct];
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v44 objects:v48 count:16];
              }

              while (v30);
            }

            v35 = [(CSDCallDataSourceMap *)v27 callsForDataSource:v14 identifier:@"callsToHold"];
            v6 = v41;
            v7 = v43;
            [v14 answerCall:v41 withRequest:v43 whileHoldingActiveCalls:v35];

            v11 = v39;
            v9 = v40;
            v36 = v37;
            v13 = v38;
          }

          else
          {
            v36 = sub_100004778();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_1004799B8();
            }
          }
        }

        else
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100479950();
          }
        }
      }

      else
      {
        v14 = sub_100004778();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100479A20();
        }
      }
    }

    else
    {
      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100479A88();
      }
    }
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100479AC4();
    }
  }
}

- (void)performAnswerCallAsVideoUpgrade:(id)a3 withRequest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 dataSource];
  [v7 answerCall:v6 withRequest:v5 whileDisconnectingActiveCalls:&__NSArray0__struct];
}

- (void)performAnswerCallAsAudioDowngrade:(id)a3 withRequest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 dataSource];
  [v7 answerCall:v6 withRequest:v5 whileDisconnectingActiveCalls:&__NSArray0__struct];
}

- (void)performDisconnectCall:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDCallStateController *)self callContainer];
    v7 = [v6 currentAudioAndVideoCalls];
    *buf = 138412290;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v8 = +[NSMutableArray array];
  v9 = [v4 callGroupUUID];

  if (v9)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(CSDCallStateController *)self callContainer];
    v11 = [v10 currentCalls];

    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          if (v16 != v4)
          {
            v17 = [*(*(&v22 + 1) + 8 * v15) callGroupUUID];
            v18 = [v4 callGroupUUID];
            v19 = [v17 isEqual:v18];

            if (v19)
            {
              [v8 addObject:v16];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  if ([v8 count] == 1)
  {
    v20 = [v4 dataSource];
    v21 = [v8 firstObject];
    [v20 disconnectCall:v4 whileUngroupingCall:v21];
  }

  else
  {
    [v4 disconnectCallWithReason:41];
  }
}

- (void)performDisconnectCurrentCall
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [(CSDCallStateController *)self callContainer];
  v4 = [v3 callsHostedElsewhere];

  v5 = [v4 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v36;
    *&v6 = 138412546;
    v29 = v6;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v36 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v35 + 1) + 8 * v9);
      v11 = [(CSDRelayCallDelegate *)self->_relayCallDelegate relayMessagingController];
      v12 = [v10 uniqueProxyIdentifier];
      v13 = [v11 remoteDeviceForUPI:v12];

      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v13 supportsUserDrivenCallActivation];
        *buf = v29;
        v16 = @"NO";
        if (v15)
        {
          v16 = @"YES";
        }

        v41 = v13;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Relay device %@ supportsUserDrivenCallActivation: %@", buf, 0x16u);
      }

      if (![v13 supportsUserDrivenCallActivation])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v4 countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = [(CSDCallStateController *)self callContainer];
    v4 = [v17 callsWithAnEndpointElsewhere];

    v18 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (!v18)
    {
LABEL_25:

      [(CSDCallStateController *)self performDisconnectCurrentCallAndActivateHeld:0];
      return;
    }

    v20 = v18;
    v21 = *v32;
    *&v19 = 138412546;
    v30 = v19;
LABEL_15:
    v22 = 0;
    while (1)
    {
      if (*v32 != v21)
      {
        objc_enumerationMutation(v4);
      }

      v23 = *(*(&v31 + 1) + 8 * v22);
      v24 = [(CSDRelayCallDelegate *)self->_relayCallDelegate relayMessagingController];
      v25 = [v23 uniqueProxyIdentifier];
      v13 = [v24 remoteDeviceForUPI:v25];

      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v13 supportsUserDrivenCallActivation];
        *buf = v30;
        v28 = @"NO";
        if (v27)
        {
          v28 = @"YES";
        }

        v41 = v13;
        v42 = 2112;
        v43 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Relay device %@ supportsUserDrivenCallActivation: %@", buf, 0x16u);
      }

      if (![v13 supportsUserDrivenCallActivation])
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [v4 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v20)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }
    }
  }

  [(CSDCallStateController *)self performDisconnectCurrentCallAndActivateHeld:1];
}

- (void)performDisconnectCurrentCallAndActivateHeld:(BOOL)a3
{
  v76 = a3;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CSDCallStateController *)self featureFlags];
    v6 = [v5 isRemoteCallControlOnWatchEnabled];
    v7 = [(CSDCallStateController *)self callContainer];
    v8 = v7;
    if (v6)
    {
      [v7 _allCalls];
    }

    else
    {
      [v7 currentAudioAndVideoCalls];
    }
    v9 = ;
    *buf = 138412290;
    v97 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v10 = objc_alloc_init(CSDCallDataSourceMap);
  v11 = [(CSDCallStateController *)self featureFlags];
  v12 = [v11 isRemoteCallControlOnWatchEnabled];
  v13 = [(CSDCallStateController *)self callContainer];
  v14 = v13;
  if (v12)
  {
    [v13 _allCallsWithStatus:3];
  }

  else
  {
    [v13 audioAndVideoCallsWithStatus:3];
  }
  v15 = ;

  v16 = [(CSDCallStateController *)self featureFlags];
  v17 = [v16 isRemoteCallControlOnWatchEnabled];
  v18 = [(CSDCallStateController *)self callContainer];
  v19 = v18;
  if (v17)
  {
    [v18 _allCallsWithStatus:1];
  }

  else
  {
    [v18 audioAndVideoCallsWithStatus:1];
  }
  v20 = ;

  v21 = [(CSDCallStateController *)self featureFlags];
  v22 = [v21 isRemoteCallControlOnWatchEnabled];
  v23 = [(CSDCallStateController *)self callContainer];
  v24 = v23;
  if (v22)
  {
    [v23 _allCallsWithStatus:2];
  }

  else
  {
    [v23 audioAndVideoCallsWithStatus:2];
  }
  v71 = ;

  v25 = [(CSDCallStateController *)self featureFlags];
  v26 = [v25 isRemoteCallControlOnWatchEnabled];
  v27 = [(CSDCallStateController *)self callContainer];
  v28 = v27;
  if (v26)
  {
    [v27 _allCallsWithStatus:4];
  }

  else
  {
    [v27 audioAndVideoCallsWithStatus:4];
  }
  v29 = ;

  v78 = +[NSMutableSet set];
  v79 = +[NSMutableSet set];
  if (![(__CFString *)v15 count])
  {
    if (![(__CFString *)v20 count])
    {
      if (![(__CFString *)v71 count])
      {
        goto LABEL_42;
      }

      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v97 = v71;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "   ... no sending or active calls were found so adding all held calls to list of calls to disconnect: %@", buf, 0xCu);
      }

      v38 = v78;
      goto LABEL_41;
    }

    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v97 = v20;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "   ... no sending calls were found so adding all active calls to list of calls to disconnect: %@", buf, 0xCu);
    }

    [v78 addObjectsFromArray:v20];
    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v97 = v71;
      v34 = "   ... and adding held calls to the list of calls to unhold: %@";
      v35 = v33;
      v36 = 12;
LABEL_39:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
    }

LABEL_40:

    v38 = v79;
LABEL_41:
    [v38 addObjectsFromArray:v71];
    goto LABEL_42;
  }

  v30 = sub_100004778();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v97 = v15;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "   ... sending calls were found so adding them to list of calls to disconnect: %@", buf, 0xCu);
  }

  [v78 addObjectsFromArray:v15];
  if (![(__CFString *)v20 count]&& ![(__CFString *)v29 count])
  {
    v33 = sub_100004778();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v39 = @"NO";
      if (v76)
      {
        v39 = @"YES";
      }

      *buf = 138412546;
      v97 = v39;
      v98 = 2112;
      v99 = v71;
      v34 = "   ... and adding held calls to the list of calls to unhold if activateHeld is true: %@ calls: %@";
      v35 = v33;
      v36 = 22;
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v31 = sub_100004778();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v97 = v20;
    v98 = 2112;
    v99 = v29;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "   ... and not unholding held calls because there are active calls %@ or ringing calls %@", buf, 0x16u);
  }

LABEL_42:
  v69 = v20;
  v70 = v15;
  v77 = v10;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = [v78 copy];
  v40 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v90;
    v72 = *v90;
    do
    {
      v43 = 0;
      v73 = v41;
      do
      {
        if (*v90 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v44 = *(*(&v89 + 1) + 8 * v43);
        v45 = [(__CFString *)v44 model];
        v46 = [v45 supportsUnambiguousMultiPartyState];

        if ((v46 & 1) == 0)
        {
          v75 = v43;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v80 = [v79 copy];
          v47 = [v80 countByEnumeratingWithState:&v85 objects:v94 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v86;
            do
            {
              for (i = 0; i != v48; i = i + 1)
              {
                if (*v86 != v49)
                {
                  objc_enumerationMutation(v80);
                }

                v51 = *(*(&v85 + 1) + 8 * i);
                v52 = [(__CFString *)v51 provider];
                v53 = [v52 identifier];
                v54 = [(__CFString *)v44 provider];
                v55 = [v54 identifier];
                v56 = [v53 isEqualToString:v55];

                if (v56)
                {
                  v57 = sub_100004778();
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v97 = v51;
                    v98 = 2112;
                    v99 = v44;
                    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "   ... and moving call %@ from call to unhold to call to disconnect because a disconnected call from the same provider doesn't support unambiguous multi-party state: %@", buf, 0x16u);
                  }

                  [v78 addObject:v51];
                  [v79 removeObject:v51];
                }
              }

              v48 = [v80 countByEnumeratingWithState:&v85 objects:v94 count:16];
            }

            while (v48);
          }

          v42 = v72;
          v41 = v73;
          v43 = v75;
        }

        v43 = v43 + 1;
      }

      while (v43 != v41);
      v41 = [obj countByEnumeratingWithState:&v89 objects:v95 count:16];
    }

    while (v41);
  }

  v58 = [v78 allObjects];
  [(CSDCallDataSourceMap *)v77 addCalls:v58 forIdentifier:@"callsToDisconnect"];

  if (v76)
  {
    v59 = [v79 allObjects];
    [(CSDCallDataSourceMap *)v77 addCalls:v59 forIdentifier:@"callsToUnhold"];
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v60 = [(CSDCallDataSourceMap *)v77 dataSources];
  v61 = [v60 countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v82;
    do
    {
      for (j = 0; j != v62; j = j + 1)
      {
        if (*v82 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v81 + 1) + 8 * j);
        v66 = [(CSDCallDataSourceMap *)v77 callsForDataSource:v65 identifier:@"callsToDisconnect"];
        v67 = &__NSArray0__struct;
        if (v76)
        {
          v67 = [(CSDCallDataSourceMap *)v77 callsForDataSource:v65 identifier:@"callsToUnhold"];
        }

        [v65 disconnectCalls:v66 whileHoldingCalls:&__NSArray0__struct andUnholdingCalls:v67 andUngroupingCalls:&__NSArray0__struct];
      }

      v62 = [v60 countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v62);
  }
}

- (void)performPullRelayingCallsFromClientAndUpdateEndpoint:(BOOL)a3 updateExpectedDestination:(BOOL)a4 onlyIfNeedsEndpointConversationRelaySupport:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v40 = +[NSMutableArray array];
  if (!v5)
  {
    goto LABEL_21;
  }

  v9 = [(CSDCallStateController *)self featureFlags];
  v10 = [v9 gftOnWatch];

  if (!v10)
  {
    goto LABEL_21;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = [(CSDCallStateController *)self callContainer];
  v12 = [v11 currentAudioAndVideoCalls];

  v13 = [v12 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v47;
    *&v14 = 138412546;
    v39 = v14;
    v41 = v12;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v46 + 1) + 8 * i);
        if ([v18 needsConversationOrVideoRelaySupport])
        {
          v19 = [(CSDCallStateController *)self featureFlags];
          v20 = [v19 gftOnWatch];

          if (v20)
          {
            v21 = [(CSDCallStateController *)self relayMessagingController];
            v22 = [v18 uniqueProxyIdentifier];
            v23 = [v21 remoteDeviceForUPI:v22];

            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v23 canReceiveRelayedGFTCalls];
              *buf = v39;
              v26 = @"NO";
              if (v25)
              {
                v26 = @"YES";
              }

              v52 = v23;
              v53 = 2112;
              v54 = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Relay device %@ canReceiveRelayedCalls: %@", buf, 0x16u);
            }

            if (!v23 || ([v23 canReceiveRelayedGFTCalls] & 1) == 0)
            {
              v27 = [v18 uniqueProxyIdentifier];
              [v40 addObject:v27];
            }

            v12 = v41;
          }
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v15);
  }

  if (![v40 count])
  {
    v30 = sub_100004778();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not pulling calls since current calls either do not require GFT relay or all the endpoints support GFT relay", buf, 2u);
    }
  }

  else
  {
LABEL_21:
    v28 = [(CSDCallStateController *)self relayMessagingController];
    [v28 sendPullRelayingCallsMessageToClientAndDisconnectCallsWithUPI:v40];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = [(CSDCallStateController *)self callContainer];
    v30 = [v29 currentAudioAndVideoCalls];

    v31 = [v30 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v43;
      do
      {
        for (j = 0; j != v32; j = j + 1)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v42 + 1) + 8 * j);
          [v35 setRelayClientTransport:0];
          if (v7)
          {
            [v35 setEndpointOnCurrentDevice:1];
          }

          if (v6)
          {
            [v35 setExpectedRelayClientDestination:0];
          }

          v36 = [(CSDCallStateController *)self relayMessagingController];
          [v36 prepareToDisconnectMessagingConnectionForCall:v35];

          v37 = +[CSDRelayConferenceInterface sharedInstance];
          v38 = [v35 uniqueProxyIdentifier];
          [v37 prepareToStopConferenceForIdentifier:v38];
        }

        v32 = [v30 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v32);
    }
  }
}

- (void)performSendMMIOrUSSDCodeWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self providerCallDataSource];
  [v5 sendMMIOrUSSDCodeWithRequest:v4];
}

- (void)performSetLiveVoicemailUnavailableReason:(int64_t)a3 forCall:(id)a4
{
  if (a4)
  {
    [a4 setLiveVoicemailUnavailableReason:a3];
  }
}

- (void)performPullCallFromClientUsingHandoffActivityUserInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(CSDCallStateController *)self providerCallDataSource];
    [v8 pullCallWithHandoffActivityUserInfo:v6 completion:v7];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handoff context did not include any handoff payload. Assuming this is for a relay call", v10, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)performPushRelayingCallsToHostWithSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self relayMessagingController];
  [v5 sendPushRelayingCallsMessageToHostForSourceIdentifier:v4];
}

- (void)performPushHostedCallsToDestination:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callContainer];
  v6 = [v5 allCallsPassTest:&stru_10061DE00];

  if (v6)
  {
    v7 = [(CSDCallStateController *)self callContainer];
    v8 = [v7 callsWithAnEndpointElsewhere];
    v9 = [v8 count];

    if (v9)
    {
      [(CSDCallStateController *)self performPullRelayingCallsFromClientAndUpdateEndpoint:0 updateExpectedDestination:1];
    }

    v10 = [(CSDCallStateController *)self relayMessagingController];
    [v10 sendPushCallsMessageToClientDestination:v4];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(CSDCallStateController *)self callContainer];
      v13 = [v12 _allCalls];
      v14 = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to performPushHostedCallsToDestination %@ because not all calls are hosted here and relayable. All calls: %@", &v14, 0x16u);
    }
  }
}

- (void)performPullHostedCallsFromPairedHostDevice
{
  v3 = +[CSDRelayIDSService sharedInstance];
  v4 = [v3 pairedDeviceExists];

  if (v4)
  {
    v5 = [(CSDCallStateController *)self callContainer];
    v6 = [v5 allCallsPassTest:&stru_10061DE20];

    if (v6)
    {
      v11 = [(CSDCallStateController *)self relayMessagingController];
      [v11 sendPullCallsMessageToHost];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(CSDCallStateController *)self callContainer];
        v10 = [v9 _allCalls];
        *buf = 138412290;
        v13 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to performPullHostedCallsFromPairedHostDevice because not all calls are not hosted here and not an endpoint here and relayable. All calls: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to performPullHostedCallsFromPairedHostDevice because no paired device exists", buf, 2u);
    }
  }
}

- (void)performUpdateCallWithProxy:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callContainer];
  v6 = [v4 uniqueProxyIdentifier];
  v7 = [v5 callWithUniqueProxyIdentifier:v6];

  [v7 updateWithProxyCall:v4];
}

- (void)_launchICSForScreeningIfNeeded
{
  v2 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ClarityBoard is enabled. Do not launch ICS for screening", buf, 2u);
    }
  }

  else
  {
    v5 = +[NSURL faceTimeLaunchForScreeningURL];
    v4 = v5;
    TUOpenURLWithCompletion();
  }
}

- (void)fetchCurrentCallUpdates:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "fetchCurrentCallUpdates", buf, 2u);
  }

  v6 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(CSDCallStateController *)self pendingCallInfoDict];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001CF0EC;
  v14 = &unk_10061DE48;
  v15 = self;
  v16 = v7;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:&v11];

  v10 = [v9 copy];
  v4[2](v4, v10);
}

- (void)screenWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenWithRequest", buf, 2u);
  }

  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CF300;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  sub_100004AA4(v8, @"screen-calls", v10, 0, "[CSDCallStateController screenWithRequest:]");
}

- (id)_screenWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self pendingCallInfoDict];
  v6 = [v4 callUUID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 callUUID];
      v30 = 138412290;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Did not find any pending call info for callUUID: %@", &v30, 0xCu);
    }

    goto LABEL_7;
  }

  v8 = [(CSDCallStateController *)self pendingCallInfoDict];
  [v8 removeAllObjects];

  v9 = [(CSDCallStateController *)self callContainer];
  v10 = [v9 _allCalls];
  v11 = [v10 count];

  v12 = sub_100004778();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      LOWORD(v30) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not screening call because we have another call on the system", &v30, 2u);
    }

LABEL_7:
    v15 = 0;
    goto LABEL_18;
  }

  if (v13)
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating call to screen", &v30, 2u);
  }

  v16 = [CSDProviderCall alloc];
  v17 = [v7 callSource];
  v18 = [v7 callUUID];
  v19 = [v7 callUpdate];
  v15 = [(CSDProviderCall *)v16 initIncomingWithBackingCallSource:v17 UUID:v18 update:v19 originatingUIType:58];

  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v15];
  v20 = [v7 callUpdate];
  v21 = [v20 sanitizedCallUpdate];
  [v15 updateWithCallUpdate:v21];

  [v15 setScreening:1];
  v22 = [(CSDCallStateController *)self featureFlags];
  if (TUReceptionistAvailable() && [v15 isReceptionistCapable])
  {
    v23 = [v7 screeningType];

    if (v23 == 2)
    {
      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending to receptionist!", &v30, 2u);
      }

      [v15 setReceptionistState:1];
    }
  }

  else
  {
  }

  [(CSDCallStateController *)self propertiesChangedForCall:v15];
  v25 = +[NSDate date];
  [v15 setDateStartedConnecting:v25];

  v26 = [CXAnswerCallAction alloc];
  v27 = [v15 uniqueProxyIdentifierUUID];
  v12 = [v26 initWithCallUUID:v27];

  [v12 setPauseVideoToStart:1];
  [v12 setScreening:1];
  [v12 setDowngradeToAudio:1];
  v28 = [v15 providerCallDelegate];
  [v28 performCallAction:v12 forCall:v15];

LABEL_18:

  return v15;
}

- (void)startReceptionistReply
{
  v3 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startReceptionistReply", buf, 2u);
  }

  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CF824;
  v7[3] = &unk_100619D38;
  v7[4] = self;
  sub_100004AA4(v6, @"screen-calls", v7, 0, "[CSDCallStateController startReceptionistReply]");
}

- (void)sendReceptionistReply:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendReceptionistReply: %@", buf, 0xCu);
  }

  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CFA3C;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  sub_100004AA4(v8, @"screen-calls", v10, 0, "[CSDCallStateController sendReceptionistReply:]");
}

- (void)performRecordingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform recording request %@", buf, 0xCu);
  }

  v9 = [(CSDCallStateController *)self clientManager];
  v10 = [v9 currentClient];

  v11 = TUEntitlementsRecordCalls;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001CFCC4;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001CFDDC;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = v6;
  sub_100004AA4(v10, v11, v16, v14, "[CSDCallStateController performRecordingRequest:completion:]");
}

- (void)performTranslationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform translation request %@", buf, 0xCu);
  }

  v9 = [(CSDCallStateController *)self clientManager];
  v10 = [v9 currentClient];

  v11 = TUEntitlementsTranslateCalls;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001CFFCC;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D0278;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = v6;
  sub_100004AA4(v10, v11, v16, v14, "[CSDCallStateController performTranslationRequest:completion:]");
}

- (void)_performSmartHoldingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform TUSmartHoldingSessionRequest %@", buf, 0xCu);
  }

  v9 = [(CSDCallStateController *)self clientManager];
  v10 = [v9 currentClient];

  v11 = TUEntitlementsSmartHolding;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D04B0;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D0664;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = v6;
  sub_100004AA4(v10, v11, v16, v14, "[CSDCallStateController _performSmartHoldingRequest:completion:]");
}

- (void)performSmartHoldingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform TUSmartHoldingRequest %@", buf, 0xCu);
  }

  v9 = [(CSDCallStateController *)self clientManager];
  v10 = [v9 currentClient];

  v11 = TUEntitlementsSmartHolding;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D089C;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D0D6C;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = v6;
  sub_100004AA4(v10, v11, v16, v14, "[CSDCallStateController performSmartHoldingRequest:completion:]");
}

- (void)registerAnonymousXPCEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "registerAnonymousXPCEndpoint", buf, 2u);
  }

  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D0FB4;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController registerAnonymousXPCEndpoint:]");
}

- (void)fetchAnonymousXPCEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetchAnonymousXPCEndpoint", v8, 2u);
  }

  v7 = [(CSDCallStateController *)self uiXPCEndpoint];
  v4[2](v4, v7, 0);
}

- (void)screenUpdate:(id)a3 withProvider:(id)a4 callSource:(id)a5 callUUID:(id)a6 screeningType:(int64_t)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v16);

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "screenUpdate for callUpdate: %@", &v20, 0xCu);
  }

  v18 = [[CSDPendingCallInfo alloc] initWithCallSource:v14 withCallUpdate:v12 withProvider:v15 callUUID:v13 screeningType:a7];
  v19 = [(CSDCallStateController *)self pendingCallInfoDict];
  [v19 setObject:v18 forKeyedSubscript:v13];

  [(CSDCallStateController *)self _launchICSForScreeningIfNeeded];
}

- (void)addPendingCallInfo:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 callUUID];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding pendingCallInfoForUUID: %@", &v10, 0xCu);
  }

  v8 = [(CSDCallStateController *)self pendingCallInfoDict];
  v9 = [v4 callUUID];
  [v8 setObject:v4 forKeyedSubscript:v9];
}

- (void)clearPendingCallInfoForUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clearing pendingCallInfoForUUID: %@", &v8, 0xCu);
  }

  v7 = [(CSDCallStateController *)self pendingCallInfoDict];
  [v7 setObject:0 forKeyedSubscript:v4];
}

- (id)pendingCallInfoForUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDCallStateController *)self pendingCallInfoDict];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning pendingCallInfoForUUID: %@ %@", &v10, 0x16u);
  }

  return v7;
}

- (void)dialWithRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D1818;
  v17[3] = &unk_10061AF98;
  v18 = v6;
  v19 = v9;
  v20 = self;
  v21 = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D1CD8;
  v14[3] = &unk_10061C440;
  v15 = v19;
  v16 = v21;
  v14[4] = self;
  v11 = v19;
  v12 = v21;
  v13 = v6;
  sub_100004AA4(v11, v10, v17, v14, "[CSDCallStateController dialWithRequest:reply:]");
}

- (void)dialWithRequest:(id)a3 displayContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D1E4C;
  v13[3] = &unk_100619E58;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  sub_100004AA4(v9, v10, v13, 0, "[CSDCallStateController dialWithRequest:displayContext:]");
}

- (void)_dial:(id)a3 displayContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDCallStateController *)self performDialCall:v8 displayContext:a4];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dialed call: %@", &v18, 0xCu);
  }

  v12 = [v8 translationRequestConfiguration];

  if (v12)
  {
    v13 = [TUCallTranslationStartRequest alloc];
    v14 = [v8 translationRequestConfiguration];
    v15 = [v13 initWithCall:v10 configuration:v14];

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "translation request: %@", &v18, 0xCu);
    }

    v17 = [(CSDCallStateController *)self callTranslationController];
    [v17 performRequest:v15 forCall:v10 completion:&stru_10061DEE0];
  }

  if (v9)
  {
    v9[2](v9, v10);
  }
}

- (void)answerCallWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  if (([v4 sendToScreening] & 1) != 0 || objc_msgSend(v4, "screeningType"))
  {
    v8 = 0;
    v9 = off_10061E9C8;
  }

  else
  {
    if (![v4 launchInBackground])
    {
      v8 = 0;
      goto LABEL_5;
    }

    v8 = 1;
    v9 = &TUEntitlementsBackgroundCallsCapability;
  }

  v10 = *v9;

  v7 = v10;
LABEL_5:
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D22E4;
  v12[3] = &unk_100619F48;
  v13 = v4;
  v14 = self;
  v15 = v8;
  v11 = v4;
  sub_100004AA4(v6, v7, v12, 0, "[CSDCallStateController answerCallWithRequest:]");
}

- (void)holdCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D26F0;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController holdCallWithUniqueProxyIdentifier:]");
}

- (void)unholdCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D2960;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController unholdCallWithUniqueProxyIdentifier:]");
}

- (void)requestVideoUpgradeForCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D2BD0;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController requestVideoUpgradeForCallWithUniqueProxyIdentifier:]");
}

- (void)disconnectCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D3024;
  v10[3] = &unk_100619E58;
  v11 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v4;
  sub_100004AA4(v8, v7, v10, 0, "[CSDCallStateController disconnectCallWithUniqueProxyIdentifier:]");
}

- (void)groupCallWithUniqueProxyIdentifier:(id)a3 withOtherCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D32D0;
  v13[3] = &unk_100619E58;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  sub_100004AA4(v9, v10, v13, 0, "[CSDCallStateController groupCallWithUniqueProxyIdentifier:withOtherCallWithUniqueProxyIdentifier:]");
}

- (void)ungroupCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D35F0;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController ungroupCallWithUniqueProxyIdentifier:]");
}

- (void)swapCalls
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3820;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController swapCalls]");
}

- (void)playDTMFToneForCallWithUniqueProxyIdentifier:(id)a3 key:(unsigned __int8)a4
{
  v6 = a3;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D3984;
  v11[3] = &unk_100619F48;
  v14 = a4;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController playDTMFToneForCallWithUniqueProxyIdentifier:key:]");
}

- (void)disconnectCurrentCall
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3BC8;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController disconnectCurrentCall]");
}

- (void)disconnectCurrentCallAndActivateHeld
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3CF8;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController disconnectCurrentCallAndActivateHeld]");
}

- (void)disconnectAllCalls
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3E2C;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController disconnectAllCalls]");
}

- (void)setTTYType:(int)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D3F94;
  v11[3] = &unk_10061CF48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setTTYType:forCallWithUniqueProxyIdentifier:]");
}

- (void)setLiveVoicemailUnavailableReason:(int64_t)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D417C;
  v11[3] = &unk_100619F20;
  v13 = self;
  v14 = a3;
  v12 = v6;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setLiveVoicemailUnavailableReason:forCallWithUniqueProxyIdentifier:]");
}

- (void)pullRelayingCallsFromClient
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4338;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController pullRelayingCallsFromClient]");
}

- (void)pullRelayingGFTCallsFromClientIfNecessary
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4470;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController pullRelayingGFTCallsFromClientIfNecessary]");
}

- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D45D0;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController pushRelayingCallsToHostWithSourceIdentifier:]");
}

- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D4850;
  v22[3] = &unk_10061DE98;
  v23 = v9;
  v24 = v7;
  v22[4] = self;
  v10 = v9;
  v11 = v7;
  v12 = objc_retainBlock(v22);
  v13 = TUEntitlementsModifyCallsCapability;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D48D4;
  v18[3] = &unk_10061AF20;
  v19 = v6;
  v20 = self;
  v21 = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D4988;
  v16[3] = &unk_10061A7E0;
  v17 = v21;
  v14 = v21;
  v15 = v6;
  sub_100004AA4(v10, v13, v18, v16, "[CSDCallStateController pullCallFromClientUsingHandoffActivityUserInfo:reply:]");
}

- (void)pullPersistedChannel:(id)a3
{
  v4 = a3;
  v5 = +[CSDPersistedChannelRegistry sharedInstance];
  v6 = [v5 activePersistedChannelIdentity];

  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];
  v9 = TUEntitlementsModifyCallsCapability;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D4ABC;
  v12[3] = &unk_10061DF08;
  v13 = v6;
  v14 = v4;
  v10 = v6;
  v11 = v4;
  sub_100004AA4(v8, v9, v12, 0, "[CSDCallStateController pullPersistedChannel:]");
}

- (void)startTransmissionForBargeCall:(id)a3 sourceIsHandsfreeAccessory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDCallStateController *)self callContainer];
  v8 = [v6 uniqueProxyIdentifier];

  v9 = [v7 bargeCallWithUniqueProxyIdentifier:v8];

  if (v9)
  {
    if (v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending start transmission request to barge call.", v12, 2u);
    }

    [v9 startTransmissionWithOriginator:v10];
  }
}

- (void)stopTransmissionForBargeCall:(id)a3 sourceIsHandsfreeAccessory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CSDCallStateController *)self callContainer];
  v8 = [v6 uniqueProxyIdentifier];

  v9 = [v7 bargeCallWithUniqueProxyIdentifier:v8];

  if (v9)
  {
    if (v4)
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending stop transmission request to barge call", v12, 2u);
    }

    [v9 stopTransmissionWithOriginator:v10];
  }
}

- (void)sendMMIOrUSSDCodeWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D4DFC;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController sendMMIOrUSSDCodeWithRequest:]");
}

- (void)setUplinkMuted:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D4F9C;
  v11[3] = &unk_100619F48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setUplinkMuted:forCallWithUniqueProxyIdentifier:]");
}

- (void)setDownlinkMuted:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5214;
  v11[3] = &unk_100619F48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setDownlinkMuted:forCallWithUniqueProxyIdentifier:]");
}

- (void)setIsSendingVideo:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5488;
  v11[3] = &unk_100619F48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setIsSendingVideo:forCallWithUniqueProxyIdentifier:]");
}

- (void)setMixesVoiceWithMedia:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5744;
  v11[3] = &unk_100619F48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setMixesVoiceWithMedia:forCallWithUniqueProxyIdentifier:]");
}

- (void)setSharingScreen:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D59B8;
  v11[3] = &unk_100619F48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setSharingScreen:forCallWithUniqueProxyIdentifier:]");
}

- (void)setHasEmergencyVideoStream:(BOOL)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5C2C;
  v11[3] = &unk_100619F48;
  v14 = a3;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setHasEmergencyVideoStream:forCallWithUniqueProxyIdentifier:]");
}

- (void)setEmergencyMediaItems:(id)a3 forCallWithUniqueProxyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D5EBC;
  v13[3] = &unk_100619E58;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  sub_100004AA4(v9, v10, v13, 0, "[CSDCallStateController setEmergencyMediaItems:forCallWithUniqueProxyIdentifier:]");
}

- (void)pushHostedCallsToDestination:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D6128;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController pushHostedCallsToDestination:]");
}

- (void)pullHostedCallsFromPairedHostDevice
{
  v3 = [(CSDCallStateController *)self clientManager];
  v4 = [v3 currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D6294;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(v4, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController pullHostedCallsFromPairedHostDevice]");
}

- (void)sendHardPauseDigitsForCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D63E8;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController sendHardPauseDigitsForCallWithUniqueProxyIdentifier:]");
}

- (void)updateCallWithProxy:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D65A0;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController updateCallWithProxy:]");
}

- (void)enteredForegroundForCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D6730;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController enteredForegroundForCallWithUniqueProxyIdentifier:]");
}

- (void)willEnterBackgroundForAllCalls
{
  v2 = [(CSDCallStateController *)self clientManager];
  v3 = [v2 currentClient];

  sub_100004AA4(v3, TUEntitlementsModifyCallsCapability, &stru_10061DF28, 0, "[CSDCallStateController willEnterBackgroundForAllCalls]");
}

- (void)enteredBackgroundForAllCalls
{
  v2 = [(CSDCallStateController *)self clientManager];
  v3 = [v2 currentClient];

  sub_100004AA4(v3, TUEntitlementsModifyCallsCapability, &stru_10061DF48, 0, "[CSDCallStateController enteredBackgroundForAllCalls]");
}

- (void)setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D6B50;
  v12[3] = &unk_10061D330;
  v15 = width;
  v16 = height;
  v13 = v7;
  v14 = self;
  v11 = v7;
  sub_100004AA4(v9, v10, v12, 0, "[CSDCallStateController setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:size:]");
}

- (void)setRemoteVideoPresentationStateForCallWithUniqueProxyIdentifier:(id)a3 presentationState:(int)a4
{
  v6 = a3;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D6D44;
  v11[3] = &unk_10061CF48;
  v14 = a4;
  v12 = v6;
  v13 = self;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setRemoteVideoPresentationStateForCallWithUniqueProxyIdentifier:presentationState:]");
}

- (void)setScreenShareAttributesForCallWithUniqueProxyIdentifier:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D6F44;
  v13[3] = &unk_100619E58;
  v14 = v7;
  v15 = v6;
  v16 = self;
  v11 = v6;
  v12 = v7;
  sub_100004AA4(v9, v10, v13, 0, "[CSDCallStateController setScreenShareAttributesForCallWithUniqueProxyIdentifier:attributes:]");
}

- (void)setSharingScreen:(BOOL)a3 attributes:(id)a4 forCallWithUniqueProxyIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(CSDCallStateController *)self clientManager];
  v11 = [v10 currentClient];

  v12 = TUEntitlementsModifyCallsCapability;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D7148;
  v15[3] = &unk_10061BE38;
  v19 = a3;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v13 = v9;
  v14 = v8;
  sub_100004AA4(v11, v12, v15, 0, "[CSDCallStateController setSharingScreen:attributes:forCallWithUniqueProxyIdentifier:]");
}

- (void)setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:(id)a3 bluetoothAudioFormat:(int64_t)a4
{
  v6 = a3;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D7338;
  v11[3] = &unk_100619F20;
  v13 = self;
  v14 = a4;
  v12 = v6;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:bluetoothAudioFormat:]");
}

- (void)shouldSuppressInCallStatusBar:(BOOL)a3
{
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D7540;
  v7[3] = &unk_100619EA8;
  v8 = a3;
  v7[4] = self;
  sub_100004AA4(v6, @"modify-status-bar", v7, 0, "[CSDCallStateController shouldSuppressInCallStatusBar:]");
}

- (void)shouldAllowRingingCallStatusIndicator:(BOOL)a3
{
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D7770;
  v7[3] = &unk_100619EA8;
  v8 = a3;
  v7[4] = self;
  sub_100004AA4(v6, @"modify-status-bar", v7, 0, "[CSDCallStateController shouldAllowRingingCallStatusIndicator:]");
}

- (void)activateInCallUIWithActivityContinuationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D79B0;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController activateInCallUIWithActivityContinuationIdentifier:]");
}

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D7FD8;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController joinConversationWithRequest:]");
}

- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D8170;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController setCurrentAudioInputDeviceToDeviceWithUID:]");
}

- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D832C;
  v9[3] = &unk_100619D88;
  v10 = v4;
  v11 = self;
  v8 = v4;
  sub_100004AA4(v6, v7, v9, 0, "[CSDCallStateController setCurrentAudioOutputDeviceToDeviceWithUID:]");
}

- (void)localRoutesByUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D84E8;
  v8[3] = &unk_10061DF08;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  sub_100004AA4(v6, @"access-calls", v8, 0, "[CSDCallStateController localRoutesByUniqueIdentifier:]");
}

- (void)pairedHostDeviceRoutesByUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D8634;
  v8[3] = &unk_10061DF08;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  sub_100004AA4(v6, @"access-calls", v8, 0, "[CSDCallStateController pairedHostDeviceRoutesByUniqueIdentifier:]");
}

- (void)pickLocalRouteWithUniqueIdentifier:(id)a3 shouldWaitUntilAvailable:(BOOL)a4
{
  v6 = a3;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D8790;
  v11[3] = &unk_100619F48;
  v12 = v6;
  v13 = self;
  v14 = a4;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController pickLocalRouteWithUniqueIdentifier:shouldWaitUntilAvailable:]");
}

- (void)pickPairedHostDeviceRouteWithUniqueIdentifier:(id)a3 shouldWaitUntilAvailable:(BOOL)a4
{
  v6 = a3;
  v7 = [(CSDCallStateController *)self clientManager];
  v8 = [v7 currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D8948;
  v11[3] = &unk_100619F48;
  v12 = v6;
  v13 = self;
  v14 = a4;
  v10 = v6;
  sub_100004AA4(v8, v9, v11, 0, "[CSDCallStateController pickPairedHostDeviceRouteWithUniqueIdentifier:shouldWaitUntilAvailable:]");
}

- (void)setPairedHostDeviceVolume:(float)a3
{
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D8ADC;
  v7[3] = &unk_100619EF8;
  v8 = a3;
  v7[4] = self;
  sub_100004AA4(v6, TUEntitlementsModifyCallsCapability, v7, 0, "[CSDCallStateController setPairedHostDeviceVolume:]");
}

- (void)setLocalDeviceVolume:(float)a3
{
  v4 = [(CSDCallStateController *)self clientManager];
  v5 = [v4 currentClient];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D8C60;
  v6[3] = &unk_10061DFB8;
  v7 = a3;
  sub_100004AA4(v5, TUEntitlementsModifyCallsCapability, v6, 0, "[CSDCallStateController setLocalDeviceVolume:]");
}

- (void)validateIMAVPush:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self clientManager];
  v9 = [v8 currentClient];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D8E2C;
  v12[3] = &unk_10061DF08;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  sub_100004AA4(v9, @"access-calls", v12, 0, "[CSDCallStateController validateIMAVPush:reply:]");
}

- (void)containsRestrictedHandle:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CSDCallStateController *)self clientManager];
  v14 = [v13 currentClient];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D8FD0;
  v18[3] = &unk_10061DFE0;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a5;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  sub_100004AA4(v14, @"access-calls", v18, 0, "[CSDCallStateController containsRestrictedHandle:forBundleIdentifier:performSynchronously:reply:]");
}

- (void)policyForAddresses:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDCallStateController *)self clientManager];
  v12 = [v11 currentClient];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D9184;
  v16[3] = &unk_10061E008;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  sub_100004AA4(v12, @"access-calls", v16, 0, "[CSDCallStateController policyForAddresses:forBundleIdentifier:reply:]");
}

- (void)willRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDCallStateController *)self clientManager];
  v12 = [v11 currentClient];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D9328;
  v16[3] = &unk_10061E008;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  sub_100004AA4(v12, @"access-calls", v16, 0, "[CSDCallStateController willRestrictAddresses:forBundleIdentifier:reply:]");
}

- (void)shouldRestrictAddresses:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CSDCallStateController *)self clientManager];
  v14 = [v13 currentClient];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D9504;
  v18[3] = &unk_10061DFE0;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a5;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  sub_100004AA4(v14, @"access-calls", v18, 0, "[CSDCallStateController shouldRestrictAddresses:forBundleIdentifier:performSynchronously:reply:]");
}

- (void)isUnknownAddress:(id)a3 normalizedAddress:(id)a4 forBundleIdentifier:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CSDCallStateController *)self clientManager];
  v15 = [v14 currentClient];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001D96CC;
  v20[3] = &unk_10061E030;
  v23 = v12;
  v24 = v13;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v13;
  sub_100004AA4(v15, @"access-calls", v20, 0, "[CSDCallStateController isUnknownAddress:normalizedAddress:forBundleIdentifier:reply:]");
}

- (void)filterStatusForAddresses:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CSDCallStateController *)self clientManager];
  v12 = [v11 currentClient];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D9880;
  v16[3] = &unk_10061E008;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
  sub_100004AA4(v12, @"access-calls", v16, 0, "[CSDCallStateController filterStatusForAddresses:forBundleIdentifier:reply:]");
}

- (void)isRestrictedExclusivelyByScreenTime:(id)a3 forBundleIdentifier:(id)a4 performSynchronously:(BOOL)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(CSDCallStateController *)self clientManager];
  v14 = [v13 currentClient];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D9A5C;
  v18[3] = &unk_10061DFE0;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = a5;
  v15 = v11;
  v16 = v10;
  v17 = v12;
  sub_100004AA4(v14, @"access-calls", v18, 0, "[CSDCallStateController isRestrictedExclusivelyByScreenTime:forBundleIdentifier:performSynchronously:reply:]");
}

- (void)setClientCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clientCapabilities: %@", &v8, 0xCu);
  }

  [v6 setCapabilities:v4];
}

- (void)propertiesChangedForCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self callController];
  [v5 registerCall:v4];
}

- (BOOL)isClientRecordingApplicationInstalled
{
  v2 = [(CSDCallStateController *)self applicationInstallationObserver];
  v3 = +[CSDAudioCallRecordingConstants notesApplicationBundleID];
  v4 = [v2 isApplicationInstalledWithBundleID:v3];

  return v4;
}

- (id)callForClient:(id)a3 usingCall:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if ([v5 isRemote])
    {
      v7 = [TUProxyCall proxyCallWithCall:v6];
    }

    else
    {
      v7 = v6;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)currentCallsForClient:(id)a3
{
  v4 = a3;
  if ([v4 isRemote])
  {
    v5 = [(CSDCallStateController *)self currentProxyCalls];
    [(CSDCallStateController *)self eligibleCallsByFilteringCalls:v5 forClient:v4];
  }

  else
  {
    v5 = [(CSDCallStateController *)self callContainer];
    [v5 _allCalls];
  }
  v6 = ;

  return v6;
}

- (BOOL)isTrackingVoIPCallForBundleIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA1EC;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)disconnectBargeCall:(id)a3 bundleIdentifier:(id)a4 reason:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CSDCallStateController *)self callContainer];
  v11 = [v8 UUIDString];
  v12 = [v10 bargeCallWithUniqueProxyIdentifier:v11];

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 1024;
    v26 = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "disconnectBargeCall, callUUID: %@, bundleIdentifier: %@, reason: %d", buf, 0x1Cu);
  }

  v14 = [v12 provider];
  v15 = [v14 bundleIdentifier];
  v16 = [v15 isEqualToString:v9];

  if (v16)
  {
    v17 = [(CSDCallStateController *)self queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001DA52C;
    v18[3] = &unk_100619EF8;
    v19 = v12;
    v20 = a5;
    dispatch_async(v17, v18);
  }
}

- (void)disconnectBargeCallsWithBundleIdentifier:(id)a3 reason:(int)a4
{
  v6 = a3;
  v7 = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA5F8;
  block[3] = &unk_10061CF48;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)requestInitialState:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self clientManager];
  v6 = [v5 currentClient];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting initial state for client %@", &v9, 0xCu);
  }

  v8 = [(CSDCallStateController *)self currentCallsForClient:v6];
  v4[2](v4, v8);
}

- (void)reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "uniqueProxyIdentifier %@", &v9, 0xCu);
  }

  v6 = [(CSDCallStateController *)self callContainer];
  v7 = [v6 callWithUniqueProxyIdentifier:v4];

  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CSDCallLocalPreviewStoppedNotification" object:v7];
  }
}

- (void)saveCustomSandboxedURLGreeting:(id)a3 forAccountUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "saveCustomGreeting", v11, 2u);
  }

  v9 = [(CSDCallStateController *)self answeringMachineController];
  v10 = [v7 URL];

  [v9 saveCustomGreeting:v10 for:v6];
}

- (void)deleteCustomGreetingForAccountUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deleteCustomGreetingForAccountUUID", v7, 2u);
  }

  v6 = [(CSDCallStateController *)self answeringMachineController];
  [v6 deleteCustomGreetingFor:v4];
}

- (void)customSandboxedURLGreetingForAccountUUID:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "customGreetingForAccountUUID:withCompletion:", v12, 2u);
  }

  v9 = [(CSDCallStateController *)self answeringMachineController];
  v10 = [v9 customGreetingFor:v7];

  if (v10)
  {
    v11 = [[TUSandboxExtendedURL alloc] initWithURL:v10 withExtensionType:0];
    v6[2](v6, v11);
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)defaultGreeting:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultGreeting", v9, 2u);
  }

  v6 = [(CSDCallStateController *)self answeringMachineController];
  v7 = [v6 defaultGreeting];

  if (v7)
  {
    v8 = [[TUSandboxExtendedURL alloc] initWithURL:v7 withExtensionType:0];
    v4[2](v4, v8);
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)callHistoryManager:(id)a3 recentCallRequestedFor:(id)a4 withStartDate:(id)a5 avMode:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = [(CSDCallStateController *)self recentsController];
  [v11 reportRecentCallForConversation:v10 withStartDate:v9 avMode:a6];
}

- (void)providersChangedForProviderManager:(id)a3 withValidKeychain:(BOOL)a4
{
  v5 = a3;
  v6 = [(CSDCallStateController *)self relayMessagingController];
  [v6 sendUpdateCallContextMessageToClientForCallProviderManager:v5];
}

- (void)didChangeRelayCallingCapabilities
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }

  [(CSDCallStateController *)self _handleRelayCallingChanged];
}

- (void)didChangeFaceTimeCallingAvailability
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  v4 = [(CSDCallStateController *)self relayMessagingController];
  v5 = [(CSDCallStateController *)self callProviderManager];
  [v4 sendUpdateCallContextMessageToClientForCallProviderManager:v5];
}

- (IMNicknameProvider)nicknameProvider
{
  v3 = [(CSDCallStateController *)self featureFlags];
  v4 = [v3 nameAndPhotoEnabled];

  if (v4)
  {
    nicknameProvider = self->_nicknameProvider;
    if (!nicknameProvider)
    {
      v6 = objc_alloc_init(IMNicknameProvider);
      v7 = self->_nicknameProvider;
      self->_nicknameProvider = v6;

      nicknameProvider = self->_nicknameProvider;
    }

    v8 = nicknameProvider;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fetchPreferredFaceTimeAccountID
{
  v2 = +[IMService facetimeService];
  v3 = IMPreferredAccountForService();

  v4 = [v3 displayName];

  return v4;
}

- (void)sendAutomaticNameAndPhotoUsingDialRequestIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self featureFlags];
  v6 = [v5 nameAndPhotoEnabled];

  if (v6)
  {
    v7 = [v4 handle];
    v8 = TUNormalizedHandleForTUHandle();

    if (v8)
    {
      v9 = +[CSDCallStateController automaticNameAndPhotoQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001DB240;
      block[3] = &unk_100619E58;
      block[4] = self;
      v11 = v8;
      v12 = v4;
      dispatch_async(v9, block);
    }
  }
}

- (void)sendAutomaticNameAndPhotoUsingJoinRequestIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self featureFlags];
  v6 = [v5 nameAndPhotoEnabled];

  if (v6)
  {
    v7 = +[CSDCallStateController automaticNameAndPhotoQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001DB3D4;
    v8[3] = &unk_100619D88;
    v8[4] = self;
    v9 = v4;
    dispatch_async(v7, v8);
  }
}

- (void)sendNameAndPhotoUsingDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self featureFlags];
  v6 = [v5 nameAndPhotoEnabled];

  if (v6)
  {
    v7 = [v4 handle];
    v8 = TUNormalizedHandleForTUHandle();

    if (v8)
    {
      v9 = [v4 provider];
      v10 = [v9 isTelephonyProvider];

      if (v10)
      {
        v11 = [v4 localSenderIdentity];
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v11;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Using localSenderIdentity %@", &v25, 0xCu);
        }

        v13 = [v11 handle];
        v14 = [v13 normalizedValue];

        v15 = [v11 handle];
        v16 = v15;
        if (v14)
        {
          v17 = [v15 normalizedValue];
          v18 = v16;
        }

        else
        {
          v18 = TUNormalizedHandleForTUHandle();

          v19 = sub_100004778();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v25 = 138412290;
            v26 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SNAP: Normalized senderIdentity handle to be %@", &v25, 0xCu);
          }

          v20 = [v18 normalizedValue];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = [v18 value];
          }

          v17 = v22;
        }
      }

      else
      {
        v17 = [(CSDCallStateController *)self fetchPreferredFaceTimeAccountID];
      }

      v23 = [v8 value];
      v24 = [NSSet setWithObject:v23];
      [(CSDCallStateController *)self sendNameAndPhotoToHandles:v24 fromID:v17];
    }
  }
}

- (void)sendNameAndPhotoUsingJoinRequest:(id)a3
{
  v5 = [a3 sanitizedHandles];
  v4 = [(CSDCallStateController *)self fetchPreferredFaceTimeAccountID];
  [(CSDCallStateController *)self sendNameAndPhotoToHandles:v5 fromID:v4];
}

- (void)sendNameAndPhotoToHandles:(id)a3 fromID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self featureFlags];
  v9 = [v8 nameAndPhotoEnabled];

  if (v9)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: Requesting to send Name+Photo to handles %@ fromID %@", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * v15);
          v17 = [(CSDCallStateController *)self nicknameProvider];
          [v17 sendPersonalNicknameToHandleID:v16 fromHandleID:v7];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)a3 callProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self featureFlags];
  v9 = [v8 nameAndPhotoEnabled];

  if (v9)
  {
    v10 = -[CSDCallStateController shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:](self, "shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:", v6, [v7 isSystemProvider]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)a3 conversationProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDCallStateController *)self featureFlags];
  v9 = [v8 nameAndPhotoEnabled];

  if (v9)
  {
    v10 = -[CSDCallStateController shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:](self, "shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:", v6, [v7 isDefaultProvider]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)a3 isDefaultProvider:(BOOL)a4
{
  v4 = a4;
  v42 = a3;
  v6 = [(CSDCallStateController *)self featureFlags];
  v7 = [v6 nameAndPhotoEnabled];

  if (!v7)
  {
    goto LABEL_28;
  }

  if (![(CSDCallStateController *)self _nameAndPhotoSharingEnabled])
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because sharing is disabled", buf, 2u);
    }

    v8 = 0;
    goto LABEL_32;
  }

  if ([(CSDCallStateController *)self _sharingAudienceAllowsAutoSendNameAndPhoto])
  {
    v8 = 0;
    if (![(CSDCallStateController *)self _hasAlreadyDeniedSendingNameAndPhotoToHandles:v42]&& v4)
    {
      v38 = self;
      v9 = [(CSDCallStateController *)self callProviderManager];
      v10 = [v9 providersByIdentifierForRemoteClients:0];

      v36 = v10;
      [v10 objectForKeyedSubscript:@"com.apple.coretelephony"];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v37 = v54 = 0u;
      v11 = [v37 prioritizedSenderIdentities];
      v12 = [v11 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v12)
      {
        v13 = v12;
        v40 = 0;
        v41 = *v52;
        obj = v11;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v52 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v51 + 1) + 8 * i);
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v16 = v42;
            v17 = [v16 countByEnumeratingWithState:&v47 objects:v60 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v48;
              while (2)
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v48 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v47 + 1) + 8 * j);
                  v22 = [v15 handle];
                  v23 = [v22 normalizedValue];
                  LOBYTE(v21) = TUStringsAreEqualOrNil();

                  if (v21)
                  {
                    v40 = 1;
                    goto LABEL_21;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v47 objects:v60 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

LABEL_21:
          }

          v13 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v13);

        if (v40)
        {
          v24 = sub_100004778();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v37 prioritizedSenderIdentities];
            *buf = 138412546;
            v57 = v16;
            v58 = 2112;
            v59 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because handles %@ contains self handle %@", buf, 0x16u);
          }

          v8 = 0;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v28 = [(CSDCallStateController *)v38 callCenter];
      v24 = [v28 contactStore];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v29 = v42;
      v30 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
      v8 = v30 == 0;
      if (!v30)
      {
        v35 = v29;
LABEL_50:
        v26 = v36;

        goto LABEL_51;
      }

      v31 = v30;
      v32 = *v44;
      while (2)
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v44 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [(CSDCallStateController *)v38 _contactForHandle:*(*(&v43 + 1) + 8 * k) contactStore:v24];
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v34 isCoreRecentsAccepted])
          {

LABEL_48:
            v35 = sub_100004778();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v57 = v29;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because handles are unknown %@", buf, 0xCu);
            }

            goto LABEL_50;
          }

          if (!v34)
          {
            goto LABEL_48;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }

      v8 = 1;
LABEL_27:
      v26 = v36;
LABEL_51:

LABEL_32:
    }
  }

  else
  {
LABEL_28:
    v8 = 0;
  }

  return v8;
}

- (void)sendCaptionsMessageToClientForCall:(id)a3 withCaptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CSDCallSateController sendCaptionsMessageToClientForCall", v10, 2u);
  }

  v9 = [(CSDCallStateController *)self relayMessagingController];
  [v9 sendCaptionsMessageToClientForCall:v7 withCaptions:v6];
}

- (BOOL)_sharingAudienceAllowsAutoSendNameAndPhoto
{
  v2 = +[IMMeCardSharingStateController sharedInstance];
  v3 = [v2 sharingAudience];

  if (v3 == 2)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because sharing audience is %ld", &v6, 0xCu);
    }
  }

  return v3 != 2;
}

- (BOOL)_hasAlreadyDeniedSendingNameAndPhotoToHandles:(id)a3
{
  v3 = a3;
  v4 = +[IMServiceImpl iMessageService];
  v5 = IMPreferredAccountForService();

  v6 = +[NSMutableSet set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 imHandleWithID:*(*(&v25 + 1) + 8 * i)];
        if (v12)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = *v22;
    while (2)
    {
      for (j = 0; j != v14; j = (j + 1))
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        v18 = +[IMNicknameController sharedInstance];
        LODWORD(v17) = [v18 handleIsDeniedForSharing:v17];

        if (v17)
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because has previously denied sending to handle", v20, 2u);
          }

          LOBYTE(v14) = 1;
          goto LABEL_22;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  return v14;
}

- (BOOL)isInCallUIActive
{
  v2 = TUBundleIdentifierInCallServiceApplication;
  v3 = [(CSDCallStateController *)self processObserver];
  v4 = [v3 fetchCurrentProcessStatesForBundleIdentifier:v2];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) integerValue] == 4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)hasCustomGreetingFor:(id)a3
{
  v4 = a3;
  v5 = [(CSDCallStateController *)self answeringMachineController];
  v6 = [v5 hasCustomGreetingFor:v4];

  return v6;
}

@end