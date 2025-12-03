@interface TIKeyboardInputManager_zh_Base
- (BOOL)_shouldCommitInputDirectly:(id)directly;
- (BOOL)acceptInputString:(id)string;
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

- (BOOL)acceptInputString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] && objc_msgSend(stringCopy, "_containsBopomofoOnly"))
  {
    inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
    v6 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:inputString];

    v7 = [stringCopy substringToIndex:1];
    _containsBopomofoToneOnly = [v7 _containsBopomofoToneOnly];

    if (_containsBopomofoToneOnly && (![v6 length] || (objc_msgSend(v6, "substringWithRange:", -[TIKeyboardInputManagerChinesePhonetic inputIndex](self, "inputIndex") - 1, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "_containsBopomofoToneOnly"), v9, (v10 & 1) != 0)))
    {
      v11 = 0;
    }

    else
    {
      wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
      candidates = [wordSearchCandidateResultSet candidates];

      if ([candidates count] == 1)
      {
        v14 = [candidates objectAtIndex:0];
        candidate = [v14 candidate];
        v16 = [v6 isEqualToString:candidate];

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

- (BOOL)_shouldCommitInputDirectly:(id)directly
{
  directlyCopy = directly;
  if (![(TIKeyboardInputManagerChinesePhonetic *)self inputCount])
  {
    conversionHistory = [(TIKeyboardInputManagerChinesePhonetic *)self conversionHistory];
    if ([conversionHistory convertedLength])
    {
      v7 = [directlyCopy length];

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
  if (![(TIKeyboardInputManagerChinesePhonetic *)&v9 _shouldCommitInputDirectly:directlyCopy])
  {
    if (([directlyCopy _containsBopomofoOnly] & 1) == 0 && !-[TIKeyboardInputManagerChinesePhonetic isSpecialInput:](self, "isSpecialInput:", directlyCopy))
    {
      v5 = ![(TIKeyboardInputManagerMecabra *)self stringContainsActiveSupplementalLexiconSearchPrefix:directlyCopy];
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
  inputString = [(TIKeyboardInputManagerChinesePhonetic *)self inputString];
  v4 = [(TIKeyboardInputManagerChinesePhonetic *)self externalStringToInternal:inputString];

  inputIndex = [(TIKeyboardInputManagerChinesePhonetic *)self inputIndex];
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if (inputIndex == -[TIKeyboardInputManagerChinesePhonetic inputCount](self, "inputCount") && [candidates count] == 1 && (objc_msgSend(candidates, "objectAtIndex:", 0), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "candidate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v4, "isEqualToString:", v9), v9, v8, (v10 & 1) != 0))
  {
    v11 = 0;
    v12 = @"ㄅㄆㄇㄈㄉㄊㄋㄌㄍㄎㄏㄐㄑㄒㄓㄔㄕㄖㄗㄘㄙㄧㄨㄩㄚㄛㄜㄝㄞㄟㄠㄡㄢㄣㄤㄥㄦ";
  }

  else
  {
    v11 = inputIndex != 0;
    if (inputIndex)
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
  inputsToReject = [(TIKeyboardInputManagerMecabra *)&v18 inputsToReject];
  v14 = inputsToReject;
  if (v11)
  {
    v15 = inputsToReject;
  }

  else
  {
    if (inputsToReject)
    {
      v16 = [inputsToReject mutableCopy];
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