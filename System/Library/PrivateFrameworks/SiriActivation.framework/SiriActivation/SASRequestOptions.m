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
- (SASRequestOptions)initWithCoder:(id)a3;
- (SASRequestOptions)initWithRequestSource:(int64_t)a3 uiPresentationIdentifier:(id)a4 buttonContext:(id)a5;
- (SASRequestOptions)initWithRequestSource:(int64_t)a3 uiPresentationIdentifier:(id)a4 systemState:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nullableProperties;
- (int64_t)inputType;
- (void)_configureStreamingDictationForSource:(int64_t)a3;
- (void)_updateWithSystemState:(id)a3 forcefully:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)isATVRemotePTTEligible;
- (void)setRequestSource:(int64_t)a3;
@end

@implementation SASRequestOptions

- (BOOL)isWiredMicOrBTHeadsetOrWx
{
  v3 = [(SASRequestOptions *)self requestSource];
  v4 = v3 == 19 && [(SASRequestOptions *)self isH1Activation];
  return (v3 < 0x2F) & (0x480000000030uLL >> v3) | v4;
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

  v4 = [(SASRequestOptions *)self requestSource];
  v5 = v4 <= 0x3C && (((1 << v4) & 0x19A5000001010000) != 0 || v4 == 33 && ([MEMORY[0x1E698D258] saeAvailable] & 1) != 0) || -[SASRequestOptions isSuggestionSourceWithTextInput](self, "isSuggestionSourceWithTextInput");
  v6 = [(SASRequestOptions *)self isForStark];
  v7 = [(SASRequestOptions *)self requestSource]== 8 || [(SASRequestOptions *)self requestSource]== 9;
  v8 = [(SASRequestOptions *)self isH1Activation]|| [(SASRequestOptions *)self requestSource]== 5;
  v9 = [(SASRequestOptions *)self requestSource]!= 4;
  return v9 & ~(v6 | ~(v3 | v5) | (v7 || v8)) & ![(SASRequestOptions *)self isHeadunitEyesFree];
}

- (BOOL)isForStark
{
  v3 = [(SASRequestOptions *)self uiPresentationIdentifier];
  if ([v3 isEqualToString:@"com.apple.siri.CarDisplay"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SASRequestOptions *)self uiPresentationIdentifier];
    v4 = [v5 isEqualToString:@"com.apple.siri.CarDisplay.UIFree"];
  }

  return v4;
}

- (BOOL)isH1Activation
{
  v2 = [(SASRequestOptions *)self requestInfo];
  v3 = [v2 speechRequestOptions];
  v4 = [v3 activationEvent];

  return (v4 < 0x23) & (0x40002C000uLL >> v4);
}

