@interface SFSpeechSynthesisTask
- (AudioStreamBasicDescription)asbd;
- (BOOL)isCancelled;
- (BOOL)isFinished;
- (BOOL)isSpeakRequest;
- (SFSpeechSynthesisTask)initWithRequest:(id)a3;
- (SFSpeechSynthesisTaskPrivateDelegate)delegate;
- (id)cancel;
- (id)pause;
- (id)resume;
- (void)handleSynthesisChunks:(id)a3;
- (void)handleSynthesisEnd:(id)a3;
- (void)handleSynthesisEndCallback;
- (void)handleSynthesisFrontendFeaturePhoneme:(id)a3;
- (void)handleSynthesisInit;
- (void)initSpeak:(unsigned int)a3 asbd:(AudioStreamBasicDescription *)a4;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
- (void)setErrorIfNotNull:(id)a3;
- (void)start:(id)a3;
- (void)startSpeakIfValid;
- (void)waitForSpeakFinish;
@end

@implementation SFSpeechSynthesisTask

- (SFSpeechSynthesisTaskPrivateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_asbd.mSampleRate = v3;
  *&self->_asbd.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[4].mSampleRate;
  *&retstr->mSampleRate = *&self[3].mBytesPerFrame;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[4].mBytesPerPacket;
  return self;
}

- (void)setErrorIfNotNull:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SFSpeechSynthesisTask *)self error];

  if (!v5)
  {
    [(SFSpeechSynthesisTask *)self setError:v4];
    v6 = SFSSGetLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(SFSpeechSynthesisTask *)self error];
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_269079000, v6, OS_LOG_TYPE_DEBUG, "Set Error: %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSpeakRequest
{
  v2 = [(SFSpeechSynthesisTask *)self request];
  v3 = [v2 type] == 0;

  return v3;
}

- (BOOL)isCancelled
{
  if ([(SFSpeechSynthesisTask *)self isSpeakRequest])
  {
    return [(SFSpeechSynthesisTask *)self speakState]== 3;
  }

  else
  {
    return [(SFSpeechSynthesisTask *)self synthesisState]== 4;
  }
}

- (BOOL)isFinished
{
  if ([(SFSpeechSynthesisTask *)self isSpeakRequest])
  {
    return [(SFSpeechSynthesisTask *)self speakState]== 4;
  }

  else
  {
    return [(SFSpeechSynthesisTask *)self synthesisState]== 3;
  }
}

- (void)handleSynthesisFrontendFeaturePhoneme:(id)a3
{
  v4 = a3;
  v5 = [(SFSpeechSynthesisTask *)self phonemeSequence];
  [v5 addObjectsFromArray:v4];
}

- (void)handleSynthesisEndCallback
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "handleSynthesisEndCallback", buf, 2u);
  }

  v4 = [(SFSpeechSynthesisTask *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = +[SFSSAudioConverter sharedInstance];
    v7 = [(SFSpeechSynthesisTask *)self bufferedAudioData];
    [(SFSpeechSynthesisTask *)self asbd];
    v25[0] = SFSSAudioFormat48khzPCM;
    v25[1] = unk_26914CE38;
    v26 = 16;
    v27 = 0;
    v8 = [v6 convertChunks:v7 srcAsbd:buf dstAsbd:v25 outError:&v27];
    v9 = v27;

    if (v9)
    {
      v10 = SFSSGetLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_269079000, v10, OS_LOG_TYPE_INFO, "Audio converter error: %@", buf, 0xCu);
      }

      v11 = [(SFSpeechSynthesisTask *)self error];

      if (!v11)
      {
        [(SFSpeechSynthesisTask *)self setError:v9];
      }
    }

    v12 = [(SFSpeechSynthesisTask *)self delegate];
    *buf = SFSSAudioFormat48khzPCM;
    v29 = unk_26914CE38;
    v30 = 16;
    [v12 speechSynthesisTask:self didFinishSysthesisAudio:buf audioData:v8];
  }

  v13 = [(SFSpeechSynthesisTask *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(SFSpeechSynthesisTask *)self delegate];
    v16 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
    v17 = [v16 voiceAssetKey];
    v18 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
    v19 = [v18 resourceAssetKey];
    [v15 speechSynthesisTask:self didFinishWithVoiceKey:v17 resourceKey:v19];
  }

  v20 = [(SFSpeechSynthesisTask *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(SFSpeechSynthesisTask *)self delegate];
    v23 = [(SFSpeechSynthesisTask *)self phonemeSequence];
    [v22 speechSynthesisTask:self didFinishWithPhoneme:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleSynthesisEnd:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "handleSynthesisEnd", buf, 2u);
  }

  [(SFSpeechSynthesisTask *)self setErrorIfNotNull:v4];
  v6 = mach_absolute_time();
  v7 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
  [v7 setSynthesisEndTimestamp:v6];

  v8 = [(SFSpeechSynthesisTask *)self error];
  if (!v8)
  {
    v8 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
    if ([(SFSSCacheItem *)v8 sourceOfTTS]!= 1)
    {
      v9 = +[SFSpeechSynthesisInternalSetting sharedInstance];
      v10 = [v9 disableCaching];

      if (v10)
      {
        goto LABEL_10;
      }

      v11 = SFSSGetLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(SFSpeechSynthesisTask *)self taskIdentifer];
        *buf = 138412290;
        v41 = v12;
        _os_log_impl(&dword_269079000, v11, OS_LOG_TYPE_INFO, "Cache Audio for task: %@", buf, 0xCu);
      }

      v13 = [SFSSCacheItem alloc];
      v39 = [(SFSpeechSynthesisTask *)self request];
      v14 = [v39 text];
      v38 = [(SFSpeechSynthesisTask *)self request];
      v15 = [v38 voiceName];
      v16 = [(SFSpeechSynthesisTask *)self voiceAsset];
      v17 = [v16 key];
      v18 = [(SFSpeechSynthesisTask *)self resourceAsset];
      v19 = [v18 key];
      [(SFSpeechSynthesisTask *)self asbd];
      v20 = [(SFSpeechSynthesisTask *)self bufferedAudios];
      v21 = [v20 copy];
      v22 = v13;
      v23 = v14;
      v8 = [(SFSSCacheItem *)v22 initWithText:v14 voiceName:v15 voiceKey:v17 resourceKey:v19 asbd:buf rawAudio:v21];

      v24 = +[SFSSCachingService sharedInstance];
      v25 = [(SFSSCacheItem *)v8 key];
      [v24 setObject:v8 forKey:v25];
    }
  }

