@interface TIEmojiCandidateGenerator
- (BOOL)isLocaleDisabled:(id)disabled;
- (BOOL)shouldShowEmojisForKeyboardType:(unint64_t)type appIdentifier:(id)identifier;
- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)modes;
- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)modes inputManager:(id)manager;
- (TIInputMode)primaryInputMode;
- (__EmojiLocaleDataWrapper)emojiDataForInputModeIdx:(unint64_t)idx;
- (id)createAndAddEmojiTokensFrom:(__CFArray *)from inArray:(id)array forInputString:(id)string;
- (id)emojiAdornmentCandidates:(id)candidates;
- (id)emojiAdornmentCandidates:(id)candidates emojiGenerator:(void *)generator emojiData:(__EmojiLocaleDataWrapper *)data;
- (id)emojiAdornmentCandidatesForKeyboardState:(id)state;
- (id)emojiAlternativesForText:(id)text matchedString:(id *)string;
- (id)emojiAppendCandidates:(id)candidates;
- (id)emojiReplacementCandidates:(id)candidates matchedString:(id *)string;
- (id)emojiReplacementCandidatesForKeyboardState:(id)state;
- (id)emojiReplacementCandidatesForText:(id)text;
- (id)enumerateForEmojiAlternativesInText:(id)text forEmojiLocaleData:(__EmojiLocaleDataWrapper *)data matchedString:(id *)string;
- (id)enumerateForEmojiCandidatesIn:(id)in forEmojiLocaleData:(__EmojiLocaleDataWrapper *)data asReplacementCandidate:(BOOL)candidate matchedString:(id *)string;
- (id)extractTokensForEmojiComputation:(id)computation;
- (id)generateEmojiAdornmentCandidates:(id)candidates;
- (id)getSkinToneSensitiveEmojis:(id)emojis;
- (id)randomShuffle:(id)shuffle;
- (id)skinToneModifiedAdornmentEmojis:(id)emojis forLocale:(__EmojiLocaleDataWrapper *)locale forInput:(id)input;
- (int64_t)emojiPredominantInputModeIdxFromContext;
- (void)dealloc;
- (void)emojiAlternativesForText:(id)text completionHandler:(id)handler;
- (void)emojiGeneratorForInputModeIdx:(unint64_t)idx;
- (void)emojiReplacementCandidatesForText:(id)text completionHandler:(id)handler;
- (void)updateEmojiAdornmentGenerators;
- (void)updateEmojiLocale;
- (void)updateEmojiStatusForKeyboardState:(id)state;
- (void)updateForActiveInputModes:(id)modes;
- (void)updateForMultilingualKeyboard:(id)keyboard;
@end

@implementation TIEmojiCandidateGenerator

- (void)emojiGeneratorForInputModeIdx:(unint64_t)idx
{
  if (idx > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->m_emojiGeneratorPrimaryLanguage + idx);
  }
}

