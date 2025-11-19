@interface TILanguageSelectionController
+ (id)inferAdditionalInputModesForPrimary:(id)a3;
+ (id)inferInputModeForLanguage:(id)a3 enabled:(id)a4;
+ (id)inferSecondaryInputModeForPrimary:(id)a3 enabled:(id)a4 isSimulation:(BOOL)a5;
+ (id)inputModeForLanguageIdentifier:(id)a3;
+ (id)inputModesForLanguageIdentifiers:(id)a3;
+ (id)multilingualInputModesForInputModes:(id)a3;
+ (void)reportTypedTokens:(const void *)a3 activeInputModes:(id)a4;
- (BOOL)bufferIsCompatibleWithContext:(const TITokenID *)a3 contextLength:(unint64_t)a4;
- (BOOL)didProbabilityChangeSignificantly;
- (BOOL)didUpdatedInputModesChange:(id)a3;
- (BOOL)updateInputModeProbabilities;
- (TILanguageSelectionController)init;
- (TILanguageSelectionController)initWithLanguageLikelihoodModel:(id)a3 preferenceProvider:(id)a4;
- (double)lastOfflineAdaptationTimeForApp:(id)a3;
- (float)priorProbabilityForInputMode:(id)a3;
- (id).cxx_construct;
- (id)additionalInputModesForUpdatedPrimaryInputMode:(id)a3 withSecondaryInputMode:(id)a4;
- (id)dynamicallyDetectedInputModesForPrimaryInputMode:(id)a3 isSimulation:(BOOL)a4;
- (id)fetchPreferredAdditionalInputModes;
- (id)fetchPreferredSecondaryInputMode;
- (id)fetchUserEnabledInputModes;
- (id)fetchUserEnabledInputModesExcludingPreferredLanguages;
- (id)secondaryInputModeForUpdatedPrimaryInputMode:(id)a3;
- (id)simulateImplicitInputModeDetectionForPrimaryInputMode:(id)a3;
- (vector<float,)retreiveExcessInputModeWeightRatiosFromCurrentWeights:()vector<float;
- (void)addTokenString:(id)a3 tokenID:(TITokenID)a4 context:(const TITokenID *)a5 contextLength:(unint64_t)a6;
- (void)appleKeyboardsInternalSettingsChanged:(id)a3;
- (void)appleKeyboardsPreferencesChanged:(id)a3;
- (void)dealloc;
- (void)feedBufferedTokenStringsToModel;
- (void)rebalanceBilingualInputModeWeights:(void *)a3;
- (void)rebalanceMultipleInputModeWeights:(void *)a3;
- (void)removeTokenString:(id)a3 tokenID:(TITokenID)a4 context:(const TITokenID *)a5 contextLength:(unint64_t)a6;
- (void)setAdaptationContext:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateActiveInputModesSuppressingNotification:(BOOL)a3;
@end

@implementation TILanguageSelectionController

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

- (double)lastOfflineAdaptationTimeForApp:(id)a3
{
  v4 = a3;
  v5 = [(TILanguageSelectionController *)self languageLikelihoodModel];
  [v5 lastOfflineAdaptationTimeForApp:v4];
  v7 = v6;

  return v7;
}

- (id)simulateImplicitInputModeDetectionForPrimaryInputMode:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 addObject:v4];
  v6 = [(TILanguageSelectionController *)self userEnabledInputModes];
  v7 = [(TILanguageSelectionController *)self fetchUserEnabledInputModesExcludingPreferredLanguages];
  v8 = [TILanguageSelectionController inferSecondaryInputModeForPrimary:v4 enabled:v6 isSimulation:1 enabledExcludingPreferredLanguages:v7];

  if (v8)
  {
    [v5 addObject:v8];
    v9 = v5;
  }

  else
  {
    v9 = [(TILanguageSelectionController *)self dynamicallyDetectedInputModesForPrimaryInputMode:v4 isSimulation:1];
  }

  v10 = v9;

  return v10;
}

- (void)removeTokenString:(id)a3 tokenID:(TITokenID)a4 context:(const TITokenID *)a5 contextLength:(unint64_t)a6
{
  end = self->m_buffered_tokens.__end_;
  p_m_buffered_tokens = &self->m_buffered_tokens;
  if (self->m_buffered_tokens.__begin_ != end)
  {
    v17 = end[-1];
    v12 = v17;
    self->m_buffered_tokens.__end_ = end - 1;
    v13 = [(TILanguageSelectionController *)self bufferedTokenStrings];
    v14 = [v13 lastObject];

    v15 = [(TILanguageSelectionController *)self bufferedTokenStrings];
    [v15 removeLastObject];

    if (v12 != a4 || ![(TILanguageSelectionController *)self bufferIsCompatibleWithContext:a5 contextLength:a6])
    {
      std::vector<TITokenID>::push_back[abi:nn200100](p_m_buffered_tokens, &v17);
      v16 = [(TILanguageSelectionController *)self bufferedTokenStrings];
      [v16 addObject:v14];

      [(TILanguageSelectionController *)self feedBufferedTokenStringsToModel];
    }
  }
}

- (void)addTokenString:(id)a3 tokenID:(TITokenID)a4 context:(const TITokenID *)a5 contextLength:(unint64_t)a6
{
  v14 = a4;
  v13 = a3;
  v10 = [(TILanguageSelectionController *)self bufferIsCompatibleWithContext:a5 contextLength:a6];
  v11 = *&a4 & 0xFFFFFFFF00000000;
  if (!v10 || v11 == 0x100000000 || v11 == 0x200000000 || (self->m_buffered_tokens.__end_ - self->m_buffered_tokens.__begin_) >= 0x191)
  {
    [(TILanguageSelectionController *)self feedBufferedTokenStringsToModel];
  }

  if (v11 != 0x200000000)
  {
    v12 = [(TILanguageSelectionController *)self bufferedTokenStrings];
    [v12 addObject:v13];

    std::vector<TITokenID>::push_back[abi:nn200100](&self->m_buffered_tokens, &v14);
  }
}

