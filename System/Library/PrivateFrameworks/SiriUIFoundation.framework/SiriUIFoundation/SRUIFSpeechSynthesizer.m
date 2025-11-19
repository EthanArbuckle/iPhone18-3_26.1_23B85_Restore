@interface SRUIFSpeechSynthesizer
- (BOOL)_isSynthesisQueueEmpty;
- (BOOL)isSpeaking;
- (SRUIFSpeechSynthesizer)init;
- (SRUIFSpeechSynthesizerClientStateManagerDelegate)clientStateManagerDelegate;
- (SRUIFSpeechSynthesizerDelegate)delegate;
- (SiriTTSDaemonSession)ttsSession;
- (id)_activeTaskWithTTSRequest:(id)a3;
- (id)_filterVoices:(id)a3 gender:(id)a4;
- (int64_t)_genderForString:(id)a3;
- (int64_t)_speechFootPrintForVoice:(id)a3;
- (void)_cancelByCancellingActiveTasksOnly:(BOOL)a3 matching:(id)a4;
- (void)_duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5;
- (void)_enqueueText:(id)a3 audioData:(id)a4 identifier:(id)a5 sessionId:(id)a6 preferredVoice:(id)a7 language:(id)a8 gender:(id)a9 promptStyle:(id)a10 isPhonetic:(BOOL)a11 provisionally:(BOOL)a12 eligibleAfterDuration:(double)a13 delayed:(BOOL)a14 canUseServerTTS:(BOOL)a15 preparationIdentifier:(id)a16 shouldCache:(BOOL)a17 completion:(id)a18 analyticsContext:(id)a19 speakableContextInfo:(id)a20;
- (void)_findVoiceForLanguage:(id)a3 gender:(id)a4 completion:(id)a5;
- (void)_handleAudioData:(id)a3 completion:(id)a4;
- (void)_handleText:(id)a3 completion:(id)a4;
- (void)_prepareAudioSessionIfNeededWithCompletion:(id)a3;
- (void)_processProvisionalTasks;
- (void)_processTaskQueue;
- (void)cancel;
- (void)cancelProvisionalTasks;
- (void)cancelSynthesisForIdentifier:(id)a3;
- (void)dealloc;
- (void)didFinishAudioTask:(id)a3 withError:(id)a4;
- (void)didFinishSpeakTask:(id)a3 withError:(id)a4;
- (void)didStartAudioTask:(id)a3;
- (void)didStartSpeakTask:(id)a3;
- (void)duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5;
- (void)enqueueAudioData:(id)a3 identifier:(id)a4 sessionId:(id)a5 provisionally:(BOOL)a6 eligibleAfterDuration:(double)a7 completion:(id)a8;
- (void)enqueuePhaticWithCompletion:(id)a3;
- (void)enqueueSpeechSynthesisRequest:(id)a3;
- (void)enqueueText:(id)a3 identifier:(id)a4 sessionId:(id)a5 completion:(id)a6;
- (void)enqueueText:(id)a3 identifier:(id)a4 sessionId:(id)a5 language:(id)a6 gender:(id)a7 isPhonetic:(BOOL)a8 provisionally:(BOOL)a9 eligibleAfterDuration:(double)a10 delayed:(BOOL)a11 canUseServerTTS:(BOOL)a12 preparationIdentifier:(id)a13 completion:(id)a14 analyticsContext:(id)a15 speakableContextInfo:(id)a16;
- (void)enqueueText:(id)a3 identifier:(id)a4 sessionId:(id)a5 preferredVoice:(id)a6 language:(id)a7 gender:(id)a8 promptStyle:(id)a9 isPhonetic:(BOOL)a10 provisionally:(BOOL)a11 eligibleAfterDuration:(double)a12 delayed:(BOOL)a13 canUseServerTTS:(BOOL)a14 preparationIdentifier:(id)a15 completion:(id)a16 analyticsContext:(id)a17 speakableContextInfo:(id)a18;
- (void)invalidate;
- (void)invalidateOnMainThread;
- (void)isSynthesisQueueEmpty:(id)a3;
- (void)prewarmIfNeededKeepActive:(BOOL)a3;
- (void)processDelayedItem:(id)a3;
- (void)reloadSynthesisVoice;
- (void)setOutputVoice:(id)a3;
- (void)speakTask:(id)a3 didGenerateMetrics:(id)a4;
- (void)speakTask:(id)a3 didGenerateWordTimingInfo:(id)a4;
- (void)taskEligibilityDidChange:(id)a3;
@end

@implementation SRUIFSpeechSynthesizer

