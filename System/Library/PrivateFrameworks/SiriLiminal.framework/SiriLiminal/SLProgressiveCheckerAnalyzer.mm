@interface SLProgressiveCheckerAnalyzer
- (BOOL)_setUpAnalyzerWithConfig:(id)config error:(id *)error;
- (SLProgressiveCheckerAnalyzer)initWithConfig:(id)config withDelegate:(id)delegate error:(id *)error;
- (id)_getTokenByInvocationType:(id)type;
- (void)_addAudio:(id)audio;
- (void)_endAudio;
- (void)_startNewRequestWithContext:(id)context;
@end

@implementation SLProgressiveCheckerAnalyzer

- (id)_getTokenByInvocationType:(id)type
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  if (!self->_shouldUseMultiPhrasesCheckerOutput)
  {
    lastObject = 0;
    goto LABEL_27;
  }

  if ([(SLProgressiveCheckerContext *)self->_context invocationType]== 4)
  {
    v5 = @"hsInvocationToken";
    goto LABEL_9;
  }

  if ([(SLProgressiveCheckerContext *)self->_context invocationType]== 5)
  {
    v5 = @"jsInvocationToken";
    goto LABEL_9;
  }

  if ([(SLProgressiveCheckerContext *)self->_context invocationType]== 6)
  {
    v5 = @"magusInvocationToken";
LABEL_9:
    v7 = [(NSDictionary *)self->_invocationToPhraseMap objectForKeyedSubscript:v5];
    if (v7)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = typeCopy;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
LABEL_12:
        v12 = 0;
        while (1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          tokens = [*(*(&v20 + 1) + 8 * v12) tokens];
          lastObject = [tokens lastObject];

          tokenName = [lastObject tokenName];
          v15 = [tokenName isEqualToString:v7];

          if (v15)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v10)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }

        if (lastObject)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_18:
      }

      v16 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v26 = "[SLProgressiveCheckerAnalyzer _getTokenByInvocationType:]";
        _os_log_debug_impl(&dword_26754E000, v16, OS_LOG_TYPE_DEBUG, "%s No token found in multiPhrases checker output, Check if phrases are correctly defined in asset decoder config", buf, 0xCu);
      }
    }

    goto LABEL_25;
  }

  v17 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v26 = "[SLProgressiveCheckerAnalyzer _getTokenByInvocationType:]";
    _os_log_debug_impl(&dword_26754E000, v17, OS_LOG_TYPE_DEBUG, "%s context invocation type does not map to either of HS/JS/MAGUS", buf, 0xCu);
  }

  v7 = 0;
LABEL_25:
  lastObject = 0;
LABEL_26:

LABEL_27:
  v18 = *MEMORY[0x277D85DE8];

  return lastObject;
}

- (void)_endAudio
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_checkerType == 2)
  {
    v3 = [(CSAudioCircularBuffer *)self->_circBuffer copybufferFrom:[(CSAudioCircularBuffer *)self->_circBuffer sampleCount]- self->_numSamplesAddedToBufferSinceLastFlush to:?];
    if (v3)
    {
      v4 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        numSamplesAddedToBufferSinceLastFlush = self->_numSamplesAddedToBufferSinceLastFlush;
        *buf = 136315394;
        *&buf[4] = "[SLProgressiveCheckerAnalyzer _endAudio]";
        *&buf[12] = 2048;
        *&buf[14] = numSamplesAddedToBufferSinceLastFlush;
        _os_log_impl(&dword_26754E000, v4, OS_LOG_TYPE_DEFAULT, "%s Flushed %lu samples to checker", buf, 0x16u);
      }

      audioOption = [(SLProgressiveCheckerContext *)self->_context audioOption];
      activeRecognizers = self->_activeRecognizers;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __41__SLProgressiveCheckerAnalyzer__endAudio__block_invoke;
      v14[3] = &unk_279C0EB10;
      v14[4] = self;
      v16 = (audioOption & 2) != 0;
      v15 = v3;
      [(NSMutableArray *)activeRecognizers enumerateObjectsUsingBlock:v14];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v18 = 0;
  v8 = self->_activeRecognizers;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__SLProgressiveCheckerAnalyzer__endAudio__block_invoke_2;
  v13[3] = &unk_279C0EB38;
  v13[4] = self;
  v13[5] = buf;
  [(NSMutableArray *)v8 enumerateObjectsUsingBlock:v13];
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = [SLProgressiveCheckerResult alloc];
    latestScore = self->_latestScore;
    *&latestScore = latestScore;
    v11 = [(SLProgressiveCheckerResult *)v9 initWithScore:self->_checkerType ofType:self->_analyzedSamplesSoFar analyzedSamples:0 detailedResults:latestScore];
    [(SLProgressiveCheckerAnalyzerDelegate *)self->_delegate analyzer:self hasFinalResult:v11];
  }

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];
}

