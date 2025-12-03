@interface CSDCallStateController
+ (id)automaticNameAndPhotoQueue;
+ (void)sanitizeJoinConversationRequest:(id)request;
- (BOOL)_hasAlreadyDeniedSendingNameAndPhotoToHandles:(id)handles;
- (BOOL)_nameAndPhotoSharingEnabled;
- (BOOL)_nonRingingCallExistsOnThisDevice;
- (BOOL)_sharingAudienceAllowsAutoSendNameAndPhoto;
- (BOOL)_shouldLaunchInCallApplicationForProviderOfCall:(id)call;
- (BOOL)hasCustomGreetingFor:(id)for;
- (BOOL)isCallEligible:(id)eligible forClient:(id)client;
- (BOOL)isClientRecordingApplicationInstalled;
- (BOOL)isInCallUIActive;
- (BOOL)isTrackingVoIPCallForBundleIdentifier:(id)identifier;
- (BOOL)multipleCallsActiveOrHeld;
- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)handles callProvider:(id)provider;
- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)handles conversationProvider:(id)provider;
- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)handles isDefaultProvider:(BOOL)provider;
- (BOOL)shouldFilterClient:(id)client;
- (BOOL)shouldHandleCarPlayControlEvents;
- (BOOL)shouldRelayToOtherDevices;
- (BOOL)shouldSendCall:(id)call forClient:(id)client;
- (CSDCallContainer)callContainer;
- (CSDCallFilterController)callFilterController;
- (CSDCallStateController)init;
- (CSDCallStateController)initWithQueue:(id)queue assistantServicesObserver:(id)observer chManager:(id)manager;
- (CSDCallStateController)initWithQueue:(id)queue assistantServicesObserver:(id)observer featureFlags:(id)flags serverBag:(id)bag chManager:(id)manager;
- (IMNicknameProvider)nicknameProvider;
- (NSNumber)shouldHandleSecureMicrophoneEvents;
- (id)_screenWithRequest:(id)request;
- (id)callForClient:(id)client usingCall:(id)call;
- (id)callWithUniqueProxyIdentifier:(id)identifier fromCallsToAnswer:(id)answer;
- (id)clientInvalidationHandler;
- (id)currentCallsForClient:(id)client;
- (id)currentProxyCalls;
- (id)eligibleCallsByFilteringCalls:(id)calls forClient:(id)client;
- (id)fetchPreferredFaceTimeAccountID;
- (id)outgoingCallFromDialRequest:(id)request;
- (id)outgoingCallFromJoinRequest:(id)request;
- (id)pendingCallInfoForUUID:(id)d;
- (id)performDialCall:(id)call displayContext:(id)context;
- (id)performJoinConversation:(id)conversation;
- (void)_answerIncomingCall:(id)call withBehavior:(int64_t)behavior;
- (void)_answerIncomingCallAsConversation:(id)conversation;
- (void)_dial:(id)_dial displayContext:(id)context completion:(id)completion;
- (void)_endProxyCallsForConnectingVideoCall;
- (void)_handleActiveCallStatusChangeForHostedCall:(id)call;
- (void)_handleAudioSessionInterruptionNotification:(id)notification;
- (void)_handleCSDRelayIDSActiveAccountsChanged:(id)changed;
- (void)_handleCSDRelayPairedDeviceConnectedNotification:(id)notification;
- (void)_handleCallConnectedNotification:(id)notification;
- (void)_handleCallDisplayContextChangedNotification:(id)notification;
- (void)_handleCallIsEmergencyChangedNotification:(id)notification;
- (void)_handleCallIsUsingBasebandChangedNotification:(id)notification;
- (void)_handleCallModelChangedNotification:(id)notification;
- (void)_handleCallRemoteParticipantHandlesChangedNotification:(id)notification;
- (void)_handleCallShouldSuppressRingtoneChangedNotification:(id)notification;
- (void)_handleCallStartedConnectingNotification:(id)notification;
- (void)_handleCallStartedOutgoingNotification:(id)notification;
- (void)_handleCallStatusChangedNotification:(id)notification;
- (void)_handleCallWantsHoldMusicChangedNotification:(id)notification;
- (void)_handleCarPlayControlEventNotification:(id)notification;
- (void)_handleConnectedCallStatusChangeForHostedCall:(id)call;
- (void)_handleConnectingCallStatusChangeForHostedCall:(id)call;
- (void)_handleConversationGroupUUIDChangedNotification:(id)notification;
- (void)_handleDisconnectedCallStatusChangeForHostedCall:(id)call;
- (void)_handleDisconnectedCallStatusChangeForVoicemailCall;
- (void)_handleFaceTimeAvailabilityChangedNotification:(id)notification;
- (void)_handleFailureExpectedChangedNotification:(id)notification;
- (void)_handleGroupUUIDChangeForHostedCall:(id)call;
- (void)_handleGroupUUIDChangedNotification:(id)notification;
- (void)_handleHardPauseStateChangedNotification:(id)notification;
- (void)_handleHeldCallStatusChangeForHostedCall:(id)call;
- (void)_handleInvitationSentNotification:(id)notification;
- (void)_handleLastReceptionistMessageChangedNotification:(id)notification;
- (void)_handleLocaleChange:(id)change;
- (void)_handleMixesVoiceWithMediaChangedNotification:(id)notification;
- (void)_handleNeedsManualInCallSoundsChangedNotification:(id)notification;
- (void)_handlePreferredRouteChangedNotification:(id)notification;
- (void)_handleReceptionistSessionChangedNotification:(id)notification;
- (void)_handleReceptionistStateChangedNotification:(id)notification;
- (void)_handleRelayCallingChanged;
- (void)_handleResetCallStateNotification:(id)notification;
- (void)_handleRingingCallStatusChangeForHostedCall:(id)call;
- (void)_handleScreeningAnnouncementHasFinishedChangedNotification:(id)notification;
- (void)_handleScreeningChangedNotification:(id)notification;
- (void)_handleSendingCallStatusChangeForHostedCall:(id)call;
- (void)_handleSupportsDTMFUpdatesChangedNotification:(id)notification;
- (void)_handleSupportsEmergencyFallbackChangedNotification:(id)notification;
- (void)_handleSystemVolumeDidChangeNotification:(id)notification;
- (void)_handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification;
- (void)_handleTUCallTTYTypeChangedNotification:(id)notification;
- (void)_handleUpdateRemoteUplinkMutedChangedNotification:(id)notification;
- (void)_launchICSForScreeningIfNeeded;
- (void)_launchInCallApplicationForCall:(id)call withURL:(id)l;
- (void)_launchInCallApplicationForExistingCall;
- (void)_launchInCallApplicationForIncomingCallIfNecessary:(id)necessary;
- (void)_launchInCallApplicationForOutgoingCallIfNecessary:(id)necessary;
- (void)_launchInCallApplicationInTheBackground;
- (void)_performSmartHoldingRequest:(id)request completion:(id)completion;
- (void)_sendClientsReceivedCallDTMFUpdate:(id)update forCall:(id)call;
- (void)_updateBluetoothAudioFormatIfNecessaryDueToMVMChange:(BOOL)change;
- (void)_updateRoutesForDisconnectedCall;
- (void)activateInCallUIWithActivityContinuationIdentifier:(id)identifier;
- (void)addPendingCallInfo:(id)info;
- (void)answerCallWithRequest:(id)request;
- (void)callHistoryManager:(id)manager recentCallRequestedFor:(id)for withStartDate:(id)date avMode:(unint64_t)mode;
- (void)clearPendingCallInfoForUUID:(id)d;
- (void)containsRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously reply:(id)reply;
- (void)customSandboxedURLGreetingForAccountUUID:(id)d withCompletion:(id)completion;
- (void)deactivatePTTBargeCalls;
- (void)dealloc;
- (void)defaultGreeting:(id)greeting;
- (void)deleteCustomGreetingForAccountUUID:(id)d;
- (void)dialWithRequest:(id)request displayContext:(id)context;
- (void)dialWithRequest:(id)request reply:(id)reply;
- (void)didChangeFaceTimeCallingAvailability;
- (void)didChangeRelayCallingCapabilities;
- (void)disconnectAllCalls;
- (void)disconnectBargeCall:(id)call bundleIdentifier:(id)identifier reason:(int)reason;
- (void)disconnectBargeCallsWithBundleIdentifier:(id)identifier reason:(int)reason;
- (void)disconnectCallWithUniqueProxyIdentifier:(id)identifier;
- (void)disconnectCurrentCall;
- (void)disconnectCurrentCallAndActivateHeld;
- (void)downloadAndGenerateTranslationDisclosures;
- (void)enteredBackgroundForAllCalls;
- (void)enteredForegroundForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)fetchAnonymousXPCEndpoint:(id)endpoint;
- (void)fetchCurrentCallUpdates:(id)updates;
- (void)filterStatusForAddresses:(id)addresses forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)groupCallWithUniqueProxyIdentifier:(id)identifier withOtherCallWithUniqueProxyIdentifier:(id)proxyIdentifier;
- (void)handleReceivedCallDTMFUpdate:(id)update forCall:(id)call;
- (void)handleVolumeUpdateFromPairedDevice:(float)device;
- (void)holdCallWithUniqueProxyIdentifier:(id)identifier;
- (void)invalidate;
- (void)isRestrictedExclusivelyByScreenTime:(id)time forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously reply:(id)reply;
- (void)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)joinConversationWithRequest:(id)request;
- (void)localRoutesByUniqueIdentifier:(id)identifier;
- (void)pairedHostDeviceRoutesByUniqueIdentifier:(id)identifier;
- (void)performAnswerCall:(id)call withRequest:(id)request;
- (void)performAnswerCallAsAudioDowngrade:(id)downgrade withRequest:(id)request;
- (void)performAnswerCallAsVideoUpgrade:(id)upgrade withRequest:(id)request;
- (void)performDisconnectCall:(id)call;
- (void)performDisconnectCurrentCall;
- (void)performDisconnectCurrentCallAndActivateHeld:(BOOL)held;
- (void)performEndActiveAndAnswerCall:(id)call withRequest:(id)request;
- (void)performEndHeldAndAnswerCall:(id)call withRequest:(id)request;
- (void)performGroupCall:(id)call withCall:(id)withCall;
- (void)performHoldActiveAndAnswerCall:(id)call withRequest:(id)request;
- (void)performHoldCall:(id)call;
- (void)performPullCallFromClientUsingHandoffActivityUserInfo:(id)info completion:(id)completion;
- (void)performPullHostedCallsFromPairedHostDevice;
- (void)performPullRelayingCallsFromClientAndUpdateEndpoint:(BOOL)endpoint updateExpectedDestination:(BOOL)destination onlyIfNeedsEndpointConversationRelaySupport:(BOOL)support;
- (void)performPushHostedCallsToDestination:(id)destination;
- (void)performPushRelayingCallsToHostWithSourceIdentifier:(id)identifier;
- (void)performRecordingRequest:(id)request completion:(id)completion;
- (void)performSendMMIOrUSSDCodeWithRequest:(id)request;
- (void)performSetLiveVoicemailUnavailableReason:(int64_t)reason forCall:(id)call;
- (void)performSmartHoldingRequest:(id)request completion:(id)completion;
- (void)performSwapCalls;
- (void)performTranslationRequest:(id)request completion:(id)completion;
- (void)performUngroupCall:(id)call;
- (void)performUnholdCall:(id)call;
- (void)performUpdateCallWithProxy:(id)proxy;
- (void)pickLocalRouteWithUniqueIdentifier:(id)identifier shouldWaitUntilAvailable:(BOOL)available;
- (void)pickPairedHostDeviceRouteWithUniqueIdentifier:(id)identifier shouldWaitUntilAvailable:(BOOL)available;
- (void)playDTMFToneForCallWithUniqueProxyIdentifier:(id)identifier key:(unsigned __int8)key;
- (void)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)propertiesChangedForCall:(id)call;
- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain;
- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)info reply:(id)reply;
- (void)pullHostedCallsFromPairedHostDevice;
- (void)pullPersistedChannel:(id)channel;
- (void)pullRelayingCallsFromClient;
- (void)pullRelayingGFTCallsFromClientIfNecessary;
- (void)pushHostedCallsToDestination:(id)destination;
- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)identifier;
- (void)registerAnonymousXPCEndpoint:(id)endpoint;
- (void)registerForSecureMicEvents;
- (void)reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)requestInitialState:(id)state;
- (void)requestVideoUpgradeForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)resetClientCallProvisionalStates;
- (void)saveCustomSandboxedURLGreeting:(id)greeting forAccountUUID:(id)d;
- (void)screenUpdate:(id)update withProvider:(id)provider callSource:(id)source callUUID:(id)d screeningType:(int64_t)type;
- (void)screenWithRequest:(id)request;
- (void)sendAutomaticNameAndPhotoUsingDialRequestIfPossible:(id)possible;
- (void)sendAutomaticNameAndPhotoUsingJoinRequestIfPossible:(id)possible;
- (void)sendCaptionsMessageToClientForCall:(id)call withCaptions:(id)captions;
- (void)sendClientsNotificationName:(id)name forCall:(id)call userInfo:(id)info;
- (void)sendHardPauseDigitsForCallWithUniqueProxyIdentifier:(id)identifier;
- (void)sendMMIOrUSSDCodeWithRequest:(id)request;
- (void)sendNameAndPhotoToHandles:(id)handles fromID:(id)d;
- (void)sendNameAndPhotoUsingDialRequest:(id)request;
- (void)sendNameAndPhotoUsingJoinRequest:(id)request;
- (void)sendReceptionistReply:(id)reply;
- (void)setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:(id)identifier bluetoothAudioFormat:(int64_t)format;
- (void)setCallDelegatesIfNeeded:(id)needed;
- (void)setClientCapabilities:(id)capabilities;
- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)d;
- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)d;
- (void)setDownlinkMuted:(BOOL)muted forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setEmergencyMediaItems:(id)items forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setHasEmergencyVideoStream:(BOOL)stream forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setIsSendingVideo:(BOOL)video forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setLiveVoicemailUnavailableReason:(int64_t)reason forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setLocalDeviceVolume:(float)volume;
- (void)setMixesVoiceWithMedia:(BOOL)media forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setPairedHostDeviceVolume:(float)volume;
- (void)setRelayMessagingController:(id)controller;
- (void)setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:(id)identifier size:(CGSize)size;
- (void)setRemoteVideoPresentationStateForCallWithUniqueProxyIdentifier:(id)identifier presentationState:(int)state;
- (void)setScreenShareAttributesForCallWithUniqueProxyIdentifier:(id)identifier attributes:(id)attributes;
- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setSharingScreen:(BOOL)screen forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setTTYType:(int)type forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)setUplinkMuted:(BOOL)muted forCallWithUniqueProxyIdentifier:(id)identifier;
- (void)shouldAllowRingingCallStatusIndicator:(BOOL)indicator;
- (void)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously reply:(id)reply;
- (void)shouldSuppressInCallStatusBar:(BOOL)bar;
- (void)startReceptionistReply;
- (void)startTransmissionForBargeCall:(id)call sourceIsHandsfreeAccessory:(BOOL)accessory;
- (void)stopTransmissionForBargeCall:(id)call sourceIsHandsfreeAccessory:(BOOL)accessory;
- (void)swapCalls;
- (void)ungroupCallWithUniqueProxyIdentifier:(id)identifier;
- (void)unholdCallWithUniqueProxyIdentifier:(id)identifier;
- (void)updateCallWithProxy:(id)proxy;
- (void)updateClientsWithCall:(id)call;
- (void)updateClientsWithCaptionsResults:(id)results forCall:(id)call;
- (void)updateClientsWithFrequency:(id)frequency inDirection:(int)direction forCalls:(id)calls;
- (void)updateClientsWithMeterLevel:(float)level inDirection:(int)direction forCalls:(id)calls;
- (void)validateIMAVPush:(id)push reply:(id)reply;
- (void)willEnterBackgroundForAllCalls;
- (void)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier reply:(id)reply;
@end

@implementation CSDCallStateController

- (id)currentProxyCalls
{
  callContainer = [(CSDCallStateController *)self callContainer];
  _allCalls = [callContainer _allCalls];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [_allCalls count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = _allCalls;
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
  callController = [(CSDCallStateController *)self callController];
  callContainer = [callController callContainer];

  return callContainer;
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
  sharingEnabled = [v2 sharingEnabled];

  return sharingEnabled;
}

- (void)deactivatePTTBargeCalls
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for active PushToTalk barge calls to deactivate.", buf, 2u);
  }

  callContainer = [(CSDCallStateController *)self callContainer];
  v5 = [callContainer bargeCallsPassingTest:&stru_10061E0F0];

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
  callContainer = [(CSDCallStateController *)self callContainer];
  v3 = [callContainer countOfCallsPassingTest:&stru_10061E0D0];

  return v3 > 1;
}

- (void)downloadAndGenerateTranslationDisclosures
{
  v3 = +[NSProcessInfo processInfo];
  environment = [v3 environment];

  v5 = [environment objectForKey:@"ATP"];
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
  localRouteController = [(CSDCallStateController *)self localRouteController];
  [localRouteController clearState];

  pairedHostDeviceRouteController = [(CSDCallStateController *)self pairedHostDeviceRouteController];
  [pairedHostDeviceRouteController clearState];
}

