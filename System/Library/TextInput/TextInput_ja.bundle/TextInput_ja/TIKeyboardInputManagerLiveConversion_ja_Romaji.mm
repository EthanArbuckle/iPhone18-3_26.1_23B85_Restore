@interface TIKeyboardInputManagerLiveConversion_ja_Romaji
- (TIKeyboardInputManagerLiveConversion_ja_Romaji)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)displayStringForSearch;
- (id)inputString;
- (id)rawInputStringFrom:(id)a3;
- (id)searchStringForMarkedText;
- (id)segmentAdjustInputManager:(unint64_t)a3;
- (id)transliterate:(id)a3;
- (void)_addInput:(id)a3 point:(CGPoint)a4;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)clearInput;
- (void)dealloc;
- (void)inputLocationChanged;
- (void)setInput:(id)a3;
- (void)updateState;
@end

@implementation TIKeyboardInputManagerLiveConversion_ja_Romaji

- (TIKeyboardInputManagerLiveConversion_ja_Romaji)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)&v11 initWithConfig:a3 keyboardState:a4];
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
  v3.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  [(TIKeyboardInputManagerMecabra *)&v3 dealloc];
}

- (void)addInput:(id)a3 withContext:(id)a4
{
  v52 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  v9 = v8;
  if (v8 && [v8 length])
  {
    if ([(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self shouldSkipCandidateSelection])
    {
      v50.receiver = self;
      v50.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)&v50 addInput:v6 withContext:v7];
    }

    else
    {
      if ([(TIKeyboardInputManagerLiveConversion_ja *)self shouldCommitHeadSegment])
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v10 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
        v11 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v47;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v47 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v46 + 1) + 8 * i);
              v16 = [v15 surface];

              if (v16)
              {
                v17 = [v7 output];
                v18 = [v15 surface];
                [v17 insertText:v18];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v12);
        }

        v19 = [MEMORY[0x29EDB8D80] array];
        [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:v19];

        v20 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
        v21 = [v20 firstObject];
        v22 = [v21 surface];

        if (v22)
        {
          v23 = [v7 output];
          [v23 insertText:v22];
        }

        v24 = objc_alloc_init(MEMORY[0x29EDBA050]);
        v25 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
        v26 = [v25 count];

        if (v26 >= 2)
        {
          v27 = 1;
          do
          {
            v28 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
            v29 = [v28 objectAtIndexedSubscript:v27];
            v30 = [v29 reading];
            [v24 appendString:v30];

            ++v27;
            v31 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
            v32 = [v31 count];
          }

          while (v27 < v32);
        }

        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setInput:v24];
      }

      v33 = [v9 length];
      v34 = MEMORY[0x29EDC7290];
      if (v33 == 1)
      {
        TIInputManager::initialize_search_if_necessary_from_last_touch(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
        v35 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self transliterate:v9];

        v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self stringByConvertingPunctuationForInput:v35 isLockedInput:0];

        v36 = [v6 touchEvent];
        [v36 location];
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self _addInput:v9 point:?];
      }

      else if ([v9 length])
      {
        v37 = 0;
        do
        {
          v38 = [v9 substringWithRange:{v37, 1}];
          v39 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self transliterate:v38];
          v40 = [v6 touchEvent];
          [v40 location];
          [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self _addInput:v39 point:?];

          ++v37;
        }

        while ([v9 length] > v37);
      }

      [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:v6 atIndex:[(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self internalIndexToExternal:(*(&self->super.super.super.super.super.super.isa + *v34))[24]]];
      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self updateState];
      mathSymbolPunctuationController = self->_mathSymbolPunctuationController;
      v42 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
      v43 = [(TIMathSymbolPunctuationController *)mathSymbolPunctuationController mathSymbolPunctuationedStringForInputString:v42];

      if (v43)
      {
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setInput:v43];
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self updateState];
      }

      v44 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
      [(TIKeyboardInputManagerLiveConversion_ja *)self makeCandidatesWithWordSearch:v44];
    }
  }

  v45 = *MEMORY[0x29EDCA608];
}

- (void)_addInput:(id)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  if (v7)
  {
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
    v10 = 0;
    v8 = [(TIKeyboardInputManagerMecabra *)&v9 addInput:v7 flags:0 point:&v10 firstDelete:x, y];
  }
}

