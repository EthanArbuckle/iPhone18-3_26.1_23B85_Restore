@interface VSCachingService
+ (id)standardService;
- (VSCachingService)initWithCache:(id)cache shortTermMemory:(id)memory;
- (id)_inMemoryCacheForHash:(id)hash;
- (id)_onDiskCacheForHash:(id)hash;
- (id)compressAudio:(id)audio;
- (id)compressStreamAudio:(id)audio;
- (id)inMemoryCacheForHash:(id)hash;
- (id)onDiskCacheForHash:(id)hash;
- (id)popShortTermCacheForHash:(id)hash;
- (id)shortTermCacheForHash:(id)hash;
- (void)_enqueueCacheWithHash:(id)hash audioObject:(id)object timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion;
- (void)enqueueShortTermCacheWithHash:(id)hash audio:(id)audio timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion;
- (void)fetchCacheForTask:(id)task;
@end

@implementation VSCachingService

- (id)popShortTermCacheForHash:(id)hash
{
  hashCopy = hash;
  v5 = [(VSCachingService *)self shortTermCacheForHash:hashCopy];
  if (v5)
  {
    shortTermCache = [(VSCachingService *)self shortTermCache];
    [shortTermCache removeObjectForKey:hashCopy];
  }

  return v5;
}

- (id)shortTermCacheForHash:(id)hash
{
  hashCopy = hash;
  shortTermCache = [(VSCachingService *)self shortTermCache];
  v6 = [shortTermCache objectForKey:hashCopy];

  return v6;
}

