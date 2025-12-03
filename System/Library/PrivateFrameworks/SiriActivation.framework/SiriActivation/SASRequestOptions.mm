@interface SASRequestOptions
- (BOOL)_isForSpeechRequest;
- (BOOL)_isTypeToSiriPermittedAndEnabledForRequestOptions;
- (BOOL)isATVRemotePTTEligible;
- (BOOL)isForAppleTV;
- (BOOL)isForStark;
- (BOOL)isForUIFree;
- (BOOL)isH1Activation;
- (BOOL)isHeadunitEyesFree;
- (BOOL)isVoiceTriggerRequest;
- (BOOL)isWiredMicOrBTHeadsetOrWx;
- (BOOL)userTypedInSiri;
- (SASRequestOptions)initWithCoder:(id)coder;
- (SASRequestOptions)initWithRequestSource:(int64_t)source uiPresentationIdentifier:(id)identifier buttonContext:(id)context;
- (SASRequestOptions)initWithRequestSource:(int64_t)source uiPresentationIdentifier:(id)identifier systemState:(id)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nullableProperties;
- (int64_t)inputType;
- (void)_configureStreamingDictationForSource:(int64_t)source;
- (void)_updateWithSystemState:(id)state forcefully:(BOOL)forcefully;
- (void)encodeWithCoder:(id)coder;
- (void)isATVRemotePTTEligible;
- (void)setRequestSource:(int64_t)source;
@end

@implementation SASRequestOptions

- (BOOL)isWiredMicOrBTHeadsetOrWx
{
  requestSource = [(SASRequestOptions *)self requestSource];
  v4 = requestSource == 19 && [(SASRequestOptions *)self isH1Activation];
  return (requestSource < 0x2F) & (0x480000000030uLL >> requestSource) | v4;
}

- (int64_t)inputType
{
  if (-[SASRequestOptions _isTypeToSiriPermittedAndEnabledForRequestOptions](self, "_isTypeToSiriPermittedAndEnabledForRequestOptions") || [MEMORY[0x1E698D258] saeAvailable] && -[SASRequestOptions requestSource](self, "requestSource") == 33)
  {
    return 1;
  }

  if ([(SASRequestOptions *)self _isForSpeechRequest])
  {
    return 2;
  }

  if ([(SASRequestOptions *)self isVisualIntelligenceRequest])
  {
    return 3;
  }

  return 0;
}

- (BOOL)_isTypeToSiriPermittedAndEnabledForRequestOptions
{
  if (AFPreferencesTypeToSiriEnabled())
  {
    v3 = [MEMORY[0x1E698D258] saeAvailable] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  requestSource = [(SASRequestOptions *)self requestSource];
  v5 = requestSource <= 0x3C && (((1 << requestSource) & 0x19A5000001010000) != 0 || requestSource == 33 && ([MEMORY[0x1E698D258] saeAvailable] & 1) != 0) || -[SASRequestOptions isSuggestionSourceWithTextInput](self, "isSuggestionSourceWithTextInput");
  isForStark = [(SASRequestOptions *)self isForStark];
  v7 = [(SASRequestOptions *)self requestSource]== 8 || [(SASRequestOptions *)self requestSource]== 9;
  v8 = [(SASRequestOptions *)self isH1Activation]|| [(SASRequestOptions *)self requestSource]== 5;
  v9 = [(SASRequestOptions *)self requestSource]!= 4;
  return v9 & ~(isForStark | ~(v3 | v5) | (v7 || v8)) & ![(SASRequestOptions *)self isHeadunitEyesFree];
}

- (BOOL)isForStark
{
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];
  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.CarDisplay"])
  {
    v4 = 1;
  }

  else
  {
    uiPresentationIdentifier2 = [(SASRequestOptions *)self uiPresentationIdentifier];
    v4 = [uiPresentationIdentifier2 isEqualToString:@"com.apple.siri.CarDisplay.UIFree"];
  }

  return v4;
}

- (BOOL)isH1Activation
{
  requestInfo = [(SASRequestOptions *)self requestInfo];
  speechRequestOptions = [requestInfo speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  return (activationEvent < 0x23) & (0x40002C000uLL >> activationEvent);
}

- (BOOL)isHeadunitEyesFree
{
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];
  v3 = [uiPresentationIdentifier isEqualToString:@"com.apple.siri.EyesFree"];

  return v3;
}

