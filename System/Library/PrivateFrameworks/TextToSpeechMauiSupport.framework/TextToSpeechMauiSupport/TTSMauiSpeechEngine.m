@interface TTSMauiSpeechEngine
- (BOOL)_addPathDictionaryEntriesForDirectory:(id)a3;
- (BOOL)_initializeEngine;
- (BOOL)_initializeVoiceDataFiles;
- (BOOL)_loadVoiceResource:(id)a3;
- (BOOL)loadVoiceResource:(id)a3;
- (BOOL)queue_unloadVoiceResource:(id)a3;
- (BOOL)setVoice:(id)a3;
- (BOOL)unloadVoiceResource:(id)a3;
- (TTSMauiSpeechEngine)initWithVoice:(id)a3;
- (VE_DATA_MAPPING_INTERFACE_S)dataMapImpl;
- (VE_DATA_STREAM_INTERFACE_S)dataStreamImpl;
- (_VE_HSAFE)vocalizerClassHandle;
- (_VE_HSAFE)vocalizerInstanceHandle;
- (id)_applyPostRuleRewrites:(id)a3;
- (id)_nextBuffer;
- (id)_parseBrokerString:(id)a3;
- (id)_preprocessText:(id)a3;
- (id)_rawLiteralCharacterRegexForCurrentLanguage;
- (id)_vocalizerClampNumber:(id)a3 between:(unsigned __int16)a4 and:(unsigned __int16)a5;
- (id)emptyBufferForVocalizer;
- (id)nextBuffer;
- (unsigned)open:(id)a3 mode:(id)a4 outPointer:(__sFILE *)a5;
- (unsigned)processingCallback:(id *)a3;
- (void)_deinitializeEngine;
- (void)_speakString:(id)a3 withFormat:(int)a4;
- (void)_syncParametersWithEngine;
- (void)cancelSpeaking;
- (void)dealloc;
- (void)loadRuleset:(id)a3;
- (void)queue_unloadAllVoiceResources;
- (void)setPitch:(id)a3;
- (void)setPostSentencePauseDuration:(id)a3;
- (void)setRate:(id)a3;
- (void)setTimbre:(id)a3;
- (void)setTrimEndingSilences:(BOOL)a3;
- (void)setVolume:(id)a3;
- (void)unloadAllVoiceResources;
@end

@implementation TTSMauiSpeechEngine

- (TTSMauiSpeechEngine)initWithVoice:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = TTSMauiSpeechEngine;
  v6 = [(TTSMauiSpeechEngine *)&v35 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_currentVoice, a3), [MEMORY[0x277CBEB38] dictionary], v8 = objc_claimAutoreleasedReturnValue(), pathDictionary = v7->_pathDictionary, v7->_pathDictionary = v8, pathDictionary, v10 = objc_alloc_init(MEMORY[0x277CCA928]), producedBuffers = v7->_producedBuffers, v7->_producedBuffers = v10, producedBuffers, v12 = objc_alloc_init(MEMORY[0x277D70410]), ruleSetRunner = v7->_ruleSetRunner, v7->_ruleSetRunner = v12, ruleSetRunner, objc_initWeak(&location, v7), v29 = MEMORY[0x277D85DD0], v30 = 3221225472, v31 = __37__TTSMauiSpeechEngine_initWithVoice___block_invoke, v32 = &unk_279DA8E70, objc_copyWeak(&v33, &location), -[TTSRulesetRunner setPostRuleWriter:](v7->_ruleSetRunner, "setPostRuleWriter:", &v29), v7->_bufferLock._os_unfair_lock_opaque = 0, v7->_state = 0, dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1), v14 = objc_claimAutoreleasedReturnValue(), dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v15 = objc_claimAutoreleasedReturnValue(), v14, v16 = dispatch_queue_create("com.maui.synthesis", v15), synthesisQueue = v7->_synthesisQueue, v7->_synthesisQueue = v16, synthesisQueue, objc_msgSend(MEMORY[0x277CBEB40], "orderedSet", v29, v30, v31, v32), v18 = objc_claimAutoreleasedReturnValue(), voiceResources = v7->_voiceResources, v7->_voiceResources = v18, voiceResources, pitch = v7->_pitch, v7->_pitch = &unk_287EF90F0, pitch, volume = v7->_volume, v7->_volume = &unk_287EF9108, volume, rate = v7->_rate, v7->_rate = &unk_287EF90F0, rate, timbre = v7->_timbre, v7->_timbre = &unk_287EF90F0, timbre, postSentencePauseDuration = v7->_postSentencePauseDuration, v7->_postSentencePauseDuration = &unk_287EF9120, postSentencePauseDuration, objc_msgSend(MEMORY[0x277CBEB40], "orderedSet"), v25 = objc_claimAutoreleasedReturnValue(), finishedBuffers = v7->_finishedBuffers, v7->_finishedBuffers = v25, finishedBuffers, LOBYTE(v14) = -[TTSMauiSpeechEngine _initializeEngine](v7, "_initializeEngine"), v15, objc_destroyWeak(&v33), objc_destroyWeak(&location), (v14 & 1) == 0))
  {
    v27 = 0;
  }

  else
  {
    v27 = v7;
  }

  return v27;
}