id __41__SLProgressiveCheckerAnalyzer__endAudio__block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 32) += *(*(a1 + 32) + 72);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 72);
  if (*(a1 + 48) == 1)
  {
    return [a2 resultsWithAddedFloatAudio:v2 numberOfSamples:v3 taskName:&stru_2878A3BF0];
  }

  else
  {
    return [a2 resultsWithAddedAudio:v2 numberOfSamples:v3 taskName:&stru_2878A3BF0];
  }
}

void __41__SLProgressiveCheckerAnalyzer__endAudio__block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 resultsWithEndedAudio];
  v5 = [*(a1 + 32) _getTokenByInvocationType:v4];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = [v4 firstObject];
    v8 = [v7 tokens];
    v6 = [v8 lastObject];

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  [v6 end];
  if (v9 > *(*(*(a1 + 40) + 8) + 24))
  {
    [v6 confidence];
    *(*(a1 + 32) + 40) = v10;
    [v6 end];
    *(*(*(a1 + 40) + 8) + 24) = v11;
    goto LABEL_8;
  }

LABEL_6:
  v12 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SLProgressiveCheckerAnalyzer _endAudio]_block_invoke_2";
    _os_log_impl(&dword_26754E000, v12, OS_LOG_TYPE_DEFAULT, "%s All Checkers Finished, but with confidence of last audio chunk not updated", &v19, 0xCu);
  }

