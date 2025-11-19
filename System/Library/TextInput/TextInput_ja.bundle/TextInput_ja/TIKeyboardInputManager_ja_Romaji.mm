@interface TIKeyboardInputManager_ja_Romaji
+ (id)_convertToKana:(id)a3;
- (BOOL)shouldFixupIncompleteRomaji;
- (BOOL)usesCandidateSelection;
- (TIKeyboardInputManager_ja_Romaji)initWithConfig:(id)a3 keyboardState:(id)a4;
- (_NSRange)analysisStringRange;
- (id)_convertStringWithBoundary:(unint64_t)a3;
- (id)convertInput:(id)a3;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)getInputStringFromTopCandidate;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)liveConversionTextInputManager;
- (id)remainingInput;
- (id)transliterate:(id)a3;
- (id)uncommittedText;
- (id)validCharacterSetForAutocorrection;
- (unint64_t)actualInternalInputIndex;
- (unint64_t)remainingInputLengthOfCandidate:(id)a3;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)clearInput;
- (void)dealloc;
- (void)inputLocationChanged;
- (void)keyLayoutWillChangeTo:(id)a3 from:(id)a4;
- (void)loadDictionaries;
- (void)updateComposedText;
- (void)updateState;
@end

@implementation TIKeyboardInputManager_ja_Romaji

- (BOOL)shouldFixupIncompleteRomaji
{
  v3 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  v4 = [v3 inputForMarkedText];
  if (![v4 length])
  {
    goto LABEL_4;
  }

  v5 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  if ([v5 userSelectedCurrentCandidate])
  {

LABEL_4:
    return 0;
  }

  v7 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  v8 = [v7 hardwareKeyboardMode];

  if (!v8)
  {
    return 0;
  }

  v9 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  v10 = [v9 inputForMarkedText];
  v11 = [v10 length];

  v12 = 0;
  v13 = v11 - 1;
  do
  {
    v14 = v12;
    if (v13 < 0)
    {
      break;
    }

    v15 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
    v16 = [v15 inputForMarkedText];
    v17 = [v16 characterAtIndex:v13];

    v12 = v14 + 1;
    --v13;
  }

  while (v17 == 110);
  return v14 & 1;
}

- (id)liveConversionTextInputManager
{
  if ([(TIKeyboardInputManager_ja_Romaji *)self inHardwareKeyboardMode])
  {
    v3 = [TIKeyboardInputManagerLiveConversion_ja_Romaji alloc];
    v4 = [(TIKeyboardInputManager_ja_Romaji *)self config];
    v5 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
    v6 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)v3 initWithConfig:v4 keyboardState:v5];
  }

  else
  {
    v7 = [TIKeyboardInputManager_ja_Inline alloc];
    v4 = [(TIKeyboardInputManager_ja_Romaji *)self config];
    v5 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
    v8 = [(TIKeyboardInputManager_ja *)self wordSearch];
    v6 = [(TIKeyboardInputManager_ja_Inline *)v7 initWithConfig:v4 keyboardState:v5 wordSearch:v8 romajiMode:1];
  }

  return v6;
}

- (void)loadDictionaries
{
  v3 = [MEMORY[0x29EDC7280] sharedWordSearchController];
  v4 = [(TIKeyboardInputManagerBase *)self inputMode];
  v5 = [v3 wordSearchForInputMode:v4];
  kbws = self->super._kbws;
  self->super._kbws = v5;

  v7 = self->super._kbws;

  [(TIWordSearch *)v7 setInsertKatakanaAtIndex:4];
}

- (BOOL)usesCandidateSelection
{
  v2 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  v3 = [v2 suppressingCandidateSelection];

  return v3 ^ 1;
}

- (TIKeyboardInputManager_ja_Romaji)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ja_Romaji;
  v4 = [(TIKeyboardInputManager_ja *)&v11 initWithConfig:a3 keyboardState:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:10];
    externalIndexToInternalIndexMappingArray = v4->_externalIndexToInternalIndexMappingArray;
    v4->_externalIndexToInternalIndexMappingArray = v5;

    v4->_externalInputIndex = 0;
    externalString = v4->_externalString;
    v4->_externalString = 0;

    v8 = objc_alloc_init(MEMORY[0x29EDC7238]);
    mathSymbolPunctuationController = v4->_mathSymbolPunctuationController;
    v4->_mathSymbolPunctuationController = v8;
  }

  return v4;
}

