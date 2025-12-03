@interface TILanguageModelOfflineLearningHandleFavonius
- (RefPtr<KB::DictionaryContainer>)dictionaries;
- (TILanguageModelOfflineLearningHandleFavonius)initWithInputMode:(id)mode;
- (id).cxx_construct;
- (shared_ptr<KB::LanguageModel>)currentModel;
- (void)adaptToParagraph:(id)paragraph timeStamp:(double)stamp adaptationType:(int)type;
- (void)didFinishLearning;
- (void)load;
- (void)setCurrentModel:(shared_ptr<KB::LanguageModel>)model;
- (void)updateAdaptationContext:(id)context;
@end

@implementation TILanguageModelOfflineLearningHandleFavonius

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

- (RefPtr<KB::DictionaryContainer>)dictionaries
{
  m_ptr = self->_dictionaries.m_ptr;
  *v2 = m_ptr;
  if (m_ptr)
  {
    atomic_fetch_add(m_ptr, 1u);
  }

  return self;
}

- (void)setCurrentModel:(shared_ptr<KB::LanguageModel>)model
{
  p_currentModel = &self->_currentModel;
  v5 = *model.__ptr_;
  v4 = *(model.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_currentModel.__cntrl_;
  p_currentModel->__ptr_ = v5;
  p_currentModel->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (shared_ptr<KB::LanguageModel>)currentModel
{
  cntrl = self->_currentModel.__cntrl_;
  *v2 = self->_currentModel.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)didFinishLearning
{
  if ([(TILanguageModelOfflineLearningHandle *)self isValid])
  {
    [(TILanguageModelOfflineLearningHandleFavonius *)self currentModel];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v3)
    {
      TIDispatchSync();
    }
  }
}

void __65__TILanguageModelOfflineLearningHandleFavonius_didFinishLearning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) currentModel];
  (*(*v1 + 592))();
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

- (void)adaptToParagraph:(id)paragraph timeStamp:(double)stamp adaptationType:(int)type
{
  paragraphCopy = paragraph;
  v5 = paragraphCopy;
  TIDispatchSync();
}

void __90__TILanguageModelOfflineLearningHandleFavonius_adaptToParagraph_timeStamp_adaptationType___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_5;
  }

  [v2 currentModel];
  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  [v3 dictionaries];
LABEL_6:
  if ([*(a1 + 40) length] <= 0x3FFE)
  {
    if ((*(*v7 + 384))(v7, *(a1 + 40)))
    {
      v4 = v7;
      KB::utf8_string(*(a1 + 40), v9);
      (*(*v4 + 392))(v4, v9, &v6, 0, *(a1 + 56), *(a1 + 48));
      if (v10)
      {
        if (v9[6] == 1)
        {
          free(v10);
        }
      }
    }
  }

  if (v6)
  {
    WTF::RefCounted<KB::DictionaryContainer>::deref(v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)load
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = +[TIAssetManager sharedAssetManager];
  inputMode = [(TILanguageModelOfflineLearningHandle *)self inputMode];
  v5 = [v3 ddsAssetContentItemsWithContentType:@"Lexicon" inputMode:inputMode filteredWithRegion:0];

  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v77 count:16];
  selfCopy = self;
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v6);
        }

        path = [*(*(&v49 + 1) + 8 * i) path];
        v11Path = [path path];

        if ([v11Path hasSuffix:@".dat"])
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v14 = [defaultManager fileExistsAtPath:v11Path];

          if (v14)
          {
            goto LABEL_11;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v49 objects:v77 count:16];
    }

    while (v8);
    v11Path = 0;
