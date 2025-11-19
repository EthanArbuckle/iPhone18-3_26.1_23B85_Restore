@interface TIEmojiCandidateGenerator
- (BOOL)isLocaleDisabled:(id)a3;
- (BOOL)shouldShowEmojisForKeyboardType:(unint64_t)a3 appIdentifier:(id)a4;
- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)a3;
- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)a3 inputManager:(id)a4;
- (TIInputMode)primaryInputMode;
- (__EmojiLocaleDataWrapper)emojiDataForInputModeIdx:(unint64_t)a3;
- (id)createAndAddEmojiTokensFrom:(__CFArray *)a3 inArray:(id)a4 forInputString:(id)a5;
- (id)emojiAdornmentCandidates:(id)a3;
- (id)emojiAdornmentCandidates:(id)a3 emojiGenerator:(void *)a4 emojiData:(__EmojiLocaleDataWrapper *)a5;
- (id)emojiAdornmentCandidatesForKeyboardState:(id)a3;
- (id)emojiAlternativesForText:(id)a3 matchedString:(id *)a4;
- (id)emojiAppendCandidates:(id)a3;
- (id)emojiReplacementCandidates:(id)a3 matchedString:(id *)a4;
- (id)emojiReplacementCandidatesForKeyboardState:(id)a3;
- (id)emojiReplacementCandidatesForText:(id)a3;
- (id)enumerateForEmojiAlternativesInText:(id)a3 forEmojiLocaleData:(__EmojiLocaleDataWrapper *)a4 matchedString:(id *)a5;
- (id)enumerateForEmojiCandidatesIn:(id)a3 forEmojiLocaleData:(__EmojiLocaleDataWrapper *)a4 asReplacementCandidate:(BOOL)a5 matchedString:(id *)a6;
- (id)extractTokensForEmojiComputation:(id)a3;
- (id)generateEmojiAdornmentCandidates:(id)a3;
- (id)getSkinToneSensitiveEmojis:(id)a3;
- (id)randomShuffle:(id)a3;
- (id)skinToneModifiedAdornmentEmojis:(id)a3 forLocale:(__EmojiLocaleDataWrapper *)a4 forInput:(id)a5;
- (int64_t)emojiPredominantInputModeIdxFromContext;
- (void)dealloc;
- (void)emojiAlternativesForText:(id)a3 completionHandler:(id)a4;
- (void)emojiGeneratorForInputModeIdx:(unint64_t)a3;
- (void)emojiReplacementCandidatesForText:(id)a3 completionHandler:(id)a4;
- (void)updateEmojiAdornmentGenerators;
- (void)updateEmojiLocale;
- (void)updateEmojiStatusForKeyboardState:(id)a3;
- (void)updateForActiveInputModes:(id)a3;
- (void)updateForMultilingualKeyboard:(id)a3;
@end

@implementation TIEmojiCandidateGenerator

- (void)emojiGeneratorForInputModeIdx:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->m_emojiGeneratorPrimaryLanguage + a3);
  }
}

- (__EmojiLocaleDataWrapper)emojiDataForInputModeIdx:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->m_emojiDataForPrimaryLocale + a3);
  }
}

- (int64_t)emojiPredominantInputModeIdxFromContext
{
  WeakRetained = objc_loadWeakRetained(&self->m_inputManager);
  if (!WeakRetained)
  {
    return -1;
  }

  v4 = WeakRetained;
  v5 = _os_feature_enabled_impl();

  if (!v5)
  {
    return -1;
  }

  v6 = objc_loadWeakRetained(&self->m_inputManager);
  v7 = [v6 predominantLexiconInContext];

  v8 = TILocaleIdentifierForLexiconID(v7);
  v9 = -1;
  if (v7 && v8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:TILocaleIdentifierForLexiconID(v7) encoding:4];
    v11 = [(TIEmojiCandidateGenerator *)self primaryInputMode];
    v12 = [v11 locale];
    v13 = [v12 localeIdentifier];
    v14 = [v13 isEqualToString:v10];

    if (v14)
    {
      v9 = 0;
LABEL_18:

      return v9;
    }

    v16 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([v16 count] <= 1)
    {
    }

    else
    {
      v17 = [(TIEmojiCandidateGenerator *)self activeInputModes];
      v9 = 1;
      v18 = [v17 objectAtIndexedSubscript:1];
      v19 = [v18 locale];
      v20 = [v19 localeIdentifier];
      v21 = [v20 isEqualToString:v10];

      if (v21)
      {
        goto LABEL_18;
      }
    }

    v22 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([v22 count] <= 2)
    {

      v9 = -1;
    }

    else
    {
      v23 = [(TIEmojiCandidateGenerator *)self activeInputModes];
      v24 = [v23 objectAtIndexedSubscript:2];
      v25 = [v24 locale];
      v26 = [v25 localeIdentifier];
      v27 = [v26 isEqualToString:v10];

      if (v27)
      {
        v9 = 2;
      }

      else
      {
        v9 = -1;
      }
    }

    goto LABEL_18;
  }

  return v9;
}

