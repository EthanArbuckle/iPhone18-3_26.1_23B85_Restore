@interface SSRSpeakerAnalyzerPSR
- (BOOL)_isSpeakerVectorValid:(id)valid speakerVectorSize:(unint64_t)size fromPsrAudioProcessor:(id)processor;
- (SSRSpeakerAnalyzerPSR)initWithVoiceRecognitionContext:(id)context delegate:(id)delegate;
- (SSRSpeakerAnalyzerPSRDelegate)delegate;
- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms;
- (id)getVoiceRecognizerResults;
- (id)resetForNewRequest;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioData:(id)data;
- (void)psrAudioProcessor:(id)processor finishedWithFinalSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms;
- (void)psrAudioProcessor:(id)processor hasSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms;
@end

@implementation SSRSpeakerAnalyzerPSR

- (SSRSpeakerAnalyzerPSRDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)psrAudioProcessor:(id)processor finishedWithFinalSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms
{
  v30 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  vectorCopy = vector;
  if ([(SSRSpeakerAnalyzerPSR *)self _isSpeakerVectorValid:vectorCopy speakerVectorSize:size fromPsrAudioProcessor:processorCopy])
  {
    v12 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      numSamplesProecssed = self->_numSamplesProecssed;
      v20 = 136316162;
      v21 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:finishedWithFinalSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v22 = 2114;
      v23 = processorCopy;
      v24 = 2050;
      sizeCopy = size;
      v26 = 2050;
      msCopy = ms;
      v28 = 2050;
      v29 = numSamplesProecssed;
      _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s FINISHED processing: psrAudioProcessor:%{public}@ finishedWithFinalSpeakerVector: speakerVectorSize:%{public}lu processedAudioDurationMs: %{public}lu %{public}lu", &v20, 0x34u);
    }

    v14 = [(SSRSpeakerAnalyzerPSR *)self _processSpeakerVector:vectorCopy withSize:size processedAudioDurationMs:ms];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 voiceRecognitionPSRAnalyzerFinishedProcessing:self withVoiceRecognitionInfo:v14];
    }
  }

  else
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:finishedWithFinalSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v22 = 1024;
      LODWORD(v23) = size;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Invalid speaker vector with size %d - Skipping", &v20, 0x12u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)psrAudioProcessor:(id)processor hasSpeakerVector:(id)vector speakerVectorSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms
{
  v27 = *MEMORY[0x277D85DE8];
  processorCopy = processor;
  vectorCopy = vector;
  if ([(SSRSpeakerAnalyzerPSR *)self _isSpeakerVectorValid:vectorCopy speakerVectorSize:size fromPsrAudioProcessor:processorCopy])
  {
    v12 = [(SSRSpeakerAnalyzerPSR *)self _processSpeakerVector:vectorCopy withSize:size processedAudioDurationMs:ms];
    v13 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:hasSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v21 = 2114;
      v22 = processorCopy;
      v23 = 2050;
      sizeCopy = size;
      v25 = 2050;
      msCopy = ms;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s processing: psrAudioProcessor:%{public}@ speakerVectorSize:%{public}lu processedAudioDurationMs: %{public}lu", &v19, 0x2Au);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 voiceRecognitionPSRAnalyzer:self hasVoiceRecognitionInfo:v12];
    }
  }

  else
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[SSRSpeakerAnalyzerPSR psrAudioProcessor:hasSpeakerVector:speakerVectorSize:processedAudioDurationMs:]";
      v21 = 1024;
      LODWORD(v22) = size;
      _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s Invalid speaker vector with size %d - Skipping", &v19, 0x12u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSpeakerVectorValid:(id)valid speakerVectorSize:(unint64_t)size fromPsrAudioProcessor:(id)processor
{
  v26 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  processorCopy = processor;
  psrAudioProcessor = self->_psrAudioProcessor;
  if (psrAudioProcessor == processorCopy)
  {
    if (!validCopy)
    {
      v18 = *MEMORY[0x277D015C8];
      if (!os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      v20 = 136315138;
      v21 = "[SSRSpeakerAnalyzerPSR _isSpeakerVectorValid:speakerVectorSize:fromPsrAudioProcessor:]";
      v12 = "%s ERR: psrResult is nil";
      v13 = v18;
      v14 = 12;
      goto LABEL_4;
    }

    if (size)
    {
      v15 = 1;
      goto LABEL_6;
    }

    v19 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[SSRSpeakerAnalyzerPSR _isSpeakerVectorValid:speakerVectorSize:fromPsrAudioProcessor:]";
      v22 = 2050;
      v23 = 0;
      v12 = "%s Invalid speakerVectorSize=%{public}lu";
      v13 = v19;
      v14 = 22;
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[SSRSpeakerAnalyzerPSR _isSpeakerVectorValid:speakerVectorSize:fromPsrAudioProcessor:]";
      v22 = 2112;
      v23 = processorCopy;
      v24 = 2112;
      v25 = psrAudioProcessor;
      v12 = "%s ERR: Reporting psrAudioProcessor(%@) != _psrAudioProcessor(%@)";
      v13 = v11;
      v14 = 32;
LABEL_4:
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, v12, &v20, v14);
    }
  }

