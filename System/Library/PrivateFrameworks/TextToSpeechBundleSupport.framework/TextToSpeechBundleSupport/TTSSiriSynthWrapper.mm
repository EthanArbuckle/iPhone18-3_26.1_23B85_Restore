@interface TTSSiriSynthWrapper
- (BOOL)loadVoiceResource:(id)resource;
- (BOOL)unloadVoiceResource:(id)resource;
- (TTSSiriSynthWrapper)initWithVoicePath:(id)path language:(id)language dynamicStylePrompt:(id)prompt censorPlainText:(BOOL)text delegate:(id)delegate feResourcePath:(id)resourcePath;
- (TTSSiriSynthWrapperDelegate)delegate;
- (id)_applyPostRuleRewrites:(id)rewrites;
- (id)_neuralStyles;
- (id)_rawLiteralCharacterRegexForCurrentLanguage;
- (void)_setProsodyParameters;
- (void)dealloc;
- (void)loadRuleset:(id)ruleset;
- (void)stopSynthesis;
- (void)synthesizeString:(id)string;
- (void)unloadAllVoiceResources;
@end

@implementation TTSSiriSynthWrapper

- (TTSSiriSynthWrapper)initWithVoicePath:(id)path language:(id)language dynamicStylePrompt:(id)prompt censorPlainText:(BOOL)text delegate:(id)delegate feResourcePath:(id)resourcePath
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  languageCopy = language;
  promptCopy = prompt;
  delegateCopy = delegate;
  resourcePathCopy = resourcePath;
  v19.receiver = self;
  v19.super_class = TTSSiriSynthWrapper;
  [(TTSSiriSynthWrapper *)&v19 init];
  operator new();
}

- (void)dealloc
{
  if ([(TTSSiriSynthWrapper *)self synthesizer])
  {
    synthesizer = [(TTSSiriSynthWrapper *)self synthesizer];
    if (synthesizer)
    {
      TTSSynthesizer::~TTSSynthesizer(synthesizer);
      MEMORY[0x26D6C1B10]();
    }
  }

  v4.receiver = self;
  v4.super_class = TTSSiriSynthWrapper;
  [(TTSSiriSynthWrapper *)&v4 dealloc];
}

- (void)_setProsodyParameters
{
  currentNeuralStyle = [(TTSSiriSynthWrapper *)self currentNeuralStyle];

  if (currentNeuralStyle)
  {
    [(TTSSiriSynthWrapper *)self synthesizer];
    currentNeuralStyle2 = [(TTSSiriSynthWrapper *)self currentNeuralStyle];
    v5 = currentNeuralStyle2;
    if (currentNeuralStyle2)
    {
      [currentNeuralStyle2 getStyleVector];
    }

    else
    {
      __p = 0;
    }

    TTSSynthesizer::set_neural_style();
    if (__p)
    {
      operator delete(__p);
    }
  }
}

- (id)_rawLiteralCharacterRegexForCurrentLanguage
{
  language = [(TTSSiriSynthWrapper *)self language];
  v3 = [language hasPrefix:@"da"];

  if (v3)
  {
    mEMORY[0x277D70400] = [MEMORY[0x277D70400] sharedInstance];
    v5 = [mEMORY[0x277D70400] regexForString:@"[æøå]" atStart:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_neuralStyles
{
  v24 = *MEMORY[0x277D85DE8];
  TTSSynthesizer::available_neural_styles(&v21, [(TTSSiriSynthWrapper *)self synthesizer]);
  memset(v20, 0, sizeof(v20));
  array = [MEMORY[0x277CBEB18] array];
  v4 = v21;
  v5 = v22;
  if (v21 != v22)
  {
    *&v3 = 136315138;
    v15 = v3;
    do
    {
      v6 = [TTSNeuralStyle alloc];
      if (*(v4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *v4, *(v4 + 8));
      }

      else
      {
        v7 = *v4;
        v19.__r_.__value_.__r.__words[2] = *(v4 + 16);
        *&v19.__r_.__value_.__l.__data_ = v7;
      }

      __p = 0;
      v17 = 0;
      v18 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v4 + 48), *(v4 + 56), (*(v4 + 56) - *(v4 + 48)) >> 2);
      v8 = [(TTSNeuralStyle *)v6 initWithName:&v19 vector:&__p];
      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
        if (!v8)
        {
LABEL_12:
          v9 = AXTTSLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
          {
            v10 = v4;
            if (*(v4 + 23) < 0)
            {
              v10 = *v4;
            }

            *buf = v15;
            *&buf[4] = v10;
            _os_log_fault_impl(&dword_26D514000, v9, OS_LOG_TYPE_FAULT, "Siri returned style %s for which we have no localization.", buf, 0xCu);
          }

          goto LABEL_14;
        }
      }

      else if (!v8)
      {
        goto LABEL_12;
      }

      [array addObject:{v8, v15}];
LABEL_14:

      v4 += 72;
    }

    while (v4 != v5);
  }

  v11 = [array indexOfObjectPassingTest:{&__block_literal_global, v15}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [array objectAtIndexedSubscript:v11];
    [array removeObjectAtIndex:v11];
    [array insertObject:v12 atIndex:0];
  }

  *buf = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
  v20[0] = &v21;
  std::vector<TTSSynthesizer::SpeakingStyle>::__destroy_vector::operator()[abi:ne200100](v20);
  v13 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __36__TTSSiriSynthWrapper__neuralStyles__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 key];
  v3 = [v2 isEqualToString:@"siri"];

  return v3;
}

