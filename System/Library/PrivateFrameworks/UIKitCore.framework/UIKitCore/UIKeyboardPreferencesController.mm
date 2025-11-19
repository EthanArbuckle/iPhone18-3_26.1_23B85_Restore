@interface UIKeyboardPreferencesController
+ (id)sharedPreferencesController;
- (BOOL)BOOLForKey:(int)a3;
- (BOOL)BOOLForPreferenceKey:(id)a3;
- (BOOL)allEnabledInputModesAreValid;
- (BOOL)colorAdaptiveKeyboardBackdropEnabled;
- (BOOL)colorAdaptiveKeyboardEnabled;
- (BOOL)currentInputModeSupportsCrescendo;
- (BOOL)defaultGlobeAsEmojiKeySetting;
- (BOOL)enableProKeyboard;
- (BOOL)inputModeSupportsCrescendo:(id)a3 screenTraits:(id)a4;
- (BOOL)isDictationAsPrimaryInputMode;
- (BOOL)isPasswordAutoFillAllowed;
- (BOOL)isPreferenceKeyLockedDown:(id)a3;
- (BOOL)keyboardLanguageIndicatorEnabled;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)showSensitiveUI;
- (BOOL)spaceConfirmationEnabled;
- (BOOL)useHardwareGlobeKeyAsEmojiKey;
- (UIKeyboardPreferencesController)init;
- (double)rivenSizeFactor:(double)a3;
- (id)inputModeUpdateTime;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)sb_defaults;
- (id)valueForKey:(int)a3;
- (id)valueForPreferenceKey:(id)a3;
- (int64_t)compactAssistantBarPersistentLocation;
- (int64_t)handBias;
- (int64_t)visceral;
- (void)_configurePreferences;
- (void)dealloc;
- (void)forwardInvocation:(id)a3;
- (void)performedFirstReachableKeyboardInteraction;
- (void)preferencesControllerChanged:(id)a3;
- (void)saveInputModes:(id)a3;
- (void)setCompactAssistantBarPersistentLocation:(int64_t)a3;
- (void)setDictationAsPrimaryInputMode:(BOOL)a3;
- (void)setDictationAutoPunctuation:(BOOL)a3;
- (void)setEnableProKeyboard:(BOOL)a3;
- (void)setEnabledDictationLanguages:(id)a3;
- (void)setHandBias:(int64_t)a3;
- (void)setLanguageAwareInputModeLastUsed:(id)a3;
- (void)setLastUsedDictationLanguages:(id)a3;
- (void)setValue:(id)a3 forKey:(int)a4;
- (void)setValue:(id)a3 forPreferenceKey:(id)a4;
- (void)setVisceral:(int64_t)a3;
- (void)synchronizePreferences;
- (void)touchSynchronizePreferencesTimer;
@end

@implementation UIKeyboardPreferencesController

+ (id)sharedPreferencesController
{
  if (_MergedGlobals_1169 != -1)
  {
    dispatch_once(&_MergedGlobals_1169, &__block_literal_global_341);
  }

  v3 = qword_1ED49EFA8;

  return v3;
}

void __62__UIKeyboardPreferencesController_sharedPreferencesController__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardPreferencesController);
  v1 = qword_1ED49EFA8;
  qword_1ED49EFA8 = v0;
}

- (UIKeyboardPreferencesController)init
{
  v9.receiver = self;
  v9.super_class = UIKeyboardPreferencesController;
  v2 = [(UIKeyboardPreferencesController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(UIKeyboardPreferencesController *)v2 _configurePreferences];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69D9908];
    v6 = [MEMORY[0x1E69D9688] sharedPreferencesController];
    [v4 addObserver:v3 selector:sel_preferencesControllerChanged_ name:v5 object:v6];

    v7 = v3;
  }

  return v3;
}

