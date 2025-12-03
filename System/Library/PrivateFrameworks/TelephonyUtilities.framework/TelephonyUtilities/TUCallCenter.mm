@interface TUCallCenter
+ (BOOL)_supportsJoiningConversationWithRequest:(id)request featureFlags:(id)flags supportsConversations:(BOOL)conversations;
+ (BOOL)isSimultaneousVoiceAndDataSupportedForDialRequest:(id)request;
+ (BOOL)supportsJoiningConversationWithRequest:(id)request;
+ (TUCallCenter)callCenterWithQueue:(id)queue server:(id)server shouldRegister:(BOOL)register featureFlags:(id)flags;
+ (id)sharedContactStore;
+ (id)sharedInstanceWithQueue:(id)queue server:(id)server shouldRegister:(BOOL)register;
- (BOOL)_canDialWithRequest:(id)request shouldUseRelay:(BOOL *)relay;
- (BOOL)_existingCallsAllowDialRequest:(id)request allowVoiceWithData:(BOOL)data;
- (BOOL)_isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:(int)availability isProviderAvailable:(BOOL)available isRelayAllowed:(BOOL)allowed isEmergency:(BOOL)emergency supportsBasebandCalling:(BOOL)calling shouldUseRelay:(BOOL *)relay isTelephonyProvider:(BOOL)provider deviceType:(int64_t)self0;
- (BOOL)_isEmergencyDialRequest:(id)request;
- (BOOL)_shouldRelayJoinConversationRequest:(id)request;
- (BOOL)allCallsPassTest:(id)test;
- (BOOL)anyCallIsEndpointOnCurrentDevice;
- (BOOL)anyCallIsHostedOnCurrentDevice;
- (BOOL)anyCallPassesTest:(id)test;
- (BOOL)autoPunchOutBehaviorRequiredForFrontmostCall;
- (BOOL)canGroupCall:(id)call withCall:(id)withCall;
- (BOOL)canMergeCalls;
- (BOOL)continueHandoffForConversationWithEligibility:(id)eligibility;
- (BOOL)existingCallsHaveMultipleProviders;
- (BOOL)handleWiredHeadsetFlashButtonForBargeCalls;
- (BOOL)hasCurrentAudioCalls;
- (BOOL)hasCurrentCalls;
- (BOOL)hasCurrentVideoCalls;
- (BOOL)isAddCallAllowed;
- (BOOL)isDirectCallingCurrentlyAvailableForProvider:(id)provider isVideo:(BOOL)video;
- (BOOL)isEndAndAnswerAllowed;
- (BOOL)isHoldAllowed;
- (BOOL)isHoldAndAnswerAllowed;
- (BOOL)isMergeable;
- (BOOL)isRelayCallingSupportedForProvider:(id)provider isVideo:(BOOL)video;
- (BOOL)isSendToVoicemailAllowed;
- (BOOL)isSharePlayActiveForTelephonyCall:(id)call;
- (BOOL)isSwappable;
- (BOOL)isTakingCallsPrivateAllowed;
- (BOOL)launchAppForJoinRequest:(id)request;
- (BOOL)shouldPullRelayingCalls;
- (BOOL)validateIMAVPush:(id)push;
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
- (TUCallCenter)initWithQueue:(id)queue;
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
- (id)_dialWithRequest:(id)request completion:(id)completion;
- (id)_splitSessionErrorWithCode:(int64_t)code underlyingError:(id)error;
- (id)activeConversationForCall:(id)call;
- (id)bargeCallWithUniqueProxyIdentifier:(id)identifier;
- (id)bargeCallsPassingTest:(id)test;
- (id)callForConversationWithGroupUUID:(id)d;
- (id)callMatchingConversationRequest:(id)request;
- (id)callPassingTest:(id)test;
- (id)callPassingTest:(id)test sortedUsingComparator:(id)comparator;
- (id)callServicesClientCapabilities;
- (id)callWithCallUUID:(id)d;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (id)callsPassingTest:(id)test;
- (id)callsWithGroupUUID:(id)d;
- (id)conferenceCall;
- (id)customGreetingForAccountUUID:(id)d;
- (id)defaultGreeting;
- (id)dialWithRequest:(id)request;
- (id)displayedCall;
- (id)displayedCallFromCalls:(id)calls;
- (id)fetchCurrentCallUpdates;
- (id)frontmostAudioOrVideoCall;
- (id)frontmostCall;
- (id)getCurrentCallsToDisconnect;
- (id)joinConversationWithConversationRequest:(id)request;
- (id)lastDaemonConnectTime;
- (id)resolvedIncomingCall;
- (unint64_t)_callGroupCountForCall:(id)call withCall:(id)withCall;
- (unint64_t)callCountOnDefaultPairedDevice;
- (unint64_t)countOfCallsPassingTest:(id)test;
- (unint64_t)currentAudioAndVideoCallCount;
- (unint64_t)currentCallCount;
- (unint64_t)currentVideoCallCount;
- (void)_handleReceivedCallDTMFUpdate:(id)update forCall:(id)call;
- (void)_handleReceivedCaptionUpdate:(id)update;
- (void)_performSmartHoldingRequest:(id)request completion:(id)completion;
- (void)_preflightDisconnectForCalls:(id)calls withCompletion:(id)completion;
- (void)activateInCallUIWithActivityContinuationIdentifier:(id)identifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)answerCall:(id)call;
- (void)answerCall:(id)call withSourceIdentifier:(id)identifier;
- (void)answerCallWithHoldMusic:(id)music;
- (void)answerOrJoinCall:(id)call;
- (void)answerWithRequest:(id)request;
- (void)applicationWillLaunchForStartCallInteraction:(id)interaction;
- (void)continueHandoffEligibleConversation;
- (void)createSplitSessionWithDeviceMediaRouteIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)deleteCustomGreetingForAccountUUID:(id)d;
- (void)disconnectAllCalls;
- (void)disconnectAllCallsWithNoPreflight;
- (void)disconnectCall:(id)call withReason:(int)reason;
- (void)disconnectCurrentCall;
- (void)disconnectCurrentCallAndActivateHeld;
- (void)disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier:(id)identifier completion:(id)completion;
- (void)endActiveAndAnswerCall:(id)call;
- (void)endActiveAndAnswerWithRequest:(id)request;
- (void)endActiveOrHeldAndAnswerCall:(id)call;
- (void)endActiveOrHeldAndAnswerWithRequest:(id)request;
- (void)endHeldAndAnswerCall:(id)call;
- (void)endHeldAndAnswerWithRequest:(id)request;
- (void)enteredBackgroundForAllCalls;
- (void)enteredForegroundForCall:(id)call;
- (void)fetchAnonymousXPCEndpoint:(id)endpoint;
- (void)fetchCurrentCalls;
- (void)fetchTUUIXPCDataSource;
- (void)groupCall:(id)call withOtherCall:(id)otherCall;
- (void)handleActionForWiredHeadsetMiddleButtonLongPress;
- (void)handleHeadsetButtonPressForActiveCalls;
- (void)handleMediaRemoteCommand:(unsigned int)command completion:(id)completion;
- (void)handleMediaRemoteCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion;
- (void)handleRedialCommandWhileScreening:(id)screening;
- (void)holdActiveAndAnswerCall:(id)call;
- (void)holdActiveAndAnswerWithRequest:(id)request;
- (void)holdAndAnswerIfNeeded:(id)needed;
- (void)holdCall:(id)call;
- (void)joinConversationWithRequest:(id)request;
- (void)launchAppForDialRequest:(id)request completion:(id)completion;
- (void)performRecordingRequest:(id)request completion:(id)completion;
- (void)performSmartHoldingRequest:(id)request completion:(id)completion;
- (void)performSmartHoldingRequestWithType:(int64_t)type forCallWithUUID:(id)d completion:(id)completion;
- (void)performTranslationRequest:(id)request completion:(id)completion;
- (void)pickRouteForRapportDeviceWithMediaSystemIdentifier:(id)identifier effectiveIdentifier:(id)effectiveIdentifier;
- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)info completion:(id)completion;
- (void)pullHostedCallsFromPairedHostDevice;
- (void)pullPersistedChannel:(id)channel;
- (void)pullRelayingCallsFromClient;
- (void)pullRelayingGFTCallsFromClientIfNecessary;
- (void)pushHostedCallsToDestination:(id)destination;
- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)identifier;
- (void)registerAnonymousXPCEndpoint:(id)endpoint;
- (void)registerWithCompletionHandler:(id)handler;
- (void)removeDelegate:(id)delegate;
- (void)reportLocalPreviewStoppedForCall:(id)call;
- (void)saveCustomGreeting:(id)greeting forAccountUUID:(id)d;
- (void)screenWithRequest:(id)request;
- (void)sendFieldModeDigits:(id)digits forProvider:(id)provider;
- (void)sendReceptionistReply:(id)reply;
- (void)setLiveVoicemailUnavailableReason:(int64_t)reason forCall:(id)call;
- (void)startReceptionistReply;
- (void)swapCalls;
- (void)ungroupCall:(id)call;
- (void)unholdCall:(id)call;
- (void)updateCall:(id)call withAnswerRequest:(id)request;
- (void)willEnterBackgroundForAllCalls;
@end

@implementation TUCallCenter

- (unint64_t)currentCallCount
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentCallCount = [callContainer currentCallCount];

  return currentCallCount;
}

- (TUCallContainerPrivate)callContainer
{
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  callContainer = [callServicesInterface callContainer];

  return callContainer;
}

- (TUCall)activeVideoCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  activeVideoCall = [callContainer activeVideoCall];

  return activeVideoCall;
}

- (void)fetchTUUIXPCDataSource
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "register for UI data source", buf, 2u);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__TUCallCenter_fetchTUUIXPCDataSource__block_invoke;
  v5[3] = &unk_1E74279D0;
  v5[4] = self;
  [callServicesInterface fetchAnonymousXPCEndpoint:v5];
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
  callContainer = [(TUCallCenter *)self callContainer];
  displayedCalls = [callContainer displayedCalls];

  return displayedCalls;
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
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  localRouteController = [callServicesInterface localRouteController];

  if (!localRouteController)
  {
    v5 = [TURouteController alloc];
    callServicesInterface2 = [(TUCallCenter *)self callServicesInterface];
    queue = [(TUCallCenter *)self queue];
    v8 = [(TURouteController *)v5 initWithActionsDelegate:callServicesInterface2 serialQueue:queue];
    callServicesInterface3 = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface3 setLocalRouteController:v8];
  }

  callServicesInterface4 = [(TUCallCenter *)self callServicesInterface];
  localRouteController2 = [callServicesInterface4 localRouteController];

  return localRouteController2;
}

- (TUAudioDeviceController)audioDeviceController
{
  audioDeviceController = self->_audioDeviceController;
  if (!audioDeviceController)
  {
    v4 = [TUAudioDeviceController alloc];
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    queue = [(TUCallCenter *)self queue];
    v7 = [(TUAudioDeviceController *)v4 initWithActionsDelegate:callServicesInterface serialQueue:queue];
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
    tu_contactStore = [MEMORY[0x1E695CE18] tu_contactStore];
    v5 = self->_contactStore;
    self->_contactStore = tu_contactStore;

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
    queue = [(TUCallCenter *)self queue];
    v6 = [(TUVideoDeviceController *)v4 initWithSerialQueue:queue];
    v7 = self->_videoDeviceController;
    self->_videoDeviceController = v6;

    videoDeviceController = self->_videoDeviceController;
  }

  return videoDeviceController;
}

- (NSArray)currentCalls
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentCalls = [callContainer currentCalls];

  return currentCalls;
}

- (TUCall)incomingVideoCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  incomingVideoCall = [callContainer incomingVideoCall];

  return incomingVideoCall;
}

- (id)frontmostCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  frontmostCall = [callContainer frontmostCall];

  return frontmostCall;
}

- (TUCall)currentVideoCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentVideoCall = [callContainer currentVideoCall];

  return currentVideoCall;
}

- (NSArray)currentAudioAndVideoCalls
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentAudioAndVideoCalls = [callContainer currentAudioAndVideoCalls];

  return currentAudioAndVideoCalls;
}