- (BOOL)bufferIsCompatibleWithContext:(const TITokenID *)a3 contextLength:(unint64_t)a4
{
  begin = self->m_buffered_tokens.__begin_;
  end = self->m_buffered_tokens.__end_;
  v6 = end - begin;
  if (v6 < a4)
  {
    if (begin != end)
    {
      v7 = &a3[a4 - v6];
      do
      {
        lexicon_id = begin->lexicon_id;
        word_id = begin->word_id;
        ++begin;
        v10 = v7->lexicon_id;
        v11 = v7->word_id;
        ++v7;
        v13 = lexicon_id == v10 && word_id == v11;
      }

      while (v13 && begin != end);
      return v13;
    }

LABEL_30:
    LOBYTE(v13) = 1;
    return v13;
  }

  if (!a4)
  {
    goto LABEL_30;
  }

  v15 = &a3[a4];
  v16 = &begin[v6 - a4];
  do
  {
    v17 = a3->lexicon_id;
    v18 = a3->word_id;
    ++a3;
    v19 = v16->lexicon_id;
    v20 = v16->word_id;
    ++v16;
    v13 = v17 == v19 && v18 == v20;
  }

  while (v13 && a3 != v15);
  return v13;
}

- (float)priorProbabilityForInputMode:(id)a3
{
  v4 = a3;
  v5 = [(TILanguageSelectionController *)self inputModeProbabilities];
  v6 = [v5 objectForKey:v4];

  [v6 floatValue];
  v8 = v7;

  return v8;
}

- (void)setAdaptationContext:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_adaptationContext != v5)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v6 = TIOSLogFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Setting adaptation context = %@", "-[TILanguageSelectionController setAdaptationContext:]", v5];
        *buf = 138412290;
        v14 = v12;
        _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v7 = MEMORY[0x277CCACA8];
    v8 = [(TILanguageModelAdaptationContext *)v5 recipientNameDigest];
    v9 = [(TILanguageSelectionController *)self adaptationContext];
    v10 = [v9 recipientNameDigest];
    LOBYTE(v7) = [v7 _string:v8 matchesString:v10];

    objc_storeStrong(&self->_adaptationContext, a3);
    if ((v7 & 1) == 0)
    {
      [(TILanguageSelectionController *)self updateActiveInputModesSuppressingNotification:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setDelegate:(id)a3
{
  if (self->_delegate != a3)
  {
    self->_delegate = a3;
    v5 = a3;
    v6 = [v5 primaryInputMode];
    [(TILanguageSelectionController *)self setPrimaryInputMode:v6];

    v7 = [(TILanguageSelectionController *)self primaryInputMode];
    v8 = [(TILanguageSelectionController *)self userEnabledInputModes];
    v9 = [(TILanguageSelectionController *)self fetchUserEnabledInputModesExcludingPreferredLanguages];
    v10 = [TILanguageSelectionController inferSecondaryInputModeForPrimary:v7 enabled:v8 isSimulation:0 enabledExcludingPreferredLanguages:v9];
    [(TILanguageSelectionController *)self setInferredSecondaryInputMode:v10];

    v11 = [(TILanguageSelectionController *)self primaryInputMode];
    v12 = [TILanguageSelectionController inferAdditionalInputModesForPrimary:v11];

    [(TILanguageSelectionController *)self setInferredAdditionalInputModes:v12];

    [(TILanguageSelectionController *)self updateActiveInputModesSuppressingNotification:1];
  }
}

- (void)rebalanceMultipleInputModeWeights:(void *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a3 + 1) - *a3 >= 9uLL)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = *(a3 + 1) - *a3;
      if ((v5 >> 2) >= 1)
      {
        v6 = 0;
        v7 = (v5 >> 2) & 0x7FFFFFFF;
        v8 = 0x277CCA000uLL;
        v9 = 0x3FC3333340000000;
        do
        {
          v10 = *(*a3 + 4 * v6);
          if (v10 < 0.15)
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            if (TICanLogMessageAtLevel_logLevel >= 2)
            {
              v11 = TIOSLogFacility();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
              {
                [*(v8 + 3240) stringWithFormat:@"%s Boosting language %i weight to minimum (%.2g)", "-[TILanguageSelectionController rebalanceMultipleInputModeWeights:]", (v6 + 1), v9];
                v16 = v9;
                v18 = v17 = v8;
                LODWORD(__p) = 138412290;
                *(&__p + 4) = v18;
                _os_log_debug_impl(&dword_22CA55000, v11, OS_LOG_TYPE_DEBUG, "%@", &__p, 0xCu);

                v8 = v17;
                v9 = v16;
              }
            }

            v12 = 0.15 - v10;
            [(TILanguageSelectionController *)self retreiveExcessInputModeWeightRatiosFromCurrentWeights:a3];
            v13 = 0;
            v14 = __p;
            v15 = *a3;
            do
            {
              if (v6 != v13)
              {
                *(v15 + 4 * v13) = *(v15 + 4 * v13) - (v12 * v14[v13]);
              }

              ++v13;
            }

            while (v7 != v13);
            *(v15 + 4 * v6) = v12 + *(v15 + 4 * v6);
            if (v14)
            {
              *(&__p + 1) = v14;
              operator delete(v14);
            }
          }

          ++v6;
        }

        while (v6 != v7);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (vector<float,)retreiveExcessInputModeWeightRatiosFromCurrentWeights:()vector<float
{
  v20 = 0uLL;
  v21 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v4 = *a4;
  v5 = *(a4 + 1);
  if (*a4 != v5)
  {
    do
    {
      v7 = *v4++;
      v8 = v7 + -0.15;
      if (v7 <= 0.15)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v8;
      }

      v19 = v9;
      std::vector<float>::push_back[abi:nn200100](&v20, &v19);
    }

    while (v4 != v5);
    v10 = *(&v20 + 1);
    v11 = v20;
    if (v20 != *(&v20 + 1))
    {
      v12 = 0.0;
      v13 = v20;
      do
      {
        v14 = *v13++;
        v12 = v12 + v14;
      }

      while (v13 != *(&v20 + 1));
      v15 = v20;
      do
      {
        v16 = *v15++;
        v17 = v16 / v12;
        if (v16 == 0.0)
        {
          v18 = 0.0;
        }

        else
        {
          v18 = v17;
        }

        v19 = v18;
        std::vector<float>::push_back[abi:nn200100](retstr, &v19);
      }

      while (v15 != v10);
    }

    if (v11)
    {
      *(&v20 + 1) = v11;

      operator delete(v11);
    }
  }

  return self;
}