- (SRUIFSpeechSynthesizer)init
{
  v30 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SRUIFSpeechSynthesizer;
  v2 = [(SRUIFSpeechSynthesizer *)&v25 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    activeTasks = v2->_activeTasks;
    v2->_activeTasks = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    delayedTasks = v2->_delayedTasks;
    v2->_delayedTasks = v5;

    v7 = objc_alloc_init(MEMORY[0x277CEF370]);
    taskQueue = v2->_taskQueue;
    v2->_taskQueue = v7;

    [(AFQueue *)v2->_taskQueue setDelegate:v2];
    v9 = [MEMORY[0x277CEF368] sharedPreferences];
    v10 = [v9 outputVoice];
    outputVoice = v2->_outputVoice;
    v2->_outputVoice = v10;

    v12 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v2->_outputVoice;
      *buf = 136315394;
      v27 = "[SRUIFSpeechSynthesizer init]";
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_DEFAULT, "%s #tts outputVoice:%@", buf, 0x16u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    availableVoicesForLanguage = v2->_availableVoicesForLanguage;
    v2->_availableVoicesForLanguage = v14;

    v16 = dispatch_queue_create("SpeechSynthesisProcessingTasksQueue", 0);
    processingTasksQueue = v2->_processingTasksQueue;
    v2->_processingTasksQueue = v16;

    v18 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v19 = dispatch_queue_create("SpeechSynthesisPendingTasksQueue", v18);
    pendingTasksQueue = v2->_pendingTasksQueue;
    v2->_pendingTasksQueue = v19;

    v21 = dispatch_group_create();
    pendingTasksGroup = v2->_pendingTasksGroup;
    v2->_pendingTasksGroup = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v2;
}

- (SRUIFSpeechSynthesizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)cancel
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRUIFSpeechSynthesizer cancel]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts", &v5, 0xCu);
  }

  [(SRUIFSpeechSynthesizer *)self _cancelByCancellingActiveTasksOnly:0 matching:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (SiriTTSDaemonSession)ttsSession
{
  if (!self->_ttsSession && AFDeviceSupportsTTS())
  {
    v3 = objc_alloc_init(MEMORY[0x277D61400]);
    ttsSession = self->_ttsSession;
    self->_ttsSession = v3;
  }

  v5 = self->_ttsSession;

  return v5;
}

- (SRUIFSpeechSynthesizerClientStateManagerDelegate)clientStateManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_clientStateManagerDelegate);

  return WeakRetained;
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(dispatch_group_t *)WeakRetained _activeTasks];
      v7 = [v6 count];
      v8 = [(dispatch_group_t *)WeakRetained _taskQueue];
      *buf = 136315650;
      v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
      v53 = 2048;
      v54 = v7;
      v55 = 2048;
      v56 = [v8 count];
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts activeTasks=%tu taskQueue=%tu", buf, 0x20u);
    }

    v9 = [(dispatch_group_t *)WeakRetained _taskQueue];
    v10 = [(dispatch_group_t *)WeakRetained _activeTasks];
    if ([v10 count])
    {
LABEL_5:
    }

    else
    {
      *&v11 = 136315395;
      v44 = v11;
      while (1)
      {
        v13 = [v9 count] == 0;

        if (v13)
        {
          break;
        }

        [(dispatch_group_t *)WeakRetained reloadSynthesisVoice];
        [(dispatch_group_t *)WeakRetained _processProvisionalTasks];
        v10 = [v9 frontObject];
        v14 = [v10 canUseServerTTS];
        v15 = *v3;
        v16 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = v15;
            v18 = [v10 text];
            v19 = [v10 identifier];
            *buf = 136315650;
            v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
            v53 = 2112;
            v54 = v18;
            v55 = 2112;
            v56 = v19;
            _os_log_impl(&dword_26951F000, v17, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Processing task text=%@ identifier=%@", buf, 0x20u);
          }
        }

        else if (v16)
        {
          v20 = v15;
          v21 = [v10 text];
          v22 = [v10 identifier];
          *buf = 136315651;
          v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
          v53 = 2117;
          v54 = v21;
          v55 = 2112;
          v56 = v22;
          _os_log_impl(&dword_26951F000, v20, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Processing task text=%{sensitive}@ identifier=%@", buf, 0x20u);
        }

        if (([v10 isEligibleForSynthesis] & 1) == 0)
        {
          v43 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
            v53 = 2112;
            v54 = v10;
            _os_log_impl(&dword_26951F000, v43, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] task not eligible: %@", buf, 0x16u);
          }

          goto LABEL_5;
        }

        v23 = [v9 dequeueObject];
        v24 = [v10 audioData];

        if (v24)
        {
          dispatch_group_enter(WeakRetained[5]);
          v25 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v25;
            v27 = [v10 audioData];
            *buf = 136315394;
            v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
            v53 = 2112;
            v54 = v27;
            _os_log_impl(&dword_26951F000, v26, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Audio Data:%@", buf, 0x16u);
          }

          v47[0] = MEMORY[0x277D85DD0];
          v47[1] = 3221225472;
          v47[2] = __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_99;
          v47[3] = &unk_279C61870;
          objc_copyWeak(&v48, (a1 + 32));
          [(dispatch_group_t *)WeakRetained _handleAudioData:v10 completion:v47];
          v28 = WeakRetained[5];
          v29 = dispatch_time(0, 120000000000);
          dispatch_group_wait(v28, v29);
          objc_destroyWeak(&v48);
        }

        else
        {
          v30 = [v10 text];

          if (v30)
          {
            v31 = [v10 canUseServerTTS];
            v32 = *v3;
            v33 = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
            if (v31)
            {
              if (v33)
              {
                v34 = v32;
                v35 = [v10 text];
                *buf = 136315394;
                v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke_2";
                v53 = 2112;
                v54 = v35;
                _os_log_impl(&dword_26951F000, v34, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%@", buf, 0x16u);
              }
            }

            else if (v33)
            {
              v37 = v32;
              v38 = [v10 text];
              *buf = v44;
              v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
              v53 = 2117;
              v54 = v38;
              _os_log_impl(&dword_26951F000, v37, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%{sensitive}@", buf, 0x16u);
            }

            dispatch_group_enter(WeakRetained[5]);
            v45[0] = MEMORY[0x277D85DD0];
            v45[1] = 3221225472;
            v45[2] = __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_101;
            v45[3] = &unk_279C61870;
            objc_copyWeak(&v46, (a1 + 32));
            [(dispatch_group_t *)WeakRetained _handleText:v10 completion:v45];
            v39 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke_2";
              _os_log_impl(&dword_26951F000, v39, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Pending Tasks Group Wait", buf, 0xCu);
            }

            v40 = WeakRetained[5];
            v41 = dispatch_time(0, 120000000000);
            dispatch_group_wait(v40, v41);
            v42 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v52 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
              _os_log_impl(&dword_26951F000, v42, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Pending Tasks Group Complete", buf, 0xCu);
            }

            objc_destroyWeak(&v46);
          }

          else
          {
            v36 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
            {
              __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_cold_1(v49, &v50, v36);
            }

            [v10 executeCompletion];
          }
        }

        v10 = [(dispatch_group_t *)WeakRetained _activeTasks];
        if ([v10 count])
        {
          goto LABEL_5;
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_processTaskQueue
{
  objc_initWeak(&location, self);
  processingTasksQueue = self->_processingTasksQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke;
  v4[3] = &unk_279C61870;
  objc_copyWeak(&v5, &location);
  dispatch_async(processingTasksQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isSynthesisQueueEmpty
{
  v3 = [(SRUIFSpeechSynthesizer *)self _activeTasks];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SRUIFSpeechSynthesizer *)self _taskQueue];
    v4 = [v5 count] == 0;
  }

  return v4;
}

- (void)reloadSynthesisVoice
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEF368] sharedPreferences];
  v4 = [v3 outputVoice];

  if (v4)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      outputVoice = self->_outputVoice;
      v7 = v5;
      v8 = [(AFVoiceInfo *)outputVoice name];
      v9 = [v4 name];
      v11 = 136315650;
      v12 = "[SRUIFSpeechSynthesizer reloadSynthesisVoice]";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Output voice reload request %@ -> %@", &v11, 0x20u);
    }

    [(SRUIFSpeechSynthesizer *)self setOutputVoice:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processProvisionalTasks
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(SRUIFSpeechSynthesizer *)self _taskQueue];
  v3 = [v2 frontObject];
  if ([v3 isProvisional])
  {
    v5 = MEMORY[0x277CEF098];
    *&v4 = 136315394;
    v11 = v4;
    do
    {
      if ([v2 count] <= 1)
      {
        break;
      }

      v6 = [v2 objectAtIndex:1];
      v7 = [v6 isEligibleForProcessing];

      if (!v7)
      {
        goto LABEL_11;
      }

      v8 = [v2 dequeueObject];
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v11;
        v13 = "[SRUIFSpeechSynthesizer _processProvisionalTasks]";
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Discarding %@; it is provisional and there are other tasks enqueued", buf, 0x16u);
      }

      if (![v8 synthesisResult])
      {
        [v8 setSynthesisResult:2];
      }

      [v8 executeCompletion];

      v3 = [v2 frontObject];
    }

    while (([v3 isProvisional] & 1) != 0);
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelProvisionalTasks
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SRUIFSpeechSynthesizer cancelProvisionalTasks]";
    v7 = 2112;
    v8 = &__block_literal_global_23;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts predicate=%@: { [task isProvisional] }", &v5, 0x16u);
  }

  [(SRUIFSpeechSynthesizer *)self _cancelByCancellingActiveTasksOnly:0 matching:&__block_literal_global_23];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)prewarmIfNeededKeepActive:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[SRUIFSpeechSynthesizer prewarmIfNeededKeepActive:]";
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts", &v13, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277D61470]);
  v7 = [(AFVoiceInfo *)self->_outputVoice languageCode];
  v8 = [(AFVoiceInfo *)self->_outputVoice name];
  v9 = [v6 initWithLanguage:v7 name:v8];

  [v9 setFootprint:{-[SRUIFSpeechSynthesizer _speechFootPrintForVoice:](self, "_speechFootPrintForVoice:", self->_outputVoice)}];
  v10 = [objc_alloc(MEMORY[0x277D61460]) initWithText:&stru_287A10D80 voice:v9];
  v11 = [(SRUIFSpeechSynthesizer *)self ttsSession];
  [v11 prewarmWithRequest:v10 didFinish:&__block_literal_global_1];

  if (v3 && ([(SiriTTSDaemonSession *)self->_ttsSession keepActive]& 1) == 0)
  {
    [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:1];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __52__SRUIFSpeechSynthesizer_prewarmIfNeededKeepActive___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "[SRUIFSpeechSynthesizer prewarmIfNeededKeepActive:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Unable to prewarm session, error=%@", &v5, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SRUIFSpeechSynthesizer dealloc]";
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SRUIFSpeechSynthesizer;
  [(SRUIFSpeechSynthesizer *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSpeaking
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = [(SRUIFSpeechSynthesizer *)self ttsSession];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SRUIFSpeechSynthesizer_isSpeaking__block_invoke;
  v8[3] = &unk_279C61C90;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 isSpeaking:v8];

  v6 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v5, v6);
  LOBYTE(v4) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v4;
}

- (void)isSynthesisQueueEmpty:(id)a3
{
  v4 = a3;
  processingTasksQueue = self->_processingTasksQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke;
  v7[3] = &unk_279C61CE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(processingTasksQueue, v7);
}

void __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isSynthesisQueueEmpty];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke_2;
  v3[3] = &unk_279C61CB8;
  v4 = *(a1 + 40);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __48__SRUIFSpeechSynthesizer_isSynthesisQueueEmpty___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke;
  v11[3] = &unk_279C619E0;
  v12 = v8;
  v9 = v8;
  *&v10 = a3;
  [(SRUIFSpeechSynthesizer *)self _duckTTSVolumeTo:v11 rampTime:v10 completion:a4];
}

void __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke_2;
  v6[3] = &unk_279C61D08;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __62__SRUIFSpeechSynthesizer_duckTTSVolumeTo_rampTime_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_duckTTSVolumeTo:(float)a3 rampTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  ttsSession = self->_ttsSession;
  if (ttsSession)
  {
    *&v9 = a3;
    [(SiriTTSDaemonSession *)ttsSession adjustVolume:v8 rampTime:v9 didFinish:a4];
  }

  else if (v8)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__0;
    v15[4] = __Block_byref_object_dispose__0;
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v16 = [v11 initWithDomain:*MEMORY[0x277CEF588] code:6 userInfo:0];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__SRUIFSpeechSynthesizer__duckTTSVolumeTo_rampTime_completion___block_invoke;
    v12[3] = &unk_279C61D30;
    v13 = v8;
    v14 = v15;
    dispatch_async(MEMORY[0x277D85CD0], v12);

    _Block_object_dispose(v15, 8);
  }
}

- (void)cancelSynthesisForIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SRUIFSpeechSynthesizer_cancelSynthesisForIdentifier___block_invoke;
  aBlock[3] = &unk_279C61D58;
  v5 = v4;
  v12 = v5;
  v6 = _Block_copy(aBlock);
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = _Block_copy(v6);
    *buf = 136315650;
    v14 = "[SRUIFSpeechSynthesizer cancelSynthesisForIdentifier:]";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts predicate=%@: { [task identifier] == %@ }", buf, 0x20u);
  }

  [(SRUIFSpeechSynthesizer *)self _cancelByCancellingActiveTasksOnly:0 matching:v6];

  v10 = *MEMORY[0x277D85DE8];
}