- (CSDCallStateController)initWithQueue:(id)queue assistantServicesObserver:(id)observer chManager:(id)manager
{
  managerCopy = manager;
  observerCopy = observer;
  queueCopy = queue;
  v11 = objc_alloc_init(TUFeatureFlags);
  v12 = objc_alloc_init(CSDSharedConversationServerBag);
  v13 = [(CSDCallStateController *)self initWithQueue:queueCopy assistantServicesObserver:observerCopy featureFlags:v11 serverBag:v12 chManager:managerCopy];

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

- (CSDCallStateController)initWithQueue:(id)queue assistantServicesObserver:(id)observer featureFlags:(id)flags serverBag:(id)bag chManager:(id)manager
{
  queueCopy = queue;
  observerCopy = observer;
  flagsCopy = flags;
  bagCopy = bag;
  managerCopy = manager;
  v14 = [(CSDCallStateController *)self init];
  if (v14)
  {
    dispatch_assert_queue_V2(queueCopy);
    objc_storeStrong(&v14->_queue, queue);
    objc_storeStrong(&v14->_featureFlags, flags);
    objc_storeStrong(&v14->_serverBag, bag);
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
    clientInvalidationHandler = [(CSDCallStateController *)v14 clientInvalidationHandler];
    [(CSDClientManager *)v14->_clientManager setInvalidationHandler:clientInvalidationHandler];

    queue = v14->_queue;
    synchronousExportedObjectProxy = [(CSDClientManager *)v14->_clientManager synchronousExportedObjectProxy];
    v22 = [TUCallCenter sharedInstanceWithQueue:queue server:synchronousExportedObjectProxy shouldRegister:0];

    v23 = v14->_clientManager;
    callServicesInterface = [v22 callServicesInterface];
    [(CSDClientManager *)v23 addLocalClientObject:callServicesInterface];

    [v22 registerWithCompletionHandler:0];
    v25 = objc_alloc_init(_TtC13callservicesd25ConversationDialingServer);
    dialingServer = v14->_dialingServer;
    v14->_dialingServer = v25;

    v27 = [[CSDCallHistoryManager alloc] initWithCHManager:managerCopy];
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
    v38 = [CSDReportingController sharedInstanceWithQueue:queueCopy];
    v39 = [(CSDConversationManager *)v37 initWithReportingController:v38 cpApplicationController:v107 invitationResolver:v108];

    featureFlags = [(CSDCallStateController *)v14 featureFlags];
    LODWORD(v37) = [featureFlags sharePlayInCallsEnabled];

    if (v37)
    {
      v41 = [CSDConversationCallCoordinationManager alloc];
      sharePlayAvailabilityManager = [(CSDConversationManager *)v39 sharePlayAvailabilityManager];
      activitySessionContainerProvider = [(CSDConversationManager *)v39 activitySessionContainerProvider];
      v44 = -[CSDConversationCallCoordinationManager initWithConversationManager:sharePlayAvailabilityManager:compositeContainerProvider:relaySupportEnabled:serverBag:queue:](v41, "initWithConversationManager:sharePlayAvailabilityManager:compositeContainerProvider:relaySupportEnabled:serverBag:queue:", v39, sharePlayAvailabilityManager, activitySessionContainerProvider, [flagsCopy sharePlayInCallsForRelayEnabled], bagCopy, queueCopy);
      conversationCallCoordinationManager = v14->_conversationCallCoordinationManager;
      v14->_conversationCallCoordinationManager = v44;

      activitySessionContainerProvider2 = [(CSDConversationManager *)v39 activitySessionContainerProvider];
      [activitySessionContainerProvider2 registerChildProvider:v14->_conversationCallCoordinationManager];
    }

    v47 = [[CSDProviderCallDataSource alloc] initWithCallStateController:v14 queue:v14->_queue assistantServicesObserver:observerCopy coreTelephonyClient:0 chManager:managerCopy callSourceManager:0 protectedAppsUtilities:0 conversationManager:v39 communicationTrustScoreDataProvider:0 deviceSupport:0 featureFlags:flagsCopy];
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
    providerCallDataSource = [(CSDCallStateController *)v14 providerCallDataSource];
    faceTimeProviderDelegate = [providerCallDataSource faceTimeProviderDelegate];
    firewallManager = [faceTimeProviderDelegate firewallManager];
    [(CSDCallHistoryController *)v66 setDelegate:firewallManager];

    v70 = [[CSDCallHistoryControllerXPCServer alloc] initWithCallHistoryController:v14->_callHistoryController];
    callHistoryControllerXPCServer = v14->_callHistoryControllerXPCServer;
    v14->_callHistoryControllerXPCServer = v70;

    [(CSDCallStateController *)v14 _handleRelayCallingChanged];
    v72 = [[CSDRecentsController alloc] initWithQueue:v14->_queue chManager:managerCopy providerManager:v14->_callProviderManager];
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

    featureFlags2 = [(CSDCallStateController *)v76 featureFlags];
    callRecordingEnabled = [featureFlags2 callRecordingEnabled];

    if (callRecordingEnabled)
    {
      v91 = [[CSDCallRecordingControllerFacade alloc] initWithQueue:queueCopy speechAssetManager:v76->_speechAssetManager];
      callRecordingControllerFacade = v76->_callRecordingControllerFacade;
      v76->_callRecordingControllerFacade = v91;
    }

    featureFlags3 = [(CSDCallStateController *)v76 featureFlags];
    audioCallTranslationEnabled = [featureFlags3 audioCallTranslationEnabled];

    if (audioCallTranslationEnabled)
    {
      v95 = [[CSDCallTranslationController alloc] initWithQueue:queueCopy speechAssetManager:v76->_speechAssetManager];
      callTranslationController = v76->_callTranslationController;
      v76->_callTranslationController = v95;
    }

    featureFlags4 = [(CSDCallStateController *)v76 featureFlags];
    waitOnHoldEnabled = [featureFlags4 waitOnHoldEnabled];

    if (waitOnHoldEnabled)
    {
      v99 = objc_alloc_init(CSDSmartHoldingController);
      smartHoldingController = v76->_smartHoldingController;
      v76->_smartHoldingController = v99;
    }

    featureFlags5 = [(CSDCallStateController *)v76 featureFlags];
    sessionBasedMutingEnabled = [featureFlags5 sessionBasedMutingEnabled];

    if (sessionBasedMutingEnabled)
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
  clientManager = [(CSDCallStateController *)self clientManager];
  [clientManager invalidate];
}

- (void)handleVolumeUpdateFromPairedDevice:(float)device
{
  queue = [(CSDCallStateController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001C1BA8;
  v6[3] = &unk_100619EF8;
  v6[4] = self;
  deviceCopy = device;
  dispatch_async(queue, v6);
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
  callHistoryManagerXPCServer = [(CSDCallStateController *)self callHistoryManagerXPCServer];
  [callHistoryManagerXPCServer invalidate];

  callProviderManagerXPCServer = [(CSDCallStateController *)self callProviderManagerXPCServer];
  [callProviderManagerXPCServer invalidate];

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
  providerCallDataSource = [(CSDCallStateController *)self providerCallDataSource];
  callFilterController = [providerCallDataSource callFilterController];

  return callFilterController;
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
    callContainer = [(CSDCallStateController *)self callContainer];
    callsHostedElsewhere = [callContainer callsHostedElsewhere];

    v8 = [callsHostedElsewhere countByEnumeratingWithState:&v28 objects:v35 count:16];
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
            objc_enumerationMutation(callsHostedElsewhere);
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
          relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
          [relayMessagingController disconnectMessagingConnectionForCall:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [callsHostedElsewhere countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v9);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    callContainer2 = [(CSDCallStateController *)self callContainer];
    callsWithAnEndpointElsewhere = [callContainer2 callsWithAnEndpointElsewhere];

    v17 = [callsWithAnEndpointElsewhere countByEnumeratingWithState:&v24 objects:v32 count:16];
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
            objc_enumerationMutation(callsWithAnEndpointElsewhere);
          }

          v21 = *(*(&v24 + 1) + 8 * i);
          v22 = sub_100004778();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Disconnecting call being relayed elsewhere because relay calling is no longer enabled: %@", buf, 0xCu);
          }

          callCenter = [(CSDCallStateController *)self callCenter];
          [callCenter disconnectCall:v21 withReason:8];
        }

        v18 = [callsWithAnEndpointElsewhere countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }
  }
}

- (void)setRelayMessagingController:(id)controller
{
  controllerCopy = controller;
  if (self->_relayMessagingController != controllerCopy)
  {
    v7 = controllerCopy;
    objc_storeStrong(&self->_relayMessagingController, controller);
    [(CSDCallStateController *)self _requestCallStateFromHost];
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendResetStateMessageToClient];

    controllerCopy = v7;
  }
}

- (BOOL)shouldHandleCarPlayControlEvents
{
  callContainer = [(CSDCallStateController *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
  v7 = [currentAudioAndVideoCalls count];
  if (!v7)
  {
    callContainer2 = [(CSDCallStateController *)self callContainer];
    bargeCalls = [callContainer2 bargeCalls];
    if (![bargeCalls count])
    {
      isCarPlayConnected = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  carPlayManager = [(CSDCallStateController *)self carPlayManager];
  isCarPlayConnected = [carPlayManager isCarPlayConnected];

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_7:

  return isCarPlayConnected;
}

- (void)_handleLocaleChange:(id)change
{
  changeCopy = change;
  queue = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C2A38;
  v7[3] = &unk_100619D88;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

- (void)_handleAudioSessionInterruptionNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C2CF4;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_handleSystemVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  callContainer = [(CSDCallStateController *)self callContainer];
  v6 = [callContainer callPassingTest:&stru_10061DAE0];

  if (v6)
  {
    userInfo = [notificationCopy userInfo];
    v8 = [userInfo objectForKey:@"Volume"];
    [v8 floatValue];
    v10 = v9;

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Setting paired host device volume: %f", &v14, 0xCu);
    }

    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    *&v13 = v10;
    [relayMessagingController sendUpdateSystemVolume:v13];
  }
}

- (void)_handleCarPlayControlEventNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C30D4;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_answerIncomingCall:(id)call withBehavior:(int64_t)behavior
{
  callCopy = call;
  v7 = [[TUAnswerRequest alloc] initWithCall:callCopy];
  [v7 setSourceIdentifier:TUCallSourceIdentifierCarPlay];
  [v7 setBehavior:behavior];
  [v7 setDowngradeToAudio:1];
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = callCopy;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Answering incoming call: %@, %@", &v10, 0x16u);
  }

  callCenter = [(CSDCallStateController *)self callCenter];
  [callCenter answerWithRequest:v7];
}

- (void)_answerIncomingCallAsConversation:(id)conversation
{
  conversationCopy = conversation;
  callCenter = [(CSDCallStateController *)self callCenter];
  v6 = [callCenter activeConversationForCall:conversationCopy];

  v7 = [[TUJoinConversationRequest alloc] initWithConversation:v6 originatingUIType:45];
  [v7 setVideoEnabled:{objc_msgSend(conversationCopy, "isVideo")}];
  [v7 setVideo:{objc_msgSend(conversationCopy, "isVideo")}];
  uniqueProxyIdentifierUUID = [conversationCopy uniqueProxyIdentifierUUID];
  [v7 setUUID:uniqueProxyIdentifierUUID];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = conversationCopy;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Answering incoming call as conversation: %@, %@", &v12, 0x16u);
  }

  callCenter2 = [(CSDCallStateController *)self callCenter];
  v11 = [callCenter2 joinConversationWithConversationRequest:v7];
}

- (void)_launchInCallApplicationForIncomingCallIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = +[CSDCallCapabilities sharedInstance];
  if (![v5 _supportslaunchingInCallApplicationForIncomingCall])
  {
LABEL_6:

    goto LABEL_7;
  }

  v6 = [(CSDCallStateController *)self _shouldLaunchInCallApplicationForProviderOfCall:necessaryCopy];

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

    [(CSDCallStateController *)self _launchInCallApplicationForCall:necessaryCopy withURL:v5];
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

- (void)_launchInCallApplicationForOutgoingCallIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = +[CSDCallCapabilities sharedInstance];
  if (![v5 _supportslaunchingInCallApplicationForIncomingCall])
  {
LABEL_13:

    goto LABEL_14;
  }

  v6 = [(CSDCallStateController *)self _shouldLaunchInCallApplicationForProviderOfCall:necessaryCopy];

  if (v6)
  {
    v5 = +[NSURL faceTimeShowInCallUIURL];
    if (([necessaryCopy isConversation] & 1) == 0)
    {
      v7 = necessaryCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isExpanseProvider = [v7 isExpanseProvider];

        if (isExpanseProvider)
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

    [(CSDCallStateController *)self _launchInCallApplicationForCall:necessaryCopy withURL:v5];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_launchInCallApplicationForExistingCall
{
  v2 = +[CSDCallCapabilities sharedInstance];
  _supportslaunchingInCallApplicationForIncomingCall = [v2 _supportslaunchingInCallApplicationForIncomingCall];

  if (_supportslaunchingInCallApplicationForIncomingCall)
  {
    v5 = +[NSURL faceTimeShowInCallUIURL];
    v4 = v5;
    TUOpenURLWithCompletion();
  }
}

- (void)_launchInCallApplicationForCall:(id)call withURL:(id)l
{
  callCopy = call;
  lCopy = l;
  v6 = callCopy;
  v7 = lCopy;
  TUOpenURLWithCompletion();
}

- (BOOL)_shouldLaunchInCallApplicationForProviderOfCall:(id)call
{
  callCopy = call;
  callCenter = [(CSDCallStateController *)self callCenter];
  v6 = [callCenter activeConversationForCall:callCopy];

  featureFlags = [(CSDCallStateController *)self featureFlags];
  isDefaultProvider = 1;
  if ([featureFlags groupFacetimeAsAServiceEnabled] && v6)
  {
    provider = [v6 provider];
    isDefaultProvider = [provider isDefaultProvider];
  }

  return isDefaultProvider;
}

- (void)_endProxyCallsForConnectingVideoCall
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  callContainer = [(CSDCallStateController *)self callContainer];
  currentCalls = [callContainer currentCalls];

  v5 = [currentCalls countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(currentCalls);
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

          callCenter = [(CSDCallStateController *)self callCenter];
          [callCenter disconnectCall:v10];
        }
      }

      v7 = [currentCalls countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)updateClientsWithCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = callCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating clients with call: %@", buf, 0xCu);
  }

  currentProxyCalls = [(CSDCallStateController *)self currentProxyCalls];
  v7 = [TUProxyCall proxyCallWithCall:callCopy];
  queue = [(CSDCallStateController *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001C46A4;
  v12[3] = &unk_10061A450;
  v12[4] = self;
  v13 = v7;
  v14 = callCopy;
  v15 = currentProxyCalls;
  v9 = currentProxyCalls;
  v10 = callCopy;
  v11 = v7;
  dispatch_async(queue, v12);
}

- (id)eligibleCallsByFilteringCalls:(id)calls forClient:(id)client
{
  callsCopy = calls;
  clientCopy = client;
  v8 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = callsCopy;
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
        if ([(CSDCallStateController *)self isCallEligible:v14 forClient:clientCopy, v17])
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

- (BOOL)shouldFilterClient:(id)client
{
  isRemote = [client isRemote];
  if (isRemote)
  {
    featureFlags = [(CSDCallStateController *)self featureFlags];
    filterGFTaaSCalls = [featureFlags filterGFTaaSCalls];

    LOBYTE(isRemote) = filterGFTaaSCalls;
  }

  return isRemote;
}

- (BOOL)shouldSendCall:(id)call forClient:(id)client
{
  callCopy = call;
  clientCopy = client;
  if ([(CSDCallStateController *)self shouldFilterClient:clientCopy])
  {
    callCenter = [(CSDCallStateController *)self callCenter];
    v9 = [callCenter activeConversationForCall:callCopy];

    provider = [v9 provider];
    isTelephonyWithSharePlayProvider = [provider isTelephonyWithSharePlayProvider];

    if (isTelephonyWithSharePlayProvider)
    {
      v12 = 1;
LABEL_20:

      goto LABEL_21;
    }

    provider2 = [v9 provider];
    identifier = [provider2 identifier];

    if (!identifier)
    {
      if (![callCopy isConversation])
      {
        identifier = 0;
        goto LABEL_18;
      }

      providerContext = [callCopy providerContext];
      identifier = [providerContext objectForKeyedSubscript:TUConversationProviderIdentifierKey];

      if (!identifier)
      {
        goto LABEL_18;
      }
    }

    if (([TUConversationProvider matchesDefaultProviderIdentifier:identifier]& 1) == 0)
    {
      v15 = +[CSDConversationProviderManager sharedInstance];
      v16 = [v15 providerIdentifiersForClient:clientCopy];

      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412546;
        v21 = v16;
        v22 = 2112;
        v23 = clientCopy;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "providerIdentifiers: %@ client: %@", &v20, 0x16u);
      }

      v12 = [v16 count] && (objc_msgSend(v16, "containsObject:", identifier) & 1) != 0;
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

- (BOOL)isCallEligible:(id)eligible forClient:(id)client
{
  eligibleCopy = eligible;
  clientCopy = client;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  capabilities = [clientCopy capabilities];
  wantsToScreenCalls = [capabilities wantsToScreenCalls];

  v20 = wantsToScreenCalls;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001C5508;
  v16[3] = &unk_10061D3F0;
  v16[4] = &v17;
  sub_100004AA4(clientCopy, @"access-screen-calls", v16, 0, "[CSDCallStateController isCallEligible:forClient:]");
  featureFlags = [(CSDCallStateController *)self featureFlags];
  if ([featureFlags nearbyFaceTimeEnabled])
  {
    wantsToScreenCalls = [clientCopy capabilities];
    if ([wantsToScreenCalls excludeFullNearbyCalls])
    {
      v11 = [eligibleCopy nearbyMode] != 2;
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

  featureFlags2 = [(CSDCallStateController *)self featureFlags];
  if ([featureFlags2 callScreeningEnabledM3] && objc_msgSend(clientCopy, "isRemote") && objc_msgSend(eligibleCopy, "isScreening") && (v18[3] & 1) == 0 && objc_msgSend(eligibleCopy, "status") != 5 && objc_msgSend(eligibleCopy, "status") != 6)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    isRemote = [clientCopy isRemote];
    if (isRemote && ([eligibleCopy provider], wantsToScreenCalls = objc_claimAutoreleasedReturnValue(), !objc_msgSend(wantsToScreenCalls, "supportsCurrentPlatform")))
    {
      LOBYTE(v14) = 0;
    }

    else
    {
      v14 = [(CSDCallStateController *)self shouldSendCall:eligibleCopy forClient:clientCopy]&& v11;
      if (!isRemote)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_19:

  _Block_object_dispose(&v17, 8);
  return v14;
}

- (void)updateClientsWithFrequency:(id)frequency inDirection:(int)direction forCalls:(id)calls
{
  frequencyCopy = frequency;
  callsCopy = calls;
  queue = [(CSDCallStateController *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001C5604;
  v13[3] = &unk_10061A068;
  directionCopy = direction;
  v13[4] = self;
  v14 = callsCopy;
  v15 = frequencyCopy;
  v11 = frequencyCopy;
  v12 = callsCopy;
  dispatch_async(queue, v13);
}

- (void)updateClientsWithMeterLevel:(float)level inDirection:(int)direction forCalls:(id)calls
{
  callsCopy = calls;
  queue = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C58C0;
  block[3] = &unk_100619F20;
  directionCopy = direction;
  block[4] = self;
  v12 = callsCopy;
  levelCopy = level;
  v10 = callsCopy;
  dispatch_async(queue, block);
}

- (void)updateClientsWithCaptionsResults:(id)results forCall:(id)call
{
  resultsCopy = results;
  queue = [(CSDCallStateController *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C5B24;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = resultsCopy;
  v7 = resultsCopy;
  dispatch_async(queue, v8);
}

- (void)resetClientCallProvisionalStates
{
  queue = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C5C78;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sendClientsNotificationName:(id)name forCall:(id)call userInfo:(id)info
{
  nameCopy = name;
  callCopy = call;
  infoCopy = info;
  queue = [(CSDCallStateController *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001C5E08;
  v15[3] = &unk_10061A450;
  v16 = callCopy;
  selfCopy = self;
  v18 = nameCopy;
  v19 = infoCopy;
  v12 = infoCopy;
  v13 = nameCopy;
  v14 = callCopy;
  dispatch_async(queue, v15);
}

- (void)handleReceivedCallDTMFUpdate:(id)update forCall:(id)call
{
  updateCopy = update;
  callCopy = call;
  [(CSDCallStateController *)self _sendClientsReceivedCallDTMFUpdate:updateCopy forCall:callCopy];
  if ([callCopy isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendReceivedDTMFUpdateForCall:callCopy dtmfUpdate:updateCopy];
  }
}

- (void)_sendClientsReceivedCallDTMFUpdate:(id)update forCall:(id)call
{
  updateCopy = update;
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C60E8;
  block[3] = &unk_100619E58;
  v12 = callCopy;
  selfCopy = self;
  v14 = updateCopy;
  v9 = updateCopy;
  v10 = callCopy;
  dispatch_async(queue, block);
}

- (void)_handleCallDisplayContextChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateCallDisplayContextMessageToClientForCall:object];
  }
}

- (void)_handleUpdateRemoteUplinkMutedChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateRemoteUplinkMutedCallMessageToClientForCall:object];
  }
}

- (void)_handleTUCallSupportsTTYWithVoiceChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateSupportsTTYWithVoiceCallMessageToClientForCall:object];
  }
}

- (void)_handleTUCallTTYTypeChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendSetTTYTypeCallMessageForCall:object ttyType:{objc_msgSend(object, "ttyType")}];
  }
}

- (void)_handleMixesVoiceWithMediaChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 2112;
    v11 = notificationCopy;
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v8, 0x16u);
  }

  [(CSDCallStateController *)self _updateBluetoothAudioFormatIfNecessaryDueToMVMChange:1];
}