- (__EmojiLocaleDataWrapper)emojiDataForInputModeIdx:(unint64_t)idx
{
  if (idx > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->m_emojiDataForPrimaryLocale + idx);
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
  predominantLexiconInContext = [v6 predominantLexiconInContext];

  v8 = TILocaleIdentifierForLexiconID(predominantLexiconInContext);
  v9 = -1;
  if (predominantLexiconInContext && v8)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithCString:TILocaleIdentifierForLexiconID(predominantLexiconInContext) encoding:4];
    primaryInputMode = [(TIEmojiCandidateGenerator *)self primaryInputMode];
    locale = [primaryInputMode locale];
    localeIdentifier = [locale localeIdentifier];
    v14 = [localeIdentifier isEqualToString:v10];

    if (v14)
    {
      v9 = 0;
LABEL_18:

      return v9;
    }

    activeInputModes = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([activeInputModes count] <= 1)
    {
    }

    else
    {
      activeInputModes2 = [(TIEmojiCandidateGenerator *)self activeInputModes];
      v9 = 1;
      v18 = [activeInputModes2 objectAtIndexedSubscript:1];
      locale2 = [v18 locale];
      localeIdentifier2 = [locale2 localeIdentifier];
      v21 = [localeIdentifier2 isEqualToString:v10];

      if (v21)
      {
        goto LABEL_18;
      }
    }

    activeInputModes3 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([activeInputModes3 count] <= 2)
    {

      v9 = -1;
    }

    else
    {
      activeInputModes4 = [(TIEmojiCandidateGenerator *)self activeInputModes];
      v24 = [activeInputModes4 objectAtIndexedSubscript:2];
      locale3 = [v24 locale];
      localeIdentifier3 = [locale3 localeIdentifier];
      v27 = [localeIdentifier3 isEqualToString:v10];

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

- (BOOL)isLocaleDisabled:(id)disabled
{
  disabledCopy = disabled;
  v5 = (_os_feature_enabled_impl() & 1) == 0 && [(NSSet *)self->m_disabledLocales containsObject:disabledCopy];

  return v5;
}

- (id)emojiAdornmentCandidatesForKeyboardState:(id)state
{
  stateCopy = state;
  array = [MEMORY[0x277CBEA60] array];
  if (self->m_shouldShowEmojis)
  {
    documentState = [stateCopy documentState];
    contextBeforeInput = [documentState contextBeforeInput];
    v8 = [(TIEmojiCandidateGenerator *)self generateEmojiAdornmentCandidates:contextBeforeInput];

    array = v8;
  }

  return array;
}

- (void)emojiReplacementCandidatesForText:(id)text completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  array = [MEMORY[0x277CBEA60] array];
  if (!self->m_shouldShowEmojis)
  {
    v12 = &stru_283FDFAF8;
    if (!handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v10 = [textCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  lastObject = [v10 lastObject];

  if ([lastObject _looksLikeEmailAddress])
  {
    v12 = &stru_283FDFAF8;
  }

  else
  {
    v12 = &stru_283FDFAF8;
    if (([lastObject _looksLikeURL] & 1) == 0)
    {
      whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v14 = [textCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet2];

      v15 = [(TIEmojiCandidateGenerator *)self extractTokensForEmojiComputation:v14];
      v17 = &stru_283FDFAF8;
      v16 = [(TIEmojiCandidateGenerator *)self emojiReplacementCandidates:v15 matchedString:&v17];
      v12 = v17;

      array = v16;
    }
  }

  if (handlerCopy)
  {
LABEL_9:
    handlerCopy[2](handlerCopy, v12, array);
  }

LABEL_10:
}

- (id)enumerateForEmojiAlternativesInText:(id)text forEmojiLocaleData:(__EmojiLocaleDataWrapper *)data matchedString:(id *)string
{
  v52 = *MEMORY[0x277D85DE8];
  textCopy = text;
  array = [MEMORY[0x277CBEB18] array];
  LocaleIdentifier = CEMEmojiLocaleDataGetLocaleIdentifier();
  selfCopy = self;
  if ([(TIEmojiCandidateGenerator *)self isLocaleDisabled:LocaleIdentifier])
  {
    v11 = array;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:0];
    [v12 setString:textCopy];
    [v12 setLanguage:LocaleIdentifier];
    v13 = [v12 tokensForRange:{0, objc_msgSend(textCopy, "length")}];
    v38 = v12;
    stringCopy = string;
    if ([v13 count] >= 8)
    {
      v14 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - 7, 7}];

      v13 = v14;
    }

    lastObject = [v13 lastObject];
    rangeValue = [lastObject rangeValue];
    v18 = v17;

    if ([v13 count])
    {
      v19 = 0;
      v20 = 0;
      v45 = rangeValue + v18;
      dataCopy = data;
      v43 = textCopy;
      v40 = LocaleIdentifier;
      v41 = v13;
      while (![array count])
      {
        v21 = [v13 objectAtIndexedSubscript:v20];
        rangeValue2 = [v21 rangeValue];

        v23 = [textCopy substringWithRange:{rangeValue2, v45 - rangeValue2}];

        v24 = [v13 count];
        if (!LocaleIdentifier || v24 - v20 != 2 || !CFStringHasPrefix(LocaleIdentifier, @"en") || [v23 caseInsensitiveCompare:@"northern ireland"] && objc_msgSend(v23, "caseInsensitiveCompare:", @"inner mongolia"))
        {
          EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
          v26 = [MEMORY[0x277D07318] emojiTokensForCEMEmojiTokens:EmojiTokensForString];
          if ([v26 count])
          {
            v46 = array;
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

                  string = [*(*(&v47 + 1) + 8 * i) string];
                  [v27 addObject:string];
                }

                v30 = [v28 countByEnumeratingWithState:&v47 objects:v51 count:16];
              }

              while (v30);
            }

            array = [(TIEmojiCandidateGenerator *)selfCopy skinToneModifiedAdornmentEmojis:v27 forLocale:dataCopy forInput:v23];

            textCopy = v43;
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
    v34 = [array count];
    if (stringCopy && v34)
    {
      v35 = v23;
      *stringCopy = v23;
    }

    v11 = array;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)emojiAlternativesForText:(id)text matchedString:(id *)string
{
  textCopy = text;
  if (!self->m_isEmojiInputModeEnabled)
  {
    array = MEMORY[0x277CBEBF8];
    goto LABEL_14;
  }

  array = [MEMORY[0x277CBEA60] array];
  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  emojiPredominantInputModeIdxFromContext = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if (emojiPredominantInputModeIdxFromContext < 0)
  {
    m_emojiDataForPrimaryLocale = self->m_emojiDataForPrimaryLocale;
    if (!m_emojiDataForPrimaryLocale)
    {
      goto LABEL_14;
    }

    v10 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:textCopy forEmojiLocaleData:m_emojiDataForPrimaryLocale matchedString:string];
    if (![v10 count])
    {
      m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
      if (m_emojiDataForSecondaryLocale)
      {
        v13 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:textCopy forEmojiLocaleData:m_emojiDataForSecondaryLocale matchedString:string];

        v10 = v13;
      }
    }

    if (![v10 count])
    {
      m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
      if (m_emojiDataForTertiaryLocale)
      {
        v15 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:textCopy forEmojiLocaleData:m_emojiDataForTertiaryLocale matchedString:string];

        v10 = v15;
      }
    }
  }

  else
  {
    v9 = [(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:emojiPredominantInputModeIdxFromContext];
    if (!v9)
    {
      goto LABEL_14;
    }

    v10 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiAlternativesInText:textCopy forEmojiLocaleData:v9 matchedString:string];
  }

  array = v10;