LABEL_10:
  [(SFSpeechSynthesisTask *)self setSynthesisState:3];
  if ([(SFSpeechSynthesisTask *)self isSpeakRequest])
  {
    [(SFSpeechSynthesisTask *)self startSpeakIfValid];
    [(SFSpeechSynthesisTask *)self waitForSpeakFinish];
    v26 = mach_absolute_time();
    v27 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
    [v27 setSpeakEndTimestamp:v26];
  }

  [(SFSpeechSynthesisTask *)self bufferedDuration];
  v29 = v28;
  v30 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
  [v30 setAudioDuration:v29];

  v31 = [(SFSpeechSynthesisTask *)self error];
  v32 = [v31 code];
  v33 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
  [v33 setErrorCode:v32];

  v34 = SFSSGetLogObject();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
    v36 = [v35 description];
    *buf = 138412290;
    v41 = v36;
    _os_log_impl(&dword_269079000, v34, OS_LOG_TYPE_INFO, "InstrumentMetrics: %@", buf, 0xCu);
  }

  [(SFSpeechSynthesisTask *)self handleSynthesisEndCallback];
  v37 = *MEMORY[0x277D85DE8];
}

- (void)handleSynthesisChunks:(id)a3
{
  v4 = a3;
  v5 = [(SFSpeechSynthesisTask *)self bufferedAudios];
  [v5 addObject:v4];

  v6 = [SFSSAudioData alloc];
  [(SFSpeechSynthesisTask *)self asbd];
  v7 = [(SFSSAudioData *)v6 initWithASBD:v20 rawData:v4];

  v8 = [(SFSpeechSynthesisTask *)self bufferedAudioData];
  [v8 addObject:v7];

  [(SFSSAudioData *)v7 duration];
  v10 = v9;
  [(SFSpeechSynthesisTask *)self bufferedDuration];
  [(SFSpeechSynthesisTask *)self setBufferedDuration:v10 + v11];
  if ([(SFSpeechSynthesisTask *)self isSpeakRequest])
  {
    v12 = [(SFSpeechSynthesisTask *)self playbackService];
    v13 = [(SFSSAudioData *)v7 audioData];
    v14 = [(SFSSAudioData *)v7 packetCount];
    v15 = [(SFSSAudioData *)v7 packetDescriptions];
    v16 = [v12 enqueue:v13 packetCount:v14 packetDescriptions:v15];
    [(SFSpeechSynthesisTask *)self setErrorIfNotNull:v16];

    [(SFSpeechSynthesisTask *)self bufferedDuration];
    v18 = v17;
    [(SFSpeechSynthesisTask *)self audioPlaybackBufferDuration];
    if (v18 >= v19)
    {
      [(SFSpeechSynthesisTask *)self setSynthesisState:2];
      [(SFSpeechSynthesisTask *)self startSpeakIfValid];
    }
  }
}

