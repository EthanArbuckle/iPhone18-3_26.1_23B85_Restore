@interface TIKeyboardInputManagerLiveConversion_zh
- (BOOL)_shouldCommitInputDirectly:(id)a3;
- (BOOL)closeCandidateGenerationContextWithResults:(id)a3;
- (BOOL)shouldClearInputOnMarkedTextOutOfSync;
- (BOOL)updateCandidatesByWaitingForResults:(BOOL)a3;
- (TIKeyboardInputManagerLiveConversion_zh)initWithConfig:(id)a3 keyboardState:(id)a4;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputString;
- (id)internalInputString;
- (id)keyboardBehaviors;
- (id)markedText;
- (id)rawInputString;
- (unint64_t)initialSelectedIndex;
- (unsigned)inputCount;
- (unsigned)inputIndex;
- (void)_addInputToInternal:(id)a3;
- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)addInputToInternal:(id)a3;
- (void)clearInput;
- (void)commitComposition;
- (void)initImplementation;
- (void)presentSegmentAdjuster;
- (void)presentSegmentPickerIfNeeded;
@end

@implementation TIKeyboardInputManagerLiveConversion_zh

- (TIKeyboardInputManagerLiveConversion_zh)initWithConfig:(id)a3 keyboardState:(id)a4
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 initWithConfig:a3 keyboardState:a4];
  if (v4)
  {
    v5 = objc_alloc_init(TIZhuyinInputManager);
    zhuyinInputManager = v4->_zhuyinInputManager;
    v4->_zhuyinInputManager = v5;
  }

  return v4;
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7068]);

  return v2;
}

- (unint64_t)initialSelectedIndex
{
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 candidates];
  v6 = [v5 count];
  if (v6)
  {
    v2 = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
    if ([v2 length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v7 = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71B8];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_zh;
  return [(TIKeyboardInputManagerChinese *)&v4 initImplementationWithMode:@"Zhuyin" andLanguage:v2];
}

- (void)clearInput
{
  [(TIKeyboardInputManagerLiveConversion_zh *)self setCachedInputString:0];
  [(TIKeyboardInputManagerLiveConversion_zh *)self setCurrentCandidate:0];
  [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:0];
  v3 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  [v3 reset];

  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_zh;
  [(TIKeyboardInputManagerChinesePhonetic *)&v4 clearInput];
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if (TICanLogMessageAtLevel())
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManagerLiveConversion_zh handleKeyboardInput:];
    }
  }

  v6 = [v4 acceptedCandidate];
  if (v6)
  {
    v7 = v6;
    v8 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (v8)
    {
      goto LABEL_7;
    }
  }

  v10 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];

  if (v10)
  {
    v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v12 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];
    v13 = [v11 mecabraCandidateRefFromCandidate:v12];

    v14 = [MEMORY[0x29EDC70D0] dictionaryReadingFromMecabraCandidate:v13];
    v15 = [v14 length];
    v16 = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
    v17 = [v16 length];

    if (v15 > v17)
    {
      [(TIKeyboardInputManagerLiveConversion_zh *)self clearInput];
    }

    [(TIKeyboardInputManagerLiveConversion_zh *)self addInputToInternal:v14];
    [(TIKeyboardInputManagerLiveConversion_zh *)self setCurrentCandidate:0];
  }

  v18 = [v4 string];
  v19 = [v18 isEqualToString:@"\x1B"];

  if (v19)
  {
    v9 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    v20 = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
    [v9 insertText:v20];

    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
    goto LABEL_30;
  }

  v21 = [v4 string];
  v22 = [v21 isEqualToString:@"\n"];

  if (v22)
  {
    v23 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];

    if (!v23)
    {
      [(TIKeyboardInputManagerMecabra *)self completeComposition];
    }