- (BOOL)_isForSpeechRequest
{
  requestSource = [(SASRequestOptions *)self requestSource];
  isAnnounceRequest = [(SASRequestOptions *)self isAnnounceRequest];
  if (requestSource <= 0x26 && ((1 << requestSource) & 0x4000006000) != 0 || (requestSource == 43 ? (v7 = 1) : (v7 = isAnnounceRequest), (v7 & 1) != 0 || [(SASRequestOptions *)self requestSource]== 19 && ![(SASRequestOptions *)self isH1Activation]|| [(SASRequestOptions *)self requestSource]== 22))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    text = [(SASRequestOptions *)self text];
    if ([text length])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      speechFileURL = [(SASRequestOptions *)self speechFileURL];
      absoluteString = [speechFileURL absoluteString];
      if ([absoluteString length] || -[SASRequestOptions requestSource](self, "requestSource") == 24 || -[SASRequestOptions _isTypeToSiriPermittedAndEnabledForRequestOptions](self, "_isTypeToSiriPermittedAndEnabledForRequestOptions") || -[SASRequestOptions requestSource](self, "requestSource") == 36 || -[SASRequestOptions requestSource](self, "requestSource") == 40)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = ![(SASRequestOptions *)self isVisualIntelligenceRequest];
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = SASRequestSourceGetName([(SASRequestOptions *)self requestSource]);
  v6 = [v3 stringWithFormat:@"<%@ %p requestSource=%@", v4, self, v5];;

  activationDeviceIdentifier = [(SASRequestOptions *)self activationDeviceIdentifier];

  if (activationDeviceIdentifier)
  {
    activationDeviceIdentifier2 = [(SASRequestOptions *)self activationDeviceIdentifier];
    [v6 appendFormat:@";activationDeviceIdentifier=%@", activationDeviceIdentifier2];
  }

  bulletin = [(SASRequestOptions *)self bulletin];

  if (bulletin)
  {
    bulletin2 = [(SASRequestOptions *)self bulletin];
    [v6 appendFormat:@";bulletin=%@", bulletin2];
  }

  appBundleIdentifier = [(SASRequestOptions *)self appBundleIdentifier];

  if (appBundleIdentifier)
  {
    appBundleIdentifier2 = [(SASRequestOptions *)self appBundleIdentifier];
    [v6 appendFormat:@";appBundleIdentifier=%@", appBundleIdentifier2];
  }

  [(SASRequestOptions *)self directActionEvent];
  v13 = AFDirectActionEventGetName();
  [v6 appendFormat:@";directActionEvent=%@", v13];

  serverCommandId = [(SASRequestOptions *)self serverCommandId];

  if (serverCommandId)
  {
    serverCommandId2 = [(SASRequestOptions *)self serverCommandId];
    [v6 appendFormat:@";serverCommandId=%@", serverCommandId2];
  }

  [v6 appendFormat:@";isPronunciationRequest=%i", -[SASRequestOptions isPronunciationRequest](self, "isPronunciationRequest")];
  pronunciationContext = [(SASRequestOptions *)self pronunciationContext];

  if (pronunciationContext)
  {
    pronunciationContext2 = [(SASRequestOptions *)self pronunciationContext];
    [v6 appendFormat:@";pronunciationContext=%@", pronunciationContext2];
  }

  text = [(SASRequestOptions *)self text];

  if (text)
  {
    text2 = [(SASRequestOptions *)self text];
    [v6 appendFormat:@";text=%@", text2];
  }

  speechFileURL = [(SASRequestOptions *)self speechFileURL];

  if (speechFileURL)
  {
    speechFileURL2 = [(SASRequestOptions *)self speechFileURL];
    [v6 appendFormat:@";speechFileURL=%@", speechFileURL2];
  }

  [(SASRequestOptions *)self expectedTimestamp];
  v23 = v22;
  [(SASRequestOptions *)self timestamp];
  v25 = v24;
  [(SASRequestOptions *)self buttonDownTimestamp];
  v27 = v26;
  [(SASRequestOptions *)self computedActivationTime];
  [v6 appendFormat:@";expectedTimestamp=%0.1f;timestamp=%0.1f;buttonDownTimestamp=%0.1f;computedActivationTime=%0.1f;isInitialBringUp=%i;useAutomaticEndpointing=%i;useStreamingDictation=%i;acousticId=%i;releaseAudioSessionORC=%i;predictedZLL=%i", v23, v25, v27, v28, -[SASRequestOptions isInitialBringUp](self, "isInitialBringUp"), -[SASRequestOptions useAutomaticEndpointing](self, "useAutomaticEndpointing"), -[SASRequestOptions useStreamingDictation](self, "useStreamingDictation"), -[SASRequestOptions acousticIdEnabled](self, "acousticIdEnabled"), -[SASRequestOptions releaseAudioSessionOnRecordingCompletion](self, "releaseAudioSessionOnRecordingCompletion"), -[SASRequestOptions predictedRecordRouteIsZLL](self, "predictedRecordRouteIsZLL")];
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];

  if (uiPresentationIdentifier)
  {
    uiPresentationIdentifier2 = [(SASRequestOptions *)self uiPresentationIdentifier];
    [v6 appendFormat:@";uiPresentationIdentifier=%@", uiPresentationIdentifier2];
  }

  testingContext = [(SASRequestOptions *)self testingContext];

  if (testingContext)
  {
    testingContext2 = [(SASRequestOptions *)self testingContext];
    [v6 appendFormat:@";testingContext=%@", testingContext2];
  }

  v66 = [(SASRequestOptions *)self inputType]== 2;
  v65 = [(SASRequestOptions *)self inputType]== 1;
  isForStark = [(SASRequestOptions *)self isForStark];
  isConnectedToCarPlay = [(SASRequestOptions *)self isConnectedToCarPlay];
  isForCarDND = [(SASRequestOptions *)self isForCarDND];
  isRightHandDrive = [(SASRequestOptions *)self isRightHandDrive];
  isForBluetoothCar = [(SASRequestOptions *)self isForBluetoothCar];
  v38 = CARAutomaticFeatureStateGetName([(SASRequestOptions *)self carDNDStatus]);
  [v6 appendFormat:@";is(speech=%i; textInput=%i;stark=%i;CPconnected=%i;dnd=%i;rightHandDrive=%i;isForBluetoothCar=%i);carDNDStatus=%@;remotePresentationBringUp=%i;supportsCarPlayVehicleData=%i;carOwnsMainAudio=%i", v66, v65, isForStark, isConnectedToCarPlay, isForCarDND, isRightHandDrive, isForBluetoothCar, v38, -[SASRequestOptions isRemotePresentationBringUp](self, "isRemotePresentationBringUp"), -[SASRequestOptions supportsCarPlayVehicleData](self, "supportsCarPlayVehicleData"), -[SASRequestOptions carOwnsMainAudio](self, "carOwnsMainAudio")];

  homeButtonUpFromBeep = [(SASRequestOptions *)self homeButtonUpFromBeep];

  if (homeButtonUpFromBeep)
  {
    homeButtonUpFromBeep2 = [(SASRequestOptions *)self homeButtonUpFromBeep];
    [v6 appendFormat:@";homeButtonUpFromBeep=%@", homeButtonUpFromBeep2];
  }

  continuityInfo = [(SASRequestOptions *)self continuityInfo];

  if (continuityInfo)
  {
    continuityInfo2 = [(SASRequestOptions *)self continuityInfo];
    [v6 appendFormat:@";continuityInfo=%@", continuityInfo2];
  }

  requestInfo = [(SASRequestOptions *)self requestInfo];

  if (requestInfo)
  {
    requestInfo2 = [(SASRequestOptions *)self requestInfo];
    [v6 appendFormat:@";requestInfo=%@", requestInfo2];
  }

  v45 = SASLockStateGetName([(SASRequestOptions *)self currentLockState]);
  [v6 appendFormat:@";currentLockState=%@", v45];

  previousInteractionInputType = [(SASRequestOptions *)self previousInteractionInputType];
  if ((previousInteractionInputType - 1) > 2)
  {
    v47 = @"SASRequestInputTypeNone";
  }

  else
  {
    v47 = *(&off_1E82F4540 + previousInteractionInputType - 1);
  }

  [v6 appendFormat:@";previousInteractionInputType=%@", v47];
  suggestionRequestType = [(SASRequestOptions *)self suggestionRequestType];
  if (suggestionRequestType > 3)
  {
    v49 = @"Unknown";
  }

  else
  {
    v49 = *(&off_1E82F4558 + suggestionRequestType);
  }

  [v6 appendFormat:@";suggestionRequestType=%@", v49];
  directActionApplicationContext = [(SASRequestOptions *)self directActionApplicationContext];

  if (directActionApplicationContext)
  {
    directActionApplicationContext2 = [(SASRequestOptions *)self directActionApplicationContext];
    [v6 appendFormat:@";directActionApplicationContext=%@", directActionApplicationContext2];
  }

  currentCarPlaySupportedOEMAppIdList = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];

  if (currentCarPlaySupportedOEMAppIdList)
  {
    currentCarPlaySupportedOEMAppIdList2 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
    [v6 appendFormat:@";carPlayOEMList=%@", currentCarPlaySupportedOEMAppIdList2];
  }

  [v6 appendFormat:@";isShortButtonPressAction=%i", -[SASRequestOptions isShortButtonPressAction](self, "isShortButtonPressAction")];
  startRecordingSoundId = [(SASRequestOptions *)self startRecordingSoundId];

  if (startRecordingSoundId)
  {
    startRecordingSoundId2 = [(SASRequestOptions *)self startRecordingSoundId];
    [v6 appendFormat:@";startRecordingSoundId=%@", startRecordingSoundId2];
  }

  originalRequestOptions = [(SASRequestOptions *)self originalRequestOptions];

  if (originalRequestOptions)
  {
    originalRequestOptions2 = [(SASRequestOptions *)self originalRequestOptions];
    v58 = SASRequestSourceGetName([originalRequestOptions2 requestSource]);
    [v6 appendFormat:@";originalRequestOptions.requestSource=%@", v58];
  }

  if ([(SASRequestOptions *)self presentationMode])
  {
    [v6 appendFormat:@";presentationMode=%zd", -[SASRequestOptions presentationMode](self, "presentationMode")];
  }

  if ([(SASRequestOptions *)self tvRemoteType])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SASRequestOptions tvRemoteType](self, "tvRemoteType")}];
    [v6 appendFormat:@";tvRemoteType=%@", v59];
  }

  [v6 appendFormat:@";isTVRemoteSourcePTTEligible=%i", -[SASRequestOptions isTVRemoteSourcePTTEligible](self, "isTVRemoteSourcePTTEligible")];
  [v6 appendFormat:@";longPressBehavior=%ld", -[SASRequestOptions longPressBehavior](self, "longPressBehavior")];
  activationPreparationReferenceIdentifier = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];

  if (activationPreparationReferenceIdentifier)
  {
    activationPreparationReferenceIdentifier2 = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];
    [v6 appendFormat:@"; activationPreparationIdentifier=%@", activationPreparationReferenceIdentifier2];
  }

  userEngagementContext = [(SASRequestOptions *)self userEngagementContext];
  v63 = [userEngagementContext description];
  [v6 appendFormat:@";userEngagementContext=%@", v63];

  return v6;
}

