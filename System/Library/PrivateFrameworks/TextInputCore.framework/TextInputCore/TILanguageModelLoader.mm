@interface TILanguageModelLoader
- (BOOL)monolingualLanguageModelBundleExists:(id)exists;
- (BOOL)multilingualLanguageModelBundleExists;
- (NSArray)staticResourcePaths;
- (TILanguageModelLoader)initWithModelLocaleIdentifier:(id)identifier isMultilingualModel:(BOOL)model customResourcePaths:(id)paths dynamicResourcePath:(id)path mobileAssets:(id)assets usesLinguisticContext:(BOOL)context isMultiLingualModeEnabled:(BOOL)enabled isSiriMode:(BOOL)self0 validEnglishTransformerMultilingualConfig:(BOOL)self1 trialParameters:(id)self2 inlineCompletionPrecision:(int)self3 isInlineCompletionEnabled:(BOOL)self4;
- (id).cxx_construct;
- (shared_ptr<KB::LanguageModel>)languageModelForAdaptationContext:(id)context languageLocales:(id)locales;
- (shared_ptr<KB::LanguageModel>)lightweightLanguageModelForLanguageLocales:(id)locales;
- (shared_ptr<KB::LanguageModel>)loadStubLanguageModelForLanguageLocales:(id)locales withModelLocale:(id)locale withAdaptationContext:(id)context;
- (shared_ptr<KB::LanguageModel>)model;
- (shared_ptr<KB::LanguageModel>)newLanguageModelForLanguageLocales:(id)locales;
- (shared_ptr<KB::LanguageModel>)sharedLanguageModelForClient:(id)client withRecipient:(id)recipient forLanguageLocales:(id)locales;
- (shared_ptr<KB::LanguageModel>)sharedLanguageModelForClient:(id)client withRecipient:(id)recipient forLanguageLocales:(id)locales completion:(id)completion;
- (shared_ptr<KB::LanguageModel>)stubLanguageModelForLanguageLocales:(id)locales withModelLocale:(id)locale withAdaptationContext:(id)context;
- (void)clearDynamicLearningCaches;
- (void)findRecordsMatchingRecipient:(id)recipient completionHandler:(id)handler;
- (void)flushDynamicLearningCaches;
- (void)loadLanguageModel:(shared_ptr<KB::LanguageModel>)model;
- (void)lookupRecordForRecipientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)performLearningIfNecessaryForClient:(id)client withModel:(shared_ptr<KB::LanguageModel>)model;
- (void)reloadLanguageModelWithLanguageLocales:(id)locales;
- (void)setLanguageModelClientIdentifier:(id)identifier;
- (void)setLanguageModelRecipientIdentifier:(id)identifier completion:(id)completion;
- (void)setModel:(shared_ptr<KB::LanguageModel>)model;
- (void)unwireLanguageModelMemory;
- (void)wireLanguageModelMemory;
@end

@implementation TILanguageModelLoader

