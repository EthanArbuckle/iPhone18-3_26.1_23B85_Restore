@interface CSVTUITrainingSession
- (BOOL)setupPhraseSpotter;
- (CSVTUITrainingSession)initWithUtteranceId:(int64_t)a3 sessionNumber:(int64_t)a4 Locale:(id)a5 audioSession:(id)a6 keywordDetector:(id)a7 speechRecognizer:(id)a8 speechRecognitionRequest:(id)a9 sessionDelegate:(id)a10 sessionDispatchQueue:(id)a11 zeroCounter:(id)a12 completion:(id)a13;
- (CSVTUITrainingSession)initWithUtteranceId:(int64_t)a3 sessionNumber:(int64_t)a4 Locale:(id)a5 vtAssetConfigVersion:(id)a6 audioSession:(id)a7 keywordDetector:(id)a8 speechRecognizer:(id)a9 speechRecognitionRequest:(id)a10 sessionDelegate:(id)a11 sessionDispatchQueue:(id)a12 mhUUID:(id)a13 zeroCounter:(id)a14 completionWithResult:(id)a15;
- (int)getTrainingAudioStatusWithVTEI:(id)a3 digitalZeroReporter:(id)a4;
- (int64_t)numSamplesInPCMBuffer;
- (void)_registerEndPointTimeout;
- (void)audioSessionDidStopRecording:(int64_t)a3;
- (void)audioSessionUnsupportedAudioRoute;
- (void)closeSessionWithCompletion:(id)a3;
- (void)closeSessionWithStatus:(int)a3 successfully:(BOOL)a4 complete:(id)a5;
- (void)closeSessionWithStatus:(int)a3 successfully:(BOOL)a4 voiceTriggerEventInfo:(id)a5 completeWithResult:(id)a6;
- (void)didDetectBeginOfSpeech;
- (void)didDetectEndOfSpeech:(int64_t)a3;
- (void)feedSpeechRecognitionTrailingSamplesWithCompletedBlock:(id)a3;
- (void)feedSpeechRecognitionWithPCMBuffer;
- (void)finishSpeechRecognitionTask;
- (void)handleAudioBufferForVTWithAudioInput:(id)a3 withDetectedBlock:(id)a4;
- (void)handleAudioInput:(id)a3;
- (void)handleMasterTimeout:(id)a3;
- (void)logTrainingSessionCompleteWithVoiceTriggerEventInfo:(id)a3;
- (void)pushAudioInputIntoPCMBuffer:(id)a3;
- (void)resumeTraining;
- (void)setupSpeechRecognitionTaskWithVoiceTriggerEventInfo:(id)a3;
- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4;
- (void)startMasterTimerWithTimeout:(float)a3;
- (void)startTraining;
- (void)stopMasterTimer;
- (void)suspendTraining;
- (void)trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:(id)a3;
- (void)updateMeterAndForward;
@end

@implementation CSVTUITrainingSession

- (void)_registerEndPointTimeout
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 500000000);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__CSVTUITrainingSession__registerEndPointTimeout__block_invoke;
  v5[3] = &unk_278578C88;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__CSVTUITrainingSession__registerEndPointTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained closeSessionWithStatus:7 successfully:0];
}

