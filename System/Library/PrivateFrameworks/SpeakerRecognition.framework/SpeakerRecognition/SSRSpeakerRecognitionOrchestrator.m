@interface SSRSpeakerRecognitionOrchestrator
- (SSRSpeakerRecognitionOrchestrator)initWithContext:(id)a3 withDelegate:(id)a4 error:(id *)a5;
- (SSRSpeakerRecognitionOrchestratorDelegate)delegate;
- (id)getLatestVoiceRecognitionInfo;
- (id)orchestratorScoresWithPSRScores:(id)a3 withSATScores:(id)a4 withSegmentStartTime:(double)a5;
- (id)resetWithContext:(id)a3;
- (void)SSRVoiceActivityDetector:(id)a3 didDetectEndPointAt:(unint64_t)a4;
- (void)SSRVoiceActivityDetector:(id)a3 didDetectStartPointAt:(unint64_t)a4;
- (void)_logSpeakerIdProcessorScoreDelayWithScoreInfo:(id)a3 hasFinished:(BOOL)a4;
- (void)_resetWithContext:(id)a3;
- (void)dealloc;
- (void)endAudio;
- (void)processAudio:(id)a3 numSamples:(unint64_t)a4;
- (void)speakerRecognizer:(id)a3 hasSpeakerIdInfo:(id)a4;
- (void)speakerRecognizerFinishedProcessing:(id)a3 withFinalSpeakerIdInfo:(id)a4;
- (void)updateDebugFilePathsForSegment:(unint64_t)a3;
@end

@implementation SSRSpeakerRecognitionOrchestrator

- (SSRSpeakerRecognitionOrchestratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)SSRVoiceActivityDetector:(id)a3 didDetectEndPointAt:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__SSRSpeakerRecognitionOrchestrator_SSRVoiceActivityDetector_didDetectEndPointAt___block_invoke;
  v5[3] = &unk_278578170;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

uint64_t __82__SSRSpeakerRecognitionOrchestrator_SSRVoiceActivityDetector_didDetectEndPointAt___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 24);
  *(*(a1 + 32) + 16) = *(a1 + 40) / 1000.0;
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = v2;
    v5 = [v3 sessionId];
    v6 = *(a1 + 40);
    v9 = 136315650;
    v10 = "[SSRSpeakerRecognitionOrchestrator SSRVoiceActivityDetector:didDetectEndPointAt:]_block_invoke";
    v11 = 2114;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Starting a new segment of speech - %ldms", &v9, 0x20u);
  }

  result = [*(a1 + 32) _resetWithContext:*(*(a1 + 32) + 48)];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)SSRVoiceActivityDetector:(id)a3 didDetectStartPointAt:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SSRSpeakerRecognitionOrchestrator_SSRVoiceActivityDetector_didDetectStartPointAt___block_invoke;
  v5[3] = &unk_278578170;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

void __84__SSRSpeakerRecognitionOrchestrator_SSRVoiceActivityDetector_didDetectStartPointAt___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 48);
    v4 = v2;
    v5 = [v3 sessionId];
    v6 = *(a1 + 40);
    v8 = 136315650;
    v9 = "[SSRSpeakerRecognitionOrchestrator SSRVoiceActivityDetector:didDetectStartPointAt:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Speech started at - %ldms", &v8, 0x20u);
  }

  *(*(a1 + 32) + 41) = 1;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)speakerRecognizerFinishedProcessing:(id)a3 withFinalSpeakerIdInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SSRSpeakerRecognitionOrchestrator_speakerRecognizerFinishedProcessing_withFinalSpeakerIdInfo___block_invoke;
  block[3] = &unk_2785793A0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __96__SSRSpeakerRecognitionOrchestrator_speakerRecognizerFinishedProcessing_withFinalSpeakerIdInfo___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 48) recognitionStyle];
    v3 = *(a1 + 40);
    if (v2 != 2 || (*(v3 + 40) & 1) != 0)
    {
      v4 = *(a1 + 48);
      v5 = MEMORY[0x277D01970];
      if (v4 == *(v3 + 80))
      {
        objc_storeStrong((v3 + 128), *(a1 + 32));
        v18 = *v5;
        if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v19 = *(*(a1 + 40) + 48);
        v8 = v18;
        v9 = [v19 sessionId];
        v20 = *(a1 + 32);
        *v53 = 136315650;
        *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
        *&v53[12] = 2114;
        *&v53[14] = v9;
        *&v53[22] = 2114;
        v54 = v20;
        v11 = "%s SSROrch[%{public}@]:: PSR Analyzer finished the session with %{public}@";
      }

      else
      {
        if (v4 != *(v3 + 88))
        {
          goto LABEL_13;
        }

        objc_storeStrong((v3 + 136), *(a1 + 32));
        v6 = *v5;
        if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v7 = *(*(a1 + 40) + 48);
        v8 = v6;
        v9 = [v7 sessionId];
        v10 = *(a1 + 32);
        *v53 = 136315650;
        *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
        *&v53[12] = 2114;
        *&v53[14] = v9;
        *&v53[22] = 2114;
        v54 = v10;
        v11 = "%s SSROrch[%{public}@]:: SAT Analyzer finished the session with %{public}@";
      }

      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, v11, v53, 0x20u);

