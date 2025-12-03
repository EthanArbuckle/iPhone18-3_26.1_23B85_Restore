@interface TIKeyboardFeatureSpecialization
+ (USet)createAcceptableCharacterSetForKeyboardLocale:(id)locale;
+ (id)createSpecializationForInputMode:(id)mode;
+ (id)findPrefixMatchesFor:(id)for fromIndex:(unint64_t)index usingCompositionMap:(id)map matchesInputAsPrefix:(BOOL)prefix;
- (BOOL)acceptsCharacter:(unsigned int)character;
- (BOOL)deletesByComposedCharacterSequence;
- (BOOL)doesComposeText;
- (BOOL)shouldClearInput:(id)input;
- (TIKeyboardFeatureSpecialization)initWithInputMode:(id)mode;
- (USet)createAcceptableCharacterSet;
- (const)precomposedCharacterSet;
- (id)allAccentKeyStrings;
- (id)clauseDelimitingCharacters;
- (id)compositionMapForLayout:(id)layout reverse:(BOOL)reverse;
- (id)externalStringToInternal:(id)internal;
- (id)getComposedStringFor:(id)for usingMap:(id)map;
- (id)getComposedStringFor:(id)for usingMap:(id)map byConvertingEagerly:(BOOL)eagerly;
- (id)internalStringToExternal:(id)external;
- (id)layoutTags;
- (id)nonstopPunctuationCharacters;
- (id)replacementForDoubleSpace;
- (id)sentenceDelimitingCharacters;
- (id)sentencePrefixingCharacters;
- (id)sentenceTrailingCharacters;
- (id)spaceDeletingCharacters;
- (id)supplementalLexiconWordExtraCharacters;
- (id)terminatorsDeletingAutospace;
- (id)wordCharacters;
- (id)wordMedialPunctuationCharacters;
- (void)dealloc;
- (void)reloadPrecomposedCharacterSetWithIdiom:(int64_t)idiom;
- (void)setCurrentUserInterfaceIdiom:(int64_t)idiom;
- (void)specializeInputManager:(void *)manager forLayoutState:(id)state;
@end

@implementation TIKeyboardFeatureSpecialization

- (const)precomposedCharacterSet
{
  result = self->m_precomposedCharacterSet;
  if (!result)
  {
    [(TIKeyboardFeatureSpecialization *)self reloadPrecomposedCharacterSetWithIdiom:[(TIKeyboardFeatureSpecialization *)self currentUserInterfaceIdiom]];
    return self->m_precomposedCharacterSet;
  }

  return result;
}

- (id)allAccentKeyStrings
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  allAccentKeyStrings = [inputMode allAccentKeyStrings];

  return allAccentKeyStrings;
}

- (id)replacementForDoubleSpace
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  replacementForDoubleSpace = [inputMode replacementForDoubleSpace];
  v4 = replacementForDoubleSpace;
  if (replacementForDoubleSpace)
  {
    v5 = replacementForDoubleSpace;
  }

  else
  {
    v5 = @". ";
  }

  v6 = v5;

  return v5;
}

- (id)layoutTags
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  layoutTags = [inputMode layoutTags];

  return layoutTags;
}

- (void)reloadPrecomposedCharacterSetWithIdiom:(int64_t)idiom
{
  if (self->m_precomposedCharacterSet)
  {
    uset_close();
  }

  m_precomposedCharacterSet = uset_openEmpty();
  self->m_precomposedCharacterSet = m_precomposedCharacterSet;
  if (idiom != -1)
  {
    inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
    normalizedIdentifier = [inputMode normalizedIdentifier];
    v8 = TIKeyboardPopupVariantsForInputMode();

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__TIKeyboardFeatureSpecialization_reloadPrecomposedCharacterSetWithIdiom___block_invoke;
    v9[3] = &unk_27872FE18;
    v9[4] = self;
    [v8 enumerateKeysAndObjectsUsingBlock:v9];

    m_precomposedCharacterSet = self->m_precomposedCharacterSet;
  }

  MEMORY[0x2318BF2A0](m_precomposedCharacterSet);
}