- (void)_handleFailureExpectedChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateFailureExpectedMessageToClientForCall:object];
  }
}

- (void)_handleSupportsEmergencyFallbackChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateSupportsEmergencyFallbackToClientForCall:object];
  }
}

- (void)_handleSupportsDTMFUpdatesChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateSupportsDTMFUpdatesToClientForCall:object];
  }
}

- (void)_handleGroupUUIDChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling groupUUIDChangedNotification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  v8 = object;
  if (object && [object isHostedOnCurrentDevice])
  {
    [(CSDCallStateController *)self _handleGroupUUIDChangeForHostedCall:v8];
  }
}

- (void)_handleScreeningChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendScreeningChangedForCall:object];
  }

  if ([object isScreening])
  {
    [(CSDCallStateController *)self _launchInCallApplicationInTheBackground];
  }
}

- (void)_handleReceptionistStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendReceptionistStateChangedForCall:object];
  }

  if ([object isScreening] && objc_msgSend(object, "receptionistState") == 3)
  {
    [(CSDCallStateController *)self _launchInCallApplicationForIncomingCallIfNecessary:object];
  }
}

- (void)_handleLastReceptionistMessageChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendLastReceptionistMessageChangedForCall:object];
  }
}

- (void)_handleReceptionistSessionChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendReceptionistSessionChangedForCall:object];
  }
}

- (void)_handleScreeningAnnouncementHasFinishedChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendAnnouncementHasFinishedChangedForCall:object];
  }
}

- (void)_handleConversationGroupUUIDChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling conversationGroupUUIDChangedNotification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if (object)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateRemoteCallStateMessageToClient:1];
  }
}

- (void)_handleCallStatusChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v27, 0xCu);
  }

  object = [notificationCopy object];
  v8 = object;
  if (object)
  {
    provider = [object provider];
    if ([provider isFaceTimeProvider])
    {
      isActive = [v8 isActive];

      if (isActive)
      {
        [(CSDCallStateController *)self registerForSecureMicEvents];
      }
    }

    else
    {
    }

    status = [v8 status];
    if (status <= 2)
    {
      if (status == 1)
      {
        if ([v8 isHostedOnCurrentDevice])
        {
          [(CSDCallStateController *)self _handleActiveCallStatusChangeForHostedCall:v8];
          featureFlags = [(CSDCallStateController *)self featureFlags];
          isRemoteCallControlOnWatchEnabled = [featureFlags isRemoteCallControlOnWatchEnabled];

          if (isRemoteCallControlOnWatchEnabled)
          {
            relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
            localRouteController = [(CSDCallStateController *)self localRouteController];
            routesByUniqueIdentifier = [localRouteController routesByUniqueIdentifier];
            allValues = [routesByUniqueIdentifier allValues];
            [relayMessagingController sendUpdateRoutesMessageToClientForRoutes:allValues];
          }
        }
      }

      else if (status == 2 && [v8 isHostedOnCurrentDevice])
      {
        [(CSDCallStateController *)self _handleHeldCallStatusChangeForHostedCall:v8];
      }
    }

    else
    {
      switch(status)
      {
        case 3:
          isAppleIntelligenceEnabled = [v8 isAppleIntelligenceEnabled];

          if (isAppleIntelligenceEnabled)
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
              provider2 = [v8 provider];
              supportsCurrentPlatform = [provider2 supportsCurrentPlatform];

              if (supportsCurrentPlatform)
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
          isAppleIntelligenceEnabled2 = [v8 isAppleIntelligenceEnabled];

          if (isAppleIntelligenceEnabled2)
          {
            [(CSDCallStateController *)self downloadAndGenerateTranslationDisclosures];
          }

          provider3 = [v8 provider];
          supportsCurrentPlatform2 = [provider3 supportsCurrentPlatform];

          if (supportsCurrentPlatform2)
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

  localRouteController2 = [(CSDCallStateController *)self localRouteController];
  callContainer = [(CSDCallStateController *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
  [localRouteController2 updateStateWithCalls:currentAudioAndVideoCalls];
}

- (void)_handleCallStartedOutgoingNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v12, 0xCu);
  }

  object = [notificationCopy object];
  provider = [object provider];
  isTinCanProvider = [provider isTinCanProvider];

  v10 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [object uniqueProxyIdentifier];
  [v10 updateConferenceForIdentifier:uniqueProxyIdentifier isUsingBaseband:objc_msgSend(object disableAudio:"isUsingBaseband") isTinCan:{0, isTinCanProvider}];
}

- (void)_handleCallStartedConnectingNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v8, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    [(CSDCallStateController *)self _handleConnectingCallStatusChangeForHostedCall:object];
  }

  if ([object isVideo])
  {
    [(CSDCallStateController *)self _endProxyCallsForConnectingVideoCall];
  }
}

- (void)_handleCallConnectedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v8, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    [(CSDCallStateController *)self _handleConnectedCallStatusChangeForHostedCall:object];
  }
}

- (void)_handleNeedsManualInCallSoundsChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendNeedsManualInCallSoundsChangeMessageToClientForCall:object];
  }
}

- (void)_handleCallWantsHoldMusicChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice] && (objc_msgSend(object, "wantsHoldMusic") & 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendResetWantsHoldMusicMessageToClientForCall:object];
  }
}

- (void)_handleCallShouldSuppressRingtoneChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object shouldSuppressRingtone] && ((objc_msgSend(object, "isHostedOnCurrentDevice") & 1) != 0 || (objc_msgSend(object, "ringtoneSuppressedRemotely") & 1) == 0))
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendSuppressRingtoneMessageForCall:object];
    goto LABEL_10;
  }

  if (([object shouldSuppressRingtone] & 1) == 0 && objc_msgSend(object, "isHostedOnCurrentDevice"))
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateRemoteCallStateMessageToClient];
LABEL_10:
  }
}

- (void)_handleCallModelChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateCallModelMessageToClientForCall:object];
  }
}

- (void)_handleResetCallStateNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v8, 0xCu);
  }

  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendResetStateMessageToClient];
}

- (void)_handleHardPauseStateChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v11, 0xCu);
  }

  object = [notificationCopy object];
  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  hardPauseDigitsState = [object hardPauseDigitsState];
  hardPauseDigits = [object hardPauseDigits];
  [relayMessagingController sendHardPauseAvailabilityMessageToClientForState:hardPauseDigitsState digits:hardPauseDigits];
}

- (void)_handleCallIsUsingBasebandChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v12, 0xCu);
  }

  object = [notificationCopy object];
  if (([object isEndpointOnCurrentDevice] & 1) == 0 && objc_msgSend(object, "hasStartedOutgoing"))
  {
    provider = [object provider];
    isTinCanProvider = [provider isTinCanProvider];

    v10 = +[CSDRelayConferenceInterface sharedInstance];
    uniqueProxyIdentifier = [object uniqueProxyIdentifier];
    [v10 updateConferenceForIdentifier:uniqueProxyIdentifier isUsingBaseband:objc_msgSend(object disableAudio:"isUsingBaseband") isTinCan:{0, isTinCanProvider}];
  }
}

- (void)_handleFaceTimeAvailabilityChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
    }

    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    callProviderManager = [(CSDCallStateController *)self callProviderManager];
    [relayMessagingController sendUpdateCallContextMessageToClientForCallProviderManager:callProviderManager];
  }
}

- (void)_handleInvitationSentNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendInvitationSentMessageToClientForCall:object];
  }
}

- (void)_handleCSDRelayIDSActiveAccountsChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C84A8;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)_handleCSDRelayPairedDeviceConnectedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C860C;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_handlePreferredRouteChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001C8810;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_handleCallIsEmergencyChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = notificationCopy;
    v7 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", &v10, 0x16u);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateRemoteCallStateMessageToClient:1];
  }
}

- (BOOL)_nonRingingCallExistsOnThisDevice
{
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  callContainer = [(CSDCallStateController *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v6 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 status] != 4 && objc_msgSend(v10, "isEndpointOnCurrentDevice"))
        {
          v12 = sub_100004778();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            callContainer2 = [(CSDCallStateController *)self callContainer];
            _allCalls = [callContainer2 _allCalls];
            *buf = 138412546;
            v21 = v10;
            v22 = 2112;
            v23 = _allCalls;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Non-ringing call found on device: %@. All calls: %@", buf, 0x16u);
          }

          v11 = 1;
          goto LABEL_14;
        }
      }

      v7 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v16 objects:v24 count:16];
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

- (void)_handleRingingCallStatusChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[CSDRouteManager sharedInstance];
  v7 = [v6 isAnyVehicleRouteAvailableForCall:callCopy];

  v8 = +[PDRRegistry sharedInstance];
  getActivePairedDevice = [v8 getActivePairedDevice];

  if (getActivePairedDevice)
  {
    v10 = +[CSDRouteManager sharedInstance];
    v11 = [v10 isEligibleRouteAvailableForCall:callCopy];

    provider = [callCopy provider];
    isTinCanProvider = [provider isTinCanProvider];

    if (isTinCanProvider)
    {
      v14 = [getActivePairedDevice supportsCapability:674176742];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = 1;
LABEL_6:
  if (![callCopy isConversation])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_15;
  }

  if ([callCopy isConversation])
  {
    featureFlags = [(CSDCallStateController *)self featureFlags];
    if ([featureFlags conversationOneToOneModeEnabled])
    {
      remoteParticipantHandles = [callCopy remoteParticipantHandles];
      v17 = [remoteParticipantHandles count];

      if (v17 == 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if ([callCopy isConversation])
  {
    featureFlags2 = [(CSDCallStateController *)self featureFlags];
    gftOnWatch = [featureFlags2 gftOnWatch];

    v18 = gftOnWatch ^ 1;
  }

  else
  {
    v18 = 1;
  }

LABEL_15:
  if (!-[CSDCallStateController shouldRelayToOtherDevices](self, "shouldRelayToOtherDevices") || v7 & 1 | (([callCopy hasRelaySupport:1] & 1) == 0) || ((objc_msgSend(callCopy, "isTTY") | v18) & 1) != 0 || ((v14 ^ 1) & 1) != 0)
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138413826;
      v24 = callCopy;
      v25 = 1024;
      v26 = ![(CSDCallStateController *)self shouldRelayToOtherDevices];
      v27 = 1024;
      v28 = [callCopy hasRelaySupport:1] ^ 1;
      v29 = 1024;
      v30 = v7;
      v31 = 1024;
      isTTY = [callCopy isTTY];
      v33 = 1024;
      isConversation = [callCopy isConversation];
      v35 = 1024;
      v36 = v14;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Ignoring ringing call status change for call %@ because relay calling is disabled (%d) or this call doesn't support relaying call state (%d) or a vehicle route is available (%d) or call is TTY (%d) or call is conversation (%d) or shouldRelayTinCanCall (%d)", &v23, 0x30u);
    }
  }

  else
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendIncomingCallMessageToClientForCall:callCopy cannotBeAnswered:-[CSDCallStateController _nonRingingCallExistsOnThisDevice](self cannotRelayAudioOrVideoOnPairedDevice:{"_nonRingingCallExistsOnThisDevice"), v11}];
  }
}

- (void)_handleGroupUUIDChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (([callCopy isConversation] & 1) != 0 || (-[CSDCallStateController featureFlags](self, "featureFlags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "gftOnWatch"), v5, v6))
  {
    if ([callCopy isHostedOnCurrentDevice])
    {
      relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
      [relayMessagingController sendUpdateRemoteCallStateMessageToClient:1];
    }
  }
}

- (void)_handleSendingCallStatusChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![callCopy isConversation] || (-[CSDCallStateController featureFlags](self, "featureFlags"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "gftOnWatch"), v5, v6))
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendCallDialedMessageToClientForCall:callCopy];
  }
}

- (void)_handleConnectingCallStatusChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(__CFString *)callCopy isEndpointOnCurrentDevice]&& ([(__CFString *)callCopy isOutgoing]& 1) == 0)
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendCallAnsweredElsewhereMessageToClientForCall:callCopy];

    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ([(__CFString *)callCopy isScreening])
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
      receptionistState = [(__CFString *)callCopy receptionistState];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "call.isScreening: %@, call.receptionistState: %d", &v12, 0x12u);
    }

    if (([(__CFString *)callCopy isScreening]& 1) == 0 && ![(__CFString *)callCopy receptionistState])
    {
      v9 = +[CSDRelayConferenceInterface sharedInstance];
      uniqueProxyIdentifier = [(__CFString *)callCopy uniqueProxyIdentifier];
      [v9 stopConferenceForIdentifier:uniqueProxyIdentifier];
    }
  }

  if ([(__CFString *)callCopy status]== 6)
  {
    relayMessagingController2 = sub_100004778();
    if (os_log_type_enabled(relayMessagingController2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = callCopy;
      _os_log_impl(&_mh_execute_header, relayMessagingController2, OS_LOG_TYPE_DEFAULT, "Not sending out call started connecting message because call is already disconnected: %@", &v12, 0xCu);
    }
  }

  else
  {
    relayMessagingController2 = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController2 sendCallStartedConnectingMessageToClientForCall:callCopy];
  }
}

- (void)_handleConnectedCallStatusChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([callCopy status] == 6)
  {
    relayMessagingController = sub_100004778();
    if (os_log_type_enabled(relayMessagingController, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = callCopy;
      _os_log_impl(&_mh_execute_header, relayMessagingController, OS_LOG_TYPE_DEFAULT, "Not sending out call connected message because call is already disconnected: %@", &v7, 0xCu);
    }
  }

  else
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendCallConnectedMessageToClientForCall:callCopy];
  }
}

- (void)_handleActiveCallStatusChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendUpdateRemoteCallStateMessageToClient];

  v8 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  [v8 setConferenceActiveForIdentifier:uniqueProxyIdentifier];
}