LABEL_7:
    v9 = objc_alloc_init(MEMORY[0x29EDC70B0]);
    goto LABEL_30;
  }

  if ([v4 isBackspace])
  {
    v24 = [v4 isShiftDown];
  }

  else
  {
    v24 = 0;
  }

  [(TIKeyboardInputManagerLiveConversion_zh *)self setRevertTonlessZhuyin:v24];
  v34.receiver = self;
  v34.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v25 = [(TIKeyboardInputManagerChinesePhonetic *)&v34 handleKeyboardInput:v4];
  v26 = [v4 string];
  if (([v26 _isSpace] & 1) == 0)
  {

    goto LABEL_24;
  }

  v27 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v28 = [v27 syllableBuffersOccupied];

  if (v28)
  {
LABEL_24:
    [(TIKeyboardInputManagerLiveConversion_zh *)self updateCandidatesByWaitingForResults:1];
    v30 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    if ([v30 syllableBuffersOccupied])
    {
    }

    else
    {
      v31 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
      v32 = [v31 isCursorAtEnd];

      if ((v32 & 1) == 0)
      {
        [(TIKeyboardInputManagerLiveConversion_zh *)self presentSegmentAdjuster];
      }
    }

    v29 = v25;
    goto LABEL_29;
  }

  [(TIKeyboardInputManagerLiveConversion_zh *)self presentSegmentPickerIfNeeded];
  v29 = objc_alloc_init(MEMORY[0x29EDC70B0]);
LABEL_29:
  v9 = v29;

LABEL_30:

  return v9;
}

- (id)markedText
{
  v13[1] = *MEMORY[0x29EDCA608];
  v3 = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
  v4 = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
  v5 = [(TIKeyboardInputManagerLiveConversion_zh *)self inputIndex];
  v6 = [(TIKeyboardInputManagerChinesePhonetic *)self searchStringForMarkedText];
  v7 = [MEMORY[0x29EDBA168] valueWithRange:{0, objc_msgSend(v4, "length")}];
  v13[0] = v7;
  v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v13 count:1];

  v9 = [(TIKeyboardInputManagerLiveConversion_zh *)self lastInputString];
  v10 = [MEMORY[0x29EDC70A0] intermediateTextWithInputString:v3 displayString:v4 selectionLocation:v5 searchString:v6 candidateOffset:0 liveConversionSegments:v8 highlightSegmentIndex:0x7FFFFFFFFFFFFFFFLL lastInputString:v9];

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (BOOL)shouldClearInputOnMarkedTextOutOfSync
{
  v2 = [MEMORY[0x29EDC7270] sharedOperationQueue];
  v3 = [v2 operationCount] == 0;

  return v3;
}

- (BOOL)_shouldCommitInputDirectly:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  if (TIStringContainsCharacterFromSet(v4, v5))
  {
    goto LABEL_4;
  }

  v6 = [MEMORY[0x29EDB9F50] punctuationAndSymbolCharacterSet];
  if (TIStringContainsCharacterFromSet(v4, v6))
  {

LABEL_4:
    goto LABEL_5;
  }

  v9 = [MEMORY[0x29EDB9F50] alphanumericCharacterSet];
  v10 = TIStringContainsCharacterFromSet(v4, v9);

  if (!v10)
  {
    v11.receiver = self;
    v11.super_class = TIKeyboardInputManagerLiveConversion_zh;
    v7 = [(TIKeyboardInputManagerChinesePhonetic *)&v11 _shouldCommitInputDirectly:v4];
    goto LABEL_6;
  }

LABEL_5:
  v7 = 0;
LABEL_6:

  return v7;
}

- (void)addInputToInternal:(id)a3
{
  v6 = a3;
  if ([v6 length] == 1)
  {
    [(TIKeyboardInputManagerLiveConversion_zh *)self _addInputToInternal:v6];
  }

  else if ([v6 length])
  {
    v4 = 0;
    do
    {
      v5 = [v6 substringWithRange:{v4, 1}];
      [(TIKeyboardInputManagerLiveConversion_zh *)self _addInputToInternal:v5];

      ++v4;
    }

    while (v4 < [v6 length]);
  }
}

- (void)_addInputToInternal:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x29EDB9F50] zhuyinCharacterSet];
  v5 = TIStringContainsCharacterFromSet(v11, v4);

  if (v5)
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    v7 = [v6 composedText];
    cachedInputString = self->_cachedInputString;
    self->_cachedInputString = v7;

    v9 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    [v9 addZhuyinInput:v11];

    [(TIKeyboardInputManagerLiveConversion_zh *)self updateCandidatesByWaitingForResults:1];
  }

  else if (([v11 isEqualToString:@" "] & 1) == 0)
  {
    v10 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    [v10 addNonZhuyinInput:v11];
  }
}