- (void)dealloc
{
  if (_romanAlphabetCharacterSet)
  {
    CFRelease(_romanAlphabetCharacterSet);
    _romanAlphabetCharacterSet = 0;
  }

  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v3 dealloc];
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if ((atomic_load_explicit(&qword_2A18798D0, memory_order_acquire) & 1) == 0)
  {
    [TIKeyboardInputManager_ja_Romaji handleKeyboardInput:];
  }

  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = _MergedGlobals;
  v7 = [v4 string];
  LODWORD(v6) = [v6 longCharacterIsMember:{objc_msgSend(v7, "_firstLongCharacter")}];

  if (!v6)
  {
    goto LABEL_19;
  }

  if (![(TIKeyboardInputManager_ja_Romaji *)self shouldFixupIncompleteRomaji])
  {
    v12 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    v13 = [v4 string];
    if ([v13 isEqualToString:@" "])
    {
      v14 = [(TIKeyboardInputManager_ja *)self shouldOutputFullwidthSpace];

      if (v14)
      {
        [v12 insertText:@"　"];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v15 = [v4 string];
    [v12 insertText:v15];

LABEL_18:
    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v8 = [(TIKeyboardInputManager_ja *)self candidateResultSet];
  v5 = [v8 candidates];

  if ([v5 count])
  {
    v9 = [v5 firstObject];
    v10 = &stru_2A2525CC0;
    if (([v9 isBilingualCandidate] & 1) == 0)
    {
      v11 = [v5 firstObject];
      if (![v11 isAsIsCandidate])
      {
        v10 = @"n";
      }
    }
  }

  else
  {
    v10 = @"n";
  }

  [v4 setString:v10];
  [(TIKeyboardInputManager_ja *)self setSelectFirstCandidate:1];
LABEL_4:

LABEL_19:
  v17.receiver = self;
  v17.super_class = TIKeyboardInputManager_ja_Romaji;
  v12 = [(TIKeyboardInputManager_ja *)&v17 handleKeyboardInput:v4];
LABEL_20:

  return v12;
}

- (id)convertInput:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [Romakana hiraganaString:v3 mappingArray:0];

  return v4;
}

+ (id)_convertToKana:(id)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v4 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v4;
  }

  v5 = v4;
  v6 = [(__CFCharacterSet *)v5 invertedSet];
  v7 = [v3 componentsSeparatedByCharactersInSet:v6];

  v8 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_3];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  v10 = v3;
  if ([v9 count])
  {
    v11 = [v3 componentsSeparatedByCharactersInSet:v5];
    v12 = [v11 mutableCopy];

    v13 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_28];
    [v12 filterUsingPredicate:v13];

    v27 = v5;
    v14 = -[__CFCharacterSet characterIsMember:](v5, "characterIsMember:", [v3 _firstChar]);
    v10 = [MEMORY[0x29EDBA050] string];
    if ((v14 & 1) == 0 && [v12 count])
    {
      v15 = [v12 firstObject];
      [v10 appendString:v15];

      [v12 removeObjectAtIndex:0];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v9;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v28 + 1) + 8 * i) lowercaseString];
          v22 = [Romakana hiraganaString:v21 mappingArray:0];

          [v10 appendString:v22];
          if ([v12 count])
          {
            v23 = [v12 firstObject];
            [v10 appendString:v23];

            [v12 removeObjectAtIndex:0];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    v9 = v26;
    v5 = v27;
  }

  v24 = *MEMORY[0x29EDCA608];

  return v10;
}

- (void)updateState
{
  v2 = self;
  v83[1] = *MEMORY[0x29EDCA608];
  v81.receiver = self;
  v81.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v81 updateState];
  v74 = v2;
  if ([(TIKeyboardInputManager_ja_Romaji *)v2 usesComposingInput])
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC71E0]);
    while (1)
    {
      v4 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
      v5 = [v4 composingInput];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v7 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
      v8 = [v7 composingInput];
      [v3 insertInput:v8 atIndex:0];

      v9 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
      [v9 removeComposingInput];
    }

    v19 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
    v20 = [v3 asSearchString];
    v21 = [v20 lowercaseString];
    v22 = [Romakana hiraganaString:v21 mappingArray:v19];

    if ([v22 length])
    {
      v23 = 0;
      v73 = v19;
      while (1)
      {
        if ([v19 count] <= v23)
        {
          goto LABEL_21;
        }

        v24 = v22;
        v25 = [v22 characterAtIndex:v23];
        v26 = [v19 objectAtIndexedSubscript:v23];
        v27 = [v26 intValue];

        v28 = v3;
        v29 = [v3 inputs];
        v30 = [v29 firstObject];

        if (v27 != 1)
        {
          break;
        }

        v31 = [v30 characters];
        if (__tolower([v31 _firstChar]) == v25)
        {
        }

        else
        {
          v32 = [v30 characters];
          v33 = [v32 _firstChar];

          if (v25 != v33)
          {
            break;
          }
        }

        v2 = v74;
        v34 = [(TIKeyboardInputManagerMecabra *)v74 composingInput];
        v3 = v28;
        v35 = [v28 inputs];
        v36 = [v35 firstObject];
        [v34 composeNew:v36];

        [v28 removeInputAtIndex:0];
LABEL_20:
        v22 = v24;

        ++v23;
        v19 = v73;
        if ([v24 length] <= v23)
        {
          goto LABEL_21;
        }
      }

      v37 = objc_alloc(MEMORY[0x29EDC71F0]);
      v38 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:v25];
      v83[0] = v38;
      v39 = [MEMORY[0x29EDB8D80] arrayWithObjects:v83 count:1];
      v40 = [v37 initWithCommittedText:&stru_2A2525CC0 syllables:v39 useSubInputsAsSearchString:1];

      [v40 setIncludeSuffixAsSearchString:1];
      v3 = v28;
      if (v27 >= 1)
      {
        do
        {
          v41 = [v28 inputs];
          v42 = [v41 firstObject];
          [v40 composeNew:v42];

          [v28 removeInputAtIndex:0];
          --v27;
        }

        while (v27);
      }

      v2 = v74;
      v43 = [(TIKeyboardInputManagerMecabra *)v74 composingInput];
      [v43 composeNew:v40];

      goto LABEL_20;
    }

