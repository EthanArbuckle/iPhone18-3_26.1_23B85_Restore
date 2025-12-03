@interface SBSSystemServiceClient
- (BOOL)chamoisPrefersDockHidden;
- (BOOL)chamoisPrefersStripHidden;
- (BOOL)deviceSupportsSystemAperture;
- (BOOL)getAssociatedHintViewsSupported;
- (BOOL)isChamoisWindowingUIEnabled;
- (BOOL)isMenuBarSupported;
- (NSArray)systemApertureStateDump;
- (NSDictionary)widgetControllerStateDump;
- (NSMutableArray)systemApertureModelStateDump;
- (NSMutableDictionary)animationFrameRecordings;
- (id)acquireAssertionForReachabilityEnabled:(BOOL)enabled;
- (id)acquireHUDHiddenAssertionForIdentifier:(id)identifier;
- (id)availableRecordableFlipBookElementIdentifiers;
- (id)deserializedStringArrayForKey:(const char *)key fromPayload:(id)payload;
- (id)registerAssociatedHintViewContextId:(unsigned int)id layerRenderId:(unint64_t)renderId layerSize:(CGSize)size forButtonKind:(int64_t)kind;
- (int64_t)passcodePolicy;
- (int64_t)toggleStateForButtonKind:(int64_t)kind;
- (void)_handleButtonEventConsumePressMessage:(id)message;
- (void)acquireAssertionOfType:(int64_t)type forReason:(id)reason withCompletion:(id)completion;
- (void)addWidgetStackWithIdentifiers:(id)identifiers toPage:(int)page withSizing:(int)sizing;
- (void)addWidgetWithIdentifier:(id)identifier toPage:(int)page withSizing:(int)sizing;
- (void)addWidgetsToEachPage;
- (void)clearAllUserNotifications;
- (void)countScenesForBundleIdentifier:(id)identifier withCompletion:(id)completion;
- (void)disableRemoteStateDumpWithCompletion:(id)completion;
- (void)enableRemoteStateDumpWithTimeout:(int64_t)timeout completion:(id)completion;
- (void)enterLostMode;
- (void)exitLostMode;
- (void)fetchHapticTypeForButtonKind:(int64_t)kind completion:(id)completion;
- (void)fetchUnlockCredentialSetWithCompletion:(id)completion;
- (void)handleMessage:(id)message withType:(int64_t)type;
- (void)initiateSecureFlipBookRecordingsForElement:(id)element withCompletion:(id)completion;
- (void)loadStashedSwitcherModelFromPath:(id)path;
- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(id)identifier reacquiringExistingAssertion:(id)assertion completion:(id)completion;
- (void)requestResetLayoutAttributesWithCompletion:(id)completion;
- (void)requestStateDump:(unint64_t)dump withCompletion:(id)completion;
- (void)requestSystemApertureStateDumpWithCompletion:(id)completion;
- (void)requestSystemGlowEffectWithInitialStyle:(int64_t)style completion:(id)completion;
- (void)requestUpdateSwitcherWindowingMode:(int)mode withCompletion:(id)completion;
- (void)resetToHomeScreenAnimated:(BOOL)animated;
- (void)setAccessoryType:(int64_t)type attached:(BOOL)attached;
- (void)setAlertsEnabled:(BOOL)enabled;
- (void)setAmbientPresentationState:(int64_t)state;
- (void)setApplicationBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time;
- (void)setButtonEventServiceIsWaitingForServerMessages:(BOOL)messages;
- (void)setChamoisHideStripsEnabled:(BOOL)enabled;
- (void)setChamoisPrefersDockHidden:(BOOL)hidden;
- (void)setChamoisWindowingUIEnabled:(BOOL)enabled;
- (void)setEventMask:(unint64_t)mask forButtonKind:(int64_t)kind priority:(int64_t)priority;
- (void)setHapticType:(int64_t)type forButtonKind:(int64_t)kind;
- (void)setHiddenFeaturesEnabled:(BOOL)enabled;
- (void)setIdleTimerEnabled:(BOOL)enabled;
- (void)setMallocStackLoggingEnabled:(BOOL)enabled;
- (void)setOrientationLockEnabled:(BOOL)enabled;
- (void)setPasscodePolicy:(int64_t)policy;
- (void)setReachabilityActive:(BOOL)active;
- (void)setRequestsHIDEvents:(BOOL)events token:(id)token forButtonKind:(int64_t)kind;
- (void)setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:(unint64_t)types;
- (void)setSystemApertureUnderAutomationTesting:(BOOL)testing;
- (void)setTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier;
- (void)setUserPresenceDetectedSinceWake;
- (void)stashSwitcherModelToPath:(id)path;
- (void)suspendAllDisplays;
- (void)toggleMenuBarVisibility;
- (void)updateHintViewContentVisibility:(int64_t)visibility forButton:(int64_t)button animationSettings:(id)settings;
- (void)updateSystemGlowStyle:(int64_t)style;
- (void)writeStateDump:(unint64_t)dump toTextFileAtPath:(id)path;
- (void)writeSystemApertureStateDumpToTextFileAtPath:(id)path;
@end

@implementation SBSSystemServiceClient

- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(id)identifier reacquiringExistingAssertion:(id)assertion completion:(id)completion
{
  identifierCopy = identifier;
  assertionCopy = assertion;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SBSSystemServiceClient requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:a2 reacquiringExistingAssertion:self completion:?];
  }

  receiveRight = [assertionCopy receiveRight];
  if (receiveRight || (receiveRight = objc_alloc_init(MEMORY[0x1E698E6C0]), ([receiveRight isUsable] & 1) != 0))
  {
    objc_initWeak(&location, assertionCopy);
    v13 = MEMORY[0x1E699FCF8];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __135__SBSSystemServiceClient_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_reacquiringExistingAssertion_completion___block_invoke;
    v21[3] = &unk_1E7360440;
    v14 = receiveRight;
    v22 = v14;
    v23 = identifierCopy;
    v15 = [v13 messageWithPacker:v21];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __135__SBSSystemServiceClient_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_reacquiringExistingAssertion_completion___block_invoke_2;
    v16[3] = &unk_1E7360490;
    v16[4] = self;
    objc_copyWeak(&v19, &location);
    v20 = assertionCopy != 0;
    receiveRight = v14;
    v17 = receiveRight;
    v18 = completionCopy;
    [(FBSServiceFacilityClient *)self sendMessage:v15 withType:0 replyHandler:v16 waitForReply:assertionCopy != 0 timeout:0.0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __135__SBSSystemServiceClient_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_reacquiringExistingAssertion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E6C8];
  v4 = a2;
  v5 = [[v3 alloc] initFromReceiveRight:*(a1 + 32)];
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeStringToXPCDictionaryWithKey();
}

