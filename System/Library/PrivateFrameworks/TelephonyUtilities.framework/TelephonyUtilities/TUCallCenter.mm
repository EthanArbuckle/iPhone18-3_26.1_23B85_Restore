@interface TUCallCenter
+ (BOOL)_supportsJoiningConversationWithRequest:(id)a3 featureFlags:(id)a4 supportsConversations:(BOOL)a5;
+ (BOOL)isSimultaneousVoiceAndDataSupportedForDialRequest:(id)a3;
+ (BOOL)supportsJoiningConversationWithRequest:(id)a3;
+ (TUCallCenter)callCenterWithQueue:(id)a3 server:(id)a4 shouldRegister:(BOOL)a5 featureFlags:(id)a6;
+ (id)sharedContactStore;
+ (id)sharedInstanceWithQueue:(id)a3 server:(id)a4 shouldRegister:(BOOL)a5;
- (BOOL)_canDialWithRequest:(id)a3 shouldUseRelay:(BOOL *)a4;
- (BOOL)_existingCallsAllowDialRequest:(id)a3 allowVoiceWithData:(BOOL)a4;
- (BOOL)_isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:(int)a3 isProviderAvailable:(BOOL)a4 isRelayAllowed:(BOOL)a5 isEmergency:(BOOL)a6 supportsBasebandCalling:(BOOL)a7 shouldUseRelay:(BOOL *)a8 isTelephonyProvider:(BOOL)a9 deviceType:(int64_t)a10;
- (BOOL)_isEmergencyDialRequest:(id)a3;
- (BOOL)_shouldRelayJoinConversationRequest:(id)a3;
- (BOOL)allCallsPassTest:(id)a3;
- (BOOL)anyCallIsEndpointOnCurrentDevice;
- (BOOL)anyCallIsHostedOnCurrentDevice;
- (BOOL)anyCallPassesTest:(id)a3;
- (BOOL)autoPunchOutBehaviorRequiredForFrontmostCall;
- (BOOL)canGroupCall:(id)a3 withCall:(id)a4;
- (BOOL)canMergeCalls;
- (BOOL)continueHandoffForConversationWithEligibility:(id)a3;
- (BOOL)existingCallsHaveMultipleProviders;
- (BOOL)handleWiredHeadsetFlashButtonForBargeCalls;
- (BOOL)hasCurrentAudioCalls;
- (BOOL)hasCurrentCalls;
- (BOOL)hasCurrentVideoCalls;
- (BOOL)isAddCallAllowed;
- (BOOL)isDirectCallingCurrentlyAvailableForProvider:(id)a3 isVideo:(BOOL)a4;
- (BOOL)isEndAndAnswerAllowed;
- (BOOL)isHoldAllowed;
- (BOOL)isHoldAndAnswerAllowed;
- (BOOL)isMergeable;
- (BOOL)isRelayCallingSupportedForProvider:(id)a3 isVideo:(BOOL)a4;
- (BOOL)isSendToVoicemailAllowed;
- (BOOL)isSharePlayActiveForTelephonyCall:(id)a3;
- (BOOL)isSwappable;
- (BOOL)isTakingCallsPrivateAllowed;
- (BOOL)launchAppForJoinRequest:(id)a3;
- (BOOL)shouldPullRelayingCalls;
- (BOOL)validateIMAVPush:(id)a3;
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CNContactStore)contactStore;
- (NSArray)bargeCalls;
- (NSArray)callGroupsOnDefaultPairedDevice;
- (NSArray)callsHostedElsewhere;
- (NSArray)callsHostedOrAnEndpointElsewhere;
- (NSArray)callsOnDefaultPairedDevice;
- (NSArray)callsWithAnEndpointElsewhere;
- (NSArray)conferenceParticipantCalls;
- (NSArray)currentAudioAndVideoCallGroups;
- (NSArray)currentAudioAndVideoCalls;
- (NSArray)currentCallGroups;
- (NSArray)currentCalls;
- (NSArray)currentVideoCalls;
- (NSArray)displayedAudioAndVideoCalls;
- (NSArray)displayedCalls;
- (NSArray)incomingCalls;
- (NSString)debugDescription;
- (TUAudioDeviceController)audioDeviceController;
- (TUCall)activeVideoCall;
- (TUCall)currentVideoCall;
- (TUCall)frontmostBargeCall;
- (TUCall)incomingCall;
- (TUCall)incomingVideoCall;
- (TUCall)pendingUpgradeCall;
- (TUCall)screeningCall;
- (TUCallCenter)init;
- (TUCallCenter)initWithQueue:(id)a3;
- (TUCallContainerPrivate)callContainer;
- (TUCallFilterController)callFilterController;
- (TUCallProviderManager)providerManager;
- (TUConversationManager)conversationManager;
- (TUGameOverlayController)gameOverlayController;
- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit;
- (TURouteController)pairedHostDeviceRouteController;
- (TURouteController)routeController;
- (TUVideoDeviceController)videoDeviceController;
- (id)_allCalls;
- (id)_dialWithRequest:(id)a3 completion:(id)a4;
- (id)_splitSessionErrorWithCode:(int64_t)a3 underlyingError:(id)a4;
- (id)activeConversationForCall:(id)a3;
- (id)bargeCallWithUniqueProxyIdentifier:(id)a3;
- (id)bargeCallsPassingTest:(id)a3;
- (id)callForConversationWithGroupUUID:(id)a3;
- (id)callMatchingConversationRequest:(id)a3;
- (id)callPassingTest:(id)a3;
- (id)callPassingTest:(id)a3 sortedUsingComparator:(id)a4;
- (id)callServicesClientCapabilities;
- (id)callWithCallUUID:(id)a3;
- (id)callWithUniqueProxyIdentifier:(id)a3;
- (id)callsPassingTest:(id)a3;
- (id)callsWithGroupUUID:(id)a3;
- (id)conferenceCall;
- (id)customGreetingForAccountUUID:(id)a3;
- (id)defaultGreeting;
- (id)dialWithRequest:(id)a3;
- (id)displayedCall;
- (id)displayedCallFromCalls:(id)a3;
- (id)fetchCurrentCallUpdates;
- (id)frontmostAudioOrVideoCall;
- (id)frontmostCall;
- (id)getCurrentCallsToDisconnect;
- (id)joinConversationWithConversationRequest:(id)a3;
- (id)lastDaemonConnectTime;
- (id)resolvedIncomingCall;
- (unint64_t)_callGroupCountForCall:(id)a3 withCall:(id)a4;
- (unint64_t)callCountOnDefaultPairedDevice;
- (unint64_t)countOfCallsPassingTest:(id)a3;
- (unint64_t)currentAudioAndVideoCallCount;
- (unint64_t)currentCallCount;
- (unint64_t)currentVideoCallCount;
- (void)_handleReceivedCallDTMFUpdate:(id)a3 forCall:(id)a4;
- (void)_handleReceivedCaptionUpdate:(id)a3;
- (void)_performSmartHoldingRequest:(id)a3 completion:(id)a4;
- (void)_preflightDisconnectForCalls:(id)a3 withCompletion:(id)a4;
- (void)activateInCallUIWithActivityContinuationIdentifier:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)answerCall:(id)a3;
- (void)answerCall:(id)a3 withSourceIdentifier:(id)a4;
- (void)answerCallWithHoldMusic:(id)a3;
- (void)answerOrJoinCall:(id)a3;
- (void)answerWithRequest:(id)a3;
- (void)applicationWillLaunchForStartCallInteraction:(id)a3;
- (void)continueHandoffEligibleConversation;
- (void)createSplitSessionWithDeviceMediaRouteIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)deleteCustomGreetingForAccountUUID:(id)a3;
- (void)disconnectAllCalls;
- (void)disconnectAllCallsWithNoPreflight;
- (void)disconnectCall:(id)a3 withReason:(int)a4;
- (void)disconnectCurrentCall;
- (void)disconnectCurrentCallAndActivateHeld;
- (void)disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier:(id)a3 completion:(id)a4;
- (void)endActiveAndAnswerCall:(id)a3;
- (void)endActiveAndAnswerWithRequest:(id)a3;
- (void)endActiveOrHeldAndAnswerCall:(id)a3;
- (void)endActiveOrHeldAndAnswerWithRequest:(id)a3;
- (void)endHeldAndAnswerCall:(id)a3;
- (void)endHeldAndAnswerWithRequest:(id)a3;
- (void)enteredBackgroundForAllCalls;
- (void)enteredForegroundForCall:(id)a3;
- (void)fetchAnonymousXPCEndpoint:(id)a3;
- (void)fetchCurrentCalls;
- (void)fetchTUUIXPCDataSource;
- (void)groupCall:(id)a3 withOtherCall:(id)a4;
- (void)handleActionForWiredHeadsetMiddleButtonLongPress;
- (void)handleHeadsetButtonPressForActiveCalls;
- (void)handleMediaRemoteCommand:(unsigned int)a3 completion:(id)a4;
- (void)handleMediaRemoteCommand:(unsigned int)a3 sourceIdentifier:(id)a4 completion:(id)a5;
- (void)handleRedialCommandWhileScreening:(id)a3;
- (void)holdActiveAndAnswerCall:(id)a3;
- (void)holdActiveAndAnswerWithRequest:(id)a3;
- (void)holdAndAnswerIfNeeded:(id)a3;
- (void)holdCall:(id)a3;
- (void)joinConversationWithRequest:(id)a3;
- (void)launchAppForDialRequest:(id)a3 completion:(id)a4;
- (void)performRecordingRequest:(id)a3 completion:(id)a4;
- (void)performSmartHoldingRequest:(id)a3 completion:(id)a4;
- (void)performSmartHoldingRequestWithType:(int64_t)a3 forCallWithUUID:(id)a4 completion:(id)a5;
- (void)performTranslationRequest:(id)a3 completion:(id)a4;
- (void)pickRouteForRapportDeviceWithMediaSystemIdentifier:(id)a3 effectiveIdentifier:(id)a4;
- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)a3 completion:(id)a4;
- (void)pullHostedCallsFromPairedHostDevice;
- (void)pullPersistedChannel:(id)a3;
- (void)pullRelayingCallsFromClient;
- (void)pullRelayingGFTCallsFromClientIfNecessary;
- (void)pushHostedCallsToDestination:(id)a3;
- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)a3;
- (void)registerAnonymousXPCEndpoint:(id)a3;
- (void)registerWithCompletionHandler:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)reportLocalPreviewStoppedForCall:(id)a3;
- (void)saveCustomGreeting:(id)a3 forAccountUUID:(id)a4;
- (void)screenWithRequest:(id)a3;
- (void)sendFieldModeDigits:(id)a3 forProvider:(id)a4;
- (void)sendReceptionistReply:(id)a3;
- (void)setLiveVoicemailUnavailableReason:(int64_t)a3 forCall:(id)a4;
- (void)startReceptionistReply;
- (void)swapCalls;
- (void)ungroupCall:(id)a3;
- (void)unholdCall:(id)a3;
- (void)updateCall:(id)a3 withAnswerRequest:(id)a4;
- (void)willEnterBackgroundForAllCalls;
@end

@implementation TUCallCenter

- (unint64_t)currentCallCount
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentCallCount];

  return v3;
}

- (TUCallContainerPrivate)callContainer
{
  v2 = [(TUCallCenter *)self callServicesInterface];
  v3 = [v2 callContainer];

  return v3;
}

- (TUCall)activeVideoCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 activeVideoCall];

  return v3;
}

- (void)fetchTUUIXPCDataSource
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "register for UI data source", buf, 2u);
  }

  v4 = [(TUCallCenter *)self callServicesInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__TUCallCenter_fetchTUUIXPCDataSource__block_invoke;
  v5[3] = &unk_1E74279D0;
  v5[4] = self;
  [v4 fetchAnonymousXPCEndpoint:v5];
}

void __38__TUCallCenter_fetchTUUIXPCDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      __38__TUCallCenter_fetchTUUIXPCDataSource__block_invoke_cold_1(v6, &v7->super);
    }
  }

  else
  {
    v7 = TUDefaultLog();
    v8 = os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&dword_1956FD000, &v7->super, OS_LOG_TYPE_DEFAULT, "Received UI data source", v9, 2u);
      }

      v7 = [[TUUIXPCClientConnection alloc] initWithListenerEndpoint:v5 callCenter:*(a1 + 32)];
      [*(a1 + 32) setUiDataSource:v7];
    }

    else if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, &v7->super, OS_LOG_TYPE_DEFAULT, "No UIDataSource is stored in callservicesd", buf, 2u);
    }
  }
}

- (NSArray)displayedCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 displayedCalls];

  return v3;
}

- (TUConversationManager)conversationManager
{
  os_unfair_lock_lock(&self->_accessorLock);
  conversationManager = self->_conversationManager;
  if (!conversationManager)
  {
    v4 = objc_alloc_init(TUConversationManager);
    v5 = self->_conversationManager;
    self->_conversationManager = v4;

    conversationManager = self->_conversationManager;
  }

  v6 = conversationManager;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (TURouteController)routeController
{
  v3 = [(TUCallCenter *)self callServicesInterface];
  v4 = [v3 localRouteController];

  if (!v4)
  {
    v5 = [TURouteController alloc];
    v6 = [(TUCallCenter *)self callServicesInterface];
    v7 = [(TUCallCenter *)self queue];
    v8 = [(TURouteController *)v5 initWithActionsDelegate:v6 serialQueue:v7];
    v9 = [(TUCallCenter *)self callServicesInterface];
    [v9 setLocalRouteController:v8];
  }

  v10 = [(TUCallCenter *)self callServicesInterface];
  v11 = [v10 localRouteController];

  return v11;
}

- (TUAudioDeviceController)audioDeviceController
{
  audioDeviceController = self->_audioDeviceController;
  if (!audioDeviceController)
  {
    v4 = [TUAudioDeviceController alloc];
    v5 = [(TUCallCenter *)self callServicesInterface];
    v6 = [(TUCallCenter *)self queue];
    v7 = [(TUAudioDeviceController *)v4 initWithActionsDelegate:v5 serialQueue:v6];
    v8 = self->_audioDeviceController;
    self->_audioDeviceController = v7;

    audioDeviceController = self->_audioDeviceController;
  }

  return audioDeviceController;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = [MEMORY[0x1E695CE18] tu_contactStore];
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (TUVideoDeviceController)videoDeviceController
{
  videoDeviceController = self->_videoDeviceController;
  if (!videoDeviceController)
  {
    v4 = [TUVideoDeviceController alloc];
    v5 = [(TUCallCenter *)self queue];
    v6 = [(TUVideoDeviceController *)v4 initWithSerialQueue:v5];
    v7 = self->_videoDeviceController;
    self->_videoDeviceController = v6;

    videoDeviceController = self->_videoDeviceController;
  }

  return videoDeviceController;
}

- (NSArray)currentCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentCalls];

  return v3;
}

