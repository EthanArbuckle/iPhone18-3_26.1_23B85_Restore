@interface SSRSpeakerRecognitionController
- (SSRSpeakerRecognitionController)initWithContext:(id)context withDelegate:(id)delegate error:(id *)error;
- (SSRSpeakerRecognitionControllerDelegate)delegate;
- (void)voiceRecognitionOrchestrator:(id)orchestrator hasVoiceRecognitionInfo:(id)info;
- (void)voiceRecognitionOrchestratorFinishedProcessing:(id)processing withFinalVoiceRecognitionInfo:(id)info;
@end

@implementation SSRSpeakerRecognitionController

- (SSRSpeakerRecognitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)voiceRecognitionOrchestratorFinishedProcessing:(id)processing withFinalVoiceRecognitionInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  infoCopy = info;
  v8 = MEMORY[0x277D015C8];
  v9 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(NSDictionary *)infoCopy objectForKeyedSubscript:@"spIdKnownUserScores"];
    v20 = 136315394;
    v21 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestratorFinishedProcessing:withFinalVoiceRecognitionInfo:]";
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Final - %@", &v20, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 speakerRecognitionFinishedProcessing:self withFinalSpeakerInfo:infoCopy];
LABEL_7:

    goto LABEL_8;
  }

  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    context = self->_context;
    v14 = v15;
    sessionId = [(SSRSpeakerRecognitionContext *)context sessionId];
    v20 = 136315394;
    v21 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestratorFinishedProcessing:withFinalVoiceRecognitionInfo:]";
    v22 = 2114;
    v23 = sessionId;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Discarded speaker scores for session - %{public}@", &v20, 0x16u);

    goto LABEL_7;
  }

LABEL_8:
  lastScoreCard = self->_lastScoreCard;
  self->_lastScoreCard = infoCopy;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)voiceRecognitionOrchestrator:(id)orchestrator hasVoiceRecognitionInfo:(id)info
{
  v39 = *MEMORY[0x277D85DE8];
  orchestratorCopy = orchestrator;
  infoCopy = info;
  v8 = MEMORY[0x277D015C8];
  v9 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [infoCopy objectForKeyedSubscript:@"segmentCounter"];
    intValue = [v11 intValue];
    [infoCopy objectForKeyedSubscript:@"segmentStartTime"];
    v14 = v13 = orchestratorCopy;
    [v14 floatValue];
    v16 = v15;
    v17 = [infoCopy objectForKeyedSubscript:@"spIdAudioProcessedDuration"];
    intValue2 = [v17 intValue];
    v19 = [infoCopy objectForKeyedSubscript:@"spIdKnownUserScores"];
    *buf = 136316162;
    v32 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestrator:hasVoiceRecognitionInfo:]";
    v33 = 1026;
    *v34 = intValue;
    *&v34[4] = 2050;
    *&v34[6] = v16;
    v35 = 1024;
    v36 = intValue2;
    v37 = 2114;
    v38 = v19;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Scorecard for {%{public}d, %{public}.2fsec %dms} - %{public}@", buf, 0x2Cu);

    orchestratorCopy = v13;
    v8 = MEMORY[0x277D015C8];
  }

  v20 = [infoCopy objectForKeyedSubscript:@"spIdKnownUserScores"];

  if (v20)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 speakerRecognitionController:self hasSpeakerInfo:infoCopy];
    }

    else
    {
      v26 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v29 = infoCopy;
        lastScoreCard = self->_lastScoreCard;
        self->_lastScoreCard = v29;
        goto LABEL_12;
      }

      context = self->_context;
      v23 = v26;
      sessionId = [(SSRSpeakerRecognitionContext *)context sessionId];
      *buf = 136315394;
      v32 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestrator:hasVoiceRecognitionInfo:]";
      v33 = 2114;
      *v34 = sessionId;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Discarded speaker scores for session - %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  lastScoreCard = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Scorecard not available in score dictionary - %@", infoCopy];
  v25 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v32 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestrator:hasVoiceRecognitionInfo:]";
    v33 = 2112;
    *v34 = lastScoreCard;
    _os_log_impl(&dword_225E12000, v25, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerRecognitionController)initWithContext:(id)context withDelegate:(id)delegate error:(id *)error
{
  contextCopy = context;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = SSRSpeakerRecognitionController;
  v11 = [(SSRSpeakerRecognitionController *)&v19 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  v18 = 0;
  v12 = [[SSRSpeakerRecognitionOrchestrator alloc] initWithContext:contextCopy withDelegate:v11 error:&v18];
  v13 = v18;
  orchestrator = v11->_orchestrator;
  v11->_orchestrator = v12;

  if (!v13 && v11->_orchestrator)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v11->_context, context);
LABEL_8:
    v16 = v11;
    goto LABEL_9;
  }

  if (error)
  {
    v15 = v13;
    *error = v13;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

@end