- (BOOL)isHeadunitEyesFree
{
  v2 = [(SASRequestOptions *)self uiPresentationIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.siri.EyesFree"];

  return v3;
}

- (BOOL)_isForSpeechRequest
{
  v3 = [(SASRequestOptions *)self requestSource];
  v4 = [(SASRequestOptions *)self isAnnounceRequest];
  if (v3 <= 0x26 && ((1 << v3) & 0x4000006000) != 0 || (v3 == 43 ? (v7 = 1) : (v7 = v4), (v7 & 1) != 0 || [(SASRequestOptions *)self requestSource]== 19 && ![(SASRequestOptions *)self isH1Activation]|| [(SASRequestOptions *)self requestSource]== 22))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v8 = [(SASRequestOptions *)self text];
    if ([v8 length])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v9 = [(SASRequestOptions *)self speechFileURL];
      v10 = [v9 absoluteString];
      if ([v10 length] || -[SASRequestOptions requestSource](self, "requestSource") == 24 || -[SASRequestOptions _isTypeToSiriPermittedAndEnabledForRequestOptions](self, "_isTypeToSiriPermittedAndEnabledForRequestOptions") || -[SASRequestOptions requestSource](self, "requestSource") == 36 || -[SASRequestOptions requestSource](self, "requestSource") == 40)
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

  v7 = [(SASRequestOptions *)self activationDeviceIdentifier];

  if (v7)
  {
    v8 = [(SASRequestOptions *)self activationDeviceIdentifier];
    [v6 appendFormat:@";activationDeviceIdentifier=%@", v8];
  }

  v9 = [(SASRequestOptions *)self bulletin];

  if (v9)
  {
    v10 = [(SASRequestOptions *)self bulletin];
    [v6 appendFormat:@";bulletin=%@", v10];
  }

  v11 = [(SASRequestOptions *)self appBundleIdentifier];

  if (v11)
  {
    v12 = [(SASRequestOptions *)self appBundleIdentifier];
    [v6 appendFormat:@";appBundleIdentifier=%@", v12];
  }

  [(SASRequestOptions *)self directActionEvent];
  v13 = AFDirectActionEventGetName();
  [v6 appendFormat:@";directActionEvent=%@", v13];

  v14 = [(SASRequestOptions *)self serverCommandId];

  if (v14)
  {
    v15 = [(SASRequestOptions *)self serverCommandId];
    [v6 appendFormat:@";serverCommandId=%@", v15];
  }

  [v6 appendFormat:@";isPronunciationRequest=%i", -[SASRequestOptions isPronunciationRequest](self, "isPronunciationRequest")];
  v16 = [(SASRequestOptions *)self pronunciationContext];

  if (v16)
  {
    v17 = [(SASRequestOptions *)self pronunciationContext];
    [v6 appendFormat:@";pronunciationContext=%@", v17];
  }

  v18 = [(SASRequestOptions *)self text];

  if (v18)
  {
    v19 = [(SASRequestOptions *)self text];
    [v6 appendFormat:@";text=%@", v19];
  }

  v20 = [(SASRequestOptions *)self speechFileURL];

  if (v20)
  {
    v21 = [(SASRequestOptions *)self speechFileURL];
    [v6 appendFormat:@";speechFileURL=%@", v21];
  }

  [(SASRequestOptions *)self expectedTimestamp];
  v23 = v22;
  [(SASRequestOptions *)self timestamp];
  v25 = v24;
  [(SASRequestOptions *)self buttonDownTimestamp];
  v27 = v26;
  [(SASRequestOptions *)self computedActivationTime];
  [v6 appendFormat:@";expectedTimestamp=%0.1f;timestamp=%0.1f;buttonDownTimestamp=%0.1f;computedActivationTime=%0.1f;isInitialBringUp=%i;useAutomaticEndpointing=%i;useStreamingDictation=%i;acousticId=%i;releaseAudioSessionORC=%i;predictedZLL=%i", v23, v25, v27, v28, -[SASRequestOptions isInitialBringUp](self, "isInitialBringUp"), -[SASRequestOptions useAutomaticEndpointing](self, "useAutomaticEndpointing"), -[SASRequestOptions useStreamingDictation](self, "useStreamingDictation"), -[SASRequestOptions acousticIdEnabled](self, "acousticIdEnabled"), -[SASRequestOptions releaseAudioSessionOnRecordingCompletion](self, "releaseAudioSessionOnRecordingCompletion"), -[SASRequestOptions predictedRecordRouteIsZLL](self, "predictedRecordRouteIsZLL")];
  v29 = [(SASRequestOptions *)self uiPresentationIdentifier];

  if (v29)
  {
    v30 = [(SASRequestOptions *)self uiPresentationIdentifier];
    [v6 appendFormat:@";uiPresentationIdentifier=%@", v30];
  }

  v31 = [(SASRequestOptions *)self testingContext];

  if (v31)
  {
    v32 = [(SASRequestOptions *)self testingContext];
    [v6 appendFormat:@";testingContext=%@", v32];
  }

  v66 = [(SASRequestOptions *)self inputType]== 2;
  v65 = [(SASRequestOptions *)self inputType]== 1;
  v33 = [(SASRequestOptions *)self isForStark];
  v34 = [(SASRequestOptions *)self isConnectedToCarPlay];
  v35 = [(SASRequestOptions *)self isForCarDND];
  v36 = [(SASRequestOptions *)self isRightHandDrive];
  v37 = [(SASRequestOptions *)self isForBluetoothCar];
  v38 = CARAutomaticFeatureStateGetName([(SASRequestOptions *)self carDNDStatus]);
  [v6 appendFormat:@";is(speech=%i; textInput=%i;stark=%i;CPconnected=%i;dnd=%i;rightHandDrive=%i;isForBluetoothCar=%i);carDNDStatus=%@;remotePresentationBringUp=%i;supportsCarPlayVehicleData=%i;carOwnsMainAudio=%i", v66, v65, v33, v34, v35, v36, v37, v38, -[SASRequestOptions isRemotePresentationBringUp](self, "isRemotePresentationBringUp"), -[SASRequestOptions supportsCarPlayVehicleData](self, "supportsCarPlayVehicleData"), -[SASRequestOptions carOwnsMainAudio](self, "carOwnsMainAudio")];

  v39 = [(SASRequestOptions *)self homeButtonUpFromBeep];

  if (v39)
  {
    v40 = [(SASRequestOptions *)self homeButtonUpFromBeep];
    [v6 appendFormat:@";homeButtonUpFromBeep=%@", v40];
  }

  v41 = [(SASRequestOptions *)self continuityInfo];

  if (v41)
  {
    v42 = [(SASRequestOptions *)self continuityInfo];
    [v6 appendFormat:@";continuityInfo=%@", v42];
  }

  v43 = [(SASRequestOptions *)self requestInfo];

  if (v43)
  {
    v44 = [(SASRequestOptions *)self requestInfo];
    [v6 appendFormat:@";requestInfo=%@", v44];
  }

  v45 = SASLockStateGetName([(SASRequestOptions *)self currentLockState]);
  [v6 appendFormat:@";currentLockState=%@", v45];

  v46 = [(SASRequestOptions *)self previousInteractionInputType];
  if ((v46 - 1) > 2)
  {
    v47 = @"SASRequestInputTypeNone";
  }

  else
  {
    v47 = *(&off_1E82F4540 + v46 - 1);
  }

  [v6 appendFormat:@";previousInteractionInputType=%@", v47];
  v48 = [(SASRequestOptions *)self suggestionRequestType];
  if (v48 > 3)
  {
    v49 = @"Unknown";
  }

  else
  {
    v49 = *(&off_1E82F4558 + v48);
  }

  [v6 appendFormat:@";suggestionRequestType=%@", v49];
  v50 = [(SASRequestOptions *)self directActionApplicationContext];

  if (v50)
  {
    v51 = [(SASRequestOptions *)self directActionApplicationContext];
    [v6 appendFormat:@";directActionApplicationContext=%@", v51];
  }

  v52 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];

  if (v52)
  {
    v53 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
    [v6 appendFormat:@";carPlayOEMList=%@", v53];
  }

  [v6 appendFormat:@";isShortButtonPressAction=%i", -[SASRequestOptions isShortButtonPressAction](self, "isShortButtonPressAction")];
  v54 = [(SASRequestOptions *)self startRecordingSoundId];

  if (v54)
  {
    v55 = [(SASRequestOptions *)self startRecordingSoundId];
    [v6 appendFormat:@";startRecordingSoundId=%@", v55];
  }

  v56 = [(SASRequestOptions *)self originalRequestOptions];

  if (v56)
  {
    v57 = [(SASRequestOptions *)self originalRequestOptions];
    v58 = SASRequestSourceGetName([v57 requestSource]);
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
  v60 = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];

  if (v60)
  {
    v61 = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];
    [v6 appendFormat:@"; activationPreparationIdentifier=%@", v61];
  }

  v62 = [(SASRequestOptions *)self userEngagementContext];
  v63 = [v62 description];
  [v6 appendFormat:@";userEngagementContext=%@", v63];

  return v6;
}

