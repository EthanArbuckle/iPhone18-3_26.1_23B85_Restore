void __UIKeyboardIsFiveRowKeyboard_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Armenian", @"Kazakh-Cyrillic", @"Khmer", @"Lao", @"Thai", 0}];
  v1 = qword_1ED49EF68;
  qword_1ED49EF68 = v0;
}

id UIKeyboardGetKBStarKeyboardName(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [UIKBScreenTraits traitsWithScreen:0 orientation:0];
  v6 = UIKeyboardGetKBStarName(v4, v5, a3, 0);

  return v6;
}

__CFString *KBStarTypeStringWithTVLinearKeyboardLayout(int a1, int a2)
{
  if (a1 <= 9)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        return @"Email";
      }

      if (a1 == 8)
      {
        return @"DecimalPad";
      }

      return &stru_1EFB14550;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return @"PhonePad";
      }

      return &stru_1EFB14550;
    }

    return @"NumberPad";
  }

  if (a1 > 119)
  {
    if (a1 == 127)
    {
      return @"PasscodePad";
    }

    if (a1 != 121)
    {
      if (a1 != 120)
      {
        return &stru_1EFB14550;
      }

      goto LABEL_17;
    }

    if (!a2)
    {
      return @"Numbered";
    }

    return &stru_1EFB14550;
  }

  if (a1 != 10)
  {
    if (a1 != 11)
    {
      return &stru_1EFB14550;
    }

    return @"NumberPad";
  }

LABEL_17:
  if (a2)
  {
    return @"Slim";
  }

  else
  {
    return @"AlphaWithURL";
  }
}

id UIKeyboardGetKBStarKeyboardLayout(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsSeparatedByString:@"-"];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 isEqualToString:@"Portrait"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Caymen") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Landscape") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Email") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"NamePhonePad") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"URL") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Twitter") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Capital") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Small") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Display") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"Keyset") & 1) == 0)
        {
          [v10 addObject:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  if ([v10 count])
  {
    v8 = [v10 componentsJoinedByString:@"-"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t UIKeyboardLayoutSupportsNumberPads(void *a1)
{
  v1 = a1;
  if (!UIKeyboardLayoutSupportsNumberPads___dict)
  {
    v2 = objc_alloc(MEMORY[0x1E695DF90]);
    v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v4 = [v2 initWithObjectsAndKeys:{v3, @"emoji", 0}];
    v5 = UIKeyboardLayoutSupportsNumberPads___dict;
    UIKeyboardLayoutSupportsNumberPads___dict = v4;
  }

  v6 = TICanonicalInputModeName();
  v7 = [UIKeyboardLayoutSupportsNumberPads___dict objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t UIKeyboardInputModeSWLayoutScript(void *a1)
{
  v1 = a1;
  if (!UIKeyboardInputModeSWLayoutScript___dict)
  {
    v21 = objc_alloc(MEMORY[0x1E695DF90]);
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1281455214];
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1281455214];
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1281455214];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1281455214];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1132032620];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1132032620];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1132032620];
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1132032620];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1132032620];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1098015074];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1098015074];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1214603890];
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1198679403];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1147500129];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1197830002];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1215262311];
    v8 = [v21 initWithObjectsAndKeys:{v20, @"QWERTY", v26, @"QWERTZ", v25, @"AZERTY", v24, @"Czech", v23, @"Russian", v19, @"Bulgarian", v22, @"Macedonian", v2, @"Serbian", v3, @"Ukrainian", v18, @"Arabic", v17, @"Persian", v4, @"Hebrew", v16, @"Greek", v5, @"Devangari", v6, @"Georgian", v7, @"Korean", 0}];
    v9 = UIKeyboardInputModeSWLayoutScript___dict;
    UIKeyboardInputModeSWLayoutScript___dict = v8;
  }

  v10 = [v1 componentsSeparatedByString:@"-"];
  v11 = [v10 objectAtIndex:0];

  v12 = [UIKeyboardInputModeSWLayoutScript___dict objectForKey:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 unsignedIntValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

unint64_t UIKeyboardGetTIUserInterfaceIdiom(unint64_t result)
{
  if (result >= 5)
  {
    return -1;
  }

  return result;
}

void *UIKeyboardLayoutClassForInputMode(void *a1)
{
  v1 = a1;
  if (!UIKeyboardLayoutClassForInputMode___dict)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{@"UIKeyboardLayoutDictation", @"dictation", 0}];
    v3 = UIKeyboardLayoutClassForInputMode___dict;
    UIKeyboardLayoutClassForInputMode___dict = v2;
  }

  v4 = TICanonicalInputModeName();
  v5 = [UIKeyboardLayoutClassForInputMode___dict objectForKey:v4];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = TIBundleForInputMode();
    v9 = v8;
    if (v8 && (v10 = [v8 classNamed:v7]) != 0)
    {
      v6 = v10;
    }

    else
    {
      v11 = _UIKitBundle();
      v6 = [v11 classNamed:v7];

      if (!v6)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    [UIKeyboardLayoutClassForInputMode___dict setObject:v6 forKey:v4];
    goto LABEL_9;
  }

LABEL_10:
  v12 = v6;

  return v6;
}

uint64_t UIKeyboardLayoutSupportsASCIIToggleKey(void *a1)
{
  v1 = a1;
  if ((UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v1) & 1) == 0)
  {
    v3 = TIInputModeGetNormalizedIdentifier();
    v4 = TIGetInputModeProperties();
    v5 = [v4 objectForKey:*MEMORY[0x1E69D97D8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 BOOLValue])
      {
LABEL_11:
        v2 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (([v5 isEqualToString:@"Never"] & 1) == 0)
      {
        if (![v5 isEqualToString:@"Hardware"])
        {
          goto LABEL_11;
        }

        v6 = +[UIKeyboardImpl activeInstance];
        v7 = [v6 isInHardwareKeyboardMode];

        if (v7)
        {
          goto LABEL_11;
        }
      }
    }

    v2 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v2 = 0;
LABEL_13:

  return v2;
}

id UIKeyboardGetInputModeForKey(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TIInputModeGetNormalizedIdentifier();
  v4 = TIGetInputModeProperties();
  v5 = [v4 objectForKey:v2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id UIKeyboardImageWithName(void *a1)
{
  v1 = a1;
  v2 = UIKeyboardGetCurrentInputMode();
  v3 = v1;
  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v5 = [v4 preferencesActions];
  [v5 rivenSizeFactor:1.0];
  v7 = v6;

  v8 = v3;
  if (v7 > 1.0)
  {
    v8 = [v3 stringByAppendingString:@"-163r.png"];
  }

  if (([v8 hasSuffix:@".png"] & 1) == 0)
  {
    v9 = [v8 stringByAppendingString:@".png"];

    v8 = v9;
  }

  v10 = _UIImageWithName(v8);

  return v10;
}

uint64_t UIKeyboardCheckSpellingEnabled()
{
  v0 = +[UIKeyboardImpl activeInstance];
  v1 = [v0 checkSpellingPreferenceForTraits];

  return v1;
}

uint64_t UIKeyboardAutocorrectSpellingForInputMode()
{
  if (UIKeyboardAutocorrectSpellingFlag != 1)
  {
    return 0;
  }

  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIGetInputModeProperties();
  v2 = [v1 objectForKey:*MEMORY[0x1E69D9790]];
  v3 = [v2 BOOLValue];

  return v3;
}

id UIKeyboardGetKeyGlyphImage(void *a1)
{
  v1 = a1;
  v2 = +[UIKeyboardImpl keyboardScreen];
  v3 = +[UIKeyboard activeKeyboard];
  v4 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v2, [v3 interfaceOrientation]);

  v5 = [v4 isKeyboardMinorEdgeWidth];
  [v4 keyboardWidth];
  v7 = @"_portrait";
  if (v6 > 768.0)
  {
    v7 = @"_fudge_portrait";
  }

  v8 = @"_landscape";
  if (v6 > 1024.0)
  {
    v8 = @"_fudge_landscape";
  }

  if (v5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v1 stringByAppendingString:v9];

  if (_AXSEnhanceTextLegibilityEnabled())
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bold_%@", v10];

    v10 = v11;
  }

  v12 = [v10 stringByAppendingString:@".png"];

  v13 = _UIImageWithName(v12);

  return v13;
}

id UIKeyboardGetCandidateUISingleLineFont()
{
  v0 = [UIApp preferredContentSizeCategory];
  v1 = [v0 isEqualToString:@"UICTContentSizeCategoryXL"];
  v2 = 20.0;
  if ((v1 & 1) == 0)
  {
    v3 = [v0 isEqualToString:{@"UICTContentSizeCategoryXXL", 20.0}];
    v2 = 22.0;
    if ((v3 & 1) == 0)
    {
      if (([v0 isEqualToString:{@"UICTContentSizeCategoryXXXL", 22.0}] & 1) != 0 || (IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v0, v4), v2 = 18.0, IsAccessibilityContentSizeCategory))
      {
        v2 = 24.0;
      }
    }
  }

  v6 = [off_1E70ECC18 systemFontOfSize:v2];

  return v6;
}

double UIKeyboardGetSingleCenteredCellForWidth(double a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v4 = (a1 + -4.0) / 12.0;
    v5 = floorf(v4);
    a1 = a1 - (v5 + v5) + -4.0;
  }

  v6 = a1;
  return floorf(v6);
}

id _shortcutEditorController(void *a1)
{
  v1 = a1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v2 = qword_1ED49EF80;
  v22 = qword_1ED49EF80;
  if (!qword_1ED49EF80)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __getUIEditUserWordControllerClass_block_invoke;
    v18[3] = &unk_1E70F2F20;
    v18[4] = &v19;
    __getUIEditUserWordControllerClass_block_invoke(v18);
    v2 = v20[3];
  }

  v3 = v2;
  _Block_object_dispose(&v19, 8);
  if (v2)
  {
    v4 = UIKeyboardGetCurrentInputMode();
    v5 = TIInputModeGetVariant();
    v6 = TIInputModeGetLanguageWithRegion();
    if ([v1 _containsCJScripts])
    {
      if ([v5 isEqualToString:@"Pinyin"])
      {
        v7 = [v1 _stringByTranscribingFromLanguage:v6];
        v8 = [v7 _stringByApplyingTransform:*MEMORY[0x1E695E9A0]];

LABEL_16:
        if ([v8 _containsIdeographicCharacters])
        {
          v12 = 0;
        }

        else
        {
          v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v12 = [v8 _stringByReplacingCharactersInSet:v13 withCharacter:0];

          v8 = v13;
        }

        v14 = [v12 length];
        v15 = [v2 alloc];
        if (v14)
        {
          v16 = [v15 initWithText:v1 andShortcut:v12];
        }

        else
        {
          v16 = [v15 initWithText:v1];
        }

        v2 = v16;

        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"Zhuyin"])
      {
        v9 = [v1 _stringByTransliteratingToZhuyin];
        goto LABEL_11;
      }

      v10 = UIKeyboardGetCurrentUILanguage();
      if ([v10 isEqualToString:@"ja"])
      {

        goto LABEL_8;
      }

      v11 = [v6 isEqualToString:@"ja_JP"];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else if ([v1 _containsJapanese])
    {
LABEL_8:
      v9 = [v1 _stringByTranscribingFromLanguage:@"ja"];
LABEL_11:
      v8 = v9;
      goto LABEL_16;
    }

    v8 = 0;
    goto LABEL_16;
  }

LABEL_23:

  return v2;
}

void sub_189A62C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _dismissShortcutEditorController(void *a1)
{
  v1 = [a1 visibleViewController];
  if (objc_opt_respondsToSelector())
  {
    [v1 _dismiss];
  }
}

void _swapInCompletionForShortcutEditor(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 visibleViewController];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = [v4 dismissCompletionHandler];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___swapInCompletionForShortcutEditor_block_invoke;
    v7[3] = &unk_1E70F77D0;
    v8 = v5;
    v9 = v3;
    v6 = v5;
    [v4 setDismissCompletionHandler:v7];
  }
}

uint64_t ___swapInCompletionForShortcutEditor_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __TextInputUILibraryCore_block_invoke_11()
{
  result = _sl_dlopen();
  qword_1ED49EF78 = result;
  return result;
}

Class __getUIEditUserWordControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49EF88)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __KeyboardSettingsLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E710E020;
    v8 = 0;
    qword_1ED49EF88 = _sl_dlopen();
  }

  if (!qword_1ED49EF88)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *KeyboardSettingsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardIntl.m" lineNumber:3555 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIEditUserWordController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIEditUserWordControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardIntl.m" lineNumber:3557 description:{@"Unable to find class %s", "UIEditUserWordController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49EF80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __KeyboardSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49EF88 = result;
  return result;
}

BOOL _UIGetEnableLayoutAwareShortcutsAutomatic()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, _UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_EnableLayoutAwareShortcutsAutomatic, @"EnableLayoutAwareShortcutsAutomatic", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic;
    }

    while (v0 != _UIInternalPreference_EnableLayoutAwareShortcutsAutomatic);
  }

  return byte_1ED48B2A4 && v1;
}

id TIGetEnableColorAdaptiveKeyboardValue()
{
  if (TIGetEnableColorAdaptiveKeyboardValue_onceToken[0] != -1)
  {
    dispatch_once(TIGetEnableColorAdaptiveKeyboardValue_onceToken, &__block_literal_global_467);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"EnableColorAdaptiveKeyboard"];

  return v1;
}

id TIGetEnableColorAdaptiveKeyboardBackdropValue()
{
  if (TIGetEnableColorAdaptiveKeyboardBackdropValue_onceToken != -1)
  {
    dispatch_once(&TIGetEnableColorAdaptiveKeyboardBackdropValue_onceToken, &__block_literal_global_472_1);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"EnableColorAdaptiveKeyboardBackdrop"];

  return v1;
}

void __TIGetEnableColorAdaptiveKeyboardValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"EnableColorAdaptiveKeyboard" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

void __TIGetEnableColorAdaptiveKeyboardBackdropValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"EnableColorAdaptiveKeyboardBackdrop" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

uint64_t __TextInputUILibraryCore_block_invoke_12()
{
  result = _sl_dlopen();
  qword_1ED49EFD8 = result;
  return result;
}

void sub_189A69CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

id TIGetTypoTrackerButtonValue()
{
  if (TIGetTypoTrackerButtonValue_onceToken != -1)
  {
    dispatch_once(&TIGetTypoTrackerButtonValue_onceToken, &__block_literal_global_504);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"TypoTrackerButton"];

  return v1;
}

void sub_189A7140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __TIGetTypoTrackerButtonValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"TypoTrackerButton" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E118]];
}

void __TIGetGlobeButtonDelayValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"GlobeButtonDelay" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E688];
}

CGMutablePathRef UIInputSwitcherCreatePopupPath(int a1, int a2, char a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v18 = a10;
  v74.origin.x = a9;
  v74.origin.y = a10;
  v74.size.width = a11;
  v74.size.height = a12;
  CGRectGetMinX(v74);
  v75.origin.x = a5;
  v75.origin.y = a6;
  v75.size.width = a7;
  v75.size.height = a8;
  CGRectGetMinX(v75);
  v76.origin.x = a9;
  v76.origin.y = v18;
  v76.size.width = a11;
  v76.size.height = a12;
  MaxX = CGRectGetMaxX(v76);
  v77.origin.x = a5;
  v71 = a8;
  v73 = a6;
  v77.origin.y = a6;
  v77.size.width = a7;
  v77.size.height = a8;
  v24 = CGRectGetMaxX(v77);
  v78.origin.x = a9;
  v78.origin.y = v18;
  v78.size.width = a11;
  v78.size.height = a12;
  v25 = CGRectGetMaxX(v78);
  v26 = 8.0;
  if (_UISolariumEnabled())
  {
    v27 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v28 = [v27 preferencesActions];
    if ([v28 colorAdaptiveKeyboardEnabled])
    {
      v26 = 24.0;
    }

    else
    {
      v26 = 8.0;
    }
  }

  v59 = v24 - v25;
  v62 = v26;
  v70 = v26 + -4.0;
  v29 = +[UIBezierPath bezierPath];
  v30 = [objc_opt_self() mainScreen];
  [v30 scale];
  v32 = v31;

  v33 = 3.0;
  if (v32 <= 1.0)
  {
    v34 = 3.0;
  }

  else
  {
    v34 = 6.0;
  }

  v35 = v34 + 1.0;
  if (v32 > 1.0)
  {
    v33 = 2.0;
  }

  v36 = 12.0;
  if (v32 > 1.0)
  {
    v36 = 13.0;
  }

  if ((a4 - 3) >= 2)
  {
    v35 = v34;
  }

  v37 = a5 + v34;
  v57 = v37;
  if (a1)
  {
    v37 = a9;
  }

  v60 = v35;
  v61 = v37;
  if (a2)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = 6.0;
  }

  v39 = v18 + a12;
  v40 = a9 + 2.0;
  if (a1)
  {
    v40 = a9;
  }

  v41 = v73 + v71 - v33;
  if ((a3 & 4) != 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = a9;
  }

  if ((a3 & 4) != 0)
  {
    v39 = v41;
    v43 = v18 + 1.0;
  }

  else
  {
    v43 = v18;
  }

  v72 = v18 - v36;
  v44 = v18 - v36 + v43;
  v45 = a9 + a11;
  v46 = a12 + v18;
  v47 = v39;
  v48 = v45 + -2.0;
  v58 = v45;
  if ((a3 & 8) == 0)
  {
    v48 = v45;
    v41 = v46;
  }

  v66 = v48;
  v67 = v41;
  if ((a3 & 8) != 0)
  {
    v18 = v18 + 1.0;
  }

  v68 = v42 + (v48 - v42) * 0.5;
  [v29 moveToPoint:?];
  v69 = v47;
  v65 = v46;
  if ((a3 & 4) != 0)
  {
    [v29 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v42 clockwise:{v47, v70, v70}];
  }

  else
  {
    [v29 addLineToPoint:{a9, v46}];
    [v29 addLineToPoint:{v42, v47}];
  }

  v49 = MaxX + v59;
  v64 = v72 + v18;
  v50 = v62 + 2.0;
  v51 = v73 + v38;
  v52 = v44 * 0.5;
  if (a1)
  {
    [v29 addLineToPoint:{a9, v52}];
  }

  else
  {
    [v29 addLineToPoint:{v42, v43}];
    [v29 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v42 clockwise:{v52, v50, v50}];
    [v29 addLineToPoint:{v50 + v57, v52}];
    [v29 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v57 clockwise:{v52, v50, v50}];
  }

  v53 = v49 - v60;
  v54 = v64 * 0.5;
  if (a2)
  {
    [v29 addLineToPoint:{v61, v51}];
    [v29 addLineToPoint:{v53, v51}];
  }

  else
  {
    [v29 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v61 clockwise:{v51, v50, v50}];
    [v29 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v53 clockwise:{v51, v50, v50}];
  }

  [v29 addLineToPoint:{v53, v72}];
  [v29 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v53 clockwise:{v54, v50, v50}];
  [v29 addLineToPoint:{v50 + v66, v54}];
  [v29 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v66 clockwise:{v54, v50, v50}];
  if ((a3 & 8) != 0)
  {
    [v29 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v66 clockwise:{v67, v70, v70}];
  }

  else
  {
    [v29 addLineToPoint:{v58, v65}];
    [v29 addLineToPoint:{v66, v67}];
  }

  [v29 addLineToPoint:{v68, v69}];
  [v29 closePath];
  MutableCopy = CGPathCreateMutableCopy([v29 CGPath]);

  return MutableCopy;
}

void sub_189A7AB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_189A7DAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id TIGetKeyboardExtensionNoAutoFallbackValue()
{
  if (TIGetKeyboardExtensionNoAutoFallbackValue_onceToken != -1)
  {
    dispatch_once(&TIGetKeyboardExtensionNoAutoFallbackValue_onceToken, &__block_literal_global_430);
  }

  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v1 = [v0 valueForPreferenceKey:@"KeyboardExtensionNoAutoFallback"];

  return v1;
}

id get_SFAutomaticPasswordInputViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1ED49C050;
  v7 = qword_1ED49C050;
  if (!qword_1ED49C050)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFAutomaticPasswordInputViewControllerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __get_SFAutomaticPasswordInputViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189A80E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTCCAccessPreflightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "TCCAccessPreflight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49C040 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *TCCLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __TCCLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E710E5B8;
    v6 = 0;
    TCCLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = TCCLibraryCore_frameworkLibrary;
  if (!TCCLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TCCLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIInputViewController.m" lineNumber:58 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __TCCLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  TCCLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkTCCServiceKeyboardNetworkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = TCCLibrary();
  result = dlsym(v2, "kTCCServiceKeyboardNetwork");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49C048 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __TIGetKeyboardExtensionNoAutoFallbackValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"KeyboardExtensionNoAutoFallback" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

uint64_t __SafariServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49C058 = result;
  return result;
}

uint64_t __TextInputUILibraryCore_block_invoke_13()
{
  result = _sl_dlopen();
  qword_1ED499388 = result;
  return result;
}

BOOL UIInputViewControllerRequiresInputModeSwitchKey()
{
  v0 = +[UIKeyboardInputModeController sharedInputModeController];
  v1 = [v0 activeInputModeIdentifiers];

  if ([v1 count] < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || +[UIDevice _hasHomeButton];
  }

  return v2;
}

void sub_189A87F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189A895D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_189A8B440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189A8C19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t visualStyleFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"iPhone-Standard"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"iPhone-Dictation"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"iPhone-Alert"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"iPhone-Emoji"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"iPhone-Passcode"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Wildcat-50On"])
  {
    v2 = 101;
  }

  else if ([v1 isEqualToString:@"Wildcat-Standard"])
  {
    v2 = 102;
  }

  else if ([v1 isEqualToString:@"Wildcat-Dictation"])
  {
    v2 = 103;
  }

  else if ([v1 isEqualToString:@"Wildcat-Alert"])
  {
    v2 = 104;
  }

  else if ([v1 isEqualToString:@"Wildcat-Passcode"])
  {
    v2 = 105;
  }

  else if ([v1 isEqualToString:@"Wildcat-Split"])
  {
    v2 = 106;
  }

  else if ([v1 isEqualToString:@"Wildcat-Split-Full-Width"])
  {
    v2 = 107;
  }

  else if ([v1 isEqualToString:@"Wildcat-Emoji"])
  {
    v2 = 108;
  }

  else if ([v1 isEqualToString:@"Wildcat-Emoji-Split"])
  {
    v2 = 109;
  }

  else if ([v1 isEqualToString:@"Monolith-Standard"])
  {
    v2 = 201;
  }

  else if ([v1 isEqualToString:@"Car-Standard"])
  {
    v2 = 301;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForVisualStyle(int a1)
{
  if (a1 > 103)
  {
    v1 = @"UIKBVisualStyleMonolithStandard";
    v10 = @"UIKBVisualStyleCarStandard";
    if (a1 != 301)
    {
      v10 = 0;
    }

    if (a1 != 201)
    {
      v1 = v10;
    }

    v11 = @"UIKBVisualStyleWildcatEmoji";
    v12 = @"UIKBVisualStyleWildcatEmojiSplit";
    if (a1 != 109)
    {
      v12 = 0;
    }

    if (a1 != 108)
    {
      v11 = v12;
    }

    if (a1 <= 200)
    {
      v1 = v11;
    }

    v5 = @"UIKBVisualStyleWildcatSplit";
    v13 = @"UIKBVisualStyleWildcatSplitFullWidth";
    if (a1 != 107)
    {
      v13 = 0;
    }

    if (a1 != 106)
    {
      v5 = v13;
    }

    v14 = @"UIKBVisualStyleWildcatAlert";
    v15 = @"UIKBVisualStyleWildcatPasscode";
    if (a1 != 105)
    {
      v15 = 0;
    }

    if (a1 != 104)
    {
      v14 = v15;
    }

    if (a1 <= 105)
    {
      v5 = v14;
    }

    v9 = a1 <= 107;
  }

  else
  {
    v1 = @"UIKBVisualStyleWildcatStandard";
    v2 = @"UIKBVisualStyleWildcatDictation";
    if (a1 != 103)
    {
      v2 = 0;
    }

    if (a1 != 102)
    {
      v1 = v2;
    }

    v3 = @"UIKBVisualStyleiPhonePasscode";
    v4 = @"UIKBVisualStyleWildcat50On";
    if (a1 != 101)
    {
      v4 = 0;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 101)
    {
      v1 = v3;
    }

    v5 = @"UIKBVisualStyleiPhoneAlert";
    v6 = @"UIKBVisualStyleiPhoneEmoji";
    if (a1 != 4)
    {
      v6 = 0;
    }

    if (a1 != 3)
    {
      v5 = v6;
    }

    v7 = @"UIKBVisualStyleiPhoneStandard";
    v8 = @"UIKBVisualStyleiPhoneDictation";
    if (a1 != 2)
    {
      v8 = 0;
    }

    if (a1 != 1)
    {
      v7 = v8;
    }

    if (a1 <= 2)
    {
      v5 = v7;
    }

    v9 = a1 <= 4;
  }

  if (v9)
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

uint64_t interactionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"None"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"String"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"String-Popup"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"CandidateList"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Delete"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Dictation"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Dismiss"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Drag"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"Handwriting"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"International"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"KeyplaneSwitch"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"More"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Redo"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"Return"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"Shift"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"Space"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"String-Flick"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"Undo"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"EmojiInputView"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"EmojiCategoryControl"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"MultitapComplete"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"MultitapReverse"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"RecentInput"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Clear"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"RevealHiddenCandidates"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"SelectNextCandidate"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"SelectPreviousCandidate"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"AcceptAutocorrection"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"Bold"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"Italic"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"Underline"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"Cut"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"Copy"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"Paste"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"LeftArrow"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"RightArrow"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"AssertLayoutTag"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"Tab"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"Caps-Lock"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"Dictation-Display"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"MessageWriteboard"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"MultitapForward"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"EmojiSearchControl"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"CandidateExtension"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"CustomAction"])
  {
    v2 = 44;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForInteractionType(unsigned int a1)
{
  if (a1 > 0x2C)
  {
    return 0;
  }

  else
  {
    return off_1E710E850[a1];
  }
}

uint64_t displayTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"String"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"CandidateList"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Command"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Delete"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Dictation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Dismiss"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Drag"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"DualString"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"DynamicString"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"Emoji"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"TenKeyKeyplaneSwitchOff"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"TenKeyKeyplaneSwitchOn"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"Handwriting"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"International"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"KeyplaneSwitch"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"LeftDarkAndNoRightDivider"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"LightBottom"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"LightBottomAndRight"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"More"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"NoRightDivider"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"NumberPad"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"Return"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"ReverseVerticalDark"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"Shift"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"SmallKana"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"Space"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"Tab"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"Top-Level-Domain"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"Top-Level-Domain-Variant"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"TwoVerticalDark"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"TwoVerticalLight"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"VoicedKey"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"MultitapComplete"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"MultitapReverse"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"WALongVowelSign"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"TenKeyRoman"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"EmojiInputView"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"EmojiCategoryControl"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"Letter-Line"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"Bold"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"Italic"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"Underline"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"Cut"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"Copy"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"Paste"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"LeftArrow"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"RightArrow"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"PredictionActive"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"UCBSelectionBackground"])
  {
    v2 = 48;
  }

  else if ([v1 isEqualToString:@"BIU"])
  {
    v2 = 49;
  }

  else if ([v1 isEqualToString:@"Divider"])
  {
    v2 = 50;
  }

  else if ([v1 isEqualToString:@"Caps-Lock"])
  {
    v2 = 51;
  }

  else if ([v1 isEqualToString:@"Dictation-Display"])
  {
    v2 = 52;
  }

  else if ([v1 isEqualToString:@"MessageWriteboard"])
  {
    v2 = 53;
  }

  else if ([v1 isEqualToString:@"KeyplaneSwitchCollapsed"])
  {
    v2 = 54;
  }

  else if ([v1 isEqualToString:@"EmojiSearchControl"])
  {
    v2 = 55;
  }

  else if ([v1 isEqualToString:@"CustomAction"])
  {
    v2 = 56;
  }

  else if ([v1 isEqualToString:@"Image"])
  {
    v2 = 57;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForDisplayType(unsigned int a1)
{
  if (a1 > 0x39)
  {
    return 0;
  }

  else
  {
    return off_1E710E9B8[a1];
  }
}

uint64_t variantsTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"accents"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"currency"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"email"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"immediate-accents"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"input-modes"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"URL"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"keyplane-accents"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"BIU"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"skin-tone-emoji-accents"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"prepopulated-accents"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"extended-skin-tone-emoji-selector"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"prepopulated-extended-skin-tone-emoji"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"keyplane-switcher"])
  {
    v2 = 14;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t enumStringForVariantsType(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return *(&off_1E710EB88 + (a1 - 1));
  }
}

uint64_t attributeValueFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"10key"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"center"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"dark"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"disabled"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"enabled"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"extended-symbols"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"flick"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"glyph"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"handwriting"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"highlighted"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"japanese50on"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeASCIICapable"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDecimalPad"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDefault"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeEmailAddress"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNamePhonePad"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumberPad"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumbersAndPunctuation"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypePhonePad"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeURL"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"left"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"letters"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"light"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"name"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"no"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"numbers"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"phonepad"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"pressed"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"right"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"straight"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"symbols"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"yes"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"chinese10key"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"korean10key"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"japanese-aiu"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"strictly-left"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"strictly-right"])
  {
    v2 = 37;
  }

  else if ([v1 isEqualToString:@"emoji"])
  {
    v2 = 38;
  }

  else if ([v1 isEqualToString:@"dictation"])
  {
    v2 = 39;
  }

  else if ([v1 isEqualToString:@"popup-menu"])
  {
    v2 = 40;
  }

  else if ([v1 isEqualToString:@"high"])
  {
    v2 = 41;
  }

  else if ([v1 isEqualToString:@"linear"])
  {
    v2 = 42;
  }

  else if ([v1 isEqualToString:@"fixed-left"])
  {
    v2 = 43;
  }

  else if ([v1 isEqualToString:@"fixed-right"])
  {
    v2 = 44;
  }

  else if ([v1 isEqualToString:@"cased"])
  {
    v2 = 45;
  }

  else if ([v1 isEqualToString:@"literal"])
  {
    v2 = 46;
  }

  else if ([v1 isEqualToString:@"none"])
  {
    v2 = 47;
  }

  else if ([v1 isEqualToString:@"linear-slim"])
  {
    v2 = 48;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *enumStringForAttributeValue(int a1)
{
  if ((a1 - 1) > 0x2F)
  {
    return 0;
  }

  else
  {
    return off_1E710EBF8[a1 - 1];
  }
}

uint64_t themeTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"UIKBThemeDefault"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"UIKBThemeBlue"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"UIKBThemeDarkGray"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"UIKBThemeDarkSteel"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UIKBThemeDarkWood"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"UIKBThemeLightGray"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"UIKBThemeLightSteel"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"UIKBThemeMidGray"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"UIKBThemeMidSteel"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *stringForAttributeName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adaptive-keys"])
  {
    v2 = @"UIKBAttributeNameAdaptiveKeys";
  }

  else if ([v1 isEqualToString:@"autoshift"])
  {
    v2 = @"UIKBAttributeNameAutoshift";
  }

  else if ([v1 isEqualToString:@"diacritic-forward-compose"])
  {
    v2 = @"UIKBAttributeNameDiacriticForwardCompose";
  }

  else if ([v1 isEqualToString:@"display-corner"])
  {
    v2 = @"UIKBAttributeNameDisplayCorner";
  }

  else if ([v1 isEqualToString:@"DisplayImage"])
  {
    v2 = @"UIKBAttributeNameDisplayImage";
  }

  else if ([v1 isEqualToString:@"drag-threshold"])
  {
    v2 = @"UIKBAttributeNameDragThreshold";
  }

  else if ([v1 isEqualToString:@"gesture-keyplane"])
  {
    v2 = @"UIKBAttributeNameGestureKeyplane";
  }

  else if ([v1 isEqualToString:@"grid-layout"])
  {
    v2 = @"UIKBAttributeNameGridLayout";
  }

  else if ([v1 isEqualToString:@"group-neighbor"])
  {
    v2 = @"UIKBAttributeNameGroupNeighbor";
  }

  else if ([v1 isEqualToString:@"home-indicator"])
  {
    v2 = @"UIKBAttributeNameHomeIndicator";
  }

  else if ([v1 isEqualToString:@"ignore-hand-bias"])
  {
    v2 = @"UIKBAttributeNameIgnoreHandBias";
  }

  else if ([v1 isEqualToString:@"ignore-shift-state"])
  {
    v2 = @"UIKBAttributeNameIgnoreShiftState";
  }

  else if ([v1 isEqualToString:@"is-alphabetic-plane"])
  {
    v2 = @"UIKBAttributeNameIsAlphabeticPlane";
  }

  else if ([v1 isEqualToString:@"is-kana-plane"])
  {
    v2 = @"UIKBAttributeNameIsKanaPlane";
  }

  else if ([v1 isEqualToString:@"is-kana-keyboard"])
  {
    v2 = @"UIKBAttributeNameIsKanaKeyboard";
  }

  else if ([v1 isEqualToString:@"keycharging"])
  {
    v2 = @"UIKBAttributeNameKeyCharging";
  }

  else if ([v1 isEqualToString:@"label"])
  {
    v2 = @"UIKBAttributeNameLabel";
  }

  else if ([v1 isEqualToString:@"looks-like-shift-alternate"])
  {
    v2 = @"UIKBAttributeNameLooksLikeShiftAlternate";
  }

  else if ([v1 isEqualToString:@"merge-as-more-key"])
  {
    v2 = @"UIKBAttributeNameMergeAsMoreKey";
  }

  else if ([v1 isEqualToString:@"modify-for-writeboard-key"])
  {
    v2 = @"UIKBAttributeNameModifyForWriteboardKey";
  }

  else if ([v1 isEqualToString:@"more-after"])
  {
    v2 = @"UIKBAttributeNameMoreAfter";
  }

  else if ([v1 isEqualToString:@"more-alternate"])
  {
    v2 = @"UIKBAttributeNameMoreAlternate";
  }

  else if ([v1 isEqualToString:@"more-alternate-small-display"])
  {
    v2 = @"UIKBAttributeNameMoreAlternateSmallDisplay";
  }

  else if ([v1 isEqualToString:@"more-rendering"])
  {
    v2 = @"UIKBAttributeNameMoreRendering";
  }

  else if ([v1 isEqualToString:@"no-language-indicator"])
  {
    v2 = @"UIKBAttributeNameNoLanguageIndicator";
  }

  else if ([v1 isEqualToString:@"notusecandidateselection"])
  {
    v2 = @"UIKBAttributeNameNotUseCandidateSelection";
  }

  else if ([v1 isEqualToString:@"popup-bias"])
  {
    v2 = @"UIKBAttributeNamePopupBias";
  }

  else if ([v1 isEqualToString:@"rendering"])
  {
    v2 = @"UIKBAttributeNameRendering";
  }

  else if ([v1 isEqualToString:@"restable"])
  {
    v2 = @"UIKBAttributeNameRestable";
  }

  else if ([v1 isEqualToString:@"shift"])
  {
    v2 = @"UIKBAttributeNameShift";
  }

  else if ([v1 isEqualToString:@"shift-after"])
  {
    v2 = @"UIKBAttributeNameShiftAfter";
  }

  else if ([v1 isEqualToString:@"shift-alternate"])
  {
    v2 = @"UIKBAttributeNameShiftAlternate";
  }

  else if ([v1 isEqualToString:@"shift-alternate-small-display"])
  {
    v2 = @"UIKBAttributeNameShiftAlternateSmallDisplay";
  }

  else if ([v1 isEqualToString:@"shift-is-plane-chooser"])
  {
    v2 = @"UIKBAttributeNameShiftIsPlaneChooser";
  }

  else if ([v1 isEqualToString:@"shift-rendering"])
  {
    v2 = @"UIKBAttributeNameShiftRendering";
  }

  else if ([v1 isEqualToString:@"shouldclearcachedattributes"])
  {
    v2 = @"UIKBAttributeNameShouldClearCachedAttributes";
  }

  else if ([v1 isEqualToString:@"shouldskipcandidateselection"])
  {
    v2 = @"UIKBAttributeNameShouldSkipCandidateSelection";
  }

  else if ([v1 isEqualToString:@"shouldskipcandidateselectionforvariants"])
  {
    v2 = @"UIKBAttributeNameShouldSkipCandidateSelectionForVariants";
  }

  else if ([v1 isEqualToString:@"shouldsuppressdragretest"])
  {
    v2 = @"UIKBAttributeNameShouldSuppressDragRetest";
  }

  else if ([v1 isEqualToString:@"slide-down"])
  {
    v2 = @"UIKBAttributeNameSlideDown";
  }

  else if ([v1 isEqualToString:@"split-after"])
  {
    v2 = @"UIKBAttributeNameSplitAfter";
  }

  else if ([v1 isEqualToString:@"split-alternate"])
  {
    v2 = @"UIKBAttributeNameSplitAlternate";
  }

  else if ([v1 isEqualToString:@"state"])
  {
    v2 = @"UIKBAttributeNameState";
  }

  else if ([v1 isEqualToString:@"supported-types"])
  {
    v2 = @"UIKBAttributeNameSupportedTypes";
  }

  else if ([v1 isEqualToString:@"supports-continuous-path"])
  {
    v2 = @"UIKBAttributeNameSupportsContinuousPath";
  }

  else if ([v1 isEqualToString:@"supports-multitap"])
  {
    v2 = @"UIKBAttributeNameSupportsMultitap";
  }

  else if ([v1 isEqualToString:@"text-alignment"])
  {
    v2 = @"UIKBAttributeNameTextAlignment";
  }

  else if ([v1 isEqualToString:@"tint"])
  {
    v2 = @"UIKBAttributeNameTint";
  }

  else if ([v1 isEqualToString:@"variant-popup-bias"])
  {
    v2 = @"UIKBAttributeNameVariantPopupBias";
  }

  else if ([v1 isEqualToString:@"variant-type"])
  {
    v2 = @"UIKBAttributeNameVariantType";
  }

  else if ([v1 isEqualToString:@"visible"])
  {
    v2 = @"UIKBAttributeNameVisible";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeASCIICapableNumberPad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeASCIICapableNumberPadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeASCIICapable"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeASCIICapableStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDecimalPad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeDecimalPadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeDefault"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeDefaultStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeEmailAddress"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeEmailAddressStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNamePhonePad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeNamePhonePadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumberPad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeNumberPadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeNumbersAndPunctuation"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeNumbersAndPunctuationStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypePhonePad"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypePhonePadStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeTwitter"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeTwitterStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeURL"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeURLStr";
  }

  else if ([v1 isEqualToString:@"UIKeyboardTypeWebSearch"])
  {
    v2 = @"UIKBAttributeValueKeyboardTypeWebSearchStr";
  }

  else if ([v1 isEqualToString:@"KBabstract"])
  {
    v2 = @"UIKBTreePropertyAbstract";
  }

  else if ([v1 isEqualToString:@"KBactiveGeometriesList"])
  {
    v2 = @"UIKBTreePropertyActiveGeometriesList";
  }

  else if ([v1 isEqualToString:@"KBcachedGestureLayout"])
  {
    v2 = @"UIKBTreePropertyCachedGestureLayout";
  }

  else if ([v1 isEqualToString:@"KBCachedKeyboardType"])
  {
    v2 = @"UIKBTreePropertyCachedKeyboardType";
  }

  else if ([v1 isEqualToString:@"KBclipCorners"])
  {
    v2 = @"UIKBTreePropertyClipCorners";
  }

  else if ([v1 isEqualToString:@"KBdisplayRowHint"])
  {
    v2 = @"UIKBTreePropertyDisplayRowHint";
  }

  else if ([v1 isEqualToString:@"KBdisplayString"])
  {
    v2 = @"UIKBTreePropertyDisplayString";
  }

  else if ([v1 isEqualToString:@"KBdisplayType"])
  {
    v2 = @"UIKBTreePropertyDisplayType";
  }

  else if ([v1 isEqualToString:@"KBdisplayTypeHint"])
  {
    v2 = @"UIKBTreePropertyDisplayTypeHint";
  }

  else if ([v1 isEqualToString:@"KBdynamic"])
  {
    v2 = @"UIKBTreePropertyDynamicLayout";
  }

  else if ([v1 isEqualToString:@"KBflickDirection"])
  {
    v2 = @"UIKBTreePropertyFlickDirection";
  }

  else if ([v1 isEqualToString:@"KBforceMultitap"])
  {
    v2 = @"UIKBTreePropertyForceMultitap";
  }

  else if ([v1 isEqualToString:@"KBgeometriesList"])
  {
    v2 = @"UIKBTreePropertyGeometriesList";
  }

  else if ([v1 isEqualToString:@"KBgeometry"])
  {
    v2 = @"UIKBTreePropertyGeometry";
  }

  else if ([v1 isEqualToString:@"KBgestureKey"])
  {
    v2 = @"UIKBTreePropertyGestureKey";
  }

  else if ([v1 isEqualToString:@"KBghost"])
  {
    v2 = @"UIKBTreePropertyGhost";
  }

  else if ([v1 isEqualToString:@"KBhighlightedVariantsList"])
  {
    v2 = @"UIKBTreePropertyHighlightedVariantsList";
  }

  else if ([v1 isEqualToString:@"KBhint"])
  {
    v2 = @"UIKBTreePropertyHint";
  }

  else if ([v1 isEqualToString:@"KBinteractionType"])
  {
    v2 = @"UIKBTreePropertyInteractionType";
  }

  else if ([v1 isEqualToString:@"KBunionFrame"])
  {
    v2 = @"UIKBTreePropertyKeyUnionFrame";
  }

  else if ([v1 isEqualToString:@"KBunionPaddedFrame"])
  {
    v2 = @"UIKBTreePropertyKeyUnionPaddedFrame";
  }

  else if ([v1 isEqualToString:@"KBlocalizationKey"])
  {
    v2 = @"UIKBTreePropertyLocalizationKey";
  }

  else if ([v1 isEqualToString:@"KBname"])
  {
    v2 = @"UIKBTreePropertyName";
  }

  else if ([v1 isEqualToString:@"KBoverrideDisplayString"])
  {
    v2 = @"UIKBTreePropertyOverrideDisplayString";
  }

  else if ([v1 isEqualToString:@"KBother"])
  {
    v2 = @"UIKBTreePropertyParent";
  }

  else if ([v1 isEqualToString:@"KBparentKey"])
  {
    v2 = @"UIKBTreePropertyParentKey";
  }

  else if ([v1 isEqualToString:@"KBpopupDirection"])
  {
    v2 = @"UIKBTreePropertyPopupDirection";
  }

  else if ([v1 isEqualToString:@"KBpreventPaddle"])
  {
    v2 = @"UIKBTreePropertyPreventPaddle";
  }

  else if ([v1 isEqualToString:@"KBrepresentedString"])
  {
    v2 = @"UIKBTreePropertyRepresentedString";
  }

  else if ([v1 isEqualToString:@"KBRowSetVariantType"])
  {
    v2 = @"UIKBTreePropertyRowSetVariantType";
  }

  else if ([v1 isEqualToString:@"KBsecondaryDisplayStrings"])
  {
    v2 = @"UIKBTreePropertySecondaryDisplayStrings";
  }

  else if ([v1 isEqualToString:@"KBsecondaryRepresentedStrings"])
  {
    v2 = @"UIKBTreePropertySecondaryRepresentedStrings";
  }

  else if ([v1 isEqualToString:@"KBselectedVariantIndex"])
  {
    v2 = @"UIKBTreePropertySelectedVariantIndex";
  }

  else if ([v1 isEqualToString:@"KBselectedVariantIndices"])
  {
    v2 = @"UIKBTreePropertySelectedVariantIndices";
  }

  else if ([v1 isEqualToString:@"KBshape"])
  {
    v2 = @"UIKBTreePropertyShape";
  }

  else if ([v1 isEqualToString:@"KBsplitMode"])
  {
    v2 = @"UIKBTreePropertySplitMode";
  }

  else if ([v1 isEqualToString:@"KBtheme"])
  {
    v2 = @"UIKBTreePropertyTheme";
  }

  else if ([v1 isEqualToString:@"KBToggleKeys"])
  {
    v2 = @"UIKBTreePropertyTogglePrefix";
  }

  else if ([v1 isEqualToString:@"KBvisualStyle"])
  {
    v2 = @"UIKBTreePropertyVisualStyle";
  }

  else if ([v1 isEqualToString:@"KBvisualStyling"])
  {
    v2 = @"UIKBTreePropertyVisualStyling";
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"@%@", v1];
  }

  return v2;
}

