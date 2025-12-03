@interface CSVTUITrainingSessionWithPayload
- (BOOL)shouldMatchPayload;
- (float)_getSessionEOSTimeout;
- (void)_firedEndPointTimeout;
- (void)_firedVoiceTriggerTimeout;
- (void)_registerEndPointTimeout;
- (void)_registerForceEndPointTimeout;
- (void)_registerVoiceTriggerTimeout;
- (void)_reportStopListening;
- (void)audioSessionDidStartRecording:(BOOL)recording error:(id)error;
- (void)audioSessionDidStopRecording:(int64_t)recording;
- (void)didDetectBeginOfSpeech;
- (void)didDetectEndOfSpeech:(int64_t)speech;
- (void)handleAudioInput:(id)input;
- (void)matchRecognitionResult:(id)result withMatchedBlock:(id)block withNonMatchedBlock:(id)matchedBlock;
- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition;
- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully;
- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription;
- (void)startTraining;
@end

@implementation CSVTUITrainingSessionWithPayload

- (void)matchRecognitionResult:(id)result withMatchedBlock:(id)block withNonMatchedBlock:(id)matchedBlock
{
  v33 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  blockCopy = block;
  matchedBlockCopy = matchedBlock;
  if (resultCopy)
  {
    v11 = +[CSVTUIASRGrammars sharedGrammars];
    v12 = [v11 getTrailingPatternsForUtt:self->super._utteranceId Locale:self->super._locale];

    v13 = +[CSVTUIASRGrammars sharedGrammars];
    v14 = [v13 getLeadingPatternsForUtt:self->super._utteranceId Locale:self->super._locale];

    v15 = +[CSVTUIASRGrammars sharedGrammars];
    v16 = [v15 getRegexPatternsForUtt:self->super._utteranceId Locale:self->super._locale];

    v17 = 0;
    if (v12 && v14 && v16)
    {
      v17 = [CSVTUIRegularExpressionMatcher matchWithString:resultCopy TrailingStr:v12 LeadingStr:v14 Pattern:v16];
    }

    v18 = MEMORY[0x277D015D8];
    v19 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      utteranceId = self->super._utteranceId;
      v23 = 136316162;
      v24 = "[CSVTUITrainingSessionWithPayload matchRecognitionResult:withMatchedBlock:withNonMatchedBlock:]";
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = v14;
      v29 = 2050;
      v30 = utteranceId;
      v31 = 2114;
      v32 = v16;
      _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@ %{public}ld %{public}@", &v23, 0x34u);
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "[CSVTUITrainingSessionWithPayload matchRecognitionResult:withMatchedBlock:withNonMatchedBlock:]";
      v25 = 2050;
      v26 = v17;
      _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s Recog Result: [%{public}ld]", &v23, 0x16u);
    }

    if (blockCopy && (v21 = blockCopy, v17 == 1) || matchedBlockCopy && (v21 = matchedBlockCopy, !v17))
    {
      v21[2]();
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)speechRecognitionTask:(id)task didFinishSuccessfully:(BOOL)successfully
{
  if (self->super._speechRecognitionTask == task && !successfully)
  {
    block[5] = v4;
    block[6] = v5;
    queue = self->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishSuccessfully___block_invoke;
    block[3] = &unk_2785797A8;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __80__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishSuccessfully___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSVTUITrainingSessionWithPayload speechRecognitionTask:didFinishSuccessfully:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s SPEECH RECOGNITION TASK FINISH UNSUCCESSFULLY", &v4, 0xCu);
  }

  *(*(a1 + 32) + 123) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

- (void)speechRecognitionTask:(id)task didFinishRecognition:(id)recognition
{
  recognitionCopy = recognition;
  if (self->super._speechRecognitionTask == task)
  {
    objc_initWeak(&location, self);
    queue = self->super._queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishRecognition___block_invoke;
    v8[3] = &unk_278578C38;
    v8[4] = self;
    objc_copyWeak(&v10, &location);
    v9 = recognitionCopy;
    dispatch_async(queue, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __79__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishRecognition___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [*(a1 + 40) bestTranscription];
    v4 = [v3 formattedString];
    v5 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    *(*(a1 + 32) + 201) = 1;
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[CSVTUITrainingSessionWithPayload speechRecognitionTask:didFinishRecognition:]_block_invoke";
      v16 = 2114;
      v17 = v6;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Final: [%{public}@]", buf, 0x16u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishRecognition___block_invoke_8;
    v12[3] = &unk_2785797A8;
    v13 = WeakRetained;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishRecognition___block_invoke_9;
    v10[3] = &unk_2785797A8;
    v11 = v13;
    v8 = v13;
    [v8 matchRecognitionResult:v6 withMatchedBlock:v12 withNonMatchedBlock:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __79__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishRecognition___block_invoke_8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVTUITrainingSessionWithPayload speechRecognitionTask:didFinishRecognition:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Final Matching", &v5, 0xCu);
  }

  [*(a1 + 32) finishSpeechRecognitionTask];
  result = [*(a1 + 32) closeSessionWithStatus:1 successfully:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __79__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didFinishRecognition___block_invoke_9(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVTUITrainingSessionWithPayload speechRecognitionTask:didFinishRecognition:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s Final Not Matching", &v5, 0xCu);
  }

  [*(a1 + 32) finishSpeechRecognitionTask];
  result = [*(a1 + 32) closeSessionWithStatus:0 successfully:0];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)speechRecognitionTask:(id)task didHypothesizeTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  if (self->super._speechRecognitionTask == task)
  {
    objc_initWeak(&location, self);
    queue = self->super._queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __86__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didHypothesizeTranscription___block_invoke;
    v8[3] = &unk_278578C38;
    v8[4] = self;
    objc_copyWeak(&v10, &location);
    v9 = transcriptionCopy;
    dispatch_async(queue, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __86__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didHypothesizeTranscription___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 8) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = [*(a1 + 40) formattedString];
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];

    *(*(a1 + 32) + 201) = 1;
    v6 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[CSVTUITrainingSessionWithPayload speechRecognitionTask:didHypothesizeTranscription:]_block_invoke";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Non Final: [%{public}@]", buf, 0x16u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didHypothesizeTranscription___block_invoke_7;
    v9[3] = &unk_2785797A8;
    v10 = WeakRetained;
    v7 = WeakRetained;
    [v7 matchRecognitionResult:v5 withMatchedBlock:v9 withNonMatchedBlock:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __86__CSVTUITrainingSessionWithPayload_speechRecognitionTask_didHypothesizeTranscription___block_invoke_7(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSVTUITrainingSessionWithPayload speechRecognitionTask:didHypothesizeTranscription:]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s NON Final Matching", &v5, 0xCu);
  }

  [*(a1 + 32) finishSpeechRecognitionTask];
  result = [*(a1 + 32) closeSessionWithStatus:1 successfully:1];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didDetectEndOfSpeech:(int64_t)speech
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D015D8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[CSVTUITrainingSessionWithPayload didDetectEndOfSpeech:]";
    v19 = 2050;
    speechCopy = speech;
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s End of speech detected with endpoint type: %{public}ld", buf, 0x16u);
  }

  objc_initWeak(&location, self);
  if (speech == 2)
  {
    queue = self->super._queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__CSVTUITrainingSessionWithPayload_didDetectEndOfSpeech___block_invoke_2;
    v12[3] = &unk_278578C88;
    objc_copyWeak(&v13, &location);
    dispatch_async(queue, v12);
    v8 = &v13;
    goto LABEL_7;
  }

  if (speech == 1)
  {
    v7 = self->super._queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CSVTUITrainingSessionWithPayload_didDetectEndOfSpeech___block_invoke;
    block[3] = &unk_2785791F0;
    objc_copyWeak(&v15, &location);
    block[4] = self;
    dispatch_async(v7, block);
    v8 = &v15;
LABEL_7:
    objc_destroyWeak(v8);
    goto LABEL_10;
  }

  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v18 = "[CSVTUITrainingSessionWithPayload didDetectEndOfSpeech:]";
    _os_log_error_impl(&dword_225E12000, v10, OS_LOG_TYPE_ERROR, "%s unknown endpoint type", buf, 0xCu);
  }

LABEL_10:
  objc_destroyWeak(&location);
  v11 = *MEMORY[0x277D85DE8];
}

void __57__CSVTUITrainingSessionWithPayload_didDetectEndOfSpeech___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*(*(a1 + 32) + 200) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained _reportStopListening];
    [v3 _registerEndPointTimeout];
    WeakRetained = v3;
    *(*(a1 + 32) + 200) = 0;
  }
}