- (void)_handleCallRemoteParticipantHandlesChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "notification: %@", &v9, 0xCu);
  }

  object = [notificationCopy object];
  if ([object isHostedOnCurrentDevice])
  {
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendUpdateRemoteCallStateMessageToClient];
  }
}

- (void)_handleHeldCallStatusChangeForHostedCall:(id)call
{
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendUpdateRemoteCallStateMessageToClient];
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

- (void)_handleDisconnectedCallStatusChangeForHostedCall:(id)call
{
  callCopy = call;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendNeedsManualInCallSoundsChangeMessageToClientForCall:callCopy];

  relayMessagingController2 = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController2 sendCallDisconnectedMessageToClientForCall:callCopy];

  isEndpointOnCurrentDevice = [callCopy isEndpointOnCurrentDevice];
  v8 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  if (isEndpointOnCurrentDevice)
  {
    [v8 stopConferenceForIdentifier:uniqueProxyIdentifier];
  }

  else
  {
    [v8 prepareToStopConferenceForIdentifier:uniqueProxyIdentifier];
  }
}

- (void)_updateBluetoothAudioFormatIfNecessaryDueToMVMChange:(BOOL)change
{
  changeCopy = change;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  featureFlags = [(CSDCallStateController *)self featureFlags];
  expanseBTSwitchingEnabled = [featureFlags expanseBTSwitchingEnabled];

  if (!expanseBTSwitchingEnabled)
  {
    return;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  callContainer = [(CSDCallStateController *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v10 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v38 objects:v47 count:16];
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
      objc_enumerationMutation(currentAudioAndVideoCalls);
    }

    v14 = *(*(&v38 + 1) + 8 * v13);
    if ([v14 mixesVoiceWithMedia])
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v38 objects:v47 count:16];
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
  localRouteController = [(CSDCallStateController *)self localRouteController];
  routesByUniqueIdentifier = [localRouteController routesByUniqueIdentifier];
  allValues = [routesByUniqueIdentifier allValues];

  v19 = [allValues countByEnumeratingWithState:&v34 objects:v46 count:16];
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
        objc_enumerationMutation(allValues);
      }

      v23 = *(*(&v34 + 1) + 8 * i);
      if ([v23 isCurrentlyPicked])
      {
        v24 = v23;

        if (!v24)
        {
          goto LABEL_39;
        }

        if (changeCopy)
        {
          changeCopy = [v24 isBluetoothLE];
        }

        if ((([v24 isA2DPRoute] & 1) != 0 || changeCopy) && objc_msgSend(v15, "bluetoothAudioFormat") != 1)
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

        currentlyTrackedA2DPRouteIdentifier = [(CSDCallStateController *)self currentlyTrackedA2DPRouteIdentifier];
        if ([currentlyTrackedA2DPRouteIdentifier length])
        {
          uniqueIdentifier = [v24 uniqueIdentifier];
          currentlyTrackedA2DPRouteIdentifier2 = [(CSDCallStateController *)self currentlyTrackedA2DPRouteIdentifier];
          if (([uniqueIdentifier isEqualToString:currentlyTrackedA2DPRouteIdentifier2] & 1) == 0 && !objc_msgSend(v24, "isA2DPRoute"))
          {
            isBluetoothLE = [v24 isBluetoothLE];

            if ((isBluetoothLE & 1) == 0)
            {
              v31 = sub_100004778();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                currentlyTrackedA2DPRouteIdentifier3 = [(CSDCallStateController *)self currentlyTrackedA2DPRouteIdentifier];
                uniqueIdentifier2 = [v24 uniqueIdentifier];
                *buf = 138412546;
                v43 = currentlyTrackedA2DPRouteIdentifier3;
                v44 = 2112;
                v45 = uniqueIdentifier2;
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
          uniqueIdentifier3 = [v24 uniqueIdentifier];
          [(CSDCallStateController *)self setCurrentlyTrackedA2DPRouteIdentifier:uniqueIdentifier3];
        }

        else
        {
          [(CSDCallStateController *)self setCurrentlyTrackedA2DPRouteIdentifier:0];
        }

        goto LABEL_42;
      }
    }

    v20 = [allValues countByEnumeratingWithState:&v34 objects:v46 count:16];
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

- (id)outgoingCallFromDialRequest:(id)request
{
  requestCopy = request;
  hostOnCurrentDevice = [requestCopy hostOnCurrentDevice];
  v6 = off_100616690;
  if (!hostOnCurrentDevice)
  {
    v6 = off_100616698;
  }

  v7 = [objc_alloc(*v6) initOutgoingWithDialRequest:requestCopy];

  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v7];
  [(CSDCallStateController *)self propertiesChangedForCall:v7];

  return v7;
}

- (id)outgoingCallFromJoinRequest:(id)request
{
  requestCopy = request;
  callCenter = [(CSDCallStateController *)self callCenter];
  [requestCopy setHostedOnCurrentDevice:{objc_msgSend(callCenter, "_shouldRelayJoinConversationRequest:", requestCopy) ^ 1}];

  hostedOnCurrentDevice = [requestCopy hostedOnCurrentDevice];
  v7 = off_100616690;
  if (!hostedOnCurrentDevice)
  {
    v7 = off_100616698;
  }

  v8 = [objc_alloc(*v7) initOutgoingWithJoinConversationRequest:requestCopy];
  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v8];
  [(CSDCallStateController *)self propertiesChangedForCall:v8];

  return v8;
}

- (void)setCallDelegatesIfNeeded:(id)needed
{
  neededCopy = needed;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  callCenter = [(CSDCallStateController *)self callCenter];
  callServicesInterface = [callCenter callServicesInterface];
  [callServicesInterface registerCall:neededCopy];

  [neededCopy setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    relayCallDataSource = [(CSDCallStateController *)self relayCallDataSource];
    [neededCopy setDataSource:relayCallDataSource];

    v8 = neededCopy;
    relayDelegate = [v8 relayDelegate];

    if (!relayDelegate)
    {
      relayCallDelegate = [(CSDCallStateController *)self relayCallDelegate];
      [v8 setRelayDelegate:relayCallDelegate];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    providerCallDataSource = [(CSDCallStateController *)self providerCallDataSource];
    [neededCopy setDataSource:providerCallDataSource];

    v12 = neededCopy;
    providerCallDelegate = [v12 providerCallDelegate];

    if (!providerCallDelegate)
    {
      providerCallDataSource2 = [(CSDCallStateController *)self providerCallDataSource];
      [v12 setProviderCallDelegate:providerCallDataSource2];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    providerCallDataSource3 = [(CSDCallStateController *)self providerCallDataSource];
    [neededCopy setDataSource:providerCallDataSource3];

    v16 = neededCopy;
    providerBargeCallDelegate = [v16 providerBargeCallDelegate];

    if (!providerBargeCallDelegate)
    {
      providerCallDataSource4 = [(CSDCallStateController *)self providerCallDataSource];
      [v16 setProviderBargeCallDelegate:providerCallDataSource4];
    }
  }
}

- (id)performDialCall:(id)call displayContext:(id)context
{
  callCopy = call;
  contextCopy = context;
  if (+[SOSUtilities shouldBlockNonEmergencyCalls])
  {
    callCenter = [(CSDCallStateController *)self callCenter];
    v9 = [callCenter _isEmergencyDialRequest:callCopy];

    if ((v9 & 1) == 0)
    {
      frontmostCall = sub_100004778();
      if (os_log_type_enabled(frontmostCall, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, frontmostCall, OS_LOG_TYPE_DEFAULT, "Dial request rejected due to SOS being active", buf, 2u);
      }

      goto LABEL_18;
    }
  }

  callCenter2 = [(CSDCallStateController *)self callCenter];
  frontmostCall = [callCenter2 frontmostCall];

  if (frontmostCall && [frontmostCall isEmergency])
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

  featureFlags = [(CSDCallStateController *)self featureFlags];
  if ([featureFlags nudityDetectionEnabled])
  {
    interventionController = [(CSDCallStateController *)self interventionController];
    v17 = [interventionController interveneIfNeededForDialRequest:callCopy];

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

  v18 = [(CSDCallStateController *)self outgoingCallFromDialRequest:callCopy];
  dateAnsweredOrDialed = [v18 dateAnsweredOrDialed];
  if (dateAnsweredOrDialed)
  {
    [v18 setDateAnsweredOrDialed:dateAnsweredOrDialed];
  }

  else
  {
    dateDialed = [callCopy dateDialed];
    [v18 setDateAnsweredOrDialed:dateDialed];
  }

  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v18];
  if (v18)
  {
    [(CSDCallStateController *)self sendAutomaticNameAndPhotoUsingDialRequestIfPossible:callCopy];
    [v18 dialWithRequest:callCopy displayContext:contextCopy];
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

+ (void)sanitizeJoinConversationRequest:(id)request
{
  requestCopy = request;
  v4 = +[CSDConversationProviderManager sharedInstance];
  provider = [requestCopy provider];
  v6 = [v4 serviceForProvider:provider];

  v30 = v6;
  if (v6)
  {
    provider2 = [requestCopy provider];
    isDefaultProvider = [provider2 isDefaultProvider];

    if (isDefaultProvider)
    {
      v9 = +[NSMutableSet set];
      v10 = +[NSMutableSet set];
      allAliases = [v6 allAliases];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1001CA6E0;
      v35[3] = &unk_10061DD30;
      v12 = v9;
      v36 = v12;
      [allAliases enumerateObjectsUsingBlock:v35];

      remoteMembers = [requestCopy remoteMembers];
      v14 = [remoteMembers count];

      if (v14 == 1)
      {
        remoteMembers2 = [requestCopy remoteMembers];
        anyObject = [remoteMembers2 anyObject];
        [v10 addObject:anyObject];
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        remoteMembers2 = [requestCopy remoteMembers];
        v17 = [remoteMembers2 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (v17)
        {
          v18 = v17;
          v29 = requestCopy;
          v19 = *v32;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(remoteMembers2);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              handle = [v21 handle];
              normalizedValue = [handle normalizedValue];
              v24 = [v12 containsObject:normalizedValue];

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

            v18 = [remoteMembers2 countByEnumeratingWithState:&v31 objects:v41 count:16];
          }

          while (v18);
          requestCopy = v29;
        }
      }

      [requestCopy setRemoteMembers:v10];
      if ([requestCopy avMode] == 1)
      {
        mergedRemoteMembers = [requestCopy mergedRemoteMembers];
        if ([mergedRemoteMembers count] <= 1)
        {
        }

        else
        {
          v27 = [requestCopy supportsAVMode:2];

          if (v27)
          {
            v28 = sub_100004778();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting join request to TUConversationAVModeVideo from Audio since this is a GFT conversation", buf, 2u);
            }

            [requestCopy setAvMode:2];
            [requestCopy setVideoEnabled:0];
          }
        }
      }
    }
  }
}

- (id)performJoinConversation:(id)conversation
{
  conversationCopy = conversation;
  [objc_opt_class() sanitizeJoinConversationRequest:conversationCopy];
  callContainer = [(CSDCallStateController *)self callContainer];
  uUID = [conversationCopy UUID];
  uUIDString = [uUID UUIDString];
  v8 = [callContainer callWithCallUUID:uUIDString];

  featureFlags = [(CSDCallStateController *)self featureFlags];
  if ([featureFlags nudityDetectionEnabled])
  {
    interventionController = [(CSDCallStateController *)self interventionController];
    v11 = [interventionController interveneIfNeededForJoinRequest:conversationCopy];

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
    v8 = [(CSDCallStateController *)self outgoingCallFromJoinRequest:conversationCopy];
    [(CSDCallStateController *)self setCallDelegatesIfNeeded:v8];
  }

  [(CSDCallStateController *)self sendAutomaticNameAndPhotoUsingJoinRequestIfPossible:conversationCopy];
  translationRequestConfiguration = [conversationCopy translationRequestConfiguration];

  if (translationRequestConfiguration)
  {
    v15 = [TUCallTranslationStartRequest alloc];
    translationRequestConfiguration2 = [conversationCopy translationRequestConfiguration];
    v17 = [v15 initWithCall:v8 configuration:translationRequestConfiguration2];

    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "translation request: %@", &v21, 0xCu);
    }

    callTranslationController = [(CSDCallStateController *)self callTranslationController];
    [callTranslationController performRequest:v17 forCall:v8 completion:&stru_10061DDA0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 joinConversationWithRequest:conversationCopy];
  }

  v8 = v8;
  v13 = v8;
LABEL_17:

  return v13;
}

- (void)performHoldCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
    *buf = 138412290;
    v15 = currentAudioAndVideoCalls;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  callGroupUUID = [callCopy callGroupUUID];

  if (callGroupUUID)
  {
    callContainer2 = [(CSDCallStateController *)self callContainer];
    callGroupUUID2 = [callCopy callGroupUUID];
    v11 = [callContainer2 callsWithGroupUUID:callGroupUUID2];
  }

  else
  {
    v13 = callCopy;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  dataSource = [callCopy dataSource];
  [dataSource holdCalls:v11 whileUnholdingCalls:&__NSArray0__struct];
}

- (void)performUnholdCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
    *buf = 138412290;
    v15 = currentAudioAndVideoCalls;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  callGroupUUID = [callCopy callGroupUUID];

  if (callGroupUUID)
  {
    callContainer2 = [(CSDCallStateController *)self callContainer];
    callGroupUUID2 = [callCopy callGroupUUID];
    v11 = [callContainer2 callsWithGroupUUID:callGroupUUID2];
  }

  else
  {
    v13 = callCopy;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
  }

  dataSource = [callCopy dataSource];
  [dataSource holdCalls:&__NSArray0__struct whileUnholdingCalls:v11];
}

- (void)performGroupCall:(id)call withCall:(id)withCall
{
  callCopy = call;
  withCallCopy = withCall;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
    *buf = 138412290;
    v29 = currentAudioAndVideoCalls;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  callGroupUUID = [withCallCopy callGroupUUID];

  callGroupUUID2 = [callCopy callGroupUUID];

  if (callGroupUUID)
  {
    if (callGroupUUID2)
    {
      callContainer2 = [(CSDCallStateController *)self callContainer];
      callGroupUUID3 = [callCopy callGroupUUID];
      v15 = [callContainer2 callsWithGroupUUID:callGroupUUID3];
    }

    else
    {
      v27 = callCopy;
      v15 = [NSArray arrayWithObjects:&v27 count:1];
    }

    callContainer3 = [(CSDCallStateController *)self callContainer];
    callGroupUUID4 = [withCallCopy callGroupUUID];
    v18 = [callContainer3 callsWithGroupUUID:callGroupUUID4];
  }

  else
  {
    if (callGroupUUID2)
    {
      callContainer4 = [(CSDCallStateController *)self callContainer];
      callGroupUUID5 = [callCopy callGroupUUID];
      v18 = [callContainer4 callsWithGroupUUID:callGroupUUID5];

      v26 = withCallCopy;
      v19 = &v26;
    }

    else
    {
      v25 = withCallCopy;
      v18 = [NSArray arrayWithObjects:&v25 count:1];
      v24 = callCopy;
      v19 = &v24;
    }

    v15 = [NSArray arrayWithObjects:v19 count:1, v24];
  }

  firstObject = [v15 firstObject];
  dataSource = [firstObject dataSource];
  [dataSource groupCalls:v15 withCalls:v18];
}