uint64_t textAlignmentFromAttribute(int a1)
{
  v1 = 1;
  if (a1 == 29)
  {
    v1 = 2;
  }

  if (a1 == 21)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id nameByRemovingHash(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 rangeOfString:@"_"];
    if (v3)
    {
      v4 = 0;
      while ([v2 characterAtIndex:v4] - 48 < 0xA)
      {
        if (v3 == ++v4)
        {
          goto LABEL_6;
        }
      }

      v5 = v2;
    }

    else
    {
LABEL_6:
      v5 = [v2 substringFromIndex:(v3 + 1)];
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_189AAB1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t keyPositionSort(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 objectForKey:@"RTL"];
  v9 = [v8 BOOLValue];

  v10 = [v7 objectForKey:@"Linear"];

  v11 = [v10 BOOLValue];
  v12 = v5;
  v13 = v6;
  [v12 frame];
  if (v11)
  {
    MidY = CGRectGetMidY(*&v14);
    [v13 frame];
    MinY = CGRectGetMidY(v31);
  }

  else
  {
    MidY = CGRectGetMinY(*&v14);
    [v13 frame];
    MinY = CGRectGetMinY(v32);
  }

  if (MidY > MinY)
  {
    goto LABEL_5;
  }

  if (MidY < MinY)
  {
LABEL_8:
    v20 = -1;
    goto LABEL_9;
  }

  [v12 frame];
  v23 = v22;
  [v13 frame];
  if (v9)
  {
    if (v23 <= v24)
    {
      [v12 frame];
      v26 = v25;
      [v13 frame];
      v20 = v26 < v27;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v23 > v24)
  {
LABEL_5:
    v20 = 1;
    goto LABEL_9;
  }

  [v12 frame];
  v29 = v28;
  [v13 frame];
  if (v29 >= v30)
  {
    v20 = 0;
  }

  else
  {
    v20 = -1;
  }

LABEL_9:

  return v20;
}

void sub_189AB11B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t variantOrderSort(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [a3 BOOLValue];
  v8 = v5;
  v9 = v6;
  [v8 frame];
  v11 = v10;
  [v9 frame];
  if (v11 <= v12)
  {
    [v8 frame];
    v15 = v14;
    [v9 frame];
    if (v15 >= v16)
    {
      [v8 frame];
      v18 = v17;
      [v9 frame];
      if (v18 <= v19)
      {
        [v8 frame];
        v23 = v22;
        [v9 frame];
        if (v23 >= v24)
        {
          v13 = 0;
          goto LABEL_13;
        }

        v20 = v7 == 0;
        v21 = -1;
      }

      else
      {
        v20 = v7 == 0;
        v21 = 1;
      }

      if (v20)
      {
        v13 = -v21;
      }

      else
      {
        v13 = v21;
      }
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_13:

  return v13;
}

void sub_189AB8AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189AB8C94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _UIKeyShortcutHUDLog()
{
  if (qword_1ED49F028 != -1)
  {
    dispatch_once(&qword_1ED49F028, &__block_literal_global_350);
  }

  v1 = qword_1ED49F020;

  return v1;
}

void _HandleUIKeyShortcutHUDCancelScheduledHUDPresentationDarwinNotification()
{
  v0 = +[UIKeyShortcutHUDService sharedHUDService];
  [v0 performSelectorOnMainThread:sel__handleCancelScheduledHUDPresentationDarwinNotification withObject:0 waitUntilDone:0];
}

void _HandleUIKeyShortcutSystemHUDDidPresentDarwinNotification()
{
  v0 = +[UIKeyShortcutHUDService sharedHUDService];
  [v0 performSelectorOnMainThread:sel__handleSystemHUDPresentationDarwinNotification withObject:0 waitUntilDone:0];
}

void _HandleUIKeyShortcutSystemHUDPreventUnintendedPresentationDarwinNotification()
{
  v0 = +[UIKeyShortcutHUDService sharedHUDService];
  [v0 performSelectorOnMainThread:sel__handleSystemHUDPreventUnintendedPresentationDarwinNotificationIfNeeded withObject:0 waitUntilDone:0];
}

void sub_189ABB660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189ABC9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___isSystemHUDProcess_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    byte_1ED49F019 = 1;
  }

  else
  {
    v0 = _UIMainBundleIdentifier();
    byte_1ED49F019 = [v0 isEqualToString:@"com.apple.Spotlight"];
  }
}

unsigned __int8 **UIKBColorDefLookup(const char *a1, int a2)
{
  if ((a2 - 12) > 0x38)
  {
    return 0;
  }

  if (a2 > 16)
  {
    v2 = a2;
    if (a2 < 21)
    {
LABEL_13:
      v6 = v2 + hash_asso_values[*(a1 + 16)];
      goto LABEL_14;
    }

    v3 = a2;
    if ((a2 - 22) < 2)
    {
      goto LABEL_11;
    }

    v4 = a2;
    if (a2 == 21)
    {
LABEL_12:
      v2 = v4 + hash_asso_values[*(a1 + 20)];
      goto LABEL_13;
    }

    v5 = a2;
    if (a2 == 24)
    {
LABEL_10:
      v3 = v5 + hash_asso_values[*(a1 + 23)];
LABEL_11:
      v4 = v3 + hash_asso_values[*(a1 + 21) + 3];
      goto LABEL_12;
    }

LABEL_9:
    v5 = hash_asso_values[*(a1 + 24) + 1] + a2;
    goto LABEL_10;
  }

  v6 = a2;
  if ((a2 - 12) >= 5)
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = v6 + hash_asso_values[*(a1 + 9)] + hash_asso_values[a1[a2 - 1]];
  if (v7 > 0x28C)
  {
    return 0;
  }

  v8 = (&UIKBColorDefLookup_wordlist + 24 * v7);
  if (*a1 != **v8 || strcmp(a1 + 1, *v8 + 1))
  {
    return 0;
  }

  return v8;
}

void *UIKBRectsCreate(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1000040C3A7E6FCuLL);
    [v7 frame];
    *v8 = v9;
    *(v8 + 1) = v10;
    *(v8 + 2) = v11;
    *(v8 + 3) = v12;
    [v7 paddedFrame];
    *(v8 + 4) = v13;
    *(v8 + 5) = v14;
    *(v8 + 6) = v15;
    *(v8 + 7) = v16;
    [v7 paddedFrame];
    *(v8 + 8) = v17;
    *(v8 + 9) = v18;
    *(v8 + 10) = v19;
    *(v8 + 11) = v20;
    [v7 paddedFrame];
    *(v8 + 12) = v21;
    *(v8 + 13) = v22;
    *(v8 + 14) = v23;
    *(v8 + 15) = v24;
    [v7 paddedFrame];
    *(v8 + 16) = v25;
    *(v8 + 17) = v26;
    *(v8 + 18) = v27;
    *(v8 + 19) = v28;
    *(v8 + 20) = 0;
    *(v8 + 21) = 0;
    if ([v5 visualStyle] == 1 || objc_msgSend(v5, "visualStyle") == 2 || objc_msgSend(v5, "visualStyle") == 3 || objc_msgSend(v5, "visualStyle") == 5 || objc_msgSend(v5, "visualStyle") == 4 || objc_msgSend(v5, "visualStyle") == 103)
    {
      UIKBRectsInit_iPhone(v8, v5, v7, a3);
    }

    else if ([v5 visualStyle] == 102 || objc_msgSend(v5, "visualStyle") == 104 || objc_msgSend(v5, "visualStyle") == 105 || objc_msgSend(v5, "visualStyle") == 101 || objc_msgSend(v5, "visualStyle") == 106 || objc_msgSend(v5, "visualStyle") == 107 || objc_msgSend(v5, "visualStyle") == 108 || objc_msgSend(v5, "visualStyle") == 109)
    {
      UIKBRectsInit_Wildcat(v8, v5, v7, a3);
    }

    *v8 = CGRectIntegral(*v8);
    *(v8 + 1) = CGRectIntegral(*(v8 + 1));
    *(v8 + 2) = CGRectIntegral(*(v8 + 2));
    *(v8 + 4) = CGRectIntegral(*(v8 + 4));
  }

  return v8;
}

void UIKBRectsRelease(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double *UIKBRectsSetFrame(double *result, double a2, double a3, double a4, double a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

double *UIKBRectsSetPaddedFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

double *UIKBRectsSetDisplayFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[8] = a2;
  result[9] = a3;
  result[10] = a4;
  result[11] = a5;
  return result;
}

double *UIKBRectsSetSymbolFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  result[15] = a5;
  return result;
}

double *UIKBRectsSetVariantsFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[16] = a2;
  result[17] = a3;
  result[18] = a4;
  result[19] = a5;
  return result;
}

uint64_t UIKBPopupBiasForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v3 intForProperty:@"popup-bias"];
  [v3 paddedFrame];
  MinX = CGRectGetMinX(v21);
  [v4 frame];
  v8 = v7;

  [v3 paddedFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v22.origin.x = v10;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  MaxX = CGRectGetMaxX(v22);
  if (MinX < 15.0)
  {
    v18 = 29;
  }

  else
  {
    v18 = 0;
  }

  if (v8 - MaxX < 15.0)
  {
    v19 = 21;
  }

  else
  {
    v19 = 0;
  }

  if (v5 != 21)
  {
    v19 = v5;
  }

  if (v5 == 29)
  {
    return v18;
  }

  else
  {
    return v19;
  }
}

void UIKBAddRoundedRect(CGContext *a1, char a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  Mutable = CGPathCreateMutable();
  UIKBAddRoundedRectToPath(Mutable, a2, 0, a3, a4, a5, a6, a7);
  CGContextAddPath(a1, Mutable);

  CGPathRelease(Mutable);
}