- (BOOL)isForUIFree
{
  v3 = [(SASRequestOptions *)self uiPresentationIdentifier];
  if ([v3 isEqualToString:@"com.apple.siri.UIFree"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SASRequestOptions *)self uiPresentationIdentifier];
    v4 = [v5 isEqualToString:@"com.apple.siri.CarDisplay.UIFree"];
  }

  return v4;
}

- (BOOL)isVoiceTriggerRequest
{
  v3 = [(SASRequestOptions *)self requestInfo];
  v4 = [v3 speechRequestOptions];
  v5 = [v4 activationEvent];

  if ([(SASRequestOptions *)self requestSource]== 8)
  {
    return 1;
  }

  return [(SASRequestOptions *)self requestSource]== 19 && v5 == 15;
}

- (BOOL)userTypedInSiri
{
  v3 = [(SASRequestOptions *)self isSuggestionSourceWithTextInput];
  v4 = [(SASRequestOptions *)self requestSource]== 33 || [(SASRequestOptions *)self requestSource]== 24 || v3;
  return v4 & 1;
}

- (BOOL)isForAppleTV
{
  v2 = [(SASRequestOptions *)self uiPresentationIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.siri.SiriTVPresentation"];

  return v3;
}

- (SASRequestOptions)initWithRequestSource:(int64_t)a3 uiPresentationIdentifier:(id)a4 systemState:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SASRequestOptions;
  v11 = [(SASRequestOptions *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_requestSource = a3;
    v13 = [MEMORY[0x1E696AE30] processInfo];
    [v13 systemUptime];
    v12->_timestamp = v14;

    v12->_useAutomaticEndpointing = 1;
    v12->_acousticIdEnabled = 0;
    objc_storeStrong(&v12->_uiPresentationIdentifier, a4);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    instrumentationEvents = v12->_instrumentationEvents;
    v12->_instrumentationEvents = v15;

    [(SASRequestOptions *)v12 _configureStreamingDictationForSource:a3];
    v12->_longPressBehavior = -1;
    if (v10)
    {
      [(SASRequestOptions *)v12 _updateWithSystemState:v10 forcefully:1];
    }
  }

  return v12;
}

- (SASRequestOptions)initWithRequestSource:(int64_t)a3 uiPresentationIdentifier:(id)a4 buttonContext:(id)a5
{
  v8 = a5;
  v9 = [(SASRequestOptions *)self initWithRequestSource:a3 uiPresentationIdentifier:a4 systemState:0];
  if ([MEMORY[0x1E698D148] isTVPushToTalkEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      -[SASRequestOptions setTvRemoteType:](v9, "setTvRemoteType:", SASRemoteTypeFromSiriTVRemoteType([v10 remoteType]));
      v11 = [v10 isPTTEligible];

      [(SASRequestOptions *)v9 setIsTVRemoteSourcePTTEligible:v11];
    }
  }

  v12 = [v8 activationEventInstrumentationIdentifier];
  [(SASRequestOptions *)v9 setActivationEventInstrumentationIdenifier:v12];

  return v9;
}

- (void)setRequestSource:(int64_t)a3
{
  if (a3 == 24)
  {
    if (AFPreferencesTypeToSiriEnabled())
    {
      a3 = 24;
    }

    else
    {
      v4 = *MEMORY[0x1E698D0A0];
      if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
      {
        [SASRequestOptions setRequestSource:v4];
      }

      a3 = 0;
    }
  }

  self->_requestSource = a3;
}

- (void)_configureStreamingDictationForSource:(int64_t)a3
{
  v5 = AFPreferencesStreamingDictationEnabled();
  v6 = 0x202820BC03FEuLL >> a3;
  if (a3 > 0x2D)
  {
    LOBYTE(v6) = 0;
  }

  if (!v5)
  {
    LOBYTE(v6) = 0;
  }

  [(SASRequestOptions *)self setUseStreamingDictation:v6 & 1];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(SASRequestOptions *)self requestSource];
  v6 = [(SASRequestOptions *)self uiPresentationIdentifier];
  v7 = [v4 initWithRequestSource:v5 uiPresentationIdentifier:v6];

  v8 = [(SASRequestOptions *)self activationDeviceIdentifier];
  [v7 setActivationDeviceIdentifier:v8];

  v9 = [(SASRequestOptions *)self bulletin];
  [v7 setBulletin:v9];

  v10 = [(SASRequestOptions *)self appBundleIdentifier];
  [v7 setAppBundleIdentifier:v10];

  [v7 setDirectActionEvent:{-[SASRequestOptions directActionEvent](self, "directActionEvent")}];
  v11 = [(SASRequestOptions *)self directActionApplicationContext];
  [v7 setDirectActionApplicationContext:v11];

  v12 = [(SASRequestOptions *)self serverCommandId];
  [v7 setServerCommandId:v12];

  [v7 setPronunciationRequest:{-[SASRequestOptions isPronunciationRequest](self, "isPronunciationRequest")}];
  v13 = [(SASRequestOptions *)self pronunciationContext];
  [v7 setPronunciationContext:v13];

  v14 = [(SASRequestOptions *)self text];
  [v7 setText:v14];

  v15 = [(SASRequestOptions *)self speechFileURL];
  [v7 setSpeechFileURL:v15];

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
  v16 = [(SASRequestOptions *)self homeButtonUpFromBeep];
  [v7 setHomeButtonUpFromBeep:v16];

  v17 = [(SASRequestOptions *)self continuityInfo];
  [v7 setContinuityInfo:v17];

  v18 = [(SASRequestOptions *)self requestInfo];
  [v7 setRequestInfo:v18];

  v19 = [(SASRequestOptions *)self speechRequestOptions];
  [v7 setSpeechRequestOptions:v19];

  [v7 setAcousticIdEnabled:{-[SASRequestOptions acousticIdEnabled](self, "acousticIdEnabled")}];
  [v7 setReleaseAudioSessionOnRecordingCompletion:{-[SASRequestOptions releaseAudioSessionOnRecordingCompletion](self, "releaseAudioSessionOnRecordingCompletion")}];
  [v7 setPredictedRecordRouteIsZLL:{-[SASRequestOptions predictedRecordRouteIsZLL](self, "predictedRecordRouteIsZLL")}];
  v20 = [(SASRequestOptions *)self testingContext];
  [v7 setTestingContext:v20];

  [v7 setIsConnectedToCarPlay:{-[SASRequestOptions isConnectedToCarPlay](self, "isConnectedToCarPlay")}];
  [v7 setIsForCarDND:{-[SASRequestOptions isForCarDND](self, "isForCarDND")}];
  [v7 setCarDNDStatus:{-[SASRequestOptions carDNDStatus](self, "carDNDStatus")}];
  [v7 setCurrentLockState:{-[SASRequestOptions currentLockState](self, "currentLockState")}];
  [v7 setPreviousInteractionInputType:{-[SASRequestOptions previousInteractionInputType](self, "previousInteractionInputType")}];
  [v7 setSuggestionRequestType:{-[SASRequestOptions suggestionRequestType](self, "suggestionRequestType")}];
  [v7 setIsForBluetoothCar:{-[SASRequestOptions isForBluetoothCar](self, "isForBluetoothCar")}];
  v21 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
  [v7 setCurrentCarPlaySupportedOEMAppIdList:v21];

  [v7 setShortButtonPressAction:{-[SASRequestOptions isShortButtonPressAction](self, "isShortButtonPressAction")}];
  v22 = [(SASRequestOptions *)self instrumentationEvents];
  [v7 setInstrumentationEvents:v22];

  v23 = [(SASRequestOptions *)self startRecordingSoundId];
  [v7 setStartRecordingSoundId:v23];

  v24 = [(SASRequestOptions *)self originalRequestOptions];
  [v7 setOriginalRequestOptions:v24];

  [v7 setPresentationMode:{-[SASRequestOptions presentationMode](self, "presentationMode")}];
  [v7 setRightHandDrive:{-[SASRequestOptions isRightHandDrive](self, "isRightHandDrive")}];
  [v7 setTvRemoteType:{-[SASRequestOptions tvRemoteType](self, "tvRemoteType")}];
  [v7 setIsTVRemoteSourcePTTEligible:{-[SASRequestOptions isTVRemoteSourcePTTEligible](self, "isTVRemoteSourcePTTEligible")}];
  [v7 setLongPressBehavior:{-[SASRequestOptions longPressBehavior](self, "longPressBehavior")}];
  v25 = [(SASRequestOptions *)self activationEventInstrumentationIdenifier];
  [v7 setActivationEventInstrumentationIdenifier:v25];

  v26 = [(SASRequestOptions *)self userEngagementContext];
  [v7 setUserEngagementContext:v26];

  v27 = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];
  [v7 setActivationPreparationReferenceIdentifier:v27];

  return v7;
}

