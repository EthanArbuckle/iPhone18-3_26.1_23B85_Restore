@interface TPSKeyboardUtilities
+ (BOOL)hasCustomizedKeyboard;
+ (BOOL)isAutoCorrectionEnabled;
+ (BOOL)isDictationEnabled;
+ (BOOL)isDictationSelectedForLanguage:(id)language;
+ (BOOL)isExtendedSuggestionSupportedForInputMode:(id)mode;
+ (BOOL)isHandwritingEnabledForInputMode:(id)mode;
+ (BOOL)isInputModeInstalledForLanguage:(id)language;
+ (id)_variantForInputMode:(id)mode;
+ (id)enabledDictationLanguages;
+ (id)installedInputModes;
@end

@implementation TPSKeyboardUtilities

+ (id)enabledDictationLanguages
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard.preferences"];
  v3 = [v2 objectForKey:@"DictationLanguagesEnabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (BOOL)isDictationEnabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.assistant.support"];
  v3 = [v2 objectForKey:@"Dictation Enabled"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)isDictationSelectedForLanguage:(id)language
{
  languageCopy = language;
  enabledDictationLanguages = [objc_opt_class() enabledDictationLanguages];
  v5 = [enabledDictationLanguages TPSSafeBoolForKey:languageCopy];

  return v5;
}

+ (id)installedInputModes
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"AppleKeyboards"];

  return v3;
}

+ (BOOL)isHandwritingEnabledForInputMode:(id)mode
{
  v3 = [self _variantForInputMode:mode];
  v4 = [v3 isEqualToString:@"HWR"];

  return v4;
}

+ (BOOL)isInputModeInstalledForLanguage:(id)language
{
  v16 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v4 = +[TPSKeyboardUtilities installedInputModes];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v11 + 1) + 8 * i) hasPrefix:{languageCopy, v11}])
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isExtendedSuggestionSupportedForInputMode:(id)mode
{
  modeCopy = mode;
  if (isExtendedSuggestionSupportedForInputMode__onceToken != -1)
  {
    +[TPSKeyboardUtilities isExtendedSuggestionSupportedForInputMode:];
  }

  v18 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-zA-Z0-9]+)(_\\w+)?(-\\w+)?(@.*)?" options:1 error:&v18];
  v5 = v18;
  v6 = [v4 firstMatchInString:modeCopy options:0 range:{0, objc_msgSend(modeCopy, "length")}];
  v7 = v6;
  if (v6 && [v6 numberOfRanges] == 5)
  {
    v8 = [v7 rangeAtIndex:1];
    v10 = v9;
    v11 = [v7 rangeAtIndex:3];
    v13 = v12;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = [modeCopy substringWithRange:{v8, v10}];
    }

    v15 = 0;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 >= 2)
    {
      v15 = [modeCopy substringWithRange:{v11 + 1, v13 - 1}];
    }

    if (v14 && [isExtendedSuggestionSupportedForInputMode__supportedLanguages containsObject:v14] && !objc_msgSend(v15, "isEqualToString:", @"HWR") || objc_msgSend(v14, "isEqualToString:", @"hi") && !objc_msgSend(v15, "caseInsensitiveCompare:", @"translit"))
    {
      v16 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

void __66__TPSKeyboardUtilities_isExtendedSuggestionSupportedForInputMode___block_invoke()
{
  v0 = isExtendedSuggestionSupportedForInputMode__supportedLanguages;
  isExtendedSuggestionSupportedForInputMode__supportedLanguages = &unk_284830B28;
}

+ (id)_variantForInputMode:(id)mode
{
  modeCopy = mode;
  v4 = [modeCopy rangeOfString:@"-" options:2];
  v5 = [modeCopy rangeOfString:@"@" options:2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [modeCopy length];
  }

  v6 = 0;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v4 < v5)
  {
    v6 = [modeCopy substringWithRange:{v4 + 1, v5 - (v4 + 1)}];
  }

  return v6;
}

+ (BOOL)isAutoCorrectionEnabled
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.keyboard.preferences"];
  v3 = [v2 objectForKey:@"KeyboardAutocorrection"];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)hasCustomizedKeyboard
{
  installedInputModes = [self installedInputModes];
  v3 = installedInputModes != 0;

  return v3;
}

@end