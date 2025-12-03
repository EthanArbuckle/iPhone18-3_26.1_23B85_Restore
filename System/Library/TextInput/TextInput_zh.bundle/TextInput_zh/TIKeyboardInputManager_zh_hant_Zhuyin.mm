@interface TIKeyboardInputManager_zh_hant_Zhuyin
- (BOOL)liveConversionEnabled;
- (BOOL)shouldInsertFirstToneMark;
- (BOOL)shouldInvokeLiveConverison:(id)converison;
- (BOOL)shouldReplaceCharacterOfInputStringBeforeCursorForInput:(id)input;
- (BOOL)supportsCandidateGeneration;
- (id)deleteFromInput:(unint64_t *)input;
- (id)didAcceptCandidate:(id)candidate;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)keyboardConfigurationLayoutTag;
- (unint64_t)initialSelectedIndex;
- (unsigned)mapKeyboardLayoutKey:(unsigned __int16)key;
- (void)commitComposition;
- (void)syncToLayoutState:(id)state;
@end

@implementation TIKeyboardInputManager_zh_hant_Zhuyin

- (unint64_t)initialSelectedIndex
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];
  v6 = [candidates count];
  if (v6)
  {
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    if ([inputString length])
    {
      initialSelectedIndex = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  initialSelectedIndex = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return initialSelectedIndex;
}

- (id)didAcceptCandidate:(id)candidate
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 didAcceptCandidate:candidate];
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic])
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    -[TIKeyboardInputManager_zh_hant_Zhuyin setAssertDefaultKeyPlane:](self, "setAssertDefaultKeyPlane:", [candidates count] != 0);
  }

  return v4;
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 handleAcceptedCandidate:candidate keyboardState:state];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)syncToLayoutState:(id)state
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  stateCopy = state;
  [(TIKeyboardInputManagerChinesePhonetic *)&v6 syncToLayoutState:stateCopy];
  softwareLayout = [stateCopy softwareLayout];

  -[TIKeyboardInputManager_zh_hant_Zhuyin setDynamic:](self, "setDynamic:", [softwareLayout isEqualToString:@"ZhuyinDynamic"]);
  [(TIKeyboardInputManager_zh_hant_Zhuyin *)self setAssertDefaultKeyPlane:[(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic]];
}

- (unsigned)mapKeyboardLayoutKey:(unsigned __int16)key
{
  if (key == 32)
  {
    return 713;
  }

  else
  {
    return key;
  }
}

- (id)deleteFromInput:(unint64_t *)input
{
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self usesComposingInput])
  {
    wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [wordSearch cancel];

    composingInput = [(TIKeyboardInputManagerMecabra *)self composingInput];
    asInlineText = [composingInput asInlineText];
    v8 = [asInlineText isEqualToString:*MEMORY[0x29EDC72D0]];

    if (v8)
    {
      [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
    }

    else
    {
      composingInput2 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v10ComposingInput = [composingInput2 composingInput];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        wordSearch2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
        [wordSearch2 revertInlineCandidate];
      }

      v14 = objc_alloc(MEMORY[0x29EDC71D0]);
      previouslyDeletedTypeInput = [(TIKeyboardInputManagerMecabra *)self previouslyDeletedTypeInput];
      previouslyProcessedDeleteInput = [(TIKeyboardInputManagerMecabra *)self previouslyProcessedDeleteInput];
      v17 = [v14 initWithDeletedText:0 deleteBySyllable:previouslyDeletedTypeInput == 0 shouldDeleteAcceptCandidateInput:previouslyProcessedDeleteInput == 0];

      composingInput3 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [composingInput3 composeNew:v17];

      [(TIKeyboardInputManagerMecabra *)self processDeleteInputs];
      [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:v17];
      TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
      composingInput4 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v19ComposingInput = [composingInput4 composingInput];

      if (!v19ComposingInput)
      {
        [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:0];
      }
    }

    v9 = 0;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
    v9 = [(TIKeyboardInputManagerChinesePhonetic *)&v22 deleteFromInput:input];
  }

  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic])
  {
    [(TIKeyboardInputManager_zh_hant_Zhuyin *)self setAssertDefaultKeyPlane:[(TIKeyboardInputManagerChinesePhonetic *)self inputCount]== 0];
  }

  return v9;
}

- (BOOL)shouldInsertFirstToneMark
{
  inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
  if ([inputString length] >= inputIndex)
  {
    [inputString characterAtIndex:inputIndex - 1];
    v5 = uscript_getScript() == 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)keyboardConfigurationLayoutTag
{
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic])
  {
    keyboardConfigurationLayoutTag = *MEMORY[0x29EDC7198];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
    keyboardConfigurationLayoutTag = [(TIKeyboardInputManagerChinesePhonetic *)&v5 keyboardConfigurationLayoutTag];
  }

  return keyboardConfigurationLayoutTag;
}