- (TUCall)incomingVideoCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 incomingVideoCall];

  return v3;
}

- (id)frontmostCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 frontmostCall];

  return v3;
}

- (TUCall)currentVideoCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentVideoCall];

  return v3;
}

- (NSArray)currentAudioAndVideoCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentAudioAndVideoCalls];

  return v3;
}

- (NSArray)currentCallGroups
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentCallGroups];

  return v3;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)fetchCurrentCalls
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Fetching current calls", v5, 2u);
  }

  v4 = [(TUCallCenter *)self callServicesInterface];
  [v4 fetchCurrentCalls];
}

- (TUCallFilterController)callFilterController
{
  callFilterController = self->_callFilterController;
  if (!callFilterController)
  {
    v4 = [TUCallFilterController alloc];
    v5 = [(TUCallCenter *)self callServicesInterface];
    v6 = [(TUCallCenter *)self queue];
    v7 = [(TUCallFilterController *)v4 initWithActionsDelegate:v5 serialQueue:v6];
    v8 = self->_callFilterController;
    self->_callFilterController = v7;

    callFilterController = self->_callFilterController;
  }

  return callFilterController;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NSArray)conferenceParticipantCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 conferenceParticipantCalls];

  return v3;
}

- (id)resolvedIncomingCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 resolvedIncomingCall];

  return v3;
}

- (unint64_t)currentAudioAndVideoCallCount
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentAudioAndVideoCallCount];

  return v3;
}

- (TUCall)incomingCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 incomingCall];

  return v3;
}

- (TUCall)pendingUpgradeCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 pendingUpgradeCall];

  return v3;
}

- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit
{
  neighborhoodActivityConduit = self->_neighborhoodActivityConduit;
  if (!neighborhoodActivityConduit)
  {
    v4 = [TUNeighborhoodActivityConduit alloc];
    v5 = [(TUCallCenter *)self conversationManager];
    v6 = [(TUNeighborhoodActivityConduit *)v4 initWithConversationManager:v5];
    v7 = self->_neighborhoodActivityConduit;
    self->_neighborhoodActivityConduit = v6;

    neighborhoodActivityConduit = self->_neighborhoodActivityConduit;
  }

  return neighborhoodActivityConduit;
}

- (BOOL)hasCurrentCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 hasCurrentCalls];

  return v3;
}

- (NSArray)bargeCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 bargeCalls];
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (BOOL)hasCurrentVideoCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 hasCurrentVideoCalls];

  return v3;
}

- (TUCall)frontmostBargeCall
{
  v2 = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 frontmostBargeCall];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)frontmostAudioOrVideoCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 frontmostAudioOrVideoCall];

  return v3;
}

- (BOOL)hasCurrentAudioCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 hasCurrentAudioCalls];

  return v3;
}

- (NSArray)displayedAudioAndVideoCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 displayedAudioAndVideoCalls];

  return v3;
}

- (TUCall)screeningCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 screeningCall];

  return v3;
}

- (unint64_t)currentVideoCallCount
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentVideoCallCount];

  return v3;
}

- (BOOL)autoPunchOutBehaviorRequiredForFrontmostCall
{
  v3 = [(TUCallCenter *)self currentAudioAndVideoCalls];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TUCallCenter *)self frontmostAudioOrVideoCall];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TUCallCenter *)self frontmostAudioOrVideoCall];
  v6 = [v5 provider];

  v7 = [(TUCallCenter *)self currentAudioAndVideoCalls];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(TUCallCenter *)self currentAudioAndVideoCalls];
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = [v11 provider];
      v13 = [v12 isEqualToCallProvider:v6];

      if ((v13 & 1) == 0)
      {
        break;
      }

      ++v9;
      v14 = [(TUCallCenter *)self currentAudioAndVideoCalls];
      v15 = [v14 count];

      if (v15 <= v9)
      {
        goto LABEL_7;
      }
    }

    v19 = 0;
  }

  else
  {
LABEL_7:
    v16 = [v6 isSystemProvider];
    v17 = [(TUCallCenter *)self frontmostAudioOrVideoCall];
    v18 = v17;
    if (v17 && ([v17 launchInBackground] & 1) != 0)
    {
      v19 = 0;
    }

    else
    {
      v20 = v16 ^ 1;
      v21 = [(TUCallCenter *)self audioOrVideoCallWithStatus:4];
      if (v21)
      {
        v19 = 0;
      }

      else
      {
        v19 = v20;
      }
    }
  }

  return v19;
}

- (TUCallProviderManager)providerManager
{
  providerManager = self->_providerManager;
  if (!providerManager)
  {
    v4 = objc_alloc_init(TUCallProviderManager);
    v5 = self->_providerManager;
    self->_providerManager = v4;

    providerManager = self->_providerManager;
  }

  return providerManager;
}

- (NSArray)incomingCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 incomingCalls];

  return v3;
}

uint64_t __27__TUCallCenter_isAmbiguous__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] == 4)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 model];
    v3 = [v4 supportsUnambiguousMultiPartyState] ^ 1;
  }

  return v3;
}

- (NSArray)currentVideoCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentVideoCalls];

  return v3;
}

- (NSArray)callsOnDefaultPairedDevice
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 callsOnDefaultPairedDevice];

  return v3;
}

- (BOOL)isAddCallAllowed
{
  v2 = [(TUCallCenter *)self currentCallGroups];
  v3 = [v2 firstObject];
  v4 = [v3 calls];
  v5 = [v4 firstObject];

  if ([v2 count] == 1 && objc_msgSend(v5, "status") != 3)
  {
    v7 = [v5 provider];
    v8 = [v7 maximumCallGroups];
    if (v8 > 1 || ([v5 model], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "supportsHolding")))
    {
      v9 = [v5 model];
      if ([v9 supportsAddCall])
      {
        v6 = [v5 isEmergency] ^ 1;

        if (v8 >= 2)
        {
          goto LABEL_13;
        }
      }

      else
      {

        LOBYTE(v6) = 0;
        if (v8 > 1)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  LOBYTE(v6) = 0;
LABEL_14:

  return v6;
}

- (BOOL)isHoldAndAnswerAllowed
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = [(TUCallCenter *)self incomingCall];
  v4 = [(TUCallCenter *)self callWithStatus:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TUCallCenter *)self callWithStatus:2];
  }

  v7 = v6;

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v3;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "isHoldAndAnswerAllowed: incomingCall: %@", buf, 0xCu);
  }

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v7;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "isHoldAndAnswerAllowed: currentCall: %@", buf, 0xCu);
  }

  v10 = [(__CFString *)v7 provider];
  v11 = [v10 identifier];
  v12 = [(__CFString *)v3 provider];
  v13 = [v12 identifier];
  v14 = [v11 isEqualToString:v13];

  if (v14)
  {
    v15 = [(__CFString *)v7 provider];
    if ([v15 maximumCallGroups] <= 1)
    {
      v16 = [(__CFString *)v7 isHostedOnCurrentDevice]^ 1;
    }

    else
    {
      v16 = 1;
    }

    v43 = v16;
  }

  else
  {
    v15 = [(__CFString *)v7 model];
    v43 = [v15 supportsHolding];
  }

  v17 = [(__CFString *)v3 isHostedOnCurrentDevice];
  v18 = [(__CFString *)v7 isHostedOnCurrentDevice];
  if (([(__CFString *)v7 supportsSimultaneousVoiceAndData]& 1) != 0)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v20 = [(__CFString *)v3 provider];
  if ([v20 isTelephonyProvider] && -[__CFString isUsingBaseband](v3, "isUsingBaseband"))
  {
    v42 = [(__CFString *)v7 provider];
    v21 = 1;
    v19 = 1;
    if (![v42 isTelephonyProvider])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = [(__CFString *)v3 provider];
  if (([v22 isTelephonyProvider] & 1) == 0)
  {
    v41 = [(__CFString *)v7 provider];
    if ([v41 isTelephonyProvider])
    {
      v19 = [(__CFString *)v7 isUsingBaseband];

      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v19 = 0;
      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  v19 = 0;
  if (v21)
  {
LABEL_23:
  }

LABEL_24:

LABEL_25:
  v23 = v17 ^ v18;
  v24 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_264];
  v25 = [(TUCallCenter *)self callWithStatus:3];

  v26 = [(__CFString *)v7 isScreening];
  v27 = [(TUCallCenter *)self isSharePlayActiveForTelephonyCall:v7];
  v28 = TUDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"NO";
    if (v43)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    if (v19)
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    *buf = 138413826;
    v45 = v30;
    if (v23)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v46 = 2112;
    v47 = v31;
    if (v24)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v48 = 2112;
    v49 = v32;
    if (v25)
    {
      v34 = @"YES";
    }

    else
    {
      v34 = @"NO";
    }

    v50 = 2112;
    v51 = v33;
    if (v26)
    {
      v35 = @"YES";
    }

    else
    {
      v35 = @"NO";
    }

    v52 = 2112;
    if (v27)
    {
      v29 = @"YES";
    }

    v53 = v34;
    v54 = 2112;
    v55 = v35;
    v56 = 2112;
    v57 = v29;
    _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "isHoldAndAnswerAllowed: callsSupportHoldAndAnswer: %@, callsMixCDMAAndNonCDMA: %@, callsMixHostedAndNonHosted: %@, anyCallIsRTTOrTTY: %@, anyCallIsSending: %@, callIsScreening: %@, callIsTelephonyShareplay: %@", buf, 0x48u);
  }

  v36 = v25 != 0;

  if (v7)
  {
    v37 = v3 == 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v37;

  v39 = *MEMORY[0x1E69E9840];
  return ((v38 | v43 ^ 1 | v19 | v23 | v24 | v36 | v26 | v27) & 1) == 0;
}

uint64_t __38__TUCallCenter_isHoldAndAnswerAllowed__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEndpointOnCurrentDevice])
  {
    v3 = [v2 isTTY];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_allCalls
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 _allCalls];

  return v3;
}

- (id)bargeCallWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 bargeCallWithUniqueProxyIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bargeCallsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 bargeCallsPassingTest:v4];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  return v7;
}

- (BOOL)handleWiredHeadsetFlashButtonForBargeCalls
{
  v3 = [(TUCallCenter *)self frontmostBargeCall];
  if (![v3 accessoryButtonEventsEnabled])
  {
    goto LABEL_7;
  }

  if ([v3 transmissionMode] == 2)
  {
    goto LABEL_3;
  }

  if (!v3)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if ([v3 isSendingTransmission])
  {
    v4 = 1;
    [(TUCallCenter *)self stopTransmissionForBargeCall:v3 sourceIsHandsfreeAccessory:1];
    goto LABEL_8;
  }

  if (([v3 isOnHold] & 1) != 0 || objc_msgSend(v3, "isReceivingTransmission") && !objc_msgSend(v3, "transmissionMode"))
  {
    v4 = 1;
    [(TUCallCenter *)self startTransmissionForBargeCall:v3 sourceIsHandsfreeAccessory:1];
    goto LABEL_8;
  }

LABEL_3:
  v4 = 1;
LABEL_8:

  return v4;
}

+ (id)sharedContactStore
{
  if (sharedContactStore_onceToken != -1)
  {
    +[TUCallCenter sharedContactStore];
  }

  v3 = sharedContactStore_gSharedContactStore;

  return v3;
}

uint64_t __34__TUCallCenter_sharedContactStore__block_invoke()
{
  sharedContactStore_gSharedContactStore = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedInstanceWithQueue:(id)a3 server:(id)a4 shouldRegister:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__TUCallCenter_sharedInstanceWithQueue_server_shouldRegister___block_invoke;
  v16[3] = &unk_1E74279F8;
  v18 = v9;
  v19 = a1;
  v17 = v8;
  v20 = a5;
  v10 = sharedInstanceWithQueue_server_shouldRegister__pred;
  v11 = v9;
  v12 = v8;
  if (v10 != -1)
  {
    dispatch_once(&sharedInstanceWithQueue_server_shouldRegister__pred, v16);
  }

  v13 = sharedInstanceWithQueue_server_shouldRegister__sharedInstance;
  v14 = sharedInstanceWithQueue_server_shouldRegister__sharedInstance;

  return v13;
}

uint64_t __62__TUCallCenter_sharedInstanceWithQueue_server_shouldRegister___block_invoke(uint64_t a1)
{
  sharedInstanceWithQueue_server_shouldRegister__sharedInstance = [*(a1 + 48) callCenterWithQueue:*(a1 + 32) server:*(a1 + 40) shouldRegister:*(a1 + 56)];

  return MEMORY[0x1EEE66BB8]();
}

+ (TUCallCenter)callCenterWithQueue:(id)a3 server:(id)a4 shouldRegister:(BOOL)a5 featureFlags:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [[a1 alloc] initWithQueue:v12 featureFlags:v11];

  v14 = [v13 callServicesInterface];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__TUCallCenter_callCenterWithQueue_server_shouldRegister_featureFlags___block_invoke;
  v20[3] = &unk_1E7425B78;
  v15 = v13;
  v21 = v15;
  v22 = v10;
  v23 = a5;
  v16 = v10;
  [v14 performBlockOnQueue:v20];

  v17 = v22;
  v18 = v15;

  return v15;
}

void __71__TUCallCenter_callCenterWithQueue_server_shouldRegister_featureFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) callServicesInterface];
  [v3 setServer:v2];

  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);

    [v4 registerWithCompletionHandler:0];
  }
}