- (id)rawInputString
{
  v2 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v3 = [v2 inputBuffer];

  return v3;
}

- (id)internalInputString
{
  v2 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v3 = [v2 inputBuffer];

  return v3;
}

- (unsigned)inputCount
{
  v2 = [(TIKeyboardInputManagerLiveConversion_zh *)self inputString];
  v3 = [v2 length];

  return v3;
}

- (id)inputString
{
  v3 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];

  if (v3)
  {
    v4 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];
    v5 = [v4 candidate];
LABEL_3:
    v6 = v5;

    goto LABEL_6;
  }

  v7 = [(TIKeyboardInputManagerLiveConversion_zh *)self cachedInputString];

  if (v7)
  {
    v6 = [(TIKeyboardInputManagerLiveConversion_zh *)self cachedInputString];
  }

  else
  {
    v9 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    v10 = [v9 composedText];

    if (v10)
    {
      v4 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
      v5 = [v4 composedText];
      goto LABEL_3;
    }

    v6 = &stru_2A252F9A8;
  }

LABEL_6:

  return v6;
}

- (unsigned)inputIndex
{
  v3 = [(TIKeyboardInputManagerLiveConversion_zh *)self currentCandidate];

  if (v3)
  {

    return [(TIKeyboardInputManagerLiveConversion_zh *)self inputCount];
  }

  else
  {
    v5 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
    v6 = [v5 cursorLocation];

    return v6;
  }
}

- (id)deleteFromInput:(unint64_t *)a3
{
  v5 = [(TIKeyboardInputManagerLiveConversion_zh *)self revertTonlessZhuyin];
  v6 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v7 = v6;
  if (v5)
  {
    [v6 revertCurrentCharacterToTonelessZhuyin];
  }

  else
  {
    [v6 deleteFromInput];
  }

  if (a3)
  {
    *a3 = 1;
  }

  v8 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v9 = [v8 inputBuffer];
  v10 = [v9 length];

  if (!v10)
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return 0;
}

- (BOOL)updateCandidatesByWaitingForResults:(BOOL)a3
{
  v3 = a3;
  v5 = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
  v6 = [v5 length];
  if (TICanLogMessageAtLevel())
  {
    v7 = TIOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TIKeyboardInputManagerLiveConversion_zh updateCandidatesByWaitingForResults:v5];
    }
  }

  if (!v6)
  {
    [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
    v17 = 1;
    goto LABEL_18;
  }

  v8 = [(TIKeyboardInputManagerMecabra *)self geometryModelData];
  v9 = objc_alloc(MEMORY[0x29EDC7148]);
  v10 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v11 = [(TIKeyboardInputManagerMecabra *)self composingInput];
  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v12 = self;
  }

  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = sel_wordSearchEngineDidFindCandidates_forOperation_;
  }

  v14 = [(TIKeyboardInputManagerChinesePhonetic *)self logger];
  LOBYTE(v22) = 1;
  BYTE2(v21) = 0;
  LOWORD(v21) = 1;
  v15 = [v9 initWithWordSearch:v10 inputString:v5 keyboardInput:v11 segmentBreakIndex:0x7FFFFFFFFFFFFFFFLL disambiguationCandidates:0 unambiguousSyllableCount:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL regenerateDisambiguationCandidates:v21 predictionEnabled:v12 reanalysisMode:v13 target:v8 action:v22 geometryModelData:v14 hardwareKeyboardMode:? logger:?];

  v16 = [v15 results];
  v17 = v16 == 0;

  if (!v16)
  {
    v18 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v18 performOperationAsync:v15];

    if (!v3)
    {
      v17 = 0;
      goto LABEL_16;
    }

    [v15 waitUntilFinished];
  }

  v19 = [v15 results];
  [(TIKeyboardInputManagerLiveConversion_zh *)self _notifyUpdateCandidates:v19 forOperation:v15];

