@interface VSSiriInstrumentation
+ (id)sharedPowerLogger;
+ (int)outputRouteFromRouteInfo:(id)a3;
+ (int)schemaFootprintFromFootprint:(int64_t)a3;
+ (int)schemaVoiceGenderFromGender:(int64_t)a3;
+ (int)schemaVoiceTypeFromType:(int64_t)a3;
+ (int)synthesisSourceFromSource:(int64_t)a3;
+ (void)instrumentPowerEvent:(id)a3 ttsId:(id)a4;
+ (void)instrumentVoicedProcessStartedPowerEvent;
- (VSSiriInstrumentation)initWithSiriRequestId:(id)a3;
- (void)instrumentRequestReceivedWithText:(id)a3 requestedVoiceType:(int64_t)a4 requestedVoiceFootprint:(int64_t)a5 isPrivate:(BOOL)a6;
- (void)instrumentSpeechCancelled;
- (void)instrumentSpeechEndedWithAudioDuration:(double)a3 synthesisLatency:(double)a4 realTimeFactor:(double)a5 promptCount:(unint64_t)a6 errorCode:(int64_t)a7;
- (void)instrumentSpeechFailedWithErrorCodes:(id)a3;
- (void)instrumentSpeechStartedWithSource:(int64_t)a3 customerPerceivedLatency:(double)a4 audioOutputRoute:(id)a5 voiceType:(int64_t)a6 voiceFootprint:(int64_t)a7 voiceVersion:(unint64_t)a8 resourceVersion:(unint64_t)a9 isWhisper:(BOOL)a10;
- (void)instrumentVoiceFallbackOccurredWithVoice:(id)a3 resource:(id)a4;
- (void)makeRequestLinkEvent;
@end

@implementation VSSiriInstrumentation

- (void)instrumentVoiceFallbackOccurredWithVoice:(id)a3 resource:(id)a4
{
  v6 = MEMORY[0x277D5B1B8];
  v7 = a4;
  v8 = a3;
  v37 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x277D5ACB8]);
  [v37 setVoiceSettings:v9];

  v10 = +[VSSiriInstrumentation schemaVoiceGenderFromGender:](VSSiriInstrumentation, "schemaVoiceGenderFromGender:", [v8 gender]);
  v11 = [v37 voiceSettings];
  [v11 setVoiceGender:v10];

  v12 = [v8 name];
  v13 = [v37 voiceSettings];
  [v13 setVoiceName:v12];

  v14 = MEMORY[0x277D5ACF0];
  v15 = [v8 languages];
  v16 = [v15 firstObject];
  v17 = [v14 convertLanguageCodeToSchemaLocale:v16];
  v18 = [v37 voiceSettings];
  [v18 setVoiceAccent:v17];

  v19 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v37 setContext:v19];

  v20 = +[VSSiriInstrumentation schemaVoiceTypeFromType:](VSSiriInstrumentation, "schemaVoiceTypeFromType:", [v8 type]);
  v21 = [v37 context];
  [v21 setVoiceType:v20];

  v22 = +[VSSiriInstrumentation schemaFootprintFromFootprint:](VSSiriInstrumentation, "schemaFootprintFromFootprint:", [v8 footprint]);
  v23 = [v37 context];
  [v23 setVoiceFootprint:v22];

  v24 = [v8 contentVersion];

  v25 = [v24 integerValue];
  v26 = [v37 context];
  [v26 setVoiceVersion:v25];

  v27 = [v7 contentVersion];

  v28 = [v27 integerValue];
  v29 = [v37 context];
  [v29 setResourceVersion:v28];

  v30 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v30 setVoiceFallbackOccurred:v37];
  v31 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v30 setEventMetadata:v31];

  v32 = objc_alloc(MEMORY[0x277D5AC78]);
  v33 = [(VSSiriInstrumentation *)self ttsId];
  v34 = [v32 initWithNSUUID:v33];
  v35 = [v30 eventMetadata];
  [v35 setTtsId:v34];

  v36 = [MEMORY[0x277D552C0] sharedStream];
  [v36 emitMessage:v30];
}

- (void)instrumentSpeechCancelled
{
  v16 = objc_alloc_init(MEMORY[0x277D5B170]);
  [v16 setExists:1];
  v3 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v3 setCancelled:v16];
  v4 = objc_alloc(MEMORY[0x277D5AC78]);
  v5 = [(VSSiriInstrumentation *)self contextId];
  v6 = [v4 initWithNSUUID:v5];
  [v3 setContextId:v6];

  v7 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v7 setSpeechContext:v3];
  v8 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v7 setEventMetadata:v8];

  v9 = objc_alloc(MEMORY[0x277D5AC78]);
  v10 = [(VSSiriInstrumentation *)self ttsId];
  v11 = [v9 initWithNSUUID:v10];
  v12 = [v7 eventMetadata];
  [v12 setTtsId:v11];

  v13 = [MEMORY[0x277D552C0] sharedStream];
  [v13 emitMessage:v7];

  v14 = [MEMORY[0x277D5FAA0] context];
  v15 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:v14 ttsId:v15];
}