LABEL_11:
    self = selfCopy;
  }

  else
  {
    v11Path = 0;
  }

  p_cache = TICoreAnalyticsEventDispatcher.cache;
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v16 = TIOSLogFacility();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s DDS found static dict path: %@", "-[TILanguageModelOfflineLearningHandleFavonius load]", v11Path];
    *buf = 138412290;
    v61 = v42;
    _os_log_debug_impl(&dword_22CA55000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (!v11Path)
  {
    inputMode2 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
    languageWithRegion = [inputMode2 languageWithRegion];
    v11Path = UIKeyboardStaticUnigramsFile(languageWithRegion);
  }

  v19 = +[TIAssetManager sharedAssetManager];
  inputMode3 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
  v21 = [v19 ddsAssetContentItemsWithContentType:@"LexiconDelta" inputMode:inputMode3 filteredWithRegion:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v22 = v21;
  v23 = [v22 countByEnumeratingWithState:&v45 objects:v76 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v46;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v46 != v25)
        {
          objc_enumerationMutation(v22);
        }

        path2 = [*(*(&v45 + 1) + 8 * j) path];
        v27Path = [path2 path];

        if ([v27Path hasSuffix:@".dat"])
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v30 = [defaultManager2 fileExistsAtPath:v27Path];

          if (v30)
          {
            goto LABEL_29;
          }
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v45 objects:v76 count:16];
    }

    while (v24);
    v27Path = 0;