id __37__TTSMauiSpeechEngine_initWithVoice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _applyPostRuleRewrites:v3];

  return v5;
}

- (void)dealloc
{
  [(TTSMauiSpeechEngine *)self _deinitializeEngine];
  v3.receiver = self;
  v3.super_class = TTSMauiSpeechEngine;
  [(TTSMauiSpeechEngine *)&v3 dealloc];
}

- (BOOL)setVoice:(id)a3
{
  v4 = a3;
  [(TTSMauiSpeechEngine *)self cancelSpeaking];
  [(TTSMauiSpeechEngine *)self unloadAllVoiceResources];
  [(TTSMauiSpeechEngine *)self _deinitializeEngine];
  v5 = [MEMORY[0x277CBEB40] orderedSet];
  [(TTSMauiSpeechEngine *)self setVoiceResources:v5];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  [(TTSMauiSpeechEngine *)self setPathDictionary:v6];

  [(TTSMauiSpeechEngine *)self setBrokerString:0];
  [(TTSMauiSpeechEngine *)self setCurrentVoice:v4];

  return [(TTSMauiSpeechEngine *)self _initializeEngine];
}

- (VE_DATA_STREAM_INTERFACE_S)dataStreamImpl
{
  if (dataStreamImpl_onceToken != -1)
  {
    [TTSMauiSpeechEngine dataStreamImpl];
  }

  return &dataStreamImpl_interface;
}

__n128 __37__TTSMauiSpeechEngine_dataStreamImpl__block_invoke()
{
  DataStreamImpl = TTSMauiVocalizerGetDataStreamImpl();
  v2 = DataStreamImpl[1];
  result = DataStreamImpl[2];
  v3 = *DataStreamImpl;
  qword_2806C62C0 = DataStreamImpl[3].n128_i64[0];
  xmmword_2806C62A0 = v2;
  unk_2806C62B0 = result;
  dataStreamImpl_interface = v3;
  *&dataStreamImpl_interface = MauiStreamOpen;
  return result;
}

- (VE_DATA_MAPPING_INTERFACE_S)dataMapImpl
{
  if (dataMapImpl_onceToken != -1)
  {
    [TTSMauiSpeechEngine dataMapImpl];
  }

  return &dataMapImpl_interface;
}

__n128 __34__TTSMauiSpeechEngine_dataMapImpl__block_invoke()
{
  DataMappingImpl = TTSMauiVocalizerGetDataMappingImpl();
  v1 = DataMappingImpl[2].n128_i64[0];
  result = DataMappingImpl[1];
  dataMapImpl_interface = *DataMappingImpl;
  unk_2806C62E0 = result;
  qword_2806C62F0 = v1;
  *&dataMapImpl_interface = MauiMappingOpen;
  return result;
}

- (unsigned)open:(id)a3 mode:(id)a4 outPointer:(__sFILE *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TTSMauiSpeechEngine *)self pathDictionary];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (v11)
  {
    v12 = [v11 fileSystemRepresentation];
    v13 = v8;
    v14 = fopen(v12, [v8 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}]);
    if (v14)
    {
      v15 = 0;
      *a5 = v14;
    }

    else
    {
      v15 = -2147483645;
    }
  }

  else
  {
    v15 = -2147483628;
  }

  return v15;
}

- (id)emptyBufferForVocalizer
{
  if ([(TTSMauiSpeechEngine *)self state]== 3)
  {
    v3 = 0;
  }

  else
  {
    AX_PERFORM_WITH_LOCK();
    v3 = [(TTSMauiSpeechEngine *)self inProgressBuffer];
  }

  return v3;
}

void __46__TTSMauiSpeechEngine_emptyBufferForVocalizer__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(TTSMauiVocalizerBuffer);
  [*(a1 + 32) setInProgressBuffer:v2];
}

