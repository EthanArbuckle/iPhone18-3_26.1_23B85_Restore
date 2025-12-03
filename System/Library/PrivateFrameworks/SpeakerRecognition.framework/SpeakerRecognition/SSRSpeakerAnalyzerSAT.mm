@interface SSRSpeakerAnalyzerSAT
- (SSRSpeakerAnalyzerSAT)initWithVoiceRecognitionContext:(id)context delegate:(id)delegate;
- (SSRSpeakerAnalyzerSATDelegate)delegate;
- (id)_getAnalyzedResult;
- (id)_getSuperVectorWithEndPoint:(unint64_t)point;
- (id)_processSuperVector:(id)vector withSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms isFinal:(BOOL)final;
- (id)getVoiceRecognizerResults;
- (id)resetForNewRequest;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioData:(id)data numSamples:(unint64_t)samples;
@end

@implementation SSRSpeakerAnalyzerSAT

- (SSRSpeakerAnalyzerSATDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_processSuperVector:(id)vector withSize:(unint64_t)size processedAudioDurationMs:(unint64_t)ms isFinal:(BOOL)final
{
  finalCopy = final;
  v53 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_satScorers, "count")}];
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_satScorers, "count")}];
  v41 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_satScorers, "count")}];
  msCopy = ms;
  v9 = [(SSRSpeakerRecognitionContext *)self->_context recognitionStyle]== 1 && !self->_triggerPhraseDetectedOnTap;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_satScorers;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        [v14 analyzeSuperVector:vectorCopy withDimensions:size withThresholdType:v9];
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        profileID = [v14 profileID];
        [v42 setObject:v15 forKeyedSubscript:profileID];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "getSATVectorCount")}];
        profileID2 = [v14 profileID];
        [v41 setObject:v17 forKeyedSubscript:profileID2];

        if (finalCopy)
        {
          voiceProfilesExpModelFilePaths = self->_voiceProfilesExpModelFilePaths;
          if (voiceProfilesExpModelFilePaths)
          {
            profileID3 = [v14 profileID];
            v21 = [(NSDictionary *)voiceProfilesExpModelFilePaths objectForKeyedSubscript:profileID3];

            if (v21)
            {
              v22 = self->_voiceProfilesExpModelFilePaths;
              profileID4 = [v14 profileID];
              v24 = [(NSDictionary *)v22 objectForKeyedSubscript:profileID4];
              [v14 resetScorerWithModelFilePath:v24];

              [v14 analyzeSuperVector:vectorCopy withDimensions:size withThresholdType:v9];
              v25 = [MEMORY[0x277CCABB0] numberWithFloat:?];
              profileID5 = [v14 profileID];
              [v38 setObject:v25 forKeyedSubscript:profileID5];
            }
          }
        }

        voiceProfilesModelFilePaths = self->_voiceProfilesModelFilePaths;
        profileID6 = [v14 profileID];
        v29 = [(NSDictionary *)voiceProfilesModelFilePaths objectForKeyedSubscript:profileID6];
        [v14 resetScorerWithModelFilePath:v29];
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v11);
  }

  v50[0] = @"configPath";
  path = [(NSURL *)self->_configFilePath path];
  v50[1] = @"numSpeakerVectors";
  v51[0] = path;
  v51[1] = v41;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

  v48[0] = @"spIdKnownUserSATScores";
  v48[1] = @"spIdKnownUserSATExpScores";
  v49[0] = v42;
  v49[1] = v38;
  v48[2] = @"spIdUnknownUserScore";
  v32 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v49[2] = v32;
  v48[3] = @"spIdAudioProcessedDuration";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:msCopy];
  v48[4] = @"satContext";
  v49[3] = v33;
  v49[4] = v31;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_getSuperVectorWithEndPoint:(unint64_t)point
{
  novDetect = self->_novDetect;
  if (novDetect)
  {
    novDetect = nd_getsupervector();
    if (novDetect)
    {
      novDetect = [MEMORY[0x277CBEA90] dataWithBytes:*novDetect length:4 * novDetect[2]];
    }

    v3 = vars8;
  }

  return novDetect;
}