LABEL_29:
    self = selfCopy;
    p_cache = (TICoreAnalyticsEventDispatcher + 16);
  }

  else
  {
    v27Path = 0;
  }

  if (p_cache[367] != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v31 = TIOSLogFacility();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s DDS found delta dict path: %@", "-[TILanguageModelOfflineLearningHandleFavonius load]", v27Path];
    *buf = 138412290;
    v61 = v43;
    _os_log_debug_impl(&dword_22CA55000, v31, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (!v27Path)
  {
    inputMode4 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
    languageWithRegion2 = [inputMode4 languageWithRegion];
    v34 = [TIInputMode inputModeWithIdentifier:languageWithRegion2];
    v27Path = UIKeyboardDeltaLexiconPathForInputMode(v34);
  }

  inputMode5 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
  locale = [inputMode5 locale];
  localeIdentifier = [locale localeIdentifier];

  v38 = TILexiconIDForLocaleIdentifier([localeIdentifier UTF8String]);
  inputMode6 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
  if ([inputMode6 wantsMultilingualUnionOVS])
  {
    inputMode7 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
    wantsMultilingualUnionOVS = [inputMode7 wantsMultilingualUnionOVS];
  }

  else
  {
    wantsMultilingualUnionOVS = 0;
  }

  KB::utf8_string(localeIdentifier, buf);
  KB::utf8_string(v11Path, v62);
  KB::utf8_string(v27Path, v63);
  v64 = 0x100000;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0x100000;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  LODWORD(v74) = v38;
  BYTE4(v74) = wantsMultilingualUnionOVS;
  v75 = 1065353216;
  KB::String::String(&v53, buf);
  KB::String::String(&v54, v62);
  KB::String::String(&v55, v63);
  KB::String::String(&v56, &v64);
  KB::String::String(&v57, &v69);
  v58 = v74;
  v59 = v75;
  operator new();
}

- (void)updateAdaptationContext:(id)context
{
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4012000000;
  v21 = __Block_byref_object_copy__17991;
  v22 = __Block_byref_object_dispose__17992;
  v23 = "";
  v24 = 0;
  v25 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __72__TILanguageModelOfflineLearningHandleFavonius_updateAdaptationContext___block_invoke;
  v14 = &unk_2787337C0;
  selfCopy = self;
  v17 = &v18;
  v5 = contextCopy;
  v16 = v5;
  TIDispatchSync();
  (*(*v19[6] + 96))(v19[6]);
  v6 = v19[7];
  v9 = v19[6];
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(TILanguageModelOfflineLearningHandleFavonius *)self setCurrentModel:&v9];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  [(TILanguageModelOfflineLearningHandle *)self setCurrentAdaptationContext:v5];
  lastAdaptationDate = [(TILanguageModelOfflineLearningHandle *)self lastAdaptationDate];

  if (!lastAdaptationDate)
  {
    v8 = MEMORY[0x277D85CD0];
    TIDispatchSync();
  }

  _Block_object_dispose(&v18, 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

void __72__TILanguageModelOfflineLearningHandleFavonius_updateAdaptationContext___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = +[TIKeyboardInputManager keyboardUserDirectory];
  v2 = +[TIAssetManager sharedAssetManager];
  v3 = [*(a1 + 32) inputMode];
  v4 = [v2 ddsAssetContentItemsWithContentType:@"LanguageModel" inputMode:v3 filteredWithRegion:0];

  v5 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s updateAdaptationContext TI: %@", "-[TILanguageModelOfflineLearningHandleFavonius updateAdaptationContext:]_block_invoke", v4];
    *buf = 138412290;
    *&buf[4] = v6;
    _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v7 = [*(a1 + 32) inputMode];
  v8 = [v7 preferredModelLocaleIdentifier];
  v9 = [*(a1 + 32) inputMode];
  v10 = [v9 preferredModelLocaleIsMultilingual];
  v11 = [*(a1 + 32) inputMode];
  v12 = [v11 isSiriMode];
  v13 = [*(a1 + 32) inputMode];
  LOBYTE(v24) = [v13 doesSupportInlineCompletion];
  BYTE2(v23) = v12;
  LOWORD(v23) = 0;
  v14 = [TILanguageModelLoaderManager sharedLanguageModelLoaderForModelLocaleIdentifier:"sharedLanguageModelLoaderForModelLocaleIdentifier:isMultilingualModel:customResourcePaths:dynamicResourcePath:mobileAssets:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:isSiriMode:trialParameters:isInlineCompletionEnabled:" isMultilingualModel:v8 customResourcePaths:v10 dynamicResourcePath:0 mobileAssets:v25 usesLinguisticContext:v4 isMultiLingualModeEnabled:1 validEnglishTransformerMultilingualConfig:v23 isSiriMode:0 trialParameters:v24 isInlineCompletionEnabled:?];

  v15 = *(a1 + 40);
  v16 = [*(a1 + 32) inputMode];
  v17 = [v16 locale];
  v26 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  if (v14)
  {
    [v14 languageModelForAdaptationContext:v15 languageLocales:v18];
    v19 = *buf;
  }

  else
  {
    v19 = 0uLL;
    *buf = 0u;
  }

  v20 = *(*(a1 + 48) + 8);
  memset(buf, 0, sizeof(buf));
  v21 = *(v20 + 56);
  *(v20 + 48) = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __72__TILanguageModelOfflineLearningHandleFavonius_updateAdaptationContext___block_invoke_57(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 48);
  if ((*(*v2 + 16))(v2))
  {
    v3 = *(*(*(a1 + 40) + 8) + 48);
    (*(*v3 + 376))(v3);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:Current];
  [*(a1 + 32) setLastAdaptationDate:v5];
}

- (TILanguageModelOfflineLearningHandleFavonius)initWithInputMode:(id)mode
{
  v42 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v11.receiver = self;
  v11.super_class = TILanguageModelOfflineLearningHandleFavonius;
  if ([(TILanguageModelOfflineLearningHandle *)&v11 initWithInputMode:modeCopy])
  {
    locale = [modeCopy locale];
    localeIdentifier = [locale localeIdentifier];

    v7 = TILexiconIDForLocaleIdentifier([localeIdentifier UTF8String]);
    if ([modeCopy wantsMultilingualUnionOVS])
    {
      wantsMultilingualUnionOVS = [modeCopy wantsMultilingualUnionOVS];
    }

    else
    {
      wantsMultilingualUnionOVS = 0;
    }

    KB::utf8_string(localeIdentifier, v19);
    v20 = 0x100000;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0x100000;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0x100000;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0x100000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    LODWORD(v40) = v7;
    BYTE4(v40) = wantsMultilingualUnionOVS;
    v41 = 1065353216;
    KB::String::String(&v12, v19);
    KB::String::String(&v13, &v20);
    KB::String::String(&v14, &v25);
    KB::String::String(&v15, &v30);
    KB::String::String(&v16, &v35);
    v17 = v40;
    v18 = v41;
    operator new();
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

@end