LABEL_21:
    v44 = [(TIKeyboardInputManagerMecabra *)v2 wordSearchCandidateResultSet];
    v45 = [v44 candidates];
    v46 = [v45 firstObject];

    v47 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
    if ([v47 hasKindOf:objc_opt_class()])
    {
      v48 = [(__CFString *)v46 input];

      if (v48)
      {
        v49 = objc_opt_class();
        v50 = [(__CFString *)v46 input];
        v51 = [v49 _convertToKana:v50];
LABEL_26:
        externalString = v2->_externalString;
        v2->_externalString = v51;

        goto LABEL_27;
      }
    }

    else
    {
    }

    v50 = [(TIKeyboardInputManagerMecabra *)v2 composingInput];
    v51 = [v50 asInlineText];
    goto LABEL_26;
  }

  v10 = v2->_externalString;
  v2->_externalString = 0;

  [(NSMutableArray *)v2->_externalIndexToInternalIndexMappingArray removeAllObjects];
  v2->_externalInputIndex = 0;
  v80.receiver = v2;
  v80.super_class = TIKeyboardInputManager_ja_Romaji;
  v11 = [(TIKeyboardInputManager_ja *)&v80 inputString];
  v79.receiver = v2;
  v79.super_class = TIKeyboardInputManager_ja_Romaji;
  v12 = [(TIKeyboardInputManager_ja *)&v79 inputIndex];
  if (!v11)
  {
    v3 = 0;
    goto LABEL_30;
  }

  v13 = v12;
  v72 = v11;
  if (![v11 length])
  {
    v3 = v11;
    goto LABEL_30;
  }

  v14 = v13;
  v15 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  if (v13)
  {
    v16 = v72;
    v17 = [v72 substringToIndex:v13];
    v18 = [v17 lowercaseString];
    v71 = [Romakana hiraganaString:v18 mappingArray:v15];
  }

  else
  {
    v71 = &stru_2A2525CC0;
    v16 = v72;
  }

  if ([v16 length] <= v13)
  {
    v46 = &stru_2A2525CC0;
  }

  else
  {
    v54 = [v16 substringFromIndex:v13];
    v55 = [v54 lowercaseString];
    v46 = [Romakana hiraganaString:v55 mappingArray:v15];
  }

  v22 = v71;
  v56 = [(__CFString *)v71 stringByAppendingString:v46];
  v57 = v74->_externalString;
  v74->_externalString = v56;
  v58 = v74;

  v74->_externalInputIndex = 0x7FFFFFFFFFFFFFFFLL;
  externalIndexToInternalIndexMappingArray = v74->_externalIndexToInternalIndexMappingArray;
  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:0];
  [(NSMutableArray *)externalIndexToInternalIndexMappingArray addObject:v60];

  if (!v14)
  {
    v74->_externalInputIndex = 0;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v50 = v15;
  v61 = [v50 countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v61)
  {
    v62 = v61;
    v70 = v46;
    v63 = 0;
    v64 = 0;
    v65 = *v76;
    do
    {
      v66 = v50;
      for (i = 0; i != v62; ++i)
      {
        if (*v76 != v65)
        {
          objc_enumerationMutation(v66);
        }

        v63 += [*(*(&v75 + 1) + 8 * i) intValue];
        v68 = v58->_externalIndexToInternalIndexMappingArray;
        v69 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v63];
        [(NSMutableArray *)v68 addObject:v69];

        v58 = v74;
        ++v64;
        if (v63 == v14)
        {
          v74->_externalInputIndex = v64;
        }
      }

      v50 = v66;
      v62 = [v66 countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v62);
    v19 = v66;
    v22 = v71;
    v3 = v72;
    v46 = v70;
  }

  else
  {
    v19 = v50;
    v3 = v72;
  }

LABEL_27:

LABEL_30:
  v53 = *MEMORY[0x29EDCA608];
}