void UIKBAddRoundedRectToPath(CGMutablePathRef path, char a2, int a3, CGFloat a4, CGFloat a5, double a6, double a7, CGFloat a8)
{
  if ((a2 & 1) == 0)
  {
    CGPathMoveToPoint(path, 0, a4, a5);
    if ((a2 & 4) != 0)
    {
      v24 = a6;
      v16 = a5 + a7;
      if (a3)
      {
        v17 = a4 + 0.5;
        v18 = a4 + 1.0;
        v19 = a4 + a8;
        goto LABEL_8;
      }

      v19 = a4 + a8;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v19 = a4 + a8;
  if (a3)
  {
    CGPathMoveToPoint(path, 0, a4 + a8, a5);
    v18 = a4 + 1.0;
    v17 = a4 + 0.5;
    CGPathAddCurveToPoint(path, 0, a4 + 1.0, a5 + 0.5, a4 + 0.5, a5 + 1.0, a4, a5 + a8);
    if ((a2 & 4) != 0)
    {
      v24 = a6;
      v16 = a5 + a7;
LABEL_8:
      CGPathAddLineToPoint(path, 0, a4, v16 - a8);
      CGPathAddCurveToPoint(path, 0, v17, v16 + -1.0, v18, v16 + -0.5, v19, v16);
      a6 = v24;
      if ((a2 & 8) != 0)
      {
        v20 = a4 + v24;
        v21 = a5 + a7;
        goto LABEL_13;
      }

LABEL_18:
      v22 = a4 + a6;
      CGPathAddLineToPoint(path, 0, a4 + a6, a5 + a7);
      if ((a2 & 2) != 0)
      {
        if (a3)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_23:
      CGPathAddLineToPoint(path, 0, a4 + a6, a5);
      goto LABEL_26;
    }

    goto LABEL_11;
  }

  CGPathAddArc(path, 0, a4 + a8, a5 + a8, a8, 4.71238898, 3.14159265, 1);
  if ((a2 & 4) == 0)
  {
LABEL_11:
    v21 = a5 + a7;
    CGPathAddLineToPoint(path, 0, a4, a5 + a7);
    if ((a2 & 8) == 0)
    {
      goto LABEL_18;
    }

    v20 = a4 + a6;
    if (a3)
    {
LABEL_13:
      CGPathAddLineToPoint(path, 0, v20 - a8, v21);
      CGPathAddCurveToPoint(path, 0, v20 + -1.0, v21 + -0.5, v20 + -0.5, v21 + -1.0, v20, v21 - a8);
      if ((a2 & 2) != 0)
      {
        v22 = a4 + a6;
LABEL_20:
        CGPathAddLineToPoint(path, 0, v22, a5 + a8);
        CGPathAddCurveToPoint(path, 0, v22 + -0.5, a5 + 1.0, v22 + -1.0, a5 + 0.5, v22 - a8, a5);
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v24 = a6;
  v16 = a5 + a7;
LABEL_17:
  CGPathAddArc(path, 0, v19, v16 - a8, a8, 3.14159265, 1.57079633, 1);
  a6 = v24;
  if ((a2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v20 = a4 + v24;
  v21 = a5 + a7;
LABEL_22:
  CGPathAddArc(path, 0, v20 - a8, v21 - a8, a8, 1.57079633, 0.0, 1);
  if ((a2 & 2) == 0)
  {
    goto LABEL_23;
  }

  v22 = a4 + a6;
LABEL_25:
  CGPathAddArc(path, 0, v22 - a8, a5 + a8, a8, 0.0, 4.71238898, 1);
LABEL_26:
  v23 = a4 + a8;
  if ((a2 & 1) == 0)
  {
    v23 = a4;
  }

  CGPathAddLineToPoint(path, 0, v23, a5);
}

void *UIKBGetNamedLinearGradient(void *a1)
{
  v1 = a1;
  Mutable = UIKBGetNamedLinearGradient_cache;
  if (!UIKBGetNamedLinearGradient_cache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    UIKBGetNamedLinearGradient_cache = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v1];
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v1];
    [v4 appendString:@"Start"];
    [v5 appendString:@"End"];
    v6 = UIKBGetNamedColor(v4);
    v7 = UIKBGetNamedColor(v5);
    if (v6 && v7)
    {
      Value = UIKBCreateTwoColorLinearGradient(v6, v7);

      if (Value)
      {
        CFDictionarySetValue(UIKBGetNamedLinearGradient_cache, v1, Value);
      }
    }

    else
    {

      Value = 0;
    }

    CGGradientRelease(Value);
  }

  return Value;
}

void *UIKBGetNamedColor(void *a1)
{
  v1 = a1;
  Mutable = UIKBGetNamedColor_cache;
  if (!UIKBGetNamedColor_cache)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    UIKBGetNamedColor_cache = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  if (!Value)
  {
    v4 = [v1 UTF8String];
    v5 = strlen(v4);
    v6 = UIKBColorDefLookup(v4, v5);
    if (v6)
    {
      Value = UIKBColorCreate(*(v6 + 2), *(v6 + 3), *(v6 + 4), *(v6 + 5));
    }

    else
    {
      Value = UIKBGetNamedColor_black;
      if (!UIKBGetNamedColor_black)
      {
        Value = UIKBColorCreate(0, 0, 0, 1.0);
        UIKBGetNamedColor_black = Value;
      }
    }

    CFDictionarySetValue(UIKBGetNamedColor_cache, v1, Value);
    CGColorRelease(Value);
  }

  return Value;
}

CGGradientRef UIKBCreateTwoColorLinearGradient(_BOOL8 a1, _BOOL8 a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    abort();
  }

  if (UIKBColorUsesRGB(a1) || UIKBColorUsesRGB(a2))
  {
    DeviceRGB = UIKBColorSpaceDeviceRGB_colorspace;
    if (!UIKBColorSpaceDeviceRGB_colorspace)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      UIKBColorSpaceDeviceRGB_colorspace = DeviceRGB;
    }
  }

  else
  {
    DeviceRGB = UIKBColorSpaceDeviceGray_colorspace;
    if (!UIKBColorSpaceDeviceGray_colorspace)
    {
      DeviceRGB = CGColorSpaceCreateDeviceGray();
      UIKBColorSpaceDeviceGray_colorspace = DeviceRGB;
    }
  }

  v9[0] = a1;
  v9[1] = a2;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v8 = xmmword_18A64B720;
  v6 = CGGradientCreateWithColors(DeviceRGB, v5, &v8);

  return v6;
}

BOOL UIKBColorUsesRGB(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    result = CGColorGetNumberOfComponents(result) == 4 && ((Components = CGColorGetComponents(v1), v3 = Components[1], *Components != v3) || v3 != Components[2]);
  }

  return result;
}

CGColorSpaceRef UIKBColorSpaceDeviceRGB()
{
  result = UIKBColorSpaceDeviceRGB_colorspace;
  if (!UIKBColorSpaceDeviceRGB_colorspace)
  {
    result = CGColorSpaceCreateDeviceRGB();
    UIKBColorSpaceDeviceRGB_colorspace = result;
  }

  return result;
}

CGColorSpaceRef UIKBColorSpaceDeviceGray()
{
  result = UIKBColorSpaceDeviceGray_colorspace;
  if (!UIKBColorSpaceDeviceGray_colorspace)
  {
    result = CGColorSpaceCreateDeviceGray();
    UIKBColorSpaceDeviceGray_colorspace = result;
  }

  return result;
}

CGFloat UIKBDrawLinearGradient(CGContext *a1, CGGradient *a2, CGFloat result, double a4, double a5, double a6)
{
  if (a2)
  {
    v6.y = a4 + a6;
    v6.x = result;
    CGContextDrawLinearGradient(a1, a2, *&result, v6, 0);
  }

  return result;
}

CGColorRef UIKBColorCreate(unint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 == a2 && a2 == a3)
  {
    components = a1 / 255.0;
    v7 = a4;
    DeviceGray = UIKBColorSpaceDeviceGray_colorspace;
    if (!UIKBColorSpaceDeviceGray_colorspace)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      UIKBColorSpaceDeviceGray_colorspace = DeviceGray;
    }
  }

  else
  {
    components = a1 / 255.0;
    v7 = a2 / 255.0;
    v8 = a3 / 255.0;
    v9 = a4;
    DeviceGray = UIKBColorSpaceDeviceRGB_colorspace;
    if (!UIKBColorSpaceDeviceRGB_colorspace)
    {
      DeviceGray = CGColorSpaceCreateDeviceRGB();
      UIKBColorSpaceDeviceRGB_colorspace = DeviceGray;
    }
  }

  return CGColorCreate(DeviceGray, &components);
}

void UIKBClipTwoPieceBackground(CGContext *a1, char a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, CGFloat a12, double a13, double a14)
{
  v27 = UIKBCornerRadius();
  UIKBAddRoundedRect(a1, a2 & 0xA, a7, a8, a9, a10, v27);
  UIKBAddRoundedRect(a1, a2 & 5, a5 - a13, a12, a13, a14, v27);

  CGContextClip(a1);
}

double UIKBCornerRadius()
{
  v0 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v1 = [v0 preferencesActions];
  [v1 rivenSizeFactor:10.0];
  v3 = v2;

  return v3;
}

__CFString *UIKBReturnKeyStringForActiveInputMode(void *a1)
{
  v1 = [a1 displayTypeHint];

  return UIKeyboardLocalizedReturnKeyName(v1);
}

BOOL UIKBKeyboardIsURLKeyboard(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 rangeOfString:@"URL"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

BOOL UIKBKeyboardIsEmailKeyboard(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 rangeOfString:@"Email"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

const __CTLine *UIKBCreateFitCTLine(void *a1, uint64_t a2, double *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, CGFloat a12, double a13, double a14, double a15)
{
  v28 = *a3;
  v29 = a8;
  v30 = a1;
  v31 = [UIKBTextStyle styleWithFontName:a2 withFontSize:v28];
  [v31 setFontWeight:a13];
  [v31 setFontWidth:a14];
  [v31 setKerning:a15];
  [v31 setIgnoreTextMarginOnKey:a6];
  [v31 setIsVertical:a7];
  [v31 setKeycapsFallback:v29];

  [v31 setSelector:a5];
  v32 = UIKBCreateFitCTLineWithSymbolStyle(v30, v31, a4, a9, a10, a11, a12);

  return v32;
}

const __CTLine *UIKBCreateFitCTLineWithSymbolStyle(void *a1, void *a2, void *a3, double a4, double a5, double a6, CGFloat a7)
{
  v11 = a1;
  v12 = a2;
  v13 = v12;
  v14 = a6 + -4.0;
  while (1)
  {
    UIKBGetFontAttributesWithSymbolStyle(v12, v13, a3);
    v15 = CTLineCreateWithString();
    v22 = 0.0;
    ascent = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v15, &ascent, &v22, 0);
    v17 = [v13 isVertical] ? ascent + v22 : TypographicBounds;
    v18 = v17 <= v14 && ascent + v22 <= a7;
    if (v18 || [v13 ignoreTextMarginOnKey])
    {
      break;
    }

    CFRelease(v15);
    [v13 fontSize];
    [v13 setFontSize:v19 + -1.0];
    v12 = [v13 fontSize];
    if (v20 <= 0.0)
    {
      v15 = 0;
      break;
    }
  }

  return v15;
}

uint64_t UIKBGetFontAttributes(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v19 = a6;
  v20 = a1;
  v21 = [UIKBTextStyle styleWithFontName:a2 withFontSize:a7];
  [v21 setFontWeight:a8];
  [v21 setFontWidth:a9];
  [v21 setKerning:a10];
  [v21 setIsVertical:a5];
  [v21 setKeycapsFallback:v19];

  v22 = UIKBGetFontAttributesWithSymbolStyle([v21 setSelector:a4], v21, a3);
  return v22;
}

uint64_t UIKBGetFontAttributesWithSymbolStyle(uint64_t a1, void *a2, void *a3)
{
  v131[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _AXSEnhanceTextLegibilityEnabled() != 0;
  v5 = [v3 fontName];
  v121 = [v5 isEqualToString:@"UIKBRenderFactorySystemFontName"];

  v6 = [v3 fontName];
  v115 = [v6 isEqualToString:@"UIKBRenderFactoryWordsSystemCompactFontName"];

  v7 = [v3 fontName];
  if ([v7 isEqualToString:@"UIKBRenderFactorySystemCompactFontName"])
  {
    v113 = 1;
  }

  else
  {
    v8 = [v3 fontName];
    v113 = [v8 isEqualToString:@".SFCompact-Bold"];
  }

  v9 = [v3 fontName];
  v10 = [v9 isEqualToString:qword_1ED49F068];

  v11 = UIKeyboardGetCurrentInputMode();
  v12 = UIKeyboardRequiresFontFallbacksForInputMode();
  v13 = UIKeyboardFontFallbackLanguageForInputMode();
  v14 = v13;
  v116 = v11;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = TIInputModeGetLanguageWithRegion();
  }

  v16 = v15;

  v17 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v16];
  v18 = TIInputModeGetLanguage();

  v19 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v18];

  v120 = v19;
  v114 = v12;
  v122 = ([v19 isEqualToString:qword_1ED49F070] ^ 1) & v12;
  [v3 fontSize];
  v21 = v20;
  v22 = *&qword_1ED49F078;
  if (v121)
  {
    [v3 fontWeight];
    v24 = v23 != *&qword_1ED49F080;
    [v3 fontWidth];
    v26 = v25 != *&qword_1ED49F088;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  [v3 kerning];
  v28 = v27;
  v29 = *&qword_1ED49F090;
  v30 = [v3 selector];
  v118 = qword_1ED49F0B8;
  v119 = v30;
  v31 = _MergedGlobals_1173;
  v32 = [v3 isVertical];
  v33 = qword_1ED49F098;
  v34 = v120;
  if (!((qword_1ED49F098 == 0) | (v10 ^ 1) & 1 | v122 & 1) && v21 == v22 && !v24 && !v26 && v28 == v29 && v119 == v118 && v31 == v4 && byte_1ED49F061 == v32)
  {
    goto LABEL_39;
  }

  if ((v10 & 1) == 0)
  {
    v35 = [v3 fontName];
    v36 = [v35 copy];
    v37 = qword_1ED49F068;
    qword_1ED49F068 = v36;
  }

  if (v122)
  {
    v38 = [v120 copy];
    v39 = qword_1ED49F070;
    qword_1ED49F070 = v38;
  }

  [v3 fontSize];
  qword_1ED49F078 = v40;
  [v3 fontWeight];
  qword_1ED49F080 = v41;
  [v3 fontWidth];
  qword_1ED49F088 = v42;
  [v3 kerning];
  qword_1ED49F090 = v43;
  qword_1ED49F0B8 = [v3 selector];
  _MergedGlobals_1173 = v4;
  byte_1ED49F061 = [v3 isVertical];
  v44 = qword_1ED49F098;
  if (!qword_1ED49F098)
  {
    qword_1ED49F098 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v45 = CTParagraphStyleCreate(0, 0);
    CTParagraphStyleSetCompositionLanguage();
    CFDictionarySetValue(qword_1ED49F098, *off_1E70EC988, v45);
    CFRelease(v45);
    v44 = qword_1ED49F098;
  }

  CFDictionarySetValue(v44, *MEMORY[0x1E69659E0], &unk_1EFE31018);
  [v3 kerning];
  v46 = qword_1ED49F098;
  v47 = *MEMORY[0x1E6965A88];
  if (v48 == 0.0)
  {
    CFDictionaryRemoveValue(qword_1ED49F098, *MEMORY[0x1E6965A88]);
  }

  else
  {
    v49 = MEMORY[0x1E696AD98];
    [v3 kerning];
    v50 = [v49 numberWithDouble:?];
    CFDictionarySetValue(v46, v47, v50);
  }

  v51 = [v3 isVertical];
  v52 = *MEMORY[0x1E6965B50];
  if (v51)
  {
    CFDictionarySetValue(qword_1ED49F098, v52, *MEMORY[0x1E695E4D0]);
  }

  else
  {
    CFDictionaryRemoveValue(qword_1ED49F098, v52);
  }

  if (!v121)
  {
    if (v115)
    {
      [v3 fontSize];
      v60 = v59;
      [v3 fontWeight];
      v58 = [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v60 design:v61];
      goto LABEL_34;
    }

    if (v113)
    {
      [v3 fontSize];
      v68 = v67;
      [v3 fontWeight];
      v70 = [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v68 design:v69];
      v130 = *MEMORY[0x1E6965808];
      v71 = [v3 keycapsFallback];
      v72 = v71;
      v73 = @".Keycaps-Keys";
      if (v71)
      {
        v73 = v71;
      }

      v131[0] = v73;
      v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:&v130 count:1];

      v75 = CTFontDescriptorCreateWithAttributesAndOptions();
      v76 = MEMORY[0x1E695DF70];
      v77 = v114;
      if (!v120)
      {
        v77 = 0;
      }

      if (v77 == 1)
      {
        v78 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
      }

      else
      {
        v78 = 0;
      }

      v85 = CTFontCopyDefaultCascadeListForLanguages(v70, v78);
      v86 = [v76 arrayWithArray:v85];

      [v86 insertObject:v75 atIndex:0];
      v128 = *MEMORY[0x1E6965678];
      v87 = v128;
      v129 = v86;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v89 = CTFontDescriptorCreateWithAttributes(v88);

      [v3 fontSize];
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v70, v90, 0, v89);
      CFRelease(v70);
      if ([v3 needsFontCase])
      {
        v126 = *MEMORY[0x1E69657A8];
        v127 = &unk_1EFE2C2E0;
        v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v92 = CTFontDescriptorCreateWithAttributes(v91);
        [v3 fontSize];
        v94 = CTFontCreateCopyWithAttributes(CopyWithAttributes, v93, 0, v92);
        CFRelease(v92);
        CFRelease(CopyWithAttributes);

        CopyWithAttributes = v94;
      }

      v34 = v120;
      v63 = &qword_1ED49F000;
      if ([v3 fontGrade])
      {
        [v3 fontGrade];
        CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
        CFRelease(CopyWithAttributes);
        CopyWithAttributes = CopyOfSystemUIFontWithGrade;
      }

      CFRelease(v89);
      CFDictionarySetValue(qword_1ED49F098, *MEMORY[0x1E6965658], CopyWithAttributes);

      goto LABEL_35;
    }

    v79 = MEMORY[0x1E6965808];
    if (qword_1ED49F0A0 && v119 == v118)
    {
      if (v10)
      {
        v80 = 0;
        v63 = &qword_1ED49F000;
LABEL_64:
        if ((v114 & (v80 | v122)) == 1)
        {
          v99 = qword_1ED49F0A0;
          v100 = qword_1ED49F070;
          v101 = [v3 fontName];
          [v3 fontSize];
          v103 = v102;
          v104 = MEMORY[0x1E695DF20];
          v105 = *v79;
          v106 = v100;
          v107 = [v104 dictionaryWithObject:v101 forKey:v105];
          v108 = CTFontDescriptorCreateWithAttributesAndOptions();
          v109 = CTFontCreateWithFontDescriptor(v108, v103, 0);
          UIKBSetFontCascadeListAttributeFromFont(v99, v106, v109);

          CFRelease(v108);
          v63 = &qword_1ED49F000;
          CFRelease(v109);
        }

        v110 = qword_1ED49F0A8;
        if (qword_1ED49F0A8)
        {
          v111 = v80;
        }

        else
        {
          v111 = 1;
        }

        if (((v111 | v122) & 1) != 0 || v119 != v118)
        {
          if (qword_1ED49F0A8)
          {
            CFRelease(qword_1ED49F0A8);
          }

          v110 = CTFontDescriptorCreateWithAttributesAndOptions();
          qword_1ED49F0A8 = v110;
        }

        [v3 fontSize];
        CopyWithAttributes = CTFontCreateWithFontDescriptor(v110, v112, 0);
        CFDictionarySetValue(qword_1ED49F098, *MEMORY[0x1E6965658], CopyWithAttributes);
        v34 = v120;
        goto LABEL_35;
      }

      v63 = &qword_1ED49F000;
    }

    else
    {
      if (qword_1ED49F0A0)
      {
        CFRelease(qword_1ED49F0A0);
        qword_1ED49F0A0 = 0;
      }

      qword_1ED49F0A0 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v63 = &qword_1ED49F000;
      if ([v3 selector])
      {
        v81 = *MEMORY[0x1E69657A0];
        v123[0] = *MEMORY[0x1E69657B0];
        v123[1] = v81;
        v124[0] = &unk_1EFE31030;
        v82 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "selector")}];
        v124[1] = v82;
        v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
        v125 = v83;
        v122 = 1;
        v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];

        CFDictionarySetValue(qword_1ED49F0A0, *MEMORY[0x1E69657A8], v84);
      }

      else
      {
        v122 = 1;
      }
    }

    v96 = qword_1ED49F0A0;
    v97 = *v79;
    v98 = [v3 fontName];
    CFDictionarySetValue(v96, v97, v98);

    v80 = 1;
    goto LABEL_64;
  }

  [v3 fontSize];
  v54 = v53;
  [v3 fontWeight];
  v56 = v55;
  [v3 fontWidth];
  v58 = [off_1E70ECC18 systemFontOfSize:v54 weight:v56 width:v57];
LABEL_34:
  CopyWithAttributes = v58;
  CFDictionarySetValue(qword_1ED49F098, *MEMORY[0x1E6965658], v58);
  v63 = &qword_1ED49F000;
LABEL_35:
  v64 = [v3 fontName];
  [v3 fontSize];
  *(v63 + 22) = UIKBGetXHeight(v64, v65);

  if (*(v63 + 22) == 0.0)
  {
    *(v63 + 22) = CTFontGetXHeight(CopyWithAttributes);
  }

  CFRelease(CopyWithAttributes);
  v33 = qword_1ED49F098;
  if (qword_1ED49F070)
  {
    CFDictionarySetValue(qword_1ED49F098, *MEMORY[0x1E6965A20], qword_1ED49F070);
    v33 = qword_1ED49F098;
  }

LABEL_39:
  *a3 = qword_1ED49F0B0;

  return v33;
}

uint64_t UIKBCreateCTFont(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v9 = a2;
  v10 = [UIKBTextStyle styleWithFontName:a1 withFontSize:a3];
  [v10 setFontWeight:a4];
  [v10 setFontWidth:a5];
  [v10 setKeycapsFallback:v9];

  v11 = UIKBCreateCTFontWithSymbolStyle(v10);
  return v11;
}

uint64_t UIKBCreateCTFontWithSymbolStyle(void *a1)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = UIKeyboardGetCurrentInputMode();
  v3 = UIKeyboardRequiresFontFallbacksForInputMode();
  v4 = UIKeyboardFontFallbackLanguageForInputMode();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = TIInputModeGetLanguageWithRegion();
  }

  v7 = v6;

  v8 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v7];
  v9 = TIInputModeGetLanguage();

  v10 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v9];

  v11 = [v1 fontName];
  v12 = [v11 isEqualToString:qword_1ED49F0C0];

  v69 = v3;
  v13 = ([v10 isEqualToString:qword_1ED49F0E0] ^ 1) & v3;
  v14 = [v1 fontName];
  v15 = [v14 isEqualToString:@"UIKBRenderFactorySystemFontName"];

  v16 = [v1 fontName];
  if ([v16 isEqualToString:@"UIKBRenderFactorySystemCompactFontName"])
  {
    v17 = 1;
  }

  else
  {
    v18 = [v1 fontName];
    v17 = [v18 isEqualToString:@".SFCompact-Bold"];
  }

  if (v13 & 1 | ((v12 & 1) == 0) || ([v1 fontSize], v19 != *&qword_1ED49F0C8) && (objc_msgSend(v1, "fontSize"), v20 > 0.0) || v15 && (objc_msgSend(v1, "fontWeight"), v21 != *&qword_1ED49F0D0) && (objc_msgSend(v1, "fontWeight"), v22 != 0.0))
  {
    [v1 fontSize];
    v24 = v23;
    v25 = 22.0;
    if (v24 > 0.0)
    {
      [v1 fontSize];
    }

    [v1 setFontSize:v25];
    if (qword_1ED49F0D8)
    {
      CFRelease(qword_1ED49F0D8);
    }

    v26 = [v1 fontName];
    v27 = [v26 isEqualToString:@"UIKBRenderFactorySystemFontName"];

    if (v27)
    {
      [v1 fontSize];
      v29 = v28;
      [v1 fontWeight];
      v31 = v30;
      [v1 fontWidth];
      qword_1ED49F0D8 = [off_1E70ECC18 systemFontOfSize:v29 weight:v31 width:v32];
    }

    else if (v17)
    {
      [v1 fontSize];
      v34 = v33;
      [v1 fontWeight];
      qword_1ED49F0D8 = [off_1E70ECC18 systemFontOfSize:*off_1E70ECCE0 weight:v34 design:v35];
      v74 = *MEMORY[0x1E6965808];
      v36 = [v1 keycapsFallback];
      v37 = v36;
      v38 = @".Keycaps-Keys";
      if (v36)
      {
        v38 = v36;
      }

      v75[0] = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:&v74 count:1];

      v40 = CTFontDescriptorCreateWithAttributesAndOptions();
      v41 = MEMORY[0x1E695DF70];
      v42 = qword_1ED49F0D8;
      v43 = v69;
      if (!v10)
      {
        v43 = 0;
      }

      if (v43 == 1)
      {
        v44 = [MEMORY[0x1E695DEC8] arrayWithObject:v10];
      }

      else
      {
        v44 = 0;
      }

      v46 = CTFontCopyDefaultCascadeListForLanguages(v42, v44);
      v47 = [v41 arrayWithArray:v46];

      [v47 insertObject:v40 atIndex:0];
      v72 = *MEMORY[0x1E6965678];
      v48 = v72;
      v73 = v47;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      v50 = CTFontDescriptorCreateWithAttributes(v49);

      v51 = qword_1ED49F0D8;
      [v1 fontSize];
      CopyWithAttributes = CTFontCreateCopyWithAttributes(v51, v52, 0, v50);
      CFRelease(qword_1ED49F0D8);
      qword_1ED49F0D8 = CopyWithAttributes;
      if ([v1 needsFontCase])
      {
        v70 = *MEMORY[0x1E69657A8];
        v71 = &unk_1EFE2C2F8;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        v55 = CTFontDescriptorCreateWithAttributes(v54);
        v56 = qword_1ED49F0D8;
        [v1 fontSize];
        v58 = CTFontCreateCopyWithAttributes(v56, v57, 0, v55);
        CFRelease(v55);
        CFRelease(qword_1ED49F0D8);
        qword_1ED49F0D8 = v58;
      }

      if ([v1 fontGrade])
      {
        [v1 fontGrade];
        CopyOfSystemUIFontWithGrade = CTFontCreateCopyOfSystemUIFontWithGrade();
        CFRelease(qword_1ED49F0D8);
        qword_1ED49F0D8 = CopyOfSystemUIFontWithGrade;
      }

      CFRelease(v50);
    }

    else
    {
      v45 = [v1 fontName];
      [v1 fontSize];
      qword_1ED49F0D8 = [off_1E70ECC18 fontWithName:v45 size:4096 traits:?];
    }

    v60 = [v1 fontName];
    v61 = [v60 copy];
    v62 = qword_1ED49F0C0;
    qword_1ED49F0C0 = v61;

    [v1 fontSize];
    qword_1ED49F0C8 = v63;
    [v1 fontWeight];
    qword_1ED49F0D0 = v64;
    v65 = [v10 copy];
    v66 = qword_1ED49F0E0;
    qword_1ED49F0E0 = v65;
  }

  v67 = qword_1ED49F0D8;

  return v67;
}