- (void)_configurePreferences
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v4 = MEMORY[0x1E695E118];
  [v3 _configureKey:@"YukonMagnifiersDisabled" domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x1E695E118]];

  v5 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  [v5 _configureKey:@"GesturesEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v6];

  v7 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v7 _configureKey:@"HandwritingAutoConfirmationEnabled" domain:@"com.apple.InputModePreferences" defaultValue:v4];

  v8 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v8 _configureKey:@"HandwritingAutoConfirmationMinTimeout" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E658];

  v9 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v9 _configureKey:@"HandwritingAutoConfirmationMaxTimeout" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E668];

  v10 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v11 = MEMORY[0x1E695E110];
  [v10 _configureKey:@"DidShowGestureKeyboardIntroduction" domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x1E695E110]];

  v12 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v12 _configureKey:@"SwipeDeleteWordEnabled" domain:@"com.apple.keyboard" defaultValue:v11];

  v13 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v13 _configureKey:@"RepeatDeleteWordEnabled" domain:@"com.apple.keyboard" defaultValue:v11];

  v14 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v14 _configureKey:@"RepeatDeleteWordFirstDelay" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E678];

  v15 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v15 _configureKey:@"RepeatDeleteWordRepeatInterfal" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E678];

  v16 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v16 _configureKey:@"RepeatDeleteWordCountForDecrement" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE30EE0];

  if (+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 2.0;
  }

  v18 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [v18 _configureKey:@"DictationMenuReturnPauseInterval" domain:@"com.apple.keyboard" defaultValue:v19];

  v20 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v20 _configureKey:@"DetachHardwareKeyboardDelayInterval" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE30EF8];

  v21 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v21 _configureKey:@"ShowPasswordKeyboardInVideo" domain:@"com.apple.keyboard" defaultValue:v11];

  v22 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v22 _configureKey:@"ShowKeyboardButtonOnDictationPopover" domain:@"com.apple.keyboard" defaultValue:v11];

  v23 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v23 _configureKey:@"DictationCommandTipsEnabled" domain:@"com.apple.keyboard" defaultValue:v11];

  v24 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v24 _configureKey:@"DictationWordwiseBackspaceEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];

  v25 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v25 _configureKey:@"ShowDockItemTouchArea" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  v26 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v26 _configureKey:@"KeyboardDockItemHitAreaReductionPercent" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EFE30F10];

  v27 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v27 _configureKey:@"DidShowInlineCompletionEducationTip" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  v28 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v28 _configureKey:@"InlineCompletionAcceptedBySpaceEventCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EFE30F28];

  v29 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v29 _configureKey:@"UseDotKeyOvalHitArea" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  v30 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v30 _configureKey:@"ShowDotKeyDebugHitArea" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  v31 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v31 _configureKey:@"DotKeyHitAreaPercentage" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EFE30F40];
}

- (BOOL)showSensitiveUI
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 deviceStateIsLocked];

  if (!v3)
  {
    return 1;
  }

  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v5 = [v4 preferencesActions];
  v6 = [v5 sb_defaults];
  v7 = [v6 BOOLForKey:@"SBSensitiveUIEnabled"];

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v9 = [v8 preferencesActions];
  v10 = [v9 sb_defaults];
  v11 = [v10 objectForKey:@"SBSensitiveUIEnabled"];

  if (v11)
  {
    return v7;
  }

  else
  {
    return 1;
  }
}

- (int64_t)visceral
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D98F8]];
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)keyboardLanguageIndicatorEnabled
{
  v3 = +[UIKeyboard isRedesignedTextCursorEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(UIKeyboardPreferencesController *)self BOOLForPreferenceKey:@"KeyboardLanguageIndicatorEnabled"];
  }

  return v3;
}

- (int64_t)handBias
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9810]];
  if ([@"Left" isEqualToString:v2])
  {
    v3 = 2;
  }

  else
  {
    v3 = [@"Right" isEqualToString:v2];
  }

  return v3;
}

- (id)sb_defaults
{
  if (qword_1ED49EFC8 != -1)
  {
    dispatch_once(&qword_1ED49EFC8, &__block_literal_global_379_1);
  }

  v3 = qword_1ED49EFC0;

  return v3;
}

- (BOOL)currentInputModeSupportsCrescendo
{
  if (![(UIKeyboardPreferencesController *)self crescendoEnabled])
  {
    return 0;
  }

  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 textInputTraits];

  v5 = [v4 keyboardType];
  v6 = +[UIScreen _carScreen];
  v7 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v6, [v6 _interfaceOrientation]);
  if ([v4 isCarPlayIdiom])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 requestedInteractionModel] == 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (!v9 && v5 != 127)
  {
    v10 = 1;
    if ((v5 > 0xB || ((1 << v5) & 0x930) == 0) && v5 != 127)
    {
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      v12 = [v11 currentInputMode];
      v13 = [v12 identifierWithLayouts];

      v10 = [(UIKeyboardPreferencesController *)self inputModeSupportsCrescendo:v13 screenTraits:v7];
    }
  }

  return v10;
}