void __135__SBSSystemServiceClient_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_reacquiringExistingAssertion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = v3;
  if (v3)
  {
    v5 = xpc_dictionary_get_BOOL(v3, SBSAppSwitcherServiceMessageKeySuccessResult);
  }

  else
  {
    v5 = 0;
  }

  v6 = [*(a1 + 32) calloutQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __135__SBSSystemServiceClient_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_reacquiringExistingAssertion_completion___block_invoke_3;
  block[3] = &unk_1E7360468;
  objc_copyWeak(&v12, (a1 + 56));
  v13 = v5;
  v14 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v4;
  dispatch_async(v6, block);

  objc_destroyWeak(&v12);
}

void __135__SBSSystemServiceClient_requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier_reacquiringExistingAssertion_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 65))
    {
      if (![WeakRetained isValid])
      {
        v4 = 0;
        goto LABEL_11;
      }

      v3 = v6;
    }

    else
    {
      v3 = [[SBSAssertion alloc] initWithAssertionName:@"com.apple.springboard.requestAppSwitcherAppearance" reason:@"requestAppSwitcherAppearanceForHiddenApp" receiveRight:*(a1 + 32)];
    }

    v4 = v3;
LABEL_11:
    v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    goto LABEL_12;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    [*(a1 + 32) invalidate];
  }

  v4 = 0;
  v5 = 0;
LABEL_12:
  (*(*(a1 + 48) + 16))();
}

- (void)requestResetLayoutAttributesWithCompletion:(id)completion
{
  completionCopy = completion;
  message = [MEMORY[0x1E699FCF8] message];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SBSSystemServiceClient_requestResetLayoutAttributesWithCompletion___block_invoke;
  v7[3] = &unk_1E735FD90;
  v8 = completionCopy;
  v6 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:1 replyHandler:v7 waitForReply:0 timeout:0.0];
}

uint64_t __69__SBSSystemServiceClient_requestResetLayoutAttributesWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestUpdateSwitcherWindowingMode:(int)mode withCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__SBSSystemServiceClient_requestUpdateSwitcherWindowingMode_withCompletion___block_invoke;
  v11[3] = &__block_descriptor_36_e33_v16__0__NSObject_OS_xpc_object__8l;
  modeCopy = mode;
  v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SBSSystemServiceClient_requestUpdateSwitcherWindowingMode_withCompletion___block_invoke_2;
  v9[3] = &unk_1E735FD90;
  v10 = completionCopy;
  v8 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:2 replyHandler:v9 waitForReply:0 timeout:0.0];
}

uint64_t __76__SBSSystemServiceClient_requestUpdateSwitcherWindowingMode_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchUnlockCredentialSetWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    message = [MEMORY[0x1E699FCF8] message];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__SBSSystemServiceClient_fetchUnlockCredentialSetWithCompletion___block_invoke;
    v6[3] = &unk_1E735FD90;
    v7 = completionCopy;
    [(FBSServiceFacilityClient *)self sendMessage:message withType:3 replyHandler:v6 waitForReply:0 timeout:0.0];
  }
}

void __65__SBSSystemServiceClient_fetchUnlockCredentialSetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = v3;
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = BSDeserializeDataFromXPCDictionaryWithKey();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 32) + 16))();
}

- (void)acquireAssertionOfType:(int64_t)type forReason:(id)reason withCompletion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = MEMORY[0x1E699FCF8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__SBSSystemServiceClient_acquireAssertionOfType_forReason_withCompletion___block_invoke;
    v14[3] = &unk_1E735FE20;
    typeCopy = type;
    v15 = reasonCopy;
    v11 = [v10 messageWithPacker:v14];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__SBSSystemServiceClient_acquireAssertionOfType_forReason_withCompletion___block_invoke_2;
    v12[3] = &unk_1E735FD90;
    v13 = completionCopy;
    [(FBSServiceFacilityClient *)self sendMessage:v11 withType:4 replyHandler:v12 waitForReply:0 timeout:0.0];
  }
}

void __74__SBSSystemServiceClient_acquireAssertionOfType_forReason_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  xpc_dictionary_set_uint64(v3, "assertionType", v2);
  BSSerializeStringToXPCDictionaryWithKey();
}

void __74__SBSSystemServiceClient_acquireAssertionOfType_forReason_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = v3;
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(*(a1 + 32) + 16))();
}

- (void)setButtonEventServiceIsWaitingForServerMessages:(BOOL)messages
{
  if (self->_buttonEventServiceIsWaitingForServerMessages != messages)
  {
    v5 = objc_opt_class();
    if (messages)
    {
      v6 = [v5 checkOutClientWithClass:v5];
    }

    else
    {
      [v5 checkInClient:self];
    }

    self->_buttonEventServiceIsWaitingForServerMessages = messages;
  }
}

- (int64_t)toggleStateForButtonKind:(int64_t)kind
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SBSSystemServiceClient_toggleStateForButtonKind___block_invoke;
  v8[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v8[4] = kind;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SBSSystemServiceClient_toggleStateForButtonKind___block_invoke_2;
  v7[3] = &unk_1E735FE70;
  v7[4] = &v9;
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:7 replyHandler:v7 waitForReply:1 timeout:0.0];

  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __51__SBSSystemServiceClient_toggleStateForButtonKind___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(xdict, "toggleButtonState");
      v3 = xdict;
    }
  }
}