uint64_t UIKBGlyphForCharacter(uint64_t a1, __int16 a2, void *a3, double a4, double a5, double a6)
{
  v11 = a3;
  v12 = [UIKBTextStyle styleWithFontName:a1 withFontSize:a4];
  [v12 setFontWeight:a5];
  [v12 setFontWidth:a6];
  [v12 setKeycapsFallback:v11];

  v13 = UIKBGlyphForCharacterWithSymbolStyle(a2, v12);
  return v13;
}

uint64_t UIKBGlyphForCharacterWithSymbolStyle(__int16 a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!UIKBGlyphForCharacterWithSymbolStyle___fontDict)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v5 = UIKBGlyphForCharacterWithSymbolStyle___fontDict;
    UIKBGlyphForCharacterWithSymbolStyle___fontDict = v4;
  }

  v6 = [v3 fontName];
  v7 = MEMORY[0x1E696AD98];
  [v3 fontSize];
  v8 = [v7 numberWithDouble:?];
  v9 = [v8 stringValue];
  v10 = [v6 stringByAppendingString:v9];

  v11 = [UIKBGlyphForCharacterWithSymbolStyle___fontDict objectForKey:v10];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [UIKBGlyphForCharacterWithSymbolStyle___fontDict setObject:v11 forKey:v10];
  }

  v12 = a1 & 0xFFF0;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1 & 0xFFF0];
  v14 = [v11 objectForKey:v13];
  if (v14)
  {
    v15 = v14;
    v16 = *([v14 bytes] + 2 * (a1 & 0xF));
  }

  else
  {
    characters = a1 & 0xFFF0;
    v17 = vdupq_n_s16(v12);
    v23 = vorrq_s8(v17, xmmword_18A67EA30);
    v24 = vorr_s8(*v17.i8, 0xC000B000A0009);
    v25 = v12 | 0xD;
    v26 = v12 | 0xE;
    v27 = a1 | 0xF;
    v18 = UIKBCreateCTFontWithSymbolStyle(v3);
    CTFontGetGlyphsForCharacters(v18, &characters, glyphs, 16);
    for (i = 0; i != 32; i += 2)
    {
      CTFontTransformGlyphs();
    }

    v15 = [MEMORY[0x1E695DEF0] dataWithBytes:glyphs length:32];
    [v11 setObject:v15 forKey:v13];
    v16 = glyphs[a1 & 0xF];
  }

  return v16;
}

void UIKBDrawCTLineAtPoint(CGContext *a1, const __CTLine *a2, CGColor *a3, int a4, double a5, CGFloat a6)
{
  if (a2 && a3)
  {
    CGContextSaveGState(a1);
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *&v16.a = *MEMORY[0x1E695EFD0];
    *&v16.c = v12;
    *&v16.tx = *(MEMORY[0x1E695EFD0] + 32);
    CGContextSetTextMatrix(a1, &v16);
    CGContextScaleCTM(a1, 1.0, -1.0);
    if (a4)
    {
      CGContextRotateCTM(a1, -1.57079633);
      v13 = a1;
      v14 = a6;
      v15 = a5;
    }

    else
    {
      v15 = -a6;
      v13 = a1;
      v14 = a5;
    }

    CGContextSetTextPosition(v13, v14, v15);
    CGContextSetFillColorWithColor(a1, a3);
    CTLineDraw(a2, a1);
    CGContextRestoreGState(a1);
  }
}

double UIKBGetXHeight(void *a1, double a2)
{
  v3 = a1;
  v4 = UIKBGetXHeight_xheights;
  if (!UIKBGetXHeight_xheights)
  {
    v4 = &unk_1EFE34400;
    UIKBGetXHeight_xheights = &unk_1EFE34400;
  }

  v5 = [v4 objectForKey:v3];
  [v5 floatValue];
  v7 = v6 * a2;

  return v7;
}

void UIKBSetFontCascadeListAttributeFromFont(__CFDictionary *a1, uint64_t a2, const __CTFont *a3)
{
  if (a2)
  {
    v5 = [MEMORY[0x1E695DEC8] arrayWithObject:a2];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEC8] array];
  }

  v6 = CTFontCopyDefaultCascadeListForLanguages(a3, v5);
  CFDictionarySetValue(a1, *MEMORY[0x1E6965678], v6);

  CFRelease(v6);
}

CTFontRef UIKBCTFontForInputMode(void *a1, void *a2, CGFloat a3)
{
  v5 = a1;
  v6 = a2;
  if (qword_1ED49F0F0 != -1)
  {
    dispatch_once(&qword_1ED49F0F0, &__block_literal_global_351);
  }

  v7 = TIInputModeGetLanguageWithRegion();
  v8 = [v6 fontName];
  v9 = [v7 stringByAppendingFormat:@":%@:%f", v8, *&a3];

  v10 = [qword_1ED49F0E8 objectForKey:v9];
  if (v10)
  {
    CopyWithAttributes = v10;
  }

  else
  {
    if (UIKeyboardRequiresFontFallbacksForInputMode())
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v7];
      v14 = TIInputModeGetLanguage();

      v7 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v14];

      UIKBSetFontCascadeListAttributeFromFont(Mutable, v7, v6);
      v15 = CTFontDescriptorCreateWithAttributesAndOptions();
      CFRelease(Mutable);
    }

    else
    {
      v15 = 0;
    }

    CopyWithAttributes = CTFontCreateCopyWithAttributes(v6, a3, 0, v15);
    [qword_1ED49F0E8 setObject:CopyWithAttributes forKey:v9];

    if (v15)
    {
      CFRelease(v15);
    }
  }

  return CopyWithAttributes;
}

void __UIKBCTFontForInputMode_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49F0E8;
  qword_1ED49F0E8 = v0;
}

CGImageRef UIKBCreateFadeClipImage(int a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!UIKBCreateFadeClipImage_colorspace)
  {
    UIKBCreateFadeClipImage_colorspace = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C8]);
  }

  v25 = UIKBScale();
  *components = xmmword_18A64B720;
  v26 = CGColorCreate(UIKBCreateFadeClipImage_colorspace, components);
  v27 = vcvtpd_u64_f64(a5 * v25);
  v28 = CGBitmapContextCreate(0, v27, vcvtpd_u64_f64(a6 * v25), 8uLL, v27, UIKBCreateFadeClipImage_colorspace, 0);
  CGAffineTransformMakeScale(&transform, v25, v25);
  CGContextConcatCTM(v28, &transform);
  *&transform.a = xmmword_18A67EA40;
  v29 = CGColorCreate(UIKBCreateFadeClipImage_colorspace, &transform.a);
  CGContextSetFillColorWithColor(v28, v29);
  v51.origin.x = a3;
  v51.origin.y = a4;
  v51.size.width = a5;
  v51.size.height = a6;
  CGContextFillRect(v28, v51);
  CGColorRelease(v29);
  v47[0] = a11;
  v47[1] = 1.0;
  v30 = CGColorCreate(UIKBCreateFadeClipImage_colorspace, v47);
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v26, v30, 0}];
  CGColorRelease(v30);
  CGColorRelease(v26);
  v32 = CGGradientCreateWithColors(UIKBCreateFadeClipImage_colorspace, v31, 0);
  v52.origin.x = a7;
  v52.origin.y = a8;
  v52.size.width = a9;
  v52.size.height = a10;
  v53 = CGRectOffset(v52, -a3, -a4);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  CGContextClipToRect(v28, v53);
  if (a1)
  {
    v37 = y;
  }

  else
  {
    v37 = y + height;
  }

  if (a1)
  {
    v38 = y + height;
  }

  else
  {
    v38 = y;
  }

  if (a1)
  {
    v39 = x;
  }

  else
  {
    v39 = x + width;
  }

  if (a1)
  {
    v40 = x + width;
  }

  else
  {
    v40 = x;
  }

  if (a2)
  {
    v41 = v39;
  }

  else
  {
    v41 = x;
  }

  if (a2)
  {
    v37 = y;
    v42 = v40;
  }

  else
  {
    v42 = x;
  }

  if (a2)
  {
    v38 = y;
  }

  CGContextDrawLinearGradient(v28, v32, *(&v37 - 1), *(&v38 - 1), 0);
  CGGradientRelease(v32);
  Image = CGBitmapContextCreateImage(v28);
  CGContextRelease(v28);

  return Image;
}

double UIKBScale()
{
  result = *&UIKBScale_scale;
  if (*&UIKBScale_scale == 0.0)
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 scale];
    UIKBScale_scale = v2;

    return *&UIKBScale_scale;
  }

  return result;
}

BOOL UIKBKeyboardIsPortrait(void *a1)
{
  v1 = [a1 name];
  v2 = [v1 rangeOfString:@"Portrait"] != 0x7FFFFFFFFFFFFFFFLL;

  return v2;
}

BOOL UIKBKeyboardIsSplit(void *a1)
{
  v1 = a1;
  v2 = [v1 visualStyle] == 106 || objc_msgSend(v1, "visualStyle") == 107;

  return v2;
}

uint64_t UIKBGetFlickDirection(double a1, double a2, double a3, double a4)
{
  v6 = a3 - a1;
  v7 = hypot(a3 - a1, a4 - a2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __UIKBGetFlickDirection_block_invoke;
  aBlock[3] = &__block_descriptor_40_e11_q24__0q8d16l;
  *&aBlock[4] = v7;
  v8 = _Block_copy(aBlock);
  v9.n128_f64[0] = atan2(a2 - a4, v6);
  if (v9.n128_f64[0] < 0.0)
  {
    v9.n128_f64[0] = v9.n128_f64[0] + 6.28318531;
  }

  v10 = v9.n128_f64[0] * 180.0 / 3.14159265;
  if (v10 <= 45.0)
  {
    v12 = v8[2];
    goto LABEL_7;
  }

  if (v10 > 135.0)
  {
    if (v10 <= 225.0)
    {
      v9.n128_u64[0] = 26.0;
      v11 = (v8[2])(v8, 3, v9);
      goto LABEL_9;
    }

    v12 = v8[2];
    if (v10 <= 315.0)
    {
      v9.n128_u64[0] = 26.0;
      v13 = v8;
      v14 = 2;
      goto LABEL_8;
    }

LABEL_7:
    v9.n128_u64[0] = 26.0;
    v13 = v8;
    v14 = 1;
LABEL_8:
    v11 = v12(v13, v14, v9);
    goto LABEL_9;
  }

  v9.n128_u64[0] = 26.0;
  v11 = (v8[2])(v8, 0, v9);
LABEL_9:
  v15 = v11;

  return v15;
}

uint64_t __UIKBGetFlickDirection_block_invoke(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 32) >= a3)
  {
    return a2;
  }

  else
  {
    return -3;
  }
}