BOOL __55__SRUIFSpeechSynthesizer_cancelSynthesisForIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_cancelByCancellingActiveTasksOnly:(BOOL)a3 matching:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  processingTasksQueue = self->_processingTasksQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke;
  v9[3] = &unk_279C61DE8;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(processingTasksQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v7 = v4;
      v8 = _Block_copy(v6);
      *buf = 136315650;
      v38 = "[SRUIFSpeechSynthesizer _cancelByCancellingActiveTasksOnly:matching:]_block_invoke";
      v39 = 1024;
      v40 = v5;
      v41 = 2112;
      v42 = v8;
      _os_log_impl(&dword_26951F000, v7, OS_LOG_TYPE_DEFAULT, "%s #tts cancelActiveTasksOnly=%d; predicate=%@", buf, 0x1Cu);
    }

    if (*(a1 + 48))
    {
      v9 = 0;
    }

    else if (*(a1 + 32))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = [WeakRetained _taskQueue];
      v12 = [v11 dequeueAllObjects];

      if ([v12 count])
      {
        v13 = 0;
        do
        {
          v14 = [v12 objectAtIndex:v13];
          if ((*(*(a1 + 32) + 16))())
          {
            [v14 setSynthesisResult:3];
            [v10 addObject:v14];
          }

          else
          {
            v15 = [WeakRetained _taskQueue];
            [v15 enqueueObject:v14];
          }

          ++v13;
        }

        while ([v12 count] > v13);
      }

      v9 = [v10 copy];
    }

    else
    {
      v16 = [WeakRetained _taskQueue];
      v9 = [v16 dequeueAllObjects];

      [v9 enumerateObjectsUsingBlock:&__block_literal_global_27];
    }

    v17 = [WeakRetained _activeTasks];
    v18 = [v17 copy];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke_2;
    v34[3] = &unk_279C61DC0;
    v35 = *(a1 + 32);
    [v18 enumerateObjectsUsingBlock:v34];
    v19 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[SRUIFSpeechSynthesizer _cancelByCancellingActiveTasksOnly:matching:]_block_invoke_3";
      _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_DEFAULT, "%s #tts Canceling speech synthesis", buf, 0xCu);
    }

    if (WeakRetained[13])
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v31;
        do
        {
          v24 = 0;
          do
          {
            if (*v31 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v30 + 1) + 8 * v24);
            v26 = *(a1 + 32);
            if (!v26 || (*(v26 + 16))(v26, *(*(&v30 + 1) + 8 * v24)))
            {
              v27 = WeakRetained[13];
              v28 = [v25 ttsSessionRequest];
              [v27 cancelWithRequest:v28];
            }

            ++v24;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v22);
      }
    }

    [v9 makeObjectsPerformSelector:{sel_executeCompletion, v30}];
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __70__SRUIFSpeechSynthesizer__cancelByCancellingActiveTasksOnly_matching___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(v4, v3), v3 = v7, v5))
  {
    [v3 setSynthesisResult:3];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)invalidateOnMainThread
{
  [(SiriTTSDaemonSession *)self->_ttsSession setKeepActive:0];

  [(SRUIFSpeechSynthesizer *)self cancel];
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[SRUIFSpeechSynthesizer invalidate]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts Invalidating %@", &v5, 0x16u);
  }

  [(SRUIFSpeechSynthesizer *)self performSelectorOnMainThread:sel_invalidateOnMainThread withObject:0 waitUntilDone:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)taskEligibilityDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRUIFSpeechSynthesizer taskEligibilityDidChange:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts task=%@", &v7, 0x16u);
  }

  [(SRUIFSpeechSynthesizer *)self _processTaskQueue];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didStartAudioTask:(id)a3
{
  v4 = [a3 identifier];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SRUIFSpeechSynthesizer_didStartAudioTask___block_invoke;
  v6[3] = &unk_279C61E10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __44__SRUIFSpeechSynthesizer_didStartAudioTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 speechSynthesisDidStartSpeakingWithIdentifier:*(a1 + 40)];
}

- (void)didFinishAudioTask:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  objc_initWeak(&location, self);
  processingTasksQueue = self->_processingTasksQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke;
  v11[3] = &unk_279C61820;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(processingTasksQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = [v3 ttsSessionRequest];
    v5 = [v4 description];

    v6 = [WeakRetained clientStateManagerDelegate];
    [v6 notifyClientStateManagerTransactionBegan:WeakRetained];

    v7 = MEMORY[0x277CEF098];
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v29 = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
      v30 = 2112;
      v31 = v5;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts request=%@ error=%@", buf, 0x20u);
    }

    if (v3)
    {
      v10 = [WeakRetained _activeTasks];
      [v10 removeObject:v3];
    }

    else
    {
      v11 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }

    v20 = *(a1 + 40);
    v19 = (a1 + 40);
    if (v20)
    {
      [v3 setSynthesisError:?];
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_2(v5, v19);
      }
    }

    else
    {
      v21 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v29 = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&dword_26951F000, v21, OS_LOG_TYPE_DEFAULT, "%s #tts Finished speaking presynthesized audio %@", buf, 0x16u);
      }
    }

    if (![v3 synthesisResult])
    {
      if (*v19)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      [v3 setSynthesisResult:v22];
    }

    [v3 executeCompletion];
    [WeakRetained _processTaskQueue];
    v23 = WeakRetained[3];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_33;
    v26[3] = &unk_279C61E10;
    v26[4] = WeakRetained;
    v27 = v3;
    v24 = v3;
    dispatch_async(v23, v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_33(uint64_t a1)
{
  if (![*(*(a1 + 32) + 88) count])
  {
    v2 = [*(a1 + 32) clientStateManagerDelegate];
    [v2 notifyClientStateManagerSpeakingEnded:*(a1 + 32)];
  }

  v3 = [*(a1 + 32) clientStateManagerDelegate];
  [v3 notifyClientStateManagerTransactionEnded:*(a1 + 32)];

  LOBYTE(v3) = [*(a1 + 32) _isSynthesisQueueEmpty];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_2;
  block[3] = &unk_279C61E38;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) identifier];
  [v3 speechSynthesisDidStopSpeakingWithIdentifier:v2 queueIsEmpty:*(a1 + 48)];
}

- (void)didStartSpeakTask:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 ttsSessionRequest];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[SRUIFSpeechSynthesizer didStartSpeakTask:]";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #tts Started:%@", buf, 0x16u);
  }

  v7 = [v4 identifier];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__SRUIFSpeechSynthesizer_didStartSpeakTask___block_invoke;
  v10[3] = &unk_279C61E10;
  v10[4] = self;
  v11 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __44__SRUIFSpeechSynthesizer_didStartSpeakTask___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 speechSynthesisDidStartSpeakingWithIdentifier:*(a1 + 40)];
}

- (void)didFinishSpeakTask:(id)a3 withError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 ttsSessionRequest];
  v9 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]";
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Finished %@", buf, 0x16u);
  }

  kdebug_trace();
  objc_initWeak(buf, self);
  processingTasksQueue = self->_processingTasksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke;
  block[3] = &unk_279C61E60;
  objc_copyWeak(&v20, buf);
  v16 = v7;
  v17 = v6;
  v18 = v8;
  v19 = self;
  v11 = v8;
  v12 = v6;
  v13 = v7;
  dispatch_async(processingTasksQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
  v14 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    goto LABEL_38;
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v5 canUseServerTTS];
  v7 = MEMORY[0x277CEF098];
  v8 = *MEMORY[0x277CEF098];
  v9 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    v11 = [v5 text];
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    *buf = 136316162;
    v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v53 = 2112;
    v54 = v11;
    v55 = 2112;
    v56 = v12;
    v57 = 2112;
    v58 = v13;
    v59 = 1024;
    v60 = v4 == 0;
    v14 = "%s #tts [Post] text=%@ error=%@ request=%@ finishedSpeaking=%i";
  }

  else
  {
    if (!v9)
    {
      goto LABEL_8;
    }

    v10 = v8;
    v11 = [v5 text];
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    *buf = 136316163;
    v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v53 = 2117;
    v54 = v11;
    v55 = 2112;
    v56 = v15;
    v57 = 2112;
    v58 = v16;
    v59 = 1024;
    v60 = v4 == 0;
    v14 = "%s #tts [Post] text=%{sensitive}@ error=%@ request=%@ finishedSpeaking=%i";
  }

  _os_log_impl(&dword_26951F000, v10, OS_LOG_TYPE_DEFAULT, v14, buf, 0x30u);

LABEL_8:
  v17 = [WeakRetained clientStateManagerDelegate];
  [v17 notifyClientStateManagerTransactionBegan:WeakRetained];

  v18 = *v7;
  v19 = *v7;
  if (v5)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v53 = 2112;
      v54 = v5;
      _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Removing Task: %@", buf, 0x16u);
    }

    v20 = [WeakRetained _activeTasks];
    [v20 removeObject:v5];
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_1(v18, v21, v22, v23, v24, v25, v26, v27);
  }

  if (!*v3)
  {
    goto LABEL_28;
  }

  [v5 setSynthesisError:?];
  v28 = [SRUIFSpeechSynthesisUtility isSpeechSynthesisErrorUserCancelled:*v3];
  v29 = [v5 canUseServerTTS];
  v30 = *v7;
  v31 = *v7;
  if (!v28)
  {
    v37 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v37)
      {
        __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_3(v30, v5, (a1 + 32));
      }
    }

    else if (v37)
    {
      __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_2(v30, v5, (a1 + 32));
    }

    goto LABEL_28;
  }

  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    if (v32)
    {
      v33 = v30;
      v34 = [v5 text];
      v35 = *v3;
      *buf = 136315650;
      v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v53 = 2112;
      v54 = v34;
      v55 = 2114;
      v56 = v35;
      v36 = "%s #tts [Post] Synthesis was cancelled, marking speech request finished %@: %{public}@";
LABEL_24:
      _os_log_impl(&dword_26951F000, v33, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);
    }
  }

  else if (v32)
  {
    v33 = v30;
    v34 = [v5 text];
    v38 = *v3;
    *buf = 136315651;
    v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v53 = 2117;
    v54 = v34;
    v55 = 2114;
    v56 = v38;
    v36 = "%s #tts [Post] Synthesis was cancelled, marking speech request finished %{sensitive}@: %{public}@";
    goto LABEL_24;
  }

  [v5 setSynthesisResult:1];