- (void)rebalanceBilingualInputModeWeights:(void *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  if (*(a3 + 1) - *a3 != 8)
  {
    goto LABEL_32;
  }

  v6 = *v3;
  v7 = 0.5;
  if (*v3 < 0.5)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      v7 = 0.5;
    }

    v8 = v7 - v6;
    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v9 = TIOSLogFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Boosting primary language weight to minimum (%.2g)", "-[TILanguageSelectionController rebalanceBilingualInputModeWeights:]", 0x3FE0000000000000];
        *buf = 138412290;
        v32 = v29;
        _os_log_debug_impl(&dword_22CA55000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v10 = *a3;
    v11 = *(*a3 + 4) - v8;
    *v10 = v8 + **a3;
    v10[1] = v11;
  }

  v12 = [(TILanguageSelectionController *)self preferredSecondaryInputMode];
  v13 = [(TILanguageSelectionController *)self activeInputModes];
  v14 = [v13 objectAtIndex:1];
  if ([v12 isEqual:v14])
  {

    goto LABEL_13;
  }

  v15 = [(TILanguageSelectionController *)self inferredSecondaryInputMode];
  v16 = [(TILanguageSelectionController *)self activeInputModes];
  v17 = [v16 objectAtIndex:1];
  v18 = [v15 isEqual:v17];

  if (v18)
  {
LABEL_13:
    v19 = [(TILanguageSelectionController *)self activeInputModes];
    v20 = [v19 objectAtIndex:1];
    v21 = [v20 normalizedIdentifier];

    if (([v21 hasPrefix:@"nl_"] & 1) != 0 || objc_msgSend(v21, "hasPrefix:", @"hi_Latn"))
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      v22 = 0.1;
      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v23 = TIOSLogFacility();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Using reduced minimum prior %.2g for language %s", "-[TILanguageSelectionController rebalanceBilingualInputModeWeights:]", 0x3FB99999A0000000, objc_msgSend(v21, "UTF8String")];
          *buf = 138412290;
          v32 = v28;
          _os_log_debug_impl(&dword_22CA55000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    else
    {
      v22 = 0.1666;
    }

    goto LABEL_24;
  }

  v22 = 0.0476;
LABEL_24:
  if (*(*a3 + 4) < v22)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v24 = TIOSLogFacility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Boosting secondary language weight to minimum (%.2g)", "-[TILanguageSelectionController rebalanceBilingualInputModeWeights:]", v22];
        *buf = 138412290;
        v32 = v30;
        _os_log_debug_impl(&dword_22CA55000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v25 = *a3;
    v26 = *(*a3 + 4);
    *v25 = **a3 - (v22 - v26);
    v25[1] = v26 + (v22 - v26);
  }

LABEL_32:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)dynamicallyDetectedInputModesForPrimaryInputMode:(id)a3 isSimulation:(BOOL)a4
{
  v4 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6 && (!_os_feature_enabled_impl() || v4))
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
    v8 = [MEMORY[0x277CBEB58] set];
    v9 = _TILSCLanguageForInputMode(v6);
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v10 = TIOSLogFacility();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Primary language = %@", "-[TILanguageSelectionController dynamicallyDetectedInputModesForPrimaryInputMode:isSimulation:]", v9];
        *buf = 138412290;
        v36 = v25;
        _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    [v8 addObject:v9];
    v11 = [(TILanguageSelectionController *)self languageLikelihoodModel];
    v12 = [v11 rankedLanguagesForRecipient:0];

    v28 = v9;
    v29 = v6;
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v13 = TIOSLogFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Detected languages = %@", "-[TILanguageSelectionController dynamicallyDetectedInputModesForPrimaryInputMode:isSimulation:]", v12];
        *buf = 138412290;
        v36 = v26;
        _os_log_debug_impl(&dword_22CA55000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
LABEL_19:
      v18 = 0;
      while (1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * v18);
        if (([v8 containsObject:v19] & 1) == 0)
        {
          v20 = [(TILanguageSelectionController *)self userEnabledInputModes];
          v21 = [TILanguageSelectionController inferInputModeForLanguage:v19 enabled:v20];

          if (v21 && [v21 supportsMultilingualKeyboard])
          {
            if (TICanLogMessageAtLevel_onceToken != -1)
            {
              dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
            }

            if (TICanLogMessageAtLevel_logLevel >= 2)
            {
              v22 = TIOSLogFacility();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
              {
                v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Adding active input mode = %@", "-[TILanguageSelectionController dynamicallyDetectedInputModesForPrimaryInputMode:isSimulation:]", v21];
                *buf = 138412290;
                v36 = v27;
                _os_log_debug_impl(&dword_22CA55000, v22, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            [v7 addObject:v21];
            [v8 addObject:v19];
          }
        }

        if ([v7 count] > 1)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v16)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    v6 = v29;
  }

  else
  {
    v7 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)additionalInputModesForUpdatedPrimaryInputMode:(id)a3 withSecondaryInputMode:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = MEMORY[0x277CBEBF8];
  if (v6 && v7 && TILSCMaximumActiveInputModes >= 3 && _os_feature_enabled_impl())
  {
    v9 = objc_opt_new();
    v10 = _TILSCLanguageForInputMode(v6);
    v11 = _TILSCLanguageForInputMode(v8);
    v12 = [(TILanguageSelectionController *)self preferredAdditionalInputModes];
    v13 = [v12 count];

    if (v13)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = [(TILanguageSelectionController *)self preferredAdditionalInputModes];
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v33 = v6;
        v34 = v8;
        v17 = *v40;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            v20 = _TILSCLanguageForInputMode(v19);
            v21 = [v20 isEqualToString:v10];
            v22 = [v20 isEqualToString:v11];
            if ((v21 & 1) == 0 && (v22 & 1) == 0)
            {
              [v9 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v16);
        v6 = v33;
LABEL_25:
        v8 = v34;
      }
    }

    else
    {
      v23 = [(TILanguageSelectionController *)self inferredAdditionalInputModes];
      v24 = [v23 count];

      if (!v24)
      {
LABEL_27:

        goto LABEL_28;
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = [(TILanguageSelectionController *)self inferredAdditionalInputModes];
      v25 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v25)
      {
        v26 = v25;
        v34 = v8;
        v27 = *v36;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v36 != v27)
            {
              objc_enumerationMutation(v14);
            }

            v29 = *(*(&v35 + 1) + 8 * j);
            v30 = _TILSCLanguageForInputMode(v29);
            [v9 addObject:v29];
          }

          v26 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v26);
        goto LABEL_25;
      }
    }

    goto LABEL_27;
  }