- (id)_applyPostRuleRewrites:(id)rewrites
{
  rewritesCopy = rewrites;
  _rawLiteralCharacterRegexForCurrentLanguage = [(TTSSiriSynthWrapper *)self _rawLiteralCharacterRegexForCurrentLanguage];
  if (_rawLiteralCharacterRegexForCurrentLanguage)
  {
    originalString = [rewritesCopy originalString];
    mEMORY[0x277D70400] = [MEMORY[0x277D70400] sharedInstance];
    v8 = [mEMORY[0x277D70400] regexForString:@"((?<=(\\\\!|\\x1B)\\\\tn=spell\\\\)[\\s\\S]*?(?=((\\\\!|\\x1B)\\\\tn=)|$))" atStart:0];

    originalString2 = [rewritesCopy originalString];
    v10 = [originalString2 length];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__TTSSiriSynthWrapper__applyPostRuleRewrites___block_invoke;
    v13[3] = &unk_279DA54A0;
    v14 = _rawLiteralCharacterRegexForCurrentLanguage;
    v11 = originalString;
    v15 = v11;
    v16 = rewritesCopy;
    [v8 enumerateMatchesInString:v11 options:2 range:0 usingBlock:{v10, v13}];
  }

  return rewritesCopy;
}

void __46__TTSSiriSynthWrapper__applyPostRuleRewrites___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [v3 range];
    v9 = v8;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__TTSSiriSynthWrapper__applyPostRuleRewrites___block_invoke_2;
    v10[3] = &unk_279DA5478;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    [v5 enumerateMatchesInString:v6 options:2 range:v7 usingBlock:{v9, v10}];
  }
}

void __46__TTSSiriSynthWrapper__applyPostRuleRewrites___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v12 = v3;
    v5 = [v3 range];
    v7 = [v4 substringWithRange:{v5, v6}];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"\x1B\\tn=raw\\%@\x1B\\tn=spell\\"", v7];
    v9 = *(a1 + 40);
    v10 = [v12 range];
    [v9 transformRange:v10 to:{v11, v8}];

    v3 = v12;
  }
}

- (void)synthesizeString:(id)string
{
  stringCopy = string;
  synthesisQueue = [(TTSSiriSynthWrapper *)self synthesisQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TTSSiriSynthWrapper_synthesizeString___block_invoke;
  v7[3] = &unk_279DA54C8;
  v7[4] = self;
  v8 = stringCopy;
  v6 = stringCopy;
  dispatch_async(synthesisQueue, v7);
}

void __40__TTSSiriSynthWrapper_synthesizeString___block_invoke(uint64_t a1)
{
  v18[11] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bufferConverter];
  [v2 reset];

  [*(a1 + 32) setSynthesizing:1];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) ruleSetRunner];
  v5 = [v4 processText:*(a1 + 40)];
  [*(a1 + 32) setProcessedSpeechString:v5];

  v6 = *(a1 + 32);
  v7 = [v6 processedSpeechString];
  v8 = [v6 _applyPostRuleRewrites:v7];
  [*(a1 + 32) setProcessedSpeechString:v8];

  v9 = [*(a1 + 32) processedSpeechString];
  v10 = [v9 transformedString];

  std::string::basic_string[abi:ne200100]<0>(v18, [v10 UTF8String]);
  __p = 0;
  v16 = 0;
  v17 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v11 = *(a1 + 32);
  v18[10] = 0;
  operator new();
}

- (void)stopSynthesis
{
  ruleSetRunner = [(TTSSiriSynthWrapper *)self ruleSetRunner];
  [ruleSetRunner cancelProcessing];

  TTSSynthesizer::stop_synthesis([(TTSSiriSynthWrapper *)self synthesizer]);
  synthesisQueue = [(TTSSiriSynthWrapper *)self synthesisQueue];
  dispatch_sync(synthesisQueue, &__block_literal_global_106);
}