LABEL_28:
  if (![v5 synthesisResult])
  {
    v39 = *v7;
    v40 = os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    if (v40)
    {
      v42 = v39;
      v43 = SRUIFSpeechSynthesisResultGetName(v41);
      *buf = 136315394;
      v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v53 = 2112;
      v54 = v43;
      _os_log_impl(&dword_26951F000, v42, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Marking result %@", buf, 0x16u);
    }

    [v5 setSynthesisResult:v41];
  }

  v44 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v52 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
    v53 = 2112;
    v54 = v5;
    _os_log_impl(&dword_26951F000, v44, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Calling completion for Task: %@", buf, 0x16u);
  }

  [v5 executeCompletion];
  [WeakRetained _processTaskQueue];
  v45 = WeakRetained[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35;
  block[3] = &unk_279C61820;
  objc_copyWeak(&v50, (a1 + 64));
  block[4] = *(a1 + 56);
  v49 = v5;
  v46 = v5;
  dispatch_async(v45, block);

  objc_destroyWeak(&v50);
LABEL_38:

  v47 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *MEMORY[0x277CEF098];
  if (WeakRetained)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v4 = WeakRetained[11];
      v5 = v3;
      *buf = 136315394;
      v21 = "[SRUIFSpeechSynthesizer didFinishSpeakTask:withError:]_block_invoke";
      v22 = 2048;
      v23 = [v4 count];
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Active Task count: %tu", buf, 0x16u);
    }

    if (![WeakRetained[11] count])
    {
      v6 = [WeakRetained clientStateManagerDelegate];
      [v6 notifyClientStateManagerSpeakingEnded:*(a1 + 32)];
    }

    v7 = [WeakRetained clientStateManagerDelegate];
    [v7 notifyClientStateManagerTransactionEnded:*(a1 + 32)];

    LOBYTE(v7) = [WeakRetained _isSynthesisQueueEmpty];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_36;
    block[3] = &unk_279C617F8;
    objc_copyWeak(&v18, (a1 + 48));
    v17 = *(a1 + 40);
    v19 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v18);
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35_cold_1(v3, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  v3 = [*(a1 + 32) identifier];
  [v2 speechSynthesisDidStopSpeakingWithIdentifier:v3 queueIsEmpty:*(a1 + 48)];
}

- (void)speakTask:(id)a3 didGenerateMetrics:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 canUseServerTTS];
  v9 = MEMORY[0x277CEF098];
  v10 = *MEMORY[0x277CEF098];
  v11 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v10;
    v13 = [v6 text];
    v14 = [v6 ttsSessionRequest];
    *buf = 136315650;
    v61 = "[SRUIFSpeechSynthesizer speakTask:didGenerateMetrics:]";
    v62 = 2112;
    v63 = v13;
    v64 = 2112;
    v65 = v14;
    v15 = "%s #tts [Post] text=%@ request=%@";
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v10;
    v13 = [v6 text];
    v14 = [v6 ttsSessionRequest];
    *buf = 136315651;
    v61 = "[SRUIFSpeechSynthesizer speakTask:didGenerateMetrics:]";
    v62 = 2117;
    v63 = v13;
    v64 = 2112;
    v65 = v14;
    v15 = "%s #tts [Post] text=%{sensitive}@ request=%@";
  }

  _os_log_impl(&dword_26951F000, v12, OS_LOG_TYPE_DEFAULT, v15, buf, 0x20u);

LABEL_7:
  v16 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v6 ttsSessionRequest];
    *buf = 136315394;
    v61 = "[SRUIFSpeechSynthesizer speakTask:didGenerateMetrics:]";
    v62 = 2112;
    v63 = v18;
    _os_log_impl(&dword_26951F000, v17, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Finished Metrics generated %@", buf, 0x16u);
  }

  if (v7)
  {
    v48 = self;
    v19 = [v6 analyticsContext];
    v20 = v19;
    v21 = MEMORY[0x277CBEC10];
    if (v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    v23 = v22;

    v24 = [MEMORY[0x277CEF158] sharedAnalytics];
    v25 = [MEMORY[0x277CCAD78] UUID];
    v26 = [v25 UUIDString];

    v49 = [MEMORY[0x277CBEB38] dictionary];
    [v49 setObject:v26 forKey:@"id"];
    v58 = @"id";
    v59 = v26;
    v47 = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    if (AFIsInternalInstall())
    {
      v56 = @"text";
      v28 = [v6 text];
      v29 = v28;
      v30 = &stru_287A10D80;
      if (v28)
      {
        v30 = v28;
      }

      v57 = v30;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    }

    v31 = [v7 requestCreatedTime];
    if (v31)
    {
      v32 = v31;
      v55[0] = v49;
      v55[1] = v23;
      v55[2] = v21;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
      v34 = AFAnalyticsContextsMerge();
      [v24 logEventWithType:1801 machAbsoluteTime:v32 context:v34];
    }

    v35 = [v7 speechBeginTime];
    if (v35)
    {
      v54[0] = v27;
      v54[1] = v23;
      v54[2] = v21;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
      v37 = AFAnalyticsContextsMerge();
      [v24 logEventWithType:1802 machAbsoluteTime:v35 context:v37];
    }

    v38 = [v7 speechEndTime];
    if (v38)
    {
      v53[0] = v27;
      v53[1] = v23;
      v53[2] = v21;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
      v40 = AFAnalyticsContextsMerge();
      [v24 logEventWithType:1803 machAbsoluteTime:v38 context:v40];
    }

    v41 = objc_alloc(MEMORY[0x277CEF4A8]);
    v42 = [v6 text];
    v43 = [v41 initWithUtterance:v42 beginTimestamp:v35 endTimestamp:v38];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__SRUIFSpeechSynthesizer_speakTask_didGenerateMetrics___block_invoke;
    block[3] = &unk_279C61E88;
    block[4] = v48;
    v51 = v43;
    v52 = v6;
    v44 = v43;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v45 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      [SRUIFSpeechSynthesizer speakTask:v45 didGenerateMetrics:v6];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_speakTask_didGenerateMetrics___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) identifier];
    [v4 speechSynthesisDidFinish:v5 withIdentifier:v6];
  }

  v7 = [*(a1 + 32) delegate];
  [v7 speechSynthesisDidFinish:*(a1 + 40)];
}

- (void)speakTask:(id)a3 didGenerateWordTimingInfo:(id)a4
{
  v6 = a4;
  v7 = [a3 identifier];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SRUIFSpeechSynthesizer_speakTask_didGenerateWordTimingInfo___block_invoke;
  block[3] = &unk_279C61E88;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__SRUIFSpeechSynthesizer_speakTask_didGenerateWordTimingInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 speechSynthesisDidReceiveWordTimingInfo:*(a1 + 40) withIdentifier:*(a1 + 48)];
  }
}

- (void)setOutputVoice:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  outputVoice = self->_outputVoice;
  p_outputVoice = &self->_outputVoice;
  v6 = outputVoice;
  if (!outputVoice || ([(AFVoiceInfo *)v6 isEqual:v5]& 1) == 0)
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[SRUIFSpeechSynthesizer setOutputVoice:]";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts Updating synthesizer voice to %@", &v12, 0x16u);
    }

    objc_storeStrong(p_outputVoice, a3);
    v10 = [MEMORY[0x277CEF368] sharedPreferences];
    [v10 synchronizeVoiceServicesLanguageCode];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)enqueueSpeechSynthesisRequest:(id)a3
{
  v3 = a3;
  v22 = [v3 text];
  v20 = [v3 audioData];
  v19 = [v3 identifier];
  v18 = [v3 sessionId];
  v17 = [v3 language];
  v16 = [v3 gender];
  v4 = [v3 promptStyle];
  v5 = [v3 isPhonetic];
  v6 = [v3 provisional];
  v7 = [v3 eligibleAfterDuration];
  v8 = [v3 delayed];
  v9 = [v3 canUseServerTTS];
  v10 = [v3 preparationIdentifier];
  v11 = [v3 completion];
  v12 = [v3 analyticsContext];
  v13 = [v3 speakableContextInfo];

  LOBYTE(v15) = 1;
  BYTE3(v14) = v9;
  BYTE2(v14) = v8;
  BYTE1(v14) = v6;
  LOBYTE(v14) = v5;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:v22 identifier:v20 sessionId:v19 preferredVoice:v18 language:0 gender:v17 promptStyle:v7 isPhonetic:v16 provisionally:v4 eligibleAfterDuration:v14 delayed:v10 canUseServerTTS:v15 preparationIdentifier:v11 shouldCache:v12 completion:v13 analyticsContext:? speakableContextInfo:?];
}

- (void)enqueueText:(id)a3 identifier:(id)a4 sessionId:(id)a5 language:(id)a6 gender:(id)a7 isPhonetic:(BOOL)a8 provisionally:(BOOL)a9 eligibleAfterDuration:(double)a10 delayed:(BOOL)a11 canUseServerTTS:(BOOL)a12 preparationIdentifier:(id)a13 completion:(id)a14 analyticsContext:(id)a15 speakableContextInfo:(id)a16
{
  LOBYTE(v17) = 1;
  WORD1(v16) = __PAIR16__(a12, a11);
  BYTE1(v16) = a9;
  LOBYTE(v16) = a8;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:a3 identifier:0 sessionId:a4 preferredVoice:a5 language:0 gender:a6 promptStyle:a10 isPhonetic:a7 provisionally:0 eligibleAfterDuration:v16 delayed:a13 canUseServerTTS:v17 preparationIdentifier:a14 shouldCache:a15 completion:a16 analyticsContext:? speakableContextInfo:?];
}

