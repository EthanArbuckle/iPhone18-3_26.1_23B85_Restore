@interface TIKeyboardInputManagerPinyin
- (BOOL)acceptAutocorrectionCommitsInline;
- (BOOL)currentShuangpinTypeUsesSemicolon;
- (BOOL)isShuangpinSemicolon:(id)semicolon;
- (BOOL)isSpecialInput:(id)input;
- (BOOL)usesGeometryModelData;
- (id)keyboardBehaviors;
- (id)remapInput:(id)input isFacemarkInput:(BOOL *)facemarkInput;
- (id)validCharacterSetForAutocorrection;
- (unint64_t)initialSelectedIndex;
@end

@implementation TIKeyboardInputManagerPinyin

- (id)remapInput:(id)input isFacemarkInput:(BOOL *)facemarkInput
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerPinyin;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v9 remapInput:input isFacemarkInput:facemarkInput];
  if ([(__CFString *)v5 isEqualToString:@"；"])
  {
    if ([(TIKeyboardInputManagerPinyin *)self currentShuangpinTypeUsesSemicolon])
    {
      inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
      v7 = [inputString length];

      if (v7)
      {

        v5 = @";";
      }
    }
  }

  return v5;
}

- (BOOL)isSpecialInput:(id)input
{
  inputCopy = input;
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerPinyin;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v7 isSpecialInput:inputCopy]|| [(TIKeyboardInputManagerPinyin *)self isShuangpinSemicolon:inputCopy];

  return v5;
}

- (BOOL)isShuangpinSemicolon:(id)semicolon
{
  if (![semicolon isEqualToString:@";"] || !-[TIKeyboardInputManagerPinyin currentShuangpinTypeUsesSemicolon](self, "currentShuangpinTypeUsesSemicolon"))
  {
    return 0;
  }

  inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v5 = [inputString length] != 0;

  return v5;
}

- (BOOL)currentShuangpinTypeUsesSemicolon
{
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  shuangpinType = [wordSearch shuangpinType];

  return shuangpinType == 7 || shuangpinType == 2;
}

- (id)validCharacterSetForAutocorrection
{
  if ([TIKeyboardInputManagerPinyin validCharacterSetForAutocorrection]::__onceToken != -1)
  {
    dispatch_once(&[TIKeyboardInputManagerPinyin validCharacterSetForAutocorrection]::__onceToken, &__block_literal_global_84);
  }

  v3 = [TIKeyboardInputManagerPinyin validCharacterSetForAutocorrection]::__validCharSet;

  return v3;
}

void __66__TIKeyboardInputManagerPinyin_validCharacterSetForAutocorrection__block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] characterSetWithRange:{97, 26}];
  [v2 addCharactersInString:@"➋➌➍➎➏➐➑➒"];
  v0 = [v2 copy];
  v1 = [TIKeyboardInputManagerPinyin validCharacterSetForAutocorrection]::__validCharSet;
  [TIKeyboardInputManagerPinyin validCharacterSetForAutocorrection]::__validCharSet = v0;
}

- (BOOL)acceptAutocorrectionCommitsInline
{
  if (!self->super._isInAmbiguousMode)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerPinyin;
  return [(TIKeyboardInputManagerPinyin *)&v5 acceptAutocorrectionCommitsInline];
}

- (BOOL)usesGeometryModelData
{
  if (self->super._isInAmbiguousMode)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = TIKeyboardInputManagerPinyin;
  return [(TIKeyboardInputManagerChinesePhonetic *)&v5 usesGeometryModelData];
}

- (unint64_t)initialSelectedIndex
{
  mEMORY[0x277D6F470] = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [mEMORY[0x277D6F470] BOOLForPreferenceKey:*MEMORY[0x277D6FA90]];

  keyboardState = [(TIKeyboardInputManagerPinyin *)self keyboardState];
  hardwareKeyboardMode = [keyboardState hardwareKeyboardMode];

  if (hardwareKeyboardMode && v4)
  {
    wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    candidates = [wordSearchCandidateResultSet candidates];
    v9 = [candidates count];
    if (v9 && (-[TIKeyboardInputManagerChinesePhonetic inputString](self, "inputString"), hardwareKeyboardMode = objc_claimAutoreleasedReturnValue(), [hardwareKeyboardMode length]))
    {
      initialSelectedIndex = 0;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = TIKeyboardInputManagerPinyin;
      initialSelectedIndex = [(TIKeyboardInputManagerChinese *)&v13 initialSelectedIndex];
      if (!v9)
      {
LABEL_11:

        return initialSelectedIndex;
      }
    }

    goto LABEL_11;
  }

  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12.receiver = self;
  v12.super_class = TIKeyboardInputManagerPinyin;
  return [(TIKeyboardInputManagerChinese *)&v12 initialSelectedIndex];
}

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x277D6F3A0]);

  return v2;
}

@end