- (void)speechRecognitionTask:(id)a3 didHypothesizeTranscription:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D015D8];
  v8 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSVTUITrainingSession speechRecognitionTask:didHypothesizeTranscription:]";
    v16 = 2082;
    v17 = "[CSVTUITrainingSession speechRecognitionTask:didHypothesizeTranscription:]";
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v14, 0x16u);
  }

  v9 = [v6 formattedString];
  v10 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  v12 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CSVTUITrainingSession speechRecognitionTask:didHypothesizeTranscription:]";
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_225E12000, v12, OS_LOG_TYPE_DEFAULT, "%s recognized text = %{public}@", &v14, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)stopMasterTimer
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[CSVTUITrainingSession stopMasterTimer]";
    v9 = 2082;
    v10 = "[CSVTUITrainingSession stopMasterTimer]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v7, 0x16u);
  }

  masterTimer = self->_masterTimer;
  if (masterTimer)
  {
    [(NSTimer *)masterTimer invalidate];
    v5 = self->_masterTimer;
    self->_masterTimer = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleMasterTimeout:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSVTUITrainingSession handleMasterTimeout:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Master Timeout Fired", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__CSVTUITrainingSession_handleMasterTimeout___block_invoke;
  v7[3] = &unk_2785791F0;
  objc_copyWeak(&v8, buf);
  v7[4] = self;
  dispatch_async(queue, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CSVTUITrainingSession_handleMasterTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3[13])
    {
      v5 = WeakRetained;
      [v3 stopMasterTimer];
      [v5 closeSessionWithStatus:7 successfully:0];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)startMasterTimerWithTimeout:(float)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSVTUITrainingSession startMasterTimerWithTimeout:]";
    v11 = 2082;
    v12 = "[CSVTUITrainingSession startMasterTimerWithTimeout:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s %{public}s CALLED", buf, 0x16u);
  }

  if (a3 != 0.0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__CSVTUITrainingSession_startMasterTimerWithTimeout___block_invoke;
    v7[3] = &unk_278579190;
    v7[4] = self;
    v8 = a3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __53__CSVTUITrainingSession_startMasterTimerWithTimeout___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_handleMasterTimeout_ selector:0 userInfo:1 repeats:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)finishSpeechRecognitionTask
{
  speechRecognitionRequest = self->_speechRecognitionRequest;
  if (speechRecognitionRequest)
  {
    [(SFSpeechAudioBufferRecognitionRequest *)speechRecognitionRequest endAudio];
  }

  speechRecognitionTask = self->_speechRecognitionTask;
  if (speechRecognitionTask)
  {

    [(SFSpeechRecognitionTask *)speechRecognitionTask finish];
  }
}

- (void)setupSpeechRecognitionTaskWithVoiceTriggerEventInfo:(id)a3
{
  v13 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CDCEC8]);
  speechRecognitionRequest = self->_speechRecognitionRequest;
  self->_speechRecognitionRequest = v4;

  v6 = self->_speechRecognitionRequest;
  v7 = +[CSVTUIASRGrammars sharedGrammars];
  v8 = [v7 getLMEforLocale:self->_locale];
  [(SFSpeechAudioBufferRecognitionRequest *)v6 setContextualStrings:v8];

  [(SFSpeechAudioBufferRecognitionRequest *)self->_speechRecognitionRequest setTaskHint:1001];
  if (self->_speechRecognizer && self->_speechRecognitionRequest)
  {
    v9 = [v13 mutableCopy];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld] VTUISession Number:[%ld]", self->_utteranceId, self->_sessionNumber];
    [v9 setObject:@"PHS explicit training utterance" forKey:v10];

    [(SFSpeechAudioBufferRecognitionRequest *)self->_speechRecognitionRequest _setVoiceTriggerEventInfo:v9];
    v11 = [(SFSpeechRecognizer *)self->_speechRecognizer recognitionTaskWithRequest:self->_speechRecognitionRequest delegate:self];
    speechRecognitionTask = self->_speechRecognitionTask;
    self->_speechRecognitionTask = v11;
  }
}

- (void)didDetectEndOfSpeech:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSVTUITrainingSession didDetectEndOfSpeech:]";
    v12 = 2050;
    v13 = a3;
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s End of speech detected with endpoint type: %{public}ld", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__CSVTUITrainingSession_didDetectEndOfSpeech___block_invoke;
  v8[3] = &unk_278578C60;
  objc_copyWeak(v9, buf);
  v9[1] = a3;
  dispatch_async(queue, v8);
  objc_destroyWeak(v9);
  objc_destroyWeak(buf);
  v7 = *MEMORY[0x277D85DE8];
}

void __46__CSVTUITrainingSession_didDetectEndOfSpeech___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 2)
  {
    v3 = WeakRetained;
    [WeakRetained _registerEndPointTimeout];
    WeakRetained = v3;
  }
}