- (void)performUngroupCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
    *buf = 138412290;
    v27 = currentAudioAndVideoCalls;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  callGroupUUID = [callCopy callGroupUUID];

  if (callGroupUUID)
  {
    v9 = +[NSMutableArray array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    callContainer2 = [(CSDCallStateController *)self callContainer];
    currentCalls = [callContainer2 currentCalls];

    v12 = [currentCalls countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(currentCalls);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          if (v16 != callCopy)
          {
            callGroupUUID2 = [*(*(&v21 + 1) + 8 * v15) callGroupUUID];
            callGroupUUID3 = [callCopy callGroupUUID];
            v19 = [callGroupUUID2 isEqual:callGroupUUID3];

            if (v19)
            {
              [v9 addObject:v16];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [currentCalls countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    dataSource = [callCopy dataSource];
    [dataSource ungroupCall:callCopy fromOtherCallsInGroup:v9];
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
    callContainer = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
    *buf = 138412290;
    *v41 = currentAudioAndVideoCalls;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  callContainer2 = [(CSDCallStateController *)self callContainer];
  v7 = [callContainer2 callsPassingTest:&stru_10061DDC0];

  callContainer3 = [(CSDCallStateController *)self callContainer];
  v9 = [callContainer3 callsPassingTest:&stru_10061DDE0];

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

        model = [*(*(&v36 + 1) + 8 * i) model];
        supportsHolding = [model supportsHolding];

        if (!supportsHolding)
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
    dataSources = [(CSDCallDataSourceMap *)v19 dataSources];
    v23 = [dataSources countByEnumeratingWithState:&v32 objects:v44 count:16];
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
            objc_enumerationMutation(dataSources);
          }

          v27 = *(*(&v32 + 1) + 8 * j);
          v28 = [(CSDCallDataSourceMap *)v19 callsForDataSource:v27 identifier:@"callsToHold"];
          v29 = [(CSDCallDataSourceMap *)v19 callsForDataSource:v27 identifier:@"callsToUnhold"];
          [v27 holdCalls:v28 whileUnholdingCalls:v29];
        }

        v24 = [dataSources countByEnumeratingWithState:&v32 objects:v44 count:16];
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

- (void)performAnswerCall:(id)call withRequest:(id)request
{
  callCopy = call;
  requestCopy = request;
  [(CSDCallStateController *)self _launchInCallApplicationForAnsweringCallIfNecessary:callCopy];
  endpointIDSDestination = [requestCopy endpointIDSDestination];
  if (endpointIDSDestination)
  {

LABEL_3:
    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController requestAnswerForRequest:requestCopy forCall:callCopy];

    goto LABEL_23;
  }

  if (((*(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate + 16))(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate, callCopy) & 1) == 0)
  {
    featureFlags = [(CSDCallStateController *)self featureFlags];
    isRemoteCallControlOnWatchEnabled = [featureFlags isRemoteCallControlOnWatchEnabled];

    if (isRemoteCallControlOnWatchEnabled)
    {
      goto LABEL_3;
    }
  }

  behavior = [requestCopy behavior];
  if (behavior <= 1)
  {
    if (behavior)
    {
      if (behavior == 1)
      {
        [(CSDCallStateController *)self performEndHeldAndAnswerCall:callCopy withRequest:requestCopy];
      }
    }

    else
    {
      [(CSDCallStateController *)self performEndActiveAndAnswerCall:callCopy withRequest:requestCopy];
    }
  }

  else
  {
    switch(behavior)
    {
      case 2:
        [(CSDCallStateController *)self performHoldActiveAndAnswerCall:callCopy withRequest:requestCopy];
        break;
      case 3:
        [(CSDCallStateController *)self performAnswerCallAsVideoUpgrade:callCopy withRequest:requestCopy];
        break;
      case 4:
        [(CSDCallStateController *)self performAnswerCallAsAudioDowngrade:callCopy withRequest:requestCopy];
        break;
    }
  }

  [(CSDCallStateController *)self deactivatePTTBargeCalls];
  endpointRapportEffectiveIdentifier = [requestCopy endpointRapportEffectiveIdentifier];
  endpointRapportMediaSystemIdentifier = [requestCopy endpointRapportMediaSystemIdentifier];
  if ([endpointRapportEffectiveIdentifier length] || objc_msgSend(endpointRapportMediaSystemIdentifier, "length"))
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
      v18 = 138412802;
      v19 = endpointRapportMediaSystemIdentifier;
      v20 = 2112;
      v21 = endpointRapportEffectiveIdentifier;
      v22 = 2112;
      v23 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "An endpointRapportMediaSystemIdentifier=%@ or endpointRapportEffectiveIdentifier=%@ is present on answer request for call with identifier %@ so attempting to pick matching route", &v18, 0x20u);
    }

    callCenter = [(CSDCallStateController *)self callCenter];
    [callCenter pickRouteForRapportDeviceWithMediaSystemIdentifier:endpointRapportMediaSystemIdentifier effectiveIdentifier:endpointRapportEffectiveIdentifier];
  }

LABEL_23:
}

- (id)callWithUniqueProxyIdentifier:(id)identifier fromCallsToAnswer:(id)answer
{
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  answerCopy = answer;
  v7 = [answerCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(answerCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        uniqueProxyIdentifier = [v10 uniqueProxyIdentifier];
        v12 = [uniqueProxyIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [answerCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)performEndActiveAndAnswerCall:(id)call withRequest:(id)request
{
  callCopy = call;
  requestCopy = request;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v48 = callCopy;
    v49 = 2112;
    v50 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing end active calls and answer ringing call %@ for answer request %@", buf, 0x16u);
  }

  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  if ([uniqueProxyIdentifier length])
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    v11 = [callContainer audioAndVideoCallsWithStatus:4];

    callContainer2 = [(CSDCallStateController *)self callContainer];
    screeningCall = [callContainer2 screeningCall];

    if (-[NSObject count](v11, "count") || ([requestCopy sendToScreening] & 1) != 0 || objc_msgSend(requestCopy, "screeningType") || screeningCall)
    {
      v14 = [(CSDCallStateController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier fromCallsToAnswer:v11];
      if (v14 || ([requestCopy sendToScreening] & 1) != 0 || objc_msgSend(requestCopy, "screeningType") || (objc_msgSend(screeningCall, "uniqueProxyIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", uniqueProxyIdentifier), v15, (v16 & 1) != 0))
      {
        if (-[NSObject isEqualToCall:](v14, "isEqualToCall:", callCopy) & 1) != 0 || ([requestCopy sendToScreening] & 1) != 0 || objc_msgSend(requestCopy, "screeningType") || (objc_msgSend(screeningCall, "isEqualToCall:", callCopy))
        {
          dataSource = [callCopy dataSource];
          if (dataSource)
          {
            v40 = requestCopy;
            v18 = objc_alloc_init(NSMutableArray);
            callContainer3 = [(CSDCallStateController *)self callContainer];
            v20 = [callContainer3 audioAndVideoCallsWithStatus:1];

            if ([v20 count])
            {
              [v18 addObjectsFromArray:v20];
            }

            v34 = v20;
            v36 = v14;
            v37 = screeningCall;
            v38 = v11;
            callContainer4 = [(CSDCallStateController *)self callContainer];
            v22 = [callContainer4 audioAndVideoCallsWithStatus:3];

            if ([v22 count])
            {
              [v18 addObjectsFromArray:v22];
            }

            v33 = v22;
            v39 = uniqueProxyIdentifier;
            v41 = callCopy;
            [v18 removeObject:callCopy];
            v23 = objc_alloc_init(CSDCallDataSourceMap);
            v35 = v18;
            [(CSDCallDataSourceMap *)v23 addCalls:v18 forIdentifier:@"callsToDisconnect"];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            dataSources = [(CSDCallDataSourceMap *)v23 dataSources];
            v25 = [dataSources countByEnumeratingWithState:&v42 objects:v46 count:16];
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
                    objc_enumerationMutation(dataSources);
                  }

                  v29 = *(*(&v42 + 1) + 8 * i);
                  if (v29 != dataSource)
                  {
                    v30 = [(CSDCallDataSourceMap *)v23 callsForDataSource:*(*(&v42 + 1) + 8 * i) identifier:@"callsToDisconnect"];
                    [v29 disconnectCalls:v30 whileHoldingCalls:&__NSArray0__struct andUnholdingCalls:&__NSArray0__struct andUngroupingCalls:&__NSArray0__struct];
                  }
                }

                v26 = [dataSources countByEnumeratingWithState:&v42 objects:v46 count:16];
              }

              while (v26);
            }

            v31 = [(CSDCallDataSourceMap *)v23 callsForDataSource:dataSource identifier:@"callsToDisconnect"];
            requestCopy = v40;
            callCopy = v41;
            [dataSource answerCall:v41 withRequest:v40 whileDisconnectingActiveCalls:v31];

            v11 = v38;
            uniqueProxyIdentifier = v39;
            v14 = v36;
            screeningCall = v37;
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
          dataSource = sub_100004778();
          if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
          {
            sub_100479694();
          }
        }
      }

      else
      {
        dataSource = sub_100004778();
        if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
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

- (void)performEndHeldAndAnswerCall:(id)call withRequest:(id)request
{
  callCopy = call;
  requestCopy = request;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = callCopy;
    v51 = 2112;
    v52 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing end held calls and answer ringing call %@ for answer request %@", buf, 0x16u);
  }

  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  if ([uniqueProxyIdentifier length])
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    v11 = [callContainer audioAndVideoCallsWithStatus:4];

    if ([v11 count])
    {
      v12 = [(CSDCallStateController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier fromCallsToAnswer:v11];
      v13 = v12;
      if (v12)
      {
        if (([v12 isEqualToCall:callCopy]& 1) != 0)
        {
          dataSource = [callCopy dataSource];
          if (dataSource)
          {
            v38 = v13;
            v14 = objc_alloc_init(NSMutableArray);
            v15 = objc_alloc_init(NSMutableArray);
            callContainer2 = [(CSDCallStateController *)self callContainer];
            v17 = [callContainer2 audioAndVideoCallsWithStatus:1];

            if ([v17 count])
            {
              [v15 addObjectsFromArray:v17];
            }

            v41 = requestCopy;
            callContainer3 = [(CSDCallStateController *)self callContainer];
            v19 = [callContainer3 audioAndVideoCallsWithStatus:2];

            if ([v19 count])
            {
              [v14 addObjectsFromArray:v19];
            }

            v35 = v17;
            v39 = v11;
            callContainer4 = [(CSDCallStateController *)self callContainer];
            v21 = [callContainer4 audioAndVideoCallsWithStatus:3];

            if ([v21 count])
            {
              [v14 addObjectsFromArray:v21];
            }

            v34 = v19;
            v40 = uniqueProxyIdentifier;
            [v14 removeObject:callCopy];
            v42 = callCopy;
            [v15 removeObject:callCopy];
            v22 = objc_alloc_init(CSDCallDataSourceMap);
            v37 = v14;
            [(CSDCallDataSourceMap *)v22 addCalls:v14 forIdentifier:@"callsToDisconnect"];
            v36 = v15;
            [(CSDCallDataSourceMap *)v22 addCalls:v15 forIdentifier:@"callsToHold"];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            dataSources = [(CSDCallDataSourceMap *)v22 dataSources];
            v24 = [dataSources countByEnumeratingWithState:&v44 objects:v48 count:16];
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
                    objc_enumerationMutation(dataSources);
                  }

                  v28 = *(*(&v44 + 1) + 8 * i);
                  if (v28 != dataSource)
                  {
                    v29 = [(CSDCallDataSourceMap *)v22 callsForDataSource:*(*(&v44 + 1) + 8 * i) identifier:@"callsToDisconnect"];
                    v30 = [(CSDCallDataSourceMap *)v22 callsForDataSource:v28 identifier:@"callsToHold"];
                    [v28 disconnectCalls:v29 whileHoldingCalls:v30 andUnholdingCalls:&__NSArray0__struct andUngroupingCalls:&__NSArray0__struct];
                  }
                }

                v25 = [dataSources countByEnumeratingWithState:&v44 objects:v48 count:16];
              }

              while (v25);
            }

            v31 = [(CSDCallDataSourceMap *)v22 callsForDataSource:dataSource identifier:@"callsToDisconnect"];
            v32 = [(CSDCallDataSourceMap *)v22 callsForDataSource:dataSource identifier:@"callsToHold"];
            requestCopy = v41;
            callCopy = v42;
            [dataSource answerCall:v42 withRequest:v41 whileDisconnectingHeldCalls:v31 andHoldingCalls:v32];

            v11 = v39;
            uniqueProxyIdentifier = v40;
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
          dataSource = sub_100004778();
          if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
          {
            sub_1004797A0();
          }
        }
      }

      else
      {
        dataSource = sub_100004778();
        if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
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

- (void)performHoldActiveAndAnswerCall:(id)call withRequest:(id)request
{
  callCopy = call;
  requestCopy = request;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = callCopy;
    v51 = 2112;
    v52 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing hold active calls and answer ringing call %@ for answer request %@", buf, 0x16u);
  }

  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  if ([uniqueProxyIdentifier length])
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    v11 = [callContainer audioAndVideoCallsWithStatus:4];

    if ([v11 count])
    {
      v12 = [(CSDCallStateController *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier fromCallsToAnswer:v11];
      v13 = v12;
      if (v12)
      {
        if (([v12 isEqualToCall:callCopy]& 1) != 0)
        {
          dataSource = [callCopy dataSource];
          if (dataSource)
          {
            v38 = v13;
            v39 = v11;
            v40 = uniqueProxyIdentifier;
            v43 = requestCopy;
            v15 = objc_alloc_init(NSMutableArray);
            callContainer2 = [(CSDCallStateController *)self callContainer];
            v17 = [callContainer2 audioAndVideoCallsWithStatus:1];

            v42 = v17;
            if ([v17 count])
            {
              lastObject = [v17 lastObject];
              if (lastObject)
              {
                v19 = +[TUAudioSystemController sharedAudioSystemController];
                audioCategory = [lastObject audioCategory];
                audioMode = [lastObject audioMode];
                v22 = [v19 currentlyPickedRouteIdForCategory:audioCategory andMode:audioMode];

                if (v22)
                {
                  sourceIdentifier = [v43 sourceIdentifier];

                  if (!sourceIdentifier)
                  {
                    v24 = [TUAudioSystemController sourceIdentifierForRouteID:v22];
                    [v43 setSourceIdentifier:v24];

                    v25 = sub_100004778();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      sourceIdentifier2 = [v43 sourceIdentifier];
                      *buf = 138412290;
                      v50 = sourceIdentifier2;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Changed sourceIdentifier of answerRequest to %@", buf, 0xCu);
                    }
                  }
                }

                v17 = v42;
              }

              [v15 addObjectsFromArray:v17];
            }

            v41 = callCopy;
            [v15 removeObject:callCopy];
            v27 = objc_alloc_init(CSDCallDataSourceMap);
            v37 = v15;
            [(CSDCallDataSourceMap *)v27 addCalls:v15 forIdentifier:@"callsToHold"];
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            dataSources = [(CSDCallDataSourceMap *)v27 dataSources];
            v29 = [dataSources countByEnumeratingWithState:&v44 objects:v48 count:16];
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
                    objc_enumerationMutation(dataSources);
                  }

                  v33 = *(*(&v44 + 1) + 8 * i);
                  if (v33 != dataSource)
                  {
                    v34 = [(CSDCallDataSourceMap *)v27 callsForDataSource:*(*(&v44 + 1) + 8 * i) identifier:@"callsToHold"];
                    [v33 holdCalls:v34 whileUnholdingCalls:&__NSArray0__struct];
                  }
                }

                v30 = [dataSources countByEnumeratingWithState:&v44 objects:v48 count:16];
              }

              while (v30);
            }

            v35 = [(CSDCallDataSourceMap *)v27 callsForDataSource:dataSource identifier:@"callsToHold"];
            callCopy = v41;
            requestCopy = v43;
            [dataSource answerCall:v41 withRequest:v43 whileHoldingActiveCalls:v35];

            v11 = v39;
            uniqueProxyIdentifier = v40;
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
          dataSource = sub_100004778();
          if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
          {
            sub_100479950();
          }
        }
      }

      else
      {
        dataSource = sub_100004778();
        if (os_log_type_enabled(dataSource, OS_LOG_TYPE_ERROR))
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

- (void)performAnswerCallAsVideoUpgrade:(id)upgrade withRequest:(id)request
{
  requestCopy = request;
  upgradeCopy = upgrade;
  dataSource = [upgradeCopy dataSource];
  [dataSource answerCall:upgradeCopy withRequest:requestCopy whileDisconnectingActiveCalls:&__NSArray0__struct];
}

- (void)performAnswerCallAsAudioDowngrade:(id)downgrade withRequest:(id)request
{
  requestCopy = request;
  downgradeCopy = downgrade;
  dataSource = [downgradeCopy dataSource];
  [dataSource answerCall:downgradeCopy withRequest:requestCopy whileDisconnectingActiveCalls:&__NSArray0__struct];
}

- (void)performDisconnectCall:(id)call
{
  callCopy = call;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];
    *buf = 138412290;
    v28 = currentAudioAndVideoCalls;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v8 = +[NSMutableArray array];
  callGroupUUID = [callCopy callGroupUUID];

  if (callGroupUUID)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    callContainer2 = [(CSDCallStateController *)self callContainer];
    currentCalls = [callContainer2 currentCalls];

    v12 = [currentCalls countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(currentCalls);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          if (v16 != callCopy)
          {
            callGroupUUID2 = [*(*(&v22 + 1) + 8 * v15) callGroupUUID];
            callGroupUUID3 = [callCopy callGroupUUID];
            v19 = [callGroupUUID2 isEqual:callGroupUUID3];

            if (v19)
            {
              [v8 addObject:v16];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [currentCalls countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  if ([v8 count] == 1)
  {
    dataSource = [callCopy dataSource];
    firstObject = [v8 firstObject];
    [dataSource disconnectCall:callCopy whileUngroupingCall:firstObject];
  }

  else
  {
    [callCopy disconnectCallWithReason:41];
  }
}

- (void)performDisconnectCurrentCall
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  callContainer = [(CSDCallStateController *)self callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  v5 = [callsHostedElsewhere countByEnumeratingWithState:&v35 objects:v44 count:16];
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
        objc_enumerationMutation(callsHostedElsewhere);
      }

      v10 = *(*(&v35 + 1) + 8 * v9);
      relayMessagingController = [(CSDRelayCallDelegate *)self->_relayCallDelegate relayMessagingController];
      uniqueProxyIdentifier = [v10 uniqueProxyIdentifier];
      v13 = [relayMessagingController remoteDeviceForUPI:uniqueProxyIdentifier];

      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        supportsUserDrivenCallActivation = [v13 supportsUserDrivenCallActivation];
        *buf = v29;
        v16 = @"NO";
        if (supportsUserDrivenCallActivation)
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
        v7 = [callsHostedElsewhere countByEnumeratingWithState:&v35 objects:v44 count:16];
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
    callContainer2 = [(CSDCallStateController *)self callContainer];
    callsHostedElsewhere = [callContainer2 callsWithAnEndpointElsewhere];

    v18 = [callsHostedElsewhere countByEnumeratingWithState:&v31 objects:v39 count:16];
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
        objc_enumerationMutation(callsHostedElsewhere);
      }

      v23 = *(*(&v31 + 1) + 8 * v22);
      relayMessagingController2 = [(CSDRelayCallDelegate *)self->_relayCallDelegate relayMessagingController];
      uniqueProxyIdentifier2 = [v23 uniqueProxyIdentifier];
      v13 = [relayMessagingController2 remoteDeviceForUPI:uniqueProxyIdentifier2];

      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        supportsUserDrivenCallActivation2 = [v13 supportsUserDrivenCallActivation];
        *buf = v30;
        v28 = @"NO";
        if (supportsUserDrivenCallActivation2)
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
        v20 = [callsHostedElsewhere countByEnumeratingWithState:&v31 objects:v39 count:16];
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

- (void)performDisconnectCurrentCallAndActivateHeld:(BOOL)held
{
  heldCopy = held;
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    featureFlags = [(CSDCallStateController *)self featureFlags];
    isRemoteCallControlOnWatchEnabled = [featureFlags isRemoteCallControlOnWatchEnabled];
    callContainer = [(CSDCallStateController *)self callContainer];
    v8 = callContainer;
    if (isRemoteCallControlOnWatchEnabled)
    {
      [callContainer _allCalls];
    }

    else
    {
      [callContainer currentAudioAndVideoCalls];
    }
    v9 = ;
    *buf = 138412290;
    v97 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "current calls are %@", buf, 0xCu);
  }

  v10 = objc_alloc_init(CSDCallDataSourceMap);
  featureFlags2 = [(CSDCallStateController *)self featureFlags];
  isRemoteCallControlOnWatchEnabled2 = [featureFlags2 isRemoteCallControlOnWatchEnabled];
  callContainer2 = [(CSDCallStateController *)self callContainer];
  v14 = callContainer2;
  if (isRemoteCallControlOnWatchEnabled2)
  {
    [callContainer2 _allCallsWithStatus:3];
  }

  else
  {
    [callContainer2 audioAndVideoCallsWithStatus:3];
  }
  v15 = ;

  featureFlags3 = [(CSDCallStateController *)self featureFlags];
  isRemoteCallControlOnWatchEnabled3 = [featureFlags3 isRemoteCallControlOnWatchEnabled];
  callContainer3 = [(CSDCallStateController *)self callContainer];
  v19 = callContainer3;
  if (isRemoteCallControlOnWatchEnabled3)
  {
    [callContainer3 _allCallsWithStatus:1];
  }

  else
  {
    [callContainer3 audioAndVideoCallsWithStatus:1];
  }
  v20 = ;

  featureFlags4 = [(CSDCallStateController *)self featureFlags];
  isRemoteCallControlOnWatchEnabled4 = [featureFlags4 isRemoteCallControlOnWatchEnabled];
  callContainer4 = [(CSDCallStateController *)self callContainer];
  v24 = callContainer4;
  if (isRemoteCallControlOnWatchEnabled4)
  {
    [callContainer4 _allCallsWithStatus:2];
  }

  else
  {
    [callContainer4 audioAndVideoCallsWithStatus:2];
  }
  v71 = ;

  featureFlags5 = [(CSDCallStateController *)self featureFlags];
  isRemoteCallControlOnWatchEnabled5 = [featureFlags5 isRemoteCallControlOnWatchEnabled];
  callContainer5 = [(CSDCallStateController *)self callContainer];
  v28 = callContainer5;
  if (isRemoteCallControlOnWatchEnabled5)
  {
    [callContainer5 _allCallsWithStatus:4];
  }

  else
  {
    [callContainer5 audioAndVideoCallsWithStatus:4];
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
      if (heldCopy)
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
        model = [(__CFString *)v44 model];
        supportsUnambiguousMultiPartyState = [model supportsUnambiguousMultiPartyState];

        if ((supportsUnambiguousMultiPartyState & 1) == 0)
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
                provider = [(__CFString *)v51 provider];
                identifier = [provider identifier];
                provider2 = [(__CFString *)v44 provider];
                identifier2 = [provider2 identifier];
                v56 = [identifier isEqualToString:identifier2];

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

  allObjects = [v78 allObjects];
  [(CSDCallDataSourceMap *)v77 addCalls:allObjects forIdentifier:@"callsToDisconnect"];

  if (heldCopy)
  {
    allObjects2 = [v79 allObjects];
    [(CSDCallDataSourceMap *)v77 addCalls:allObjects2 forIdentifier:@"callsToUnhold"];
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  dataSources = [(CSDCallDataSourceMap *)v77 dataSources];
  v61 = [dataSources countByEnumeratingWithState:&v81 objects:v93 count:16];
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
          objc_enumerationMutation(dataSources);
        }

        v65 = *(*(&v81 + 1) + 8 * j);
        v66 = [(CSDCallDataSourceMap *)v77 callsForDataSource:v65 identifier:@"callsToDisconnect"];
        v67 = &__NSArray0__struct;
        if (heldCopy)
        {
          v67 = [(CSDCallDataSourceMap *)v77 callsForDataSource:v65 identifier:@"callsToUnhold"];
        }

        [v65 disconnectCalls:v66 whileHoldingCalls:&__NSArray0__struct andUnholdingCalls:v67 andUngroupingCalls:&__NSArray0__struct];
      }

      v62 = [dataSources countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (v62);
  }
}

- (void)performPullRelayingCallsFromClientAndUpdateEndpoint:(BOOL)endpoint updateExpectedDestination:(BOOL)destination onlyIfNeedsEndpointConversationRelaySupport:(BOOL)support
{
  supportCopy = support;
  destinationCopy = destination;
  endpointCopy = endpoint;
  v40 = +[NSMutableArray array];
  if (!supportCopy)
  {
    goto LABEL_21;
  }

  featureFlags = [(CSDCallStateController *)self featureFlags];
  gftOnWatch = [featureFlags gftOnWatch];

  if (!gftOnWatch)
  {
    goto LABEL_21;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  callContainer = [(CSDCallStateController *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  v13 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v47;
    *&v14 = 138412546;
    v39 = v14;
    v41 = currentAudioAndVideoCalls;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v47 != v16)
        {
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v18 = *(*(&v46 + 1) + 8 * i);
        if ([v18 needsConversationOrVideoRelaySupport])
        {
          featureFlags2 = [(CSDCallStateController *)self featureFlags];
          gftOnWatch2 = [featureFlags2 gftOnWatch];

          if (gftOnWatch2)
          {
            relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
            uniqueProxyIdentifier = [v18 uniqueProxyIdentifier];
            v23 = [relayMessagingController remoteDeviceForUPI:uniqueProxyIdentifier];

            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              canReceiveRelayedGFTCalls = [v23 canReceiveRelayedGFTCalls];
              *buf = v39;
              v26 = @"NO";
              if (canReceiveRelayedGFTCalls)
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
              uniqueProxyIdentifier2 = [v18 uniqueProxyIdentifier];
              [v40 addObject:uniqueProxyIdentifier2];
            }

            currentAudioAndVideoCalls = v41;
          }
        }
      }

      v15 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v15);
  }

  if (![v40 count])
  {
    currentAudioAndVideoCalls2 = sub_100004778();
    if (os_log_type_enabled(currentAudioAndVideoCalls2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currentAudioAndVideoCalls2, OS_LOG_TYPE_DEFAULT, "Not pulling calls since current calls either do not require GFT relay or all the endpoints support GFT relay", buf, 2u);
    }
  }

  else
  {
LABEL_21:
    relayMessagingController2 = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController2 sendPullRelayingCallsMessageToClientAndDisconnectCallsWithUPI:v40];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    callContainer2 = [(CSDCallStateController *)self callContainer];
    currentAudioAndVideoCalls2 = [callContainer2 currentAudioAndVideoCalls];

    v31 = [currentAudioAndVideoCalls2 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
            objc_enumerationMutation(currentAudioAndVideoCalls2);
          }

          v35 = *(*(&v42 + 1) + 8 * j);
          [v35 setRelayClientTransport:0];
          if (endpointCopy)
          {
            [v35 setEndpointOnCurrentDevice:1];
          }

          if (destinationCopy)
          {
            [v35 setExpectedRelayClientDestination:0];
          }

          relayMessagingController3 = [(CSDCallStateController *)self relayMessagingController];
          [relayMessagingController3 prepareToDisconnectMessagingConnectionForCall:v35];

          v37 = +[CSDRelayConferenceInterface sharedInstance];
          uniqueProxyIdentifier3 = [v35 uniqueProxyIdentifier];
          [v37 prepareToStopConferenceForIdentifier:uniqueProxyIdentifier3];
        }

        v32 = [currentAudioAndVideoCalls2 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v32);
    }
  }
}

