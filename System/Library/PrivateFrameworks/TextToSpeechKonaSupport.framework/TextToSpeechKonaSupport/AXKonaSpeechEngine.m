@interface AXKonaSpeechEngine
+ (id)allVoices;
- (AXKonaParameters)parameters;
- (AXKonaSpeechEngine)initWithVoice:(id)a3;
- (BOOL)_initializeWrappedEngineForVoice:(id)a3;
- (BOOL)_loadDictionaryAtPath:(id)a3 type:(int64_t)a4 handle:(void *)a5;
- (id)_preprocessTextForIrregularities:(id)a3;
- (id)_segmentsForText:(id)a3;
- (id)nextBuffer;
- (int64_t)eciCallback:(int64_t)a3 iParam:(int64_t)a4 instanceData:(void *)a5;
- (void)_cancelSynthesis;
- (void)_enqueueBuffer:(id)a3;
- (void)_initializeConfigurationMap;
- (void)_loadDictionaryForVoice:(id)a3;
- (void)_resetEnginePreservingParams;
- (void)cancelSynthesis;
- (void)dealloc;
- (void)klattConstantHook:(id *)a3;
- (void)klattDynamicHook:(KlattFrame *)a3;
- (void)setAbbreviationDictionary:(BOOL)a3;
- (void)setHighQualityMode:(BOOL)a3;
- (void)setOverrideAspirationGain:(id)a3;
- (void)setOverrideFricationGain:(id)a3;
- (void)setOverrideOverallGain:(id)a3;
- (void)setOverrideVoicingGain:(id)a3;
- (void)setParameters:(id)a3;
- (void)setPhrasePrediction:(BOOL)a3;
- (void)setPreferCommunityDictionary:(BOOL)a3;
- (void)setVoice:(id)a3;
- (void)synthesizeText:(id)a3;
@end

@implementation AXKonaSpeechEngine