LABEL_16:
LABEL_18:

  return v17;
}

- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v25 = a4;
  if (-[TIKeyboardInputManagerLiveConversion_zh shouldSkipCandidateSelection](self, "shouldSkipCandidateSelection") || ([v6 candidates], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, !v8))
  {
    v20 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    [v20 cancelComposition];

    goto LABEL_21;
  }

  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:v6];
  cachedInputString = self->_cachedInputString;
  self->_cachedInputString = 0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v6;
  v10 = [v6 candidates];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = v11;
  v13 = *v27;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v26 + 1) + 8 * i);
      if ([v15 containPunctuationOnly])
      {
LABEL_19:
        v21 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
        [v21 updateWithCandidate:v15 isWholeInputCandidate:1];

        [(TIKeyboardInputManagerLiveConversion_zh *)self setTopCandidate:v15];
        v22 = [(TIKeyboardInputManagerMecabra *)self segmentsFromCandidate:v15 phraseBoundary:0];
        [(TIKeyboardInputManagerChinesePhonetic *)self setSegments:v22];

        goto LABEL_20;
      }

      v16 = [v15 candidate];
      if ([v16 _containsBopomofoOnly])
      {
        goto LABEL_14;
      }

      v17 = [v15 input];
      v18 = [v25 inputString];
      if (([v17 isEqualToString:v18] & 1) == 0)
      {

LABEL_14:
        continue;
      }

      v19 = [v15 hasUnsupportedReading];

      if ((v19 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_20:

  [(TIKeyboardInputManagerLiveConversion_zh *)self setMarkedText];
  v6 = v24;
LABEL_21:

  v23 = *MEMORY[0x29EDCA608];
}

- (BOOL)closeCandidateGenerationContextWithResults:(id)a3
{
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManagerLiveConversion_zh;
  [(TIKeyboardInputManagerLiveConversion_zh *)&v4 closeCandidateGenerationContextWithResults:0];
  return 1;
}

- (id)didAcceptCandidate:(id)a3
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [(TIKeyboardInputManagerChinesePhonetic *)self remainingInput];
  v7 = [v6 length];

  if (!v7 || (isKindOfClass & 1) != 0)
  {
    v8 = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
    v9 = [v8 length];
    v10 = [v4 input];
    v11 = (v9 > [v10 length]) & (isKindOfClass ^ 1u);

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[TIKeyboardInputManagerLiveConversion_zh didAcceptCandidate:]";
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_29EA88000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  candidate is partial: %d", &v21, 0x12u);
    }

    v12 = [v4 candidate];
    if ([v12 length])
    {
      v13 = [(TIKeyboardInputManagerLiveConversion_zh *)self isTypologyEnabled];

      if (v13)
      {
        [(TIKeyboardInputManagerMecabra *)self logCommittedCandidate:v4 partial:v11];
      }
    }

    else
    {
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(TIKeyboardInputManagerMecabra *)self updateUsageStatisticsForCandidate:v4 isPartial:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [(TIKeyboardInputManagerLiveConversion_zh *)self topCandidate];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        v16 = [(TIKeyboardInputManagerLiveConversion_zh *)self topCandidate];
        v17 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v16];

        v18 = [(TIKeyboardInputManagerChinese *)self wordSearch];
        [v18 performAccept:v17 isPartial:0];
      }
    }

    [(TIKeyboardInputManagerLiveConversion_zh *)self clearInput];
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  v19 = *MEMORY[0x29EDCA608];
  return &stru_2A252F9A8;
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerLiveConversion_zh;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v9 handleAcceptedCandidate:a3 keyboardState:a4];
  v6 = [(TIKeyboardInputManagerLiveConversion_zh *)self rawInputString];
  v7 = [v6 length];

  if (v7)
  {
    [(TIKeyboardInputManagerLiveConversion_zh *)self updateCandidatesByWaitingForResults:1];
  }

  else
  {
    [(TIKeyboardInputManagerMecabra *)self completeComposition];
  }

  return v5;
}