LABEL_5:
  v15 = 0;
LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_processSpeakerVector:(id)vector withSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms
{
  v35 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_psrScorers, "count")}];
  v9 = [(SSRSpeakerRecognitionContext *)self->_context recognitionStyle]== 1 && !self->_triggerPhraseDetectedOnTap;
  msCopy = ms;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = self->_psrScorers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v14 scoreSpeakerVector:vectorCopy withDimensions:size withThresholdType:v9];
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        profileID = [v14 profileID];
        [v8 setObject:v15 forKeyedSubscript:profileID];
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v11);
  }

  v32 = @"configPath";
  path = [(NSURL *)self->_configFilePath path];
  v33 = path;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

  v31[0] = v8;
  v30[0] = @"spIdKnownUserPSRScores";
  v30[1] = @"spIdUnknownUserScore";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v31[1] = v19;
  v30[2] = @"spIdAudioProcessedDuration";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:msCopy];
  v30[3] = @"psrContext";
  v31[2] = v20;
  v31[3] = v18;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)getVoiceRecognizerResults
{
  v48 = *MEMORY[0x277D85DE8];
  p_psrScorers = &self->_psrScorers;
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_psrScorers, "count")}];
  v35 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](*p_psrScorers, "count")}];
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_psrScorers, "count")}];
  v4 = [(SSRSpeakerRecognitionContext *)self->_context recognitionStyle]== 1 && !self->_triggerPhraseDetectedOnTap;
  getLatestSuperVector = [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor getLatestSuperVector];
  v6 = [getLatestSuperVector length];
  if (v6 > 3)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = self->_psrScorers;
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v9)
    {
      v10 = v6 >> 2;
      v11 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          [v13 scoreSpeakerVector:getLatestSuperVector withDimensions:v10 withThresholdType:v4];
          v14 = [MEMORY[0x277CCABB0] numberWithFloat:?];
          profileID = [v13 profileID];
          [v38 setObject:v14 forKeyedSubscript:profileID];

          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "getSATVectorCount")}];
          profileID2 = [v13 profileID];
          [v37 setObject:v16 forKeyedSubscript:profileID2];

          voiceProfilesExpModelFilePaths = self->_voiceProfilesExpModelFilePaths;
          if (voiceProfilesExpModelFilePaths)
          {
            profileID3 = [v13 profileID];
            v20 = [(NSDictionary *)voiceProfilesExpModelFilePaths objectForKeyedSubscript:profileID3];
            v21 = v20 == 0;

            if (!v21)
            {
              v22 = self->_voiceProfilesExpModelFilePaths;
              profileID4 = [v13 profileID];
              v24 = [(NSDictionary *)v22 objectForKeyedSubscript:profileID4];
              [v13 resetScorerWithModelFilePath:v24];

              [v13 scoreSpeakerVector:getLatestSuperVector withDimensions:v10 withThresholdType:v4];
              v25 = [MEMORY[0x277CCABB0] numberWithFloat:?];
              profileID5 = [v13 profileID];
              [v35 setObject:v25 forKeyedSubscript:profileID5];
            }
          }

          voiceProfilesModelFilePaths = self->_voiceProfilesModelFilePaths;
          profileID6 = [v13 profileID];
          v29 = [(NSDictionary *)voiceProfilesModelFilePaths objectForKeyedSubscript:profileID6];
          [v13 resetScorerWithModelFilePath:v29];
        }

        v9 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v9);
    }

    v45[0] = @"configPath";
    path = [(NSURL *)self->_configFilePath path];
    v45[1] = @"numSpeakerVectors";
    v46[0] = path;
    v46[1] = v37;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

    v43[0] = @"spIdKnownUserPSRScores";
    v43[1] = @"spIdKnownUserPSRExpScores";
    v44[0] = v38;
    v44[1] = v35;
    v43[2] = @"spIdUnknownUserScore";
    v32 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
    v43[3] = @"psrContext";
    v44[2] = v32;
    v44[3] = v31;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];
  }

  else
  {
    logAggregator = [(SSRSpeakerRecognitionContext *)self->_context logAggregator];
    [logAggregator setSpeakerRecognitionPSRProcessingStatus:743];

    v8 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)resetForNewRequest
{
  v16 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor resetForNewRequestSync];
  date2 = [MEMORY[0x277CBEAA8] date];
  v5 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    psrAudioProcessor = self->_psrAudioProcessor;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315650;
    v11 = "[SSRSpeakerAnalyzerPSR resetForNewRequest]";
    v12 = 2114;
    v13 = psrAudioProcessor;
    v14 = 2050;
    v15 = v7 * 1000.0;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Successfully reset psrAnalyzer: %{public}@ in %{public}fms", buf, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return 0;
}