void __46__UIKeyboardPreferencesController_sb_defaults__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.springboard"];

  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
  }

  v4 = qword_1ED49EFC0;
  qword_1ED49EFC0 = v3;
}

- (BOOL)isPasswordAutoFillAllowed
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 isPasswordAutoFillAllowed];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69D9908] object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardPreferencesController;
  [(UIKeyboardPreferencesController *)&v4 dealloc];
}

- (void)preferencesControllerChanged:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 updateDefaultsWithResults:&__block_literal_global_110_0];
}

void __64__UIKeyboardPreferencesController_preferencesControllerChanged___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:*MEMORY[0x1E69D9868]];
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  [v2 handleLastUsedInputMode:0 withNewInputMode:v4];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"UIKeyboardPreferencesDidUpdateNotification" object:0];
}

- (id)valueForKey:(int)a3
{
  v3 = *&a3;
  v4 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v5 = [v4 valueForKey:v3];

  return v5;
}

- (BOOL)BOOLForKey:(int)a3
{
  v3 = *&a3;
  v4 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  LOBYTE(v3) = [v4 BOOLForKey:v3];

  return v3;
}

- (void)synchronizePreferences
{
  v2 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v2 synchronizePreferences];
}

- (void)touchSynchronizePreferencesTimer
{
  v2 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [v2 touchSynchronizePreferencesTimer];
}

- (void)setValue:(id)a3 forKey:(int)a4
{
  v4 = *&a4;
  v5 = MEMORY[0x1E69D9688];
  v6 = a3;
  v7 = [v5 sharedPreferencesController];
  [v7 setValue:v6 forKey:v4];
}

- (id)valueForPreferenceKey:(id)a3
{
  v3 = MEMORY[0x1E69D9688];
  v4 = a3;
  v5 = [v3 sharedPreferencesController];
  v6 = [v5 valueForPreferenceKey:v4];

  return v6;
}

- (BOOL)BOOLForPreferenceKey:(id)a3
{
  v3 = MEMORY[0x1E69D9688];
  v4 = a3;
  v5 = [v3 sharedPreferencesController];
  v6 = [v5 BOOLForPreferenceKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forPreferenceKey:(id)a4
{
  v5 = MEMORY[0x1E69D9688];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedPreferencesController];
  [v8 setValue:v7 forPreferenceKey:v6];
}

- (void)saveInputModes:(id)a3
{
  v4 = MEMORY[0x1E69D9688];
  v5 = a3;
  v6 = [v4 sharedPreferencesController];
  [v6 updateInputModes:v5];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v8 = [v7 updateEnabledDictationLanguages:1];

  [(UIKeyboardPreferencesController *)self touchSynchronizePreferencesTimer];

  +[_UIKeyboardUsageTracking keyboardExtensionsOnDevice];
}

- (void)setLanguageAwareInputModeLastUsed:(id)a3
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = TIInputModeGetNormalizedIdentifier();
    v5 = [v4 isEqualToString:@"emoji"];

    if (v5)
    {
      v6 = [(UIKeyboardPreferencesController *)self preferencesActions];
      v7 = [v6 inputModeSelectionSequence];

      if ([v7 count])
      {
        v8 = [v7 firstObject];
      }

      else
      {
        v8 = 0;
      }

      v3 = v8;
    }
  }

  if ([v3 length])
  {
    v9 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9868]];
    v57 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v3];
    v10 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v9];
    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    v12 = [v11 inputModeContextIdentifier];

    if (v12)
    {
      v13 = +[UIPeripheralHost sharedInstance];
      v56 = [v13 lastUsedInputModeForCurrentContext];

      if (v56)
      {
        v14 = [v56 identifier];

        v15 = v14;
        goto LABEL_14;
      }

      v56 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v9];
    }

    else
    {
      v56 = v10;
    }

    v15 = v9;
