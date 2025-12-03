@interface _LTTranslationContext(OspreyRequest)
- (FTMutableSpeechTranslationStreamingRequest)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest;
- (FTMutableSpeechTranslationStreamingRequest)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest;
- (FTMutableTextToSpeechRequest)_ospreyTTSRequestWithText:()OspreyRequest;
- (__CFString)redactIfNeeded:()OspreyRequest;
- (id)_ttsVoiceStringWithLocale:()OspreyRequest;
- (id)sequoiaClientHeaderValue;
@end

@implementation _LTTranslationContext(OspreyRequest)

- (id)_ttsVoiceStringWithLocale:()OspreyRequest
{
  v0 = _LTLocaleMappedForTTS();
  v1 = _LTPreferredVoiceTypeForLocale(v0);
  v2 = _LTVoiceTypeRemoteServiceString(v1);

  return v2;
}

- (FTMutableSpeechTranslationStreamingRequest)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest
{
  v5 = objc_alloc_init(FTMutableStartSpeechTranslationRequest);
  uniqueID = [self uniqueID];
  v7 = _LTPreferencesRequestIDOverride(uniqueID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setRequest_id:v7];

  sessionID = [self sessionID];
  v9 = _LTPreferencesSessionIDOverride(sessionID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setConversation_id:v9];

  clientIdentifier = [self clientIdentifier];
  [(FTMutableStartSpeechTranslationRequest *)v5 setApp_id:clientIdentifier];

  -[FTMutableStartSpeechTranslationRequest setRestricted_mode:](v5, "setRestricted_mode:", [self censorSpeech]);
  -[FTMutableStartSpeechTranslationRequest setOpt_in_status:](v5, "setOpt_in_status:", LTDOspreyDataSharingStatus([self dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setStreaming_mode:1];
  v11 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v11, "setEnable_disambiguation_alternatives:", [self supportsGenderDisambiguation]);
  -[FTMutableTranslationOptions setDisable_payload_logging:](v11, "setDisable_payload_logging:", LTDDisablePayloadLogging([self dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setOptions:v11];
  v12 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreySpeechTranslationRequestWithHybridEndpointer:v12];
  }

  array = [MEMORY[0x277CBEB18] array];
  v14 = objc_alloc_init(FTMutableTranslationLocalePair);
  localePair = [self localePair];
  sourceLocale = [localePair sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setSource_locale:_ltLocaleIdentifier];

  localePair2 = [self localePair];
  targetLocale = [localePair2 targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setTarget_locale:_ltLocaleIdentifier2];

  v71 = v14;
  [array addObject:v14];
  v73 = array;
  if ([self autodetectLanguage])
  {
    v21 = objc_alloc_init(FTMutableTranslationLocalePair);
    localePair3 = [self localePair];
    targetLocale2 = [localePair3 targetLocale];
    _ltLocaleIdentifier3 = [targetLocale2 _ltLocaleIdentifier];
    [(FTMutableTranslationLocalePair *)v21 setSource_locale:_ltLocaleIdentifier3];

    localePair4 = [self localePair];
    sourceLocale2 = [localePair4 sourceLocale];
    _ltLocaleIdentifier4 = [sourceLocale2 _ltLocaleIdentifier];
    [(FTMutableTranslationLocalePair *)v21 setTarget_locale:_ltLocaleIdentifier4];

    array = v73;
    [v73 addObject:v21];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_locale_pairs:array];
  v28 = objc_alloc_init(FTMutableStartSpeechRequest);
  uniqueID2 = [self uniqueID];
  v30 = _LTPreferencesRequestIDOverride(uniqueID2);
  [(FTMutableStartSpeechRequest *)v28 setSpeech_id:v30];

  [(FTMutableStartSpeechRequest *)v28 setTask_name:@"MtApp"];
  [(FTMutableStartSpeechRequest *)v28 setCodec:6];
  [(FTMutableStartSpeechRequest *)v28 setStream_results:1];
  [(FTMutableStartSpeechRequest *)v28 setStore_audio:1];
  autoEndpoint = [self autoEndpoint];
  [(FTMutableStartSpeechRequest *)v28 setEnd_point_mode:autoEndpoint];
  [(FTMutableStartSpeechRequest *)v28 setEnable_server_side_endpoint:autoEndpoint];
  [(FTMutableStartSpeechRequest *)v28 setClient_endpointer_model_version:@"1"];
  [(FTMutableStartSpeechRequest *)v28 setEnable_hybrid_endpoint:autoEndpoint & a3];
  [(FTMutableStartSpeechRequest *)v28 setKeyboard_identifier:&stru_284834138];
  [(FTMutableStartSpeechRequest *)v28 setInput_origin:&stru_284834138];
  [(FTMutableStartSpeechRequest *)v28 setInitial_recognition_candidate_id:0];
  [(FTMutableStartSpeechRequest *)v28 setDisable_auto_punctuation:1];
  [(FTMutableStartSpeechTranslationRequest *)v5 setStart_speech_request:v28];
  v32 = objc_alloc_init(FTMutableTranslationRequest);
  uniqueID3 = [self uniqueID];
  v34 = _LTPreferencesRequestIDOverride(uniqueID3);
  [(FTMutableTranslationRequest *)v32 setSpeech_id:v34];

  uniqueID4 = [self uniqueID];
  v36 = _LTPreferencesRequestIDOverride(uniqueID4);
  [(FTMutableTranslationRequest *)v32 setRequest_id:v36];

  [self taskHint];
  v37 = _LTTranslationModelTaskString();
  [(FTMutableTranslationRequest *)v32 setTask:v37];

  [(FTMutableTranslationRequest *)v32 setOptions:v11];
  v38 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreySpeechTranslationRequestWithHybridEndpointer:v38];
  }

  v72 = v11;
  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_request:v32];
  array2 = [MEMORY[0x277CBEB18] array];
  v40 = objc_alloc_init(FTMutableTextToSpeechRequest);
  uniqueID5 = [self uniqueID];
  v42 = _LTPreferencesRequestIDOverride(uniqueID5);
  [(FTMutableTextToSpeechRequest *)v40 setSpeech_id:v42];

  uniqueID6 = [self uniqueID];
  v44 = _LTPreferencesRequestIDOverride(uniqueID6);
  [(FTMutableTextToSpeechRequest *)v40 setSession_id:v44];

  localePair5 = [self localePair];
  targetLocale3 = [localePair5 targetLocale];
  _ltLocaleIdentifier5 = [targetLocale3 _ltLocaleIdentifier];
  [(FTMutableTextToSpeechRequest *)v40 setLanguage:_ltLocaleIdentifier5];

  localePair6 = [self localePair];
  targetLocale4 = [localePair6 targetLocale];
  v50 = [self _ttsVoiceStringWithLocale:targetLocale4];
  [(FTMutableTextToSpeechRequest *)v40 setGender:v50];

  [(FTMutableTextToSpeechRequest *)v40 setAudio_type:1];
  v51 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  clientIdentifier2 = [self clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v51 setApp_id:clientIdentifier2];

  [(FTMutableTextToSpeechRequestMeta *)v51 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v40 setMeta_info:v51];
  [array2 addObject:v40];
  if ([self autodetectLanguage])
  {
    v53 = objc_alloc_init(FTMutableTextToSpeechRequest);
    uniqueID7 = [self uniqueID];
    v55 = _LTPreferencesRequestIDOverride(uniqueID7);
    [(FTMutableTextToSpeechRequest *)v53 setSpeech_id:v55];

    uniqueID8 = [self uniqueID];
    v57 = _LTPreferencesRequestIDOverride(uniqueID8);
    [(FTMutableTextToSpeechRequest *)v53 setSession_id:v57];

    localePair7 = [self localePair];
    sourceLocale3 = [localePair7 sourceLocale];
    [sourceLocale3 _ltLocaleIdentifier];
    v70 = v5;
    v60 = v32;
    v62 = v61 = array2;
    [(FTMutableTextToSpeechRequest *)v53 setLanguage:v62];

    localePair8 = [self localePair];
    sourceLocale4 = [localePair8 sourceLocale];
    v65 = [self _ttsVoiceStringWithLocale:sourceLocale4];
    [(FTMutableTextToSpeechRequest *)v53 setGender:v65];

    array2 = v61;
    v32 = v60;
    v5 = v70;

    [(FTMutableTextToSpeechRequest *)v53 setAudio_type:1];
    v66 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
    clientIdentifier3 = [self clientIdentifier];
    [(FTMutableTextToSpeechRequestMeta *)v66 setApp_id:clientIdentifier3];

    [(FTMutableTextToSpeechRequestMeta *)v66 setChannel_type:2];
    [(FTMutableTextToSpeechRequest *)v53 setMeta_info:v66];
    [array2 addObject:v53];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setText_to_speech_requests:array2];
  v68 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v68 setContent_type:1];
  [(FTMutableSpeechTranslationStreamingRequest *)v68 setContentAsFTStartSpeechTranslationRequest:v5];

  return v68;
}