- (void)enqueueShortTermCacheWithHash:(id)hash audio:(id)audio timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion
{
  completionCopy = completion;
  resourceKeyCopy = resourceKey;
  keyCopy = key;
  infoCopy = info;
  audioCopy = audio;
  hashCopy = hash;
  v20 = [[VSSpeechCacheAudio alloc] initWithKey:hashCopy audio:audioCopy wordTimingInfo:infoCopy voiceKey:keyCopy voiceResourceKey:resourceKeyCopy];

  shortTermCache = [(VSCachingService *)self shortTermCache];
  [shortTermCache setObject:v20 forKey:hashCopy timeToLive:10.0];

  cachingQueue = [(VSCachingService *)self cachingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__VSCachingService_enqueueShortTermCacheWithHash_audio_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke;
  block[3] = &unk_279E4BBE0;
  v25 = completionCopy;
  v23 = completionCopy;
  dispatch_async(cachingQueue, block);
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

- (void)fetchCacheForTask:(id)task
{
  v62 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  speechCache = [taskCopy speechCache];

  if (!speechCache)
  {
    cacheStore = [(VSCachingService *)self cacheStore];
    request = [taskCopy request];
    text = [request text];
    request2 = [taskCopy request];
    languageCode = [request2 languageCode];
    request3 = [taskCopy request];
    voiceName = [request3 voiceName];
    v13 = [cacheStore preinstalledCacheForText:text language:languageCode name:voiceName];
    [taskCopy setSpeechCache:v13];

    speechCache2 = [taskCopy speechCache];

    if (speechCache2)
    {
      v15 = VSGetLogDefault();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        speechCache3 = [taskCopy speechCache];
        v17 = [speechCache3 key];
        v60 = 138412290;
        v61 = v17;
        _os_log_impl(&dword_2727E4000, v15, OS_LOG_TYPE_DEFAULT, "Preinstalled cached synthesis %@ is found.", &v60, 0xCu);
      }

      instrumentMetrics = [taskCopy instrumentMetrics];
      [instrumentMetrics setIsCacheHitFromDisk:1];

      speechCache4 = [taskCopy speechCache];
      voiceKey = [speechCache4 voiceKey];
      instrumentMetrics2 = [taskCopy instrumentMetrics];
      [instrumentMetrics2 setVoiceAssetKey:voiceKey];

      speechCache5 = [taskCopy speechCache];
      voiceResourceKey = [speechCache5 voiceResourceKey];
      instrumentMetrics3 = [taskCopy instrumentMetrics];
      [instrumentMetrics3 setVoiceResourceAssetKey:voiceResourceKey];
    }

    standardInstance = [MEMORY[0x277D79998] standardInstance];
    disableCache = [standardInstance disableCache];

    if ((disableCache & 1) == 0)
    {
      taskHash = [taskCopy taskHash];
      speechCache6 = [taskCopy speechCache];

      if (!speechCache6)
      {
        v29 = [(VSCachingService *)self _inMemoryCacheForHash:taskHash];
        [taskCopy setSpeechCache:v29];

        speechCache7 = [taskCopy speechCache];

        if (speechCache7)
        {
          v31 = VSGetLogDefault();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            speechCache8 = [taskCopy speechCache];
            v33 = [speechCache8 key];
            v60 = 138412290;
            v61 = v33;
            _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_DEFAULT, "In-memory cached synthesis %@ is found.", &v60, 0xCu);
          }

          instrumentMetrics4 = [taskCopy instrumentMetrics];
          [instrumentMetrics4 setIsCacheHitFromMemory:1];
        }
      }

      speechCache9 = [taskCopy speechCache];

      if (!speechCache9)
      {
        v36 = [(VSCachingService *)self _onDiskCacheForHash:taskHash];
        [taskCopy setSpeechCache:v36];

        speechCache10 = [taskCopy speechCache];

        if (speechCache10)
        {
          v38 = VSGetLogDefault();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            speechCache11 = [taskCopy speechCache];
            v40 = [speechCache11 key];
            v60 = 138412290;
            v61 = v40;
            _os_log_impl(&dword_2727E4000, v38, OS_LOG_TYPE_DEFAULT, "On-disk cached synthesis %@ is found.", &v60, 0xCu);
          }

          instrumentMetrics5 = [taskCopy instrumentMetrics];
          [instrumentMetrics5 setIsCacheHitFromDisk:1];
        }
      }

      speechCache12 = [taskCopy speechCache];

      if (!speechCache12)
      {
        request4 = [taskCopy request];
        text2 = [request4 text];
        v45 = [(VSCachingService *)self popShortTermCacheForHash:text2];
        [taskCopy setSpeechCache:v45];

        speechCache13 = [taskCopy speechCache];

        if (speechCache13)
        {
          v47 = VSGetLogDefault();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            request5 = [taskCopy request];
            logText = [request5 logText];
            v60 = 138412290;
            v61 = logText;
            _os_log_impl(&dword_2727E4000, v47, OS_LOG_TYPE_DEFAULT, "Short-term cached synthesis is found for text '%@'", &v60, 0xCu);
          }
        }
      }

      speechCache14 = [taskCopy speechCache];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        speechCache15 = [taskCopy speechCache];
        timingInfos = [taskCopy timingInfos];

        if (!timingInfos)
        {
          timingInfos2 = [speechCache15 timingInfos];
          [taskCopy setTimingInfos:timingInfos2];
        }

        audio = [speechCache15 audio];
        [audio duration];
        v57 = v56;
        instrumentMetrics6 = [taskCopy instrumentMetrics];
        [instrumentMetrics6 setAudioDuration:v57];
      }
    }
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (id)_onDiskCacheForHash:(id)hash
{
  hashCopy = hash;
  cacheStore = [(VSCachingService *)self cacheStore];
  v6 = [cacheStore cacheDataForKey:hashCopy];

  return v6;
}

- (id)onDiskCacheForHash:(id)hash
{
  hashCopy = hash;
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableCache = [standardInstance disableCache];

  if (disableCache)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VSCachingService *)self _onDiskCacheForHash:hashCopy];
  }

  return v7;
}

- (id)_inMemoryCacheForHash:(id)hash
{
  v21 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  threadLock = [(VSCachingService *)self threadLock];
  [threadLock lock];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  inMemoryCaches = [(VSCachingService *)self inMemoryCaches];
  v7 = [inMemoryCaches countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(inMemoryCaches);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [hashCopy isEqualToString:v11];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [inMemoryCaches countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  threadLock2 = [(VSCachingService *)self threadLock];
  [threadLock2 unlock];

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)inMemoryCacheForHash:(id)hash
{
  hashCopy = hash;
  standardInstance = [MEMORY[0x277D79998] standardInstance];
  disableCache = [standardInstance disableCache];

  if (disableCache)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(VSCachingService *)self _inMemoryCacheForHash:hashCopy];
  }

  return v7;
}