void __57__CSVTUITrainingSessionWithPayload_didDetectEndOfSpeech___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportStopListening];
  [WeakRetained _registerForceEndPointTimeout];
}

- (void)didDetectBeginOfSpeech
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[CSVTUITrainingSessionWithPayload didDetectBeginOfSpeech]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s Begin of speech detected", buf, 0xCu);
  }

  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CSVTUITrainingSessionWithPayload_didDetectBeginOfSpeech__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __58__CSVTUITrainingSessionWithPayload_didDetectBeginOfSpeech__block_invoke(uint64_t result)
{
  *(*(result + 32) + 200) = 1;
  *(*(result + 32) + 124) = 1;
  return result;
}

- (void)audioSessionDidStopRecording:(int64_t)recording
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSVTUITrainingSessionWithPayload audioSessionDidStopRecording:]";
    _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s AudioSession Stopped", &v7, 0xCu);
  }

  if (recording)
  {
    [(CSVTUITrainingSessionWithPayload *)self closeSessionWithStatus:5 successfully:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)audioSessionDidStartRecording:(BOOL)recording error:(id)error
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CSVTUITrainingSessionWithPayload audioSessionDidStartRecording:error:]";
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s AudioSession Started", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioInput:(id)input
{
  inputCopy = input;
  objc_initWeak(&location, self);
  queue = self->super._queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__CSVTUITrainingSessionWithPayload_handleAudioInput___block_invoke;
  v7[3] = &unk_278578C38;
  objc_copyWeak(&v10, &location);
  v8 = inputCopy;
  selfCopy = self;
  v6 = inputCopy;
  dispatch_async(queue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __53__CSVTUITrainingSessionWithPayload_handleAudioInput___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && [WeakRetained shouldHandleSession])
  {
    [v3 updateMeterAndForward];
    v4 = [*(a1 + 32) length];
    v5 = [MEMORY[0x277D016E0] inputRecordingBytesPerFrame];
    v6 = *(a1 + 40);
    v7 = v6[1];
    v8 = v4 / v5;
    if (v7 == 3)
    {
      v10 = (v6[26] + v8 - v6[27]);
      [MEMORY[0x277D016E0] inputRecordingDurationInSecs];
      v12 = v11;
      [MEMORY[0x277D016E0] inputRecordingSampleRate];
      if ((v12 * v13) >= v10)
      {
        *(*(a1 + 40) + 208) += v8;
        [v3 handleAudioBufferForVTWithAudioInput:*(a1 + 32) withDetectedBlock:0];
      }

      else
      {
        v14 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = v15[26];
          v17 = v15[27];
          v18 = v15[28];
          *buf = 136316418;
          v23 = "[CSVTUITrainingSessionWithPayload handleAudioInput:]_block_invoke";
          v24 = 2050;
          v25 = v8;
          v26 = 2050;
          v27 = v16 - v17;
          v28 = 2050;
          v29 = v16;
          v30 = 2050;
          v31 = v17;
          v32 = 2050;
          v33 = v18;
          _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s Discarding surplus audio of %{public}lu samples, audio sample available %{public}lu (%{public}lu, %{public}lu, %{public}lu)", buf, 0x3Eu);
        }
      }

      [v3 pushAudioInputIntoPCMBuffer:*(a1 + 32)];
      [v3 feedSpeechRecognitionWithPCMBuffer];
    }

    else if (v7 == 1)
    {
      [v3 pushAudioInputIntoPCMBuffer:*(a1 + 32)];
      *(*(a1 + 40) + 208) += v8;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__CSVTUITrainingSessionWithPayload_handleAudioInput___block_invoke_2;
      v20[3] = &unk_278578C10;
      v9 = *(a1 + 32);
      v20[4] = *(a1 + 40);
      v21 = v3;
      [v21 handleAudioBufferForVTWithAudioInput:v9 withDetectedBlock:v20];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __53__CSVTUITrainingSessionWithPayload_handleAudioInput___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 232), a2);
  v11 = a2;
  v4 = [*(*(a1 + 32) + 232) objectForKeyedSubscript:*MEMORY[0x277D01F00]];
  *(*(a1 + 32) + 216) = [v4 unsignedIntegerValue];

  v5 = [v11 objectForKeyedSubscript:*MEMORY[0x277D01CF8]];
  *(*(a1 + 32) + 48) = [v5 unsignedIntegerValue];

  v6 = *(a1 + 32);
  v7 = *(v6 + 216);
  v8 = *(v6 + 224);
  v9 = v7 >= v8;
  v10 = v7 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  *(v6 + 216) = v10;
  [*(a1 + 40) setupSpeechRecognitionTaskWithVoiceTriggerEventInfo:v11];
  [*(a1 + 40) feedSpeechRecognitionWithPCMBuffer];
  *(*(a1 + 32) + 8) = 3;
  [*(a1 + 40) _registerVoiceTriggerTimeout];
}

