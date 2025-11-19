@interface TIKeyboardInputManager_mul
+ (id)textContentTypesPreferringSecondaryInputMode;
+ (int)primaryScriptForLanguageWithRegion:(id)a3;
- (BOOL)adjustLexiconInfoIfNeeded:(id *)a3 givenInputMode:(id)a4;
- (BOOL)containsActiveLanguage:(id)a3 language:(id)a4;
- (BOOL)isHighMemoryManager;
- (BOOL)isUsingMultilingual;
- (BOOL)shouldDynamicallySwitchBetweenPrimaryAndSecondaryWrapper;
- (BOOL)shouldPassAlternativeInputAsPrediction:(id)a3 isRecognized:(BOOL)a4;
- (BOOL)shouldUpdateDictionary;
- (BOOL)stringIsRecognizedByAlternativeIM:(id)a3;
- (BOOL)updateLanguageModelForKeyboardState;
- (BOOL)usesRetrocorrection;
- (BOOL)validEnglishTransformerMultilingualConfig;
- (NSDictionary)keyLayoutMap;
- (NSDictionary)keyLayoutMapReverse;
- (TIKeyboardFeatureSpecialization)keyboardFeatureSpecializationSecondary;
- (TIKeyboardInputManager_mul)initWithConfig:(id)a3 keyboardState:(id)a4;
- (USet)validUSetForAutocorrectionSecondary;
- (_NSRange)acceptableRangeFromRange:(_NSRange)a3 inText:(id)a4 withSelectionLocation:(unint64_t)a5;
- (float)weightForInputMode:(id)a3;
- (id)alternativeInputMode;
- (id)candidateArray:(id)a3 withCandidateUniquelyInsertedToFront:(id)a4;
- (id)chosenInputMode;
- (id)clauseDelimitingCharacters;
- (id)currentExternalString;
- (id)externalStringToInternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4 useReverseMap:(BOOL)a5;
- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)a3;
- (id)getBetterLexiconLocale:(BOOL *)a3;
- (id)getPlainCandidate;
- (id)handleKeyboardInput:(id)a3;
- (id)internalStringToExternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4;
- (id)internalStringToSecondaryExternal:(id)a3;
- (id)keyLayoutMapAsNearbyKeys;
- (id)keyboardConfiguration;
- (id)lexiconLocaleOfString:(id)a3 inputMode:(id)a4;
- (id)listOfModelLocalesFromActiveInputModes;
- (id)modelLoaderForModelLocaleMapping:(id)a3 customResourcePaths:(id)a4 dynamicResourcePath:(id)a5 usesLinguisticContext:(BOOL)a6 isMultiLingualModeEnabled:(BOOL)a7 validEnglishTransformerMultilingualConfig:(BOOL)a8;
- (id)modelLocaleToInputModeMapping;
- (id)resourceInputModes;
- (id)secondaryInputMode;
- (id)sentenceDelimitingCharacters;
- (id)sentencePrefixingCharacters;
- (id)sentenceTrailingCharacters;
- (id)typedStringForEmptyAutocorrection;
- (id)wordSeparatorForCandidate:(id)a3;
- (unsigned)lexiconIDForInputMode:(id)a3;
- (vector<KB::LexiconInfo,)lexiconInformationVector;
- (void)chooseBetterInputMethod;
- (void)clearInput;
- (void)didUpdateInputModeProbabilities:(id)a3;
- (void)didUpdateInputModes:(id)a3;
- (void)enumerateInputModesWithBlock:(id)a3;
- (void)handleAlternativeInput:(id)a3 givenCandidate:(id)a4;
- (void)handleCandidateAutocapitalization;
- (void)handleClearSessionGivenInput:(id)a3;
- (void)handleInputMethodChoiceFreezeGivenInput:(id)a3;
- (void)keyLayoutDidChangeTo:(id)a3;
- (void)loadDictionaries;
- (void)resume;
- (void)setInput:(id)a3;
- (void)suspend;
- (void)updateAutocorrectionListGivenOutdatedInput:(id)a3 andUpdatedInput:(id)a4;
- (void)updateInputContext;
- (void)updateLanguagePriors;
@end

@implementation TIKeyboardInputManager_mul

- (void)resume
{
  self->_choseSecondaryPrev = 0;
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_mul;
  [(TIKeyboardInputManager *)&v3 resume];
  if (![(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
  {
    [(TIKeyboardInputManager_mul *)self updateLanguagePriors];
  }
}

- (BOOL)shouldUpdateDictionary
{
  if (self->super.m_impl)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManager_mul;
    v13 = [(TIKeyboardInputManager *)&v9 shouldUpdateDictionary];
    v3 = [(TIKeyboardInputManager *)self usesFavonius];
    v4 = v11;
    if (v3 && (v11[3] & 1) == 0)
    {
      v5 = *(*(self->super.m_impl + 33) + 8);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__TIKeyboardInputManager_mul_shouldUpdateDictionary__block_invoke;
      v8[3] = &unk_27872F9A0;
      v8[4] = self;
      v8[5] = &v10;
      v8[6] = v5;
      [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v8];
      v4 = v11;
    }

    v6 = *(v4 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (NSDictionary)keyLayoutMap
{
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript]&& !self->_keyLayoutMap)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = [(TIKeyboardInputManager *)self primaryInputMode];
      v4 = [v3 originalIdentifier];
      v5 = TIInputModeGetSWLayout();
      v6 = v5;
      v7 = &stru_283FDFAF8;
      if (v5)
      {
        v7 = v5;
      }

      v8 = v7;

      v9 = [(__CFString *)v8 containsString:@"Version"];
      v10 = objc_opt_class();
      if (v9)
      {
        v11 = [v10 generateKeyLayoutMapV2];
LABEL_10:
        keyLayoutMap = self->_keyLayoutMap;
        self->_keyLayoutMap = v11;

        goto LABEL_11;
      }
    }

    else
    {
      v10 = objc_opt_class();
    }

    v11 = [v10 generateKeyLayoutMap];
    goto LABEL_10;
  }

LABEL_11:
  v13 = self->_keyLayoutMap;

  return v13;
}

- (BOOL)isUsingMultilingual
{
  v2 = [(TIKeyboardInputManager *)self languageSelectionController];
  v3 = [v2 activeInputModes];
  v4 = [v3 count] > 1;

  return v4;
}

- (void)clearInput
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_mul;
  [(TIKeyboardInputManager *)&v3 clearInput];
  self->_choseSecondary = 0;
  [(TIKeyboardInputManager_mul *)self setChoseSecondary:0];
  [(TIKeyboardInputManager_mul *)self setIndexOfLastDynamicSwitch:-1];
}

- (id)keyboardConfiguration
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_mul;
  v3 = [(TIKeyboardInputManager *)&v9 keyboardConfiguration];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TIKeyboardInputManager_mul_keyboardConfiguration__block_invoke;
  v7[3] = &unk_27872F7C8;
  v8 = v4;
  v5 = v4;
  [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v7];
  [v3 setMultilingualLanguages:v5];

  return v3;
}

- (id)modelLocaleToInputModeMapping
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__TIKeyboardInputManager_mul_modelLocaleToInputModeMapping__block_invoke;
  v6[3] = &unk_27872F7C8;
  v4 = v3;
  v7 = v4;
  [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v6];

  return v4;
}