LABEL_8:
  v13 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 32) + 32);
    v15 = v13;
    v16 = [v6 tokenName];
    v17 = *(*(a1 + 32) + 40);
    v19 = 136315906;
    v20 = "[SLProgressiveCheckerAnalyzer _endAudio]_block_invoke";
    v21 = 2050;
    v22 = v14;
    v23 = 2114;
    v24 = v16;
    v25 = 2050;
    v26 = v17;
    _os_log_impl(&dword_26754E000, v15, OS_LOG_TYPE_DEFAULT, "%s All Checkers Finished, analyzed %{public}lu samples, token %{public}@, confidence %{public}f", &v19, 0x2Au);
  }

  [*(*(a1 + 32) + 8) removeObject:v3];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_addAudio:(id)audio
{
  v31 = *MEMORY[0x277D85DE8];
  audioCopy = audio;
  audioOption = [(SLProgressiveCheckerContext *)self->_context audioOption];
  v6 = [audioCopy length];
  v7 = audioOption & 2;
  v8 = 1;
  if ((audioOption & 2) != 0)
  {
    v8 = 2;
  }

  v9 = v6 >> v8;
  if (self->_checkerType != 2)
  {
    v13 = audioCopy;
LABEL_8:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v29 = __Block_byref_object_copy__772;
    *&v30 = __Block_byref_object_dispose__773;
    *(&v30 + 1) = 0;
    activeRecognizers = self->_activeRecognizers;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __42__SLProgressiveCheckerAnalyzer__addAudio___block_invoke;
    v21 = &unk_279C0EAE8;
    selfCopy = self;
    v25 = v9;
    v26 = v7 >> 1;
    v13 = v13;
    v23 = v13;
    v24 = buf;
    [(NSMutableArray *)activeRecognizers enumerateObjectsUsingBlock:&v18];
    if (*(*&buf[8] + 40))
    {
      [(NSMutableArray *)self->_activeRecognizers removeObjectsAtIndexes:v18, v19, v20, v21, selfCopy];
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_11;
  }

  -[CSAudioCircularBuffer addSamples:numSamples:](self->_circBuffer, "addSamples:numSamples:", [audioCopy bytes], v9);
  circBuffer = self->_circBuffer;
  self->_numSamplesAddedToBufferSinceLastFlush += v9;
  sampleCount = [(CSAudioCircularBuffer *)circBuffer sampleCount];
  if (self->_numSamplesAddedToBufferSinceLastFlush < self->_numSamplesInStride || (v12 = sampleCount, sampleCount < [(CSAudioCircularBuffer *)self->_circBuffer bufferLength]))
  {
    v13 = audioCopy;
    goto LABEL_11;
  }

  v27 = 0;
  v13 = [(CSAudioCircularBuffer *)self->_circBuffer copyBufferWithNumSamplesCopiedIn:&v27];

  v9 = v27;
  v16 = SLLogContextFacilityCoreSpeech;
  if (v27)
  {
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      numSamplesAddedToBufferSinceLastFlush = self->_numSamplesAddedToBufferSinceLastFlush;
      *buf = 136315906;
      *&buf[4] = "[SLProgressiveCheckerAnalyzer _addAudio:]";
      *&buf[12] = 2048;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      v29 = numSamplesAddedToBufferSinceLastFlush;
      LOWORD(v30) = 2048;
      *(&v30 + 2) = v12;
      _os_log_impl(&dword_26754E000, v16, OS_LOG_TYPE_DEFAULT, "%s Flushed %lu samples to checker, samples since last flush %lu, total samples in buffer %lu", buf, 0x2Au);
      v9 = v27;
    }

    self->_numSamplesAddedToBufferSinceLastFlush = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "[SLProgressiveCheckerAnalyzer _addAudio:]";
    _os_log_error_impl(&dword_26754E000, v16, OS_LOG_TYPE_ERROR, "%s Unable to copy from circular buffer !", buf, 0xCu);
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

void __42__SLProgressiveCheckerAnalyzer__addAudio___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  *(*(a1 + 32) + 32) += *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  if (*(a1 + 64) == 1)
  {
    [v5 resultsWithAddedFloatAudio:v7 numberOfSamples:v8 taskName:&stru_2878A3BF0];
  }

  else
  {
    [v5 resultsWithAddedAudio:v7 numberOfSamples:v8 taskName:&stru_2878A3BF0];
  }
  v9 = ;
  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  v12 = [*(v10 + 24) objectAtIndexedSubscript:a3];
  v13 = [v12 unsignedIntegerValue];

  if (v11 >= v13)
  {
    v14 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(a1 + 32) + 32);
      v36 = 136315394;
      v37 = "[SLProgressiveCheckerAnalyzer _addAudio:]_block_invoke";
      v38 = 2050;
      v39 = v15;
      _os_log_impl(&dword_26754E000, v14, OS_LOG_TYPE_DEFAULT, "%s Calling endAudio after feeding %{public}lu samples to recognizer", &v36, 0x16u);
    }

    v16 = [v6 resultsWithEndedAudio];

    [*(*(a1 + 32) + 24) removeObjectAtIndex:a3];
    v9 = v16;
  }

  if ([v9 count])
  {
    v17 = [*(a1 + 32) _getTokenByInvocationType:v9];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v19 = [v9 firstObject];
      v20 = [v19 tokens];
      v18 = [v20 lastObject];

      if (!v18)
      {
        v21 = 0xC08F400000000000;
        goto LABEL_13;
      }
    }

    [v18 confidence];