- (TUCallCenter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUCallCenter.m" lineNumber:292 description:{@"%s is not available. Use a designated initializer instead.", "-[TUCallCenter init]"}];

  return 0;
}

- (TUCallCenter)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUCallCenter *)self initWithQueue:v4 featureFlags:v5];

  return v6;
}

void __66__TUCallCenter_initWithQueue_wantsCallNotifications_featureFlags___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__TUCallCenter_initWithQueue_wantsCallNotifications_featureFlags___block_invoke_2;
  v5[3] = &unk_1E7424950;
  v6 = v3;
  v4 = v3;
  TUDispatchMainIfNecessary(v5);
}

void __66__TUCallCenter_initWithQueue_wantsCallNotifications_featureFlags___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Layout monitor changed: layout: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL __66__TUCallCenter_initWithQueue_wantsCallNotifications_featureFlags___block_invoke_173(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TUCallCenter supportsJoiningConversationWithRequest:v3];
  if (!v4)
  {
    WeakRetained = TUDefaultLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1956FD000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[WARN] Device does not support multiway", v12, 2u);
    }

    goto LABEL_8;
  }

  v5 = [v3 activity];
  if (!v5 && ![v3 hasAnySiriDisplayNames])
  {
    v8 = [v3 screenSharingRequestMetadata];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = [v3 provider];
    v10 = [v9 isDefaultProvider];

    if (v10)
    {
      WeakRetained = [v3 URL];
      TUOpenURL(WeakRetained);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v11 = [WeakRetained joinConversationWithConversationRequest:v3];
    }

LABEL_8:

    goto LABEL_9;
  }

LABEL_5:
  TUOpenUserActivityForConversationRequest(v3);
LABEL_9:

  return v4;
}

BOOL __66__TUCallCenter_initWithQueue_wantsCallNotifications_featureFlags___block_invoke_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained monitor];
  v3 = [v2 currentLayout];

  return v3 != 0;
}

- (NSString)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n", self];
  v4 = [(TUCallCenter *)self callServicesInterface];
  v5 = [v4 debugDescription];
  [v3 appendFormat:@"Call services interface: %@\n", v5];

  if (self->_audioDeviceController)
  {
    v6 = [(TUCallCenter *)self audioDeviceController];
    v7 = [v6 debugDescription];
    [v3 appendFormat:@"Audio device controller: %@\n", v7];
  }

  v8 = [(TUCallCenter *)self providerManager];
  v9 = [v8 debugDescription];
  [v3 appendFormat:@"Provider manager: %@\n", v9];

  return v3;
}

- (void)registerWithCompletionHandler:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = self;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "for %@", buf, 0xCu);
  }

  v6 = [(TUCallCenter *)self callServicesInterface];
  [v6 requestCurrentStateWithCompletionHandler:v4];

  v7 = [(TUCallCenter *)self callServicesInterface];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__TUCallCenter_registerWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7424950;
  v9[4] = self;
  [v7 performBlockOnQueue:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = self;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "for %@", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  [(FBSDisplayLayoutMonitor *)self->_monitor invalidate];
  v5 = [(TUCallCenter *)self callServicesInterface];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __23__TUCallCenter_dealloc__block_invoke;
  v9[3] = &unk_1E7424950;
  v10 = v5;
  v6 = v5;
  [v6 performBlockOnQueue:v9];

  v8.receiver = self;
  v8.super_class = TUCallCenter;
  [(TUCallCenter *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)fetchCurrentCallUpdates
{
  v2 = [(TUCallCenter *)self callServicesInterface];
  v3 = [v2 fetchCurrentCallUpdates];

  return v3;
}

- (void)screenWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 screenWithRequest:v4];
}

- (void)sendReceptionistReply:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 sendReceptionistReply:v4];
}

- (void)startReceptionistReply
{
  v2 = [(TUCallCenter *)self callServicesInterface];
  [v2 startReceptionistReply];
}

- (void)saveCustomGreeting:(id)a3 forAccountUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[TUSandboxExtendedURL alloc] initWithURL:v7 withExtensionType:0];

  v8 = [(TUCallCenter *)self callServicesInterface];
  [v8 saveCustomGreeting:v9 forAccountUUID:v6];
}

- (id)customGreetingForAccountUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  v6 = [v5 customGreetingForAccountUUID:v4];

  return v6;
}

- (void)deleteCustomGreetingForAccountUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 deleteCustomGreetingForAccountUUID:v4];
}

- (id)defaultGreeting
{
  v2 = [(TUCallCenter *)self callServicesInterface];
  v3 = [v2 defaultGreeting];

  return v3;
}

- (id)callServicesClientCapabilities
{
  v2 = [(TUCallCenter *)self callServicesInterface];
  v3 = [v2 callServicesClientCapabilities];

  return v3;
}

- (TURouteController)pairedHostDeviceRouteController
{
  v3 = [(TUCallCenter *)self callServicesInterface];
  v4 = [v3 pairedHostDeviceRouteController];

  if (!v4)
  {
    v5 = [TURouteController alloc];
    v6 = [(TUCallCenter *)self callServicesInterface];
    v7 = [(TUCallCenter *)self queue];
    v8 = [(TURouteController *)v5 initWithActionsDelegate:v6 serialQueue:v7];
    v9 = [(TUCallCenter *)self callServicesInterface];
    [v9 setPairedHostDeviceRouteController:v8];
  }

  v10 = [(TUCallCenter *)self callServicesInterface];
  v11 = [v10 pairedHostDeviceRouteController];

  return v11;
}

- (TUGameOverlayController)gameOverlayController
{
  gameOverlayController = self->_gameOverlayController;
  if (!gameOverlayController)
  {
    v4 = objc_alloc_init(TUGameOverlayController);
    v5 = self->_gameOverlayController;
    self->_gameOverlayController = v4;

    gameOverlayController = self->_gameOverlayController;
  }

  return gameOverlayController;
}

- (id)lastDaemonConnectTime
{
  v2 = [(TUCallCenter *)self callServicesInterface];
  v3 = [v2 lastDaemonConnectTime];

  return v3;
}

- (BOOL)shouldPullRelayingCalls
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(TUCallCenter *)self currentAudioAndVideoCalls];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isHostedOnCurrentDevice] && (objc_msgSend(v8, "isEndpointOnCurrentDevice") & 1) == 0)
        {
          v5 |= [v8 status] < 5;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)isRelayCallingSupportedForProvider:(id)a3 isVideo:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(__CFString *)v5 isTelephonyProvider])
  {
    v6 = +[TUCallCapabilities supportsTelephonyRelayCalling];
    v7 = TUDefaultLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:

      goto LABEL_27;
    }

    v8 = +[TUCallCapabilities supportsTelephonyRelayCalling];
    v9 = @"NO";
    if (v8)
    {
      v9 = @"YES";
    }

    v23 = 138412290;
    v24 = v9;
    v10 = "isRelayCallingSupportedForProvider: TUCallCapabilities.supportsTelephonyRelayCalling: %@";
    v11 = v7;
    v12 = 12;
LABEL_25:
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, v10, &v23, v12);
    goto LABEL_26;
  }

  if (([(__CFString *)v5 isFaceTimeProvider]& 1) != 0 || [(__CFString *)v5 isTinCanProvider])
  {
    if (v4)
    {
      v13 = +[TUCallCapabilities supportsFaceTimeVideoRelayCalling];
    }

    else
    {
      v13 = +[TUCallCapabilities supportsFaceTimeAudioRelayCalling];
    }

    v6 = v13;
    v7 = TUDefaultLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    if ([(__CFString *)v5 isFaceTimeProvider])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (v4)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    if (+[TUCallCapabilities supportsFaceTimeVideoRelayCalling])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v23 = 138413058;
    if (+[TUCallCapabilities supportsFaceTimeAudioRelayCalling])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v24 = v14;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    v10 = "isFaceTimeProvider: %@, isVideo: %@, supportsFaceTimeVideoRelayCalling: %@, supportsFaceTimeAudioRelayCalling: %@";
    v11 = v7;
    v12 = 42;
    goto LABEL_25;
  }

  v6 = 0;
LABEL_27:
  v18 = TUDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"NO";
    if (v6)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v23 = 138412802;
    v24 = v20;
    v25 = 2112;
    v26 = v5;
    if (v4)
    {
      v19 = @"YES";
    }

    v27 = 2112;
    v28 = v19;
    _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "isRelayCallingSupported: %@, provider: %@, isVideo: %@", &v23, 0x20u);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isDirectCallingCurrentlyAvailableForProvider:(id)a3 isVideo:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isTelephonyProvider])
  {
    SuperboxProvider = +[TUCallCapabilities isDirectTelephonyCallingCurrentlyAvailable];
  }

  else if ([v5 isFaceTimeProvider])
  {
    if (v4)
    {
      SuperboxProvider = +[TUCallCapabilities isDirectFaceTimeVideoCallingCurrentlyAvailable];
    }

    else
    {
      SuperboxProvider = +[TUCallCapabilities isDirectFaceTimeAudioCallingCurrentlyAvailable];
    }
  }

  else
  {
    if (![v5 isSuperboxProvider])
    {
      v7 = 1;
      goto LABEL_4;
    }

    SuperboxProvider = TUShouldCreateSuperboxProvider();
  }

  v7 = SuperboxProvider;
LABEL_4:

  return v7;
}

uint64_t __152__TUCallCenter__shouldPreferRelayOverDirectSecondaryCallingForRelayingCallingAvailability_isRelayCallingSupported_isEmergencyCallbackPossible_provider___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 isHostedOnCurrentDevice];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "call.isHostedOnCurrentDevice: %@, call: %@", &v9, 0x16u);
  }

  v6 = [v2 isHostedOnCurrentDevice];
  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1u;
}

- (NSArray)callsHostedElsewhere
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 callsHostedElsewhere];

  return v3;
}

- (NSArray)callsWithAnEndpointElsewhere
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 callsWithAnEndpointElsewhere];

  return v3;
}

- (NSArray)callsHostedOrAnEndpointElsewhere
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 callsHostedOrAnEndpointElsewhere];

  return v3;
}

- (id)callsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 callsPassingTest:v4];

  return v6;
}

- (id)callsWithGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 callsWithGroupUUID:v4];

  return v6;
}

- (id)displayedCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 displayedCall];

  return v3;
}

- (id)conferenceCall
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 conferenceCall];

  return v3;
}

- (id)callPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 callPassingTest:v4];

  return v6;
}

- (id)callPassingTest:(id)a3 sortedUsingComparator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUCallCenter *)self callContainer];
  v9 = [v8 callPassingTest:v7 sortedUsingComparator:v6];

  return v9;
}

- (id)callWithUniqueProxyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 callWithUniqueProxyIdentifier:v4];

  return v6;
}

- (id)callWithCallUUID:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 callWithCallUUID:v4];

  return v6;
}

- (id)displayedCallFromCalls:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 displayedCallFromCalls:v4];

  return v6;
}

- (unint64_t)callCountOnDefaultPairedDevice
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 callCountOnDefaultPairedDevice];

  return v3;
}

- (unint64_t)countOfCallsPassingTest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 countOfCallsPassingTest:v4];

  return v6;
}

- (BOOL)anyCallIsHostedOnCurrentDevice
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 anyCallIsHostedOnCurrentDevice];

  return v3;
}

- (BOOL)anyCallIsEndpointOnCurrentDevice
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 anyCallIsEndpointOnCurrentDevice];

  return v3;
}

- (BOOL)existingCallsHaveMultipleProviders
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 existingCallsHaveMultipleProviders];

  return v3;
}

- (BOOL)anyCallPassesTest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 anyCallPassesTest:v4];

  return v6;
}

- (BOOL)allCallsPassTest:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callContainer];
  v6 = [v5 allCallsPassTest:v4];

  return v6;
}

- (NSArray)currentAudioAndVideoCallGroups
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 currentAudioAndVideoCallGroups];

  return v3;
}

- (NSArray)callGroupsOnDefaultPairedDevice
{
  v2 = [(TUCallCenter *)self callContainer];
  v3 = [v2 callGroupsOnDefaultPairedDevice];

  return v3;
}

- (BOOL)_existingCallsAllowDialRequest:(id)a3 allowVoiceWithData:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_213];
  v8 = [v6 provider];
  if ([v8 isTelephonyProvider])
  {
    v9 = [v6 handle];
    v10 = [v9 value];
    LODWORD(v30) = [v10 destinationIdIsCallControlCode] ^ 1;
  }

  else
  {
    LODWORD(v30) = 1;
  }

  if ([v6 isVideo])
  {
    v11 = 0;
  }

  else
  {
    v12 = [(TUCallCenter *)self currentCallGroups];
    v11 = [v12 count] > 1;
  }

  v13 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_215, v30];
  v32 = v11;
  v14 = v13 && [v6 dialType] == 2;
  v15 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_217];
  v16 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_219];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __66__TUCallCenter__existingCallsAllowDialRequest_allowVoiceWithData___block_invoke_5;
  v33[3] = &unk_1E7425900;
  v17 = v6;
  v34 = v17;
  v18 = [(TUCallCenter *)self anyCallPassesTest:v33];
  v19 = TUDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v17 provider];
    v21 = v20 = v7;
    v22 = [v21 isTelephonyProvider];
    *buf = 67110144;
    v36 = v18;
    v37 = 1024;
    v38 = v4;
    v39 = 1024;
    v40 = v16;
    v41 = 1024;
    v42 = v15;
    v43 = 1024;
    v44 = v22;
    _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "isVideoUpgrade: %d, allowVoiceWithData: %d, nonTelephonyCallExists: %d, telephonyBasebandCallExists: %d, dialRequest.provider.isTelephonyProvider: %d", buf, 0x20u);

    v7 = v20;
  }

  if ((v18 | v4))
  {
    goto LABEL_13;
  }

  if (!v16)
  {
    if (!v15)
    {
LABEL_13:
      v23 = 0;
      goto LABEL_21;
    }

LABEL_19:
    v24 = [v17 provider];
    v23 = [v24 isTelephonyProvider] ^ 1;

    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = [v17 provider];
  v23 = [v18 isTelephonyProvider];
  if ((v23 & 1) == 0 && v15)
  {
    goto LABEL_19;
  }

LABEL_20:

LABEL_21:
  v25 = [v17 isSOS];
  v26 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_222];
  v27 = TUDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110400;
    v36 = v25;
    v37 = 1024;
    v38 = v7 & v31;
    v39 = 1024;
    v40 = v32;
    v41 = 1024;
    v42 = v14;
    v43 = 1024;
    v44 = v23;
    v45 = 1024;
    v46 = v26;
    _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "isOutgoingCallSOS: %d outgoingCallCreatesMultipleSendingCalls: %d outgoingCallBreaksCallGroupLimit: %d outgoingCallCreatesMultipleVoicemailCalls: %d outgoingCallMixesVoiceWithData: %d emergencyCallExists: %d", buf, 0x26u);
  }

  if (((v25 | v32 | v7 & v31 | v14) & 1) == 0)
  {
    LOBYTE(v25) = (v23 | v26) ^ 1;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

uint64_t __66__TUCallCenter__existingCallsAllowDialRequest_allowVoiceWithData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] == 3)
  {
    if ([v2 isHostedOnCurrentDevice])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isEndpointOnCurrentDevice];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __66__TUCallCenter__existingCallsAllowDialRequest_allowVoiceWithData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isVoicemail])
  {
    if ([v2 isHostedOnCurrentDevice])
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isEndpointOnCurrentDevice];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL __66__TUCallCenter__existingCallsAllowDialRequest_allowVoiceWithData___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 provider];
  v4 = [v3 isTelephonyProvider] && objc_msgSend(v2, "isUsingBaseband") && objc_msgSend(v2, "status") != 5;

  return v4;
}