- (BOOL)isLocaleDisabled:(id)a3
{
  v4 = a3;
  v5 = (_os_feature_enabled_impl() & 1) == 0 && [(NSSet *)self->m_disabledLocales containsObject:v4];

  return v5;
}

- (id)emojiAdornmentCandidatesForKeyboardState:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA60] array];
  if (self->m_shouldShowEmojis)
  {
    v6 = [v4 documentState];
    v7 = [v6 contextBeforeInput];
    v8 = [(TIEmojiCandidateGenerator *)self generateEmojiAdornmentCandidates:v7];

    v5 = v8;
  }

  return v5;
}

- (void)emojiReplacementCandidatesForText:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA60] array];
  if (!self->m_shouldShowEmojis)
  {
    v12 = &stru_283FDFAF8;
    if (!v7)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [v6 componentsSeparatedByCharactersInSet:v9];
  v11 = [v10 lastObject];

  if ([v11 _looksLikeEmailAddress])
  {
    v12 = &stru_283FDFAF8;
  }

  else
  {
    v12 = &stru_283FDFAF8;
    if (([v11 _looksLikeURL] & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v14 = [v6 componentsSeparatedByCharactersInSet:v13];

      v15 = [(TIEmojiCandidateGenerator *)self extractTokensForEmojiComputation:v14];
      v17 = &stru_283FDFAF8;
      v16 = [(TIEmojiCandidateGenerator *)self emojiReplacementCandidates:v15 matchedString:&v17];
      v12 = v17;

      v8 = v16;
    }
  }

  if (v7)
  {
LABEL_9:
    v7[2](v7, v12, v8);
  }

LABEL_10:
}

- (id)enumerateForEmojiAlternativesInText:(id)a3 forEmojiLocaleData:(__EmojiLocaleDataWrapper *)a4 matchedString:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  LocaleIdentifier = CEMEmojiLocaleDataGetLocaleIdentifier();
  v44 = self;
  if ([(TIEmojiCandidateGenerator *)self isLocaleDisabled:LocaleIdentifier])
  {
    v11 = v9;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
    [v12 setString:v8];
    [v12 setLanguage:LocaleIdentifier];
    v13 = [v12 tokensForRange:{0, objc_msgSend(v8, "length")}];
    v38 = v12;
    v39 = a5;
    if ([v13 count] >= 8)
    {
      v14 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - 7, 7}];

      v13 = v14;
    }

    v15 = [v13 lastObject];
    v16 = [v15 rangeValue];
    v18 = v17;

    if ([v13 count])
    {
      v19 = 0;
      v20 = 0;
      v45 = v16 + v18;
      v42 = a4;
      v43 = v8;
      v40 = LocaleIdentifier;
      v41 = v13;
      while (![v9 count])
      {
        v21 = [v13 objectAtIndexedSubscript:v20];
        v22 = [v21 rangeValue];

        v23 = [v8 substringWithRange:{v22, v45 - v22}];

        v24 = [v13 count];
        if (!LocaleIdentifier || v24 - v20 != 2 || !CFStringHasPrefix(LocaleIdentifier, @"en") || [v23 caseInsensitiveCompare:@"northern ireland"] && objc_msgSend(v23, "caseInsensitiveCompare:", @"inner mongolia"))
        {
          EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
          v26 = [MEMORY[0x277D07318] emojiTokensForCEMEmojiTokens:EmojiTokensForString];
          if ([v26 count])
          {
            v46 = v9;
            v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v26, "count")}];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v28 = v26;
            v29 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v48;
              do
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v48 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [*(*(&v47 + 1) + 8 * i) string];
                  [v27 addObject:v33];
                }

                v30 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
              }

              while (v30);
            }

            v9 = [(TIEmojiCandidateGenerator *)v44 skinToneModifiedAdornmentEmojis:v27 forLocale:v42 forInput:v23];

            v8 = v43;
            LocaleIdentifier = v40;
            v13 = v41;
          }

          if (EmojiTokensForString)
          {
            CFRelease(EmojiTokensForString);
          }

          ++v20;
          v19 = v23;
          if (v20 < [v13 count])
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v23 = v19;
    }

    else
    {
      v23 = 0;
    }

LABEL_28:
    v34 = [v9 count];
    if (v39 && v34)
    {
      v35 = v23;
      *v39 = v23;
    }

    v11 = v9;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)emojiAlternativesForText:(id)a3 matchedString:(id *)a4
{
  v6 = a3;
  if (!self->m_isEmojiInputModeEnabled)
  {
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CBEA60] array];
  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  v8 = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if (v8 < 0)
  {
    m_emojiDataForPrimaryLocale = self->m_emojiDataForPrimaryLocale;
    if (!m_emojiDataForPrimaryLocale)
    {
      goto LABEL_14;
    }

    v10 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:v6 forEmojiLocaleData:m_emojiDataForPrimaryLocale matchedString:a4];
    if (![v10 count])
    {
      m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
      if (m_emojiDataForSecondaryLocale)
      {
        v13 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:v6 forEmojiLocaleData:m_emojiDataForSecondaryLocale matchedString:a4];

        v10 = v13;
      }
    }

    if (![v10 count])
    {
      m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
      if (m_emojiDataForTertiaryLocale)
      {
        v15 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:v6 forEmojiLocaleData:m_emojiDataForTertiaryLocale matchedString:a4];

        v10 = v15;
      }
    }
  }

  else
  {
    v9 = [(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:v8];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:v6 forEmojiLocaleData:v9 matchedString:a4];
  }

  v7 = v10;
