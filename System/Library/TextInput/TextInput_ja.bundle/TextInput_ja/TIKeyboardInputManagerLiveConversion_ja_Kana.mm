@interface TIKeyboardInputManagerLiveConversion_ja_Kana
- (id)displayStringForSearch;
- (id)inputString;
- (id)rawInputStringFrom:(id)from;
- (id)segmentAdjustInputManager:(unint64_t)manager;
- (void)_deleteFromInput;
- (void)addInput:(id)input withContext:(id)context;
- (void)calculateGeometryForInput:(id)input;
@end

@implementation TIKeyboardInputManagerLiveConversion_ja_Kana

- (void)addInput:(id)input withContext:(id)context
{
  v58 = *MEMORY[0x29EDCA608];
  inputCopy = input;
  contextCopy = context;
  string = [inputCopy string];
  v9 = string;
  if (string && [string length])
  {
    if ([(TIKeyboardInputManagerLiveConversion_ja *)self shouldCommitHeadSegment])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      committedSegments = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      v11 = [committedSegments countByEnumeratingWithState:&v53 objects:v57 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v54;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v54 != v13)
            {
              objc_enumerationMutation(committedSegments);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            surface = [v15 surface];

            if (surface)
            {
              output = [contextCopy output];
              surface2 = [v15 surface];
              [output insertText:surface2];
            }
          }

          v12 = [committedSegments countByEnumeratingWithState:&v53 objects:v57 count:16];
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

      [(TIKeyboardInputManagerLiveConversion_ja *)self setInput:v24];
    }

    if (([(TIKeyboardInputManagerLiveConversion_ja_Kana *)self inHardwareKeyboardMode]& 1) != 0)
    {
      isPopupVariant = 0;
    }

    else
    {
      isPopupVariant = [inputCopy isPopupVariant];
    }

    v34 = [(TIKeyboardInputManagerLiveConversion_ja *)self stringByConvertingPunctuationForInput:v9 isLockedInput:isPopupVariant];

    v35 = [v34 characterAtIndex:0];
    rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v37 = [rawInputString length];

    if ((v35 - 12443) > 1)
    {
      goto LABEL_33;
    }

    rawInputString2 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v39 = [rawInputString2 length];

    if (!v39)
    {
      goto LABEL_33;
    }

    v40 = v37 - 1;
    rawInputString3 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v42 = [rawInputString3 substringWithRange:{v40, 1}];
    if (v35 == 12443)
    {
      v43 = [@"うかきくけこさしすせそたちつてとはひふへほ" rangeOfString:v42];
      v45 = v44;

      if (v43 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = @"ゔがぎぐげござじずぜぞだぢづでどばびぶべぼ";
        goto LABEL_30;
      }
    }

    else
    {
      v43 = [@"はひふへほ" rangeOfString:v42];
      v45 = v47;

      if (v43 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = @"ぱぴぷぺぽ";
LABEL_30:
        v48 = [(__CFString *)v46 substringWithRange:v43, v45];
        if (v48)
        {
          v49 = [v34 stringByReplacingCharactersInRange:0 withString:{1, v48}];

          [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self _deleteFromInput];
          v34 = v49;
        }

        goto LABEL_32;
      }
    }

    v48 = 0;
LABEL_32:

LABEL_33:
    [inputCopy setString:v34];
    v52.receiver = self;
    v52.super_class = TIKeyboardInputManagerLiveConversion_ja_Kana;
    [(TIKeyboardInputManagerLiveConversion_ja_Kana *)&v52 addInput:inputCopy withContext:contextCopy];
    [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self calculateGeometryForInput:inputCopy];
    rawInputString4 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    [(TIKeyboardInputManagerLiveConversion_ja *)self makeCandidatesWithWordSearch:rawInputString4];

    v9 = v34;
  }

  v51 = *MEMORY[0x29EDCA608];
}

- (id)inputString
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLiveConversion_ja_Kana;
  inputString = [(TIKeyboardInputManagerLiveConversion_ja *)&v10 inputString];
  v4 = inputString;
  if (inputString)
  {
    v5 = inputString;
  }

  else
  {
    rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v7 = rawInputString;
    v8 = &stru_2A2525CC0;
    if (rawInputString)
    {
      v8 = rawInputString;
    }

    v5 = v8;
  }

  return v5;
}

- (id)displayStringForSearch
{
  committedSurface = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
  rawInputString = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
  v5 = rawInputString;
  if (committedSurface && rawInputString)
  {
    v6 = [committedSurface stringByAppendingString:rawInputString];
  }

  else
  {
    v6 = rawInputString;
  }

  v7 = v6;

  return v7;
}

- (void)calculateGeometryForInput:(id)input
{
  inputCopy = input;
  [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:inputCopy atIndex:[(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex]];
}

- (void)_deleteFromInput
{
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja_Kana;
  v3 = [(TIKeyboardInputManagerLiveConversion_ja_Kana *)&v4 deleteFromInput:0];
}

- (id)segmentAdjustInputManager:(unint64_t)manager
{
  v5 = [TIKeyboardInputManager_ja_SegmentAdjust alloc];
  config = [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self config];
  keyboardState = [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self keyboardState];
  segmentsForPicker = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
  wordSearch = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v10 = [(TIKeyboardInputManager_ja_SegmentAdjust *)v5 initWithConfig:config keyboardState:keyboardState segments:segmentsForPicker at:manager romajiEnabled:0 wordSearch:wordSearch];

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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end