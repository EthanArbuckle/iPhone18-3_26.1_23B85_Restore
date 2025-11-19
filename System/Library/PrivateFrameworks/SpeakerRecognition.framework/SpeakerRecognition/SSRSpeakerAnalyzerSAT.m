@interface SSRSpeakerAnalyzerSAT
- (SSRSpeakerAnalyzerSAT)initWithVoiceRecognitionContext:(id)a3 delegate:(id)a4;
- (SSRSpeakerAnalyzerSATDelegate)delegate;
- (id)_getAnalyzedResult;
- (id)_getSuperVectorWithEndPoint:(unint64_t)a3;
- (id)_processSuperVector:(id)a3 withSize:(unint64_t)a4 processedAudioDurationMs:(unint64_t)a5 isFinal:(BOOL)a6;
- (id)getVoiceRecognizerResults;
- (id)resetForNewRequest;
- (void)dealloc;
- (void)endAudio;
- (void)processAudioData:(id)a3 numSamples:(unint64_t)a4;
@end

@implementation SSRSpeakerAnalyzerSAT

- (SSRSpeakerAnalyzerSATDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_processSuperVector:(id)a3 withSize:(unint64_t)a4 processedAudioDurationMs:(unint64_t)a5 isFinal:(BOOL)a6
{
  v40 = a6;
  v53 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_satScorers, "count")}];
  v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_satScorers, "count")}];
  v41 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](self->_satScorers, "count")}];
  v37 = a5;
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
        [v14 analyzeSuperVector:v43 withDimensions:a4 withThresholdType:v9];
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        v16 = [v14 profileID];
        [v42 setObject:v15 forKeyedSubscript:v16];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "getSATVectorCount")}];
        v18 = [v14 profileID];
        [v41 setObject:v17 forKeyedSubscript:v18];

        if (v40)
        {
          voiceProfilesExpModelFilePaths = self->_voiceProfilesExpModelFilePaths;
          if (voiceProfilesExpModelFilePaths)
          {
            v20 = [v14 profileID];
            v21 = [(NSDictionary *)voiceProfilesExpModelFilePaths objectForKeyedSubscript:v20];

            if (v21)
            {
              v22 = self->_voiceProfilesExpModelFilePaths;
              v23 = [v14 profileID];
              v24 = [(NSDictionary *)v22 objectForKeyedSubscript:v23];
              [v14 resetScorerWithModelFilePath:v24];

              [v14 analyzeSuperVector:v43 withDimensions:a4 withThresholdType:v9];
              v25 = [MEMORY[0x277CCABB0] numberWithFloat:?];
              v26 = [v14 profileID];
              [v38 setObject:v25 forKeyedSubscript:v26];
            }
          }
        }

        voiceProfilesModelFilePaths = self->_voiceProfilesModelFilePaths;
        v28 = [v14 profileID];
        v29 = [(NSDictionary *)voiceProfilesModelFilePaths objectForKeyedSubscript:v28];
        [v14 resetScorerWithModelFilePath:v29];
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v11);
  }

  v50[0] = @"configPath";
  v30 = [(NSURL *)self->_configFilePath path];
  v50[1] = @"numSpeakerVectors";
  v51[0] = v30;
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
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
  v48[4] = @"satContext";
  v49[3] = v33;
  v49[4] = v31;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:5];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_getSuperVectorWithEndPoint:(unint64_t)a3
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
    v6 = [(SSRSpeakerRecognitionContext *)self->_context logAggregator];
    [v6 setSpeakerRecognitionSATProcessingStatus:753];

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

- (void)processAudioData:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SSRSpeakerAnalyzerSAT_processAudioData_numSamples___block_invoke;
  block[3] = &unk_278579780;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
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
    v9 = self;
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

- (SSRSpeakerAnalyzerSAT)initWithVoiceRecognitionContext:(id)a3 delegate:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v49.receiver = self;
  v49.super_class = SSRSpeakerAnalyzerSAT;
  v9 = [(SSRSpeakerAnalyzerSAT *)&v49 init];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [v7 modelsContext];
  v11 = [SSRUtils stringForSpeakerRecognizerType:2];
  v12 = [v10 objectForKeyedSubscript:v11];

  v13 = [v7 expModelsContext];
  v14 = [SSRUtils stringForSpeakerRecognizerType:2];
  v15 = [v13 objectForKeyedSubscript:v14];

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

  objc_storeWeak(&v9->_delegate, v8);
  v16 = [v12 configFilePath];
  configFilePath = v9->_configFilePath;
  v9->_configFilePath = v16;

  v18 = [v7 resourceFilePath];
  resourceFilePath = v9->_resourceFilePath;
  v9->_resourceFilePath = v18;

  v20 = [v12 voiceProfilesModelFilePaths];
  voiceProfilesModelFilePaths = v9->_voiceProfilesModelFilePaths;
  v9->_voiceProfilesModelFilePaths = v20;

  v22 = [v15 voiceProfilesModelFilePaths];
  voiceProfilesExpModelFilePaths = v9->_voiceProfilesExpModelFilePaths;
  v9->_voiceProfilesExpModelFilePaths = v22;

  objc_storeStrong(&v9->_context, a3);
  v24 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.ssr.satq" fixedPriority:*MEMORY[0x277D019B0]];
  queue = v9->_queue;
  v9->_queue = v24;

  v26 = v9->_voiceProfilesModelFilePaths;
  v27 = v9->_configFilePath;
  v28 = [v7 resourceFilePath];
  v29 = [SSRSpeakerRecognitionScorer createVoiceScorersWithVoiceProfiles:v26 withConfigFile:v27 withResourceFile:v28 withOffsetsType:0 forRetraining:0];
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

    v40 = [v7 logAggregator];
    v41 = v40;
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

    v40 = [v7 logAggregator];
    v41 = v40;
    v42 = 105;
    goto LABEL_13;
  }

  v33 = [(NSURL *)v9->_configFilePath path];
  [v33 UTF8String];
  v34 = [(NSURL *)v9->_resourceFilePath path];
  [v34 UTF8String];
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

  v40 = [v7 logAggregator];
  v41 = v40;
  v42 = 104;
LABEL_13:
  [v40 setSpeakerRecognitionSATProcessingStatus:v42];

LABEL_16:
  v45 = 0;
LABEL_22:

  v47 = *MEMORY[0x277D85DE8];
  return v45;
}

@end