void UIKBRectsInit_iPhone(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 displayType];
  if (v9 <= 20)
  {
    if (v9 == 18)
    {
      v18 = *(a1 + 96);
      v19 = *(a1 + 104);
      v20 = *(a1 + 112);
      v21 = *(a1 + 120);
      v22 = 4.0;
      goto LABEL_19;
    }

    if (v9 == 20)
    {
      goto LABEL_20;
    }

LABEL_8:
    if ([v8 rendering] == 1 || objc_msgSend(v8, "rendering") == 33 || objc_msgSend(v8, "rendering") == 34)
    {
      if ([v8 displayTypeHint] != 3)
      {
        goto LABEL_20;
      }

      v18 = *(a1 + 96);
      v19 = *(a1 + 104);
      v20 = *(a1 + 112);
      v21 = *(a1 + 120);
      v22 = 16.0;
LABEL_19:
      *(a1 + 96) = CGRectInset(*&v18, v22, 0.0);
      goto LABEL_20;
    }

    if ([v8 interactionType] == 1)
    {
      if (a4 != 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v34 = [v8 interactionType];
      if (a4 != 4 || v34 != 2)
      {
LABEL_36:
        if ([v8 interactionType] == 1)
        {
          if (a4 != 16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v48 = [v8 interactionType];
          if (a4 != 16 || v48 != 2)
          {
            goto LABEL_20;
          }
        }

        v49 = [v7 visualStyle];
        v50 = [v8 stringForProperty:@"variant-popup-bias"];
        v51 = [v8 variantType];
        v53 = *(a1 + 64);
        v52 = *(a1 + 72);
        v54 = *(a1 + 80);
        v55 = *(a1 + 88);
        v56 = *(a1 + 16);
        v57 = *(a1 + 24);
        IsPortrait = UIKBKeyboardIsPortrait(v7);
        v59 = [v8 displayType];
        v60 = v49 == 106 || IsPortrait;
        v61 = 60.0;
        v62 = 44.0;
        if (v60)
        {
          v61 = 44.0;
          v62 = 30.0;
        }

        v157 = v62;
        if (v59 == 27)
        {
          v63 = v61;
        }

        else
        {
          v63 = v56;
        }

        if (v60)
        {
          v64 = v63;
        }

        else
        {
          v64 = v63 + -1.0;
        }

        v65 = [v8 subtrees];
        v66 = [v65 count] - 1;

        v162 = v64;
        v158 = v66;
        v67 = v64 * v66;
        [v7 frame];
        v69 = v68;
        v159 = v71;
        v160 = v70;
        rect = v72;
        v165 = 0;
        v166 = &v165;
        v167 = 0x2020000000;
        v168 = 0x7FFFFFFFFFFFFFFFLL;
        if (IsPortrait)
        {
          v73 = [v8 subtrees];
          v164[0] = MEMORY[0x1E69E9820];
          v164[1] = 3221225472;
          v164[2] = __UIKBRectsInit_iPhone_block_invoke;
          v164[3] = &unk_1E7113F10;
          v164[4] = &v165;
          [v73 enumerateObjectsUsingBlock:v164];

          v74 = v166[3];
          v75 = 0.0;
          if (v57 >= v63)
          {
            v76 = v57;
          }

          else
          {
            v76 = v63;
          }

          v77 = v76 - v63;
          if (v74 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v75 = v77;
          }

          v161 = v75;
          if (v74 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v67 = v77 + v67;
          }
        }

        else
        {
          v161 = 0.0;
        }

        v80 = v55 + 3.0;
        v81 = 102.0 - v55 <= 0.0;
        if (102.0 - v55 <= 0.0)
        {
          v82 = v52;
        }

        else
        {
          v82 = v52 - (102.0 - v55);
        }

        v83 = v82 + -3.0;
        if (v81)
        {
          v84 = v80;
        }

        else
        {
          v84 = 105.0;
        }

        if (v49 == 106)
        {
          [v8 frame];
          v86 = v85;
          [v7 frame];
          v83 = v83 + -6.0;
          v84 = v84 + 6.0;
          if (v86 > v87 * 0.5)
          {
            [v7 frame];
            v69 = v88 + -384.0;
          }

          rect = 384.0;
        }

        v170.origin.x = v53;
        v170.origin.y = v83;
        v170.size.width = v54;
        v170.size.height = v84;
        v171 = CGRectInset(v170, 0.0, -4.0);
        x = v171.origin.x;
        y = v171.origin.y;
        width = v171.size.width;
        height = v171.size.height;
        if ([v50 isEqualToString:@"right"])
        {
          v96 = 1;
          v97 = x;
        }

        else
        {
          v96 = [v50 isEqualToString:@"strictly-right"];
          if (v96)
          {
            v97 = x;
          }

          else
          {
            v97 = x - v67;
          }
        }

        v98 = v162;
        v99 = v67 + width;
        *v94.i64 = rect + v69;
        v100 = *a1;
        v101 = *(a1 + 16);
        if (IsPortrait)
        {
          v102 = *(a1 + 24);
        }

        else
        {
          v102 = 41.0;
        }

        v103 = y + 8.0 + 1.0 + 2.0;
        if (v69 <= v97 && *v94.i64 >= v99 + v97)
        {
          v104 = v162;
          v105 = v97;
LABEL_130:
          v144 = v100 + (v101 - v104) * 0.5;
          if (v104 == v98)
          {
            v144 = v100;
            v145 = v98;
          }

          else
          {
            v145 = v104;
          }

          *(a1 + 96) = v144;
          *(a1 + 104) = v103;
          *(a1 + 112) = v145;
          *(a1 + 120) = v102;
          if (v105 >= 0.0)
          {
            v146 = v105;
          }

          else
          {
            v146 = 0.0;
          }

          if (v99 + v146 <= *v94.i64)
          {
            v147 = v99;
          }

          else
          {
            v147 = v99 - (v99 + v146 - *v94.i64);
          }

          v176.origin.x = v146;
          v176.origin.y = y;
          v176.size.width = v147;
          v176.size.height = height;
          *(a1 + 64) = CGRectInset(v176, -11.0, 0.0);
          v177.origin.x = v146;
          v177.origin.y = y;
          v177.size.width = v147;
          v177.size.height = height;
          *(a1 + 64) = CGRectInset(v177, -24.0, 0.0);
          _Block_object_dispose(&v165, 8);

          goto LABEL_20;
        }

        v155 = y;
        v156 = height;
        v153 = x;
        v154 = rect + v69;
        v150 = *v94.i64 - (x + width);
        v151 = width;
        *v95.i64 = (v150 - v161) / v162;
        v149 = x - v69;
        *v93.i64 = (x - v69 - v161) / v162;
        v106 = dbl_18A67ECA0[*v93.i64 + *v95.i64 >= 5.0];
        *v94.i64 = *v93.i64 - trunc(*v93.i64);
        v107.f64[0] = NAN;
        v107.f64[1] = NAN;
        v108 = vnegq_f64(v107);
        v109 = *vbslq_s8(v108, v94, v93).i64;
        v110 = floor(*v93.i64);
        if (v109 >= v106)
        {
          v111 = (x - v69 - v161) / v162;
        }

        else
        {
          v111 = v110;
        }

        *v93.i64 = *v95.i64 - trunc(*v95.i64);
        v112 = *vbslq_s8(v108, v93, v95).i64;
        v113 = floor(*v95.i64);
        if (v112 >= v106)
        {
          v114 = (v150 - v161) / v162;
        }

        else
        {
          v114 = v113;
        }

        v152 = v114;
        v115 = y + 8.0 + 1.0 + 2.0;
        v116 = *(a1 + 16);
        v117 = v102;
        v118 = *a1;
        v119 = v103;
        MinX = CGRectGetMinX(*&v100);
        v172.origin.x = v118;
        v172.origin.y = v119;
        v172.size.width = v101;
        v172.size.height = v102;
        v121 = CGRectGetMinX(v172) * 0.5;
        if (v111 <= 0.0 && MinX <= v121)
        {
          v111 = 0.0;
        }

        v173.origin.x = v118;
        v173.origin.y = v119;
        v173.size.width = v101;
        v173.size.height = v102;
        MaxX = CGRectGetMaxX(v173);
        v174.origin.x = v69;
        v174.size.height = v159;
        v174.origin.y = v160;
        v174.size.width = rect;
        v124 = CGRectGetWidth(v174);
        v175.origin.x = v118;
        v175.origin.y = v119;
        v175.size.width = v101;
        v175.size.height = v102;
        v125 = CGRectGetMinX(v175);
        v126 = v118;
        v127 = v124 + v125 * -0.5;
        v128 = v152;
        _NF = v152 > 0.0 || MaxX < v127;
        if (!_NF)
        {
          v128 = 0.0;
        }

        if (v111 + v128 - v158 > -0.3)
        {
          v98 = v162;
          y = v155;
          v105 = v153;
          if (v96)
          {
            if (v128 >= v158)
            {
LABEL_123:
              v104 = v162;
LABEL_124:
              height = v156;
              *v94.i64 = v154;
LABEL_129:
              v100 = v126;
              v103 = v119;
              goto LABEL_130;
            }

            v130 = v161 + v162 * (v158 - v128);
          }

          else
          {
            if (v111 <= v158)
            {
              v140 = v111;
            }

            else
            {
              v140 = v66;
            }

            v130 = v162 * v140;
          }

          v105 = v153 - v130;
          goto LABEL_123;
        }

        v98 = v162;
        y = v155;
        v105 = v153;
        if (v162 <= v157 || v51 > 0xA)
        {
          v104 = v162;
          goto LABEL_114;
        }

        v104 = v162;
        if (((1 << v51) & 0x42A) == 0)
        {
LABEL_114:
          v131 = floor(v111);
          v132 = floor(v128);
          v133 = v104 * (v131 + v132);
          v134 = v153 - v131 * v104;
          v135 = v131 + v132 + 1.0;
          v136 = (v158 / v135);
          v137 = (v135 - vcvtpd_s64_f64((v66 + 1.0) / (v136 + 1.0)));
          v138 = v104 * v137;
          if (((v49 == 106) ^ v96))
          {
            _NF = v132 < v137;
            v139 = v134 + v104 * (v137 - v132);
            if (_NF)
            {
              v105 = v139;
            }

            else
            {
              v105 = v153 - v131 * v104;
            }
          }

          else
          {
            v105 = v134 + v138;
          }

          *v94.i64 = v154;
          v141 = v151 + v133;
          v142 = v102 + 10.0;
          if (v136 >= 2)
          {
            *(a1 + 168) = v156 + ceil(v142);
          }

          v99 = v141 - v138;
          v143 = ceil(v142 * v136);
          y = v155 - v143;
          height = v156 + v143;
          goto LABEL_129;
        }

        v128 = floor(v150 / v157);
        v111 = floor(v149 / v157);
        if (v111 + v128 < v158)
        {
          v104 = v157;
          goto LABEL_114;
        }

        v99 = v157 * v158 + v151;
        if (v96)
        {
          if (v128 >= v158)
          {
LABEL_147:
            v104 = v157;
            goto LABEL_124;
          }

          v148 = v158 - v128;
        }

        else if (v111 <= v158)
        {
          v148 = v111;
        }

        else
        {
          v148 = v66;
        }

        v105 = v153 - v157 * v148;
        goto LABEL_147;
      }
    }

    v35 = *(a1 + 64);
    v37 = *(a1 + 80);
    v36 = *(a1 + 88);
    v38 = 111.0 - v36;
    v39 = *(a1 + 72) - (111.0 - v36);
    v40 = v36 + 3.0;
    if (v38 <= 0.0)
    {
      v41 = *(a1 + 72);
    }

    else
    {
      v41 = v39;
    }

    if (v38 <= 0.0)
    {
      v42 = v40;
    }

    else
    {
      v42 = 114.0;
    }

    v43 = UIKBPopupBiasForKey(v7, v8);
    v44 = v37 + 72.0;
    if (v43 == 30)
    {
      v78 = v35 + -36.0;
      v79 = v37 + 72.0;
      v45 = v35 + -36.0;
    }

    else
    {
      if (v43 == 29)
      {
        v45 = v35 + -1.0;
        v46 = v35 + -1.0 + -36.0;
        v47 = 3.0;
      }

      else
      {
        if (v43 != 21)
        {
          v45 = v35 + -36.0;
          v78 = v35 + -36.0 + 25.0;
          v79 = v44 + -50.0;
          goto LABEL_78;
        }

        v45 = v35 + -71.0;
        v46 = v35 + -71.0 + 36.0;
        v47 = -3.0;
      }

      v78 = v46 + v47;
      v79 = v37 + 72.0;
    }

LABEL_78:
    *(a1 + 96) = v78;
    *(a1 + 104) = v41 + -2.0;
    *(a1 + 112) = v79;
    *(a1 + 120) = v38 + 16.0;
    *(a1 + 64) = v45;
    *(a1 + 72) = v41;
    *(a1 + 80) = v44;
    *(a1 + 88) = v42;
    goto LABEL_20;
  }

  switch(v9)
  {
    case 21:
      v23 = *(a1 + 96);
      v24 = *(a1 + 104);
      v25 = *(a1 + 112);
      v26 = *(a1 + 120);
      v27 = 4.0;
      break;
    case 25:
      v23 = *(a1 + 96);
      v24 = *(a1 + 104);
      v25 = *(a1 + 112);
      v26 = *(a1 + 120);
      v27 = 6.0;
      break;
    case 23:
      __asm { FMOV            V2.2D, #-20.0 }

      v14 = vaddq_f64(*(a1 + 48), _Q2);
      __asm { FMOV            V2.2D, #0.5 }

      v16 = vrndaq_f64(vaddq_f64(*(a1 + 32), vmulq_f64(v14, _Q2)));
      __asm { FMOV            V1.2D, #20.0 }

      *(a1 + 96) = v16;
      *(a1 + 112) = _Q1;
      goto LABEL_20;
    default:
      goto LABEL_8;
  }

  v169 = CGRectInset(*&v23, v27, 0.0);
  v28 = v169.origin.x;
  v29 = v169.origin.y;
  v30 = v169.size.width;
  v31 = v169.size.height;
  v32 = UIKBKeyboardIsPortrait(v7);
  v33 = v29 + -1.0;
  if (v32)
  {
    v33 = v29;
  }

  *(a1 + 96) = v28;
  *(a1 + 104) = v33;
  *(a1 + 112) = v30;
  *(a1 + 120) = v31;
LABEL_20:
}

void UIKBRectsInit_Wildcat(uint64_t a1, void *a2, void *a3, int a4)
{
  v90 = a2;
  v7 = a3;
  if ([v90 visualStyle] == 106 || objc_msgSend(v90, "visualStyle") == 107)
  {
    v8 = [v7 rendering] == 33;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if ([v90 visualStyle] == 101 && objc_msgSend(v7, "rendering") == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = [v90 visualStyle] == 106 && objc_msgSend(v7, "rendering") == 33;
  }

  v11 = v10 | v9;
  if (v10 | v9)
  {
    v12 = 6;
  }

  else
  {
    v12 = 12;
  }

  v13 = v12;
  v14 = [v7 displayType];
  if (a4 == 16)
  {
LABEL_15:
    x = *(a1 + 96);
    v15 = *(a1 + 104);
    width = *(a1 + 112);
    v17 = *(a1 + 120);
    if (v14 == 24)
    {
      v19 = *(a1 + 96);
      v20 = *(a1 + 112);
      v92 = CGRectInset(*(&v15 - 1), v13, 0.0);
      x = v92.origin.x;
      y = v92.origin.y;
      width = v92.size.width;
      height = v92.size.height;
      if (UIKBKeyboardIsPortrait(v90))
      {
        v15 = y + 17.0;
        v23 = -20.0;
      }

      else
      {
        v15 = y + 24.0;
        v23 = -32.0;
      }

      v17 = height + v23;
    }

LABEL_22:
    *(a1 + 96) = x;
    *(a1 + 104) = v15;
    *(a1 + 112) = width;
    *(a1 + 120) = v17;
    if (UIKBKeyboardIsPortrait(v90))
    {
      v29 = 2;
    }

    else
    {
      v29 = 4;
    }

    *(a1 + 164) = v29;
    if (a4 == 16)
    {
      v30 = [v7 subtrees];
      v31 = [v30 count];

      v32 = v7;
      v33 = v32;
      if (qword_1ED49F100 != v32)
      {
        _MergedGlobals_1174 = 5;
        v34 = [v32 name];
        v35 = [v34 isEqualToString:@"EmojiPopupKey"];

        if (v35)
        {
          v36 = [v33 subtrees];
          _MergedGlobals_1174 = [v36 count];
        }

        objc_storeStrong(&qword_1ED49F100, a3);
      }

      v37 = _MergedGlobals_1174;

      if (v37 < v31)
      {
        v38 = ((v31 + v37 - 1) / v37);
      }

      else
      {
        v38 = 1.0;
      }

      if (v37 < v31)
      {
        v39 = v37;
      }

      else
      {
        v39 = v31;
      }

      if (UIKBKeyboardIsSplit(v90))
      {
        v40 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v41 = [v40 preferencesActions];
        [v41 rivenSizeFactor:54.0];
        v43 = v42;

        v44 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v45 = [v44 preferencesActions];
        [v45 rivenSizeFactor:54.0];
        v47 = v46;
      }

      else
      {
        v43 = 65.0;
        v47 = 66.0;
      }

      v48 = v43 * v39;
      v49 = v38 * v47;
      v50 = round(*(a1 + 64) + (*(a1 + 80) - v48) * 0.5);
      if ((v39 & 1) == 0)
      {
        v50 = v43 * 0.5 + v50;
      }

      v51 = *(a1 + 72) - v49 + 2.0;
      v93 = CGRectInset(*&v50, -30.0, -20.0);
      v52 = v93.origin.x;
      v53 = v93.origin.y;
      v54 = v93.size.width;
      v55 = v93.size.height;
      v56 = 0;
      if (v93.origin.x >= 0.0)
      {
        v57 = v90;
      }

      else
      {
        v57 = v90;
        do
        {
          v52 = v43 + v52;
          ++v56;
        }

        while (v52 < 0.0);
      }

      v58 = v93.size.width + v52;
      while (1)
      {
        [v57 frame];
        if (v58 <= v59 + v60)
        {
          break;
        }

        v52 = v52 - v43;
        --v56;
        v58 = v54 + v52;
        v57 = v90;
      }

      *(a1 + 128) = v52;
      *(a1 + 136) = v53;
      *(a1 + 144) = v54;
      *(a1 + 152) = v55;
      *(a1 + 160) = v56;
      v95.origin.x = v52;
      v95.origin.y = v53;
      v95.size.width = v54;
      v95.size.height = v55;
      *(a1 + 64) = CGRectUnion(*(a1 + 64), v95);
    }
  }

  else
  {
    switch(v14)
    {
      case 0:
      case 7:
      case 24:
        goto LABEL_15;
      case 2:
        if (!v11)
        {
          goto LABEL_64;
        }

        goto LABEL_19;
      case 3:
      case 14:
      case 18:
      case 26:
LABEL_19:
        v24 = *(a1 + 96);
        v25 = *(a1 + 104);
        v26 = *(a1 + 112);
        v27 = *(a1 + 120);
        v28 = v13;
        break;
      case 5:
        if ([v7 rendering] != 1 && objc_msgSend(v7, "rendering") != 33)
        {
          v61 = vdup_n_s32(UIKBKeyboardIsPortrait(v90));
          v62.i64[0] = v61.u32[0];
          v62.i64[1] = v61.u32[1];
          v63 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v62, 0x3FuLL)), xmmword_18A67ECC0, xmmword_18A67ECB0);
          __asm { FMOV            V3.2D, #0.5 }

          *(a1 + 96) = vrndaq_f64(vaddq_f64(*(a1 + 96), vmulq_f64(vsubq_f64(*(a1 + 112), v63), _Q3)));
          *(a1 + 112) = v63;
        }

        goto LABEL_64;
      case 20:
        x = *(a1 + 96);
        v15 = *(a1 + 104);
        width = *(a1 + 112);
        v17 = *(a1 + 120);
        goto LABEL_22;
      case 21:
        v24 = *(a1 + 96);
        v25 = *(a1 + 104);
        v26 = *(a1 + 112);
        v27 = *(a1 + 120);
        if (v26 - v13 > v27)
        {
          v28 = v13;
        }

        else
        {
          v28 = v13 * 0.5;
        }

        break;
      case 23:
        if (v11 == 0 || v8)
        {
          v69 = UIKBKeyboardIsPortrait(v90) || v8;
          v70 = v90;
          if (v69)
          {
            v71 = 18.0;
          }

          else
          {
            v71 = 23.0;
          }

          if (v69)
          {
            v72 = 20.0;
          }

          else
          {
            v72 = 26.0;
          }
        }

        else
        {
          v73 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v74 = [v73 preferencesActions];
          [v74 rivenSizeFactor:20.0];
          v72 = v75;
          v76 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v77 = [v76 preferencesActions];
          [v77 rivenSizeFactor:18.0];
          v71 = v78;

          v70 = v90;
        }

        if ([v70 visualStyle] == 101)
        {
          v71 = v71 + 1.0;
        }

        else if (!v11)
        {
          v79 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v80 = [v79 preferencesActions];
          [v80 rivenSizeFactor:v72];
          v72 = v81;
          v82 = +[UIKeyboardPreferencesController sharedPreferencesController];
          v83 = [v82 preferencesActions];
          [v83 rivenSizeFactor:v71];
          v71 = v84;
        }

        v85 = +[UIKeyboardPreferencesController sharedPreferencesController];
        v86 = [v85 preferencesActions];
        [v86 rivenSizeFactor:1.0];
        if (v87 > 1.0 && [v7 displayTypeHint])
        {
          v88 = [v7 displayTypeHint];

          if (v88 != 5)
          {
            v94 = CGRectInset(*(a1 + 96), v13, 0.0);
            v72 = v94.size.width;
            v71 = v94.size.height;
          }
        }

        else
        {
        }

        v89 = round(*(a1 + 104) + (*(a1 + 120) - v71) * 0.5);
        *(a1 + 96) = round(*(a1 + 96) + (*(a1 + 112) - v72) * 0.5);
        *(a1 + 104) = v89;
        *(a1 + 112) = v72;
        *(a1 + 120) = v71;
        goto LABEL_64;
      case 25:
        if ([v90 visualStyle] != 108)
        {
          goto LABEL_64;
        }

        v24 = *(a1 + 96);
        v25 = *(a1 + 104);
        v26 = *(a1 + 112);
        v27 = *(a1 + 120);
        v28 = 2.0;
        break;
      case 28:
        if (!v11)
        {
          goto LABEL_64;
        }

        v24 = *(a1 + 96);
        v25 = *(a1 + 104);
        v26 = *(a1 + 112);
        v27 = *(a1 + 120);
        v28 = 4.0;
        break;
      default:
        goto LABEL_64;
    }

    *(a1 + 96) = CGRectInset(*&v24, v28, 0.0);
  }

LABEL_64:
}

uint64_t _UIFocusGroupCompare(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v81 = [MEMORY[0x1E696AAA8] currentHandler];
    v82 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    [v81 handleFailureInFunction:v82 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"group1"}];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v83 = [MEMORY[0x1E696AAA8] currentHandler];
  v84 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
  [v83 handleFailureInFunction:v84 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"group2"}];

LABEL_3:
  v6 = [v3 parentGroup];
  v7 = [v5 parentGroup];

  if (v6 != v7)
  {
    v85 = [MEMORY[0x1E696AAA8] currentHandler];
    v86 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    [v85 handleFailureInFunction:v86 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:29 description:@"Comparing groups with different parents is invalid."];
  }

  v8 = [v3 coordinateSpace];
  v9 = [v5 coordinateSpace];
  v10 = v8;
  v11 = v9;
  v12 = v11;
  if (v10 == v11)
  {
    v14 = v11;
    v15 = v10;
  }

  else
  {
    if (v10 && v11)
    {
      v13 = [v10 isEqual:v11];

      if (v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    v10 = [v3 identifier];
    v12 = [v3 coordinateSpace];
    v87 = [v5 identifier];
    v88 = [v5 coordinateSpace];
    [v15 handleFailureInFunction:v14 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:31 description:{@"Trying to compare groups with different coordinate spaces. Group %@ uses %@ while group %@ uses %@.", v10, v12, v87, v88}];
  }

LABEL_12:
  v16 = [v3 owningEnvironment];
  v17 = [v5 owningEnvironment];
  v18 = v17;
  if (!v16)
  {
    v20 = 0;
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_17:
    v21 = [UIFocusSystem focusSystemForEnvironment:v18];

    if (v20 == v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v19 = [UIFocusSystem focusSystemForEnvironment:v16];
  v20 = v19;
  if (v18)
  {
    goto LABEL_17;
  }

  if (v19)
  {
LABEL_18:
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _UIFocusGroupCompare(_UIFocusGroup * _Nonnull __strong, _UIFocusGroup * _Nonnull __strong)"}];
    [v22 handleFailureInFunction:v23 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:37 description:@"Unable to compare focus groups from different focus systems."];
  }

LABEL_19:
  v24 = [v20 behavior];
  v25 = [v24 shouldUseAccessibilityCompareForFocusGroupsInExternallyPlacedWindows];

  if (v25)
  {
    v26 = _UIFocusEnvironmentContainingView(v16);
    v27 = [v26 _window];

    v28 = _UIFocusEnvironmentContainingView(v18);
    v29 = [v28 _window];

    if (v27 && v29 && v27 != v29 && (([v27 _isExternallyPlaced] & 1) != 0 || (objc_msgSend(v29, "_isExternallyPlaced") & 1) != 0))
    {
      v30 = _UIFocusItemCompare(v27, v29);

      goto LABEL_40;
    }
  }

  v31 = [v3 parentGroup];
  v27 = [v31 owningEnvironment];

  v32 = [v20 _shouldReverseLayoutDirectionForEnvironment:v27];
  v33 = [v20 _shouldReverseLinearWrappingForEnvironment:v27];
  [v3 boundingBox];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [v5 boundingBox];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v91.origin.x = v35;
  v91.origin.y = v37;
  v91.size.width = v39;
  v91.size.height = v41;
  if (CGRectIsNull(v91) || (v92.origin.x = v43, v92.origin.y = v45, v92.size.width = v47, v92.size.height = v49, CGRectIsNull(v92)) || ((v93.origin.x = v35, v93.origin.y = v37, v93.size.width = v39, v93.size.height = v41, v94 = CGRectStandardize(v93), x = v94.origin.x, y = v94.origin.y, width = v94.size.width, height = v94.size.height, v94.origin.x = v43, v94.origin.y = v45, v94.size.width = v47, v94.size.height = v49, v95 = CGRectStandardize(v94), v54 = v95.origin.x, v55 = v95.origin.y, v56 = v95.size.width, v57 = v95.size.height, v89 = y, v90 = x, v95.origin.x = x, v95.origin.y = y, v95.size.width = width, v95.size.height = height, v58 = CGRectGetMinX(v95) + 0.0001, v96.origin.x = v54, v96.origin.y = v55, v96.size.width = v56, v96.size.height = v57, v58 <= CGRectGetMaxX(v96)) ? (v97.origin.y = v89, v97.origin.x = x, v97.size.width = width, v97.size.height = height, v60 = CGRectGetMaxX(v97) + -0.0001, v98.origin.x = v54, v98.origin.y = v55, v98.size.width = v56, v98.size.height = v57, v59 = v60 >= CGRectGetMinX(v98)) : (v59 = 0), (v99.origin.x = x, v99.origin.y = v89, v99.size.width = width, v99.size.height = height, v61 = CGRectGetMinY(v99) + 0.0001, v100.origin.x = v54, v100.origin.y = v55, v100.size.width = v56, v100.size.height = v57, v61 > CGRectGetMaxY(v100)) || ((v101.origin.x = v90, v101.origin.y = v89, v101.size.width = width, v101.size.height = height, v62 = CGRectGetMaxY(v101) + -0.0001, v102.origin.x = v54, v102.origin.y = v55, v102.size.width = v56, v102.size.height = v57, v62 >= CGRectGetMinY(v102)) ? (v63 = v59) : (v63 = 0), !v63)))
  {
    [v3 boundingBox];
    v65 = v76;
    v67 = v77;
    v69 = v78;
    v71 = v79;
    [v5 boundingBox];
  }

  else
  {
    [v3 primaryRect];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    [v5 primaryRect];
  }

  v30 = _UIFocusRectCompare(v32, v33, v65, v67, v69, v71, v72, v73, v74, v75);
LABEL_40:

  return v30;
}

id _UIFocusGroupIdentifierForInstance(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull _UIFocusGroupIdentifierForInstance(id  _Nonnull __strong)"];
    [v7 handleFailureInFunction:v8 file:@"_UIFocusGroupHelperFuncs.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"object"}];
  }

  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"<%@: %p>", v4, v1];

  return v5;
}

id _UIFocusGroupInferIdentifierForEnvironment(void *a1)
{
  v1 = a1;
  v2 = [UIFocusSystem focusSystemForEnvironment:v1];
  v3 = [v2 behavior];
  v4 = [v3 focusGroupContainmentBehavior];

  v5 = [v1 focusItemContainer];
  v6 = v5;
  if ((v4 & 8) != 0)
  {
    v14 = v1;
    v15 = _UIFocusEnvironmentRotaryFocusMovementAxis(v14);
    if (v15 != -1)
    {
      v16 = v15;
      if (_UIInternalPreferencesRevisionOnce != -1)
      {
        dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
      }

      v17 = _UIInternalPreferencesRevisionVar;
      if (_UIInternalPreferencesRevisionVar >= 1)
      {
        v20 = _UIInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis;
        if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis)
        {
          while (v17 >= v20)
          {
            _UIInternalPreferenceSync(v17, &_UIInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis, @"FocusGroupSeparateNestedEqualRotaryMovementAxis", _UIInternalPreferenceUpdateBool);
            v20 = _UIInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis;
            if (v17 == _UIInternalPreference_FocusGroupSeparateNestedEqualRotaryMovementAxis)
            {
              goto LABEL_13;
            }
          }

          if (byte_1EA95E52C)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_13:
      v18 = [v14 parentFocusEnvironment];
      v19 = _UIFocusEnvironmentResolvedRotaryFocusMovementAxis(v18, 0);

      if (v16 != v19)
      {
LABEL_26:
        v7 = _UIFocusGroupIdentifierForInstance(v14);
        goto LABEL_27;
      }
    }

    v7 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v7 = 0;
  if (_UIFocusItemContainerIsScrollableContainer(v5) && (v4 & 6) != 0)
  {
    v8 = v1;
    v9 = _UIFocusItemScrollableContainerPrimaryAxis(v6);
    v10 = _UIFocusNearestAncestorEnvironmentScrollableContainer(v8, 1);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 scrollableContainer];
      v13 = _UIFocusItemScrollableContainerPrimaryAxis(v12);

      if ((v4 & 4) == 0)
      {
LABEL_6:
        v7 = 0;
        if ((v4 & 2) == 0 || v11)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
      if ((v4 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v11 && v9 == v13)
    {
      v7 = 0;
LABEL_20:

      goto LABEL_27;
    }

LABEL_19:
    v7 = _UIFocusGroupIdentifierForInstance(v8);
    goto LABEL_20;
  }

LABEL_28:

  return v7;
}

id _UIFocusGroupUnresolvedIdentifierForEnvironment(void *a1)
{
  v1 = a1;
  if (_UIFocusEnvironmentIsViewOrViewControllerOrRespondsToSelector(v1))
  {
    [v1 focusGroupIdentifier];
  }

  else
  {
    _UIFocusGroupInferIdentifierForEnvironment(v1);
  }
  v2 = ;

  return v2;
}

uint64_t _UIFocusGroupPriorityForItem(void *a1, id a2, id a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 1000;
  if (v5 != a3)
  {
    v7 = 0;
  }

  if (v5 == a2)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v7;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v6 _systemDefaultFocusGroupPriority];
    if (v9 > v8)
    {
      v8 = v9;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v6 focusGroupPriority];
    if (v10 > v8)
    {
      v8 = v10;
    }
  }

  return v8;
}

void sub_189AC68FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = UIKBHandwritingStrokeView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void clipHandwritingPath(uint64_t a1, int *a2)
{
  v4 = *(a2 + 1);
  if ((*(a1 + 64) & 1) == 0)
  {
    CGContextMoveToPoint(*a1, *(a1 + 40), *(a1 + 48));
  }

  v5 = *a2;
  if (*a2)
  {
    if (v5 == 1)
    {
      v6 = (a1 + 40);
      v30 = *(a1 + 40);
      v31 = v4[1];
      if (v30 >= *v4)
      {
        v32 = *v4;
      }

      else
      {
        v32 = *(a1 + 40);
      }

      v34 = *(a1 + 48);
      v33 = *(a1 + 56);
      v35 = v32 - v33 * 0.5;
      if (v34 >= v31)
      {
        v36 = v4[1];
      }

      else
      {
        v36 = *(a1 + 48);
      }

      v37 = v36 - v33 * 0.5;
      v38 = v33 + vabdd_f64(*v4, v30);
      v39 = v33 + vabdd_f64(v31, v34);
      v40 = CGRectIntersectsRect(*(a1 + 8), *&v35);
      v28 = v40;
      if (v40)
      {
        CGContextAddLineToPoint(*a1, *v4, v4[1]);
      }

      v29 = *v4;
    }

    else
    {
      if (v5 != 2)
      {
        v28 = 0;
        goto LABEL_35;
      }

      v6 = (a1 + 40);
      v7 = *(a1 + 40);
      v8 = *v4;
      v9 = v4[1];
      if (v7 >= *v4)
      {
        v10 = *v4;
      }

      else
      {
        v10 = *(a1 + 40);
      }

      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = v12 * 0.5;
      v14 = v10 - v12 * 0.5;
      if (v11 >= v9)
      {
        v15 = v4[1];
      }

      else
      {
        v15 = *(a1 + 48);
      }

      v16 = v15 - v13;
      v17 = v12 + vabdd_f64(v8, v7);
      v18 = v4[2];
      v19 = v12 + vabdd_f64(v9, v11);
      if (v8 >= v18)
      {
        v20 = v4[2];
      }

      else
      {
        v20 = *v4;
      }

      v21 = v20 - v13;
      v22 = v4[3];
      if (v9 >= v22)
      {
        v23 = v4[3];
      }

      else
      {
        v23 = v4[1];
      }

      v24 = v23 - v13;
      v25 = v12 + vabdd_f64(v18, v8);
      v26 = v12 + vabdd_f64(v22, v9);
      v42 = CGRectUnion(*&v14, *&v21);
      v27 = CGRectIntersectsRect(*(a1 + 8), v42);
      v28 = v27;
      if (v27)
      {
        CGContextAddQuadCurveToPoint(*a1, *v4, v4[1], v4[2], v4[3]);
      }

      v29 = *(v4 + 1);
    }

    *v6 = v29;
  }

  else
  {
    v43.size.width = *(a1 + 56);
    v43.origin.x = *v4 - v43.size.width * 0.5;
    v43.origin.y = v4[1] - v43.size.width * 0.5;
    v43.size.height = v43.size.width;
    v41 = CGRectIntersectsRect(*(a1 + 8), v43);
    v28 = v41;
    if (v41)
    {
      CGContextMoveToPoint(*a1, *v4, v4[1]);
    }

    *(a1 + 40) = *v4;
  }

LABEL_35:
  *(a1 + 64) = v28;
}

void sub_189AC9134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = UIKBHandwritingView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *___ZL40getAudioServicesPlaySystemSoundSymbolLocv_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49A750)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL23AudioToolboxLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7114020;
    v7 = 0;
    qword_1ED49A750 = _sl_dlopen();
  }

  v2 = qword_1ED49A750;
  if (!qword_1ED49A750)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioToolboxLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"UIKBHandwritingView.mm" lineNumber:43 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AudioServicesPlaySystemSound");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_5_15 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t ___ZL23AudioToolboxLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49A750 = result;
  return result;
}

void sub_189ACE5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189ADDC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose((v36 - 216), 8);
  _Block_object_dispose((v36 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_189AE1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_labelColorSecondary(int a1)
{
  v2 = _AXDarkenSystemColors();
  v3 = UIKBColorBlack_Alpha80;
  if (v2)
  {
    v4 = UIKBColorWhite_Alpha85;
  }

  else
  {
    v3 = UIKBColorBlack_Alpha60;
    v4 = UIKBColorWhite_Alpha50;
  }

  if (!a1)
  {
    v3 = v4;
  }

  v5 = *v3;

  return v5;
}

uint64_t geometryPositionSort(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = -1;
  if (a3)
  {
    v8 = [a3 BOOLValue];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (!v8)
    {
      v7 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = v5;
  v11 = v6;
  [v10 frame];
  v13 = v12;
  [v11 frame];
  if (v13 <= v14)
  {
    [v10 frame];
    v16 = v15;
    [v11 frame];
    if (v16 >= v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }
  }

  return v9;
}

void sub_189B15C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak((v48 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void centroidCGPathApplierFunction(void *a1, uint64_t a2)
{
  v3 = a1;
  if (*a2 == 1)
  {
    v8 = v3;
    v5 = [v3 lastObject];
    v6 = [MEMORY[0x1E696B098] valueWithCGPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    v7 = v5;
  }

  else
  {
    if (*a2)
    {
      goto LABEL_6;
    }

    v4 = MEMORY[0x1E695DF70];
    v8 = v3;
    v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    v6 = [v4 arrayWithObject:v5];
    v7 = v8;
  }

  [v7 addObject:v6];

  v3 = v8;
LABEL_6:
}

void sub_189B189C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGMutablePathRef createMutablePathWithPoints(CGFloat *a1, uint64_t a2, int a3)
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, *a1, a1[1]);
  v7 = 1;
  v8 = 1;
  while (1)
  {
    v9 = &a1[2 * v7];
    if (*v9 == -1.0 && v9[1] == -1.0)
    {
      break;
    }

    v11 = v8;
LABEL_12:
    CGPathAddLineToPoint(Mutable, 0, a1[2 * v11], a1[2 * v11 + 1]);
    v7 = ++v8;
    if (v8 >= a2)
    {
      goto LABEL_13;
    }
  }

  if (v8 + 1 < a2)
  {
    ++v8;
  }

  else
  {
    v8 = 0;
  }

  CGPathMoveToPoint(Mutable, 0, a1[2 * v8], a1[2 * v8 + 1]);
  if (v8)
  {
    v11 = v8;
    goto LABEL_12;
  }

LABEL_13:
  if (a3)
  {
    CGPathCloseSubpath(Mutable);
  }

  memset(&transform, 0, sizeof(transform));
  CGAffineTransformMakeScale(&v14, 1.0, -1.0);
  CGAffineTransformTranslate(&transform, &v14, 0.0, -15.0);
  v12 = CGPathCreateMutableCopyByTransformingPath(Mutable, &transform);
  CGPathRelease(Mutable);
  return v12;
}

unint64_t UIKBIntHash(uint64_t a1)
{
  v1 = 9 * ((~(a1 << 15) + a1) ^ ((~(a1 << 15) + a1) >> 10));
  v2 = (v1 ^ (v1 >> 6)) + ~((v1 ^ (v1 >> 6)) << 11);
  return v2 ^ (v2 >> 16);
}

id _UICalendarSanitizeWithCalendar(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    a1 = [a1 copy];
    v4 = [a1 calendar];

    if (!v4)
    {
      [a1 setCalendar:v3];
    }

    if (v3)
    {
      v5 = [a1 calendar];
      v6 = [v5 isEqual:v3];

      if ((v6 & 1) == 0)
      {
        v7 = [a1 calendar];
        v8 = [v7 dateFromComponents:a1];

        if (!v8)
        {
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSDateComponents * _Nullable _UICalendarSanitizeWithCalendar(NSDateComponents * _Nonnull __strong, NSCalendar * _Nonnull __strong)"}];
          [v11 handleFailureInFunction:v12 file:@"_UICalendarViewHelper.h" lineNumber:92 description:@"Date components yielded an invalid NSDate"];
        }

        v9 = [v3 components:1048606 fromDate:v8];

        a1 = v9;
      }
    }
  }

  return a1;
}

void AXSSensitiveSettingChanged()
{
  +[UIKeyboardLayoutStar accessibilitySensitivityChanged];
  +[UIKBRenderer clearInternalCaches];
  v0 = __cache;
  if (__cache && (v1 = *(__cache + 8)) != 0)
  {

    [v1 purge];
  }

  else
  {
    __cache = 0;
  }
}

uint64_t _nonPersistentCacheForKey(void *a1, const void *a2)
{
  v3 = a1;
  if (!v3)
  {
    goto LABEL_8;
  }

  if (qword_1ED49F1F8 != -1)
  {
    dispatch_once(&qword_1ED49F1F8, &__block_literal_global_128_0);
  }

  v4 = [_MergedGlobals_1181 objectForKey:v3];
  v5 = [v4 CGImage];

  if (!v5)
  {
    if (a2)
    {
      v6 = CFGetTypeID(a2);
      if (v6 == CGImageGetTypeID())
      {
        v7 = [UIImage imageWithCGImage:a2];
        v5 = [v7 CGImage];
        [_MergedGlobals_1181 setObject:v7 forKey:v3];

        goto LABEL_9;
      }
    }

LABEL_8:
    v5 = 0;
  }

LABEL_9:

  return v5;
}

void sub_189B213B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___nonPersistentCacheForKey_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _MergedGlobals_1181;
  _MergedGlobals_1181 = v0;
}

void sub_189B29908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _translateToTIContinuousPathState(uint64_t result)
{
  if ((result - 1) < 6)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void sub_189B2C438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B36838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B3CDA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189B3E2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t keyPositionSortByHorizontalDistanceFromPoint(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  [a3 floatValue];
  v8 = v7;
  v9 = v6;
  v10 = v5;
  [v10 frame];
  v11 = v8 - CGRectGetMinX(v38);
  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  [v10 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  v21 = v8 - CGRectGetMaxX(v39);
  if (v21 < 0.0)
  {
    v21 = -v21;
  }

  if (v12 >= v21)
  {
    v21 = v12;
  }

  v22 = v21;
  [v9 frame];
  v23 = v8 - CGRectGetMinX(v40);
  if (v23 >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = -v23;
  }

  [v9 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v41.origin.x = v26;
  v41.origin.y = v28;
  v41.size.width = v30;
  v41.size.height = v32;
  v33 = v8 - CGRectGetMaxX(v41);
  if (v33 < 0.0)
  {
    v33 = -v33;
  }

  if (v24 >= v33)
  {
    v33 = v24;
  }

  v34 = v33;
  if (v22 >= v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = -1;
  }

  if (v22 > v34)
  {
    v36 = 1;
  }

  else
  {
    v36 = v35;
  }

  return v36;
}

void sub_189B47518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189B4ABF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

BOOL isFlickOutOfBounds(double a1, double a2, double a3, double a4)
{
  v6 = +[UIKeyboard activeKeyboard];
  v7 = [v6 interfaceOrientation] - 5;

  v8 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v9 = v7 < 0xFFFFFFFFFFFFFFFELL || v8 == 1;
  v10 = 80.0;
  if (v9)
  {
    v10 = 110.0;
  }

  return vabdd_f64(a2, a4) > v10;
}

void sub_189B52034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

id getFlickString(void *a1, uint64_t a2)
{
  v3 = getFlickPopupInfoArray(a1, @"Strings");
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectAtIndex:a2 + 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_189B556FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189B55A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_189B57684(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __TextInputUILibraryCore_block_invoke_14()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_6 = result;
  return result;
}

id getFlickPopupInfoArray(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    v5 = UIKeyboardGetCurrentInputMode();
    v6 = TIInputModeGetNormalizedIdentifier();

    v7 = UIKeyboardRomanAccentVariants(v4, v6, 38);

    v8 = [v7 objectForKey:@"Direction"];
    v9 = [v8 isEqualToString:@"flick"];

    if (v9)
    {
      v10 = [v7 objectForKey:v3];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id getAFSpeechCorrectionInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFSpeechCorrectionInfoClass_softClass;
  v7 = getAFSpeechCorrectionInfoClass_softClass;
  if (!getAFSpeechCorrectionInfoClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFSpeechCorrectionInfoClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAFSpeechCorrectionInfoClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B586C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B589F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFSpeechMessagesContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFSpeechMessagesContextClass_softClass;
  v7 = getAFSpeechMessagesContextClass_softClass;
  if (!getAFSpeechMessagesContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFSpeechMessagesContextClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAFSpeechMessagesContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B597B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B59ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B5A034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFSpeechRequestOptionsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFSpeechRequestOptionsClass_softClass;
  v7 = getAFSpeechRequestOptionsClass_softClass;
  if (!getAFSpeechRequestOptionsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFSpeechRequestOptionsClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAFSpeechRequestOptionsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B5A21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B5D17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_189B5D8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 176), 8);
  _Unwind_Resume(a1);
}

void getAFOfflineDictationStatusHighQualityKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAFOfflineDictationStatusHighQualityKeySymbolLoc_ptr;
  v9 = getAFOfflineDictationStatusHighQualityKeySymbolLoc_ptr;
  if (!getAFOfflineDictationStatusHighQualityKeySymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary_0();
    v7[3] = dlsym(v1, "AFOfflineDictationStatusHighQualityKey");
    getAFOfflineDictationStatusHighQualityKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFOfflineDictationStatusHighQualityKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIDictationConnection.m" lineNumber:68 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189B5F9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAFOfflineDictationStatusInstalledKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAFOfflineDictationStatusInstalledKeySymbolLoc_ptr;
  v9 = getAFOfflineDictationStatusInstalledKeySymbolLoc_ptr;
  if (!getAFOfflineDictationStatusInstalledKeySymbolLoc_ptr)
  {
    v1 = AssistantServicesLibrary_0();
    v7[3] = dlsym(v1, "AFOfflineDictationStatusInstalledKey");
    getAFOfflineDictationStatusInstalledKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFOfflineDictationStatusInstalledKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIDictationConnection.m" lineNumber:69 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189B5FB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B5FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AssistantServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __getAFSpeechCorrectionInfoClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFSpeechCorrectionInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSpeechCorrectionInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSpeechCorrectionInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:61 description:{@"Unable to find class %s", "AFSpeechCorrectionInfo"}];

    __break(1u);
  }
}

void __getAFSpeechVisualContextAndCorrectionsInfoClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFSpeechVisualContextAndCorrectionsInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSpeechVisualContextAndCorrectionsInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSpeechVisualContextAndCorrectionsInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:64 description:{@"Unable to find class %s", "AFSpeechVisualContextAndCorrectionsInfo"}];

    __break(1u);
  }
}

void *__getAFDictationRestrictedSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AssistantServicesLibrary_0();
  result = dlsym(v2, "AFDictationRestricted");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFDictationRestrictedSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getAFSpeechMessagesContextClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFSpeechMessagesContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSpeechMessagesContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSpeechMessagesContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:65 description:{@"Unable to find class %s", "AFSpeechMessagesContext"}];

    __break(1u);
  }
}

void __getAFLanguageDetectionUserContextClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFLanguageDetectionUserContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFLanguageDetectionUserContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFLanguageDetectionUserContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:62 description:{@"Unable to find class %s", "AFLanguageDetectionUserContext"}];

    __break(1u);
  }
}

void __getAFDictationOptionsClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFDictationOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFDictationOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFDictationOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:59 description:{@"Unable to find class %s", "AFDictationOptions"}];

    __break(1u);
  }
}

void __getAFSpeechRequestOptionsClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFSpeechRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSpeechRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSpeechRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationConnection.m" lineNumber:60 description:{@"Unable to find class %s", "AFSpeechRequestOptions"}];

    __break(1u);
  }
}

void *__getAFPreferencesDidChangeNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_0();
  result = dlsym(v2, "AFPreferencesDidChangeNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49F240 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFOfflineDictationStatusHighQualityKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_0();
  result = dlsym(v2, "AFOfflineDictationStatusHighQualityKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFOfflineDictationStatusHighQualityKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFOfflineDictationStatusInstalledKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_0();
  result = dlsym(v2, "AFOfflineDictationStatusInstalledKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFOfflineDictationStatusInstalledKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFOfflineDictationStatusEmojiRecognitionKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_0();
  result = dlsym(v2, "AFOfflineDictationStatusEmojiRecognitionKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFOfflineDictationStatusEmojiRecognitionKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189B60C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189B60E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189B6117C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189B64AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B6794C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *stringForState(unsigned int a1)
{
  if (a1 > 6)
  {
    return @"Unknown state";
  }

  else
  {
    return off_1E7115598[a1];
  }
}

void sub_189B6AC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSISchemaUEILaunchContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUEILaunchContextClass_softClass;
  v7 = getSISchemaUEILaunchContextClass_softClass;
  if (!getSISchemaUEILaunchContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUEILaunchContextClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUEILaunchContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B6AD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B6D0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B6D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_189B6F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B700B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B722C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getSISchemaUEIDictationInputModeSwitchContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUEIDictationInputModeSwitchContextClass_softClass;
  v7 = getSISchemaUEIDictationInputModeSwitchContextClass_softClass;
  if (!getSISchemaUEIDictationInputModeSwitchContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUEIDictationInputModeSwitchContextClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUEIDictationInputModeSwitchContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B7313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSISchemaUEIDictationInputModeSwitchEndedClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUEIDictationInputModeSwitchEndedClass_softClass;
  v7 = getSISchemaUEIDictationInputModeSwitchEndedClass_softClass;
  if (!getSISchemaUEIDictationInputModeSwitchEndedClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUEIDictationInputModeSwitchEndedClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUEIDictationInputModeSwitchEndedClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B7321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B752EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSISchemaUEIDictationVoiceCommandExecutedClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUEIDictationVoiceCommandExecutedClass_softClass;
  v7 = getSISchemaUEIDictationVoiceCommandExecutedClass_softClass;
  if (!getSISchemaUEIDictationVoiceCommandExecutedClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUEIDictationVoiceCommandExecutedClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUEIDictationVoiceCommandExecutedClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B7824C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSISchemaUUIDClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUUIDClass_softClass;
  v7 = getSISchemaUUIDClass_softClass;
  if (!getSISchemaUUIDClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUUIDClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUUIDClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B7832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFAggregatorClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFAggregatorClass_softClass;
  v7 = getAFAggregatorClass_softClass;
  if (!getAFAggregatorClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFAggregatorClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAFAggregatorClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B79BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7C174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7C3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7C590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7CBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7DAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B7E628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B80518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B80D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B80ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _stringForObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 string];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_softClass;
  v7 = getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_softClass;
  if (!getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B86224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBPrivacyPresenterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4988C0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __OnBoardingKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71153C8;
    v8 = 0;
    qword_1ED4988C0 = _sl_dlopen();
  }

  if (!qword_1ED4988C0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *OnBoardingKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDictationController.m" lineNumber:245 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getOBPrivacyPresenterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDictationController.m" lineNumber:246 description:{@"Unable to find class %s", "OBPrivacyPresenter"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4988B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4988C0 = result;
  return result;
}

Class __getVTUIDictationDataSharingOptInPresenterClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED4988D0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __VoiceTriggerUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71153E0;
    v8 = 0;
    qword_1ED4988D0 = _sl_dlopen();
  }

  if (!qword_1ED4988D0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDictationController.m" lineNumber:146 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VTUIDictationDataSharingOptInPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getVTUIDictationDataSharingOptInPresenterClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDictationController.m" lineNumber:147 description:{@"Unable to find class %s", "VTUIDictationDataSharingOptInPresenter"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED4988C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4988D0 = result;
  return result;
}

uint64_t __CallKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED4988E0 = result;
  return result;
}

void __getSISchemaAutoPunctuationEditClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaAutoPunctuationEdit");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaAutoPunctuationEditClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaAutoPunctuationEditClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:187 description:{@"Unable to find class %s", "SISchemaAutoPunctuationEdit"}];

    __break(1u);
  }
}

void SiriInstrumentationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SiriInstrumentationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SiriInstrumentationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7115410;
    v5 = 0;
    SiriInstrumentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriInstrumentationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SiriInstrumentationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIDictationController.m" lineNumber:167 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SiriInstrumentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriInstrumentationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void __getASRSchemaASRConfusionPairTokenClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ASRSchemaASRConfusionPairToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getASRSchemaASRConfusionPairTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASRSchemaASRConfusionPairTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:195 description:{@"Unable to find class %s", "ASRSchemaASRConfusionPairToken"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationAlternativeTextPairsSelectedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationAlternativeTextPairsSelected");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4988E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationAlternativeTextPairsSelectedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:188 description:{@"Unable to find class %s", "SISchemaUEIDictationAlternativeTextPairsSelected"}];

    __break(1u);
  }
}

void __getSISchemaDictationContentEditedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationContentEdited");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4988F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationContentEditedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:180 description:{@"Unable to find class %s", "SISchemaDictationContentEdited"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationContentEditedTier1Class_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationContentEditedTier1");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED4988F8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationContentEditedTier1Class(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:181 description:{@"Unable to find class %s", "SISchemaUEIDictationContentEditedTier1"}];

    __break(1u);
  }
}