- (FTMutableSpeechTranslationStreamingRequest)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest
{
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(FTMutableStartSpeechTranslationRequest);
  uniqueID = [self uniqueID];
  v7 = _LTPreferencesRequestIDOverride(uniqueID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setRequest_id:v7];

  sessionID = [self sessionID];
  v9 = _LTPreferencesSessionIDOverride(sessionID);
  [(FTMutableStartSpeechTranslationRequest *)v5 setConversation_id:v9];

  clientIdentifier = [self clientIdentifier];
  [(FTMutableStartSpeechTranslationRequest *)v5 setApp_id:clientIdentifier];

  -[FTMutableStartSpeechTranslationRequest setRestricted_mode:](v5, "setRestricted_mode:", [self censorSpeech]);
  -[FTMutableStartSpeechTranslationRequest setOpt_in_status:](v5, "setOpt_in_status:", LTDOspreyDataSharingStatus([self dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setStreaming_mode:0];
  v11 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v11, "setEnable_disambiguation_alternatives:", [self supportsGenderDisambiguation]);
  -[FTMutableTranslationOptions setDisable_payload_logging:](v11, "setDisable_payload_logging:", LTDDisablePayloadLogging([self dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setOptions:v11];
  v12 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreyTextToSpeechTranslationRequestWithText:v12];
  }

  array = [MEMORY[0x277CBEB18] array];
  v14 = objc_alloc_init(FTMutableTranslationLocalePair);
  localePair = [self localePair];
  sourceLocale = [localePair sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setSource_locale:_ltLocaleIdentifier];

  localePair2 = [self localePair];
  targetLocale = [localePair2 targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setTarget_locale:_ltLocaleIdentifier2];

  [array addObject:v14];
  v47 = array;
  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_locale_pairs:array];
  v21 = objc_alloc_init(FTMutableTranslationRequest);
  uniqueID2 = [self uniqueID];
  v23 = _LTPreferencesRequestIDOverride(uniqueID2);
  [(FTMutableTranslationRequest *)v21 setSpeech_id:v23];

  uniqueID3 = [self uniqueID];
  v25 = _LTPreferencesRequestIDOverride(uniqueID3);
  [(FTMutableTranslationRequest *)v21 setRequest_id:v25];

  [self taskHint];
  v26 = _LTTranslationModelTaskString();
  [(FTMutableTranslationRequest *)v21 setTask:v26];

  v48[0] = v4;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  [(FTMutableTranslationRequest *)v21 setTranslation_phrase:v27];

  -[FTMutableTranslationRequest setIs_partial:](v21, "setIs_partial:", [self isFinal] ^ 1);
  [(FTMutableTranslationRequest *)v21 setOptions:v11];
  v28 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreyTextToSpeechTranslationRequestWithText:v28];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_request:v21, v4];
  array2 = [MEMORY[0x277CBEB18] array];
  v30 = objc_alloc_init(FTMutableTextToSpeechRequest);
  uniqueID4 = [self uniqueID];
  v32 = _LTPreferencesRequestIDOverride(uniqueID4);
  [(FTMutableTextToSpeechRequest *)v30 setSpeech_id:v32];

  uniqueID5 = [self uniqueID];
  v34 = _LTPreferencesRequestIDOverride(uniqueID5);
  [(FTMutableTextToSpeechRequest *)v30 setSession_id:v34];

  localePair3 = [self localePair];
  targetLocale2 = [localePair3 targetLocale];
  _ltLocaleIdentifier3 = [targetLocale2 _ltLocaleIdentifier];
  [(FTMutableTextToSpeechRequest *)v30 setLanguage:_ltLocaleIdentifier3];

  localePair4 = [self localePair];
  targetLocale3 = [localePair4 targetLocale];
  v40 = [self _ttsVoiceStringWithLocale:targetLocale3];
  [(FTMutableTextToSpeechRequest *)v30 setGender:v40];

  [(FTMutableTextToSpeechRequest *)v30 setAudio_type:1];
  v41 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  clientIdentifier2 = [self clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v41 setApp_id:clientIdentifier2];

  [(FTMutableTextToSpeechRequestMeta *)v41 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v30 setMeta_info:v41];
  [array2 addObject:v30];
  [(FTMutableStartSpeechTranslationRequest *)v5 setText_to_speech_requests:array2];
  v43 = objc_alloc_init(FTMutableSpeechTranslationStreamingRequest);
  [(FTMutableSpeechTranslationStreamingRequest *)v43 setContent_type:1];
  [(FTMutableSpeechTranslationStreamingRequest *)v43 setContentAsFTStartSpeechTranslationRequest:v5];

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