- (SASRequestOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = SASRequestOptions;
  v5 = [(SASRequestOptions *)&v69 init];
  if (v5)
  {
    v5->_requestSource = [v4 decodeIntegerForKey:@"SASRequestOptionsSourceCodingKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsActivationDeviceIdentifierCodingKey"];
    v7 = [v6 copy];
    activationDeviceIdentifier = v5->_activationDeviceIdentifier;
    v5->_activationDeviceIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsBulletinCodingKey"];
    bulletin = v5->_bulletin;
    v5->_bulletin = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsAppBundleIdentifierCodingKey"];
    v12 = [v11 copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsMessagesDirectActionApplicationContextCodingKey"];
    directActionApplicationContext = v5->_directActionApplicationContext;
    v5->_directActionApplicationContext = v14;

    v5->_directActionEvent = [v4 decodeIntegerForKey:@"SASRequestOptionsDirectActionEventCodingKey"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsServerCommandAceIdentifierCodingKey"];
    v17 = [v16 copy];
    serverCommandId = v5->_serverCommandId;
    v5->_serverCommandId = v17;

    v5->_pronunciationRequest = [v4 decodeBoolForKey:@"SASRequestOptionsPronunciationRequestCodingKey"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsPronunciationContextCodingKey"];
    pronunciationContext = v5->_pronunciationContext;
    v5->_pronunciationContext = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsTextCodingKey"];
    v22 = [v21 copy];
    text = v5->_text;
    v5->_text = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsSpeechFileURLCodingKey"];
    v25 = [v24 copy];
    speechFileURL = v5->_speechFileURL;
    v5->_speechFileURL = v25;

    [v4 decodeDoubleForKey:@"SASRequestOptionsTimestampCodingKey"];
    v5->_timestamp = v27;
    [v4 decodeDoubleForKey:@"SASRequestOptionsExpectedTimestampCodingKey"];
    v5->_expectedTimestamp = v28;
    [v4 decodeDoubleForKey:@"SASRequestOptionsButtonDownTimestampCodingKey"];
    v5->_buttonDownTimestamp = v29;
    [v4 decodeDoubleForKey:@"SASRequestOptionsComputedActivationTimestampCodingKey"];
    v5->_computedActivationTime = v30;
    v5->_initialBringUp = [v4 decodeBoolForKey:@"SASRequestOptionsIsInitialBringUpKey"];
    v5->_useAutomaticEndpointing = [v4 decodeBoolForKey:@"SASRequestOptionsUseAutomaticEndpointingKey"];
    v5->_useStreamingDictation = [v4 decodeBoolForKey:@"SASRequestOptionsUseStreamingDictationKey"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestHomeButtonUpFromBeepKey"];
    homeButtonUpFromBeep = v5->_homeButtonUpFromBeep;
    v5->_homeButtonUpFromBeep = v31;

    v33 = [v4 decodePropertyListForKey:@"SASRequestContinuityDataKey"];
    continuityInfo = v5->_continuityInfo;
    v5->_continuityInfo = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestRequestInfoKey"];
    requestInfo = v5->_requestInfo;
    v5->_requestInfo = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestSpeechRequestOptionsKey"];
    speechRequestOptions = v5->_speechRequestOptions;
    v5->_speechRequestOptions = v37;

    v5->_acousticIdEnabled = [v4 decodeBoolForKey:@"SASRequestOptionsAcousticIdEnabledKey"];
    v5->_releaseAudioSessionOnRecordingCompletion = [v4 decodeBoolForKey:@"SASRequestOptionsReleaseAudioSessionOnRecordingCompletionKey"];
    v5->_predictedRecordRouteIsZLL = [v4 decodeBoolForKey:@"SASRequestPredictedRecordRouteIsZLL"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsUIPresentationIdentifierCodingKey"];
    v40 = [v39 copy];
    uiPresentationIdentifier = v5->_uiPresentationIdentifier;
    v5->_uiPresentationIdentifier = v40;

    v42 = [v4 decodePropertyListForKey:@"SASRequestOptionsTestingContextKey"];
    testingContext = v5->_testingContext;
    v5->_testingContext = v42;

    v5->_isConnectedToCarPlay = [v4 decodeBoolForKey:@"SASRequestOptionsIsConnectedToCarPlayCodingKey"];
    v5->_supportsCarPlayVehicleData = [v4 decodeBoolForKey:@"SASRequestOptionsSupportsCarPlayVehicleData"];
    v5->_carOwnsMainAudio = [v4 decodeBoolForKey:@"SASRequestOptionsCarOwnsMainAudioCodingKey"];
    v5->_isForCarDND = [v4 decodeBoolForKey:@"SASRequestOptionsIsForCarDNDCodingKey"];
    v5->_carDNDStatus = [v4 decodeIntegerForKey:@"SASRequestOptionsCarDNDStatusCodingKey"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsCurrentLockStateCodingKey"];
    v5->_currentLockState = [v44 unsignedIntegerValue];

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsPreviousInteractionInputTypeCodingKey"];
    v5->_previousInteractionInputType = [v45 unsignedIntegerValue];

    v5->_suggestionRequestType = [v4 decodeIntegerForKey:@"SASRequestOptionsSuggestionRequestTypeCodingKey"];
    v5->_isForBluetoothCar = [v4 decodeBoolForKey:@"SASRequestOptionsBluetoothCarCodingKey"];
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = [v46 setWithObjects:{v47, objc_opt_class(), 0}];
    v49 = [v4 decodeObjectOfClasses:v48 forKey:@"SASRequestOptionsInstrumentationEventsCodingKey"];
    instrumentationEvents = v5->_instrumentationEvents;
    v5->_instrumentationEvents = v49;

    v51 = MEMORY[0x1E695DFD8];
    v52 = objc_opt_class();
    v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
    v54 = [v4 decodeObjectOfClasses:v53 forKey:@"SASRequestOptionsCurrentCarPlaySupportedOEMAppIdListKey"];
    currentCarPlaySupportedOEMAppIdList = v5->_currentCarPlaySupportedOEMAppIdList;
    v5->_currentCarPlaySupportedOEMAppIdList = v54;

    v5->_shortButtonPressAction = [v4 decodeBoolForKey:@"SASRequestOptionsIsTVShortButtonPressAction"];
    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsStartRecordingSoundIDCodingKey"];
    startRecordingSoundId = v5->_startRecordingSoundId;
    v5->_startRecordingSoundId = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsOriginalOptionsCodingKey"];
    originalRequestOptions = v5->_originalRequestOptions;
    v5->_originalRequestOptions = v58;

    v5->_presentationMode = [v4 decodeIntegerForKey:@"SASRequestOptionsPresentationModeCodingKey"];
    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsPreviousTurnIdentifierCodingKey"];
    previousTurnIdentifier = v5->_previousTurnIdentifier;
    v5->_previousTurnIdentifier = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsActivationEventIdentifierCodingKey"];
    activationEventInstrumentationIdenifier = v5->_activationEventInstrumentationIdenifier;
    v5->_activationEventInstrumentationIdenifier = v62;

    v5->_rightHandDrive = [v4 decodeBoolForKey:@"SASRequestOptionsIsRightHandDriveKey"];
    v5->_tvRemoteType = [v4 decodeIntegerForKey:@"SASRequestOptionsTVRemoteType"];
    v5->_isRemotePresentationBringUp = [v4 decodeBoolForKey:@"SASRequestOptionsIsRemotePresentationBringUpCodingKey"];
    v5->_isTVRemoteSourcePTTEligible = [v4 decodeBoolForKey:@"SASRequestOptionsIsTVRemoteSourcePTTEligibleCodingKey"];
    v5->_longPressBehavior = [v4 decodeIntegerForKey:@"SASRequestOptionsLongPressBehavior"];
    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsUserEngagementContextCodingKey"];
    userEngagementContext = v5->_userEngagementContext;
    v5->_userEngagementContext = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SASRequestOptionsActivationPreparationReferenceIdentifierCodingKey"];
    activationPreparationReferenceIdentifier = v5->_activationPreparationReferenceIdentifier;
    v5->_activationPreparationReferenceIdentifier = v66;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SASRequestOptions requestSource](self forKey:{"requestSource"), @"SASRequestOptionsSourceCodingKey"}];
  v5 = [(SASRequestOptions *)self activationDeviceIdentifier];
  [v4 encodeObject:v5 forKey:@"SASRequestOptionsActivationDeviceIdentifierCodingKey"];

  v6 = [(SASRequestOptions *)self bulletin];
  [v4 encodeObject:v6 forKey:@"SASRequestOptionsBulletinCodingKey"];

  v7 = [(SASRequestOptions *)self appBundleIdentifier];
  [v4 encodeObject:v7 forKey:@"SASRequestOptionsAppBundleIdentifierCodingKey"];

  v8 = [(SASRequestOptions *)self directActionApplicationContext];
  [v4 encodeObject:v8 forKey:@"SASRequestOptionsMessagesDirectActionApplicationContextCodingKey"];

  [v4 encodeInteger:-[SASRequestOptions directActionEvent](self forKey:{"directActionEvent"), @"SASRequestOptionsDirectActionEventCodingKey"}];
  v9 = [(SASRequestOptions *)self serverCommandId];
  [v4 encodeObject:v9 forKey:@"SASRequestOptionsServerCommandAceIdentifierCodingKey"];

  [v4 encodeBool:-[SASRequestOptions isPronunciationRequest](self forKey:{"isPronunciationRequest"), @"SASRequestOptionsPronunciationRequestCodingKey"}];
  v10 = [(SASRequestOptions *)self pronunciationContext];
  [v4 encodeObject:v10 forKey:@"SASRequestOptionsPronunciationContextCodingKey"];

  v11 = [(SASRequestOptions *)self text];
  [v4 encodeObject:v11 forKey:@"SASRequestOptionsTextCodingKey"];

  v12 = [(SASRequestOptions *)self speechFileURL];
  [v4 encodeObject:v12 forKey:@"SASRequestOptionsSpeechFileURLCodingKey"];

  [(SASRequestOptions *)self timestamp];
  [v4 encodeDouble:@"SASRequestOptionsTimestampCodingKey" forKey:?];
  [(SASRequestOptions *)self expectedTimestamp];
  [v4 encodeDouble:@"SASRequestOptionsExpectedTimestampCodingKey" forKey:?];
  [(SASRequestOptions *)self buttonDownTimestamp];
  [v4 encodeDouble:@"SASRequestOptionsButtonDownTimestampCodingKey" forKey:?];
  [(SASRequestOptions *)self computedActivationTime];
  [v4 encodeDouble:@"SASRequestOptionsComputedActivationTimestampCodingKey" forKey:?];
  [v4 encodeBool:-[SASRequestOptions isInitialBringUp](self forKey:{"isInitialBringUp"), @"SASRequestOptionsIsInitialBringUpKey"}];
  [v4 encodeBool:-[SASRequestOptions useStreamingDictation](self forKey:{"useStreamingDictation"), @"SASRequestOptionsUseStreamingDictationKey"}];
  v13 = [(SASRequestOptions *)self homeButtonUpFromBeep];
  [v4 encodeObject:v13 forKey:@"SASRequestHomeButtonUpFromBeepKey"];

  v14 = [(SASRequestOptions *)self continuityInfo];
  [v4 encodeObject:v14 forKey:@"SASRequestContinuityDataKey"];

  v15 = [(SASRequestOptions *)self requestInfo];
  [v4 encodeObject:v15 forKey:@"SASRequestRequestInfoKey"];

  [v4 encodeBool:-[SASRequestOptions useAutomaticEndpointing](self forKey:{"useAutomaticEndpointing"), @"SASRequestOptionsUseAutomaticEndpointingKey"}];
  v16 = [(SASRequestOptions *)self speechRequestOptions];
  [v4 encodeObject:v16 forKey:@"SASRequestSpeechRequestOptionsKey"];

  [v4 encodeBool:-[SASRequestOptions acousticIdEnabled](self forKey:{"acousticIdEnabled"), @"SASRequestOptionsAcousticIdEnabledKey"}];
  [v4 encodeBool:-[SASRequestOptions releaseAudioSessionOnRecordingCompletion](self forKey:{"releaseAudioSessionOnRecordingCompletion"), @"SASRequestOptionsReleaseAudioSessionOnRecordingCompletionKey"}];
  [v4 encodeBool:-[SASRequestOptions predictedRecordRouteIsZLL](self forKey:{"predictedRecordRouteIsZLL"), @"SASRequestPredictedRecordRouteIsZLL"}];
  v17 = [(SASRequestOptions *)self uiPresentationIdentifier];
  [v4 encodeObject:v17 forKey:@"SASRequestOptionsUIPresentationIdentifierCodingKey"];

  v18 = [(SASRequestOptions *)self testingContext];
  [v4 encodeObject:v18 forKey:@"SASRequestOptionsTestingContextKey"];

  [v4 encodeBool:-[SASRequestOptions isConnectedToCarPlay](self forKey:{"isConnectedToCarPlay"), @"SASRequestOptionsIsConnectedToCarPlayCodingKey"}];
  [v4 encodeBool:-[SASRequestOptions supportsCarPlayVehicleData](self forKey:{"supportsCarPlayVehicleData"), @"SASRequestOptionsSupportsCarPlayVehicleData"}];
  [v4 encodeBool:-[SASRequestOptions carOwnsMainAudio](self forKey:{"carOwnsMainAudio"), @"SASRequestOptionsCarOwnsMainAudioCodingKey"}];
  [v4 encodeBool:-[SASRequestOptions isForCarDND](self forKey:{"isForCarDND"), @"SASRequestOptionsIsForCarDNDCodingKey"}];
  [v4 encodeInteger:-[SASRequestOptions carDNDStatus](self forKey:{"carDNDStatus"), @"SASRequestOptionsCarDNDStatusCodingKey"}];
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SASRequestOptions currentLockState](self, "currentLockState")}];
  [v4 encodeObject:v19 forKey:@"SASRequestOptionsCurrentLockStateCodingKey"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SASRequestOptions previousInteractionInputType](self, "previousInteractionInputType")}];
  [v4 encodeObject:v20 forKey:@"SASRequestOptionsPreviousInteractionInputTypeCodingKey"];

  [v4 encodeInteger:-[SASRequestOptions suggestionRequestType](self forKey:{"suggestionRequestType"), @"SASRequestOptionsSuggestionRequestTypeCodingKey"}];
  [v4 encodeBool:-[SASRequestOptions isForBluetoothCar](self forKey:{"isForBluetoothCar"), @"SASRequestOptionsBluetoothCarCodingKey"}];
  v21 = [(SASRequestOptions *)self instrumentationEvents];
  [v4 encodeObject:v21 forKey:@"SASRequestOptionsInstrumentationEventsCodingKey"];

  v22 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
  [v4 encodeObject:v22 forKey:@"SASRequestOptionsCurrentCarPlaySupportedOEMAppIdListKey"];

  [v4 encodeBool:-[SASRequestOptions isShortButtonPressAction](self forKey:{"isShortButtonPressAction"), @"SASRequestOptionsIsTVShortButtonPressAction"}];
  v23 = [(SASRequestOptions *)self startRecordingSoundId];
  [v4 encodeObject:v23 forKey:@"SASRequestOptionsStartRecordingSoundIDCodingKey"];

  v24 = [(SASRequestOptions *)self originalRequestOptions];
  [v4 encodeObject:v24 forKey:@"SASRequestOptionsOriginalOptionsCodingKey"];

  [v4 encodeInteger:-[SASRequestOptions presentationMode](self forKey:{"presentationMode"), @"SASRequestOptionsPresentationModeCodingKey"}];
  v25 = [(SASRequestOptions *)self previousTurnIdentifier];
  [v4 encodeObject:v25 forKey:@"SASRequestOptionsPreviousTurnIdentifierCodingKey"];

  v26 = [(SASRequestOptions *)self activationEventInstrumentationIdenifier];
  [v4 encodeObject:v26 forKey:@"SASRequestOptionsActivationEventIdentifierCodingKey"];

  [v4 encodeBool:-[SASRequestOptions isRightHandDrive](self forKey:{"isRightHandDrive"), @"SASRequestOptionsIsRightHandDriveKey"}];
  [v4 encodeInteger:-[SASRequestOptions tvRemoteType](self forKey:{"tvRemoteType"), @"SASRequestOptionsTVRemoteType"}];
  [v4 encodeBool:-[SASRequestOptions isRemotePresentationBringUp](self forKey:{"isRemotePresentationBringUp"), @"SASRequestOptionsIsRemotePresentationBringUpCodingKey"}];
  [v4 encodeBool:-[SASRequestOptions isTVRemoteSourcePTTEligible](self forKey:{"isTVRemoteSourcePTTEligible"), @"SASRequestOptionsIsTVRemoteSourcePTTEligibleCodingKey"}];
  [v4 encodeInteger:-[SASRequestOptions longPressBehavior](self forKey:{"longPressBehavior"), @"SASRequestOptionsLongPressBehavior"}];
  v27 = [(SASRequestOptions *)self userEngagementContext];
  [v4 encodeObject:v27 forKey:@"SASRequestOptionsUserEngagementContextCodingKey"];

  v28 = [(SASRequestOptions *)self activationPreparationReferenceIdentifier];
  [v4 encodeObject:v28 forKey:@"SASRequestOptionsActivationPreparationReferenceIdentifierCodingKey"];
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

    v7 = [(SASRequestOptions *)self tvRemoteType];
    if (v7 - 5 >= 2)
    {
      if (v7 != 1)
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

- (void)_updateWithSystemState:(id)a3 forcefully:(BOOL)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [v6 isConnectedToCarPlay];
  if (a4)
  {
    [(SASRequestOptions *)self setIsConnectedToCarPlay:v8];
    -[SASRequestOptions setSupportsCarPlayVehicleData:](self, "setSupportsCarPlayVehicleData:", [v6 supportsCarPlayVehicleData]);
    -[SASRequestOptions setCarOwnsMainAudio:](self, "setCarOwnsMainAudio:", [v6 carOwnsMainAudio]);
    -[SASRequestOptions setRightHandDrive:](self, "setRightHandDrive:", [v6 isRightHandDrive]);
    -[SASRequestOptions setIsForCarDND:](self, "setIsForCarDND:", [v6 carDNDActive]);
    -[SASRequestOptions setCarDNDStatus:](self, "setCarDNDStatus:", [v6 carDNDStatus]);
    v9 = [v6 currentCarPlaySupportedOEMAppIdList];
    [(SASRequestOptions *)self setCurrentCarPlaySupportedOEMAppIdList:v9];
  }

  else
  {
    if (v8 != [(SASRequestOptions *)self isConnectedToCarPlay])
    {
      [(SASRequestOptions *)self setIsConnectedToCarPlay:v8];
      [v7 addObject:@"isConnectedToCarPlay"];
    }

    v10 = [v6 supportsCarPlayVehicleData];
    if (v10 != [(SASRequestOptions *)self supportsCarPlayVehicleData])
    {
      [(SASRequestOptions *)self setSupportsCarPlayVehicleData:v10];
      [v7 addObject:@"supportsCarPlayVehicleData"];
    }

    v11 = [v6 carOwnsMainAudio];
    if (v11 != [(SASRequestOptions *)self carOwnsMainAudio])
    {
      [(SASRequestOptions *)self setCarOwnsMainAudio:v11];
      [v7 addObject:@"carOwnsMainAudio"];
    }

    v12 = [v6 isRightHandDrive];
    if (v12 != [(SASRequestOptions *)self isRightHandDrive])
    {
      [(SASRequestOptions *)self setRightHandDrive:v12];
      [v7 addObject:@"rightHandDrive"];
    }

    v13 = [v6 carDNDActive];
    if (v13 != [(SASRequestOptions *)self isForCarDND])
    {
      [(SASRequestOptions *)self setIsForCarDND:v13];
      [v7 addObject:@"isForCarDND"];
    }

    v14 = [v6 carDNDStatus];
    if ([(SASRequestOptions *)self carDNDStatus]!= v14)
    {
      [(SASRequestOptions *)self setCarDNDStatus:v14];
      [v7 addObject:@"carDNDStatus"];
    }

    v9 = [v6 currentCarPlaySupportedOEMAppIdList];
    v15 = [(SASRequestOptions *)self currentCarPlaySupportedOEMAppIdList];
    v16 = [v15 isEqualToArray:v9];

    if ((v16 & 1) == 0)
    {
      [(SASRequestOptions *)self setCurrentCarPlaySupportedOEMAppIdList:v9];
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