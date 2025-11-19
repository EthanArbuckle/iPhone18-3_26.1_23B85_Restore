@interface TPSKeyboardUtilities
+ (BOOL)hasCustomizedKeyboard;
+ (BOOL)isAutoCorrectionEnabled;
+ (BOOL)isDictationEnabled;
+ (BOOL)isDictationSelectedForLanguage:(id)a3;
+ (BOOL)isExtendedSuggestionSupportedForInputMode:(id)a3;
+ (BOOL)isHandwritingEnabledForInputMode:(id)a3;
+ (BOOL)isInputModeInstalledForLanguage:(id)a3;
+ (id)_variantForInputMode:(id)a3;
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
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isDictationSelectedForLanguage:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() enabledDictationLanguages];
  v5 = [v4 TPSSafeBoolForKey:v3];

  return v5;
}

+ (id)installedInputModes
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"AppleKeyboards"];

  return v3;
}

+ (BOOL)isHandwritingEnabledForInputMode:(id)a3
{
  v3 = [a1 _variantForInputMode:a3];
  v4 = [v3 isEqualToString:@"HWR"];

  return v4;
}

+ (BOOL)isInputModeInstalledForLanguage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
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

          if ([*(*(&v11 + 1) + 8 * i) hasPrefix:{v3, v11}])
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

+ (BOOL)isExtendedSuggestionSupportedForInputMode:(id)a3
{
  v3 = a3;
  if (isExtendedSuggestionSupportedForInputMode__onceToken != -1)
  {
    +[TPSKeyboardUtilities isExtendedSuggestionSupportedForInputMode:];
  }

  v18 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([a-zA-Z0-9]+)(_\\w+)?(-\\w+)?(@.*)?" options:1 error:&v18];
  v5 = v18;
  v6 = [v4 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
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
      v14 = [v3 substringWithRange:{v8, v10}];
    }

    v15 = 0;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v13 >= 2)
    {
      v15 = [v3 substringWithRange:{v11 + 1, v13 - 1}];
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

+ (id)_variantForInputMode:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"-" options:2];
  v5 = [v3 rangeOfString:@"@" options:2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [v3 length];
  }

  v6 = 0;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL && v4 < v5)
  {
    v6 = [v3 substringWithRange:{v4 + 1, v5 - (v4 + 1)}];
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
      v4 = [v3 BOOLValue];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)hasCustomizedKeyboard
{
  v2 = [a1 installedInputModes];
  v3 = v2 != 0;

  return v3;
}

@end