LABEL_13:
      v21 = *(a1 + 40);
      if (!*(v21 + 80) || !*(v21 + 88) || *(v21 + 128))
      {
        v22 = [*(a1 + 40) orchestratorScoresWithPSRScores:*(v21 + 128) withSATScores:*(v21 + 136) withSegmentStartTime:{*(v21 + 16), *v53, *&v53[16], v54}];
        v23 = *(a1 + 40);
        v24 = *(v23 + 120);
        *(v23 + 120) = v22;

        v25 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(*(a1 + 40) + 48);
          v27 = v25;
          v28 = [v26 sessionId];
          v29 = *(a1 + 40);
          v30 = *(v29 + 160);
          v31 = *(v29 + 120);
          *v53 = 136315906;
          *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
          *&v53[12] = 2114;
          *&v53[14] = v28;
          *&v53[22] = 2112;
          v54 = v30;
          v55 = 2114;
          v56 = v31;
          _os_log_impl(&dword_225E12000, v27, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: FilePath:%@, combinedScores - %{public}@", v53, 0x2Au);
        }

        [SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:*(*(a1 + 40) + 160) withScoreInfo:*(*(a1 + 40) + 120)];
        v32 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*(a1 + 40) + 48);
          v34 = v32;
          v35 = [v33 sessionId];
          v36 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:@"spIdKnownUserScores"];
          *v53 = 136315650;
          *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
          *&v53[12] = 2114;
          *&v53[14] = v35;
          *&v53[22] = 2114;
          v54 = v36;
          _os_log_impl(&dword_225E12000, v34, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Finished the session with known user scores %{public}@", v53, 0x20u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
        v38 = objc_opt_respondsToSelector();

        if (v38)
        {
          v39 = objc_loadWeakRetained((*(a1 + 40) + 56));
          [v39 voiceRecognitionOrchestratorFinishedProcessing:*(a1 + 40) withFinalVoiceRecognitionInfo:*(*(a1 + 40) + 120)];
        }

        else
        {
          v40 = *v5;
          if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
LABEL_25:
            [*(a1 + 40) _logSpeakerIdProcessorScoreDelayWithScoreInfo:*(a1 + 32) hasFinished:1];
            v43 = [*(*(a1 + 40) + 48) logAggregator];
            [v43 pushAnalytics];

            goto LABEL_30;
          }

          v41 = *(*(a1 + 40) + 48);
          v39 = v40;
          v42 = [v41 sessionId];
          *v53 = 136315394;
          *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
          *&v53[12] = 2114;
          *&v53[14] = v42;
          _os_log_impl(&dword_225E12000, v39, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Discarded speaker scores for session", v53, 0x16u);
        }

        goto LABEL_25;
      }

      v48 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v49 = *(v21 + 48);
      v14 = v48;
      v15 = [v49 sessionId];
      v50 = *(a1 + 40);
      if (*(v50 + 128))
      {
        v51 = @"SAT";
      }

      else
      {
        v51 = @"PSR";
      }

      v52 = [*(v50 + 48) sessionId];
      *v53 = 136315906;
      *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
      *&v53[12] = 2114;
      *&v53[14] = v15;
      *&v53[22] = 2114;
      v54 = v51;
      v55 = 2114;
      v56 = v52;
      _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Wait for %{public}@ analyzer to complete the session - %{public}@", v53, 0x2Au);