- (NSArray)currentCallGroups
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentCallGroups = [callContainer currentCallGroups];

  return currentCallGroups;
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

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface fetchCurrentCalls];
}

- (TUCallFilterController)callFilterController
{
  callFilterController = self->_callFilterController;
  if (!callFilterController)
  {
    v4 = [TUCallFilterController alloc];
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    queue = [(TUCallCenter *)self queue];
    v7 = [(TUCallFilterController *)v4 initWithActionsDelegate:callServicesInterface serialQueue:queue];
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
  callContainer = [(TUCallCenter *)self callContainer];
  conferenceParticipantCalls = [callContainer conferenceParticipantCalls];

  return conferenceParticipantCalls;
}

- (id)resolvedIncomingCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  resolvedIncomingCall = [callContainer resolvedIncomingCall];

  return resolvedIncomingCall;
}

- (unint64_t)currentAudioAndVideoCallCount
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentAudioAndVideoCallCount = [callContainer currentAudioAndVideoCallCount];

  return currentAudioAndVideoCallCount;
}

- (TUCall)incomingCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  incomingCall = [callContainer incomingCall];

  return incomingCall;
}

- (TUCall)pendingUpgradeCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  pendingUpgradeCall = [callContainer pendingUpgradeCall];

  return pendingUpgradeCall;
}

- (TUNeighborhoodActivityConduit)neighborhoodActivityConduit
{
  neighborhoodActivityConduit = self->_neighborhoodActivityConduit;
  if (!neighborhoodActivityConduit)
  {
    v4 = [TUNeighborhoodActivityConduit alloc];
    conversationManager = [(TUCallCenter *)self conversationManager];
    v6 = [(TUNeighborhoodActivityConduit *)v4 initWithConversationManager:conversationManager];
    v7 = self->_neighborhoodActivityConduit;
    self->_neighborhoodActivityConduit = v6;

    neighborhoodActivityConduit = self->_neighborhoodActivityConduit;
  }

  return neighborhoodActivityConduit;
}

- (BOOL)hasCurrentCalls
{
  callContainer = [(TUCallCenter *)self callContainer];
  hasCurrentCalls = [callContainer hasCurrentCalls];

  return hasCurrentCalls;
}

- (NSArray)bargeCalls
{
  callContainer = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bargeCalls = [callContainer bargeCalls];
  }

  else
  {
    bargeCalls = 0;
  }

  if (bargeCalls)
  {
    v4 = bargeCalls;
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
  callContainer = [(TUCallCenter *)self callContainer];
  hasCurrentVideoCalls = [callContainer hasCurrentVideoCalls];

  return hasCurrentVideoCalls;
}

- (TUCall)frontmostBargeCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    frontmostBargeCall = [callContainer frontmostBargeCall];
  }

  else
  {
    frontmostBargeCall = 0;
  }

  return frontmostBargeCall;
}

- (id)frontmostAudioOrVideoCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  frontmostAudioOrVideoCall = [callContainer frontmostAudioOrVideoCall];

  return frontmostAudioOrVideoCall;
}

- (BOOL)hasCurrentAudioCalls
{
  callContainer = [(TUCallCenter *)self callContainer];
  hasCurrentAudioCalls = [callContainer hasCurrentAudioCalls];

  return hasCurrentAudioCalls;
}

- (NSArray)displayedAudioAndVideoCalls
{
  callContainer = [(TUCallCenter *)self callContainer];
  displayedAudioAndVideoCalls = [callContainer displayedAudioAndVideoCalls];

  return displayedAudioAndVideoCalls;
}

- (TUCall)screeningCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  screeningCall = [callContainer screeningCall];

  return screeningCall;
}

- (unint64_t)currentVideoCallCount
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentVideoCallCount = [callContainer currentVideoCallCount];

  return currentVideoCallCount;
}

- (BOOL)autoPunchOutBehaviorRequiredForFrontmostCall
{
  currentAudioAndVideoCalls = [(TUCallCenter *)self currentAudioAndVideoCalls];

  if (!currentAudioAndVideoCalls)
  {
    return 0;
  }

  frontmostAudioOrVideoCall = [(TUCallCenter *)self frontmostAudioOrVideoCall];

  if (!frontmostAudioOrVideoCall)
  {
    return 0;
  }

  frontmostAudioOrVideoCall2 = [(TUCallCenter *)self frontmostAudioOrVideoCall];
  provider = [frontmostAudioOrVideoCall2 provider];

  currentAudioAndVideoCalls2 = [(TUCallCenter *)self currentAudioAndVideoCalls];
  v8 = [currentAudioAndVideoCalls2 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      currentAudioAndVideoCalls3 = [(TUCallCenter *)self currentAudioAndVideoCalls];
      v11 = [currentAudioAndVideoCalls3 objectAtIndexedSubscript:v9];

      provider2 = [v11 provider];
      v13 = [provider2 isEqualToCallProvider:provider];

      if ((v13 & 1) == 0)
      {
        break;
      }

      ++v9;
      currentAudioAndVideoCalls4 = [(TUCallCenter *)self currentAudioAndVideoCalls];
      v15 = [currentAudioAndVideoCalls4 count];

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
    isSystemProvider = [provider isSystemProvider];
    frontmostAudioOrVideoCall3 = [(TUCallCenter *)self frontmostAudioOrVideoCall];
    v18 = frontmostAudioOrVideoCall3;
    if (frontmostAudioOrVideoCall3 && ([frontmostAudioOrVideoCall3 launchInBackground] & 1) != 0)
    {
      v19 = 0;
    }

    else
    {
      v20 = isSystemProvider ^ 1;
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
  callContainer = [(TUCallCenter *)self callContainer];
  incomingCalls = [callContainer incomingCalls];

  return incomingCalls;
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
  callContainer = [(TUCallCenter *)self callContainer];
  currentVideoCalls = [callContainer currentVideoCalls];

  return currentVideoCalls;
}

- (NSArray)callsOnDefaultPairedDevice
{
  callContainer = [(TUCallCenter *)self callContainer];
  callsOnDefaultPairedDevice = [callContainer callsOnDefaultPairedDevice];

  return callsOnDefaultPairedDevice;
}

- (BOOL)isAddCallAllowed
{
  currentCallGroups = [(TUCallCenter *)self currentCallGroups];
  firstObject = [currentCallGroups firstObject];
  calls = [firstObject calls];
  firstObject2 = [calls firstObject];

  if ([currentCallGroups count] == 1 && objc_msgSend(firstObject2, "status") != 3)
  {
    provider = [firstObject2 provider];
    maximumCallGroups = [provider maximumCallGroups];
    if (maximumCallGroups > 1 || ([firstObject2 model], calls = objc_claimAutoreleasedReturnValue(), objc_msgSend(calls, "supportsHolding")))
    {
      model = [firstObject2 model];
      if ([model supportsAddCall])
      {
        v6 = [firstObject2 isEmergency] ^ 1;

        if (maximumCallGroups >= 2)
        {
          goto LABEL_13;
        }
      }

      else
      {

        LOBYTE(v6) = 0;
        if (maximumCallGroups > 1)
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
  incomingCall = [(TUCallCenter *)self incomingCall];
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
    v45 = incomingCall;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "isHoldAndAnswerAllowed: incomingCall: %@", buf, 0xCu);
  }

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v7;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "isHoldAndAnswerAllowed: currentCall: %@", buf, 0xCu);
  }

  provider = [(__CFString *)v7 provider];
  identifier = [provider identifier];
  provider2 = [(__CFString *)incomingCall provider];
  identifier2 = [provider2 identifier];
  v14 = [identifier isEqualToString:identifier2];

  if (v14)
  {
    provider3 = [(__CFString *)v7 provider];
    if ([provider3 maximumCallGroups] <= 1)
    {
      v16 = [(__CFString *)v7 isHostedOnCurrentDevice]^ 1;
    }

    else
    {
      v16 = 1;
    }

    supportsHolding = v16;
  }

  else
  {
    provider3 = [(__CFString *)v7 model];
    supportsHolding = [provider3 supportsHolding];
  }

  isHostedOnCurrentDevice = [(__CFString *)incomingCall isHostedOnCurrentDevice];
  isHostedOnCurrentDevice2 = [(__CFString *)v7 isHostedOnCurrentDevice];
  if (([(__CFString *)v7 supportsSimultaneousVoiceAndData]& 1) != 0)
  {
    isUsingBaseband = 0;
    goto LABEL_25;
  }

  provider4 = [(__CFString *)incomingCall provider];
  if ([provider4 isTelephonyProvider] && -[__CFString isUsingBaseband](incomingCall, "isUsingBaseband"))
  {
    provider5 = [(__CFString *)v7 provider];
    v21 = 1;
    isUsingBaseband = 1;
    if (![provider5 isTelephonyProvider])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
  }

  provider6 = [(__CFString *)incomingCall provider];
  if (([provider6 isTelephonyProvider] & 1) == 0)
  {
    provider7 = [(__CFString *)v7 provider];
    if ([provider7 isTelephonyProvider])
    {
      isUsingBaseband = [(__CFString *)v7 isUsingBaseband];

      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {

      isUsingBaseband = 0;
      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  isUsingBaseband = 0;
  if (v21)
  {
LABEL_23:
  }

LABEL_24:

LABEL_25:
  v23 = isHostedOnCurrentDevice ^ isHostedOnCurrentDevice2;
  v24 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_264];
  v25 = [(TUCallCenter *)self callWithStatus:3];

  isScreening = [(__CFString *)v7 isScreening];
  v27 = [(TUCallCenter *)self isSharePlayActiveForTelephonyCall:v7];
  v28 = TUDefaultLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"NO";
    if (supportsHolding)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    if (isUsingBaseband)
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
    if (isScreening)
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
    v37 = incomingCall == 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v37;

  v39 = *MEMORY[0x1E69E9840];
  return ((v38 | supportsHolding ^ 1 | isUsingBaseband | v23 | v24 | v36 | isScreening | v27) & 1) == 0;
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
  callContainer = [(TUCallCenter *)self callContainer];
  _allCalls = [callContainer _allCalls];

  return _allCalls;
}

- (id)bargeCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callContainer = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [callContainer bargeCallWithUniqueProxyIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bargeCallsPassingTest:(id)test
{
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [callContainer bargeCallsPassingTest:testCopy];
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
  frontmostBargeCall = [(TUCallCenter *)self frontmostBargeCall];
  if (![frontmostBargeCall accessoryButtonEventsEnabled])
  {
    goto LABEL_7;
  }

  if ([frontmostBargeCall transmissionMode] == 2)
  {
    goto LABEL_3;
  }

  if (!frontmostBargeCall)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if ([frontmostBargeCall isSendingTransmission])
  {
    v4 = 1;
    [(TUCallCenter *)self stopTransmissionForBargeCall:frontmostBargeCall sourceIsHandsfreeAccessory:1];
    goto LABEL_8;
  }

  if (([frontmostBargeCall isOnHold] & 1) != 0 || objc_msgSend(frontmostBargeCall, "isReceivingTransmission") && !objc_msgSend(frontmostBargeCall, "transmissionMode"))
  {
    v4 = 1;
    [(TUCallCenter *)self startTransmissionForBargeCall:frontmostBargeCall sourceIsHandsfreeAccessory:1];
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

+ (id)sharedInstanceWithQueue:(id)queue server:(id)server shouldRegister:(BOOL)register
{
  queueCopy = queue;
  serverCopy = server;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__TUCallCenter_sharedInstanceWithQueue_server_shouldRegister___block_invoke;
  v16[3] = &unk_1E74279F8;
  v18 = serverCopy;
  selfCopy = self;
  v17 = queueCopy;
  registerCopy = register;
  v10 = sharedInstanceWithQueue_server_shouldRegister__pred;
  v11 = serverCopy;
  v12 = queueCopy;
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

+ (TUCallCenter)callCenterWithQueue:(id)queue server:(id)server shouldRegister:(BOOL)register featureFlags:(id)flags
{
  serverCopy = server;
  flagsCopy = flags;
  queueCopy = queue;
  v13 = [[self alloc] initWithQueue:queueCopy featureFlags:flagsCopy];

  callServicesInterface = [v13 callServicesInterface];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __71__TUCallCenter_callCenterWithQueue_server_shouldRegister_featureFlags___block_invoke;
  v20[3] = &unk_1E7425B78;
  v15 = v13;
  v21 = v15;
  v22 = serverCopy;
  registerCopy = register;
  v16 = serverCopy;
  [callServicesInterface performBlockOnQueue:v20];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUCallCenter.m" lineNumber:292 description:{@"%s is not available. Use a designated initializer instead.", "-[TUCallCenter init]"}];

  return 0;
}

- (TUCallCenter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [(TUCallCenter *)self initWithQueue:queueCopy featureFlags:v5];

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
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  v5 = [callServicesInterface debugDescription];
  [v3 appendFormat:@"Call services interface: %@\n", v5];

  if (self->_audioDeviceController)
  {
    audioDeviceController = [(TUCallCenter *)self audioDeviceController];
    v7 = [audioDeviceController debugDescription];
    [v3 appendFormat:@"Audio device controller: %@\n", v7];
  }

  providerManager = [(TUCallCenter *)self providerManager];
  v9 = [providerManager debugDescription];
  [v3 appendFormat:@"Provider manager: %@\n", v9];

  return v3;
}

- (void)registerWithCompletionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "for %@", buf, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface requestCurrentStateWithCompletionHandler:handlerCopy];

  callServicesInterface2 = [(TUCallCenter *)self callServicesInterface];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__TUCallCenter_registerWithCompletionHandler___block_invoke;
  v9[3] = &unk_1E7424950;
  v9[4] = self;
  [callServicesInterface2 performBlockOnQueue:v9];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "for %@", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(FBSDisplayLayoutMonitor *)self->_monitor invalidate];
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __23__TUCallCenter_dealloc__block_invoke;
  v9[3] = &unk_1E7424950;
  v10 = callServicesInterface;
  v6 = callServicesInterface;
  [v6 performBlockOnQueue:v9];

  v8.receiver = self;
  v8.super_class = TUCallCenter;
  [(TUCallCenter *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)fetchCurrentCallUpdates
{
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  fetchCurrentCallUpdates = [callServicesInterface fetchCurrentCallUpdates];

  return fetchCurrentCallUpdates;
}

- (void)screenWithRequest:(id)request
{
  requestCopy = request;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface screenWithRequest:requestCopy];
}

- (void)sendReceptionistReply:(id)reply
{
  replyCopy = reply;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface sendReceptionistReply:replyCopy];
}

- (void)startReceptionistReply
{
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface startReceptionistReply];
}

- (void)saveCustomGreeting:(id)greeting forAccountUUID:(id)d
{
  dCopy = d;
  greetingCopy = greeting;
  v9 = [[TUSandboxExtendedURL alloc] initWithURL:greetingCopy withExtensionType:0];

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface saveCustomGreeting:v9 forAccountUUID:dCopy];
}

- (id)customGreetingForAccountUUID:(id)d
{
  dCopy = d;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  v6 = [callServicesInterface customGreetingForAccountUUID:dCopy];

  return v6;
}

- (void)deleteCustomGreetingForAccountUUID:(id)d
{
  dCopy = d;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface deleteCustomGreetingForAccountUUID:dCopy];
}

- (id)defaultGreeting
{
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  defaultGreeting = [callServicesInterface defaultGreeting];

  return defaultGreeting;
}

- (id)callServicesClientCapabilities
{
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  callServicesClientCapabilities = [callServicesInterface callServicesClientCapabilities];

  return callServicesClientCapabilities;
}

- (TURouteController)pairedHostDeviceRouteController
{
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  pairedHostDeviceRouteController = [callServicesInterface pairedHostDeviceRouteController];

  if (!pairedHostDeviceRouteController)
  {
    v5 = [TURouteController alloc];
    callServicesInterface2 = [(TUCallCenter *)self callServicesInterface];
    queue = [(TUCallCenter *)self queue];
    v8 = [(TURouteController *)v5 initWithActionsDelegate:callServicesInterface2 serialQueue:queue];
    callServicesInterface3 = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface3 setPairedHostDeviceRouteController:v8];
  }

  callServicesInterface4 = [(TUCallCenter *)self callServicesInterface];
  pairedHostDeviceRouteController2 = [callServicesInterface4 pairedHostDeviceRouteController];

  return pairedHostDeviceRouteController2;
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
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  lastDaemonConnectTime = [callServicesInterface lastDaemonConnectTime];

  return lastDaemonConnectTime;
}

