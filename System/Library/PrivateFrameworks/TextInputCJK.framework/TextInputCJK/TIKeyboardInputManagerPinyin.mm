@interface TIKeyboardInputManagerPinyin
- (BOOL)acceptAutocorrectionCommitsInline;
- (BOOL)currentShuangpinTypeUsesSemicolon;
- (BOOL)isShuangpinSemicolon:(id)a3;
- (BOOL)isSpecialInput:(id)a3;
- (BOOL)usesGeometryModelData;
- (id)keyboardBehaviors;
- (id)remapInput:(id)a3 isFacemarkInput:(BOOL *)a4;
- (id)validCharacterSetForAutocorrection;
- (unint64_t)initialSelectedIndex;
@end

@implementation TIKeyboardInputManagerPinyin

- (id)remapInput:(id)a3 isFacemarkInput:(BOOL *)a4
{
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerPinyin;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v9 remapInput:a3 isFacemarkInput:a4];
  if ([(__CFString *)v5 isEqualToString:@"；"])
  {
    if ([(TIKeyboardInputManagerPinyin *)self currentShuangpinTypeUsesSemicolon])
    {
      v6 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
      v7 = [v6 length];

      if (v7)
      {

        v5 = @";";
      }
    }
  }

  return v5;
}

- (BOOL)isSpecialInput:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TIKeyboardInputManagerPinyin;
  v5 = [(TIKeyboardInputManagerChinesePhonetic *)&v7 isSpecialInput:v4]|| [(TIKeyboardInputManagerPinyin *)self isShuangpinSemicolon:v4];

  return v5;
}

- (BOOL)isShuangpinSemicolon:(id)a3
{
  if (![a3 isEqualToString:@";"] || !-[TIKeyboardInputManagerPinyin currentShuangpinTypeUsesSemicolon](self, "currentShuangpinTypeUsesSemicolon"))
  {
    return 0;
  }

  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v5 = [v4 length] != 0;

  return v5;
}

- (BOOL)currentShuangpinTypeUsesSemicolon
{
  v2 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  v3 = [v2 shuangpinType];

  return v3 == 7 || v3 == 2;
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
  v3 = [MEMORY[0x277D6F470] sharedPreferencesController];
  v4 = [v3 BOOLForPreferenceKey:*MEMORY[0x277D6FA90]];

  v5 = [(TIKeyboardInputManagerPinyin *)self keyboardState];
  v6 = [v5 hardwareKeyboardMode];

  if (v6 && v4)
  {
    v7 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
    v8 = [v7 candidates];
    v9 = [v8 count];
    if (v9 && (-[TIKeyboardInputManagerChinesePhonetic inputString](self, "inputString"), v6 = objc_claimAutoreleasedReturnValue(), [v6 length]))
    {
      v10 = 0;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = TIKeyboardInputManagerPinyin;
      v10 = [(TIKeyboardInputManagerChinese *)&v13 initialSelectedIndex];
      if (!v9)
      {
LABEL_11:

        return v10;
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