BOOL __66__TUCallCenter__existingCallsAllowDialRequest_allowVoiceWithData___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 provider];
  v4 = ([v3 isTelephonyProvider] & 1) == 0 && objc_msgSend(v2, "status") != 5;

  return v4;
}

- (BOOL)_isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:(int)a3 isProviderAvailable:(BOOL)a4 isRelayAllowed:(BOOL)a5 isEmergency:(BOOL)a6 supportsBasebandCalling:(BOOL)a7 shouldUseRelay:(BOOL *)a8 isTelephonyProvider:(BOOL)a9 deviceType:(int64_t)a10
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v38 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v16 = TUDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v38)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (v13)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v35 = v18;
    v36 = v17;
    if (v12)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    if (v11)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    [(TUCallCenter *)self callsHostedElsewhere:v20];
    v21 = v37 = v11;
    v22 = [v21 count];
    *buf = 67110914;
    if (a9)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v40 = a3;
    v41 = 2112;
    v42 = v36;
    v43 = 2112;
    v44 = v35;
    v45 = 2112;
    v46 = v34;
    v47 = 2112;
    v48 = v33;
    v49 = 1024;
    v50 = v22;
    v51 = 2112;
    v52 = v23;
    v53 = 2048;
    v54 = a10;
    _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "relayCallingAvailability: %d isProviderAvailable: %@ isRelayAllowed: %@ isEmergency: %@ supportsBasebandCalling: %@, callsHostedElsewhere count: %d, isTelephonyProvider: %@ deviceType: %ld", buf, 0x4Au);

    v11 = v37;
  }

  v24 = [(TUCallCenter *)self callsHostedElsewhere];
  if ([v24 count])
  {
    v25 = v13;
  }

  else
  {
    v25 = 0;
  }

  v27 = a10 != 4 && a10 != 1;
  if (!v12)
  {
    v27 = 0;
  }

  v28 = a3 == 2 && v13;
  v29 = 1;
  if (v28 || v27)
  {
LABEL_39:
    if (!a8)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v25 || !v38)
  {
    v28 = a3 == 1 && v13;
    v29 = v28 || v11;
    goto LABEL_39;
  }

  v28 = 0;
  if (a8)
  {
LABEL_40:
    *a8 = v28;
  }

LABEL_41:
  v30 = TUDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v40 = v29;
    v41 = 1024;
    LODWORD(v42) = v28;
    _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, "performDial: %d useRelay: %d", buf, 0xEu);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)_shouldRelayJoinConversationRequest:(id)a3
{
  v4 = [(TUCallCenter *)self providerManager];
  v5 = [v4 faceTimeProvider];

  v16 = 0;
  v6 = [(TUCallCenter *)self isDirectCallingCurrentlyAvailableForProvider:v5 isVideo:1];
  v7 = [(TUCallCenter *)self isRelayCallingSupportedForProvider:v5 isVideo:1];
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    goto LABEL_4;
  }

  v8 = +[TUCallCapabilities relayCallingAvailability];
  v9 = +[TUCallCapabilities supportsBasebandCalling];
  v10 = [v5 isTelephonyProvider];
  v11 = [MEMORY[0x1E699BE70] sharedInstance];
  LOBYTE(v15) = v10;
  -[TUCallCenter _isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:isProviderAvailable:isRelayAllowed:isEmergency:supportsBasebandCalling:shouldUseRelay:isTelephonyProvider:deviceType:](self, "_isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:isProviderAvailable:isRelayAllowed:isEmergency:supportsBasebandCalling:shouldUseRelay:isTelephonyProvider:deviceType:", v8, v6, v7, 0, v9, &v16, v15, [v11 deviceType]);

  if ((v16 & 1) == 0)
  {
LABEL_4:
    v13 = 0;
  }

  else
  {
    v12 = [(TUCallCenter *)self featureFlags];
    v13 = [v12 gftOnWatch];
  }

  return v13;
}

- (BOOL)_canDialWithRequest:(id)a3 shouldUseRelay:(BOOL *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 isValid];
  v29 = -[TUCallCenter _existingCallsAllowDialRequest:allowVoiceWithData:](self, "_existingCallsAllowDialRequest:allowVoiceWithData:", v6, [objc_opt_class() isSimultaneousVoiceAndDataSupportedForDialRequest:v6]);
  v8 = [(TUCallCenter *)self _isEmergencyDialRequest:v6];
  v9 = [v6 provider];
  v27 = -[TUCallCenter isDirectCallingCurrentlyAvailableForProvider:isVideo:](self, "isDirectCallingCurrentlyAvailableForProvider:isVideo:", v9, [v6 isVideo]);

  v10 = [v6 provider];
  v11 = -[TUCallCenter isRelayCallingSupportedForProvider:isVideo:](self, "isRelayCallingSupportedForProvider:isVideo:", v10, [v6 isVideo]);

  v12 = [v6 provider];
  v13 = [v12 isTelephonyProvider];

  v28 = v7;
  if (v8)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v15 = [(TUCallCenter *)self callFilterController];
    LODWORD(v14) = [v15 shouldRestrictDialRequest:v6 performSynchronously:0] ^ 1;
  }

  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v16 = 1;
  }

  else
  {
    v17 = +[TUCallCapabilities relayCallingAvailability];
    v18 = v14;
    v14 = a4;
    v19 = +[TUCallCapabilities supportsBasebandCalling];
    v20 = [MEMORY[0x1E699BE70] sharedInstance];
    v21 = [v20 deviceType];
    LOBYTE(v26) = v13;
    v22 = v14;
    LOBYTE(v14) = v18;
    v16 = [(TUCallCenter *)self _isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:v17 isProviderAvailable:v27 isRelayAllowed:v11 isEmergency:v8 supportsBasebandCalling:v19 shouldUseRelay:v22 isTelephonyProvider:v26 deviceType:v21];
  }

  v23 = TUDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v31 = v28;
    v32 = 1024;
    v33 = v29;
    v34 = 1024;
    v35 = v16;
    _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "isDialRequestValid: %d existingCallsAllowOutgoingCall: %d isCallingAvailable: %d", buf, 0x14u);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v28 & v16 & v29 & v14;
}

- (BOOL)_isEmergencyDialRequest:(id)a3
{
  v3 = a3;
  if ([v3 dialType] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_alloc_init(TUSenderIdentityClient);
    v6 = [v3 handle];
    v7 = [v6 value];
    v8 = [v3 localSenderIdentityUUID];
    if ([(TUSenderIdentityClient *)v5 isEmergencyNumberForDigits:v7 senderIdentityUUID:v8])
    {
      v4 = 1;
    }

    else
    {
      v9 = [v3 handle];
      v10 = [v9 value];
      v11 = [v3 localSenderIdentityUUID];
      v4 = [(TUSenderIdentityClient *)v5 isWhitelistedEmergencyNumberForDigits:v10 senderIdentityUUID:v11];
    }
  }

  return v4;
}

- (id)dialWithRequest:(id)a3
{
  v3 = [(TUCallCenter *)self _dialWithRequest:a3 completion:0];
  if (!v3)
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter dialWithRequest:];
    }
  }

  return v3;
}

- (id)_dialWithRequest:(id)a3 completion:(id)a4
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "for dial request %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E695DF00] date];
  [(TUJoinConversationRequest *)v6 setDateDialed:v9];

  v10 = TUDialAssistedDialRequest(v6);

  if (![(TUJoinConversationRequest *)v10 originatingUIType])
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [TUCallCenter _dialWithRequest:v10 completion:v11];
    }
  }

  if (-[TUJoinConversationRequest dialType](v10, "dialType") || (-[TUJoinConversationRequest handle](v10, "handle"), v12 = objc_claimAutoreleasedReturnValue(), [v12 value], v13 = objc_claimAutoreleasedReturnValue(), v14 = TUIsMMIOrUSSDNumber(v13), v13, v12, !v14))
  {
    v71 = 0;
    if (![(TUCallCenter *)self _canDialWithRequest:v10 shouldUseRelay:&v71])
    {
      v16 = TUDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot satisfy dial request. Returning nil call", buf, 2u);
      }

      goto LABEL_25;
    }

    [(TUJoinConversationRequest *)v10 setHostOnCurrentDevice:(v71 & 1) == 0];
    v17 = [(TUJoinConversationRequest *)v10 provider];
    if ([v17 isFaceTimeProvider] && !-[TUJoinConversationRequest isVideo](v10, "isVideo") && -[TUJoinConversationRequest endpointOnCurrentDevice](v10, "endpointOnCurrentDevice"))
    {
      v18 = [(TUJoinConversationRequest *)v10 endpointIDSDestination];
      if (!v18)
      {
        v38 = +[TUConversationManager supportsConversations];

        if (v38)
        {
          v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v40 = [(TUJoinConversationRequest *)v10 handle];

          if (v40)
          {
            v41 = [TUConversationMember alloc];
            v42 = [(TUJoinConversationRequest *)v10 handle];
            v43 = [(TUConversationMember *)v41 initWithHandle:v42];

            [v39 addObject:v43];
          }

          v44 = [[TUJoinConversationRequest alloc] initWithRemoteMembers:v39 originatingUIType:[(TUJoinConversationRequest *)v10 originatingUIType]];
          v45 = objc_alloc(MEMORY[0x1E696AFB0]);
          v46 = [(TUJoinConversationRequest *)v10 uniqueProxyIdentifier];
          v47 = [v45 initWithUUIDString:v46];

          if (v47)
          {
            [(TUJoinConversationRequest *)v44 setUUID:v47];
          }

          [(TUJoinConversationRequest *)v44 setVideo:0];
          [(TUJoinConversationRequest *)v44 setAvMode:1];
          [(TUJoinConversationRequest *)v44 setVideoEnabled:0];
          v48 = [(TUJoinConversationRequest *)v10 localSenderIdentityUUID];

          if (v48)
          {
            v49 = [(TUJoinConversationRequest *)v10 localSenderIdentity];
            v50 = [v49 handle];
            [(TUJoinConversationRequest *)v44 setCallerID:v50];
          }

          [(TUJoinConversationRequest *)v44 setLaunchInBackground:[(TUJoinConversationRequest *)v10 launchInBackground]];
          v51 = +[TUConversationProvider expanseProvider];
          [(TUJoinConversationRequest *)v44 setProvider:v51];

          v52 = [(TUJoinConversationRequest *)v10 audioSourceIdentifier];
          [(TUJoinConversationRequest *)v44 setAudioSourceIdentifier:v52];

          v53 = [(TUJoinConversationRequest *)v10 translationRequestConfiguration];

          if (v53)
          {
            v64 = v47;
            v66 = v39;
            v54 = [TUCallTranslationRequestConfiguration alloc];
            v55 = [(TUJoinConversationRequest *)v10 translationRequestConfiguration];
            v56 = [v55 localLocale];
            v57 = [(TUJoinConversationRequest *)v10 translationRequestConfiguration];
            v58 = [v57 remoteLocale];
            v59 = [(TUCallTranslationRequestConfiguration *)v54 initWithlocalLocale:v56 remoteLocale:v58 translationLinks:3 remoteAudioMode:0 translationMode:0];
            [(TUJoinConversationRequest *)v44 setTranslationRequestConfiguration:v59];

            v60 = TUDefaultLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = [(TUJoinConversationRequest *)v44 translationRequestConfiguration];
              *buf = 138412290;
              v74 = v61;
              _os_log_impl(&dword_1956FD000, v60, OS_LOG_TYPE_DEFAULT, "Setting joinConveresationRequest's translationRequestConfiguration to %@", buf, 0xCu);
            }

            v47 = v64;
            v39 = v66;
          }

          v62 = TUDefaultLog();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = v44;
            _os_log_impl(&dword_1956FD000, v62, OS_LOG_TYPE_DEFAULT, "Upgrading dialRequest to joinRequest with expanseProvider since it is a 1:1 FTA %@", buf, 0xCu);
          }

          [(TUCallCenter *)self launchAppForJoinRequest:v44];
          goto LABEL_27;
        }