- (void)enqueueText:(id)a3 identifier:(id)a4 sessionId:(id)a5 preferredVoice:(id)a6 language:(id)a7 gender:(id)a8 promptStyle:(id)a9 isPhonetic:(BOOL)a10 provisionally:(BOOL)a11 eligibleAfterDuration:(double)a12 delayed:(BOOL)a13 canUseServerTTS:(BOOL)a14 preparationIdentifier:(id)a15 completion:(id)a16 analyticsContext:(id)a17 speakableContextInfo:(id)a18
{
  LOBYTE(v19) = 1;
  WORD1(v18) = __PAIR16__(a14, a13);
  LOWORD(v18) = __PAIR16__(a11, a10);
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:a3 identifier:0 sessionId:a4 preferredVoice:a5 language:a6 gender:a7 promptStyle:a12 isPhonetic:a8 provisionally:a9 eligibleAfterDuration:v18 delayed:a15 canUseServerTTS:v19 preparationIdentifier:a16 shouldCache:a17 completion:a18 analyticsContext:? speakableContextInfo:?];
}

- (void)enqueueAudioData:(id)a3 identifier:(id)a4 sessionId:(id)a5 provisionally:(BOOL)a6 eligibleAfterDuration:(double)a7 completion:(id)a8
{
  LOBYTE(v9) = 1;
  WORD1(v8) = 256;
  BYTE1(v8) = a6;
  LOBYTE(v8) = 0;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:0 identifier:a3 sessionId:a4 preferredVoice:a5 language:0 gender:0 promptStyle:a7 isPhonetic:0 provisionally:0 eligibleAfterDuration:v8 delayed:0 canUseServerTTS:v9 preparationIdentifier:a8 shouldCache:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

- (void)enqueuePhaticWithCompletion:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[SRUIFSpeechSynthesizer enqueuePhaticWithCompletion:]";
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #phatic [Pre]", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  LOBYTE(v10) = 0;
  LODWORD(v9) = 0x1000000;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:@"\x1B\\mrk=play=phat\\"" identifier:0 sessionId:v7 preferredVoice:v7 language:0 gender:0 promptStyle:0.0 isPhonetic:0 provisionally:0 eligibleAfterDuration:v9 delayed:0 canUseServerTTS:v10 preparationIdentifier:v4 shouldCache:0 completion:0 analyticsContext:? speakableContextInfo:?];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_prepareAudioSessionIfNeededWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SRUIFSpeechSynthesizer *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SRUIFSpeechSynthesizer *)self delegate];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__SRUIFSpeechSynthesizer__prepareAudioSessionIfNeededWithCompletion___block_invoke;
    v10[3] = &unk_279C61EB0;
    v11 = v4;
    [v7 speechSynthesisRequestsForceAudioSessionActiveWithCompletion:v10];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[SRUIFSpeechSynthesizer _prepareAudioSessionIfNeededWithCompletion:]";
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts delegate has not implemented speechSynthesisRequestsForceAudioSessionActiveWithCompletion:; assuming that audio session preparation is not required", buf, 0xCu);
    }

    (*(v4 + 2))(v4, 0, 1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __69__SRUIFSpeechSynthesizer__prepareAudioSessionIfNeededWithCompletion___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[SRUIFSpeechSynthesizer _prepareAudioSessionIfNeededWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts audio session opened successfully", &v10, 0xCu);
    }

    result = (*(*(a1 + 32) + 16))();
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 32) + 16);
    v9 = *MEMORY[0x277D85DE8];

    return v8();
  }

  return result;
}

- (void)_enqueueText:(id)a3 audioData:(id)a4 identifier:(id)a5 sessionId:(id)a6 preferredVoice:(id)a7 language:(id)a8 gender:(id)a9 promptStyle:(id)a10 isPhonetic:(BOOL)a11 provisionally:(BOOL)a12 eligibleAfterDuration:(double)a13 delayed:(BOOL)a14 canUseServerTTS:(BOOL)a15 preparationIdentifier:(id)a16 shouldCache:(BOOL)a17 completion:(id)a18 analyticsContext:(id)a19 speakableContextInfo:(id)a20
{
  v72 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v52 = a4;
  v51 = a5;
  v58 = a6;
  v57 = a7;
  v56 = a8;
  v55 = a9;
  v54 = a10;
  v26 = a16;
  v27 = a18;
  v28 = a19;
  v29 = a20;
  v30 = *MEMORY[0x277CEF098];
  v31 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (a15)
  {
    v32 = v59;
    if (!v31)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v69 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]";
    v70 = 2112;
    v71 = v59;
    v33 = "%s #tts [Pre] text:%@";
  }

  else
  {
    v32 = v59;
    if (!v31)
    {
      goto LABEL_7;
    }

    *buf = 136315395;
    v69 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]";
    v70 = 2117;
    v71 = v59;
    v33 = "%s #tts [Pre] text:%{sensitive}@";
  }

  _os_log_impl(&dword_26951F000, v30, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);
LABEL_7:
  v34 = self;
  if (v26)
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke;
    aBlock[3] = &unk_279C61F00;
    objc_copyWeak(&v66, buf);
    v64 = v26;
    v65 = v32;
    v67 = a15;
    v35 = _Block_copy(aBlock);

    objc_destroyWeak(&v66);
    objc_destroyWeak(buf);
  }

  else
  {
    v35 = 0;
  }

  v36 = [SRUIFSpeechSynthesisTask alloc];
  v37 = 0.0;
  if (a12)
  {
    v37 = a13;
  }

  LOBYTE(v50) = a15;
  v38 = v29;
  v48 = v28;
  v49 = v29;
  v39 = v28;
  v40 = v27;
  LOWORD(v47) = __PAIR16__(a14, a12);
  v41 = [(SRUIFSpeechSynthesisTask *)v36 initWithText:v32 audioData:v52 identifier:v51 sessionId:v58 preferredVoice:v57 language:v56 gender:v37 voicePromptStyle:v55 provisional:v54 eligibleAfterDuration:v47 delayed:v35 preparation:v27 completion:v48 analyticsContext:v49 speakableContextInfo:v50 canUseServerTTS:self->_processingTasksQueue eligibilityChangedQueue:?];
  [(SRUIFSpeechSynthesisTask *)v41 setIsPhonetic:a11];
  [(SRUIFSpeechSynthesisTask *)v41 setDelegate:self];
  [(SRUIFSpeechSynthesisTask *)v41 setShouldCache:a17];
  if (a14)
  {
    if (v51)
    {
      v42 = [(SRUIFSpeechSynthesizer *)self _delayedTasks];
      [v42 setObject:v41 forKeyedSubscript:v51];
    }

    else
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:];
      }

      [(SRUIFSpeechSynthesisTask *)v41 setDelayed:0];
    }

    v34 = self;
  }

  kdebug_trace();
  v43 = v34;
  processingTasksQueue = v34->_processingTasksQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke_59;
  block[3] = &unk_279C61E10;
  v61 = v41;
  v62 = v43;
  v45 = v41;
  dispatch_async(processingTasksQueue, block);

  v46 = *MEMORY[0x277D85DE8];
}

void __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v14 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]_block_invoke";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Preparation %@", buf, 0x16u);
    }

    v7 = objc_loadWeakRetained(WeakRetained + 8);

    if (v7)
    {
      v8 = objc_loadWeakRetained(WeakRetained + 8);
      v9 = *(a1 + 32);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke_55;
      v11[3] = &unk_279C61ED8;
      v12 = v3;
      [v8 speechSynthesisGetPreparedTextForIdentifier:v9 completion:v11];
    }

    else
    {
      (*(v3 + 2))(v3, *(a1 + 40), *(a1 + 56));
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __267__SRUIFSpeechSynthesizer__enqueueText_audioData_identifier_sessionId_preferredVoice_language_gender_promptStyle_isPhonetic_provisionally_eligibleAfterDuration_delayed_canUseServerTTS_preparationIdentifier_shouldCache_completion_analyticsContext_speakableContextInfo___block_invoke_59(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[SRUIFSpeechSynthesizer _enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Enqueueing task: %@", &v6, 0x16u);
  }

  v4 = [*(a1 + 40) _taskQueue];
  [v4 enqueueObject:*(a1 + 32)];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)enqueueText:(id)a3 identifier:(id)a4 sessionId:(id)a5 completion:(id)a6
{
  LOBYTE(v7) = 1;
  LODWORD(v6) = 0x1000000;
  [SRUIFSpeechSynthesizer _enqueueText:"_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:" audioData:a3 identifier:0 sessionId:a4 preferredVoice:a5 language:0 gender:0 promptStyle:0.0 isPhonetic:0 provisionally:0 eligibleAfterDuration:v6 delayed:0 canUseServerTTS:v7 preparationIdentifier:a6 shouldCache:0 completion:0 analyticsContext:? speakableContextInfo:?];
}

- (void)processDelayedItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SRUIFSpeechSynthesizer *)self _delayedTasks];
    v6 = [v5 objectForKeyedSubscript:v4];
    [v6 setDelayed:0];

    v7 = [(SRUIFSpeechSynthesizer *)self _delayedTasks];
    [v7 removeObjectForKey:v4];
  }

  else
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [(SRUIFSpeechSynthesizer *)v8 processDelayedItem:v9, v10, v11, v12, v13, v14, v15];
    }
  }
}