- (BOOL)updateLanguageModelForKeyboardState
{
  v143[1] = *MEMORY[0x277D85DE8];
  v3 = [(TIKeyboardInputManager *)self config];
  [v3 usesWordNgramModel];

  v4 = [(TIKeyboardInputManager *)self config];
  if ([v4 usesAdaptation])
  {
    v5 = [(TIKeyboardInputManager *)self dynamicResourcePath];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(TIKeyboardInputManager *)self config];
  if ([v6 usesCustomNgramModel])
  {
    v7 = [(TIKeyboardInputManager *)self config];
    v8 = [v7 ngramModelPath];
    v143[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:1];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(TIKeyboardInputManager *)self languageSelectionController];
  v86 = v10;
  if (v10)
  {
    v11 = [v10 activeInputModes];
    [v11 count];
  }

  [(TIKeyboardInputManager_mul *)self validEnglishTransformerMultilingualConfig];
  v12 = [(TIKeyboardInputManager_mul *)self listOfModelLocalesFromActiveInputModes];
  v94 = [(TIKeyboardInputManager_mul *)self modelLocaleToInputModeMapping];
  v87 = v9;
  v88 = v5;
  v93 = [TIKeyboardInputManager_mul modelLoaderForModelLocaleMapping:"modelLoaderForModelLocaleMapping:customResourcePaths:dynamicResourcePath:usesLinguisticContext:isMultiLingualModeEnabled:validEnglishTransformerMultilingualConfig:" customResourcePaths:? dynamicResourcePath:? usesLinguisticContext:? isMultiLingualModeEnabled:? validEnglishTransformerMultilingualConfig:?];
  v13 = [(TIKeyboardInputManager *)self keyboardState];
  v92 = [v13 clientIdentifier];

  v95 = self;
  v14 = [(TIKeyboardInputManager *)self keyboardState];
  v91 = [v14 recipientIdentifier];

  v133 = 0;
  v132 = 0;
  v134 = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x5812000000;
  v127 = __Block_byref_object_copy__94;
  v128 = __Block_byref_object_dispose__95;
  v129 = "";
  memset(v130, 0, sizeof(v130));
  v131 = 1065353216;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v12;
  v96 = [obj countByEnumeratingWithState:&v120 objects:v142 count:16];
  if (v96)
  {
    v90 = *v121;
    do
    {
      for (i = 0; i != v96; ++i)
      {
        if (*v121 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v120 + 1) + 8 * i);
        v17 = [v93 objectForKeyedSubscript:v16];
        v18 = [v94 objectForKeyedSubscript:v16];
        v19 = objc_opt_new();
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v20 = v18;
        v21 = [v20 countByEnumeratingWithState:&v116 objects:v141 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v117;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v117 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [*(*(&v116 + 1) + 8 * j) locale];
              [v19 addObject:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v116 objects:v141 count:16];
          }

          while (v22);
        }

        v111[0] = 0;
        v111[1] = v111;
        v112 = 0x3032000000;
        v113 = __Block_byref_object_copy__2616;
        v114 = __Block_byref_object_dispose__2617;
        v26 = v95;
        v115 = v26;
        v110 = 0u;
        v27 = [(TIKeyboardInputManager *)v26 keyboardState];
        v28 = [v27 clientIdentifier];
        v29 = [(TIKeyboardInputManager *)v26 keyboardState];
        v30 = [v29 recipientIdentifier];
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __65__TIKeyboardInputManager_mul_updateLanguageModelForKeyboardState__block_invoke;
        v106[3] = &unk_2787314C8;
        v107 = v92;
        v109 = v111;
        v31 = v91;
        v32 = 0uLL;
        v108 = v31;
        if (v17)
        {
          [v17 sharedLanguageModelForClient:v28 withRecipient:v30 forLanguageLocales:v19 completion:{v106, 0.0}];
          v32 = *buf;
        }

        memset(buf, 0, sizeof(buf));
        v110 = v32;
        v33 = v32;

        std::string::basic_string[abi:nn200100]<0>(__p, [v16 UTF8String]);
        if (*(&v33 + 1))
        {
          atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
          v138 = 0u;
          v139 = 0u;
          *buf = 0u;
          v140 = 1065353216;
          atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
          v34 = *&buf[8];
          *buf = v33;
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v34);
          }
        }

        else
        {
          v138 = 0u;
          v139 = 0u;
          *&buf[8] = 0;
          v140 = 1065353216;
          *buf = v33;
        }

        v135 = __p;
        v35 = std::__hash_table<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v125 + 6, __p);
        v36 = *buf;
        memset(buf, 0, sizeof(buf));
        v37 = v35[6];
        *(v35 + 5) = v36;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v37);
        }

        if (v35[10])
        {
          v38 = v35[9];
          if (v38)
          {
            do
            {
              v39 = *v38;
              operator delete(v38);
              v38 = v39;
            }

            while (v39);
          }

          v35[9] = 0;
          v40 = v35[8];
          if (v40)
          {
            for (k = 0; k != v40; ++k)
            {
              *(v35[7] + 8 * k) = 0;
            }
          }

          v35[10] = 0;
        }

        v42 = v138;
        *&v138 = 0;
        v43 = v35[7];
        v35[7] = v42;
        if (v43)
        {
          operator delete(v43);
        }

        v44 = *(&v138 + 1);
        v45 = v139;
        v35[9] = v139;
        v35[8] = v44;
        *(&v138 + 1) = 0;
        v46 = *(&v139 + 1);
        v35[10] = *(&v139 + 1);
        *(v35 + 22) = v140;
        if (v46)
        {
          v47 = *(v45 + 8);
          if ((v44 & (v44 - 1)) != 0)
          {
            if (v47 >= v44)
            {
              v47 %= v44;
            }
          }

          else
          {
            v47 &= v44 - 1;
          }

          *(v35[7] + 8 * v47) = v35 + 9;
          v139 = 0uLL;
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&v138);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
        }

        if (*(&v33 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v33 + 1));
        }

        std::vector<std::shared_ptr<KB::LanguageModel>>::push_back[abi:nn200100](&v132, &v110);
        if (v105 < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v33 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v33 + 1));
        }

        _Block_object_dispose(v111, 8);
      }

      v96 = [obj countByEnumeratingWithState:&v120 objects:v142 count:16];
    }

    while (v96);
  }

  v48 = [(TIKeyboardInputManager_mul *)v95 languageModelContainer];
  if (!v48)
  {
LABEL_63:
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v55 = TIOSLogFacility();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        v85 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading/reloading multilingual language models.", "-[TIKeyboardInputManager_mul updateLanguageModelForKeyboardState]"];
        *buf = 138412290;
        *&buf[4] = v85;
        _os_log_debug_impl(&dword_22CA55000, v55, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    memset(buf, 0, sizeof(buf));
    *&v138 = 0;
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __65__TIKeyboardInputManager_mul_updateLanguageModelForKeyboardState__block_invoke_101;
    v103[3] = &unk_27872F978;
    v103[4] = v95;
    v103[5] = &v124;
    [(TIKeyboardInputManager_mul *)v95 enumerateInputModesWithBlock:v103];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = obj;
    v56 = [v98 countByEnumeratingWithState:&v99 objects:v136 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = 0;
      v59 = *v100;
      do
      {
        v60 = 0;
        v97 = v57;
        do
        {
          if (*v100 != v59)
          {
            objc_enumerationMutation(v98);
          }

          std::string::basic_string[abi:nn200100]<0>(v111, [*(*(&v99 + 1) + 8 * v60) UTF8String]);
          __p[0] = v111;
          v61 = std::__hash_table<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v125 + 6, v111);
          v62 = v61;
          if (v58 >= v138)
          {
            v64 = 0x6DB6DB6DB6DB6DB7 * ((v58 - *buf) >> 3);
            v65 = v64 + 1;
            if ((v64 + 1) > 0x492492492492492)
            {
              std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v138 - *buf) >> 3) > v65)
            {
              v65 = 0xDB6DB6DB6DB6DB6ELL * ((v138 - *buf) >> 3);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v138 - *buf) >> 3)) >= 0x249249249249249)
            {
              v66 = 0x492492492492492;
            }

            else
            {
              v66 = v65;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LanguageModelLexiconGroup>>(v66);
            }

            v67 = v59;
            v68 = (8 * ((v58 - *buf) >> 3));
            *v68 = v62[5];
            v69 = v62[6];
            v68[1] = v69;
            if (v69)
            {
              atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
            }

            std::unordered_map<unsigned int,float>::unordered_map((v68 + 2), (v62 + 7));
            v70 = *&buf[8];
            v71 = *buf;
            v72 = *&buf[8] - *buf;
            if (*&buf[8] != *buf)
            {
              v73 = 0;
              v74 = -8 * ((*&buf[8] - *buf) >> 3) + 56 * v64;
              do
              {
                v75 = v74 + v73;
                v76 = (v71 + v73);
                *v75 = *(v71 + v73);
                *v76 = 0;
                v76[1] = 0;
                v77 = *(v71 + v73 + 16);
                v76[2] = 0;
                *(v75 + 16) = v77;
                v78 = *(v71 + v73 + 32);
                *(v75 + 24) = *(v71 + v73 + 24);
                *(v71 + v73 + 24) = 0;
                *(v74 + v73 + 32) = v78;
                v79 = *(v71 + v73 + 40);
                *(v75 + 40) = v79;
                *(v75 + 48) = *(v71 + v73 + 48);
                if (v79)
                {
                  v80 = *(v78 + 8);
                  v81 = *(v75 + 24);
                  if ((v81 & (v81 - 1)) != 0)
                  {
                    if (v80 >= v81)
                    {
                      v80 %= v81;
                    }
                  }

                  else
                  {
                    v80 &= v81 - 1;
                  }

                  *(v77 + 8 * v80) = v74 + v73 + 32;
                  *(v71 + v73 + 32) = 0;
                  *(v71 + v73 + 40) = 0;
                }

                v73 += 56;
              }

              while (v71 + v73 != v70);
              do
              {
                std::__destroy_at[abi:nn200100]<KB::LanguageModelLexiconGroup,0>(v71);
                v71 += 56;
              }

              while (v71 != v70);
            }

            v82 = *buf;
            v58 = v68 + 7;
            *buf = v68 - v72;
            *&buf[8] = v68 + 7;
            *&v138 = 0;
            if (v82)
            {
              operator delete(v82);
            }

            v59 = v67;
            v57 = v97;
          }

          else
          {
            *v58 = v61[5];
            v63 = v61[6];
            v58[1] = v63;
            if (v63)
            {
              atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
            }

            std::unordered_map<unsigned int,float>::unordered_map((v58 + 2), (v61 + 7));
            v58 += 7;
          }

          *&buf[8] = v58;
          if (SHIBYTE(v112) < 0)
          {
            operator delete(v111[0]);
          }

          ++v60;
        }

        while (v60 != v57);
        v57 = [v98 countByEnumeratingWithState:&v99 objects:v136 count:16];
      }

      while (v57);
    }

    operator new();
  }

  memset(buf, 0, sizeof(buf));
  *&v138 = 0;
  v49 = *(v48 + 24);
  v50 = *(v48 + 32);
  if (v49 == v50)
  {
    v54 = v87;
    v53 = v88;
    if (v133 == v132)
    {
      goto LABEL_106;
    }

    goto LABEL_62;
  }

  do
  {
    std::vector<std::shared_ptr<KB::LanguageModel>>::push_back[abi:nn200100](buf, v49);
    v49 = (v49 + 56);
  }

  while (v49 != v50);
  v51 = *buf;
  v52 = v132;
  v54 = v87;
  v53 = v88;
  if (v133 - v132 != *&buf[8] - *buf)
  {
LABEL_62:
    v111[0] = buf;
    std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](v111);
    goto LABEL_63;
  }

  while (v51 != *&buf[8])
  {
    if (*v51 != *v52)
    {
      goto LABEL_62;
    }

    v51 += 2;
    v52 += 16;
  }