- (BOOL)shouldPullRelayingCalls
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  currentAudioAndVideoCalls = [(TUCallCenter *)self currentAudioAndVideoCalls];
  v3 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(currentAudioAndVideoCalls);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isHostedOnCurrentDevice] && (objc_msgSend(v8, "isEndpointOnCurrentDevice") & 1) == 0)
        {
          v5 |= [v8 status] < 5;
        }
      }

      v4 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)isRelayCallingSupportedForProvider:(id)provider isVideo:(BOOL)video
{
  videoCopy = video;
  v31 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if ([(__CFString *)providerCopy isTelephonyProvider])
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

  if (([(__CFString *)providerCopy isFaceTimeProvider]& 1) != 0 || [(__CFString *)providerCopy isTinCanProvider])
  {
    if (videoCopy)
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

    if ([(__CFString *)providerCopy isFaceTimeProvider])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    if (videoCopy)
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
    v26 = providerCopy;
    if (videoCopy)
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

- (BOOL)isDirectCallingCurrentlyAvailableForProvider:(id)provider isVideo:(BOOL)video
{
  videoCopy = video;
  providerCopy = provider;
  if ([providerCopy isTelephonyProvider])
  {
    SuperboxProvider = +[TUCallCapabilities isDirectTelephonyCallingCurrentlyAvailable];
  }

  else if ([providerCopy isFaceTimeProvider])
  {
    if (videoCopy)
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
    if (![providerCopy isSuperboxProvider])
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
  callContainer = [(TUCallCenter *)self callContainer];
  callsHostedElsewhere = [callContainer callsHostedElsewhere];

  return callsHostedElsewhere;
}

- (NSArray)callsWithAnEndpointElsewhere
{
  callContainer = [(TUCallCenter *)self callContainer];
  callsWithAnEndpointElsewhere = [callContainer callsWithAnEndpointElsewhere];

  return callsWithAnEndpointElsewhere;
}

- (NSArray)callsHostedOrAnEndpointElsewhere
{
  callContainer = [(TUCallCenter *)self callContainer];
  callsHostedOrAnEndpointElsewhere = [callContainer callsHostedOrAnEndpointElsewhere];

  return callsHostedOrAnEndpointElsewhere;
}

- (id)callsPassingTest:(id)test
{
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer callsPassingTest:testCopy];

  return v6;
}

- (id)callsWithGroupUUID:(id)d
{
  dCopy = d;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer callsWithGroupUUID:dCopy];

  return v6;
}

- (id)displayedCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  displayedCall = [callContainer displayedCall];

  return displayedCall;
}

- (id)conferenceCall
{
  callContainer = [(TUCallCenter *)self callContainer];
  conferenceCall = [callContainer conferenceCall];

  return conferenceCall;
}

- (id)callPassingTest:(id)test
{
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer callPassingTest:testCopy];

  return v6;
}

- (id)callPassingTest:(id)test sortedUsingComparator:(id)comparator
{
  comparatorCopy = comparator;
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  v9 = [callContainer callPassingTest:testCopy sortedUsingComparator:comparatorCopy];

  return v9;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer callWithUniqueProxyIdentifier:identifierCopy];

  return v6;
}

- (id)callWithCallUUID:(id)d
{
  dCopy = d;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer callWithCallUUID:dCopy];

  return v6;
}

- (id)displayedCallFromCalls:(id)calls
{
  callsCopy = calls;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer displayedCallFromCalls:callsCopy];

  return v6;
}

- (unint64_t)callCountOnDefaultPairedDevice
{
  callContainer = [(TUCallCenter *)self callContainer];
  callCountOnDefaultPairedDevice = [callContainer callCountOnDefaultPairedDevice];

  return callCountOnDefaultPairedDevice;
}

- (unint64_t)countOfCallsPassingTest:(id)test
{
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer countOfCallsPassingTest:testCopy];

  return v6;
}

- (BOOL)anyCallIsHostedOnCurrentDevice
{
  callContainer = [(TUCallCenter *)self callContainer];
  anyCallIsHostedOnCurrentDevice = [callContainer anyCallIsHostedOnCurrentDevice];

  return anyCallIsHostedOnCurrentDevice;
}

- (BOOL)anyCallIsEndpointOnCurrentDevice
{
  callContainer = [(TUCallCenter *)self callContainer];
  anyCallIsEndpointOnCurrentDevice = [callContainer anyCallIsEndpointOnCurrentDevice];

  return anyCallIsEndpointOnCurrentDevice;
}

- (BOOL)existingCallsHaveMultipleProviders
{
  callContainer = [(TUCallCenter *)self callContainer];
  existingCallsHaveMultipleProviders = [callContainer existingCallsHaveMultipleProviders];

  return existingCallsHaveMultipleProviders;
}

- (BOOL)anyCallPassesTest:(id)test
{
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer anyCallPassesTest:testCopy];

  return v6;
}

- (BOOL)allCallsPassTest:(id)test
{
  testCopy = test;
  callContainer = [(TUCallCenter *)self callContainer];
  v6 = [callContainer allCallsPassTest:testCopy];

  return v6;
}

- (NSArray)currentAudioAndVideoCallGroups
{
  callContainer = [(TUCallCenter *)self callContainer];
  currentAudioAndVideoCallGroups = [callContainer currentAudioAndVideoCallGroups];

  return currentAudioAndVideoCallGroups;
}

- (NSArray)callGroupsOnDefaultPairedDevice
{
  callContainer = [(TUCallCenter *)self callContainer];
  callGroupsOnDefaultPairedDevice = [callContainer callGroupsOnDefaultPairedDevice];

  return callGroupsOnDefaultPairedDevice;
}

- (BOOL)_existingCallsAllowDialRequest:(id)request allowVoiceWithData:(BOOL)data
{
  dataCopy = data;
  v47 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_213];
  provider = [requestCopy provider];
  if ([provider isTelephonyProvider])
  {
    handle = [requestCopy handle];
    value = [handle value];
    LODWORD(v30) = [value destinationIdIsCallControlCode] ^ 1;
  }

  else
  {
    LODWORD(v30) = 1;
  }

  if ([requestCopy isVideo])
  {
    v11 = 0;
  }

  else
  {
    currentCallGroups = [(TUCallCenter *)self currentCallGroups];
    v11 = [currentCallGroups count] > 1;
  }

  v13 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_215, v30];
  v32 = v11;
  v14 = v13 && [requestCopy dialType] == 2;
  v15 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_217];
  v16 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_219];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __66__TUCallCenter__existingCallsAllowDialRequest_allowVoiceWithData___block_invoke_5;
  v33[3] = &unk_1E7425900;
  v17 = requestCopy;
  v34 = v17;
  provider3 = [(TUCallCenter *)self anyCallPassesTest:v33];
  v19 = TUDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    [v17 provider];
    v21 = v20 = v7;
    isTelephonyProvider = [v21 isTelephonyProvider];
    *buf = 67110144;
    v36 = provider3;
    v37 = 1024;
    v38 = dataCopy;
    v39 = 1024;
    v40 = v16;
    v41 = 1024;
    v42 = v15;
    v43 = 1024;
    v44 = isTelephonyProvider;
    _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "isVideoUpgrade: %d, allowVoiceWithData: %d, nonTelephonyCallExists: %d, telephonyBasebandCallExists: %d, dialRequest.provider.isTelephonyProvider: %d", buf, 0x20u);

    v7 = v20;
  }

  if ((provider3 | dataCopy))
  {
    goto LABEL_13;
  }

  if (!v16)
  {
    if (!v15)
    {
LABEL_13:
      isTelephonyProvider2 = 0;
      goto LABEL_21;
    }

LABEL_19:
    provider2 = [v17 provider];
    isTelephonyProvider2 = [provider2 isTelephonyProvider] ^ 1;

    if (!v16)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  provider3 = [v17 provider];
  isTelephonyProvider2 = [provider3 isTelephonyProvider];
  if ((isTelephonyProvider2 & 1) == 0 && v15)
  {
    goto LABEL_19;
  }

LABEL_20:

LABEL_21:
  isSOS = [v17 isSOS];
  v26 = [(TUCallCenter *)self anyCallPassesTest:&__block_literal_global_222];
  v27 = TUDefaultLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110400;
    v36 = isSOS;
    v37 = 1024;
    v38 = v7 & v31;
    v39 = 1024;
    v40 = v32;
    v41 = 1024;
    v42 = v14;
    v43 = 1024;
    v44 = isTelephonyProvider2;
    v45 = 1024;
    v46 = v26;
    _os_log_impl(&dword_1956FD000, v27, OS_LOG_TYPE_DEFAULT, "isOutgoingCallSOS: %d outgoingCallCreatesMultipleSendingCalls: %d outgoingCallBreaksCallGroupLimit: %d outgoingCallCreatesMultipleVoicemailCalls: %d outgoingCallMixesVoiceWithData: %d emergencyCallExists: %d", buf, 0x26u);
  }

  if (((isSOS | v32 | v7 & v31 | v14) & 1) == 0)
  {
    LOBYTE(isSOS) = (isTelephonyProvider2 | v26) ^ 1;
  }

  v28 = *MEMORY[0x1E69E9840];
  return isSOS & 1;
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

