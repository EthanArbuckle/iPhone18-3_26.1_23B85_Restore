@interface VSPrewarmService
+ (id)sharedService;
- (VSPrewarmService)init;
- (id)_cachedEngineForVoice:(id)a3 resources:(id)a4;
- (id)_engineForVoice:(id)a3 resources:(id)a4;
- (id)cachedEngineForVoice:(id)a3 resources:(id)a4;
- (id)loadEngineForVoice:(id)a3 resources:(id)a4;
- (void)_loadVoiceResources:(id)a3 forEngine:(id)a4;
- (void)handleVoiceSelectionPurge:(id)a3;
- (void)prewarmWithRequest:(id)a3;
- (void)setActiveSessionCount:(int64_t)a3;
- (void)unloadCachedEngineWithVoice:(id)a3;
- (void)unloadEngine;
@end

@implementation VSPrewarmService

- (void)unloadEngine
{
  v3 = [(VSPrewarmService *)self prewarmQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__VSPrewarmService_unloadEngine__block_invoke;
  block[3] = &unk_279E4BAC8;
  block[4] = self;
  dispatch_sync(v3, block);
}

uint64_t __32__VSPrewarmService_unloadEngine__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCachedEngine:0];
  v2 = *(a1 + 32);

  return [v2 setLoadedResources:0];
}

- (void)_loadVoiceResources:(id)a3 forEngine:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v27 = a4;
  dispatch_assert_queue_V2(self->_prewarmQueue);
  v7 = [v6 searchPathURL];
  v8 = [v7 path];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = v6;
  v9 = [v6 resourceList];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v30;
    *&v11 = 138412546;
    v26 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v8 stringByAppendingPathComponent:{v15, v26}];
        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [v17 fileExistsAtPath:v16];

        if (v18)
        {
          v19 = [v28 resourceMimeTypes];
          v20 = [v19 objectForKeyedSubscript:v15];

          if (([v20 isEqualToString:@"VoiceServices/config"]& 1) == 0 && ([v20 isEqualToString:@"gryphon_frontend"]& 1) == 0)
          {
            v21 = [v27 loadResourceAtPath:v16 mimeType:v20 error:0];
          }
        }

        else
        {
          v20 = VSGetLogDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v26;
            v34 = v15;
            v35 = 2112;
            v36 = v16;
            _os_log_error_impl(&dword_2727E4000, v20, OS_LOG_TYPE_ERROR, "Specified resource file '%@' does not exist at: '%@'", buf, 0x16u);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v12);
  }

  [v28 pitch];
  if (v22 == 0.0)
  {
    [v27 pitch];
  }

  [v27 setPitch:?];
  [v28 rate];
  if (v23 == 0.0)
  {
    [v27 rate];
  }

  [v27 setRate:?];
  [v28 volume];
  if (v24 == 0.0)
  {
    [v27 volume];
  }

  [v27 setVolume:?];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)unloadCachedEngineWithVoice:(id)a3
{
  v4 = a3;
  v5 = [(VSPrewarmService *)self prewarmQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__VSPrewarmService_unloadCachedEngineWithVoice___block_invoke;
  v7[3] = &unk_279E4BC28;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __48__VSPrewarmService_unloadCachedEngineWithVoice___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = [v2 voicePath];
    v4 = [*(a1 + 40) voicePath];
    v5 = [v3 isEqualToString:v4];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;

      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;
    }
  }
}

