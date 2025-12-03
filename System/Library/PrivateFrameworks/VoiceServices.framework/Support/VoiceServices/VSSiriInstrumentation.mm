@interface VSSiriInstrumentation
+ (id)sharedPowerLogger;
+ (int)outputRouteFromRouteInfo:(id)info;
+ (int)schemaFootprintFromFootprint:(int64_t)footprint;
+ (int)schemaVoiceGenderFromGender:(int64_t)gender;
+ (int)schemaVoiceTypeFromType:(int64_t)type;
+ (int)synthesisSourceFromSource:(int64_t)source;
+ (void)instrumentPowerEvent:(id)event ttsId:(id)id;
+ (void)instrumentVoicedProcessStartedPowerEvent;
- (VSSiriInstrumentation)initWithSiriRequestId:(id)id;
- (void)instrumentRequestReceivedWithText:(id)text requestedVoiceType:(int64_t)type requestedVoiceFootprint:(int64_t)footprint isPrivate:(BOOL)private;
- (void)instrumentSpeechCancelled;
- (void)instrumentSpeechEndedWithAudioDuration:(double)duration synthesisLatency:(double)latency realTimeFactor:(double)factor promptCount:(unint64_t)count errorCode:(int64_t)code;
- (void)instrumentSpeechFailedWithErrorCodes:(id)codes;
- (void)instrumentSpeechStartedWithSource:(int64_t)source customerPerceivedLatency:(double)latency audioOutputRoute:(id)route voiceType:(int64_t)type voiceFootprint:(int64_t)footprint voiceVersion:(unint64_t)version resourceVersion:(unint64_t)resourceVersion isWhisper:(BOOL)self0;
- (void)instrumentVoiceFallbackOccurredWithVoice:(id)voice resource:(id)resource;
- (void)makeRequestLinkEvent;
@end

@implementation VSSiriInstrumentation

- (void)instrumentVoiceFallbackOccurredWithVoice:(id)voice resource:(id)resource
{
  v6 = MEMORY[0x277D5B1B8];
  resourceCopy = resource;
  voiceCopy = voice;
  v37 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x277D5ACB8]);
  [v37 setVoiceSettings:v9];

  v10 = +[VSSiriInstrumentation schemaVoiceGenderFromGender:](VSSiriInstrumentation, "schemaVoiceGenderFromGender:", [voiceCopy gender]);
  voiceSettings = [v37 voiceSettings];
  [voiceSettings setVoiceGender:v10];

  name = [voiceCopy name];
  voiceSettings2 = [v37 voiceSettings];
  [voiceSettings2 setVoiceName:name];

  v14 = MEMORY[0x277D5ACF0];
  languages = [voiceCopy languages];
  firstObject = [languages firstObject];
  v17 = [v14 convertLanguageCodeToSchemaLocale:firstObject];
  voiceSettings3 = [v37 voiceSettings];
  [voiceSettings3 setVoiceAccent:v17];

  v19 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v37 setContext:v19];

  v20 = +[VSSiriInstrumentation schemaVoiceTypeFromType:](VSSiriInstrumentation, "schemaVoiceTypeFromType:", [voiceCopy type]);
  context = [v37 context];
  [context setVoiceType:v20];

  v22 = +[VSSiriInstrumentation schemaFootprintFromFootprint:](VSSiriInstrumentation, "schemaFootprintFromFootprint:", [voiceCopy footprint]);
  context2 = [v37 context];
  [context2 setVoiceFootprint:v22];

  contentVersion = [voiceCopy contentVersion];

  integerValue = [contentVersion integerValue];
  context3 = [v37 context];
  [context3 setVoiceVersion:integerValue];

  contentVersion2 = [resourceCopy contentVersion];

  integerValue2 = [contentVersion2 integerValue];
  context4 = [v37 context];
  [context4 setResourceVersion:integerValue2];

  v30 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v30 setVoiceFallbackOccurred:v37];
  v31 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v30 setEventMetadata:v31];

  v32 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v34 = [v32 initWithNSUUID:ttsId];
  eventMetadata = [v30 eventMetadata];
  [eventMetadata setTtsId:v34];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v30];
}

- (void)instrumentSpeechCancelled
{
  v16 = objc_alloc_init(MEMORY[0x277D5B170]);
  [v16 setExists:1];
  v3 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v3 setCancelled:v16];
  v4 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v6 = [v4 initWithNSUUID:contextId];
  [v3 setContextId:v6];

  v7 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v7 setSpeechContext:v3];
  v8 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v7 setEventMetadata:v8];

  v9 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v11 = [v9 initWithNSUUID:ttsId];
  eventMetadata = [v7 eventMetadata];
  [eventMetadata setTtsId:v11];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v7];

  context = [MEMORY[0x277D5FAA0] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:context ttsId:ttsId2];
}