- (void)setEventMask:(unint64_t)mask forButtonKind:(int64_t)kind priority:(int64_t)priority
{
  [(SBSSystemServiceClient *)self setButtonEventServiceIsWaitingForServerMessages:mask != 0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__SBSSystemServiceClient_setEventMask_forButtonKind_priority___block_invoke;
  v10[3] = &__block_descriptor_56_e33_v16__0__NSObject_OS_xpc_object__8l;
  v10[4] = mask;
  v10[5] = priority;
  v10[6] = kind;
  v9 = [MEMORY[0x1E699FCF8] messageWithPacker:v10];
  [(FBSServiceFacilityClient *)self sendMessage:v9 withType:5];
}

void __62__SBSSystemServiceClient_setEventMask_forButtonKind_priority___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  xdict = a2;
  xpc_dictionary_set_uint64(xdict, "eventMask", v3);
  xpc_dictionary_set_int64(xdict, "priority", a1[5]);
  xpc_dictionary_set_int64(xdict, "buttonKind", a1[6]);
}

- (void)setRequestsHIDEvents:(BOOL)events token:(id)token forButtonKind:(int64_t)kind
{
  tokenCopy = token;
  v9 = MEMORY[0x1E699FCF8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__SBSSystemServiceClient_setRequestsHIDEvents_token_forButtonKind___block_invoke;
  v12[3] = &unk_1E73604D8;
  eventsCopy = events;
  v13 = tokenCopy;
  kindCopy = kind;
  v10 = tokenCopy;
  v11 = [v9 messageWithPacker:v12];
  [(FBSServiceFacilityClient *)self sendMessage:v11 withType:6];
}

void __67__SBSSystemServiceClient_setRequestsHIDEvents_token_forButtonKind___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, "buttonKind", *(a1 + 40));
  xpc_dictionary_set_BOOL(xdict, "HIDEventsEnabled", *(a1 + 48));
  if (*(a1 + 32))
  {
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }
}

- (void)_handleButtonEventConsumePressMessage:(id)message
{
  xdict = [message payload];
  int64 = xpc_dictionary_get_int64(xdict, "eventType");
  v4 = xpc_dictionary_get_int64(xdict, "priority");
  v5 = xpc_dictionary_get_int64(xdict, "buttonKind");
  v6 = +[SBSHardwareButtonService sharedInstance];
  [v6 handleButtonPressMessage:int64 forButtonKind:v5 priority:v4];
}

- (void)setHapticType:(int64_t)type forButtonKind:(int64_t)kind
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBSSystemServiceClient_setHapticType_forButtonKind___block_invoke;
  v6[3] = &__block_descriptor_48_e33_v16__0__NSObject_OS_xpc_object__8l;
  v6[4] = kind;
  v6[5] = type;
  v5 = [MEMORY[0x1E699FCF8] messageWithPacker:v6];
  [(FBSServiceFacilityClient *)self sendMessage:v5 withType:8];
}

void __54__SBSSystemServiceClient_setHapticType_forButtonKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  xdict = a2;
  xpc_dictionary_set_int64(xdict, "buttonKind", v3);
  xpc_dictionary_set_int64(xdict, "hapticType", *(a1 + 40));
}

- (void)fetchHapticTypeForButtonKind:(int64_t)kind completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__SBSSystemServiceClient_fetchHapticTypeForButtonKind_completion___block_invoke;
  v11[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v11[4] = kind;
  v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__SBSSystemServiceClient_fetchHapticTypeForButtonKind_completion___block_invoke_2;
  v9[3] = &unk_1E735FD90;
  v10 = completionCopy;
  v8 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:9 replyHandler:v9 waitForReply:0 timeout:0.0];
}

void __66__SBSSystemServiceClient_fetchHapticTypeForButtonKind_completion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_int64(xdict, "hapticType");
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)getAssociatedHintViewsSupported
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SBSSystemServiceClient_getAssociatedHintViewsSupported__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  if (getAssociatedHintViewsSupported_onceToken != -1)
  {
    dispatch_once(&getAssociatedHintViewsSupported_onceToken, block);
  }

  return getAssociatedHintViewsSupported_hintViewsSupported;
}

void __57__SBSSystemServiceClient_getAssociatedHintViewsSupported__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E699FCF8] message];
  [v1 sendMessage:v2 withType:10 replyHandler:&__block_literal_global_29 waitForReply:1 timeout:0.0];
}

void __57__SBSSystemServiceClient_getAssociatedHintViewsSupported__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 payload];
  if (v2)
  {
    xdict = v2;
    v3 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v2 = xdict;
    if (v3)
    {
      getAssociatedHintViewsSupported_hintViewsSupported = xpc_dictionary_get_BOOL(xdict, "buttonHintViewsSupported");
      v2 = xdict;
    }
  }
}