LABEL_14:

  return array;
}

- (void)emojiAlternativesForText:(id)text completionHandler:(id)handler
{
  v9 = 0;
  handlerCopy = handler;
  v7 = [(TIEmojiCandidateGenerator *)self emojiAlternativesForText:text matchedString:&v9];
  v8 = v9;
  handlerCopy[2](handlerCopy, v8, v7);
}

- (id)emojiReplacementCandidatesForText:(id)text
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6341;
  v13 = __Block_byref_object_dispose__6342;
  v4 = MEMORY[0x277CBEA60];
  textCopy = text;
  array = [v4 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__TIEmojiCandidateGenerator_emojiReplacementCandidatesForText___block_invoke;
  v8[3] = &unk_2787303E0;
  v8[4] = &v9;
  [(TIEmojiCandidateGenerator *)self emojiReplacementCandidatesForText:textCopy completionHandler:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)emojiReplacementCandidatesForKeyboardState:(id)state
{
  documentState = [state documentState];
  contextBeforeInput = [documentState contextBeforeInput];
  v6 = [(TIEmojiCandidateGenerator *)self emojiReplacementCandidatesForText:contextBeforeInput];

  return v6;
}

- (id)emojiReplacementCandidates:(id)candidates matchedString:(id *)string
{
  candidatesCopy = candidates;
  if (!self->m_isEmojiInputModeEnabled)
  {
    array = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  array = [MEMORY[0x277CBEA60] array];
  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  lastObject = [candidatesCopy lastObject];
  emojiPredominantInputModeIdxFromContext = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if (self->m_emojiDataForPrimaryLocale && lastObject)
  {
    v10 = emojiPredominantInputModeIdxFromContext;
    if (CEMStringIsSingleEmoji())
    {
      m_emojiDataForPrimaryLocale = self->m_emojiDataForPrimaryLocale;
      v12 = CEMEmojiTokenCreateWithString();
      array2 = [MEMORY[0x277CBEB18] array];
      v14 = CEMEmojiTokenCopyRelatedEmoji();
      if (v12)
      {
        CFRelease(v12);
      }

      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = [(TIEmojiCandidateGenerator *)self createAndAddEmojiTokensFrom:v14 inArray:array2 forInputString:lastObject];

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

        array2 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:v16 asReplacementCandidate:1 matchedString:string];
        goto LABEL_18;
      }

      array2 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:self->m_emojiDataForPrimaryLocale asReplacementCandidate:1 matchedString:string];
      if (![array2 count])
      {
        m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
        if (m_emojiDataForSecondaryLocale)
        {
          v18 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:m_emojiDataForSecondaryLocale asReplacementCandidate:1 matchedString:string];

          array2 = v18;
        }
      }

      if ([array2 count] || (m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale) == 0)
      {
LABEL_18:

        array = array2;
        goto LABEL_19;
      }

      v15 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:m_emojiDataForTertiaryLocale asReplacementCandidate:1 matchedString:string];
    }

    array2 = v15;
    goto LABEL_18;
  }

LABEL_19:

  return array;
}

- (void)updateEmojiStatusForKeyboardState:(id)state
{
  stateCopy = state;
  textInputTraits = [stateCopy textInputTraits];
  keyboardType = [textInputTraits keyboardType];
  clientIdentifier = [stateCopy clientIdentifier];

  [(TIEmojiCandidateGenerator *)self updateEmojiStatusForKeyboardType:keyboardType appIdentifier:clientIdentifier];
}