LABEL_14:

  return v7;
}

- (void)emojiAlternativesForText:(id)a3 completionHandler:(id)a4
{
  v9 = 0;
  v6 = a4;
  v7 = [(TIEmojiCandidateGenerator *)self emojiAlternativesForText:a3 matchedString:&v9];
  v8 = v9;
  v6[2](v6, v8, v7);
}

- (id)emojiReplacementCandidatesForText:(id)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6341;
  v13 = __Block_byref_object_dispose__6342;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v14 = [v4 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__TIEmojiCandidateGenerator_emojiReplacementCandidatesForText___block_invoke;
  v8[3] = &unk_2787303E0;
  v8[4] = &v9;
  [(TIEmojiCandidateGenerator *)self emojiReplacementCandidatesForText:v5 completionHandler:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)emojiReplacementCandidatesForKeyboardState:(id)a3
{
  v4 = [a3 documentState];
  v5 = [v4 contextBeforeInput];
  v6 = [(TIEmojiCandidateGenerator *)self emojiReplacementCandidatesForText:v5];

  return v6;
}

- (id)emojiReplacementCandidates:(id)a3 matchedString:(id *)a4
{
  v6 = a3;
  if (!self->m_isEmojiInputModeEnabled)
  {
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v7 = [MEMORY[0x277CBEA60] array];
  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  v8 = [v6 lastObject];
  v9 = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if (self->m_emojiDataForPrimaryLocale && v8)
  {
    v10 = v9;
    if (CEMStringIsSingleEmoji())
    {
      m_emojiDataForPrimaryLocale = self->m_emojiDataForPrimaryLocale;
      v12 = CEMEmojiTokenCreateWithString();
      v13 = [MEMORY[0x277CBEB18] array];
      v14 = CEMEmojiTokenCopyRelatedEmoji();
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = [(TIEmojiCandidateGenerator *)self createAndAddEmojiTokensFrom:v14 inArray:v13 forInputString:v8];

      CFRelease(v14);
    }

    else
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        v16 = [(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:v10];
        if (!v16)
        {
          goto LABEL_19;
        }

        v13 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v6 forEmojiLocaleData:v16 asReplacementCandidate:1 matchedString:a4];
        goto LABEL_18;
      }

      v13 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v6 forEmojiLocaleData:self->m_emojiDataForPrimaryLocale asReplacementCandidate:1 matchedString:a4];
      if (![v13 count])
      {
        m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
        if (m_emojiDataForSecondaryLocale)
        {
          v18 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v6 forEmojiLocaleData:m_emojiDataForSecondaryLocale asReplacementCandidate:1 matchedString:a4];

          v13 = v18;
        }
      }

      if ([v13 count] || (m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale) == 0)
      {
LABEL_18:

        v7 = v13;
        goto LABEL_19;
      }

      v15 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v6 forEmojiLocaleData:m_emojiDataForTertiaryLocale asReplacementCandidate:1 matchedString:a4];
    }

    v13 = v15;
    goto LABEL_18;
  }

LABEL_19:

  return v7;
}

- (void)updateEmojiStatusForKeyboardState:(id)a3
{
  v4 = a3;
  v7 = [v4 textInputTraits];
  v5 = [v7 keyboardType];
  v6 = [v4 clientIdentifier];

  [(TIEmojiCandidateGenerator *)self updateEmojiStatusForKeyboardType:v5 appIdentifier:v6];
}

- (void)updateForActiveInputModes:(id)a3
{
  v8 = a3;
  [(TIEmojiCandidateGenerator *)self setActiveInputModes:v8];
  if ([v8 count] < 2)
  {
    m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
    if (m_emojiDataForSecondaryLocale)
    {
      CFRelease(m_emojiDataForSecondaryLocale);
      self->m_emojiDataForSecondaryLocale = 0;
    }

    m_emojiGeneratorSecondaryLanguage = self->m_emojiGeneratorSecondaryLanguage;
    if (m_emojiGeneratorSecondaryLanguage)
    {
      CFRelease(m_emojiGeneratorSecondaryLanguage);
      self->m_emojiGeneratorSecondaryLanguage = 0;
    }

    m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
    if (m_emojiDataForTertiaryLocale)
    {
      CFRelease(m_emojiDataForTertiaryLocale);
      self->m_emojiDataForTertiaryLocale = 0;
    }

    m_emojiGeneratorTertiaryLanguage = self->m_emojiGeneratorTertiaryLanguage;
    if (m_emojiGeneratorTertiaryLanguage)
    {
      CFRelease(m_emojiGeneratorTertiaryLanguage);
      self->m_emojiGeneratorTertiaryLanguage = 0;
    }
  }

  else
  {
    [(TIEmojiCandidateGenerator *)self updateForMultilingualKeyboard:v8];
  }
}