- (void)_handleAudioData:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v36 = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]";
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s #tts %@", buf, 0x16u);
  }

  v9 = [(SRUIFSpeechSynthesizer *)self clientStateManagerDelegate];
  [v9 notifyClientStateManagerTransactionBegan:self];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke;
  aBlock[3] = &unk_279C61F28;
  aBlock[4] = self;
  v10 = v6;
  v33 = v10;
  v11 = v7;
  v34 = v11;
  v12 = _Block_copy(aBlock);
  objc_initWeak(buf, self);
  objc_initWeak(&location, v10);
  v13 = objc_alloc(MEMORY[0x277CEF530]);
  pendingTasksQueue = self->_pendingTasksQueue;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2;
  v28[3] = &unk_279C61990;
  objc_copyWeak(&v30, buf);
  v15 = v12;
  v29 = v15;
  v16 = [v13 initWithTimeoutInterval:pendingTasksQueue onQueue:v28 timeoutHandler:3.5];
  pendingTaskTimer = self->_pendingTaskTimer;
  self->_pendingTaskTimer = v16;

  [(AFWatchdogTimer *)self->_pendingTaskTimer start];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62;
  v22[3] = &unk_279C61FC8;
  objc_copyWeak(&v26, buf);
  objc_copyWeak(&v27, &location);
  v18 = v10;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  v20 = v11;
  v25 = v20;
  [(SRUIFSpeechSynthesizer *)self _prepareAudioSessionIfNeededWithCompletion:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) didFinishAudioTask:*(a1 + 40) withError:a2];
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [WeakRetained[6] cancel];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v11 + 16))(v11, v12);
  }
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62(id *a1, int a2, char a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v7 = objc_loadWeakRetained(a1 + 8);
  v8 = v7;
  if (WeakRetained && v7)
  {
    if ([*(WeakRetained + 6) cancelIfNotAlreadyCanceled])
    {
      v9 = *(WeakRetained + 4);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63;
      block[3] = &unk_279C61FA0;
      v26 = a3;
      v19 = a1[4];
      v22 = a1[5];
      v20 = WeakRetained;
      v25 = a2;
      v21 = v8;
      objc_copyWeak(&v24, a1 + 8);
      v23 = a1[6];
      dispatch_async(v9, block);

      objc_destroyWeak(&v24);
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CEF098];
  if (*(a1 + 84))
  {
    [*(a1 + 40) setAudioSessionID:*(a1 + 80)];
    v3 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 80);
      *buf = 136315394;
      *&buf[4] = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts audio session active; setting audio session id: %u", buf, 0x12u);
    }

    v5 = [*(a1 + 48) audioData];
    v37 = 0;
    memset(buf, 0, sizeof(buf));
    v6 = [*(a1 + 48) audioData];
    v7 = [v6 decoderStreamDescription];
    ASBDForSAUIAD(v7, buf);

    v8 = objc_alloc_init(MEMORY[0x277D613D8]);
    *v34 = *buf;
    *&v34[16] = *&buf[16];
    v35 = v37;
    [v8 setAsbd:v34];
    v9 = [v5 audioBuffer];
    [v8 setAudioData:v9];

    v10 = [objc_alloc(MEMORY[0x277D613F0]) initWithAudio:v8];
    [v10 setAudioSessionId:*(a1 + 80)];
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [*(a1 + 48) sessionId];
    v13 = [v11 initWithUUIDString:v12];
    [v10 setSiriRequestId:v13];

    if (objc_opt_respondsToSelector())
    {
      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = [*(a1 + 48) identifier];
      v16 = [v14 initWithUUIDString:v15];
      [v10 setSiriAceViewId:v16];
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_68;
    v32[3] = &unk_279C61F50;
    v32[4] = *(a1 + 40);
    objc_copyWeak(&v33, (a1 + 72));
    [v10 setDidStartSpeaking:v32];
    [*(a1 + 48) setTtsSessionRequest:v10];
    v17 = [*(a1 + 40) ttsSession];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_69;
    v29 = &unk_279C61F78;
    v30 = *(a1 + 40);
    objc_copyWeak(&v31, (a1 + 72));
    [v17 speakWithAudioRequest:v10 didFinish:&v26];

    v18 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 48);
      *v34 = 136315394;
      *&v34[4] = "[SRUIFSpeechSynthesizer _handleAudioData:completion:]_block_invoke_3";
      *&v34[12] = 2112;
      *&v34[14] = v19;
      _os_log_impl(&dword_26951F000, v18, OS_LOG_TYPE_DEFAULT, "%s #tts started presynthesized audio for %@", v34, 0x16u);
    }

    kdebug_trace();
    v20 = [*(a1 + 40) _activeTasks];
    [v20 addObject:*(a1 + 48)];

    v21 = [*(a1 + 40) clientStateManagerDelegate];
    [v21 notifyClientStateManagerSpeakingBegan:*(a1 + 40)];

    v22 = [*(a1 + 40) clientStateManagerDelegate];
    [v22 notifyClientStateManagerTransactionEnded:*(a1 + 40)];

    v23 = *(a1 + 64);
    if (v23)
    {
      (*(v23 + 16))();
    }

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63_cold_1(a1);
    }

    v24 = *(a1 + 56);
    v5 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v24 + 16))(v24, v5);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 didStartAudioTask:WeakRetained];
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_69(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 didFinishAudioTask:WeakRetained withError:v4];
}

- (void)_handleText:(id)a3 completion:(id)a4
{
  v116 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 canUseServerTTS];
  v9 = *MEMORY[0x277CEF098];
  v10 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = v9;
      v12 = [v6 text];
      *buf = 136315394;
      v105 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
      v106 = 2112;
      v107 = v12;
      _os_log_impl(&dword_26951F000, v11, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%@", buf, 0x16u);
    }
  }

  else if (v10)
  {
    v13 = v9;
    v14 = [v6 text];
    *buf = 136315395;
    v105 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
    v106 = 2117;
    v107 = v14;
    _os_log_impl(&dword_26951F000, v13, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] text:%{sensitive}@", buf, 0x16u);
  }

  v15 = [(SRUIFSpeechSynthesizer *)self clientStateManagerDelegate];
  [v15 notifyClientStateManagerTransactionBegan:self];

  v16 = [v6 text];
  v17 = [v6 isPhonetic];
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"\x1B/+%@\x1B/+", v16];

    v16 = v19;
  }

  v20 = [v6 language];
  if (v20)
  {
    v21 = [(AFVoiceInfo *)self->_outputVoice languageCode];
    v22 = [v6 language];
    v70 = [v21 caseInsensitiveCompare:v22] == 0;
  }

  else
  {
    v70 = 1;
  }

  v23 = [v6 gender];
  if (v23)
  {
    v24 = [(AFVoiceInfo *)self->_outputVoice genderString];
    v25 = [v6 gender];
    v26 = [v24 caseInsensitiveCompare:v25] == 0;

    v70 &= v26;
  }

  v27 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    outputVoice = self->_outputVoice;
    v29 = v27;
    v30 = [(AFVoiceInfo *)outputVoice languageCode];
    v31 = [(AFVoiceInfo *)self->_outputVoice genderString];
    if (v70)
    {
      v32 = @"matches";
    }

    else
    {
      v32 = @"mismatches";
    }

    v33 = [v6 language];
    v34 = [v6 gender];
    *buf = 136316418;
    v105 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
    v106 = 2112;
    v107 = v30;
    v108 = 2112;
    v109 = v31;
    v110 = 2112;
    v111 = v32;
    v112 = 2112;
    v113 = v33;
    v114 = 2112;
    v115 = v34;
    _os_log_impl(&dword_26951F000, v29, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Output voice [%@, %@] %@ specified language %@, gender %@", buf, 0x3Eu);
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v6);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke;
  aBlock[3] = &unk_279C61FF0;
  objc_copyWeak(&v100, &location);
  objc_copyWeak(&v101, &from);
  v35 = v6;
  v98 = v35;
  v36 = v7;
  v99 = v36;
  v37 = _Block_copy(aBlock);
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_80;
  v93[3] = &unk_279C62040;
  objc_copyWeak(&v95, &location);
  objc_copyWeak(&v96, &from);
  v38 = v36;
  v94 = v38;
  v39 = _Block_copy(v93);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_83;
  v86[3] = &unk_279C62130;
  objc_copyWeak(&v91, &location);
  objc_copyWeak(&v92, &from);
  v40 = v16;
  v87 = v40;
  v41 = v35;
  v88 = v41;
  v68 = v37;
  v89 = v68;
  v69 = v39;
  v90 = v69;
  v42 = _Block_copy(v86);
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_94;
  v82[3] = &unk_279C62158;
  v43 = v41;
  v83 = v43;
  v84 = self;
  v44 = v38;
  v85 = v44;
  v45 = _Block_copy(v82);
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95;
  v78[3] = &unk_279C62158;
  v46 = v43;
  v79 = v46;
  v80 = self;
  v67 = v44;
  v81 = v67;
  v47 = _Block_copy(v78);
  if (v40)
  {
    v48 = [v46 preferredVoice];
    v49 = *MEMORY[0x277CEF098];
    v50 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT);
    if (v48)
    {
      if (v50)
      {
        *buf = 136315138;
        v105 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
        _os_log_impl(&dword_26951F000, v49, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Using preferredVoice", buf, 0xCu);
      }

      v51 = objc_alloc(MEMORY[0x277CEF528]);
      v52 = [v48 languageString];
      v53 = [v48 name];
      v54 = [v51 initWithLanguageCode:v52 gender:0 isCustom:0 name:v53 footprint:0 contentVersion:0 masteredVersion:0];

      v42[2](v42, v54);
    }

    else
    {
      if (v70)
      {
        if (v50)
        {
          *buf = 136315138;
          v105 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
          _os_log_impl(&dword_26951F000, v49, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] outputVoiceMatches", buf, 0xCu);
        }

        v42[2](v42, self->_outputVoice);
        goto LABEL_40;
      }

      if (v50)
      {
        *buf = 136315138;
        v105 = "[SRUIFSpeechSynthesizer _handleText:completion:]";
        _os_log_impl(&dword_26951F000, v49, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] No match for output voice", buf, 0xCu);
      }

      v63 = [v46 language];
      v64 = v63;
      if (v63)
      {
        v71 = v63;
      }

      else
      {
        v71 = [(AFVoiceInfo *)self->_outputVoice languageCode];
      }

      v65 = [v46 gender];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_97;
      v72[3] = &unk_279C621A8;
      objc_copyWeak(&v77, &location);
      v73 = v46;
      v75 = v42;
      v54 = v71;
      v74 = v54;
      v76 = v47;
      [(SRUIFSpeechSynthesizer *)self _findVoiceForLanguage:v54 gender:v65 completion:v72];

      objc_destroyWeak(&v77);
    }

LABEL_40:
    goto LABEL_41;
  }

  v55 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    [(SRUIFSpeechSynthesizer *)v55 _handleText:v56 completion:v57, v58, v59, v60, v61, v62];
  }

  v45[2](v45);
