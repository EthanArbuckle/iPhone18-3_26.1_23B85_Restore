@interface VTTranscriber
- (VTTranscriber)initWithConfiguration:(id)a3 triggerTokens:(id)a4 useKeywordSpotting:(BOOL)a5;
- (double)_getConfidence:(id)a3;
- (void)endAudio;
- (void)reset;
- (void)runRecognitionWithCallback:(id)a3;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
@end

@implementation VTTranscriber

- (double)_getConfidence:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = 0.0;
  if (v4 && self->_triggerTokenList)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0x3FF0000000000000;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__VTTranscriber__getConfidence___block_invoke;
    v8[3] = &unk_2784EC9A8;
    v8[4] = self;
    v8[5] = &v9;
    [v4 enumerateObjectsUsingBlock:v8];
    v6 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

void __32__VTTranscriber__getConfidence___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(*(a1 + 32) + 32) count] > a3)
  {
    v6 = [v5 tokenName];
    v7 = [*(*(a1 + 32) + 32) objectAtIndex:a3];
    v8 = [v6 caseInsensitiveCompare:v7];

    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) * 0.0;
    }
  }

  v9 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 tokenName];
    v11 = [v10 UTF8String];
    [v5 confidence];
    v13 = 134349570;
    v14 = a3;
    v15 = 2080;
    v16 = v11;
    v17 = 2050;
    v18 = v12;
    _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "EAR Token[%{public}lu]: %s (%{public}f)", &v13, 0x20u);
  }
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__VTTranscriber_speechRecognizer_didFinishRecognitionWithError___block_invoke;
  v8[3] = &unk_2784ED118;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __64__VTTranscriber_speechRecognizer_didFinishRecognitionWithError___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v17 = [*(a1 + 32) description];
      v18 = 136446210;
      v19 = [v17 UTF8String];
      _os_log_error_impl(&dword_223A31000, v2, OS_LOG_TYPE_ERROR, "ERROR: %{public}s\n", &v18, 0xCu);
    }
  }

  v3 = *(a1 + 40);
  if (*(v3 + 65) == 1)
  {
    if (*(a1 + 32))
    {
      *(v3 + 24) = 0xC08F400000000000;
    }

    else
    {
      v13 = [*(v3 + 16) lastObject];
      [v13 confidence];
      *(*(a1 + 40) + 24) = v14;
    }

    v15 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(a1 + 40) + 24);
      v18 = 134349056;
      v19 = v16;
      _os_log_impl(&dword_223A31000, v15, OS_LOG_TYPE_DEFAULT, "EAR Keyword Spotting Confidence: %{public}f", &v18, 0xCu);
    }

    v12 = *(*(a1 + 40) + 40);
    if (v12)
    {
LABEL_21:
      (*(v12 + 16))();
    }
  }

  else
  {
    *(v3 + 64) = 0;
    v4 = *(a1 + 40);
    if (*(v4 + 32))
    {
      v5 = [*(v4 + 16) count];
      if (v5 >= [*(*(a1 + 40) + 32) count])
      {
        [*(a1 + 40) _getConfidence:*(*(a1 + 40) + 16)];
        *(*(a1 + 40) + 24) = v6;
        v7 = *(a1 + 40);
        if (*(v7 + 24) >= 1.0)
        {
          v8 = [*(v7 + 16) count];
          v9 = [*(*(a1 + 40) + 32) count];
          v7 = *(a1 + 40);
          if (v8 > v9)
          {
            *(v7 + 64) = 1;
            v7 = *(a1 + 40);
          }
        }

        v10 = VTLogContextFacilityVoiceTrigger;
        if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(v7 + 24);
          v18 = 134349056;
          v19 = v11;
          _os_log_impl(&dword_223A31000, v10, OS_LOG_TYPE_DEFAULT, "EAR Final Current Confidence: %{public}f", &v18, 0xCu);
          v7 = *(a1 + 40);
        }

        v12 = *(v7 + 40);
        if (v12)
        {
          goto LABEL_21;
        }
      }
    }
  }
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__VTTranscriber_speechRecognizer_didRecognizeFinalResults___block_invoke;
  v8[3] = &unk_2784ED118;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __59__VTTranscriber_speechRecognizer_didRecognizeFinalResults___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v3 = *(*(a1 + 40) + 16);
  v5 = v2;
  v4 = [v2 tokens];
  [v3 addObjectsFromArray:v4];
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (!self->_useKeywordSpotting)
  {
    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__VTTranscriber_speechRecognizer_didRecognizePartialResult___block_invoke;
    v8[3] = &unk_2784ED118;
    v8[4] = self;
    v9 = v5;
    dispatch_async(queue, v8);
  }
}

