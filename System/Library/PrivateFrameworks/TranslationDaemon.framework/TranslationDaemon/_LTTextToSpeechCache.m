@interface _LTTextToSpeechCache
- (_LTTextToSpeechCache)init;
- (id)audioDataForKey:(id)a3;
- (void)cacheAudioData:(id)a3 forKey:(id)a4;
- (void)clear;
@end

@implementation _LTTextToSpeechCache

- (_LTTextToSpeechCache)init
{
  v9.receiver = self;
  v9.super_class = _LTTextToSpeechCache;
  v2 = [(_LTTextToSpeechCache *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.translation.tts-cache", 0);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    cache = v2->_cache;
    v2->_cache = v5;

    v7 = v2;
  }

  return v2;
}

- (void)cacheAudioData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_LTPreferencesDebugDisableTTSCache())
  {
    v8 = _LTOSLogTTS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_LTTextToSpeechCache cacheAudioData:v8 forKey:?];
    }
  }

  else
  {
    objc_initWeak(&location, self);
    cacheQueue = self->_cacheQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46___LTTextToSpeechCache_cacheAudioData_forKey___block_invoke;
    v10[3] = &unk_2789B6C78;
    objc_copyWeak(&v13, &location);
    v11 = v7;
    v12 = v6;
    dispatch_async(cacheQueue, v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (id)audioDataForKey:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___LTTextToSpeechCache_audioDataForKey___block_invoke;
  block[3] = &unk_2789B59B8;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_sync(cacheQueue, block);
  v7 = _LTOSLogTTS();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (v16[5])
    {
      v8 = @"HIT";
    }

    else
    {
      v8 = @"MISS";
    }

    *buf = 138543362;
    v22 = v8;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "TTS cache request: %{public}@", buf, 0xCu);
  }

  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)clear
{
  objc_initWeak(&location, self);
  cacheQueue = self->_cacheQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29___LTTextToSpeechCache_clear__block_invoke;
  v4[3] = &unk_2789B53F0;
  objc_copyWeak(&v5, &location);
  dispatch_async(cacheQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end