LABEL_29:
      goto LABEL_30;
    }

    v44 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v45 = *(v3 + 48);
    v14 = v44;
    v15 = [v45 sessionId];
    v46 = *(a1 + 48);
    *v53 = 136315650;
    *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
    *&v53[12] = 2114;
    *&v53[14] = v15;
    *&v53[22] = 2114;
    v54 = v46;
    v17 = "%s SSROrch[%{public}@]:: EndAudioCalled is false, returning for recognizer %{public}@";
LABEL_28:
    _os_log_impl(&dword_225E12000, v14, OS_LOG_TYPE_DEFAULT, v17, v53, 0x20u);
    goto LABEL_29;
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(*(a1 + 40) + 48);
    v14 = v12;
    v15 = [v13 sessionId];
    v16 = *(a1 + 48);
    *v53 = 136315650;
    *&v53[4] = "[SSRSpeakerRecognitionOrchestrator speakerRecognizerFinishedProcessing:withFinalSpeakerIdInfo:]_block_invoke";
    *&v53[12] = 2114;
    *&v53[14] = v15;
    *&v53[22] = 2114;
    v54 = v16;
    v17 = "%s SSROrch[%{public}@]:: ERR: VoiceInfo is nil from recognizer %{public}@";
    goto LABEL_28;
  }

LABEL_30:
  v47 = *MEMORY[0x277D85DE8];
}

- (void)speakerRecognizer:(id)a3 hasSpeakerIdInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SSRSpeakerRecognitionOrchestrator_speakerRecognizer_hasSpeakerIdInfo___block_invoke;
  block[3] = &unk_2785793A0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __72__SSRSpeakerRecognitionOrchestrator_speakerRecognizer_hasSpeakerIdInfo___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    if (v4 == *(v3 + 80))
    {
      v5 = 104;
    }

    else
    {
      if (v4 != *(v3 + 88))
      {
        goto LABEL_9;
      }

      v5 = 112;
    }

    objc_storeStrong((v3 + v5), v2);
    v3 = *(a1 + 40);
LABEL_9:
    v11 = [v3 orchestratorScoresWithPSRScores:*(v3 + 104) withSATScores:*(v3 + 112) withSegmentStartTime:*(v3 + 16)];
    v12 = *(a1 + 40);
    v13 = *(v12 + 120);
    *(v12 + 120) = v11;

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 56));
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained((*(a1 + 40) + 56));
      [v16 voiceRecognitionOrchestrator:*(a1 + 40) hasVoiceRecognitionInfo:*(*(a1 + 40) + 120)];
    }

    else
    {
      v17 = *MEMORY[0x277D01970];
      if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:
        [*(a1 + 40) _logSpeakerIdProcessorScoreDelayWithScoreInfo:*(a1 + 32) hasFinished:0];
        goto LABEL_15;
      }

      v18 = *(*(a1 + 40) + 48);
      v16 = v17;
      v19 = [v18 sessionId];
      v20 = [*(*(a1 + 40) + 48) sessionId];
      v22 = 136315650;
      v23 = "[SSRSpeakerRecognitionOrchestrator speakerRecognizer:hasSpeakerIdInfo:]_block_invoke";
      v24 = 2114;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Discarded speaker scores for session - %{public}@", &v22, 0x20u);
    }

    goto LABEL_14;
  }

  v6 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 40) + 48);
    v8 = v6;
    v9 = [v7 sessionId];
    v10 = *(a1 + 48);
    v22 = 136315650;
    v23 = "[SSRSpeakerRecognitionOrchestrator speakerRecognizer:hasSpeakerIdInfo:]_block_invoke";
    v24 = 2114;
    v25 = v9;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: ERR: VoiceInfo is nil from recognizer %{public}@", &v22, 0x20u);
  }

LABEL_15:
  v21 = *MEMORY[0x277D85DE8];
}