void __34__TTSMauiSpeechEngine_bufferDone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) inProgressBuffer];

  if (v2)
  {
    v3 = *(*(a1 + 40) + 8);
    v4 = [*(a1 + 32) inProgressBuffer];
    v5 = [v4 audioBuffer];
    v6 = [v5 format];
    v7 = v6;
    if (v6)
    {
      [v6 streamDescription];
      v8 = v19;
    }

    else
    {
      v8 = 0;
    }

    v9 = v3 / v8;

    v10 = [*(a1 + 32) inProgressBuffer];
    v11 = [v10 audioBuffer];
    [v11 setFrameLength:v9];

    v12 = *(*(a1 + 40) + 24);
    v13 = [*(a1 + 32) inProgressBuffer];
    v13[225] = v12;

    v14 = [*(a1 + 32) inProgressBuffer];
    v15 = [*(a1 + 32) proccessedSpeechString];
    [v14 computeMarkers:v15];

    v16 = [*(a1 + 32) finishedBuffers];
    v17 = [*(a1 + 32) inProgressBuffer];
    [v16 addObject:v17];

    [*(a1 + 32) setInProgressBuffer:0];
    v18 = [*(a1 + 32) producedBuffers];
    [v18 broadcast];
  }
}

- (id)nextBuffer
{
  while (1)
  {
    v3 = [(TTSMauiSpeechEngine *)self state];
    v4 = v3;
    if (v3 != 4 && v3 != 2)
    {
      break;
    }

    v5 = [(TTSMauiSpeechEngine *)self _nextBuffer];
    if (v5)
    {
      goto LABEL_7;
    }

    if (v4 != 2)
    {
      break;
    }

    producedBuffers = self->_producedBuffers;
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [v7 dateByAddingTimeInterval:0.5];
    [(NSCondition *)producedBuffers waitUntilDate:v8];
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_nextBuffer
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __34__TTSMauiSpeechEngine__nextBuffer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) finishedBuffers];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) finishedBuffers];
    v5 = [v4 firstObject];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) finishedBuffers];
    [v8 removeObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (unsigned)processingCallback:(id *)a3
{
  if (a3->var0 == 16)
  {
    [(TTSMauiSpeechEngine *)self bufferDone:a3->var2];
    return 0;
  }

  if (a3->var0 != 8)
  {
    return 0;
  }

  v4 = [(TTSMauiSpeechEngine *)self emptyBufferForVocalizer];
  if (v4)
  {
    v5 = v4;
    [v4 fillInOutDataForBuffer:a3->var2];

    return 0;
  }

  return -2147481593;
}

- (id)_preprocessText:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 precomposedStringWithCanonicalMapping];
  v6 = [(TTSMauiSpeechEngine *)self currentVoice];
  v7 = [v6 language];
  v8 = [v7 hasPrefix:@"ko"];

  if (v8)
  {
    v9 = [MEMORY[0x277D70400] sharedInstance];
    v10 = [v9 regexForString:@"[\\u1100-\\u1112\\u1161-\\u1175\\u11A8-\\u11AF\\u11B7-\\u11C2\\uD558]" atStart:0];

    v26 = v10;
    v11 = [v10 matchesInString:v5 options:2 range:{0, objc_msgSend(v5, "length")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          if (v16)
          {
            v17 = [*(*(&v27 + 1) + 8 * i) range];
            v19 = [v5 substringWithRange:{v17, v18}];
            v20 = [v16 range];
            v22 = v21;
            v23 = TTSChoseong_JongseongToHangul();
            v24 = [v5 stringByReplacingCharactersInRange:v20 withString:{v22, v23}];

            v5 = v24;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }
  }

  return v5;
}

- (void)_speakString:(id)a3 withFormat:(int)a4
{
  v6 = a3;
  [(TTSMauiSpeechEngine *)self cancelSpeaking];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy_;
  v15[4] = __Block_byref_object_dispose_;
  v7 = v6;
  v16 = v7;
  v8 = [(TTSMauiSpeechEngine *)self _preprocessText:v7];

  [(TTSMauiSpeechEngine *)self setState:2];
  v9 = [(TTSMauiSpeechEngine *)self synthesisQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__TTSMauiSpeechEngine__speakString_withFormat___block_invoke;
  v11[3] = &unk_279DA8F30;
  v11[4] = self;
  v12 = v8;
  v13 = v15;
  v14 = a4;
  v10 = v8;
  dispatch_async(v9, v11);

  _Block_object_dispose(v15, 8);
}

void __47__TTSMauiSpeechEngine__speakString_withFormat___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) state] == 2)
  {
    v3 = [*(a1 + 32) ruleSetRunner];
    v4 = [v3 processText:*(a1 + 40)];
    [*(a1 + 32) setProccessedSpeechString:v4];

    v5 = [*(a1 + 32) proccessedSpeechString];
    v6 = [v5 transformedString];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (![*(*(*(a1 + 48) + 8) + 40) length])
    {
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = @" ";
    }

    v11 = [MEMORY[0x277D70400] sharedInstance];
    v12 = [v11 regexForString:@"(  ?(\\\\!|\\x1B)\\\\(rate|pitch|vol|tn)=(\\d|spell|normal)*\\\\ ?)*(?=(((\\\\!|\\x1B)\\\\pause=(\\d)*\\\\ ?)*$))" atStart:0];

    v13 = [v12 firstMatchInString:*(*(*(a1 + 48) + 8) + 40) options:2 range:{0, objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length")}];
    v14 = v13;
    if (v13)
    {
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = [v13 range];
      v18 = [v15 stringByReplacingCharactersInRange:v16 withString:{v17, &stru_287EF7E80}];
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v21 = [MEMORY[0x277D70400] sharedInstance];
    v22 = [v21 regexForString:@"(?:(?:\\\\!|\\x1B)\\\\pause=(?:\\d)*\\\\)+\\s*$"];

    v23 = [v22 firstMatchInString:*(*(*(a1 + 48) + 8) + 40) options:2 range:{0, objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length")}];
    v24 = v23 == 0;

    [*(a1 + 32) setTrimEndingSilences:v24];
    v32[0] = 0;
    LODWORD(v32[0]) = *(a1 + 56);
    v32[1] = [*(*(*(a1 + 48) + 8) + 40) lengthOfBytesUsingEncoding:10];
    v32[2] = [*(*(*(a1 + 48) + 8) + 40) cStringUsingEncoding:10];
    v25 = [*(a1 + 32) vocalizerInstanceHandle];
    v27 = ve_ttsProcessText2Speech(v25, v26, v32);
    if (v27 != -2147481593)
    {
      v28 = v27;
      if (v27)
      {
        v30 = AXTTSLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __47__TTSMauiSpeechEngine__speakString_withFormat___block_invoke_cold_1(v2, v28);
        }

        v29 = 3;
      }

      else
      {
        v29 = 4;
      }

      [*v2 setState:v29];
    }

    v31 = [*v2 producedBuffers];
    [v31 broadcast];
  }
}

- (void)cancelSpeaking
{
  [(TTSMauiSpeechEngine *)self setState:3];
  v3 = [(TTSMauiSpeechEngine *)self ruleSetRunner];
  [v3 cancelProcessing];

  v4 = [(TTSMauiSpeechEngine *)self synthesisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TTSMauiSpeechEngine_cancelSpeaking__block_invoke;
  block[3] = &unk_279DA8EB8;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __37__TTSMauiSpeechEngine_cancelSpeaking__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setInProgressBuffer:0];
  v2 = [*(a1 + 32) finishedBuffers];
  [v2 removeAllObjects];

  [*(a1 + 32) setInProgressBuffer:0];
  v3 = [*(a1 + 32) producedBuffers];
  [v3 broadcast];
}

- (void)setRate:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToNumber:self->_rate] & 1) == 0)
  {
    v4 = [(TTSMauiSpeechEngine *)self _vocalizerClampNumber:v6 between:50 and:400];
    rate = self->_rate;
    self->_rate = v4;

    [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
  }
}

