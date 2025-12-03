@interface SSRSpeakerRecognizerPSR
- (NSDictionary)lastScoreCard;
- (SSRSpeakerRecognizerDelegate)delegate;
- (SSRSpeakerRecognizerPSR)initWithContext:(id)context delegate:(id)delegate;
- (void)_initializeWithContext:(id)context;
- (void)dealloc;
- (void)voiceRecognitionPSRAnalyzer:(id)analyzer hasVoiceRecognitionInfo:(id)info;
- (void)voiceRecognitionPSRAnalyzerFinishedProcessing:(id)processing withVoiceRecognitionInfo:(id)info;
@end

@implementation SSRSpeakerRecognizerPSR

- (SSRSpeakerRecognizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)voiceRecognitionPSRAnalyzerFinishedProcessing:(id)processing withVoiceRecognitionInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:@"sessionId"];
  if (v6 && ![(NSString *)self->_sessionId isEqualToString:v6])
  {
    v24 = *MEMORY[0x277D015C8];
    if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    spIdCtx = self->_spIdCtx;
    v8 = v24;
    sessionId = [(SSRSpeakerRecognitionContext *)spIdCtx sessionId];
    v27 = 136315650;
    v28 = "[SSRSpeakerRecognizerPSR voiceRecognitionPSRAnalyzerFinishedProcessing:withVoiceRecognitionInfo:]";
    v29 = 2114;
    v30 = sessionId;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Discarded ScoreCard for mismatch session - {%{public}@, %{public}@}", &v27, 0x20u);
  }

  else
  {
    v7 = [infoCopy objectForKeyedSubscript:@"psrContext"];
    v8 = [v7 mutableCopy];

    extraSamplesAtStart = self->_extraSamplesAtStart;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v11 = (extraSamplesAtStart / v10) * 1000.0;
    vtEndInSampleCount = self->_vtEndInSampleCount;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v14 = (vtEndInSampleCount / v13) * 1000.0;
    *&v15 = v11;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v8 setObject:v16 forKey:@"extraAudioAtStartInMs"];

    *&v17 = v14;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v8 setObject:v18 forKey:@"tdEndInMs"];

    v19 = [infoCopy mutableCopy];
    [(NSDictionary *)v19 setObject:v8 forKey:@"psrContext"];
    lastSpeakerInfo = self->_lastSpeakerInfo;
    self->_lastSpeakerInfo = v19;
    v21 = v19;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speakerRecognizerFinishedProcessing:self withFinalSpeakerIdInfo:v21];
  }

LABEL_5:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)voiceRecognitionPSRAnalyzer:(id)analyzer hasVoiceRecognitionInfo:(id)info
{
  v33 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = [infoCopy objectForKeyedSubscript:@"sessionId"];
  if (v6 && ![(NSString *)self->_sessionId isEqualToString:v6])
  {
    v24 = *MEMORY[0x277D015C8];
    if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    spIdCtx = self->_spIdCtx;
    v8 = v24;
    sessionId = [(SSRSpeakerRecognitionContext *)spIdCtx sessionId];
    v27 = 136315650;
    v28 = "[SSRSpeakerRecognizerPSR voiceRecognitionPSRAnalyzer:hasVoiceRecognitionInfo:]";
    v29 = 2114;
    v30 = sessionId;
    v31 = 2114;
    v32 = v6;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Discarded ScoreCard for mismatch session - {%{public}@, %{public}@}", &v27, 0x20u);
  }

  else
  {
    v7 = [infoCopy objectForKeyedSubscript:@"psrContext"];
    v8 = [v7 mutableCopy];

    extraSamplesAtStart = self->_extraSamplesAtStart;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v11 = (extraSamplesAtStart / v10) * 1000.0;
    vtEndInSampleCount = self->_vtEndInSampleCount;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v14 = (vtEndInSampleCount / v13) * 1000.0;
    *&v15 = v11;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v8 setObject:v16 forKey:@"extraAudioAtStartInMs"];

    *&v17 = v14;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v8 setObject:v18 forKey:@"tdEndInMs"];

    v19 = [infoCopy mutableCopy];
    [(NSDictionary *)v19 setObject:v8 forKey:@"psrContext"];
    lastSpeakerInfo = self->_lastSpeakerInfo;
    self->_lastSpeakerInfo = v19;
    v21 = v19;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained speakerRecognizer:self hasSpeakerIdInfo:v21];
  }