- (id)getLatestVoiceRecognitionInfo
{
  v35 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__749;
  v25 = __Block_byref_object_dispose__750;
  v26 = 0;
  v3 = [MEMORY[0x277CBEAA8] date];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__SSRSpeakerRecognitionOrchestrator_getLatestVoiceRecognitionInfo__block_invoke;
  block[3] = &unk_2785797D0;
  block[4] = self;
  block[5] = &v21;
  dispatch_async_and_wait(queue, block);
  v5 = [MEMORY[0x277CBEAA8] date];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  [v5 timeIntervalSinceDate:v3];
  v19 = v6;
  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(SSRSpeakerRecognitionContext *)self->_context sessionId];
    v9 = v17[3];
    v10 = [v22[5] objectForKeyedSubscript:@"spIdKnownUserScores"];
    *buf = 136315906;
    v28 = "[SSRSpeakerRecognitionOrchestrator getLatestVoiceRecognitionInfo]";
    v29 = 2114;
    v30 = v8;
    v31 = 2050;
    v32 = v9;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Sync score report with %{public}f delay - with known user scores %{public}@", buf, 0x2Au);
  }

  v11 = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__SSRSpeakerRecognitionOrchestrator_getLatestVoiceRecognitionInfo__block_invoke_59;
  v15[3] = &unk_2785797D0;
  v15[4] = self;
  v15[5] = &v16;
  dispatch_async(v11, v15);
  v12 = v22[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __66__SSRSpeakerRecognitionOrchestrator_getLatestVoiceRecognitionInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) lastScoreCard];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  v5 = [*(*(a1 + 32) + 88) lastScoreCard];
  v6 = *(a1 + 32);
  v7 = *(v6 + 112);
  *(v6 + 112) = v5;

  v8 = [*(a1 + 32) orchestratorScoresWithPSRScores:*(*(a1 + 32) + 104) withSATScores:*(*(a1 + 32) + 112) withSegmentStartTime:*(*(a1 + 32) + 16)];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x2821F96F8]();
}

void __66__SSRSpeakerRecognitionOrchestrator_getLatestVoiceRecognitionInfo__block_invoke_59(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = [*(*(a1 + 32) + 48) logAggregator];
  [v3 setSpeakerRecognitionWaitTime:v2];

  v4 = [*(*(a1 + 32) + 48) logAggregator];
  [v4 setSpeakerRecognitionProcessingStatus:0];

  v5 = [*(*(a1 + 32) + 48) logAggregator];
  [v5 pushAnalytics];
}

- (void)updateDebugFilePathsForSegment:(unint64_t)a3
{
  v5 = [(SSRSpeakerRecognitionContext *)self->_context debugUtteranceAudioFile];
  v17 = [v5 stringByDeletingLastPathComponent];

  v6 = [(SSRSpeakerRecognitionContext *)self->_context debugUtteranceAudioFile];
  v7 = [v6 lastPathComponent];

  v8 = MEMORY[0x277CCACA8];
  v9 = [v7 stringByDeletingPathExtension];
  v10 = [v8 stringWithFormat:@"%@_%d", v9, a3];

  v11 = [v10 stringByAppendingPathExtension:@"wav"];
  v12 = [v17 stringByAppendingPathComponent:v11];
  debugUtteranceAudioFilePath = self->_debugUtteranceAudioFilePath;
  self->_debugUtteranceAudioFilePath = v12;

  v14 = [v10 stringByAppendingPathExtension:@"json"];
  v15 = [v17 stringByAppendingPathComponent:v14];
  debugUtteranceJsonFilePath = self->_debugUtteranceJsonFilePath;
  self->_debugUtteranceJsonFilePath = v15;
}

- (void)_resetWithContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_context, a3);
  if ([v5 recognitionStyle] == 2)
  {
    [(CSAudioFileWriter *)self->_ssrUttLogger endAudio];
    [SSRUtils logSpeakerRecognitionGradingMetadataAtFilepath:self->_debugUtteranceJsonFilePath withScoreInfo:self->_combinedScores];
    [(SSRSpeakerRecognitionOrchestrator *)self updateDebugFilePathsForSegment:self->_segmentCounter];
    if (CSIsInternalBuild() && +[SSRUtils ssrAudioLogsCountWithinPrivacyLimit])
    {
      v6 = objc_alloc(MEMORY[0x277D01830]);
      v7 = [MEMORY[0x277CBEBC0] URLWithString:self->_debugUtteranceAudioFilePath];
      [MEMORY[0x277D01748] lpcmInt16ASBD];
      [MEMORY[0x277D01748] lpcmInt16ASBD];
      v8 = [v6 initWithURL:v7 inputFormat:v16 outputFormat:&v15];
      ssrUttLogger = self->_ssrUttLogger;
      self->_ssrUttLogger = v8;
    }

    else
    {
      v10 = self->_ssrUttLogger;
      self->_ssrUttLogger = 0;
    }
  }

  psrFinalSpeakerInfo = self->_psrFinalSpeakerInfo;
  self->_psrFinalSpeakerInfo = 0;

  satLastSpeakerInfo = self->_satLastSpeakerInfo;
  self->_satLastSpeakerInfo = 0;

  psrLastSpeakerInfo = self->_psrLastSpeakerInfo;
  self->_psrLastSpeakerInfo = 0;

  v14 = self->_satLastSpeakerInfo;
  self->_satLastSpeakerInfo = 0;

  self->_numSamplesAddedToSpeakerRecognizers = 0;
  self->_startPointReported = 0;
  [(SSRVoiceActivityDetector *)self->_vad resetWithContext:v5];
  [(SSRSpeakerRecognizer *)self->_psrRecognizer resetWithContext:v5];
  [(SSRSpeakerRecognizer *)self->_satRecognizer resetWithContext:v5];
}