- (void)updateForMultilingualKeyboard:(id)a3
{
  v25 = a3;
  if ([v25 count] >= 2)
  {
    v4 = [v25 count];
    v5 = MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277D2B830];
    if (v4 >= 2)
    {
      m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
      if (m_emojiDataForSecondaryLocale)
      {
        CFRelease(m_emojiDataForSecondaryLocale);
      }

      v8 = [v25 objectAtIndexedSubscript:1];
      v9 = [v8 locale];
      MEMORY[0x2318BC170]();

      self->m_emojiDataForSecondaryLocale = CEMCreateEmojiLocaleData();
      m_emojiGeneratorSecondaryLanguage = self->m_emojiGeneratorSecondaryLanguage;
      if (m_emojiGeneratorSecondaryLanguage)
      {
        CFRelease(m_emojiGeneratorSecondaryLanguage);
      }

      Mutable = CFDictionaryCreateMutable(*v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v12 = *v6;
      v13 = [v25 objectAtIndexedSubscript:1];
      v14 = [v13 locale];
      v15 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(Mutable, v12, v15);

      self->m_emojiGeneratorSecondaryLanguage = NLEmojiPredictorCreate();
      CFRelease(Mutable);
    }

    if ([v25 count] >= 3)
    {
      m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
      if (m_emojiDataForTertiaryLocale)
      {
        CFRelease(m_emojiDataForTertiaryLocale);
      }

      v17 = [v25 objectAtIndexedSubscript:2];
      v18 = [v17 locale];
      MEMORY[0x2318BC170]();

      self->m_emojiDataForTertiaryLocale = CEMCreateEmojiLocaleData();
      m_emojiGeneratorTertiaryLanguage = self->m_emojiGeneratorTertiaryLanguage;
      if (m_emojiGeneratorTertiaryLanguage)
      {
        CFRelease(m_emojiGeneratorTertiaryLanguage);
      }

      v20 = CFDictionaryCreateMutable(*v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = *v6;
      v22 = [v25 objectAtIndexedSubscript:2];
      v23 = [v22 locale];
      v24 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(v20, v21, v24);

      self->m_emojiGeneratorTertiaryLanguage = NLEmojiPredictorCreate();
      CFRelease(v20);
    }
  }
}

- (id)generateEmojiAdornmentCandidates:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEA60] array];
  if ([v4 length])
  {
    v44 = v5;
    v6 = [MEMORY[0x277CCA900] punctuationAndWhitespaceCharacterSet];
    v45 = v4;
    v7 = [v4 stringByTrimmingCharactersInSet:v6];

    v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v43 = v7;
    v9 = [v7 componentsSeparatedByCharactersInSet:v8];

    v10 = [MEMORY[0x277CBEB18] array];
    if ([v9 count])
    {
      v11 = [v9 objectAtIndex:{objc_msgSend(v9, "count") - 1}];
      [v11 length];
      v63 = MEMORY[0x277D85DD0];
      v64 = 3221225472;
      v65 = __62__TIEmojiCandidateGenerator_generateEmojiAdornmentCandidates___block_invoke;
      v66 = &unk_2787303B8;
      v67 = v10;
      CEMEnumerateEmojiTokensInStringWithBlock();
    }

    v48 = [MEMORY[0x277CBEB18] array];
    v46 = v9;
    v41 = self;
    if ([v9 count])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v9;
      v12 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v12)
      {
        v13 = v12;
        v49 = *v60;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v60 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v59 + 1) + 8 * i);
            if (CEMStringContainsEmoji())
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v16 = v10;
              v17 = v10;
              v18 = [v17 countByEnumeratingWithState:&v55 objects:v69 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v56;
                do
                {
                  v21 = 0;
                  v22 = v15;
                  do
                  {
                    if (*v56 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v15 = [v22 stringByReplacingOccurrencesOfString:*(*(&v55 + 1) + 8 * v21) withString:{&stru_283FDFAF8, v41}];

                    ++v21;
                    v22 = v15;
                  }

                  while (v19 != v21);
                  v19 = [v17 countByEnumeratingWithState:&v55 objects:v69 count:16];
                }

                while (v19);
              }

              v10 = v16;
            }

            if ([v15 length])
            {
              [v48 addObject:v15];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v13);
      }

      self = v41;
    }

    v50 = [(TIEmojiCandidateGenerator *)self extractTokensForEmojiComputation:v48, v41];
    v23 = [v50 componentsJoinedByString:@" "];
    v24 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:v23];
    v25 = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v51 + 1) + 8 * j);
          v32 = [v31 candidate];
          v33 = [v10 containsObject:v32];

          if ((v33 & 1) == 0)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v28);
    }

    if ([v25 count] || objc_msgSend(v10, "count"))
    {
      v34 = v10;
      v35 = v25;
      v36 = v44;
      v4 = v45;
      v37 = v43;
    }

    else
    {
      v34 = v10;
      v5 = v44;
      v4 = v45;
      v37 = v43;
      if (![v46 count])
      {
        goto LABEL_37;
      }

      v36 = [v46 objectAtIndex:{objc_msgSend(v46, "count") - 1}];
      v35 = [MEMORY[0x277CBEA60] array];
      if (!CEMStringContainsEmoji())
      {
        v40 = [v42 emojiAppendCandidates:v50];

        v35 = v40;
      }
    }

    v5 = v35;