LABEL_28:

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)secondaryInputModeForUpdatedPrimaryInputMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v4 = _TILSCLanguageForInputMode(a3);
  v5 = [(TILanguageSelectionController *)self preferredSecondaryInputMode];

  if (v5)
  {
    v6 = [(TILanguageSelectionController *)self preferredSecondaryInputMode];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(TIInputMode *)v6 originalIdentifier];
      v13 = 136315650;
      v14 = "[TILanguageSelectionController secondaryInputModeForUpdatedPrimaryInputMode:]";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Configured secondary input mode = %@ with original identifier = %@", &v13, 0x20u);
    }

    v8 = _TILSCLanguageForInputMode(v6);
    if ([v8 isEqualToString:v4])
    {

      v6 = 0;
    }
  }

  else
  {
    v9 = [(TILanguageSelectionController *)self inferredSecondaryInputMode];

    if (!v9)
    {
      v6 = 0;
      goto LABEL_13;
    }

    v6 = [(TILanguageSelectionController *)self inferredSecondaryInputMode];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(TIInputMode *)v6 originalIdentifier];
      v13 = 136315650;
      v14 = "[TILanguageSelectionController secondaryInputModeForUpdatedPrimaryInputMode:]";
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Inferred secondary input mode = %@ with original identifier = %@", &v13, 0x20u);
    }

    v8 = _TILSCLanguageForInputMode(v6);
  }