- (id)orchestratorScoresWithPSRScores:(id)a3 withSATScores:(id)a4 withSegmentStartTime:(double)a5
{
  context = self->_context;
  v9 = a4;
  v10 = a3;
  [(SSRSpeakerRecognitionContext *)context combinationWeight];
  v11 = [SSRUtils combineScoreFromPSR:v10 fromSAT:v9 withCombinedWt:?];

  v12 = [(SSRSpeakerRecognitionContext *)self->_context numEnrollmentUtterances];
  [v11 setObject:v12 forKeyedSubscript:@"numEnrollmentUtt"];

  v13 = MEMORY[0x277CCABB0];
  [(SSRSpeakerRecognitionContext *)self->_context combinationWeight];
  v14 = [v13 numberWithFloat:?];
  [v11 setObject:v14 forKeyedSubscript:@"combinationWeight"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SSRSpeakerRecognitionContext scoreType](self->_context, "scoreType")}];
  [v11 setObject:v15 forKeyedSubscript:@"spIdUserScoresVersion"];

  v16 = [(SSRSpeakerRecognitionContext *)self->_context sessionId];
  [v11 setObject:v16 forKeyedSubscript:@"sessionId"];

  v17 = [(SSRSpeakerRecognitionContext *)self->_context configVersion];
  [v11 setObject:v17 forKeyedSubscript:@"spIdAssetVersion"];

  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v11 setObject:v18 forKeyedSubscript:@"segmentStartTime"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_segmentCounter];
  [v11 setObject:v19 forKeyedSubscript:@"segmentCounter"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_myriadResult];
  [v11 setObject:v20 forKeyedSubscript:@"myriad"];

  if (CSIsInternalBuild())
  {
    [v11 setObject:self->_debugUtteranceJsonFilePath forKeyedSubscript:@"ssrMeta"];
  }

  [v11 setObject:@"spIdVTInvocationScoreThresholdingType" forKeyedSubscript:@"spIdScoreThresholdingType"];

  return v11;
}

- (void)_logSpeakerIdProcessorScoreDelayWithScoreInfo:(id)a3 hasFinished:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 date];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v11 = v10 - self->_lastScoreReportTimeStamp;
  v12 = [v7 objectForKeyedSubscript:@"spIdAudioProcessedDuration"];

  v13 = [v12 integerValue];
  v14 = MEMORY[0x277D01970];
  v15 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    context = self->_context;
    v17 = v15;
    v18 = [(SSRSpeakerRecognitionContext *)context sessionId];
    if (v4)
    {
      v19 = @"finished";
    }

    else
    {
      v19 = @"reported";
    }

    v20 = self->_numSamplesAddedToSpeakerRecognizers * 1000.0;
    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v25 = 136316418;
    v26 = "[SSRSpeakerRecognitionOrchestrator _logSpeakerIdProcessorScoreDelayWithScoreInfo:hasFinished:]";
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2050;
    v32 = (v11 * 1000.0);
    v33 = 2050;
    v34 = v13;
    v35 = 2050;
    v36 = (v20 / v21 - v13);
    _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Scorecard %{public}@ with delay:%{public}ldms, processed:%{public}ldms, await:%{public}ldms", &v25, 0x3Eu);
  }

  if (CSIsCommunalDevice() && v11 > 0.8)
  {
    v22 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315394;
      v26 = "[SSRSpeakerRecognitionOrchestrator _logSpeakerIdProcessorScoreDelayWithScoreInfo:hasFinished:]";
      v27 = 2048;
      v28 = (v11 * 1000.0);
      _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s ERR: Posting diagnostic report for abnormal score delay - %ldms", &v25, 0x16u);
    }

    v23 = [MEMORY[0x277D01708] sharedInstance];
    [v23 submitVoiceIdIssueReport:*MEMORY[0x277D01A68]];
  }

  self->_lastScoreReportTimeStamp = v10;
  v24 = *MEMORY[0x277D85DE8];
}