- (void)loadRuleset:(id)ruleset
{
  rulesetCopy = ruleset;
  v4 = [[TTSSiriVoiceResource alloc] init];
  [(TTSSiriVoiceResource *)v4 setType:0];
  [(TTSSiriVoiceResource *)v4 setRuleSet:rulesetCopy];
  ruleSetRunner = [(TTSSiriSynthWrapper *)self ruleSetRunner];
  [ruleSetRunner loadRuleSet:rulesetCopy];

  voiceResources = [(TTSSiriSynthWrapper *)self voiceResources];
  [voiceResources addObject:v4];
}

- (BOOL)loadVoiceResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy type])
  {
    memset(&v30, 0, sizeof(v30));
    type = [resourceCopy type];
    if (type < 3)
    {
      std::string::__assign_external(&v30, off_279DA5550[type], *&asc_26D52C898[8 * type]);
    }

    v29 = 0;
    resourceData = [resourceCopy resourceData];

    if (resourceData)
    {
      resourceData2 = [resourceCopy resourceData];
      [resourceData2 bytes];

      resourceData3 = [resourceCopy resourceData];
      v9 = [resourceData3 length];
    }

    else
    {
      resourceString = [resourceCopy resourceString];
      [resourceString cStringUsingEncoding:4];

      resourceData3 = [resourceCopy resourceString];
      v9 = [resourceData3 lengthOfBytesUsingEncoding:4];
    }

    v29 = v9;

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v30;
    }

    [(TTSSiriSynthWrapper *)self synthesizer];
    TTSSynthesizer::load_voice_resource();
    v13 = v26 != 0;
    if (v26)
    {
      v24 = v26;
      v25 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [resourceCopy setSiriVoiceResource:&v24];
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      voiceResources = [(TTSSiriSynthWrapper *)self voiceResources];
      [voiceResources addObject:resourceCopy];
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    resourceData4 = [resourceCopy resourceData];
    if (resourceData4)
    {
      resourceData5 = [resourceCopy resourceData];
    }

    else
    {
      resourceString2 = [resourceCopy resourceString];
      resourceData5 = [resourceString2 dataUsingEncoding:4];
    }

    v16 = MEMORY[0x277D70408];
    resourceName = [resourceCopy resourceName];
    voiceResources2 = [(TTSSiriSynthWrapper *)self voiceResources];
    v19 = [v16 rulesetWithData:resourceData5 identifier:resourceName priority:{objc_msgSend(voiceResources2, "count")}];
    [resourceCopy setRuleSet:v19];

    ruleSetRunner = [(TTSSiriSynthWrapper *)self ruleSetRunner];
    ruleSet = [resourceCopy ruleSet];
    [ruleSetRunner loadRuleSet:ruleSet];

    voiceResources3 = [(TTSSiriSynthWrapper *)self voiceResources];
    [voiceResources3 addObject:resourceCopy];

    v13 = 1;
  }

  return v13;
}

- (BOOL)unloadVoiceResource:(id)resource
{
  resourceCopy = resource;
  voiceResources = [(TTSSiriSynthWrapper *)self voiceResources];
  [voiceResources removeObject:resourceCopy];

  ruleSet = [resourceCopy ruleSet];

  if (ruleSet)
  {
    ruleSetRunner = [(TTSSiriSynthWrapper *)self ruleSetRunner];
    ruleSet2 = [resourceCopy ruleSet];
    [ruleSetRunner unloadRuleset:ruleSet2];

    [resourceCopy setRuleSet:0];
    v9 = 1;
  }

  else
  {
    [(TTSSiriSynthWrapper *)self synthesizer];
    if (resourceCopy)
    {
      [resourceCopy siriVoiceResource];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    v10 = TTSSynthesizer::unload_resource();
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v12 = 0;
    v13 = 0;
    [resourceCopy setSiriVoiceResource:&v12];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v9 = v10 == 0;
  }

  return v9;
}

- (void)unloadAllVoiceResources
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  voiceResources = [(TTSSiriSynthWrapper *)self voiceResources];
  v4 = [voiceResources countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(voiceResources);
        }

        [(TTSSiriSynthWrapper *)self unloadVoiceResource:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [voiceResources countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (TTSSiriSynthWrapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithVoicePath:(os_log_t)log language:dynamicStylePrompt:censorPlainText:delegate:feResourcePath:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_26D514000, log, OS_LOG_TYPE_ERROR, "SiriTTSSynthesizer initialization error: %@", buf, 0xCu);
}

void __40__TTSSiriSynthWrapper_synthesizeString___block_invoke_cold_1(const std::logic_error *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 136315138;
  v5 = std::logic_error::what(a1);
  _os_log_fault_impl(&dword_26D514000, a2, OS_LOG_TYPE_FAULT, "Siri threw an exception instead of reporting an error via callback: %s", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end