- (void)_reportStopListening
{
  if (!self->_reportedStopListening)
  {
    self->_reportedStopListening = 1;
    WeakRetained = objc_loadWeakRetained(&self->super._sessionDelegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->super._sessionDelegate);
      [v5 CSVTUITrainingSessionStopListen];
    }
  }
}

- (void)_firedEndPointTimeout
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(CSVTUITrainingSessionWithPayload *)self shouldHandleSession])
  {
    status = self->super._status;
    v4 = MEMORY[0x277D015D8];
    v5 = *MEMORY[0x277D015D8];
    v6 = os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT);
    if (status == 3)
    {
      if (v6)
      {
        v10 = 136315138;
        v11 = "[CSVTUITrainingSessionWithPayload _firedEndPointTimeout]";
        _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s EOS Timeout Fired", &v10, 0xCu);
      }

      if ([(CSVTUITrainingSessionWithPayload *)self shouldMatchPayload])
      {
        [(CSVTUITrainingSession *)self finishSpeechRecognitionTask];
      }

      else
      {
        v8 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315138;
          v11 = "[CSVTUITrainingSessionWithPayload _firedEndPointTimeout]";
          _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s Stop right now since ASR has issue", &v10, 0xCu);
        }
      }

      v7 = 1;
    }

    else
    {
      if (v6)
      {
        v10 = 136315138;
        v11 = "[CSVTUITrainingSessionWithPayload _firedEndPointTimeout]";
        _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Force endpoint fired", &v10, 0xCu);
      }

      v7 = 7;
    }

    [(CSVTUITrainingSessionWithPayload *)self closeSessionWithStatus:v7 successfully:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_registerEndPointTimeout
{
  objc_initWeak(&location, self);
  [(CSVTUITrainingSessionWithPayload *)self _getSessionEOSTimeout];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  queue = self->super._queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__CSVTUITrainingSessionWithPayload__registerEndPointTimeout__block_invoke;
  v6[3] = &unk_278578C88;
  objc_copyWeak(&v7, &location);
  dispatch_after(v4, queue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __60__CSVTUITrainingSessionWithPayload__registerEndPointTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _firedEndPointTimeout];
}

- (float)_getSessionEOSTimeout
{
  speechRecognizer = self->super._speechRecognizer;
  if (!speechRecognizer)
  {
    return 0.0;
  }

  isAvailable = [(SFSpeechRecognizer *)speechRecognizer isAvailable];
  result = 1.5;
  if (!isAvailable)
  {
    return 0.0;
  }

  return result;
}

- (void)_registerForceEndPointTimeout
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 1500000000);
  queue = self->super._queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__CSVTUITrainingSessionWithPayload__registerForceEndPointTimeout__block_invoke;
  v5[3] = &unk_278578C88;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __65__CSVTUITrainingSessionWithPayload__registerForceEndPointTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _firedEndPointTimeout];
}