LABEL_13:
LABEL_14:
  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)feedBufferedTokenStringsToModel
{
  v3 = [(TILanguageSelectionController *)self activeInputModes];
  [TILanguageSelectionController reportTypedTokens:&self->m_buffered_tokens activeInputModes:v3];

  begin = self->m_buffered_tokens.__begin_;
  if (self->m_buffered_tokens.__end_ == begin)
  {
    v20 = &stru_283FDFAF8;
  }

  else
  {
    v5 = 0;
    v20 = &stru_283FDFAF8;
    do
    {
      v6 = begin[v5];
      v7 = [(TILanguageSelectionController *)self bufferedTokenStrings];
      v8 = [v7 objectAtIndex:v5];

      if ([v8 length])
      {
        if (-[__CFString length](v20, "length") && (*&v6 - 0x1F400000000) <= 0xFFFFFE0CFFFFFFFFLL && (v9 = -[__CFString _lastLongCharacter](v20, "_lastLongCharacter"), [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(v9) = objc_msgSend(v10, "longCharacterIsMember:", v9), v10, (v9 & 1) == 0))
        {
          v12 = [(__CFString *)v20 stringByAppendingFormat:@" "];

          v11 = v12;
        }

        else
        {
          v11 = v20;
        }

        v21 = v11;
        v13 = [v11 stringByAppendingString:v8];

        v20 = v13;
      }

      ++v5;
      begin = self->m_buffered_tokens.__begin_;
    }

    while (v5 < self->m_buffered_tokens.__end_ - begin);
  }

  if ([(__CFString *)v20 length])
  {
    v14 = [(TILanguageSelectionController *)self adaptationContext];
    v15 = [v14 recipientNameDigest];

    v16 = [(TILanguageSelectionController *)self adaptationContext];
    v17 = [v16 appContext];

    v18 = [(TILanguageSelectionController *)self languageLikelihoodModel];
    [v18 addEvidence:v20 timestamp:0 adaptationType:v15 forRecipient:v17 app:0 language:CFAbsoluteTimeGetCurrent()];

    [(TILanguageSelectionController *)self updateActiveInputModesSuppressingNotification:0];
  }

  v19 = [(TILanguageSelectionController *)self bufferedTokenStrings];
  [v19 removeAllObjects];

  self->m_buffered_tokens.__end_ = self->m_buffered_tokens.__begin_;
}

- (BOOL)updateInputModeProbabilities
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = [(TILanguageSelectionController *)self activeInputModes];
  v4 = [v3 count];

  if (v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Update input mode probabilities", "-[TILanguageSelectionController updateInputModeProbabilities]"];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v54;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x277CBEB18] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v7 = [(TILanguageSelectionController *)self activeInputModes];
    v8 = [v7 countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v59;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v59 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = _TILSCLanguageForInputMode(*(*(&v58 + 1) + 8 * i));
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v9);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v65 = 0x4812000000;
    v66 = __Block_byref_object_copy__16311;
    v67 = __Block_byref_object_dispose__16312;
    v68 = "";
    v70 = 0;
    v71 = 0;
    __p = 0;
    v13 = [(TILanguageSelectionController *)self adaptationContext];
    v14 = [v13 recipientNameDigest];

    v15 = [(TILanguageSelectionController *)self languageLikelihoodModel];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __61__TILanguageSelectionController_updateInputModeProbabilities__block_invoke;
    v57[3] = &unk_278732348;
    v57[4] = &buf;
    [v15 priorProbabilityForLanguages:v6 recipient:v14 handler:v57];

    v17 = *(*(&buf + 1) + 48);
    v18 = *(*(&buf + 1) + 56);
    if (v17 == v18)
    {
      goto LABEL_30;
    }

    v19 = 0.0;
    do
    {
      v20 = *v17++;
      v19 = v19 + v20;
    }

    while (v17 != v18);
    if (v19 <= 0.0)
    {
LABEL_30:
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v24 = TIOSLogFacility();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s All weights are zero -- dividing probability equally", "-[TILanguageSelectionController updateInputModeProbabilities]"];
          *v62 = 138412290;
          v63 = v55;
          _os_log_debug_impl(&dword_22CA55000, v24, OS_LOG_TYPE_DEBUG, "%@", v62, 0xCu);
        }
      }

      v25 = *(*(&buf + 1) + 48);
      v26 = *(*(&buf + 1) + 56);
      v27 = v26 - v25;
      if (v26 != v25)
      {
        *v16.i32 = 1.0 / (v27 >> 2);
        v28 = (v27 - 4) >> 2;
        v29 = (v28 + 4) & 0x7FFFFFFFFFFFFFFCLL;
        v30 = vdupq_n_s64(v28);
        v31 = (v25 + 8);
        v32 = 1;
        do
        {
          v33 = vdupq_n_s64(v32 - 1);
          v34 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_22CC88AA0)));
          if (vuzp1_s16(v34, v16).u8[0])
          {
            *(v31 - 2) = v16.i32[0];
          }

          if (vuzp1_s16(v34, v16).i8[2])
          {
            *(v31 - 1) = v16.i32[0];
          }

          if (vuzp1_s16(v16, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_22CC88A90)))).i32[1])
          {
            *v31 = v16.i32[0];
            v31[1] = v16.i32[0];
          }

          v32 += 4;
          v31 += 4;
          v29 -= 4;
        }

        while (v29);
      }
    }

    else
    {
      if (TICanLogMessageAtLevel_onceToken != -1)
      {
        dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
      }

      if (TICanLogMessageAtLevel_logLevel >= 2)
      {
        v21 = TIOSLogFacility();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Scaling sum weights to 1.", "-[TILanguageSelectionController updateInputModeProbabilities]"];
          *v62 = 138412290;
          v63 = v56;
          _os_log_debug_impl(&dword_22CA55000, v21, OS_LOG_TYPE_DEBUG, "%@", v62, 0xCu);
        }
      }

      v22 = *(*(&buf + 1) + 48);
      v23 = *(*(&buf + 1) + 56);
      while (v22 != v23)
      {
        *v22 = *v22 / v19;
        ++v22;
      }
    }

    v35 = *(&buf + 1) + 48;
    v36 = *(*(&buf + 1) + 56) - *(*(&buf + 1) + 48);
    if (v36 == 8)
    {
      [(TILanguageSelectionController *)self rebalanceBilingualInputModeWeights:v35];
    }

    else if (v36 >= 9)
    {
      [(TILanguageSelectionController *)self rebalanceMultipleInputModeWeights:v35];
    }

    v39 = [(TILanguageSelectionController *)self inputModeProbabilities];
    [v39 removeAllObjects];

    v40 = [(TILanguageSelectionController *)self activeInputModes];
    v41 = [v40 count];

    if (v41)
    {
      v42 = 0;
      do
      {
        v43 = [(TILanguageSelectionController *)self activeInputModes];
        v44 = [v43 objectAtIndex:v42];

        v45 = *(*(*(&buf + 1) + 48) + 4 * v42);
        v46 = [(TILanguageSelectionController *)self inputModeProbabilities];
        LODWORD(v47) = v45;
        v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
        [v46 setObject:v48 forKey:v44];

        ++v42;
        v49 = [(TILanguageSelectionController *)self activeInputModes];
        v50 = [v49 count];
      }

      while (v42 < v50);
    }

    v38 = [(TILanguageSelectionController *)self didProbabilityChangeSignificantly];
    if (v38)
    {
      v51 = [(TILanguageSelectionController *)self inputModeProbabilities];
      [(TILanguageSelectionController *)self setReferenceInputModeProbabilities:v51];
    }

    _Block_object_dispose(&buf, 8);
    if (__p)
    {
      v70 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v37 = [(TILanguageSelectionController *)self inputModeProbabilities];
    [v37 removeAllObjects];

    [(TILanguageSelectionController *)self setReferenceInputModeProbabilities:MEMORY[0x277CBEC10]];
    v38 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v38;
}

- (BOOL)didProbabilityChangeSignificantly
{
  v3 = [(TILanguageSelectionController *)self referenceInputModeProbabilities];
  v4 = [v3 count];
  v5 = [(TILanguageSelectionController *)self inputModeProbabilities];
  v6 = [v5 count];

  if (v4 != v6)
  {
    return 1;
  }

  v7 = [(TILanguageSelectionController *)self activeInputModes];
  v8 = [v7 count];

  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = [(TILanguageSelectionController *)self activeInputModes];
    v11 = [v10 objectAtIndex:v9];

    v12 = [(TILanguageSelectionController *)self referenceInputModeProbabilities];
    v13 = [v12 objectForKey:v11];
    [v13 floatValue];
    v15 = v14;

    v16 = [(TILanguageSelectionController *)self inputModeProbabilities];
    v17 = [v16 objectForKey:v11];
    [v17 floatValue];
    v19 = v18;

    v20 = vabds_f32(v15, v19);
    result = v20 >= 0.05;
    if (v20 >= 0.05)
    {
      break;
    }

    ++v9;
    v22 = [(TILanguageSelectionController *)self activeInputModes];
    v23 = [v22 count];

    if (v9 >= v23)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)didUpdatedInputModesChange:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(TILanguageSelectionController *)self activeInputModes];
    v7 = [v5 setWithArray:v6];

    v8 = [MEMORY[0x277CBEB98] setWithArray:v4];

    v9 = [v7 isEqualToSet:v8];
    v4 = v8;
  }

  else
  {
    v7 = [(TILanguageSelectionController *)self activeInputModes];
    v9 = [v4 isEqualToArray:v7];
  }

  return v9 ^ 1;
}