- (void)instrumentSpeechFailedWithErrorCodes:(id)a3
{
  v4 = MEMORY[0x277D5B180];
  v5 = a3;
  v19 = objc_alloc_init(v4);
  [v19 setErrorCodes:v5];

  v6 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v6 setFailed:v19];
  v7 = objc_alloc(MEMORY[0x277D5AC78]);
  v8 = [(VSSiriInstrumentation *)self contextId];
  v9 = [v7 initWithNSUUID:v8];
  [v6 setContextId:v9];

  v10 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v10 setSpeechContext:v6];
  v11 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v10 setEventMetadata:v11];

  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  v13 = [(VSSiriInstrumentation *)self ttsId];
  v14 = [v12 initWithNSUUID:v13];
  v15 = [v10 eventMetadata];
  [v15 setTtsId:v14];

  v16 = [MEMORY[0x277D552C0] sharedStream];
  [v16 emitMessage:v10];

  v17 = [MEMORY[0x277D5FAB0] context];
  v18 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:v17 ttsId:v18];
}

- (void)instrumentSpeechEndedWithAudioDuration:(double)a3 synthesisLatency:(double)a4 realTimeFactor:(double)a5 promptCount:(unint64_t)a6 errorCode:(int64_t)a7
{
  v33[1] = *MEMORY[0x277D85DE8];
  v13 = objc_alloc_init(MEMORY[0x277D5B178]);
  *&v14 = a3;
  [v13 setSynthesizedAudioDurationInSecond:v14];
  *&v15 = a4;
  [v13 setSynthesisLatencyInSecond:v15];
  *&v16 = a5;
  [v13 setSynthesisRealTimeFactor:v16];
  [v13 setPromptCount:a6];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  v33[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  [v13 setErrorCodes:v18];

  v19 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v19 setEnded:v13];
  v20 = objc_alloc(MEMORY[0x277D5AC78]);
  v21 = [(VSSiriInstrumentation *)self contextId];
  v22 = [v20 initWithNSUUID:v21];
  [v19 setContextId:v22];

  v23 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v23 setSpeechContext:v19];
  v24 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v23 setEventMetadata:v24];

  v25 = objc_alloc(MEMORY[0x277D5AC78]);
  v26 = [(VSSiriInstrumentation *)self ttsId];
  v27 = [v25 initWithNSUUID:v26];
  v28 = [v23 eventMetadata];
  [v28 setTtsId:v27];

  v29 = [MEMORY[0x277D552C0] sharedStream];
  [v29 emitMessage:v23];

  v30 = [MEMORY[0x277D5FAA8] context];
  v31 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:v30 ttsId:v31];

  v32 = *MEMORY[0x277D85DE8];
}

- (void)instrumentSpeechStartedWithSource:(int64_t)a3 customerPerceivedLatency:(double)a4 audioOutputRoute:(id)a5 voiceType:(int64_t)a6 voiceFootprint:(int64_t)a7 voiceVersion:(unint64_t)a8 resourceVersion:(unint64_t)a9 isWhisper:(BOOL)a10
{
  v17 = MEMORY[0x277D5B188];
  v18 = a5;
  v42 = objc_alloc_init(v17);
  v19 = [VSSiriInstrumentation outputRouteFromRouteInfo:v18];

  [v42 setAudioOutputRoute:v19];
  *&v20 = a4;
  [v42 setCustomerPerceivedLatencyInSecond:v20];
  [v42 setSynthesisSource:{+[VSSiriInstrumentation synthesisSourceFromSource:](VSSiriInstrumentation, "synthesisSourceFromSource:", a3)}];
  v21 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v42 setVoiceContext:v21];

  v22 = [VSSiriInstrumentation schemaVoiceTypeFromType:a6];
  v23 = [v42 voiceContext];
  [v23 setVoiceType:v22];

  v24 = [VSSiriInstrumentation schemaFootprintFromFootprint:a7];
  v25 = [v42 voiceContext];
  [v25 setVoiceFootprint:v24];

  v26 = [v42 voiceContext];
  [v26 setVoiceVersion:a8];

  v27 = [v42 voiceContext];
  [v27 setResourceVersion:a9];

  if (a10)
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
  v31 = [(VSSiriInstrumentation *)self contextId];
  v32 = [v30 initWithNSUUID:v31];
  [v29 setContextId:v32];

  v33 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v33 setSpeechContext:v29];
  v34 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v33 setEventMetadata:v34];

  v35 = objc_alloc(MEMORY[0x277D5AC78]);
  v36 = [(VSSiriInstrumentation *)self ttsId];
  v37 = [v35 initWithNSUUID:v36];
  v38 = [v33 eventMetadata];
  [v38 setTtsId:v37];

  v39 = [MEMORY[0x277D552C0] sharedStream];
  [v39 emitMessage:v33];

  v40 = [MEMORY[0x277D5FAB8] context];
  v41 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:v40 ttsId:v41];
}