LABEL_19:
        v19 = [(TUJoinConversationRequest *)v10 handle];
        v20 = [v19 siriDisplayName];
        if (v20)
        {
        }

        else
        {
          v25 = [(TUJoinConversationRequest *)v10 upgradedFromCallUUID];

          if (!v25)
          {
            goto LABEL_22;
          }

          v19 = [(TUCallCenter *)self currentCalls];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v26 = [v19 countByEnumeratingWithState:&v67 objects:v72 count:16];
          if (v26)
          {
            v27 = v26;
            v63 = self;
            v65 = v7;
            v28 = *v68;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v68 != v28)
                {
                  objc_enumerationMutation(v19);
                }

                v30 = *(*(&v67 + 1) + 8 * i);
                v31 = [(TUJoinConversationRequest *)v10 upgradedFromCallUUID:v63];
                v32 = [v31 UUIDString];
                v33 = [v30 callUUID];
                v34 = [v32 isEqualToString:v33];

                if (v34)
                {
                  v35 = [v30 handle];
                  v36 = [v35 siriDisplayName];
                  v37 = [(TUJoinConversationRequest *)v10 handle];
                  [v37 setSiriDisplayName:v36];
                }
              }

              v27 = [v19 countByEnumeratingWithState:&v67 objects:v72 count:16];
            }

            while (v27);
            self = v63;
            v7 = v65;
          }
        }

LABEL_22:
        [(TUJoinConversationRequest *)v10 setHostOnCurrentDevice:(v71 & 1) == 0];
        [(TUCallCenter *)self localLandscapeAspectRatio];
        [(TUJoinConversationRequest *)v10 setLocalLandscapeAspectRatio:?];
        [(TUCallCenter *)self localPortraitAspectRatio];
        [(TUJoinConversationRequest *)v10 setLocalPortraitAspectRatio:?];
        v21 = [(TUCallCenter *)self callServicesInterface];
        v22 = [v21 dialWithRequest:v10 completion:v7];

        goto LABEL_28;
      }
    }

    goto LABEL_19;
  }

  v15 = TUDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v10;
    _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Dial request with normal type appears to contain an MMI/USSD code: %@", buf, 0xCu);
  }

  v16 = [(TUCallCenter *)self callServicesInterface];
  [v16 sendMMIOrUSSDCodeWithRequest:v10];
LABEL_25:

  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_27:
  v22 = 0;
LABEL_28:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)applicationWillLaunchForStartCallInteraction:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "interaction: %@", &v10, 0xCu);
  }

  v6 = [(TUCallCenter *)self providerManager];
  v7 = [v4 intent];
  v8 = [v7 _intents_bundleIdForLaunching];
  [v6 donateUserIntentForProviderWithIdentifier:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)launchAppForDialRequest:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  v9 = [(TUCallCenter *)self providerManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__TUCallCenter_launchAppForDialRequest_completion___block_invoke;
  v12[3] = &unk_1E7425568;
  v12[4] = self;
  v13 = v7;
  v10 = v7;
  [v9 launchAppForDialRequest:v6 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __51__TUCallCenter_launchAppForDialRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) callServicesInterface];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__TUCallCenter_launchAppForDialRequest_completion___block_invoke_2;
    v5[3] = &unk_1E7425540;
    v7 = *(a1 + 40);
    v6 = v3;
    [v4 performBlockOnQueue:v5];
  }
}

+ (BOOL)isSimultaneousVoiceAndDataSupportedForDialRequest:(id)a3
{
  v3 = [a3 localSenderIdentityUUID];
  if (v3)
  {
    v4 = [TUCallCapabilities isSimultaneousVoiceAndDataSupportedForSIMWithUUID:v3];
  }

  else
  {
    v4 = +[TUCallCapabilities supportsSimultaneousVoiceAndData];
  }

  v5 = v4;

  return v5;
}

- (void)sendFieldModeDigits:(id)a3 forProvider:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "sendFieldModeDigits: %@ for provider: %@", &v13, 0x16u);
  }

  v9 = [[TUDialRequest alloc] initWithProvider:v7];
  v10 = [[TUHandle alloc] initWithType:2 value:v6];
  [(TUDialRequest *)v9 setHandle:v10];

  [(TUDialRequest *)v9 setOriginatingUIType:40];
  v11 = [(TUCallCenter *)self callServicesInterface];
  [v11 sendMMIOrUSSDCodeWithRequest:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)answerCall:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:v4];
  [(TUCallCenter *)self answerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)holdAndAnswerIfNeeded:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallCenter *)self isHoldAndAnswerAllowed];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v5)
    {
      v7 = @"YES";
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "holdAndAnswerIfNeeded, isHoldAndAnswerAllowed: %@ for call: %@", &v16, 0x16u);
  }

  v8 = CFPreferencesCopyValue(@"CleethorpesEnabled", @"com.apple.InCallService", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & v5)
  {
    v10 = [v8 BOOLValue];
  }

  else
  {
    v10 = (isKindOfClass ^ 1) & v5;
  }

  v11 = [(TUCallCenter *)self featureFlags];
  if (([v11 incomingBannerOverSixUpEnabled] & 1) == 0)
  {
    v12 = [(TUCallCenter *)self featureFlags];
    if (([v12 embedSwapBannerEnabled] & 1) == 0)
    {
      v13 = [(TUCallCenter *)self featureFlags];
      v14 = [v13 callManagerEnabled];

      if (v14 & v10)
      {
        goto LABEL_12;
      }

LABEL_14:
      [(TUCallCenter *)self answerCall:v4];
      goto LABEL_15;
    }
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(TUCallCenter *)self holdActiveAndAnswerCall:v4];
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)answerOrJoinCall:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerOrJoinCall: %@", &v20, 0xCu);
  }

  if ([v4 status] == 6 || objc_msgSend(v4, "status") == 5)
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter answerOrJoinCall:];
    }
  }

  else if ([v4 isConversation] && (-[TUCallCenter activeConversationForCall:](self, "activeConversationForCall:", v4), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(TUCallCenter *)self activeConversationForCall:v4];
    v10 = [v9 link];
    if (v10 && (v11 = v10, v12 = [v9 letMeInRequestState], v11, v12 == 1))
    {
      v13 = [TUJoinConversationRequest alloc];
      v14 = [v9 link];
      v15 = [MEMORY[0x1E695DFD8] set];
      v16 = [(TUJoinConversationRequest *)v13 initWithConversationLink:v14 otherInvitedHandles:v15 sendLetMeInRequest:1];
    }

    else
    {
      v16 = [[TUJoinConversationRequest alloc] initWithConversation:v9 originatingUIType:36];
    }

    v17 = [v4 uniqueProxyIdentifierUUID];
    [(TUJoinConversationRequest *)v16 setUUID:v17];

    -[TUJoinConversationRequest setVideoEnabled:](v16, "setVideoEnabled:", [v4 isSendingVideo]);
    if ([v9 avMode])
    {
      v18 = [v9 avMode];
    }

    else if ([v4 isSendingVideo])
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [(TUJoinConversationRequest *)v16 setAvMode:v18];
    v19 = [(TUCallCenter *)self joinConversationWithConversationRequest:v16];
  }

  else
  {
    [(TUCallCenter *)self holdAndAnswerIfNeeded:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)answerCall:(id)a3 withSourceIdentifier:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "call: %@ sourceIdentifier: %@", &v10, 0x16u);
  }

  [(TUCallCenter *)self answerCall:v6 withSourceIdentifier:v7 wantsHoldMusic:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)answerCallWithHoldMusic:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerCallWithHoldMusic: %@", &v7, 0xCu);
  }

  [(TUCallCenter *)self answerCall:v4 withSourceIdentifier:0 wantsHoldMusic:1];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)holdActiveAndAnswerCall:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "holdActiveAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:v4];
  [(TUCallCenter *)self holdActiveAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)holdActiveAndAnswerWithRequest:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "holdActiveAndAnswerWithRequest: %@", &v7, 0xCu);
  }

  [v4 setBehavior:2];
  [(TUCallCenter *)self answerWithRequest:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endActiveAndAnswerCall:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:v4];
  [(TUCallCenter *)self endActiveAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endActiveAndAnswerWithRequest:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveAndAnswerWithRequest: %@", &v7, 0xCu);
  }

  [v4 setBehavior:0];
  [(TUCallCenter *)self answerWithRequest:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endHeldAndAnswerCall:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endHeldAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:v4];
  [(TUCallCenter *)self endHeldAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endHeldAndAnswerWithRequest:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endHeldAndAnswerWithRequest: %@", &v7, 0xCu);
  }

  [v4 setBehavior:1];
  [(TUCallCenter *)self answerWithRequest:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endActiveOrHeldAndAnswerCall:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveOrHeldAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:v4];
  [(TUCallCenter *)self endActiveOrHeldAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endActiveOrHeldAndAnswerWithRequest:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveOrHeldAndAnswerWithRequest: %@", &v8, 0xCu);
  }

  v6 = [(TUCallCenter *)self audioOrVideoCallWithStatus:1];

  if (v6)
  {
    [(TUCallCenter *)self endActiveAndAnswerWithRequest:v4];
  }

  else
  {
    [(TUCallCenter *)self endHeldAndAnswerWithRequest:v4];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportLocalPreviewStoppedForCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "reportLocalPreviewStoppedForCall: %@", &v9, 0xCu);
  }

  v6 = [(TUCallCenter *)self callServicesInterface];
  v7 = [v4 uniqueProxyIdentifier];
  [v6 reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)answerWithRequest:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TUCallCenter *)self _allCalls];
    *buf = 138412546;
    v66 = v4;
    v67 = 2112;
    v68 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerRequest: %@ - Current calls are %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E695DF00] date];
  [v4 setDateAnswered:v7];

  v8 = [v4 uniqueProxyIdentifier];
  v9 = [(TUCallCenter *)self callWithUniqueProxyIdentifier:v8];

  if ([v4 behavior] == 4)
  {
    [v9 isVideo];
    v10 = 1;
  }

  else
  {
    v11 = [v4 downgradeToAudio];
    v12 = [v9 isVideo];
    v10 = v12 | v11;
    if (v12 && (v11 & 1) == 0)
    {
      if (([v4 allowBluetoothAnswerWithoutDowngrade] & 1) == 0)
      {
        v13 = [v4 sourceIdentifier];
        if (v13)
        {
          v14 = v13;
          v15 = [(TUCallCenter *)self routeController];
          v16 = [v4 sourceIdentifier];
          v17 = [v15 routeWithSourceIdentifier:v16];
          v18 = [v17 isBluetooth];

          if (v18)
          {
            v19 = TUDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v9;
              _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "We are asked to answer with bluetooth route for a video call - Ignoring to answer %@", buf, 0xCu);
            }

            v20 = MEMORY[0x1E695DFF8];
            v21 = [v4 sourceIdentifier];
            v22 = [v20 faceTimeAnswerURLWithSourceIdentifier:v21];

            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __34__TUCallCenter_answerWithRequest___block_invoke;
            v61[3] = &unk_1E7427A90;
            v62 = v22;
            v63 = v9;
            v23 = v22;
            TUOpenURLWithCompletion(v23, v61);

            goto LABEL_48;
          }
        }
      }

      v10 = 0;
    }
  }

  if (v9)
  {
    v24 = [(TUCallCenter *)self featureFlags];
    v43 = v10;
    if ([v24 isRemoteCallControlOnWatchEnabled])
    {
      [(TUCallCenter *)self _allCallsWithStatus:1];
    }

    else
    {
      [(TUCallCenter *)self audioAndVideoCallsWithStatus:1];
    }
    v26 = ;

    v27 = [(TUCallCenter *)self featureFlags];
    v45 = v26;
    v46 = v4;
    if ([v27 isRemoteCallControlOnWatchEnabled])
    {
      [(TUCallCenter *)self _allCallsWithStatus:2];
    }

    else
    {
      [(TUCallCenter *)self audioAndVideoCallsWithStatus:2];
    }
    v44 = ;

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v28 = [(TUCallCenter *)self _allCalls];
    v29 = [v28 countByEnumeratingWithState:&v57 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v58;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v58 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v57 + 1) + 8 * i);
          if ([v33 status] == 4 && (objc_msgSend(v33, "isEqualToCall:", v9) & 1) == 0)
          {
            v34 = TUDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v33;
              _os_log_impl(&dword_1956FD000, v34, OS_LOG_TYPE_DEFAULT, "Another ringing call exists while we are trying to answer this call. Declining the other ringing call: %@", buf, 0xCu);
            }

            [(TUCallCenter *)self disconnectCall:v33 withReason:2];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v30);
    }

    [(TUCallCenter *)self localLandscapeAspectRatio];
    v4 = v46;
    [v46 setLocalLandscapeAspectRatio:?];
    [(TUCallCenter *)self localPortraitAspectRatio];
    [v46 setLocalPortraitAspectRatio:?];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __34__TUCallCenter_answerWithRequest___block_invoke_246;
    v55[3] = &unk_1E7425900;
    v35 = v9;
    v56 = v35;
    v23 = v45;
    if (!(v43 & 1 | ![(TUCallCenter *)self anyCallPassesTest:v55]))
    {
      v36 = TUDefaultLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v36, OS_LOG_TYPE_DEFAULT, "Overriding answer behavior to video upgrade", buf, 2u);
      }

      [v46 setBehavior:3];
    }

    v37 = [v46 behavior];
    if ((v37 - 2) < 3)
    {
      v38 = [(TUCallCenter *)self callServicesInterface];
      [v38 answerCallWithRequest:v46];

      v39 = [v46 endpointIDSDestination];

      v40 = v44;
      if (!v39)
      {
        [(TUCallCenter *)self updateCall:v35 withAnswerRequest:v46];
      }

      goto LABEL_47;
    }

    v40 = v44;
    if (v37 == 1)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __34__TUCallCenter_answerWithRequest___block_invoke_2;
      v47[3] = &unk_1E7427AB8;
      v47[4] = self;
      v48 = v46;
      v49 = v44;
      v50 = v35;
      [(TUCallCenter *)self _preflightDisconnectForCalls:v49 withCompletion:v47];

      v41 = v48;
    }

    else
    {
      if (v37)
      {
LABEL_47:

        goto LABEL_48;
      }

      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __34__TUCallCenter_answerWithRequest___block_invoke_247;
      v51[3] = &unk_1E7427AB8;
      v51[4] = self;
      v52 = v46;
      v53 = v45;
      v54 = v35;
      [(TUCallCenter *)self _preflightDisconnectForCalls:v53 withCompletion:v51];

      v41 = v52;
    }

    goto LABEL_47;
  }

  v23 = TUDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v4 uniqueProxyIdentifier];
    *buf = 138412290;
    v66 = v25;
    _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "[WARN] No call found to answer for uniqueProxyIdentifier %@", buf, 0xCu);
  }