uint64_t __74__TIKeyboardFeatureSpecialization_reloadPrecomposedCharacterSetWithIdiom___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__TIKeyboardFeatureSpecialization_reloadPrecomposedCharacterSetWithIdiom___block_invoke_2;
  v4[3] = &unk_278730C88;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

uint64_t __74__TIKeyboardFeatureSpecialization_reloadPrecomposedCharacterSetWithIdiom___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 _firstLongCharacter];
  if (result)
  {
    v4 = *(*(a1 + 32) + 16);

    JUMPOUT(0x2318BF250);
  }

  return result;
}

- (void)setCurrentUserInterfaceIdiom:(int64_t)idiom
{
  if (self->_currentUserInterfaceIdiom != idiom)
  {
    self->_currentUserInterfaceIdiom = idiom;
    [(TIKeyboardFeatureSpecialization *)self reloadPrecomposedCharacterSetWithIdiom:?];
  }
}

- (void)dealloc
{
  if (self->m_acceptableCharacterSet)
  {
    uset_close();
  }

  if (self->m_precomposedCharacterSet)
  {
    uset_close();
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardFeatureSpecialization;
  [(TIKeyboardFeatureSpecialization *)&v3 dealloc];
}

- (TIKeyboardFeatureSpecialization)initWithInputMode:(id)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = TIKeyboardFeatureSpecialization;
  v6 = [(TIKeyboardFeatureSpecialization *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputMode, mode);
  }

  return v7;
}

+ (id)createSpecializationForInputMode:(id)mode
{
  modeCopy = mode;
  v4 = [objc_alloc(objc_msgSend(modeCopy "keyboardFeatureSpecializationClass"))];

  return v4;
}

void __70__TIKeyboardFeatureSpecialization_ar_ars_terminatorsDeletingAutospace__block_invoke(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = TIKeyboardFeatureSpecialization_ar_ars;
  v2 = objc_msgSendSuper2(&v6, sel_terminatorsDeletingAutospace);
  v3 = [v2 mutableCopy];

  v4 = [*(a1 + 32) clauseDelimitingCharacters];
  [v3 addCharactersInString:v4];

  v5 = [TIKeyboardFeatureSpecialization_ar_ars terminatorsDeletingAutospace]::result;
  [TIKeyboardFeatureSpecialization_ar_ars terminatorsDeletingAutospace]::result = v3;
}

- (USet)createAcceptableCharacterSet
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  locale = [inputMode locale];
  v4 = [TIKeyboardFeatureSpecialization createAcceptableCharacterSetForKeyboardLocale:locale];

  return v4;
}

- (BOOL)acceptsCharacter:(unsigned int)character
{
  if (!self->m_acceptableCharacterSet)
  {
    self->m_acceptableCharacterSet = [(TIKeyboardFeatureSpecialization *)self createAcceptableCharacterSet];
  }

  return MEMORY[0x2318BF290]() != 0;
}

- (id)spaceDeletingCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  spaceDeletingCharacters = [inputMode spaceDeletingCharacters];
  v4 = spaceDeletingCharacters;
  v5 = &stru_283FDFAF8;
  if (spaceDeletingCharacters)
  {
    v5 = spaceDeletingCharacters;
  }

  v6 = v5;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__TIKeyboardFeatureSpecialization_ZephyrSpecialization__spaceDeletingCharacters__block_invoke;
  block[3] = &unk_278733308;
  v13 = v6;
  v7 = [TIKeyboardFeatureSpecialization(ZephyrSpecialization) spaceDeletingCharacters]::onceToken;
  v8 = v6;
  if (v7 != -1)
  {
    dispatch_once(&[TIKeyboardFeatureSpecialization(ZephyrSpecialization) spaceDeletingCharacters]::onceToken, block);
  }

  v9 = [TIKeyboardFeatureSpecialization(ZephyrSpecialization) spaceDeletingCharacters]::result;
  v10 = [TIKeyboardFeatureSpecialization(ZephyrSpecialization) spaceDeletingCharacters]::result;

  return v9;
}

