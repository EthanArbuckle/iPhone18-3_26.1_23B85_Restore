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
  v6 = [a1 uniqueID];
  v7 = _LTPreferencesRequestIDOverride(v6);
  [(FTMutableStartSpeechTranslationRequest *)v5 setRequest_id:v7];

  v8 = [a1 sessionID];
  v9 = _LTPreferencesSessionIDOverride(v8);
  [(FTMutableStartSpeechTranslationRequest *)v5 setConversation_id:v9];

  v10 = [a1 clientIdentifier];
  [(FTMutableStartSpeechTranslationRequest *)v5 setApp_id:v10];

  -[FTMutableStartSpeechTranslationRequest setRestricted_mode:](v5, "setRestricted_mode:", [a1 censorSpeech]);
  -[FTMutableStartSpeechTranslationRequest setOpt_in_status:](v5, "setOpt_in_status:", LTDOspreyDataSharingStatus([a1 dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setStreaming_mode:1];
  v11 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v11, "setEnable_disambiguation_alternatives:", [a1 supportsGenderDisambiguation]);
  -[FTMutableTranslationOptions setDisable_payload_logging:](v11, "setDisable_payload_logging:", LTDDisablePayloadLogging([a1 dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setOptions:v11];
  v12 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreySpeechTranslationRequestWithHybridEndpointer:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = objc_alloc_init(FTMutableTranslationLocalePair);
  v15 = [a1 localePair];
  v16 = [v15 sourceLocale];
  v17 = [v16 _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setSource_locale:v17];

  v18 = [a1 localePair];
  v19 = [v18 targetLocale];
  v20 = [v19 _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setTarget_locale:v20];

  v71 = v14;
  [v13 addObject:v14];
  v73 = v13;
  if ([a1 autodetectLanguage])
  {
    v21 = objc_alloc_init(FTMutableTranslationLocalePair);
    v22 = [a1 localePair];
    v23 = [v22 targetLocale];
    v24 = [v23 _ltLocaleIdentifier];
    [(FTMutableTranslationLocalePair *)v21 setSource_locale:v24];

    v25 = [a1 localePair];
    v26 = [v25 sourceLocale];
    v27 = [v26 _ltLocaleIdentifier];
    [(FTMutableTranslationLocalePair *)v21 setTarget_locale:v27];

    v13 = v73;
    [v73 addObject:v21];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_locale_pairs:v13];
  v28 = objc_alloc_init(FTMutableStartSpeechRequest);
  v29 = [a1 uniqueID];
  v30 = _LTPreferencesRequestIDOverride(v29);
  [(FTMutableStartSpeechRequest *)v28 setSpeech_id:v30];

  [(FTMutableStartSpeechRequest *)v28 setTask_name:@"MtApp"];
  [(FTMutableStartSpeechRequest *)v28 setCodec:6];
  [(FTMutableStartSpeechRequest *)v28 setStream_results:1];
  [(FTMutableStartSpeechRequest *)v28 setStore_audio:1];
  v31 = [a1 autoEndpoint];
  [(FTMutableStartSpeechRequest *)v28 setEnd_point_mode:v31];
  [(FTMutableStartSpeechRequest *)v28 setEnable_server_side_endpoint:v31];
  [(FTMutableStartSpeechRequest *)v28 setClient_endpointer_model_version:@"1"];
  [(FTMutableStartSpeechRequest *)v28 setEnable_hybrid_endpoint:v31 & a3];
  [(FTMutableStartSpeechRequest *)v28 setKeyboard_identifier:&stru_284834138];
  [(FTMutableStartSpeechRequest *)v28 setInput_origin:&stru_284834138];
  [(FTMutableStartSpeechRequest *)v28 setInitial_recognition_candidate_id:0];
  [(FTMutableStartSpeechRequest *)v28 setDisable_auto_punctuation:1];
  [(FTMutableStartSpeechTranslationRequest *)v5 setStart_speech_request:v28];
  v32 = objc_alloc_init(FTMutableTranslationRequest);
  v33 = [a1 uniqueID];
  v34 = _LTPreferencesRequestIDOverride(v33);
  [(FTMutableTranslationRequest *)v32 setSpeech_id:v34];

  v35 = [a1 uniqueID];
  v36 = _LTPreferencesRequestIDOverride(v35);
  [(FTMutableTranslationRequest *)v32 setRequest_id:v36];

  [a1 taskHint];
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
  v39 = [MEMORY[0x277CBEB18] array];
  v40 = objc_alloc_init(FTMutableTextToSpeechRequest);
  v41 = [a1 uniqueID];
  v42 = _LTPreferencesRequestIDOverride(v41);
  [(FTMutableTextToSpeechRequest *)v40 setSpeech_id:v42];

  v43 = [a1 uniqueID];
  v44 = _LTPreferencesRequestIDOverride(v43);
  [(FTMutableTextToSpeechRequest *)v40 setSession_id:v44];

  v45 = [a1 localePair];
  v46 = [v45 targetLocale];
  v47 = [v46 _ltLocaleIdentifier];
  [(FTMutableTextToSpeechRequest *)v40 setLanguage:v47];

  v48 = [a1 localePair];
  v49 = [v48 targetLocale];
  v50 = [a1 _ttsVoiceStringWithLocale:v49];
  [(FTMutableTextToSpeechRequest *)v40 setGender:v50];

  [(FTMutableTextToSpeechRequest *)v40 setAudio_type:1];
  v51 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  v52 = [a1 clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v51 setApp_id:v52];

  [(FTMutableTextToSpeechRequestMeta *)v51 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v40 setMeta_info:v51];
  [v39 addObject:v40];
  if ([a1 autodetectLanguage])
  {
    v53 = objc_alloc_init(FTMutableTextToSpeechRequest);
    v54 = [a1 uniqueID];
    v55 = _LTPreferencesRequestIDOverride(v54);
    [(FTMutableTextToSpeechRequest *)v53 setSpeech_id:v55];

    v56 = [a1 uniqueID];
    v57 = _LTPreferencesRequestIDOverride(v56);
    [(FTMutableTextToSpeechRequest *)v53 setSession_id:v57];

    v58 = [a1 localePair];
    v59 = [v58 sourceLocale];
    [v59 _ltLocaleIdentifier];
    v70 = v5;
    v60 = v32;
    v62 = v61 = v39;
    [(FTMutableTextToSpeechRequest *)v53 setLanguage:v62];

    v63 = [a1 localePair];
    v64 = [v63 sourceLocale];
    v65 = [a1 _ttsVoiceStringWithLocale:v64];
    [(FTMutableTextToSpeechRequest *)v53 setGender:v65];

    v39 = v61;
    v32 = v60;
    v5 = v70;

    [(FTMutableTextToSpeechRequest *)v53 setAudio_type:1];
    v66 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
    v67 = [a1 clientIdentifier];
    [(FTMutableTextToSpeechRequestMeta *)v66 setApp_id:v67];

    [(FTMutableTextToSpeechRequestMeta *)v66 setChannel_type:2];
    [(FTMutableTextToSpeechRequest *)v53 setMeta_info:v66];
    [v39 addObject:v53];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setText_to_speech_requests:v39];
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
  v6 = [a1 uniqueID];
  v7 = _LTPreferencesRequestIDOverride(v6);
  [(FTMutableStartSpeechTranslationRequest *)v5 setRequest_id:v7];

  v8 = [a1 sessionID];
  v9 = _LTPreferencesSessionIDOverride(v8);
  [(FTMutableStartSpeechTranslationRequest *)v5 setConversation_id:v9];

  v10 = [a1 clientIdentifier];
  [(FTMutableStartSpeechTranslationRequest *)v5 setApp_id:v10];

  -[FTMutableStartSpeechTranslationRequest setRestricted_mode:](v5, "setRestricted_mode:", [a1 censorSpeech]);
  -[FTMutableStartSpeechTranslationRequest setOpt_in_status:](v5, "setOpt_in_status:", LTDOspreyDataSharingStatus([a1 dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setStreaming_mode:0];
  v11 = objc_alloc_init(FTMutableTranslationOptions);
  -[FTMutableTranslationOptions setEnable_disambiguation_alternatives:](v11, "setEnable_disambiguation_alternatives:", [a1 supportsGenderDisambiguation]);
  -[FTMutableTranslationOptions setDisable_payload_logging:](v11, "setDisable_payload_logging:", LTDDisablePayloadLogging([a1 dataSharingOptInStatus]));
  [(FTMutableStartSpeechTranslationRequest *)v5 setOptions:v11];
  v12 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreyTextToSpeechTranslationRequestWithText:v12];
  }

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = objc_alloc_init(FTMutableTranslationLocalePair);
  v15 = [a1 localePair];
  v16 = [v15 sourceLocale];
  v17 = [v16 _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setSource_locale:v17];

  v18 = [a1 localePair];
  v19 = [v18 targetLocale];
  v20 = [v19 _ltLocaleIdentifier];
  [(FTMutableTranslationLocalePair *)v14 setTarget_locale:v20];

  [v13 addObject:v14];
  v47 = v13;
  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_locale_pairs:v13];
  v21 = objc_alloc_init(FTMutableTranslationRequest);
  v22 = [a1 uniqueID];
  v23 = _LTPreferencesRequestIDOverride(v22);
  [(FTMutableTranslationRequest *)v21 setSpeech_id:v23];

  v24 = [a1 uniqueID];
  v25 = _LTPreferencesRequestIDOverride(v24);
  [(FTMutableTranslationRequest *)v21 setRequest_id:v25];

  [a1 taskHint];
  v26 = _LTTranslationModelTaskString();
  [(FTMutableTranslationRequest *)v21 setTask:v26];

  v48[0] = v4;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:1];
  [(FTMutableTranslationRequest *)v21 setTranslation_phrase:v27];

  -[FTMutableTranslationRequest setIs_partial:](v21, "setIs_partial:", [a1 isFinal] ^ 1);
  [(FTMutableTranslationRequest *)v21 setOptions:v11];
  v28 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    [_LTTranslationContext(OspreyRequest) _ospreyTextToSpeechTranslationRequestWithText:v28];
  }

  [(FTMutableStartSpeechTranslationRequest *)v5 setTranslation_request:v21, v4];
  v29 = [MEMORY[0x277CBEB18] array];
  v30 = objc_alloc_init(FTMutableTextToSpeechRequest);
  v31 = [a1 uniqueID];
  v32 = _LTPreferencesRequestIDOverride(v31);
  [(FTMutableTextToSpeechRequest *)v30 setSpeech_id:v32];

  v33 = [a1 uniqueID];
  v34 = _LTPreferencesRequestIDOverride(v33);
  [(FTMutableTextToSpeechRequest *)v30 setSession_id:v34];

  v35 = [a1 localePair];
  v36 = [v35 targetLocale];
  v37 = [v36 _ltLocaleIdentifier];
  [(FTMutableTextToSpeechRequest *)v30 setLanguage:v37];

  v38 = [a1 localePair];
  v39 = [v38 targetLocale];
  v40 = [a1 _ttsVoiceStringWithLocale:v39];
  [(FTMutableTextToSpeechRequest *)v30 setGender:v40];

  [(FTMutableTextToSpeechRequest *)v30 setAudio_type:1];
  v41 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  v42 = [a1 clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v41 setApp_id:v42];

  [(FTMutableTextToSpeechRequestMeta *)v41 setChannel_type:2];
  [(FTMutableTextToSpeechRequest *)v30 setMeta_info:v41];
  [v29 addObject:v30];
  [(FTMutableStartSpeechTranslationRequest *)v5 setText_to_speech_requests:v29];
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

  v6 = [a1 localePair];
  v7 = [v6 targetLocale];
  v8 = [a1 _ttsVoiceStringWithLocale:v7];
  [(FTMutableTextToSpeechRequest *)v5 setGender:v8];

  v9 = [a1 localePair];
  v10 = [v9 targetLocale];
  v11 = [v10 _ltLocaleIdentifier];
  v12 = _LTLocaleIdentifierMappedForTTS();
  [(FTMutableTextToSpeechRequest *)v5 setLanguage:v12];

  [(FTMutableTextToSpeechRequest *)v5 setAudio_type:1];
  v13 = [a1 uniqueID];
  v14 = _LTPreferencesRequestIDOverride(v13);
  [(FTMutableTextToSpeechRequest *)v5 setSpeech_id:v14];

  v15 = [a1 sessionID];
  v16 = _LTPreferencesSessionIDOverride(v15);
  [(FTMutableTextToSpeechRequest *)v5 setSession_id:v16];

  [(FTMutableTextToSpeechRequest *)v5 setEnable_word_timing_info:1];
  v17 = objc_alloc_init(FTMutableTextToSpeechRequestMeta);
  v18 = [a1 clientIdentifier];
  [(FTMutableTextToSpeechRequestMeta *)v17 setApp_id:v18];

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
  v4 = [a1 appIdentifier];
  v5 = [a1 clientIdentifier];
  if (v4 && v3)
  {
    v6 = [a1 redactIfNeeded:v4];

    v4 = v6;
  }

  if (v5 && v3)
  {
    v7 = [a1 redactIfNeeded:v5];

    v5 = v7;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (v4)
  {
    v9 = v5;
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

  v12 = [MEMORY[0x277CBEAF8] currentLocale];
  v13 = [v12 localeIdentifier];

  if (v13)
  {
    [v2 appendFormat:@"; %@", v13];
  }

  if ([a1 sourceOrigin] == 1)
  {
    [v2 appendString:@" | OCR"];
  }

  if ([a1 sourceOrigin] == 2)
  {
    [v2 appendString:@" | action-button"];
  }

  if ([a1 sourceOrigin] == 4)
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