- (BOOL)isForUIFree
{
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];
  if ([uiPresentationIdentifier isEqualToString:@"com.apple.siri.UIFree"])
  {
    v4 = 1;
  }

  else
  {
    uiPresentationIdentifier2 = [(SASRequestOptions *)self uiPresentationIdentifier];
    v4 = [uiPresentationIdentifier2 isEqualToString:@"com.apple.siri.CarDisplay.UIFree"];
  }

  return v4;
}

- (BOOL)isVoiceTriggerRequest
{
  requestInfo = [(SASRequestOptions *)self requestInfo];
  speechRequestOptions = [requestInfo speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  if ([(SASRequestOptions *)self requestSource]== 8)
  {
    return 1;
  }

  return [(SASRequestOptions *)self requestSource]== 19 && activationEvent == 15;
}

- (BOOL)userTypedInSiri
{
  isSuggestionSourceWithTextInput = [(SASRequestOptions *)self isSuggestionSourceWithTextInput];
  v4 = [(SASRequestOptions *)self requestSource]== 33 || [(SASRequestOptions *)self requestSource]== 24 || isSuggestionSourceWithTextInput;
  return v4 & 1;
}

- (BOOL)isForAppleTV
{
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];
  v3 = [uiPresentationIdentifier isEqualToString:@"com.apple.siri.SiriTVPresentation"];

  return v3;
}

- (SASRequestOptions)initWithRequestSource:(int64_t)source uiPresentationIdentifier:(id)identifier systemState:(id)state
{
  identifierCopy = identifier;
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = SASRequestOptions;
  v11 = [(SASRequestOptions *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestSource = source;
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v12->_timestamp = v14;

    v12->_useAutomaticEndpointing = 1;
    v12->_acousticIdEnabled = 0;
    objc_storeStrong(&v12->_uiPresentationIdentifier, identifier);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    instrumentationEvents = v12->_instrumentationEvents;
    v12->_instrumentationEvents = v15;

    [(SASRequestOptions *)v12 _configureStreamingDictationForSource:source];
    v12->_longPressBehavior = -1;
    if (stateCopy)
    {
      [(SASRequestOptions *)v12 _updateWithSystemState:stateCopy forcefully:1];
    }
  }

  return v12;
}

- (SASRequestOptions)initWithRequestSource:(int64_t)source uiPresentationIdentifier:(id)identifier buttonContext:(id)context
{
  contextCopy = context;
  v9 = [(SASRequestOptions *)self initWithRequestSource:source uiPresentationIdentifier:identifier systemState:0];
  if ([MEMORY[0x1E698D148] isTVPushToTalkEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = contextCopy;
      -[SASRequestOptions setTvRemoteType:](v9, "setTvRemoteType:", SASRemoteTypeFromSiriTVRemoteType([v10 remoteType]));
      isPTTEligible = [v10 isPTTEligible];

      [(SASRequestOptions *)v9 setIsTVRemoteSourcePTTEligible:isPTTEligible];
    }
  }

  activationEventInstrumentationIdentifier = [contextCopy activationEventInstrumentationIdentifier];
  [(SASRequestOptions *)v9 setActivationEventInstrumentationIdenifier:activationEventInstrumentationIdentifier];

  return v9;
}

- (void)setRequestSource:(int64_t)source
{
  if (source == 24)
  {
    if (AFPreferencesTypeToSiriEnabled())
    {
      source = 24;
    }

    else
    {
      v4 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [SASRequestOptions setRequestSource:v4];
      }

      source = 0;
    }
  }

  self->_requestSource = source;
}