- (void)performSendMMIOrUSSDCodeWithRequest:(id)request
{
  requestCopy = request;
  providerCallDataSource = [(CSDCallStateController *)self providerCallDataSource];
  [providerCallDataSource sendMMIOrUSSDCodeWithRequest:requestCopy];
}

- (void)performSetLiveVoicemailUnavailableReason:(int64_t)reason forCall:(id)call
{
  if (call)
  {
    [call setLiveVoicemailUnavailableReason:reason];
  }
}

- (void)performPullCallFromClientUsingHandoffActivityUserInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  if ([infoCopy count])
  {
    providerCallDataSource = [(CSDCallStateController *)self providerCallDataSource];
    [providerCallDataSource pullCallWithHandoffActivityUserInfo:infoCopy completion:completionCopy];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handoff context did not include any handoff payload. Assuming this is for a relay call", v10, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)performPushRelayingCallsToHostWithSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendPushRelayingCallsMessageToHostForSourceIdentifier:identifierCopy];
}

- (void)performPushHostedCallsToDestination:(id)destination
{
  destinationCopy = destination;
  callContainer = [(CSDCallStateController *)self callContainer];
  v6 = [callContainer allCallsPassTest:&stru_10061DE00];

  if (v6)
  {
    callContainer2 = [(CSDCallStateController *)self callContainer];
    callsWithAnEndpointElsewhere = [callContainer2 callsWithAnEndpointElsewhere];
    v9 = [callsWithAnEndpointElsewhere count];

    if (v9)
    {
      [(CSDCallStateController *)self performPullRelayingCallsFromClientAndUpdateEndpoint:0 updateExpectedDestination:1];
    }

    relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
    [relayMessagingController sendPushCallsMessageToClientDestination:destinationCopy];
  }

  else
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      callContainer3 = [(CSDCallStateController *)self callContainer];
      _allCalls = [callContainer3 _allCalls];
      v14 = 138412546;
      v15 = destinationCopy;
      v16 = 2112;
      v17 = _allCalls;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to performPushHostedCallsToDestination %@ because not all calls are hosted here and relayable. All calls: %@", &v14, 0x16u);
    }
  }
}

- (void)performPullHostedCallsFromPairedHostDevice
{
  v3 = +[CSDRelayIDSService sharedInstance];
  pairedDeviceExists = [v3 pairedDeviceExists];

  if (pairedDeviceExists)
  {
    callContainer = [(CSDCallStateController *)self callContainer];
    v6 = [callContainer allCallsPassTest:&stru_10061DE20];

    if (v6)
    {
      relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
      [relayMessagingController sendPullCallsMessageToHost];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        callContainer2 = [(CSDCallStateController *)self callContainer];
        _allCalls = [callContainer2 _allCalls];
        *buf = 138412290;
        v13 = _allCalls;
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

- (void)performUpdateCallWithProxy:(id)proxy
{
  proxyCopy = proxy;
  callContainer = [(CSDCallStateController *)self callContainer];
  uniqueProxyIdentifier = [proxyCopy uniqueProxyIdentifier];
  v7 = [callContainer callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  [v7 updateWithProxyCall:proxyCopy];
}

- (void)_launchICSForScreeningIfNeeded
{
  v2 = +[CLFSystemShellSwitcher sharedSystemShellSwitcher];
  isClarityBoardEnabled = [v2 isClarityBoardEnabled];

  if (isClarityBoardEnabled)
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

- (void)fetchCurrentCallUpdates:(id)updates
{
  updatesCopy = updates;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "fetchCurrentCallUpdates", buf, 2u);
  }

  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_alloc_init(NSMutableArray);
  pendingCallInfoDict = [(CSDCallStateController *)self pendingCallInfoDict];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1001CF0EC;
  v14 = &unk_10061DE48;
  selfCopy = self;
  v16 = v7;
  v9 = v7;
  [pendingCallInfoDict enumerateKeysAndObjectsUsingBlock:&v11];

  v10 = [v9 copy];
  updatesCopy[2](updatesCopy, v10);
}

- (void)screenWithRequest:(id)request
{
  requestCopy = request;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenWithRequest", buf, 2u);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CF300;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = requestCopy;
  v9 = requestCopy;
  sub_100004AA4(currentClient, @"screen-calls", v10, 0, "[CSDCallStateController screenWithRequest:]");
}

- (id)_screenWithRequest:(id)request
{
  requestCopy = request;
  pendingCallInfoDict = [(CSDCallStateController *)self pendingCallInfoDict];
  callUUID = [requestCopy callUUID];
  v7 = [pendingCallInfoDict objectForKeyedSubscript:callUUID];

  if (!v7)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      callUUID2 = [requestCopy callUUID];
      v30 = 138412290;
      v31 = callUUID2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Did not find any pending call info for callUUID: %@", &v30, 0xCu);
    }

    goto LABEL_7;
  }

  pendingCallInfoDict2 = [(CSDCallStateController *)self pendingCallInfoDict];
  [pendingCallInfoDict2 removeAllObjects];

  callContainer = [(CSDCallStateController *)self callContainer];
  _allCalls = [callContainer _allCalls];
  v11 = [_allCalls count];

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
  callSource = [v7 callSource];
  callUUID3 = [v7 callUUID];
  callUpdate = [v7 callUpdate];
  v15 = [(CSDProviderCall *)v16 initIncomingWithBackingCallSource:callSource UUID:callUUID3 update:callUpdate originatingUIType:58];

  [(CSDCallStateController *)self setCallDelegatesIfNeeded:v15];
  callUpdate2 = [v7 callUpdate];
  sanitizedCallUpdate = [callUpdate2 sanitizedCallUpdate];
  [v15 updateWithCallUpdate:sanitizedCallUpdate];

  [v15 setScreening:1];
  featureFlags = [(CSDCallStateController *)self featureFlags];
  if (TUReceptionistAvailable() && [v15 isReceptionistCapable])
  {
    screeningType = [v7 screeningType];

    if (screeningType == 2)
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
  uniqueProxyIdentifierUUID = [v15 uniqueProxyIdentifierUUID];
  v12 = [v26 initWithCallUUID:uniqueProxyIdentifierUUID];

  [v12 setPauseVideoToStart:1];
  [v12 setScreening:1];
  [v12 setDowngradeToAudio:1];
  providerCallDelegate = [v15 providerCallDelegate];
  [providerCallDelegate performCallAction:v12 forCall:v15];

LABEL_18:

  return v15;
}

- (void)startReceptionistReply
{
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startReceptionistReply", buf, 2u);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001CF824;
  v7[3] = &unk_100619D38;
  v7[4] = self;
  sub_100004AA4(currentClient, @"screen-calls", v7, 0, "[CSDCallStateController startReceptionistReply]");
}

- (void)sendReceptionistReply:(id)reply
{
  replyCopy = reply;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = replyCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sendReceptionistReply: %@", buf, 0xCu);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001CFA3C;
  v10[3] = &unk_100619D88;
  v10[4] = self;
  v11 = replyCopy;
  v9 = replyCopy;
  sub_100004AA4(currentClient, @"screen-calls", v10, 0, "[CSDCallStateController sendReceptionistReply:]");
}

- (void)performRecordingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform recording request %@", buf, 0xCu);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v11 = TUEntitlementsRecordCalls;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001CFCC4;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = requestCopy;
  v18 = completionCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001CFDDC;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = requestCopy;
  sub_100004AA4(currentClient, v11, v16, v14, "[CSDCallStateController performRecordingRequest:completion:]");
}

- (void)performTranslationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform translation request %@", buf, 0xCu);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v11 = TUEntitlementsTranslateCalls;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001CFFCC;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = requestCopy;
  v18 = completionCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D0278;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = requestCopy;
  sub_100004AA4(currentClient, v11, v16, v14, "[CSDCallStateController performTranslationRequest:completion:]");
}

- (void)_performSmartHoldingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform TUSmartHoldingSessionRequest %@", buf, 0xCu);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v11 = TUEntitlementsSmartHolding;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D04B0;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = requestCopy;
  v18 = completionCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D0664;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = requestCopy;
  sub_100004AA4(currentClient, v11, v16, v14, "[CSDCallStateController _performSmartHoldingRequest:completion:]");
}

- (void)performSmartHoldingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = requestCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to perform TUSmartHoldingRequest %@", buf, 0xCu);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v11 = TUEntitlementsSmartHolding;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D089C;
  v16[3] = &unk_10061AF20;
  v16[4] = self;
  v17 = requestCopy;
  v18 = completionCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D0D6C;
  v14[3] = &unk_10061A7E0;
  v15 = v18;
  v12 = v18;
  v13 = requestCopy;
  sub_100004AA4(currentClient, v11, v16, v14, "[CSDCallStateController performSmartHoldingRequest:completion:]");
}

- (void)registerAnonymousXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "registerAnonymousXPCEndpoint", buf, 2u);
  }

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D0FB4;
  v11[3] = &unk_100619D88;
  v11[4] = self;
  v12 = endpointCopy;
  v10 = endpointCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController registerAnonymousXPCEndpoint:]");
}

- (void)fetchAnonymousXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetchAnonymousXPCEndpoint", v8, 2u);
  }

  uiXPCEndpoint = [(CSDCallStateController *)self uiXPCEndpoint];
  endpointCopy[2](endpointCopy, uiXPCEndpoint, 0);
}

- (void)screenUpdate:(id)update withProvider:(id)provider callSource:(id)source callUUID:(id)d screeningType:(int64_t)type
{
  updateCopy = update;
  dCopy = d;
  sourceCopy = source;
  providerCopy = provider;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = updateCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "screenUpdate for callUpdate: %@", &v20, 0xCu);
  }

  v18 = [[CSDPendingCallInfo alloc] initWithCallSource:sourceCopy withCallUpdate:updateCopy withProvider:providerCopy callUUID:dCopy screeningType:type];
  pendingCallInfoDict = [(CSDCallStateController *)self pendingCallInfoDict];
  [pendingCallInfoDict setObject:v18 forKeyedSubscript:dCopy];

  [(CSDCallStateController *)self _launchICSForScreeningIfNeeded];
}