uint64_t __80__TIKeyboardFeatureSpecialization_ZephyrSpecialization__spaceDeletingCharacters__block_invoke(uint64_t a1)
{
  -[TIKeyboardFeatureSpecialization(ZephyrSpecialization) spaceDeletingCharacters]::result = [objc_alloc(MEMORY[0x277D6F330]) initWithCharactersInString:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (id)terminatorsDeletingAutospace
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__TIKeyboardFeatureSpecialization_ZephyrSpecialization__terminatorsDeletingAutospace__block_invoke;
  block[3] = &unk_278733308;
  block[4] = self;
  if ([TIKeyboardFeatureSpecialization(ZephyrSpecialization) terminatorsDeletingAutospace]::onceToken != -1)
  {
    dispatch_once(&[TIKeyboardFeatureSpecialization(ZephyrSpecialization) terminatorsDeletingAutospace]::onceToken, block);
  }

  return [TIKeyboardFeatureSpecialization(ZephyrSpecialization) terminatorsDeletingAutospace]::result;
}

void __85__TIKeyboardFeatureSpecialization_ZephyrSpecialization__terminatorsDeletingAutospace__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D6F330]);
  v6 = [*(a1 + 32) sentenceDelimitingCharacters];
  v3 = [v6 stringByAppendingString:{@", .:?!]}/-"}]);;
  v4 = [v2 initWithCharactersInString:v3];
  v5 = [TIKeyboardFeatureSpecialization(ZephyrSpecialization) terminatorsDeletingAutospace]::result;
  [TIKeyboardFeatureSpecialization(ZephyrSpecialization) terminatorsDeletingAutospace]::result = v4;
}

- (id)supplementalLexiconWordExtraCharacters
{
  v2 = [objc_alloc(MEMORY[0x277D6F458]) initWithCharactersInString:@"-"];
  v3 = [v2 copy];

  return v3;
}

- (id)wordCharacters
{
  v3 = [objc_alloc(MEMORY[0x277D6F458]) initWithBaseCharacterSet:10];
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)self nonstopPunctuationCharacters];
  [v3 addCharactersInString:nonstopPunctuationCharacters];

  return v3;
}

- (id)wordMedialPunctuationCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  wordMedialPunctuationCharacters = [inputMode wordMedialPunctuationCharacters];
  v4 = wordMedialPunctuationCharacters;
  if (wordMedialPunctuationCharacters)
  {
    v5 = wordMedialPunctuationCharacters;
  }

  else
  {
    v5 = @"'’";
  }

  v6 = v5;

  return v5;
}

- (id)sentenceTrailingCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  sentenceTrailingCharacters = [inputMode sentenceTrailingCharacters];
  v4 = sentenceTrailingCharacters;
  if (sentenceTrailingCharacters)
  {
    v5 = sentenceTrailingCharacters;
  }

  else
  {
    v5 = @"'’”";
  }

  v6 = v5;

  return v5;
}

- (id)clauseDelimitingCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  clauseDelimitingCharacters = [inputMode clauseDelimitingCharacters];
  v4 = clauseDelimitingCharacters;
  if (clauseDelimitingCharacters)
  {
    v5 = clauseDelimitingCharacters;
  }

  else
  {
    v5 = @",:;";
  }

  v6 = v5;

  return v5;
}

- (id)sentenceDelimitingCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  sentenceDelimitingCharacters = [inputMode sentenceDelimitingCharacters];
  v4 = sentenceDelimitingCharacters;
  if (sentenceDelimitingCharacters)
  {
    v5 = sentenceDelimitingCharacters;
  }

  else
  {
    v5 = @".?!";
  }

  v6 = v5;

  return v5;
}

- (id)sentencePrefixingCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  sentencePrefixingCharacters = [inputMode sentencePrefixingCharacters];
  v4 = sentencePrefixingCharacters;
  if (sentencePrefixingCharacters)
  {
    v5 = sentencePrefixingCharacters;
  }

  else
  {
    v5 = CFSTR("¡¿'‘“(");
  }

  v6 = v5;

  return v5;
}

- (id)nonstopPunctuationCharacters
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  nonstopPunctuationCharacters = [inputMode nonstopPunctuationCharacters];
  v4 = nonstopPunctuationCharacters;
  if (nonstopPunctuationCharacters)
  {
    v5 = nonstopPunctuationCharacters;
  }

  else
  {
  }

  v6 = v5;

  return v5;
}