- (id)registerAssociatedHintViewContextId:(unsigned int)id layerRenderId:(unint64_t)renderId layerSize:(CGSize)size forButtonKind:(int64_t)kind
{
  height = size.height;
  width = size.width;
  v12 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v12 isUsable])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v13 = MEMORY[0x1E699FCF8];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __100__SBSSystemServiceClient_registerAssociatedHintViewContextId_layerRenderId_layerSize_forButtonKind___block_invoke;
    v28[3] = &unk_1E7360540;
    v14 = v12;
    idCopy = id;
    v29 = v14;
    renderIdCopy = renderId;
    v31 = width;
    v32 = height;
    kindCopy = kind;
    v15 = [v13 messageWithPacker:v28];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __100__SBSSystemServiceClient_registerAssociatedHintViewContextId_layerRenderId_layerSize_forButtonKind___block_invoke_2;
    v27[3] = &unk_1E735FE70;
    v27[4] = &v35;
    [(FBSServiceFacilityClient *)self sendMessage:v15 withType:11 replyHandler:v27 waitForReply:1 timeout:0.0];

    if (v36[3])
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v18 = bundleIdentifier;
      if (bundleIdentifier)
      {
        bundlePath = bundleIdentifier;
      }

      else
      {
        mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
        bundlePath = [mainBundle2 bundlePath];
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSHardwareButtonService request from %@", bundlePath];
      v23 = [SBSHardwareButtonHintViewAssertion alloc];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v20 = [(SBSHardwareButtonHintViewAssertion *)v23 initWithButtonKind:kind assertionName:uUIDString reason:v22 receiveRight:v14];
    }

    else
    {
      v20 = 0;
    }

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __100__SBSSystemServiceClient_registerAssociatedHintViewContextId_layerRenderId_layerSize_forButtonKind___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E6C8];
  v4 = a2;
  v5 = [[v3 alloc] initFromReceiveRight:*(a1 + 32)];
  xpc_dictionary_set_uint64(v4, "sourceContextId", *(a1 + 72));
  xpc_dictionary_set_uint64(v4, "sourceLayerRenderId", *(a1 + 40));
  BSSerializeCGSizeToXPCDictionaryWithKey();
  xpc_dictionary_set_int64(v4, "buttonKind", *(a1 + 64));
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

void __100__SBSSystemServiceClient_registerAssociatedHintViewContextId_layerRenderId_layerSize_forButtonKind___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "success");
      v3 = xdict;
    }
  }
}

- (void)updateHintViewContentVisibility:(int64_t)visibility forButton:(int64_t)button animationSettings:(id)settings
{
  settingsCopy = settings;
  v9 = MEMORY[0x1E699FCF8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__SBSSystemServiceClient_updateHintViewContentVisibility_forButton_animationSettings___block_invoke;
  v12[3] = &unk_1E7360568;
  visibilityCopy = visibility;
  buttonCopy = button;
  v13 = settingsCopy;
  v10 = settingsCopy;
  v11 = [v9 messageWithPacker:v12];
  [(FBSServiceFacilityClient *)self sendMessage:v11 withType:12];
}

void __86__SBSSystemServiceClient_updateHintViewContentVisibility_forButton_animationSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  xdict = a2;
  xpc_dictionary_set_int64(xdict, "hintContentVisibility", v3);
  xpc_dictionary_set_int64(xdict, "buttonKind", *(a1 + 48));
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)requestSystemGlowEffectWithInitialStyle:(int64_t)style completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v7 isUsable])
  {
    v8 = MEMORY[0x1E699FCF8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__SBSSystemServiceClient_requestSystemGlowEffectWithInitialStyle_completion___block_invoke;
    v14[3] = &unk_1E735FE20;
    v9 = v7;
    v15 = v9;
    styleCopy = style;
    v10 = [v8 messageWithPacker:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__SBSSystemServiceClient_requestSystemGlowEffectWithInitialStyle_completion___block_invoke_2;
    v11[3] = &unk_1E7360590;
    v12 = v9;
    v13 = completionCopy;
    [(FBSServiceFacilityClient *)self sendMessage:v10 withType:13 replyHandler:v11 waitForReply:0 timeout:0.0];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __77__SBSSystemServiceClient_requestSystemGlowEffectWithInitialStyle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E6C8];
  v4 = a2;
  v5 = [[v3 alloc] initFromReceiveRight:*(a1 + 32)];
  xpc_dictionary_set_int64(v4, "systemGlowStyle", *(a1 + 40));
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

void __77__SBSSystemServiceClient_requestSystemGlowEffectWithInitialStyle_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      if (xpc_dictionary_get_BOOL(xdict, "success"))
      {
        v5 = [MEMORY[0x1E696AAE8] mainBundle];
        v6 = [v5 bundleIdentifier];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v10 = [MEMORY[0x1E696AAE8] mainBundle];
          v8 = [v10 bundlePath];
        }

        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSHardwareButtonService system glow request from %@", v8];
        v12 = [SBSHardwareButtonSystemGlowAssertion alloc];
        v13 = [MEMORY[0x1E696AFB0] UUID];
        v14 = [v13 UUIDString];
        v9 = [(SBSAssertion *)v12 initWithAssertionName:v14 reason:v11 receiveRight:*(a1 + 32)];
      }

      else
      {
        v9 = 0;
      }

      v15 = *(a1 + 40);
      if (v15)
      {
        (*(v15 + 16))(v15, v9);
      }

      v3 = xdict;
    }
  }
}

- (void)updateSystemGlowStyle:(int64_t)style
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBSSystemServiceClient_updateSystemGlowStyle___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = style;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:14];
}

- (void)setPasscodePolicy:(int64_t)policy
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SBSSystemServiceClient_setPasscodePolicy___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = policy;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:15];
}

- (int64_t)passcodePolicy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  message = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__SBSSystemServiceClient_passcodePolicy__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:16 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __40__SBSSystemServiceClient_passcodePolicy__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(xdict, "passcodePolicy");
      v3 = xdict;
    }
  }
}

- (void)suspendAllDisplays
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:17];
}

- (void)clearAllUserNotifications
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:18];
}

- (void)setUserPresenceDetectedSinceWake
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:46];
}

- (void)setAlertsEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SBSSystemServiceClient_setAlertsEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:19];
}

- (void)setHiddenFeaturesEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SBSSystemServiceClient_setHiddenFeaturesEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:20];
}

- (void)setIdleTimerEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SBSSystemServiceClient_setIdleTimerEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:21];
}

- (void)setOrientationLockEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBSSystemServiceClient_setOrientationLockEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:22];
}

- (void)setMallocStackLoggingEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SBSSystemServiceClient_setMallocStackLoggingEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:23];
}

- (void)setReachabilityActive:(BOOL)active
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SBSSystemServiceClient_setReachabilityActive___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  activeCopy = active;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:24];
}

- (void)setAmbientPresentationState:(int64_t)state
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSSystemServiceClient_setAmbientPresentationState___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = state;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:26];
}

- (id)acquireAssertionForReachabilityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v5 isUsable])
  {
    v6 = MEMORY[0x1E699FCF8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65__SBSSystemServiceClient_acquireAssertionForReachabilityEnabled___block_invoke;
    v19[3] = &unk_1E73605D8;
    v7 = v5;
    v20 = v7;
    v21 = enabledCopy;
    v8 = [v6 messageWithPacker:v19];
    [(FBSServiceFacilityClient *)self sendMessage:v8 withType:25 replyHandler:&__block_literal_global_37 waitForReply:1 timeout:0.0];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v11 = bundleIdentifier;
    if (bundleIdentifier)
    {
      bundlePath = bundleIdentifier;
    }

    else
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundlePath = [mainBundle2 bundlePath];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSTestAutomationService request from %@", bundlePath];
    v16 = @"disabled";
    if (enabledCopy)
    {
      v16 = @"enabled";
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Reachability %@", v16];
    v13 = [[SBSAssertion alloc] initWithAssertionName:v17 reason:v15 receiveRight:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __65__SBSSystemServiceClient_acquireAssertionForReachabilityEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E6C8];
  v4 = a2;
  v5 = [[v3 alloc] initFromReceiveRight:*(a1 + 32)];
  xpc_dictionary_set_BOOL(v4, "enabledState", *(a1 + 40));
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)resetToHomeScreenAnimated:(BOOL)animated
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SBSSystemServiceClient_resetToHomeScreenAnimated___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  animatedCopy = animated;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:27];
}

- (void)setAccessoryType:(int64_t)type attached:(BOOL)attached
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SBSSystemServiceClient_setAccessoryType_attached___block_invoke;
  v6[3] = &__block_descriptor_41_e33_v16__0__NSObject_OS_xpc_object__8l;
  v6[4] = type;
  attachedCopy = attached;
  v5 = [MEMORY[0x1E699FCF8] messageWithPacker:v6];
  [(FBSServiceFacilityClient *)self sendMessage:v5 withType:28];
}

void __52__SBSSystemServiceClient_setAccessoryType_attached___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  xdict = a2;
  xpc_dictionary_set_int64(xdict, "accessoryType", v3);
  xpc_dictionary_set_BOOL(xdict, "enabledState", *(a1 + 40));
}

- (void)setApplicationBundleIdentifier:(id)identifier blockedForScreenTime:(BOOL)time
{
  identifierCopy = identifier;
  v7 = MEMORY[0x1E699FCF8];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __78__SBSSystemServiceClient_setApplicationBundleIdentifier_blockedForScreenTime___block_invoke;
  v13 = &unk_1E73605D8;
  v14 = identifierCopy;
  timeCopy = time;
  v8 = identifierCopy;
  v9 = [v7 messageWithPacker:&v10];
  [(FBSServiceFacilityClient *)self sendMessage:v9 withType:30, v10, v11, v12, v13];
}

void __78__SBSSystemServiceClient_setApplicationBundleIdentifier_blockedForScreenTime___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "screenTimeBlocked", *(a1 + 40));
}

- (void)setTestRunnerRecoveryApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__SBSSystemServiceClient_setTestRunnerRecoveryApplicationBundleIdentifier___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = identifierCopy;
  v6 = identifierCopy;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:31];
}

- (id)acquireHUDHiddenAssertionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E698E6C0]);
  if ([v5 isUsable])
  {
    v6 = MEMORY[0x1E699FCF8];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__SBSSystemServiceClient_acquireHUDHiddenAssertionForIdentifier___block_invoke;
    v18[3] = &unk_1E7360440;
    v7 = v5;
    v19 = v7;
    v8 = identifierCopy;
    v20 = v8;
    v9 = [v6 messageWithPacker:v18];
    [(FBSServiceFacilityClient *)self sendMessage:v9 withType:29 replyHandler:&__block_literal_global_52 waitForReply:1 timeout:0.0];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = bundleIdentifier;
    if (bundleIdentifier)
    {
      bundlePath = bundleIdentifier;
    }

    else
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundlePath = [mainBundle2 bundlePath];
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSTestAutomationService request from %@", bundlePath];
    v14 = [[SBSAssertion alloc] initWithAssertionName:v8 reason:v16 receiveRight:v7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __65__SBSSystemServiceClient_acquireHUDHiddenAssertionForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698E6C8];
  v4 = a2;
  v5 = [[v3 alloc] initFromReceiveRight:*(a1 + 32)];
  BSSerializeStringToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (void)countScenesForBundleIdentifier:(id)identifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = MEMORY[0x1E699FCF8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__SBSSystemServiceClient_countScenesForBundleIdentifier_withCompletion___block_invoke;
  v14[3] = &unk_1E735FDF8;
  v15 = identifierCopy;
  v9 = identifierCopy;
  v10 = [v8 messageWithPacker:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__SBSSystemServiceClient_countScenesForBundleIdentifier_withCompletion___block_invoke_2;
  v12[3] = &unk_1E735FD90;
  v13 = completionCopy;
  v11 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v10 withType:32 replyHandler:v12 waitForReply:0 timeout:0.0];
}

void __72__SBSSystemServiceClient_countScenesForBundleIdentifier_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    xpc_dictionary_get_int64(xdict, "sceneCount");
  }

  (*(*(a1 + 32) + 16))();
}

- (void)stashSwitcherModelToPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__SBSSystemServiceClient_stashSwitcherModelToPath___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = pathCopy;
  v6 = pathCopy;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:33];
}

- (void)loadStashedSwitcherModelFromPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__SBSSystemServiceClient_loadStashedSwitcherModelFromPath___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = pathCopy;
  v6 = pathCopy;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:34];
}

- (void)addWidgetsToEachPage
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:35 replyHandler:&__block_literal_global_54_0 waitForReply:1 timeout:0.0];
}