- (id)transliterate:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManager_ja_Romaji *)self keyboardState];
  if (![v5 hardwareKeyboardMode])
  {
    goto LABEL_6;
  }

  v6 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v6 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v6;
  }

  IsCharacterMember = CFCharacterSetIsCharacterMember(v6, [v4 characterAtIndex:0]);

  if (!IsCharacterMember)
  {
    [Romakana kanaSymbol:v4];
    v4 = v5 = v4;
LABEL_6:
  }

  if ([v4 isEqualToString:*MEMORY[0x29EDC72E0]])
  {
    v8 = *MEMORY[0x29EDC72D0];

    v4 = v8;
  }

  return v4;
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v67 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  v9 = v8;
  self->super._remainingInputLength = 0;
  if (v8 && [v8 length])
  {
    if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
    {
      v65.receiver = self;
      v65.super_class = TIKeyboardInputManager_ja_Romaji;
      [(TIKeyboardInputManager_ja_Romaji *)&v65 addInput:v6 withContext:v7];
      goto LABEL_47;
    }

    v10 = [(TIKeyboardInputManager_ja *)self rawInputString];
    if (-[TIKeyboardInputManager_ja_Romaji inputCount](self, "inputCount") && ((v11 = *MEMORY[0x29EDC72D8], ([v9 isEqualToString:*MEMORY[0x29EDC72D8]] & 1) != 0) || (v12 = *MEMORY[0x29EDC72E0], (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x29EDC72E0]) & 1) != 0) || (v13 = *MEMORY[0x29EDC72D0], (objc_msgSend(v9, "isEqualToString:", *MEMORY[0x29EDC72D0]) & 1) != 0) || (objc_msgSend(v10, "isEqualToString:", v11) & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", v12) & 1) != 0 || objc_msgSend(v10, "isEqualToString:", v13)))
    {
      if ([v9 isEqualToString:v10])
      {
LABEL_46:

        goto LABEL_47;
      }

      [(TIKeyboardInputManager_ja_Romaji *)self acceptCurrentCandidateWithContext:v7];
    }

    else
    {
      [(TIKeyboardInputManager_ja_Romaji *)self acceptCurrentCandidateIfSelectedWithContext:v7];
    }

    [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
    [(TIKeyboardInputManager_ja *)self setFilterCandidatesUsingInputIndex:0];
    v14 = [(TIKeyboardInputManager_ja_Romaji *)self inputString];
    v15 = [v14 copy];

    v16 = [(TIKeyboardInputManager_ja_Romaji *)self inputIndex];
    if ([v9 length] == 1)
    {
      TIInputManager::initialize_search_if_necessary_from_last_touch(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
      v17 = [(TIKeyboardInputManager_ja_Romaji *)self transliterate:v9];

      if (([(TIKeyboardInputManager_ja_Romaji *)self inHardwareKeyboardMode]& 1) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = [v6 isPopupVariant];
      }

      v9 = [(TIKeyboardInputManager_ja *)self stringByConvertingPunctuationForInput:v17 isLockedInput:v18];

      v24 = [v6 touchEvent];
      [v24 location];
      [(TIKeyboardInputManager_ja *)self _addInput:v9 point:?];
    }

    else if ([v9 length])
    {
      v55 = v16;
      v19 = v15;
      v20 = 0;
      do
      {
        v21 = [v9 substringWithRange:{v20, 1}];
        v22 = [(TIKeyboardInputManager_ja_Romaji *)self transliterate:v21];
        v23 = [v6 touchEvent];
        [v23 location];
        [(TIKeyboardInputManager_ja *)self _addInput:v22 point:?];

        ++v20;
      }

      while ([v9 length] > v20);
      v15 = v19;
      v16 = v55;
    }

    v64.receiver = self;
    v64.super_class = TIKeyboardInputManager_ja_Romaji;
    [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:v6 atIndex:[(TIKeyboardInputManager_ja *)&v64 inputIndex]];
    [(TIKeyboardInputManager_ja_Romaji *)self updateState];
    mathSymbolPunctuationController = self->_mathSymbolPunctuationController;
    v26 = [(TIKeyboardInputManager_ja *)self rawInputString];
    v27 = [(TIMathSymbolPunctuationController *)mathSymbolPunctuationController mathSymbolPunctuationedStringForInputString:v26];

    if (v27)
    {
      if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
      {
        v56 = v16;
        v54 = v15;
        v57 = v10;
        [(TIKeyboardInputManagerMecabra *)self composingInput];
        v29 = v28 = v27;
        v51 = [v29 asSearchTextCursorIndex];

        v30 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        [v30 removeAllInputs];

        v53 = v28;
        [v28 _asTypeInputs];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v52 = v63 = 0u;
        v31 = [v52 inputs];
        v32 = [v31 countByEnumeratingWithState:&v60 objects:v66 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v61;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v61 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v60 + 1) + 8 * i);
              v37 = [(TIKeyboardInputManagerMecabra *)self composingInput];
              [v37 composeNew:v36];
            }

            v33 = [v31 countByEnumeratingWithState:&v60 objects:v66 count:16];
          }

          while (v33);
        }

        v38 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v39 = [v38 inputs];
        v40 = [v39 count];

        if (v51 < v40)
        {
          v41 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          v42 = [v41 inputs];
          v43 = [v42 objectAtIndexedSubscript:v51];
          v44 = [(TIKeyboardInputManagerMecabra *)self composingInput];
          [v44 setComposingInput:v43];
        }

        v10 = v57;
        v27 = v53;
        v15 = v54;
        v16 = v56;
      }

      else
      {
        v45 = [(TIKeyboardInputManager_ja_Romaji *)self inputIndex];
        [(TIKeyboardInputManager_ja *)self setInput:v27];
        [(TIKeyboardInputManager_ja_Romaji *)self setInputIndex:v45];
      }

      [(TIKeyboardInputManager_ja_Romaji *)self updateState];
    }

    if ([(TIKeyboardInputManager_ja_Romaji *)self usesCandidateSelection])
    {
      [(TIKeyboardInputManager_ja_Romaji *)self setMarkedText];
    }

    else
    {
      v58 = v10;
      v59 = 0;
      v46 = v27;
      v47 = [(TIKeyboardInputManager_ja_Romaji *)self inputString];
      v48 = [v47 substringToIndex:{-[TIKeyboardInputManager_ja_Romaji inputIndex](self, "inputIndex")}];

      v49 = [(TIKeyboardInputManager_ja_Romaji *)self suffixOfDesiredString:v48 toAppendToInputString:v15 withInputIndex:v16 afterDeletionCount:&v59];
      if (v59)
      {
        [v7 deleteBackward:?];
      }

      if (v49)
      {
        [v7 insertText:v49];
      }

      v27 = v46;
      v10 = v58;
    }

    goto LABEL_46;
  }