- (void)didDetectBeginOfSpeech
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSVTUITrainingSession didDetectBeginOfSpeech]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Begin of speech detected", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSVTUITrainingSession_didDetectBeginOfSpeech__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionUnsupportedAudioRoute
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVTUITrainingSession audioSessionUnsupportedAudioRoute]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Unsupported", &v5, 0xCu);
  }

  [(CSVTUITrainingSession *)self closeSessionWithStatus:4 successfully:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionDidStopRecording:(int64_t)a3
{
  if (a3)
  {
    [(CSVTUITrainingSession *)self closeSessionWithStatus:5 successfully:0];
  }
}

- (int)getTrainingAudioStatusWithVTEI:(id)a3 digitalZeroReporter:(id)a4
{
  v5 = a3;
  if ([a4 digitalZeroDetected])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D01DF8]];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (void)logTrainingSessionCompleteWithVoiceTriggerEventInfo:(id)a3
{
  utteranceId_low = LODWORD(self->_utteranceId);
  v5 = *MEMORY[0x277D01CF8];
  v6 = a3;
  v7 = [v6 objectForKey:v5];
  v8 = [v7 unsignedIntegerValue];
  v9 = @"Siri";
  if (!v8)
  {
    v9 = @"Hey Siri";
  }

  v10 = v9;

  v11 = [v6 objectForKey:*MEMORY[0x277D01EF0]];
  [v11 floatValue];
  v13 = v12;

  v14 = [v6 objectForKey:*MEMORY[0x277D01F00]];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v6 objectForKey:*MEMORY[0x277D01EA8]];
  v17 = [v16 unsignedIntegerValue];

  v18 = [v6 objectForKey:*MEMORY[0x277D01DF8]];

  v19 = [v18 BOOLValue];
  v21 = [MEMORY[0x277D01908] sharedLogger];
  LODWORD(v20) = v13;
  [v21 logSiriSetupPHSEnrollmentUtteranceCompletedWithSiriSetupID:self->_mhUUID withPageNumber:utteranceId_low withPhId:v10 withTopScoreForUtterance:v15 withStartSampleCount:v17 withEndSampleCount:v19 withHasSpeechDetected:v20];
}

- (int64_t)numSamplesInPCMBuffer
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_pcmBufArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v10 + 1) + 8 * i) frameLength];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)pushAudioInputIntoPCMBuffer:(id)a3
{
  LODWORD(v3) = kCSVTUITrainingSessionSampleRate;
  v5 = [SSRUtils createAVAudioPCMBufferWithNSData:a3 audioFormat:3 sampleRate:1 numOfChannel:0 isInterleaved:v3];
  if ([(NSMutableArray *)self->_pcmBufArray count]>= 0x3C)
  {
    [(NSMutableArray *)self->_pcmBufArray removeObjectAtIndex:0];
  }

  [(NSMutableArray *)self->_pcmBufArray addObject:v5];
}

- (void)trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D01F00]];
  v6 = [v5 unsignedIntegerValue];

  v29 = v4;
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D01E78]];
  v8 = [v7 unsignedIntegerValue];

  v9 = v6 - v8;
  if (v8 >= v6)
  {
    v9 = v8 - v6;
  }

  if (v9 >= 80000)
  {
    v10 = 80000;
  }

  else
  {
    v10 = v9;
  }

  v11 = [(NSMutableArray *)self->_pcmBufArray count];
  if (v11 - 1 < 0)
  {
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      v14 = [(NSMutableArray *)self->_pcmBufArray objectAtIndex:--v12];
      v15 = [v14 frameLength];
      v13 += v15;
      v16 = v13 - v10;
      if (v13 >= v10)
      {
        break;
      }

      if (v12 <= 0)
      {
        v14 = 0;
        v16 = 0;
        v17 = 0;
        v12 = 0;
        goto LABEL_13;
      }
    }

    v17 = v15;
  }