LABEL_106:
  v111[0] = buf;
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](v111);
  _Block_object_dispose(&v124, 8);
  std::__hash_table<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,KB::LanguageModelLexiconGroup>>>::~__hash_table(v130);
  v124 = &v132;
  std::vector<std::shared_ptr<KB::LanguageModel>>::__destroy_vector::operator()[abi:nn200100](&v124);

  v83 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)validEnglishTransformerMultilingualConfig
{
  v23 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    if (isH13ANEPresentOnIOS())
    {
      v3 = _os_feature_enabled_impl() ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(TIKeyboardInputManager *)self languageSelectionController];
    v6 = [v5 activeInputModes];

    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 languageWithRegion];
          v13 = [v12 isEqualToString:@"hi_Latn"] & v3;

          if ((v13 & 1) == 0)
          {
            v14 = [v11 languageWithRegion];
            v15 = [v14 isEqualToString:@"vi_VN"];

            if ((v15 & 1) == 0)
            {
              continue;
            }
          }

          v4 = 0;
          goto LABEL_18;
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v4 = 1;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 1;
    }

LABEL_18:
  }

  else
  {
    v4 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)listOfModelLocalesFromActiveInputModes
{
  v3 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__TIKeyboardInputManager_mul_listOfModelLocalesFromActiveInputModes__block_invoke;
  v6[3] = &unk_27872F7C8;
  v4 = v3;
  v7 = v4;
  [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v6];

  return v4;
}

- (id)resourceInputModes
{
  v3 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__TIKeyboardInputManager_mul_resourceInputModes__block_invoke;
  v6[3] = &unk_27872F7C8;
  v4 = v3;
  v7 = v4;
  [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v6];

  return v4;
}

- (void)updateLanguagePriors
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManager *)self usesFavonius]&& ![(TIKeyboardInputManager *)self isLinguisticResourceUpdateScheduled])
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v3 = TIOSLogFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Updating input mode probabilities.", "-[TIKeyboardInputManager_mul updateLanguagePriors]"];
        *buf = 138412290;
        v10 = v7;
        _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v4 = [(TIKeyboardInputManager_mul *)self languageModelContainer];
    if (v4)
    {
      v5 = *(*(self->super.m_impl + 33) + 8);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __50__TIKeyboardInputManager_mul_updateLanguagePriors__block_invoke;
      v8[3] = &unk_27872F9C8;
      v8[4] = self;
      v8[5] = v5;
      v8[6] = v4;
      [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v8];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateInputModeProbabilities:(id)a3
{
  if (!self->_choseSecondaryPrev)
  {
    [(TIKeyboardInputManager_mul *)self updateLanguagePriors];
  }
}

- (void)didUpdateInputModes:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_mul;
  [(TIKeyboardInputManager *)&v7 didUpdateInputModes:a3];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel)
  {
    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scheduling active input mode update.", "-[TIKeyboardInputManager_mul didUpdateInputModes:]"];
      *buf = 138412290;
      v9 = v6;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  [(TIKeyboardInputManager *)self scheduleLinguisticResourceUpdateWithReason:@"Multilingual input modes changed"];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadDictionaries
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->super.m_impl)
  {
    if ([(TIKeyboardInputManager *)self usesFavonius])
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v3 = TIOSLogFacility();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Loading/reloading multilingual dictionaries.", "-[TIKeyboardInputManager_mul loadDictionaries]"];
          LODWORD(v20[0]) = 138412290;
          *(v20 + 4) = v17;
          _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", v20, 0xCu);
        }
      }

      m_impl = self->super.m_impl;
      v5 = [(TIKeyboardInputManager *)self primaryInputMode];
      v6 = [v5 languageWithRegion];
      KB::utf8_string(v6, v20);
      TIInputManager::set_locale_identifier(m_impl, v20);
      if (*(&v20[0] + 1) && BYTE6(v20[0]) == 1)
      {
        free(*(&v20[0] + 1));
      }

      [(TIKeyboardInputManager_mul *)self lexiconInformationVector];
      v7 = [(TIKeyboardInputManager *)self config];
      [v7 isTesting];

      v8 = [(TIKeyboardInputManager *)self languageSelectionController];
      v9 = [v8 activeInputModes];
      v10 = [v9 count];

      if (v10 >= 2)
      {
        v11 = [(TIKeyboardInputManager *)self languageSelectionController];
        v12 = [v11 activeInputModes];
        v13 = [v12 objectAtIndexedSubscript:1];

        v14 = [TIKeyboardInputManagerConfig configurationForInputMode:v13];
        [v14 usesContinuousPath];
      }

      v15 = self->super.m_impl;
      memset(&v19, 0, 24);
      std::vector<KB::LexiconInfo>::__init_with_size[abi:nn200100]<KB::LexiconInfo*,KB::LexiconInfo*>(&v19, *&v20[0], *(&v20[0] + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v20[0] + 1) - *&v20[0]) >> 4));
      TIInputManager::load_dictionaries(v15, &v19);
    }

    v18.receiver = self;
    v18.super_class = TIKeyboardInputManager_mul;
    [(TIKeyboardInputManager *)&v18 loadDictionaries];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsActiveLanguage:(id)a3 language:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) locale];
        v13 = [v12 languageCode];
        v9 |= [v13 hasPrefix:v6];
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

- (id)modelLoaderForModelLocaleMapping:(id)a3 customResourcePaths:(id)a4 dynamicResourcePath:(id)a5 usesLinguisticContext:(BOOL)a6 isMultiLingualModeEnabled:(BOOL)a7 validEnglishTransformerMultilingualConfig:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __193__TIKeyboardInputManager_mul_modelLoaderForModelLocaleMapping_customResourcePaths_dynamicResourcePath_usesLinguisticContext_isMultiLingualModeEnabled_validEnglishTransformerMultilingualConfig___block_invoke;
  v25[3] = &unk_27872F950;
  v18 = v17;
  v26 = v18;
  v27 = v14;
  v28 = self;
  v29 = v15;
  v30 = v16;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v25];
  v22 = v30;
  v23 = v18;

  return v18;
}