- (void)_configureStreamingDictationForSource:(int64_t)source
{
  v5 = AFPreferencesStreamingDictationEnabled();
  v6 = 0x202820BC03FEuLL >> source;
  if (source > 0x2D)
  {
    LOBYTE(v6) = 0;
  }

  if (!v5)
  {
    LOBYTE(v6) = 0;
  }

  [(SASRequestOptions *)self setUseStreamingDictation:v6 & 1];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  requestSource = [(SASRequestOptions *)self requestSource];
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];
  v7 = [v4 initWithRequestSource:requestSource uiPresentationIdentifier:uiPresentationIdentifier];

  activationDeviceIdentifier = [(SASRequestOptions *)self activationDeviceIdentifier];
  [v7 setActivationDeviceIdentifier:activationDeviceIdentifier];

  bulletin = [(SASRequestOptions *)self bulletin];
  [v7 setBulletin:bulletin];

  appBundleIdentifier = [(SASRequestOptions *)self appBundleIdentifier];
  [v7 setAppBundleIdentifier:appBundleIdentifier];

  [v7 setDirectActionEvent:{-[SASRequestOptions directActionEvent](self, "directActionEvent")}];
  directActionApplicationContext = [(SASRequestOptions *)self directActionApplicationContext];
  [v7 setDirectActionApplicationContext:directActionApplicationContext];

  serverCommandId = [(SASRequestOptions *)self serverCommandId];
  [v7 setServerCommandId:serverCommandId];

  [v7 setPronunciationRequest:{-[SASRequestOptions isPronunciationRequest](self, "isPronunciationRequest")}];
  pronunciationContext = [(SASRequestOptions *)self pronunciationContext];
  [v7 setPronunciationContext:pronunciationContext];

  text = [(SASRequestOptions *)self text];
  [v7 setText:text];

  speechFileURL = [(SASRequestOptions *)self speechFileURL];
  [v7 setSpeechFileURL:speechFileURL];

  [(SASRequestOptions *)self timestamp];
  [v7 setTimestamp:?];
  [(SASRequestOptions *)self expectedTimestamp];
  [v7 setExpectedTimestamp:?];
  [(SASRequestOptions *)self buttonDownTimestamp];
  [v7 setButtonDownTimestamp:?];
  [(SASRequestOptions *)self computedActivationTime];
  [v7 setComputedActivationTime:?];
  [v7 setInitialBringUp:{-[SASRequestOptions isInitialBringUp](self, "isInitialBringUp")}];
  [v7 setUseAutomaticEndpointing:{-[SASRequestOptions useAutomaticEndpointing](self, "useAutomaticEndpointing")}];
  [v7 setUseStreamingDictation:{-[SASRequestOptions useStreamingDictation](self, "useStreamingDictation")}];
  homeButtonUpFromBeep = [(SASRequestOptions *)self homeButtonUpFromBeep];
  [v7 setHomeButtonUpFromBeep:homeButtonUpFromBeep];

  continuityInfo = [(SASRequestOptions *)self continuityInfo];
  [v7 setContinuityInfo:continuityInfo];

  requestInfo = [(SASRequestOptions *)self requestInfo];
  [v7 setRequestInfo:requestInfo];

  speechRequestOptions = [(SASRequestOptions *)self speechRequestOptions];
  [v7 setSpeechRequestOptions:speechRequestOptions];

  [v7 setAcousticIdEnabled:{-[SASRequestOptions acousticIdEnabled](self, "acousticIdEnabled")}];
  [v7 setReleaseAudioSessionOnRecordingCompletion:{-[SASRequestOptions releaseAudioSessionOnRecordingCompletion](self, "releaseAudioSessionOnRecordingCompletion")}];
  [v7 setPredictedRecordRouteIsZLL:{-[SASRequestOptions predictedRecordRouteIsZLL](self, "predictedRecordRouteIsZLL")}];
  testingContext = [(SASRequestOptions *)self testingContext];
  [v7 setTestingContext:testingContext];

  [v7 setIsConnectedToCarPlay:{-[SASRequestOptions isConnectedToCarPlay](self, "isConnectedToCarPlay")}];
  [v7 setIsForCarDND:{-[SASRequestOptions isForCarDND](self, "isForCarDND")}];
  [v7 setCarDNDStatus:{-[SASRequestOptions carDNDStatus](self, "carDNDStatus")}];
  [v7 setCurrentLockState:{-[SASRequestOptions currentLockState](self, "currentLockState")}];
  [v7 setPreviousInteractionInputType:{-[SASRequestOptions previousInteractionInputType](self, "previousInteractionInputType")}];
  [v7 setSuggestionRequestType:{-[SASRequestOptions suggestionRequestType](self, "suggestionRequestType")}];
  [v7 setIsForBluetoothCar:{-[SASRequestOptions isForBluetoothCar](self, "isForBluetoothCar")}];
  currentCarPlaySupportedOEMAppIdList = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
  [v7 setCurrentCarPlaySupportedOEMAppIdList:currentCarPlaySupportedOEMAppIdList];

  [v7 setShortButtonPressAction:{-[SASRequestOptions isShortButtonPressAction](self, "isShortButtonPressAction")}];
  instrumentationEvents = [(SASRequestOptions *)self instrumentationEvents];
  [v7 setInstrumentationEvents:instrumentationEvents];

  startRecordingSoundId = [(SASRequestOptions *)self startRecordingSoundId];
  [v7 setStartRecordingSoundId:startRecordingSoundId];

  originalRequestOptions = [(SASRequestOptions *)self originalRequestOptions];
  [v7 setOriginalRequestOptions:originalRequestOptions];

  [v7 setPresentationMode:{-[SASRequestOptions presentationMode](self, "presentationMode")}];
  [v7 setRightHandDrive:{-[SASRequestOptions isRightHandDrive](self, "isRightHandDrive")}];
  [v7 setTvRemoteType:{-[SASRequestOptions tvRemoteType](self, "tvRemoteType")}];
  [v7 setIsTVRemoteSourcePTTEligible:{-[SASRequestOptions isTVRemoteSourcePTTEligible](self, "isTVRemoteSourcePTTEligible")}];
  [v7 setLongPressBehavior:{-[SASRequestOptions longPressBehavior](self, "longPressBehavior")}];
  activationEventInstrumentationIdenifier = [(SASRequestOptions *)self activationEventInstrumentationIdenifier];
  [v7 setActivationEventInstrumentationIdenifier:activationEventInstrumentationIdenifier];

  userEngagementContext = [(SASRequestOptions *)self userEngagementContext];
  [v7 setUserEngagementContext:userEngagementContext];

  activationPreparationReferenceIdentifier = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];
  [v7 setActivationPreparationReferenceIdentifier:activationPreparationReferenceIdentifier];

  return v7;
}