- (void)updateActiveInputModesSuppressingNotification:(BOOL)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TILanguageSelectionController *)self primaryInputMode];
    v7 = [(TILanguageSelectionController *)self primaryInputMode];
    v8 = [v7 originalIdentifier];
    v30 = 136315650;
    v31 = "[TILanguageSelectionController updateActiveInputModesSuppressingNotification:]";
    v32 = 2112;
    v33 = v6;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Found primary input mode = %@ with original identifier = %@", &v30, 0x20u);
  }

  v9 = [(TILanguageSelectionController *)self primaryInputMode];

  if (v9)
  {
    v10 = [(TILanguageSelectionController *)self primaryInputMode];

    if (v10)
    {
      v11 = [(TILanguageSelectionController *)self primaryInputMode];
      [v5 addObject:v11];
    }
  }

  v12 = [(TILanguageSelectionController *)self primaryInputMode];
  v13 = [(TILanguageSelectionController *)self secondaryInputModeForUpdatedPrimaryInputMode:v12];

  if (v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v13 originalIdentifier];
      v30 = 136315650;
      v31 = "[TILanguageSelectionController updateActiveInputModesSuppressingNotification:]";
      v32 = 2112;
      v33 = v13;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Found secondary input mode = %@ with original identifier = %@", &v30, 0x20u);
    }

    [v5 addObject:v13];
  }

  v15 = [(TILanguageSelectionController *)self primaryInputMode];
  v16 = [(TILanguageSelectionController *)self additionalInputModesForUpdatedPrimaryInputMode:v15 withSecondaryInputMode:v13];

  if ([v16 count])
  {
    [v5 addObjectsFromArray:v16];
  }

  v17 = [(TILanguageSelectionController *)self primaryInputMode];
  v18 = v17;
  if (!v13 && v17)
  {
    v19 = _os_feature_enabled_impl();

    if (v19)
    {
      goto LABEL_18;
    }

    v20 = [(TILanguageSelectionController *)self primaryInputMode];
    v18 = [(TILanguageSelectionController *)self dynamicallyDetectedInputModesForPrimaryInputMode:v20 isSimulation:0];

    if (v18)
    {
      v18 = v18;

      v5 = v18;
    }
  }

LABEL_18:
  if ([(TILanguageSelectionController *)self didUpdatedInputModesChange:v5])
  {
    [(TILanguageSelectionController *)self setActiveInputModes:v5];
    [(TILanguageSelectionController *)self updateInputModeProbabilities];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(TILanguageSelectionController *)self adaptationContext];
      v22 = [v21 recipientNameDigest];
      v23 = [(TILanguageSelectionController *)self inputModeProbabilities];
      v30 = 136315650;
      v31 = "[TILanguageSelectionController updateActiveInputModesSuppressingNotification:]";
      v32 = 2112;
      v33 = v22;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Activating new input modes (recipient=%@) = %@", &v30, 0x20u);
    }

    if (!a3)
    {
      v24 = [(TILanguageSelectionController *)self delegate];
      [v24 didUpdateInputModes:self];
LABEL_30:
    }
  }

  else
  {
    v25 = [(TILanguageSelectionController *)self updateInputModeProbabilities];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(TILanguageSelectionController *)self adaptationContext];
      v27 = [v26 recipientNameDigest];
      v28 = [(TILanguageSelectionController *)self inputModeProbabilities];
      v30 = 136315650;
      v31 = "[TILanguageSelectionController updateActiveInputModesSuppressingNotification:]";
      v32 = 2112;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Updating input mode probs (recipient=%@) = %@", &v30, 0x20u);
    }

    if (v25 && !a3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v30 = 136315138;
        v31 = "[TILanguageSelectionController updateActiveInputModesSuppressingNotification:]";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Notifying delegate about significant probability change", &v30, 0xCu);
      }

      v24 = [(TILanguageSelectionController *)self delegate];
      [v24 didUpdateInputModeProbabilities:self];
      goto LABEL_30;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)appleKeyboardsInternalSettingsChanged:(id)a3
{
  v4 = [(TILanguageSelectionController *)self fetchPreferredSecondaryInputMode];
  [(TILanguageSelectionController *)self setPreferredSecondaryInputMode:v4];

  v5 = [(TILanguageSelectionController *)self fetchPreferredAdditionalInputModes];
  [(TILanguageSelectionController *)self setPreferredAdditionalInputModes:v5];

  v6 = [(TILanguageSelectionController *)self primaryInputMode];
  v7 = [(TILanguageSelectionController *)self userEnabledInputModes];
  v8 = [(TILanguageSelectionController *)self fetchUserEnabledInputModesExcludingPreferredLanguages];
  v9 = [TILanguageSelectionController inferSecondaryInputModeForPrimary:v6 enabled:v7 isSimulation:0 enabledExcludingPreferredLanguages:v8];
  [(TILanguageSelectionController *)self setInferredSecondaryInputMode:v9];

  v10 = [(TILanguageSelectionController *)self primaryInputMode];
  v11 = [TILanguageSelectionController inferAdditionalInputModesForPrimary:v10];
  [(TILanguageSelectionController *)self setInferredAdditionalInputModes:v11];

  [(TILanguageSelectionController *)self updateActiveInputModesSuppressingNotification:0];
}