- (BOOL)adjustLexiconInfoIfNeeded:(id *)a3 givenInputMode:(id)a4
{
  v4 = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v7 = [a4 normalizedIdentifier];
    v8 = [(TIKeyboardInputManager *)self primaryInputMode];
    v9 = [v8 normalizedIdentifier];

    v10 = TIGetInputModeProperties();
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D6F750]];
    v12 = [v11 objectForKeyedSubscript:v7];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D6F6B8]];
    if (v13)
    {
      v14 = [TIInputMode inputModeWithIdentifier:v13];
      v15 = [(TIKeyboardInputManager *)self deltaDictionaryPathForInputMode:v14];
    }

    else
    {
      v15 = [(TIKeyboardInputManager *)self deltaDictionaryPathForInputMode:0];
    }

    v4 = v15 != 0;
    if (v15)
    {
      KB::utf8_string(v15, v18);
      KB::String::operator=(&a3->var2, v18);
      if (v19)
      {
        if (v18[6] == 1)
        {
          free(v19);
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (vector<KB::LexiconInfo,)lexiconInformationVector
{
  v54 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x5812000000;
  v38 = __Block_byref_object_copy__82;
  v39 = __Block_byref_object_dispose__83;
  v40 = "";
  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  v28 = 0;
  v29 = &v28;
  v30 = 0x4812000000;
  v31 = __Block_byref_object_copy__84;
  v32 = __Block_byref_object_dispose__85;
  v33 = "";
  memset(v34, 0, sizeof(v34));
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__TIKeyboardInputManager_mul_lexiconInformationVector__block_invoke;
  v23[3] = &unk_27872F928;
  v23[4] = self;
  v23[5] = &v28;
  v23[6] = &v24;
  v23[7] = &v35;
  [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v23];
  if (*(v25 + 24) == 1)
  {
    [(TIKeyboardInputManager *)self addMultilingualLexiconsFromDiskToVector:v29 + 6 excluding:v36 + 6];
    v5 = v29;
    [(TIKeyboardInputManager *)self lexiconInfoForMultilingualDynamic:0];
    v7 = v5[7];
    v6 = v5[8];
    if (v7 >= v6)
    {
      v9 = v5[6];
      v10 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v9) >> 4);
      if ((v10 + 1) > 0x1745D1745D1745DLL)
      {
        std::vector<unsigned long>::__throw_length_error[abi:nn200100]();
      }

      v11 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v9) >> 4);
      v12 = 2 * v11;
      if (2 * v11 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0xBA2E8BA2E8BA2ELL)
      {
        v13 = 0x1745D1745D1745DLL;
      }

      else
      {
        v13 = v12;
      }

      v43[4] = v5 + 6;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<KB::LexiconInfo>>(v13);
      }

      v14 = 176 * v10;
      std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo,void,0>(v14, &v44);
      v8 = v14 + 176;
      v15 = v5[6];
      v16 = v5[7];
      v17 = v14 + v15 - v16;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<KB::LexiconInfo>,KB::LexiconInfo*>(v15, v16, v17);
      v18 = v5[6];
      v5[6] = v17;
      v5[7] = v8;
      v19 = v5[8];
      v5[8] = 0;
      v43[2] = v18;
      v43[3] = v19;
      v43[0] = v18;
      v43[1] = v18;
      std::__split_buffer<KB::LexiconInfo>::~__split_buffer(v43);
    }

    else
    {
      std::allocator_traits<std::allocator<KB::LexiconInfo>>::construct[abi:nn200100]<KB::LexiconInfo,KB::LexiconInfo,void,0>(v5[7], &v44);
      v8 = v7 + 176;
    }

    v5[7] = v8;
    if (v53 && v52 == 1)
    {
      free(v53);
    }

    if (v51 && v50 == 1)
    {
      free(v51);
    }

    if (v49 && v48 == 1)
    {
      free(v49);
    }

    if (v47 && v46 == 1)
    {
      free(v47);
    }

    if (v45 && BYTE6(v44) == 1)
    {
      free(v45);
    }
  }

  v20 = v29;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  std::vector<KB::LexiconInfo>::__init_with_size[abi:nn200100]<KB::LexiconInfo*,KB::LexiconInfo*>(retstr, v20[6], v20[7], 0x2E8BA2E8BA2E8BA3 * ((v20[7] - v20[6]) >> 4));
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  v44 = v34;
  std::vector<KB::LexiconInfo>::__destroy_vector::operator()[abi:nn200100](&v44);
  _Block_object_dispose(&v35, 8);
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v41);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)usesRetrocorrection
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TIKeyboardInputManager_mul;
  v3 = [(TIKeyboardInputManager *)&v20 usesRetrocorrection];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(TIKeyboardInputManager *)self languageSelectionController];
    v5 = [v4 activeInputModes];

    v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 languageWithRegion];
          if ([v11 isEqualToString:@"vi_VN"])
          {

LABEL_13:
            v3 = 0;
            goto LABEL_14;
          }

          v12 = [v10 languageWithRegion];
          v13 = [v12 isEqualToString:@"ar"];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (float)weightForInputMode:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManager *)self languageSelectionController];
  v6 = v5;
  if (v5)
  {
    [v5 priorProbabilityForInputMode:v4];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (unsigned)lexiconIDForInputMode:(id)a3
{
  v3 = [a3 locale];
  v4 = [v3 localeIdentifier];
  v5 = TILexiconIDForLocaleIdentifier([v4 UTF8String]);

  return v5;
}

- (void)enumerateInputModesWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TIKeyboardInputManager *)self languageSelectionController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 activeInputModes];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v4[2](v4, *(*(&v13 + 1) + 8 * i));
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = [(TIKeyboardInputManager *)self primaryInputMode];
    (v4)[2](v4, v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)alternativeInputMode
{
  if ([(TIKeyboardInputManager_mul *)self choseSecondary])
  {
    [(TIKeyboardInputManager *)self primaryInputMode];
  }

  else
  {
    [(TIKeyboardInputManager_mul *)self secondaryInputMode];
  }
  v3 = ;

  return v3;
}

- (id)chosenInputMode
{
  if ([(TIKeyboardInputManager_mul *)self choseSecondary])
  {
    [(TIKeyboardInputManager_mul *)self secondaryInputMode];
  }

  else
  {
    [(TIKeyboardInputManager *)self primaryInputMode];
  }
  v3 = ;

  return v3;
}

- (id)secondaryInputMode
{
  v3 = [(TIKeyboardInputManager *)self languageSelectionController];
  v4 = [v3 activeInputModes];
  v5 = [v4 count];

  if (v5 < 2)
  {
    v8 = 0;
  }

  else
  {
    v6 = [(TIKeyboardInputManager *)self languageSelectionController];
    v7 = [v6 activeInputModes];
    v8 = [v7 objectAtIndexedSubscript:1];
  }

  return v8;
}

- (id)keyLayoutMapAsNearbyKeys
{
  v2 = [(TIKeyboardInputManager_mul *)self keyLayoutMap];
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TIKeyboardInputManager_mul_keyLayoutMapAsNearbyKeys__block_invoke;
  v6[3] = &unk_27872F900;
  v4 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (NSDictionary)keyLayoutMapReverse
{
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript]&& !self->_keyLayoutMapReverse)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = [(TIKeyboardInputManager *)self primaryInputMode];
      v4 = [v3 originalIdentifier];
      v5 = TIInputModeGetSWLayout();
      v6 = v5;
      v7 = &stru_283FDFAF8;
      if (v5)
      {
        v7 = v5;
      }

      v8 = v7;

      v9 = [(__CFString *)v8 containsString:@"Version"];
      v10 = objc_opt_class();
      if (v9)
      {
        v11 = [v10 generateKeyLayoutMapReverseV2];
LABEL_10:
        keyLayoutMapReverse = self->_keyLayoutMapReverse;
        self->_keyLayoutMapReverse = v11;

        goto LABEL_11;
      }
    }

    else
    {
      v10 = objc_opt_class();
    }

    v11 = [v10 generateKeyLayoutMapReverse];
    goto LABEL_10;
  }

LABEL_11:
  v13 = self->_keyLayoutMapReverse;

  return v13;
}

- (void)keyLayoutDidChangeTo:(id)a3
{
  v4 = a3;
  keyLayoutMap = self->_keyLayoutMap;
  self->_keyLayoutMap = 0;

  keyLayoutMapReverse = self->_keyLayoutMapReverse;
  self->_keyLayoutMapReverse = 0;

  TIInputManager::clear_primary2secondary_character_map(self->super.m_impl);
  v7 = [(TIKeyboardInputManager_mul *)self keyLayoutMap];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual]&& v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__TIKeyboardInputManager_mul_keyLayoutDidChangeTo___block_invoke;
    v8[3] = &unk_27872F8D8;
    v9 = v7;
    v10 = v4;
    v11 = self;
    [v10 enumerateKeysUsingBlock:v8];
  }
}

- (void)setInput:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_mul;
  [(TIKeyboardInputManager *)&v8 setInput:v4];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    v5 = [(TIKeyboardInputManager_mul *)self externalStringToInternal:v4 ignoreCompositionDisabled:0 useReverseMap:0];
    m_impl = self->super.m_impl;
    KB::utf8_string(v5, v9);
    TIInputManager::or_input_flags_from_input(m_impl, v9);
    if (v10 && v9[6] == 1)
    {
      free(v10);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (USet)validUSetForAutocorrectionSecondary
{
  if (!self->_validUSetForAutocorrectionSecondary && [(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v3 = [(TIKeyboardInputManager_mul *)self secondaryInputMode];
    v4 = [v3 locale];

    self->_validUSetForAutocorrectionSecondary = [TIKeyboardFeatureSpecialization createAcceptableCharacterSetForKeyboardLocale:v4];
  }

  return self->_validUSetForAutocorrectionSecondary;
}

- (_NSRange)acceptableRangeFromRange:(_NSRange)a3 inText:(id)a4 withSelectionLocation:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    v10 = [(TIKeyboardInputManager_mul *)self choseSecondary];
    [(TIKeyboardInputManager_mul *)self setChoseSecondary:0];
    v20.receiver = self;
    v20.super_class = TIKeyboardInputManager_mul;
    v11 = [(TIKeyboardInputManager *)&v20 acceptableRangeFromRange:location inText:length withSelectionLocation:v9, a5];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0)
    {
      [(TIKeyboardInputManager_mul *)self setChoseSecondary:1];
      v19.receiver = self;
      v19.super_class = TIKeyboardInputManager_mul;
      v11 = [(TIKeyboardInputManager *)&v19 acceptableRangeFromRange:location inText:length withSelectionLocation:v9, a5];
    }

    v14 = v11;
    v15 = v12;
    [(TIKeyboardInputManager_mul *)self setChoseSecondary:v10];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = TIKeyboardInputManager_mul;
    v14 = [(TIKeyboardInputManager *)&v21 acceptableRangeFromRange:location inText:length withSelectionLocation:v9, a5];
    v15 = v16;
  }

  v17 = v14;
  v18 = v15;
  result.length = v18;
  result.location = v17;
  return result;
}