- (id)internalStringToExternal:(id)external
{
  v14 = *MEMORY[0x277D85DE8];
  externalCopy = external;
  if ([(TIKeyboardFeatureSpecialization *)self doesComposeText])
  {
    v5 = [(TIKeyboardFeatureSpecialization *)self compositionMapForLayout:self->m_softwareLayout reverse:0];
    if ([v5 count])
    {
      v6 = [(TIKeyboardFeatureSpecialization *)self getComposedStringFor:externalCopy usingMap:v5];
    }

    else
    {
      KB::utf8_string(externalCopy, v10);
      KB::compose_diacritics(v10, [(TIKeyboardFeatureSpecialization *)self precomposedCharacterSet], v12);
      v6 = KB::ns_string(v12, v7);
      if (v13 && v12[6] == 1)
      {
        free(v13);
      }

      if (v11 && v10[6] == 1)
      {
        free(v11);
      }
    }
  }

  else
  {
    v6 = externalCopy;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  v5 = [(TIKeyboardFeatureSpecialization *)self externalStringToInternal:internalCopy byConvertingEagerly:[(TIKeyboardFeatureSpecialization *)self shouldConvertEagerly]];

  return v5;
}

- (BOOL)shouldClearInput:(id)input
{
  v22 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v5 = [(TIKeyboardFeatureSpecialization *)self compositionMapForLayout:self->m_softwareLayout reverse:0];
  v6 = [v5 count];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = 20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (v11 <= [v13 length])
        {
          v11 = [v13 length];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 20;
  }

  if (v6)
  {
    if ([inputCopy length] <= v11)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      v14 = [(TIKeyboardFeatureSpecialization *)self getComposedStringFor:inputCopy usingMap:v7 byConvertingEagerly:0];
      if ([v14 length])
      {
        LODWORD(v6) = [v14 characterAtIndex:{objc_msgSend(v14, "length") - 1}];
        LOBYTE(v6) = v6 != [inputCopy characterAtIndex:{objc_msgSend(inputCopy, "length") - 1}];
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)getComposedStringFor:(id)for usingMap:(id)map byConvertingEagerly:(BOOL)eagerly
{
  eagerlyCopy = eagerly;
  forCopy = for;
  mapCopy = map;
  if (![forCopy length] || !objc_msgSend(mapCopy, "count"))
  {
    v9 = forCopy;
    goto LABEL_12;
  }

  v9 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(forCopy, "length")}];
  if (![forCopy length])
  {
    goto LABEL_12;
  }

  v10 = 0;
  while (1)
  {
    v11 = [(TIKeyboardFeatureSpecialization *)self findPrefixMatchesFor:forCopy fromIndex:v10 usingCompositionMap:mapCopy matchesInputAsPrefix:!eagerlyCopy];
    if (![v11 count])
    {
      [v9 appendFormat:@"%C", objc_msgSend(forCopy, "characterAtIndex:", v10)];
      v16 = 1;
      goto LABEL_9;
    }

    firstObject = [v11 firstObject];
    v13 = [firstObject key];
    v14 = [v13 length];
    if (v14 > [forCopy length] - v10)
    {
      break;
    }

    value = [firstObject value];
    [v9 appendString:value];
    v16 = [v13 length];

LABEL_9:
    v10 += v16;

    if (v10 >= [forCopy length])
    {
      goto LABEL_12;
    }
  }

  v18 = [forCopy substringFromIndex:v10];
  [v9 appendString:v18];

LABEL_12:

  return v9;
}

- (id)getComposedStringFor:(id)for usingMap:(id)map
{
  mapCopy = map;
  forCopy = for;
  v8 = [(TIKeyboardFeatureSpecialization *)self getComposedStringFor:forCopy usingMap:mapCopy byConvertingEagerly:[(TIKeyboardFeatureSpecialization *)self shouldConvertEagerly]];

  return v8;
}

- (id)compositionMapForLayout:(id)layout reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  layoutCopy = layout;
  if ([layoutCopy length])
  {
    if (reverseCopy)
    {
      v7 = 40;
    }

    else
    {
      v7 = 32;
    }

    dictionary = *(&self->super.isa + v7);
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      objc_storeStrong((&self->super.isa + v7), dictionary);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__TIKeyboardFeatureSpecialization_ZephyrSpecialization__compositionMapForLayout_reverse___block_invoke;
    aBlock[3] = &unk_27872FE40;
    v17 = reverseCopy;
    v15 = dictionary;
    selfCopy = self;
    v9 = dictionary;
    v10 = _Block_copy(aBlock);
    v11 = v10[2](v10, layoutCopy);
    if (![v11 count])
    {
      v12 = v10[2](v10, @"AnyLayout");

      v11 = v12;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __89__TIKeyboardFeatureSpecialization_ZephyrSpecialization__compositionMapForLayout_reverse___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (![v4 count])
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) inputMode];
    v7 = v6;
    if (v5)
    {
      [v6 reverseCompositionMap];
    }

    else
    {
      [v6 compositionMap];
    }
    v8 = ;
    v9 = [v8 objectForKeyedSubscript:v3];

    v4 = v9;
  }

  if (![v4 count])
  {
    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) inputMode];
    v12 = v11;
    if (v10)
    {
      [v11 compositionMap];
    }

    else
    {
      [v11 reverseCompositionMap];
    }
    v13 = ;
    v14 = [v13 objectForKeyedSubscript:v3];

    if ([v14 count])
    {
      v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v26 = v14;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * i);
            v22 = [v16 objectForKeyedSubscript:v21];
            [v15 setObject:v21 forKeyedSubscript:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v18);
      }

      v23 = v15;
      [*(a1 + 32) setObject:v23 forKeyedSubscript:v3];

      v4 = v23;
      v14 = v26;
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)deletesByComposedCharacterSequence
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  deletesByComposedCharacterSequence = [inputMode deletesByComposedCharacterSequence];

  return deletesByComposedCharacterSequence;
}