- (id)loadEngineForVoice:(id)a3 resources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3200;
  v21 = __Block_byref_object_dispose__3201;
  v22 = 0;
  v8 = [(VSPrewarmService *)self prewarmQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__VSPrewarmService_loadEngineForVoice_resources___block_invoke;
  v13[3] = &unk_279E4BA08;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __49__VSPrewarmService_loadEngineForVoice_resources___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    v4 = [v2 _cachedEngineForVoice:*(a1 + 40) resources:*(a1 + 48)];
    v5 = *(*(a1 + 32) + 16);

    if (v4 == v5)
    {
      return;
    }

    v2 = *(a1 + 32);
    v3 = v2[2];
  }

  v2[2] = 0;

  v6 = [*(a1 + 32) _engineForVoice:*(a1 + 40) resources:*(a1 + 48)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (![MEMORY[0x277D79930] lowInactiveMemory] || (v9 = *(*(*(a1 + 56) + 8) + 40)) == 0 || (v10 = *(a1 + 32), *(v10 + 8) <= 0))
  {
    if ([MEMORY[0x277D79930] lowInactiveMemory])
    {
      return;
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (!v9)
    {
      return;
    }

    v10 = *(a1 + 32);
  }

  objc_storeStrong((v10 + 16), v9);
  v11 = *(a1 + 48);
  v12 = (*(a1 + 32) + 24);

  objc_storeStrong(v12, v11);
}

- (id)_engineForVoice:(id)a3 resources:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_prewarmQueue);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [v7 resourceMimeTypes];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v41 = self;
    v11 = *v43;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v7 resourceMimeTypes];
        v15 = [v14 objectForKeyedSubscript:v13];

        if ([v15 isEqualToString:@"gryphon_frontend"])
        {
          v17 = [v7 searchPathURL];
          v18 = [v17 path];
          v16 = [v18 stringByAppendingPathComponent:v13];

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v16 = 0;
LABEL_11:
    self = v41;
  }

  else
  {
    v16 = 0;
  }

  v19 = objc_alloc(MEMORY[0x277D79990]);
  v20 = [v6 voicePath];
  v21 = [v19 initWithVoicePath:v20 resourcePath:v16];

  if (v21)
  {
    if (v7)
    {
      [(VSPrewarmService *)self _loadVoiceResources:v7 forEngine:v21];
    }

    v22 = MEMORY[0x277CBEBC0];
    v23 = [v6 voicePath];
    v24 = *MEMORY[0x277D79A20];
    v46[0] = v23;
    v46[1] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v26 = [v22 fileURLWithPathComponents:v25];

    v27 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [v26 path];
    v29 = [v27 fileExistsAtPath:v28];

    if (v29)
    {
      v30 = VSGetLogDefault();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2727E4000, v30, OS_LOG_TYPE_DEBUG, "Voice specific resources found.", buf, 2u);
      }

      v31 = objc_alloc_init(MEMORY[0x277D799D8]);
      v32 = MEMORY[0x277CBEBC0];
      v33 = [v6 voicePath];
      v34 = [v32 fileURLWithPath:v33];
      [v31 setSearchPathURL:v34];

      [(VSPrewarmService *)self _loadVoiceResources:v31 forEngine:v21];
    }

    v35 = v21;
  }

  else
  {
    v36 = VSGetLogDefault();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v40 = [v6 voicePath];
      *buf = 138412290;
      v48 = v40;
      _os_log_error_impl(&dword_2727E4000, v36, OS_LOG_TYPE_ERROR, "Can't create engine with path '%@'", buf, 0xCu);
    }

    v26 = [MEMORY[0x277D79950] sharedManager];
    v37 = [v26 purgeAsset:v6];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)cachedEngineForVoice:(id)a3 resources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3200;
  v21 = __Block_byref_object_dispose__3201;
  v22 = 0;
  v8 = [(VSPrewarmService *)self prewarmQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__VSPrewarmService_cachedEngineForVoice_resources___block_invoke;
  v13[3] = &unk_279E4BA08;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

uint64_t __51__VSPrewarmService_cachedEngineForVoice_resources___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedEngineForVoice:*(a1 + 40) resources:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_cachedEngineForVoice:(id)a3 resources:(id)a4
{
  v6 = a4;
  prewarmQueue = self->_prewarmQueue;
  v8 = a3;
  dispatch_assert_queue_V2(prewarmQueue);
  v9 = [(VSSpeechEngine *)self->_cachedEngine voicePath];
  v10 = [v8 voicePath];

  if ([v9 isEqualToString:v10])
  {
    v11 = [(VSVoiceResourceAsset *)self->_loadedResources key];
    v12 = [v6 key];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = self->_cachedEngine;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_6:

  return v14;
}

- (void)prewarmWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(VSPrewarmService *)self prewarmQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__VSPrewarmService_prewarmWithRequest___block_invoke;
  v7[3] = &unk_279E4BC28;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __39__VSPrewarmService_prewarmWithRequest___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = VSGetLogDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v27 = *(a1 + 32);
    v32 = 138412290;
    v33 = v27;
    _os_log_debug_impl(&dword_2727E4000, v2, OS_LOG_TYPE_DEBUG, "Prewarming: Invoked with request: '%@'", &v32, 0xCu);
  }

  kdebug_trace();
  mach_absolute_time();
  v3 = +[OspreyTTSService sharedInstance];
  [v3 initializeDeviceAuthenticationSessionWithCompletion:&__block_literal_global_28];

  v4 = [[VSSpeechSpeakTask alloc] initWithRequest:*(a1 + 32)];
  [(VSSpeechSpeakTask *)v4 fetchVoiceAsset];
  [(VSSpeechSpeakTask *)v4 fetchVoiceResource];
  v5 = [(VSSpeechSpeakTask *)v4 error];

  if (v5)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(VSSpeechSpeakTask *)v4 error];
      v32 = 138412290;
      v33 = v7;
      _os_log_error_impl(&dword_2727E4000, v6, OS_LOG_TYPE_ERROR, "Unable to prewarm, error: %@", &v32, 0xCu);