- (id)currentExternalString
{
  v11 = *MEMORY[0x277D85DE8];
  TIInputManager::input_substring(self->super.m_impl + 4, 0, -858993459 * ((*(self->super.m_impl + 2) - *(self->super.m_impl + 1)) >> 3), v9);
  v4 = KB::ns_string(v9, v3);
  if (v10)
  {
    v5 = v9[6] == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v10);
  }

  v6 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)internalStringToSecondaryExternal:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    TIInputManager::input_substring(self->super.m_impl + 4, 0, -858993459 * ((*(self->super.m_impl + 2) - *(self->super.m_impl + 1)) >> 3), v22);
    v6 = KB::ns_string(v22, v5);
    if (v23 && v22[6] == 1)
    {
      free(v23);
    }

    v7 = [v6 hasPrefix:{v4, v6}];
    v8 = [v4 length];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = &stru_283FDFAF8;
      do
      {
        v13 = [v4 substringWithRange:{v10, 1}];
        v14 = [(TIKeyboardInputManager_mul *)self keyLayoutMap];
        v15 = [v14 objectForKey:v13];

        if (v15)
        {
          if (v7)
          {
            v16 = *(self->super.m_impl + 1);
            if (v11 < -858993459 * ((*(self->super.m_impl + 2) - v16) >> 3) && (*(v16 + 40 * v11 + 32) & 1) != 0)
            {
              v17 = [v15 uppercaseString];

              v15 = v17;
            }
          }
        }

        else
        {
          v15 = v13;
        }

        v18 = [(__CFString *)v12 stringByAppendingString:v15];

        v12 = v18;
        v10 = ++v11;
      }

      while (v9 > v11);
    }

    else
    {
      v18 = &stru_283FDFAF8;
    }
  }

  else if ([(TIKeyboardInputManager_mul *)self shouldDynamicallySwitchBetweenPrimaryAndSecondaryWrapper])
  {
    v18 = v4;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)internalStringToExternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4
{
  v6 = a3;
  if ([(TIKeyboardInputManager_mul *)self shouldDynamicallySwitchBetweenPrimaryAndSecondaryWrapper]&& !a4 && [(TIKeyboardInputManager_mul *)self choseSecondary])
  {
    v7 = [(TIKeyboardInputManager_mul *)self internalStringToSecondaryExternal:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_mul;
    v7 = [(TIKeyboardInputManager *)&v10 internalStringToExternal:v6];
  }

  v8 = v7;

  return v8;
}

- (id)externalStringToInternal:(id)a3 ignoreCompositionDisabled:(BOOL)a4 useReverseMap:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript]&& v5)
  {
    v8 = [(__CFString *)v7 length];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = &stru_283FDFAF8;
      v12 = 1;
      do
      {
        v13 = [(__CFString *)v7 substringWithRange:v10, 1];
        v14 = [(TIKeyboardInputManager_mul *)self keyLayoutMapReverse];
        v15 = [v14 objectForKey:v13];

        if (!v15)
        {
          v15 = v13;
        }

        v16 = [(__CFString *)v11 stringByAppendingString:v15];

        v10 = v12;
        v17 = v9 > v12++;
        v11 = v16;
      }

      while (v17);
    }

    else
    {
      v16 = &stru_283FDFAF8;
    }

    v7 = v16;
  }

  v20.receiver = self;
  v20.super_class = TIKeyboardInputManager_mul;
  v18 = [(TIKeyboardInputManager *)&v20 externalStringToInternal:v7];

  return v18;
}

- (BOOL)stringIsRecognizedByAlternativeIM:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
  if ([(TIKeyboardInputManager *)self usesFavonius])
  {
    v6 = [(TIKeyboardInputManager *)self languageSelectionController];
    v7 = [v6 activeInputModes];
    v8 = [v7 objectAtIndexedSubscript:{-[TIKeyboardInputManager_mul choseSecondary](self, "choseSecondary") ^ 1}];

    v9 = [(TIKeyboardInputManager_mul *)self lexiconLocaleOfString:v4 inputMode:v8];
    v10 = v9 != 0;
  }

  else
  {
    v11 = [v5 predictions];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__TIKeyboardInputManager_mul_stringIsRecognizedByAlternativeIM___block_invoke;
    v13[3] = &unk_278731D60;
    v14 = v4;
    v10 = [v11 indexOfObjectPassingTest:v13] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (BOOL)shouldPassAlternativeInputAsPrediction:(id)a3 isRecognized:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
  v8 = [(TIKeyboardInputManager_mul *)self currentExternalString];
  v9 = [v6 isEqualToString:v8];

  if (v9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v25 = 136315394;
    v26 = "[TIKeyboardInputManager_mul shouldPassAlternativeInputAsPrediction:isRecognized:]";
    v27 = 2080;
    v28 = "[TIKeyboardInputManager_mul shouldPassAlternativeInputAsPrediction:isRecognized:]";
    _os_log_error_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s  %s should not be entered if alternative input == composed text", &v25, 0x16u);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (![(TIKeyboardInputManager_mul *)self emphasizesAlternativeInput])
    {
      v10 = 0;
      goto LABEL_22;
    }

    v11 = [(TIKeyboardInputManager *)self keyboardState];
    v12 = [v11 textInputTraits];
    v13 = [v12 textContentType];

    v14 = [objc_opt_class() textContentTypesPreferringSecondaryInputMode];
    LOBYTE(v12) = [v14 containsObject:v13];

    if ((v12 & 1) != 0 || -858993459 * ((*(self->super.m_impl + 2) - *(self->super.m_impl + 1)) >> 3) < 6)
    {
      goto LABEL_9;
    }

    v15 = [v7 corrections];
    v16 = [v15 autocorrection];
    v17 = [v16 lexiconLocale];
    if (v17)
    {
    }

    else
    {
      v18 = [v7 predictions];
      v19 = [v18 indexOfObjectPassingTest:&__block_literal_global_2649];

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_9:
        v10 = 1;
LABEL_21:

        goto LABEL_22;
      }
    }

    v20 = [v7 predictions];
    if ([v20 count])
    {
      v10 = 0;
    }

    else
    {
      v21 = [v7 emojiList];
      if ([v21 count])
      {
        v10 = 0;
      }

      else
      {
        v22 = [v7 proactiveTriggers];
        v10 = [v22 count] == 0;
      }
    }

    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = 1;
LABEL_22:

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)handleAlternativeInput:(id)a3 givenCandidate:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(TIKeyboardInputManager_mul *)self currentExternalString];
  v8 = [v24 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_4;
    }

    v9 = objc_opt_class();
    v10 = [(TIKeyboardInputManager_mul *)self alternativeInputMode];
    v11 = [v10 languageWithRegion];
    LODWORD(v9) = [v24 _contentsExclusivelyInScript:{objc_msgSend(v9, "primaryScriptForLanguageWithRegion:", v11)}];

    if (v9)
    {
LABEL_4:
      if (([(TIKeyboardInputManager_mul *)self reasonForFreezing]& 1) == 0)
      {
        v12 = [(TIKeyboardInputManager_mul *)self stringIsRecognizedByAlternativeIM:v24];
        if ([(TIKeyboardInputManager_mul *)self emphasizesAlternativeInput])
        {
          v13 = [(TIKeyboardInputManager_mul *)self indexOfLastDynamicSwitch]!= -1 || v12;
        }

        else
        {
          v13 = 0;
        }

        [v6 setShouldHintAtAlternativeInput:v13];
        v14 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
        v15 = [v6 candidateByReplacingWithCandidate:v24];
        [v15 setIsAlternativeInput:{-[TIKeyboardInputManager_mul emphasizesAlternativeInput](self, "emphasizesAlternativeInput")}];
        v16 = [v14 corrections];
        v17 = [v16 alternateCorrections];
        v18 = [(TIKeyboardInputManager_mul *)self candidateArray:v17 withCandidateUniquelyInsertedToFront:v15];

        if ([(TIKeyboardInputManager_mul *)self shouldPassAlternativeInputAsPrediction:v24 isRecognized:v12])
        {
          v19 = [v14 predictions];
          v20 = [(TIKeyboardInputManager_mul *)self candidateArray:v19 withCandidateUniquelyInsertedToFront:v15];
        }

        else
        {
          v20 = 0;
        }

        v21 = [v14 listBySettingNewAlternateCorrections:v18];
        v22 = v20;
        if (!v20)
        {
          v22 = [v14 predictions];
        }

        v23 = [v21 listBySettingNewPredictions:v22];

        if (!v20)
        {
        }

        [(TIKeyboardInputManager *)self setPregeneratedTypingAutocorrections:v23];
      }
    }
  }
}