LABEL_13:
  v18 = MEMORY[0x277D015D8];
  v19 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
    v32 = 2050;
    v33 = v10;
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s correctSampleSize:    [%{public}ld]", buf, 0x16u);
    v19 = *v18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
    v32 = 2050;
    v33 = v13;
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s accumSampleSize:      [%{public}ld]", buf, 0x16u);
    v19 = *v18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
    v32 = 2050;
    v33 = v12;
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s startBufferIndex:     [%{public}ld]", buf, 0x16u);
    v19 = *v18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
    v32 = 2050;
    v33 = v17;
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s startBufferSampleSize:[%{public}ld]", buf, 0x16u);
    v19 = *v18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
    v32 = 2050;
    v33 = v16;
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s samplesToBeDeleted:   [%{public}ld]", buf, 0x16u);
    v19 = *v18;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    pcmBufArray = self->_pcmBufArray;
    v21 = v19;
    v22 = [(NSMutableArray *)pcmBufArray count];
    *buf = 136315394;
    v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
    v32 = 2050;
    v33 = v22;
    _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s Total Number of buffs:[%{public}ld]", buf, 0x16u);
  }

  if (v16 >= 1)
  {
    v23 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
      _os_log_impl(&dword_225E12000, v23, OS_LOG_TYPE_DEFAULT, "%s Adjusting the start buffer", buf, 0xCu);
    }

    v24 = objc_alloc(MEMORY[0x277CB83A0]);
    v25 = [v24 initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:*&kCSVTUITrainingSessionSampleRate];
    v26 = [objc_alloc(MEMORY[0x277CB83C0]) initWithPCMFormat:v25 frameCapacity:v17 - v16];
    memcpy(*([v26 mutableAudioBufferList] + 16), (*(objc_msgSend(v14, "mutableAudioBufferList") + 16) + 2 * v16), 2 * (v17 - v16));
    *([v26 mutableAudioBufferList] + 12) = v17 - v16;
    [v26 setFrameLength:v17 - v16];
    [(NSMutableArray *)self->_pcmBufArray replaceObjectAtIndex:v12 withObject:v26];
  }

  if (v12)
  {
    v27 = *v18;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[CSVTUITrainingSession trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:]";
      _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s Adjusting the array elements", buf, 0xCu);
    }

    [(NSMutableArray *)self->_pcmBufArray removeObjectsInRange:0, v12];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)feedSpeechRecognitionWithPCMBuffer
{
  if (self->_speechRecognitionRequest)
  {
    while ([(NSMutableArray *)self->_pcmBufArray count])
    {
      v3 = [(NSMutableArray *)self->_pcmBufArray objectAtIndex:0];
      [(SFSpeechAudioBufferRecognitionRequest *)self->_speechRecognitionRequest appendAudioPCMBuffer:v3];
      [(NSMutableArray *)self->_pcmBufArray removeObjectAtIndex:0];
    }
  }
}

- (void)feedSpeechRecognitionTrailingSamplesWithCompletedBlock:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_numTrailingSamples + [(CSVTUITrainingSession *)self numSamplesInPCMBuffer];
  self->_numTrailingSamples = v5;
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSVTUITrainingSession feedSpeechRecognitionTrailingSamplesWithCompletedBlock:]";
    v10 = 2050;
    v11 = v5;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s feeding tailing: [%{public}ld] samples", &v8, 0x16u);
  }

  [(CSVTUITrainingSession *)self feedSpeechRecognitionWithPCMBuffer];
  if (v4 && self->_numTrailingSamples >= self->_numRequiredTrailingSamples)
  {
    v4[2](v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioBufferForVTWithAudioInput:(id)a3 withDetectedBlock:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(CSVTUIKeywordDetectorProtocol *)self->_keywordDetector analyzeWithBuffer:a3];
  v8 = [v7 mutableCopy];

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D01DF8]];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277D01F00]];
      v12 = [v11 unsignedIntegerValue];

      v13 = [v8 objectForKeyedSubscript:*MEMORY[0x277D01EA8]];
      v14 = [v13 unsignedIntegerValue];

      v15 = [v8 objectForKeyedSubscript:*MEMORY[0x277D01E78]];
      v16 = [v15 unsignedIntegerValue];

      v17 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v32 = "[CSVTUITrainingSession handleAudioBufferForVTWithAudioInput:withDetectedBlock:]";
        v33 = 2114;
        v34 = *&v8;
        v35 = 2050;
        v36 = v12;
        v37 = 2050;
        v38 = v14;
        v39 = 2050;
        v40 = v16;
        _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s Triggered! Event info: %{public}@\n%{public}9lld %{public}9lld %{public}9lld", buf, 0x34u);
      }

      if (v6)
      {
        v6[2](v6, v8);
      }
    }

    v18 = handleAudioBufferForVTWithAudioInput_withDetectedBlock__counter++;
    if (__ROR8__(0x8F5C28F5C28F5C29 * v18 + 0x51EB851EB851EB8, 1) <= 0x51EB851EB851EB8uLL)
    {
      v19 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v20 = *MEMORY[0x277D01EF0];
        v21 = v19;
        v22 = [v8 objectForKeyedSubscript:v20];
        [v22 floatValue];
        v24 = v23;
        v25 = [v8 objectForKeyedSubscript:*MEMORY[0x277D01E78]];
        v26 = [v25 unsignedIntegerValue];
        *buf = 136315650;
        v32 = "[CSVTUITrainingSession handleAudioBufferForVTWithAudioInput:withDetectedBlock:]";
        v33 = 2050;
        v34 = v24;
        v35 = 2050;
        v36 = v26;
        _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s analyzing.... score so far: %{public}5.3f (%{public}ld)", buf, 0x20u);
      }
    }

    queue = self->_queue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __80__CSVTUITrainingSession_handleAudioBufferForVTWithAudioInput_withDetectedBlock___block_invoke;
    v29[3] = &unk_278579350;
    v29[4] = self;
    v30 = v8;
    dispatch_async(queue, v29);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __80__CSVTUITrainingSession_handleAudioBufferForVTWithAudioInput_withDetectedBlock___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 64) isRunningTwoPass] && objc_msgSend(*(a1 + 40), "count"))
  {
    *(*(a1 + 32) + 125) = 1;
  }

  else
  {
    v2 = [*(a1 + 40) objectForKey:*MEMORY[0x277D01DF8]];
    *(*(a1 + 32) + 125) = [v2 BOOLValue];
  }
}