- (shared_ptr<KB::LanguageModel>)model
{
  cntrl = self->_model.__cntrl_;
  *v2 = self->_model.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)wireLanguageModelMemory
{
  [(TILanguageModelLoader *)self model];
  if (v6)
  {
    [(TILanguageModelLoader *)self model];
    v3 = (*(*v4 + 16))();
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v3)
  {
    [(TILanguageModelLoader *)self model];
    (*(*v6 + 208))();
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (void)setModel:(shared_ptr<KB::LanguageModel>)model
{
  v4 = *model.__ptr_;
  v3 = *(model.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_model.__cntrl_;
  self->_model.__ptr_ = v4;
  self->_model.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<KB::LanguageModel>)languageModelForAdaptationContext:(id)context languageLocales:(id)locales
{
  v6 = MEMORY[0x277CBEAF8];
  localesCopy = locales;
  contextCopy = context;
  v21 = [[v6 alloc] initWithLocaleIdentifier:self->_modelLocaleIdentifier];
  isMultilingualModel = [(TILanguageModelLoader *)self isMultilingualModel];
  customResourcePaths = [(TILanguageModelLoader *)self customResourcePaths];
  dynamicResourcePath = [(TILanguageModelLoader *)self dynamicResourcePath];
  isMultiLingualModeEnabled = [(TILanguageModelLoader *)self isMultiLingualModeEnabled];
  isSiriMode = [(TILanguageModelLoader *)self isSiriMode];
  validEnglishTransformerMultilingualConfig = [(TILanguageModelLoader *)self validEnglishTransformerMultilingualConfig];
  trialParameters = [(TILanguageModelLoader *)self trialParameters];
  inlineCompletionPrecision = [(TILanguageModelLoader *)self inlineCompletionPrecision];
  BYTE4(v19) = [(TILanguageModelLoader *)self isInlineCompletionEnabled];
  LODWORD(v19) = inlineCompletionPrecision;
  BYTE2(v18) = validEnglishTransformerMultilingualConfig;
  BYTE1(v18) = isSiriMode;
  LOBYTE(v18) = isMultiLingualModeEnabled;
  [TILanguageModelLoaderManager modelForLocale:"modelForLocale:isMultilingualModel:languageLocales:adaptationContext:staticResourcePaths:dynamicResourcePath:isMultiLingualModeEnabled:isSiriMode:validEnglishTransformerMultilingualConfig:trialParameters:inlineCompletionPrecision:isInlineCompletionEnabled:" isMultilingualModel:v21 languageLocales:isMultilingualModel adaptationContext:localesCopy staticResourcePaths:contextCopy dynamicResourcePath:customResourcePaths isMultiLingualModeEnabled:dynamicResourcePath isSiriMode:v18 validEnglishTransformerMultilingualConfig:trialParameters trialParameters:v19 inlineCompletionPrecision:? isInlineCompletionEnabled:?];

  result.__cntrl_ = v17;
  result.__ptr_ = v16;
  return result;
}

- (shared_ptr<KB::LanguageModel>)lightweightLanguageModelForLanguageLocales:(id)locales
{
  v10 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v5 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:self->_modelLocaleIdentifier];
  customResourcePaths = [(TILanguageModelLoader *)self customResourcePaths];
  KB::LanguageModelConfig::LanguageModelConfig(&v8, v5, 0, localesCopy, customResourcePaths, 0, 0, 0, 0, 1, [(TILanguageModelLoader *)self isSiriMode], 1, 1, 90, [(TILanguageModelLoader *)self isInlineCompletionEnabled]);

  LODWORD(self) = [(TILanguageModelLoader *)self monolingualLanguageModelBundleExists:localesCopy];
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (self)
  {
    if (v7)
    {
      buf[0] = 136315394;
      *&buf[1] = "[TILanguageModelLoader lightweightLanguageModelForLanguageLocales:]";
      LOWORD(buf[3]) = 2112;
      *(&buf[3] + 2) = localesCopy;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Loading lightweight language model for language %@", buf, 0x16u);
    }

    operator new();
  }

  if (v7)
  {
    buf[0] = 136315394;
    *&buf[1] = "[TILanguageModelLoader lightweightLanguageModelForLanguageLocales:]";
    LOWORD(buf[3]) = 2112;
    *(&buf[3] + 2) = localesCopy;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Loading lightweight language model stub for language %@", buf, 0x16u);
  }

  operator new();
}

- (shared_ptr<KB::LanguageModel>)stubLanguageModelForLanguageLocales:(id)locales withModelLocale:(id)locale withAdaptationContext:(id)context
{
  v9 = v5;
  v23 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  localeCopy = locale;
  contextCopy = context;
  if (contextCopy)
  {
    if (localeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    contextCopy = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:&stru_283FDFAF8 andRecipientRecord:0];
    if (localeCopy)
    {
      goto LABEL_3;
    }
  }

  localeCopy = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:self->_modelLocaleIdentifier];
LABEL_3:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[TILanguageModelLoader stubLanguageModelForLanguageLocales:withModelLocale:withAdaptationContext:]";
    *&buf[12] = 2112;
    *&buf[14] = localesCopy;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Loading language model stub for languages: %@", buf, 0x16u);
  }

  customResourcePaths = [(TILanguageModelLoader *)self customResourcePaths];
  dynamicResourcePath = [(TILanguageModelLoader *)self dynamicResourcePath];
  isMultiLingualModeEnabled = [(TILanguageModelLoader *)self isMultiLingualModeEnabled];
  isSiriMode = [(TILanguageModelLoader *)self isSiriMode];
  BYTE2(v21) = [(TILanguageModelLoader *)self isInlineCompletionEnabled];
  BYTE1(v21) = isSiriMode;
  LOBYTE(v21) = isMultiLingualModeEnabled;
  [TILanguageModelLoaderManager stubForModelLocale:"stubForModelLocale:isMultilingualModel:languageLocales:adaptationContext:staticResourcePaths:dynamicResourcePath:isMultiLingualModeEnabled:isSiriMode:isInlineCompletionEnabled:" isMultilingualModel:localeCopy languageLocales:0 adaptationContext:localesCopy staticResourcePaths:contextCopy dynamicResourcePath:customResourcePaths isMultiLingualModeEnabled:dynamicResourcePath isSiriMode:v21 isInlineCompletionEnabled:?];
  v17 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  *v9 = v17;

  v20 = *MEMORY[0x277D85DE8];
  result.__cntrl_ = v19;
  result.__ptr_ = v18;
  return result;
}

