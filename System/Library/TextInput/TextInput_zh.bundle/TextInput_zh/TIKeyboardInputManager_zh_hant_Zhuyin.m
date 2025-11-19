@interface TIKeyboardInputManager_zh_hant_Zhuyin
- (BOOL)liveConversionEnabled;
- (BOOL)shouldInsertFirstToneMark;
- (BOOL)shouldInvokeLiveConverison:(id)a3;
- (BOOL)shouldReplaceCharacterOfInputStringBeforeCursorForInput:(id)a3;
- (BOOL)supportsCandidateGeneration;
- (id)deleteFromInput:(unint64_t *)a3;
- (id)didAcceptCandidate:(id)a3;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)keyboardConfigurationLayoutTag;
- (unint64_t)initialSelectedIndex;
- (unsigned)mapKeyboardLayoutKey:(unsigned __int16)a3;
- (void)commitComposition;
- (void)syncToLayoutState:(id)a3;
@end

@implementation TIKeyboardInputManager_zh_hant_Zhuyin

- (unint64_t)initialSelectedIndex
{
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 candidates];
  v6 = [v5 count];
  if (v6)
  {
    v2 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    if ([v2 length])
    {
      v7 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  v7 = [(TIKeyboardInputManagerChinese *)&v9 initialSelectedIndex];
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v7;
}

- (id)didAcceptCandidate:(id)a3
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 didAcceptCandidate:a3];
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic])
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v6 = [v5 candidates];
    -[TIKeyboardInputManager_zh_hant_Zhuyin setAssertDefaultKeyPlane:](self, "setAssertDefaultKeyPlane:", [v6 count] != 0);
  }

  return v4;
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v8.receiver = self;
  v8.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)&v8 handleAcceptedCandidate:a3 keyboardState:a4];
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

- (void)syncToLayoutState:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  v4 = a3;
  [(TIKeyboardInputManagerChinesePhonetic *)&v6 syncToLayoutState:v4];
  v5 = [v4 softwareLayout];

  -[TIKeyboardInputManager_zh_hant_Zhuyin setDynamic:](self, "setDynamic:", [v5 isEqualToString:@"ZhuyinDynamic"]);
  [(TIKeyboardInputManager_zh_hant_Zhuyin *)self setAssertDefaultKeyPlane:[(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic]];
}

- (unsigned)mapKeyboardLayoutKey:(unsigned __int16)a3
{
  if (a3 == 32)
  {
    return 713;
  }

  else
  {
    return a3;
  }
}

- (id)deleteFromInput:(unint64_t *)a3
{
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self usesComposingInput])
  {
    v5 = [(TIKeyboardInputManagerChinese *)self wordSearch];
    [v5 cancel];

    v6 = [(TIKeyboardInputManagerMecabra *)self composingInput];
    v7 = [v6 asInlineText];
    v8 = [v7 isEqualToString:*MEMORY[0x29EDC72D0]];

    if (v8)
    {
      [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
    }

    else
    {
      v10 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v11 = [v10 composingInput];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v13 = [(TIKeyboardInputManagerChinese *)self wordSearch];
        [v13 revertInlineCandidate];
      }

      v14 = objc_alloc(MEMORY[0x29EDC71D0]);
      v15 = [(TIKeyboardInputManagerMecabra *)self previouslyDeletedTypeInput];
      v16 = [(TIKeyboardInputManagerMecabra *)self previouslyProcessedDeleteInput];
      v17 = [v14 initWithDeletedText:0 deleteBySyllable:v15 == 0 shouldDeleteAcceptCandidateInput:v16 == 0];

      v18 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      [v18 composeNew:v17];

      [(TIKeyboardInputManagerMecabra *)self processDeleteInputs];
      [(TIKeyboardInputManagerMecabra *)self setPreviouslyProcessedDeleteInput:v17];
      TIInputManager::delete_from_input(*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
      v19 = [(TIKeyboardInputManagerMecabra *)self composingInput];
      v20 = [v19 composingInput];

      if (!v20)
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
    v9 = [(TIKeyboardInputManagerChinesePhonetic *)&v22 deleteFromInput:a3];
  }

  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic])
  {
    [(TIKeyboardInputManager_zh_hant_Zhuyin *)self setAssertDefaultKeyPlane:[(TIKeyboardInputManagerChinesePhonetic *)self inputCount]== 0];
  }

  return v9;
}

- (BOOL)shouldInsertFirstToneMark
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
  if ([v3 length] >= v4)
  {
    [v3 characterAtIndex:v4 - 1];
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
    v3 = *MEMORY[0x29EDC7198];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
    v3 = [(TIKeyboardInputManagerChinesePhonetic *)&v5 keyboardConfigurationLayoutTag];
  }

  return v3;
}