- (void)updateForActiveInputModes:(id)modes
{
  modesCopy = modes;
  [(TIEmojiCandidateGenerator *)self setActiveInputModes:modesCopy];
  if ([modesCopy count] < 2)
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
    [(TIEmojiCandidateGenerator *)self updateForMultilingualKeyboard:modesCopy];
  }
}

- (void)updateForMultilingualKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if ([keyboardCopy count] >= 2)
  {
    v4 = [keyboardCopy count];
    v5 = MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277D2B830];
    if (v4 >= 2)
    {
      m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
      if (m_emojiDataForSecondaryLocale)
      {
        CFRelease(m_emojiDataForSecondaryLocale);
      }

      v8 = [keyboardCopy objectAtIndexedSubscript:1];
      locale = [v8 locale];
      MEMORY[0x2318BC170]();

      self->m_emojiDataForSecondaryLocale = CEMCreateEmojiLocaleData();
      m_emojiGeneratorSecondaryLanguage = self->m_emojiGeneratorSecondaryLanguage;
      if (m_emojiGeneratorSecondaryLanguage)
      {
        CFRelease(m_emojiGeneratorSecondaryLanguage);
      }

      Mutable = CFDictionaryCreateMutable(*v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v12 = *v6;
      v13 = [keyboardCopy objectAtIndexedSubscript:1];
      locale2 = [v13 locale];
      v15 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(Mutable, v12, v15);

      self->m_emojiGeneratorSecondaryLanguage = NLEmojiPredictorCreate();
      CFRelease(Mutable);
    }

    if ([keyboardCopy count] >= 3)
    {
      m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
      if (m_emojiDataForTertiaryLocale)
      {
        CFRelease(m_emojiDataForTertiaryLocale);
      }

      v17 = [keyboardCopy objectAtIndexedSubscript:2];
      locale3 = [v17 locale];
      MEMORY[0x2318BC170]();

      self->m_emojiDataForTertiaryLocale = CEMCreateEmojiLocaleData();
      m_emojiGeneratorTertiaryLanguage = self->m_emojiGeneratorTertiaryLanguage;
      if (m_emojiGeneratorTertiaryLanguage)
      {
        CFRelease(m_emojiGeneratorTertiaryLanguage);
      }

      v20 = CFDictionaryCreateMutable(*v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = *v6;
      v22 = [keyboardCopy objectAtIndexedSubscript:2];
      locale4 = [v22 locale];
      v24 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(v20, v21, v24);

      self->m_emojiGeneratorTertiaryLanguage = NLEmojiPredictorCreate();
      CFRelease(v20);
    }
  }
}

- (id)generateEmojiAdornmentCandidates:(id)candidates
{
  v71 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  array = [MEMORY[0x277CBEA60] array];
  if ([candidatesCopy length])
  {
    v44 = array;
    punctuationAndWhitespaceCharacterSet = [MEMORY[0x277CCA900] punctuationAndWhitespaceCharacterSet];
    v45 = candidatesCopy;
    v7 = [candidatesCopy stringByTrimmingCharactersInSet:punctuationAndWhitespaceCharacterSet];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v43 = v7;
    v9 = [v7 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

    array2 = [MEMORY[0x277CBEB18] array];
    if ([v9 count])
    {
      v11 = [v9 objectAtIndex:{objc_msgSend(v9, "count") - 1}];
      [v11 length];
      v63 = MEMORY[0x277D85DD0];
      v64 = 3221225472;
      v65 = __62__TIEmojiCandidateGenerator_generateEmojiAdornmentCandidates___block_invoke;
      v66 = &unk_2787303B8;
      v67 = array2;
      CEMEnumerateEmojiTokensInStringWithBlock();
    }

    array3 = [MEMORY[0x277CBEB18] array];
    v46 = v9;
    selfCopy = self;
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
              v16 = array2;
              v17 = array2;
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

                    v15 = [v22 stringByReplacingOccurrencesOfString:*(*(&v55 + 1) + 8 * v21) withString:{&stru_283FDFAF8, selfCopy}];

                    ++v21;
                    v22 = v15;
                  }

                  while (v19 != v21);
                  v19 = [v17 countByEnumeratingWithState:&v55 objects:v69 count:16];
                }

                while (v19);
              }

              array2 = v16;
            }

            if ([v15 length])
            {
              [array3 addObject:v15];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v59 objects:v70 count:16];
        }

        while (v13);
      }

      self = selfCopy;
    }

    selfCopy = [(TIEmojiCandidateGenerator *)self extractTokensForEmojiComputation:array3, selfCopy];
    v23 = [selfCopy componentsJoinedByString:@" "];
    v24 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:v23];
    array4 = [MEMORY[0x277CBEB18] array];
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
          candidate = [v31 candidate];
          v33 = [array2 containsObject:candidate];

          if ((v33 & 1) == 0)
          {
            [array4 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v68 count:16];
      }

      while (v28);
    }

    if ([array4 count] || objc_msgSend(array2, "count"))
    {
      v34 = array2;
      array5 = array4;
      v36 = v44;
      candidatesCopy = v45;
      v37 = v43;
    }

    else
    {
      v34 = array2;
      array = v44;
      candidatesCopy = v45;
      v37 = v43;
      if (![v46 count])
      {
        goto LABEL_37;
      }

      v36 = [v46 objectAtIndex:{objc_msgSend(v46, "count") - 1}];
      array5 = [MEMORY[0x277CBEA60] array];
      if (!CEMStringContainsEmoji())
      {
        v40 = [v42 emojiAppendCandidates:selfCopy];

        array5 = v40;
      }
    }

    array = array5;