- (AXKonaSpeechEngine)initWithVoice:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = AXKonaSpeechEngine;
  v6 = [(AXKonaSpeechEngine *)&v32 init];
  if (v6)
  {
    v31 = 0;
    v8 = v31;
    commandRegex = v6->_commandRegex;
    v6->_commandRegex = v7;

    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
      v12 = dispatch_queue_create("konaSpeechSyncQueue", v11);
      synthesizerSyncQueue = v6->_synthesizerSyncQueue;
      v6->_synthesizerSyncQueue = v12;

      objc_storeStrong(&v6->_currentVoice, a3);
      *&v6->_highQualityMode = 257;
      v6->_phrasePrediction = 0;
      v14 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
      engineFormat = v6->_engineFormat;
      v6->_engineFormat = v14;

      v16 = [objc_alloc(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:1 channels:0 interleaved:16000.0];
      outputFormat = v6->_outputFormat;
      v6->_outputFormat = v16;

      v18 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:v6->_engineFormat toFormat:v6->_outputFormat];
      bufferConverter = v6->_bufferConverter;
      v6->_bufferConverter = v18;

      [(AVAudioConverter *)v6->_bufferConverter setPrimeMethod:2];
      v6->_synthState = 0;
      v20 = [MEMORY[0x277CBEB18] array];
      queuedBuffers = v6->_queuedBuffers;
      v6->_queuedBuffers = v20;

      v6->_bufferLock._os_unfair_lock_opaque = 0;
      v22 = objc_alloc_init(MEMORY[0x277CCA928]);
      producedBuffers = v6->_producedBuffers;
      v6->_producedBuffers = v22;

      v24 = objc_alloc_init(MEMORY[0x277CCA928]);
      consumedBuffers = v6->_consumedBuffers;
      v6->_consumedBuffers = v24;

      v26 = objc_alloc_init(MEMORY[0x277D70410]);
      ruleSetRunner = v6->_ruleSetRunner;
      v6->_ruleSetRunner = v26;

      v28 = [MEMORY[0x277CBEB18] array];
      currentMarkers = v6->_currentMarkers;
      v6->_currentMarkers = v28;

      [(AXKonaSpeechEngine *)v6 _initializeConfigurationMap];
      if ([(AXKonaSpeechEngine *)v6 _initializeWrappedEngineForVoice:v5])
      {
        v6 = v6;
      }

      else
      {

        v6 = 0;
      }

      v10 = v6;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setPhrasePrediction:(BOOL)a3
{
  if (self->_phrasePrediction != a3)
  {
    self->_phrasePrediction = a3;
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)setPreferCommunityDictionary:(BOOL)a3
{
  if (self->_preferCommunityDictionary != a3)
  {
    self->_preferCommunityDictionary = a3;
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)setAbbreviationDictionary:(BOOL)a3
{
  if (self->_abbreviationDictionary != a3)
  {
    self->_abbreviationDictionary = a3;
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)setHighQualityMode:(BOOL)a3
{
  if (self->_highQualityMode != a3)
  {
    v15 = v4;
    v16 = v3;
    v7 = a3;
    v9 = objc_alloc(MEMORY[0x277CB83A8]);
    v10 = 11025.0;
    if (v7)
    {
      v10 = 16000.0;
    }

    v11 = [v9 initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:v10, v15, v16, v5];
    engineFormat = self->_engineFormat;
    self->_engineFormat = v11;

    self->_highQualityMode = v7;
    v13 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:self->_engineFormat toFormat:self->_outputFormat];
    bufferConverter = self->_bufferConverter;
    self->_bufferConverter = v13;

    [(AVAudioConverter *)self->_bufferConverter setPrimeMethod:2];

    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)_resetEnginePreservingParams
{
  [(AXKonaSpeechEngine *)self cancelSynthesis];
  if ([(AXKonaSpeechEngine *)self currentDictionary])
  {
    [(AXKonaSpeechEngine *)self wrappedInstance];
    [(AXKonaSpeechEngine *)self currentDictionary];
    eciDeleteDict2();
    [(AXKonaSpeechEngine *)self setCurrentDictionary:0];
  }

  [(AXKonaSpeechEngine *)self wrappedInstance];
  eciDelete2();
  v4 = [(AXKonaSpeechEngine *)self currentParameters];
  v3 = [(AXKonaSpeechEngine *)self currentVoice];
  [(AXKonaSpeechEngine *)self _initializeWrappedEngineForVoice:v3];

  [(AXKonaSpeechEngine *)self setParameters:v4];
}

- (void)dealloc
{
  if ([(AXKonaSpeechEngine *)self wrappedInstance])
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = [(AXKonaSpeechEngine *)v3 ruleSetRunner];
    [v4 cancelProcessing];

    [(AXKonaSpeechEngine *)v3 _cancelSynthesis];
    objc_sync_exit(v3);

    if ([(AXKonaSpeechEngine *)v3 currentDictionary])
    {
      [(AXKonaSpeechEngine *)v3 wrappedInstance];
      [(AXKonaSpeechEngine *)v3 currentDictionary];
      eciDeleteDict2();
    }

    [(AXKonaSpeechEngine *)v3 wrappedInstance];
    eciDelete2();
  }

  v5.receiver = self;
  v5.super_class = AXKonaSpeechEngine;
  [(AXKonaSpeechEngine *)&v5 dealloc];
}

- (void)_initializeConfigurationMap
{
  v21[14] = *MEMORY[0x277D85DE8];
  v20[0] = &unk_287EE5808;
  v19 = [[AXKonaConfiguration alloc] initWithDylib:@"enu" dialectCode:@"1.0" dialect:0x10000];
  v21[0] = v19;
  v20[1] = &unk_287EE5820;
  v18 = [[AXKonaConfiguration alloc] initWithDylib:@"eng" dialectCode:@"1.1" dialect:65537];
  v21[1] = v18;
  v20[2] = &unk_287EE5838;
  v17 = [[AXKonaConfiguration alloc] initWithDylib:@"esp" dialectCode:@"2.0" dialect:0x20000];
  v21[2] = v17;
  v20[3] = &unk_287EE5850;
  v16 = [[AXKonaConfiguration alloc] initWithDylib:@"esm" dialectCode:@"2.1" dialect:131073];
  v21[3] = v16;
  v20[4] = &unk_287EE5868;
  v15 = [[AXKonaConfiguration alloc] initWithDylib:@"fra" dialectCode:@"3.0" dialect:196608];
  v21[4] = v15;
  v20[5] = &unk_287EE5880;
  v3 = [[AXKonaConfiguration alloc] initWithDylib:@"frc" dialectCode:@"3.1" dialect:196609];
  v21[5] = v3;
  v20[6] = &unk_287EE5898;
  v4 = [[AXKonaConfiguration alloc] initWithDylib:@"deu" dialectCode:@"4.0" dialect:0x40000];
  v21[6] = v4;
  v20[7] = &unk_287EE58B0;
  v5 = [[AXKonaConfiguration alloc] initWithDylib:@"ita" dialectCode:@"5.0" dialect:327680];
  v21[7] = v5;
  v20[8] = &unk_287EE58C8;
  v6 = [[AXKonaConfiguration alloc] initWithDylib:@"ptb" dialectCode:@"7.0" dialect:458752];
  v21[8] = v6;
  v20[9] = &unk_287EE58E0;
  v7 = [[AXKonaConfiguration alloc] initWithDylib:@"fin" dialectCode:@"9.0" dialect:589824];
  v21[9] = v7;
  v20[10] = &unk_287EE58F8;
  v8 = [[AXKonaConfiguration alloc] initWithDylib:@"jpn" romanizerDylib:@"jpnrom" encoding:8 dialectCode:@"8.0" dialect:0x80000];
  v21[10] = v8;
  v20[11] = &unk_287EE5910;
  v9 = [[AXKonaConfiguration alloc] initWithDylib:@"kor" romanizerDylib:@"korrom" encoding:CFStringConvertEncodingToNSStringEncoding(0x422u) dialectCode:@"10.0" dialect:655360];
  v21[11] = v9;
  v20[12] = &unk_287EE5928;
  v10 = [[AXKonaConfiguration alloc] initWithDylib:@"chs" romanizerDylib:@"chsrom" encoding:CFStringConvertEncodingToNSStringEncoding(0x421u) dialectCode:@"6.0" dialect:393216];
  v21[12] = v10;
  v20[13] = &unk_287EE5940;
  v11 = [[AXKonaConfiguration alloc] initWithDylib:@"cht" romanizerDylib:@"chtrom" encoding:CFStringConvertEncodingToNSStringEncoding(0xA03u) dialectCode:@"6.1" dialect:393217];
  v21[13] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:14];
  configurationMap = self->_configurationMap;
  self->_configurationMap = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_initializeWrappedEngineForVoice:(id)a3
{
  v4 = a3;
  v5 = [(AXKonaSpeechEngine *)self configurationMap];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "konaLanguage")}];
  v7 = [v5 objectForKey:v6];

  v8 = [v7 iniString];
  [v8 cStringUsingEncoding:4];
  [v8 lengthOfBytesUsingEncoding:4];
  eciSetIniContent();
  [v7 eciDialect];
  v9 = eciNew2();
  if (v9)
  {
    goto LABEL_11;
  }

  [(AXKonaSpeechEngine *)self setWrappedInstance:0];
  [(AXKonaSpeechEngine *)self wrappedInstance];
  if (eciRegisterCallback2())
  {
    v19 = "eciRegisterCallback2(self.wrappedInstance, globalEciCallback, (__bridge void *)self, 0, NULL) == ECISUCCESS_SUCCESS";
    v20 = 483;
    goto LABEL_14;
  }

  [(AXKonaSpeechEngine *)self wrappedInstance];
  if (eciRegisterKlattHooks2())
  {
    v19 = "eciRegisterKlattHooks2(self.wrappedInstance, GlobalKlattConstHook, GlobalKlattDynamicHook, (__bridge void *)self) == ECISUCCESS_SUCCESS";
    v20 = 484;
LABEL_14:
    __assert_rtn("[AXKonaSpeechEngine _initializeWrappedEngineForVoice:]", "AXKonaSpeechEngine.mm", v20, v19);
  }

  [(AXKonaSpeechEngine *)self highQualityMode];
  [(AXKonaSpeechEngine *)self wrappedInstance];
  if (eciRegisterSampleBuffer2())
  {
    v21 = "eciRegisterSampleBuffer2(self.wrappedInstance, _pSampleBuffer, KONA_AUDIOBUFFER_SIZE, &eciSampleFmt) == ECISUCCESS_SUCCESS";
    v22 = 490;
    goto LABEL_18;
  }

  [v4 eciVoiceNumber];
  eciSetStandardVoice2();
  [(AXKonaSpeechEngine *)self phrasePrediction];
  if (eciSetParam2())
  {
    v21 = "eciSetParam2(handle, ECIPARAMTYPE_ENVIRONMENT, ECIENVPARAM_PHRASEPREDICTIONMODE, self.phrasePrediction ? ECIENVPARAM_PHRASEPREDICTIONMODE_ENABLED : ECIENVPARAM_PHRASEPREDICTIONMODE_DISABLED) == ECISUCCESS_SUCCESS";
    v22 = 494;
    goto LABEL_18;
  }

  [(AXKonaSpeechEngine *)self abbreviationDictionary];
  if (eciSetParam2())
  {
    v21 = "eciSetParam2(handle, ECIPARAMTYPE_ENVIRONMENT, ECIENVPARAM_ABBRDICTMODE, self.abbreviationDictionary ? ECIENVPARAM_ABBRDICTMODE_ENABLED : ECIENVPARAM_ABBRDICTMODE_DISABLED) == ECISUCCESS_SUCCESS";
    v22 = 496;
LABEL_18:
    __assert_rtn("[AXKonaSpeechEngine _initializeWrappedEngineForVoice:]", "AXKonaSpeechEngine.mm", v22, v21);
  }

  v10 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
  [(AXKonaSpeechEngine *)self setTokenizer:v10];

  v11 = [(AXKonaSpeechEngine *)self tokenizer];
  v12 = kKonaLangToNLLang;
  v13 = [v4 languageCode];
  v14 = [v12 objectForKeyedSubscript:v13];
  v15 = v14;
  v16 = *MEMORY[0x277CD8708];
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = *MEMORY[0x277CD8708];
  }

  [v11 setLanguage:v17];

  [(AXKonaSpeechEngine *)self _loadDictionaryForVoice:v4];
  [(AXKonaSpeechEngine *)self setCurrentConfiguration:v7];