- (void)_enqueueCacheWithHash:(id)hash audioObject:(id)object timingInfo:(id)info voiceKey:(id)key voiceResourceKey:(id)resourceKey completion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  objectCopy = object;
  infoCopy = info;
  keyCopy = key;
  resourceKeyCopy = resourceKey;
  completionCopy = completion;
  if (hashCopy && objectCopy && infoCopy)
  {
    standardInstance = [MEMORY[0x277D79998] standardInstance];
    disableCache = [standardInstance disableCache];

    if (disableCache)
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

    [objectCopy duration];
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
      v29 = [(VSCachingService *)self compressStreamAudio:objectCopy];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_27;
      }

      v29 = [(VSCachingService *)self compressAudio:objectCopy];
    }

    v30 = v29;
LABEL_27:
    v31 = VSGetLogDefault();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v31, OS_LOG_TYPE_INFO, "Audio compressed for caching.", buf, 2u);
    }

    v32 = [[VSSpeechCacheAudio alloc] initWithKey:hashCopy audio:v30 wordTimingInfo:infoCopy voiceKey:keyCopy voiceResourceKey:resourceKeyCopy];
    threadLock = [(VSCachingService *)self threadLock];
    [threadLock lock];

    inMemoryCaches = [(VSCachingService *)self inMemoryCaches];
    [inMemoryCaches addObject:v32];

    threadLock2 = [(VSCachingService *)self threadLock];
    [threadLock2 unlock];

    cachingQueue = [(VSCachingService *)self cachingQueue];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __102__VSCachingService__enqueueCacheWithHash_audioObject_timingInfo_voiceKey_voiceResourceKey_completion___block_invoke;
    v39[3] = &unk_279E4BBB8;
    v40 = hashCopy;
    v41 = v30;
    v42 = infoCopy;
    v43 = keyCopy;
    v44 = resourceKeyCopy;
    selfCopy = self;
    v46 = v32;
    v47 = completionCopy;
    v37 = v32;
    v22 = v30;
    dispatch_async(cachingQueue, v39);

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

- (id)compressStreamAudio:(id)audio
{
  v39 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  v4 = objc_alloc(MEMORY[0x277D79968]);
  if (audioCopy)
  {
    [audioCopy asbd];
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
  }

  v5 = [v4 initWithSourceASBD:&v28];
  data = [MEMORY[0x277CBEB28] data];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  data2 = [MEMORY[0x277CBEB28] data];
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
  v8 = data;
  v24 = v8;
  v26 = &v32;
  v9 = data2;
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
  [audioCopy enumerateAudioWithBlock:&v17];
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

- (id)compressAudio:(id)audio
{
  v36 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  v4 = objc_alloc(MEMORY[0x277D79968]);
  if (audioCopy)
  {
    [audioCopy asbd];
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
  }

  v5 = [v4 initWithSourceASBD:&v25];
  data = [MEMORY[0x277CBEB28] data];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  data2 = [MEMORY[0x277CBEB28] data];
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
  v8 = data;
  v21 = v8;
  v23 = &v29;
  v9 = data2;
  v22 = v9;
  [v5 setOpusDataHandler:&v17];
  [v5 beginEncoding];
  audioData = [audioCopy audioData];
  [v5 encodeChunk:audioData];

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

- (VSCachingService)initWithCache:(id)cache shortTermMemory:(id)memory
{
  cacheCopy = cache;
  memoryCopy = memory;
  v19.receiver = self;
  v19.super_class = VSCachingService;
  v9 = [(VSCachingService *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheStore, cache);
    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    threadLock = v10->_threadLock;
    v10->_threadLock = v11;

    array = [MEMORY[0x277CBEB18] array];
    inMemoryCaches = v10->_inMemoryCaches;
    v10->_inMemoryCaches = array;

    objc_storeStrong(&v10->_shortTermCache, memory);
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