- (void)addWidgetWithIdentifier:(id)identifier toPage:(int)page withSizing:(int)sizing
{
  identifierCopy = identifier;
  v9 = MEMORY[0x1E699FCF8];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __68__SBSSystemServiceClient_addWidgetWithIdentifier_toPage_withSizing___block_invoke;
  v15 = &unk_1E735FE20;
  v16 = identifierCopy;
  pageCopy = page;
  sizingCopy = sizing;
  v10 = identifierCopy;
  v11 = [v9 messageWithPacker:&v12];
  [(FBSServiceFacilityClient *)self sendMessage:v11 withType:36 replyHandler:&__block_literal_global_56 waitForReply:1 timeout:0.0, v12, v13, v14, v15];
}

void __68__SBSSystemServiceClient_addWidgetWithIdentifier_toPage_withSizing___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_int64(xdict, "pageInteger", *(a1 + 40));
  xpc_dictionary_set_int64(xdict, "sizeInteger", *(a1 + 44));
}

- (void)addWidgetStackWithIdentifiers:(id)identifiers toPage:(int)page withSizing:(int)sizing
{
  identifiersCopy = identifiers;
  v9 = MEMORY[0x1E699FCF8];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __74__SBSSystemServiceClient_addWidgetStackWithIdentifiers_toPage_withSizing___block_invoke;
  v15 = &unk_1E735FE20;
  v16 = identifiersCopy;
  pageCopy = page;
  sizingCopy = sizing;
  v10 = identifiersCopy;
  v11 = [v9 messageWithPacker:&v12];
  [(FBSServiceFacilityClient *)self sendMessage:v11 withType:37 replyHandler:&__block_literal_global_61 waitForReply:1 timeout:0.0, v12, v13, v14, v15];
}

void __74__SBSSystemServiceClient_addWidgetStackWithIdentifiers_toPage_withSizing___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  BSSerializeArrayToXPCDictionaryWithKey();
  xpc_dictionary_set_int64(xdict, "pageInteger", *(a1 + 40));
  xpc_dictionary_set_int64(xdict, "sizeInteger", *(a1 + 44));
}

id __74__SBSSystemServiceClient_addWidgetStackWithIdentifiers_toPage_withSizing___block_invoke_2(int a1, id a2)
{
  v2 = xpc_string_create([a2 UTF8String]);

  return v2;
}

- (void)enterLostMode
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:38];
}

- (void)exitLostMode
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:39];
}

- (BOOL)isChamoisWindowingUIEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  message = [MEMORY[0x1E699FCF8] message];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SBSSystemServiceClient_isChamoisWindowingUIEnabled__block_invoke;
  v5[3] = &unk_1E735FE70;
  v5[4] = &v6;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:40 replyHandler:v5 waitForReply:1 timeout:10.0];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __53__SBSSystemServiceClient_isChamoisWindowingUIEnabled__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "enabledState");
      v3 = xdict;
    }
  }
}

- (void)setChamoisWindowingUIEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SBSSystemServiceClient_setChamoisWindowingUIEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:41 replyHandler:&__block_literal_global_63_0 waitForReply:1 timeout:10.0];
}

- (BOOL)chamoisPrefersDockHidden
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  message = [MEMORY[0x1E699FCF8] message];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__SBSSystemServiceClient_chamoisPrefersDockHidden__block_invoke;
  v5[3] = &unk_1E735FE70;
  v5[4] = &v6;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:42 replyHandler:v5 waitForReply:1 timeout:10.0];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __50__SBSSystemServiceClient_chamoisPrefersDockHidden__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "enabledState");
      v3 = xdict;
    }
  }
}

- (void)setChamoisPrefersDockHidden:(BOOL)hidden
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSSystemServiceClient_setChamoisPrefersDockHidden___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  hiddenCopy = hidden;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:43 replyHandler:&__block_literal_global_65 waitForReply:1 timeout:10.0];
}

- (BOOL)chamoisPrefersStripHidden
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  message = [MEMORY[0x1E699FCF8] message];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SBSSystemServiceClient_chamoisPrefersStripHidden__block_invoke;
  v5[3] = &unk_1E735FE70;
  v5[4] = &v6;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:44 replyHandler:v5 waitForReply:1 timeout:10.0];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __51__SBSSystemServiceClient_chamoisPrefersStripHidden__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    xdict = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = xdict;
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(xdict, "enabledState");
      v3 = xdict;
    }
  }
}

- (void)setChamoisHideStripsEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSSystemServiceClient_setChamoisHideStripsEnabled___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  enabledCopy = enabled;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:45 replyHandler:&__block_literal_global_67 waitForReply:1 timeout:10.0];
}

- (BOOL)deviceSupportsSystemAperture
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  message = [MEMORY[0x1E699FCF8] message];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SBSSystemServiceClient_deviceSupportsSystemAperture__block_invoke;
  v5[3] = &unk_1E735FE70;
  v5[4] = &v6;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:47 replyHandler:v5 waitForReply:1 timeout:0.0];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __54__SBSSystemServiceClient_deviceSupportsSystemAperture__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 payload];
  if (v3)
  {
    v4 = [v5 payload];
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v4, "deviceSupportsSystemAperture");
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes:(unint64_t)types
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__SBSSystemServiceClient_setSpringBoardAnimationFrameRecordingEnabledForUpdateTypes___block_invoke;
  v5[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v5[4] = types;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:50 replyHandler:&__block_literal_global_69_0 waitForReply:1 timeout:10.0];
}

- (void)setSystemApertureUnderAutomationTesting:(BOOL)testing
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__SBSSystemServiceClient_setSystemApertureUnderAutomationTesting___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0__NSObject_OS_xpc_object__8l;
  testingCopy = testing;
  v4 = [MEMORY[0x1E699FCF8] messageWithPacker:v5];
  [(FBSServiceFacilityClient *)self sendMessage:v4 withType:52 replyHandler:&__block_literal_global_71 waitForReply:1 timeout:0.0];
}