LABEL_11:

  return v9 == 0;
}

- (id)_segmentsForText:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v3 = AXTTSLogKona();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AXKonaSpeechEngine _segmentsForText:];
  }

  v4 = [(AXKonaSpeechEngine *)self commandRegex];
  v33 = [v4 matchesInString:v37 options:2 range:{0, objc_msgSend(v37, "length")}];

  v5 = [(AXKonaSpeechEngine *)self tokenizer];
  [v5 setString:v37];

  v34 = [MEMORY[0x277CBEB18] array];
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy_;
  v62 = __Block_byref_object_dispose_;
  v63 = 0;
  v6 = [MEMORY[0x277D70400] sharedInstance];
  v35 = [v6 regexForString:@"(^|\\s+)[']\\s*$" atStart:0];

  v7 = [(AXKonaSpeechEngine *)self tokenizer];
  v8 = [v37 length];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __39__AXKonaSpeechEngine__segmentsForText___block_invoke;
  v50[3] = &unk_279DA8360;
  v31 = v33;
  v51 = v31;
  v32 = v35;
  v52 = v32;
  v36 = v37;
  v53 = v36;
  v54 = self;
  v56 = &v64;
  v57 = &v58;
  v9 = v34;
  v55 = v9;
  [v7 enumerateTokensInRange:0 usingBlock:{v8, v50}];

  v38 = objc_alloc_init(AXKonaSpeechSegment);
  v10 = v65[3];
  v11 = [v36 length];
  [(AXKonaSpeechSegment *)v38 setRange:v10, v11 - v65[3]];
  v12 = [(AXKonaSpeechSegment *)v38 range];
  v14 = [v36 substringWithRange:{v12, v13}];
  [(AXKonaSpeechSegment *)v38 setText:v14];

  [(AXKonaSpeechSegment *)v38 setMarker:v59[5]];
  v15 = [(AXKonaSpeechEngine *)self currentConfiguration];
  -[AXKonaSpeechSegment setTargetEncoding:](v38, "setTargetEncoding:", [v15 encoding]);

  [v9 addObject:v38];
  v16 = AXTTSLogKona();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [AXKonaSpeechEngine _segmentsForText:];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v17 = [obj countByEnumeratingWithState:&v46 objects:v69 count:16];
  if (v17)
  {
    v40 = *v47;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v47 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v20 = [(AXKonaSpeechEngine *)self _konaCrashPatterns];
        v21 = [v20 countByEnumeratingWithState:&v42 objects:v68 count:16];
        if (v21)
        {
          v22 = *v43;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v43 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v42 + 1) + 8 * j);
              v25 = [v19 text];
              v26 = [v25 stringByReplacingOccurrencesOfString:v24 withString:&stru_287EE3C58 options:1025 range:{0, objc_msgSend(v25, "length")}];
              [v19 setText:v26];
            }

            v21 = [v20 countByEnumeratingWithState:&v42 objects:v68 count:16];
          }

          while (v21);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v46 objects:v69 count:16];
    }

    while (v17);
  }

  v27 = AXTTSLogKona();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [AXKonaSpeechEngine _segmentsForText:];
  }

  v28 = obj;
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