LABEL_48:

  v42 = *MEMORY[0x1E69E9840];
}

void __34__TUCallCenter_answerWithRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "TUOpenURLWithCompletion result: %@, error: %@", &v10, 0x16u);
  }

  if (v6)
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __34__TUCallCenter_answerWithRequest___block_invoke_cold_1(a1, v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __34__TUCallCenter_answerWithRequest___block_invoke_247(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) callServicesInterface];
    [v3 answerCallWithRequest:*(a1 + 40)];

    v4 = [*(a1 + 40) endpointIDSDestination];

    if (!v4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = *(a1 + 48);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v11 + 1) + 8 * v9++) setTransitionStatus:{5, v11}];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      [*(a1 + 32) updateCall:*(a1 + 56) withAnswerRequest:*(a1 + 40)];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __34__TUCallCenter_answerWithRequest___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) callServicesInterface];
    [v3 answerCallWithRequest:*(a1 + 40)];

    v4 = [*(a1 + 40) endpointIDSDestination];

    if (!v4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = *(a1 + 48);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v11 + 1) + 8 * v9++) setTransitionStatus:{5, v11}];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      [*(a1 + 32) updateCall:*(a1 + 56) withAnswerRequest:*(a1 + 40)];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)updateCall:(id)a3 withAnswerRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 callNotificationManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__TUCallCenter_updateCall_withAnswerRequest___block_invoke;
  v11[3] = &unk_1E7424FD8;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  [v8 deferNotificationsUntilAfterPerformingBlock:v11];
}

uint64_t __45__TUCallCenter_updateCall_withAnswerRequest___block_invoke(id *a1)
{
  v2 = 1;
  [a1[4] setTransitionStatus:1];
  v3 = [a1[5] sourceIdentifier];
  [a1[4] setSourceIdentifier:v3];

  [a1[4] setWantsHoldMusic:{objc_msgSend(a1[5], "wantsHoldMusic")}];
  if (([a1[5] sendToScreening] & 1) == 0)
  {
    v2 = [a1[5] screeningType] != 0;
  }

  [a1[4] setScreening:v2];
  v4 = [a1[6] featureFlags];
  if (TUReceptionistAvailable(v4) && [a1[4] isReceptionistCapable])
  {
    v5 = [a1[5] screeningType];

    if (v5 == 2)
    {
      [a1[4] setReceptionistState:1];
    }
  }

  else
  {
  }

  if ([a1[5] pauseVideoToStart])
  {
    [a1[4] setIsSendingVideo:0];
  }

  if ([a1[5] behavior] == 4 || (result = objc_msgSend(a1[5], "downgradeToAudio"), result))
  {
    [a1[4] setIsSendingVideo:0];
    result = [a1[4] isConversation];
    if ((result & 1) == 0)
    {
      v7 = a1[4];

      return [v7 setVideo:0];
    }
  }

  return result;
}

- (void)holdCall:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TUCallCenter *)self _allCalls];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "call: %@ - Current calls are %@", &v10, 0x16u);
  }

  if (v4 && ([v4 isOnHold] & 1) == 0)
  {
    [v4 setProvisionalHoldStatus:1];
    v7 = [(TUCallCenter *)self callServicesInterface];
    v8 = [v4 uniqueProxyIdentifier];
    [v7 holdCallWithUniqueProxyIdentifier:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unholdCall:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TUCallCenter *)self _allCalls];
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "call: %@ - Current calls are %@", &v10, 0x16u);
  }

  if (v4 && [v4 isOnHold])
  {
    [v4 setProvisionalHoldStatus:2];
    v7 = [(TUCallCenter *)self callServicesInterface];
    v8 = [v4 uniqueProxyIdentifier];
    [v7 unholdCallWithUniqueProxyIdentifier:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)swapCalls
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", &v7, 0xCu);
  }

  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 swapCalls];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)groupCall:(id)a3 withOtherCall:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "call: %@ otherCall: %@", &v13, 0x16u);
  }

  v9 = [(TUCallCenter *)self callServicesInterface];
  v10 = [v6 uniqueProxyIdentifier];
  v11 = [v7 uniqueProxyIdentifier];
  [v9 groupCallWithUniqueProxyIdentifier:v10 withOtherCallWithUniqueProxyIdentifier:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)ungroupCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "call: %@", &v9, 0xCu);
  }

  v6 = [(TUCallCenter *)self callServicesInterface];
  v7 = [v4 uniqueProxyIdentifier];
  [v6 ungroupCallWithUniqueProxyIdentifier:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_preflightDisconnectForCalls:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self disconnectCallPreflight];

  if (v8)
  {
    v9 = [(TUCallCenter *)self disconnectCallPreflight];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__TUCallCenter__preflightDisconnectForCalls_withCompletion___block_invoke;
    v10[3] = &unk_1E7427AE0;
    v11 = v6;
    v12 = v7;
    (v9)[2](v9, v11, v10);
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

uint64_t __60__TUCallCenter__preflightDisconnectForCalls_withCompletion___block_invoke(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Calls %@ not allowed to disconnect", &v7, 0xCu);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)disconnectCall:(id)a3 withReason:(int)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TUCallCenter *)self _allCalls];
    *buf = 138412802;
    v17 = v6;
    v18 = 1024;
    v19 = a4;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "disconnectCall: %@ reason: %d - Current calls are %@", buf, 0x1Cu);
  }

  if (v6)
  {
    v15 = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__TUCallCenter_disconnectCall_withReason___block_invoke;
    v12[3] = &unk_1E7427B08;
    v13 = v6;
    v14 = a4;
    [(TUCallCenter *)self _preflightDisconnectForCalls:v9 withCompletion:v12];

    v10 = v13;
  }

  else
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring disconnectCall request because provided call was nil", buf, 2u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __42__TUCallCenter_disconnectCall_withReason___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) disconnectWithReason:*(result + 40)];
  }

  return result;
}

- (id)getCurrentCallsToDisconnect
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", buf, 0xCu);
  }

  v5 = [(TUCallCenter *)self audioOrVideoCallWithStatus:3];
  v6 = [(TUCallCenter *)self audioAndVideoCallsWithStatus:1];
  v7 = [(TUCallCenter *)self audioAndVideoCallsWithStatus:2];
  if (v5)
  {
    v12 = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  }

  else if ([v6 count])
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)disconnectCurrentCall
{
  if ([(TUFeatureFlags *)self->_featureFlags automaticCallActivationDisabled])
  {
    v3 = [(TUCallCenter *)self getCurrentCallsToDisconnect];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__TUCallCenter_disconnectCurrentCall__block_invoke;
    v5[3] = &unk_1E7427B30;
    v5[4] = self;
    v6 = v3;
    v4 = v3;
    [(TUCallCenter *)self _preflightDisconnectForCalls:v4 withCompletion:v5];
  }

  else
  {

    [(TUCallCenter *)self disconnectCurrentCallAndActivateHeld];
  }
}

void __37__TUCallCenter_disconnectCurrentCall__block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) callServicesInterface];
    [v3 disconnectCurrentCall];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) setTransitionStatus:{5, v10}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)disconnectCurrentCallAndActivateHeld
{
  v3 = [(TUCallCenter *)self getCurrentCallsToDisconnect];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__TUCallCenter_disconnectCurrentCallAndActivateHeld__block_invoke;
  v5[3] = &unk_1E7427B30;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [(TUCallCenter *)self _preflightDisconnectForCalls:v4 withCompletion:v5];
}

void __52__TUCallCenter_disconnectCurrentCallAndActivateHeld__block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [*(a1 + 32) callServicesInterface];
    [v3 disconnectCurrentCallAndActivateHeld];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) setTransitionStatus:{5, v10}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)disconnectAllCalls
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", buf, 0xCu);
  }

  v5 = [(TUCallCenter *)self currentCalls];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__TUCallCenter_disconnectAllCalls__block_invoke;
  v7[3] = &unk_1E7427B58;
  v7[4] = self;
  [(TUCallCenter *)self _preflightDisconnectForCalls:v5 withCompletion:v7];

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __34__TUCallCenter_disconnectAllCalls__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) disconnectAllCallsWithNoPreflight];
  }

  return result;
}

- (void)disconnectAllCallsWithNoPreflight
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Proceeding to disconnect all calls", buf, 2u);
  }

  v4 = [(TUCallCenter *)self callServicesInterface];
  [v4 disconnectAllCalls];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(TUCallCenter *)self currentCalls];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setTransitionStatus:5];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __146__TUCallCenter_handleActionForWiredHeadsetMiddleButtonPressWithSourceIdentifier_allowBluetoothAnswerWithoutDowngrade_shouldForceDowngradeToAudio___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = [v3 client];
    v6 = [v5 bundleIdentifier];
    v7 = [a1[4] joinedActivitySession];
    v8 = [v7 activity];
    v9 = [v8 bundleIdentifier];
    v10 = [v6 isEqualToString:v9];

    if (v10)
    {
      v11 = TUDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Forwarding headset button press to MediaRemote because an activity session is controlling media playback", v12, 2u);
      }

      [a1[5] sendCommand:2 options:0 queue:MEMORY[0x1E69E96A0] completion:0];
    }

    else
    {
      [WeakRetained handleHeadsetButtonPressForActiveCalls];
    }
  }
}

- (void)handleHeadsetButtonPressForActiveCalls
{
  v4 = [(TUCallCenter *)self callWithStatus:1];
  v3 = [(TUCallCenter *)self callWithStatus:2];
  if (v4 && v3)
  {
    [(TUCallCenter *)self swapCalls];
  }

  else if ([v4 isScreening])
  {
    [(TUCallCenter *)self answerCall:v4];
  }

  else
  {
    [(TUCallCenter *)self disconnectCurrentCall];
  }
}

- (void)handleActionForWiredHeadsetMiddleButtonLongPress
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "current calls are %@", &v9, 0xCu);
  }

  v5 = [(TUCallCenter *)self audioOrVideoCallWithStatus:4];
  v6 = [(TUCallCenter *)self callWithStatus:1];
  v7 = v6;
  if (v5)
  {
    [(TUCallCenter *)self disconnectCall:v5 withReason:2];
  }

  else if (v6 && [(TUCallCenter *)self currentCallCount]>= 2)
  {
    [(TUCallCenter *)self disconnectCurrentCall];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)activateInCallUIWithActivityContinuationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 activateInCallUIWithActivityContinuationIdentifier:v4];
}

- (void)setLiveVoicemailUnavailableReason:(int64_t)a3 forCall:(id)a4
{
  v6 = a4;
  v8 = [(TUCallCenter *)self callServicesInterface];
  v7 = [v6 uniqueProxyIdentifier];

  [v8 setLiveVoicemailUnavailableReason:a3 forCallWithUniqueProxyIdentifier:v7];
}

- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "userInfo: %@", &v11, 0xCu);
  }

  v9 = [(TUCallCenter *)self callServicesInterface];
  [v9 pullCallFromClientUsingHandoffActivityUserInfo:v6 completion:v7];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)pullPersistedChannel:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 pullPersistedChannel:v4];
}

- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TUCallCenter *)self _allCalls];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "sourceIdentifier: %@ - Current calls are %@", &v9, 0x16u);
  }

  v7 = [(TUCallCenter *)self callServicesInterface];
  [v7 pushRelayingCallsToHostWithSourceIdentifier:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pullRelayingCallsFromClient
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    v7 = 136315394;
    v8 = "[TUCallCenter pullRelayingCallsFromClient]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%s: - Current calls are %@", &v7, 0x16u);
  }

  if ([(TUCallCenter *)self shouldPullRelayingCalls])
  {
    v5 = [(TUCallCenter *)self callServicesInterface];
    [v5 pullRelayingCallsFromClient];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullRelayingGFTCallsFromClientIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    v7 = 136315394;
    v8 = "[TUCallCenter pullRelayingGFTCallsFromClientIfNecessary]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%s: - Current calls are %@", &v7, 0x16u);
  }

  if ([(TUCallCenter *)self shouldPullRelayingCalls])
  {
    v5 = [(TUCallCenter *)self callServicesInterface];
    [v5 pullRelayingGFTCallsFromClientIfNecessary];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pushHostedCallsToDestination:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TUCallCenter *)self _allCalls];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "destination: %@ - Current calls are %@", &v9, 0x16u);
  }

  v7 = [(TUCallCenter *)self callServicesInterface];
  [v7 pushHostedCallsToDestination:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pullHostedCallsFromPairedHostDevice
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(TUCallCenter *)self _allCalls];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", &v7, 0xCu);
  }

  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 pullHostedCallsFromPairedHostDevice];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pickRouteForRapportDeviceWithMediaSystemIdentifier:(id)a3 effectiveIdentifier:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self routeController];
  v9 = [v8 routes];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v25 + 1) + 8 * v14);
      v16 = [v15 uniqueIdentifier];
      if ([v6 length] && objc_msgSend(v6, "isEqualToString:", v16))
      {
        v17 = TUDefaultLog();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 138412546;
        v30 = v6;
        v31 = 2112;
        v32 = v15;
        v18 = "Found route matching rapportMediaSystemIdentifier=%@, route=%@";
        goto LABEL_17;
      }

      if ([v7 length] && objc_msgSend(v7, "isEqualToString:", v16))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v17 = TUDefaultLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    v30 = v7;
    v31 = 2112;
    v32 = v15;
    v18 = "Found route matching rapportEffectiveIdentifier=%@, route=%@";
LABEL_17:
    _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