- (void)instrumentSpeechFailedWithErrorCodes:(id)codes
{
  v4 = MEMORY[0x277D5B180];
  codesCopy = codes;
  v19 = objc_alloc_init(v4);
  [v19 setErrorCodes:codesCopy];

  v6 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v6 setFailed:v19];
  v7 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v9 = [v7 initWithNSUUID:contextId];
  [v6 setContextId:v9];

  v10 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v10 setSpeechContext:v6];
  v11 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v10 setEventMetadata:v11];

  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v14 = [v12 initWithNSUUID:ttsId];
  eventMetadata = [v10 eventMetadata];
  [eventMetadata setTtsId:v14];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v10];

  context = [MEMORY[0x277D5FAB0] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:context ttsId:ttsId2];
}

- (void)instrumentSpeechEndedWithAudioDuration:(double)duration synthesisLatency:(double)latency realTimeFactor:(double)factor promptCount:(unint64_t)count errorCode:(int64_t)code
{
  v33[1] = *MEMORY[0x277D85DE8];
  v13 = objc_alloc_init(MEMORY[0x277D5B178]);
  *&v14 = duration;
  [v13 setSynthesizedAudioDurationInSecond:v14];
  *&v15 = latency;
  [v13 setSynthesisLatencyInSecond:v15];
  *&v16 = factor;
  [v13 setSynthesisRealTimeFactor:v16];
  [v13 setPromptCount:count];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  v33[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v13 setErrorCodes:v18];

  v19 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v19 setEnded:v13];
  v20 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v22 = [v20 initWithNSUUID:contextId];
  [v19 setContextId:v22];

  v23 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v23 setSpeechContext:v19];
  v24 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v23 setEventMetadata:v24];

  v25 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v27 = [v25 initWithNSUUID:ttsId];
  eventMetadata = [v23 eventMetadata];
  [eventMetadata setTtsId:v27];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v23];

  context = [MEMORY[0x277D5FAA8] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:context ttsId:ttsId2];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)instrumentSpeechStartedWithSource:(int64_t)source customerPerceivedLatency:(double)latency audioOutputRoute:(id)route voiceType:(int64_t)type voiceFootprint:(int64_t)footprint voiceVersion:(unint64_t)version resourceVersion:(unint64_t)resourceVersion isWhisper:(BOOL)self0
{
  v17 = MEMORY[0x277D5B188];
  routeCopy = route;
  v42 = objc_alloc_init(v17);
  v19 = [VSSiriInstrumentation outputRouteFromRouteInfo:routeCopy];

  [v42 setAudioOutputRoute:v19];
  *&v20 = latency;
  [v42 setCustomerPerceivedLatencyInSecond:v20];
  [v42 setSynthesisSource:{+[VSSiriInstrumentation synthesisSourceFromSource:](VSSiriInstrumentation, "synthesisSourceFromSource:", source)}];
  v21 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v42 setVoiceContext:v21];

  v22 = [VSSiriInstrumentation schemaVoiceTypeFromType:type];
  voiceContext = [v42 voiceContext];
  [voiceContext setVoiceType:v22];

  v24 = [VSSiriInstrumentation schemaFootprintFromFootprint:footprint];
  voiceContext2 = [v42 voiceContext];
  [voiceContext2 setVoiceFootprint:v24];

  voiceContext3 = [v42 voiceContext];
  [voiceContext3 setVoiceVersion:version];

  voiceContext4 = [v42 voiceContext];
  [voiceContext4 setResourceVersion:resourceVersion];

  if (whisper)
  {
    v28 = 3;
  }

  else
  {
    v28 = 2;
  }

  [v42 setSynthesisEffect:v28];
  v29 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v29 setStartedOrChanged:v42];
  v30 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v32 = [v30 initWithNSUUID:contextId];
  [v29 setContextId:v32];

  v33 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v33 setSpeechContext:v29];
  v34 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v33 setEventMetadata:v34];

  v35 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v37 = [v35 initWithNSUUID:ttsId];
  eventMetadata = [v33 eventMetadata];
  [eventMetadata setTtsId:v37];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v33];

  context = [MEMORY[0x277D5FAB8] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:context ttsId:ttsId2];
}

- (void)instrumentRequestReceivedWithText:(id)text requestedVoiceType:(int64_t)type requestedVoiceFootprint:(int64_t)footprint isPrivate:(BOOL)private
{
  textCopy = text;
  v10 = objc_alloc_init(MEMORY[0x277D5B168]);
  v11 = v10;
  if (!private)
  {
    [v10 setTextToSynthesize:textCopy];
  }

  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = [v12 initWithNSUUID:uUID];
  [v11 setLinkId:v14];

  v15 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v15 setRequestReceivedTier1:v11];
  v16 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v15 setEventMetadata:v16];

  v17 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v19 = [v17 initWithNSUUID:ttsId];
  eventMetadata = [v15 eventMetadata];
  [eventMetadata setTtsId:v19];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v15];

  v22 = objc_alloc_init(MEMORY[0x277D5B160]);
  linkId = [v11 linkId];
  [v22 setLinkId:linkId];

  v24 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v22 setRequestedVoiceContext:v24];

  v25 = [VSSiriInstrumentation schemaVoiceTypeFromType:type];
  requestedVoiceContext = [v22 requestedVoiceContext];
  [requestedVoiceContext setVoiceType:v25];

  v27 = [VSSiriInstrumentation schemaFootprintFromFootprint:footprint];
  requestedVoiceContext2 = [v22 requestedVoiceContext];
  [requestedVoiceContext2 setVoiceFootprint:v27];

  [v22 setInputTextLength:{objc_msgSend(textCopy, "length")}];
  v29 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v29 setRequestReceived:v22];
  v30 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v29 setEventMetadata:v30];

  v31 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  v33 = [v31 initWithNSUUID:ttsId2];
  eventMetadata2 = [v29 eventMetadata];
  [eventMetadata2 setTtsId:v33];

  mEMORY[0x277D552C0]2 = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0]2 emitMessage:v29];

  context = [MEMORY[0x277D5FA98] context];
  ttsId3 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:context ttsId:ttsId3];
}