- (BOOL)shouldReplaceCharacterOfInputStringBeforeCursorForInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
  v6 = [v4 substringToIndex:1];

  v7 = 0;
  if ([v6 _containsBopomofoToneOnly] && v5)
  {
    v8 = *MEMORY[0x29EDC7288];
    if ([*(&self->super.super.super.super.super.super.super.super.isa + v8) length] < 2)
    {
      v7 = 0;
    }

    else
    {
      v9 = [*(&self->super.super.super.super.super.super.super.super.isa + v8) substringWithRange:{v5 - 1, 1}];
      v7 = [v9 _containsBopomofoToneOnly];
    }
  }

  return v7;
}

- (BOOL)shouldInvokeLiveConverison:(id)a3
{
  v4 = a3;
  if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self liveConversionEnabled])
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v6 = [v5 length];
    if (v6 == [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex])
    {
      v7 = [v4 string];
      v8 = [v7 length] != 0;
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
    v9 = [v4 string];
    if ([v9 isEqualToString:*MEMORY[0x29EDC71A0]])
    {
      LOBYTE(v10) = 0;
    }

    else
    {
      v11 = [v4 string];
      v10 = [v11 isEqualToString:*MEMORY[0x29EDC72D0]] ^ 1;
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

  v4 = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self inHardwareKeyboardMode];
  v5 = [MEMORY[0x29EDC70E8] sharedPreferencesController];
  v6 = v5;
  v7 = MEMORY[0x29EDC7110];
  if (!v4)
  {
    v7 = MEMORY[0x29EDC7138];
  }

  v8 = [v5 BOOLForPreferenceKey:*v7];

  return v8;
}

- (BOOL)supportsCandidateGeneration
{
  v2 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v3 = v2 == 0;

  return v3;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  v6 = [v5 handleKeyboardInput:v4];

  if (!v6)
  {
    v7 = [v4 string];
    if ([v7 isEqualToString:@"\n"])
    {
LABEL_5:

LABEL_6:
      v28.receiver = self;
      v9 = &v28;
LABEL_7:
      v9->super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
      v6 = [(objc_super *)v9 handleKeyboardInput:v4, v27];
      goto LABEL_8;
    }

    v8 = [v4 string];
    if ([v8 isEqualToString:@" "])
    {

      goto LABEL_5;
    }

    v11 = [v4 string];
    v12 = [v11 isEqualToString:@"　"];

    if (v12)
    {
      goto LABEL_6;
    }

    v13 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    if (v13)
    {

LABEL_21:
      v27 = self;
      v9 = &v27;
      goto LABEL_7;
    }

    if (![(TIKeyboardInputManager_zh_hant_Zhuyin *)self shouldInvokeLiveConverison:v4])
    {
      goto LABEL_21;
    }

    if ([(TIKeyboardInputManager_zh_hant_Zhuyin *)self inHardwareKeyboardMode])
    {
      v14 = [TIKeyboardInputManagerLiveConversion_zh alloc];
      v15 = [(TIKeyboardInputManagerBase *)self inputMode];
      v16 = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
      v17 = [(TIKeyboardInputManagerBase *)v14 initWithInputMode:v15 keyboardState:v16];
    }

    else
    {
      v18 = [TIKeyboardInputManager_zh_Toneless alloc];
      v15 = [(TIKeyboardInputManagerBase *)self inputMode];
      v16 = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
      v17 = [(TIKeyboardInputManager_zh_Toneless *)v18 initWithInputMode:v15 keyboardState:v16 dynamic:[(TIKeyboardInputManager_zh_hant_Zhuyin *)self isDynamic]];
    }

    v19 = v17;
    [(TIKeyboardInputManagerMecabra *)self composeTextWith:v17];

    if ([(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
    {
      v20 = objc_alloc_init(MEMORY[0x29EDC7090]);
      v21 = [(TIKeyboardInputManagerChinesePhonetic *)self rawInputString];
      [v20 setString:v21];

      v22 = objc_alloc(MEMORY[0x29EDC7228]);
      v23 = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
      v24 = [v22 initWithKeyboardState:v23];

      v25 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
      [v25 addInput:v20 withContext:v24];
    }

    v26 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v6 = [v26 handleKeyboardInput:v4];

    if (!v6)
    {
      goto LABEL_21;
    }
  }

LABEL_8:

  return v6;
}

- (void)commitComposition
{
  v3 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(TIKeyboardInputManagerMecabra *)self composingKeyboardInputManager];
    v6 = [v5 rawInputString];

    v7 = objc_alloc_init(MEMORY[0x29EDC7090]);
    [v7 setString:v6];
    v8 = objc_alloc(MEMORY[0x29EDC7228]);
    v9 = [(TIKeyboardInputManager_zh_hant_Zhuyin *)self keyboardState];
    v10 = [v8 initWithKeyboardState:v9];

    [(TIKeyboardInputManagerChinesePhonetic *)self clearInput];
    TIInputManager::sync_with_input_from_UI(*(&self->super.super.super.super.super.super.super.super.isa + *MEMORY[0x29EDC7290]));
    [(TIKeyboardInputManagerChinesePhonetic *)self addInput:v7 withContext:v10];
  }

  v11.receiver = self;
  v11.super_class = TIKeyboardInputManager_zh_hant_Zhuyin;
  [(TIKeyboardInputManagerMecabra *)&v11 commitComposition];
}

@end