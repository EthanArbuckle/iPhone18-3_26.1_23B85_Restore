@interface SSRSpeakerRecognizerSAT
- (NSDictionary)lastScoreCard;
- (SSRSpeakerRecognizerDelegate)delegate;
- (SSRSpeakerRecognizerSAT)initWithContext:(id)a3 delegate:(id)a4;
- (void)_initializeWithContext:(id)a3;
- (void)dealloc;
- (void)voiceRecognitionSATAnalyzer:(id)a3 hasVoiceRecognitionInfo:(id)a4;
- (void)voiceRecognitionSATAnalyzerFinishedProcessing:(id)a3 withVoiceRecognitionInfo:(id)a4;
@end

@implementation SSRSpeakerRecognizerSAT

- (SSRSpeakerRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)voiceRecognitionSATAnalyzerFinishedProcessing:(id)a3 withVoiceRecognitionInfo:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"sessionId"];
  if (v7 && ![(NSString *)self->_sessionId isEqualToString:v7])
  {
    v11 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      spIdCtx = self->_spIdCtx;
      v10 = v11;
      v13 = [(SSRSpeakerRecognitionContext *)spIdCtx sessionId];
      v15 = 136315650;
      v16 = "[SSRSpeakerRecognizerSAT voiceRecognitionSATAnalyzerFinishedProcessing:withVoiceRecognitionInfo:]";
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Discarded ScoreCard for mismatch session - {%{public}@, %{public}@}", &v15, 0x20u);

      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&self->_lastSpeakerInfo, a4);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 speakerRecognizerFinishedProcessing:self withFinalSpeakerIdInfo:v6];
LABEL_7:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)voiceRecognitionSATAnalyzer:(id)a3 hasVoiceRecognitionInfo:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"sessionId"];
  if (v7 && ![(NSString *)self->_sessionId isEqualToString:v7])
  {
    v11 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      spIdCtx = self->_spIdCtx;
      v10 = v11;
      v13 = [(SSRSpeakerRecognitionContext *)spIdCtx sessionId];
      v15 = 136315650;
      v16 = "[SSRSpeakerRecognizerSAT voiceRecognitionSATAnalyzer:hasVoiceRecognitionInfo:]";
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Discarded ScoreCard for mismatch session - {%{public}@, %{public}@}", &v15, 0x20u);

      goto LABEL_7;
    }
  }

  else
  {
    objc_storeStrong(&self->_lastSpeakerInfo, a4);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 speakerRecognizer:self hasSpeakerIdInfo:v6];
LABEL_7:
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)lastScoreCard
{
  v3 = [(SSRSpeakerAnalyzerSAT *)self->_satAnalyzer getVoiceRecognizerResults];
  lastSpeakerInfo = self->_lastSpeakerInfo;
  self->_lastSpeakerInfo = v3;

  v5 = self->_lastSpeakerInfo;

  return v5;
}

- (void)_initializeWithContext:(id)a3
{
  v16 = a3;
  objc_storeStrong(&self->_spIdCtx, a3);
  v5 = [(SSRSpeakerRecognitionContext *)self->_spIdCtx sessionId];
  sessionId = self->_sessionId;
  self->_sessionId = v5;

  self->_numTdTiSamplesProcessed = 0;
  self->_processingEnded = 0;
  self->_extraSamplesAtStart = 0;
  self->_tdEndInSampleCount = 0;
  v7 = [SSRUtils stringForInvocationStyle:[(SSRSpeakerRecognitionContext *)self->_spIdCtx recognitionStyle]];
  invocationStyleStr = self->_invocationStyleStr;
  self->_invocationStyleStr = v7;

  if (![(SSRSpeakerRecognitionContext *)self->_spIdCtx recognitionStyle])
  {
    v9 = [(SSRSpeakerRecognitionContext *)self->_spIdCtx vtEventInfo];
    v10 = [v9 objectForKeyedSubscript:@"extraSamplesAtStart"];
    [v10 floatValue];
    self->_extraSamplesAtStart = v11;

    v12 = [v9 objectForKeyedSubscript:@"triggerEndSeconds"];
    [v12 floatValue];
    v14 = v13;

    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    self->_tdEndInSampleCount = (v14 * v15);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SSRSpeakerRecognizerSAT dealloc]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s SSRSpeakerRecognizerSAT dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SSRSpeakerRecognizerSAT;
  [(SSRSpeakerRecognizerSAT *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerRecognizerSAT)initWithContext:(id)a3 delegate:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = SSRSpeakerRecognizerSAT;
  v9 = [(SSRSpeakerRecognizerSAT *)&v25 init];
  if (!v9)
  {
LABEL_9:
    v21 = v9;
    goto LABEL_13;
  }

  if ([v7 recognitionStyle] && objc_msgSend(v7, "recognitionStyle") != 1 && objc_msgSend(v7, "recognitionStyle") != 2)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:v9 file:@"SSRSpeakerRecognizerSAT.m" lineNumber:52 description:{@"Incorrect ctx for VTSpeakerRecognizer: %@", v7}];
  }

  [(SSRSpeakerRecognizerSAT *)v9 _initializeWithContext:v7];
  objc_storeWeak(&v9->_delegate, v8);
  v10 = [[SSRSpeakerAnalyzerSAT alloc] initWithVoiceRecognitionContext:v9->_spIdCtx delegate:v9];
  satAnalyzer = v9->_satAnalyzer;
  v9->_satAnalyzer = v10;

  v12 = v9->_satAnalyzer;
  v13 = *MEMORY[0x277D015C8];
  v14 = os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = v13;
      v16 = +[SSRUtils stringForInvocationStyle:](SSRUtils, "stringForInvocationStyle:", [v7 recognitionStyle]);
      v17 = [(SSRSpeakerRecognitionContext *)v9->_spIdCtx sessionId];
      extraSamplesAtStart = v9->_extraSamplesAtStart;
      tdEndInSampleCount = v9->_tdEndInSampleCount;
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      *buf = 136316418;
      v27 = "[SSRSpeakerRecognizerSAT initWithContext:delegate:]";
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v17;
      v32 = 2048;
      v33 = extraSamplesAtStart;
      v34 = 2048;
      v35 = tdEndInSampleCount;
      v36 = 2048;
      v37 = ((tdEndInSampleCount / v20) * 1000.0);
      _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s %@::uniqueUttTag: %@, extraSamplesAtStart: %lu, _tdEndInSampleCount: %lu(%f ms)", buf, 0x3Eu);
    }

    goto LABEL_9;
  }

  if (v14)
  {
    *buf = 136315138;
    v27 = "[SSRSpeakerRecognizerSAT initWithContext:delegate:]";
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to create SSRSpeakerAnalyzerSAT", buf, 0xCu);
  }

  v21 = 0;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end