- (void)appleKeyboardsPreferencesChanged:(id)a3
{
  v4 = [(TILanguageSelectionController *)self fetchUserEnabledInputModes];
  [(TILanguageSelectionController *)self setUserEnabledInputModes:v4];

  v5 = [(TILanguageSelectionController *)self primaryInputMode];
  v6 = [(TILanguageSelectionController *)self userEnabledInputModes];
  v7 = [(TILanguageSelectionController *)self fetchUserEnabledInputModesExcludingPreferredLanguages];
  v8 = [TILanguageSelectionController inferSecondaryInputModeForPrimary:v5 enabled:v6 isSimulation:0 enabledExcludingPreferredLanguages:v7];
  [(TILanguageSelectionController *)self setInferredSecondaryInputMode:v8];

  v9 = [(TILanguageSelectionController *)self primaryInputMode];
  v10 = [TILanguageSelectionController inferAdditionalInputModesForPrimary:v9];
  [(TILanguageSelectionController *)self setInferredAdditionalInputModes:v10];

  [(TILanguageSelectionController *)self updateActiveInputModesSuppressingNotification:0];
}

- (id)fetchPreferredAdditionalInputModes
{
  v2 = [(TILanguageSelectionController *)self preferenceProvider];
  v3 = [v2 preferredAdditionalInputModes];

  return v3;
}

- (id)fetchPreferredSecondaryInputMode
{
  v2 = [(TILanguageSelectionController *)self preferenceProvider];
  v3 = [v2 preferredSecondaryInputMode];

  return v3;
}

- (id)fetchUserEnabledInputModesExcludingPreferredLanguages
{
  v2 = [(TILanguageSelectionController *)self preferenceProvider];
  v3 = [v2 userEnabledInputModes];
  v4 = [TILanguageSelectionController multilingualInputModesForInputModes:v3];

  return v4;
}

- (id)fetchUserEnabledInputModes
{
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v4 = [(TILanguageSelectionController *)self preferenceProvider];
  v5 = [v4 userEnabledInputModes];
  [v3 addObjectsFromArray:v5];

  v6 = objc_opt_class();
  v7 = [(TILanguageSelectionController *)self preferenceProvider];
  v8 = [v7 userPreferredLanguages];
  v9 = [v6 inputModesForLanguageIdentifiers:v8];
  [v3 addObjectsFromArray:v9];

  v10 = [v3 array];
  v11 = [TILanguageSelectionController multilingualInputModesForInputModes:v10];

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TILanguageSelectionController;
  [(TILanguageSelectionController *)&v4 dealloc];
}

- (TILanguageSelectionController)initWithLanguageLikelihoodModel:(id)a3 preferenceProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v29.receiver = self;
  v29.super_class = TILanguageSelectionController;
  v9 = [(TILanguageSelectionController *)&v29 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_languageLikelihoodModel, a3);
    objc_storeStrong(&v10->_preferenceProvider, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEA60]);
    activeInputModes = v10->_activeInputModes;
    v10->_activeInputModes = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    inferredAdditionalInputModes = v10->_inferredAdditionalInputModes;
    v10->_inferredAdditionalInputModes = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEA60]);
    preferredAdditionalInputModes = v10->_preferredAdditionalInputModes;
    v10->_preferredAdditionalInputModes = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputModeProbabilities = v10->_inputModeProbabilities;
    v10->_inputModeProbabilities = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    referenceInputModeProbabilities = v10->_referenceInputModeProbabilities;
    v10->_referenceInputModeProbabilities = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    bufferedTokenStrings = v10->_bufferedTokenStrings;
    v10->_bufferedTokenStrings = v21;

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v10 selector:sel_appleKeyboardsPreferencesChanged_ name:@"AppleKeyboardsPreferencesChangedNotification_Private" object:0];

    v24 = [MEMORY[0x277CCAB98] defaultCenter];
    [v24 addObserver:v10 selector:sel_appleKeyboardsInternalSettingsChanged_ name:@"AppleKeyboardsInternalSettingsChangedNotification" object:0];
  }

  v25 = [(TILanguageSelectionController *)v10 fetchPreferredSecondaryInputMode];
  [(TILanguageSelectionController *)v10 setPreferredSecondaryInputMode:v25];

  v26 = [(TILanguageSelectionController *)v10 fetchPreferredAdditionalInputModes];
  [(TILanguageSelectionController *)v10 setPreferredAdditionalInputModes:v26];

  v27 = [(TILanguageSelectionController *)v10 fetchUserEnabledInputModes];
  [(TILanguageSelectionController *)v10 setUserEnabledInputModes:v27];

  return v10;
}

- (TILanguageSelectionController)init
{
  v3 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
  v4 = objc_alloc_init(_TIMultilingualPreferences);
  v5 = [(TILanguageSelectionController *)self initWithLanguageLikelihoodModel:v3 preferenceProvider:v4];

  return v5;
}