- (shared_ptr<KB::LanguageModel>)loadStubLanguageModelForLanguageLocales:(id)locales withModelLocale:(id)locale withAdaptationContext:(id)context
{
  v7 = v5;
  [(TILanguageModelLoader *)self stubLanguageModelForLanguageLocales:locales withModelLocale:locale withAdaptationContext:context];
  v8 = v7[1];
  v11 = *v7;
  v12 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(TILanguageModelLoader *)self loadLanguageModel:&v11];
  v10 = v12;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  result.__cntrl_ = v9;
  result.__ptr_ = v10;
  return result;
}

- (void)reloadLanguageModelWithLanguageLocales:(id)locales
{
  v28 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  [(TILanguageModelLoader *)self model];
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  if (__p)
  {
    [(TILanguageModelLoader *)self model];
    v5 = (*(*__p + 16))(__p);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }

    if (v5)
    {
      [(TILanguageModelLoader *)self model];
      (*(*v23 + 56))(&__p);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      v6 = v26 - __p;
      if ([localesCopy count] == v6 >> 3)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v8 = __p;
        v9 = v26;
        while (v8 != v9)
        {
          v10 = v8->__vftable;
          v8 = (v8 + 8);
          [v7 addObject:v10];
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = localesCopy;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              localeIdentifier = [*(*(&v19 + 1) + 8 * i) localeIdentifier];
              v17 = [v7 containsObject:localeIdentifier];

              if (!v17)
              {

                goto LABEL_23;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
LABEL_23:
        [(TILanguageModelLoader *)self model];
        (*(*v23 + 80))(v23, localesCopy);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }
      }

      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)loadLanguageModel:(shared_ptr<KB::LanguageModel>)model
{
  if (__asynchronousLoad == 1)
  {
    v3 = *(model.__ptr_ + 1);
    v5[0] = *model.__ptr_;
    v5[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      KB::LanguageModel::background_load(v5, &__block_literal_global_82);

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    else
    {
      KB::LanguageModel::background_load(v5, &__block_literal_global_82);
    }
  }

  else
  {
    v4 = *(**model.__ptr_ + 96);

    v4();
  }
}

- (shared_ptr<KB::LanguageModel>)sharedLanguageModelForClient:(id)client withRecipient:(id)recipient forLanguageLocales:(id)locales completion:(id)completion
{
  recipientCopy = recipient;
  localesCopy = locales;
  completionCopy = completion;
  clientCopy = &stru_283FDFAF8;
  if (client)
  {
    clientCopy = client;
  }

  v14 = clientCopy;
  [(TILanguageModelLoader *)self model];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v21)
  {
    [(TILanguageModelLoader *)self model];
    v15 = _os_feature_enabled_impl();
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    if (v15)
    {
      [(TILanguageModelLoader *)self reloadLanguageModelWithLanguageLocales:localesCopy];
    }
  }

  else
  {
    [(TILanguageModelLoader *)self newLanguageModelForLanguageLocales:localesCopy];
    [(TILanguageModelLoader *)self setModel:&v19];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }
  }

  [(TILanguageModelLoader *)self setLanguageModelClientIdentifier:v14];
  [(TILanguageModelLoader *)self setLanguageModelRecipientIdentifier:recipientCopy completion:completionCopy];
  [(TILanguageModelLoader *)self model];
  v16 = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v16)
  {
    [(TILanguageModelLoader *)self model];
    (*(*v21 + 288))(v21, 0);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }
  }

  [(TILanguageModelLoader *)self model];

  result.__cntrl_ = v18;
  result.__ptr_ = v17;
  return result;
}