LABEL_14:
    v55 = v15;
    if ((UIKeyboardInputModesEqual(v3, v15) & 1) == 0)
    {
      v16 = TIInputModeGetNormalizedIdentifier();
      v17 = [v16 isEqualToString:@"emoji"];

      if ((v17 & 1) == 0)
      {
        if (([v57 isExtensionInputMode] & 1) == 0 && (objc_msgSend(v56, "isExtensionInputMode") & 1) == 0)
        {
          v18 = TIInputModeGetBaseLanguage();
          v19 = TIInputModeGetBaseLanguage();
          v20 = [v18 isEqualToString:v19];

          if ((v20 & 1) == 0)
          {
            v21 = MEMORY[0x1E696AEC0];
            v22 = [MEMORY[0x1E695DF58] preferredLanguages];
            v23 = [v22 firstObject];
            v24 = v23;
            v25 = @"Unknown";
            if (v23)
            {
              v25 = v23;
            }

            v26 = [v21 stringWithFormat:@"%@.%@", *MEMORY[0x1E69D9B18], v25];
            v27 = TIStatisticGetKey();
            TIStatisticScalarIncrement();
          }
        }

        v28 = +[UIKeyboardInputModeController sharedInputModeController];
        v29 = [v28 inputModeContextIdentifier];

        if (!v29)
        {
          if (!+[UIKeyboard usesInputSystemUI])
          {
            v30 = [(UIKeyboardPreferencesController *)self preferencesActions];
            [v30 updateLastUsedInputMode:v3];
          }

          v31 = +[UIKeyboardInputModeController sharedInputModeController];
          [v31 handleLastUsedInputMode:0 withNewInputMode:v3];
        }

        v32 = [(UIKeyboardPreferencesController *)self preferencesActions];
        [v32 updateLastUsedLayout:v3];

        [(UIKeyboardPreferencesController *)self touchSynchronizePreferencesTimer];
      }
    }

    v33 = [MEMORY[0x1E695DF70] array];
    v58 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9860]];
    v34 = TIInputModeGetLanguageWithRegion();
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__120;
    v73 = __Block_byref_object_dispose__120;
    v74 = [v58 objectForKey:v34];
    if ([v57 isExtensionInputMode])
    {
      v35 = [v57 languageWithRegion];
      v36 = [v35 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __69__UIKeyboardPreferencesController_setLanguageAwareInputModeLastUsed___block_invoke;
      v64[3] = &unk_1E710E390;
      v37 = v36;
      v65 = v37;
      v68 = &v69;
      v38 = v3;
      v66 = v38;
      v39 = v33;
      v67 = v39;
      [v58 enumerateKeysAndObjectsUsingBlock:v64];
      if ([v39 count])
      {
        v34 = v37;
      }

      else
      {
        v40 = TIGetDefaultInputModesForLanguage();
        if ([v40 count])
        {
          v41 = [v40 firstObject];
          v34 = TIInputModeGetLanguageWithRegion();

          v42 = [v58 objectForKey:v34];
          v43 = v70[5];
          v70[5] = v42;

          if ((UIKeyboardInputModesEqual(v38, v70[5]) & 1) == 0)
          {
            [v39 addObject:v34];
          }
        }

        else
        {
          v34 = v37;
        }
      }
    }

    else if ((UIKeyboardInputModesEqual(v3, v70[5]) & 1) == 0)
    {
      [v33 addObject:v34];
    }

    if (UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v3))
    {
      v44 = [v58 objectForKey:@"ASCIICapable"];
      v45 = 0;
      v46 = UIKeyboardInputModesEqual(v3, v44) ^ 1;
    }

    else
    {
      v44 = [v58 objectForKey:@"NonASCII"];
      v46 = 0;
      v45 = UIKeyboardInputModesEqual(v3, v44) ^ 1;
    }

    if (([v33 count] != 0) | v46 & 1 | v45 & 1)
    {
      if (v58)
      {
        v47 = [v58 mutableCopy];
      }

      else
      {
        v47 = objc_opt_new();
      }

      v48 = v47;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v49 = v33;
      v50 = v33;
      v51 = [v50 countByEnumeratingWithState:&v60 objects:v75 count:16];
      if (v51)
      {
        v52 = *v61;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v61 != v52)
            {
              objc_enumerationMutation(v50);
            }

            [v48 setObject:v3 forKey:*(*(&v60 + 1) + 8 * i)];
          }

          v51 = [v50 countByEnumeratingWithState:&v60 objects:v75 count:16];
        }

        while (v51);
      }

      v33 = v49;
      if (v46)
      {
        [v48 setObject:v3 forKey:@"ASCIICapable"];
      }

      if (v45)
      {
        [v48 setObject:v3 forKey:@"NonASCII"];
      }

      v54 = [(UIKeyboardPreferencesController *)self preferencesActions];
      [v54 updateLastUsedKeyboards:v48];

      [(UIKeyboardPreferencesController *)self touchSynchronizePreferencesTimer];
    }

    _Block_object_dispose(&v69, 8);
  }
}