+ (void)reportTypedTokens:(const void *)a3 activeInputModes:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 count] >= 2 && *a3 != *(a3 + 1))
  {
    v6 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v53;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v53 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v52 + 1) + 8 * i) locale];
          v13 = [v12 localeIdentifier];
          [v6 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v9);
    }

    v14 = *MEMORY[0x277D6FBA8];
    v15 = TIStatisticGetKeyForMultilingual();
    TIStatisticScalarSetValue();

    v16 = [v6 objectAtIndexedSubscript:0];
    v17 = TILexiconIDForLocaleIdentifier([v16 UTF8String]);

    v18 = *a3;
    v19 = *(a3 + 1);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v49 = __68__TILanguageSelectionController_reportTypedTokens_activeInputModes___block_invoke;
    v50 = &__block_descriptor_36_e21_B16__0_TITokenID_II_8l;
    v51 = v17;
    v20 = v48;
    while (v18 != v19)
    {
      v21 = *v18++;
      (v49)(v20, v21);
    }

    v22 = *MEMORY[0x277D6FBB0];
    v23 = TIStatisticGetKeyForMultilingual();
    TIStatisticScalarAddValue();

    v24 = [v6 objectAtIndexedSubscript:1];
    LODWORD(v23) = TILexiconIDForLocaleIdentifier([v24 UTF8String]);

    v25 = *a3;
    v26 = *(a3 + 1);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v45 = __68__TILanguageSelectionController_reportTypedTokens_activeInputModes___block_invoke_2;
    v46 = &__block_descriptor_36_e21_B16__0_TITokenID_II_8l;
    v47 = v23;
    v27 = v44;
    while (v25 != v26)
    {
      v28 = *v25++;
      (v45)(v27, v28);
    }

    v29 = *MEMORY[0x277D6FBB8];
    v30 = TIStatisticGetKeyForMultilingual();
    TIStatisticScalarAddValue();

    if ([v6 count] == 3)
    {
      v31 = [v6 objectAtIndexedSubscript:2];
      v32 = TILexiconIDForLocaleIdentifier([v31 UTF8String]);

      v33 = *a3;
      v34 = *(a3 + 1);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v41 = __68__TILanguageSelectionController_reportTypedTokens_activeInputModes___block_invoke_3;
      v42 = &__block_descriptor_36_e21_B16__0_TITokenID_II_8l;
      v43 = v32;
      v35 = v40;
      while (v33 != v34)
      {
        v36 = *v33++;
        (v41)(v35, v36);
      }

      v37 = *MEMORY[0x277D6FBC0];
      v38 = TIStatisticGetKeyForMultilingual();
      TIStatisticScalarAddValue();
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

+ (id)inputModesForLanguageIdentifiers:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 inputModeForLanguageIdentifier:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)inputModeForLanguageIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = TIGetDefaultInputModesForLanguage();
  if ([v4 count] >= 2)
  {
    v5 = MEMORY[0x277CCA8D8];
    v15[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v7 = [v5 preferredLocalizationsFromArray:v4 forPreferences:v6];
    v8 = [v7 firstObject];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v4 firstObject];
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_8;
    }

LABEL_5:
    v12 = [TIInputMode inputModeWithIdentifier:v11];
    goto LABEL_9;
  }

  v11 = [v4 firstObject];
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = 0;
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)inferInputModeForLanguage:(id)a3 enabled:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = _TILSCLanguageForInputMode(v14);
        if ([v15 isEqualToString:{v6, v19}])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    [v8 firstObject];
  }

  else
  {
    [a1 inputModeForLanguageIdentifier:v6];
  }
  v16 = ;

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)inferAdditionalInputModesForPrimary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if (_os_feature_enabled_impl())
  {
    v5 = [v3 additionalConfiguredLatinLanguages];
    v6 = [v5 count];

    if (v6 >= 2)
    {
      v7 = [v3 additionalConfiguredLatinLanguages];
      v8 = [v7 count];

      if (v8 >= 2)
      {
        v9 = 1;
        do
        {
          v10 = [v3 additionalConfiguredLatinLanguages];
          v11 = [v10 objectAtIndexedSubscript:v9];

          if (v11)
          {
            v12 = [TIInputMode inputModeWithIdentifier:v11];
            [v4 addObject:v12];
          }

          ++v9;
          v13 = [v3 additionalConfiguredLatinLanguages];
          v14 = [v13 count];
        }

        while (v14 > v9);
      }
    }
  }

  return v4;
}

+ (id)inferSecondaryInputModeForPrimary:(id)a3 enabled:(id)a4 isSimulation:(BOOL)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!_os_feature_enabled_impl() || a5)
  {
    if (!v7 || [v8 count] < 2)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v10 = [MEMORY[0x277CBEB58] set];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = _TILSCLanguageForInputMode(*(*(&v28 + 1) + 8 * i));
          [v10 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    v19 = _TILSCLanguageForInputMode(v7);
    [v10 removeObject:v19];
    if ([v10 count] == 1)
    {
      v20 = [v10 anyObject];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __88__TILanguageSelectionController_inferSecondaryInputModeForPrimary_enabled_isSimulation___block_invoke;
      v26[3] = &unk_278732320;
      v27 = v20;
      v21 = v20;
      v22 = [v13 indexesOfObjectsPassingTest:v26];
      v23 = [v13 objectsAtIndexes:v22];

      v12 = [v23 firstObject];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v9 = [(TIInputMode *)v7 additionalConfiguredLatinLanguages];
    v10 = [v9 firstObject];

    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v11)
      {
        *buf = 136315394;
        v34 = "+[TILanguageSelectionController inferSecondaryInputModeForPrimary:enabled:isSimulation:]";
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Sucessfully inferred secondary input mode = %@", buf, 0x16u);
      }

      v12 = [TIInputMode inputModeWithIdentifier:v10];
    }

    else
    {
      if (v11)
      {
        *buf = 136315138;
        v34 = "+[TILanguageSelectionController inferSecondaryInputModeForPrimary:enabled:isSimulation:]";
        _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Unable to infer secondary input mode due to no additional input modes found for primary input mode.", buf, 0xCu);
      }

      v10 = 0;
      v12 = 0;
    }
  }

LABEL_25:
  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __88__TILanguageSelectionController_inferSecondaryInputModeForPrimary_enabled_isSimulation___block_invoke(uint64_t a1, TIInputMode *a2)
{
  v3 = _TILSCLanguageForInputMode(a2);
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)multilingualInputModesForInputModes:(id)a3
{
  v3 = a3;
  v4 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_129];
  v5 = [v3 objectsAtIndexes:v4];

  return v5;
}

uint64_t __69__TILanguageSelectionController_multilingualInputModesForInputModes___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 normalizedIdentifier];
  v3 = TIGetInputModeProperties();

  v4 = [v3 objectForKey:*MEMORY[0x277D6F760]];
  v5 = [v4 BOOLValue];

  return v5;
}

@end