- (shared_ptr<KB::LanguageModel>)sharedLanguageModelForClient:(id)client withRecipient:(id)recipient forLanguageLocales:(id)locales
{
  v5 = [(TILanguageModelLoader *)self sharedLanguageModelForClient:client withRecipient:recipient forLanguageLocales:locales completion:&__block_literal_global_80];
  result.__cntrl_ = v6;
  result.__ptr_ = v5;
  return result;
}

- (void)setLanguageModelRecipientIdentifier:(id)identifier completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "[TILanguageModelLoader setLanguageModelRecipientIdentifier:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Language model recipient = %@", buf, 0x16u);
  }

  [(TILanguageModelLoader *)self setRecipientIdentifier:identifierCopy];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v22 = __Block_byref_object_copy__7422;
  v23 = __Block_byref_object_dispose__7423;
  selfCopy = self;
  v24 = selfCopy;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __72__TILanguageModelLoader_setLanguageModelRecipientIdentifier_completion___block_invoke;
  v16 = &unk_278730870;
  v19 = completionCopy;
  v20 = buf;
  v17 = identifierCopy;
  v18 = selfCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  v11 = _Block_copy(&v13);
  [(TILanguageModelLoader *)selfCopy lookupRecordForRecipientIdentifier:v10 completionHandler:v11, v13, v14, v15, v16];

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __72__TILanguageModelLoader_setLanguageModelRecipientIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(*(*(a1 + 56) + 8) + 40) recipientIdentifier];
  LODWORD(v7) = [v7 _string:v5 matchesString:v8];

  if (v7)
  {
    v9 = [TILanguageModelAdaptationContext alloc];
    v10 = [*(*(*(a1 + 56) + 8) + 40) clientIdentifier];
    v11 = [(TILanguageModelAdaptationContext *)v9 initWithClientIdentifier:v10 andRecipientRecord:v6];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 32);
      *v20 = 136315906;
      *&v20[4] = "[TILanguageModelLoader setLanguageModelRecipientIdentifier:completion:]_block_invoke";
      *&v20[12] = 2112;
      *&v20[14] = v11;
      v21 = 2112;
      v22 = v19;
      v23 = 2112;
      v24 = v6;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Language model adaptation context = %@, recipient = %@ (%@)", v20, 0x2Au);
    }

    v12 = *(*(*(a1 + 56) + 8) + 40);
    if (v12)
    {
      [v12 model];
      v13 = *v20;
    }

    else
    {
      v13 = 0;
      *v20 = 0;
      *&v20[8] = 0;
    }

    (*(*v13 + 280))(v13, [(TILanguageModelAdaptationContext *)v11 recipientContext]);
    if (*&v20[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v20[8]);
    }

    [*(*(*(a1 + 56) + 8) + 40) setAdaptationContext:v11];
  }

  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) adaptationContext];
  (*(v14 + 16))(v14, v15);

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *MEMORY[0x277D85DE8];
}

