@interface VSServerTTSClient
+ (BOOL)shouldUseServerTTSForRequest:(id)a3;
- (void)ospreyStartStreamingRequest:(id)a3 dataHandler:(id)a4 metaInfoHandler:(id)a5 completion:(id)a6;
- (void)ospreyStartSynthesisRequest:(id)a3 responseHandler:(id)a4 completion:(id)a5;
@end

@implementation VSServerTTSClient

+ (BOOL)shouldUseServerTTSForRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D79998] standardInstance];
  v5 = [v4 disableServerTTS];

  if (!v5)
  {
    v9 = [MEMORY[0x277D79998] standardInstance];
    v10 = [v9 forceServerTTS];

    if (v10)
    {
      v6 = VSGetLogDefault();
      v8 = 1;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      LOWORD(v30) = 0;
      v11 = "forceServerTTS is enabled by user default, force server TTS";
LABEL_12:
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, v11, &v30, 2u);
      goto LABEL_31;
    }

    if ([v3 forceServerTTS])
    {
      v6 = VSGetLogDefault();
      v8 = 1;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      LOWORD(v30) = 0;
      v11 = "forceServerTTS is enabled by speech request, force server TTS";
      goto LABEL_12;
    }

    v12 = +[VSSpeechCache defaultCacheStore];
    v13 = [v12 isPreinstalledCacheAvailableForRequest:v3];

    if (v13)
    {
      v6 = VSGetLogDefault();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }

      LOWORD(v30) = 0;
      v7 = "Preinstalled cache is found, disable server TTS";
      goto LABEL_4;
    }

    v14 = [MEMORY[0x277D79950] sharedManager];
    v15 = [v3 languageCode];
    v16 = [v3 voiceName];
    v6 = [v14 selectVoiceForLang:v15 name:v16 type:objc_msgSend(v3 gender:"voiceType") footprint:{objc_msgSend(v3, "gender"), objc_msgSend(v3, "footprint")}];

    v17 = [v6 voiceData];
    if ([v17 type] == 4)
    {
      v18 = [MEMORY[0x277D79958] isNeuralFallbackCondition];

      if ((v18 & 1) == 0)
      {
        v19 = VSGetLogDefault();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_INFO, "Neural voice is found on device without fallback condition, disable server TTS", &v30, 2u);
        }

        goto LABEL_29;
      }
    }

    else
    {
    }

    v20 = +[VSCachingService standardService];
    v21 = [v3 text];
    v22 = [v20 shortTermCacheForHash:v21];

    if (v22)
    {
      v19 = VSGetLogDefault();
      v8 = 1;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_INFO, "Short term cache is found for the text, use server TTS", &v30, 2u);
      }

      goto LABEL_30;
    }

    if (![v3 canUseServerTTS])
    {
      goto LABEL_5;
    }

    v23 = +[VSSiriServerConfiguration defaultConfig];
    v24 = [v23 allowedAppID];
    v25 = [v3 clientBundleIdentifier];
    v26 = [v24 containsObject:v25];

    if (v26)
    {
      v8 = 1;
      goto LABEL_31;
    }

    v19 = VSGetLogDefault();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v27 = [v3 clientBundleIdentifier];
      v30 = 138543362;
      v31 = v27;
      _os_log_impl(&dword_2727E4000, v19, OS_LOG_TYPE_INFO, "Server TTS is disabled since '%{public}@' is not in the list of allowed apps", &v30, 0xCu);
    }

LABEL_29:
    v8 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(v30) = 0;
    v7 = "disableServerTTS is enabled by user default, disable server TTS";
LABEL_4:
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, v7, &v30, 2u);
  }

LABEL_5:
  v8 = 0;
LABEL_31:

  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)ospreyStartStreamingRequest:(id)a3 dataHandler:(id)a4 metaInfoHandler:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [OPTTSMutableTextToSpeechRequest requestFromVSRequest:v9];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__3265;
  v32[4] = __Block_byref_object_dispose__3266;
  v33 = MEMORY[0x2743CD880](v10);
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__3265;
  v30[4] = __Block_byref_object_dispose__3266;
  v31 = MEMORY[0x2743CD880](v12);
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x4810000000;
  v27 = 0u;
  v28 = 0u;
  v26[3] = &unk_27283C3F7;
  v29 = 0;
  v14 = +[OspreyTTSService sharedInstance];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke;
  v23[3] = &unk_279E4BA58;
  v25 = v26;
  v15 = v11;
  v24 = v15;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_2;
  v18[3] = &unk_279E4BA80;
  v20 = v26;
  v21 = v32;
  v22 = v30;
  v16 = v13;
  v19 = v16;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_4;
  v17[3] = &unk_279E4BB40;
  v17[4] = v30;
  [v14 streamTTS:v16 beginHandler:v23 chunkHandler:v18 endHandler:&__block_literal_global_3269 completion:v17];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(v32, 8);
}