void __69__UIKeyboardPreferencesController_setLanguageAwareInputModeLastUsed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([*(a1 + 32) isEqualToString:v8] & 1) != 0 || (v6 = *(a1 + 32), TIInputModeGetBaseLanguage(), v7 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v6, "isEqualToString:", v7), v7, v6))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if ((UIKeyboardInputModesEqual(*(a1 + 40), v5) & 1) == 0)
    {
      [*(a1 + 48) addObject:v8];
    }
  }
}

- (BOOL)allEnabledInputModesAreValid
{
  v2 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v3 = [v2 allEnabledInputModesAreValid];

  return v3;
}

- (double)rivenSizeFactor:(double)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIKeyboardPreferencesController_rivenSizeFactor___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1ED49EFB8 != -1)
  {
    dispatch_once(&qword_1ED49EFB8, block);
  }

  v4 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v5 = *&rivenSizeFactor__ppi > 0.0 && v4 == 1;
  result = *&rivenSizeFactor__ppi / 132.0;
  if (!v5)
  {
    result = 1.0;
  }

  if (qword_1ED49EFB0 >= 2)
  {
    result = 1.23484848;
  }

  v7 = round(result * a3);
  if (a3 != 1.0)
  {
    return v7;
  }

  return result;
}

void __51__UIKeyboardPreferencesController_rivenSizeFactor___block_invoke(uint64_t a1)
{
  v11 = [&unk_1EFE2C280 arrayByAddingObjectsFromArray:&unk_1EFE2C298];
  v2 = +[UIDevice currentDevice];
  v3 = [v2 _deviceInfoForKey:@"main-screen-class"];
  v4 = [v3 integerValue];

  v5 = +[UIDevice currentDevice];
  v6 = [v5 _deviceInfoForKey:@"ProductType"];
  v7 = [v11 containsObject:v6];

  if ((v7 & 1) != 0 || (v4 & 0xFFFFFFFE) == 6)
  {
    v8 = [objc_opt_self() mainScreen];
    [v8 _pointsPerInch];
    rivenSizeFactor__ppi = v9;
  }

  v10 = [*(a1 + 32) valueForPreferenceKey:*MEMORY[0x1E69D9948]];
  qword_1ED49EFB0 = [v10 intValue];
}

- (BOOL)spaceConfirmationEnabled
{
  v3 = UIKeyboardGetCurrentInputMode();
  v4 = TIInputModeGetBaseLanguage();
  if (([v4 isEqualToString:@"zh"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"ja"))
  {
    v5 = TIInputModeGetVariant();
    if ([&unk_1EFE2C2B0 containsObject:v5])
    {
      v6 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9958]];
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = MEMORY[0x1E695E118];
      }

      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)enableProKeyboard
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:@"KeyboardUseProLayout"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 _referenceBounds];
    v4 = v6 == 1366.0;
  }

  return v4;
}

- (void)setEnableProKeyboard:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [v7 updateEnableProKeyboard:v3];
  }
}

- (void)setHandBias:(int64_t)a3
{
  v3 = @"None";
  if (a3 == 1)
  {
    v3 = @"Right";
  }

  if (a3 == 2)
  {
    v4 = @"Left";
  }

  else
  {
    v4 = v3;
  }

  v5 = [(UIKeyboardPreferencesController *)self preferencesActions];
  [v5 updateKeyboardHandBias:v4];
}

- (int64_t)compactAssistantBarPersistentLocation
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9728]];
  v3 = [v2 intValue];

  return v3;
}

- (void)setCompactAssistantBarPersistentLocation:(int64_t)a3
{
  v4 = [(UIKeyboardPreferencesController *)self preferencesActions];
  [v4 updateCompactAssistantBarPersistentLocation:a3];
}

- (void)performedFirstReachableKeyboardInteraction
{
  v3 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [v5 updateDidPerformFirstReachableKeyboardInteraction];
  }
}

- (void)setVisceral:(int64_t)a3
{
  v5 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 updateVisceral:v4];
}

- (void)setEnabledDictationLanguages:(id)a3
{
  v7 = a3;
  v4 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [v6 updateEnabledDictationLanguages:v7];
  }
}

- (void)setLastUsedDictationLanguages:(id)a3
{
  v7 = a3;
  v4 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [v6 updateLastUsedDictationLanguages:v7];
  }
}

- (void)setDictationAutoPunctuation:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(UIKeyboardPreferencesController *)self preferencesActions];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v8 updateDictationAutoPunctuation:v7];
  }
}