- (SASRequestOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v69.receiver = self;
  v69.super_class = SASRequestOptions;
  v5 = [(SASRequestOptions *)&v69 init];
  if (v5)
  {
    v5->_requestSource = [coderCopy decodeIntegerForKey:@"SASRequestOptionsSourceCodingKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsActivationDeviceIdentifierCodingKey"];
    v7 = [v6 copy];
    activationDeviceIdentifier = v5->_activationDeviceIdentifier;
    v5->_activationDeviceIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsBulletinCodingKey"];
    bulletin = v5->_bulletin;
    v5->_bulletin = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsAppBundleIdentifierCodingKey"];
    v12 = [v11 copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsMessagesDirectActionApplicationContextCodingKey"];
    directActionApplicationContext = v5->_directActionApplicationContext;
    v5->_directActionApplicationContext = v14;

    v5->_directActionEvent = [coderCopy decodeIntegerForKey:@"SASRequestOptionsDirectActionEventCodingKey"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsServerCommandAceIdentifierCodingKey"];
    v17 = [v16 copy];
    serverCommandId = v5->_serverCommandId;
    v5->_serverCommandId = v17;

    v5->_pronunciationRequest = [coderCopy decodeBoolForKey:@"SASRequestOptionsPronunciationRequestCodingKey"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsPronunciationContextCodingKey"];
    pronunciationContext = v5->_pronunciationContext;
    v5->_pronunciationContext = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsTextCodingKey"];
    v22 = [v21 copy];
    text = v5->_text;
    v5->_text = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsSpeechFileURLCodingKey"];
    v25 = [v24 copy];
    speechFileURL = v5->_speechFileURL;
    v5->_speechFileURL = v25;

    [coderCopy decodeDoubleForKey:@"SASRequestOptionsTimestampCodingKey"];
    v5->_timestamp = v27;
    [coderCopy decodeDoubleForKey:@"SASRequestOptionsExpectedTimestampCodingKey"];
    v5->_expectedTimestamp = v28;
    [coderCopy decodeDoubleForKey:@"SASRequestOptionsButtonDownTimestampCodingKey"];
    v5->_buttonDownTimestamp = v29;
    [coderCopy decodeDoubleForKey:@"SASRequestOptionsComputedActivationTimestampCodingKey"];
    v5->_computedActivationTime = v30;
    v5->_initialBringUp = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsInitialBringUpKey"];
    v5->_useAutomaticEndpointing = [coderCopy decodeBoolForKey:@"SASRequestOptionsUseAutomaticEndpointingKey"];
    v5->_useStreamingDictation = [coderCopy decodeBoolForKey:@"SASRequestOptionsUseStreamingDictationKey"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestHomeButtonUpFromBeepKey"];
    homeButtonUpFromBeep = v5->_homeButtonUpFromBeep;
    v5->_homeButtonUpFromBeep = v31;

    v33 = [coderCopy decodePropertyListForKey:@"SASRequestContinuityDataKey"];
    continuityInfo = v5->_continuityInfo;
    v5->_continuityInfo = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestRequestInfoKey"];
    requestInfo = v5->_requestInfo;
    v5->_requestInfo = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestSpeechRequestOptionsKey"];
    speechRequestOptions = v5->_speechRequestOptions;
    v5->_speechRequestOptions = v37;

    v5->_acousticIdEnabled = [coderCopy decodeBoolForKey:@"SASRequestOptionsAcousticIdEnabledKey"];
    v5->_releaseAudioSessionOnRecordingCompletion = [coderCopy decodeBoolForKey:@"SASRequestOptionsReleaseAudioSessionOnRecordingCompletionKey"];
    v5->_predictedRecordRouteIsZLL = [coderCopy decodeBoolForKey:@"SASRequestPredictedRecordRouteIsZLL"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsUIPresentationIdentifierCodingKey"];
    v40 = [v39 copy];
    uiPresentationIdentifier = v5->_uiPresentationIdentifier;
    v5->_uiPresentationIdentifier = v40;

    v42 = [coderCopy decodePropertyListForKey:@"SASRequestOptionsTestingContextKey"];
    testingContext = v5->_testingContext;
    v5->_testingContext = v42;

    v5->_isConnectedToCarPlay = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsConnectedToCarPlayCodingKey"];
    v5->_supportsCarPlayVehicleData = [coderCopy decodeBoolForKey:@"SASRequestOptionsSupportsCarPlayVehicleData"];
    v5->_carOwnsMainAudio = [coderCopy decodeBoolForKey:@"SASRequestOptionsCarOwnsMainAudioCodingKey"];
    v5->_isForCarDND = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsForCarDNDCodingKey"];
    v5->_carDNDStatus = [coderCopy decodeIntegerForKey:@"SASRequestOptionsCarDNDStatusCodingKey"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsCurrentLockStateCodingKey"];
    v5->_currentLockState = [v44 unsignedIntegerValue];

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsPreviousInteractionInputTypeCodingKey"];
    v5->_previousInteractionInputType = [v45 unsignedIntegerValue];

    v5->_suggestionRequestType = [coderCopy decodeIntegerForKey:@"SASRequestOptionsSuggestionRequestTypeCodingKey"];
    v5->_isForBluetoothCar = [coderCopy decodeBoolForKey:@"SASRequestOptionsBluetoothCarCodingKey"];
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [coderCopy decodeObjectOfClasses:v48 forKey:@"SASRequestOptionsInstrumentationEventsCodingKey"];
    instrumentationEvents = v5->_instrumentationEvents;
    v5->_instrumentationEvents = v49;

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
    v54 = [coderCopy decodeObjectOfClasses:v53 forKey:@"SASRequestOptionsCurrentCarPlaySupportedOEMAppIdListKey"];
    currentCarPlaySupportedOEMAppIdList = v5->_currentCarPlaySupportedOEMAppIdList;
    v5->_currentCarPlaySupportedOEMAppIdList = v54;

    v5->_shortButtonPressAction = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsTVShortButtonPressAction"];
    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsStartRecordingSoundIDCodingKey"];
    startRecordingSoundId = v5->_startRecordingSoundId;
    v5->_startRecordingSoundId = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsOriginalOptionsCodingKey"];
    originalRequestOptions = v5->_originalRequestOptions;
    v5->_originalRequestOptions = v58;

    v5->_presentationMode = [coderCopy decodeIntegerForKey:@"SASRequestOptionsPresentationModeCodingKey"];
    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsPreviousTurnIdentifierCodingKey"];
    previousTurnIdentifier = v5->_previousTurnIdentifier;
    v5->_previousTurnIdentifier = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsActivationEventIdentifierCodingKey"];
    activationEventInstrumentationIdenifier = v5->_activationEventInstrumentationIdenifier;
    v5->_activationEventInstrumentationIdenifier = v62;

    v5->_rightHandDrive = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsRightHandDriveKey"];
    v5->_tvRemoteType = [coderCopy decodeIntegerForKey:@"SASRequestOptionsTVRemoteType"];
    v5->_isRemotePresentationBringUp = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsRemotePresentationBringUpCodingKey"];
    v5->_isTVRemoteSourcePTTEligible = [coderCopy decodeBoolForKey:@"SASRequestOptionsIsTVRemoteSourcePTTEligibleCodingKey"];
    v5->_longPressBehavior = [coderCopy decodeIntegerForKey:@"SASRequestOptionsLongPressBehavior"];
    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsUserEngagementContextCodingKey"];
    userEngagementContext = v5->_userEngagementContext;
    v5->_userEngagementContext = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsActivationPreparationReferenceIdentifierCodingKey"];
    activationPreparationReferenceIdentifier = v5->_activationPreparationReferenceIdentifier;
    v5->_activationPreparationReferenceIdentifier = v66;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SASRequestOptions requestSource](self forKey:{"requestSource"), @"SASRequestOptionsSourceCodingKey"}];
  activationDeviceIdentifier = [(SASRequestOptions *)self activationDeviceIdentifier];
  [coderCopy encodeObject:activationDeviceIdentifier forKey:@"SASRequestOptionsActivationDeviceIdentifierCodingKey"];

  bulletin = [(SASRequestOptions *)self bulletin];
  [coderCopy encodeObject:bulletin forKey:@"SASRequestOptionsBulletinCodingKey"];

  appBundleIdentifier = [(SASRequestOptions *)self appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"SASRequestOptionsAppBundleIdentifierCodingKey"];

  directActionApplicationContext = [(SASRequestOptions *)self directActionApplicationContext];
  [coderCopy encodeObject:directActionApplicationContext forKey:@"SASRequestOptionsMessagesDirectActionApplicationContextCodingKey"];

  [coderCopy encodeInteger:-[SASRequestOptions directActionEvent](self forKey:{"directActionEvent"), @"SASRequestOptionsDirectActionEventCodingKey"}];
  serverCommandId = [(SASRequestOptions *)self serverCommandId];
  [coderCopy encodeObject:serverCommandId forKey:@"SASRequestOptionsServerCommandAceIdentifierCodingKey"];

  [coderCopy encodeBool:-[SASRequestOptions isPronunciationRequest](self forKey:{"isPronunciationRequest"), @"SASRequestOptionsPronunciationRequestCodingKey"}];
  pronunciationContext = [(SASRequestOptions *)self pronunciationContext];
  [coderCopy encodeObject:pronunciationContext forKey:@"SASRequestOptionsPronunciationContextCodingKey"];

  text = [(SASRequestOptions *)self text];
  [coderCopy encodeObject:text forKey:@"SASRequestOptionsTextCodingKey"];

  speechFileURL = [(SASRequestOptions *)self speechFileURL];
  [coderCopy encodeObject:speechFileURL forKey:@"SASRequestOptionsSpeechFileURLCodingKey"];

  [(SASRequestOptions *)self timestamp];
  [coderCopy encodeDouble:@"SASRequestOptionsTimestampCodingKey" forKey:?];
  [(SASRequestOptions *)self expectedTimestamp];
  [coderCopy encodeDouble:@"SASRequestOptionsExpectedTimestampCodingKey" forKey:?];
  [(SASRequestOptions *)self buttonDownTimestamp];
  [coderCopy encodeDouble:@"SASRequestOptionsButtonDownTimestampCodingKey" forKey:?];
  [(SASRequestOptions *)self computedActivationTime];
  [coderCopy encodeDouble:@"SASRequestOptionsComputedActivationTimestampCodingKey" forKey:?];
  [coderCopy encodeBool:-[SASRequestOptions isInitialBringUp](self forKey:{"isInitialBringUp"), @"SASRequestOptionsIsInitialBringUpKey"}];
  [coderCopy encodeBool:-[SASRequestOptions useStreamingDictation](self forKey:{"useStreamingDictation"), @"SASRequestOptionsUseStreamingDictationKey"}];
  homeButtonUpFromBeep = [(SASRequestOptions *)self homeButtonUpFromBeep];
  [coderCopy encodeObject:homeButtonUpFromBeep forKey:@"SASRequestHomeButtonUpFromBeepKey"];

  continuityInfo = [(SASRequestOptions *)self continuityInfo];
  [coderCopy encodeObject:continuityInfo forKey:@"SASRequestContinuityDataKey"];

  requestInfo = [(SASRequestOptions *)self requestInfo];
  [coderCopy encodeObject:requestInfo forKey:@"SASRequestRequestInfoKey"];

  [coderCopy encodeBool:-[SASRequestOptions useAutomaticEndpointing](self forKey:{"useAutomaticEndpointing"), @"SASRequestOptionsUseAutomaticEndpointingKey"}];
  speechRequestOptions = [(SASRequestOptions *)self speechRequestOptions];
  [coderCopy encodeObject:speechRequestOptions forKey:@"SASRequestSpeechRequestOptionsKey"];

  [coderCopy encodeBool:-[SASRequestOptions acousticIdEnabled](self forKey:{"acousticIdEnabled"), @"SASRequestOptionsAcousticIdEnabledKey"}];
  [coderCopy encodeBool:-[SASRequestOptions releaseAudioSessionOnRecordingCompletion](self forKey:{"releaseAudioSessionOnRecordingCompletion"), @"SASRequestOptionsReleaseAudioSessionOnRecordingCompletionKey"}];
  [coderCopy encodeBool:-[SASRequestOptions predictedRecordRouteIsZLL](self forKey:{"predictedRecordRouteIsZLL"), @"SASRequestPredictedRecordRouteIsZLL"}];
  uiPresentationIdentifier = [(SASRequestOptions *)self uiPresentationIdentifier];
  [coderCopy encodeObject:uiPresentationIdentifier forKey:@"SASRequestOptionsUIPresentationIdentifierCodingKey"];

  testingContext = [(SASRequestOptions *)self testingContext];
  [coderCopy encodeObject:testingContext forKey:@"SASRequestOptionsTestingContextKey"];

  [coderCopy encodeBool:-[SASRequestOptions isConnectedToCarPlay](self forKey:{"isConnectedToCarPlay"), @"SASRequestOptionsIsConnectedToCarPlayCodingKey"}];
  [coderCopy encodeBool:-[SASRequestOptions supportsCarPlayVehicleData](self forKey:{"supportsCarPlayVehicleData"), @"SASRequestOptionsSupportsCarPlayVehicleData"}];
  [coderCopy encodeBool:-[SASRequestOptions carOwnsMainAudio](self forKey:{"carOwnsMainAudio"), @"SASRequestOptionsCarOwnsMainAudioCodingKey"}];
  [coderCopy encodeBool:-[SASRequestOptions isForCarDND](self forKey:{"isForCarDND"), @"SASRequestOptionsIsForCarDNDCodingKey"}];
  [coderCopy encodeInteger:-[SASRequestOptions carDNDStatus](self forKey:{"carDNDStatus"), @"SASRequestOptionsCarDNDStatusCodingKey"}];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SASRequestOptions currentLockState](self, "currentLockState")}];
  [coderCopy encodeObject:v19 forKey:@"SASRequestOptionsCurrentLockStateCodingKey"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SASRequestOptions previousInteractionInputType](self, "previousInteractionInputType")}];
  [coderCopy encodeObject:v20 forKey:@"SASRequestOptionsPreviousInteractionInputTypeCodingKey"];

  [coderCopy encodeInteger:-[SASRequestOptions suggestionRequestType](self forKey:{"suggestionRequestType"), @"SASRequestOptionsSuggestionRequestTypeCodingKey"}];
  [coderCopy encodeBool:-[SASRequestOptions isForBluetoothCar](self forKey:{"isForBluetoothCar"), @"SASRequestOptionsBluetoothCarCodingKey"}];
  instrumentationEvents = [(SASRequestOptions *)self instrumentationEvents];
  [coderCopy encodeObject:instrumentationEvents forKey:@"SASRequestOptionsInstrumentationEventsCodingKey"];

  currentCarPlaySupportedOEMAppIdList = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
  [coderCopy encodeObject:currentCarPlaySupportedOEMAppIdList forKey:@"SASRequestOptionsCurrentCarPlaySupportedOEMAppIdListKey"];

  [coderCopy encodeBool:-[SASRequestOptions isShortButtonPressAction](self forKey:{"isShortButtonPressAction"), @"SASRequestOptionsIsTVShortButtonPressAction"}];
  startRecordingSoundId = [(SASRequestOptions *)self startRecordingSoundId];
  [coderCopy encodeObject:startRecordingSoundId forKey:@"SASRequestOptionsStartRecordingSoundIDCodingKey"];

  originalRequestOptions = [(SASRequestOptions *)self originalRequestOptions];
  [coderCopy encodeObject:originalRequestOptions forKey:@"SASRequestOptionsOriginalOptionsCodingKey"];

  [coderCopy encodeInteger:-[SASRequestOptions presentationMode](self forKey:{"presentationMode"), @"SASRequestOptionsPresentationModeCodingKey"}];
  previousTurnIdentifier = [(SASRequestOptions *)self previousTurnIdentifier];
  [coderCopy encodeObject:previousTurnIdentifier forKey:@"SASRequestOptionsPreviousTurnIdentifierCodingKey"];

  activationEventInstrumentationIdenifier = [(SASRequestOptions *)self activationEventInstrumentationIdenifier];
  [coderCopy encodeObject:activationEventInstrumentationIdenifier forKey:@"SASRequestOptionsActivationEventIdentifierCodingKey"];

  [coderCopy encodeBool:-[SASRequestOptions isRightHandDrive](self forKey:{"isRightHandDrive"), @"SASRequestOptionsIsRightHandDriveKey"}];
  [coderCopy encodeInteger:-[SASRequestOptions tvRemoteType](self forKey:{"tvRemoteType"), @"SASRequestOptionsTVRemoteType"}];
  [coderCopy encodeBool:-[SASRequestOptions isRemotePresentationBringUp](self forKey:{"isRemotePresentationBringUp"), @"SASRequestOptionsIsRemotePresentationBringUpCodingKey"}];
  [coderCopy encodeBool:-[SASRequestOptions isTVRemoteSourcePTTEligible](self forKey:{"isTVRemoteSourcePTTEligible"), @"SASRequestOptionsIsTVRemoteSourcePTTEligibleCodingKey"}];
  [coderCopy encodeInteger:-[SASRequestOptions longPressBehavior](self forKey:{"longPressBehavior"), @"SASRequestOptionsLongPressBehavior"}];
  userEngagementContext = [(SASRequestOptions *)self userEngagementContext];
  [coderCopy encodeObject:userEngagementContext forKey:@"SASRequestOptionsUserEngagementContextCodingKey"];

  activationPreparationReferenceIdentifier = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];
  [coderCopy encodeObject:activationPreparationReferenceIdentifier forKey:@"SASRequestOptionsActivationPreparationReferenceIdentifierCodingKey"];
}