void __39__AXKonaSpeechEngine__segmentsForText___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v31 + 1) + 8 * i) range];
        if (a2 >= v10 && a2 - v10 < v11)
        {

          goto LABEL_21;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  if (a2)
  {
    v13 = [*(a1 + 40) matchesInString:*(a1 + 48) options:2 range:{0, a2}];
    v14 = [v13 firstObject];

    v15 = a2;
    if (v14)
    {
      [v14 range];
      v15 = [v14 range];
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(*(*(a1 + 72) + 8) + 24);
  v17 = v15 - v16;
  if (v15 != v16)
  {
    v18 = objc_alloc_init(AXKonaSpeechSegment);
    v19 = [*(a1 + 56) currentConfiguration];
    -[AXKonaSpeechSegment setTargetEncoding:](v18, "setTargetEncoding:", [v19 encoding]);

    [(AXKonaSpeechSegment *)v18 setRange:*(*(*(a1 + 72) + 8) + 24), v17];
    v20 = *(a1 + 48);
    v21 = [(AXKonaSpeechSegment *)v18 range];
    v23 = [v20 substringWithRange:{v21, v22}];
    [(AXKonaSpeechSegment *)v18 setText:v23];

    [(AXKonaSpeechSegment *)v18 setMarker:*(*(*(a1 + 80) + 8) + 40)];
    [*(a1 + 64) addObject:v18];
    v24 = *(*(a1 + 80) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = 0;
  }

  v26 = objc_alloc_init(AXKonaMarker);
  v27 = *(*(a1 + 80) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = v26;

  v29 = [*(a1 + 48) substringWithRange:{a2, a3}];
  [*(*(*(a1 + 80) + 8) + 40) setText:v29];

  [*(*(*(a1 + 80) + 8) + 40) setOriginalStringRange:{a2, a3}];
  *(*(*(a1 + 72) + 8) + 24) = v15;
LABEL_21:
  v30 = *MEMORY[0x277D85DE8];
}

- (id)_preprocessTextForIrregularities:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [AXKonaSpeechEngine _preprocessTextForIrregularities:]::TimeDurationRegex;
  if (![AXKonaSpeechEngine _preprocessTextForIrregularities:]::TimeDurationRegex)
  {
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\b((?<!:)[0-9]{1 options:2}:[0-9]{2}(?!:))\\s?(am|pm|AM|PM|[:cntrl:])?" error:{0, 0}];
    v6 = [AXKonaSpeechEngine _preprocessTextForIrregularities:]::TimeDurationRegex;
    [AXKonaSpeechEngine _preprocessTextForIrregularities:]::TimeDurationRegex = v5;

    v4 = [AXKonaSpeechEngine _preprocessTextForIrregularities:]::TimeDurationRegex;
  }

  v7 = [v4 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  if ([v7 count])
  {
    v8 = [v3 mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v7 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) range];
          [v8 replaceOccurrencesOfString:@":" withString:@" " options:0 range:{v13, v14}];
        }

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = v3;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)synthesizeText:(id)a3
{
  v4 = a3;
  [(AXKonaSpeechEngine *)self cancelSynthesis];
  v5 = [(AXKonaSpeechEngine *)self _preprocessTextForIrregularities:v4];

  v6 = [(AXKonaSpeechEngine *)self ruleSetRunner];
  v7 = [v6 processText:v5];
  [(AXKonaSpeechEngine *)self setCurrentSpeechString:v7];

  v8 = [(AXKonaSpeechEngine *)self currentSpeechString];
  v9 = [v8 transformedString];

  v10 = self;
  objc_sync_enter(v10);
  v11 = [(AXKonaSpeechEngine *)v10 bufferConverter];
  [v11 reset];

  [(AXKonaSpeechEngine *)v10 setLastSampVal:0.0];
  [(AXKonaSpeechEngine *)v10 setCurrentFrameCount:0];
  v12 = [MEMORY[0x277CBEB18] array];
  [(AXKonaSpeechEngine *)v10 setCurrentMarkers:v12];

  v13 = [(AXKonaSpeechEngine *)v10 _segmentsForText:v9];
  [(AXKonaSpeechEngine *)v10 setCurrentSpeechSegments:v13];

  v14 = [(AXKonaSpeechEngine *)v10 synthesizerSyncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__AXKonaSpeechEngine_synthesizeText___block_invoke;
  block[3] = &unk_279DA8388;
  block[4] = v10;
  dispatch_async(v14, block);

  objc_sync_exit(v10);
  v15 = [(AXKonaSpeechEngine *)v10 producedBuffers];
  [v15 wait];
}

void __37__AXKonaSpeechEngine_synthesizeText___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) setSynthState:1];
  [*(a1 + 32) wrappedInstance];
  v3 = [*(a1 + 32) currentVoice];
  [v3 eciVoiceNumber];
  eciSetStandardVoice2();

  v4 = *(a1 + 32);
  v5 = [v4 currentParameters];
  [v4 setParameters:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [*(a1 + 32) currentSpeechSegments];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [*(a1 + 32) wrappedInstance];
        eciInsertIndex2();
        [*(a1 + 32) wrappedInstance];
        [v11 encodedString];
        [v11 encodedStringLength];
        eciAddText2();
        ++v8;
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) wrappedInstance];
  eciSynthesize2();
  objc_sync_exit(v2);

  [*(a1 + 32) wrappedInstance];
  eciSynchronize2();
  v12 = *(a1 + 32);
  objc_sync_enter(v12);
  if ([*(a1 + 32) synthState] == 1)
  {
    [*(a1 + 32) setSynthState:3];
  }

  v13 = [*(a1 + 32) producedBuffers];
  [v13 broadcast];

  v14 = [*(a1 + 32) consumedBuffers];
  [v14 broadcast];

  objc_sync_exit(v12);
  v15 = *MEMORY[0x277D85DE8];
}

- (id)nextBuffer
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v12 = MEMORY[0x277D85DD0];
  AX_PERFORM_WITH_LOCK();
  v3 = v15[5];
  if (v3)
  {
    v4 = v3;
LABEL_3:
    v5 = v4;
    goto LABEL_7;
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(AXKonaSpeechEngine *)v6 synthState:v12];
  objc_sync_exit(v6);

  if (v7 == 1)
  {
    v8 = [(AXKonaSpeechEngine *)v6 producedBuffers];
    [v8 wait];

    v9 = v6;
    objc_sync_enter(v9);
    v10 = [(AXKonaSpeechEngine *)v9 synthState];
    objc_sync_exit(v9);

    if (v10 != 2)
    {
      v4 = [(AXKonaSpeechEngine *)v9 nextBuffer];
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_7:
  _Block_object_dispose(&v14, 8);

  return v5;
}

void __32__AXKonaSpeechEngine_nextBuffer__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) queuedBuffers];
  v2 = [v6 count];

  if (v2)
  {
    v7 = [*(a1 + 32) queuedBuffers];
    v3 = [v7 firstObject];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v8 = [*(a1 + 32) queuedBuffers];
    [v8 removeObjectAtIndex:0];

    v9 = [*(a1 + 32) consumedBuffers];
    [v9 signal];
  }
}

- (void)_enqueueBuffer:(id)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = a3;
  AX_PERFORM_WITH_LOCK();
  if ((v9[3] & 1) == 0)
  {
    v5 = [(AXKonaSpeechEngine *)self consumedBuffers];
    [v5 wait];

    v6 = self;
    objc_sync_enter(v6);
    v7 = [(AXKonaSpeechEngine *)v6 synthState];
    objc_sync_exit(v6);

    if (v7 != 2)
    {
      [(AXKonaSpeechEngine *)v6 _enqueueBuffer:v4];
    }
  }

  _Block_object_dispose(&v8, 8);
}

