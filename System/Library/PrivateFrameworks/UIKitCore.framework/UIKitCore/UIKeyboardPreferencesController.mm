@interface UIKeyboardPreferencesController
+ (id)sharedPreferencesController;
- (BOOL)BOOLForKey:(int)key;
- (BOOL)BOOLForPreferenceKey:(id)key;
- (BOOL)allEnabledInputModesAreValid;
- (BOOL)colorAdaptiveKeyboardBackdropEnabled;
- (BOOL)colorAdaptiveKeyboardEnabled;
- (BOOL)currentInputModeSupportsCrescendo;
- (BOOL)defaultGlobeAsEmojiKeySetting;
- (BOOL)enableProKeyboard;
- (BOOL)inputModeSupportsCrescendo:(id)crescendo screenTraits:(id)traits;
- (BOOL)isDictationAsPrimaryInputMode;
- (BOOL)isPasswordAutoFillAllowed;
- (BOOL)isPreferenceKeyLockedDown:(id)down;
- (BOOL)keyboardLanguageIndicatorEnabled;
- (BOOL)respondsToSelector:(SEL)selector;
- (BOOL)showSensitiveUI;
- (BOOL)spaceConfirmationEnabled;
- (BOOL)useHardwareGlobeKeyAsEmojiKey;
- (UIKeyboardPreferencesController)init;
- (double)rivenSizeFactor:(double)factor;
- (id)inputModeUpdateTime;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)sb_defaults;
- (id)valueForKey:(int)key;
- (id)valueForPreferenceKey:(id)key;
- (int64_t)compactAssistantBarPersistentLocation;
- (int64_t)handBias;
- (int64_t)visceral;
- (void)_configurePreferences;
- (void)dealloc;
- (void)forwardInvocation:(id)invocation;
- (void)performedFirstReachableKeyboardInteraction;
- (void)preferencesControllerChanged:(id)changed;
- (void)saveInputModes:(id)modes;
- (void)setCompactAssistantBarPersistentLocation:(int64_t)location;
- (void)setDictationAsPrimaryInputMode:(BOOL)mode;
- (void)setDictationAutoPunctuation:(BOOL)punctuation;
- (void)setEnableProKeyboard:(BOOL)keyboard;
- (void)setEnabledDictationLanguages:(id)languages;
- (void)setHandBias:(int64_t)bias;
- (void)setLanguageAwareInputModeLastUsed:(id)used;
- (void)setLastUsedDictationLanguages:(id)languages;
- (void)setValue:(id)value forKey:(int)key;
- (void)setValue:(id)value forPreferenceKey:(id)key;
- (void)setVisceral:(int64_t)visceral;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = *MEMORY[0x1E69D9908];
    mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
    [defaultCenter addObserver:v3 selector:sel_preferencesControllerChanged_ name:v5 object:mEMORY[0x1E69D9688]];

    v7 = v3;
  }

  return v3;
}