- (id)sentenceTrailingCharacters
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_mul;
  v3 = [(TIKeyboardInputManager *)&v8 sentenceTrailingCharacters];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v4 = [(TIKeyboardInputManager_mul *)self keyboardFeatureSpecializationSecondary];
    v5 = [v4 sentenceTrailingCharacters];

    v6 = [v3 stringByAppendingString:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)clauseDelimitingCharacters
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_mul;
  v3 = [(TIKeyboardInputManager *)&v8 clauseDelimitingCharacters];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v4 = [(TIKeyboardInputManager_mul *)self keyboardFeatureSpecializationSecondary];
    v5 = [v4 clauseDelimitingCharacters];

    v6 = [v3 stringByAppendingString:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)sentenceDelimitingCharacters
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_mul;
  v3 = [(TIKeyboardInputManager *)&v8 sentenceDelimitingCharacters];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v4 = [(TIKeyboardInputManager_mul *)self keyboardFeatureSpecializationSecondary];
    v5 = [v4 sentenceDelimitingCharacters];

    v6 = [v3 stringByAppendingString:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)sentencePrefixingCharacters
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_mul;
  v3 = [(TIKeyboardInputManager *)&v8 sentencePrefixingCharacters];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v4 = [(TIKeyboardInputManager_mul *)self keyboardFeatureSpecializationSecondary];
    v5 = [v4 sentencePrefixingCharacters];

    v6 = [v3 stringByAppendingString:v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (void)handleCandidateAutocapitalization
{
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript]&& [(TIKeyboardInputManager_mul *)self shouldAutocapitalizeCandidates])
  {
    v3 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
    v4 = [(TIKeyboardInputManager *)self primaryInputMode];
    v5 = [(TIKeyboardInputManager_mul *)self secondaryInputMode];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__TIKeyboardInputManager_mul_handleCandidateAutocapitalization__block_invoke;
    aBlock[3] = &unk_27872F890;
    v35 = v4;
    v43 = v35;
    v34 = v5;
    v44 = v34;
    v6 = _Block_copy(aBlock);
    v7 = MEMORY[0x277CBEB18];
    v8 = [v3 corrections];
    v9 = [v8 alternateCorrections];
    v10 = [v7 arrayWithCapacity:{objc_msgSend(v9, "count")}];

    v11 = [v3 corrections];
    v12 = [v11 alternateCorrections];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __63__TIKeyboardInputManager_mul_handleCandidateAutocapitalization__block_invoke_34;
    v39[3] = &unk_27872F840;
    v13 = v6;
    v41 = v13;
    v14 = v10;
    v40 = v14;
    [v12 enumerateObjectsUsingBlock:v39];

    v15 = MEMORY[0x277CBEB18];
    v16 = [v3 predictions];
    v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];

    v18 = [v3 predictions];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__TIKeyboardInputManager_mul_handleCandidateAutocapitalization__block_invoke_2;
    v36[3] = &unk_27872F840;
    v19 = v13;
    v38 = v19;
    v20 = v17;
    v37 = v20;
    [v18 enumerateObjectsUsingBlock:v36];

    v21 = [v3 corrections];
    v22 = [v21 autocorrection];

    v23 = (*(v19 + 2))(v19, v22);
    v24 = [(TIKeyboardInputManager *)self keyboardState];
    v25 = [v24 autocorrectionEnabled];

    if (v25)
    {
      v26 = v23;
    }

    else
    {
      v27 = [(TIKeyboardInputManager_mul *)self candidateArray:v20 withCandidateUniquelyInsertedToFront:v23];
      v28 = [v27 mutableCopy];

      v26 = 0;
      v20 = v28;
    }

    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = v22;
    }

    v30 = [v3 listBySettingNewAutocorrection:v29];
    [v30 listBySettingNewAlternateCorrections:v14];
    v31 = v33 = v14;
    v32 = [v31 listBySettingNewPredictions:v20];

    [(TIKeyboardInputManager *)self setPregeneratedTypingAutocorrections:v32];
  }
}

- (void)updateInputContext
{
  [(TIKeyboardInputManager_mul *)self setShouldAutocapitalizeCandidates:0];
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_mul;
  [(TIKeyboardInputManager *)&v10 updateInputContext];
  v3 = [(TIKeyboardInputManager *)self keyboardState];
  if ([v3 shiftState])
  {
    v4 = [v3 layoutState];
    v5 = [v4 isAlphabeticPlane];
  }

  else
  {
    v5 = 0;
  }

  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    if ((v5 & 1) == 0)
    {
      if ([v3 autocapitalizationEnabled])
      {
        m_impl = self->super.m_impl;
        if (m_impl)
        {
          if (!TIInputManager::is_autoshift(m_impl))
          {
            v7 = [(TIKeyboardInputManager *)self keyboardState];
            v8 = [v7 autocapitalizationType];

            if (v8)
            {
              if (v8 == 2)
              {
                v9 = [(TIKeyboardInputManager *)self inputContext];
                v8 = [(TIKeyboardInputManager *)self canStartSentenceAfterString:v9];
              }

              else
              {
                v8 = 1;
              }
            }

            [(TIKeyboardInputManager_mul *)self setShouldAutocapitalizeCandidates:v8];
          }
        }
      }
    }
  }
}

- (id)wordSeparatorForCandidate:(id)a3
{
  v4 = [a3 lexiconLocale];
  v5 = [(TIKeyboardInputManager *)self primaryInputMode];
  v6 = [v5 normalizedIdentifier];

  v7 = [(TIKeyboardInputManager_mul *)self secondaryInputMode];
  v8 = [v7 normalizedIdentifier];

  v9 = [(TIKeyboardInputManager *)self wordSeparator];
  v10 = [(TIKeyboardInputManager_mul *)self keyboardFeatureSpecializationSecondary];
  v11 = [v10 wordSeparator];

  if ([v9 isEqualToString:v11] & 1) == 0 && ((v13 = objc_msgSend(v4, "isEqualToString:", v8), v14 = v11, (v13) || (v15 = objc_msgSend(v4, "isEqualToString:", v6), v14 = v9, v15)))
  {
    v12 = v14;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)typedStringForEmptyAutocorrection
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    TIInputManager::legacy_input_stem(self->super.m_impl, v9);
    v4 = KB::ns_string(v9, v3);
    v5 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v4];

    if (v10 && v9[6] == 1)
    {
      free(v10);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_mul;
    v5 = [(TIKeyboardInputManager *)&v8 typedStringForEmptyAutocorrection];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)candidateArray:(id)a3 withCandidateUniquelyInsertedToFront:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    v9 = MEMORY[0x277CCAC30];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __82__TIKeyboardInputManager_mul_candidateArray_withCandidateUniquelyInsertedToFront___block_invoke;
    v17[3] = &unk_27872F868;
    v10 = v6;
    v18 = v10;
    v11 = [v9 predicateWithBlock:v17];
    v12 = [v8 filteredArrayUsingPredicate:v11];

    v19[0] = v10;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v14 = [v13 arrayByAddingObjectsFromArray:v12];
  }

  else
  {
    v12 = v5;
    v14 = v12;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)getPlainCandidate
{
  v13 = *MEMORY[0x277D85DE8];
  TIInputManager::input_substring(self->super.m_impl + 4, 0, -858993459 * ((*(self->super.m_impl + 2) - *(self->super.m_impl + 1)) >> 3), v11);
  v4 = KB::ns_string(v11, v3);
  if (v12)
  {
    v5 = v11[6] == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    free(v12);
  }

  v6 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v4];
  if ([(TIKeyboardInputManager *)self usesFavonius])
  {
    v7 = [objc_alloc(MEMORY[0x277D6F3D8]) initWithCandidate:v6 forInput:v6 rawInput:v4];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D6F448]) initWithSurface:v6 input:v6 mecabraCandidatePointerValue:0];
  }

  v8 = v7;
  [v7 setLexiconLocale:0];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)updateAutocorrectionListGivenOutdatedInput:(id)a3 andUpdatedInput:(id)a4
{
  v5 = a4;
  v6 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
  v7 = [v6 corrections];
  v8 = [v7 autocorrection];

  v42 = self;
  v9 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke;
  aBlock[3] = &unk_27872F818;
  aBlock[4] = self;
  v10 = v5;
  v55 = v10;
  v11 = _Block_copy(aBlock);
  v12 = v11[2](v11, v8, 1);

  v13 = MEMORY[0x277CBEB18];
  v14 = [v9 corrections];
  v15 = [v14 alternateCorrections];
  v16 = [v13 arrayWithCapacity:{objc_msgSend(v15, "count")}];

  v17 = [v9 corrections];
  v18 = [v17 alternateCorrections];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_23;
  v51[3] = &unk_27872F840;
  v19 = v11;
  v52 = v16;
  v53 = v19;
  v20 = v16;
  [v18 enumerateObjectsUsingBlock:v51];

  v21 = MEMORY[0x277CBEB18];
  v22 = [v9 predictions];
  v23 = [v21 arrayWithCapacity:{objc_msgSend(v22, "count")}];

  v24 = [v9 predictions];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_2;
  v48[3] = &unk_27872F840;
  v25 = v19;
  v49 = v23;
  v50 = v25;
  v26 = v23;
  [v24 enumerateObjectsUsingBlock:v48];

  v27 = MEMORY[0x277CBEB18];
  v28 = [v9 emojiList];
  v29 = [v27 arrayWithCapacity:{objc_msgSend(v28, "count")}];

  v30 = [v9 emojiList];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_3;
  v45[3] = &unk_27872F840;
  v46 = v29;
  v47 = v25;
  v31 = v29;
  v41 = v25;
  [v30 enumerateObjectsUsingBlock:v45];

  v32 = MEMORY[0x277CCAC30];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __89__TIKeyboardInputManager_mul_updateAutocorrectionListGivenOutdatedInput_andUpdatedInput___block_invoke_4;
  v43[3] = &unk_27872F868;
  v44 = v10;
  v33 = v10;
  v34 = [v32 predicateWithBlock:v43];
  [v26 filterUsingPredicate:v34];

  v35 = v12;
  v36 = [v9 listBySettingNewAutocorrection:v12];
  v37 = v20;
  v38 = [v36 listBySettingNewAlternateCorrections:v20];
  v39 = [v38 listBySettingNewPredictions:v26];
  v40 = [v39 listBySettingNewEmojiList:v31];

  [(TIKeyboardInputManager *)v42 setPregeneratedTypingAutocorrections:v40];
}