LABEL_41:

  objc_destroyWeak(&v92);
  objc_destroyWeak(&v91);

  objc_destroyWeak(&v96);
  objc_destroyWeak(&v95);

  objc_destroyWeak(&v101);
  objc_destroyWeak(&v100);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v66 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = v5;
  if (WeakRetained && v5)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_cold_1(v3, a1);
    }

    if (![v6 synthesisResult])
    {
      [v6 setSynthesisResult:2];
    }

    [v6 setSynthesisError:v3];
    [v6 executeCompletion];
    v7 = [WeakRetained clientStateManagerDelegate];
    [v7 notifyClientStateManagerTransactionEnded:WeakRetained];

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_80(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CEF098];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
    v25 = 2112;
    v26 = v3;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Success PrepareAudioSession:%@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = v7;
  if (WeakRetained && v7)
  {
    v9 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
      v25 = 2112;
      v26 = v3;
      _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s #tts 24 [Pre] Calling speakWithSpeechRequest:%@", buf, 0x16u);
    }

    v10 = [WeakRetained ttsSession];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_81;
    v20 = &unk_279C62018;
    objc_copyWeak(&v21, (a1 + 40));
    objc_copyWeak(&v22, (a1 + 48));
    [v10 speakWithSpeechRequest:v3 didFinish:&v17];

    v11 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke_2";
      v25 = 2112;
      v26 = v3;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_26951F000, v11, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Started synthesis, %@, %@", buf, 0x20u);
    }

    [v8 setTtsSessionRequest:{v3, v17, v18, v19, v20}];
    kdebug_trace();
    v12 = [WeakRetained _activeTasks];
    [v12 addObject:v8];

    v13 = [WeakRetained clientStateManagerDelegate];
    [v13 notifyClientStateManagerSpeakingBegan:WeakRetained];

    v14 = [WeakRetained clientStateManagerDelegate];
    [v14 notifyClientStateManagerTransactionEnded:WeakRetained];

    v15 = *(a1 + 32);
    if (v15)
    {
      (*(v15 + 16))();
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didFinishSpeakTask:v4 withError:v3];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_83(id *a1, void *a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Success ValidOutputVoice:%@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v6 = objc_loadWeakRetained(a1 + 9);
  v7 = v6;
  if (WeakRetained && v6)
  {
    v8 = objc_alloc(MEMORY[0x277D61470]);
    v9 = [v3 languageCode];
    v10 = [v3 name];
    v40 = [v8 initWithLanguage:v9 name:v10];

    v11 = objc_alloc(MEMORY[0x277D61450]);
    v12 = a1[4];
    v13 = [a1[5] voicePromptStyle];
    v14 = [v11 initWithText:v12 voice:v40 promptStyle:v13];

    if (_os_feature_enabled_impl())
    {
      v15 = [MEMORY[0x277CEF368] sharedPreferences];
      v16 = [v15 siriSpeechRate];
      [v16 floatValue];
      v18 = v17;

      LODWORD(v19) = v18;
      [v14 setRate:v19];
    }

    v20 = objc_alloc(MEMORY[0x277CCAD78]);
    v21 = [v7 sessionId];
    v22 = [v20 initWithUUIDString:v21];
    [v14 setSiriRequestId:v22];

    if (objc_opt_respondsToSelector())
    {
      v23 = objc_alloc(MEMORY[0x277CCAD78]);
      v24 = [v7 identifier];
      v25 = [v23 initWithUUIDString:v24];
      [v14 setSiriAceViewId:v25];
    }

    v26 = [v7 speakableContextInfo];
    [v14 setContextInfo:v26];

    [v14 setPrivacySensitive:{objc_msgSend(v7, "canUseServerTTS") ^ 1}];
    [v14 setAudioSessionId:{objc_msgSend(WeakRetained, "audioSessionID")}];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_87;
    v59[3] = &unk_279C62068;
    objc_copyWeak(&v60, a1 + 8);
    objc_copyWeak(&v61, a1 + 9);
    [v14 setDidStartSpeaking:v59];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2;
    v56[3] = &unk_279C62090;
    objc_copyWeak(&v57, a1 + 8);
    objc_copyWeak(&v58, a1 + 9);
    [v14 setDidReportInstrument:v56];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_3;
    v53[3] = &unk_279C620B8;
    objc_copyWeak(&v54, a1 + 8);
    objc_copyWeak(&v55, a1 + 9);
    [v14 setDidGenerateWordTimings:v53];
    if ([a1[4] isEqualToString:@"\x1B\\mrk=play=phat\\""])
    {
      v27 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v65 = 0;
      v28 = [WeakRetained ttsSession];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_4;
      v50[3] = &unk_279C61C90;
      v52 = buf;
      v29 = v27;
      v51 = v29;
      [v28 queryPhaticCapabilityWithVoice:v41 reply:v50];

      v30 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v29, v30);
      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v36 = a1[6];
        v37 = [MEMORY[0x277CEF2A0] errorWithCode:401];
        v36[2](v36, v37);

        v38 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 136315138;
          v63 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke_5";
          _os_log_impl(&dword_26951F000, v38, OS_LOG_TYPE_DEFAULT, "%s #phatic [Post] Fail! Phatic Not Supported", v62, 0xCu);
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_20;
      }

      _Block_object_dispose(buf, 8);
    }

    if ([a1[4] isEqualToString:@"\x1B\\mrk=play=phat\\""])
    {
      v31 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
        _os_log_impl(&dword_26951F000, v31, OS_LOG_TYPE_DEFAULT, "%s #phatic [Pre] Success", buf, 0xCu);
      }

      (*(a1[7] + 2))();
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277CEF530]);
      v33 = WeakRetained[4];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90;
      v47[3] = &unk_279C61990;
      objc_copyWeak(&v49, a1 + 8);
      v48 = a1[6];
      v34 = [v32 initWithTimeoutInterval:v33 onQueue:v47 timeoutHandler:3.5];
      v35 = WeakRetained[6];
      WeakRetained[6] = v34;

      [WeakRetained[6] start];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91;
      v42[3] = &unk_279C62108;
      v42[4] = WeakRetained;
      v43 = a1[5];
      v45 = a1[6];
      v46 = a1[7];
      v44 = v14;
      [WeakRetained _prepareAudioSessionIfNeededWithCompletion:v42];

      objc_destroyWeak(&v49);
    }

LABEL_20:
    objc_destroyWeak(&v55);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v57);
    objc_destroyWeak(&v61);
    objc_destroyWeak(&v60);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didStartSpeakTask:v2];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained speakTask:v4 didGenerateMetrics:v3];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained speakTask:v4 didGenerateWordTimingInfo:v3];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    [WeakRetained[6] cancel];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v11 + 16))(v11, v12);
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91(uint64_t a1, int a2, char a3)
{
  if ([*(*(a1 + 32) + 48) cancelIfNotAlreadyCanceled])
  {
    v6 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92;
    block[3] = &unk_279C620E0;
    v25 = a3;
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v24 = a2;
    *&v9 = v7;
    *(&v9 + 1) = *(a1 + 32);
    v19 = v9;
    v23 = *(a1 + 64);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = v8;
    v21 = v19;
    v22 = v10;
    dispatch_async(v6, block);
  }

  else
  {
    v11 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 76))
  {
    [*(a1 + 40) setAudioSessionID:*(a1 + 72)];
    v2 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 72);
      v8 = 136315394;
      v9 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #tts audio session active; setting audio session id: %u", &v8, 0x12u);
    }

    v4 = *(a1 + 48);
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92_cold_1(a1);
    }

    v5 = *(a1 + 56);
    v6 = [MEMORY[0x277CEF2A0] errorWithCode:200];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_94(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
    _os_log_impl(&dword_26951F000, v2, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] No text, marking finished", &v6, 0xCu);
  }

  [*(a1 + 32) setSynthesisResult:1];
  [*(a1 + 32) executeCompletion];
  v3 = [*(a1 + 40) clientStateManagerDelegate];
  [v3 notifyClientStateManagerTransactionEnded:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95(uint64_t a1)
{
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  [*(a1 + 32) setSynthesisResult:2];
  [*(a1 + 32) executeCompletion];
  v10 = [*(a1 + 40) clientStateManagerDelegate];
  [v10 notifyClientStateManagerTransactionEnded:*(a1 + 40)];

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_97(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98;
    v13[3] = &unk_279C62180;
    objc_copyWeak(&v17, a1 + 8);
    v14 = v3;
    v7 = a1[4];
    v8 = a1[6];
    v9 = a1[5];
    v10 = a1[7];
    *&v11 = v8;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v9;
    v15 = v12;
    v16 = v11;
    dispatch_async(v6, v13);

    objc_destroyWeak(&v17);
  }
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v6 = v4;
        v7 = [v5 language];
        v8 = [*(a1 + 40) gender];
        v9 = *(a1 + 32);
        v22 = 136315906;
        v23 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke_2";
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v8;
        v28 = 2112;
        v29 = v9;
        _os_log_impl(&dword_26951F000, v6, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Found voice for %@ %@: %@", &v22, 0x2Au);
      }

      v10 = *(a1 + 32);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v11 = [WeakRetained[2] objectForKey:*(a1 + 48)];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [v3[2] objectForKey:*(a1 + 48)];
        v14 = [v13 firstObject];

        v15 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 40);
          v17 = v15;
          v18 = [v16 language];
          v19 = [*(a1 + 40) gender];
          v22 = 136315906;
          v23 = "[SRUIFSpeechSynthesizer _handleText:completion:]_block_invoke";
          v24 = 2112;
          v25 = v18;
          v26 = 2112;
          v27 = v19;
          v28 = 2112;
          v29 = v14;
          _os_log_impl(&dword_26951F000, v17, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] No voice for %@ %@. Using %@", &v22, 0x2Au);
        }

        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v20 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
        {
          __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98_cold_1(a1, v20);
        }

        (*(*(a1 + 64) + 16))();
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_99(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_group_leave(WeakRetained[5]);
    WeakRetained = v2;
  }
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_101(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    dispatch_group_leave(WeakRetained[5]);
    WeakRetained = v2;
  }
}