LABEL_13:
    *(*(a1 + 32) + 40) = v21;
    v22 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(a1 + 32) + 32);
      v24 = v22;
      v25 = [v18 tokenName];
      v26 = *(*(a1 + 32) + 40);
      v36 = 136316162;
      v37 = "[SLProgressiveCheckerAnalyzer _addAudio:]_block_invoke";
      v38 = 2048;
      v39 = a3;
      v40 = 2050;
      v41 = v23;
      v42 = 2114;
      v43 = v25;
      v44 = 2050;
      v45 = v26;
      _os_log_impl(&dword_26754E000, v24, OS_LOG_TYPE_DEFAULT, "%s Checker %lu fired, analyzed %{public}lu samples, token %{public}@,  confidence %{public}f", &v36, 0x34u);
    }

    if (*(*(a1 + 32) + 48) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v27 = [SLProgressiveCheckerResult alloc];
      v28 = *(a1 + 32);
      v29 = *(v28 + 40);
      *&v29 = v29;
      v30 = [(SLProgressiveCheckerResult *)v27 initWithScore:*(v28 + 56) ofType:*(v28 + 32) analyzedSamples:0 detailedResults:v29];
      [*(*(a1 + 32) + 48) analyzer:*(a1 + 32) hasPartialResult:v30];
    }

    if (!*(*(a1 + 32) + 56))
    {
      v31 = [v6 resultsWithEndedAudio];
      v32 = [MEMORY[0x277CCAB58] indexSetWithIndex:a3];
      v33 = *(*(a1 + 48) + 8);
      v34 = *(v33 + 40);
      *(v33 + 40) = v32;
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_startNewRequestWithContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_context, context);
  vtei = [(SLProgressiveCheckerContext *)self->_context vtei];
  if (vtei)
  {
    vtei4 = vtei;
    vtei2 = [(SLProgressiveCheckerContext *)self->_context vtei];
    v9 = [vtei2 objectForKeyedSubscript:@"triggerEndSampleCount"];
    if (!v9)
    {
LABEL_5:

      goto LABEL_6;
    }

    v10 = v9;
    vtei3 = [(SLProgressiveCheckerContext *)self->_context vtei];
    v12 = [vtei3 objectForKeyedSubscript:@"triggerStartSampleCount"];

    if (v12)
    {
      vtei4 = [(SLProgressiveCheckerContext *)self->_context vtei];
      vtei2 = [vtei4 objectForKeyedSubscript:@"triggerEndSampleCount"];
      [vtei2 unsignedIntegerValue];
      vtei5 = [(SLProgressiveCheckerContext *)self->_context vtei];
      v14 = [vtei5 objectForKeyedSubscript:@"triggerStartSampleCount"];
      [v14 unsignedIntegerValue];

      goto LABEL_5;
    }
  }

LABEL_6:
  activeRecognizers = self->_activeRecognizers;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__SLProgressiveCheckerAnalyzer__startNewRequestWithContext___block_invoke;
  v17[3] = &unk_279C0EAC0;
  v18 = contextCopy;
  v16 = contextCopy;
  [(NSMutableArray *)activeRecognizers enumerateObjectsUsingBlock:v17];
  [(CSAudioCircularBuffer *)self->_circBuffer reset];
}

void __60__SLProgressiveCheckerAnalyzer__startNewRequestWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v2 locale];
  LODWORD(v5) = 120;
  LOBYTE(v4) = 0;
  [v3 resetWithSamplingRate:16000 language:v6 taskType:@"Dictation" userId:&stru_2878A3BF0 sessionId:&stru_2878A3BF0 deviceId:&stru_2878A3BF0 farField:v4 audioSource:@"ftm" maxAudioBufferSizeSeconds:v5];
}