- (id)getBetterLexiconLocale:(BOOL *)a3
{
  v5 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
  v6 = [v5 corrections];
  v7 = [v6 autocorrection];

  v8 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
  v9 = [v8 predictions];
  v10 = [v9 firstObject];

  v11 = [(TIKeyboardInputManager *)self keyboardState];
  LOBYTE(v9) = [v11 autocorrectionEnabled];

  if ((v9 & 1) == 0)
  {

    v12 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
    v13 = [v12 predictions];
    if ([v13 count] < 2)
    {
      v16 = 0;
    }

    else
    {
      v14 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
      v15 = [v14 predictions];
      v16 = [v15 objectAtIndexedSubscript:1];
    }

    v7 = v10;
    v10 = v16;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2616;
  v31 = __Block_byref_object_dispose__2617;
  v32 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v17 = [v7 lexiconLocale];
  v18 = v28[5];
  v28[5] = v17;

  if (!v28[5])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __53__TIKeyboardInputManager_mul_getBetterLexiconLocale___block_invoke;
      v24[3] = &unk_27872F7F0;
      v26 = &v27;
      v24[4] = self;
      v25 = v7;
      [(TIKeyboardInputManager_mul *)self enumerateInputModesWithBlock:v24];
    }
  }

  if (!v28[5] && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v20 = [v10 lexiconLocale];
    v21 = v28[5];
    v28[5] = v20;

    v19 = 0;
  }

  else
  {
LABEL_12:
    v19 = 1;
  }

  *a3 = v19;
  v22 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v22;
}

- (void)chooseBetterInputMethod
{
  if (![(TIKeyboardInputManager_mul *)self reasonForFreezing])
  {
    v3 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
    v4 = [v3 corrections];
    v5 = [v4 autocorrection];

    v6 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
    v7 = [v6 predictions];
    v8 = [v7 firstObject];

    v18 = 0;
    v9 = [(TIKeyboardInputManager_mul *)self getBetterLexiconLocale:&v18];
    if (v9)
    {
      v10 = [(TIKeyboardInputManager *)self primaryInputMode];
      v11 = [v10 normalizedIdentifier];
      v12 = [v9 caseInsensitiveCompare:v11];

      if (!v12)
      {
        [(TIKeyboardInputManager_mul *)self setChoseSecondary:0];
        if (v18)
        {
          v15 = v5;
        }

        else
        {
          v15 = v8;
        }

        v16 = [v15 candidate];
        v17 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v16];
        -[TIKeyboardInputManager_mul setChoseSecondary:](self, "setChoseSecondary:", [v17 compare:v16 options:129] != 0);

        goto LABEL_11;
      }

      v13 = self;
      choseSecondary = 1;
    }

    else
    {
      choseSecondary = self->_choseSecondary;
      v13 = self;
    }

    [(TIKeyboardInputManager_mul *)v13 setChoseSecondary:choseSecondary];
LABEL_11:
  }
}

- (void)handleInputMethodChoiceFreezeGivenInput:(id)a3
{
  v18 = a3;
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v4 = [(TIKeyboardInputManager_mul *)self supportedReasonsForInputMethodChoiceFreeze];
    v5 = [(TIKeyboardInputManager *)self keyboardState];
    v6 = [v5 textInputTraits];
    v7 = [v6 textContentType];

    if ((v4 & 4) != 0 && [v18 isBackspace])
    {
      [(TIKeyboardInputManager_mul *)self setReasonForFreezing:[(TIKeyboardInputManager_mul *)self reasonForFreezing]| 4];
      [(TIKeyboardInputManager_mul *)self setIndexOfLastDynamicSwitch:-1];
      v8 = 4;
      if ((v4 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = 0;
      if ((v4 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (TIInputManager::session_contains_flag(self->super.m_impl, 4))
    {
      v8 |= 1uLL;
      if ((-[TIKeyboardInputManager_mul reasonForFreezing](self, "reasonForFreezing") & 1) == 0 && [v18 isPopupVariant])
      {
        v9 = [v18 string];
        v10 = [(TIKeyboardInputManager *)self primaryInputMode];
        v11 = [v10 languageWithRegion];
        v12 = [v9 _beginsWithPrimaryScriptForLanguage:v11];

        if ((v12 & 1) != 0 || (-[TIKeyboardInputManager_mul secondaryInputMode](self, "secondaryInputMode"), v13 = objc_claimAutoreleasedReturnValue(), [v13 languageWithRegion], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v9, "_beginsWithPrimaryScriptForLanguage:", v14), v14, v13, v15))
        {
          [(TIKeyboardInputManager_mul *)self setChoseSecondary:v12 ^ 1u];
          [(TIKeyboardInputManager_mul *)self setReasonForFreezing:[(TIKeyboardInputManager_mul *)self reasonForFreezing]| 1];
        }
      }

      goto LABEL_18;
    }

LABEL_14:
    if ((v4 & 2) != 0)
    {
      if (v7)
      {
        v16 = [objc_opt_class() textContentTypesPreferringSecondaryInputMode];
        v17 = [v16 containsObject:v7];

        if (v17)
        {
          v8 |= 2uLL;
          [(TIKeyboardInputManager_mul *)self setReasonForFreezing:[(TIKeyboardInputManager_mul *)self reasonForFreezing]| 2];
          [(TIKeyboardInputManager_mul *)self setChoseSecondary:1];
        }
      }
    }

LABEL_18:
    [(TIKeyboardInputManager_mul *)self setReasonForFreezing:[(TIKeyboardInputManager_mul *)self reasonForFreezing]& v8];
  }
}

- (void)handleClearSessionGivenInput:(id)a3
{
  v10 = a3;
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    v4 = [v10 string];
    if ([v10 isPopupVariant])
    {
      v5 = [(TIKeyboardInputManager *)self primaryInputMode];
      v6 = [v5 languageWithRegion];
      if ([v4 _beginsWithPrimaryScriptForLanguage:v6] && -[TIKeyboardInputManager_mul choseSecondary](self, "choseSecondary"))
      {

LABEL_8:
        [(TIKeyboardInputManager_mul *)self clearInput];
        [(TIKeyboardInputManager_mul *)self updateInputContext];
        goto LABEL_10;
      }

      v7 = [(TIKeyboardInputManager_mul *)self secondaryInputMode];
      v8 = [v7 languageWithRegion];
      if (![v4 _beginsWithPrimaryScriptForLanguage:v8])
      {

        goto LABEL_10;
      }

      v9 = [(TIKeyboardInputManager_mul *)self choseSecondary];

      if (!v9)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
  }

  MEMORY[0x2821F96F8]();
}

- (id)generateTypingAutocorrectionsWithCandidateRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  if ([(TIKeyboardInputManager_mul *)self isUsingMultiscript])
  {
    v6 = [(TIKeyboardInputManager_mul *)self choseSecondary];
    [(TIKeyboardInputManager_mul *)self setChoseSecondary:0];
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManager_mul;
    v7 = [(TIKeyboardInputManager *)&v9 generateTypingAutocorrectionsWithCandidateRange:location, length];
    [(TIKeyboardInputManager_mul *)self setChoseSecondary:v6];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_mul;
    v7 = [(TIKeyboardInputManager *)&v10 generateTypingAutocorrectionsWithCandidateRange:location, length];
  }

  return v7;
}

- (id)handleKeyboardInput:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(TIKeyboardInputManager *)self setPregeneratedTypingAutocorrections:0];
  [(TIKeyboardInputManager_mul *)self handleClearSessionGivenInput:v4];
  v5 = [(TIKeyboardInputManager_mul *)self currentExternalString];
  v6 = [v5 length];
  v72.receiver = self;
  v72.super_class = TIKeyboardInputManager_mul;
  v7 = [(TIKeyboardInputManager *)&v72 handleKeyboardInput:v4];
  [(TIKeyboardInputManager_mul *)self handleInputMethodChoiceFreezeGivenInput:v4];
  v8 = [(TIKeyboardInputManager_mul *)self currentExternalString];
  if (-[TIKeyboardInputManager_mul shouldDynamicallySwitchBetweenPrimaryAndSecondaryWrapper](self, "shouldDynamicallySwitchBetweenPrimaryAndSecondaryWrapper") && [v8 length])
  {
    v9 = [v4 acceptedCandidate];
    if (v9)
    {
      v10 = v9;
LABEL_57:

      goto LABEL_58;
    }

    v11 = [v4 string];
    v12 = [(TIKeyboardInputManager *)self stringEndsWord:v11];

    if (v12)
    {
      goto LABEL_58;
    }

    v10 = [(TIKeyboardInputManager_mul *)self generateTypingAutocorrectionsWithCandidateRange:0, 3];
    m_impl = self->super.m_impl;
    v70 = *(m_impl + 24);
    TIInputManager::input_substring(m_impl + 4, 0, -858993459 * ((*(m_impl + 2) - *(m_impl + 1)) >> 3), v73);
    v15 = KB::ns_string(v73, v14);
    v67 = [v15 length];

    if (v75 && v74 == 1)
    {
      free(v75);
    }

    v16 = [v10 corrections];
    v17 = [v16 autocorrection];

    if (v67 <= v70)
    {
      v65 = [(TIKeyboardInputManager_mul *)self currentExternalString];
    }

    else
    {
      TIInputManager::input_substring(self->super.m_impl + 4, 0, *(self->super.m_impl + 24), v73);
      v19 = KB::ns_string(v73, v18);
      v65 = [(TIKeyboardInputManager_mul *)self internalStringToExternal:v19];

      if (v75 && v74 == 1)
      {
        free(v75);
      }
    }

    v66 = [v10 predictions];
    if ([(TIKeyboardInputManager_mul *)self reasonForFreezing])
    {
      if (v17)
      {
        v20 = [v17 candidate];
        v21 = [v20 isEqualToString:v65];

        if ((v21 & 1) == 0)
        {
          v22 = [v17 lexiconLocale];

          if (v22)
          {
            v23 = [(TIKeyboardInputManager_mul *)self candidateArray:v66 withCandidateUniquelyInsertedToFront:v17];

            v66 = v23;
          }

          v24 = [v17 candidateByReplacingWithCandidate:v65];

          v17 = v24;
        }
      }
    }

    v25 = [v10 corrections];
    v26 = [v25 autocorrection];
    v27 = v26;
    v64 = v17;
    if (v17 == v26)
    {
      v29 = [v10 predictions];

      v28 = v66;
      v30 = v66 == v29;
      v17 = v64;
      if (v30)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v28 = v66;
    }

    v31 = [v10 listBySettingNewAutocorrection:v17];
    v32 = [v31 listBySettingNewPredictions:v28];

    v10 = v32;
LABEL_24:
    [(TIKeyboardInputManager *)self setPregeneratedTypingAutocorrections:v10];
    if (v67 > v70)
    {
      v33 = v64;
LABEL_56:

      goto LABEL_57;
    }

    if ([v4 isBackspace])
    {
      [(TIKeyboardInputManager_mul *)self updateChoseSecondaryOnBackspaceIntoWord];
      v71 = v8;
LABEL_40:
      v42 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
      v43 = [v42 corrections];
      v44 = [v43 autocorrection];
      v45 = v44;
      v69 = v7;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v63 = [(TIKeyboardInputManager *)self pregeneratedTypingAutocorrections];
        v47 = [v63 predictions];
        v48 = [v47 firstObject];
        v49 = v48;
        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = [(TIKeyboardInputManager_mul *)self getPlainCandidate];
        }

        v46 = v50;
      }

      v51 = [(TIKeyboardInputManager_mul *)self getCurrentExternalStringGiven:[(TIKeyboardInputManager_mul *)self choseSecondary]^ 1];
      [(TIKeyboardInputManager_mul *)self handleAlternativeInput:v51 givenCandidate:v46];
      v52 = [v46 input];
      v53 = [v52 rangeOfString:v51 options:4];
      v55 = v54;

      LODWORD(v52) = self->_choseSecondary;
      if (v52 != -[TIKeyboardInputManager_mul choseSecondary](self, "choseSecondary") || ([v46 lexiconLocale], v56 = objc_claimAutoreleasedReturnValue(), v56, !v56) || v53 != 0x7FFFFFFFFFFFFFFFLL)
      {
        self->_choseSecondary = [(TIKeyboardInputManager_mul *)self choseSecondary];
        v57 = [v46 input];
        v58 = v57;
        if (v53 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v59 = v71;
        }

        else
        {
          v59 = [v57 stringByReplacingCharactersInRange:v53 withString:{v55, v71}];
        }

        v60 = v59;
        [(TIKeyboardInputManager_mul *)self updateAutocorrectionListGivenOutdatedInput:v58 andUpdatedInput:v59];
      }

      if (([v4 isBackspace] & 1) == 0)
      {
        [(TIKeyboardInputManager_mul *)self handleCandidateAutocapitalization];
      }

      v7 = v69;
      v8 = v71;
      v33 = v64;
      v28 = v66;
      goto LABEL_56;
    }

    [(TIKeyboardInputManager_mul *)self chooseBetterInputMethod];
    v34 = [(TIKeyboardInputManager *)self newKeyboardContext];
    [v34 deleteBackward:{objc_msgSend(v8, "length")}];
    if ([(TIKeyboardInputManager *)self doesComposeText])
    {
      [(TIKeyboardInputManager *)self updateComposedText];
    }

    v35 = [(TIKeyboardInputManager_mul *)self currentExternalString];

    v68 = v34;
    v71 = v35;
    [v34 insertText:v35];
    v36 = [v7 shortcutConversion];
    v37 = [v7 delimitingPrefix];
    v38 = objc_opt_new();

    v7 = v38;
    [v38 setShortcutConversion:v36];
    if (v37)
    {
      [v38 setDelimitingPrefix:v37];
      [v38 insertText:v37];
    }

    [v38 deleteBackward:v6];
    [v38 insertText:v71];
    v39 = *(self->super.m_impl + 24);
    if (v39 >= 5)
    {
      choseSecondary = self->_choseSecondary;
      if (choseSecondary != [(TIKeyboardInputManager_mul *)self choseSecondary])
      {
        goto LABEL_38;
      }

      v41 = [(TIKeyboardInputManager_mul *)self indexOfLastDynamicSwitch];
      if (v41 == -1 || v39 - v41 < 4)
      {
        goto LABEL_39;
      }
    }

    v39 = -1;