- (NSMutableDictionary)animationFrameRecordings
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_opt_new();
  message = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SBSSystemServiceClient_animationFrameRecordings__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:51 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__SBSSystemServiceClient_animationFrameRecordings__block_invoke(uint64_t a1, void *a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = [a2 payload];
  v4 = v3;
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = BSDeserializeDataFromXPCDictionaryWithKey();
    v6 = MEMORY[0x1E696ACD0];
    v7 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v13[3] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
    v9 = [v7 setWithArray:v8];
    v10 = [v6 unarchivedObjectOfClasses:v9 fromData:v5 error:0];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (NSArray)systemApertureStateDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  message = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SBSSystemServiceClient_systemApertureStateDump__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:48 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__SBSSystemServiceClient_systemApertureStateDump__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = v3;
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "systemApertureElementClientIdentifier"];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "systemApertureElementIdentifier"];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "systemApertureElementViewLayoutMode"];
    v13 = v5;
    v15 = v14 = v6;
    v7 = v15;
    v8 = v6;
    v9 = v5;
    v10 = BSCreateDeserializedArrayFromXPCDictionaryWithKey();
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

id __49__SBSSystemServiceClient_systemApertureStateDump__block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3 && MEMORY[0x193AFFE60](v3) == MEMORY[0x1E69E9E80])
  {
    v5 = BSDeserializeStringFromXPCDictionaryWithKey();
    [v4 setValue:v5 forKey:a1[4]];

    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    [v4 setValue:v6 forKey:a1[5]];

    v7 = BSDeserializeStringFromXPCDictionaryWithKey();
    [v4 setValue:v7 forKey:a1[6]];
  }

  return v4;
}

- (NSMutableArray)systemApertureModelStateDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_opt_new();
  message = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__SBSSystemServiceClient_systemApertureModelStateDump__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:53 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__SBSSystemServiceClient_systemApertureModelStateDump__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v9 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v9;
    if (v4)
    {
      v5 = BSDeserializeDataFromXPCDictionaryWithKey();
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:4 error:0];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v3 = v9;
    }
  }
}

- (NSDictionary)widgetControllerStateDump
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_opt_new();
  message = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__SBSSystemServiceClient_widgetControllerStateDump__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:49 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__SBSSystemServiceClient_widgetControllerStateDump__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v9 = v3;
    v4 = MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80];
    v3 = v9;
    if (v4)
    {
      v5 = BSDeserializeDataFromXPCDictionaryWithKey();
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:4 error:0];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v3 = v9;
    }
  }
}

- (id)deserializedStringArrayForKey:(const char *)key fromPayload:(id)payload
{
  v4 = BSCreateDeserializedArrayFromXPCDictionaryWithKey();

  return v4;
}

__CFString *__68__SBSSystemServiceClient_deserializedStringArrayForKey_fromPayload___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && MEMORY[0x193AFFE60](v2) == MEMORY[0x1E69E9F10])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v4 = &stru_1F058B7C8;
  }

  return v4;
}

- (void)requestSystemApertureStateDumpWithCompletion:(id)completion
{
  completionCopy = completion;
  message = [MEMORY[0x1E699FCF8] message];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SBSSystemServiceClient_requestSystemApertureStateDumpWithCompletion___block_invoke;
  v7[3] = &unk_1E735FD90;
  v8 = completionCopy;
  v6 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:57 replyHandler:v7 waitForReply:0 timeout:0.0];
}

void __71__SBSSystemServiceClient_requestSystemApertureStateDumpWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(xdict, "requestSystemApertureStateDump");
    v3 = xpc_dictionary_get_string(xdict, "systemApertureErrorDescription");
    if (string)
    {
      string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
    }

    if (v3)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v3];
    }
  }

  else
  {
    v3 = 0;
    string = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)writeSystemApertureStateDumpToTextFileAtPath:(id)path
{
  pathCopy = path;
  v5 = MEMORY[0x1E699FCF8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__SBSSystemServiceClient_writeSystemApertureStateDumpToTextFileAtPath___block_invoke;
  v8[3] = &unk_1E735FDF8;
  v9 = pathCopy;
  v6 = pathCopy;
  v7 = [v5 messageWithPacker:v8];
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:56 replyHandler:&__block_literal_global_90_0 waitForReply:1 timeout:0.0];
}

void __71__SBSSystemServiceClient_writeSystemApertureStateDumpToTextFileAtPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    xdict = a2;
    xpc_dictionary_set_string(xdict, "stateDumpTextFilePath", [v2 UTF8String]);
  }
}

- (void)requestStateDump:(unint64_t)dump withCompletion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__SBSSystemServiceClient_requestStateDump_withCompletion___block_invoke;
  v11[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v11[4] = dump;
  v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SBSSystemServiceClient_requestStateDump_withCompletion___block_invoke_2;
  v9[3] = &unk_1E735FD90;
  v10 = completionCopy;
  v8 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:58 replyHandler:v9 waitForReply:0 timeout:0.0];
}

void __58__SBSSystemServiceClient_requestStateDump_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (!xdict || MEMORY[0x193AFFE60]() != MEMORY[0x1E69E9E80])
  {
    v3 = 0;
LABEL_4:
    v4 = @"Error, corrupted XPC payload.";
    goto LABEL_5;
  }

  xpc_dictionary_get_BOOL(xdict, "stateDumpSuccess");
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{xpc_dictionary_get_string(xdict, "stateData")}];
  string = xpc_dictionary_get_string(xdict, "stateDumpSuccessDescription");
  if (!string)
  {
    goto LABEL_4;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
LABEL_5:
  (*(*(a1 + 32) + 16))();
}

- (void)writeStateDump:(unint64_t)dump toTextFileAtPath:(id)path
{
  pathCopy = path;
  v7 = MEMORY[0x1E699FCF8];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__SBSSystemServiceClient_writeStateDump_toTextFileAtPath___block_invoke;
  v13 = &unk_1E735FE20;
  v14 = pathCopy;
  dumpCopy = dump;
  v8 = pathCopy;
  v9 = [v7 messageWithPacker:&v10];
  [(FBSServiceFacilityClient *)self sendMessage:v9 withType:59 replyHandler:&__block_literal_global_95 waitForReply:1 timeout:0.0, v10, v11, v12, v13];
}