- (void)updateMeterAndForward
{
  [(CSVTUIAudioSession *)self->_audioSession updateMeters];
  [(CSVTUIAudioSession *)self->_audioSession averagePower];
  v4 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_sessionDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = objc_loadWeakRetained(&self->_sessionDelegate);
    LODWORD(v7) = v4;
    [v8 CSVTUITrainingSessionRMSAvailable:v7];
  }
}

- (void)handleAudioInput:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CSVTUITrainingSession_handleAudioInput___block_invoke;
  v7[3] = &unk_278578C38;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__CSVTUITrainingSession_handleAudioInput___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 121) == 1 && (*(v4 + 122) & 1) == 0)
    {
      v5 = *(v4 + 8);
      if (v5 == 2)
      {
        [WeakRetained pushAudioInputIntoPCMBuffer:*(a1 + 40)];
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __42__CSVTUITrainingSession_handleAudioInput___block_invoke_9;
        v8[3] = &unk_2785797A8;
        v9 = v3;
        [v9 feedSpeechRecognitionTrailingSamplesWithCompletedBlock:v8];
        v7 = v9;
        goto LABEL_8;
      }

      if (v5 == 1)
      {
        [WeakRetained updateMeterAndForward];
        [v3 pushAudioInputIntoPCMBuffer:*(a1 + 40)];
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __42__CSVTUITrainingSession_handleAudioInput___block_invoke_2;
        v10[3] = &unk_278578C10;
        v6 = *(a1 + 40);
        v10[4] = *(a1 + 32);
        v11 = v3;
        [v11 handleAudioBufferForVTWithAudioInput:v6 withDetectedBlock:v10];
        v7 = v11;
LABEL_8:
      }
    }
  }
}

void __42__CSVTUITrainingSession_handleAudioInput___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 192), a2);
  v5 = [*(a1 + 40) requestTriggeredUtterance:v4];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v7 = objc_opt_respondsToSelector();

  v8 = 2;
  if (v7)
  {
    v9 = objc_loadWeakRetained((*(a1 + 32) + 128));
    v10 = [v9 CSVTUITrainingSession:*(a1 + 32) hasTrainUtterance:v5 languageCode:*(*(a1 + 32) + 32) payload:0];

    if (v10)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }
  }

  [*(a1 + 40) setupSpeechRecognitionTaskWithVoiceTriggerEventInfo:v4];
  [*(a1 + 40) trimBeginingOfPCMBufferWithVoiceTriggerEventInfo:v4];
  [*(a1 + 40) computeRequiredTrailingSamples];
  [*(a1 + 40) feedSpeechRecognitionWithPCMBuffer];
  v11 = *(a1 + 32);
  v12 = *(v11 + 168);
  if (v12 < 1)
  {
    [*(a1 + 40) closeSessionWithStatus:v8 successfully:1];
  }

  else
  {
    v13 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "[CSVTUITrainingSession handleAudioInput:]_block_invoke_2";
      v17 = 2050;
      v18 = v12;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Decide to delay ending ASR: [%{public}ld] samples", &v15, 0x16u);
      v11 = *(a1 + 32);
    }

    *(v11 + 8) = 2;
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __42__CSVTUITrainingSession_handleAudioInput___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) finishSpeechRecognitionTask];
  v2 = *(a1 + 32);

  return [v2 closeSessionWithStatus:0 successfully:1];
}

