@interface TIIndicScriptComposer
- (BOOL)_characterBeforeCursorIsConsonant;
- (BOOL)_characterBeforeCursorIsVowel;
- (BOOL)_characterBeforeCursorIsVowelLetter;
- (BOOL)_contextIsStartOfWord;
- (BOOL)_isSingleGlyph:(id)glyph;
- (NSString)context;
- (TIIndicScriptComposer)initWithLanguage:(id)language contextFetcher:(id)fetcher;
- (id)_consonantLetters;
- (id)_consonantLettersSet;
- (id)_contextualVowelLetters;
- (id)_letterToSignConverter;
- (id)_singleGlyphConjuncts;
- (id)_stringByStrippingTrailingVirama:(id)virama;
- (id)_vowelLetterToSignConverter;
- (id)_vowelLetters;
- (id)_vowelLettersAndSigns;
- (id)_vowelModifierLetterToSignConverter;
- (id)contextualDisplayKeys;
- (id)stringByComposingInput:(id)input;
- (int)scriptCode;
@end

@implementation TIIndicScriptComposer

- (id)contextualDisplayKeys
{
  selfCopy = self;
  v69 = *MEMORY[0x277D85DE8];
  languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  context = [(TIIndicScriptComposer *)selfCopy context];
  v5 = [context _lastConjunctInLanguage:languageIdentifier];
  _characterBeforeCursorIsConsonant = [(TIIndicScriptComposer *)selfCopy _characterBeforeCursorIsConsonant];
  _characterBeforeCursorIsVowel = [(TIIndicScriptComposer *)selfCopy _characterBeforeCursorIsVowel];
  v45 = languageIdentifier;
  v47 = _characterBeforeCursorIsVowel && [(TIIndicScriptComposer *)selfCopy _characterBeforeCursorIsVowelLetter];
  v53 = v5;
  v49 = v53;
  if (![(TIIndicScriptComposer *)selfCopy _isSingleGlyph:v53])
  {
    v49 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(v53, "_lastLongCharacter")}];
  }

  [(TIIndicScriptComposer *)selfCopy _contextualVowelLetters];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v65 = 0u;
  v7 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  v8 = selfCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v63;
    do
    {
      v11 = 0;
      do
      {
        if (*v63 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v62 + 1) + 8 * v11);
        if (_characterBeforeCursorIsConsonant)
        {
          _vowelLetterToSignConverter = [(TIIndicScriptComposer *)selfCopy _vowelLetterToSignConverter];
          v14 = (_vowelLetterToSignConverter)[2](_vowelLetterToSignConverter, v12, v53);
          v15 = [v14 length];

          if (v15)
          {
            v16 = [v49 stringByAppendingString:v14];
            [dictionary setObject:v16 forKeyedSubscript:v12];

            selfCopy = v8;
            goto LABEL_25;
          }

          v17 = v14;
          selfCopy = v8;
        }

        else
        {
          v17 = 0;
        }

        if (!_characterBeforeCursorIsVowel)
        {
          v14 = v17;
          goto LABEL_24;
        }

        _vowelModifierLetterToSignConverter = [(TIIndicScriptComposer *)selfCopy _vowelModifierLetterToSignConverter];
        v14 = (_vowelModifierLetterToSignConverter)[2](_vowelModifierLetterToSignConverter, v12, v53);

        if (![v14 length])
        {

LABEL_23:
          selfCopy = v8;
LABEL_24:
          [dictionary setObject:@"UI-Nothing" forKeyedSubscript:v12];
          goto LABEL_25;
        }

        v19 = [v14 isEqualToString:v12];

        if (v19)
        {
          goto LABEL_23;
        }

        selfCopy = v8;
        if (v47)
        {
          v20 = v49;
        }

        else
        {
          v20 = v53;
        }

        v21 = [v20 stringByAppendingString:v14];
        [dictionary setObject:v21 forKeyedSubscript:v12];

LABEL_25:
        ++v11;
      }

      while (v9 != v11);
      v22 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
      v9 = v22;
    }

    while (v22);
  }

  if ([(TIIndicScriptComposer *)selfCopy composesConsonants])
  {
    v52 = [(TIIndicScriptComposer *)selfCopy _stringByStrippingTrailingVirama:context];
    v23 = [v52 length];
    v24 = [context length];
    _consonantLetters = [(TIIndicScriptComposer *)selfCopy _consonantLetters];
    _consonantLettersSet = [(TIIndicScriptComposer *)selfCopy _consonantLettersSet];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v26 = _consonantLetters;
    v27 = [v26 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v59;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v59 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v58 + 1) + 8 * i);
          v32 = [v53 stringByAppendingString:v31];
          if (v23 < v24 && [_consonantLettersSet longCharacterIsMember:{objc_msgSend(v52, "_lastLongCharacter")}] && -[TIIndicScriptComposer _isSingleGlyph:](v8, "_isSingleGlyph:", v32))
          {
            v33 = dictionary;
            v34 = v32;
          }

          else
          {
            v33 = dictionary;
            v34 = @"UI-Nothing";
          }

          [v33 setObject:v34 forKeyedSubscript:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v28);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  allKeys = [dictionary allKeys];
  v36 = [allKeys countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v55;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v55 != v38)
        {
          objc_enumerationMutation(allKeys);
        }

        v40 = *(*(&v54 + 1) + 8 * j);
        v41 = [dictionary objectForKeyedSubscript:v40];
        _stringByRemovingOffensiveOrVulgarWords = [v41 _stringByRemovingOffensiveOrVulgarWords];
        if (([v41 isEqualToString:_stringByRemovingOffensiveOrVulgarWords] & 1) == 0)
        {
          [dictionary setObject:_stringByRemovingOffensiveOrVulgarWords forKeyedSubscript:v40];
        }
      }

      v37 = [allKeys countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v37);
  }

  v43 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)stringByComposingInput:(id)input
{
  inputCopy = input;
  _lastLongCharacter = [inputCopy _lastLongCharacter];
  if (_lastLongCharacter != [(TIIndicScriptComposer *)self _viramaSign])
  {
    _letterToSignConverter = [(TIIndicScriptComposer *)self _letterToSignConverter];
    if (_letterToSignConverter)
    {
      context = [(TIIndicScriptComposer *)self context];
      v9 = (_letterToSignConverter)[2](_letterToSignConverter, inputCopy, context);

      if (v9)
      {

        goto LABEL_11;
      }
    }

    goto LABEL_9;
  }

  context2 = [(TIIndicScriptComposer *)self context];
  _lastLongCharacter2 = [context2 _lastLongCharacter];
  _viramaSign = [(TIIndicScriptComposer *)self _viramaSign];

  if (_lastLongCharacter2 == _viramaSign)
  {
    v9 = @"‌";
    goto LABEL_11;
  }

  if ([(TIIndicScriptComposer *)self _characterBeforeCursorIsConsonant])
  {
LABEL_9:
    v9 = inputCopy;
    goto LABEL_11;
  }

  v9 = &stru_283FDFAF8;
LABEL_11:

  return v9;
}