LABEL_5:
  v23 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)lastScoreCard
{
  getVoiceRecognizerResults = [(SSRSpeakerAnalyzerPSR *)self->_psrAnalyzer getVoiceRecognizerResults];
  lastSpeakerInfo = self->_lastSpeakerInfo;
  self->_lastSpeakerInfo = getVoiceRecognizerResults;

  v5 = self->_lastSpeakerInfo;

  return v5;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[SSRSpeakerRecognizerPSR dealloc]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s CSSpIdVTSpeakerRecognizer dealloc", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SSRSpeakerRecognizerPSR;
  [(SSRSpeakerRecognizerPSR *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_initializeWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_spIdCtx, context);
  sessionId = [(SSRSpeakerRecognitionContext *)self->_spIdCtx sessionId];
  sessionId = self->_sessionId;
  self->_sessionId = sessionId;

  self->_numSamplesProcessed = 0;
  self->_processingEnded = 0;
  self->_extraSamplesAtStart = 0;
  self->_vtEndInSampleCount = 0;
  v7 = [SSRUtils stringForInvocationStyle:[(SSRSpeakerRecognitionContext *)self->_spIdCtx recognitionStyle]];
  invocationStyleStr = self->_invocationStyleStr;
  self->_invocationStyleStr = v7;

  if (![(SSRSpeakerRecognitionContext *)self->_spIdCtx recognitionStyle])
  {
    vtEventInfo = [(SSRSpeakerRecognitionContext *)self->_spIdCtx vtEventInfo];
    v10 = [vtEventInfo objectForKeyedSubscript:@"extraSamplesAtStart"];
    [v10 floatValue];
    self->_extraSamplesAtStart = v11;

    v12 = [vtEventInfo objectForKeyedSubscript:@"triggerEndSeconds"];
    [v12 floatValue];
    v14 = v13;

    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    self->_vtEndInSampleCount = (v14 * v15);
  }
}

- (SSRSpeakerRecognizerPSR)initWithContext:(id)context delegate:(id)delegate
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = SSRSpeakerRecognizerPSR;
  v9 = [(SSRSpeakerRecognizerPSR *)&v25 init];
  if (!v9)
  {
LABEL_9:
    v21 = v9;
    goto LABEL_13;
  }

  if ([contextCopy recognitionStyle] && objc_msgSend(contextCopy, "recognitionStyle") != 1 && objc_msgSend(contextCopy, "recognitionStyle") != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v9 file:@"SSRSpeakerRecognizerPSR.m" lineNumber:54 description:{@"Incorrect ctx for VTSpeakerRecognizer: %@", contextCopy}];
  }

  [(SSRSpeakerRecognizerPSR *)v9 _initializeWithContext:contextCopy];
  objc_storeWeak(&v9->_delegate, delegateCopy);
  v10 = [[SSRSpeakerAnalyzerPSR alloc] initWithVoiceRecognitionContext:v9->_spIdCtx delegate:v9];
  psrAnalyzer = v9->_psrAnalyzer;
  v9->_psrAnalyzer = v10;

  v12 = v9->_psrAnalyzer;
  v13 = *MEMORY[0x277D015C8];
  v14 = os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = v13;
      v16 = +[SSRUtils stringForInvocationStyle:](SSRUtils, "stringForInvocationStyle:", [contextCopy recognitionStyle]);
      sessionId = [(SSRSpeakerRecognitionContext *)v9->_spIdCtx sessionId];
      extraSamplesAtStart = v9->_extraSamplesAtStart;
      vtEndInSampleCount = v9->_vtEndInSampleCount;
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      *buf = 136316418;
      v27 = "[SSRSpeakerRecognizerPSR initWithContext:delegate:]";
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = sessionId;
      v32 = 2048;
      v33 = extraSamplesAtStart;
      v34 = 2048;
      v35 = vtEndInSampleCount;
      v36 = 2048;
      v37 = ((vtEndInSampleCount / v20) * 1000.0);
      _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s %@::uniqueUttTag: %@, extraSamplesAtStart: %lu, _tdEndInSampleCount: %lu(%f ms)", buf, 0x3Eu);
    }

    goto LABEL_9;
  }

  if (v14)
  {
    *buf = 136315138;
    v27 = "[SSRSpeakerRecognizerPSR initWithContext:delegate:]";
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Failed to create SSRSpeakerRecognizerPSR", buf, 0xCu);
  }

  v21 = 0;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end