- (void)endAudio
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRSpeakerAnalyzerPSR endAudio]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Calling endAudio on EARSyncPSRAudioProcessor", &v6, 0xCu);
  }

  [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor endAudio];
  getLatestSuperVector = [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor getLatestSuperVector];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)processAudioData:(id)data
{
  v7 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy && [dataCopy bytes] && objc_msgSend(v5, "length"))
  {
    [(EARSyncPSRAudioProcessor *)self->_psrAudioProcessor addAudioSync:v5];
    self->_numSamplesProecssed += [v5 length] >> 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SSRSpeakerAnalyzerPSR dealloc]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %@: dealloc", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = SSRSpeakerAnalyzerPSR;
  [(SSRSpeakerAnalyzerPSR *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerAnalyzerPSR)initWithVoiceRecognitionContext:(id)context delegate:(id)delegate
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v43.receiver = self;
  v43.super_class = SSRSpeakerAnalyzerPSR;
  v9 = [(SSRSpeakerAnalyzerPSR *)&v43 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  modelsContext = [contextCopy modelsContext];
  v11 = [SSRUtils stringForSpeakerRecognizerType:1];
  v12 = [modelsContext objectForKeyedSubscript:v11];

  expModelsContext = [contextCopy expModelsContext];
  v14 = [SSRUtils stringForSpeakerRecognizerType:1];
  v15 = [expModelsContext objectForKeyedSubscript:v14];

  if (!v12)
  {
    v39 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[SSRSpeakerAnalyzerPSR initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s modelContext is nil! - Bailing out", buf, 0xCu);
    }

    goto LABEL_12;
  }

  objc_storeWeak(&v9->_delegate, delegateCopy);
  configFilePath = [v12 configFilePath];
  configFilePath = v9->_configFilePath;
  v9->_configFilePath = configFilePath;

  resourceFilePath = [contextCopy resourceFilePath];
  resourceFilePath = v9->_resourceFilePath;
  v9->_resourceFilePath = resourceFilePath;

  voiceProfilesModelFilePaths = [v12 voiceProfilesModelFilePaths];
  voiceProfilesModelFilePaths = v9->_voiceProfilesModelFilePaths;
  v9->_voiceProfilesModelFilePaths = voiceProfilesModelFilePaths;

  voiceProfilesModelFilePaths2 = [v15 voiceProfilesModelFilePaths];
  voiceProfilesExpModelFilePaths = v9->_voiceProfilesExpModelFilePaths;
  v9->_voiceProfilesExpModelFilePaths = voiceProfilesModelFilePaths2;

  objc_storeStrong(&v9->_context, context);
  v24 = +[SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:withConfigFile:withResourceFile:withOffsetsType:forRetraining:](SSRSpeakerRecognitionScorer, "createVoiceScorersWithVoiceProfiles:withConfigFile:withResourceFile:withOffsetsType:forRetraining:", v9->_voiceProfilesModelFilePaths, v9->_configFilePath, v9->_resourceFilePath, [contextCopy recognitionStyle] != 0, 0);
  psrScorers = v9->_psrScorers;
  v9->_psrScorers = v24;

  v26 = v9->_psrScorers;
  if (!v26 || ![(NSArray *)v26 count])
  {
    v37 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "[SSRSpeakerAnalyzerPSR initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v37, OS_LOG_TYPE_DEFAULT, "%s ERR: Cannot create SAT analyzers", buf, 0xCu);
    }

    logAggregator = [contextCopy logAggregator];
    [logAggregator setSpeakerRecognitionPSRProcessingStatus:106];

LABEL_12:
    goto LABEL_13;
  }

  v42 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.ssr.psrq" fixedPriority:*MEMORY[0x277D019B0]];
  v27 = objc_alloc(MEMORY[0x277D071F0]);
  v28 = [(NSArray *)v9->_psrScorers objectAtIndexedSubscript:0];
  psrConfigFilePath = [v28 psrConfigFilePath];
  v30 = [(NSArray *)v9->_psrScorers objectAtIndexedSubscript:0];
  psrConfigRoot = [v30 psrConfigRoot];
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  v33 = [v27 initWithConfigFile:psrConfigFilePath configRoot:psrConfigRoot sampleRate:v32 delegate:v9 queue:v42 outputLastRowOnly:1];
  psrAudioProcessor = v9->_psrAudioProcessor;
  v9->_psrAudioProcessor = v33;

  resetForNewRequest = [(SSRSpeakerAnalyzerPSR *)v9 resetForNewRequest];
  LOBYTE(psrConfigRoot) = resetForNewRequest == 0;

  if ((psrConfigRoot & 1) == 0)
  {
LABEL_13:
    v36 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v36 = v9;
LABEL_14:

  v40 = *MEMORY[0x277D85DE8];
  return v36;
}

@end