LABEL_47:

  v50 = *MEMORY[0x29EDCA608];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v4 = self;
  v152 = *MEMORY[0x29EDCA608];
  if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManager_ja *)v4 wordSearch];
    [v5 cancel];

    [(TIKeyboardInputManager_ja *)v4 lockAnyDrawInputResults];
    v6 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
    v7 = [v6 composingInput];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
    v10 = [v9 composingInput];
    if (isKindOfClass)
    {

      if ([v10 useSubInputsAsSearchString])
      {
        v11 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
        v12 = [v11 composingInput];
        v13 = [v12 inputs];
        v14 = [v13 count];
      }

      else
      {
        v14 = 0;
      }

      v19 = [v10 syllables];
      v20 = [v19 count];

      if (v20)
      {
        v21 = [v10 syllables];
        v22 = [v21 count];
        v23 = [v10 cursorIndex];

        if (v22 == v23)
        {
          v24 = [v10 syllables];
          v25 = [v10 syllables];
          v26 = [v24 subarrayWithRange:{0, objc_msgSend(v25, "count") - 1}];

          v27 = [v10 committedText];
          v28 = [v10 syntheticInputWithCommittedText:v27 syllables:v26];

          v29 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
          [v29 replaceComposingInputWith:v28];

          v10 = v28;
        }

        else
        {
          v32 = objc_alloc(MEMORY[0x29EDC71D0]);
          v33 = [(TIKeyboardInputManagerMecabra *)v4 previouslyProcessedDeleteInput];
          v26 = [v32 initWithDeletedText:0 deleteBySyllable:1 shouldDeleteAcceptCandidateInput:v33 == 0];

          v34 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
          [v34 composeNew:v26];

          [(TIKeyboardInputManagerMecabra *)v4 processDeleteInputs];
          [(TIKeyboardInputManagerMecabra *)v4 setPreviouslyProcessedDeleteInput:v26];
        }
      }

      v35 = [v10 syllables];
      v36 = [v35 count];

      if (!v36)
      {
        v37 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
        [v37 removeComposingInput];
      }

      v38 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
      v39 = [v38 composingInput];
      objc_opt_class();
      v40 = objc_opt_isKindOfClass();

      if (v40)
      {
        v122 = v4;
        v41 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
        v42 = [v41 composingInput];

        v43 = [v42 syllables];
        [v42 removeAllInputs];
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        obj = v43;
        v44 = [obj countByEnumeratingWithState:&v143 objects:v147 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v144;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v144 != v46)
              {
                objc_enumerationMutation(obj);
              }

              v48 = [Romakana romajiString:*(*(&v143 + 1) + 8 * i)];
              v49 = [v48 length];
              v141[0] = MEMORY[0x29EDCA5F8];
              v141[1] = 3221225472;
              v141[2] = __52__TIKeyboardInputManager_ja_Romaji_deleteFromInput___block_invoke;
              v141[3] = &unk_29F379198;
              v142 = v42;
              [v48 enumerateSubstringsInRange:0 options:v49 usingBlock:{2, v141}];
            }

            v45 = [obj countByEnumeratingWithState:&v143 objects:v147 count:16];
          }

          while (v45);
        }

        v4 = v122;
      }

      if (v14 < 1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();

      if ((v16 & 1) == 0)
      {
LABEL_33:
        v51 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
        v52 = [v51 composingInput];

        if (!v52)
        {
          [(TIKeyboardInputManagerMecabra *)v4 setWordSearchCandidateResultSet:0];
        }

        [(TIKeyboardInputManager_ja *)v4 setFilterCandidatesUsingInputIndex:0];
        [(TIKeyboardInputManager_ja_Romaji *)v4 updateState];
        goto LABEL_36;
      }

      v17 = [(TIKeyboardInputManagerMecabra *)v4 composingInput];
      [v17 removeComposingInput];

      v14 = 1;
    }

    v50 = *MEMORY[0x29EDC7290];
    do
    {
      TIInputManager::delete_from_input(*(&v4->super.super.super.super.super.super.isa + v50));
      --v14;
    }

    while (v14);
    goto LABEL_33;
  }

  if ([(TIKeyboardInputManager_ja_Romaji *)v4 shouldSkipCandidateSelection])
  {
    v140.receiver = v4;
    v140.super_class = TIKeyboardInputManager_ja_Romaji;
    v15 = [(TIKeyboardInputManager_ja *)&v140 deleteFromInput:a3];
    goto LABEL_37;
  }

  [(TIKeyboardInputManager_ja *)v4 setIsEmojiFacemarkMode:0];
  [(TIKeyboardInputManager_ja *)v4 setFilterCandidatesUsingInputIndex:0];
  [(TIMathSymbolPunctuationController *)v4->_mathSymbolPunctuationController reset];
  v18 = [(TIKeyboardInputManager_ja_Romaji *)v4 inputString];
  if ([v18 isEqualToString:*MEMORY[0x29EDC72E0]])
  {

LABEL_16:
    [(TIKeyboardInputManager_ja_Romaji *)v4 clearInput];
LABEL_36:
    v15 = 0;
    goto LABEL_37;
  }

  v30 = [(TIKeyboardInputManager_ja_Romaji *)v4 inputString];
  v31 = [v30 isEqualToString:*MEMORY[0x29EDC72D0]];

  if (v31)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    *a3 = 1;
  }

  v55 = [(TIKeyboardInputManager_ja_Romaji *)v4 inputIndex];
  v56 = &selRef_isSiriMode;
  v139.receiver = v4;
  v139.super_class = TIKeyboardInputManager_ja_Romaji;
  if ([(TIKeyboardInputManager_ja *)&v139 inputIndex])
  {
    v57 = v55;
    v58 = [(TIKeyboardInputManager_ja_Romaji *)v4 inputString];
    v59 = [v58 copy];

    if (v57 < 2)
    {
      v60 = 0;
    }

    else
    {
      v60 = [v59 substringWithRange:{v57 - 2, 1}];
    }

    v117 = v57 - 1;
    v61 = [(NSMutableArray *)v4->_externalIndexToInternalIndexMappingArray objectAtIndex:?];
    v62 = [v61 unsignedIntValue];

    v138.receiver = v4;
    v138.super_class = TIKeyboardInputManager_ja_Romaji;
    v63 = [(TIKeyboardInputManager_ja *)&v138 inputIndex];
    v120 = v62 != v63;
    v121 = v60;
    v116 = v57;
    v119 = v59;
    if (v62 == v63)
    {
      obja = [Romakana romajiString:v60];
      v70 = [(NSMutableArray *)v4->_externalIndexToInternalIndexMappingArray objectAtIndex:v57 - 2];
      v71 = [v70 unsignedIntValue];

      v137.receiver = v4;
      v137.super_class = TIKeyboardInputManager_ja_Romaji;
      v69 = [(TIKeyboardInputManager_ja *)&v137 inputIndex]- v71;
    }

    else
    {
      if (-[NSMutableArray count](v4->_externalIndexToInternalIndexMappingArray, "count") <= (v57 + 1) || (-[NSMutableArray objectAtIndex:](v4->_externalIndexToInternalIndexMappingArray, "objectAtIndex:"), v64 = objc_claimAutoreleasedReturnValue(), v65 = [v64 unsignedIntValue], v64, v136.receiver = v4, v136.super_class = TIKeyboardInputManager_ja_Romaji, v65 != -[TIKeyboardInputManager_ja inputIndex](&v136, sel_inputIndex)))
      {
        obja = 0;
        v120 = 0;
LABEL_56:
        if (![v60 isEqualToString:@"ん"])
        {
          goto LABEL_59;
        }

        v72 = [Romakana romajiString:v60];

        v73 = [(NSMutableArray *)v4->_externalIndexToInternalIndexMappingArray objectAtIndex:v57 - 2];
        v74 = [v73 unsignedIntValue];

        v134.receiver = v4;
        v134.super_class = TIKeyboardInputManager_ja_Romaji;
        v69 = [(TIKeyboardInputManager_ja *)&v134 inputIndex]- v74;
        v56 = &selRef_isSiriMode;
        obja = v72;
LABEL_58:
        if (v69)
        {
LABEL_67:
          if (!obja)
          {
            v84 = [(NSMutableArray *)v4->_externalIndexToInternalIndexMappingArray objectAtIndex:v117];
            v85 = [v84 unsignedIntValue];

            v86 = v56[431];
            v132.receiver = v4;
            v132.super_class = v86;
            v69 = [(TIKeyboardInputManager_ja *)&v132 inputIndex]- v85;
          }

          v87 = v56[431];
          v131.receiver = v4;
          v131.super_class = v87;
          v88 = [(TIKeyboardInputManager_ja *)&v131 inputIndex];
          v89 = [(TIKeyboardInputManagerMecabra *)v4 geometryDataArray];
          if ([v89 count] <= v88)
          {
            v92 = [(TIKeyboardInputManagerMecabra *)v4 geometryDataArray];
            v91 = [v92 count];

            v56 = &selRef_isSiriMode;
          }

          else
          {
            v90 = v56[431];
            v130.receiver = v4;
            v130.super_class = v90;
            v91 = [(TIKeyboardInputManager_ja *)&v130 inputIndex];
          }

          if (v69 >= v91)
          {
            v93 = v91;
          }

          else
          {
            v93 = v69;
          }

          for (j = v91 - v93; v93; --v93)
          {
            v95 = [(TIKeyboardInputManagerMecabra *)v4 geometryDataArray];
            [v95 removeObjectAtIndex:j];

            if ([(TIKeyboardInputManager_ja_Romaji *)v4 isTypologyEnabled])
            {
              v96 = [(TIKeyboardInputManagerMecabra *)v4 touchDataArray];
              [v96 removeObjectAtIndex:j];
            }
          }

          if (v69)
          {
            v97 = v69;
            do
            {
              [(TIKeyboardInputManager_ja *)v4 _deleteFromInput];
              --v97;
            }

            while (v97);
            v98 = v69 - 1;
            if (v69 != 1)
            {
              v99 = *MEMORY[0x29EDC7290];
              do
              {
                TIInputManager::delete_from_favonius_stroke_history(*(&v4->super.super.super.super.super.super.isa + v99));
                --v98;
              }

              while (v98);
            }
          }

          if (obja)
          {
            v115 = a3;
            v129 = 0;
            v118 = [obja length];
            if (v118)
            {
              v100 = 0;
              v101 = MEMORY[0x29EDB90B8];
              v102 = j;
              v103 = v118;
              do
              {
                v104 = [obja substringWithRange:{v100, 1}];
                v105 = *v101;
                v106 = v101[1];
                v128.receiver = v4;
                v128.super_class = TIKeyboardInputManager_ja_Romaji;
                v107 = [(TIKeyboardInputManager_ja *)&v128 addInput:v104 flags:0 point:&v129 firstDelete:v105, v106];
                v108 = [(TIKeyboardInputManagerMecabra *)v4 geometryDataArray];
                v148[0] = [v104 characterAtIndex:0];
                v149 = 0;
                v150 = 0;
                v151 = 0;
                [MEMORY[0x29EDB8DA0] dataWithBytes:v148 length:16];
                v110 = v109 = v4;
                [v108 insertObject:v110 atIndex:v102];

                v4 = v109;
                if ([(TIKeyboardInputManager_ja_Romaji *)v109 isTypologyEnabled])
                {
                  [(TIKeyboardInputManagerMecabra *)v109 insertDummyTouchDataAtIndex:j];
                }

                ++v100;
                ++v102;
                --v103;
              }

              while (v103);
            }

            v56 = &selRef_isSiriMode;
            if (v120)
            {
              v127.receiver = v4;
              v127.super_class = TIKeyboardInputManager_ja_Romaji;
              v111 = [(TIKeyboardInputManager_ja *)&v127 inputIndex];
              v126.receiver = v4;
              v126.super_class = TIKeyboardInputManager_ja_Romaji;
              [(TIKeyboardInputManager_ja_Romaji *)&v126 setInputIndex:v111 - v118];
            }

            a3 = v115;
            v59 = v119;
          }

          [(TIKeyboardInputManager_ja_Romaji *)v4 updateState];
          v112 = v56[431];
          v125.receiver = v4;
          v125.super_class = v112;
          if ([(TIKeyboardInputManager_ja *)&v125 inputCount])
          {
            v113 = [(TIKeyboardInputManager_ja_Romaji *)v4 inputString];
            v114 = [v113 substringToIndex:{-[TIKeyboardInputManager_ja_Romaji inputIndex](v4, "inputIndex")}];

            v15 = [(TIKeyboardInputManager_ja_Romaji *)v4 suffixOfDesiredString:v114 toAppendToInputString:v59 withInputIndex:v116 afterDeletionCount:a3];
            if (![v15 length])
            {

              v15 = 0;
            }
          }

          else
          {
            [(TIKeyboardInputManagerMecabra *)v4 setWordSearchCandidateResultSet:0];
            v15 = 0;
          }

          goto LABEL_37;
        }

LABEL_59:
        if ([v60 isEqualToString:@"っ"])
        {
          v75 = v4;
          v76 = [(TIKeyboardInputManager_ja_Romaji *)v4 inputString];
          v77 = [v76 substringToIndex:v117];

          v78 = [v77 length];
          v79 = [MEMORY[0x29EDBA050] stringWithCapacity:3 * v78];
          if (v78)
          {
            for (k = 0; k != v78; ++k)
            {
              v81 = [v77 substringWithRange:{k, 1}];
              v82 = [Romakana romajiString:v81];
              if (!v82)
              {
                v82 = v81;
              }

              [v79 appendString:v82];
            }
          }

          v83 = [MEMORY[0x29EDBA0F8] stringWithString:v79];

          v4 = v75;
          v133.receiver = v75;
          v133.super_class = TIKeyboardInputManager_ja_Romaji;
          v69 = [(TIKeyboardInputManager_ja *)&v133 inputIndex];

          obja = v83;
          v56 = &selRef_isSiriMode;
          v59 = v119;
        }

        else
        {
          v69 = 0;
        }

        goto LABEL_67;
      }

      v66 = [v59 substringWithRange:{v57, 1}];
      obja = [Romakana romajiString:v66];
      v67 = [(NSMutableArray *)v4->_externalIndexToInternalIndexMappingArray objectAtIndex:v117];
      v68 = [v67 unsignedIntValue];

      v135.receiver = v4;
      v135.super_class = TIKeyboardInputManager_ja_Romaji;
      v69 = [(TIKeyboardInputManager_ja *)&v135 inputIndex]- v68;
      v56 = &selRef_isSiriMode;
    }

    if (v69)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (!a3)
  {
    goto LABEL_36;
  }

  v15 = 0;
  *a3 = 0;
LABEL_37:
  v53 = *MEMORY[0x29EDCA608];

  return v15;
}

