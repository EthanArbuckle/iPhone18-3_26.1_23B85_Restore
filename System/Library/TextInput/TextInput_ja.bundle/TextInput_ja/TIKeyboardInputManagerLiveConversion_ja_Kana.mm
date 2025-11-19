@interface TIKeyboardInputManagerLiveConversion_ja_Kana
- (id)displayStringForSearch;
- (id)inputString;
- (id)rawInputStringFrom:(id)a3;
- (id)segmentAdjustInputManager:(unint64_t)a3;
- (void)_deleteFromInput;
- (void)addInput:(id)a3 withContext:(id)a4;
- (void)calculateGeometryForInput:(id)a3;
@end

@implementation TIKeyboardInputManagerLiveConversion_ja_Kana

- (void)addInput:(id)a3 withContext:(id)a4
{
  v58 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  v9 = v8;
  if (v8 && [v8 length])
  {
    if ([(TIKeyboardInputManagerLiveConversion_ja *)self shouldCommitHeadSegment])
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v10 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSegments];
      v11 = [v10 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v53 + 1) + 8 * i);
            v16 = [v15 surface];

            if (v16)
            {
              v17 = [v7 output];
              v18 = [v15 surface];
              [v17 insertText:v18];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v53 objects:v57 count:16];
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

      [(TIKeyboardInputManagerLiveConversion_ja *)self setInput:v24];
    }

    if (([(TIKeyboardInputManagerLiveConversion_ja_Kana *)self inHardwareKeyboardMode]& 1) != 0)
    {
      v33 = 0;
    }

    else
    {
      v33 = [v6 isPopupVariant];
    }

    v34 = [(TIKeyboardInputManagerLiveConversion_ja *)self stringByConvertingPunctuationForInput:v9 isLockedInput:v33];

    v35 = [v34 characterAtIndex:0];
    v36 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v37 = [v36 length];

    if ((v35 - 12443) > 1)
    {
      goto LABEL_33;
    }

    v38 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v39 = [v38 length];

    if (!v39)
    {
      goto LABEL_33;
    }

    v40 = v37 - 1;
    v41 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    v42 = [v41 substringWithRange:{v40, 1}];
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
    [v6 setString:v34];
    v52.receiver = self;
    v52.super_class = TIKeyboardInputManagerLiveConversion_ja_Kana;
    [(TIKeyboardInputManagerLiveConversion_ja_Kana *)&v52 addInput:v6 withContext:v7];
    [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self calculateGeometryForInput:v6];
    v50 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
    [(TIKeyboardInputManagerLiveConversion_ja *)self makeCandidatesWithWordSearch:v50];

    v9 = v34;
  }

  v51 = *MEMORY[0x29EDCA608];
}

- (id)inputString
{
  v10.receiver = self;
  v10.super_class = TIKeyboardInputManagerLiveConversion_ja_Kana;
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)&v10 inputString];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
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

- (id)displayStringForSearch
{
  v3 = [(TIKeyboardInputManagerLiveConversion_ja *)self committedSurface];
  v4 = [(TIKeyboardInputManagerLiveConversion_ja *)self rawInputString];
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

- (void)calculateGeometryForInput:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerMecabra *)self restoreGeometryForInput:v4 atIndex:[(TIKeyboardInputManagerLiveConversion_ja *)self inputIndex]];
}

- (void)_deleteFromInput
{
  [(TIKeyboardInputManagerLiveConversion_ja *)self _cancelCandidatesThread];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_ja_Kana;
  v3 = [(TIKeyboardInputManagerLiveConversion_ja_Kana *)&v4 deleteFromInput:0];
}

- (id)segmentAdjustInputManager:(unint64_t)a3
{
  v5 = [TIKeyboardInputManager_ja_SegmentAdjust alloc];
  v6 = [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self config];
  v7 = [(TIKeyboardInputManagerLiveConversion_ja_Kana *)self keyboardState];
  v8 = [(TIKeyboardInputManagerLiveConversion_ja *)self segmentsForPicker];
  v9 = [(TIKeyboardInputManagerLiveConversion_ja *)self wordSearch];
  v10 = [(TIKeyboardInputManager_ja_SegmentAdjust *)v5 initWithConfig:v6 keyboardState:v7 segments:v8 at:a3 romajiEnabled:0 wordSearch:v9];

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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end