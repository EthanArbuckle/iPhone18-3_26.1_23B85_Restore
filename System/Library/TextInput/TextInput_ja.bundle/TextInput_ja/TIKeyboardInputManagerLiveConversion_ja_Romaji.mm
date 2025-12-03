@interface TIKeyboardInputManagerLiveConversion_ja_Romaji
- (TIKeyboardInputManagerLiveConversion_ja_Romaji)initWithConfig:(id)config keyboardState:(id)state;
- (id)deleteFromInput:(unint64_t *)input;
- (id)displayStringForSearch;
- (id)inputString;
- (id)rawInputStringFrom:(id)from;
- (id)searchStringForMarkedText;
- (id)segmentAdjustInputManager:(unint64_t)manager;
- (id)transliterate:(id)transliterate;
- (void)_addInput:(id)input point:(CGPoint)point;
- (void)addInput:(id)input withContext:(id)context;
- (void)clearInput;
- (void)dealloc;
- (void)inputLocationChanged;
- (void)setInput:(id)input;
- (void)updateState;
@end

@implementation TIKeyboardInputManagerLiveConversion_ja_Romaji

- (TIKeyboardInputManagerLiveConversion_ja_Romaji)initWithConfig:(id)config keyboardState:(id)state
{
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)&v11 initWithConfig:config keyboardState:state];
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

- (void)addInput:(id)input withContext:(id)context
{
  v52 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  v9 = string;
  if (string && [string length])
  {
    if ([(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self shouldSkipCandidateSelection])
    {
      v50.receiver = self;
      v50.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)&v50 addInput:inputCopy withContext:contextCopy];
    }

    else
    {
      if ([(TIKeyboardInputManagerLiveConversion_ja *)self shouldCommitHeadSegment])
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
        v11 = [committedSegments countByEnumeratingWithState:&v46 objects:v51 count:16];
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
                objc_enumerationMutation(committedSegments);
              }

              v15 = *(*(&v46 + 1) + 8 * i);
              surface = [v15 surface];

              if (surface)
              {
                output = [contextCopy output];
                surface2 = [v15 surface];
                [output insertText:surface2];
              }
            }

            v12 = [committedSegments countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v12);
        }

        array = [MEMORY[0x29EDB8D80] array];
        [(TIKeyboardInputManagerLiveConversion_ja *)self setCommittedSegments:array];

        segments = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
        firstObject = [segments firstObject];
        surface3 = [firstObject surface];

        if (surface3)
        {
          output2 = [contextCopy output];
          [output2 insertText:surface3];
        }

        v24 = objc_alloc_init(MEMORY[0x29EDBA050]);
        segments2 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
        v26 = [segments2 count];

        if (v26 >= 2)
        {
          v27 = 1;
          do
          {
            segments3 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
            v29 = [segments3 objectAtIndexedSubscript:v27];
            reading = [v29 reading];
            [v24 appendString:reading];

            ++v27;
            segments4 = [(TIKeyboardInputManagerLiveConversion_ja *)self segments];
            v32 = [segments4 count];
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

        touchEvent = [inputCopy touchEvent];
        [touchEvent location];
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self _addInput:v9 point:?];
      }

      else if ([v9 length])
      {
        v37 = 0;
        do
        {
          v38 = [v9 substringWithRange:{v37, 1}];
          v39 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self transliterate:v38];
          touchEvent2 = [inputCopy touchEvent];
          [touchEvent2 location];
          [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self _addInput:v39 point:?];

          ++v37;
        }

        while ([v9 length] > v37);
      }

      [(TIKeyboardInputManagerMecabra *)self saveGeometryForInput:inputCopy atIndex:[(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self internalIndexToExternal:(*(&self->super.super.super.super.super.super.isa + *v34))[24]]];
      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self updateState];
      mathSymbolPunctuationController = self->_mathSymbolPunctuationController;
      rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
      v43 = [(TIMathSymbolPunctuationController *)mathSymbolPunctuationController mathSymbolPunctuationedStringForInputString:rawInputString];

      if (v43)
      {
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setInput:v43];
        [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self updateState];
      }

      rawInputString2 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
      [(TIKeyboardInputManagerLiveConversion_ja *)self makeCandidatesWithWordSearch:rawInputString2];
    }
  }

  v45 = *MEMORY[0x29EDCA608];
}

- (void)_addInput:(id)input point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  inputCopy = input;
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  if (inputCopy)
  {
    v9.receiver = self;
    v9.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
    v10 = 0;
    v8 = [(TIKeyboardInputManagerMecabra *)&v9 addInput:inputCopy flags:0 point:&v10 firstDelete:x, y];
  }
}

