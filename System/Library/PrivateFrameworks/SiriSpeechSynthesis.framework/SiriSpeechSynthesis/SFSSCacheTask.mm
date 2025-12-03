@interface SFSSCacheTask
- (SFSSCacheTask)initWithRequest:(id)request;
- (void)cancelTask;
- (void)startTask:(id)task;
@end

@implementation SFSSCacheTask

- (void)cancelTask
{
  v2 = SFSSGetLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_269079000, v2, OS_LOG_TYPE_DEBUG, "Cache Task cancelled.", v3, 2u);
  }
}

- (void)startTask:(id)task
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  request = [(SFSpeechSynthesisTask *)self request];
  voiceName = [request voiceName];
  request2 = [(SFSpeechSynthesisTask *)self request];
  text = [request2 text];
  v9 = [SFSSCacheItem generateCacheKey:voiceName text:text];

  v10 = +[SFSSCachingService sharedInstance];
  v11 = [v10 objectForKey:v9];

  voiceKey = [v11 voiceKey];
  v13 = [SFSSVoiceAsset generateVoiceAssetFromVoiceKeyString:voiceKey];

  resourceKey = [v11 resourceKey];
  v15 = [SFSSResourceAsset generateResourceAssetFromResourceKeyString:resourceKey];

  if (v11)
  {
    [v11 asbd];
  }

  else
  {
    v28 = 0;
    memset(v27, 0, sizeof(v27));
  }

  [(SFSpeechSynthesisTask *)self handleSynthesisBegin:0 asbd:v27 audioPlaybackBufferDuration:v13 voiceAsset:v15 resourceAsset:0.0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  rawAudio = [v11 rawAudio];
  v17 = [rawAudio countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(rawAudio);
        }

        [(SFSpeechSynthesisTask *)self handleSynthesisChunks:*(*(&v23 + 1) + 8 * i)];
      }

      v18 = [rawAudio countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v18);
  }

  [(SFSpeechSynthesisTask *)self handleSynthesisEnd:0];
  error = [(SFSpeechSynthesisTask *)self error];
  taskCopy[2](taskCopy, error);

  v22 = *MEMORY[0x277D85DE8];
}

- (SFSSCacheTask)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Init cache task.", buf, 2u);
  }

  v9.receiver = self;
  v9.super_class = SFSSCacheTask;
  v6 = [(SFSpeechSynthesisTask *)&v9 initWithRequest:requestCopy];

  if (v6)
  {
    instrumentMetrics = [(SFSpeechSynthesisTask *)v6 instrumentMetrics];
    [instrumentMetrics setSourceOfTTS:1];
  }

  return v6;
}

@end