- (void)handleSynthesisInit
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "handleSynthesisInit", v6, 2u);
  }

  v4 = mach_absolute_time();
  v5 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
  [v5 setSynthesisBeginTimestamp:v4];

  [(SFSpeechSynthesisTask *)self setSynthesisState:1];
}

- (void)waitForSpeakFinish
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(SFSpeechSynthesisTask *)self taskIdentifer];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Wait for speak finish, taskId=%@", &v10, 0xCu);
  }

  v5 = [(SFSpeechSynthesisTask *)self playbackService];
  [v5 flushAndStop];

  v6 = [(SFSpeechSynthesisTask *)self playbackService];
  [v6 waitForAudioQueueStop];

  [(SFSpeechSynthesisTask *)self setSpeakState:4];
  v7 = SFSSGetLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(SFSpeechSynthesisTask *)self taskIdentifer];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_269079000, v7, OS_LOG_TYPE_INFO, "Speak finished, taskId=%@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)initSpeak:(unsigned int)a3 asbd:(AudioStreamBasicDescription *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [SFSSAudioPlaybackService alloc];
  v7 = *&a4->mBytesPerPacket;
  *v16 = *&a4->mSampleRate;
  *&v16[16] = v7;
  v17 = *&a4->mBitsPerChannel;
  v8 = [(SFSSAudioPlaybackService *)v6 initWithAudioSessionID:0 asbd:v16];
  [(SFSpeechSynthesisTask *)self setPlaybackService:v8];

  v9 = [(SFSpeechSynthesisTask *)self playbackService];
  v10 = [v9 outputRoute];
  v11 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
  [v11 setAudioOutputRoute:v10];

  v12 = SFSSGetLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(SFSpeechSynthesisTask *)self taskIdentifer];
    v14 = [(SFSpeechSynthesisTask *)self error];
    *v16 = 138412546;
    *&v16[4] = v13;
    *&v16[12] = 2112;
    *&v16[14] = v14;
    _os_log_impl(&dword_269079000, v12, OS_LOG_TYPE_INFO, "Init speak, taskId=%@, error=%@", v16, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)start:(id)a3
{
  v4 = a3;
  [(SFSpeechSynthesisTask *)self handleSynthesisInit];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__SFSpeechSynthesisTask_start___block_invoke;
  v6[3] = &unk_279C4C130;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(SFSpeechSynthesisTask *)self startTask:v6];
}

