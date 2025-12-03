@interface SRUIFSpeechSynthesisTask
- (SRUIFSpeechSynthesisTask)initWithText:(id)text audioData:(id)data identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender voicePromptStyle:(id)self0 provisional:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 preparation:(id)self4 completion:(id)self5 analyticsContext:(id)self6 speakableContextInfo:(id)self7 canUseServerTTS:(BOOL)self8 eligibilityChangedQueue:(id)self9;
- (SRUIFSpeechSynthesisTaskDelegate)delegate;
- (id)description;
- (void)_setEligibleForProcessing:(BOOL)processing;
- (void)_setEligibleForSynthesis:(BOOL)synthesis;
- (void)_updateSynthesisEligibility;
- (void)executeCompletion;
- (void)setDelayed:(BOOL)delayed;
@end

@implementation SRUIFSpeechSynthesisTask

- (id)description
{
  if ([(SRUIFSpeechSynthesisTask *)self canUseServerTTS])
  {
    text = [(SRUIFSpeechSynthesisTask *)self text];
  }

  else
  {
    text = @"<private>";
  }

  identifier = [(SRUIFSpeechSynthesisTask *)self identifier];
  sessionId = [(SRUIFSpeechSynthesisTask *)self sessionId];
  audioBuffer = [(SAUIAudioData *)self->_audioData audioBuffer];
  v4 = [audioBuffer length];

  language = [(SRUIFSpeechSynthesisTask *)self language];
  gender = [(SRUIFSpeechSynthesisTask *)self gender];
  voicePromptStyle = [(SRUIFSpeechSynthesisTask *)self voicePromptStyle];
  [(SRUIFSpeechSynthesisTask *)self isDelayed];
  [(SRUIFSpeechSynthesisTask *)self isProvisional];
  [(SRUIFSpeechSynthesisTask *)self canUseServerTTS];
  [(SRUIFSpeechSynthesisTask *)self isEligibleForProcessing];
  [(SRUIFSpeechSynthesisTask *)self isEligibleForSynthesis];
  synthesisError = [(SRUIFSpeechSynthesisTask *)self synthesisError];
  _completion = [(SRUIFSpeechSynthesisTask *)self _completion];
  v17 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v13 = NSStringFromBOOL();
  v5 = NSStringFromBOOL();
  v6 = NSStringFromBOOL();
  v7 = NSStringFromBOOL();
  v8 = NSStringFromBOOL();
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v10 = _Block_copy(_completion);
  v11 = [v17 stringWithFormat:@"<%@ %p text=%@; identifier=%@; sessionId=%@; delayed=%@; provisional=%@; eligibleForProcessing=%@; eligibleForSynthesis=%@; canUseServerTTS=%@; language=%@; gender=%@; voicePromptStyle=%@; audioByteCount=%@; error=%@; completion=%p>", v15, self, text, identifier, sessionId, v13, v5, v6, v7, v8, language, gender, voicePromptStyle, v9, synthesisError, v10];;

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
        identifier = [v7 identifier];
        *buf = 136315906;
        v15 = "[SRUIFSpeechSynthesisTask executeCompletion]";
        v16 = 2112;
        v17 = v5;
        v18 = 2112;
        v19 = synthesisError;
        v20 = 2112;
        v21 = identifier;
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
    durationHasElapsed = [(SRUIFSpeechSynthesisTask *)self durationHasElapsed];
  }

  else
  {
    durationHasElapsed = 0;
  }

  [(SRUIFSpeechSynthesisTask *)self _setEligibleForProcessing:durationHasElapsed];
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
    delegate = [(SRUIFSpeechSynthesisTask *)self delegate];
    [delegate taskEligibilityDidChange:self];
  }
}

- (SRUIFSpeechSynthesisTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SRUIFSpeechSynthesisTask)initWithText:(id)text audioData:(id)data identifier:(id)identifier sessionId:(id)id preferredVoice:(id)voice language:(id)language gender:(id)gender voicePromptStyle:(id)self0 provisional:(BOOL)self1 eligibleAfterDuration:(double)self2 delayed:(BOOL)self3 preparation:(id)self4 completion:(id)self5 analyticsContext:(id)self6 speakableContextInfo:(id)self7 canUseServerTTS:(BOOL)self8 eligibilityChangedQueue:(id)self9
{
  v89 = *MEMORY[0x277D85DE8];
  textCopy = text;
  dataCopy = data;
  identifierCopy = identifier;
  idCopy = id;
  voiceCopy = voice;
  voiceCopy2 = voice;
  languageCopy = language;
  genderCopy = gender;
  styleCopy = style;
  preparationCopy = preparation;
  aBlock = completion;
  contextCopy = context;
  infoCopy = info;
  queueCopy = queue;
  v80.receiver = self;
  v80.super_class = SRUIFSpeechSynthesisTask;
  v30 = [(SRUIFSpeechSynthesisTask *)&v80 init];
  if (v30)
  {
    v31 = [textCopy copy];
    text = v30->_text;
    v30->_text = v31;

    v33 = [identifierCopy copy];
    identifier = v30->_identifier;
    v30->_identifier = v33;

    v35 = [idCopy copy];
    sessionId = v30->_sessionId;
    v30->_sessionId = v35;

    objc_storeStrong(&v30->_preferredVoice, voiceCopy);
    v37 = [styleCopy copy];
    voicePromptStyle = v30->_voicePromptStyle;
    v30->_voicePromptStyle = v37;

    v30->_canUseServerTTS = 1;
    v30->_provisional = provisional;
    v30->_delayed = delayed;
    v39 = _Block_copy(aBlock);
    completion = v30->_completion;
    v30->_completion = v39;

    v41 = [contextCopy copy];
    analyticsContext = v30->_analyticsContext;
    v30->_analyticsContext = v41;

    v43 = [infoCopy copy];
    speakableContextInfo = v30->_speakableContextInfo;
    v30->_speakableContextInfo = v43;

    v45 = [languageCopy copy];
    language = v30->_language;
    v30->_language = v45;

    v47 = [genderCopy copy];
    gender = v30->_gender;
    v30->_gender = v47;

    v49 = [dataCopy copy];
    audioData = v30->_audioData;
    v30->_audioData = v49;

    v30->_shouldCache = 1;
    v30->_canUseServerTTS = s;
    [(SRUIFSpeechSynthesisTask *)v30 _setDurationHasElapsed:duration <= 0.0];
    [(SRUIFSpeechSynthesisTask *)v30 _setPreparationBlockCompleted:preparationCopy == 0];
    if ([(SRUIFSpeechSynthesisTask *)v30 preparationBlockCompleted])
    {
      durationHasElapsed = [(SRUIFSpeechSynthesisTask *)v30 durationHasElapsed];
    }

    else
    {
      durationHasElapsed = 0;
    }

    [(SRUIFSpeechSynthesisTask *)v30 _setEligibleForProcessing:durationHasElapsed];
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
      v56 = _Block_copy(preparationCopy);
      v57 = v30->_identifier;
      *buf = 136315906;
      v82 = "[SRUIFSpeechSynthesisTask initWithText:audioData:identifier:sessionId:preferredVoice:language:gender:voicePromptStyle:provisional:eligibleAfterDuration:delayed:preparation:completion:analyticsContext:speakableContextInfo:canUseServerTTS:eligibilityChangedQueue:]";
      v83 = 2112;
      v84 = v56;
      v85 = 2048;
      durationCopy = duration;
      v87 = 2112;
      v88 = v57;
      _os_log_impl(&dword_26951F000, v55, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Preparation: %@, Eligibility delay: %f - %@", buf, 0x2Au);
    }

    objc_initWeak(&location, v30);
    if (preparationCopy)
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
      v77 = queueCopy;
      objc_copyWeak(&v78, &location);
      (*(preparationCopy + 2))(preparationCopy, v76);
      objc_destroyWeak(&v78);
    }

    if (duration > 0.0)
    {
      v61 = dispatch_time(0, (duration * 1000000000.0));
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __263__SRUIFSpeechSynthesisTask_initWithText_audioData_identifier_sessionId_preferredVoice_language_gender_voicePromptStyle_provisional_eligibleAfterDuration_delayed_preparation_completion_analyticsContext_speakableContextInfo_canUseServerTTS_eligibilityChangedQueue___block_invoke_2;
      block[3] = &unk_279C61870;
      objc_copyWeak(&v75, &location);
      dispatch_after(v61, queueCopy, block);
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

- (void)setDelayed:(BOOL)delayed
{
  if (self->_delayed != delayed)
  {
    self->_delayed = delayed;
    if (!delayed)
    {
      [(SRUIFSpeechSynthesisTask *)self _updateSynthesisEligibility];
    }
  }
}

- (void)_setEligibleForProcessing:(BOOL)processing
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_eligibleForProcessing != processing)
  {
    self->_eligibleForProcessing = processing;
    if (processing)
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[SRUIFSpeechSynthesisTask _setEligibleForProcessing:]";
        v8 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Processing eligibility updated %@", &v6, 0x16u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setEligibleForSynthesis:(BOOL)synthesis
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_eligibleForSynthesis != synthesis)
  {
    self->_eligibleForSynthesis = synthesis;
    if (synthesis)
    {
      v4 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[SRUIFSpeechSynthesisTask _setEligibleForSynthesis:]";
        v8 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_26951F000, v4, OS_LOG_TYPE_DEFAULT, "%s #tts [Pre] Synthesis eligibility updated %@", &v6, 0x16u);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end