- (BOOL)_setUpAnalyzerWithConfig:(id)config error:(id *)error
{
  v78[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  stringByDeletingLastPathComponent = [configCopy stringByDeletingLastPathComponent];
  v8 = [MEMORY[0x277D01778] decodeJsonFromFile:configCopy];
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__772;
  v67 = __Block_byref_object_dispose__773;
  v68 = 0;
  if (!v8 || ([MEMORY[0x277D01778] getAftmCheckerConfigFromConfigDict:v8], v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 == 0, v9, v10))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for Progressive checker %@", v8];
    v12 = MEMORY[0x277CCA9B8];
    v77 = @"reason";
    v78[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.sl" code:103 userInfo:v13];
    v15 = v64[5];
    v64[5] = v14;

    if (error)
    {
LABEL_14:
      v28 = 0;
      *error = v64[5];
      goto LABEL_32;
    }
  }

  self->_shouldUseMultiPhrasesCheckerOutput = 0;
  v16 = [v8 objectForKeyedSubscript:@"tokenToInvocationMap"];

  if (v16)
  {
    self->_shouldUseMultiPhrasesCheckerOutput = 1;
    v17 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v70 = "[SLProgressiveCheckerAnalyzer _setUpAnalyzerWithConfig:error:]";
      _os_log_impl(&dword_26754E000, v17, OS_LOG_TYPE_INFO, "%s multi phreases output checker model is used", buf, 0xCu);
    }

    v18 = [v8 objectForKeyedSubscript:@"tokenToInvocationMap"];
    invocationToPhraseMap = self->_invocationToPhraseMap;
    self->_invocationToPhraseMap = v18;

    v20 = [(NSDictionary *)self->_invocationToPhraseMap objectForKeyedSubscript:@"hsInvocationToken"];
    if (v20)
    {
      v21 = [(NSDictionary *)self->_invocationToPhraseMap objectForKeyedSubscript:@"jsInvocationToken"];
      if (v21)
      {
        v22 = [(NSDictionary *)self->_invocationToPhraseMap objectForKeyedSubscript:@"magusInvocationToken"];
        v23 = v22 == 0;

        if (!v23)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing keys hsInvocationToken/jsInvocationToken/magusInvocationToken in 'tokenToInvocationMap'  %@", self->_invocationToPhraseMap];
    self->_shouldUseMultiPhrasesCheckerOutput = 0;
    v24 = MEMORY[0x277CCA9B8];
    v75 = @"reason";
    v76 = v11;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v26 = [v24 errorWithDomain:@"com.apple.sl" code:103 userInfo:v25];
    v27 = v64[5];
    v64[5] = v26;

    if (error)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  v11 = [MEMORY[0x277D01778] getAftmCheckerConfigFromConfigDict:v8];
  array = [MEMORY[0x277CBEB18] array];
  activeRecognizers = self->_activeRecognizers;
  self->_activeRecognizers = array;

  v31 = [v11 objectForKey:@"checkerType"];
  self->_checkerType = [v31 unsignedIntValue];

  v32 = [v11 objectForKey:@"checkerTimes"];
  array2 = [MEMORY[0x277CBEB18] array];
  checkerEndSamples = self->_checkerEndSamples;
  self->_checkerEndSamples = array2;

  checkerType = self->_checkerType;
  if (checkerType == 2)
  {
    firstObject = [v32 firstObject];
    [firstObject floatValue];
    v38 = v37;

    lastObject = [v32 lastObject];
    [lastObject floatValue];
    self->_numSamplesInStride = (v40 * 16000.0);

    v41 = objc_alloc(MEMORY[0x277D01610]);
    LODWORD(v42) = 1182400512;
    *&v43 = v38;
    v44 = [v41 initWithNumChannels:1 recordingDuration:v43 samplingRate:v42];
    circBuffer = self->_circBuffer;
    self->_circBuffer = v44;

    v46 = self->_checkerEndSamples;
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0xFFFFFFFFLL];
    [(NSMutableArray *)v46 addObject:v47];

    self->_numSamplesAddedToBufferSinceLastFlush = 0;
    v48 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      numSamplesInStride = self->_numSamplesInStride;
      *buf = 136315650;
      v70 = "[SLProgressiveCheckerAnalyzer _setUpAnalyzerWithConfig:error:]";
      v71 = 2048;
      v72 = (v38 * 16000.0);
      v73 = 2048;
      v74 = numSamplesInStride;
      _os_log_impl(&dword_26754E000, v48, OS_LOG_TYPE_DEFAULT, "%s Configured buffer size: %f samples, to be flushed after every %lu samples", buf, 0x20u);
    }
  }

  else if (checkerType)
  {
    v50 = self->_checkerEndSamples;
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0xFFFFFFFFLL];
    [(NSMutableArray *)v50 addObject:v51];
  }

  else
  {
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __63__SLProgressiveCheckerAnalyzer__setUpAnalyzerWithConfig_error___block_invoke;
    v62[3] = &unk_279C0EA70;
    v62[4] = self;
    [v32 enumerateObjectsUsingBlock:v62];
  }

  if (v8)
  {
    v52 = [MEMORY[0x277D01778] getAftmRecognizerRelativeConfigFromConfigDict:v8];
  }

  else
  {
    v52 = 0;
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __63__SLProgressiveCheckerAnalyzer__setUpAnalyzerWithConfig_error___block_invoke_109;
  v58[3] = &unk_279C0EA98;
  selfCopy = self;
  v61 = &v63;
  v59 = stringByDeletingLastPathComponent;
  [v52 enumerateObjectsUsingBlock:v58];
  v53 = v64[5];
  v28 = v53 == 0;
  if (v53)
  {
    if (error)
    {
      *error = v53;
    }

    v54 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      [v64[5] localizedDescription];
      v55 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315394;
      v70 = "[SLProgressiveCheckerAnalyzer _setUpAnalyzerWithConfig:error:]";
      v71 = 2114;
      v72 = v55;
      _os_log_impl(&dword_26754E000, v54, OS_LOG_TYPE_DEFAULT, "%s Failed to initialize SLProgressiveCheckerAnalyzer with error %{public}@", buf, 0x16u);
    }
  }

LABEL_32:
  _Block_object_dispose(&v63, 8);

  v56 = *MEMORY[0x277D85DE8];
  return v28;
}