LABEL_37:
  }

  v38 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __62__TIEmojiCandidateGenerator_generateEmojiAdornmentCandidates___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  String = CEMEmojiTokenGetString();

  return [v1 addObject:String];
}

- (id)emojiAdornmentCandidates:(id)candidates emojiGenerator:(void *)generator emojiData:(__EmojiLocaleDataWrapper *)data
{
  v7 = MEMORY[0x277CBEB18];
  candidatesCopy = candidates;
  array = [v7 array];
  CandidatesForString = NLEmojiPredictorCreateCandidatesForString();

  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  if (CandidatesForString)
  {
    Count = CFArrayGetCount(CandidatesForString);
    if (data && Count >= 1)
    {
      v12 = [(TIEmojiCandidateGenerator *)self skinToneModifiedAdornmentEmojis:CandidatesForString forLocale:data forInput:&stru_283FDFAF8];

      array = v12;
    }

    CFRelease(CandidatesForString);
  }

  return array;
}

- (id)emojiAdornmentCandidates:(id)candidates
{
  candidatesCopy = candidates;
  array = [MEMORY[0x277CBEB18] array];
  if (![candidatesCopy length])
  {
    goto LABEL_19;
  }

  [(TIEmojiCandidateGenerator *)self updateEmojiAdornmentGenerators];
  emojiPredominantInputModeIdxFromContext = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if (emojiPredominantInputModeIdxFromContext < 0)
  {
    if (self->m_emojiGeneratorPrimaryLanguage)
    {
      primaryInputMode = [(TIEmojiCandidateGenerator *)self primaryInputMode];
      locale = [primaryInputMode locale];
      localeIdentifier = [locale localeIdentifier];
      v20 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:localeIdentifier];

      if (!v20)
      {
        v21 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:candidatesCopy emojiGenerator:self->m_emojiGeneratorPrimaryLanguage emojiData:self->m_emojiDataForPrimaryLocale];

        array = v21;
      }
    }

    if ([array count] || !self->m_emojiGeneratorSecondaryLanguage)
    {
      goto LABEL_17;
    }

    activeInputModes = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([activeInputModes count] >= 2)
    {
      activeInputModes2 = [(TIEmojiCandidateGenerator *)self activeInputModes];
      v24 = [activeInputModes2 objectAtIndexedSubscript:1];
      locale2 = [v24 locale];
      localeIdentifier2 = [locale2 localeIdentifier];
      v27 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:localeIdentifier2];

      if (v27)
      {
        goto LABEL_17;
      }

      [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:candidatesCopy emojiGenerator:self->m_emojiGeneratorSecondaryLanguage emojiData:self->m_emojiDataForSecondaryLocale];
      array = activeInputModes = array;
    }

LABEL_17:
    v16 = array;
    if ([array count] || !self->m_emojiGeneratorTertiaryLanguage)
    {
      goto LABEL_18;
    }

    array = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([array count] != 3)
    {
      goto LABEL_7;
    }

    activeInputModes3 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    v31 = [activeInputModes3 objectAtIndexedSubscript:2];
    locale3 = [v31 locale];
    localeIdentifier3 = [locale3 localeIdentifier];
    v34 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:localeIdentifier3];

    if (v34)
    {
      goto LABEL_18;
    }

    v15 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:candidatesCopy emojiGenerator:self->m_emojiGeneratorTertiaryLanguage emojiData:self->m_emojiDataForTertiaryLocale];
    array = v16;
LABEL_6:
    v16 = v15;
LABEL_7:

LABEL_18:
    array = v16;
    goto LABEL_19;
  }

  v7 = emojiPredominantInputModeIdxFromContext;
  v8 = [(TIEmojiCandidateGenerator *)self emojiGeneratorForInputModeIdx:emojiPredominantInputModeIdxFromContext];
  if (v8)
  {
    v9 = v8;
    activeInputModes4 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    v11 = [activeInputModes4 objectAtIndexedSubscript:v7];
    locale4 = [v11 locale];
    localeIdentifier4 = [locale4 localeIdentifier];
    v14 = [(TIEmojiCandidateGenerator *)self isLocaleDisabled:localeIdentifier4];

    if (!v14)
    {
      v15 = [(TIEmojiCandidateGenerator *)self emojiAdornmentCandidates:candidatesCopy emojiGenerator:v9 emojiData:[(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:v7]];
      goto LABEL_6;
    }
  }

LABEL_19:
  v28 = [(TIEmojiCandidateGenerator *)self randomShuffle:array];

  return v28;
}

- (id)emojiAppendCandidates:(id)candidates
{
  candidatesCopy = candidates;
  array = [MEMORY[0x277CBEA60] array];
  [(TIEmojiCandidateGenerator *)self updateEmojiLocale];
  emojiPredominantInputModeIdxFromContext = [(TIEmojiCandidateGenerator *)self emojiPredominantInputModeIdxFromContext];
  if ((emojiPredominantInputModeIdxFromContext & 0x8000000000000000) == 0)
  {
    v7 = [(TIEmojiCandidateGenerator *)self emojiDataForInputModeIdx:emojiPredominantInputModeIdxFromContext];
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
    v11 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:m_emojiDataForPrimaryLocale asReplacementCandidate:0];

    if ([v11 count] || (m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale) == 0)
    {
      array = v11;
    }

    else
    {
      array = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:m_emojiDataForSecondaryLocale asReplacementCandidate:0];
    }

    if (![array count])
    {
      m_emojiDataForTertiaryLocale = self->m_emojiDataForTertiaryLocale;
      if (m_emojiDataForTertiaryLocale)
      {
LABEL_4:
        v9 = [(TIEmojiCandidateGenerator *)self enumerateForEmojiCandidatesIn:candidatesCopy forEmojiLocaleData:m_emojiDataForTertiaryLocale asReplacementCandidate:0];

        array = v9;
      }
    }
  }

LABEL_11:

  return array;
}