- (void)lookupRecordForRecipientIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([identifierCopy length])
  {
    v8 = +[TILanguageModelLoaderManager recipientRecords];
    v9 = [v8 objectForKey:identifierCopy];

    if (v9)
    {
      if ([v9 count])
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      (handlerCopy)[2](handlerCopy, identifierCopy, v10);
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __78__TILanguageModelLoader_lookupRecordForRecipientIdentifier_completionHandler___block_invoke;
      v11[3] = &unk_278730F48;
      v12 = identifierCopy;
      v13 = handlerCopy;
      [(TILanguageModelLoader *)self findRecordsMatchingRecipient:v12 completionHandler:v11];
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, identifierCopy, 0);
  }
}

void __78__TILanguageModelLoader_lookupRecordForRecipientIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = v3;
  TIDispatchAsync();
}

void __78__TILanguageModelLoader_lookupRecordForRecipientIdentifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v7 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if ([v7 count])
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  (*(v2 + 16))(v2, v3, v4);
  v5 = +[TILanguageModelLoaderManager recipientRecords];
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  [v5 setObject:v6 forKey:*(a1 + 40)];
}

- (void)findRecordsMatchingRecipient:(id)recipient completionHandler:(id)handler
{
  recipientCopy = recipient;
  handlerCopy = handler;
  contactFetchingDelegate = [(TILanguageModelLoader *)self contactFetchingDelegate];

  if (contactFetchingDelegate)
  {
    contactFetchingDelegate2 = [(TILanguageModelLoader *)self contactFetchingDelegate];
    v10 = [contactFetchingDelegate2 recordsMatchingRecipient:recipientCopy];

    handlerCopy[2](handlerCopy, v10);
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] setWithObject:recipientCopy];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__TILanguageModelLoader_findRecordsMatchingRecipient_completionHandler___block_invoke;
    v12[3] = &unk_278730848;
    v13 = handlerCopy;
    TIAddressBookFindRecordsMatchingRecipientsAsync(v11, v12);
  }
}