- (id)_getAnalyzedResult
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_novDetect)
  {
    v4 = nd_getresults();
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v4];
      [v3 setObject:v6 forKey:@"samples_fed"];

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5[1]];
      [v3 setObject:v7 forKey:@"best_start"];

      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5[3]];
      [v3 setObject:v8 forKey:@"best_phrase"];

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5[2]];
      [v3 setObject:v9 forKey:@"best_end"];

      LODWORD(v10) = v5[4];
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
      [v3 setObject:v11 forKey:@"best_score"];

      v12 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 20)];
      [v3 setObject:v12 forKey:@"early_warning"];

      v13 = [MEMORY[0x277CCABB0] numberWithBool:*(v5 + 21)];
      [v3 setObject:v13 forKey:@"is_rescoring"];
    }
  }

  return v3;
}

- (id)getVoiceRecognizerResults
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8659;
  v10 = __Block_byref_object_dispose__8660;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SSRSpeakerAnalyzerSAT_getVoiceRecognizerResults__block_invoke;
  v5[3] = &unk_2785797D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)resetForNewRequest
{
  v20 = *MEMORY[0x277D85DE8];
  novDetect = self->_novDetect;
  v4 = nd_reset();
  self->_numSamplesProcessed = 0;
  self->_triggerPhraseDetectedOnTap = 0;
  if (v4)
  {
    v5 = v4;
    logAggregator = [(SSRSpeakerRecognitionContext *)self->_context logAggregator];
    [logAggregator setSpeakerRecognitionSATProcessingStatus:753];

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed with errorcode : %d", v5];
    v8 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[SSRSpeakerAnalyzerSAT resetForNewRequest]";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v14 = @"reason";
    v15 = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.speakerrecognition" code:753 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SSRSpeakerAnalyzerSAT_endAudio__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __33__SSRSpeakerAnalyzerSAT_endAudio__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _updateScoreCardForFinalResult:1];
  if (v2)
  {
    v3 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[SSRSpeakerAnalyzerSAT endAudio]_block_invoke";
      v10 = 2114;
      v11 = v2;
      _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to get score card with error: %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained((*(a1 + 32) + 32));
      [v6 voiceRecognitionSATAnalyzerFinishedProcessing:*(a1 + 32) withVoiceRecognitionInfo:*(*(a1 + 32) + 88)];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)processAudioData:(id)data numSamples:(unint64_t)samples
{
  dataCopy = data;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SSRSpeakerAnalyzerSAT_processAudioData_numSamples___block_invoke;
  block[3] = &unk_278579780;
  v10 = dataCopy;
  selfCopy = self;
  samplesCopy = samples;
  v8 = dataCopy;
  dispatch_async(queue, block);
}

void __53__SSRSpeakerAnalyzerSAT_processAudioData_numSamples___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 bytes] && objc_msgSend(*(a1 + 32), "length"))
  {
    v3 = *(*(a1 + 40) + 8);
    [*(a1 + 32) bytes];
    v4 = *(a1 + 48);
    nd_wavedata();
    *(*(a1 + 40) + 16) += *(a1 + 48);
    v5 = [*(a1 + 40) _updateScoreCardForFinalResult:0];
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
      v7 = objc_opt_respondsToSelector();

      v5 = 0;
      if (v7)
      {
        v8 = objc_loadWeakRetained((*(a1 + 40) + 32));
        [v8 voiceRecognitionSATAnalyzer:*(a1 + 40) hasVoiceRecognitionInfo:*(*(a1 + 40) + 88)];

        v5 = 0;
      }
    }
  }
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SSRSpeakerAnalyzerSAT dealloc]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %@: dealloc", buf, 0x16u);
  }

  if (self->_novDetect)
  {
    nd_close();
    self->_novDetect = 0;
  }

  v5.receiver = self;
  v5.super_class = SSRSpeakerAnalyzerSAT;
  [(SSRSpeakerAnalyzerSAT *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerAnalyzerSAT)initWithVoiceRecognitionContext:(id)context delegate:(id)delegate
{
  v56 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  delegateCopy = delegate;
  v49.receiver = self;
  v49.super_class = SSRSpeakerAnalyzerSAT;
  v9 = [(SSRSpeakerAnalyzerSAT *)&v49 init];
  if (!v9)
  {
    goto LABEL_21;
  }

  modelsContext = [contextCopy modelsContext];
  v11 = [SSRUtils stringForSpeakerRecognizerType:2];
  v12 = [modelsContext objectForKeyedSubscript:v11];

  expModelsContext = [contextCopy expModelsContext];
  v14 = [SSRUtils stringForSpeakerRecognizerType:2];
  v15 = [expModelsContext objectForKeyedSubscript:v14];

  if (!v12)
  {
    v44 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[SSRSpeakerAnalyzerSAT initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v44, OS_LOG_TYPE_DEFAULT, "%s ERR: modelContext is nil! - Bailing out", buf, 0xCu);
    }

    goto LABEL_16;
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
  v24 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.ssr.satq" fixedPriority:*MEMORY[0x277D019B0]];
  queue = v9->_queue;
  v9->_queue = v24;

  v26 = v9->_voiceProfilesModelFilePaths;
  v27 = v9->_configFilePath;
  resourceFilePath2 = [contextCopy resourceFilePath];
  v29 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:v26 withConfigFile:v27 withResourceFile:resourceFilePath2 withOffsetsType:0 forRetraining:0];
  satScorers = v9->_satScorers;
  v9->_satScorers = v29;

  v31 = v9->_satScorers;
  if (!v31 || ![(NSArray *)v31 count])
  {
    v43 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[SSRSpeakerAnalyzerSAT initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s ERR: Cannot create Voice Scorers", buf, 0xCu);
    }

    logAggregator = [contextCopy logAggregator];
    v41 = logAggregator;
    v42 = 106;
    goto LABEL_13;
  }

  v9->_numSamplesProcessed = 0;
  v32 = nd_create();
  v9->_novDetect = v32;
  if (!v32)
  {
    v46 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[SSRSpeakerAnalyzerSAT initWithVoiceRecognitionContext:delegate:]";
      _os_log_impl(&dword_225E12000, v46, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to create NovDetect", buf, 0xCu);
    }

    logAggregator = [contextCopy logAggregator];
    v41 = logAggregator;
    v42 = 105;
    goto LABEL_13;
  }

  path = [(NSURL *)v9->_configFilePath path];
  [path UTF8String];
  path2 = [(NSURL *)v9->_resourceFilePath path];
  [path2 UTF8String];
  v35 = nd_initialize();

  if (!v35)
  {

LABEL_21:
    v45 = v9;
    goto LABEL_22;
  }

  v36 = *MEMORY[0x277D015C8];
  if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
  {
    novDetect = v9->_novDetect;
    v38 = v36;
    v39 = nd_error();
    *buf = 136315650;
    v51 = "[SSRSpeakerAnalyzerSAT initWithVoiceRecognitionContext:delegate:]";
    v52 = 1026;
    v53 = v35;
    v54 = 2082;
    v55 = v39;
    _os_log_impl(&dword_225E12000, v38, OS_LOG_TYPE_DEFAULT, "%s ERR: Failed to initialize _novDetect: err=[%{public}d]:%{public}s", buf, 0x1Cu);
  }

  logAggregator = [contextCopy logAggregator];
  v41 = logAggregator;
  v42 = 104;
LABEL_13:
  [logAggregator setSpeakerRecognitionSATProcessingStatus:v42];

LABEL_16:
  v45 = 0;
LABEL_22:

  v47 = *MEMORY[0x277D85DE8];
  return v45;
}

@end