@interface TIKeyboardInputManager_zh_Base
- (BOOL)_shouldCommitInputDirectly:(id)a3;
- (BOOL)acceptInputString:(id)a3;
- (id)inputsToReject;
- (id)keyboardBehaviors;
- (void)initImplementation;
@end

@implementation TIKeyboardInputManager_zh_Base

- (id)keyboardBehaviors
{
  v2 = objc_alloc_init(MEMORY[0x29EDC7060]);

  return v2;
}

- (BOOL)acceptInputString:(id)a3
{
  v4 = a3;
  if ([v4 length] && objc_msgSend(v4, "_containsBopomofoOnly"))
  {
    v5 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:v5];

    v7 = [v4 substringToIndex:1];
    v8 = [v7 _containsBopomofoToneOnly];

    if (v8 && (![v6 length] || (objc_msgSend(v6, "substringWithRange:", -[TIKeyboardInputManagerChinesePhonetic inputIndex](self, "inputIndex") - 1, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_containsBopomofoToneOnly"), v9, (v10 & 1) != 0)))
    {
      v11 = 0;
    }

    else
    {
      v12 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      v13 = [v12 candidates];

      if ([v13 count] == 1)
      {
        v14 = [v13 objectAtIndex:0];
        v15 = [v14 candidate];
        v16 = [v6 isEqualToString:v15];

        v11 = v16 ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

- (void)initImplementation
{
  v2 = *MEMORY[0x29EDC71B8];
  v4.receiver = self;
  v4.super_class = TIKeyboardInputManager_zh_Base;
  return [(TIKeyboardInputManagerChinese *)&v4 initImplementationWithMode:@"Zhuyin" andLanguage:v2];
}

- (BOOL)_shouldCommitInputDirectly:(id)a3
{
  v4 = a3;
  if (![(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    if ([v6 convertedLength])
    {
      v7 = [v4 length];

      if (v7 > 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v9.receiver = self;
  v9.super_class = TIKeyboardInputManager_zh_Base;
  if (![(TIKeyboardInputManagerChinesePhonetic *)&v9 _shouldCommitInputDirectly:v4])
  {
    if (([v4 _containsBopomofoOnly] & 1) == 0 && !-[TIKeyboardInputManagerChinesePhonetic isSpecialInput:](self, "isSpecialInput:", v4))
    {
      v5 = ![(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:v4];
      goto LABEL_10;
    }

LABEL_9:
    LOBYTE(v5) = 0;
    goto LABEL_10;
  }

  LOBYTE(v5) = 1;
LABEL_10:

  return v5;
}

- (id)inputsToReject
{
  v3 = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:v3];

  v5 = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
  v6 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v7 = [v6 candidates];

  if (v5 == -[TIKeyboardInputManagerChinesePhonetic inputCount](self, "inputCount") && [v7 count] == 1 && (objc_msgSend(v7, "objectAtIndex:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "candidate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v4, "isEqualToString:", v9), v9, v8, (v10 & 1) != 0))
  {
    v11 = 0;
    v12 = @"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄧㄨㄩㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦ";
  }

  else
  {
    v11 = v5 != 0;
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = @"ˉˊˇˋ˙";
    }
  }

  v18.receiver = self;
  v18.super_class = TIKeyboardInputManager_zh_Base;
  v13 = [(TIKeyboardInputManagerMecabra *)&v18 inputsToReject];
  v14 = v13;
  if (v11)
  {
    v15 = v13;
  }

  else
  {
    if (v13)
    {
      v16 = [v13 mutableCopy];
      [v16 addCharactersInString:v12];
      goto LABEL_14;
    }

    v15 = [objc_alloc(MEMORY[0x29EDC6FD8]) initWithCharactersInString:v12];
  }

  v16 = v15;
LABEL_14:

  return v16;
}

@end