- (BOOL)_isSingleGlyph:(id)glyph
{
  glyphCopy = glyph;
  languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
  if ([languageIdentifier isEqualToString:@"kn"] & 1) != 0 || (objc_msgSend(languageIdentifier, "isEqualToString:", @"or") & 1) != 0 || (objc_msgSend(languageIdentifier, "isEqualToString:", @"te"))
  {
    v6 = 1;
  }

  else if ([glyphCopy length])
  {
    _singleGlyphConjuncts = [(TIIndicScriptComposer *)self _singleGlyphConjuncts];
    v6 = [_singleGlyphConjuncts containsObject:glyphCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_singleGlyphConjuncts
{
  singleGlyphConjuncts = self->_singleGlyphConjuncts;
  if (!singleGlyphConjuncts)
  {
    v4 = MEMORY[0x277CCACA8];
    [(TIIndicScriptComposer *)self scriptCode];
    v5 = [v4 stringWithCString:uscript_getShortName() encoding:1];
    v6 = TIGetIndicScriptComposerRules();
    v7 = [v6 objectForKeyedSubscript:v5];

    v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v9 = self->_singleGlyphConjuncts;
    self->_singleGlyphConjuncts = v8;

    singleGlyphConjuncts = self->_singleGlyphConjuncts;
  }

  return singleGlyphConjuncts;
}

- (id)_letterToSignConverter
{
  if ([(TIIndicScriptComposer *)self _contextIsStartOfWord])
  {
    goto LABEL_2;
  }

  if ([(TIIndicScriptComposer *)self _characterBeforeCursorIsConsonant])
  {
    _vowelLetterToSignConverter = [(TIIndicScriptComposer *)self _vowelLetterToSignConverter];
  }

  else
  {
    if (![(TIIndicScriptComposer *)self _characterBeforeCursorIsVowel])
    {
LABEL_2:
      _vowelLetterToSignConverter = 0;
      goto LABEL_7;
    }

    _vowelLetterToSignConverter = [(TIIndicScriptComposer *)self _vowelModifierLetterToSignConverter];
  }

LABEL_7:

  return _vowelLetterToSignConverter;
}

- (id)_vowelModifierLetterToSignConverter
{
  vowelModifierLetterToSignConverter = self->_vowelModifierLetterToSignConverter;
  if (!vowelModifierLetterToSignConverter)
  {
    self->_vowelModifierLetterToSignConverter = &__block_literal_global_33;
    vowelModifierLetterToSignConverter = &__block_literal_global_33;
  }

  v4 = _Block_copy(vowelModifierLetterToSignConverter);

  return v4;
}

id __60__TIIndicScriptComposer__vowelModifierLetterToSignConverter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  v6 = a3;
  KB::String::String(v34, [v4 UTF8String]);
  KB::utf8_string(v6, v32);

  KB::String::String(v22, v34);
  KB::String::String(v20, v32);
  v7 = v23;
  if (!v23)
  {
    KB::String::compute_length(v22);
    v7 = v23;
  }

  if (v7 <= 1)
  {
    v27 = 0x100000;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    KB::String::operator=(&v27, v22);
    goto LABEL_48;
  }

  KB::String::String(&v27, v22);
  v8 = 0;
  if (v25)
  {
    v9 = v25;
  }

  else
  {
    v9 = &v26;
  }

  v10 = v22[0];
  while (1)
  {
    v11 = TI::IndicUtils::kVowelLettersA[v8];
    v45 = v9;
    LODWORD(v46) = 0;
    HIDWORD(v46) = v10;
    v47 = 0;
    KB::String::iterator::initialize(&v45);
    if (v47 == v11)
    {
      break;
    }

    if (++v8 == 9)
    {
      goto LABEL_40;
    }
  }

  *&v41 = v9;
  DWORD2(v41) = 0;
  HIDWORD(v41) = v10;
  LODWORD(v42) = 0;
  KB::String::iterator::initialize(&v41);
  v43 = v41;
  v44 = v42;
  KB::String::iterator::operator++(&v43);
  v38 = v9;
  LODWORD(v39) = v10;
  HIDWORD(v39) = v10;
  v40 = 0;
  KB::String::iterator::initialize(&v38);
  KB::String::String(&v45, &v43, &v38);
  if (v11 == 2437 || v11 == 2821)
  {
    KB::String::String(&v43, &v45);
    KB::String::String(&v41, v20);
    v12 = !shouldConvertToSign_beng_orya(&v43, &v41);
  }

  else
  {
    v12 = 0;
    if (v11 == 2565)
    {
      KB::String::String(&v41, &v45);
      KB::String::String(&v38, v20);
      convertTippiToBindiIfNeeded(&v43, &v41, &v38);
      KB::String::operator=(&v45, &v43);
      if (*(&v43 + 1) && BYTE6(v43) == 1)
      {
        free(*(&v43 + 1));
      }

      if (v39 && BYTE6(v38) == 1)
      {
        free(v39);
      }

      if (*(&v41 + 1) && BYTE6(v41) == 1)
      {
        free(*(&v41 + 1));
      }

      goto LABEL_37;
    }
  }

  if (v11 != 2821 && v11 != 2437)
  {
    if (!v12)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (*(&v41 + 1) && BYTE6(v41) == 1)
  {
    free(*(&v41 + 1));
  }

  if (*(&v43 + 1) && BYTE6(v43) == 1)
  {
    free(*(&v43 + 1));
  }

  if (v12)
  {
LABEL_36:
    KB::String::operator=(&v45, v22);
  }

LABEL_37:
  KB::String::operator=(&v27, &v45);
  if (v46 && BYTE6(v45) == 1)
  {
    free(v46);
  }

LABEL_40:
  KB::String::String(&v45, &v27);
  KB::String::String(v36, v20);
  v13 = shouldAddSignToContext(&v45, v36);
  if (v37 && v36[6] == 1)
  {
    free(v37);
  }

  if (v46 && BYTE6(v45) == 1)
  {
    free(v46);
  }

  if ((v13 & 1) == 0)
  {
    KB::String::operator=(&v27, v22);
  }

LABEL_48:
  if (v21 && v20[6] == 1)
  {
    free(v21);
  }

  if (v25 && v24 == 1)
  {
    free(v25);
  }

  if (KB::String::equal(v34, &v27, 1))
  {
    v14 = v4;
  }

  else
  {
    v15 = v30;
    if (!v30)
    {
      v15 = &v31;
    }

    if (v27)
    {
      v16 = v15;
    }

    else
    {
      v16 = "";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
  }

  v17 = v14;
  if (v30 && v29 == 1)
  {
    free(v30);
  }

  if (v33 && v32[6] == 1)
  {
    free(v33);
  }

  if (v35 && v34[6] == 1)
  {
    free(v35);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_vowelLetterToSignConverter
{
  vowelLetterToSignConverter = self->_vowelLetterToSignConverter;
  if (!vowelLetterToSignConverter)
  {
    self->_vowelLetterToSignConverter = &__block_literal_global_31_15249;
    vowelLetterToSignConverter = &__block_literal_global_31_15249;
  }

  v4 = _Block_copy(vowelLetterToSignConverter);

  return v4;
}

KB *__52__TIIndicScriptComposer__vowelLetterToSignConverter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  KB::utf8_string(v4, v23);
  KB::utf8_string(v5, v21);

  KB::String::String(v14, v23);
  KB::String::String(v12, v21);
  TI::IndicUtils::convertLetterToSign(v17, v14, v12);
  if (v13 && v12[6] == 1)
  {
    free(v13);
  }

  if (v16 && v15 == 1)
  {
    free(v16);
  }

  if (KB::String::equal(v23, v17, 1))
  {
    v6 = v4;
  }

  else
  {
    v7 = v19;
    if (!v19)
    {
      v7 = &v20;
    }

    if (v17[0])
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }

  v9 = v6;
  if (v19 && v18 == 1)
  {
    free(v19);
  }

  if (v22 && v21[6] == 1)
  {
    free(v22);
  }

  if (v24 && v23[6] == 1)
  {
    free(v24);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)_contextIsStartOfWord
{
  context = [(TIIndicScriptComposer *)self context];
  if ([context length])
  {
    if ([TIIndicScriptComposer _contextIsStartOfWord]::__onceToken != -1)
    {
      dispatch_once(&[TIIndicScriptComposer _contextIsStartOfWord]::__onceToken, &__block_literal_global_15251);
    }

    v3 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    v4 = [-[TIIndicScriptComposer _contextIsStartOfWord]::__nonLetterCharacterSet characterIsMember:v3];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __46__TIIndicScriptComposer__contextIsStartOfWord__block_invoke()
{
  v2 = [MEMORY[0x277CCA900] letterCharacterSet];
  v0 = [v2 invertedSet];
  v1 = [TIIndicScriptComposer _contextIsStartOfWord]::__nonLetterCharacterSet;
  [TIIndicScriptComposer _contextIsStartOfWord]::__nonLetterCharacterSet = v0;
}

- (id)_stringByStrippingTrailingVirama:(id)virama
{
  viramaCopy = virama;
  if ([viramaCopy length] && (v5 = objc_msgSend(viramaCopy, "_lastLongCharacter"), v5 == -[TIIndicScriptComposer _viramaSign](self, "_viramaSign")) && objc_msgSend(viramaCopy, "_rangeOfLongCharacterAtIndex:", objc_msgSend(viramaCopy, "length") - 1) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [viramaCopy substringToIndex:{objc_msgSend(viramaCopy, "length") - v6}];
  }

  else
  {
    v7 = viramaCopy;
  }

  v8 = v7;

  return v8;
}

- (BOOL)_characterBeforeCursorIsConsonant
{
  context = [(TIIndicScriptComposer *)self context];
  v6 = 0;
  if ([context length])
  {
    v4 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    _consonantLettersSet = [(TIIndicScriptComposer *)self _consonantLettersSet];
    LOBYTE(v4) = [_consonantLettersSet characterIsMember:v4];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)_characterBeforeCursorIsVowelLetter
{
  context = [(TIIndicScriptComposer *)self context];
  v6 = 0;
  if ([context length])
  {
    v4 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    _vowelLetters = [(TIIndicScriptComposer *)self _vowelLetters];
    LOBYTE(v4) = [_vowelLetters characterIsMember:v4];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (BOOL)_characterBeforeCursorIsVowel
{
  context = [(TIIndicScriptComposer *)self context];
  v6 = 0;
  if ([context length])
  {
    v4 = [context characterAtIndex:{objc_msgSend(context, "length") - 1}];
    _vowelLettersAndSigns = [(TIIndicScriptComposer *)self _vowelLettersAndSigns];
    LOBYTE(v4) = [_vowelLettersAndSigns characterIsMember:v4];

    if (v4)
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)_vowelLettersAndSigns
{
  vowelLettersAndSigns = self->_vowelLettersAndSigns;
  if (!vowelLettersAndSigns)
  {
    v4 = objc_opt_new();
    v5 = TI::IndicUtils::initialVowelLetterForScript([(TIIndicScriptComposer *)self scriptCode]);
    [(NSCharacterSet *)v4 addCharactersInRange:v5, 16];
    [(NSCharacterSet *)v4 addCharactersInRange:v5 + 57, 15];
    v6 = self->_vowelLettersAndSigns;
    self->_vowelLettersAndSigns = v4;

    vowelLettersAndSigns = self->_vowelLettersAndSigns;
  }

  return vowelLettersAndSigns;
}

- (id)_vowelLetters
{
  vowelLetters = self->_vowelLetters;
  if (!vowelLetters)
  {
    v4 = objc_opt_new();
    [(NSCharacterSet *)v4 addCharactersInRange:TI::IndicUtils::initialVowelLetterForScript([(TIIndicScriptComposer *)self scriptCode]), 16];
    v5 = self->_vowelLetters;
    self->_vowelLetters = v4;

    vowelLetters = self->_vowelLetters;
  }

  return vowelLetters;
}

- (id)_contextualVowelLetters
{
  contextualVowelLetters = self->_contextualVowelLetters;
  if (!contextualVowelLetters)
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:16];
    scriptCode = [(TIIndicScriptComposer *)self scriptCode];
    v6 = TI::IndicUtils::initialVowelLetterForScript(scriptCode);
    if (v6 > (v6 - 4))
    {
      v7 = (v6 - 4);
      do
      {
        v15[0] = v6;
        v15[1] = v7;
        v8 = [MEMORY[0x277CCACA8] stringWithCharacters:v15 length:2];
        [(NSArray *)v4 addObject:v8];

        ++v7;
      }

      while (v6 > v7);
    }

    v9 = v6 + 15;
    v14 = v6 + 1;
    do
    {
      v10 = [MEMORY[0x277CCACA8] stringWithCharacters:&v14 length:1];
      [(NSArray *)v4 addObject:v10];

      ++v14;
    }

    while (v14 <= v9);
    if (scriptCode > 15)
    {
      if (scriptCode == 16)
      {
        [(NSArray *)v4 addObject:@"ਅੱ"];
        v11 = @"ਅੰ";
        goto LABEL_16;
      }

      if (scriptCode == 31)
      {
        v11 = @"ଅ‍୍ୟ";
        goto LABEL_16;
      }
    }

    else
    {
      if (scriptCode == 4)
      {
        v11 = @"অ‍্য";
        goto LABEL_16;
      }

      if (scriptCode == 10)
      {
        v11 = @"ॲ";
LABEL_16:
        [(NSArray *)v4 addObject:v11];
      }
    }

    v12 = self->_contextualVowelLetters;
    self->_contextualVowelLetters = v4;

    contextualVowelLetters = self->_contextualVowelLetters;
  }

  return contextualVowelLetters;
}

- (id)_consonantLetters
{
  p_consonantLetters = &self->_consonantLetters;
  consonantLetters = self->_consonantLetters;
  if (!consonantLetters)
  {
    obj = 0;
    GetConsonantLettersSetAndArray([(TIIndicScriptComposer *)self scriptCode], 0, &obj);
    objc_storeStrong(p_consonantLetters, obj);
    consonantLetters = self->_consonantLetters;
  }

  return consonantLetters;
}

- (id)_consonantLettersSet
{
  p_consonantLettersSet = &self->_consonantLettersSet;
  consonantLettersSet = self->_consonantLettersSet;
  if (!consonantLettersSet)
  {
    obj = 0;
    GetConsonantLettersSetAndArray([(TIIndicScriptComposer *)self scriptCode], &obj, 0);
    objc_storeStrong(p_consonantLettersSet, obj);
    consonantLettersSet = self->_consonantLettersSet;
  }

  return consonantLettersSet;
}

- (int)scriptCode
{
  languageIdentifier = [(TIIndicScriptComposer *)self languageIdentifier];
  ScriptCodeForLanguage = GetScriptCodeForLanguage(languageIdentifier);

  return ScriptCodeForLanguage;
}

- (NSString)context
{
  contextFetcher = [(TIIndicScriptComposer *)self contextFetcher];
  v3 = contextFetcher[2]();

  return v3;
}

- (TIIndicScriptComposer)initWithLanguage:(id)language contextFetcher:(id)fetcher
{
  languageCopy = language;
  fetcherCopy = fetcher;
  v11.receiver = self;
  v11.super_class = TIIndicScriptComposer;
  v8 = [(TIIndicScriptComposer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIIndicScriptComposer *)v8 setLanguageIdentifier:languageCopy];
    [(TIIndicScriptComposer *)v9 setContextFetcher:fetcherCopy];
  }

  return v9;
}

@end