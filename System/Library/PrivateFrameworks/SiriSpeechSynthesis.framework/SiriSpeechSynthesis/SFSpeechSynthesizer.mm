@interface SFSpeechSynthesizer
- (SFSpeechSynthesizer)init;
- (SFSpeechSynthesizer)initWithVoice:(id)a3;
- (id)startTaskWithRequest:(id)a3 delegate:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)prewarm:(int64_t)a3;
@end

@implementation SFSpeechSynthesizer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFSpeechSynthesizer;
  [(SFSpeechSynthesizer *)&v2 dealloc];
}

- (id)startTaskWithRequest:(id)a3 delegate:(id)a4 completion:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SFSpeechSynthesisVoice *)self->_voice gender];
  [v8 setGender:v11];

  v12 = [(SFSpeechSynthesisVoice *)self->_voice locale];
  v13 = [v12 localeIdentifier];
  [v8 setLocale:v13];

  v14 = [(SFSpeechSynthesisVoice *)self->_voice name];
  [v8 setVoiceName:v14];

  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 bundleIdentifier];
  [v8 setClientBundleIdentifier:v16];

  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v17 UUIDString];
  [v8 setRequestIdentifer:v18];

  [v8 setVoice:self->_voice];
  v19 = SFSSGetLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v64 = v8;
    _os_log_impl(&dword_269079000, v19, OS_LOG_TYPE_INFO, "SpeakRequest: %@", buf, 0xCu);
  }

  if ([v8 useCache])
  {
    v20 = [v8 voiceName];
    v21 = [v8 text];
    v22 = [SFSSCacheItem generateCacheKey:v20 text:v21];

    v23 = +[SFSSCachingService sharedInstance];
    v24 = [v23 objectForKey:v22];

    if (v24)
    {
      v25 = SFSSGetLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v8 requestIdentifer];
        *buf = 138412290;
        v64 = v26;
        _os_log_impl(&dword_269079000, v25, OS_LOG_TYPE_INFO, "Found request in cache: %@", buf, 0xCu);
      }

      if ([v8 type])
      {
        cacheTaskQueue = self->_cacheTaskQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_2;
        block[3] = &unk_279C4C350;
        v28 = &v59;
        v29 = &v58;
        v58 = 0;
        v59 = v10;
        dispatch_async(cacheTaskQueue, block);
        v30 = 0;
      }

      else
      {
        v47 = [[SFSSCacheTask alloc] initWithRequest:v8];
        [(SFSpeechSynthesisTask *)v47 setDelegate:v9];
        v48 = self->_cacheTaskQueue;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke;
        v60[3] = &unk_279C4C350;
        v28 = &v61;
        v30 = v47;
        v61 = v30;
        v29 = &v62;
        v62 = v10;
        dispatch_async(v48, v60);
      }

      v46 = v30;
      goto LABEL_20;
    }
  }

  if ([v8 solutionType])
  {
    v31 = [(SFSpeechSynthesisVoice *)self->_voice voiceAsset];

    if (!v31)
    {
      v32 = +[SFSSAssetManager sharedInstance];
      v33 = [v32 getVoiceAssetByVoice:self->_voice];

      v34 = [(SFSpeechSynthesizer *)self voice];
      [v34 setVoiceAsset:v33];
    }

    v35 = [(SFSpeechSynthesisVoice *)self->_voice resourceAsset];

    if (!v35)
    {
      v36 = +[SFSSAssetManager sharedInstance];
      v37 = [v36 getResoruceAssetByVoice:self->_voice];

      v38 = [(SFSpeechSynthesizer *)self voice];
      [v38 setResourceAsset:v37];
    }

    v39 = [[SFSSDeviceTTSTask alloc] initWithRequest:v8];
    [(SFSpeechSynthesisTask *)v39 setDelegate:v9];
    deviceTaskQueue = self->_deviceTaskQueue;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_4;
    v51[3] = &unk_279C4C350;
    v41 = &v52;
    v42 = v39;
    v52 = v42;
    v43 = &v53;
    v53 = v10;
    v44 = v51;
  }

  else
  {
    v45 = [[SFSSServerTTSTask alloc] initWithRequest:v8];
    [(SFSpeechSynthesisTask *)v45 setDelegate:v9];
    deviceTaskQueue = self->_serverTaskQueue;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_3;
    v54[3] = &unk_279C4C350;
    v41 = &v55;
    v42 = v45;
    v55 = v42;
    v43 = &v56;
    v56 = v10;
    v44 = v54;
  }

  dispatch_async(deviceTaskQueue, v44);

  v46 = v42;
LABEL_20:

  v49 = *MEMORY[0x277D85DE8];

  return v46;
}

void __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)prewarm:(int64_t)a3
{
  if (!a3)
  {
    v4 = +[SFSSOspreyTTSClient sharedInstance];
    [v4 prewarm];
  }
}

- (SFSpeechSynthesizer)initWithVoice:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SFSSGetLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 name];
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_269079000, v6, OS_LOG_TYPE_INFO, "Init Synthesizer with voice: %@", buf, 0xCu);
  }

  v19.receiver = self;
  v19.super_class = SFSpeechSynthesizer;
  v8 = [(SFSpeechSynthesizer *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_voice, a3);
    v10 = dispatch_queue_create("com.apple.speech.speechsynthesis.task.device", 0);
    deviceTaskQueue = v9->_deviceTaskQueue;
    v9->_deviceTaskQueue = v10;

    v12 = MEMORY[0x277D85CD8];
    v13 = dispatch_queue_create("com.apple.speech.speechsynthesis.task.server", MEMORY[0x277D85CD8]);
    serverTaskQueue = v9->_serverTaskQueue;
    v9->_serverTaskQueue = v13;

    v15 = dispatch_queue_create("com.apple.speech.speechsynthesis.task.cache", v12);
    cacheTaskQueue = v9->_cacheTaskQueue;
    v9->_cacheTaskQueue = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (SFSpeechSynthesizer)init
{
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [SFSpeechSynthesisVoice getDefaultVoiceByLocale:v3];

  if (v4)
  {
    self = [(SFSpeechSynthesizer *)self initWithVoice:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end