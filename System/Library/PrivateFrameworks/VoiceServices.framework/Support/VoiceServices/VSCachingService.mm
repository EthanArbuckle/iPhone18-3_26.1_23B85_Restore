@interface VSCachingService
+ (id)standardService;
- (VSCachingService)initWithCache:(id)a3 shortTermMemory:(id)a4;
- (id)_inMemoryCacheForHash:(id)a3;
- (id)_onDiskCacheForHash:(id)a3;
- (id)compressAudio:(id)a3;
- (id)compressStreamAudio:(id)a3;
- (id)inMemoryCacheForHash:(id)a3;
- (id)onDiskCacheForHash:(id)a3;
- (id)popShortTermCacheForHash:(id)a3;
- (id)shortTermCacheForHash:(id)a3;
- (void)_enqueueCacheWithHash:(id)a3 audioObject:(id)a4 timingInfo:(id)a5 voiceKey:(id)a6 voiceResourceKey:(id)a7 completion:(id)a8;
- (void)enqueueShortTermCacheWithHash:(id)a3 audio:(id)a4 timingInfo:(id)a5 voiceKey:(id)a6 voiceResourceKey:(id)a7 completion:(id)a8;
- (void)fetchCacheForTask:(id)a3;
@end

@implementation VSCachingService

- (id)popShortTermCacheForHash:(id)a3
{
  v4 = a3;
  v5 = [(VSCachingService *)self shortTermCacheForHash:v4];
  if (v5)
  {
    v6 = [(VSCachingService *)self shortTermCache];
    [v6 removeObjectForKey:v4];
  }

  return v5;
}

- (id)shortTermCacheForHash:(id)a3
{
  v4 = a3;
  v5 = [(VSCachingService *)self shortTermCache];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)enqueueShortTermCacheWithHash:(id)a3 audio:(id)a4 timingInfo:(id)a5 voiceKey:(id)a6 voiceResourceKey:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[VSSpeechCacheAudio alloc] initWithKey:v19 audio:v18 wordTimingInfo:v17 voiceKey:v16 voiceResourceKey:v15];

  v21 = [(VSCachingService *)self shortTermCache];
  [v21 setObject:v20 forKey:v19 timeToLive:10.0];

  v22 = [(VSCachingService *)self cachingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__VSCachingService_enqueueShortTermCacheWithHash_audio_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke;
  block[3] = &unk_279E4BBE0;
  v25 = v14;
  v23 = v14;
  dispatch_async(v22, block);
}