- (void)addPendingCallInfo:(id)info
{
  infoCopy = info;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    callUUID = [infoCopy callUUID];
    v10 = 138412290;
    v11 = callUUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding pendingCallInfoForUUID: %@", &v10, 0xCu);
  }

  pendingCallInfoDict = [(CSDCallStateController *)self pendingCallInfoDict];
  callUUID2 = [infoCopy callUUID];
  [pendingCallInfoDict setObject:infoCopy forKeyedSubscript:callUUID2];
}

- (void)clearPendingCallInfoForUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = dCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "clearing pendingCallInfoForUUID: %@", &v8, 0xCu);
  }

  pendingCallInfoDict = [(CSDCallStateController *)self pendingCallInfoDict];
  [pendingCallInfoDict setObject:0 forKeyedSubscript:dCopy];
}

- (id)pendingCallInfoForUUID:(id)d
{
  dCopy = d;
  queue = [(CSDCallStateController *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingCallInfoDict = [(CSDCallStateController *)self pendingCallInfoDict];
  v7 = [pendingCallInfoDict objectForKeyedSubscript:dCopy];

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = dCopy;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Returning pendingCallInfoForUUID: %@ %@", &v10, 0x16u);
  }

  return v7;
}

- (void)dialWithRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001D1818;
  v17[3] = &unk_10061AF98;
  v18 = requestCopy;
  v19 = currentClient;
  selfCopy = self;
  v21 = replyCopy;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D1CD8;
  v14[3] = &unk_10061C440;
  v15 = v19;
  v16 = v21;
  v14[4] = self;
  v11 = v19;
  v12 = v21;
  v13 = requestCopy;
  sub_100004AA4(v11, v10, v17, v14, "[CSDCallStateController dialWithRequest:reply:]");
}

- (void)dialWithRequest:(id)request displayContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D1E4C;
  v13[3] = &unk_100619E58;
  v14 = requestCopy;
  v15 = contextCopy;
  selfCopy = self;
  v11 = contextCopy;
  v12 = requestCopy;
  sub_100004AA4(currentClient, v10, v13, 0, "[CSDCallStateController dialWithRequest:displayContext:]");
}

- (void)_dial:(id)_dial displayContext:(id)context completion:(id)completion
{
  _dialCopy = _dial;
  completionCopy = completion;
  v10 = [(CSDCallStateController *)self performDialCall:_dialCopy displayContext:context];
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dialed call: %@", &v18, 0xCu);
  }

  translationRequestConfiguration = [_dialCopy translationRequestConfiguration];

  if (translationRequestConfiguration)
  {
    v13 = [TUCallTranslationStartRequest alloc];
    translationRequestConfiguration2 = [_dialCopy translationRequestConfiguration];
    v15 = [v13 initWithCall:v10 configuration:translationRequestConfiguration2];

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "translation request: %@", &v18, 0xCu);
    }

    callTranslationController = [(CSDCallStateController *)self callTranslationController];
    [callTranslationController performRequest:v15 forCall:v10 completion:&stru_10061DEE0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v10);
  }
}

- (void)answerCallWithRequest:(id)request
{
  requestCopy = request;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  if (([requestCopy sendToScreening] & 1) != 0 || objc_msgSend(requestCopy, "screeningType"))
  {
    v8 = 0;
    v9 = off_10061E9C8;
  }

  else
  {
    if (![requestCopy launchInBackground])
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
  v13 = requestCopy;
  selfCopy = self;
  v15 = v8;
  v11 = requestCopy;
  sub_100004AA4(currentClient, v7, v12, 0, "[CSDCallStateController answerCallWithRequest:]");
}

- (void)holdCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D26F0;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController holdCallWithUniqueProxyIdentifier:]");
}

- (void)unholdCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D2960;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController unholdCallWithUniqueProxyIdentifier:]");
}

- (void)requestVideoUpgradeForCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D2BD0;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController requestVideoUpgradeForCallWithUniqueProxyIdentifier:]");
}

- (void)disconnectCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001D3024;
  v10[3] = &unk_100619E58;
  v11 = identifierCopy;
  v12 = currentClient;
  selfCopy = self;
  v8 = currentClient;
  v9 = identifierCopy;
  sub_100004AA4(v8, v7, v10, 0, "[CSDCallStateController disconnectCallWithUniqueProxyIdentifier:]");
}

- (void)groupCallWithUniqueProxyIdentifier:(id)identifier withOtherCallWithUniqueProxyIdentifier:(id)proxyIdentifier
{
  identifierCopy = identifier;
  proxyIdentifierCopy = proxyIdentifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D32D0;
  v13[3] = &unk_100619E58;
  v14 = identifierCopy;
  v15 = proxyIdentifierCopy;
  selfCopy = self;
  v11 = proxyIdentifierCopy;
  v12 = identifierCopy;
  sub_100004AA4(currentClient, v10, v13, 0, "[CSDCallStateController groupCallWithUniqueProxyIdentifier:withOtherCallWithUniqueProxyIdentifier:]");
}

- (void)ungroupCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D35F0;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController ungroupCallWithUniqueProxyIdentifier:]");
}

- (void)swapCalls
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3820;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController swapCalls]");
}

- (void)playDTMFToneForCallWithUniqueProxyIdentifier:(id)identifier key:(unsigned __int8)key
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D3984;
  v11[3] = &unk_100619F48;
  keyCopy = key;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController playDTMFToneForCallWithUniqueProxyIdentifier:key:]");
}

- (void)disconnectCurrentCall
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3BC8;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController disconnectCurrentCall]");
}

- (void)disconnectCurrentCallAndActivateHeld
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3CF8;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController disconnectCurrentCallAndActivateHeld]");
}

- (void)disconnectAllCalls
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D3E2C;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController disconnectAllCalls]");
}

- (void)setTTYType:(int)type forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D3F94;
  v11[3] = &unk_10061CF48;
  typeCopy = type;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setTTYType:forCallWithUniqueProxyIdentifier:]");
}

- (void)setLiveVoicemailUnavailableReason:(int64_t)reason forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D417C;
  v11[3] = &unk_100619F20;
  selfCopy = self;
  reasonCopy = reason;
  v12 = identifierCopy;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setLiveVoicemailUnavailableReason:forCallWithUniqueProxyIdentifier:]");
}

- (void)pullRelayingCallsFromClient
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4338;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController pullRelayingCallsFromClient]");
}

- (void)pullRelayingGFTCallsFromClientIfNecessary
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4470;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController pullRelayingGFTCallsFromClientIfNecessary]");
}

- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D45D0;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController pushRelayingCallsToHostWithSourceIdentifier:]");
}

- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)info reply:(id)reply
{
  infoCopy = info;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001D4850;
  v22[3] = &unk_10061DE98;
  v23 = currentClient;
  v24 = replyCopy;
  v22[4] = self;
  v10 = currentClient;
  v11 = replyCopy;
  v12 = objc_retainBlock(v22);
  v13 = TUEntitlementsModifyCallsCapability;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D48D4;
  v18[3] = &unk_10061AF20;
  v19 = infoCopy;
  selfCopy = self;
  v21 = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D4988;
  v16[3] = &unk_10061A7E0;
  v17 = v21;
  v14 = v21;
  v15 = infoCopy;
  sub_100004AA4(v10, v13, v18, v16, "[CSDCallStateController pullCallFromClientUsingHandoffActivityUserInfo:reply:]");
}

- (void)pullPersistedChannel:(id)channel
{
  channelCopy = channel;
  v5 = +[CSDPersistedChannelRegistry sharedInstance];
  activePersistedChannelIdentity = [v5 activePersistedChannelIdentity];

  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];
  v9 = TUEntitlementsModifyCallsCapability;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D4ABC;
  v12[3] = &unk_10061DF08;
  v13 = activePersistedChannelIdentity;
  v14 = channelCopy;
  v10 = activePersistedChannelIdentity;
  v11 = channelCopy;
  sub_100004AA4(currentClient, v9, v12, 0, "[CSDCallStateController pullPersistedChannel:]");
}

- (void)startTransmissionForBargeCall:(id)call sourceIsHandsfreeAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  callCopy = call;
  callContainer = [(CSDCallStateController *)self callContainer];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  v9 = [callContainer bargeCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v9)
  {
    if (accessoryCopy)
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

- (void)stopTransmissionForBargeCall:(id)call sourceIsHandsfreeAccessory:(BOOL)accessory
{
  accessoryCopy = accessory;
  callCopy = call;
  callContainer = [(CSDCallStateController *)self callContainer];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  v9 = [callContainer bargeCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v9)
  {
    if (accessoryCopy)
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

- (void)sendMMIOrUSSDCodeWithRequest:(id)request
{
  requestCopy = request;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D4DFC;
  v9[3] = &unk_100619D88;
  v10 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController sendMMIOrUSSDCodeWithRequest:]");
}

- (void)setUplinkMuted:(BOOL)muted forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D4F9C;
  v11[3] = &unk_100619F48;
  mutedCopy = muted;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setUplinkMuted:forCallWithUniqueProxyIdentifier:]");
}

- (void)setDownlinkMuted:(BOOL)muted forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5214;
  v11[3] = &unk_100619F48;
  mutedCopy = muted;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setDownlinkMuted:forCallWithUniqueProxyIdentifier:]");
}

- (void)setIsSendingVideo:(BOOL)video forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5488;
  v11[3] = &unk_100619F48;
  videoCopy = video;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setIsSendingVideo:forCallWithUniqueProxyIdentifier:]");
}

- (void)setMixesVoiceWithMedia:(BOOL)media forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5744;
  v11[3] = &unk_100619F48;
  mediaCopy = media;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setMixesVoiceWithMedia:forCallWithUniqueProxyIdentifier:]");
}

- (void)setSharingScreen:(BOOL)screen forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D59B8;
  v11[3] = &unk_100619F48;
  screenCopy = screen;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setSharingScreen:forCallWithUniqueProxyIdentifier:]");
}

- (void)setHasEmergencyVideoStream:(BOOL)stream forCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D5C2C;
  v11[3] = &unk_100619F48;
  streamCopy = stream;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setHasEmergencyVideoStream:forCallWithUniqueProxyIdentifier:]");
}

- (void)setEmergencyMediaItems:(id)items forCallWithUniqueProxyIdentifier:(id)identifier
{
  itemsCopy = items;
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D5EBC;
  v13[3] = &unk_100619E58;
  v14 = itemsCopy;
  v15 = identifierCopy;
  selfCopy = self;
  v11 = identifierCopy;
  v12 = itemsCopy;
  sub_100004AA4(currentClient, v10, v13, 0, "[CSDCallStateController setEmergencyMediaItems:forCallWithUniqueProxyIdentifier:]");
}

- (void)pushHostedCallsToDestination:(id)destination
{
  destinationCopy = destination;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D6128;
  v9[3] = &unk_100619D88;
  v10 = destinationCopy;
  selfCopy = self;
  v8 = destinationCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController pushHostedCallsToDestination:]");
}

- (void)pullHostedCallsFromPairedHostDevice
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D6294;
  v5[3] = &unk_100619D38;
  v5[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v5, 0, "[CSDCallStateController pullHostedCallsFromPairedHostDevice]");
}

- (void)sendHardPauseDigitsForCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D63E8;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController sendHardPauseDigitsForCallWithUniqueProxyIdentifier:]");
}

- (void)updateCallWithProxy:(id)proxy
{
  proxyCopy = proxy;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D65A0;
  v9[3] = &unk_100619D88;
  v10 = proxyCopy;
  selfCopy = self;
  v8 = proxyCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController updateCallWithProxy:]");
}

- (void)enteredForegroundForCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D6730;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController enteredForegroundForCallWithUniqueProxyIdentifier:]");
}

- (void)willEnterBackgroundForAllCalls
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, &stru_10061DF28, 0, "[CSDCallStateController willEnterBackgroundForAllCalls]");
}

- (void)enteredBackgroundForAllCalls
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, &stru_10061DF48, 0, "[CSDCallStateController enteredBackgroundForAllCalls]");
}

- (void)setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D6B50;
  v12[3] = &unk_10061D330;
  v15 = width;
  v16 = height;
  v13 = identifierCopy;
  selfCopy = self;
  v11 = identifierCopy;
  sub_100004AA4(currentClient, v10, v12, 0, "[CSDCallStateController setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:size:]");
}

- (void)setRemoteVideoPresentationStateForCallWithUniqueProxyIdentifier:(id)identifier presentationState:(int)state
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D6D44;
  v11[3] = &unk_10061CF48;
  stateCopy = state;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setRemoteVideoPresentationStateForCallWithUniqueProxyIdentifier:presentationState:]");
}

- (void)setScreenShareAttributesForCallWithUniqueProxyIdentifier:(id)identifier attributes:(id)attributes
{
  identifierCopy = identifier;
  attributesCopy = attributes;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v10 = TUEntitlementsModifyCallsCapability;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D6F44;
  v13[3] = &unk_100619E58;
  v14 = attributesCopy;
  v15 = identifierCopy;
  selfCopy = self;
  v11 = identifierCopy;
  v12 = attributesCopy;
  sub_100004AA4(currentClient, v10, v13, 0, "[CSDCallStateController setScreenShareAttributesForCallWithUniqueProxyIdentifier:attributes:]");
}

- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes forCallWithUniqueProxyIdentifier:(id)identifier
{
  attributesCopy = attributes;
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v12 = TUEntitlementsModifyCallsCapability;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001D7148;
  v15[3] = &unk_10061BE38;
  screenCopy = screen;
  v16 = attributesCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v13 = identifierCopy;
  v14 = attributesCopy;
  sub_100004AA4(currentClient, v12, v15, 0, "[CSDCallStateController setSharingScreen:attributes:forCallWithUniqueProxyIdentifier:]");
}

- (void)setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:(id)identifier bluetoothAudioFormat:(int64_t)format
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D7338;
  v11[3] = &unk_100619F20;
  selfCopy = self;
  formatCopy = format;
  v12 = identifierCopy;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:bluetoothAudioFormat:]");
}

- (void)shouldSuppressInCallStatusBar:(BOOL)bar
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D7540;
  v7[3] = &unk_100619EA8;
  barCopy = bar;
  v7[4] = self;
  sub_100004AA4(currentClient, @"modify-status-bar", v7, 0, "[CSDCallStateController shouldSuppressInCallStatusBar:]");
}

- (void)shouldAllowRingingCallStatusIndicator:(BOOL)indicator
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D7770;
  v7[3] = &unk_100619EA8;
  indicatorCopy = indicator;
  v7[4] = self;
  sub_100004AA4(currentClient, @"modify-status-bar", v7, 0, "[CSDCallStateController shouldAllowRingingCallStatusIndicator:]");
}

- (void)activateInCallUIWithActivityContinuationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D79B0;
  v9[3] = &unk_100619D88;
  v10 = identifierCopy;
  selfCopy = self;
  v8 = identifierCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController activateInCallUIWithActivityContinuationIdentifier:]");
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D7FD8;
  v9[3] = &unk_100619D88;
  v10 = requestCopy;
  selfCopy = self;
  v8 = requestCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController joinConversationWithRequest:]");
}

- (void)setCurrentAudioInputDeviceToDeviceWithUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D8170;
  v9[3] = &unk_100619D88;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController setCurrentAudioInputDeviceToDeviceWithUID:]");
}

- (void)setCurrentAudioOutputDeviceToDeviceWithUID:(id)d
{
  dCopy = d;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = TUEntitlementsModifyCallsCapability;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D832C;
  v9[3] = &unk_100619D88;
  v10 = dCopy;
  selfCopy = self;
  v8 = dCopy;
  sub_100004AA4(currentClient, v7, v9, 0, "[CSDCallStateController setCurrentAudioOutputDeviceToDeviceWithUID:]");
}

- (void)localRoutesByUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D84E8;
  v8[3] = &unk_10061DF08;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  sub_100004AA4(currentClient, @"access-calls", v8, 0, "[CSDCallStateController localRoutesByUniqueIdentifier:]");
}

- (void)pairedHostDeviceRoutesByUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001D8634;
  v8[3] = &unk_10061DF08;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  sub_100004AA4(currentClient, @"access-calls", v8, 0, "[CSDCallStateController pairedHostDeviceRoutesByUniqueIdentifier:]");
}

- (void)pickLocalRouteWithUniqueIdentifier:(id)identifier shouldWaitUntilAvailable:(BOOL)available
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D8790;
  v11[3] = &unk_100619F48;
  v12 = identifierCopy;
  selfCopy = self;
  availableCopy = available;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController pickLocalRouteWithUniqueIdentifier:shouldWaitUntilAvailable:]");
}

- (void)pickPairedHostDeviceRouteWithUniqueIdentifier:(id)identifier shouldWaitUntilAvailable:(BOOL)available
{
  identifierCopy = identifier;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v9 = TUEntitlementsModifyCallsCapability;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D8948;
  v11[3] = &unk_100619F48;
  v12 = identifierCopy;
  selfCopy = self;
  availableCopy = available;
  v10 = identifierCopy;
  sub_100004AA4(currentClient, v9, v11, 0, "[CSDCallStateController pickPairedHostDeviceRouteWithUniqueIdentifier:shouldWaitUntilAvailable:]");
}

- (void)setPairedHostDeviceVolume:(float)volume
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D8ADC;
  v7[3] = &unk_100619EF8;
  volumeCopy = volume;
  v7[4] = self;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v7, 0, "[CSDCallStateController setPairedHostDeviceVolume:]");
}