- (void)setPitch:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToNumber:self->_pitch] & 1) == 0)
  {
    v4 = [(TTSMauiSpeechEngine *)self _vocalizerClampNumber:v6 between:50 and:200];
    pitch = self->_pitch;
    self->_pitch = v4;

    [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
  }
}

- (void)setVolume:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToNumber:self->_volume] & 1) == 0)
  {
    v4 = [(TTSMauiSpeechEngine *)self _vocalizerClampNumber:v6 between:0 and:100];
    volume = self->_volume;
    self->_volume = v4;

    [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
  }
}

- (void)setTimbre:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToNumber:self->_timbre] & 1) == 0)
  {
    v4 = [(TTSMauiSpeechEngine *)self _vocalizerClampNumber:v6 between:50 and:200];
    timbre = self->_timbre;
    self->_timbre = v4;

    [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
  }
}

- (void)setPostSentencePauseDuration:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToNumber:self->_postSentencePauseDuration] & 1) == 0)
  {
    v4 = [(TTSMauiSpeechEngine *)self _vocalizerClampNumber:v6 between:0 and:9];
    postSentencePauseDuration = self->_postSentencePauseDuration;
    self->_postSentencePauseDuration = v4;

    [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
  }
}

- (id)_vocalizerClampNumber:(id)a3 between:(unsigned __int16)a4 and:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v7 = [a3 unsignedShortValue];
  if (v7 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v7 >= v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  v10 = MEMORY[0x277CCABB0];

  return [v10 numberWithUnsignedShort:v9];
}