- (id)nullableProperties
{
  v2 = [[SASRequestOptionsNullableAccess alloc] initWithActivationDeviceIdentifier:self->_activationDeviceIdentifier requestInfo:self->_requestInfo activationPreparationReferenceIdentifier:self->_activationPreparationReferenceIdentifier];

  return v2;
}

- (BOOL)isATVRemotePTTEligible
{
  if (!MGGetBoolAnswer() || (v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.siri.internal"], v4 = objc_msgSend(v3, "BOOLForKey:", @"ForcePTTEligibility"), v3, !v4))
  {
    if (-[SASRequestOptions requestSource](self, "requestSource") != 23 && -[SASRequestOptions requestSource](self, "requestSource") != 31 && -[SASRequestOptions requestSource](self, "requestSource") != 32 || ![MEMORY[0x1E698D148] isTVPushToTalkEnabled])
    {
      return 0;
    }

    tvRemoteType = [(SASRequestOptions *)self tvRemoteType];
    if (tvRemoteType - 5 >= 2)
    {
      if (tvRemoteType != 1)
      {
        return 0;
      }
    }

    else if (!_os_feature_enabled_impl())
    {
      return 0;
    }

    return self->_isTVRemoteSourcePTTEligible;
  }

  v5 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEBUG))
  {
    [(SASRequestOptions *)v5 isATVRemotePTTEligible];
  }

  return 1;
}