- (BOOL)shouldReplaceCharacterOfInputStringBeforeCursorForInput:(id)input
{
  inputCopy = input;
  inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
  v6 = [inputCopy substringToIndex:1];

  _containsBopomofoToneOnly = 0;
  if ([v6 _containsBopomofoToneOnly] && inputIndex)
  {
    v8 = *MEMORY[0x29EDC7288];
    if ([*(&self->super.super.super.super.super.super.super.super.isa + v8) length] < 2)
    {
      _containsBopomofoToneOnly = 0;
    }

    else
    {
      v9 = [*(&self->super.super.super.super.super.super.super.super.isa + v8) substringWithRange:{inputIndex - 1, 1}];
      _containsBopomofoToneOnly = [v9 _containsBopomofoToneOnly];
    }
  }

  return _containsBopomofoToneOnly;
}

- (BOOL)shouldInvokeLiveConverison:(id)converison
{
  converisonCopy = converison;
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self liveConversionEnabled])
  {
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v6 = [inputString length];
    if (v6 == [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex])
    {
      string = [converisonCopy string];
      v8 = [string length] != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (([(TIKeyboardInputManager_zh_hant_Zhuyin *)self inHardwareKeyboardMode]& 1) == 0)
  {
    string2 = [converisonCopy string];
    if ([string2 isEqualToString:*MEMORY[0x29EDC71A0]])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      string3 = [converisonCopy string];
      v10 = [string3 isEqualToString:*MEMORY[0x29EDC72D0]] ^ 1;
    }

    v8 &= v10;
  }

  return v8;
}

- (BOOL)liveConversionEnabled
{
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self liveConversionForceEnabled])
  {
    return 1;
  }

  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self liveConversionForceDisabled])
  {
    return 0;
  }

  inHardwareKeyboardMode = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self inHardwareKeyboardMode];
  mEMORY[0x29EDC70E8] = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v6 = mEMORY[0x29EDC70E8];
  v7 = MEMORY[0x29EDC7110];
  if (!inHardwareKeyboardMode)
  {
    v7 = MEMORY[0x29EDC7138];
  }

  v8 = [mEMORY[0x29EDC70E8] BOOLForPreferenceKey:*v7];

  return v8;
}

- (BOOL)supportsCandidateGeneration
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = composingKeyboardInputManager == 0;

  return v3;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  selfCopy = [composingKeyboardInputManager handleKeyboardInput:inputCopy];

  if (!selfCopy)
  {
    string = [inputCopy string];
    if ([string isEqualToString:@"\n"])
    {
LABEL_5:

LABEL_6:
      v28.receiver = self;
      v9 = &v28;
LABEL_7:
      v9->super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
      selfCopy = [(objc_super *)v9 handleKeyboardInput:inputCopy, selfCopy];
      goto LABEL_8;
    }

    string2 = [inputCopy string];
    if ([string2 isEqualToString:@" "])
    {

      goto LABEL_5;
    }

    string3 = [inputCopy string];
    v12 = [string3 isEqualToString:@"　"];

    if (v12)
    {
      goto LABEL_6;
    }

    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    if (composingKeyboardInputManager2)
    {

LABEL_21:
      selfCopy = self;
      v9 = &selfCopy;
      goto LABEL_7;
    }

    if (![(TIKeyboardInputManager_zh_hant_Zhuyin *)self shouldInvokeLiveConverison:inputCopy])
    {
      goto LABEL_21;
    }

    if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self inHardwareKeyboardMode])
    {
      v14 = [TIKeyboardInputManagerLiveConversion_zh alloc];
      inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
      keyboardState = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
      v17 = [(TIKeyboardInputManagerBase *)v14 initWithInputMode:inputMode keyboardState:keyboardState];
    }

    else
    {
      v18 = [TIKeyboardInputManager_zh_Toneless alloc];
      inputMode = [(TIKeyboardInputManagerBase *)self inputMode];
      keyboardState = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
      v17 = [(TIKeyboardInputManager_zh_Toneless *)v18 initWithInputMode:inputMode keyboardState:keyboardState dynamic:[(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic]];
    }

    v19 = v17;
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v17];

    if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
    {
      v20 = objc_alloc_init(MEMORY[0x29EDC7090]);
      rawInputString = [(TIKeyboardInputManagerChinesePhonetic *)self rawInputString];
      [v20 setString:rawInputString];

      v22 = objc_alloc(MEMORY[0x29EDC7228]);
      keyboardState2 = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
      v24 = [v22 initWithKeyboardState:keyboardState2];

      composingKeyboardInputManager3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
      [composingKeyboardInputManager3 addInput:v20 withContext:v24];
    }

    composingKeyboardInputManager4 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    selfCopy = [composingKeyboardInputManager4 handleKeyboardInput:inputCopy];

    if (!selfCopy)
    {
      goto LABEL_21;
    }
  }

LABEL_8:

  return selfCopy;
}

- (void)commitComposition
{
  composingKeyboardInputManager = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composingKeyboardInputManager2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    rawInputString = [composingKeyboardInputManager2 rawInputString];

    v7 = objc_alloc_init(MEMORY[0x29EDC7090]);
    [v7 setString:rawInputString];
    v8 = objc_alloc(MEMORY[0x29EDC7228]);
    keyboardState = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
    v10 = [v8 initWithKeyboardState:keyboardState];

    [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
    TIInputManager::sync_with_input_from_UI(*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
    [(TIKeyboardInputManagerChinesePhonetic *)self addInput:v7 withContext:v10];
  }

  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  [(TIKeyboardInputManagerMecabra *)&v11 commitComposition];
}

@end