- (BOOL)_isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:(int)availability isProviderAvailable:(BOOL)available isRelayAllowed:(BOOL)allowed isEmergency:(BOOL)emergency supportsBasebandCalling:(BOOL)calling shouldUseRelay:(BOOL *)relay isTelephonyProvider:(BOOL)provider deviceType:(int64_t)self0
{
  callingCopy = calling;
  emergencyCopy = emergency;
  allowedCopy = allowed;
  availableCopy = available;
  v55 = *MEMORY[0x1E69E9840];
  v16 = TUDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (availableCopy)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    if (allowedCopy)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v35 = v18;
    v36 = v17;
    if (emergencyCopy)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    if (callingCopy)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    [(TUCallCenter *)self callsHostedElsewhere:v20];
    v21 = v37 = callingCopy;
    v22 = [v21 count];
    *buf = 67110914;
    if (provider)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    availabilityCopy = availability;
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
    typeCopy = type;
    _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "relayCallingAvailability: %d isProviderAvailable: %@ isRelayAllowed: %@ isEmergency: %@ supportsBasebandCalling: %@, callsHostedElsewhere count: %d, isTelephonyProvider: %@ deviceType: %ld", buf, 0x4Au);

    callingCopy = v37;
  }

  callsHostedElsewhere = [(TUCallCenter *)self callsHostedElsewhere];
  if ([callsHostedElsewhere count])
  {
    v25 = allowedCopy;
  }

  else
  {
    v25 = 0;
  }

  v27 = type != 4 && type != 1;
  if (!emergencyCopy)
  {
    v27 = 0;
  }

  v28 = availability == 2 && allowedCopy;
  v29 = 1;
  if (v28 || v27)
  {
LABEL_39:
    if (!relay)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v25 || !availableCopy)
  {
    v28 = availability == 1 && allowedCopy;
    v29 = v28 || callingCopy;
    goto LABEL_39;
  }

  v28 = 0;
  if (relay)
  {
LABEL_40:
    *relay = v28;
  }

LABEL_41:
  v30 = TUDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    availabilityCopy = v29;
    v41 = 1024;
    LODWORD(v42) = v28;
    _os_log_impl(&dword_1956FD000, v30, OS_LOG_TYPE_DEFAULT, "performDial: %d useRelay: %d", buf, 0xEu);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v29;
}

- (BOOL)_shouldRelayJoinConversationRequest:(id)request
{
  providerManager = [(TUCallCenter *)self providerManager];
  faceTimeProvider = [providerManager faceTimeProvider];

  v16 = 0;
  v6 = [(TUCallCenter *)self isDirectCallingCurrentlyAvailableForProvider:faceTimeProvider isVideo:1];
  v7 = [(TUCallCenter *)self isRelayCallingSupportedForProvider:faceTimeProvider isVideo:1];
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    goto LABEL_4;
  }

  v8 = +[TUCallCapabilities relayCallingAvailability];
  v9 = +[TUCallCapabilities supportsBasebandCalling];
  isTelephonyProvider = [faceTimeProvider isTelephonyProvider];
  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  LOBYTE(v15) = isTelephonyProvider;
  -[TUCallCenter _isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:isProviderAvailable:isRelayAllowed:isEmergency:supportsBasebandCalling:shouldUseRelay:isTelephonyProvider:deviceType:](self, "_isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:isProviderAvailable:isRelayAllowed:isEmergency:supportsBasebandCalling:shouldUseRelay:isTelephonyProvider:deviceType:", v8, v6, v7, 0, v9, &v16, v15, [mEMORY[0x1E699BE70] deviceType]);

  if ((v16 & 1) == 0)
  {
LABEL_4:
    gftOnWatch = 0;
  }

  else
  {
    featureFlags = [(TUCallCenter *)self featureFlags];
    gftOnWatch = [featureFlags gftOnWatch];
  }

  return gftOnWatch;
}

- (BOOL)_canDialWithRequest:(id)request shouldUseRelay:(BOOL *)relay
{
  v36 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  isValid = [requestCopy isValid];
  v29 = -[TUCallCenter _existingCallsAllowDialRequest:allowVoiceWithData:](self, "_existingCallsAllowDialRequest:allowVoiceWithData:", requestCopy, [objc_opt_class() isSimultaneousVoiceAndDataSupportedForDialRequest:requestCopy]);
  v8 = [(TUCallCenter *)self _isEmergencyDialRequest:requestCopy];
  provider = [requestCopy provider];
  v27 = -[TUCallCenter isDirectCallingCurrentlyAvailableForProvider:isVideo:](self, "isDirectCallingCurrentlyAvailableForProvider:isVideo:", provider, [requestCopy isVideo]);

  provider2 = [requestCopy provider];
  v11 = -[TUCallCenter isRelayCallingSupportedForProvider:isVideo:](self, "isRelayCallingSupportedForProvider:isVideo:", provider2, [requestCopy isVideo]);

  provider3 = [requestCopy provider];
  isTelephonyProvider = [provider3 isTelephonyProvider];

  v28 = isValid;
  if (v8)
  {
    LOBYTE(relayCopy) = 1;
  }

  else
  {
    callFilterController = [(TUCallCenter *)self callFilterController];
    LODWORD(relayCopy) = [callFilterController shouldRestrictDialRequest:requestCopy performSynchronously:0] ^ 1;
  }

  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v16 = 1;
  }

  else
  {
    v17 = +[TUCallCapabilities relayCallingAvailability];
    v18 = relayCopy;
    relayCopy = relay;
    v19 = +[TUCallCapabilities supportsBasebandCalling];
    mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
    deviceType = [mEMORY[0x1E699BE70] deviceType];
    LOBYTE(v26) = isTelephonyProvider;
    v22 = relayCopy;
    LOBYTE(relayCopy) = v18;
    v16 = [(TUCallCenter *)self _isCallingAvailableOnSecondaryDeviceWithRelayCallingAvailability:v17 isProviderAvailable:v27 isRelayAllowed:v11 isEmergency:v8 supportsBasebandCalling:v19 shouldUseRelay:v22 isTelephonyProvider:v26 deviceType:deviceType];
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
  return v28 & v16 & v29 & relayCopy;
}

- (BOOL)_isEmergencyDialRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy dialType] == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = objc_alloc_init(TUSenderIdentityClient);
    handle = [requestCopy handle];
    value = [handle value];
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
    if ([(TUSenderIdentityClient *)v5 isEmergencyNumberForDigits:value senderIdentityUUID:localSenderIdentityUUID])
    {
      v4 = 1;
    }

    else
    {
      handle2 = [requestCopy handle];
      value2 = [handle2 value];
      localSenderIdentityUUID2 = [requestCopy localSenderIdentityUUID];
      v4 = [(TUSenderIdentityClient *)v5 isWhitelistedEmergencyNumberForDigits:value2 senderIdentityUUID:localSenderIdentityUUID2];
    }
  }

  return v4;
}

- (id)dialWithRequest:(id)request
{
  v3 = [(TUCallCenter *)self _dialWithRequest:request completion:0];
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

- (id)_dialWithRequest:(id)request completion:(id)completion
{
  v75 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "for dial request %@", buf, 0xCu);
  }

  date = [MEMORY[0x1E695DF00] date];
  [(TUJoinConversationRequest *)requestCopy setDateDialed:date];

  v10 = TUDialAssistedDialRequest(requestCopy);

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
      callServicesInterface2 = TUDefaultLog();
      if (os_log_type_enabled(callServicesInterface2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, callServicesInterface2, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot satisfy dial request. Returning nil call", buf, 2u);
      }

      goto LABEL_25;
    }

    [(TUJoinConversationRequest *)v10 setHostOnCurrentDevice:(v71 & 1) == 0];
    provider = [(TUJoinConversationRequest *)v10 provider];
    if ([provider isFaceTimeProvider] && !-[TUJoinConversationRequest isVideo](v10, "isVideo") && -[TUJoinConversationRequest endpointOnCurrentDevice](v10, "endpointOnCurrentDevice"))
    {
      endpointIDSDestination = [(TUJoinConversationRequest *)v10 endpointIDSDestination];
      if (!endpointIDSDestination)
      {
        v38 = +[TUConversationManager supportsConversations];

        if (v38)
        {
          v39 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          handle = [(TUJoinConversationRequest *)v10 handle];

          if (handle)
          {
            v41 = [TUConversationMember alloc];
            handle2 = [(TUJoinConversationRequest *)v10 handle];
            v43 = [(TUConversationMember *)v41 initWithHandle:handle2];

            [v39 addObject:v43];
          }

          v44 = [[TUJoinConversationRequest alloc] initWithRemoteMembers:v39 originatingUIType:[(TUJoinConversationRequest *)v10 originatingUIType]];
          v45 = objc_alloc(MEMORY[0x1E696AFB0]);
          uniqueProxyIdentifier = [(TUJoinConversationRequest *)v10 uniqueProxyIdentifier];
          v47 = [v45 initWithUUIDString:uniqueProxyIdentifier];

          if (v47)
          {
            [(TUJoinConversationRequest *)v44 setUUID:v47];
          }

          [(TUJoinConversationRequest *)v44 setVideo:0];
          [(TUJoinConversationRequest *)v44 setAvMode:1];
          [(TUJoinConversationRequest *)v44 setVideoEnabled:0];
          localSenderIdentityUUID = [(TUJoinConversationRequest *)v10 localSenderIdentityUUID];

          if (localSenderIdentityUUID)
          {
            localSenderIdentity = [(TUJoinConversationRequest *)v10 localSenderIdentity];
            handle3 = [localSenderIdentity handle];
            [(TUJoinConversationRequest *)v44 setCallerID:handle3];
          }

          [(TUJoinConversationRequest *)v44 setLaunchInBackground:[(TUJoinConversationRequest *)v10 launchInBackground]];
          v51 = +[TUConversationProvider expanseProvider];
          [(TUJoinConversationRequest *)v44 setProvider:v51];

          audioSourceIdentifier = [(TUJoinConversationRequest *)v10 audioSourceIdentifier];
          [(TUJoinConversationRequest *)v44 setAudioSourceIdentifier:audioSourceIdentifier];

          translationRequestConfiguration = [(TUJoinConversationRequest *)v10 translationRequestConfiguration];

          if (translationRequestConfiguration)
          {
            v64 = v47;
            v66 = v39;
            v54 = [TUCallTranslationRequestConfiguration alloc];
            translationRequestConfiguration2 = [(TUJoinConversationRequest *)v10 translationRequestConfiguration];
            localLocale = [translationRequestConfiguration2 localLocale];
            translationRequestConfiguration3 = [(TUJoinConversationRequest *)v10 translationRequestConfiguration];
            remoteLocale = [translationRequestConfiguration3 remoteLocale];
            v59 = [(TUCallTranslationRequestConfiguration *)v54 initWithlocalLocale:localLocale remoteLocale:remoteLocale translationLinks:3 remoteAudioMode:0 translationMode:0];
            [(TUJoinConversationRequest *)v44 setTranslationRequestConfiguration:v59];

            v60 = TUDefaultLog();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              translationRequestConfiguration4 = [(TUJoinConversationRequest *)v44 translationRequestConfiguration];
              *buf = 138412290;
              v74 = translationRequestConfiguration4;
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
        handle4 = [(TUJoinConversationRequest *)v10 handle];
        siriDisplayName = [handle4 siriDisplayName];
        if (siriDisplayName)
        {
        }

        else
        {
          upgradedFromCallUUID = [(TUJoinConversationRequest *)v10 upgradedFromCallUUID];

          if (!upgradedFromCallUUID)
          {
            goto LABEL_22;
          }

          handle4 = [(TUCallCenter *)self currentCalls];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v26 = [handle4 countByEnumeratingWithState:&v67 objects:v72 count:16];
          if (v26)
          {
            v27 = v26;
            selfCopy = self;
            v65 = completionCopy;
            v28 = *v68;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v68 != v28)
                {
                  objc_enumerationMutation(handle4);
                }

                v30 = *(*(&v67 + 1) + 8 * i);
                v31 = [(TUJoinConversationRequest *)v10 upgradedFromCallUUID:selfCopy];
                uUIDString = [v31 UUIDString];
                callUUID = [v30 callUUID];
                v34 = [uUIDString isEqualToString:callUUID];

                if (v34)
                {
                  handle5 = [v30 handle];
                  siriDisplayName2 = [handle5 siriDisplayName];
                  handle6 = [(TUJoinConversationRequest *)v10 handle];
                  [handle6 setSiriDisplayName:siriDisplayName2];
                }
              }

              v27 = [handle4 countByEnumeratingWithState:&v67 objects:v72 count:16];
            }

            while (v27);
            self = selfCopy;
            completionCopy = v65;
          }
        }

LABEL_22:
        [(TUJoinConversationRequest *)v10 setHostOnCurrentDevice:(v71 & 1) == 0];
        [(TUCallCenter *)self localLandscapeAspectRatio];
        [(TUJoinConversationRequest *)v10 setLocalLandscapeAspectRatio:?];
        [(TUCallCenter *)self localPortraitAspectRatio];
        [(TUJoinConversationRequest *)v10 setLocalPortraitAspectRatio:?];
        callServicesInterface = [(TUCallCenter *)self callServicesInterface];
        v22 = [callServicesInterface dialWithRequest:v10 completion:completionCopy];

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

  callServicesInterface2 = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface2 sendMMIOrUSSDCodeWithRequest:v10];