- (BOOL)setupPhraseSpotter
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[CSVTUITrainingSession setupPhraseSpotter]";
    v8 = 2082;
    v9 = "[CSVTUITrainingSession setupPhraseSpotter]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}s called", &v6, 0x16u);
  }

  [(CSVTUIKeywordDetectorProtocol *)self->_keywordDetector reset];
  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)resumeTraining
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSVTUITrainingSession resumeTraining]";
    v9 = 2082;
    v10 = "[CSVTUITrainingSession resumeTraining]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}s Called", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__CSVTUITrainingSession_resumeTraining__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __39__CSVTUITrainingSession_resumeTraining__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVTUITrainingSession resumeTraining]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Will resume training", &v6, 0xCu);
  }

  [*(a1 + 32) stopMasterTimer];
  LODWORD(v3) = 10.0;
  [*(a1 + 32) startMasterTimerWithTimeout:v3];
  result = [*(*(a1 + 32) + 112) removeAllObjects];
  *(*(a1 + 32) + 122) = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)suspendTraining
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CSVTUITrainingSession suspendTraining]";
    v9 = 2082;
    v10 = "[CSVTUITrainingSession suspendTraining]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}s Called", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__CSVTUITrainingSession_suspendTraining__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __40__CSVTUITrainingSession_suspendTraining__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVTUITrainingSession suspendTraining]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Will suspend training", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 112) removeAllObjects];
  [*(a1 + 32) stopMasterTimer];
  LODWORD(v3) = 20.0;
  result = [*(a1 + 32) startMasterTimerWithTimeout:v3];
  *(*(a1 + 32) + 122) = 1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)closeSessionWithStatus:(int)a3 successfully:(BOOL)a4 voiceTriggerEventInfo:(id)a5 completeWithResult:(id)a6
{
  v10 = a5;
  v11 = a6;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__CSVTUITrainingSession_closeSessionWithStatus_successfully_voiceTriggerEventInfo_completeWithResult___block_invoke;
  v14[3] = &unk_278578BE8;
  v17 = a3;
  v14[4] = self;
  v15 = v10;
  v18 = a4;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(CSVTUITrainingSession *)self closeSessionWithCompletion:v14];
}

void __102__CSVTUITrainingSession_closeSessionWithStatus_successfully_voiceTriggerEventInfo_completeWithResult___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) resultAlreadyReported] & 1) != 0 || (v2 = *(a1 + 32), !*(v2 + 144)))
  {
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[CSVTUITrainingSession closeSessionWithStatus:successfully:voiceTriggerEventInfo:completeWithResult:]_block_invoke_2";
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Already reported status or no callback", buf, 0xCu);
    }
  }

  else
  {
    v3 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 56);
      *buf = 136315394;
      v13 = "[CSVTUITrainingSession closeSessionWithStatus:successfully:voiceTriggerEventInfo:completeWithResult:]_block_invoke";
      v14 = 1026;
      v15 = v4;
      _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s returning status to UI : %{public}d", buf, 0x12u);
      v2 = *(a1 + 32);
    }

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __102__CSVTUITrainingSession_closeSessionWithStatus_successfully_voiceTriggerEventInfo_completeWithResult___block_invoke_3;
    v7[3] = &unk_278578BE8;
    v7[4] = v2;
    v8 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 60);
    v9 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }

  *(*(a1 + 32) + 120) = 1;
  v6 = *MEMORY[0x277D85DE8];
}