- (void)setLocalDeviceVolume:(float)volume
{
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001D8C60;
  v6[3] = &unk_10061DFB8;
  volumeCopy = volume;
  sub_100004AA4(currentClient, TUEntitlementsModifyCallsCapability, v6, 0, "[CSDCallStateController setLocalDeviceVolume:]");
}

- (void)validateIMAVPush:(id)push reply:(id)reply
{
  pushCopy = push;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D8E2C;
  v12[3] = &unk_10061DF08;
  v13 = pushCopy;
  v14 = replyCopy;
  v10 = pushCopy;
  v11 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v12, 0, "[CSDCallStateController validateIMAVPush:reply:]");
}

- (void)containsRestrictedHandle:(id)handle forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously reply:(id)reply
{
  handleCopy = handle;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D8FD0;
  v18[3] = &unk_10061DFE0;
  v18[4] = self;
  v19 = handleCopy;
  v20 = identifierCopy;
  v21 = replyCopy;
  synchronouslyCopy = synchronously;
  v15 = identifierCopy;
  v16 = handleCopy;
  v17 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v18, 0, "[CSDCallStateController containsRestrictedHandle:forBundleIdentifier:performSynchronously:reply:]");
}

- (void)policyForAddresses:(id)addresses forBundleIdentifier:(id)identifier reply:(id)reply
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D9184;
  v16[3] = &unk_10061E008;
  v16[4] = self;
  v17 = addressesCopy;
  v18 = identifierCopy;
  v19 = replyCopy;
  v13 = identifierCopy;
  v14 = addressesCopy;
  v15 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v16, 0, "[CSDCallStateController policyForAddresses:forBundleIdentifier:reply:]");
}

- (void)willRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier reply:(id)reply
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D9328;
  v16[3] = &unk_10061E008;
  v16[4] = self;
  v17 = addressesCopy;
  v18 = identifierCopy;
  v19 = replyCopy;
  v13 = identifierCopy;
  v14 = addressesCopy;
  v15 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v16, 0, "[CSDCallStateController willRestrictAddresses:forBundleIdentifier:reply:]");
}

- (void)shouldRestrictAddresses:(id)addresses forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously reply:(id)reply
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D9504;
  v18[3] = &unk_10061DFE0;
  v18[4] = self;
  v19 = addressesCopy;
  v20 = identifierCopy;
  v21 = replyCopy;
  synchronouslyCopy = synchronously;
  v15 = identifierCopy;
  v16 = addressesCopy;
  v17 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v18, 0, "[CSDCallStateController shouldRestrictAddresses:forBundleIdentifier:performSynchronously:reply:]");
}

- (void)isUnknownAddress:(id)address normalizedAddress:(id)normalizedAddress forBundleIdentifier:(id)identifier reply:(id)reply
{
  addressCopy = address;
  normalizedAddressCopy = normalizedAddress;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001D96CC;
  v20[3] = &unk_10061E030;
  v23 = identifierCopy;
  v24 = replyCopy;
  v20[4] = self;
  v21 = addressCopy;
  v22 = normalizedAddressCopy;
  v16 = identifierCopy;
  v17 = normalizedAddressCopy;
  v18 = addressCopy;
  v19 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v20, 0, "[CSDCallStateController isUnknownAddress:normalizedAddress:forBundleIdentifier:reply:]");
}

- (void)filterStatusForAddresses:(id)addresses forBundleIdentifier:(id)identifier reply:(id)reply
{
  addressesCopy = addresses;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001D9880;
  v16[3] = &unk_10061E008;
  v16[4] = self;
  v17 = addressesCopy;
  v18 = identifierCopy;
  v19 = replyCopy;
  v13 = identifierCopy;
  v14 = addressesCopy;
  v15 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v16, 0, "[CSDCallStateController filterStatusForAddresses:forBundleIdentifier:reply:]");
}

- (void)isRestrictedExclusivelyByScreenTime:(id)time forBundleIdentifier:(id)identifier performSynchronously:(BOOL)synchronously reply:(id)reply
{
  timeCopy = time;
  identifierCopy = identifier;
  replyCopy = reply;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001D9A5C;
  v18[3] = &unk_10061DFE0;
  v18[4] = self;
  v19 = timeCopy;
  v20 = identifierCopy;
  v21 = replyCopy;
  synchronouslyCopy = synchronously;
  v15 = identifierCopy;
  v16 = timeCopy;
  v17 = replyCopy;
  sub_100004AA4(currentClient, @"access-calls", v18, 0, "[CSDCallStateController isRestrictedExclusivelyByScreenTime:forBundleIdentifier:performSynchronously:reply:]");
}

- (void)setClientCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = capabilitiesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "clientCapabilities: %@", &v8, 0xCu);
  }

  [currentClient setCapabilities:capabilitiesCopy];
}

- (void)propertiesChangedForCall:(id)call
{
  callCopy = call;
  callController = [(CSDCallStateController *)self callController];
  [callController registerCall:callCopy];
}

- (BOOL)isClientRecordingApplicationInstalled
{
  applicationInstallationObserver = [(CSDCallStateController *)self applicationInstallationObserver];
  v3 = +[CSDAudioCallRecordingConstants notesApplicationBundleID];
  v4 = [applicationInstallationObserver isApplicationInstalledWithBundleID:v3];

  return v4;
}

- (id)callForClient:(id)client usingCall:(id)call
{
  clientCopy = client;
  callCopy = call;
  if (callCopy)
  {
    if ([clientCopy isRemote])
    {
      v7 = [TUProxyCall proxyCallWithCall:callCopy];
    }

    else
    {
      v7 = callCopy;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)currentCallsForClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isRemote])
  {
    currentProxyCalls = [(CSDCallStateController *)self currentProxyCalls];
    [(CSDCallStateController *)self eligibleCallsByFilteringCalls:currentProxyCalls forClient:clientCopy];
  }

  else
  {
    currentProxyCalls = [(CSDCallStateController *)self callContainer];
    [currentProxyCalls _allCalls];
  }
  v6 = ;

  return v6;
}

- (BOOL)isTrackingVoIPCallForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA1EC;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = identifierCopy;
  v10 = &v11;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  LOBYTE(identifierCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return identifierCopy;
}

- (void)disconnectBargeCall:(id)call bundleIdentifier:(id)identifier reason:(int)reason
{
  callCopy = call;
  identifierCopy = identifier;
  callContainer = [(CSDCallStateController *)self callContainer];
  uUIDString = [callCopy UUIDString];
  v12 = [callContainer bargeCallWithUniqueProxyIdentifier:uUIDString];

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = callCopy;
    v23 = 2112;
    v24 = identifierCopy;
    v25 = 1024;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "disconnectBargeCall, callUUID: %@, bundleIdentifier: %@, reason: %d", buf, 0x1Cu);
  }

  provider = [v12 provider];
  bundleIdentifier = [provider bundleIdentifier];
  v16 = [bundleIdentifier isEqualToString:identifierCopy];

  if (v16)
  {
    queue = [(CSDCallStateController *)self queue];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001DA52C;
    v18[3] = &unk_100619EF8;
    v19 = v12;
    reasonCopy2 = reason;
    dispatch_async(queue, v18);
  }
}

- (void)disconnectBargeCallsWithBundleIdentifier:(id)identifier reason:(int)reason
{
  identifierCopy = identifier;
  queue = [(CSDCallStateController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DA5F8;
  block[3] = &unk_10061CF48;
  block[4] = self;
  v10 = identifierCopy;
  reasonCopy = reason;
  v8 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)requestInitialState:(id)state
{
  stateCopy = state;
  clientManager = [(CSDCallStateController *)self clientManager];
  currentClient = [clientManager currentClient];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = currentClient;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting initial state for client %@", &v9, 0xCu);
  }

  v8 = [(CSDCallStateController *)self currentCallsForClient:currentClient];
  stateCopy[2](stateCopy, v8);
}

- (void)reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "uniqueProxyIdentifier %@", &v9, 0xCu);
  }

  callContainer = [(CSDCallStateController *)self callContainer];
  v7 = [callContainer callWithUniqueProxyIdentifier:identifierCopy];

  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CSDCallLocalPreviewStoppedNotification" object:v7];
  }
}

- (void)saveCustomSandboxedURLGreeting:(id)greeting forAccountUUID:(id)d
{
  dCopy = d;
  greetingCopy = greeting;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "saveCustomGreeting", v11, 2u);
  }

  answeringMachineController = [(CSDCallStateController *)self answeringMachineController];
  v10 = [greetingCopy URL];

  [answeringMachineController saveCustomGreeting:v10 for:dCopy];
}

- (void)deleteCustomGreetingForAccountUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deleteCustomGreetingForAccountUUID", v7, 2u);
  }

  answeringMachineController = [(CSDCallStateController *)self answeringMachineController];
  [answeringMachineController deleteCustomGreetingFor:dCopy];
}

- (void)customSandboxedURLGreetingForAccountUUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "customGreetingForAccountUUID:withCompletion:", v12, 2u);
  }

  answeringMachineController = [(CSDCallStateController *)self answeringMachineController];
  v10 = [answeringMachineController customGreetingFor:dCopy];

  if (v10)
  {
    v11 = [[TUSandboxExtendedURL alloc] initWithURL:v10 withExtensionType:0];
    completionCopy[2](completionCopy, v11);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)defaultGreeting:(id)greeting
{
  greetingCopy = greeting;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "defaultGreeting", v9, 2u);
  }

  answeringMachineController = [(CSDCallStateController *)self answeringMachineController];
  defaultGreeting = [answeringMachineController defaultGreeting];

  if (defaultGreeting)
  {
    v8 = [[TUSandboxExtendedURL alloc] initWithURL:defaultGreeting withExtensionType:0];
    greetingCopy[2](greetingCopy, v8);
  }

  else
  {
    greetingCopy[2](greetingCopy, 0);
  }
}

- (void)callHistoryManager:(id)manager recentCallRequestedFor:(id)for withStartDate:(id)date avMode:(unint64_t)mode
{
  dateCopy = date;
  forCopy = for;
  recentsController = [(CSDCallStateController *)self recentsController];
  [recentsController reportRecentCallForConversation:forCopy withStartDate:dateCopy avMode:mode];
}

- (void)providersChangedForProviderManager:(id)manager withValidKeychain:(BOOL)keychain
{
  managerCopy = manager;
  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendUpdateCallContextMessageToClientForCallProviderManager:managerCopy];
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

  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  callProviderManager = [(CSDCallStateController *)self callProviderManager];
  [relayMessagingController sendUpdateCallContextMessageToClientForCallProviderManager:callProviderManager];
}

- (IMNicknameProvider)nicknameProvider
{
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
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

  displayName = [v3 displayName];

  return displayName;
}

- (void)sendAutomaticNameAndPhotoUsingDialRequestIfPossible:(id)possible
{
  possibleCopy = possible;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
  {
    handle = [possibleCopy handle];
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
      v12 = possibleCopy;
      dispatch_async(v9, block);
    }
  }
}

- (void)sendAutomaticNameAndPhotoUsingJoinRequestIfPossible:(id)possible
{
  possibleCopy = possible;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
  {
    v7 = +[CSDCallStateController automaticNameAndPhotoQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001DB3D4;
    v8[3] = &unk_100619D88;
    v8[4] = self;
    v9 = possibleCopy;
    dispatch_async(v7, v8);
  }
}

- (void)sendNameAndPhotoUsingDialRequest:(id)request
{
  requestCopy = request;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
  {
    handle = [requestCopy handle];
    v8 = TUNormalizedHandleForTUHandle();

    if (v8)
    {
      provider = [requestCopy provider];
      isTelephonyProvider = [provider isTelephonyProvider];

      if (isTelephonyProvider)
      {
        localSenderIdentity = [requestCopy localSenderIdentity];
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = localSenderIdentity;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SNAP: Using localSenderIdentity %@", &v25, 0xCu);
        }

        handle2 = [localSenderIdentity handle];
        normalizedValue = [handle2 normalizedValue];

        handle3 = [localSenderIdentity handle];
        v16 = handle3;
        if (normalizedValue)
        {
          normalizedValue2 = [handle3 normalizedValue];
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

          normalizedValue3 = [v18 normalizedValue];
          v21 = normalizedValue3;
          if (normalizedValue3)
          {
            value = normalizedValue3;
          }

          else
          {
            value = [v18 value];
          }

          normalizedValue2 = value;
        }
      }

      else
      {
        normalizedValue2 = [(CSDCallStateController *)self fetchPreferredFaceTimeAccountID];
      }

      value2 = [v8 value];
      v24 = [NSSet setWithObject:value2];
      [(CSDCallStateController *)self sendNameAndPhotoToHandles:v24 fromID:normalizedValue2];
    }
  }
}

- (void)sendNameAndPhotoUsingJoinRequest:(id)request
{
  sanitizedHandles = [request sanitizedHandles];
  fetchPreferredFaceTimeAccountID = [(CSDCallStateController *)self fetchPreferredFaceTimeAccountID];
  [(CSDCallStateController *)self sendNameAndPhotoToHandles:sanitizedHandles fromID:fetchPreferredFaceTimeAccountID];
}

- (void)sendNameAndPhotoToHandles:(id)handles fromID:(id)d
{
  handlesCopy = handles;
  dCopy = d;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = handlesCopy;
      v25 = 2112;
      v26 = dCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SNAP: Requesting to send Name+Photo to handles %@ fromID %@", buf, 0x16u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = handlesCopy;
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
          nicknameProvider = [(CSDCallStateController *)self nicknameProvider];
          [nicknameProvider sendPersonalNicknameToHandleID:v16 fromHandleID:dCopy];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)handles callProvider:(id)provider
{
  handlesCopy = handles;
  providerCopy = provider;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
  {
    v10 = -[CSDCallStateController shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:](self, "shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:", handlesCopy, [providerCopy isSystemProvider]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)handles conversationProvider:(id)provider
{
  handlesCopy = handles;
  providerCopy = provider;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (nameAndPhotoEnabled)
  {
    v10 = -[CSDCallStateController shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:](self, "shouldAutomaticallySendNameAndPhotoToHandles:isDefaultProvider:", handlesCopy, [providerCopy isDefaultProvider]);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldAutomaticallySendNameAndPhotoToHandles:(id)handles isDefaultProvider:(BOOL)provider
{
  providerCopy = provider;
  handlesCopy = handles;
  featureFlags = [(CSDCallStateController *)self featureFlags];
  nameAndPhotoEnabled = [featureFlags nameAndPhotoEnabled];

  if (!nameAndPhotoEnabled)
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
    if (![(CSDCallStateController *)self _hasAlreadyDeniedSendingNameAndPhotoToHandles:handlesCopy]&& providerCopy)
    {
      selfCopy = self;
      callProviderManager = [(CSDCallStateController *)self callProviderManager];
      v10 = [callProviderManager providersByIdentifierForRemoteClients:0];

      v36 = v10;
      [v10 objectForKeyedSubscript:@"com.apple.coretelephony"];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v37 = v54 = 0u;
      prioritizedSenderIdentities = [v37 prioritizedSenderIdentities];
      v12 = [prioritizedSenderIdentities countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v12)
      {
        v13 = v12;
        v40 = 0;
        v41 = *v52;
        obj = prioritizedSenderIdentities;
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
            v16 = handlesCopy;
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
                  handle = [v15 handle];
                  normalizedValue = [handle normalizedValue];
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
          contactStore = sub_100004778();
          if (os_log_type_enabled(contactStore, OS_LOG_TYPE_DEFAULT))
          {
            prioritizedSenderIdentities2 = [v37 prioritizedSenderIdentities];
            *buf = 138412546;
            v57 = v16;
            v58 = 2112;
            v59 = prioritizedSenderIdentities2;
            _os_log_impl(&_mh_execute_header, contactStore, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because handles %@ contains self handle %@", buf, 0x16u);
          }

          v8 = 0;
          goto LABEL_27;
        }
      }

      else
      {
      }

      callCenter = [(CSDCallStateController *)selfCopy callCenter];
      contactStore = [callCenter contactStore];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v29 = handlesCopy;
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

          v34 = [(CSDCallStateController *)selfCopy _contactForHandle:*(*(&v43 + 1) + 8 * k) contactStore:contactStore];
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

- (void)sendCaptionsMessageToClientForCall:(id)call withCaptions:(id)captions
{
  captionsCopy = captions;
  callCopy = call;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CSDCallSateController sendCaptionsMessageToClientForCall", v10, 2u);
  }

  relayMessagingController = [(CSDCallStateController *)self relayMessagingController];
  [relayMessagingController sendCaptionsMessageToClientForCall:callCopy withCaptions:captionsCopy];
}

- (BOOL)_sharingAudienceAllowsAutoSendNameAndPhoto
{
  v2 = +[IMMeCardSharingStateController sharedInstance];
  sharingAudience = [v2 sharingAudience];

  if (sharingAudience == 2)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = 2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SNAP: Shouldnt automatically send Name+Photo because sharing audience is %ld", &v6, 0xCu);
    }
  }

  return sharingAudience != 2;
}

- (BOOL)_hasAlreadyDeniedSendingNameAndPhotoToHandles:(id)handles
{
  handlesCopy = handles;
  v4 = +[IMServiceImpl iMessageService];
  v5 = IMPreferredAccountForService();

  v6 = +[NSMutableSet set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = handlesCopy;
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
  processObserver = [(CSDCallStateController *)self processObserver];
  v4 = [processObserver fetchCurrentProcessStatesForBundleIdentifier:v2];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [v4 allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v10 + 1) + 8 * i) integerValue] == 4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (BOOL)hasCustomGreetingFor:(id)for
{
  forCopy = for;
  answeringMachineController = [(CSDCallStateController *)self answeringMachineController];
  v6 = [answeringMachineController hasCustomGreetingFor:forCopy];

  return v6;
}

@end