void *__getAFSiriDataSharingOptInStatusGetNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AssistantServicesLibrary_1();
  result = dlsym(v2, "AFSiriDataSharingOptInStatusGetName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED498900 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSISchemaInvocationClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaInvocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED498908 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaInvocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:168 description:{@"Unable to find class %s", "SISchemaInvocation"}];

    __break(1u);
  }
}

void __getSISchemaUEILaunchContextClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEILaunchContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEILaunchContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEILaunchContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:177 description:{@"Unable to find class %s", "SISchemaUEILaunchContext"}];

    __break(1u);
  }
}

void __getSISchemaUEILaunchStartedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEILaunchStarted");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED498910 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEILaunchStartedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:178 description:{@"Unable to find class %s", "SISchemaUEILaunchStarted"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationEnablementPromptShownClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationEnablementPromptShown");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationEnablementPromptShownClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationEnablementPromptShownClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:193 description:{@"Unable to find class %s", "SISchemaUEIDictationEnablementPromptShown"}];

    __break(1u);
  }
}

void __getSISchemaDictationEndPointCancelClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationEndPointCancel");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaDictationEndPointCancelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationEndPointCancelClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:170 description:{@"Unable to find class %s", "SISchemaDictationEndPointCancel"}];

    __break(1u);
  }
}

void __getSISchemaDictationEndPointStopClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationEndPointStop");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaDictationEndPointStopClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationEndPointStopClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:169 description:{@"Unable to find class %s", "SISchemaDictationEndPointStop"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationPartialResultUpdatedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationPartialResultUpdated");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationPartialResultUpdatedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationPartialResultUpdatedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:182 description:{@"Unable to find class %s", "SISchemaUEIDictationPartialResultUpdated"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationInputModeSwitchContextClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationInputModeSwitchContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationInputModeSwitchContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationInputModeSwitchContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:184 description:{@"Unable to find class %s", "SISchemaUEIDictationInputModeSwitchContext"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationInputModeSwitchEndedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationInputModeSwitchEnded");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationInputModeSwitchEndedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationInputModeSwitchEndedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:186 description:{@"Unable to find class %s", "SISchemaUEIDictationInputModeSwitchEnded"}];

    __break(1u);
  }
}

void __getSISchemaUEILaunchEndedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEILaunchEnded");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEILaunchEndedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEILaunchEndedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:179 description:{@"Unable to find class %s", "SISchemaUEILaunchEnded"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationVoiceCommandExecutedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationVoiceCommandExecuted");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationVoiceCommandExecutedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationVoiceCommandExecutedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:189 description:{@"Unable to find class %s", "SISchemaUEIDictationVoiceCommandExecuted"}];

    __break(1u);
  }
}

void __getSISchemaUUIDClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUUID");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUUIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUUIDClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:183 description:{@"Unable to find class %s", "SISchemaUUID"}];

    __break(1u);
  }
}

void __getAFAggregatorClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFAggregator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFAggregatorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFAggregatorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:228 description:{@"Unable to find class %s", "AFAggregator"}];

    __break(1u);
  }
}

void __getSISchemaDictationContextClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaDictationContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:171 description:{@"Unable to find class %s", "SISchemaDictationContext"}];

    __break(1u);
  }
}

void __getSISchemaDictationAlternativesPresentClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationAlternativesPresent");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED498918 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationAlternativesPresentClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:174 description:{@"Unable to find class %s", "SISchemaDictationAlternativesPresent"}];

    __break(1u);
  }
}

void __getSISchemaDictationTranscriptionMetadataClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationTranscriptionMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED498920 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationTranscriptionMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:173 description:{@"Unable to find class %s", "SISchemaDictationTranscriptionMetadata"}];

    __break(1u);
  }
}

void __getSISchemaLocaleIdentifierClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaLocaleIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaLocaleIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaLocaleIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:172 description:{@"Unable to find class %s", "SISchemaLocaleIdentifier"}];

    __break(1u);
  }
}

void __getSISchemaDictationAlternativesViewedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationAlternativesViewed");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaDictationAlternativesViewedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationAlternativesViewedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:175 description:{@"Unable to find class %s", "SISchemaDictationAlternativesViewed"}];

    __break(1u);
  }
}

void __getSISchemaDictationAlternativeSelectedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaDictationAlternativeSelected");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaDictationAlternativeSelectedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaDictationAlternativeSelectedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:176 description:{@"Unable to find class %s", "SISchemaDictationAlternativeSelected"}];

    __break(1u);
  }
}

void __getAFDictationDiscoverabilitySignalsStreamManagerClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_1();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFDictationDiscoverabilitySignalsStreamManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFDictationDiscoverabilitySignalsStreamManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFDictationDiscoverabilitySignalsStreamManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:231 description:{@"Unable to find class %s", "AFDictationDiscoverabilitySignalsStreamManager"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationInputModeSwitchStartedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationInputModeSwitchStarted");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationInputModeSwitchStartedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationInputModeSwitchStartedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:185 description:{@"Unable to find class %s", "SISchemaUEIDictationInputModeSwitchStarted"}];

    __break(1u);
  }
}

Class __getRTIDocumentRequestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED498930)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __RemoteTextInputLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7115440;
    v8 = 0;
    qword_1ED498930 = _sl_dlopen();
  }

  if (!qword_1ED498930)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RemoteTextInputLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDictationController.m" lineNumber:202 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RTIDocumentRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTIDocumentRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDictationController.m" lineNumber:203 description:{@"Unable to find class %s", "RTIDocumentRequest"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED498928 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RemoteTextInputLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED498930 = result;
  return result;
}

void __getSISchemaUEIDictationVoiceCommandUndoTapActionClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationVoiceCommandUndoTapAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationVoiceCommandUndoTapActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationVoiceCommandUndoTapActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:190 description:{@"Unable to find class %s", "SISchemaUEIDictationVoiceCommandUndoTapAction"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationVoiceCommandDisambiguationAction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationVoiceCommandDisambiguationActionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationVoiceCommandDisambiguationActionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:191 description:{@"Unable to find class %s", "SISchemaUEIDictationVoiceCommandDisambiguationAction"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationEuclidSpeechAlternativesSelected");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationEuclidSpeechAlternativesSelectedClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:197 description:{@"Unable to find class %s", "SISchemaUEIDictationEuclidSpeechAlternativesSelected"}];

    __break(1u);
  }
}

void __getSISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1Class_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED498938 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1Class(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:198 description:{@"Unable to find class %s", "SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1"}];

    __break(1u);
  }
}

void __getSISchemaEuclidConfusionPairClass_block_invoke(uint64_t a1)
{
  SiriInstrumentationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SISchemaEuclidConfusionPair");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED498940 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSISchemaEuclidConfusionPairClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationController.m" lineNumber:199 description:{@"Unable to find class %s", "SISchemaEuclidConfusionPair"}];

    __break(1u);
  }
}

void sub_189B8B944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_189B8C0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B8D088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAFSpeechPhraseClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAFSpeechPhraseClass_softClass;
  v7 = getAFSpeechPhraseClass_softClass;
  if (!getAFSpeechPhraseClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAFSpeechPhraseClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getAFSpeechPhraseClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B8D54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B8D678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B8D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *SpeechLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SpeechLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SpeechLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71159A0;
    v6 = 0;
    SpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpeechLibraryCore_frameworkLibrary;
  if (!SpeechLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpeechLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIDictationUtilities.m" lineNumber:54 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

id getSFSpeechAssetManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSFSpeechAssetManagerClass_softClass;
  v7 = getSFSpeechAssetManagerClass_softClass;
  if (!getSFSpeechAssetManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSFSpeechAssetManagerClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSFSpeechAssetManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B90D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B9102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B91158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B923B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189B9534C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_189B957CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 136), 8);
  _Unwind_Resume(a1);
}

void __getAFSpeechInterpretationClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFSpeechInterpretation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSpeechInterpretationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSpeechInterpretationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationUtilities.m" lineNumber:60 description:{@"Unable to find class %s", "AFSpeechInterpretation"}];

    __break(1u);
  }
}

uint64_t __AssistantServicesLibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary_2 = result;
  return result;
}

void __getAFSpeechPhraseClass_block_invoke(uint64_t a1)
{
  AssistantServicesLibrary_2();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AFSpeechPhrase");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAFSpeechPhraseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAFSpeechPhraseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationUtilities.m" lineNumber:61 description:{@"Unable to find class %s", "AFSpeechPhrase"}];

    __break(1u);
  }
}

uint64_t __SpeechLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpeechLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSFSpeechAssetManagerClass_block_invoke(uint64_t a1)
{
  SpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSpeechAssetManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSpeechAssetManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFSpeechAssetManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationUtilities.m" lineNumber:56 description:{@"Unable to find class %s", "SFSpeechAssetManager"}];

    __break(1u);
  }
}

void __getSFEntitledAssetConfigClass_block_invoke(uint64_t a1)
{
  SpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFEntitledAssetConfig");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49F2C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFEntitledAssetConfigClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationUtilities.m" lineNumber:57 description:{@"Unable to find class %s", "SFEntitledAssetConfig"}];

    __break(1u);
  }
}

void __trimAttachmentCharactersAndWhiteSpaceInString_block_invoke()
{
  v4 = -4;
  v0 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v4 length:1];
  v1 = [MEMORY[0x1E696AD48] whitespaceCharacterSet];
  [v1 addCharactersInString:v0];
  v2 = [v1 copy];
  v3 = qword_1ED49F2D0;
  qword_1ED49F2D0 = v2;
}

id getSUICFlamesViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_13_2;
  v7 = _MergedGlobals_13_2;
  if (!_MergedGlobals_13_2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSUICFlamesViewClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getSUICFlamesViewClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189B99214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSUICFlamesViewClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED498EF0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SiriUICoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71159D8;
    v8 = 0;
    qword_1ED498EF0 = _sl_dlopen();
  }

  if (!qword_1ED498EF0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SiriUICoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDictationView.m" lineNumber:60 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SUICFlamesView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSUICFlamesViewClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDictationView.m" lineNumber:61 description:{@"Unable to find class %s", "SUICFlamesView"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_13_2 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED498EF0 = result;
  return result;
}

void sub_189BA1A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getEMFEmojiTokenClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1185;
  v7 = _MergedGlobals_1185;
  if (!_MergedGlobals_1185)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getEMFEmojiTokenClass_block_invoke_0;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getEMFEmojiTokenClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189BA506C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEMFEmojiTokenClass_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49F338)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __EmojiFoundationLibraryCore_block_invoke_1;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7115AE0;
    v8 = 0;
    qword_1ED49F338 = _sl_dlopen();
  }

  if (!qword_1ED49F338)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIKeyboardEmoji.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("EMFEmojiToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIKeyboardEmoji.m" lineNumber:19 description:{@"Unable to find class %s", "EMFEmojiToken"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1185 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EmojiFoundationLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  qword_1ED49F338 = result;
  return result;
}

__CFString *_NSStringFromUIWindowingControlStyleType(uint64_t a1)
{
  v1 = @"automatic";
  if (a1 == 1)
  {
    v1 = @"unified";
  }

  if (a1 == 2)
  {
    return @"minimal";
  }

  else
  {
    return v1;
  }
}

void sub_189BA78D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryPrepopulated()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryPrepopulatedSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryPrepopulatedSymbolLoc_ptr;
  if (!getEMFEmojiCategoryPrepopulatedSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryPrepopulated");
    getEMFEmojiCategoryPrepopulatedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryPrepopulated(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:42 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA7A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryPeople()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryPeopleSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryPeopleSymbolLoc_ptr;
  if (!getEMFEmojiCategoryPeopleSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryPeople");
    getEMFEmojiCategoryPeopleSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryPeople(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:34 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA7B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryNature()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryNatureSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryNatureSymbolLoc_ptr;
  if (!getEMFEmojiCategoryNatureSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryNature");
    getEMFEmojiCategoryNatureSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryNature(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:35 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryFoodAndDrink()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryFoodAndDrinkSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryFoodAndDrinkSymbolLoc_ptr;
  if (!getEMFEmojiCategoryFoodAndDrinkSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryFoodAndDrink");
    getEMFEmojiCategoryFoodAndDrinkSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryFoodAndDrink(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:36 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA7E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryActivity()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryActivitySymbolLoc_ptr;
  v9 = getEMFEmojiCategoryActivitySymbolLoc_ptr;
  if (!getEMFEmojiCategoryActivitySymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryActivity");
    getEMFEmojiCategoryActivitySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryActivity(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:37 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA7FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryTravelAndPlaces()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryTravelAndPlacesSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryTravelAndPlacesSymbolLoc_ptr;
  if (!getEMFEmojiCategoryTravelAndPlacesSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryTravelAndPlaces");
    getEMFEmojiCategoryTravelAndPlacesSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryTravelAndPlaces(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189BA8128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getEMFEmojiCategoryObjects()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getEMFEmojiCategoryObjectsSymbolLoc_ptr;
  v9 = getEMFEmojiCategoryObjectsSymbolLoc_ptr;
  if (!getEMFEmojiCategoryObjectsSymbolLoc_ptr)
  {
    v1 = EmojiFoundationLibrary_0();
    v7[3] = dlsym(v1, "EMFEmojiCategoryObjects");
    getEMFEmojiCategoryObjectsSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryObjects(void)"];
    [v4 handleFailureInFunction:v5 file:@"UIKeyboardEmojiCategory.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}