uint64_t __104__VSCachingService_enqueueShortTermCacheWithHash_audio_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)fetchCacheForTask:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 speechCache];

  if (!v5)
  {
    v6 = [(VSCachingService *)self cacheStore];
    v7 = [v4 request];
    v8 = [v7 text];
    v9 = [v4 request];
    v10 = [v9 languageCode];
    v11 = [v4 request];
    v12 = [v11 voiceName];
    v13 = [v6 preinstalledCacheForText:v8 language:v10 name:v12];
    [v4 setSpeechCache:v13];

    v14 = [v4 speechCache];

    if (v14)
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v4 speechCache];
        v17 = [v16 key];
        v60 = 138412290;
        v61 = v17;
        _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "Preinstalled cached synthesis %@ is found.", &v60, 0xCu);
      }

      v18 = [v4 instrumentMetrics];
      [v18 setIsCacheHitFromDisk:1];

      v19 = [v4 speechCache];
      v20 = [v19 voiceKey];
      v21 = [v4 instrumentMetrics];
      [v21 setVoiceAssetKey:v20];

      v22 = [v4 speechCache];
      v23 = [v22 voiceResourceKey];
      v24 = [v4 instrumentMetrics];
      [v24 setVoiceResourceAssetKey:v23];
    }

    v25 = [MEMORY[0x277D79998] standardInstance];
    v26 = [v25 disableCache];

    if ((v26 & 1) == 0)
    {
      v27 = [v4 taskHash];
      v28 = [v4 speechCache];

      if (!v28)
      {
        v29 = [(VSCachingService *)self _inMemoryCacheForHash:v27];
        [v4 setSpeechCache:v29];

        v30 = [v4 speechCache];

        if (v30)
        {
          v31 = VSGetLogDefault();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v4 speechCache];
            v33 = [v32 key];
            v60 = 138412290;
            v61 = v33;
            _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, "In-memory cached synthesis %@ is found.", &v60, 0xCu);
          }

          v34 = [v4 instrumentMetrics];
          [v34 setIsCacheHitFromMemory:1];
        }
      }

      v35 = [v4 speechCache];

      if (!v35)
      {
        v36 = [(VSCachingService *)self _onDiskCacheForHash:v27];
        [v4 setSpeechCache:v36];

        v37 = [v4 speechCache];

        if (v37)
        {
          v38 = VSGetLogDefault();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v4 speechCache];
            v40 = [v39 key];
            v60 = 138412290;
            v61 = v40;
            _os_log_impl(&dword_2727E4000, v38, OS_LOG_TYPE_DEFAULT, "On-disk cached synthesis %@ is found.", &v60, 0xCu);
          }

          v41 = [v4 instrumentMetrics];
          [v41 setIsCacheHitFromDisk:1];
        }
      }

      v42 = [v4 speechCache];

      if (!v42)
      {
        v43 = [v4 request];
        v44 = [v43 text];
        v45 = [(VSCachingService *)self popShortTermCacheForHash:v44];
        [v4 setSpeechCache:v45];

        v46 = [v4 speechCache];

        if (v46)
        {
          v47 = VSGetLogDefault();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v48 = [v4 request];
            v49 = [v48 logText];
            v60 = 138412290;
            v61 = v49;
            _os_log_impl(&dword_2727E4000, v47, OS_LOG_TYPE_DEFAULT, "Short-term cached synthesis is found for text '%@'", &v60, 0xCu);
          }
        }
      }

      v50 = [v4 speechCache];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v52 = [v4 speechCache];
        v53 = [v4 timingInfos];

        if (!v53)
        {
          v54 = [v52 timingInfos];
          [v4 setTimingInfos:v54];
        }

        v55 = [v52 audio];
        [v55 duration];
        v57 = v56;
        v58 = [v4 instrumentMetrics];
        [v58 setAudioDuration:v57];
      }
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (id)_onDiskCacheForHash:(id)a3
{
  v4 = a3;
  v5 = [(VSCachingService *)self cacheStore];
  v6 = [v5 cacheDataForKey:v4];

  return v6;
}

- (id)onDiskCacheForHash:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D79998] standardInstance];
  v6 = [v5 disableCache];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VSCachingService *)self _onDiskCacheForHash:v4];
  }

  return v7;
}

- (id)_inMemoryCacheForHash:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VSCachingService *)self threadLock];
  [v5 lock];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(VSCachingService *)self inMemoryCaches];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [v4 isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = [(VSCachingService *)self threadLock];
  [v13 unlock];

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)inMemoryCacheForHash:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D79998] standardInstance];
  v6 = [v5 disableCache];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VSCachingService *)self _inMemoryCacheForHash:v4];
  }

  return v7;
}

- (void)_enqueueCacheWithHash:(id)a3 audioObject:(id)a4 timingInfo:(id)a5 voiceKey:(id)a6 voiceResourceKey:(id)a7 completion:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v14 && v15 && v16)
  {
    v20 = [MEMORY[0x277D79998] standardInstance];
    v21 = [v20 disableCache];

    if (v21)
    {
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2727E4000, v22, OS_LOG_TYPE_INFO, "Caching is disabled. Skipping caching.", buf, 2u);
      }

      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = VSGetLogDefault();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v25 = "Unrecognized audio object, skip caching";
          v27 = v22;
          v28 = 2;
          goto LABEL_18;
        }

        goto LABEL_30;
      }
    }

    [v15 duration];
    v24 = v23;
    if (v23 < 0.5)
    {
      v22 = VSGetLogDefault();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v49 = v24;
        v25 = "Audio duration is too short: %.2f second, skip caching";
LABEL_15:
        v27 = v22;
        v28 = 12;
LABEL_18:
        _os_log_error_impl(&dword_2727E4000, v27, OS_LOG_TYPE_ERROR, v25, buf, v28);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

    v26 = VSGetLogDefault();
    v22 = v26;
    if (v24 > 60.0)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v49 = v24;
        v25 = "Audio duration is too long: %.2f second, skip caching";
        goto LABEL_15;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v22, OS_LOG_TYPE_INFO, "Compressing audio for caching.", buf, 2u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(VSCachingService *)self compressStreamAudio:v15];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_27;
      }

      v29 = [(VSCachingService *)self compressAudio:v15];
    }

    v30 = v29;