- (unsigned)inputCount
{
  if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Romaji;
    return [(TIKeyboardInputManager_ja *)&v6 inputCount];
  }

  else
  {
    v4 = [(TIKeyboardInputManager_ja_Romaji *)self inputString];
    v3 = [v4 length];
  }

  return v3;
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  v4 = v3;
  if (!v3 || (v5 = [v3 length]) == 0)
  {
    if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
    {
      v9.receiver = self;
      v9.super_class = TIKeyboardInputManager_ja_Romaji;
      LODWORD(v5) = [(TIKeyboardInputManager_ja *)&v9 inputIndex];
    }

    else if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
    {
      v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      if ([v5 hasKindOf:objc_opt_class()])
      {
        v6 = [(TIKeyboardInputManagerMecabra *)self inputIndexWithDrawInput];
      }

      else
      {
        v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
        v6 = [v7 asInlineTextCursorIndex];
      }

      LODWORD(v5) = v6;
    }

    else
    {
      LODWORD(v5) = self->_externalInputIndex;
    }
  }

  return v5;
}

- (id)uncommittedText
{
  v2 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v3 = [v2 candidates];
  v4 = [v3 firstObject];

  v5 = objc_opt_class();
  v6 = [v4 input];
  v7 = [v5 _convertToKana:v6];

  return v7;
}