LABEL_37:
  }

  v38 = *MEMORY[0x277D85DE8];

  return v5;
}

uint64_t __62__TIEmojiCandidateGenerator_generateEmojiAdornmentCandidates___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  String = CEMEmojiTokenGetString();

  return [v1 addObject:String];
}

- (id)emojiAdornmentCandidates:(id)a3 emojiGenerator:(void *)a4 emojiData:(__EmojiLocaleDataWrapper *)a5
{
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  v9 = [v7 array];
  CandidatesForString = NLEmojiPredictorCreateCandidatesForString();

  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  if (CandidatesForString)
  {
    Count = CFArrayGetCount(CandidatesForString);
    if (a5 && Count >= 1)
    {
      v12 = [(TIEmojiCandidateGenerator *)self skinToneModifiedAdornmentEmojis:CandidatesForString forLocale:a5 forInput:&stru_283FDFAF8];

      v9 = v12;
    }

    CFRelease(CandidatesForString);
  }

  return v9;
}

- (id)emojiAdornmentCandidates:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if (![v4 length])
  {
    goto LABEL_19;
  }

  [(TIEmojiCandidateGenerator *)self updateEmojiAdornmentGenerators];
  v6 = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if (v6 < 0)
  {
    if (self->m_emojiGeneratorPrimaryLanguage)
    {
      v17 = [(TIEmojiCandidateGenerator *)self primaryInputMode];
      v18 = [v17 locale];
      v19 = [v18 localeIdentifier];
      v20 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:v19];

      if (!v20)
      {
        v21 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:v4 emojiGenerator:self->m_emojiGeneratorPrimaryLanguage emojiData:self->m_emojiDataForPrimaryLocale];

        v5 = v21;
      }
    }

    if ([v5 count] || !self->m_emojiGeneratorSecondaryLanguage)
    {
      goto LABEL_17;
    }

    v22 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([v22 count] >= 2)
    {
      v23 = [(TIEmojiCandidateGenerator *)self activeInputModes];
      v24 = [v23 objectAtIndexedSubscript:1];
      v25 = [v24 locale];
      v26 = [v25 localeIdentifier];
      v27 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:v26];

      if (v27)
      {
        goto LABEL_17;
      }

      [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:v4 emojiGenerator:self->m_emojiGeneratorSecondaryLanguage emojiData:self->m_emojiDataForSecondaryLocale];
      v5 = v22 = v5;
    }

LABEL_17:
    v16 = v5;
    if ([v5 count] || !self->m_emojiGeneratorTertiaryLanguage)
    {
      goto LABEL_18;
    }

    v5 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([v5 count] != 3)
    {
      goto LABEL_7;
    }

    v30 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    v31 = [v30 objectAtIndexedSubscript:2];
    v32 = [v31 locale];
    v33 = [v32 localeIdentifier];
    v34 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:v33];

    if (v34)
    {
      goto LABEL_18;
    }

    v15 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:v4 emojiGenerator:self->m_emojiGeneratorTertiaryLanguage emojiData:self->m_emojiDataForTertiaryLocale];
    v5 = v16;
LABEL_6:
    v16 = v15;
LABEL_7:

LABEL_18:
    v5 = v16;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = [(TIEmojiCandidateGenerator *)self emojiGeneratorForInputModeIdx:v6];
  if (v8)
  {
    v9 = v8;
    v10 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    v11 = [v10 objectAtIndexedSubscript:v7];
    v12 = [v11 locale];
    v13 = [v12 localeIdentifier];
    v14 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:v13];

    if (!v14)
    {
      v15 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:v4 emojiGenerator:v9 emojiData:[(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:v7]];
      goto LABEL_6;
    }
  }

LABEL_19:
  v28 = [(TIEmojiCandidateGenerator *)self randomShuffle:v5];

  return v28;
}

- (id)emojiAppendCandidates:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEA60] array];
  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  v6 = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = [(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:v6];
    if (!v7)
    {
      goto LABEL_11;
    }

    m_emojiDataForTertiaryLocale = v7;
    goto LABEL_4;
  }

  m_emojiDataForPrimaryLocale = self->m_emojiDataForPrimaryLocale;
  if (m_emojiDataForPrimaryLocale)
  {
    v11 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v4 forEmojiLocaleData:m_emojiDataForPrimaryLocale asReplacementCandidate:0];

    if ([v11 count] || (m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale) == 0)
    {
      v5 = v11;
    }

    else
    {
      v5 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v4 forEmojiLocaleData:m_emojiDataForSecondaryLocale asReplacementCandidate:0];
    }

    if (![v5 count])
    {
      m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
      if (m_emojiDataForTertiaryLocale)
      {
LABEL_4:
        v9 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:v4 forEmojiLocaleData:m_emojiDataForTertiaryLocale asReplacementCandidate:0];

        v5 = v9;
      }
    }
  }

