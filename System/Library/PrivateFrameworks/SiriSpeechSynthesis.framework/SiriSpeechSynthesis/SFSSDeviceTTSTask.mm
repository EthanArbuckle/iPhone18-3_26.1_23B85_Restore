@interface SFSSDeviceTTSTask
- (SFSSDeviceTTSTask)initWithRequest:(id)request;
- (SFSSTTSEngine)ttsEngine;
- (void)cancelTask;
- (void)startTask:(id)task;
@end

@implementation SFSSDeviceTTSTask

- (SFSSTTSEngine)ttsEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_ttsEngine);

  return WeakRetained;
}

- (void)cancelTask
{
  ttsEngine = [(SFSSDeviceTTSTask *)self ttsEngine];
  [ttsEngine stopSynthesis];
}

- (void)startTask:(id)task
{
  v25 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_ttsEngine);
  request = [(SFSpeechSynthesisTask *)self request];
  text = [request text];
  request2 = [(SFSpeechSynthesisTask *)self request];
  isPrivate = [request2 isPrivate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __31__SFSSDeviceTTSTask_startTask___block_invoke;
  v20[3] = &unk_279C4C378;
  objc_copyWeak(&v21, &location);
  v20[4] = self;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __31__SFSSDeviceTTSTask_startTask___block_invoke_17;
  v18 = &unk_279C4C3A0;
  objc_copyWeak(&v19, &location);
  v10 = [WeakRetained synthesizeText:text loggable:isPrivate synthesisBegin:v20 synthesisChunk:&v15 synthesisEnd:&__block_literal_global_1529];

  [(SFSpeechSynthesisTask *)self handleSynthesisEnd:v10, v15, v16, v17, v18];
  v11 = SFSSGetLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    error = [(SFSpeechSynthesisTask *)self error];
    *buf = 138412290;
    v24 = error;
    _os_log_impl(&dword_269079000, v11, OS_LOG_TYPE_INFO, "Device tts complete. error=%@", buf, 0xCu);
  }

  error2 = [(SFSpeechSynthesisTask *)self error];
  taskCopy[2](taskCopy, error2);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __31__SFSSDeviceTTSTask_startTask___block_invoke(uint64_t a1)
{
  v2 = SFSSGetLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_269079000, v2, OS_LOG_TYPE_INFO, "Received device tts begin.", &v13, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained ttsEngine];
  v5 = v4;
  if (v4)
  {
    [v4 asbd];
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  v6 = [*(a1 + 32) request];
  v7 = [v6 voice];
  v8 = [v7 voiceAsset];
  v9 = [*(a1 + 32) request];
  v10 = [v9 voice];
  v11 = [v10 resourceAsset];
  [WeakRetained handleSynthesisBegin:0 asbd:&v13 audioPlaybackBufferDuration:v8 voiceAsset:v11 resourceAsset:0.0];

  return 0;
}

uint64_t __31__SFSSDeviceTTSTask_startTask___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SFSSGetLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_269079000, v4, OS_LOG_TYPE_DEBUG, "Received device tts chunk.", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [v3 pcmData];

  [WeakRetained handleSynthesisChunks:v6];
  return 0;
}

uint64_t __31__SFSSDeviceTTSTask_startTask___block_invoke_18()
{
  v0 = SFSSGetLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_269079000, v0, OS_LOG_TYPE_INFO, "Received device tts end.", v2, 2u);
  }

  return 0;
}

- (SFSSDeviceTTSTask)initWithRequest:(id)request
{
  requestCopy = request;
  v5 = SFSSGetLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_269079000, v5, OS_LOG_TYPE_INFO, "Init device tts task.", buf, 2u);
  }

  v15.receiver = self;
  v15.super_class = SFSSDeviceTTSTask;
  v6 = [(SFSpeechSynthesisTask *)&v15 initWithRequest:requestCopy];
  if (v6)
  {
    v7 = +[SFSSTTSEngineFactory sharedInstance];
    voice = [requestCopy voice];
    voiceAsset = [voice voiceAsset];
    voice2 = [requestCopy voice];
    resourceAsset = [voice2 resourceAsset];
    v12 = [v7 getEngineByVoiceAsset:voiceAsset resourceAsset:resourceAsset];
    objc_storeWeak(&v6->_ttsEngine, v12);

    instrumentMetrics = [(SFSpeechSynthesisTask *)v6 instrumentMetrics];
    [instrumentMetrics setSourceOfTTS:2];
  }

  return v6;
}

@end