LABEL_38:
    [(TIKeyboardInputManager_mul *)self setIndexOfLastDynamicSwitch:v39];
LABEL_39:

    goto LABEL_40;
  }

LABEL_58:

  v61 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)lexiconLocaleOfString:(id)a3 inputMode:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 lowercaseString];
  v8 = [v7 componentsSeparatedByString:@" "];
  v9 = [v8 firstObject];

  LODWORD(v7) = [(TIKeyboardInputManager_mul *)self lexiconIDForInputMode:v6];
  KB::utf8_string(v9, v17);
  KB::StaticDictionary::word_with_string(*(*(self->super.m_impl + 33) + 8), v17, v7, v14);
  if ((v15 || (KB::String::compute_length(v14), v15)) && (v10 = TILocaleIdentifierForLexiconID(v16)) != 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  }

  else
  {
    v11 = 0;
  }

  KB::Word::~Word(v14);
  if (v18 && v17[6] == 1)
  {
    free(v18);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TIKeyboardFeatureSpecialization)keyboardFeatureSpecializationSecondary
{
  if (!self->_keyboardFeatureSpecializationSecondary && [(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    v3 = [(TIKeyboardInputManager_mul *)self secondaryInputMode];
    v4 = [TIKeyboardFeatureSpecialization createSpecializationForInputMode:v3];
    keyboardFeatureSpecializationSecondary = self->_keyboardFeatureSpecializationSecondary;
    self->_keyboardFeatureSpecializationSecondary = v4;
  }

  v6 = self->_keyboardFeatureSpecializationSecondary;

  return v6;
}

- (BOOL)isHighMemoryManager
{
  if ([(TIKeyboardInputManager_mul *)self isUsingMultilingual])
  {
    return 1;
  }

  m_impl = self->super.m_impl;

  return TIInputManager::advanced_models_loaded(m_impl);
}

- (void)suspend
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_mul;
  [(TIKeyboardInputManager *)&v3 suspend];
  self->_choseSecondaryPrev = 1;
}

- (TIKeyboardInputManager_mul)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManager_mul;
  result = [(TIKeyboardInputManager *)&v5 initWithConfig:a3 keyboardState:a4];
  if (result)
  {
    result->_indexOfLastDynamicSwitch = -1;
    result->_choseSecondary = 0;
  }

  return result;
}

- (BOOL)shouldDynamicallySwitchBetweenPrimaryAndSecondaryWrapper
{
  if ([(TIKeyboardInputManager_mul *)self shouldDynamicallySwitchBetweenPrimaryAndSecondary])
  {
    v3 = [(TIKeyboardInputManager *)self keyboardState];
    v4 = [v3 keyboardType];

    if (v4 <= 0xD)
    {
      v5 = 0x1ECFu >> v4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (int)primaryScriptForLanguageWithRegion:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  [a3 cStringUsingEncoding:4];
  if (uscript_getCode())
  {
    result = v5;
  }

  else
  {
    result = -1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)textContentTypesPreferringSecondaryInputMode
{
  if (+[TIKeyboardInputManager_mul textContentTypesPreferringSecondaryInputMode]::onceToken != -1)
  {
    dispatch_once(&+[TIKeyboardInputManager_mul textContentTypesPreferringSecondaryInputMode]::onceToken, &__block_literal_global_72);
  }

  v3 = +[TIKeyboardInputManager_mul textContentTypesPreferringSecondaryInputMode]::textContentTypes;

  return v3;
}

@end