LABEL_11:

  return v5;
}

- (id)skinToneModifiedAdornmentEmojis:(id)a3 forLocale:(__EmojiLocaleDataWrapper *)a4 forInput:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [(TIEmojiCandidateGenerator *)self getSkinToneSensitiveEmojis:a3];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [MEMORY[0x277D6F3D8] candidateWithCandidate:*(*(&v18 + 1) + 8 * i) forInput:{v7, v18}];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getSkinToneSensitiveEmojis:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!getSkinToneSensitiveEmojis__fistEmoji)
  {
    v4 = [MEMORY[0x277D07318] emojiTokenWithString:@"✊" localeData:0];
    v5 = getSkinToneSensitiveEmojis__fistEmoji;
    getSkinToneSensitiveEmojis__fistEmoji = v4;
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v7 = [MEMORY[0x277D07310] sharedServiceWithMachName:0];
    v8 = [v7 preferences];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277D07318] emojiTokenWithString:*(*(&v20 + 1) + 8 * i) localeData:0];
          if ([v14 supportsSkinToneVariants] && (!objc_msgSend(v14, "skinTone") || (objc_msgSend(v14, "isEqualIgnoringModifiers:", getSkinToneSensitiveEmojis__fistEmoji) & 1) == 0))
          {
            v15 = [v8 lastUsedVariantEmojiForEmoji:v14];

            v14 = v15;
          }

          if (v14)
          {
            v16 = [v14 string];
            [v6 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v3 = v19;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)shouldShowEmojisForKeyboardType:(unint64_t)a3 appIdentifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x277D6F380] sharedInputModeController];
  v8 = [v7 enabledInputModeIdentifiers];

  self->m_isEmojiInputModeEnabled = [v8 indexOfObjectPassingTest:&__block_literal_global_6354] != 0x7FFFFFFFFFFFFFFFLL;
  v9 = (a3 < 0x10) & (0x99FAu >> a3);
  if (TIGetShowEmojisByDefaultValue_onceToken != -1)
  {
    dispatch_once(&TIGetShowEmojisByDefaultValue_onceToken, &__block_literal_global_158_6355);
  }

  v10 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v11 = [v10 valueForPreferenceKey:@"ShowEmojisByDefault"];

  LODWORD(v10) = [v11 BOOLValue];
  if ((v9 | v10))
  {
    v12 = v9 ^ 1;
  }

  else
  {
    v12 = 0;
    if (v6 && self->m_isEmojiInputModeEnabled)
    {
      if ([v6 isEqualToString:@"com.apple.StickerKit.StickerPickerService"])
      {
        v12 = 1;
      }

      else
      {
        v20 = 0;
        v14 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
        v15 = [v14 emojiUsageCountForApp:&stru_283FDFAF8 lastEmojiCountUpdateTime:&v20];

        v16 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
        v17 = [v16 emojiUsageCountForApp:v6 lastEmojiCountUpdateTime:&v19];

        if (v15)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        v12 = !v18;
      }
    }
  }

  return v12;
}

uint64_t __75__TIEmojiCandidateGenerator_shouldShowEmojisForKeyboardType_appIdentifier___block_invoke()
{
  v0 = TIInputModeGetLanguage();
  v1 = [v0 isEqualToString:@"emoji"];

  return v1;
}

- (id)extractTokensForEmojiComputation:(id)a3
{
  v3 = a3;
  if ([v3 count] < 8)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 subarrayWithRange:{objc_msgSend(v3, "count") - 7, 7}];
  }

  v5 = v4;

  return v5;
}