LABEL_25:

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_27:
  v22 = 0;
LABEL_28:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (void)applicationWillLaunchForStartCallInteraction:(id)interaction
{
  v12 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = interactionCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "interaction: %@", &v10, 0xCu);
  }

  providerManager = [(TUCallCenter *)self providerManager];
  intent = [interactionCopy intent];
  _intents_bundleIdForLaunching = [intent _intents_bundleIdForLaunching];
  [providerManager donateUserIntentForProviderWithIdentifier:_intents_bundleIdForLaunching];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)launchAppForDialRequest:(id)request completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "dialRequest: %@", buf, 0xCu);
  }

  providerManager = [(TUCallCenter *)self providerManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__TUCallCenter_launchAppForDialRequest_completion___block_invoke;
  v12[3] = &unk_1E7425568;
  v12[4] = self;
  v13 = completionCopy;
  v10 = completionCopy;
  [providerManager launchAppForDialRequest:requestCopy completion:v12];

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

+ (BOOL)isSimultaneousVoiceAndDataSupportedForDialRequest:(id)request
{
  localSenderIdentityUUID = [request localSenderIdentityUUID];
  if (localSenderIdentityUUID)
  {
    v4 = [TUCallCapabilities isSimultaneousVoiceAndDataSupportedForSIMWithUUID:localSenderIdentityUUID];
  }

  else
  {
    v4 = +[TUCallCapabilities supportsSimultaneousVoiceAndData];
  }

  v5 = v4;

  return v5;
}

- (void)sendFieldModeDigits:(id)digits forProvider:(id)provider
{
  v17 = *MEMORY[0x1E69E9840];
  digitsCopy = digits;
  providerCopy = provider;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = digitsCopy;
    v15 = 2112;
    v16 = providerCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "sendFieldModeDigits: %@ for provider: %@", &v13, 0x16u);
  }

  v9 = [[TUDialRequest alloc] initWithProvider:providerCopy];
  v10 = [[TUHandle alloc] initWithType:2 value:digitsCopy];
  [(TUDialRequest *)v9 setHandle:v10];

  [(TUDialRequest *)v9 setOriginatingUIType:40];
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface sendMMIOrUSSDCodeWithRequest:v9];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)answerCall:(id)call
{
  v10 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:callCopy];
  [(TUCallCenter *)self answerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)holdAndAnswerIfNeeded:(id)needed
{
  v20 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  isHoldAndAnswerAllowed = [(TUCallCenter *)self isHoldAndAnswerAllowed];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (isHoldAndAnswerAllowed)
    {
      v7 = @"YES";
    }

    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = neededCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "holdAndAnswerIfNeeded, isHoldAndAnswerAllowed: %@ for call: %@", &v16, 0x16u);
  }

  v8 = CFPreferencesCopyValue(@"CleethorpesEnabled", @"com.apple.InCallService", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & isHoldAndAnswerAllowed)
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = (isKindOfClass ^ 1) & isHoldAndAnswerAllowed;
  }

  featureFlags = [(TUCallCenter *)self featureFlags];
  if (([featureFlags incomingBannerOverSixUpEnabled] & 1) == 0)
  {
    featureFlags2 = [(TUCallCenter *)self featureFlags];
    if (([featureFlags2 embedSwapBannerEnabled] & 1) == 0)
    {
      featureFlags3 = [(TUCallCenter *)self featureFlags];
      callManagerEnabled = [featureFlags3 callManagerEnabled];

      if (callManagerEnabled & bOOLValue)
      {
        goto LABEL_12;
      }

LABEL_14:
      [(TUCallCenter *)self answerCall:neededCopy];
      goto LABEL_15;
    }
  }

  if ((bOOLValue & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  [(TUCallCenter *)self holdActiveAndAnswerCall:neededCopy];
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)answerOrJoinCall:(id)call
{
  v22 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerOrJoinCall: %@", &v20, 0xCu);
  }

  if ([callCopy status] == 6 || objc_msgSend(callCopy, "status") == 5)
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter answerOrJoinCall:];
    }
  }

  else if ([callCopy isConversation] && (-[TUCallCenter activeConversationForCall:](self, "activeConversationForCall:", callCopy), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(TUCallCenter *)self activeConversationForCall:callCopy];
    link = [v9 link];
    if (link && (v11 = link, v12 = [v9 letMeInRequestState], v11, v12 == 1))
    {
      v13 = [TUJoinConversationRequest alloc];
      link2 = [v9 link];
      v15 = [MEMORY[0x1E695DFD8] set];
      v16 = [(TUJoinConversationRequest *)v13 initWithConversationLink:link2 otherInvitedHandles:v15 sendLetMeInRequest:1];
    }

    else
    {
      v16 = [[TUJoinConversationRequest alloc] initWithConversation:v9 originatingUIType:36];
    }

    uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];
    [(TUJoinConversationRequest *)v16 setUUID:uniqueProxyIdentifierUUID];

    -[TUJoinConversationRequest setVideoEnabled:](v16, "setVideoEnabled:", [callCopy isSendingVideo]);
    if ([v9 avMode])
    {
      avMode = [v9 avMode];
    }

    else if ([callCopy isSendingVideo])
    {
      avMode = 2;
    }

    else
    {
      avMode = 1;
    }

    [(TUJoinConversationRequest *)v16 setAvMode:avMode];
    v19 = [(TUCallCenter *)self joinConversationWithConversationRequest:v16];
  }

  else
  {
    [(TUCallCenter *)self holdAndAnswerIfNeeded:callCopy];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)answerCall:(id)call withSourceIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  callCopy = call;
  identifierCopy = identifier;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = callCopy;
    v12 = 2112;
    v13 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "call: %@ sourceIdentifier: %@", &v10, 0x16u);
  }

  [(TUCallCenter *)self answerCall:callCopy withSourceIdentifier:identifierCopy wantsHoldMusic:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)answerCallWithHoldMusic:(id)music
{
  v9 = *MEMORY[0x1E69E9840];
  musicCopy = music;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = musicCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerCallWithHoldMusic: %@", &v7, 0xCu);
  }

  [(TUCallCenter *)self answerCall:musicCopy withSourceIdentifier:0 wantsHoldMusic:1];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)holdActiveAndAnswerCall:(id)call
{
  v10 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "holdActiveAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:callCopy];
  [(TUCallCenter *)self holdActiveAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)holdActiveAndAnswerWithRequest:(id)request
{
  v9 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "holdActiveAndAnswerWithRequest: %@", &v7, 0xCu);
  }

  [requestCopy setBehavior:2];
  [(TUCallCenter *)self answerWithRequest:requestCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endActiveAndAnswerCall:(id)call
{
  v10 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:callCopy];
  [(TUCallCenter *)self endActiveAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endActiveAndAnswerWithRequest:(id)request
{
  v9 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveAndAnswerWithRequest: %@", &v7, 0xCu);
  }

  [requestCopy setBehavior:0];
  [(TUCallCenter *)self answerWithRequest:requestCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endHeldAndAnswerCall:(id)call
{
  v10 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endHeldAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:callCopy];
  [(TUCallCenter *)self endHeldAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endHeldAndAnswerWithRequest:(id)request
{
  v9 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endHeldAndAnswerWithRequest: %@", &v7, 0xCu);
  }

  [requestCopy setBehavior:1];
  [(TUCallCenter *)self answerWithRequest:requestCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endActiveOrHeldAndAnswerCall:(id)call
{
  v10 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveOrHeldAndAnswerCall: %@", &v8, 0xCu);
  }

  v6 = [[TUAnswerRequest alloc] initWithCall:callCopy];
  [(TUCallCenter *)self endActiveOrHeldAndAnswerWithRequest:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)endActiveOrHeldAndAnswerWithRequest:(id)request
{
  v10 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "endActiveOrHeldAndAnswerWithRequest: %@", &v8, 0xCu);
  }

  v6 = [(TUCallCenter *)self audioOrVideoCallWithStatus:1];

  if (v6)
  {
    [(TUCallCenter *)self endActiveAndAnswerWithRequest:requestCopy];
  }

  else
  {
    [(TUCallCenter *)self endHeldAndAnswerWithRequest:requestCopy];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportLocalPreviewStoppedForCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "reportLocalPreviewStoppedForCall: %@", &v9, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [callServicesInterface reportLocalPreviewStoppedForCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)answerWithRequest:(id)request
{
  v69 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    *buf = 138412546;
    v66 = requestCopy;
    v67 = 2112;
    v68 = _allCalls;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "answerRequest: %@ - Current calls are %@", buf, 0x16u);
  }

  date = [MEMORY[0x1E695DF00] date];
  [requestCopy setDateAnswered:date];

  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  v9 = [(TUCallCenter *)self callWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if ([requestCopy behavior] == 4)
  {
    [v9 isVideo];
    v10 = 1;
  }

  else
  {
    downgradeToAudio = [requestCopy downgradeToAudio];
    isVideo = [v9 isVideo];
    v10 = isVideo | downgradeToAudio;
    if (isVideo && (downgradeToAudio & 1) == 0)
    {
      if (([requestCopy allowBluetoothAnswerWithoutDowngrade] & 1) == 0)
      {
        sourceIdentifier = [requestCopy sourceIdentifier];
        if (sourceIdentifier)
        {
          v14 = sourceIdentifier;
          routeController = [(TUCallCenter *)self routeController];
          sourceIdentifier2 = [requestCopy sourceIdentifier];
          v17 = [routeController routeWithSourceIdentifier:sourceIdentifier2];
          isBluetooth = [v17 isBluetooth];

          if (isBluetooth)
          {
            v19 = TUDefaultLog();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v9;
              _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "We are asked to answer with bluetooth route for a video call - Ignoring to answer %@", buf, 0xCu);
            }

            v20 = MEMORY[0x1E695DFF8];
            sourceIdentifier3 = [requestCopy sourceIdentifier];
            v22 = [v20 faceTimeAnswerURLWithSourceIdentifier:sourceIdentifier3];

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
    featureFlags = [(TUCallCenter *)self featureFlags];
    v43 = v10;
    if ([featureFlags isRemoteCallControlOnWatchEnabled])
    {
      [(TUCallCenter *)self _allCallsWithStatus:1];
    }

    else
    {
      [(TUCallCenter *)self audioAndVideoCallsWithStatus:1];
    }
    v26 = ;

    featureFlags2 = [(TUCallCenter *)self featureFlags];
    v45 = v26;
    v46 = requestCopy;
    if ([featureFlags2 isRemoteCallControlOnWatchEnabled])
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
    _allCalls2 = [(TUCallCenter *)self _allCalls];
    v29 = [_allCalls2 countByEnumeratingWithState:&v57 objects:v64 count:16];
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
            objc_enumerationMutation(_allCalls2);
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

        v30 = [_allCalls2 countByEnumeratingWithState:&v57 objects:v64 count:16];
      }

      while (v30);
    }

    [(TUCallCenter *)self localLandscapeAspectRatio];
    requestCopy = v46;
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

    behavior = [v46 behavior];
    if ((behavior - 2) < 3)
    {
      callServicesInterface = [(TUCallCenter *)self callServicesInterface];
      [callServicesInterface answerCallWithRequest:v46];

      endpointIDSDestination = [v46 endpointIDSDestination];

      v40 = v44;
      if (!endpointIDSDestination)
      {
        [(TUCallCenter *)self updateCall:v35 withAnswerRequest:v46];
      }

      goto LABEL_47;
    }

    v40 = v44;
    if (behavior == 1)
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
      if (behavior)
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
    uniqueProxyIdentifier2 = [requestCopy uniqueProxyIdentifier];
    *buf = 138412290;
    v66 = uniqueProxyIdentifier2;
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

- (void)updateCall:(id)call withAnswerRequest:(id)request
{
  callCopy = call;
  requestCopy = request;
  callNotificationManager = [callCopy callNotificationManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__TUCallCenter_updateCall_withAnswerRequest___block_invoke;
  v11[3] = &unk_1E7424FD8;
  v12 = callCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = callCopy;
  [callNotificationManager deferNotificationsUntilAfterPerformingBlock:v11];
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

- (void)holdCall:(id)call
{
  v14 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v10 = 138412546;
    v11 = callCopy;
    v12 = 2112;
    v13 = _allCalls;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "call: %@ - Current calls are %@", &v10, 0x16u);
  }

  if (callCopy && ([callCopy isOnHold] & 1) == 0)
  {
    [callCopy setProvisionalHoldStatus:1];
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    [callServicesInterface holdCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)unholdCall:(id)call
{
  v14 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v10 = 138412546;
    v11 = callCopy;
    v12 = 2112;
    v13 = _allCalls;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "call: %@ - Current calls are %@", &v10, 0x16u);
  }

  if (callCopy && [callCopy isOnHold])
  {
    [callCopy setProvisionalHoldStatus:2];
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
    [callServicesInterface unholdCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)swapCalls
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v7 = 138412290;
    v8 = _allCalls;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", &v7, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface swapCalls];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)groupCall:(id)call withOtherCall:(id)otherCall
{
  v17 = *MEMORY[0x1E69E9840];
  callCopy = call;
  otherCallCopy = otherCall;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = callCopy;
    v15 = 2112;
    v16 = otherCallCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "call: %@ otherCall: %@", &v13, 0x16u);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  uniqueProxyIdentifier2 = [otherCallCopy uniqueProxyIdentifier];
  [callServicesInterface groupCallWithUniqueProxyIdentifier:uniqueProxyIdentifier withOtherCallWithUniqueProxyIdentifier:uniqueProxyIdentifier2];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)ungroupCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "call: %@", &v9, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [callServicesInterface ungroupCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_preflightDisconnectForCalls:(id)calls withCompletion:(id)completion
{
  callsCopy = calls;
  completionCopy = completion;
  disconnectCallPreflight = [(TUCallCenter *)self disconnectCallPreflight];

  if (disconnectCallPreflight)
  {
    disconnectCallPreflight2 = [(TUCallCenter *)self disconnectCallPreflight];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__TUCallCenter__preflightDisconnectForCalls_withCompletion___block_invoke;
    v10[3] = &unk_1E7427AE0;
    v11 = callsCopy;
    v12 = completionCopy;
    (disconnectCallPreflight2)[2](disconnectCallPreflight2, v11, v10);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
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

- (void)disconnectCall:(id)call withReason:(int)reason
{
  v22 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    *buf = 138412802;
    v17 = callCopy;
    v18 = 1024;
    reasonCopy = reason;
    v20 = 2112;
    v21 = _allCalls;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "disconnectCall: %@ reason: %d - Current calls are %@", buf, 0x1Cu);
  }

  if (callCopy)
  {
    v15 = callCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__TUCallCenter_disconnectCall_withReason___block_invoke;
    v12[3] = &unk_1E7427B08;
    v13 = callCopy;
    reasonCopy2 = reason;
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
    _allCalls = [(TUCallCenter *)self _allCalls];
    *buf = 138412290;
    v14 = _allCalls;
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
    getCurrentCallsToDisconnect = [(TUCallCenter *)self getCurrentCallsToDisconnect];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__TUCallCenter_disconnectCurrentCall__block_invoke;
    v5[3] = &unk_1E7427B30;
    v5[4] = self;
    v6 = getCurrentCallsToDisconnect;
    v4 = getCurrentCallsToDisconnect;
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
  getCurrentCallsToDisconnect = [(TUCallCenter *)self getCurrentCallsToDisconnect];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__TUCallCenter_disconnectCurrentCallAndActivateHeld__block_invoke;
  v5[3] = &unk_1E7427B30;
  v5[4] = self;
  v6 = getCurrentCallsToDisconnect;
  v4 = getCurrentCallsToDisconnect;
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
    _allCalls = [(TUCallCenter *)self _allCalls];
    *buf = 138412290;
    v9 = _allCalls;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", buf, 0xCu);
  }

  currentCalls = [(TUCallCenter *)self currentCalls];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__TUCallCenter_disconnectAllCalls__block_invoke;
  v7[3] = &unk_1E7427B58;
  v7[4] = self;
  [(TUCallCenter *)self _preflightDisconnectForCalls:currentCalls withCompletion:v7];

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

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface disconnectAllCalls];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  currentCalls = [(TUCallCenter *)self currentCalls];
  v6 = [currentCalls countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(currentCalls);
        }

        [*(*(&v11 + 1) + 8 * v9++) setTransitionStatus:5];
      }

      while (v7 != v9);
      v7 = [currentCalls countByEnumeratingWithState:&v11 objects:v16 count:16];
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
    _allCalls = [(TUCallCenter *)self _allCalls];
    v9 = 138412290;
    v10 = _allCalls;
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

- (void)activateInCallUIWithActivityContinuationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface activateInCallUIWithActivityContinuationIdentifier:identifierCopy];
}

- (void)setLiveVoicemailUnavailableReason:(int64_t)reason forCall:(id)call
{
  callCopy = call;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];

  [callServicesInterface setLiveVoicemailUnavailableReason:reason forCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];
}

- (void)pullCallFromClientUsingHandoffActivityUserInfo:(id)info completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = infoCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "userInfo: %@", &v11, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface pullCallFromClientUsingHandoffActivityUserInfo:infoCopy completion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)pullPersistedChannel:(id)channel
{
  channelCopy = channel;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface pullPersistedChannel:channelCopy];
}

- (void)pushRelayingCallsToHostWithSourceIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v9 = 138412546;
    v10 = identifierCopy;
    v11 = 2112;
    v12 = _allCalls;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "sourceIdentifier: %@ - Current calls are %@", &v9, 0x16u);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface pushRelayingCallsToHostWithSourceIdentifier:identifierCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pullRelayingCallsFromClient
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v7 = 136315394;
    v8 = "[TUCallCenter pullRelayingCallsFromClient]";
    v9 = 2112;
    v10 = _allCalls;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%s: - Current calls are %@", &v7, 0x16u);
  }

  if ([(TUCallCenter *)self shouldPullRelayingCalls])
  {
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface pullRelayingCallsFromClient];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pullRelayingGFTCallsFromClientIfNecessary
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v7 = 136315394;
    v8 = "[TUCallCenter pullRelayingGFTCallsFromClientIfNecessary]";
    v9 = 2112;
    v10 = _allCalls;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%s: - Current calls are %@", &v7, 0x16u);
  }

  if ([(TUCallCenter *)self shouldPullRelayingCalls])
  {
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface pullRelayingGFTCallsFromClientIfNecessary];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pushHostedCallsToDestination:(id)destination
{
  v13 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v9 = 138412546;
    v10 = destinationCopy;
    v11 = 2112;
    v12 = _allCalls;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "destination: %@ - Current calls are %@", &v9, 0x16u);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface pushHostedCallsToDestination:destinationCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)pullHostedCallsFromPairedHostDevice
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _allCalls = [(TUCallCenter *)self _allCalls];
    v7 = 138412290;
    v8 = _allCalls;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "- Current calls are %@", &v7, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface pullHostedCallsFromPairedHostDevice];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pickRouteForRapportDeviceWithMediaSystemIdentifier:(id)identifier effectiveIdentifier:(id)effectiveIdentifier
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  effectiveIdentifierCopy = effectiveIdentifier;
  routeController = [(TUCallCenter *)self routeController];
  routes = [routeController routes];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = routes;
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
      uniqueIdentifier = [v15 uniqueIdentifier];
      if ([identifierCopy length] && objc_msgSend(identifierCopy, "isEqualToString:", uniqueIdentifier))
      {
        v17 = TUDefaultLog();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 138412546;
        v30 = identifierCopy;
        v31 = 2112;
        v32 = v15;
        v18 = "Found route matching rapportMediaSystemIdentifier=%@, route=%@";
        goto LABEL_17;
      }

      if ([effectiveIdentifierCopy length] && objc_msgSend(effectiveIdentifierCopy, "isEqualToString:", uniqueIdentifier))
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
    v30 = effectiveIdentifierCopy;
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

    routeController2 = [(TUCallCenter *)self routeController];
    [routeController2 pickRoute:v19];
  }

  else
  {
LABEL_12:

LABEL_20:
    v21 = TUDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = effectiveIdentifierCopy;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find any routes matching rapportMediaSystemIdentifier %@ or rapportEffectiveIdentifier %@ among availableRoutes %@, attempting to pick route when available...", buf, 0x20u);
    }

    routeController3 = [(TUCallCenter *)self routeController];
    v19 = routeController3;
    if (identifierCopy)
    {
      v23 = identifierCopy;
    }

    else
    {
      v23 = effectiveIdentifierCopy;
    }

    [routeController3 pickRouteWhenAvailableWithUniqueIdentifier:{v23, v25}];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  if (+[TUConversationManager supportsConversations])
  {
    [(TUCallCenter *)self launchAppForJoinRequest:requestCopy];
  }
}