LABEL_27:
    v31 = VSGetLogDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Audio compressed for caching.", buf, 2u);
    }

    v32 = [[VSSpeechCacheAudio alloc] initWithKey:v14 audio:v30 wordTimingInfo:v16 voiceKey:v17 voiceResourceKey:v18];
    v33 = [(VSCachingService *)self threadLock];
    [v33 lock];

    v34 = [(VSCachingService *)self inMemoryCaches];
    [v34 addObject:v32];

    v35 = [(VSCachingService *)self threadLock];
    [v35 unlock];

    v36 = [(VSCachingService *)self cachingQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__VSCachingService__enqueueCacheWithHash_audioObject_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke;
    v39[3] = &unk_279E4BBB8;
    v40 = v14;
    v41 = v30;
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v45 = self;
    v46 = v32;
    v47 = v19;
    v37 = v32;
    v22 = v30;
    dispatch_async(v36, v39);

    goto LABEL_30;
  }

LABEL_31:

  v38 = *MEMORY[0x277D85DE8];
}

void __102__VSCachingService__enqueueCacheWithHash_audioObject_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [[VSSpeechCacheAudio alloc] initWithKey:*(a1 + 32) audio:*(a1 + 40) wordTimingInfo:*(a1 + 48) voiceKey:*(a1 + 56) voiceResourceKey:*(a1 + 64)];
  v3 = [*(a1 + 72) cacheStore];
  v4 = [v3 addCache:v2];

  if (v4)
  {
    v5 = VSGetLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_2727E4000, v5, OS_LOG_TYPE_ERROR, "Can't add audio cache, error: %@", &v11, 0xCu);
    }
  }

  v6 = [*(a1 + 72) threadLock];
  [v6 lock];

  v7 = [*(a1 + 72) inMemoryCaches];
  [v7 removeObject:*(a1 + 80)];

  v8 = [*(a1 + 72) threadLock];
  [v8 unlock];

  v9 = *(a1 + 88);
  if (v9)
  {
    (*(v9 + 16))(v9, v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)compressStreamAudio:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D79968]);
  if (v3)
  {
    [v3 asbd];
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v5 = [v4 initWithSourceASBD:&v28];
  v6 = [MEMORY[0x277CBEB28] data];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v7 = [MEMORY[0x277CBEB28] data];
  *&v28 = 0;
  *(&v28 + 1) = &v28;
  *&v29 = 0x3032000000;
  *(&v29 + 1) = __Block_byref_object_copy__3455;
  v30 = __Block_byref_object_dispose__3456;
  v31 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __40__VSCachingService_compressStreamAudio___block_invoke;
  v27[3] = &unk_279E4BB40;
  v27[4] = &v28;
  [v5 setErrorHandler:v27];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __40__VSCachingService_compressStreamAudio___block_invoke_2;
  v23[3] = &unk_279E4BB68;
  v8 = v6;
  v24 = v8;
  v26 = &v32;
  v9 = v7;
  v25 = v9;
  [v5 setOpusDataHandler:v23];
  [v5 beginEncoding];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __40__VSCachingService_compressStreamAudio___block_invoke_3;
  v20 = &unk_279E4BB90;
  v10 = v5;
  v21 = v10;
  v22 = &v28;
  [v3 enumerateAudioWithBlock:&v17];
  [v10 endEncoding];
  if (*(*(&v28 + 1) + 40))
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(&v28 + 1) + 40);
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error converting stream audio during caching. %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D79920]);
    v13 = *(MEMORY[0x277D799F0] + 16);
    *buf = *MEMORY[0x277D799F0];
    v37 = v13;
    v38 = *(MEMORY[0x277D799F0] + 32);
    [v12 setAsbd:buf];
    [v12 setAudioData:v8];
    [v12 setPacketDescriptions:v9];
    [v12 setPacketCount:v33[3]];
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __40__VSCachingService_compressStreamAudio___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  [v7 appendData:a2];
  *(*(*(a1 + 48) + 8) + 24) += a3;
  [*(a1 + 40) appendData:v8];
}