- (id)inputString
{
  v3 = [(TIKeyboardInputManager_ja *)self alternateDisplayString];
  if ([v3 length])
  {
    v4 = v3;
LABEL_7:
    v6 = v4;
    goto LABEL_8;
  }

  if ([(TIKeyboardInputManager_ja_Romaji *)self shouldSkipCandidateSelection])
  {
    v8.receiver = self;
    v8.super_class = TIKeyboardInputManager_ja_Romaji;
    v4 = [(TIKeyboardInputManager_ja *)&v8 inputString];
    goto LABEL_7;
  }

  externalString = self->_externalString;
  if (externalString)
  {
    v4 = externalString;
    goto LABEL_7;
  }

  v6 = &stru_2A2525CC0;
LABEL_8:

  return v6;
}

- (id)getInputStringFromTopCandidate
{
  v3 = objc_opt_class();
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManager_ja_Romaji;
  v4 = [(TIKeyboardInputManager_ja *)&v7 getInputStringFromTopCandidate];
  v5 = [v3 _convertToKana:v4];

  return v5;
}

- (void)updateComposedText
{
  v3.receiver = self;
  v3.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManagerMecabra *)&v3 updateComposedText];
  [(TIKeyboardInputManager_ja_Romaji *)self updateState];
}

- (id)_convertStringWithBoundary:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    if ([(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray count]<= a3)
    {
      v3 = 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndex:v3];
      v3 = [v5 unsignedIntValue];
    }
  }

  v6 = [(TIKeyboardInputManager_ja *)self _convertString];
  v7 = v6;
  if (v3 && v3 < [v6 length])
  {
    v8 = [v7 substringToIndex:v3];

    v7 = v8;
  }

  return v7;
}