- (BOOL)_initializeVoiceDataFiles
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"common" ofType:0 inDirectory:@"TTSResources"];

  if (![(TTSMauiSpeechEngine *)self _addPathDictionaryEntriesForDirectory:v4])
  {
    v5 = AXTTSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [TTSMauiSpeechEngine _initializeVoiceDataFiles];
    }
  }

  v6 = [(TTSMauiSpeechEngine *)self currentVoice];
  v7 = [v6 path];
  v8 = [(TTSMauiSpeechEngine *)self _addPathDictionaryEntriesForDirectory:v7];

  return v8;
}

- (BOOL)_addPathDictionaryEntriesForDirectory:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v24];
  v7 = v24;

  if (v7)
  {
    obj = AXTTSLogCommon();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [TTSMauiSpeechEngine _addPathDictionaryEntriesForDirectory:];
    }
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v18 = v6;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v4 stringByAppendingPathComponent:v12];
          v14 = [v12 stringByDeletingPathExtension];
          v15 = [v14 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

          if (([v12 hasSuffix:@".hdr"] & 1) != 0 || objc_msgSend(v12, "hasSuffix:", @".hdr.asset"))
          {

            v15 = @"broker";
          }

          v16 = [(TTSMauiSpeechEngine *)self pathDictionary];
          [v16 setObject:v13 forKeyedSubscript:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
      v7 = 0;
      v6 = v18;
    }
  }

  return v7 == 0;
}

- (id)_parseBrokerString:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D70400] sharedInstance];
  v5 = [v4 regexForString:@"([\\s]*<(?<parameter>.*)>(?<value>.*)<\\/.*>\\n)" atStart:0];

  v27 = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v26 = v5;
  v29 = v3;
  obj = [v5 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v9 = @"parameter";
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = [v11 rangeWithName:v9];
        v14 = v13;
        v15 = [v11 rangeWithName:@"value"];
        if (v14)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = v15;
          v19 = v16;
          v20 = v9;
          v21 = [v29 substringWithRange:{v12, v14}];
          v22 = [v21 uppercaseString];
          v23 = [v22 isEqualToString:@"COMPONENT"];

          if ((v23 & 1) == 0)
          {
            v24 = [v29 substringWithRange:{v18, v19}];
            [v27 setObject:v24 forKeyedSubscript:v21];
          }

          v9 = v20;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  return v27;
}

- (void)_deinitializeEngine
{
  v3 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
  ve_ttsClose(v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = [(TTSMauiSpeechEngine *)self vocalizerClassHandle];
  ve_ttsUnInitialize(v11, v12);

  [(TTSMauiSpeechEngine *)self setState:0];
}

- (void)setTrimEndingSilences:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  bzero(v12, 0x83CuLL);
  v11 = 22;
  v12[0] = v3;
  v5 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
  ve_ttsSetParamList(v5, v6, &v11, 1u, v7, v8, v9, v10);
}

- (BOOL)_initializeEngine
{
  v60 = *MEMORY[0x277D85DE8];
  if ([(TTSMauiSpeechEngine *)self _initializeVoiceDataFiles])
  {
    v3 = [(TTSMauiSpeechEngine *)self pathDictionary];
    v4 = [v3 objectForKeyedSubscript:@"broker"];

    if (!v4)
    {
      v7 = AXTTSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _initializeEngine];
      }

      v15 = 0;
      goto LABEL_19;
    }

    v51 = 0;
    v5 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v4 encoding:4 error:&v51];
    v6 = v51;
    v7 = v6;
    if (!v5 || v6)
    {
      v9 = AXTTSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _initializeEngine];
      }

      goto LABEL_17;
    }

    [(TTSMauiSpeechEngine *)self setBrokerString:v5];
    v8 = [(TTSMauiSpeechEngine *)self brokerString];
    v9 = [(TTSMauiSpeechEngine *)self _parseBrokerString:v8];

    v50[0] = 8963;
    v10 = [(TTSMauiSpeechEngine *)self brokerString];
    v11 = v10;
    v50[1] = [v10 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v50[2] = TTSMauiVocalizerGetHeapImpl();
    v50[3] = 0;
    v50[4] = TTSMauiVocalizerGetCriticalSectionImpl();
    v50[5] = 0;
    v50[6] = [(TTSMauiSpeechEngine *)self dataStreamImpl];
    v50[7] = [(TTSMauiSpeechEngine *)self dataMapImpl];
    v50[8] = TTSMauiVocalizerGetDLDImpl();
    v50[9] = self;
    v50[10] = TTSMauiVocalizerGetLogImpl();
    memset(&v50[11], 0, 24);
    v50[14] = TTSMauiVocalizerGetThreadImpl();
    v50[15] = TTSMauiVocalizerGetSemaphoreImpl();
    v50[16] = 0;

    __b = 0;
    v49 = 0;
    v12 = ve_ttsInitialize(v50, &__b);
    if (v12)
    {
      v13 = v12;
      v14 = AXTTSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _initializeEngine];
      }