uint64_t __31__SFSpeechSynthesisTask_start___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    v6 = *(a1 + 32);
    v7 = [v6 error];
    [v5 speechSynthesisTask:v6 didFinishWithError:v7];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v10);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)startSpeakIfValid
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(SFSpeechSynthesisTask *)self speakState]!= 1 && [(SFSpeechSynthesisTask *)self speakState]!= 2 && [(SFSpeechSynthesisTask *)self speakState]!= 3)
  {
    v3 = SFSSGetLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SFSpeechSynthesisTask *)self taskIdentifer];
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Start speaking, taskId=%@", &v10, 0xCu);
    }

    v5 = [(SFSpeechSynthesisTask *)self playbackService];
    v6 = [v5 start];
    [(SFSpeechSynthesisTask *)self setErrorIfNotNull:v6];

    [(SFSpeechSynthesisTask *)self setSpeakState:1];
    v7 = mach_absolute_time();
    v8 = [(SFSpeechSynthesisTask *)self instrumentMetrics];
    [v8 setSpeakBeginTimestamp:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)resume
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(SFSpeechSynthesisTask *)self speakState]== 2)
  {
    [(SFSpeechSynthesisTask *)self setSpeakState:1];
    v3 = SFSSGetLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SFSpeechSynthesisTask *)self taskIdentifer];
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Resume speak, taskId=%@", buf, 0xCu);
    }

    v5 = [(SFSpeechSynthesisTask *)self playbackService];
    v6 = [v5 start];
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Speak task is in wrong state. speak state = %ld", -[SFSpeechSynthesisTask speakState](self, "speakState")];
    v12 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v6 = [v7 errorWithDomain:@"SFSpeechSynthesisTaskError" code:700 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)pause
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(SFSpeechSynthesisTask *)self speakState]== 1)
  {
    [(SFSpeechSynthesisTask *)self setSpeakState:2];
    v3 = SFSSGetLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SFSpeechSynthesisTask *)self taskIdentifer];
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Pause speak, taskId=%@", buf, 0xCu);
    }

    v5 = [(SFSpeechSynthesisTask *)self playbackService];
    [v5 pause];
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Speak task is in wrong state. speak state = %ld", -[SFSpeechSynthesisTask speakState](self, "speakState")];
    v12 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v6 = [v7 errorWithDomain:@"SFSpeechSynthesisTaskError" code:700 userInfo:v8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)cancel
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (![(SFSpeechSynthesisTask *)self isSpeakRequest]|| [(SFSpeechSynthesisTask *)self speakState]== 3 || [(SFSpeechSynthesisTask *)self speakState]== 4)
  {
    if ([(SFSpeechSynthesisTask *)self isSpeakRequest]|| [(SFSpeechSynthesisTask *)self synthesisState]== 4 || [(SFSpeechSynthesisTask *)self synthesisState]== 3)
    {
      v3 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Speak/Synthesis task is in wrong state. speak state = %ld, synthesis state = %ld", -[SFSpeechSynthesisTask speakState](self, "speakState"), -[SFSpeechSynthesisTask synthesisState](self, "synthesisState")];
      v23 = v4;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v6 = [v3 errorWithDomain:@"SFSpeechSynthesisTaskError" code:700 userInfo:v5];

      goto LABEL_17;
    }

    [(SFSpeechSynthesisTask *)self setSynthesisState:4];
    v14 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Speak/Synthesis task is canceled. speak state = %ld, synthesis state = %ld", -[SFSpeechSynthesisTask speakState](self, "speakState"), -[SFSpeechSynthesisTask synthesisState](self, "synthesisState")];
    v25 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:@"SFSpeechSynthesisError" code:300 userInfo:v16];
    [(SFSpeechSynthesisTask *)self setErrorIfNotNull:v17];

    v18 = SFSSGetLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(SFSpeechSynthesisTask *)self taskIdentifer];
      *buf = 138412290;
      v27 = v19;
      _os_log_impl(&dword_269079000, v18, OS_LOG_TYPE_INFO, "Cancel synthesis task, taskId=%@", buf, 0xCu);
    }

    [(SFSpeechSynthesisTask *)self cancelTask];
  }

  else
  {
    [(SFSpeechSynthesisTask *)self setSpeakState:3];
    if ([(SFSpeechSynthesisTask *)self synthesisState]!= 3)
    {
      [(SFSpeechSynthesisTask *)self setSynthesisState:4];
      v7 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Speak/Synthesis task is canceled. speak state = %ld, synthesis state = %ld", -[SFSpeechSynthesisTask speakState](self, "speakState"), -[SFSpeechSynthesisTask synthesisState](self, "synthesisState")];
      v29[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v10 = [v7 errorWithDomain:@"SFSpeechSynthesisError" code:300 userInfo:v9];
      [(SFSpeechSynthesisTask *)self setErrorIfNotNull:v10];
    }

    v11 = SFSSGetLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(SFSpeechSynthesisTask *)self taskIdentifer];
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_269079000, v11, OS_LOG_TYPE_INFO, "Cancel speak task, taskId=%@", buf, 0xCu);
    }

    [(SFSpeechSynthesisTask *)self cancelTask];
    v13 = [(SFSpeechSynthesisTask *)self playbackService];
    [v13 stop];
  }

  v6 = 0;
LABEL_17:
  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

- (SFSpeechSynthesisTask)initWithRequest:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = SFSpeechSynthesisTask;
  v6 = [(SFSpeechSynthesisTask *)&v23 init];
  v7 = v6;
  if (v6)
  {
    v6->_speakState = 0;
    v6->_synthesisState = 0;
    objc_storeStrong(&v6->_request, a3);
    v7->_bufferedDuration = 0.0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bufferedAudios = v7->_bufferedAudios;
    v7->_bufferedAudios = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bufferedAudioData = v7->_bufferedAudioData;
    v7->_bufferedAudioData = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    phonemeSequence = v7->_phonemeSequence;
    v7->_phonemeSequence = v12;

    v14 = [(SFSpeechSynthesisRequest *)v7->_request requestIdentifer];
    taskIdentifer = v7->_taskIdentifer;
    v7->_taskIdentifer = v14;

    v16 = objc_alloc_init(MEMORY[0x277CCA928]);
    synthesisStateCondition = v7->_synthesisStateCondition;
    v7->_synthesisStateCondition = v16;

    v18 = objc_alloc_init(SFSSInstrumentMetrics);
    instrumentMetrics = v7->_instrumentMetrics;
    v7->_instrumentMetrics = v18;

    v20 = [v5 text];
    [(SFSSInstrumentMetrics *)v7->_instrumentMetrics setText:v20];

    -[SFSSInstrumentMetrics setIsSpeechRequest:](v7->_instrumentMetrics, "setIsSpeechRequest:", [v5 type] == 0);
    v21 = [v5 clientBundleIdentifier];
    [(SFSSInstrumentMetrics *)v7->_instrumentMetrics setClientBundleIdentifier:v21];

    [(SFSSInstrumentMetrics *)v7->_instrumentMetrics setRequestCreatedTimestamp:mach_absolute_time()];
  }

  return v7;
}

@end