void __102__CSVTUITrainingSession_closeSessionWithStatus_successfully_voiceTriggerEventInfo_completeWithResult___block_invoke_3(uint64_t a1)
{
  v7 = [*(a1 + 32) createDigitalZeroReporterWithVoiceTriggerEventInfo:*(a1 + 40) withSessionStatus:*(a1 + 56)];
  if (v7)
  {
    [*(*(a1 + 32) + 184) stopCountingZeroStatisticsWithReporter:v7];
    [v7 logDigitalZeroDetectionComplete];
  }

  v2 = -[CSVTUITrainingResult initWithSessionId:sessionStatus:audioStatus:]([CSVTUITrainingResult alloc], "initWithSessionId:sessionStatus:audioStatus:", 0, *(a1 + 56), [*(a1 + 32) getTrainingAudioStatusWithVTEI:*(a1 + 40) digitalZeroReporter:v7]);
  v3 = *(a1 + 60);
  (*(*(*(a1 + 32) + 144) + 16))();
  v4 = *(a1 + 32);
  v5 = *(v4 + 144);
  *(v4 + 144) = 0;

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }

  if (*(a1 + 40))
  {
    [*(a1 + 32) logTrainingSessionCompleteWithVoiceTriggerEventInfo:?];
  }
}

- (void)closeSessionWithStatus:(int)a3 successfully:(BOOL)a4 complete:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__CSVTUITrainingSession_closeSessionWithStatus_successfully_complete___block_invoke;
  v10[3] = &unk_278578BC0;
  v12 = a3;
  v13 = a4;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(CSVTUITrainingSession *)self closeSessionWithCompletion:v10];
}

void __70__CSVTUITrainingSession_closeSessionWithStatus_successfully_complete___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) resultAlreadyReported] & 1) != 0 || (v2 = *(a1 + 32), !*(v2 + 136)))
  {
    v5 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[CSVTUITrainingSession closeSessionWithStatus:successfully:complete:]_block_invoke_2";
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Already reported status or no callback", buf, 0xCu);
    }
  }

  else
  {
    v3 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      *buf = 136315394;
      v12 = "[CSVTUITrainingSession closeSessionWithStatus:successfully:complete:]_block_invoke";
      v13 = 1026;
      v14 = v4;
      _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s returning status to UI : %{public}d", buf, 0x12u);
      v2 = *(a1 + 32);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__CSVTUITrainingSession_closeSessionWithStatus_successfully_complete___block_invoke_1;
    block[3] = &unk_278578BC0;
    block[4] = v2;
    v9 = *(a1 + 48);
    v10 = *(a1 + 52);
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  *(*(a1 + 32) + 120) = 1;
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __70__CSVTUITrainingSession_closeSessionWithStatus_successfully_complete___block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);
  (*(*(*(a1 + 32) + 136) + 16))();
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  *(v4 + 136) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (void)closeSessionWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CSVTUITrainingSession_closeSessionWithCompletion___block_invoke;
  v7[3] = &unk_278578B98;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__CSVTUITrainingSession_closeSessionWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(a1 + 32) + 121) = 0;
  v4 = WeakRetained;
  if (([WeakRetained resultAlreadyReported] & 1) == 0)
  {
    [*(a1 + 32) stopMasterTimer];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  *(*(a1 + 32) + 120) = 1;
}

- (void)startTraining
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CSVTUITrainingSession_startTraining__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __38__CSVTUITrainingSession_startTraining__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setupPhraseSpotter];
  LODWORD(v2) = 10.0;
  result = [*(a1 + 32) startMasterTimerWithTimeout:v2];
  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 121) = 1;
  *(*(a1 + 32) + 122) = 0;
  return result;
}