- (void)presentSegmentAdjuster
{
  v3 = [TIKeyboardInputManager_zh_SegmentAdjust alloc];
  v9 = [(TIKeyboardInputManagerLiveConversion_zh *)self config];
  v4 = [(TIKeyboardInputManagerLiveConversion_zh *)self keyboardState];
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
  v6 = [(TIKeyboardInputManagerLiveConversion_zh *)self zhuyinInputManager];
  v7 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v8 = [(TIKeyboardInputManager_zh_SegmentAdjust *)v3 initWithConfig:v9 keyboardState:v4 segments:v5 inputManager:v6 wordSearch:v7];
  [(TIKeyboardInputManagerMecabra *)self composeTextWith:v8];
}

- (void)presentSegmentPickerIfNeeded
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __71__TIKeyboardInputManagerLiveConversion_zh_presentSegmentPickerIfNeeded__block_invoke;
    v15[3] = &unk_29F37D418;
    v15[4] = self;
    v15[5] = v16;
    v15[6] = &v17;
    [v5 enumerateObjectsUsingBlock:v15];

    if (v18[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
      v7 = [v6 count];
      v18[3] = v7 - 1;
    }

    v8 = [TIKeyboardInputManager_zh_SegmentPicker alloc];
    v9 = [(TIKeyboardInputManagerLiveConversion_zh *)self config];
    v10 = [(TIKeyboardInputManagerLiveConversion_zh *)self keyboardState];
    v11 = [(TIKeyboardInputManagerChinesePhonetic *)self segments];
    v12 = v18[3];
    v13 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    v14 = [(TIKeyboardInputManager_zh_SegmentPicker *)v8 initWithConfig:v9 keyboardState:v10 segments:v11 at:v12 wordSearch:v13];

    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v14];
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
  }
}

- (void)commitComposition
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v6 = [v5 segments];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 segments];
      [(TIKeyboardInputManagerChinesePhonetic *)self setSegments:v8];

      v9 = [v5 inputString];
      [(TIKeyboardInputManagerLiveConversion_zh *)self setCachedInputString:v9];

      v10 = [v5 remainingInput];
      [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v10];
    }

    else
    {
      [(TIKeyboardInputManagerLiveConversion_zh *)self clearInput];
    }
  }

  v11 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v14 = [v13 segments];
    [(TIKeyboardInputManagerChinesePhonetic *)self setSegments:v14];

    v15 = [v13 inputString];
    [(TIKeyboardInputManagerLiveConversion_zh *)self setCachedInputString:v15];

    v16 = [v13 remainingInput];
    [(TIKeyboardInputManagerChinesePhonetic *)self setRemainingInput:v16];
  }

  v17.receiver = self;
  v17.super_class = TIKeyboardInputManagerLiveConversion_zh;
  [(TIKeyboardInputManagerMecabra *)&v17 commitComposition];
}

- (void)handleKeyboardInput:.cold.1()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s handleKeyboardInput", "-[TIKeyboardInputManagerLiveConversion_zh handleKeyboardInput:]"];
  v4 = 138412290;
  v5 = v0;
  OUTLINED_FUNCTION_0(&dword_29EA88000, v1, v2, "%@", &v4);

  v3 = *MEMORY[0x29EDCA608];
}

- (void)updateCandidatesByWaitingForResults:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s updateCandidates for %@", "-[TIKeyboardInputManagerLiveConversion_zh updateCandidatesByWaitingForResults:]", a1];
  v5 = 138412290;
  v6 = v1;
  OUTLINED_FUNCTION_0(&dword_29EA88000, v2, v3, "%@", &v5);

  v4 = *MEMORY[0x29EDCA608];
}

- (void)_adjustPhraseBoundaryInForwardDirection:(char)a1 granularity:(uint64_t)a2 .cold.1(char a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s adjust phrase: %d %d", "-[TIKeyboardInputManagerLiveConversion_zh _adjustPhraseBoundaryInForwardDirection:granularity:]", a1 & 1, a2];
  v6 = 138412290;
  v7 = v2;
  OUTLINED_FUNCTION_0(&dword_29EA88000, v3, v4, "%@", &v6);

  v5 = *MEMORY[0x29EDCA608];
}

@end