- (void)setDictationAsPrimaryInputMode:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = [(UIKeyboardPreferencesController *)self preferencesActions];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [v8 updateDictationAsPrimaryInputMode:v7];
  }
}

- (BOOL)isDictationAsPrimaryInputMode
{
  v3 = [(UIKeyboardPreferencesController *)self preferencesActions];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  return [(UIKeyboardPreferencesController *)self BOOLForPreferenceKey:@"DictationAsPrimaryInputMode"];
}

- (BOOL)isPreferenceKeyLockedDown:(id)a3
{
  v3 = MEMORY[0x1E69D9688];
  v4 = a3;
  v5 = [v3 sharedPreferencesController];
  v6 = [v5 isPreferenceKeyLockedDown:v4];

  return v6;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = &unk_1F016D470;
  if (protocol_getMethodDescription(v5, [v4 selector], 1, 1).name)
  {
    v6 = [MEMORY[0x1E69D9688] sharedPreferencesController];
    [v6 forwardInvocation:v4];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboardPreferencesController;
    [(UIKeyboardPreferencesController *)&v7 forwardInvocation:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = &unk_1F016D470;
  if (protocol_getMethodDescription(v5, a3, 1, 1).name)
  {
    v6 = [MEMORY[0x1E69D9688] sharedPreferencesController];
    v7 = [v6 methodSignatureForSelector:a3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIKeyboardPreferencesController;
    v7 = [(UIKeyboardPreferencesController *)&v9 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = &unk_1F016D470;
  v6 = 1;
  if (!protocol_getMethodDescription(v5, a3, 1, 1).name)
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardPreferencesController;
    v6 = [(UIKeyboardPreferencesController *)&v8 respondsToSelector:a3];
  }

  return v6;
}

- (BOOL)useHardwareGlobeKeyAsEmojiKey
{
  v3 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9768]];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 enabledInputModeIdentifiers];

  if (v3 && [v5 count] >= 3)
  {
    v6 = [v3 BOOLValue];
  }

  else
  {
    v6 = [(UIKeyboardPreferencesController *)self defaultGlobeAsEmojiKeySetting];
  }

  v7 = v6;

  return v7;
}

- (BOOL)defaultGlobeAsEmojiKeySetting
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  v3 = [v2 enabledInputModeIdentifiers];

  IsEmojiInputModeActive = UIKeyboardIsEmojiInputModeActive();
  if ([v3 count] == 2 && (IsEmojiInputModeActive & 1) != 0)
  {
    v5 = 1;
  }

  else if ((([v3 count] == 3) & IsEmojiInputModeActive) == 1 && (+[UIKeyboardImpl sharedInstance](UIKeyboardImpl, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isCapsLockASCIIToggle"), v6, v7))
  {
    v8 = +[UIKeyboardImpl sharedInstance];
    v5 = [v8 capsLockKeyHasLanguageSwitchLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)colorAdaptiveKeyboardEnabled
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 1;
  }

  v3 = TIGetEnableColorAdaptiveKeyboardValue();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 BOOLValue];

  return v5;
}

- (BOOL)colorAdaptiveKeyboardBackdropEnabled
{
  if (!os_variant_has_internal_diagnostics())
  {
    return 1;
  }

  v3 = TIGetEnableColorAdaptiveKeyboardBackdropValue();
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 BOOLValue];

  return v5;
}

- (BOOL)inputModeSupportsCrescendo:(id)a3 screenTraits:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (inputModeSupportsCrescendo_screenTraits__supportedModes)
  {
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    getTUIKeyboardLayoutFactoryClass_0();
    if (objc_opt_respondsToSelector())
    {
      [getTUIKeyboardLayoutFactoryClass_0() crescendoLayouts];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObjects:{@"Dvorak", @"QWERTY-Chickasaw", @"QWERTY-Choctaw", @"QWERTY-Mikmaw", @"Osage-QWERTY", @"Coptic", @"Mandaic", 0}];
    }
    v8 = ;
    v9 = inputModeSupportsCrescendo_screenTraits__supportedModes;
    inputModeSupportsCrescendo_screenTraits__supportedModes = v8;

    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if ((UIKeyboardDynamicKeyboardShouldFallBackToStaticKeyboard(v7, v5) & 1) == 0)
  {
LABEL_10:
    v11 = KBStarLayoutString(v5);
    v10 = [inputModeSupportsCrescendo_screenTraits__supportedModes containsObject:v11];

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)inputModeUpdateTime
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:@"KeyboardInputModeUpdateDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end