void __60__VTTranscriber_speechRecognizer_didRecognizePartialResult___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 64) = 0;
  if (*(*(a1 + 32) + 32))
  {
    v2 = [*(a1 + 40) tokens];
    v3 = [v2 count];
    v4 = [*(*(a1 + 32) + 32) count];

    if (v3 >= v4)
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) tokens];
      [v5 _getConfidence:v6];
      *(*(a1 + 32) + 24) = v7;

      v8 = *(a1 + 32);
      if (*(v8 + 24) >= 1.0)
      {
        v9 = [*(a1 + 40) tokens];
        v10 = [v9 count];
        v11 = [*(*(a1 + 32) + 32) count];

        v8 = *(a1 + 32);
        if (v10 > v11)
        {
          *(v8 + 64) = 1;
          v8 = *(a1 + 32);
        }
      }

      v12 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v8 + 24);
        v15 = 134349056;
        v16 = v13;
        _os_log_impl(&dword_223A31000, v12, OS_LOG_TYPE_DEFAULT, "EAR Partial Current Confidence: %{public}f", &v15, 0xCu);
        v8 = *(a1 + 32);
      }

      v14 = *(v8 + 40);
      if (v14)
      {
        (*(v14 + 16))();
      }
    }
  }
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__VTTranscriber_reset__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __22__VTTranscriber_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = -1000.0;
  if (!*(v1 + 65))
  {
    v2 = 0.0;
  }

  *(v1 + 24) = v2;
  *(*(a1 + 32) + 64) = 0;
  return [*(*(a1 + 32) + 16) removeAllObjects];
}

- (void)endAudio
{
  v3 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v3, OS_LOG_TYPE_DEFAULT, "VTTranscriber endAudio", buf, 2u);
  }

  [(_EARSpeechRecognitionAudioBuffer *)self->_recognizerBuffer endAudio];
}

- (void)runRecognitionWithCallback:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x223DF24E0]();
  callback = self->_callback;
  self->_callback = v5;

  v7 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_223A31000, v7, OS_LOG_TYPE_DEFAULT, "VTTranscriber runRecognitionWithCallback", buf, 2u);
  }

  v8 = [(_EARSpeechRecognizer *)self->_recognizer runRecognitionWithResultStream:self];
  recognizerBuffer = self->_recognizerBuffer;
  self->_recognizerBuffer = v8;
}

- (VTTranscriber)initWithConfiguration:(id)a3 triggerTokens:(id)a4 useKeywordSpotting:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v24.receiver = self;
  v24.super_class = VTTranscriber;
  v10 = [(VTTranscriber *)&v24 init];
  if (v10)
  {
    v11 = dispatch_queue_create("com.apple.transcribe.Transcriber", 0);
    queue = v10->_queue;
    v10->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    previousUtteranceTokens = v10->_previousUtteranceTokens;
    v10->_previousUtteranceTokens = v13;

    v10->_triggerConfidence = 0.0;
    v15 = [v9 componentsSeparatedByString:@"_"];
    triggerTokenList = v10->_triggerTokenList;
    v10->_triggerTokenList = v15;

    v17 = v10->_triggerTokenList;
    if (v17)
    {
      v18 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_223A31000, v18, OS_LOG_TYPE_DEFAULT, "Transcriber trigger token list: %{public}@", buf, 0xCu);
      }
    }

    recognizerBuffer = v10->_recognizerBuffer;
    v10->_recognizerBuffer = 0;

    v10->_isTriggerFollowedByWords = 0;
    v10->_useKeywordSpotting = a5;
    v20 = [objc_alloc(MEMORY[0x277D07270]) initWithConfiguration:v8];
    recognizer = v10->_recognizer;
    v10->_recognizer = v20;
  }

  v22 = v10;

  return v22;
}

@end