- (void)_configurePreferences
{
  v2 = MGGetBoolAnswer();
  mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v4 = MEMORY[0x1E695E118];
  [mEMORY[0x1E69D9688] _configureKey:@"YukonMagnifiersDisabled" domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x1E695E118]];

  mEMORY[0x1E69D9688]2 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v2];
  [mEMORY[0x1E69D9688]2 _configureKey:@"GesturesEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v6];

  mEMORY[0x1E69D9688]3 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]3 _configureKey:@"HandwritingAutoConfirmationEnabled" domain:@"com.apple.InputModePreferences" defaultValue:v4];

  mEMORY[0x1E69D9688]4 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]4 _configureKey:@"HandwritingAutoConfirmationMinTimeout" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E658];

  mEMORY[0x1E69D9688]5 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]5 _configureKey:@"HandwritingAutoConfirmationMaxTimeout" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E668];

  mEMORY[0x1E69D9688]6 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v11 = MEMORY[0x1E695E110];
  [mEMORY[0x1E69D9688]6 _configureKey:@"DidShowGestureKeyboardIntroduction" domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x1E695E110]];

  mEMORY[0x1E69D9688]7 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]7 _configureKey:@"SwipeDeleteWordEnabled" domain:@"com.apple.keyboard" defaultValue:v11];

  mEMORY[0x1E69D9688]8 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]8 _configureKey:@"RepeatDeleteWordEnabled" domain:@"com.apple.keyboard" defaultValue:v11];

  mEMORY[0x1E69D9688]9 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]9 _configureKey:@"RepeatDeleteWordFirstDelay" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E678];

  mEMORY[0x1E69D9688]10 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]10 _configureKey:@"RepeatDeleteWordRepeatInterfal" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E678];

  mEMORY[0x1E69D9688]11 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]11 _configureKey:@"RepeatDeleteWordCountForDecrement" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE30EE0];

  if (+[UIKeyboard isRedesignedTextCursorEnabled])
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 2.0;
  }

  mEMORY[0x1E69D9688]12 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  [mEMORY[0x1E69D9688]12 _configureKey:@"DictationMenuReturnPauseInterval" domain:@"com.apple.keyboard" defaultValue:v19];

  mEMORY[0x1E69D9688]13 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]13 _configureKey:@"DetachHardwareKeyboardDelayInterval" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE30EF8];

  mEMORY[0x1E69D9688]14 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]14 _configureKey:@"ShowPasswordKeyboardInVideo" domain:@"com.apple.keyboard" defaultValue:v11];

  mEMORY[0x1E69D9688]15 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]15 _configureKey:@"ShowKeyboardButtonOnDictationPopover" domain:@"com.apple.keyboard" defaultValue:v11];

  mEMORY[0x1E69D9688]16 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]16 _configureKey:@"DictationCommandTipsEnabled" domain:@"com.apple.keyboard" defaultValue:v11];

  mEMORY[0x1E69D9688]17 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]17 _configureKey:@"DictationWordwiseBackspaceEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];

  mEMORY[0x1E69D9688]18 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]18 _configureKey:@"ShowDockItemTouchArea" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  mEMORY[0x1E69D9688]19 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]19 _configureKey:@"KeyboardDockItemHitAreaReductionPercent" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EFE30F10];

  mEMORY[0x1E69D9688]20 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]20 _configureKey:@"DidShowInlineCompletionEducationTip" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  mEMORY[0x1E69D9688]21 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]21 _configureKey:@"InlineCompletionAcceptedBySpaceEventCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EFE30F28];

  mEMORY[0x1E69D9688]22 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]22 _configureKey:@"UseDotKeyOvalHitArea" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  mEMORY[0x1E69D9688]23 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]23 _configureKey:@"ShowDotKeyDebugHitArea" domain:@"com.apple.keyboard.preferences" defaultValue:v11];

  mEMORY[0x1E69D9688]24 = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688]24 _configureKey:@"DotKeyHitAreaPercentage" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EFE30F40];
}

- (BOOL)showSensitiveUI
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  deviceStateIsLocked = [v2 deviceStateIsLocked];

  if (!deviceStateIsLocked)
  {
    return 1;
  }

  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v4 preferencesActions];
  sb_defaults = [preferencesActions sb_defaults];
  v7 = [sb_defaults BOOLForKey:@"SBSensitiveUIEnabled"];

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v8 preferencesActions];
  sb_defaults2 = [preferencesActions2 sb_defaults];
  v11 = [sb_defaults2 objectForKey:@"SBSensitiveUIEnabled"];

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
  integerValue = [v2 integerValue];

  return integerValue;
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
  textInputTraits = [v3 textInputTraits];

  keyboardType = [textInputTraits keyboardType];
  v6 = +[UIScreen _carScreen];
  v7 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v6, [v6 _interfaceOrientation]);
  if ([textInputTraits isCarPlayIdiom])
  {
    v8 = +[UIKeyboardImpl activeInstance];
    v9 = [v8 requestedInteractionModel] == 2;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (!v9 && keyboardType != 127)
  {
    v10 = 1;
    if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
    {
      v11 = +[UIKeyboardInputModeController sharedInputModeController];
      currentInputMode = [v11 currentInputMode];
      identifierWithLayouts = [currentInputMode identifierWithLayouts];

      v10 = [(UIKeyboardPreferencesController *)self inputModeSupportsCrescendo:identifierWithLayouts screenTraits:v7];
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
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  if (objc_opt_respondsToSelector())
  {
    isPasswordAutoFillAllowed = [mEMORY[0x1E69ADFB8] isPasswordAutoFillAllowed];
  }

  else
  {
    isPasswordAutoFillAllowed = 1;
  }

  return isPasswordAutoFillAllowed;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D9908] object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardPreferencesController;
  [(UIKeyboardPreferencesController *)&v4 dealloc];
}

- (void)preferencesControllerChanged:(id)changed
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

- (id)valueForKey:(int)key
{
  v3 = *&key;
  mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
  v5 = [mEMORY[0x1E69D9688] valueForKey:v3];

  return v5;
}

- (BOOL)BOOLForKey:(int)key
{
  v3 = *&key;
  mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
  LOBYTE(v3) = [mEMORY[0x1E69D9688] BOOLForKey:v3];

  return v3;
}

- (void)synchronizePreferences
{
  mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688] synchronizePreferences];
}