- (void)updateState
{
  v28 = *MEMORY[0x29EDCA608];
  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:0];
  externalIndexToInternalIndexMappingArray = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [externalIndexToInternalIndexMappingArray removeAllObjects];

  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
  rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v5 = [rawInputString length];
  if (rawInputString)
  {
    v6 = v5;
    if ([rawInputString length])
    {
      v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
      v22 = rawInputString;
      lowercaseString = [rawInputString lowercaseString];
      v9 = [Romakana hiraganaString:lowercaseString mappingArray:v7];
      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:v9];

      [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0x7FFFFFFFFFFFFFFFLL];
      externalIndexToInternalIndexMappingArray2 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
      v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:0];
      [externalIndexToInternalIndexMappingArray2 addObject:v11];

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
            externalIndexToInternalIndexMappingArray3 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
            v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v16];
            [externalIndexToInternalIndexMappingArray3 addObject:v20];

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

      rawInputString = v22;
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

- (id)deleteFromInput:(unint64_t *)input
{
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  inputIndex = [(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex];
  if (inputIndex)
  {
    v6 = inputIndex;
    if ([(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray count]> inputIndex)
    {
      if (input)
      {
        *input = 1;
      }

      v7 = [(NSMutableArray *)self->_externalIndexToInternalIndexMappingArray objectAtIndexedSubscript:v6 - 1];
      unsignedIntValue = [v7 unsignedIntValue];

      rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
      v10 = [rawInputString length];

      v11 = v10 - unsignedIntValue;
      if (v10 != unsignedIntValue)
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

- (id)transliterate:(id)transliterate
{
  transliterateCopy = transliterate;
  v4 = _romanAlphabetCharacterSet;
  if (!_romanAlphabetCharacterSet)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    _romanAlphabetCharacterSet = v4;
  }

  if (!CFCharacterSetIsCharacterMember(v4, [transliterateCopy characterAtIndex:0]))
  {
    v5 = [Romakana kanaSymbol:transliterateCopy];

    transliterateCopy = v5;
  }

  return transliterateCopy;
}

- (void)setInput:(id)input
{
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  inputCopy = input;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v5 setInput:inputCopy];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController setInputString:inputCopy, v5.receiver, v5.super_class];
}

- (id)inputString
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)&v10 inputString];
  v4 = inputString;
  if (inputString)
  {
    v5 = inputString;
  }

  else
  {
    externalString = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalString];
    v7 = externalString;
    v8 = &stru_2A2525CC0;
    if (externalString)
    {
      v8 = externalString;
    }

    v5 = v8;
  }

  return v5;
}

- (id)searchStringForMarkedText
{
  inputString = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self inputString];
  if (inputString)
  {
    v4 = inputString;
    if ([inputString length])
    {
      inputIndex = [(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex];
      if (inputIndex)
      {
        v6 = inputIndex;
        while (1)
        {
          inputString2 = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self inputString];
          if (!_romanAlphabetCharacterSet)
          {
            _romanAlphabetCharacterSet = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
          }

          v8 = [inputString2 rangeOfCharacterFromSet:? options:? range:?];
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
  committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
  externalString = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalString];
  v5 = externalString;
  if (committedSurface && externalString)
  {
    v6 = [committedSurface stringByAppendingString:externalString];
  }

  else
  {
    v6 = externalString;
  }

  v7 = v6;

  return v7;
}

- (void)clearInput
{
  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:0];
  externalIndexToInternalIndexMappingArray = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [externalIndexToInternalIndexMappingArray removeAllObjects];

  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v4 clearInput];
}

- (void)inputLocationChanged
{
  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalString:0];
  externalIndexToInternalIndexMappingArray = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self externalIndexToInternalIndexMappingArray];
  [externalIndexToInternalIndexMappingArray removeAllObjects];

  [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self setExternalInputIndex:0];
  [(TIMathSymbolPunctuationController *)self->_mathSymbolPunctuationController reset];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja_Romaji;
  [(TIKeyboardInputManagerLiveConversion_ja *)&v4 inputLocationChanged];
}

- (id)segmentAdjustInputManager:(unint64_t)manager
{
  v5 = [TIKeyboardInputManager_ja_SegmentAdjust alloc];
  config = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self config];
  keyboardState = [(TIKeyboardInputManagerLiveConversion_ja_Romaji *)self keyboardState];
  segmentsForPicker = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v10 = [(TIKeyboardInputManager_ja_SegmentAdjust *)v5 initWithConfig:config keyboardState:keyboardState segments:segmentsForPicker at:manager romajiEnabled:1 wordSearch:wordSearch];

  return v10;
}

- (id)rawInputStringFrom:(id)from
{
  fromCopy = from;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [composingKeyboardInputManager mecabraCandidateRefFromCandidate:fromCopy];

  if (v6)
  {
    v7 = [MEMORY[0x29EDC70D0] dictionaryReadingFromMecabraCandidate:v6];
    v6 = [Romakana romajiString:v7];
  }

  return v6;
}

@end