- (id)resetWithContext:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SSRSpeakerRecognitionOrchestrator_resetWithContext___block_invoke;
  v8[3] = &unk_278579350;
  v8[4] = self;
  v9 = v4;
  v6 = v4;
  dispatch_async_and_wait(queue, v8);

  return 0;
}

uint64_t __54__SSRSpeakerRecognitionOrchestrator_resetWithContext___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 40) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  v4 = MEMORY[0x277D01970];
  if (v3)
  {
    *(v2 + 168) = 0;

    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 48);
      v7 = v5;
      v8 = [v6 sessionId];
      v9 = *(*(a1 + 32) + 176);
      *buf = 136315650;
      v27 = "[SSRSpeakerRecognitionOrchestrator resetWithContext:]_block_invoke";
      v28 = 2114;
      v29 = v8;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Released OS transaction for %{public}@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) osTransactionReqd])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 stringWithFormat:@"SSRSpeakerRecognitionOrchestrator-%@", v12];
    v14 = *(a1 + 32);
    v15 = *(v14 + 176);
    *(v14 + 176) = v13;

    [*(*(a1 + 32) + 176) UTF8String];
    v16 = os_transaction_create();
    v17 = *(a1 + 32);
    v18 = *(v17 + 168);
    *(v17 + 168) = v16;

    v19 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(a1 + 32) + 48);
      v21 = v19;
      v22 = [v20 sessionId];
      v23 = *(*(a1 + 32) + 176);
      *buf = 136315650;
      v27 = "[SSRSpeakerRecognitionOrchestrator resetWithContext:]_block_invoke";
      v28 = 2114;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&dword_225E12000, v21, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Creating OS transaction for %{public}@", buf, 0x20u);
    }
  }

  result = [*(a1 + 32) _resetWithContext:*(a1 + 40)];
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)endAudio
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SSRSpeakerRecognitionOrchestrator_endAudio__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __45__SSRSpeakerRecognitionOrchestrator_endAudio__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = 1;
  [*(*(a1 + 32) + 64) endAudio];
  [*(*(a1 + 32) + 80) endAudio];
  [*(*(a1 + 32) + 88) endAudio];
  v2 = *(*(a1 + 32) + 96);

  return [v2 endAudio];
}

- (void)processAudio:(id)a3 numSamples:(unint64_t)a4
{
  v6 = a3;
  if (self->_lastScoreReportTimeStamp == 0.0)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceReferenceDate];
    self->_lastScoreReportTimeStamp = v8;
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SSRSpeakerRecognitionOrchestrator_processAudio_numSamples___block_invoke;
  block[3] = &unk_278579780;
  v12 = v6;
  v13 = a4;
  block[4] = self;
  v10 = v6;
  dispatch_async(queue, block);
}