void __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 decoder_description];
  [v4 audioStreamBasicDescription];
  v5 = *(*(a1 + 40) + 8);
  v6 = v17;
  v7 = v16;
  *(v5 + 32) = v15;
  *(v5 + 48) = v7;
  *(v5 + 64) = v6;

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v3 meta_info];
    v10 = [v9 voice];
    v11 = [v10 vs_voice];
    v12 = [v3 meta_info];
    v13 = [v12 resource];
    v14 = [v13 vs_voiceResource];
    [v3 streaming_playback_buffer_size_in_seconds];
    (*(v8 + 16))(v8, v11, v14);
  }
}

void __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D79920];
  v5 = *(*(a1 + 40) + 8);
  v6 = [v3 audio];
  v7 = *(v5 + 48);
  v21[0] = *(v5 + 32);
  v21[1] = v7;
  v22 = *(v5 + 64);
  v8 = [v4 audioDataWithASBD:v21 rawData:v6];

  if (v8)
  {
    v9 = [v3 word_timing_info];
    v10 = [*(a1 + 32) text];
    v11 = [OPTTSWordTimingInfo vs_wordTimingInfos:v9 withText:v10];

    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v8, v11);
    }

    goto LABEL_6;
  }

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = 0;

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (v15)
  {
    v16 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Unable to process audio data.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v16 errorWithDomain:@"ServerTTSErrorDomain" code:600 userInfo:v17];
    (*(v15 + 16))(v15, v18);

    v19 = *(*(a1 + 56) + 8);
    v11 = *(v19 + 40);
    *(v19 + 40) = 0;
LABEL_6:
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __88__VSServerTTSClient_ospreyStartStreamingRequest_dataHandler_metaInfoHandler_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)ospreyStartSynthesisRequest:(id)a3 responseHandler:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [OPTTSMutableTextToSpeechRequest requestFromVSRequest:v7];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3265;
  v18[4] = __Block_byref_object_dispose__3266;
  v19 = MEMORY[0x2743CD880](v9);
  v11 = +[OspreyTTSService sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__VSServerTTSClient_ospreyStartSynthesisRequest_responseHandler_completion___block_invoke;
  v14[3] = &unk_279E4BA30;
  v17 = v18;
  v12 = v7;
  v15 = v12;
  v13 = v8;
  v16 = v13;
  [v11 roundTripTTS:v10 responseHandler:v14];

  _Block_object_dispose(v18, 8);
}

void __76__VSServerTTSClient_ospreyStartSynthesisRequest_responseHandler_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v11 = MEMORY[0x277D79920];
    v12 = [v5 decoder_description];
    v13 = v12;
    if (v12)
    {
      [v12 audioStreamBasicDescription];
    }

    else
    {
      v31 = 0;
      memset(buf, 0, sizeof(buf));
    }

    v14 = [v5 audio];
    v10 = [v11 audioDataWithASBD:buf rawData:v14];

    if (v10)
    {
      v15 = [v5 word_timing_info];
      v16 = [*(a1 + 32) utterance];
      v17 = [OPTTSWordTimingInfo vs_wordTimingInfos:v15 withText:v16];

      v18 = *(a1 + 40);
      if (v18)
      {
        (*(v18 + 16))(v18, v10, v17);
      }

      v19 = *(*(*(a1 + 48) + 8) + 40);
      if (v19)
      {
        (*(v19 + 16))(v19, 0);
        v20 = *(*(a1 + 48) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = 0;
      }
    }

    else
    {
      v22 = *(*(*(a1 + 48) + 8) + 40);
      if (!v22)
      {
        v10 = 0;
        goto LABEL_17;
      }

      v23 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"Unable to process audio data.";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v25 = [v23 errorWithDomain:@"ServerTTSErrorDomain" code:600 userInfo:v24];
      (*(v22 + 16))(v22, v25);

      v26 = *(*(a1 + 48) + 8);
      v17 = *(v26 + 40);
      *(v26 + 40) = 0;
    }

LABEL_17:
    goto LABEL_18;
  }

  v7 = VSGetLogDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[VSServerTTSClient ospreyStartSynthesisRequest:responseHandler:completion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "%s, %@", buf, 0x16u);
  }

  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
    goto LABEL_17;
  }

LABEL_18:

  v27 = *MEMORY[0x277D85DE8];
}

@end