LABEL_19:
    }
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [(VSSpeechSpeakTask *)v4 voiceSelection];
    v10 = [(VSSpeechSpeakTask *)v4 voiceResource];
    v6 = [v8 _cachedEngineForVoice:v9 resources:v10];

    if (!v6)
    {
      v11 = *(a1 + 40);
      v12 = *(v11 + 16);
      *(v11 + 16) = 0;

      v13 = *(a1 + 40);
      v14 = [(VSSpeechSpeakTask *)v4 voiceSelection];
      v15 = [(VSSpeechSpeakTask *)v4 voiceResource];
      v6 = [v13 _engineForVoice:v14 resources:v15];

      if (!v6)
      {
        v7 = VSGetLogDefault();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v30 = [(VSSpeechSpeakTask *)v4 voiceSelection];
          v31 = [v30 voicePath];
          v32 = 138412290;
          v33 = v31;
          _os_log_error_impl(&dword_2727E4000, v7, OS_LOG_TYPE_ERROR, "Can't prewarm engine with path '%@'", &v32, 0xCu);
        }

        v6 = 0;
        goto LABEL_19;
      }

      objc_storeStrong((*(a1 + 40) + 16), v6);
      v16 = [(VSSpeechSpeakTask *)v4 voiceResource];
      v17 = *(a1 + 40);
      v18 = *(v17 + 24);
      *(v17 + 24) = v16;

      v19 = [*(a1 + 32) languageCode];
      v20 = [@"Prewarm textify emoji" vs_textifyEmojiWithLanguage:v19];
    }

    [v6 preheat];
    mach_absolute_time();
    v21 = VSGetLogDefault();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      VSAbsoluteTimeToSecond();
      v32 = 134217984;
      v33 = v22;
      _os_log_impl(&dword_2727E4000, v21, OS_LOG_TYPE_INFO, "Prewarm finished. Latency: %.3f", &v32, 0xCu);
    }

    v23 = VSGetLogDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(a1 + 32);
      v32 = 138412290;
      v33 = v29;
      _os_log_debug_impl(&dword_2727E4000, v23, OS_LOG_TYPE_DEBUG, "Prewarming: Completed with request: '%@'", &v32, 0xCu);
    }

    kdebug_trace();
    if ([MEMORY[0x277D79930] lowInactiveMemory])
    {
      v24 = *(a1 + 40);
      if (!*(v24 + 8))
      {
        v25 = *(v24 + 16);
        *(v24 + 16) = 0;

        v26 = *(a1 + 40);
        v7 = *(v26 + 24);
        *(v26 + 24) = 0;
        goto LABEL_19;
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __39__VSPrewarmService_prewarmWithRequest___block_invoke_25(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = VSGetLogDefault();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_error_impl(&dword_2727E4000, v4, OS_LOG_TYPE_ERROR, "Unable to initialize Device Authentication session: %@", &v6, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_2727E4000, v4, OS_LOG_TYPE_INFO, "Device Authentication session is initialized", &v6, 2u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)setActiveSessionCount:(int64_t)a3
{
  self->_activeSessionCount = a3 & ~(a3 >> 63);
  if (a3 <= 0)
  {
    [(VSPrewarmService *)self unloadEngine];
  }
}

- (void)handleVoiceSelectionPurge:(id)a3
{
  v8 = [a3 object];
  v4 = [v8 voicePath];
  v5 = [(VSPrewarmService *)self cachedEngine];
  v6 = [v5 voicePath];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    [(VSPrewarmService *)self unloadEngine];
  }
}

- (VSPrewarmService)init
{
  v8.receiver = self;
  v8.super_class = VSPrewarmService;
  v2 = [(VSPrewarmService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.voiced.prewarmQueue", v3);
    prewarmQueue = v2->_prewarmQueue;
    v2->_prewarmQueue = v4;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel_handleVoiceSelectionPurge_ name:@"com.apple.voiceservices.notification.voice-purge" object:0];
  }

  return v2;
}

+ (id)sharedService
{
  if (sharedService_onceToken_3234 != -1)
  {
    dispatch_once(&sharedService_onceToken_3234, &__block_literal_global_3235);
  }

  v3 = sharedService___prewarmService;

  return v3;
}

uint64_t __33__VSPrewarmService_sharedService__block_invoke()
{
  sharedService___prewarmService = objc_alloc_init(VSPrewarmService);

  return MEMORY[0x2821F96F8]();
}

@end