LABEL_17:
      v15 = 0;
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    [(TTSMauiSpeechEngine *)self setVocalizerClassHandle:__b, v49];
    v46 = 0;
    v47 = 0;
    v17 = [(TTSMauiSpeechEngine *)self vocalizerClassHandle];
    if (ve_ttsOpen(v17, v18, 0, 0, &v46, v19, v20, v21))
    {
      v22 = AXTTSLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _initializeEngine];
      }

      v15 = 0;
      goto LABEL_35;
    }

    [(TTSMauiSpeechEngine *)self setVocalizerInstanceHandle:v46, v47];
    v22 = [v9 objectForKeyedSubscript:@"voice"];
    v23 = [v9 objectForKeyedSubscript:@"langcode"];
    v24 = v23;
    if (v22 && v23)
    {
      v25 = v22;
      v26 = -[NSObject cStringUsingEncoding:](v22, "cStringUsingEncoding:", [MEMORY[0x277CCACA8] defaultCStringEncoding]);
      v27 = v24;
      v28 = [v24 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      bzero(v53, 0x83CuLL);
      v52 = 1;
      strlcpy(v53, v28, 0x80uLL);
      v54 = 2;
      strlcpy(v55, v26, 0x80uLL);
      v56 = 19;
      v57 = 1;
      v58 = 7;
      v59 = 1;
      v29 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
      if (!ve_ttsSetParamList(v29, v30, &v52, 4u, v31, v32, v33, v34))
      {
        v45[0] = self;
        v45[1] = MauiProcCallback;
        v36 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
        v43 = ve_ttsSetOutDevice(v36, v37, v45, v38, v39, v40, v41, v42);
        v15 = v43 == 0;
        if (v43)
        {
          v44 = AXTTSLogCommon();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [(TTSMauiSpeechEngine *)self _initializeEngine];
          }
        }

        else
        {
          [(TTSMauiSpeechEngine *)self setState:1];
          [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
        }

        goto LABEL_34;
      }

      v35 = AXTTSLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _initializeEngine];
      }
    }

    else
    {
      v35 = AXTTSLogCommon();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _initializeEngine];
      }
    }

    v15 = 0;
LABEL_34:

LABEL_35:
    goto LABEL_18;
  }

  v4 = AXTTSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(TTSMauiSpeechEngine *)self _initializeEngine];
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (id)_rawLiteralCharacterRegexForCurrentLanguage
{
  v2 = [(TTSMauiSpeechEngine *)self currentVoice];
  v3 = [v2 language];

  if ([v3 hasPrefix:@"el"])
  {
    v4 = @"[\\u03B1-\\u03C9]";
LABEL_7:
    v5 = [MEMORY[0x277D70400] sharedInstance];
    v6 = [v5 regexForString:v4 atStart:0];

    goto LABEL_8;
  }

  if ([v3 hasPrefix:@"da"])
  {
    v4 = @"[æøå]";
    goto LABEL_7;
  }

  if ([v3 hasPrefix:@"ja"])
  {
    v4 = @"[\\u30a0-\\u30ff]";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)_applyPostRuleRewrites:(id)a3
{
  v4 = a3;
  v5 = [(TTSMauiSpeechEngine *)self _rawLiteralCharacterRegexForCurrentLanguage];
  v6 = [(TTSMauiSpeechEngine *)self currentVoice];
  v7 = [v6 language];
  v8 = [v7 hasPrefix:@"ja"];

  if (v8)
  {
    v9 = [v4 originalString];
    v10 = [MEMORY[0x277D70400] sharedInstance];
    v11 = [v10 regexForString:@"((?<=(\\\\!|\\x1B)\\\\tn=spell\\\\)[\\s\\S]*?(?=((\\\\!|\\x1B)\\\\tn=)|$))" atStart:0];

    v12 = [MEMORY[0x277D70400] sharedInstance];
    v13 = [v12 regexForString:@"[ぁぃぅぇぉっゃゅょァィゥェォッャュョァィゥェォャュョッㇱっ]" atStart:0];

    v14 = [v4 originalString];
    v15 = [v14 length];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke;
    v29[3] = &unk_279DA8F80;
    v30 = v13;
    v31 = v9;
    v32 = v4;
    v16 = v9;
    v17 = v13;
    [v11 enumerateMatchesInString:v16 options:2 range:0 usingBlock:{v15, v29}];
  }

  if (v5)
  {
    v18 = [v4 originalString];
    v19 = [MEMORY[0x277D70400] sharedInstance];
    v20 = [v19 regexForString:@"((?<=(\\\\!|\\x1B)\\\\tn=spell\\\\)[\\s\\S]*?(?=((\\\\!|\\x1B)\\\\tn=)|$))" atStart:0];

    v21 = [v4 originalString];
    v22 = [v21 length];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke_3;
    v25[3] = &unk_279DA8F80;
    v26 = v5;
    v27 = v18;
    v28 = v4;
    v23 = v18;
    [v20 enumerateMatchesInString:v23 options:2 range:0 usingBlock:{v22, v25}];
  }

  return v4;
}

void __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [a2 range];
    v7 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke_2;
    v8[3] = &unk_279DA8F58;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 enumerateMatchesInString:v4 options:2 range:v5 usingBlock:{v7, v8}];
  }
}