- (BOOL)launchAppForJoinRequest:(id)request
{
  v12 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@", &v10, 0xCu);
  }

  launchAppForJoinRequestBlock = [(TUCallCenter *)self launchAppForJoinRequestBlock];
  v7 = (launchAppForJoinRequestBlock)[2](launchAppForJoinRequestBlock, requestCopy);

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)continueHandoffEligibleConversation
{
  featureFlags = [(TUCallCenter *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {

    [(TUCallCenter *)self continueHandoffForConversationWithEligibility:0];
  }
}

- (BOOL)continueHandoffForConversationWithEligibility:(id)eligibility
{
  v18 = *MEMORY[0x1E69E9840];
  eligibilityCopy = eligibility;
  featureFlags = [(TUCallCenter *)self featureFlags];
  conversationHandoffEnabled = [featureFlags conversationHandoffEnabled];

  if (conversationHandoffEnabled)
  {
    conversationManager = [(TUCallCenter *)self conversationManager];
    v8 = [conversationManager joinRequestForApplicableConversationWithHandoffEligibility:eligibilityCopy];

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
        conversationManager2 = [(TUCallCenter *)self conversationManager];
        activeConversations = [conversationManager2 activeConversations];
        v16 = 138412290;
        v17 = activeConversations;
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

+ (BOOL)_supportsJoiningConversationWithRequest:(id)request featureFlags:(id)flags supportsConversations:(BOOL)conversations
{
  conversationsCopy = conversations;
  requestCopy = request;
  flagsCopy = flags;
  v9 = TUGreenTeaLagunaEnabled(flagsCopy);
  greenTeaLinksEnabled = [flagsCopy greenTeaLinksEnabled];
  if (v9)
  {
    if (greenTeaLinksEnabled)
    {
      mergedRemoteMembers = [requestCopy mergedRemoteMembers];
      if ([mergedRemoteMembers count] < 2)
      {
LABEL_4:
        conversationLink = [requestCopy conversationLink];
        v13 = conversationLink != 0;

LABEL_8:
        goto LABEL_10;
      }

LABEL_7:
      v13 = 0;
      goto LABEL_8;
    }
  }

  else if (greenTeaLinksEnabled)
  {
    mergedRemoteMembers = [requestCopy remoteMembers];
    if ([mergedRemoteMembers count] <= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v13 = 0;
LABEL_10:
  if ([requestCopy avMode])
  {
    TUGreenTeaLagunaEnabled(flagsCopy);
    v14 = 0;
LABEL_12:
    isOneToOne = [requestCopy isOneToOne];
    goto LABEL_13;
  }

  presentationMode = [requestCopy presentationMode];
  v14 = presentationMode == 2;
  if (!TUGreenTeaLagunaEnabled(flagsCopy) || presentationMode != 2)
  {
    goto LABEL_12;
  }

  mergedRemoteMembers2 = [requestCopy mergedRemoteMembers];
  isOneToOne = [mergedRemoteMembers2 count] < 2;

  v14 = 1;
LABEL_13:
  if ((isOneToOne | v13))
  {
    if (v14)
    {
      conversationsCopy |= TUGreenTeaLagunaEnabled(flagsCopy);
    }

    else if ([requestCopy avMode] == 2)
    {
      LOBYTE(conversationsCopy) = +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls];
    }

    else if (+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls])
    {
      LOBYTE(conversationsCopy) = 1;
    }

    else
    {
      provider = [requestCopy provider];
      conversationsCopy = [provider isDefaultProvider] ^ 1;
    }
  }

  return conversationsCopy;
}

+ (BOOL)supportsJoiningConversationWithRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(TUFeatureFlags);
  v5 = +[TUCallCenter _supportsJoiningConversationWithRequest:featureFlags:supportsConversations:](TUCallCenter, "_supportsJoiningConversationWithRequest:featureFlags:supportsConversations:", requestCopy, v4, +[TUConversationManager supportsConversations]);

  return v5;
}

- (id)joinConversationWithConversationRequest:(id)request
{
  v94 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v93 = requestCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "joinConversationWithConversationRequest - request: %@", buf, 0xCu);
  }

  if ([TUCallCenter supportsJoiningConversationWithRequest:requestCopy])
  {
    provider = [requestCopy provider];
    if ([provider supportsLinks])
    {
      conversationLink = [requestCopy conversationLink];
      if (!conversationLink)
      {

LABEL_14:
        conversationManager = [(TUCallCenter *)self conversationManager];
        remoteMembers = [requestCopy remoteMembers];
        conversationLink2 = [requestCopy conversationLink];
        v10 = [conversationManager activeConversationWithRemoteMembers:remoteMembers andLink:conversationLink2];

        goto LABEL_15;
      }

      v8 = conversationLink;
      isJoiningConversationWithLink = [requestCopy isJoiningConversationWithLink];

      if (isJoiningConversationWithLink)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    conversationManager = [(TUCallCenter *)self conversationManager];
    remoteMembers = [requestCopy conversationLink];
    v10 = [conversationManager pendingConversationWithLink:remoteMembers];
LABEL_15:

    provider2 = [requestCopy provider];
    supportsLinks = [provider2 supportsLinks];

    callFilterController = [(TUCallCenter *)self callFilterController];
    v18 = callFilterController;
    if (supportsLinks && v10)
    {
      v19 = 1;
      v20 = [callFilterController shouldRestrictConversation:v10 performSynchronously:1];

      if ((v20 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = 1;
      v21 = [callFilterController shouldRestrictJoinConversationRequest:requestCopy performSynchronously:1];

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
    remoteMembers2 = [requestCopy remoteMembers];
    v25 = [remoteMembers2 countByEnumeratingWithState:&v86 objects:v91 count:16];
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
            objc_enumerationMutation(remoteMembers2);
          }

          handle = [*(*(&v86 + 1) + 8 * i) handle];
          [v23 addObject:handle];
        }

        v26 = [remoteMembers2 countByEnumeratingWithState:&v86 objects:v91 count:16];
      }

      while (v26);
    }

    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __56__TUCallCenter_joinConversationWithConversationRequest___block_invoke;
    v83[3] = &unk_1E7427BA8;
    v30 = requestCopy;
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

      uniqueProxyIdentifierUUID = [v32 uniqueProxyIdentifierUUID];
      [v30 setUUID:uniqueProxyIdentifierUUID];
    }

    provider3 = [v30 provider];
    v36 = [provider3 supportsAVMode:2];

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
      conversationLink3 = [v30 conversationLink];

      if (conversationLink3)
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

    provider4 = [v30 provider];
    v75 = v32;
    if ([provider4 supportsLinks])
    {
      conversationLink4 = [v30 conversationLink];

      if (conversationLink4)
      {
        v73 = v31;
        v74 = requestCopy;
        v42 = TUDefaultLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          conversationLink5 = [v30 conversationLink];
          *buf = 138412290;
          v93 = conversationLink5;
          _os_log_impl(&dword_1956FD000, v42, OS_LOG_TYPE_DEFAULT, "Bypassing checks for remote members, join request has conversation link: %@", buf, 0xCu);
        }

        conversationManager2 = [(TUCallCenter *)self conversationManager];
        activeConversations = [conversationManager2 activeConversations];
        v46 = [activeConversations count];

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
        selfCopy = self;
        conversationManager3 = [(TUCallCenter *)self conversationManager];
        activeConversations2 = [conversationManager3 activeConversations];

        v50 = [activeConversations2 countByEnumeratingWithState:&v79 objects:v90 count:16];
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
                objc_enumerationMutation(activeConversations2);
              }

              v54 = *(*(&v79 + 1) + 8 * j);
              link = [v54 link];
              conversationLink6 = [v30 conversationLink];
              if ([link isEquivalentToConversationLink:conversationLink6] && objc_msgSend(v54, "state") == 3)
              {
                isPendingConversation = [v47 isPendingConversation];

                if ((isPendingConversation & 1) == 0)
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
                  requestCopy = v74;
                  goto LABEL_96;
                }
              }

              else
              {
              }
            }

            v51 = [activeConversations2 countByEnumeratingWithState:&v79 objects:v90 count:16];
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v10 = v47;
        v31 = v73;
        requestCopy = v74;
        self = selfCopy;