- (void)touchSynchronizePreferencesTimer
{
  mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
  [mEMORY[0x1E69D9688] touchSynchronizePreferencesTimer];
}

- (void)setValue:(id)value forKey:(int)key
{
  v4 = *&key;
  v5 = MEMORY[0x1E69D9688];
  valueCopy = value;
  sharedPreferencesController = [v5 sharedPreferencesController];
  [sharedPreferencesController setValue:valueCopy forKey:v4];
}

- (id)valueForPreferenceKey:(id)key
{
  v3 = MEMORY[0x1E69D9688];
  keyCopy = key;
  sharedPreferencesController = [v3 sharedPreferencesController];
  v6 = [sharedPreferencesController valueForPreferenceKey:keyCopy];

  return v6;
}

- (BOOL)BOOLForPreferenceKey:(id)key
{
  v3 = MEMORY[0x1E69D9688];
  keyCopy = key;
  sharedPreferencesController = [v3 sharedPreferencesController];
  v6 = [sharedPreferencesController BOOLForPreferenceKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forPreferenceKey:(id)key
{
  v5 = MEMORY[0x1E69D9688];
  keyCopy = key;
  valueCopy = value;
  sharedPreferencesController = [v5 sharedPreferencesController];
  [sharedPreferencesController setValue:valueCopy forPreferenceKey:keyCopy];
}

- (void)saveInputModes:(id)modes
{
  v4 = MEMORY[0x1E69D9688];
  modesCopy = modes;
  sharedPreferencesController = [v4 sharedPreferencesController];
  [sharedPreferencesController updateInputModes:modesCopy];

  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v8 = [v7 updateEnabledDictationLanguages:1];

  [(UIKeyboardPreferencesController *)self touchSynchronizePreferencesTimer];

  +[_UIKeyboardUsageTracking keyboardExtensionsOnDevice];
}

- (void)setLanguageAwareInputModeLastUsed:(id)used
{
  v76 = *MEMORY[0x1E69E9840];
  usedCopy = used;
  if ([usedCopy length])
  {
    v4 = TIInputModeGetNormalizedIdentifier();
    v5 = [v4 isEqualToString:@"emoji"];

    if (v5)
    {
      preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
      inputModeSelectionSequence = [preferencesActions inputModeSelectionSequence];

      if ([inputModeSelectionSequence count])
      {
        firstObject = [inputModeSelectionSequence firstObject];
      }

      else
      {
        firstObject = 0;
      }

      usedCopy = firstObject;
    }
  }

  if ([usedCopy length])
  {
    v9 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9868]];
    v57 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:usedCopy];
    v10 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v9];
    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    inputModeContextIdentifier = [v11 inputModeContextIdentifier];

    if (inputModeContextIdentifier)
    {
      v13 = +[UIPeripheralHost sharedInstance];
      lastUsedInputModeForCurrentContext = [v13 lastUsedInputModeForCurrentContext];

      if (lastUsedInputModeForCurrentContext)
      {
        identifier = [lastUsedInputModeForCurrentContext identifier];

        v15 = identifier;
        goto LABEL_14;
      }

      lastUsedInputModeForCurrentContext = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v9];
    }

    else
    {
      lastUsedInputModeForCurrentContext = v10;
    }

    v15 = v9;
