@interface SFSpeechSynthesizer
- (SFSpeechSynthesizer)init;
- (SFSpeechSynthesizer)initWithVoice:(id)voice;
- (id)startTaskWithRequest:(id)request delegate:(id)delegate completion:(id)completion;
- (void)dealloc;
- (void)prewarm:(int64_t)prewarm;
@end

@implementation SFSpeechSynthesizer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFSpeechSynthesizer;
  [(SFSpeechSynthesizer *)&v2 dealloc];
}

- (id)startTaskWithRequest:(id)request delegate:(id)delegate completion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegateCopy = delegate;
  completionCopy = completion;
  gender = [(SFSpeechSynthesisVoice *)self->_voice gender];
  [requestCopy setGender:gender];

  locale = [(SFSpeechSynthesisVoice *)self->_voice locale];
  localeIdentifier = [locale localeIdentifier];
  [requestCopy setLocale:localeIdentifier];

  name = [(SFSpeechSynthesisVoice *)self->_voice name];
  [requestCopy setVoiceName:name];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [requestCopy setClientBundleIdentifier:bundleIdentifier];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [requestCopy setRequestIdentifer:uUIDString];

  [requestCopy setVoice:self->_voice];
  v19 = SFSSGetLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v64 = requestCopy;
    _os_log_impl(&dword_269079000, v19, OS_LOG_TYPE_INFO, "SpeakRequest: %@", buf, 0xCu);
  }

  if ([requestCopy useCache])
  {
    voiceName = [requestCopy voiceName];
    text = [requestCopy text];
    v22 = [SFSSCacheItem generateCacheKey:voiceName text:text];

    v23 = +[SFSSCachingService sharedInstance];
    v24 = [v23 objectForKey:v22];

    if (v24)
    {
      v25 = SFSSGetLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        requestIdentifer = [requestCopy requestIdentifer];
        *buf = 138412290;
        v64 = requestIdentifer;
        _os_log_impl(&dword_269079000, v25, OS_LOG_TYPE_INFO, "Found request in cache: %@", buf, 0xCu);
      }

      if ([requestCopy type])
      {
        cacheTaskQueue = self->_cacheTaskQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_2;
        block[3] = &unk_279C4C350;
        v28 = &v59;
        v29 = &v58;
        v58 = 0;
        v59 = completionCopy;
        dispatch_async(cacheTaskQueue, block);
        v30 = 0;
      }

      else
      {
        v47 = [[SFSSCacheTask alloc] initWithRequest:requestCopy];
        [(SFSpeechSynthesisTask *)v47 setDelegate:delegateCopy];
        v48 = self->_cacheTaskQueue;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke;
        v60[3] = &unk_279C4C350;
        v28 = &v61;
        v30 = v47;
        v61 = v30;
        v29 = &v62;
        v62 = completionCopy;
        dispatch_async(v48, v60);
      }

      v46 = v30;
      goto LABEL_20;
    }
  }

  if ([requestCopy solutionType])
  {
    voiceAsset = [(SFSpeechSynthesisVoice *)self->_voice voiceAsset];

    if (!voiceAsset)
    {
      v32 = +[SFSSAssetManager sharedInstance];
      v33 = [v32 getVoiceAssetByVoice:self->_voice];

      voice = [(SFSpeechSynthesizer *)self voice];
      [voice setVoiceAsset:v33];
    }

    resourceAsset = [(SFSpeechSynthesisVoice *)self->_voice resourceAsset];

    if (!resourceAsset)
    {
      v36 = +[SFSSAssetManager sharedInstance];
      v37 = [v36 getResoruceAssetByVoice:self->_voice];

      voice2 = [(SFSpeechSynthesizer *)self voice];
      [voice2 setResourceAsset:v37];
    }

    v39 = [[SFSSDeviceTTSTask alloc] initWithRequest:requestCopy];
    [(SFSpeechSynthesisTask *)v39 setDelegate:delegateCopy];
    deviceTaskQueue = self->_deviceTaskQueue;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_4;
    v51[3] = &unk_279C4C350;
    v41 = &v52;
    v42 = v39;
    v52 = v42;
    v43 = &v53;
    v53 = completionCopy;
    v44 = v51;
  }

  else
  {
    v45 = [[SFSSServerTTSTask alloc] initWithRequest:requestCopy];
    [(SFSpeechSynthesisTask *)v45 setDelegate:delegateCopy];
    deviceTaskQueue = self->_serverTaskQueue;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __64__SFSpeechSynthesizer_startTaskWithRequest_delegate_completion___block_invoke_3;
    v54[3] = &unk_279C4C350;
    v41 = &v55;
    v42 = v45;
    v55 = v42;
    v43 = &v56;
    v56 = completionCopy;
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

- (void)prewarm:(int64_t)prewarm
{
  if (!prewarm)
  {
    v4 = +[SFSSOspreyTTSClient sharedInstance];
    [v4 prewarm];
  }
}

- (SFSpeechSynthesizer)initWithVoice:(id)voice
{
  v22 = *MEMORY[0x277D85DE8];
  voiceCopy = voice;
  v6 = SFSSGetLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    name = [voiceCopy name];
    *buf = 138412290;
    v21 = name;
    _os_log_impl(&dword_269079000, v6, OS_LOG_TYPE_INFO, "Init Synthesizer with voice: %@", buf, 0xCu);
  }

  v19.receiver = self;
  v19.super_class = SFSpeechSynthesizer;
  v8 = [(SFSpeechSynthesizer *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_voice, voice);
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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [SFSpeechSynthesisVoice getDefaultVoiceByLocale:currentLocale];

  if (v4)
  {
    self = [(SFSpeechSynthesizer *)self initWithVoice:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end