LABEL_77:
        if (v76)
        {
LABEL_78:
          if ([v30 avMode] || (-[TUCallCenter featureFlags](self, "featureFlags"), v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v64, "avLessSharePlayEnabled"), v64, !v65))
          {
            activeConversations2 = [(TUCallCenter *)self callServicesInterface];
            v11 = [activeConversations2 joinConversationWithRequest:v30];
          }

          else
          {
            activeConversations2 = [(TUCallCenter *)self conversationManager];
            [activeConversations2 joinConversationWithRequest:v30];
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

    remoteMembers3 = [v30 remoteMembers];
    if (![remoteMembers3 count])
    {
      prefersAddingRemoteMembersAfterHandoff = [v30 prefersAddingRemoteMembersAfterHandoff];

      if (prefersAddingRemoteMembersAfterHandoff)
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
            participantCluster = [v60 participantCluster];

            if (!participantCluster)
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
              activeConversations2 = v78;
              goto LABEL_96;
            }
          }
        }

        goto LABEL_77;
      }

      remoteMembers3 = TUDefaultLog();
      if (os_log_type_enabled(remoteMembers3, OS_LOG_TYPE_ERROR))
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

- (id)callMatchingConversationRequest:(id)request
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  remoteMembers = [requestCopy remoteMembers];
  v7 = [remoteMembers countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v20 + 1) + 8 * i) handle];
        [v5 addObject:handle];
      }

      v8 = [remoteMembers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__TUCallCenter_callMatchingConversationRequest___block_invoke;
  v17[3] = &unk_1E7427BA8;
  v18 = requestCopy;
  v19 = v5;
  v12 = v5;
  v13 = requestCopy;
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

- (void)enteredForegroundForCall:(id)call
{
  v11 = *MEMORY[0x1E69E9840];
  callCopy = call;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = callCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "for call %@", &v9, 0xCu);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  uniqueProxyIdentifier = [callCopy uniqueProxyIdentifier];
  [callServicesInterface enteredForegroundForCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

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

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface willEnterBackgroundForAllCalls];
}

- (void)enteredBackgroundForAllCalls
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "", v5, 2u);
  }

  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface enteredBackgroundForAllCalls];
}

- (id)callForConversationWithGroupUUID:(id)d
{
  dCopy = d;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__TUCallCenter_callForConversationWithGroupUUID___block_invoke;
  v9[3] = &unk_1E7425900;
  v10 = dCopy;
  v5 = dCopy;
  v6 = [(TUCallCenter *)self callsPassingTest:v9];
  firstObject = [v6 firstObject];

  return firstObject;
}

uint64_t __49__TUCallCenter_callForConversationWithGroupUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 callGroupUUID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)activeConversationForCall:(id)call
{
  callCopy = call;
  v5 = -[TUCallCenter activeConversationForCall:backedByGroupSession:](self, "activeConversationForCall:backedByGroupSession:", callCopy, [callCopy isConversation]);

  return v5;
}