LABEL_14:
    v55 = v15;
    if ((UIKeyboardInputModesEqual(usedCopy, v15) & 1) == 0)
    {
      v16 = TIInputModeGetNormalizedIdentifier();
      v17 = [v16 isEqualToString:@"emoji"];

      if ((v17 & 1) == 0)
      {
        if (([v57 isExtensionInputMode] & 1) == 0 && (objc_msgSend(lastUsedInputModeForCurrentContext, "isExtensionInputMode") & 1) == 0)
        {
          v18 = TIInputModeGetBaseLanguage();
          v19 = TIInputModeGetBaseLanguage();
          v20 = [v18 isEqualToString:v19];

          if ((v20 & 1) == 0)
          {
            v21 = MEMORY[0x1E696AEC0];
            preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
            firstObject2 = [preferredLanguages firstObject];
            v24 = firstObject2;
            v25 = @"Unknown";
            if (firstObject2)
            {
              v25 = firstObject2;
            }

            v26 = [v21 stringWithFormat:@"%@.%@", *MEMORY[0x1E69D9B18], v25];
            v27 = TIStatisticGetKey();
            TIStatisticScalarIncrement();
          }
        }

        v28 = +[UIKeyboardInputModeController sharedInputModeController];
        inputModeContextIdentifier2 = [v28 inputModeContextIdentifier];

        if (!inputModeContextIdentifier2)
        {
          if (!+[UIKeyboard usesInputSystemUI])
          {
            preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
            [preferencesActions2 updateLastUsedInputMode:usedCopy];
          }

          v31 = +[UIKeyboardInputModeController sharedInputModeController];
          [v31 handleLastUsedInputMode:0 withNewInputMode:usedCopy];
        }

        preferencesActions3 = [(UIKeyboardPreferencesController *)self preferencesActions];
        [preferencesActions3 updateLastUsedLayout:usedCopy];

        [(UIKeyboardPreferencesController *)self touchSynchronizePreferencesTimer];
      }
    }

    array = [MEMORY[0x1E695DF70] array];
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
      languageWithRegion = [v57 languageWithRegion];
      v36 = [languageWithRegion stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __69__UIKeyboardPreferencesController_setLanguageAwareInputModeLastUsed___block_invoke;
      v64[3] = &unk_1E710E390;
      v37 = v36;
      v65 = v37;
      v68 = &v69;
      v38 = usedCopy;
      v66 = v38;
      v39 = array;
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
          firstObject3 = [v40 firstObject];
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

    else if ((UIKeyboardInputModesEqual(usedCopy, v70[5]) & 1) == 0)
    {
      [array addObject:v34];
    }

    if (UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(usedCopy))
    {
      v44 = [v58 objectForKey:@"ASCIICapable"];
      v45 = 0;
      v46 = UIKeyboardInputModesEqual(usedCopy, v44) ^ 1;
    }

    else
    {
      v44 = [v58 objectForKey:@"NonASCII"];
      v46 = 0;
      v45 = UIKeyboardInputModesEqual(usedCopy, v44) ^ 1;
    }

    if (([array count] != 0) | v46 & 1 | v45 & 1)
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
      v49 = array;
      v50 = array;
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

            [v48 setObject:usedCopy forKey:*(*(&v60 + 1) + 8 * i)];
          }

          v51 = [v50 countByEnumeratingWithState:&v60 objects:v75 count:16];
        }

        while (v51);
      }

      array = v49;
      if (v46)
      {
        [v48 setObject:usedCopy forKey:@"ASCIICapable"];
      }

      if (v45)
      {
        [v48 setObject:usedCopy forKey:@"NonASCII"];
      }

      preferencesActions4 = [(UIKeyboardPreferencesController *)self preferencesActions];
      [preferencesActions4 updateLastUsedKeyboards:v48];

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
  mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
  allEnabledInputModesAreValid = [mEMORY[0x1E69D9688] allEnabledInputModesAreValid];

  return allEnabledInputModesAreValid;
}

- (double)rivenSizeFactor:(double)factor
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

  v7 = round(result * factor);
  if (factor != 1.0)
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

      bOOLValue = [v7 BOOLValue];
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

- (BOOL)enableProKeyboard
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:@"KeyboardUseProLayout"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen _referenceBounds];
    bOOLValue = v6 == 1366.0;
  }

  return bOOLValue;
}

- (void)setEnableProKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [preferencesActions2 updateEnableProKeyboard:keyboardCopy];
  }
}

- (void)setHandBias:(int64_t)bias
{
  v3 = @"None";
  if (bias == 1)
  {
    v3 = @"Right";
  }

  if (bias == 2)
  {
    v4 = @"Left";
  }

  else
  {
    v4 = v3;
  }

  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  [preferencesActions updateKeyboardHandBias:v4];
}

- (int64_t)compactAssistantBarPersistentLocation
{
  v2 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9728]];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setCompactAssistantBarPersistentLocation:(int64_t)location
{
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  [preferencesActions updateCompactAssistantBarPersistentLocation:location];
}

- (void)performedFirstReachableKeyboardInteraction
{
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [preferencesActions2 updateDidPerformFirstReachableKeyboardInteraction];
  }
}

- (void)setVisceral:(int64_t)visceral
{
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:visceral];
  [preferencesActions updateVisceral:v4];
}

- (void)setEnabledDictationLanguages:(id)languages
{
  languagesCopy = languages;
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [preferencesActions2 updateEnabledDictationLanguages:languagesCopy];
  }
}