uint64_t __40__VSCachingService_compressStreamAudio___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) encodeChunk:a2];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a5 = 1;
  }

  return result;
}

- (id)compressAudio:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277D79968]);
  if (v3)
  {
    [v3 asbd];
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  v5 = [v4 initWithSourceASBD:&v25];
  v6 = [MEMORY[0x277CBEB28] data];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v7 = [MEMORY[0x277CBEB28] data];
  *&v25 = 0;
  *(&v25 + 1) = &v25;
  *&v26 = 0x3032000000;
  *(&v26 + 1) = __Block_byref_object_copy__3455;
  v27 = __Block_byref_object_dispose__3456;
  v28 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __34__VSCachingService_compressAudio___block_invoke;
  v24[3] = &unk_279E4BB40;
  v24[4] = &v25;
  [v5 setErrorHandler:v24];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __34__VSCachingService_compressAudio___block_invoke_2;
  v20 = &unk_279E4BB68;
  v8 = v6;
  v21 = v8;
  v23 = &v29;
  v9 = v7;
  v22 = v9;
  [v5 setOpusDataHandler:&v17];
  [v5 beginEncoding];
  v10 = [v3 audioData];
  [v5 encodeChunk:v10];

  [v5 endEncoding];
  if (*(*(&v25 + 1) + 40))
  {
    v11 = VSGetLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(&v25 + 1) + 40);
      *buf = 138412290;
      *&buf[4] = v16;
      _os_log_error_impl(&dword_2727E4000, v11, OS_LOG_TYPE_ERROR, "Error converting audio during caching. %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277D79920]);
    v13 = *(MEMORY[0x277D799F0] + 16);
    *buf = *MEMORY[0x277D799F0];
    v34 = v13;
    v35 = *(MEMORY[0x277D799F0] + 32);
    [v12 setAsbd:buf];
    [v12 setAudioData:v8];
    [v12 setPacketDescriptions:v9];
    [v12 setPacketCount:v30[3]];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __34__VSCachingService_compressAudio___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  [v7 appendData:a2];
  *(*(*(a1 + 48) + 8) + 24) += a3;
  [*(a1 + 40) appendData:v8];
}

- (VSCachingService)initWithCache:(id)a3 shortTermMemory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = VSCachingService;
  v9 = [(VSCachingService *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheStore, a3);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    threadLock = v10->_threadLock;
    v10->_threadLock = v11;

    v13 = [MEMORY[0x277CBEB18] array];
    inMemoryCaches = v10->_inMemoryCaches;
    v10->_inMemoryCaches = v13;

    objc_storeStrong(&v10->_shortTermCache, a4);
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v16 = dispatch_queue_create("com.apple.voiced.cachingQueue", v15);
    cachingQueue = v10->_cachingQueue;
    v10->_cachingQueue = v16;
  }

  return v10;
}

+ (id)standardService
{
  if (standardService_onceToken != -1)
  {
    dispatch_once(&standardService_onceToken, &__block_literal_global_3469);
  }

  v3 = standardService___standardService;

  return v3;
}

void __35__VSCachingService_standardService__block_invoke()
{
  v0 = [VSCachingService alloc];
  v4 = +[VSSpeechCache defaultCacheStore];
  v1 = +[VSShortTermCache sharedInstance];
  v2 = [(VSCachingService *)v0 initWithCache:v4 shortTermMemory:v1];
  v3 = standardService___standardService;
  standardService___standardService = v2;
}

@end