- (CSVTUITrainingSession)initWithUtteranceId:(int64_t)a3 sessionNumber:(int64_t)a4 Locale:(id)a5 vtAssetConfigVersion:(id)a6 audioSession:(id)a7 keywordDetector:(id)a8 speechRecognizer:(id)a9 speechRecognitionRequest:(id)a10 sessionDelegate:(id)a11 sessionDispatchQueue:(id)a12 mhUUID:(id)a13 zeroCounter:(id)a14 completionWithResult:(id)a15
{
  v46 = a5;
  v38 = a6;
  v45 = a6;
  v39 = a7;
  v18 = a7;
  v40 = a8;
  v19 = a8;
  v43 = a9;
  v42 = a10;
  v20 = a11;
  v41 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v47.receiver = self;
  v47.super_class = CSVTUITrainingSession;
  v24 = [(CSVTUITrainingSession *)&v47 init];
  v25 = v24;
  v26 = 0;
  if (v18 && v19 && v20)
  {
    if (v24)
    {
      v24->_status = 1;
      v24->_utteranceId = a3;
      v24->_sessionNumber = a4;
      objc_storeStrong(&v24->_locale, a5);
      objc_storeStrong(&v25->_vtAssetConfigVersion, v38);
      objc_storeStrong(&v25->_audioSession, v39);
      objc_storeStrong(&v25->_speechRecognizer, a9);
      objc_storeStrong(&v25->_speechRecognitionRequest, a10);
      speechRecognitionTask = v25->_speechRecognitionTask;
      v25->_speechRecognitionTask = 0;

      masterTimer = v25->_masterTimer;
      v25->_masterTimer = 0;

      v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pcmBufArray = v25->_pcmBufArray;
      v25->_pcmBufArray = v29;

      *&v25->_speechStartDetected = 0;
      *&v25->_resultReported = 0;
      objc_storeWeak(&v25->_sessionDelegate, v20);
      trainingCompletion = v25->_trainingCompletion;
      v25->_trainingCompletion = 0;

      v32 = MEMORY[0x22AA71400](v23);
      trainingCompletionWithResult = v25->_trainingCompletionWithResult;
      v25->_trainingCompletionWithResult = v32;

      objc_storeStrong(&v25->_queue, a12);
      objc_storeStrong(&v25->_mhUUID, a13);
      v25->_phId = 0;
      v25->_numRequiredTrailingSamples = 0;
      v25->_numTrailingSamples = 0;
      objc_storeStrong(&v25->_continuousZeroCounter, a14);
      objc_storeStrong(&v25->_keywordDetector, v40);
    }

    v26 = v25;
  }

  return v26;
}

- (CSVTUITrainingSession)initWithUtteranceId:(int64_t)a3 sessionNumber:(int64_t)a4 Locale:(id)a5 audioSession:(id)a6 keywordDetector:(id)a7 speechRecognizer:(id)a8 speechRecognitionRequest:(id)a9 sessionDelegate:(id)a10 sessionDispatchQueue:(id)a11 zeroCounter:(id)a12 completion:(id)a13
{
  v41 = a5;
  obj = a6;
  v18 = a6;
  v37 = a7;
  v19 = a7;
  v40 = a8;
  v39 = a9;
  v20 = a10;
  v21 = a11;
  v38 = a12;
  v22 = a13;
  v42.receiver = self;
  v42.super_class = CSVTUITrainingSession;
  v23 = [(CSVTUITrainingSession *)&v42 init];
  v24 = v23;
  v25 = 0;
  if (v18 && v19 && v20)
  {
    if (v23)
    {
      v23->_status = 1;
      v23->_utteranceId = a3;
      v23->_sessionNumber = a4;
      objc_storeStrong(&v23->_locale, a5);
      objc_storeStrong(&v24->_audioSession, obj);
      objc_storeStrong(&v24->_speechRecognizer, a8);
      objc_storeStrong(&v24->_speechRecognitionRequest, a9);
      speechRecognitionTask = v24->_speechRecognitionTask;
      v24->_speechRecognitionTask = 0;

      masterTimer = v24->_masterTimer;
      v24->_masterTimer = 0;

      v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pcmBufArray = v24->_pcmBufArray;
      v24->_pcmBufArray = v28;

      *&v24->_speechStartDetected = 0;
      *&v24->_resultReported = 0;
      objc_storeWeak(&v24->_sessionDelegate, v20);
      v30 = MEMORY[0x22AA71400](v22);
      trainingCompletion = v24->_trainingCompletion;
      v24->_trainingCompletion = v30;

      trainingCompletionWithResult = v24->_trainingCompletionWithResult;
      v24->_trainingCompletionWithResult = 0;

      objc_storeStrong(&v24->_queue, a11);
      v24->_numRequiredTrailingSamples = 0;
      v24->_numTrailingSamples = 0;
      objc_storeStrong(&v24->_continuousZeroCounter, a12);
      objc_storeStrong(&v24->_keywordDetector, v37);
    }

    v25 = v24;
  }

  return v25;
}

@end