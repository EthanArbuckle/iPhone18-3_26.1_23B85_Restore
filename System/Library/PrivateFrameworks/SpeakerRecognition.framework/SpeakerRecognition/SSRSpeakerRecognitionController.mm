@interface SSRSpeakerRecognitionController
- (SSRSpeakerRecognitionController)initWithContext:(id)a3 withDelegate:(id)a4 error:(id *)a5;
- (SSRSpeakerRecognitionControllerDelegate)delegate;
- (void)voiceRecognitionOrchestrator:(id)a3 hasVoiceRecognitionInfo:(id)a4;
- (void)voiceRecognitionOrchestratorFinishedProcessing:(id)a3 withFinalVoiceRecognitionInfo:(id)a4;
@end

@implementation SSRSpeakerRecognitionController

- (SSRSpeakerRecognitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)voiceRecognitionOrchestratorFinishedProcessing:(id)a3 withFinalVoiceRecognitionInfo:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D015C8];
  v9 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(NSDictionary *)v7 objectForKeyedSubscript:@"spIdKnownUserScores"];
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
    [v14 speakerRecognitionFinishedProcessing:self withFinalSpeakerInfo:v7];
LABEL_7:

    goto LABEL_8;
  }

  v15 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    context = self->_context;
    v14 = v15;
    v17 = [(SSRSpeakerRecognitionContext *)context sessionId];
    v20 = 136315394;
    v21 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestratorFinishedProcessing:withFinalVoiceRecognitionInfo:]";
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Discarded speaker scores for session - %{public}@", &v20, 0x16u);

    goto LABEL_7;
  }

LABEL_8:
  lastScoreCard = self->_lastScoreCard;
  self->_lastScoreCard = v7;

  v19 = *MEMORY[0x277D85DE8];
}

- (void)voiceRecognitionOrchestrator:(id)a3 hasVoiceRecognitionInfo:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D015C8];
  v9 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 objectForKeyedSubscript:@"segmentCounter"];
    v12 = [v11 intValue];
    [v7 objectForKeyedSubscript:@"segmentStartTime"];
    v14 = v13 = v6;
    [v14 floatValue];
    v16 = v15;
    v17 = [v7 objectForKeyedSubscript:@"spIdAudioProcessedDuration"];
    v18 = [v17 intValue];
    v19 = [v7 objectForKeyedSubscript:@"spIdKnownUserScores"];
    *buf = 136316162;
    v32 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestrator:hasVoiceRecognitionInfo:]";
    v33 = 1026;
    *v34 = v12;
    *&v34[4] = 2050;
    *&v34[6] = v16;
    v35 = 1024;
    v36 = v18;
    v37 = 2114;
    v38 = v19;
    _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Scorecard for {%{public}d, %{public}.2fsec %dms} - %{public}@", buf, 0x2Cu);

    v6 = v13;
    v8 = MEMORY[0x277D015C8];
  }

  v20 = [v7 objectForKeyedSubscript:@"spIdKnownUserScores"];

  if (v20)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v22 = objc_opt_respondsToSelector();

    if (v22)
    {
      v23 = objc_loadWeakRetained(&self->_delegate);
      [v23 speakerRecognitionController:self hasSpeakerInfo:v7];
    }

    else
    {
      v26 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:
        v29 = v7;
        lastScoreCard = self->_lastScoreCard;
        self->_lastScoreCard = v29;
        goto LABEL_12;
      }

      context = self->_context;
      v23 = v26;
      v28 = [(SSRSpeakerRecognitionContext *)context sessionId];
      *buf = 136315394;
      v32 = "[SSRSpeakerRecognitionController voiceRecognitionOrchestrator:hasVoiceRecognitionInfo:]";
      v33 = 2114;
      *v34 = v28;
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Discarded speaker scores for session - %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  lastScoreCard = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Scorecard not available in score dictionary - %@", v7];
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

- (SSRSpeakerRecognitionController)initWithContext:(id)a3 withDelegate:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v19.receiver = self;
  v19.super_class = SSRSpeakerRecognitionController;
  v11 = [(SSRSpeakerRecognitionController *)&v19 init];
  if (!v11)
  {
    goto LABEL_8;
  }

  v18 = 0;
  v12 = [[SSRSpeakerRecognitionOrchestrator alloc] initWithContext:v9 withDelegate:v11 error:&v18];
  v13 = v18;
  orchestrator = v11->_orchestrator;
  v11->_orchestrator = v12;

  if (!v13 && v11->_orchestrator)
  {
    objc_storeWeak(&v11->_delegate, v10);
    objc_storeStrong(&v11->_context, a3);
LABEL_8:
    v16 = v11;
    goto LABEL_9;
  }

  if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

@end