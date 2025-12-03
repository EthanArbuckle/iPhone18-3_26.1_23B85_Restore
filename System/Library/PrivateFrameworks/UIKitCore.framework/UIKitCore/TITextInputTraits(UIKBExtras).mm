@interface TITextInputTraits(UIKBExtras)
+ (id)traitsForUITextInputTraits:()UIKBExtras;
+ (uint64_t)translateToAllowsTextAnimationsType:()UIKBExtras;
+ (uint64_t)translateToPublicKeyboardType:()UIKBExtras;
+ (uint64_t)translateToTextInputAutocapitalizationType:()UIKBExtras;
+ (uint64_t)translateToTextInputAutocorrectionType:()UIKBExtras;
+ (uint64_t)translateToTextInputInlineCompletionType:()UIKBExtras;
+ (uint64_t)translateToTextInputKeyboardAppearance:()UIKBExtras;
+ (uint64_t)translateToTextInputKeyboardType:()UIKBExtras;
+ (uint64_t)translateToTextInputReturnKeyType:()UIKBExtras;
+ (uint64_t)translateToTextInputSpellCheckingType:()UIKBExtras;
+ (uint64_t)translateToTextMathExpressionCompletionType:()UIKBExtras;
+ (uint64_t)translateToTextScriptType:()UIKBExtras;
@end

@implementation TITextInputTraits(UIKBExtras)

+ (id)traitsForUITextInputTraits:()UIKBExtras
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69D96E0]);
  [v5 setAutocapitalizationType:{objc_msgSend(self, "translateToTextInputAutocapitalizationType:", objc_msgSend(v4, "autocapitalizationType"))}];
  [v5 setAutocorrectionType:{objc_msgSend(self, "translateToTextInputAutocorrectionType:", objc_msgSend(v4, "autocorrectionType"))}];
  [v5 setSpellCheckingType:{objc_msgSend(self, "translateToTextInputSpellCheckingType:", objc_msgSend(v4, "spellCheckingType"))}];
  [v5 setKeyboardType:{objc_msgSend(self, "translateToTextInputKeyboardType:", objc_msgSend(v4, "keyboardType"))}];
  [v5 setKeyboardAppearance:{objc_msgSend(self, "translateToTextInputKeyboardAppearance:", objc_msgSend(v4, "keyboardAppearance"))}];
  [v5 setReturnKeyType:{objc_msgSend(self, "translateToTextInputReturnKeyType:", objc_msgSend(v4, "returnKeyType"))}];
  [v5 setEnablesReturnKeyAutomatically:{objc_msgSend(v4, "enablesReturnKeyAutomatically")}];
  [v5 setSecureTextEntry:{objc_msgSend(v4, "isSecureTextEntry")}];
  [v5 setSmartInsertDeleteEnabled:{objc_msgSend(self, "translateToTextInputSmartInsertDeleteEnabled:", objc_msgSend(v4, "smartInsertDeleteType"))}];
  [v5 setSmartQuotesEnabled:{objc_msgSend(self, "translateToTextInputSmartQuotesEnabled:", objc_msgSend(v4, "smartQuotesType"))}];
  [v5 setSmartDashesEnabled:{objc_msgSend(self, "translateToTextInputSmartDashesEnabled:", objc_msgSend(v4, "smartDashesType"))}];
  if (objc_opt_respondsToSelector())
  {
    textContentType = [v4 textContentType];
    [v5 setTextContentType:textContentType];
  }

  [v5 setTextScriptType:{objc_msgSend(self, "translateToTextScriptType:", objc_msgSend(v4, "textScriptType"))}];
  recentInputIdentifier = [v4 recentInputIdentifier];
  v8 = [self translateToTextInputRecentInputIdentifier:recentInputIdentifier];
  [v5 setRecentInputIdentifier:v8];

  if (objc_opt_respondsToSelector())
  {
    [v5 setDisablePrediction:{objc_msgSend(v4, "disablePrediction")}];
  }

  [v5 setInlineCompletionType:{objc_msgSend(self, "translateToTextInputInlineCompletionType:", objc_msgSend(v4, "inlinePredictionType"))}];
  if (objc_opt_respondsToSelector())
  {
    [v5 setMathExpressionCompletionType:{objc_msgSend(self, "translateToTextMathExpressionCompletionType:", objc_msgSend(v4, "mathExpressionCompletionType"))}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setAllowsTextAnimationsType:{objc_msgSend(self, "translateToAllowsTextAnimationsType:", objc_msgSend(v4, "allowsTextAnimationsType"))}];
  }

  return v5;
}

+ (uint64_t)translateToTextInputAutocapitalizationType:()UIKBExtras
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (uint64_t)translateToTextInputAutocorrectionType:()UIKBExtras
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (uint64_t)translateToTextInputSpellCheckingType:()UIKBExtras
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (uint64_t)translateToTextInputKeyboardType:()UIKBExtras
{
  result = 0;
  if (a3 > 119)
  {
    if (a3 <= 123)
    {
      if (a3 == 120)
      {
        return 18;
      }

      else if (a3 == 123)
      {
        return 1;
      }
    }

    else
    {
      v4 = 17;
      v5 = 13;
      if (a3 != 127)
      {
        v5 = 0;
      }

      if (a3 != 126)
      {
        v4 = v5;
      }

      if (a3 == 124)
      {
        return 16;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        return 1;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        result = a3;
        break;
      case 12:
        result = 14;
        break;
      case 13:
        result = 12;
        break;
      default:
        return result;
    }
  }

  return result;
}

+ (uint64_t)translateToPublicKeyboardType:()UIKBExtras
{
  if ((a3 - 1) > 0x11)
  {
    return 0;
  }

  else
  {
    return qword_18A67E470[a3 - 1];
  }
}

+ (uint64_t)translateToTextInputKeyboardAppearance:()UIKBExtras
{
  if (a3 <= 8)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }

    return 1;
  }

  if (a3 == 9)
  {
    return 1;
  }

  v3 = 6;
  if (a3 != 11)
  {
    v3 = 0;
  }

  if (a3 == 127)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

+ (uint64_t)translateToTextInputReturnKeyType:()UIKBExtras
{
  v3 = 13;
  if (a3 != 124)
  {
    v3 = 0;
  }

  if (a3 == 11)
  {
    v3 = 11;
  }

  if (a3 == 10)
  {
    v3 = 10;
  }

  if (a3 == 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  if (a3 == 8)
  {
    v4 = 8;
  }

  if (a3 == 7)
  {
    v4 = 7;
  }

  if (a3 <= 9)
  {
    v3 = v4;
  }

  if (a3 == 6)
  {
    v5 = 6;
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 5)
  {
    v5 = 5;
  }

  if (a3 == 4)
  {
    v5 = 4;
  }

  if (a3 == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 2)
  {
    v6 = 2;
  }

  if (a3 == 1)
  {
    v6 = 1;
  }

  if (a3 <= 3)
  {
    v5 = v6;
  }

  if (a3 <= 6)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

+ (uint64_t)translateToTextScriptType:()UIKBExtras
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (uint64_t)translateToTextInputInlineCompletionType:()UIKBExtras
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (uint64_t)translateToTextMathExpressionCompletionType:()UIKBExtras
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (uint64_t)translateToAllowsTextAnimationsType:()UIKBExtras
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end