void __37__AXKonaSpeechEngine__enqueueBuffer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queuedBuffers];
  v3 = [v2 count];

  if (v3 <= 0x18)
  {
    v4 = [*(a1 + 32) queuedBuffers];
    [v4 addObject:*(a1 + 40)];

    v5 = [*(a1 + 32) producedBuffers];
    [v5 signal];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)cancelSynthesis
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AXKonaSpeechEngine *)v2 ruleSetRunner];
  [v3 cancelProcessing];

  [(AXKonaSpeechEngine *)v2 _cancelSynthesis];
  objc_sync_exit(v2);

  v4 = [(AXKonaSpeechEngine *)v2 synthesizerSyncQueue];
  dispatch_sync(v4, &__block_literal_global);
}

- (void)_cancelSynthesis
{
  AX_PERFORM_WITH_LOCK();
  [(AXKonaSpeechEngine *)self setSynthState:2];
  v3 = [(AXKonaSpeechEngine *)self producedBuffers];
  [v3 broadcast];

  v4 = [(AXKonaSpeechEngine *)self consumedBuffers];
  [v4 broadcast];

  [(AXKonaSpeechEngine *)self setCurrentSpeechString:0];
}

void __38__AXKonaSpeechEngine__cancelSynthesis__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  [*(a1 + 32) setQueuedBuffers:?];
}

- (void)setParameters:(id)a3
{
  objc_storeStrong(&self->_currentParameters, a3);
  [(AXKonaSpeechEngine *)self wrappedInstance];
  v4 = [(AXKonaSpeechEngine *)self currentParameters];
  [v4 headSize];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v5 = [(AXKonaSpeechEngine *)self currentParameters];
  [v5 vocalTract];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v6 = [(AXKonaSpeechEngine *)self currentParameters];
  [v6 pitchBase];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v7 = [(AXKonaSpeechEngine *)self currentParameters];
  [v7 pitchFluctuation];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v8 = [(AXKonaSpeechEngine *)self currentParameters];
  [v8 roughness];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v9 = [(AXKonaSpeechEngine *)self currentParameters];
  [v9 breathiness];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v10 = [(AXKonaSpeechEngine *)self currentParameters];
  [v10 speed];
  eciSetParam2();

  [(AXKonaSpeechEngine *)self wrappedInstance];
  v11 = [(AXKonaSpeechEngine *)self currentParameters];
  [v11 volume];
  eciSetParam2();
}

- (AXKonaParameters)parameters
{
  currentParameters = self->_currentParameters;
  if (currentParameters)
  {
    v3 = currentParameters;
  }

  else
  {
    v4 = [(AXKonaSpeechEngine *)self currentVoice];
    v3 = [v4 parameters];
  }

  return v3;
}

- (void)setVoice:(id)a3
{
  v8 = a3;
  v4 = [(AXKonaSpeechEngine *)self currentVoice];
  v5 = [v4 identifier];
  v6 = [v8 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    [(AXKonaSpeechEngine *)self cancelSynthesis];
    if ([(AXKonaSpeechEngine *)self currentDictionary])
    {
      [(AXKonaSpeechEngine *)self wrappedInstance];
      [(AXKonaSpeechEngine *)self currentDictionary];
      eciDeleteDict2();
      [(AXKonaSpeechEngine *)self setCurrentDictionary:0];
    }

    [(AXKonaSpeechEngine *)self wrappedInstance];
    eciDelete2();
    [(AXKonaSpeechEngine *)self _initializeWrappedEngineForVoice:v8];
    [(AXKonaSpeechEngine *)self setCurrentVoice:v8];
    [(AXKonaSpeechEngine *)self setCurrentParameters:0];
  }
}