- (id)randomShuffle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 insertObject:*(*(&v13 + 1) + 8 * i) atIndex:{arc4random_uniform(objc_msgSend(v4, "count", v13) + 1)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)enumerateForEmojiCandidatesIn:(id)a3 forEmojiLocaleData:(__EmojiLocaleDataWrapper *)a4 asReplacementCandidate:(BOOL)a5 matchedString:(id *)a6
{
  v40 = a5;
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = [MEMORY[0x277CBEB18] array];
  LocaleIdentifier = CEMEmojiLocaleDataGetLocaleIdentifier();
  v39 = self;
  if ([(TIEmojiCandidateGenerator *)self isLocaleDisabled:LocaleIdentifier])
  {
    v12 = v10;
  }

  else
  {
    v35 = a6;
    if ([v9 count])
    {
      v13 = 0;
      v14 = 0;
      v37 = a4;
      v38 = v9;
      v36 = LocaleIdentifier;
      while (![v10 count])
      {
        v15 = [v9 subarrayWithRange:{v14, objc_msgSend(v9, "count") - v14}];
        v16 = [v15 componentsJoinedByString:@" "];

        v17 = [v9 count];
        if (LocaleIdentifier && v17 - v14 == 2 && CFStringHasPrefix(LocaleIdentifier, @"en") && (![(__CFString *)v16 caseInsensitiveCompare:@"northern ireland"]|| ![(__CFString *)v16 caseInsensitiveCompare:@"inner mongolia"]))
        {
          goto LABEL_31;
        }

        EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
        v19 = [MEMORY[0x277D07318] emojiTokensForCEMEmojiTokens:EmojiTokensForString];
        if ([v19 count])
        {
          v41 = v10;
          v20 = [MEMORY[0x277D07310] sharedServiceWithMachName:0];
          v21 = [v20 preferences];

          v22 = [v21 copySortedEmojis:v19 keyword:v16 localeIdentifier:LocaleIdentifier];
          v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v19 = v22;
          v24 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v43;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v43 != v26)
                {
                  objc_enumerationMutation(v19);
                }

                v28 = [*(*(&v42 + 1) + 8 * i) string];
                [v23 addObject:v28];
              }

              v25 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
            }

            while (v25);
          }

          v29 = &stru_283FDFAF8;
          if (v40)
          {
            v29 = v16;
          }

          v30 = v29;
          v10 = [(TIEmojiCandidateGenerator *)v39 skinToneModifiedAdornmentEmojis:v23 forLocale:v37 forInput:v30];

          v9 = v38;
          LocaleIdentifier = v36;
        }

        if (EmojiTokensForString)
        {
          CFRelease(EmojiTokensForString);
        }

        ++v14;

        v13 = v16;
        if (v14 >= [v9 count])
        {
          goto LABEL_28;
        }
      }

      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

LABEL_28:
    v31 = [v10 count];
    if (v35 && v31)
    {
      v32 = v16;
      *v35 = v16;
    }

LABEL_31:
    v12 = v10;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createAndAddEmojiTokensFrom:(__CFArray *)a3 inArray:(id)a4 forInputString:(id)a5
{
  v7 = a4;
  v8 = a5;
  for (i = 0; i < CFArrayGetCount(a3); ++i)
  {
    v10 = MEMORY[0x277D6F3D8];
    CFArrayGetValueAtIndex(a3, i);
    v11 = [v10 candidateWithCandidate:CEMEmojiTokenGetString() forInput:v8];
    [v7 addObject:v11];
  }

  return v7;
}

- (void)updateEmojiAdornmentGenerators
{
  if (!self->m_didAttemptPrimaryEmojiGeneratorLoad)
  {
    self->m_didAttemptPrimaryEmojiGeneratorLoad = 1;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4 = *MEMORY[0x277D2B830];
    v5 = [(TIEmojiCandidateGenerator *)self primaryInputMode];
    v6 = [v5 locale];
    v7 = MEMORY[0x2318BC170]();
    CFDictionaryAddValue(Mutable, v4, v7);

    self->m_emojiGeneratorPrimaryLanguage = NLEmojiPredictorCreate();
    CFRelease(Mutable);
  }

  if (!self->m_didAttemptSecondaryEmojiGeneratorLoad)
  {
    self->m_didAttemptSecondaryEmojiGeneratorLoad = 1;
    v8 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([v8 count] < 2)
    {
      if ([v8 count] == 1)
      {
        m_emojiGeneratorSecondaryLanguage = self->m_emojiGeneratorSecondaryLanguage;
        if (m_emojiGeneratorSecondaryLanguage)
        {
          CFRelease(m_emojiGeneratorSecondaryLanguage);
          self->m_emojiGeneratorSecondaryLanguage = 0;
        }
      }
    }

    else
    {
      v9 = self->m_emojiGeneratorSecondaryLanguage;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v11 = *MEMORY[0x277D2B830];
      v12 = [v8 objectAtIndexedSubscript:1];
      v13 = [v12 locale];
      v14 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(v10, v11, v14);

      self->m_emojiGeneratorSecondaryLanguage = NLEmojiPredictorCreate();
      CFRelease(v10);
    }
  }

  if (!self->m_didAttemptTertiaryEmojiGeneratorLoad)
  {
    self->m_didAttemptTertiaryEmojiGeneratorLoad = 1;
    v23 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([v23 count] == 3)
    {
      m_emojiGeneratorTertiaryLanguage = self->m_emojiGeneratorTertiaryLanguage;
      if (m_emojiGeneratorTertiaryLanguage)
      {
        CFRelease(m_emojiGeneratorTertiaryLanguage);
      }

      v17 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v18 = *MEMORY[0x277D2B830];
      v19 = [v23 objectAtIndexedSubscript:2];
      v20 = [v19 locale];
      v21 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(v17, v18, v21);

      self->m_emojiGeneratorTertiaryLanguage = NLEmojiPredictorCreate();
      CFRelease(v17);
    }

    else if ([v23 count] <= 2)
    {
      v22 = self->m_emojiGeneratorTertiaryLanguage;
      if (v22)
      {
        CFRelease(v22);
        self->m_emojiGeneratorTertiaryLanguage = 0;
      }
    }
  }
}