LABEL_18:

    v19 = v15;
    if (!v19)
    {
      goto LABEL_20;
    }

    v20 = [(TUCallCenter *)self routeController];
    [v20 pickRoute:v19];
  }

  else
  {
LABEL_12:

LABEL_20:
    v21 = TUDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = v6;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find any routes matching rapportMediaSystemIdentifier %@ or rapportEffectiveIdentifier %@ among availableRoutes %@, attempting to pick route when available...", buf, 0x20u);
    }

    v22 = [(TUCallCenter *)self routeController];
    v19 = v22;
    if (v6)
    {
      v23 = v6;
    }

    else
    {
      v23 = v7;
    }

    [v22 pickRouteWhenAvailableWithUniqueIdentifier:{v23, v25}];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  if (+[TUConversationManager supportsConversations])
  {
    [(TUCallCenter *)self launchAppForJoinRequest:v4];
  }
}

- (BOOL)launchAppForJoinRequest:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  v6 = [(TUCallCenter *)self launchAppForJoinRequestBlock];
  v7 = (v6)[2](v6, v4);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)continueHandoffEligibleConversation
{
  v3 = [(TUCallCenter *)self featureFlags];
  v4 = [v3 conversationHandoffEnabled];

  if (v4)
  {

    [(TUCallCenter *)self continueHandoffForConversationWithEligibility:0];
  }
}

- (BOOL)continueHandoffForConversationWithEligibility:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCallCenter *)self featureFlags];
  v6 = [v5 conversationHandoffEnabled];

  if (v6)
  {
    v7 = [(TUCallCenter *)self conversationManager];
    v8 = [v7 joinRequestForApplicableConversationWithHandoffEligibility:v4];

    v9 = TUDefaultLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Handing off conversation to this device using %@", &v16, 0xCu);
      }

      v11 = [(TUCallCenter *)self launchAppForJoinRequest:v8];
    }

    else
    {
      if (v10)
      {
        v12 = [(TUCallCenter *)self conversationManager];
        v13 = [v12 activeConversations];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Cannot continue handoff as could not find conversation with active handoff eligibility, or a conversation was already in non-waiting state. All conversations: %@", &v16, 0xCu);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)_supportsJoiningConversationWithRequest:(id)a3 featureFlags:(id)a4 supportsConversations:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = TUGreenTeaLagunaEnabled(v8);
  v10 = [v8 greenTeaLinksEnabled];
  if (v9)
  {
    if (v10)
    {
      v11 = [v7 mergedRemoteMembers];
      if ([v11 count] < 2)
      {
LABEL_4:
        v12 = [v7 conversationLink];
        v13 = v12 != 0;

LABEL_8:
        goto LABEL_10;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }
  }

  else if (v10)
  {
    v11 = [v7 remoteMembers];
    if ([v11 count] <= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
LABEL_10:
  if ([v7 avMode])
  {
    TUGreenTeaLagunaEnabled(v8);
    v14 = 0;
LABEL_12:
    v15 = [v7 isOneToOne];
    goto LABEL_13;
  }

  v16 = [v7 presentationMode];
  v14 = v16 == 2;
  if (!TUGreenTeaLagunaEnabled(v8) || v16 != 2)
  {
    goto LABEL_12;
  }

  v17 = [v7 mergedRemoteMembers];
  v15 = [v17 count] < 2;

  v14 = 1;
LABEL_13:
  if ((v15 | v13))
  {
    if (v14)
    {
      v5 |= TUGreenTeaLagunaEnabled(v8);
    }

    else if ([v7 avMode] == 2)
    {
      LOBYTE(v5) = +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls];
    }

    else if (+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v18 = [v7 provider];
      v5 = [v18 isDefaultProvider] ^ 1;
    }
  }

  return v5;
}

+ (BOOL)supportsJoiningConversationWithRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TUFeatureFlags);
  v5 = +[TUCallCenter _supportsJoiningConversationWithRequest:featureFlags:supportsConversations:](TUCallCenter, "_supportsJoiningConversationWithRequest:featureFlags:supportsConversations:", v3, v4, +[TUConversationManager supportsConversations]);

  return v5;
}

- (id)joinConversationWithConversationRequest:(id)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "joinConversationWithConversationRequest - request: %@", buf, 0xCu);
  }

  if ([TUCallCenter supportsJoiningConversationWithRequest:v4])
  {
    v6 = [v4 provider];
    if ([v6 supportsLinks])
    {
      v7 = [v4 conversationLink];
      if (!v7)
      {

LABEL_14:
        v12 = [(TUCallCenter *)self conversationManager];
        v13 = [v4 remoteMembers];
        v14 = [v4 conversationLink];
        v10 = [v12 activeConversationWithRemoteMembers:v13 andLink:v14];

        goto LABEL_15;
      }

      v8 = v7;
      v9 = [v4 isJoiningConversationWithLink];

      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v12 = [(TUCallCenter *)self conversationManager];
    v13 = [v4 conversationLink];
    v10 = [v12 pendingConversationWithLink:v13];
LABEL_15:

    v15 = [v4 provider];
    v16 = [v15 supportsLinks];

    v17 = [(TUCallCenter *)self callFilterController];
    v18 = v17;
    if (v16 && v10)
    {
      v19 = 1;
      v20 = [v17 shouldRestrictConversation:v10 performSynchronously:1];

      if ((v20 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 1;
      v21 = [v17 shouldRestrictJoinConversationRequest:v4 performSynchronously:1];

      if (!v21)
      {
        goto LABEL_23;
      }
    }

    v22 = TUDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v22, OS_LOG_TYPE_DEFAULT, "Not joining conversation because Screen Time has restricted this join request", buf, 2u);
    }

    v19 = 0;
LABEL_23:
    v76 = v19;
    v23 = [MEMORY[0x1E695DFA8] set];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v24 = [v4 remoteMembers];
    v25 = [v24 countByEnumeratingWithState:&v86 objects:v91 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v87;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v87 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v86 + 1) + 8 * i) handle];
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v86 objects:v91 count:16];
      }

      while (v26);
    }

    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __56__TUCallCenter_joinConversationWithConversationRequest___block_invoke;
    v83[3] = &unk_1E7427BA8;
    v30 = v4;
    v84 = v30;
    v31 = v23;
    v85 = v31;
    v32 = [(TUCallCenter *)self callPassingTest:v83];
    if (v32)
    {
      v33 = TUDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v93 = v32;
        _os_log_impl(&dword_1956FD000, v33, OS_LOG_TYPE_DEFAULT, "Found a matching call with staging area for join request: %@", buf, 0xCu);
      }

      v34 = [v32 uniqueProxyIdentifierUUID];
      [v30 setUUID:v34];
    }

    v35 = [v30 provider];
    v36 = [v35 supportsAVMode:2];

    if ((v36 & 1) == 0)
    {
      v37 = TUDefaultLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v37, OS_LOG_TYPE_DEFAULT, "Conversation provider does not support video, setting wantsStagingArea to NO", buf, 2u);
      }

      [v30 setWantsStagingArea:0];
    }

    if ([v30 screeningType] || objc_msgSend(v30, "sendToScreening"))
    {
      v38 = [v30 conversationLink];

      if (v38)
      {
        v39 = TUDefaultLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1956FD000, v39, OS_LOG_TYPE_DEFAULT, "Cannot screen a conversation that contains a link", buf, 2u);
        }

        v76 = 0;
      }
    }

    v40 = [v30 provider];
    v75 = v32;
    if ([v40 supportsLinks])
    {
      v41 = [v30 conversationLink];

      if (v41)
      {
        v73 = v31;
        v74 = v4;
        v42 = TUDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v30 conversationLink];
          *buf = 138412290;
          v93 = v43;
          _os_log_impl(&dword_1956FD000, v42, OS_LOG_TYPE_DEFAULT, "Bypassing checks for remote members, join request has conversation link: %@", buf, 0xCu);
        }

        v44 = [(TUCallCenter *)self conversationManager];
        v45 = [v44 activeConversations];
        v46 = [v45 count];

        if (!v46)
        {
          if (v76)
          {
            goto LABEL_78;
          }

          goto LABEL_83;
        }

        v47 = v10;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v72 = self;
        v48 = [(TUCallCenter *)self conversationManager];
        v49 = [v48 activeConversations];

        v50 = [v49 countByEnumeratingWithState:&v79 objects:v90 count:16];
        if (v50)
        {
          v51 = v50;
          v52 = *v80;
          while (2)
          {
            for (j = 0; j != v51; ++j)
            {
              if (*v80 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v79 + 1) + 8 * j);
              v55 = [v54 link];
              v56 = [v30 conversationLink];
              if ([v55 isEquivalentToConversationLink:v56] && objc_msgSend(v54, "state") == 3)
              {
                v57 = [v47 isPendingConversation];

                if ((v57 & 1) == 0)
                {
                  v66 = TUDefaultLog();
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v93 = v54;
                    _os_log_impl(&dword_1956FD000, v66, OS_LOG_TYPE_DEFAULT, "Join request is asking to join a link that matches the currently-joined conversation, proceeding back to that conversation: %@", buf, 0xCu);
                  }

                  v11 = 0;
                  v10 = v47;
                  v31 = v73;
                  v4 = v74;
                  goto LABEL_96;
                }
              }

              else
              {
              }
            }

            v51 = [v49 countByEnumeratingWithState:&v79 objects:v90 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v10 = v47;
        v31 = v73;
        v4 = v74;
        self = v72;
LABEL_77:
        if (v76)
        {
LABEL_78:
          if ([v30 avMode] || (-[TUCallCenter featureFlags](self, "featureFlags"), v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "avLessSharePlayEnabled"), v64, !v65))
          {
            v49 = [(TUCallCenter *)self callServicesInterface];
            v11 = [v49 joinConversationWithRequest:v30];
          }

          else
          {
            v49 = [(TUCallCenter *)self conversationManager];
            [v49 joinConversationWithRequest:v30];
            v11 = 0;
          }

LABEL_96:

          goto LABEL_97;
        }

LABEL_83:
        v11 = 0;
LABEL_97:

        goto LABEL_98;
      }
    }

    else
    {
    }

    v58 = [v30 remoteMembers];
    if (![v58 count])
    {
      v59 = [v30 prefersAddingRemoteMembersAfterHandoff];

      if (v59)
      {
LABEL_69:
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __56__TUCallCenter_joinConversationWithConversationRequest___block_invoke_260;
        v77[3] = &unk_1E7425900;
        v60 = v30;
        v78 = v60;
        if ([(TUCallCenter *)self anyCallPassesTest:v77])
        {
          v61 = TUDefaultLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            [TUCallCenter joinConversationWithConversationRequest:];
          }

          LOBYTE(v76) = 0;
        }

        v62 = [(TUCallCenter *)self callMatchingConversationRequest:v60];
        if (v62)
        {
          if ([v60 avMode])
          {
            v63 = [v60 participantCluster];

            if (!v63)
            {
              if ([v62 status] == 4 && objc_msgSend(v62, "nearbyMode") != 2)
              {
                v69 = TUDefaultLog();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1956FD000, v69, OS_LOG_TYPE_DEFAULT, "Identical call for this request exists and is ringing, answering it", buf, 2u);
                }

                [(TUCallCenter *)self holdAndAnswerIfNeeded:v62];
              }

              else
              {
                v68 = TUDefaultLog();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  [TUCallCenter joinConversationWithConversationRequest:];
                }
              }

              v11 = 0;
              v49 = v78;
              goto LABEL_96;
            }
          }
        }

        goto LABEL_77;
      }

      v58 = TUDefaultLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        [TUCallCenter joinConversationWithConversationRequest:];
      }

      LOBYTE(v76) = 0;
    }

    goto LABEL_69;
  }

  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Device does not support multiway", buf, 2u);
  }

  v11 = 0;
LABEL_98:

  v70 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __56__TUCallCenter_joinConversationWithConversationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isConversation] && objc_msgSend(v3, "wantsStagingArea"))
  {
    v4 = [v3 remoteParticipantHandles];
    v5 = [v4 count];
    v6 = [*(a1 + 32) remoteMembers];
    if (v5 == [v6 count])
    {
      v7 = [v3 remoteParticipantHandles];
      v8 = [v7 isSubsetOfSet:*(a1 + 40)];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __56__TUCallCenter_joinConversationWithConversationRequest___block_invoke_260(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == 3)
  {
    v4 = [v3 uniqueProxyIdentifierUUID];
    v5 = [*(a1 + 32) UUID];
    if ([v4 isEqual:v5])
    {
      v6 = 0;
    }

    else if ([v3 isHostedOnCurrentDevice])
    {
      v6 = 1;
    }

    else
    {
      v6 = [v3 isEndpointOnCurrentDevice];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)callMatchingConversationRequest:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v4 remoteMembers];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * i) handle];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__TUCallCenter_callMatchingConversationRequest___block_invoke;
  v17[3] = &unk_1E7427BA8;
  v18 = v4;
  v19 = v5;
  v12 = v5;
  v13 = v4;
  v14 = [(TUCallCenter *)self callPassingTest:v17];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

uint64_t __48__TUCallCenter_callMatchingConversationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == 3 || !objc_msgSend(v3, "isConversation"))
  {
    v8 = 0;
  }

  else
  {
    v4 = [v3 remoteParticipantHandles];
    v5 = [v4 count];
    v6 = [*(a1 + 32) remoteMembers];
    if (v5 == [v6 count])
    {
      v7 = [v3 remoteParticipantHandles];
      v8 = [v7 isEqualToSet:*(a1 + 40)];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)enteredForegroundForCall:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "for call %@", &v9, 0xCu);
  }

  v6 = [(TUCallCenter *)self callServicesInterface];
  v7 = [v4 uniqueProxyIdentifier];
  [v6 enteredForegroundForCallWithUniqueProxyIdentifier:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)willEnterBackgroundForAllCalls
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  v4 = [(TUCallCenter *)self callServicesInterface];
  [v4 willEnterBackgroundForAllCalls];
}

- (void)enteredBackgroundForAllCalls
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  v4 = [(TUCallCenter *)self callServicesInterface];
  [v4 enteredBackgroundForAllCalls];
}

- (id)callForConversationWithGroupUUID:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__TUCallCenter_callForConversationWithGroupUUID___block_invoke;
  v9[3] = &unk_1E7425900;
  v10 = v4;
  v5 = v4;
  v6 = [(TUCallCenter *)self callsPassingTest:v9];
  v7 = [v6 firstObject];

  return v7;
}