- (void)_loadDictionaryForVoice:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 languageCode];
  v7 = [v5 pathForResource:v6 ofType:0 inDirectory:@"Dictionaries"];

  if (v7)
  {
    v8 = [v7 stringByAppendingPathComponent:@"community"];
    v9 = [v7 stringByAppendingPathComponent:@"system"];
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [v10 fileExistsAtPath:v8];

    if (!v11 || (v12 = [(AXKonaSpeechEngine *)self preferCommunityDictionary], v13 = v8, !v12))
    {
      v13 = v9;
    }

    v14 = v13;

    v15 = [v4 languageCode];
    v16 = [&unk_287EE5970 objectForKeyedSubscript:v15];
    [v16 intValue];

    [(AXKonaSpeechEngine *)self wrappedInstance];
    if (eciNewDict2())
    {
      v17 = AXTTSLogKona();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v4 languageCode];
        [(AXKonaSpeechEngine *)v18 _loadDictionaryForVoice:v27, v17];
      }
    }

    else
    {
      v17 = [v14 stringByAppendingPathComponent:@"root.kdict"];
      [(AXKonaSpeechEngine *)self _loadDictionaryAtPath:v17 type:1 handle:0];
      v21 = [v14 stringByAppendingPathComponent:@"abbrv.kdict"];
      [(AXKonaSpeechEngine *)self _loadDictionaryAtPath:v21 type:2 handle:0];
      v22 = [v14 stringByAppendingPathComponent:@"main.kdict"];
      [(AXKonaSpeechEngine *)self _loadDictionaryAtPath:v22 type:0 handle:0];
      [(AXKonaSpeechEngine *)self wrappedInstance];
      if (eciActivateDict2())
      {
        v23 = AXTTSLogKona();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = [(AXKonaSpeechEngine *)self currentVoice];
          v25 = [v24 languageCode];
          [(AXKonaSpeechEngine *)v25 _loadDictionaryForVoice:v27, v23, v24];
        }
      }

      [(AXKonaSpeechEngine *)self setCurrentDictionary:0];
    }
  }

  else
  {
    v14 = AXTTSLogKona();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(AXKonaSpeechEngine *)v14 _loadDictionaryForVoice:v19, v20];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)_loadDictionaryAtPath:(id)a3 type:(int64_t)a4 handle:(void *)a5
{
  v6 = a3;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    [v6 cStringUsingEncoding:5];
    [(AXKonaSpeechEngine *)self wrappedInstance];
    if (!eciLoadDictVolume2())
    {
      v10 = 1;
      goto LABEL_7;
    }

    v9 = AXTTSLogKona();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXKonaSpeechEngine _loadDictionaryAtPath:type:handle:];
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (void)setOverrideVoicingGain:(id)a3
{
  v8 = a3;
  [(NSNumber *)self->_overrideVoicingGain floatValue];
  v6 = v5;
  [v8 floatValue];
  if (v6 != v7)
  {
    objc_storeStrong(&self->_overrideVoicingGain, a3);
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)setOverrideFricationGain:(id)a3
{
  v8 = a3;
  [(NSNumber *)self->_overrideFricationGain floatValue];
  v6 = v5;
  [v8 floatValue];
  if (v6 != v7)
  {
    objc_storeStrong(&self->_overrideFricationGain, a3);
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)setOverrideAspirationGain:(id)a3
{
  v8 = a3;
  [(NSNumber *)self->_overrideAspirationGain floatValue];
  v6 = v5;
  [v8 floatValue];
  if (v6 != v7)
  {
    objc_storeStrong(&self->_overrideAspirationGain, a3);
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)setOverrideOverallGain:(id)a3
{
  v8 = a3;
  [(NSNumber *)self->_overrideOverallGain floatValue];
  v6 = v5;
  [v8 floatValue];
  if (v6 != v7)
  {
    objc_storeStrong(&self->_overrideOverallGain, a3);
    [(AXKonaSpeechEngine *)self _resetEnginePreservingParams];
  }
}

- (void)klattDynamicHook:(KlattFrame *)a3
{
  v156[62] = *MEMORY[0x277D85DE8];
  v155[0] = @"ui";
  *&v3 = a3->var0;
  v153 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v156[0] = v153;
  v155[1] = @"f0";
  *&v5 = a3->var1;
  v151 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v156[1] = v151;
  v155[2] = @"av";
  *&v6 = a3->var2;
  v150 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v156[2] = v150;
  v155[3] = @"oq";
  *&v7 = a3->var3;
  v149 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v156[3] = v149;
  v155[4] = @"tl";
  *&v8 = a3->var4;
  v148 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v156[4] = v148;
  v155[5] = @"fl";
  *&v9 = a3->var5;
  v147 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v156[5] = v147;
  v155[6] = @"di";
  *&v10 = a3->var6;
  v146 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v156[6] = v146;
  v155[7] = @"ah";
  *&v11 = a3->var7;
  v145 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v156[7] = v145;
  v155[8] = @"af";
  *&v12 = a3->var8;
  v144 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v156[8] = v144;
  v155[9] = @"f1";
  *&v13 = a3->var9;
  v143 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v156[9] = v143;
  v155[10] = @"b1";
  *&v14 = a3->var10;
  v142 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v156[10] = v142;
  v155[11] = @"df1";
  *&v15 = a3->var11;
  v141 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v156[11] = v141;
  v155[12] = @"db1";
  *&v16 = a3->var12;
  v140 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v156[12] = v140;
  v155[13] = @"f2";
  *&v17 = a3->var13;
  v139 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v156[13] = v139;
  v155[14] = @"b2";
  *&v18 = a3->var14;
  v138 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v156[14] = v138;
  v155[15] = @"f3";
  *&v19 = a3->var15;
  v137 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v156[15] = v137;
  v155[16] = @"b3";
  *&v20 = a3->var16;
  v136 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v156[16] = v136;
  v155[17] = @"f4";
  *&v21 = a3->var17;
  v135 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v156[17] = v135;
  v155[18] = @"b4";
  *&v22 = a3->var18;
  v134 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v156[18] = v134;
  v155[19] = @"f5";
  *&v23 = a3->var19;
  v133 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v156[19] = v133;
  v155[20] = @"b5";
  *&v24 = a3->var20;
  v132 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v156[20] = v132;
  v155[21] = @"f6";
  *&v25 = a3->var21;
  v131 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  v156[21] = v131;
  v155[22] = @"b6";
  *&v26 = a3->var22;
  v130 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
  v156[22] = v130;
  v155[23] = @"f7";
  *&v27 = a3->var23;
  v129 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v156[23] = v129;
  v155[24] = @"b7";
  *&v28 = a3->var24;
  v128 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  v156[24] = v128;
  v155[25] = @"f8";
  *&v29 = a3->var25;
  v127 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  v156[25] = v127;
  v155[26] = @"b8";
  *&v30 = a3->var26;
  v126 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  v156[26] = v126;
  v155[27] = @"fnp";
  *&v31 = a3->var27;
  v125 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  v156[27] = v125;
  v155[28] = @"bnp";
  *&v32 = a3->var28;
  v124 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v156[28] = v124;
  v155[29] = @"fnz";
  *&v33 = a3->var29;
  v123 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  v156[29] = v123;
  v155[30] = @"bnz";
  *&v34 = a3->var30;
  v122 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  v156[30] = v122;
  v155[31] = @"ftp";
  *&v35 = a3->var31;
  v121 = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  v156[31] = v121;
  v155[32] = @"btp";
  *&v36 = a3->var32;
  v120 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  v156[32] = v120;
  v155[33] = @"ftz";
  *&v37 = a3->var33;
  v119 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
  v156[33] = v119;
  v155[34] = @"btz";
  *&v38 = a3->var34;
  v118 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v156[34] = v118;
  v155[35] = @"a1f";
  *&v39 = a3->var35;
  v117 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  v156[35] = v117;
  v155[36] = @"a2f";
  *&v40 = a3->var36;
  v116 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  v156[36] = v116;
  v155[37] = @"a3f";
  *&v41 = a3->var37;
  v115 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v156[37] = v115;
  v155[38] = @"a4f";
  *&v42 = a3->var38;
  v114 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  v156[38] = v114;
  v155[39] = @"a5f";
  *&v43 = a3->var39;
  v113 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  v156[39] = v113;
  v155[40] = @"a6f";
  *&v44 = a3->var40;
  v112 = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  v156[40] = v112;
  v155[41] = @"a7f";
  *&v45 = a3->var41;
  v111 = [MEMORY[0x277CCABB0] numberWithFloat:v45];
  v156[41] = v111;
  v155[42] = @"a8f";
  *&v46 = a3->var42;
  v110 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  v156[42] = v110;
  v155[43] = @"ab";
  *&v47 = a3->var43;
  v109 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  v156[43] = v109;
  v155[44] = @"b1f";
  *&v48 = a3->var44;
  v108 = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  v156[44] = v108;
  v155[45] = @"b2f";
  *&v49 = a3->var45;
  v107 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
  v156[45] = v107;
  v155[46] = @"b3f";
  *&v50 = a3->var46;
  v106 = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  v156[46] = v106;
  v155[47] = @"b4f";
  *&v51 = a3->var47;
  v105 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
  v156[47] = v105;
  v155[48] = @"b5f";
  *&v52 = a3->var48;
  v104 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  v156[48] = v104;
  v155[49] = @"b6f";
  *&v53 = a3->var49;
  v103 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
  v156[49] = v103;
  v155[50] = @"b7f";
  *&v54 = a3->var50;
  v102 = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  v156[50] = v102;
  v155[51] = @"b8f";
  *&v55 = a3->var51;
  v101 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
  v156[51] = v101;
  v155[52] = @"anv";
  *&v56 = a3->var52;
  v100 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  v156[52] = v100;
  v155[53] = @"a1v";
  *&v57 = a3->var53;
  v58 = [MEMORY[0x277CCABB0] numberWithFloat:v57];
  v156[53] = v58;
  v155[54] = @"a2v";
  *&v59 = a3->var54;
  v60 = [MEMORY[0x277CCABB0] numberWithFloat:v59];
  v156[54] = v60;
  v155[55] = @"a3v";
  *&v61 = a3->var55;
  v62 = [MEMORY[0x277CCABB0] numberWithFloat:v61];
  v156[55] = v62;
  v155[56] = @"a4v";
  *&v63 = a3->var56;
  v64 = [MEMORY[0x277CCABB0] numberWithFloat:v63];
  v156[56] = v64;
  v155[57] = @"a5v";
  *&v65 = a3->var57;
  v66 = [MEMORY[0x277CCABB0] numberWithFloat:v65];
  v156[57] = v66;
  v155[58] = @"a6v";
  *&v67 = a3->var58;
  v68 = [MEMORY[0x277CCABB0] numberWithFloat:v67];
  v156[58] = v68;
  v155[59] = @"a7v";
  *&v69 = a3->var59;
  v70 = [MEMORY[0x277CCABB0] numberWithFloat:v69];
  v156[59] = v70;
  v155[60] = @"a8v";
  *&v71 = a3->var60;
  v72 = [MEMORY[0x277CCABB0] numberWithFloat:v71];
  v156[60] = v72;
  v155[61] = @"atv";
  *&v73 = a3->var61;
  v74 = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  v156[61] = v74;
  v152 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:62];

  v75 = [(AXKonaSpeechEngine *)self highFormantBandwidthScalingFactor];
  LOBYTE(v70) = v75 == 0;

  if ((v70 & 1) == 0)
  {
    var22 = a3->var22;
    v77 = [(AXKonaSpeechEngine *)self highFormantBandwidthScalingFactor];
    [v77 floatValue];
    a3->var22 = var22 * v78;

    var24 = a3->var24;
    v80 = [(AXKonaSpeechEngine *)self highFormantBandwidthScalingFactor];
    [v80 floatValue];
    a3->var22 = var24 * v81;

    var26 = a3->var26;
    v83 = [(AXKonaSpeechEngine *)self highFormantBandwidthScalingFactor];
    [v83 floatValue];
    a3->var22 = var26 * v84;
  }

  v85 = [(AXKonaSpeechEngine *)self highFormantFrequencyScalingFactor];
  v86 = v85 == 0;

  if (!v86)
  {
    var21 = a3->var21;
    v88 = [(AXKonaSpeechEngine *)self highFormantFrequencyScalingFactor];
    [v88 floatValue];
    a3->var21 = var21 * v89;

    var23 = a3->var23;
    v91 = [(AXKonaSpeechEngine *)self highFormantFrequencyScalingFactor];
    [v91 floatValue];
    a3->var21 = var23 * v92;

    var25 = a3->var25;
    v94 = [(AXKonaSpeechEngine *)self highFormantFrequencyScalingFactor];
    [v94 floatValue];
    a3->var21 = var25 * v95;
  }

  v96 = [(AXKonaSpeechEngine *)self dynamicLoggingBlock];
  v97 = v96 == 0;

  if (!v97)
  {
    v98 = [(AXKonaSpeechEngine *)self dynamicLoggingBlock];
    (v98)[2](v98, v152);
  }

  v99 = *MEMORY[0x277D85DE8];
}

- (void)klattConstantHook:(id *)a3
{
  v5 = [(AXKonaSpeechEngine *)self overrideFricationGain];

  if (v5)
  {
    v13 = [(AXKonaSpeechEngine *)self overrideFricationGain];
    [v13 floatValue];
    a3->var10 = v6;
  }

  v7 = [(AXKonaSpeechEngine *)self overrideAspirationGain];

  if (v7)
  {
    v14 = [(AXKonaSpeechEngine *)self overrideAspirationGain];
    [v14 floatValue];
    a3->var9 = v8;
  }

  v9 = [(AXKonaSpeechEngine *)self overrideVoicingGain];

  if (v9)
  {
    v15 = [(AXKonaSpeechEngine *)self overrideVoicingGain];
    [v15 floatValue];
    a3->var8 = v10;
  }

  v11 = [(AXKonaSpeechEngine *)self overrideOverallGain];

  if (v11)
  {
    v16 = [(AXKonaSpeechEngine *)self overrideOverallGain];
    [v16 floatValue];
    a3->var11 = v12;
  }
}

- (int64_t)eciCallback:(int64_t)a3 iParam:(int64_t)a4 instanceData:(void *)a5
{
  v61 = *MEMORY[0x277D85DE8];
  if ([(AXKonaSpeechEngine *)self synthState:a3]!= 2)
  {
    if (a3 == 1)
    {
      v17 = [(AXKonaSpeechEngine *)self engineFormat];
      [v17 sampleRate];
      v19 = v18;

      v20 = [(AXKonaSpeechEngine *)self outputFormat];
      [v20 sampleRate];
      v22 = v21;

      v58[0] = 1;
      v58[2] = 1;
      v58[3] = a4;
      pSampleBuffer = self->_pSampleBuffer;
      v23 = objc_alloc(MEMORY[0x277CB83C8]);
      v24 = [(AXKonaSpeechEngine *)self engineFormat];
      v47 = [v23 initWithPCMFormat:v24 bufferListNoCopy:v58 deallocator:0];

      v25 = objc_alloc(MEMORY[0x277CB83C8]);
      v26 = [(AXKonaSpeechEngine *)self outputFormat];
      LODWORD(v27) = vcvtpd_u64_f64((a4 >> 1) / (v19 / v22));
      v28 = [v25 initWithPCMFormat:v26 frameCapacity:v27];

      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v57 = 0;
      v29 = [(AXKonaSpeechEngine *)self bufferConverter];
      v54 = v56;
      v55 = 0;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __54__AXKonaSpeechEngine_eciCallback_iParam_instanceData___block_invoke;
      v52[3] = &unk_279DA8420;
      v30 = v47;
      v53 = v30;
      [v29 convertToBuffer:v28 error:&v55 withInputFromBlock:v52];
      v46 = v55;

      -[AXKonaSpeechEngine setCurrentFrameCount:](self, "setCurrentFrameCount:", -[AXKonaSpeechEngine currentFrameCount](self, "currentFrameCount") + [v28 frameLength]);
      v31 = objc_alloc_init(AXKonaBuffer);
      [(AXKonaBuffer *)v31 setBuffer:v28];
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v32 = [(AXKonaSpeechEngine *)self currentMarkers];
      v33 = [v32 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v33)
      {
        v34 = *v49;
        do
        {
          v35 = 0;
          do
          {
            if (*v49 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v48 + 1) + 8 * v35);
            v37 = [(AXKonaSpeechEngine *)self currentSpeechString];
            v38 = [v36 originalStringRange];
            v40 = [v37 translateRangeInTransformedString:{v38, v39}];
            [v36 setOriginalStringRange:{v40, v41}];

            ++v35;
          }

          while (v33 != v35);
          v33 = [v32 countByEnumeratingWithState:&v48 objects:v60 count:16];
        }

        while (v33);
      }

      v42 = [(AXKonaSpeechEngine *)self currentMarkers];
      [(AXKonaBuffer *)v31 setMarkers:v42];

      [(AXKonaSpeechEngine *)self _enqueueBuffer:v31];
      v43 = [MEMORY[0x277CBEB18] array];
      [(AXKonaSpeechEngine *)self setCurrentMarkers:v43];

      _Block_object_dispose(v56, 8);
    }

    else if (!a3)
    {
      v8 = [(AXKonaSpeechEngine *)self currentSpeechSegments];
      v9 = [v8 count];

      if (v9 > a4)
      {
        v10 = [(AXKonaSpeechEngine *)self currentSpeechSegments];
        v11 = [v10 objectAtIndex:a4];

        v12 = [v11 marker];

        if (v12)
        {
          v13 = [(AXKonaSpeechEngine *)self currentFrameCount];
          v14 = [v11 marker];
          [v14 setFramePosition:v13];

          v15 = [(AXKonaSpeechEngine *)self currentMarkers];
          v16 = [v11 marker];
          [v15 addObject:v16];
        }
      }
    }
  }

  v44 = *MEMORY[0x277D85DE8];
  return 0;
}

id __54__AXKonaSpeechEngine_eciCallback_iParam_instanceData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

+ (id)allVoices
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"KonaVoicePresets" ofType:@"plist"];

  v41 = v4;
  [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v4];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v5 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v5)
  {
    v6 = *v44;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v43 + 1) + 8 * i);
        v9 = objc_alloc_init(AXKonaVoice);
        v10 = [v8 objectForKey:@"name"];
        [(AXKonaVoice *)v9 setName:v10];

        v11 = [v8 objectForKey:@"languageCode"];
        [(AXKonaVoice *)v9 setLanguageCode:v11];

        v12 = [v8 objectForKey:@"konaDialect"];
        -[AXKonaVoice setKonaLanguage:](v9, "setKonaLanguage:", [v12 unsignedIntValue]);

        v13 = objc_alloc_init(AXKonaParameters);
        [(AXKonaVoice *)v9 setParameters:v13];

        v14 = [v8 objectForKey:@"vocalTract"];
        v15 = [v14 intValue];
        v16 = [(AXKonaVoice *)v9 parameters];
        [v16 setVocalTract:v15];

        v17 = [v8 objectForKey:@"headSize"];
        v18 = [v17 intValue];
        v19 = [(AXKonaVoice *)v9 parameters];
        [v19 setHeadSize:v18];

        v20 = [v8 objectForKey:@"pitchBase"];
        v21 = [v20 intValue];
        v22 = [(AXKonaVoice *)v9 parameters];
        [v22 setPitchBase:v21];

        v23 = [v8 objectForKey:@"pitchFluctuation"];
        v24 = [v23 intValue];
        v25 = [(AXKonaVoice *)v9 parameters];
        [v25 setPitchFluctuation:v24];

        v26 = [v8 objectForKey:@"breathiness"];
        v27 = [v26 intValue];
        v28 = [(AXKonaVoice *)v9 parameters];
        [v28 setBreathiness:v27];

        v29 = [v8 objectForKey:@"roughness"];
        v30 = [v29 intValue];
        v31 = [(AXKonaVoice *)v9 parameters];
        [v31 setRoughness:v30];

        v32 = [v8 objectForKey:@"volume"];
        v33 = [v32 intValue];
        v34 = [(AXKonaVoice *)v9 parameters];
        [v34 setVolume:v33];

        v35 = [v8 objectForKey:@"speed"];
        v36 = [v35 intValue];
        v37 = [(AXKonaVoice *)v9 parameters];
        [v37 setSpeed:v36];

        v38 = [v8 objectForKey:@"eciVoiceNumber"];
        -[AXKonaVoice setEciVoiceNumber:](v9, "setEciVoiceNumber:", [v38 intValue]);

        [v2 addObject:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v5);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)_segmentsForText:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26E785000, v0, v1, "Processing segments for text: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_segmentsForText:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26E785000, v0, v1, "Outgoing segments before crash-word removal: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_segmentsForText:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_26E785000, v0, v1, "Outgoing segments after crash-word removal: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_loadDictionaryForVoice:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_26E785000, a3, a3, "Could not create dictionary for %@", a2);
}

- (void)_loadDictionaryForVoice:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3, void *a4)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_2(&dword_26E785000, a3, a3, "Could not activate dictionary for %@", a2);
}

- (void)_loadDictionaryForVoice:(uint64_t)a3 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = 0;
  OUTLINED_FUNCTION_2(&dword_26E785000, a1, a3, "No resources found at %@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_loadDictionaryAtPath:type:handle:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_26E785000, v0, v1, "Failed to load dictionaty at %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end