void __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v4 range];
    v13 = [v3 substringWithRange:{v5, v6}];
    if (([(__CFString *)v13 isEqualToString:@"っ"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"ッ"]& 1) != 0 || ([(__CFString *)v13 isEqualToString:@"ッ"]& 1) != 0 || [(__CFString *)v13 isEqualToString:@"ㇱ"])
    {

      v7 = @"つ";
    }

    else
    {
      v7 = v13;
    }

    v14 = v7;
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\x1B\\tn=normal\\%@\x1B\\pause=100\\%@\x1B\\pause=100\\\x1B\\tn=spell\\", @"小さい"", v7];
    v9 = *(a1 + 40);
    v10 = [v4 range];
    v12 = v11;

    [v9 transformRange:v10 to:{v12, v8}];
  }
}

void __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke_3(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [a2 range];
    v7 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke_4;
    v8[3] = &unk_279DA8F58;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 enumerateMatchesInString:v4 options:2 range:v5 usingBlock:{v7, v8}];
  }
}

void __46__TTSMauiSpeechEngine__applyPostRuleRewrites___block_invoke_4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v4 range];
    v12 = [v3 substringWithRange:{v5, v6}];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"\x1B\\tn=raw\\%@\x1B\\tn=spell\\"", v12];
    v8 = *(a1 + 40);
    v9 = [v4 range];
    v11 = v10;

    [v8 transformRange:v9 to:{v11, v7}];
  }
}

- (void)_syncParametersWithEngine
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(TTSMauiSpeechEngine *)self state])
  {
    bzero(v18, 0x290uLL);
    v17 = 9;
    v3 = [(TTSMauiSpeechEngine *)self rate];
    v18[0] = [v3 unsignedShortValue];

    v19 = 10;
    v4 = [(TTSMauiSpeechEngine *)self pitch];
    v20 = [v4 unsignedShortValue];

    v21 = 24;
    v5 = [(TTSMauiSpeechEngine *)self timbre];
    v22 = [v5 unsignedShortValue];

    v23 = 8;
    v6 = [(TTSMauiSpeechEngine *)self volume];
    v24 = [v6 unsignedShortValue];

    v25 = 11;
    v7 = [(TTSMauiSpeechEngine *)self postSentencePauseDuration];
    v26 = [v7 unsignedShortValue];

    v8 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
    v14 = ve_ttsSetParamList(v8, v9, &v17, 5u, v10, v11, v12, v13);
    if (v14)
    {
      v15 = v14;
      v16 = AXTTSLogCommon();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(TTSMauiSpeechEngine *)self _syncParametersWithEngine];
      }
    }
  }
}

- (BOOL)loadVoiceResource:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(TTSMauiSpeechEngine *)self synthesisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TTSMauiSpeechEngine_loadVoiceResource___block_invoke;
  block[3] = &unk_279DA8FA8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __41__TTSMauiSpeechEngine_loadVoiceResource___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _loadVoiceResource:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)loadRuleset:(id)a3
{
  v4 = a3;
  v7 = [[TTSMauiVoiceResource alloc] init];
  [(TTSMauiVoiceResource *)v7 setType:0];
  [(TTSMauiVoiceResource *)v7 setRuleSet:v4];
  v5 = [(TTSMauiSpeechEngine *)self ruleSetRunner];
  [v5 loadRuleSet:v4];

  v6 = [(TTSMauiSpeechEngine *)self voiceResources];
  [v6 addObject:v7];
}