void __63__SLProgressiveCheckerAnalyzer__setUpAnalyzerWithConfig_error___block_invoke(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = *(*(a1 + 32) + 24);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v3 * 16000.0)];
  [v4 addObject:v5];
}

void __63__SLProgressiveCheckerAnalyzer__setUpAnalyzerWithConfig_error___block_invoke_109(uint64_t a1, void *a2, uint64_t a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) stringByAppendingPathComponent:v5];
  v7 = [objc_alloc(MEMORY[0x277D07280]) initWithConfiguration:v6];
  if (v7)
  {
    [*(*(a1 + 40) + 8) addObject:v7];
    v8 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      v9 = *(*(a1 + 40) + 24);
      v10 = v8;
      v11 = [v9 objectAtIndexedSubscript:a3];
      *buf = 136315650;
      v20 = "[SLProgressiveCheckerAnalyzer _setUpAnalyzerWithConfig:error:]_block_invoke";
      v21 = 2050;
      v22 = [v11 unsignedIntegerValue];
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_26754E000, v10, OS_LOG_TYPE_INFO, "%s Added checker to analyze %{public}lu samples with config file %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"EAR recognizer init failed for config: %@", v6];
    v13 = MEMORY[0x277CCA9B8];
    v25 = @"reason";
    v26[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.sl" code:104 userInfo:v14];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (SLProgressiveCheckerAnalyzer)initWithConfig:(id)config withDelegate:(id)delegate error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  configCopy = config;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SLProgressiveCheckerAnalyzer;
  v10 = [(SLProgressiveCheckerAnalyzer *)&v15 init];
  if (v10)
  {
    if (SLLogInitIfNeeded_once != -1)
    {
      dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
    }

    if (![(SLProgressiveCheckerAnalyzer *)v10 _setUpAnalyzerWithConfig:configCopy error:error])
    {
      v12 = 0;
      goto LABEL_9;
    }

    objc_storeStrong(&v10->_delegate, delegate);
    v11 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[SLProgressiveCheckerAnalyzer initWithConfig:withDelegate:error:]";
      _os_log_impl(&dword_26754E000, v11, OS_LOG_TYPE_INFO, "%s Initialized Progressive Checkers !", buf, 0xCu);
    }
  }

  v12 = v10;
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

@end