- (FTMutableTextToSpeechRequest)_ospreyTTSRequestWithText:()OspreyRequest
{
  v4 = a3;
  v5 = objc_alloc_init(FTMutableTextToSpeechRequest);
  [(FTMutableTextToSpeechRequest *)v5 setText:v4];

  localePair = [self localePair];
  targetLocale = [localePair targetLocale];
  v8 = [self _ttsVoiceStringWithLocale:targetLocale];
  [(FTMutableTextToSpeechRequest *)v5 setGender:v8];

  localePair2 = [self localePair];
  targetLocale2 = [localePair2 targetLocale];
  _ltLocaleIdentifier = [targetLocale2 _ltLocaleIdentifier];
  v12 = _LTLocaleIdentifierMappedForTTS();
  [(FTMutableTextToSpeechRequest *)v5 setLanguage:v12];

  [(FTMutableTextToSpeechRequest *)v5 setAudio_type:1];
  uniqueID = [self uniqueID];
  v14 = _LTPreferencesRequestIDOverride(uniqueID);
  [(FTMutableTextToSpeechRequest *)v5 setSpeech_id:v14];

  sessionID = [self sessionID];
  v16 = _LTPreferencesSessionIDOverride(sessionID);
  [(FTMutableTextToSpeechRequest *)v5 setSession_id:v16];

  [(FTMutableTextToSpeechRequest *)v5 setEnable_word_timing_info:1];
  v17 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  clientIdentifier = [self clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v17 setApp_id:clientIdentifier];

  [(FTMutableTextToSpeechRequestMeta *)v17 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v5 setMeta_info:v17];

  return v5;
}