- (void)handleMediaRemoteCommand:(unsigned int)command completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = [(TUCallCenter *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__TUCallCenter_handleMediaRemoteCommand_completion___block_invoke;
  v9[3] = &unk_1E7427BD0;
  objc_copyWeak(&v11, &location);
  v10 = completionCopy;
  commandCopy = command;
  v8 = completionCopy;
  dispatch_async(queue, v9);

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

- (void)handleMediaRemoteCommand:(unsigned int)command sourceIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(TUCallCenter *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__TUCallCenter_handleMediaRemoteCommand_sourceIdentifier_completion___block_invoke;
  v13[3] = &unk_1E7427BF8;
  v14 = identifierCopy;
  v15 = completionCopy;
  commandCopy = command;
  v13[4] = self;
  v11 = identifierCopy;
  v12 = completionCopy;
  dispatch_async(queue, v13);
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

- (void)handleRedialCommandWhileScreening:(id)screening
{
  screeningCopy = screening;
  queue = [(TUCallCenter *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__TUCallCenter_handleRedialCommandWhileScreening___block_invoke;
  v7[3] = &unk_1E7424898;
  v7[4] = self;
  v8 = screeningCopy;
  v6 = screeningCopy;
  dispatch_async(queue, v7);
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
  displayedCalls = [(TUCallCenter *)self displayedCalls];
  firstObject = [displayedCalls firstObject];
  model = [firstObject model];
  supportsHolding = [model supportsHolding];

  return supportsHolding;
}

- (BOOL)isMergeable
{
  displayedCalls = [(TUCallCenter *)self displayedCalls];
  firstObject = [displayedCalls firstObject];
  model = [firstObject model];
  supportsGrouping = [model supportsGrouping];

  return supportsGrouping;
}

- (BOOL)isHoldAllowed
{
  displayedCalls = [(TUCallCenter *)self displayedCalls];
  firstObject = [displayedCalls firstObject];
  model = [firstObject model];
  supportsHolding = [model supportsHolding];

  return supportsHolding;
}

- (BOOL)isTakingCallsPrivateAllowed
{
  displayedCalls = [(TUCallCenter *)self displayedCalls];
  firstObject = [displayedCalls firstObject];
  model = [firstObject model];
  supportsUngrouping = [model supportsUngrouping];

  return supportsUngrouping;
}

- (BOOL)isSendToVoicemailAllowed
{
  displayedCalls = [(TUCallCenter *)self displayedCalls];
  firstObject = [displayedCalls firstObject];
  model = [firstObject model];
  supportsSendingToVoicemail = [model supportsSendingToVoicemail];

  return supportsSendingToVoicemail;
}

- (BOOL)canMergeCalls
{
  displayedCalls = [(TUCallCenter *)self displayedCalls];
  v4 = [displayedCalls count];

  if (v4 != 2)
  {
    return 0;
  }

  displayedCalls2 = [(TUCallCenter *)self displayedCalls];
  v6 = [displayedCalls2 objectAtIndex:0];

  displayedCalls3 = [(TUCallCenter *)self displayedCalls];
  v8 = 1;
  v9 = [displayedCalls3 objectAtIndex:1];

  if (![(TUCallCenter *)self isSharePlayActiveForTelephonyCall:v6])
  {
    v8 = [(TUCallCenter *)self isSharePlayActiveForTelephonyCall:v9];
  }

  if ([(TUCallCenter *)self isMergeable])
  {
    displayedCalls4 = [(TUCallCenter *)self displayedCalls];
    v11 = [displayedCalls4 count] == 2 && !v8 && (objc_msgSend(v6, "status") == 2 || objc_msgSend(v9, "status") == 2);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEndAndAnswerAllowed
{
  incomingCall = [(TUCallCenter *)self incomingCall];
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

  model = [incomingCall model];
  if ([model supportsUnambiguousMultiPartyState])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    model2 = [v7 model];
    if ([model2 supportsUnambiguousMultiPartyState])
    {
      LOBYTE(v9) = 1;
    }

    else
    {
      provider = [incomingCall provider];
      provider2 = [v7 provider];
      v9 = [provider isEqualToCallProvider:provider2] ^ 1;
    }
  }

  return v9;
}

- (BOOL)canGroupCall:(id)call withCall:(id)withCall
{
  callCopy = call;
  withCallCopy = withCall;
  if (callCopy == withCallCopy)
  {
    v10 = 0;
  }

  else
  {
    callGroupUUID = [callCopy callGroupUUID];
    callGroupUUID2 = [withCallCopy callGroupUUID];
    if (([callGroupUUID isEqual:callGroupUUID2] & 1) != 0 || -[TUCallCenter isSharePlayActiveForTelephonyCall:](self, "isSharePlayActiveForTelephonyCall:", callCopy) || -[TUCallCenter isSharePlayActiveForTelephonyCall:](self, "isSharePlayActiveForTelephonyCall:", withCallCopy))
    {
      v10 = 0;
    }

    else
    {
      model = [callCopy model];
      if ([model supportsGrouping])
      {
        model2 = [withCallCopy model];
        if ([model2 supportsGrouping])
        {
          provider = [callCopy provider];
          identifier = [provider identifier];
          provider2 = [withCallCopy provider];
          identifier2 = [provider2 identifier];
          v25 = identifier;
          if ([identifier isEqualToString:identifier2])
          {
            v17 = [(TUCallCenter *)self _callGroupCountForCall:callCopy withCall:withCallCopy];
            provider3 = [callCopy provider];
            if (v17 <= [provider3 maximumCallsPerCallGroup])
            {
              localSenderIdentity = [callCopy localSenderIdentity];
              handle = [localSenderIdentity handle];
              localSenderIdentity2 = [withCallCopy localSenderIdentity];
              [localSenderIdentity2 handle];
              v19 = v23 = provider;
              v10 = TUObjectsAreEqualOrNil(handle, v19);

              provider = v23;
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

- (unint64_t)_callGroupCountForCall:(id)call withCall:(id)withCall
{
  callCopy = call;
  withCallCopy = withCall;
  callGroupUUID = [callCopy callGroupUUID];
  if (callGroupUUID)
  {
    callGroupUUID2 = [callCopy callGroupUUID];
    v10 = [(TUCallCenter *)self callsWithGroupUUID:callGroupUUID2];
    v11 = [v10 count];
  }

  else
  {
    v11 = 1;
  }

  callGroupUUID3 = [withCallCopy callGroupUUID];
  if (callGroupUUID3)
  {
    callGroupUUID4 = [withCallCopy callGroupUUID];
    v14 = [(TUCallCenter *)self callsWithGroupUUID:callGroupUUID4];
    v15 = [v14 count];
  }

  else
  {
    v15 = 1;
  }

  return v15 + v11;
}

- (BOOL)isSharePlayActiveForTelephonyCall:(id)call
{
  callCopy = call;
  featureFlags = [(TUCallCenter *)self featureFlags];
  sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled && ([callCopy provider], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isTelephonyProvider"), v7, v8))
  {
    conversationGroupUUID = [callCopy conversationGroupUUID];

    if (conversationGroupUUID)
    {
      conversationManager = [(TUCallCenter *)self conversationManager];
      conversationGroupUUID2 = [callCopy conversationGroupUUID];
      v12 = [conversationManager activeConversationWithGroupUUID:conversationGroupUUID2];

      if (v12)
      {
        LOBYTE(conversationGroupUUID) = [v12 hasJoinedActivitySession];
      }

      else
      {
        LOBYTE(conversationGroupUUID) = 0;
      }
    }
  }

  else
  {
    LOBYTE(conversationGroupUUID) = 0;
  }

  return conversationGroupUUID;
}

- (void)createSplitSessionWithDeviceMediaRouteIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  featureFlags = [(TUCallCenter *)self featureFlags];
  expanseEnabled = [featureFlags expanseEnabled];

  if (expanseEnabled)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__15;
    v25 = __Block_byref_object_dispose__15;
    v26 = 0;
    conversationManager = [(TUCallCenter *)self conversationManager];
    activeConversations = [conversationManager activeConversations];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__TUCallCenter_createSplitSessionWithDeviceMediaRouteIdentifier_completion___block_invoke;
    v20[3] = &unk_1E7427C20;
    v20[4] = &v21;
    [activeConversations enumerateObjectsUsingBlock:v20];

    if (v22[5])
    {
      v12 = [[TUNearbyDeviceHandle alloc] initWithType:1 identifier:identifierCopy name:0];
      objc_initWeak(&location, self);
      neighborhoodActivityConduit = [(TUCallCenter *)self neighborhoodActivityConduit];
      uUID = [v22[5] UUID];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __76__TUCallCenter_createSplitSessionWithDeviceMediaRouteIdentifier_completion___block_invoke_2;
      v16[3] = &unk_1E7427C48;
      v17 = completionCopy;
      objc_copyWeak(&v18, &location);
      [neighborhoodActivityConduit inviteTVDevice:v12 toConversation:uUID completion:v16];

      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = [(TUCallCenter *)self _splitSessionErrorWithCode:-100 underlyingError:0];
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v15 = [(TUCallCenter *)self _splitSessionErrorWithCode:-2 underlyingError:0];
    (*(completionCopy + 2))(completionCopy, 0, v15);
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

- (void)disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [[TUNearbyDeviceHandle alloc] initWithType:1 identifier:identifierCopy name:0];
  objc_initWeak(&location, self);
  neighborhoodActivityConduit = [(TUCallCenter *)self neighborhoodActivityConduit];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__TUCallCenter_disconnectDeviceFromSplitSessionUsingMediaRouteIdentifier_completion___block_invoke;
  v11[3] = &unk_1E7427C48;
  v10 = completionCopy;
  v12 = v10;
  objc_copyWeak(&v13, &location);
  [neighborhoodActivityConduit disconnectTVDevice:v8 completion:v11];

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

- (id)_splitSessionErrorWithCode:(int64_t)code underlyingError:(id)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = errorCopy;
  if (errorCopy)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = errorCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUSplitSessionErrorDomain" code:code userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)registerAnonymousXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface registerAnonymousXPCEndpoint:endpointCopy];
}

- (void)fetchAnonymousXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  [callServicesInterface fetchAnonymousXPCEndpoint:endpointCopy];
}

- (void)performRecordingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  featureFlags = [(TUCallCenter *)self featureFlags];
  callRecordingEnabled = [featureFlags callRecordingEnabled];

  if (callRecordingEnabled)
  {
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface performRecordingRequest:requestCopy completion:completionCopy];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter performRecordingRequest:completion:];
    }

    callServicesInterface = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUStartRecordingErrorDomain" code:0 userInfo:0];
    completionCopy[2](completionCopy, callServicesInterface);
  }
}

- (void)performTranslationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  featureFlags = [(TUCallCenter *)self featureFlags];
  audioCallTranslationEnabled = [featureFlags audioCallTranslationEnabled];

  if (audioCallTranslationEnabled)
  {
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface performTranslationRequest:requestCopy completion:completionCopy];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter performTranslationRequest:completion:];
    }

    callServicesInterface = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUTranslationErrorDomain" code:2 userInfo:0];
    completionCopy[2](completionCopy, callServicesInterface);
  }
}

- (void)_performSmartHoldingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  featureFlags = [(TUCallCenter *)self featureFlags];
  waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

  if (waitOnHoldEnabled)
  {
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface _performSmartHoldingRequest:requestCopy completion:completionCopy];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter _performSmartHoldingRequest:completion:];
    }

    callServicesInterface = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUSmartHoldingErrorDomain" code:3 userInfo:0];
    completionCopy[2](completionCopy, callServicesInterface);
  }
}

- (void)performSmartHoldingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  featureFlags = [(TUCallCenter *)self featureFlags];
  waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

  if (waitOnHoldEnabled)
  {
    callServicesInterface = [(TUCallCenter *)self callServicesInterface];
    [callServicesInterface performSmartHoldingRequest:requestCopy completion:completionCopy];
  }

  else
  {
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [TUCallCenter performSmartHoldingRequest:completion:];
    }

    callServicesInterface = [MEMORY[0x1E696ABC0] errorWithDomain:@"TUSmartHoldingErrorDomain" code:3 userInfo:0];
    completionCopy[2](completionCopy, callServicesInterface);
  }
}

- (void)performSmartHoldingRequestWithType:(int64_t)type forCallWithUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v10 = [[TUSmartHoldingRequest alloc] initWithCallUUID:dCopy requestType:type];

  [(TUCallCenter *)self performSmartHoldingRequest:v10 completion:completionCopy];
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(TUCallCenter *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(TUCallCenter *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (void)_handleReceivedCaptionUpdate:(id)update
{
  updateCopy = update;
  delegateController = [(TUCallCenter *)self delegateController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__TUCallCenter__handleReceivedCaptionUpdate___block_invoke;
  v7[3] = &unk_1E7427C70;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  [delegateController enumerateDelegatesUsingBlock:v7];
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

- (void)_handleReceivedCallDTMFUpdate:(id)update forCall:(id)call
{
  updateCopy = update;
  callCopy = call;
  delegateController = [(TUCallCenter *)self delegateController];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__TUCallCenter__handleReceivedCallDTMFUpdate_forCall___block_invoke;
  v11[3] = &unk_1E7427C98;
  v11[4] = self;
  v12 = callCopy;
  v13 = updateCopy;
  v9 = updateCopy;
  v10 = callCopy;
  [delegateController enumerateDelegatesUsingBlock:v11];
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

- (BOOL)validateIMAVPush:(id)push
{
  pushCopy = push;
  callServicesInterface = [(TUCallCenter *)self callServicesInterface];
  v6 = [callServicesInterface validateIMAVPush:pushCopy];

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