void __61__SSRSpeakerRecognitionOrchestrator_processAudio_numSamples___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((*(v2 + 40) & 1) != 0 || [*(v2 + 48) recognitionStyle] != 2 && (v12 = *(a1 + 32), v13 = *(v12 + 32), v13 > objc_msgSend(*(v12 + 48), "maxAllowedAudioSamples")))
  {
    v3 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 48);
      v5 = v3;
      v6 = [v4 sessionId];
      v7 = *(a1 + 32);
      v8 = *(v7 + 40);
      v9 = *(v7 + 32);
      v10 = [*(v7 + 48) maxAllowedAudioSamples];
      v18 = 136316162;
      v19 = "[SSRSpeakerRecognitionOrchestrator processAudio:numSamples:]_block_invoke";
      v20 = 2114;
      v21 = v6;
      v22 = 1024;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&dword_225E12000, v5, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Ignoring addAudio, endAudio: %d procSamples: %lu maxProcSamples: %lu", &v18, 0x30u);
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    *(*(a1 + 32) + 32) += *(a1 + 48);
    [*(*(a1 + 32) + 64) addSamples:objc_msgSend(*(a1 + 40) numSamples:{"bytes"), *(a1 + 48)}];
    [*(*(a1 + 32) + 80) processAudioData:*(a1 + 40) numSamples:*(a1 + 48)];
    [*(*(a1 + 32) + 88) processAudioData:*(a1 + 40) numSamples:*(a1 + 48)];
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 96);
    v16 = *(a1 + 48);
    v17 = *MEMORY[0x277D85DE8];

    [v15 processAudioData:v14 numSamples:v16];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  transaction = self->_transaction;
  if (transaction)
  {
    v4 = *MEMORY[0x277D015C8];
    if (os_log_type_enabled(*MEMORY[0x277D015C8], OS_LOG_TYPE_DEFAULT))
    {
      transDesc = self->_transDesc;
      *buf = 136315394;
      v9 = "[SSRSpeakerRecognitionOrchestrator dealloc]";
      v10 = 2114;
      v11 = transDesc;
      _os_log_impl(&dword_225E12000, v4, OS_LOG_TYPE_DEFAULT, "%s Released OS transaction for %{public}@", buf, 0x16u);
      transaction = self->_transaction;
    }
  }

  self->_transaction = 0;

  v7.receiver = self;
  v7.super_class = SSRSpeakerRecognitionOrchestrator;
  [(SSRSpeakerRecognitionOrchestrator *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerRecognitionOrchestrator)initWithContext:(id)a3 withDelegate:(id)a4 error:(id *)a5
{
  v74[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v62.receiver = self;
  v62.super_class = SSRSpeakerRecognitionOrchestrator;
  v11 = [(SSRSpeakerRecognitionOrchestrator *)&v62 init];
  v12 = v11;
  if (!v11)
  {
LABEL_35:
    v56 = v12;
    goto LABEL_36;
  }

  objc_storeStrong(&v11->_context, a3);
  v13 = [[SSRSpeakerRecognizerPSR alloc] initWithContext:v9 delegate:v12];
  psrRecognizer = v12->_psrRecognizer;
  v12->_psrRecognizer = v13;

  v15 = MEMORY[0x277D01970];
  if (!v12->_psrRecognizer)
  {
    v16 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      context = v12->_context;
      v18 = v16;
      v19 = [(SSRSpeakerRecognitionContext *)context sessionId];
      *buf = 136315394;
      v64 = "[SSRSpeakerRecognitionOrchestrator initWithContext:withDelegate:error:]";
      v65 = 2114;
      v66 = v19;
      _os_log_impl(&dword_225E12000, v18, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Failed to create PSR Recognizer", buf, 0x16u);
    }
  }

  v20 = [[SSRSpeakerRecognizerSAT alloc] initWithContext:v9 delegate:v12];
  satRecognizer = v12->_satRecognizer;
  v12->_satRecognizer = v20;

  if (!v12->_satRecognizer)
  {
    v22 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v12->_context;
      v24 = v22;
      v25 = [(SSRSpeakerRecognitionContext *)v23 sessionId];
      *buf = 136315394;
      v64 = "[SSRSpeakerRecognitionOrchestrator initWithContext:withDelegate:error:]";
      v65 = 2114;
      v66 = v25;
      _os_log_impl(&dword_225E12000, v24, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Failed to create SAT Recognizer", buf, 0x16u);
    }
  }

  if (!v12->_psrRecognizer && !v12->_satRecognizer)
  {
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed to init PSR and SAT recognizers - Bailing out"];
    v53 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v64 = "[SSRSpeakerRecognitionOrchestrator initWithContext:withDelegate:error:]";
      v65 = 2114;
      v66 = v46;
      _os_log_error_impl(&dword_225E12000, v53, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
      if (!a5)
      {
        goto LABEL_29;
      }
    }

    else if (!a5)
    {
LABEL_29:
      v50 = [(SSRSpeakerRecognitionContext *)v12->_context logAggregator];
      v51 = v50;
      v52 = 101;
      goto LABEL_30;
    }

    v54 = MEMORY[0x277CCA9B8];
    v73 = @"reason";
    v74[0] = v46;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    *a5 = [v54 errorWithDomain:@"com.apple.speakerrecognition" code:101 userInfo:v55];

    goto LABEL_29;
  }

  v26 = [v9 debugUtteranceAudioFile];
  debugUtteranceAudioFilePath = v12->_debugUtteranceAudioFilePath;
  v12->_debugUtteranceAudioFilePath = v26;

  v28 = [v9 debugUtteranceMetaFile];
  debugUtteranceJsonFilePath = v12->_debugUtteranceJsonFilePath;
  v12->_debugUtteranceJsonFilePath = v28;

  v12->_segmentCounter = 0;
  if ([v9 recognitionStyle] != 2 || (v30 = -[SSRVoiceActivityDetector initWithContext:delegate:]([SSRVoiceActivityDetector alloc], "initWithContext:delegate:", v9, v12), vad = v12->_vad, v12->_vad = v30, vad, v12->_vad))
  {
    v32 = [MEMORY[0x277D018F8] getSerialQueueWithQOS:33 name:@"com.apple.ssr.orchestratorq" fixedPriority:*MEMORY[0x277D019B0]];
    queue = v12->_queue;
    v12->_queue = v32;

    objc_storeWeak(&v12->_delegate, v10);
    v12->_myriadResult = 0;
    v12->_numSamplesAddedToSpeakerRecognizers = 0;
    *&v12->_endAudioCalled = 0;
    if ([v9 recognitionStyle] == 2)
    {
      [(SSRSpeakerRecognitionOrchestrator *)v12 updateDebugFilePathsForSegment:v12->_segmentCounter];
    }

    ssrUttLogger = v12->_ssrUttLogger;
    v12->_ssrUttLogger = 0;

    if (CSIsInternalBuild())
    {
      v35 = [MEMORY[0x277D01788] sharedPreferences];
      v36 = [v35 speakerRecognitionAudioLoggingEnabled];

      if (v36)
      {
        v37 = +[SSRUtils ssrAudioLogsDir];
        v38 = [SSRUtils createDirectoryIfDoesNotExist:v37];

        if (+[SSRUtils ssrAudioLogsCountWithinPrivacyLimit])
        {
          v39 = objc_alloc(MEMORY[0x277D01830]);
          v40 = [MEMORY[0x277CBEBC0] URLWithString:v12->_debugUtteranceAudioFilePath];
          [MEMORY[0x277D01748] lpcmInt16ASBD];
          [MEMORY[0x277D01748] lpcmInt16ASBD];
          v41 = [v39 initWithURL:v40 inputFormat:buf outputFormat:v61];
          v42 = v12->_ssrUttLogger;
          v12->_ssrUttLogger = v41;
        }
      }
    }

    v43 = *v15;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [(SSRSpeakerRecognitionContext *)v12->_context sessionId];
      if (v12->_satRecognizer)
      {
        if (v12->_psrRecognizer)
        {
          v45 = @"SAT+PSR";
        }

        else
        {
          v45 = @"SAT";
        }
      }

      else
      {
        v45 = @"PSR";
      }

      v57 = [(SSRSpeakerRecognitionContext *)v12->_context debugUtteranceAudioFile];
      v58 = [v57 lastPathComponent];
      *buf = 136315906;
      v64 = "[SSRSpeakerRecognitionOrchestrator initWithContext:withDelegate:error:]";
      v65 = 2114;
      v66 = v44;
      v67 = 2114;
      v68 = v45;
      v69 = 2114;
      v70 = v58;
      _os_log_impl(&dword_225E12000, v43, OS_LOG_TYPE_DEFAULT, "%s SSROrch[%{public}@]:: Successfully initialized with {%{public}@, %{public}@}", buf, 0x2Au);
    }

    goto LABEL_35;
  }

  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERR: Failed to init VAD - Bailing out"];
  v47 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v64 = "[SSRSpeakerRecognitionOrchestrator initWithContext:withDelegate:error:]";
    v65 = 2114;
    v66 = v46;
    _os_log_error_impl(&dword_225E12000, v47, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
    if (!a5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a5)
  {
LABEL_24:
    v48 = MEMORY[0x277CCA9B8];
    v71 = @"reason";
    v72 = v46;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    *a5 = [v48 errorWithDomain:@"com.apple.speakerrecognition" code:102 userInfo:v49];
  }

LABEL_25:
  v50 = [(SSRSpeakerRecognitionContext *)v12->_context logAggregator];
  v51 = v50;
  v52 = 102;
LABEL_30:
  [v50 setSpeakerRecognitionProcessingStatus:v52];

  v56 = 0;
LABEL_36:

  v59 = *MEMORY[0x277D85DE8];
  return v56;
}

@end