- (__CFString)redactIfNeeded:()OspreyRequest
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (([v3 hasPrefix:@"com.apple."] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"translate"))
    {
      v5 = v4;
    }

    else
    {
      v5 = @"<redacted>";
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sequoiaClientHeaderValue
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = arc4random_uniform(0xAu);
  appIdentifier = [self appIdentifier];
  clientIdentifier = [self clientIdentifier];
  if (appIdentifier && v3)
  {
    v6 = [self redactIfNeeded:appIdentifier];

    appIdentifier = v6;
  }

  if (clientIdentifier && v3)
  {
    v7 = [self redactIfNeeded:clientIdentifier];

    clientIdentifier = v7;
  }

  if (appIdentifier)
  {
    v8 = appIdentifier;
  }

  else
  {
    v8 = clientIdentifier;
  }

  if (appIdentifier)
  {
    v9 = clientIdentifier;
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  v11 = v9;
  if (v10)
  {
    [v2 appendString:v10];
  }

  if (v11)
  {
    [v2 appendFormat:@" (%@)", v11];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    [v2 appendFormat:@"; %@", localeIdentifier];
  }

  if ([self sourceOrigin] == 1)
  {
    [v2 appendString:@" | OCR"];
  }

  if ([self sourceOrigin] == 2)
  {
    [v2 appendString:@" | action-button"];
  }

  if ([self sourceOrigin] == 4)
  {
    [v2 appendString:@" | control-center"];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v14;
}

- (void)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating online speech translation request (with ASR input), setting option enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_ospreySpeechTranslationRequestWithHybridEndpointer:()OspreyRequest .cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating FTMutableTranslationRequest as part of online speech translation request (with ASR input), setting option enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating online speech translation request text-based input, setting option for enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_ospreyTextToSpeechTranslationRequestWithText:()OspreyRequest .cold.2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_15(&dword_232E53000, v3, v4, "Disambiguation: Creating online FTMutableTranslationRequest as part of text-based speech translation request, setting  option enable_disambiguation_alternatives: %{BOOL}i", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

@end