- (void)_firedVoiceTriggerTimeout
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(CSVTUITrainingSessionWithPayload *)self shouldHandleSession])
  {
    v3 = MEMORY[0x277D015D8];
    v4 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[CSVTUITrainingSessionWithPayload _firedVoiceTriggerTimeout]";
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Fired VoiceTrigger Timeout", &v7, 0xCu);
    }

    if ([(CSVTUITrainingSessionWithPayload *)self shouldMatchPayload])
    {
      [(CSVTUITrainingSession *)self finishSpeechRecognitionTask];
    }

    else
    {
      v5 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315138;
        v8 = "[CSVTUITrainingSessionWithPayload _firedVoiceTriggerTimeout]";
        _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s Stop right now since ASR has issue", &v7, 0xCu);
      }
    }

    [(CSVTUITrainingSessionWithPayload *)self closeSessionWithStatus:1 successfully:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerVoiceTriggerTimeout
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, 5000000000);
  queue = self->super._queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__CSVTUITrainingSessionWithPayload__registerVoiceTriggerTimeout__block_invoke;
  v5[3] = &unk_278578C88;
  objc_copyWeak(&v6, &location);
  dispatch_after(v3, queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __64__CSVTUITrainingSessionWithPayload__registerVoiceTriggerTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _firedVoiceTriggerTimeout];
}

- (BOOL)shouldMatchPayload
{
  if (self->super._ASRErrorOccured)
  {
    return 0;
  }

  else
  {
    speechRecognizer = self->super._speechRecognizer;
    return speechRecognizer && [(SFSpeechRecognizer *)speechRecognizer isAvailable]&& self->_ASRResultReceived;
  }
}

- (void)startTraining
{
  v4.receiver = self;
  v4.super_class = CSVTUITrainingSessionWithPayload;
  [(CSVTUITrainingSession *)&v4 startTraining];
  self->_detectBOS = 0;
  self->_ASRResultReceived = 0;
  self->_reportedStopListening = 0;
  self->_utteranceStored = 0;
  self->_numSamplesFed = 0;
  self->_bestTriggerSampleStart = 0;
  self->super._phId = 0;
  [MEMORY[0x277D016E0] inputRecordingSampleRate];
  self->_extraSamplesAtStart = (v3 * 0.5);
}

@end