- (void)updateEmojiLocale
{
  v3 = [(TIEmojiCandidateGenerator *)self activeInputModes];
  v17 = v3;
  if (!self->m_didAttemptPrimaryLocaleForEmojiLoad)
  {
    self->m_didAttemptPrimaryLocaleForEmojiLoad = 1;
    v4 = [(TIEmojiCandidateGenerator *)self primaryInputMode];
    v5 = [v4 locale];
    MEMORY[0x2318BC170]();

    v6 = CEMCreateEmojiLocaleData();
    v3 = v17;
    self->m_emojiDataForPrimaryLocale = v6;
  }

  if (!self->m_didAttemptSecondaryLocaleForEmojiLoad)
  {
    self->m_didAttemptSecondaryLocaleForEmojiLoad = 1;
    if ([v3 count] < 2)
    {
      v11 = [v17 count];
      v3 = v17;
      if (v11 == 1)
      {
        m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
        if (m_emojiDataForSecondaryLocale)
        {
          CFRelease(m_emojiDataForSecondaryLocale);
          v3 = v17;
          self->m_emojiDataForSecondaryLocale = 0;
        }
      }
    }

    else
    {
      v7 = self->m_emojiDataForSecondaryLocale;
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = [v17 objectAtIndexedSubscript:1];
      v9 = [v8 locale];
      MEMORY[0x2318BC170]();

      v10 = CEMCreateEmojiLocaleData();
      v3 = v17;
      self->m_emojiDataForSecondaryLocale = v10;
    }
  }

  if (!self->m_didAttemptTertiaryLocaleForEmojiLoad)
  {
    self->m_didAttemptTertiaryLocaleForEmojiLoad = 1;
    if ([v3 count] < 3)
    {
      if ([v17 count] <= 2)
      {
        m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
        if (m_emojiDataForTertiaryLocale)
        {
          CFRelease(m_emojiDataForTertiaryLocale);
          self->m_emojiDataForTertiaryLocale = 0;
        }
      }
    }

    else
    {
      v13 = self->m_emojiDataForTertiaryLocale;
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = [v17 objectAtIndexedSubscript:2];
      v15 = [v14 locale];
      MEMORY[0x2318BC170]();

      self->m_emojiDataForTertiaryLocale = CEMCreateEmojiLocaleData();
    }
  }

  MEMORY[0x2821F96F8]();
}

- (TIInputMode)primaryInputMode
{
  v2 = [(TIEmojiCandidateGenerator *)self activeInputModes];
  v3 = [v2 firstObject];

  return v3;
}

- (void)dealloc
{
  m_emojiGeneratorPrimaryLanguage = self->m_emojiGeneratorPrimaryLanguage;
  if (m_emojiGeneratorPrimaryLanguage)
  {
    CFRelease(m_emojiGeneratorPrimaryLanguage);
  }

  m_emojiGeneratorSecondaryLanguage = self->m_emojiGeneratorSecondaryLanguage;
  if (m_emojiGeneratorSecondaryLanguage)
  {
    CFRelease(m_emojiGeneratorSecondaryLanguage);
  }

  m_emojiGeneratorTertiaryLanguage = self->m_emojiGeneratorTertiaryLanguage;
  if (m_emojiGeneratorTertiaryLanguage)
  {
    CFRelease(m_emojiGeneratorTertiaryLanguage);
  }

  m_emojiDataForPrimaryLocale = self->m_emojiDataForPrimaryLocale;
  if (m_emojiDataForPrimaryLocale)
  {
    CFRelease(m_emojiDataForPrimaryLocale);
  }

  m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
  if (m_emojiDataForSecondaryLocale)
  {
    CFRelease(m_emojiDataForSecondaryLocale);
  }

  m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
  if (m_emojiDataForTertiaryLocale)
  {
    CFRelease(m_emojiDataForTertiaryLocale);
  }

  v9.receiver = self;
  v9.super_class = TIEmojiCandidateGenerator;
  [(TIEmojiCandidateGenerator *)&v9 dealloc];
}

- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)a3 inputManager:(id)a4
{
  v6 = a4;
  v7 = [(TIEmojiCandidateGenerator *)self initWithActiveInputModes:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->m_inputManager, v6);
  }

  return v8;
}

- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TIEmojiCandidateGenerator;
  v6 = [(TIEmojiCandidateGenerator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeInputModes, a3);
    v7->m_shouldShowEmojis = 0;
    v7->m_emojiGeneratorSecondaryLanguage = 0;
    v7->m_emojiGeneratorTertiaryLanguage = 0;
    v7->m_emojiGeneratorPrimaryLanguage = 0;
    v7->m_emojiDataForSecondaryLocale = 0;
    v7->m_emojiDataForTertiaryLocale = 0;
    v7->m_emojiDataForPrimaryLocale = 0;
    v8 = [MEMORY[0x277CBEB98] setWithObjects:{@"gu", @"mr", @"te", @"ta", @"pa", @"bn", @"gu-Latn", @"mr-Latn", @"te-Latn", @"ta-Latn", @"pa-Latn", @"bn-Latn", 0}];
    m_disabledLocales = v7->m_disabledLocales;
    v7->m_disabledLocales = v8;
  }

  return v7;
}

@end