- (void)updateState
{
  v28 = *MEMORY[0x29EDCA608];
  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:0];
  v3 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [v3 removeAllObjects];

  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v5 = [v4 length];
  if (v4)
  {
    v6 = v5;
    if ([v4 length])
    {
      v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
      v22 = v4;
      v8 = [v4 lowercaseString];
      v9 = [Romakana hiraganaString:v8 mappingArray:v7];
      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:v9];

      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0x7FFFFFFFFFFFFFFFLL];
      v10 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
      v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:0];
      [v10 addObject:v11];

      if (!v6)
      {
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = 0;
        v17 = *v24;
        do
        {
          v18 = 0;
          do
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v12);
            }

            v16 += [*(*(&v23 + 1) + 8 * v18) intValue];
            v19 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
            v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v16];
            [v19 addObject:v20];

            ++v15;
            if (v16 == v6)
            {
              [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:v15];
            }

            ++v18;
          }

          while (v14 != v18);
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }

      v4 = v22;
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

- (id)deleteFromInput:(unint64_t *)a3
{
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex];
  if (v5)
  {
    v6 = v5;
    if ([(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray count]> v5)
    {
      if (a3)
      {
        *a3 = 1;
      }

      v7 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndexedSubscript:v6 - 1];
      v8 = [v7 unsignedIntValue];

      v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
      v10 = [v9 length];

      v11 = v10 - v8;
      if (v10 != v8)
      {
        v12 = MEMORY[0x29EDC7290];
        do
        {
          [(TIKeyboardInputManagerLiveConversion_ja *)self _deleteFromInput];
          TIInputManager::delete_from_favonius_stroke_history(*(&self->super.super.super.super.super.super.isa + *v12));
          --v11;
        }

        while (v11);
      }

      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self updateState];
    }
  }

  return 0;
}

- (id)transliterate:(id)a3
{
  v3 = a3;
  v4 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v4;
  }

  if (!CFCharacterSetIsCharacterMember(v4, [v3 characterAtIndex:0]))
  {
    v5 = [Romakana kanaSymbol:v3];

    v3 = v5;
  }

  return v3;
}

- (void)setInput:(id)a3
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  v4 = a3;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v5 setInput:v4];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController setInputString:v4, v5.receiver, v5.super_class];
}

- (id)inputString
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)&v10 inputString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalString];
    v7 = v6;
    v8 = &stru_2A2525CC0;
    if (v6)
    {
      v8 = v6;
    }

    v5 = v8;
  }

  return v5;
}

- (id)searchStringForMarkedText
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self inputString];
  if (v3)
  {
    v4 = v3;
    if ([v3 length])
    {
      v5 = [(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex];
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          v7 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self inputString];
          if (!_romanAlphabetCharacterSet)
          {
            _romanAlphabetCharacterSet = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
          }

          v8 = [v7 rangeOfCharacterFromSet:? options:? range:?];
          v10 = v9;

          if (v8 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v11 = [v4 stringByReplacingCharactersInRange:v8 withString:{v10, &stru_2A2525CC0}];

          v4 = v11;
          if (!--v6)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (id)displayStringForSearch
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalString];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 stringByAppendingString:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)clearInput
{
  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:0];
  v3 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [v3 removeAllObjects];

  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v4 clearInput];
}

- (void)inputLocationChanged
{
  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:0];
  v3 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [v3 removeAllObjects];

  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v4 inputLocationChanged];
}

- (id)segmentAdjustInputManager:(unint64_t)a3
{
  v5 = [TIKeyboardInputManager_ja_SegmentAdjust alloc];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self config];
  v7 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self keyboardState];
  v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
  v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v10 = [(TIKeyboardInputManager_ja_SegmentAdjust *)v5 initWithConfig:v6 keyboardState:v7 segments:v8 at:a3 romajiEnabled:1 wordSearch:v9];

  return v10;
}

- (id)rawInputStringFrom:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 mecabraCandidateRefFromCandidate:v4];

  if (v6)
  {
    v7 = [MEMORY[0x29EDC70D0] dictionaryReadingFromMecabraCandidate:v6];
    v6 = [Romakana romajiString:v7];
  }

  return v6;
}

@end