- (void)instrumentRequestReceivedWithText:(id)a3 requestedVoiceType:(int64_t)a4 requestedVoiceFootprint:(int64_t)a5 isPrivate:(BOOL)a6
{
  v38 = a3;
  v10 = objc_alloc_init(MEMORY[0x277D5B168]);
  v11 = v10;
  if (!a6)
  {
    [v10 setTextToSynthesize:v38];
  }

  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [v12 initWithNSUUID:v13];
  [v11 setLinkId:v14];

  v15 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v15 setRequestReceivedTier1:v11];
  v16 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v15 setEventMetadata:v16];

  v17 = objc_alloc(MEMORY[0x277D5AC78]);
  v18 = [(VSSiriInstrumentation *)self ttsId];
  v19 = [v17 initWithNSUUID:v18];
  v20 = [v15 eventMetadata];
  [v20 setTtsId:v19];

  v21 = [MEMORY[0x277D552C0] sharedStream];
  [v21 emitMessage:v15];

  v22 = objc_alloc_init(MEMORY[0x277D5B160]);
  v23 = [v11 linkId];
  [v22 setLinkId:v23];

  v24 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v22 setRequestedVoiceContext:v24];

  v25 = [VSSiriInstrumentation schemaVoiceTypeFromType:a4];
  v26 = [v22 requestedVoiceContext];
  [v26 setVoiceType:v25];

  v27 = [VSSiriInstrumentation schemaFootprintFromFootprint:a5];
  v28 = [v22 requestedVoiceContext];
  [v28 setVoiceFootprint:v27];

  [v22 setInputTextLength:{objc_msgSend(v38, "length")}];
  v29 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v29 setRequestReceived:v22];
  v30 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v29 setEventMetadata:v30];

  v31 = objc_alloc(MEMORY[0x277D5AC78]);
  v32 = [(VSSiriInstrumentation *)self ttsId];
  v33 = [v31 initWithNSUUID:v32];
  v34 = [v29 eventMetadata];
  [v34 setTtsId:v33];

  v35 = [MEMORY[0x277D552C0] sharedStream];
  [v35 emitMessage:v29];

  v36 = [MEMORY[0x277D5FA98] context];
  v37 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:v36 ttsId:v37];
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
  v7 = [MEMORY[0x277D552C0] sharedStream];
  [v7 emitMessage:v6];
}

- (VSSiriInstrumentation)initWithSiriRequestId:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = VSSiriInstrumentation;
  v6 = [(VSSiriInstrumentation *)&v15 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277D552C0] derivedIdentifierForComponentName:13 fromSourceIdentifier:v5];
  ttsId = v6->_ttsId;
  v6->_ttsId = v7;

  if (v6->_ttsId)
  {
    objc_storeStrong(&v6->_siriRequestId, a3);
    v9 = [MEMORY[0x277CCAD78] UUID];
    contextId = v6->_contextId;
    v6->_contextId = v9;

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

+ (void)instrumentPowerEvent:(id)a3 ttsId:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = +[VSSiriInstrumentation sharedPowerLogger];
  v7 = [v8 captureSnapshot];
  [v7 logWithEventContext:v6 ttsIdentifier:v5];
}

+ (void)instrumentVoicedProcessStartedPowerEvent
{
  v4 = +[VSSiriInstrumentation sharedPowerLogger];
  v2 = [v4 captureSnapshot];
  v3 = [MEMORY[0x277D5FA90] context];
  [v2 logWithEventContext:v3];
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

+ (int)synthesisSourceFromSource:(int64_t)a3
{
  if (a3 > 8)
  {
    return 1;
  }

  else
  {
    return dword_272832734[a3];
  }
}

+ (int)outputRouteFromRouteInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 audioRouteName];
  if ([v4 isEqualToString:@"Speaker"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"CarAudioOutput"])
  {
    v5 = 7;
  }

  else
  {
    v6 = [v3 isBluetoothRoute];
    v7 = [v3 isAppleProduct];
    v8 = v7 ^ 1;
    if (((v6 ^ 1) & 1) != 0 || v8)
    {
      v9 = v6 | v8;
      if ((v6 | v7))
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

      if ((v6 ^ 1 | v7))
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

+ (int)schemaFootprintFromFootprint:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return a3 + 1;
  }
}

+ (int)schemaVoiceTypeFromType:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 1;
  }

  else
  {
    return dword_2728326C0[a3 - 1];
  }
}

+ (int)schemaVoiceGenderFromGender:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_272832728[a3 - 1];
  }
}

@end