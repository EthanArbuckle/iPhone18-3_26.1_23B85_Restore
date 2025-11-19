@interface VTUISpeechSynthesizer
- (BOOL)isSpeaking;
- (VTUISpeechSynthesizer)init;
- (void)speak:(id)a3 completion:(id)a4;
- (void)speak:(id)a3 language:(id)a4 completion:(id)a5;
- (void)stopSpeaking;
@end

@implementation VTUISpeechSynthesizer

- (VTUISpeechSynthesizer)init
{
  v8.receiver = self;
  v8.super_class = VTUISpeechSynthesizer;
  v2 = [(VTUISpeechSynthesizer *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D613F8]);
    ttsSession = v2->_ttsSession;
    v2->_ttsSession = v3;

    v5 = objc_alloc_init(MEMORY[0x277D61448]);
    serviceSession = v2->_serviceSession;
    v2->_serviceSession = v5;
  }

  return v2;
}

- (void)speak:(id)a3 language:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(VTUISpeechSynthesizer *)self stopSpeaking];
  v11 = _Block_copy(v10);
  speakStringCompletion = self->_speakStringCompletion;
  self->_speakStringCompletion = v11;

  v13 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:v9 name:0];
  v14 = [objc_alloc(MEMORY[0x277D61458]) initWithText:v8 voice:v13];
  objc_initWeak(&location, v14);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__VTUISpeechSynthesizer_speak_language_completion___block_invoke;
  v17[3] = &unk_279E541F8;
  objc_copyWeak(&v18, &location);
  [v14 setDidStartSpeaking:v17];
  objc_storeStrong(&self->_speechRequest, v14);
  ttsSession = self->_ttsSession;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__VTUISpeechSynthesizer_speak_language_completion___block_invoke_5;
  v16[3] = &unk_279E54BC0;
  v16[4] = self;
  [(SiriTTSDaemonSession *)ttsSession speakWithSpeechRequest:v14 didFinish:v16];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __51__VTUISpeechSynthesizer_speak_language_completion___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained text];
    v7 = 136315394;
    v8 = "[VTUISpeechSynthesizer speak:language:completion:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_2728BC000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __51__VTUISpeechSynthesizer_speak_language_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[VTUISpeechSynthesizer speak:language:completion:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Speech synthesizer failed to speak TTS %@", &v9, 0x16u);
    }
  }

  v5 = *(*(a1 + 32) + 16);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)speak:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(VTUISpeechSynthesizer *)self stopSpeaking];
  v9 = _Block_copy(v8);
  speakAudioHintCompletion = self->_speakAudioHintCompletion;
  self->_speakAudioHintCompletion = v9;

  objc_initWeak(&location, v7);
  objc_storeStrong(&self->_audioHintRequest, a3);
  serviceSession = self->_serviceSession;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__VTUISpeechSynthesizer_speak_completion___block_invoke;
  v12[3] = &unk_279E54BE8;
  objc_copyWeak(&v13, &location);
  v12[4] = self;
  [(SiriTTSServiceSession *)serviceSession speakWithAudioHintRequest:v7 didFinish:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __42__VTUISpeechSynthesizer_speak_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  v5 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v12 = 136315394;
      v13 = "[VTUISpeechSynthesizer speak:completion:]_block_invoke";
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_2728BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Speech synthesizer failed to speak AudioHint Request %@", &v12, 0x16u);
    }
  }

  else if (v5)
  {
    v6 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = 136315394;
    v13 = "[VTUISpeechSynthesizer speak:completion:]_block_invoke";
    v14 = 2048;
    v15 = [WeakRetained dialogNumber];
    _os_log_impl(&dword_2728BC000, v6, OS_LOG_TYPE_DEFAULT, "%s Finished speaking AudioHint Request - dialogNumber #%ld", &v12, 0x16u);
  }

  v8 = *(*(a1 + 32) + 8);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    *(v9 + 8) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)stopSpeaking
{
  if (self->_audioRequest)
  {
    [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:?];
    audioRequest = self->_audioRequest;
    self->_audioRequest = 0;
  }

  if (self->_speechRequest)
  {
    [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:?];
    speechRequest = self->_speechRequest;
    self->_speechRequest = 0;
  }

  if (self->_audioHintRequest)
  {
    [(SiriTTSDaemonSession *)self->_ttsSession cancelWithRequest:?];
    audioHintRequest = self->_audioHintRequest;
    self->_audioHintRequest = 0;
  }

  speakAudioHintCompletion = self->_speakAudioHintCompletion;
  if (speakAudioHintCompletion)
  {
    speakAudioHintCompletion[2](speakAudioHintCompletion, 0);
    v7 = self->_speakAudioHintCompletion;
    self->_speakAudioHintCompletion = 0;
  }

  speakStringCompletion = self->_speakStringCompletion;
  if (speakStringCompletion)
  {
    speakStringCompletion[2](speakStringCompletion, 0);
    v9 = self->_speakStringCompletion;
    self->_speakStringCompletion = 0;
  }
}

- (BOOL)isSpeaking
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = v3;
  if (self->_audioHintRequest)
  {
    serviceSession = self->_serviceSession;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__VTUISpeechSynthesizer_isSpeaking__block_invoke;
    v13[3] = &unk_279E54C10;
    v15 = &v16;
    v14 = v3;
    [(SiriTTSServiceSession *)serviceSession getAudioPower:v13];
  }

  if (self->_speechRequest)
  {
    ttsSession = self->_ttsSession;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__VTUISpeechSynthesizer_isSpeaking__block_invoke_2;
    v10[3] = &unk_279E54C38;
    v12 = &v16;
    v11 = v4;
    [(SiriTTSDaemonSession *)ttsSession isSpeaking:v10];
  }

  v7 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v4, v7);
  v8 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v8;
}

@end