- (void)setLanguageModelClientIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = MEMORY[0x277CCACA8];
  clientIdentifier = [(TILanguageModelLoader *)self clientIdentifier];
  LOBYTE(v5) = [v5 _string:identifierCopy matchesString:clientIdentifier];

  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "[TILanguageModelLoader setLanguageModelClientIdentifier:]";
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Language model client = %@", buf, 0x16u);
    }

    [(TILanguageModelLoader *)self setClientIdentifier:identifierCopy];
    [(TILanguageModelLoader *)self model];
    (*(**buf + 272))();
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
    }

    if (__offlineTrainingEnabled == 1)
    {
      v7 = +[TILanguageModelLoaderManager knownClients];
      v8 = [v7 objectForKey:identifierCopy];

      if (!v8)
      {
        v9 = +[TILanguageModelLoaderManager knownClients];
        [v9 setObject:identifierCopy forKey:identifierCopy];

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v17 = __Block_byref_object_copy__7422;
        v18 = __Block_byref_object_dispose__7423;
        selfCopy = self;
        cntrl = selfCopy->_model.__cntrl_;
        v15[0] = selfCopy->_model.__ptr_;
        v15[1] = cntrl;
        if (cntrl)
        {
          atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __58__TILanguageModelLoader_setLanguageModelClientIdentifier___block_invoke;
        v12[3] = &unk_278733648;
        v14 = buf;
        v13 = identifierCopy;
        KB::LanguageModel::background_load(v15, v12);
        if (cntrl)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__TILanguageModelLoader_setLanguageModelClientIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  TIDispatchAsync();
}

void __58__TILanguageModelLoader_setLanguageModelClientIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    [v2 model];
    v2 = v10;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v3 = (*(*v2 + 16))(v2);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (v5)
    {
      [v5 model];
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    [v5 performLearningIfNecessaryForClient:v4 withModel:&v8];
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (shared_ptr<KB::LanguageModel>)newLanguageModelForLanguageLocales:(id)locales
{
  v5 = v3;
  v41 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v7 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:&stru_283FDFAF8 andRecipientRecord:0];
  v8 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:self->_modelLocaleIdentifier];
  *v5 = 0;
  v5[1] = 0;
  if ([(TILanguageModelLoader *)self multilingualLanguageModelBundleExists]&& _os_feature_enabled_impl())
  {
    v32 = v8;
    v34 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      modelLocaleIdentifier = self->_modelLocaleIdentifier;
      *buf = 136315650;
      *&buf[4] = "[TILanguageModelLoader newLanguageModelForLanguageLocales:]";
      *&buf[12] = 2112;
      *&buf[14] = modelLocaleIdentifier;
      v39 = 2112;
      v40 = localesCopy;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Loading multilingual language model (%@) for languages: %@", buf, 0x20u);
    }

    customResourcePaths = [(TILanguageModelLoader *)self customResourcePaths];
    dynamicResourcePath = [(TILanguageModelLoader *)self dynamicResourcePath];
    isMultiLingualModeEnabled = [(TILanguageModelLoader *)self isMultiLingualModeEnabled];
    isSiriMode = [(TILanguageModelLoader *)self isSiriMode];
    validEnglishTransformerMultilingualConfig = [(TILanguageModelLoader *)self validEnglishTransformerMultilingualConfig];
    trialParameters = [(TILanguageModelLoader *)self trialParameters];
    inlineCompletionPrecision = [(TILanguageModelLoader *)self inlineCompletionPrecision];
    BYTE4(v31) = [(TILanguageModelLoader *)self isInlineCompletionEnabled];
    LODWORD(v31) = inlineCompletionPrecision;
    BYTE2(v30) = validEnglishTransformerMultilingualConfig;
    BYTE1(v30) = isSiriMode;
    LOBYTE(v30) = isMultiLingualModeEnabled;
    v8 = v32;
    v7 = v34;
    [TILanguageModelLoaderManager modelForLocale:"modelForLocale:isMultilingualModel:languageLocales:adaptationContext:staticResourcePaths:dynamicResourcePath:isMultiLingualModeEnabled:isSiriMode:validEnglishTransformerMultilingualConfig:trialParameters:inlineCompletionPrecision:isInlineCompletionEnabled:" isMultilingualModel:v32 languageLocales:1 adaptationContext:localesCopy staticResourcePaths:v34 dynamicResourcePath:customResourcePaths isMultiLingualModeEnabled:dynamicResourcePath isSiriMode:v30 validEnglishTransformerMultilingualConfig:trialParameters trialParameters:v31 inlineCompletionPrecision:? isInlineCompletionEnabled:?];
    v17 = *buf;
    v18 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    *v5 = v17;
    v5[1] = v18;
  }

  else if ([(TILanguageModelLoader *)self monolingualLanguageModelBundleExists:localesCopy])
  {
    v33 = v8;
    v35 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_modelLocaleIdentifier;
      *buf = 136315650;
      *&buf[4] = "[TILanguageModelLoader newLanguageModelForLanguageLocales:]";
      *&buf[12] = 2112;
      *&buf[14] = v19;
      v39 = 2112;
      v40 = localesCopy;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Loading monolingual language model (%@) for languages: %@", buf, 0x20u);
    }

    customResourcePaths2 = [(TILanguageModelLoader *)self customResourcePaths];
    dynamicResourcePath2 = [(TILanguageModelLoader *)self dynamicResourcePath];
    isMultiLingualModeEnabled2 = [(TILanguageModelLoader *)self isMultiLingualModeEnabled];
    isSiriMode2 = [(TILanguageModelLoader *)self isSiriMode];
    validEnglishTransformerMultilingualConfig2 = [(TILanguageModelLoader *)self validEnglishTransformerMultilingualConfig];
    trialParameters2 = [(TILanguageModelLoader *)self trialParameters];
    inlineCompletionPrecision2 = [(TILanguageModelLoader *)self inlineCompletionPrecision];
    BYTE4(v31) = [(TILanguageModelLoader *)self isInlineCompletionEnabled];
    LODWORD(v31) = inlineCompletionPrecision2;
    BYTE2(v30) = validEnglishTransformerMultilingualConfig2;
    BYTE1(v30) = isSiriMode2;
    LOBYTE(v30) = isMultiLingualModeEnabled2;
    v8 = v33;
    v7 = v35;
    [TILanguageModelLoaderManager modelForLocale:"modelForLocale:isMultilingualModel:languageLocales:adaptationContext:staticResourcePaths:dynamicResourcePath:isMultiLingualModeEnabled:isSiriMode:validEnglishTransformerMultilingualConfig:trialParameters:inlineCompletionPrecision:isInlineCompletionEnabled:" isMultilingualModel:v33 languageLocales:0 adaptationContext:localesCopy staticResourcePaths:v35 dynamicResourcePath:customResourcePaths2 isMultiLingualModeEnabled:dynamicResourcePath2 isSiriMode:v30 validEnglishTransformerMultilingualConfig:trialParameters2 trialParameters:v31 inlineCompletionPrecision:? isInlineCompletionEnabled:?];
    v17 = *buf;
    v18 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    *v5 = v17;
    v5[1] = v18;
  }

  else
  {
    [(TILanguageModelLoader *)self stubLanguageModelForLanguageLocales:localesCopy withModelLocale:v8 withAdaptationContext:v7];
    v17 = *buf;
    v18 = *&buf[8];
    *v5 = *buf;
    v5[1] = v18;
  }

  v36 = v17;
  v37 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(TILanguageModelLoader *)self loadLanguageModel:&v36];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v29 = *MEMORY[0x277D85DE8];
  result.__cntrl_ = v28;
  result.__ptr_ = v27;
  return result;
}