- (void)_updateWithSystemState:(id)state forcefully:(BOOL)forcefully
{
  v23 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v7 = [MEMORY[0x1E695DFA8] set];
  isConnectedToCarPlay = [stateCopy isConnectedToCarPlay];
  if (forcefully)
  {
    [(SASRequestOptions *)self setIsConnectedToCarPlay:isConnectedToCarPlay];
    -[SASRequestOptions setSupportsCarPlayVehicleData:](self, "setSupportsCarPlayVehicleData:", [stateCopy supportsCarPlayVehicleData]);
    -[SASRequestOptions setCarOwnsMainAudio:](self, "setCarOwnsMainAudio:", [stateCopy carOwnsMainAudio]);
    -[SASRequestOptions setRightHandDrive:](self, "setRightHandDrive:", [stateCopy isRightHandDrive]);
    -[SASRequestOptions setIsForCarDND:](self, "setIsForCarDND:", [stateCopy carDNDActive]);
    -[SASRequestOptions setCarDNDStatus:](self, "setCarDNDStatus:", [stateCopy carDNDStatus]);
    currentCarPlaySupportedOEMAppIdList = [stateCopy currentCarPlaySupportedOEMAppIdList];
    [(SASRequestOptions *)self setCurrentCarPlaySupportedOEMAppIdList:currentCarPlaySupportedOEMAppIdList];
  }

  else
  {
    if (isConnectedToCarPlay != [(SASRequestOptions *)self isConnectedToCarPlay])
    {
      [(SASRequestOptions *)self setIsConnectedToCarPlay:isConnectedToCarPlay];
      [v7 addObject:@"isConnectedToCarPlay"];
    }

    supportsCarPlayVehicleData = [stateCopy supportsCarPlayVehicleData];
    if (supportsCarPlayVehicleData != [(SASRequestOptions *)self supportsCarPlayVehicleData])
    {
      [(SASRequestOptions *)self setSupportsCarPlayVehicleData:supportsCarPlayVehicleData];
      [v7 addObject:@"supportsCarPlayVehicleData"];
    }

    carOwnsMainAudio = [stateCopy carOwnsMainAudio];
    if (carOwnsMainAudio != [(SASRequestOptions *)self carOwnsMainAudio])
    {
      [(SASRequestOptions *)self setCarOwnsMainAudio:carOwnsMainAudio];
      [v7 addObject:@"carOwnsMainAudio"];
    }

    isRightHandDrive = [stateCopy isRightHandDrive];
    if (isRightHandDrive != [(SASRequestOptions *)self isRightHandDrive])
    {
      [(SASRequestOptions *)self setRightHandDrive:isRightHandDrive];
      [v7 addObject:@"rightHandDrive"];
    }

    carDNDActive = [stateCopy carDNDActive];
    if (carDNDActive != [(SASRequestOptions *)self isForCarDND])
    {
      [(SASRequestOptions *)self setIsForCarDND:carDNDActive];
      [v7 addObject:@"isForCarDND"];
    }

    carDNDStatus = [stateCopy carDNDStatus];
    if ([(SASRequestOptions *)self carDNDStatus]!= carDNDStatus)
    {
      [(SASRequestOptions *)self setCarDNDStatus:carDNDStatus];
      [v7 addObject:@"carDNDStatus"];
    }

    currentCarPlaySupportedOEMAppIdList = [stateCopy currentCarPlaySupportedOEMAppIdList];
    currentCarPlaySupportedOEMAppIdList2 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
    v16 = [currentCarPlaySupportedOEMAppIdList2 isEqualToArray:currentCarPlaySupportedOEMAppIdList];

    if ((v16 & 1) == 0)
    {
      [(SASRequestOptions *)self setCurrentCarPlaySupportedOEMAppIdList:currentCarPlaySupportedOEMAppIdList];
      [v7 addObject:@"currentCarPlaySupportedOEMAppIdList"];
    }
  }

  if ([v7 count])
  {
    v17 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SASRequestOptions _updateWithSystemState:forcefully:]";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1C8137000, v17, OS_LOG_TYPE_DEFAULT, "%s #activation Updated properties from system state: %@", &v19, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setRequestSource:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SASRequestOptions setRequestSource:]";
  _os_log_error_impl(&dword_1C8137000, log, OS_LOG_TYPE_ERROR, "%s #activation Cannot set requestSource to SASRequestSourceKeyboard when keyboard input is disabled", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)isATVRemotePTTEligible
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "[SASRequestOptions isATVRemotePTTEligible]";
  _os_log_debug_impl(&dword_1C8137000, log, OS_LOG_TYPE_DEBUG, "%s #ptt Overriding Siri's eligibility to true", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end