- (id)skinToneModifiedAdornmentEmojis:(id)emojis forLocale:(__EmojiLocaleDataWrapper *)locale forInput:(id)input
{
  v23 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v8 = [(TIEmojiCandidateGenerator *)self getSkinToneSensitiveEmojis:emojis];
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

        v15 = [MEMORY[0x277D6F3D8] candidateWithCandidate:*(*(&v18 + 1) + 8 * i) forInput:{inputCopy, v18}];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)getSkinToneSensitiveEmojis:(id)emojis
{
  v25 = *MEMORY[0x277D85DE8];
  emojisCopy = emojis;
  if (!getSkinToneSensitiveEmojis__fistEmoji)
  {
    v4 = [MEMORY[0x277D07318] emojiTokenWithString:@"✊" localeData:0];
    v5 = getSkinToneSensitiveEmojis__fistEmoji;
    getSkinToneSensitiveEmojis__fistEmoji = v4;
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(emojisCopy, "count")}];
  if ([emojisCopy count])
  {
    v7 = [MEMORY[0x277D07310] sharedServiceWithMachName:0];
    preferences = [v7 preferences];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = emojisCopy;
    v9 = emojisCopy;
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
            v15 = [preferences lastUsedVariantEmojiForEmoji:v14];

            v14 = v15;
          }

          if (v14)
          {
            string = [v14 string];
            [v6 addObject:string];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    emojisCopy = v19;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)shouldShowEmojisForKeyboardType:(unint64_t)type appIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mEMORY[0x277D6F380] = [MEMORY[0x277D6F380] sharedInputModeController];
  enabledInputModeIdentifiers = [mEMORY[0x277D6F380] enabledInputModeIdentifiers];

  self->m_isEmojiInputModeEnabled = [enabledInputModeIdentifiers indexOfObjectPassingTest:&__block_literal_global_6354] != 0x7FFFFFFFFFFFFFFFLL;
  v9 = (type < 0x10) & (0x99FAu >> type);
  if (TIGetShowEmojisByDefaultValue_onceToken != -1)
  {
    dispatch_once(&TIGetShowEmojisByDefaultValue_onceToken, &__block_literal_global_158_6355);
  }

  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v11 = [mEMORY[0x277D6F470] valueForPreferenceKey:@"ShowEmojisByDefault"];

  LODWORD(mEMORY[0x277D6F470]) = [v11 BOOLValue];
  if ((v9 | mEMORY[0x277D6F470]))
  {
    v12 = v9 ^ 1;
  }

  else
  {
    v12 = 0;
    if (identifierCopy && self->m_isEmojiInputModeEnabled)
    {
      if ([identifierCopy isEqualToString:@"com.apple.StickerKit.StickerPickerService"])
      {
        v12 = 1;
      }

      else
      {
        v20 = 0;
        v14 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
        v15 = [v14 emojiUsageCountForApp:&stru_283FDFAF8 lastEmojiCountUpdateTime:&v20];

        v16 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
        v17 = [v16 emojiUsageCountForApp:identifierCopy lastEmojiCountUpdateTime:&v19];

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

- (id)extractTokensForEmojiComputation:(id)computation
{
  computationCopy = computation;
  if ([computationCopy count] < 8)
  {
    v4 = computationCopy;
  }

  else
  {
    v4 = [computationCopy subarrayWithRange:{objc_msgSend(computationCopy, "count") - 7, 7}];
  }

  v5 = v4;

  return v5;
}

- (id)randomShuffle:(id)shuffle
{
  v18 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(shuffleCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = shuffleCopy;
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

- (id)enumerateForEmojiCandidatesIn:(id)in forEmojiLocaleData:(__EmojiLocaleDataWrapper *)data asReplacementCandidate:(BOOL)candidate matchedString:(id *)string
{
  candidateCopy = candidate;
  v47 = *MEMORY[0x277D85DE8];
  inCopy = in;
  array = [MEMORY[0x277CBEB18] array];
  LocaleIdentifier = CEMEmojiLocaleDataGetLocaleIdentifier();
  selfCopy = self;
  if ([(TIEmojiCandidateGenerator *)self isLocaleDisabled:LocaleIdentifier])
  {
    v12 = array;
  }

  else
  {
    stringCopy = string;
    if ([inCopy count])
    {
      v13 = 0;
      v14 = 0;
      dataCopy = data;
      v38 = inCopy;
      v36 = LocaleIdentifier;
      while (![array count])
      {
        v15 = [inCopy subarrayWithRange:{v14, objc_msgSend(inCopy, "count") - v14}];
        v16 = [v15 componentsJoinedByString:@" "];

        v17 = [inCopy count];
        if (LocaleIdentifier && v17 - v14 == 2 && CFStringHasPrefix(LocaleIdentifier, @"en") && (![(__CFString *)v16 caseInsensitiveCompare:@"northern ireland"]|| ![(__CFString *)v16 caseInsensitiveCompare:@"inner mongolia"]))
        {
          goto LABEL_31;
        }

        EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
        v19 = [MEMORY[0x277D07318] emojiTokensForCEMEmojiTokens:EmojiTokensForString];
        if ([v19 count])
        {
          v41 = array;
          v20 = [MEMORY[0x277D07310] sharedServiceWithMachName:0];
          preferences = [v20 preferences];

          v22 = [preferences copySortedEmojis:v19 keyword:v16 localeIdentifier:LocaleIdentifier];
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

                string = [*(*(&v42 + 1) + 8 * i) string];
                [v23 addObject:string];
              }

              v25 = [v19 countByEnumeratingWithState:&v42 objects:v46 count:16];
            }

            while (v25);
          }

          v29 = &stru_283FDFAF8;
          if (candidateCopy)
          {
            v29 = v16;
          }

          v30 = v29;
          array = [(TIEmojiCandidateGenerator *)selfCopy skinToneModifiedAdornmentEmojis:v23 forLocale:dataCopy forInput:v30];

          inCopy = v38;
          LocaleIdentifier = v36;
        }

        if (EmojiTokensForString)
        {
          CFRelease(EmojiTokensForString);
        }

        ++v14;

        v13 = v16;
        if (v14 >= [inCopy count])
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
    v31 = [array count];
    if (stringCopy && v31)
    {
      v32 = v16;
      *stringCopy = v16;
    }

LABEL_31:
    v12 = array;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createAndAddEmojiTokensFrom:(__CFArray *)from inArray:(id)array forInputString:(id)string
{
  arrayCopy = array;
  stringCopy = string;
  for (i = 0; i < CFArrayGetCount(from); ++i)
  {
    v10 = MEMORY[0x277D6F3D8];
    CFArrayGetValueAtIndex(from, i);
    v11 = [v10 candidateWithCandidate:CEMEmojiTokenGetString() forInput:stringCopy];
    [arrayCopy addObject:v11];
  }

  return arrayCopy;
}

- (void)updateEmojiAdornmentGenerators
{
  if (!self->m_didAttemptPrimaryEmojiGeneratorLoad)
  {
    self->m_didAttemptPrimaryEmojiGeneratorLoad = 1;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v4 = *MEMORY[0x277D2B830];
    primaryInputMode = [(TIEmojiCandidateGenerator *)self primaryInputMode];
    locale = [primaryInputMode locale];
    v7 = MEMORY[0x2318BC170]();
    CFDictionaryAddValue(Mutable, v4, v7);

    self->m_emojiGeneratorPrimaryLanguage = NLEmojiPredictorCreate();
    CFRelease(Mutable);
  }

  if (!self->m_didAttemptSecondaryEmojiGeneratorLoad)
  {
    self->m_didAttemptSecondaryEmojiGeneratorLoad = 1;
    activeInputModes = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([activeInputModes count] < 2)
    {
      if ([activeInputModes count] == 1)
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
      v12 = [activeInputModes objectAtIndexedSubscript:1];
      locale2 = [v12 locale];
      v14 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(v10, v11, v14);

      self->m_emojiGeneratorSecondaryLanguage = NLEmojiPredictorCreate();
      CFRelease(v10);
    }
  }

  if (!self->m_didAttemptTertiaryEmojiGeneratorLoad)
  {
    self->m_didAttemptTertiaryEmojiGeneratorLoad = 1;
    activeInputModes2 = [(TIEmojiCandidateGenerator *)self activeInputModes];
    if ([activeInputModes2 count] == 3)
    {
      m_emojiGeneratorTertiaryLanguage = self->m_emojiGeneratorTertiaryLanguage;
      if (m_emojiGeneratorTertiaryLanguage)
      {
        CFRelease(m_emojiGeneratorTertiaryLanguage);
      }

      v17 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v18 = *MEMORY[0x277D2B830];
      v19 = [activeInputModes2 objectAtIndexedSubscript:2];
      locale3 = [v19 locale];
      v21 = MEMORY[0x2318BC170]();
      CFDictionaryAddValue(v17, v18, v21);

      self->m_emojiGeneratorTertiaryLanguage = NLEmojiPredictorCreate();
      CFRelease(v17);
    }

    else if ([activeInputModes2 count] <= 2)
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
  activeInputModes = [(TIEmojiCandidateGenerator *)self activeInputModes];
  v17 = activeInputModes;
  if (!self->m_didAttemptPrimaryLocaleForEmojiLoad)
  {
    self->m_didAttemptPrimaryLocaleForEmojiLoad = 1;
    primaryInputMode = [(TIEmojiCandidateGenerator *)self primaryInputMode];
    locale = [primaryInputMode locale];
    MEMORY[0x2318BC170]();

    v6 = CEMCreateEmojiLocaleData();
    activeInputModes = v17;
    self->m_emojiDataForPrimaryLocale = v6;
  }

  if (!self->m_didAttemptSecondaryLocaleForEmojiLoad)
  {
    self->m_didAttemptSecondaryLocaleForEmojiLoad = 1;
    if ([activeInputModes count] < 2)
    {
      v11 = [v17 count];
      activeInputModes = v17;
      if (v11 == 1)
      {
        m_emojiDataForSecondaryLocale = self->m_emojiDataForSecondaryLocale;
        if (m_emojiDataForSecondaryLocale)
        {
          CFRelease(m_emojiDataForSecondaryLocale);
          activeInputModes = v17;
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
      locale2 = [v8 locale];
      MEMORY[0x2318BC170]();

      v10 = CEMCreateEmojiLocaleData();
      activeInputModes = v17;
      self->m_emojiDataForSecondaryLocale = v10;
    }
  }

  if (!self->m_didAttemptTertiaryLocaleForEmojiLoad)
  {
    self->m_didAttemptTertiaryLocaleForEmojiLoad = 1;
    if ([activeInputModes count] < 3)
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
      locale3 = [v14 locale];
      MEMORY[0x2318BC170]();

      self->m_emojiDataForTertiaryLocale = CEMCreateEmojiLocaleData();
    }
  }

  MEMORY[0x2821F96F8]();
}

- (TIInputMode)primaryInputMode
{
  activeInputModes = [(TIEmojiCandidateGenerator *)self activeInputModes];
  firstObject = [activeInputModes firstObject];

  return firstObject;
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

- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)modes inputManager:(id)manager
{
  managerCopy = manager;
  v7 = [(TIEmojiCandidateGenerator *)self initWithActiveInputModes:modes];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->m_inputManager, managerCopy);
  }

  return v8;
}

- (TIEmojiCandidateGenerator)initWithActiveInputModes:(id)modes
{
  modesCopy = modes;
  v11.receiver = self;
  v11.super_class = TIEmojiCandidateGenerator;
  v6 = [(TIEmojiCandidateGenerator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activeInputModes, modes);
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