void __58__SBSSystemServiceClient_writeStateDump_toTextFileAtPath___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  xpc_dictionary_set_uint64(xdict, "stateDumpType", *(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    xpc_dictionary_set_string(xdict, "stateDumpTextFilePath", [v3 UTF8String]);
  }
}

- (void)enableRemoteStateDumpWithTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__SBSSystemServiceClient_enableRemoteStateDumpWithTimeout_completion___block_invoke;
  v11[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  v11[4] = timeout;
  v7 = [MEMORY[0x1E699FCF8] messageWithPacker:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__SBSSystemServiceClient_enableRemoteStateDumpWithTimeout_completion___block_invoke_2;
  v9[3] = &unk_1E735FD90;
  v10 = completionCopy;
  v8 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v7 withType:60 replyHandler:v9 waitForReply:0 timeout:0.0];
}

void __70__SBSSystemServiceClient_enableRemoteStateDumpWithTimeout_completion___block_invoke_2(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80] && (xpc_dictionary_get_BOOL(xdict, "stateDumpSuccess"), (string = xpc_dictionary_get_string(xdict, "stateDumpSuccessDescription")) != 0))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  else
  {
    v3 = @"Error, corrupted XPC payload.";
  }

  (*(*(a1 + 32) + 16))();
}

- (void)disableRemoteStateDumpWithCompletion:(id)completion
{
  completionCopy = completion;
  message = [MEMORY[0x1E699FCF8] message];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__SBSSystemServiceClient_disableRemoteStateDumpWithCompletion___block_invoke;
  v7[3] = &unk_1E735FD90;
  v8 = completionCopy;
  v6 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:61 replyHandler:v7 waitForReply:0 timeout:0.0];
}

void __63__SBSSystemServiceClient_disableRemoteStateDumpWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  xdict = [a2 payload];
  if (xdict && MEMORY[0x193AFFE60]() == MEMORY[0x1E69E9E80] && (xpc_dictionary_get_BOOL(xdict, "stateDumpSuccess"), (string = xpc_dictionary_get_string(xdict, "stateDumpSuccessDescription")) != 0))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
  }

  else
  {
    v3 = @"Error, corrupted XPC payload.";
  }

  (*(*(a1 + 32) + 16))();
}

- (void)initiateSecureFlipBookRecordingsForElement:(id)element withCompletion:(id)completion
{
  elementCopy = element;
  completionCopy = completion;
  v8 = MEMORY[0x1E699FCF8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__SBSSystemServiceClient_initiateSecureFlipBookRecordingsForElement_withCompletion___block_invoke;
  v14[3] = &unk_1E735FDF8;
  v15 = elementCopy;
  v9 = elementCopy;
  v10 = [v8 messageWithPacker:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__SBSSystemServiceClient_initiateSecureFlipBookRecordingsForElement_withCompletion___block_invoke_2;
  v12[3] = &unk_1E735FD90;
  v13 = completionCopy;
  v11 = completionCopy;
  [(FBSServiceFacilityClient *)self sendMessage:v10 withType:54 replyHandler:v12 waitForReply:1 timeout:180.0];
}

void __84__SBSSystemServiceClient_initiateSecureFlipBookRecordingsForElement_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  xdict = a2;
  xpc_dictionary_set_string(xdict, "secureFlipBookElement", [v3 UTF8String]);
}

void __84__SBSSystemServiceClient_initiateSecureFlipBookRecordingsForElement_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 payload];
  v4 = v3;
  if (v3)
  {
    string = xpc_dictionary_get_string(v3, "secureFlipBookErrorDescription");
    if (string)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
      v7 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v13[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      string = [v7 errorWithDomain:@"InitiateSecureFlipBookRecordingError" code:-1 userInfo:v8];
    }

    v9 = xpc_dictionary_get_string(v4, "secureFlipBookRecordingDestinationURL");
    if (v9)
    {
      v10 = MEMORY[0x1E695DFF8];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v9];
      v9 = [v10 URLWithString:v11];
    }
  }

  else
  {
    v9 = 0;
    string = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (id)availableRecordableFlipBookElementIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_opt_new();
  message = [MEMORY[0x1E699FCF8] message];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__SBSSystemServiceClient_availableRecordableFlipBookElementIdentifiers__block_invoke;
  v6[3] = &unk_1E735FE70;
  v6[4] = &v7;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:55 replyHandler:v6 waitForReply:1 timeout:0.0];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __71__SBSSystemServiceClient_availableRecordableFlipBookElementIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v8 = v3;
    v4 = BSDeserializeDataFromXPCDictionaryWithKey();
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:4 error:0];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

- (BOOL)isMenuBarSupported
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  message = [MEMORY[0x1E699FCF8] message];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SBSSystemServiceClient_isMenuBarSupported__block_invoke;
  v5[3] = &unk_1E735FE70;
  v5[4] = &v6;
  [(FBSServiceFacilityClient *)self sendMessage:message withType:62 replyHandler:v5 waitForReply:1 timeout:0.0];

  LOBYTE(self) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return self;
}

void __44__SBSSystemServiceClient_isMenuBarSupported__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  if (v3)
  {
    v4 = v3;
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v3, "menuBarSupported");
    v3 = v4;
  }
}

- (void)toggleMenuBarVisibility
{
  message = [MEMORY[0x1E699FCF8] message];
  [(FBSServiceFacilityClient *)self sendMessage:message withType:63 replyHandler:&__block_literal_global_103 waitForReply:0 timeout:0.0];
}

- (void)handleMessage:(id)message withType:(int64_t)type
{
  if (!type)
  {
    [(SBSSystemServiceClient *)self _handleButtonEventConsumePressMessage:message];
  }
}

- (void)requestAppSwitcherAppearanceForHiddenApplicationWithBundleIdentifier:(uint64_t)a1 reacquiringExistingAssertion:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSSystemServiceClient.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end