- (void)makeRequestLinkEvent
{
  v8 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:self->_siriRequestId];
  v3 = objc_alloc_init(MEMORY[0x277D5A9E0]);
  [v3 setUuid:v8];
  [v3 setComponent:1];
  v4 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:self->_ttsId];
  v5 = objc_alloc_init(MEMORY[0x277D5A9E0]);
  [v5 setUuid:v4];
  [v5 setComponent:13];
  v6 = objc_alloc_init(MEMORY[0x277D5A9D0]);
  [v6 setSource:v5];
  [v6 setTarget:v3];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:v6];
}

- (VSSiriInstrumentation)initWithSiriRequestId:(id)id
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = VSSiriInstrumentation;
  v6 = [(VSSiriInstrumentation *)&v15 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277D552C0] derivedIdentifierForComponentName:13 fromSourceIdentifier:idCopy];
  ttsId = v6->_ttsId;
  v6->_ttsId = v7;

  if (v6->_ttsId)
  {
    objc_storeStrong(&v6->_siriRequestId, id);
    uUID = [MEMORY[0x277CCAD78] UUID];
    contextId = v6->_contextId;
    v6->_contextId = uUID;

    [(VSSiriInstrumentation *)v6 makeRequestLinkEvent];
LABEL_4:
    v11 = v6;
    goto LABEL_8;
  }

  v12 = VSGetLogDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *v14 = 0;
    _os_log_fault_impl(&dword_2727E4000, v12, OS_LOG_TYPE_FAULT, "AssistantSiriAnalytics should always derive an identifier for SISchemaComponentName_COMPONENTNAME_TTS", v14, 2u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

+ (void)instrumentPowerEvent:(id)event ttsId:(id)id
{
  idCopy = id;
  eventCopy = event;
  v8 = +[VSSiriInstrumentation sharedPowerLogger];
  captureSnapshot = [v8 captureSnapshot];
  [captureSnapshot logWithEventContext:eventCopy ttsIdentifier:idCopy];
}

+ (void)instrumentVoicedProcessStartedPowerEvent
{
  v4 = +[VSSiriInstrumentation sharedPowerLogger];
  captureSnapshot = [v4 captureSnapshot];
  context = [MEMORY[0x277D5FA90] context];
  [captureSnapshot logWithEventContext:context];
}

+ (id)sharedPowerLogger
{
  if (sharedPowerLogger_once != -1)
  {
    dispatch_once(&sharedPowerLogger_once, &__block_literal_global_3556);
  }

  v3 = sharedPowerLogger_sharedInstance;

  return v3;
}

uint64_t __42__VSSiriInstrumentation_sharedPowerLogger__block_invoke()
{
  sharedPowerLogger_sharedInstance = [objc_alloc(MEMORY[0x277D5FA88]) initWithCurrentProcess];

  return MEMORY[0x2821F96F8]();
}

+ (int)synthesisSourceFromSource:(int64_t)source
{
  if (source > 8)
  {
    return 1;
  }

  else
  {
    return dword_272832734[source];
  }
}

+ (int)outputRouteFromRouteInfo:(id)info
{
  infoCopy = info;
  audioRouteName = [infoCopy audioRouteName];
  if ([audioRouteName isEqualToString:@"Speaker"])
  {
    v5 = 2;
  }

  else if ([audioRouteName isEqualToString:@"CarAudioOutput"])
  {
    v5 = 7;
  }

  else
  {
    isBluetoothRoute = [infoCopy isBluetoothRoute];
    isAppleProduct = [infoCopy isAppleProduct];
    v8 = isAppleProduct ^ 1;
    if (((isBluetoothRoute ^ 1) & 1) != 0 || v8)
    {
      v9 = isBluetoothRoute | v8;
      if ((isBluetoothRoute | isAppleProduct))
      {
        v10 = 1;
      }

      else
      {
        v10 = 6;
      }

      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 5;
      }

      if ((isBluetoothRoute ^ 1 | isAppleProduct))
      {
        v5 = v11;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  return v5;
}

+ (int)schemaFootprintFromFootprint:(int64_t)footprint
{
  if ((footprint - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return footprint + 1;
  }
}

+ (int)schemaVoiceTypeFromType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return 1;
  }

  else
  {
    return dword_2728326C0[type - 1];
  }
}

+ (int)schemaVoiceGenderFromGender:(int64_t)gender
{
  if ((gender - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_272832728[gender - 1];
  }
}

@end