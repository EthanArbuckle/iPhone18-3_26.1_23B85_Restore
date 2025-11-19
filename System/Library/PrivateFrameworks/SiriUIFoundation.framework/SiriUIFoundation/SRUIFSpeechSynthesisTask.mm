@interface SRUIFSpeechSynthesisTask
- (SRUIFSpeechSynthesisTask)initWithText:(id)a3 audioData:(id)a4 identifier:(id)a5 sessionId:(id)a6 preferredVoice:(id)a7 language:(id)a8 gender:(id)a9 voicePromptStyle:(id)a10 provisional:(BOOL)a11 eligibleAfterDuration:(double)a12 delayed:(BOOL)a13 preparation:(id)a14 completion:(id)a15 analyticsContext:(id)a16 speakableContextInfo:(id)a17 canUseServerTTS:(BOOL)a18 eligibilityChangedQueue:(id)a19;
- (SRUIFSpeechSynthesisTaskDelegate)delegate;
- (id)description;
- (void)_setEligibleForProcessing:(BOOL)a3;
- (void)_setEligibleForSynthesis:(BOOL)a3;
- (void)_updateSynthesisEligibility;
- (void)executeCompletion;
- (void)setDelayed:(BOOL)a3;
@end

@implementation SRUIFSpeechSynthesisTask

- (id)description
{
  if ([(SRUIFSpeechSynthesisTask *)self canUseServerTTS])
  {
    v20 = [(SRUIFSpeechSynthesisTask *)self text];
  }

  else
  {
    v20 = @"<private>";
  }

  v23 = [(SRUIFSpeechSynthesisTask *)self identifier];
  v19 = [(SRUIFSpeechSynthesisTask *)self sessionId];
  v3 = [(SAUIAudioData *)self->_audioData audioBuffer];
  v4 = [v3 length];

  v22 = [(SRUIFSpeechSynthesisTask *)self language];
  v18 = [(SRUIFSpeechSynthesisTask *)self gender];
  v21 = [(SRUIFSpeechSynthesisTask *)self voicePromptStyle];
  [(SRUIFSpeechSynthesisTask *)self isDelayed];
  [(SRUIFSpeechSynthesisTask *)self isProvisional];
  [(SRUIFSpeechSynthesisTask *)self canUseServerTTS];
  [(SRUIFSpeechSynthesisTask *)self isEligibleForProcessing];
  [(SRUIFSpeechSynthesisTask *)self isEligibleForSynthesis];
  v14 = [(SRUIFSpeechSynthesisTask *)self synthesisError];
  v16 = [(SRUIFSpeechSynthesisTask *)self _completion];
  v17 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v13 = NSStringFromBOOL();
  v5 = NSStringFromBOOL();
  v6 = NSStringFromBOOL();
  v7 = NSStringFromBOOL();
  v8 = NSStringFromBOOL();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v10 = _Block_copy(v16);
  v11 = [v17 stringWithFormat:@"<%@ %p text=%@; identifier=%@; sessionId=%@; delayed=%@; provisional=%@; eligibleForProcessing=%@; eligibleForSynthesis=%@; canUseServerTTS=%@; language=%@; gender=%@; voicePromptStyle=%@; audioByteCount=%@; error=%@; completion=%p>", v15, self, v20, v23, v19, v13, v5, v6, v7, v8, v22, v18, v21, v9, v14, v10];;

  return v11;
}

- (void)executeCompletion
{
  v22 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  if (self->_completion)
  {
    v3 = objc_loadWeakRetained(&location);
    if (v3)
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = SRUIFSpeechSynthesisResultGetName(self->_synthesisResult);
        synthesisError = self->_synthesisError;
        v7 = objc_loadWeakRetained(&location);
        v8 = [v7 identifier];
        *buf = 136315906;
        v15 = "[SRUIFSpeechSynthesisTask executeCompletion]";
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = synthesisError;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Post] Completion Result: %@ Error: %@, Task: %@", buf, 0x2Au);
      }

      v9 = v3[12];
      v10 = v3[13];
      (*(self->_completion + 2))();
      completion = self->_completion;
      self->_completion = 0;
    }
  }

  objc_destroyWeak(&location);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_updateSynthesisEligibility
{
  eligibleForProcessing = self->_eligibleForProcessing;
  eligibleForSynthesis = self->_eligibleForSynthesis;
  if ([(SRUIFSpeechSynthesisTask *)self preparationBlockCompleted])
  {
    v5 = [(SRUIFSpeechSynthesisTask *)self durationHasElapsed];
  }

  else
  {
    v5 = 0;
  }

  [(SRUIFSpeechSynthesisTask *)self _setEligibleForProcessing:v5];
  if ([(SRUIFSpeechSynthesisTask *)self preparationBlockCompleted]&& [(SRUIFSpeechSynthesisTask *)self durationHasElapsed])
  {
    v6 = [(SRUIFSpeechSynthesisTask *)self isDelayed]^ 1;
  }

  else
  {
    v6 = 0;
  }

  [(SRUIFSpeechSynthesisTask *)self _setEligibleForSynthesis:v6];
  if (eligibleForProcessing != self->_eligibleForProcessing || eligibleForSynthesis != self->_eligibleForSynthesis)
  {
    v7 = [(SRUIFSpeechSynthesisTask *)self delegate];
    [v7 taskEligibilityDidChange:self];
  }
}

- (SRUIFSpeechSynthesisTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SRUIFSpeechSynthesisTask)initWithText:(id)a3 audioData:(id)a4 identifier:(id)a5 sessionId:(id)a6 preferredVoice:(id)a7 language:(id)a8 gender:(id)a9 voicePromptStyle:(id)a10 provisional:(BOOL)a11 eligibleAfterDuration:(double)a12 delayed:(BOOL)a13 preparation:(id)a14 completion:(id)a15 analyticsContext:(id)a16 speakableContextInfo:(id)a17 canUseServerTTS:(BOOL)a18 eligibilityChangedQueue:(id)a19
{
  v89 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v66 = a4;
  v71 = a5;
  v70 = a6;
  v25 = a7;
  v64 = a7;
  v68 = a8;
  v67 = a9;
  v72 = a10;
  v26 = a14;
  aBlock = a15;
  v27 = a16;
  v28 = a17;
  v29 = a19;
  v80.receiver = self;
  v80.super_class = SRUIFSpeechSynthesisTask;
  v30 = [(SRUIFSpeechSynthesisTask *)&v80 init];
  if (v30)
  {
    v31 = [v69 copy];
    text = v30->_text;
    v30->_text = v31;

    v33 = [v71 copy];
    identifier = v30->_identifier;
    v30->_identifier = v33;

    v35 = [v70 copy];
    sessionId = v30->_sessionId;
    v30->_sessionId = v35;

    objc_storeStrong(&v30->_preferredVoice, v25);
    v37 = [v72 copy];
    voicePromptStyle = v30->_voicePromptStyle;
    v30->_voicePromptStyle = v37;

    v30->_canUseServerTTS = 1;
    v30->_provisional = a11;
    v30->_delayed = a13;
    v39 = _Block_copy(aBlock);
    completion = v30->_completion;
    v30->_completion = v39;

    v41 = [v27 copy];
    analyticsContext = v30->_analyticsContext;
    v30->_analyticsContext = v41;

    v43 = [v28 copy];
    speakableContextInfo = v30->_speakableContextInfo;
    v30->_speakableContextInfo = v43;

    v45 = [v68 copy];
    language = v30->_language;
    v30->_language = v45;

    v47 = [v67 copy];
    gender = v30->_gender;
    v30->_gender = v47;

    v49 = [v66 copy];
    audioData = v30->_audioData;
    v30->_audioData = v49;

    v30->_shouldCache = 1;
    v30->_canUseServerTTS = a18;
    [(SRUIFSpeechSynthesisTask *)v30 _setDurationHasElapsed:a12 <= 0.0];
    [(SRUIFSpeechSynthesisTask *)v30 _setPreparationBlockCompleted:v26 == 0];
    if ([(SRUIFSpeechSynthesisTask *)v30 preparationBlockCompleted])
    {
      v51 = [(SRUIFSpeechSynthesisTask *)v30 durationHasElapsed];
    }

    else
    {
      v51 = 0;
    }

    [(SRUIFSpeechSynthesisTask *)v30 _setEligibleForProcessing:v51];
    if ([(SRUIFSpeechSynthesisTask *)v30 preparationBlockCompleted]&& [(SRUIFSpeechSynthesisTask *)v30 durationHasElapsed])
    {
      v52 = [(SRUIFSpeechSynthesisTask *)v30 isDelayed]^ 1;
    }

    else
    {
      v52 = 0;
    }

    [(SRUIFSpeechSynthesisTask *)v30 _setEligibleForSynthesis:v52];
    v53 = MEMORY[0x277CEF098];
    v54 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v55 = v54;
      v56 = _Block_copy(v26);
      v57 = v30->_identifier;
      *buf = 136315906;
      v82 = "[SRUIFSpeechSynthesisTask initWithText:audioData:identifier:sessionId:preferredVoice:language:gender:voicePromptStyle:provisional:eligibleAfterDuration:delayed:preparation:completion:analyticsContext:speakableContextInfo:canUseServerTTS:eligibilityChangedQueue:]";
      v83 = 2112;
      v84 = v56;
      v85 = 2048;
      v86 = a12;
      v87 = 2112;
      v88 = v57;
      _os_log_impl(&dword_26951F000, v55, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Preparation: %@, Eligibility delay: %f - %@", buf, 0x2Au);
    }

    objc_initWeak(&location, v30);
    if (v26)
    {
      v58 = *v53;
      if (os_log_type_enabled(*v53, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v58;
        v60 = objc_loadWeakRetained(&location);
        *buf = 136315394;
        v82 = "[SRUIFSpeechSynthesisTask initWithText:audioData:identifier:sessionId:preferredVoice:language:gender:voicePromptStyle:provisional:eligibleAfterDuration:delayed:preparation:completion:analyticsContext:speakableContextInfo:canUseServerTTS:eligibilityChangedQueue:]";
        v83 = 2112;
        v84 = v60;
        _os_log_impl(&dword_26951F000, v59, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Executing preparation block for %@", buf, 0x16u);
      }

      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __263__SRUIFSpeechSynthesisTask_initWithText_audioData_identifier_sessionId_preferredVoice_language_gender_voicePromptStyle_provisional_eligibleAfterDuration_delayed_preparation_completion_analyticsContext_speakableContextInfo_canUseServerTTS_eligibilityChangedQueue___block_invoke;
      v76[3] = &unk_279C62AB0;
      v77 = v29;
      objc_copyWeak(&v78, &location);
      (*(v26 + 2))(v26, v76);
      objc_destroyWeak(&v78);
    }

    if (a12 > 0.0)
    {
      v61 = dispatch_time(0, (a12 * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __263__SRUIFSpeechSynthesisTask_initWithText_audioData_identifier_sessionId_preferredVoice_language_gender_voicePromptStyle_provisional_eligibleAfterDuration_delayed_preparation_completion_analyticsContext_speakableContextInfo_canUseServerTTS_eligibilityChangedQueue___block_invoke_2;
      block[3] = &unk_279C61870;
      objc_copyWeak(&v75, &location);
      dispatch_after(v61, v29, block);
      objc_destroyWeak(&v75);
    }

    objc_destroyWeak(&location);
  }

  v62 = *MEMORY[0x277D85DE8];
  return v30;
}

void __263__SRUIFSpeechSynthesisTask_initWithText_audioData_identifier_sessionId_preferredVoice_language_gender_voicePromptStyle_provisional_eligibleAfterDuration_delayed_preparation_completion_analyticsContext_speakableContextInfo_canUseServerTTS_eligibilityChangedQueue___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __263__SRUIFSpeechSynthesisTask_initWithText_audioData_identifier_sessionId_preferredVoice_language_gender_voicePromptStyle_provisional_eligibleAfterDuration_delayed_preparation_completion_analyticsContext_speakableContextInfo_canUseServerTTS_eligibilityChangedQueue___block_invoke_2;
  block[3] = &unk_279C617F8;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = v5;
  v11 = a3;
  v7 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v10);
}

void __263__SRUIFSpeechSynthesisTask_initWithText_audioData_identifier_sessionId_preferredVoice_language_gender_voicePromptStyle_provisional_eligibleAfterDuration_delayed_preparation_completion_analyticsContext_speakableContextInfo_canUseServerTTS_eligibilityChangedQueue___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "[SRUIFSpeechSynthesisTask initWithText:audioData:identifier:sessionId:preferredVoice:language:gender:voicePromptStyle:provisional:eligibleAfterDuration:delayed:preparation:completion:analyticsContext:speakableContextInfo:canUseServerTTS:eligibilityChangedQueue:]_block_invoke_2";
      v13 = 2112;
      v14 = WeakRetained;
      _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Preparation complete for %@", &v11, 0x16u);
    }

    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 _setText:*(a1 + 32)];

    v5 = objc_loadWeakRetained((a1 + 40));
    [v5 _setPreparationBlockCompleted:1];

    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 _updateSynthesisEligibility];

    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = v7;
    if (WeakRetained[21] == 1)
    {
      v9 = *(a1 + 48) ^ 1;
    }

    else
    {
      v9 = 0;
    }

    [v7 setCanUseServerTTS:v9 & 1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315394;
    v9 = "[SRUIFSpeechSynthesisTask initWithText:audioData:identifier:sessionId:preferredVoice:language:gender:voicePromptStyle:provisional:eligibleAfterDuration:delayed:preparation:completion:analyticsContext:speakableContextInfo:canUseServerTTS:eligibilityChangedQueue:]_block_invoke";
    v10 = 2112;
    v11 = WeakRetained;
    _os_log_impl(&dword_26951F000, v3, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Eligibility delay elapsed %@", &v8, 0x16u);
  }

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _setDurationHasElapsed:1];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _updateSynthesisEligibility];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setDelayed:(BOOL)a3
{
  if (self->_delayed != a3)
  {
    self->_delayed = a3;
    if (!a3)
    {
      [(SRUIFSpeechSynthesisTask *)self _updateSynthesisEligibility];
    }
  }
}

- (void)_setEligibleForProcessing:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_eligibleForProcessing != a3)
  {
    self->_eligibleForProcessing = a3;
    if (a3)
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[SRUIFSpeechSynthesisTask _setEligibleForProcessing:]";
        v8 = 2112;
        v9 = self;
        _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Processing eligibility updated %@", &v6, 0x16u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setEligibleForSynthesis:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_eligibleForSynthesis != a3)
  {
    self->_eligibleForSynthesis = a3;
    if (a3)
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[SRUIFSpeechSynthesisTask _setEligibleForSynthesis:]";
        v8 = 2112;
        v9 = self;
        _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Synthesis eligibility updated %@", &v6, 0x16u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end