- (void)setLastUsedDictationLanguages:(id)languages
{
  languagesCopy = languages;
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
    [preferencesActions2 updateLastUsedDictationLanguages:languagesCopy];
  }
}

- (void)setDictationAutoPunctuation:(BOOL)punctuation
{
  punctuationCopy = punctuation;
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:punctuationCopy];
    [preferencesActions2 updateDictationAutoPunctuation:v7];
  }
}

- (void)setDictationAsPrimaryInputMode:(BOOL)mode
{
  modeCopy = mode;
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    preferencesActions2 = [(UIKeyboardPreferencesController *)self preferencesActions];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
    [preferencesActions2 updateDictationAsPrimaryInputMode:v7];
  }
}

- (BOOL)isDictationAsPrimaryInputMode
{
  preferencesActions = [(UIKeyboardPreferencesController *)self preferencesActions];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  return [(UIKeyboardPreferencesController *)self BOOLForPreferenceKey:@"DictationAsPrimaryInputMode"];
}

- (BOOL)isPreferenceKeyLockedDown:(id)down
{
  v3 = MEMORY[0x1E69D9688];
  downCopy = down;
  sharedPreferencesController = [v3 sharedPreferencesController];
  v6 = [sharedPreferencesController isPreferenceKeyLockedDown:downCopy];

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v5 = &unk_1F016D470;
  if (protocol_getMethodDescription(v5, [invocationCopy selector], 1, 1).name)
  {
    mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
    [mEMORY[0x1E69D9688] forwardInvocation:invocationCopy];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIKeyboardPreferencesController;
    [(UIKeyboardPreferencesController *)&v7 forwardInvocation:invocationCopy];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v5 = &unk_1F016D470;
  if (protocol_getMethodDescription(v5, selector, 1, 1).name)
  {
    mEMORY[0x1E69D9688] = [MEMORY[0x1E69D9688] sharedPreferencesController];
    v7 = [mEMORY[0x1E69D9688] methodSignatureForSelector:selector];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UIKeyboardPreferencesController;
    v7 = [(UIKeyboardPreferencesController *)&v9 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5 = &unk_1F016D470;
  v6 = 1;
  if (!protocol_getMethodDescription(v5, selector, 1, 1).name)
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardPreferencesController;
    v6 = [(UIKeyboardPreferencesController *)&v8 respondsToSelector:selector];
  }

  return v6;
}

- (BOOL)useHardwareGlobeKeyAsEmojiKey
{
  v3 = [(UIKeyboardPreferencesController *)self valueForPreferenceKey:*MEMORY[0x1E69D9768]];
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  enabledInputModeIdentifiers = [v4 enabledInputModeIdentifiers];

  if (v3 && [enabledInputModeIdentifiers count] >= 3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = [(UIKeyboardPreferencesController *)self defaultGlobeAsEmojiKeySetting];
  }

  v7 = bOOLValue;

  return v7;
}

- (BOOL)defaultGlobeAsEmojiKeySetting
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  enabledInputModeIdentifiers = [v2 enabledInputModeIdentifiers];

  IsEmojiInputModeActive = UIKeyboardIsEmojiInputModeActive();
  if ([enabledInputModeIdentifiers count] == 2 && (IsEmojiInputModeActive & 1) != 0)
  {
    capsLockKeyHasLanguageSwitchLabel = 1;
  }

  else if ((([enabledInputModeIdentifiers count] == 3) & IsEmojiInputModeActive) == 1 && (+[UIKeyboardImpl sharedInstance](UIKeyboardImpl, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isCapsLockASCIIToggle"), v6, v7))
  {
    v8 = +[UIKeyboardImpl sharedInstance];
    capsLockKeyHasLanguageSwitchLabel = [v8 capsLockKeyHasLanguageSwitchLabel];
  }

  else
  {
    capsLockKeyHasLanguageSwitchLabel = 0;
  }

  return capsLockKeyHasLanguageSwitchLabel;
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
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)inputModeSupportsCrescendo:(id)crescendo screenTraits:(id)traits
{
  crescendoCopy = crescendo;
  traitsCopy = traits;
  v7 = traitsCopy;
  if (inputModeSupportsCrescendo_screenTraits__supportedModes)
  {
    if (!traitsCopy)
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

  if ((UIKeyboardDynamicKeyboardShouldFallBackToStaticKeyboard(v7, crescendoCopy) & 1) == 0)
  {
LABEL_10:
    v11 = KBStarLayoutString(crescendoCopy);
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