- (id)_activeTaskWithTTSRequest:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(SRUIFSpeechSynthesizer *)self _activeTasks];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SRUIFSpeechSynthesizer__activeTaskWithTTSRequest___block_invoke;
  v9[3] = &unk_279C621D0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__SRUIFSpeechSynthesizer__activeTaskWithTTSRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 ttsSessionRequest];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_findVoiceForLanguage:(id)a3 gender:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_availableVoicesForLanguage objectForKey:v8];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_availableVoicesForLanguage objectForKey:v8];
    v13 = [(SRUIFSpeechSynthesizer *)self _filterVoices:v12 gender:v9];

    if (v10)
    {
      v10[2](v10, v13);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CEF528] allVoicesForSiriSessionLanguage:v8];
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __66__SRUIFSpeechSynthesizer__findVoiceForLanguage_gender_completion___block_invoke;
    v26 = &unk_279C621F8;
    v15 = v8;
    v27 = v15;
    v16 = v14;
    v28 = v16;
    [v13 enumerateObjectsUsingBlock:&v23];
    if ([v16 count])
    {
      v17 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x277CCABB0];
        v19 = v17;
        v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
        *buf = 136315650;
        v30 = "[SRUIFSpeechSynthesizer _findVoiceForLanguage:gender:completion:]";
        v31 = 2112;
        v32 = v15;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_26951F000, v19, OS_LOG_TYPE_DEFAULT, "%s #tts %@ has %@ available Voices", buf, 0x20u);
      }

      [(NSMutableDictionary *)self->_availableVoicesForLanguage setObject:v16 forKey:v15];
      v21 = [(SRUIFSpeechSynthesizer *)self _filterVoices:v16 gender:v9];
      if (v10)
      {
        v10[2](v10, v21);
      }
    }

    else if (v10)
    {
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
      {
        [SRUIFSpeechSynthesizer _findVoiceForLanguage:gender:completion:];
      }

      v10[2](v10, 0);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __66__SRUIFSpeechSynthesizer__findVoiceForLanguage_gender_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 languageCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (int64_t)_genderForString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 caseInsensitiveCompare:@"female"])
    {
      if ([v4 caseInsensitiveCompare:@"male"])
      {
        if ([v4 caseInsensitiveCompare:@"neutral"])
        {
          v5 = 0;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_filterVoices:(id)a3 gender:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SRUIFSpeechSynthesizer *)self _genderForString:v7];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __47__SRUIFSpeechSynthesizer__filterVoices_gender___block_invoke;
  v13[3] = &unk_279C62220;
  v13[5] = &v14;
  v13[6] = v8;
  v13[4] = &v20;
  [v6 enumerateObjectsUsingBlock:v13];
  v9 = v21[5];
  if (!v9)
  {
    v10 = v15[5];
    if (v10)
    {
      objc_storeStrong(v21 + 5, v10);
      v9 = v21[5];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = v9;
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __47__SRUIFSpeechSynthesizer__filterVoices_gender___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v9 = v7;
  if (!a1[6] || (v8 = [v7 gender] == a1[6], v7 = v9, v8))
  {
    if ([v7 isCustom])
    {
      objc_storeStrong((*(a1[4] + 8) + 40), a2);
      *a4 = 1;
    }

    else
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a2);
    }

    v7 = v9;
  }
}

- (int64_t)_speechFootPrintForVoice:(id)a3
{
  result = [a3 footprint];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts Expected an active task that corresponds to an active speech request, but got nothing!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishAudioTask_withError___block_invoke_cold_2(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  LODWORD(v6) = 136315650;
  *(&v6 + 4) = "[SRUIFSpeechSynthesizer didFinishAudioTask:withError:]_block_invoke";
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4(&dword_26951F000, v3, v4, "%s #tts Unable to finish speaking presynthesized request%@: %{public}@", v6, DWORD2(v6));
  v5 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts [Post] Expected an active task that corresponds to an active speech request, but got nothing!", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_2(void *a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 text];
  v7 = *a3;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_26951F000, v8, v9, "%s #tts [Post] Unable to finish speaking %{sensitive}@: %{public}@", v10, v11, v12, v13, 3u);

  v14 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_cold_3(void *a1, void *a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 text];
  v7 = *a3;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_26951F000, v8, v9, "%s #tts [Post] Unable to finish speaking %@: %{public}@", v10, v11, v12, v13, 2u);

  v14 = *MEMORY[0x277D85DE8];
}

void __55__SRUIFSpeechSynthesizer_didFinishSpeakTask_withError___block_invoke_35_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts strongSelf==nil", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)speakTask:(void *)a1 didGenerateMetrics:(void *)a2 .cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 ttsSessionRequest];
  v7[0] = 136315394;
  OUTLINED_FUNCTION_3();
  v8 = v5;
  _os_log_error_impl(&dword_26951F000, v3, OS_LOG_TYPE_ERROR, "%s #tts [Post] Event metrics was missing for the request%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueText:audioData:identifier:sessionId:preferredVoice:language:gender:promptStyle:isPhonetic:provisionally:eligibleAfterDuration:delayed:canUseServerTTS:preparationIdentifier:shouldCache:completion:analyticsContext:speakableContextInfo:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v0, v1, "%s #tts [Pre] Task is delayed but no identifier provided. This will likely result in out-of-order TTS: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)processDelayedItem:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts [Pre] nil is an invalid delayed item identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_2_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts prepare audio session request timed out", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_62_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts pendingTask timer already timed out; not continuing", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__SRUIFSpeechSynthesizer__handleAudioData_completion___block_invoke_63_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v2, v3, "%s #tts failed to prepare audio session, failing speech synthesis task %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleText:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts Not speaking nil text", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  v6 = 136315650;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_26951F000, v3, v4, "%s #tts [Post] Synthesis failed for with %@ for %@ ", v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_90_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts prepare audio session request timed out", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_91_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts pendingTask timer already timed out; not continuing", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_92_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v2, v3, "%s #tts failed to prepare audio session, failing speech synthesis task %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_95_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2(&dword_26951F000, a1, a3, "%s #tts [Post] Failed onNoOutputVoice", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__SRUIFSpeechSynthesizer__handleText_completion___block_invoke_2_98_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 language];
  v6 = [*(a1 + 40) gender];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5(&dword_26951F000, v7, v8, "%s #tts [Pre] Could not find voice for %@ %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void __43__SRUIFSpeechSynthesizer__processTaskQueue__block_invoke_cold_1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SRUIFSpeechSynthesizer _processTaskQueue]_block_invoke";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s #tts [Pre] Invalid speak request. No text and no audio data", buf, 0xCu);
}

- (void)_findVoiceForLanguage:gender:completion:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4(&dword_26951F000, v0, v1, "%s #tts No voice found for language: %@ gender: %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end