- (BOOL)_loadVoiceResource:(id)a3
{
  v4 = a3;
  if ([v4 type])
  {
    v5 = [v4 type];
    if (v5 > 2)
    {
      v6 = "";
    }

    else
    {
      v6 = off_279DA8FC8[v5];
    }

    v9 = [v4 resourceData];

    if (v9)
    {
      v10 = [v4 resourceData];
      v11 = [v10 bytes];

      v12 = [v4 resourceData];
      v13 = [v12 length];
    }

    else
    {
      v14 = [v4 resourceString];
      v11 = [v14 cStringUsingEncoding:4];

      v12 = [v4 resourceString];
      v13 = [v12 lengthOfBytesUsingEncoding:4];
    }

    v15 = v13;

    v31 = 0;
    v32 = 0;
    v16 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
    v20 = ve_ttsResourceLoad(v16, v17, v6, v15, v11, &v31, v18, v19);
    v21 = v20 == 0;
    if (!v20)
    {
      [v4 setVoiceResourceHandle:{v31, v32}];
      v22 = [(TTSMauiSpeechEngine *)self voiceResources];
      [v22 addObject:v4];
    }
  }

  else
  {
    v7 = [v4 resourceData];
    if (v7)
    {
      v8 = [v4 resourceData];
    }

    else
    {
      v23 = [v4 resourceString];
      v8 = [v23 dataUsingEncoding:4];
    }

    v24 = MEMORY[0x277D70408];
    v25 = [v4 resourceName];
    v26 = [(TTSMauiSpeechEngine *)self loadedResources];
    v27 = [v24 rulesetWithData:v8 identifier:v25 priority:{objc_msgSend(v26, "count")}];

    [v4 setRuleSet:v27];
    v28 = [(TTSMauiSpeechEngine *)self ruleSetRunner];
    [v28 loadRuleSet:v27];

    v29 = [(TTSMauiSpeechEngine *)self voiceResources];
    [v29 addObject:v4];

    v21 = 1;
  }

  return v21;
}

- (BOOL)unloadVoiceResource:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(TTSMauiSpeechEngine *)self synthesisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__TTSMauiSpeechEngine_unloadVoiceResource___block_invoke;
  block[3] = &unk_279DA8FA8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

uint64_t __43__TTSMauiSpeechEngine_unloadVoiceResource___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) queue_unloadVoiceResource:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)queue_unloadVoiceResource:(id)a3
{
  v4 = a3;
  v5 = [(TTSMauiSpeechEngine *)self voiceResources];
  [v5 removeObject:v4];

  v6 = [v4 ruleSet];

  if (v6)
  {
    v7 = [(TTSMauiSpeechEngine *)self ruleSetRunner];
    v8 = [v4 ruleSet];
    [v7 unloadRuleset:v8];

    [v4 setRuleSet:0];
    v9 = 0;
  }

  else
  {
    v10 = [(TTSMauiSpeechEngine *)self vocalizerInstanceHandle];
    v12 = v11;
    v13 = [v4 voiceResourceHandle];
    v9 = ve_ttsResourceUnload(v10, v12, v13, v14, v15, v16, v17, v18) == 0;
  }

  return v9;
}

- (void)unloadAllVoiceResources
{
  v3 = [(TTSMauiSpeechEngine *)self synthesisQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TTSMauiSpeechEngine_unloadAllVoiceResources__block_invoke;
  block[3] = &unk_279DA8EB8;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)queue_unloadAllVoiceResources
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(TTSMauiSpeechEngine *)self voiceResources];
  v4 = [v3 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TTSMauiSpeechEngine *)self queue_unloadVoiceResource:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (_VE_HSAFE)vocalizerClassHandle
{
  v2 = *&self->_vocalizerClassHandle.u32Check;
  pHandleData = self->_vocalizerClassHandle.pHandleData;
  result.u32Check = v2;
  result.pHandleData = pHandleData;
  return result;
}

- (_VE_HSAFE)vocalizerInstanceHandle
{
  v2 = *&self->_vocalizerInstanceHandle.u32Check;
  pHandleData = self->_vocalizerInstanceHandle.pHandleData;
  result.u32Check = v2;
  result.pHandleData = pHandleData;
  return result;
}

@end