- (void)clearInput
{
  externalString = self->_externalString;
  self->_externalString = 0;

  [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray removeAllObjects];
  self->_externalInputIndex = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v4 clearInput];
}

- (void)inputLocationChanged
{
  externalString = self->_externalString;
  self->_externalString = 0;

  [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray removeAllObjects];
  self->_externalInputIndex = 0;
  [(TIKeyboardInputManager_ja *)self setIsEmojiFacemarkMode:0];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManager_ja *)&v4 inputLocationChanged];
}

- (unint64_t)actualInternalInputIndex
{
  v12.receiver = self;
  v12.super_class = TIKeyboardInputManager_ja_Romaji;
  v3 = [(TIKeyboardInputManager_ja *)&v12 inputString];
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_ja_Romaji;
  v4 = [(TIKeyboardInputManager_ja *)&v11 inputIndex];
  if (v4 && (v5 = v4, [(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex]))
  {
    v6 = v5;
  }

  else
  {
    v6 = [v3 length];
  }

  remainingInputLength = self->super._remainingInputLength;
  if (remainingInputLength >= v6 || remainingInputLength == 0)
  {
    remainingInputLength = 0;
  }

  v9 = v6 - remainingInputLength;

  return v9;
}

- (id)remainingInput
{
  if ([(TIKeyboardInputManager_ja_Romaji *)self usesComposingInput])
  {
    v3 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TIKeyboardInputManager_ja_Romaji;
    v4 = [(TIKeyboardInputManager_ja *)&v6 inputString];
    v3 = [(TIKeyboardInputManager_ja_Romaji *)self actualInternalInputIndex];
    if (v3)
    {
      if (v3 >= [v4 length])
      {
        v3 = 0;
      }

      else
      {
        v3 = [v4 substringFromIndex:v3];
      }
    }
  }

  return v3;
}

- (unint64_t)remainingInputLengthOfCandidate:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManager_ja *)self filterCandidatesUsingInputIndex])
  {
    v10.receiver = self;
    v10.super_class = TIKeyboardInputManager_ja_Romaji;
    v5 = [(TIKeyboardInputManager_ja *)&v10 inputIndex];
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_ja_Romaji;
  v6 = [(TIKeyboardInputManager_ja *)&v9 inputString];
  v7 = [(TIKeyboardInputManager_ja *)self remainingInputLengthOfString:v6 index:v5 candidate:v4];

  return v7;
}

- (_NSRange)analysisStringRange
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_ja_Romaji;
  v3 = [(TIKeyboardInputManager_ja *)&v8 inputIndex];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [(TIKeyboardInputManager_ja *)self rawInputString];
    v4 = [v5 length];
  }

  v6 = 0;
  v7 = v4;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    [TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection];
  }

  v3 = [TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

- (void)keyLayoutWillChangeTo:(id)a3 from:(id)a4
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManager_ja_Romaji;
  [(TIKeyboardInputManagerMecabra *)&v10 keyLayoutWillChangeTo:a3 from:a4];
  v5 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  v6 = [v5 hasDrawInput];

  if (v6)
  {
    v7 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v8 = [v7 inputs];
    v9 = -[TIKeyboardInputManager_ja_Romaji convertInputsToSyntheticInputUptoCount:](self, "convertInputsToSyntheticInputUptoCount:", [v8 count]);
  }
}

- (void)handleKeyboardInput:.cold.1()
{
  if (__cxa_guard_acquire(&qword_2A18798D0))
  {
    _MergedGlobals = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];

    __cxa_guard_release(&qword_2A18798D0);
  }
}

@end