- (BOOL)doesComposeText
{
  inputMode = [(TIKeyboardFeatureSpecialization *)self inputMode];
  doesComposeText = [inputMode doesComposeText];

  return doesComposeText;
}

- (void)specializeInputManager:(void *)manager forLayoutState:(id)state
{
  softwareLayout = [state softwareLayout];
  m_softwareLayout = self->m_softwareLayout;
  self->m_softwareLayout = softwareLayout;

  MEMORY[0x2821F96F8]();
}

+ (USet)createAcceptableCharacterSetForKeyboardLocale:(id)locale
{
  localeIdentifier = [locale localeIdentifier];
  [localeIdentifier UTF8String];
  v4 = ulocdata_open();

  ExemplarSet = ulocdata_getExemplarSet();
  v6 = ulocdata_getExemplarSet();
  v7 = uset_openEmpty();
  MEMORY[0x2318BF270](v7, 48, 57);
  MEMORY[0x2318BF250](v7, 39);
  MEMORY[0x2318BF250](v7, 38);
  MEMORY[0x2318BF250](v7, 8217);
  if (ExemplarSet)
  {
    MEMORY[0x2318BF260](v7, ExemplarSet);
    uset_close();
  }

  if (v6)
  {
    MEMORY[0x2318BF260](v7, v6);
    uset_close();
  }

  if (v4)
  {
    ulocdata_close();
  }

  return v7;
}

+ (id)findPrefixMatchesFor:(id)for fromIndex:(unint64_t)index usingCompositionMap:(id)map matchesInputAsPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  mapCopy = map;
  if ([forCopy length] && objc_msgSend(forCopy, "length") > index)
  {
    v11 = [forCopy substringFromIndex:index];
    array = [MEMORY[0x277CBEB18] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = mapCopy;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * i);
          if (([v11 hasPrefix:{v18, v22}] & 1) != 0 || prefixCopy && objc_msgSend(v18, "hasPrefix:", v11))
          {
            [array addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = [array sortedArrayUsingComparator:&__block_literal_global_4046];
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __129__TIKeyboardFeatureSpecialization_ZephyrSpecialization__findPrefixMatchesFor_fromIndex_usingCompositionMap_matchesInputAsPrefix___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 length];
  if (v6 >= [v4 length])
  {
    v8 = [v5 length];
    v7 = v8 > [v4 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end