- (BOOL)multilingualLanguageModelBundleExists
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(TILanguageModelLoader *)self usesLinguisticContext]&& self->_isMultilingualModel)
  {
    v3 = self->_modelLocaleIdentifier;
    if (v3)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      staticResourcePaths = [(TILanguageModelLoader *)self staticResourcePaths];
      v5 = [staticResourcePaths countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(staticResourcePaths);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            [(TILanguageModelLoader *)self isSiriMode];
            v10 = TIResourcePathForInputMode();

            if (v10)
            {
              v11 = 1;
              goto LABEL_15;
            }
          }

          v6 = [staticResourcePaths countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v11 = 0;
LABEL_15:
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)monolingualLanguageModelBundleExists:(id)exists
{
  v20 = *MEMORY[0x277D85DE8];
  if ([exists count] == 1 && !self->_isMultilingualModel)
  {
    v5 = self->_modelLocaleIdentifier;
    if ([(__CFString *)v5 hasPrefix:@"ars"])
    {

      v5 = @"ar";
    }

    if ([(TILanguageModelLoader *)self usesLinguisticContext])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      staticResourcePaths = [(TILanguageModelLoader *)self staticResourcePaths];
      v7 = [staticResourcePaths countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(staticResourcePaths);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            [(TILanguageModelLoader *)self isSiriMode];
            v12 = TIResourcePathForInputMode();

            if (v12)
            {
              v4 = 1;
              goto LABEL_18;
            }
          }

          v8 = [staticResourcePaths countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v4 = 0;
LABEL_18:
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)performLearningIfNecessaryForClient:(id)client withModel:(shared_ptr<KB::LanguageModel>)model
{
  clientCopy = client;
  dynamicResourcePath = [(TILanguageModelLoader *)self dynamicResourcePath];

  if (dynamicResourcePath)
  {
    v7 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
    [v7 lastOfflineAdaptationTimeForApp:clientCopy];
    v9 = v8;

    if (v9 == 0.0)
    {
      v10 = dispatch_time(0, 20000000000);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __71__TILanguageModelLoader_performLearningIfNecessaryForClient_withModel___block_invoke;
      v11[3] = &unk_278731048;
      v12 = clientCopy;
      v13 = v9;
      dispatch_after(v10, MEMORY[0x277D85CD0], v11);
    }
  }
}

void __71__TILanguageModelLoader_performLearningIfNecessaryForClient_withModel___block_invoke(uint64_t a1)
{
  v3 = [[TILanguageModelOfflineLearningStrategyMecabraFavonius alloc] initWithClientIdentifier:*(a1 + 32)];
  v2 = +[TILanguageModelOfflineLearningAgent sharedLearningAgent];
  [v2 performLearningIfNecessaryWithStrategy:v3 lastAdaptationTime:*(a1 + 40)];
}

- (void)flushDynamicLearningCaches
{
  ptr = self->_model.__ptr_;
  if (ptr)
  {
    (*(*ptr + 592))(ptr, 0);
  }
}

- (void)clearDynamicLearningCaches
{
  ptr = self->_model.__ptr_;
  if (ptr)
  {
    (*(*ptr + 120))();
  }
}

- (NSArray)staticResourcePaths
{
  v40 = *MEMORY[0x277D85DE8];
  customResourcePaths = self->_customResourcePaths;
  if (customResourcePaths)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v37 = "[TILanguageModelLoader staticResourcePaths]";
      v38 = 2112;
      v39 = customResourcePaths;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Using custom static resource paths for LM loader: %@", buf, 0x16u);
      customResourcePaths = self->_customResourcePaths;
    }

    allObjects = customResourcePaths;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = [TIInputMode inputModeWithIdentifier:self->_modelLocaleIdentifier isSiriMode:[(TILanguageModelLoader *)self isSiriMode]];
    v7 = UIKeyboardSystemLanguageModelPathsForInputMode(v6);

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v30 + 1) + 8 * i)];
          uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
          path = [uRLByDeletingLastPathComponent path];

          if (path)
          {
            [(NSArray *)v5 addObject:path];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_mobileAssets;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [MEMORY[0x277CBEBC0] URLWithString:{*(*(&v26 + 1) + 8 * j), v26}];
          uRLByDeletingLastPathComponent2 = [v21 URLByDeletingLastPathComponent];
          path2 = [uRLByDeletingLastPathComponent2 path];

          if (path2)
          {
            [(NSArray *)v5 addObject:path2];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v37 = "[TILanguageModelLoader staticResourcePaths]";
      v38 = 2112;
      v39 = v5;
      _os_log_debug_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s  Static resource paths for LM loader: %@", buf, 0x16u);
    }

    allObjects = [(NSArray *)v5 allObjects];
  }

  v24 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (TILanguageModelLoader)initWithModelLocaleIdentifier:(id)identifier isMultilingualModel:(BOOL)model customResourcePaths:(id)paths dynamicResourcePath:(id)path mobileAssets:(id)assets usesLinguisticContext:(BOOL)context isMultiLingualModeEnabled:(BOOL)enabled isSiriMode:(BOOL)self0 validEnglishTransformerMultilingualConfig:(BOOL)self1 trialParameters:(id)self2 inlineCompletionPrecision:(int)self3 isInlineCompletionEnabled:(BOOL)self4
{
  identifierCopy = identifier;
  pathsCopy = paths;
  pathCopy = path;
  assetsCopy = assets;
  parametersCopy = parameters;
  v31.receiver = self;
  v31.super_class = TILanguageModelLoader;
  v24 = [(TILanguageModelLoader *)&v31 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_modelLocaleIdentifier, identifier);
    v25->_isMultilingualModel = model;
    v25->_multiLingualModeEnabled = enabled;
    v25->_isSiriMode = mode;
    v25->_validEnglishTransformerMultilingualConfig = config;
    v26 = [pathCopy copy];
    dynamicResourcePath = v25->_dynamicResourcePath;
    v25->_dynamicResourcePath = v26;

    objc_storeStrong(&v25->_mobileAssets, assets);
    v25->_usesLinguisticContext = context;
    objc_storeStrong(&v25->_customResourcePaths, paths);
    objc_storeStrong(&v25->_trialParameters, parameters);
    v25->_inlineCompletionPrecision = precision;
    v25->_isInlineCompletionEnabled = completionEnabled;
  }

  return v25;
}

- (void)unwireLanguageModelMemory
{
  [(TILanguageModelLoader *)self model];
  if (v6)
  {
    [(TILanguageModelLoader *)self model];
    v3 = (*(*v4 + 16))();
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    v3 = 0;
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v3)
  {
    [(TILanguageModelLoader *)self model];
    (*(*v6 + 216))();
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }
}

@end