uint64_t __49__TUCallCenter_callForConversationWithGroupUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 callGroupUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)activeConversationForCall:(id)a3
{
  v4 = a3;
  v5 = -[TUCallCenter activeConversationForCall:backedByGroupSession:](self, "activeConversationForCall:backedByGroupSession:", v4, [v4 isConversation]);

  return v5;
}

- (void)handleMediaRemoteCommand:(unsigned int)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(TUCallCenter *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__TUCallCenter_handleMediaRemoteCommand_completion___block_invoke;
  v9[3] = &unk_1E7427BD0;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v12 = a3;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__TUCallCenter_handleMediaRemoteCommand_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained callContainer];
    v5 = [v4 screeningCall];

    if (v5)
    {
      v6 = [v3 uiDataSource];

      if (v6)
      {
        v7 = [v3 uiDataSource];
        [v7 shouldHostHandleMRCommand:*(a1 + 48) completion:*(a1 + 32)];

        goto LABEL_11;
      }

      v8 = TUDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v9 = "Not handling media remote command because data source is nil";
        v10 = &v11;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = TUDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v9 = "Not handling media remote command because there is no screening call active";
        v10 = &v12;
LABEL_9:
        _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

LABEL_11:
}

- (void)handleMediaRemoteCommand:(unsigned int)a3 sourceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(TUCallCenter *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__TUCallCenter_handleMediaRemoteCommand_sourceIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7427BF8;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v11 = v8;
  v12 = v9;
  dispatch_async(v10, v13);
}

void __69__TUCallCenter_handleMediaRemoteCommand_sourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [v2 screeningCall];

  if (!v3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "Not handling media remote command because there is no screening call active";
      v7 = &v10;
LABEL_10:
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }

LABEL_11:

    (*(*(a1 + 48) + 16))();
    return;
  }

  v4 = [*(a1 + 32) uiDataSource];

  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not handling media remote command because data source is nil";
      v7 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = [*(a1 + 32) uiDataSource];
  [v8 shouldHostHandleMRCommand:*(a1 + 56) sourceIdentifier:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)handleRedialCommandWhileScreening:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TUCallCenter_handleRedialCommandWhileScreening___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __50__TUCallCenter_handleRedialCommandWhileScreening___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callContainer];
  v3 = [v2 screeningCall];

  if (!v3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v6 = "Not handling redial because there is no call in screening";
      v7 = &v10;
LABEL_10:
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }

LABEL_11:

    return;
  }

  v4 = [*(a1 + 32) uiDataSource];

  if (!v4)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "No UI data source, dropping dial request for redial";
      v7 = buf;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v8 = [*(a1 + 32) uiDataSource];
  [v8 handleRedialCommandWhileScreening:*(a1 + 40)];
}

- (BOOL)isSwappable
{
  v2 = [(TUCallCenter *)self displayedCalls];
  v3 = [v2 firstObject];
  v4 = [v3 model];
  v5 = [v4 supportsHolding];

  return v5;
}

- (BOOL)isMergeable
{
  v2 = [(TUCallCenter *)self displayedCalls];
  v3 = [v2 firstObject];
  v4 = [v3 model];
  v5 = [v4 supportsGrouping];

  return v5;
}

- (BOOL)isHoldAllowed
{
  v2 = [(TUCallCenter *)self displayedCalls];
  v3 = [v2 firstObject];
  v4 = [v3 model];
  v5 = [v4 supportsHolding];

  return v5;
}

- (BOOL)isTakingCallsPrivateAllowed
{
  v2 = [(TUCallCenter *)self displayedCalls];
  v3 = [v2 firstObject];
  v4 = [v3 model];
  v5 = [v4 supportsUngrouping];

  return v5;
}

- (BOOL)isSendToVoicemailAllowed
{
  v2 = [(TUCallCenter *)self displayedCalls];
  v3 = [v2 firstObject];
  v4 = [v3 model];
  v5 = [v4 supportsSendingToVoicemail];

  return v5;
}

- (BOOL)canMergeCalls
{
  v3 = [(TUCallCenter *)self displayedCalls];
  v4 = [v3 count];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [(TUCallCenter *)self displayedCalls];
  v6 = [v5 objectAtIndex:0];

  v7 = [(TUCallCenter *)self displayedCalls];
  v8 = 1;
  v9 = [v7 objectAtIndex:1];

  if (![(TUCallCenter *)self isSharePlayActiveForTelephonyCall:v6])
  {
    v8 = [(TUCallCenter *)self isSharePlayActiveForTelephonyCall:v9];
  }

  if ([(TUCallCenter *)self isMergeable])
  {
    v10 = [(TUCallCenter *)self displayedCalls];
    v11 = [v10 count] == 2 && !v8 && (objc_msgSend(v6, "status") == 2 || objc_msgSend(v9, "status") == 2);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEndAndAnswerAllowed
{
  v3 = [(TUCallCenter *)self incomingCall];
  v4 = [(TUCallCenter *)self audioOrVideoCallWithStatus:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(TUCallCenter *)self audioOrVideoCallWithStatus:2];
  }

  v7 = v6;

  v8 = [v3 model];
  if ([v8 supportsUnambiguousMultiPartyState])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = [v7 model];
    if ([v10 supportsUnambiguousMultiPartyState])
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      v11 = [v3 provider];
      v12 = [v7 provider];
      v9 = [v11 isEqualToCallProvider:v12] ^ 1;
    }
  }

  return v9;
}

- (BOOL)canGroupCall:(id)a3 withCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 == v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v6 callGroupUUID];
    v9 = [v7 callGroupUUID];
    if (([v8 isEqual:v9] & 1) != 0 || -[TUCallCenter isSharePlayActiveForTelephonyCall:](self, "isSharePlayActiveForTelephonyCall:", v6) || -[TUCallCenter isSharePlayActiveForTelephonyCall:](self, "isSharePlayActiveForTelephonyCall:", v7))
    {
      v10 = 0;
    }

    else
    {
      v12 = [v6 model];
      if ([v12 supportsGrouping])
      {
        v13 = [v7 model];
        if ([v13 supportsGrouping])
        {
          v14 = [v6 provider];
          v15 = [v14 identifier];
          v24 = [v7 provider];
          v16 = [v24 identifier];
          v25 = v15;
          if ([v15 isEqualToString:v16])
          {
            v17 = [(TUCallCenter *)self _callGroupCountForCall:v6 withCall:v7];
            v18 = [v6 provider];
            if (v17 <= [v18 maximumCallsPerCallGroup])
            {
              v22 = [v6 localSenderIdentity];
              v20 = [v22 handle];
              v21 = [v7 localSenderIdentity];
              [v21 handle];
              v19 = v23 = v14;
              v10 = TUObjectsAreEqualOrNil(v20, v19);

              v14 = v23;
            }

            else
            {
              v10 = 0;
            }
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }
  }

  return v10;
}

- (unint64_t)_callGroupCountForCall:(id)a3 withCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 callGroupUUID];
  if (v8)
  {
    v9 = [v6 callGroupUUID];
    v10 = [(TUCallCenter *)self callsWithGroupUUID:v9];
    v11 = [v10 count];
  }

  else
  {
    v11 = 1;
  }

  v12 = [v7 callGroupUUID];
  if (v12)
  {
    v13 = [v7 callGroupUUID];
    v14 = [(TUCallCenter *)self callsWithGroupUUID:v13];
    v15 = [v14 count];
  }

  else
  {
    v15 = 1;
  }

  return v15 + v11;
}

- (BOOL)isSharePlayActiveForTelephonyCall:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self featureFlags];
  v6 = [v5 sharePlayInCallsEnabled];

  if (v6 && ([v4 provider], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isTelephonyProvider"), v7, v8))
  {
    v9 = [v4 conversationGroupUUID];

    if (v9)
    {
      v10 = [(TUCallCenter *)self conversationManager];
      v11 = [v4 conversationGroupUUID];
      v12 = [v10 activeConversationWithGroupUUID:v11];

      if (v12)
      {
        LOBYTE(v9) = [v12 hasJoinedActivitySession];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)createSplitSessionWithDeviceMediaRouteIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self featureFlags];
  v9 = [v8 expanseEnabled];

  if (v9)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__15;
    v25 = __Block_byref_object_dispose__15;
    v26 = 0;
    v10 = [(TUCallCenter *)self conversationManager];
    v11 = [v10 activeConversations];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__TUCallCenter_createSplitSessionWithDeviceMediaRouteIdentifier_completion___block_invoke;
    v20[3] = &unk_1E7427C20;
    v20[4] = &v21;
    [v11 enumerateObjectsUsingBlock:v20];

    if (v22[5])
    {
      v12 = [[TUNearbyDeviceHandle alloc] initWithType:1 identifier:v6 name:0];
      objc_initWeak(&location, self);
      v13 = [(TUCallCenter *)self neighborhoodActivityConduit];
      v14 = [v22[5] UUID];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__TUCallCenter_createSplitSessionWithDeviceMediaRouteIdentifier_completion___block_invoke_2;
      v16[3] = &unk_1E7427C48;
      v17 = v7;
      objc_copyWeak(&v18, &location);
      [v13 inviteTVDevice:v12 toConversation:v14 completion:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = [(TUCallCenter *)self _splitSessionErrorWithCode:-100 underlyingError:0];
      (*(v7 + 2))(v7, 0, v12);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = [(TUCallCenter *)self _splitSessionErrorWithCode:-2 underlyingError:0];
    (*(v7 + 2))(v7, 0, v15);
  }
}

void __76__TUCallCenter_createSplitSessionWithDeviceMediaRouteIdentifier_completion___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 state] == 3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __76__TUCallCenter_createSplitSessionWithDeviceMediaRouteIdentifier_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained _splitSessionErrorWithCode:-200 underlyingError:v7];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[TUNearbyDeviceHandle alloc] initWithType:1 identifier:v6 name:0];
  objc_initWeak(&location, self);
  v9 = [(TUCallCenter *)self neighborhoodActivityConduit];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__TUCallCenter_disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier_completion___block_invoke;
  v11[3] = &unk_1E7427C48;
  v10 = v7;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [v9 disconnectTVDevice:v8 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __85__TUCallCenter_disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v7 = a3;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained _splitSessionErrorWithCode:-201 underlyingError:v7];

    (*(*(a1 + 32) + 16))();
  }
}

- (id)_splitSessionErrorWithCode:(int64_t)a3 underlyingError:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUSplitSessionErrorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)registerAnonymousXPCEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 registerAnonymousXPCEndpoint:v4];
}

- (void)fetchAnonymousXPCEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  [v5 fetchAnonymousXPCEndpoint:v4];
}

- (void)performRecordingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self featureFlags];
  v9 = [v8 callRecordingEnabled];

  if (v9)
  {
    v10 = [(TUCallCenter *)self callServicesInterface];
    [v10 performRecordingRequest:v6 completion:v7];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter performRecordingRequest:completion:];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUStartRecordingErrorDomain" code:0 userInfo:0];
    v7[2](v7, v10);
  }
}

- (void)performTranslationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self featureFlags];
  v9 = [v8 audioCallTranslationEnabled];

  if (v9)
  {
    v10 = [(TUCallCenter *)self callServicesInterface];
    [v10 performTranslationRequest:v6 completion:v7];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter performTranslationRequest:completion:];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUTranslationErrorDomain" code:2 userInfo:0];
    v7[2](v7, v10);
  }
}

- (void)_performSmartHoldingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self featureFlags];
  v9 = [v8 waitOnHoldEnabled];

  if (v9)
  {
    v10 = [(TUCallCenter *)self callServicesInterface];
    [v10 _performSmartHoldingRequest:v6 completion:v7];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter _performSmartHoldingRequest:completion:];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUSmartHoldingErrorDomain" code:3 userInfo:0];
    v7[2](v7, v10);
  }
}

- (void)performSmartHoldingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self featureFlags];
  v9 = [v8 waitOnHoldEnabled];

  if (v9)
  {
    v10 = [(TUCallCenter *)self callServicesInterface];
    [v10 performSmartHoldingRequest:v6 completion:v7];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter performSmartHoldingRequest:completion:];
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUSmartHoldingErrorDomain" code:3 userInfo:0];
    v7[2](v7, v10);
  }
}

- (void)performSmartHoldingRequestWithType:(int64_t)a3 forCallWithUUID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[TUSmartHoldingRequest alloc] initWithCallUUID:v9 requestType:a3];

  [(TUCallCenter *)self performSmartHoldingRequest:v10 completion:v8];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUCallCenter *)self delegateController];
  [v8 addDelegate:v7 queue:v6];
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self delegateController];
  [v5 removeDelegate:v4];
}

- (void)_handleReceivedCaptionUpdate:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self delegateController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__TUCallCenter__handleReceivedCaptionUpdate___block_invoke;
  v7[3] = &unk_1E7427C70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateDelegatesUsingBlock:v7];
}

void __45__TUCallCenter__handleReceivedCaptionUpdate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__TUCallCenter__handleReceivedCaptionUpdate___block_invoke_2;
    block[3] = &unk_1E7424FD8;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

- (void)_handleReceivedCallDTMFUpdate:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUCallCenter *)self delegateController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__TUCallCenter__handleReceivedCallDTMFUpdate_forCall___block_invoke;
  v11[3] = &unk_1E7427C98;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [v8 enumerateDelegatesUsingBlock:v11];
}

void __54__TUCallCenter__handleReceivedCallDTMFUpdate_forCall___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__TUCallCenter__handleReceivedCallDTMFUpdate_forCall___block_invoke_2;
    v10[3] = &unk_1E7425188;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = *(a1 + 48);
    dispatch_async(v6, v10);
  }
}

- (BOOL)validateIMAVPush:(id)a3
{
  v4 = a3;
  v5 = [(TUCallCenter *)self callServicesInterface];
  v6 = [v5 validateIMAVPush:v4];

  return v6;
}

void __38__TUCallCenter_fetchTUUIXPCDataSource__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Unable to fetch UIDataSource endpoint due to error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_dialWithRequest:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1956FD000, a2, OS_LOG_TYPE_FAULT, "Dial request has an unspecified originating UI type: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __34__TUCallCenter_answerWithRequest___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Encountered error while opening answer URL: %@ for call: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end