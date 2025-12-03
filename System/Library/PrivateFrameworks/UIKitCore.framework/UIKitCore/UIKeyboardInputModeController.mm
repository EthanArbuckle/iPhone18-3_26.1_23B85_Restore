@interface UIKeyboardInputModeController
+ (BOOL)shouldShowDictationMic;
+ (id)ASCIICapableInputModeIdentifierForPreferredLanguages;
+ (id)bidirectionalLayoutFallbacksForPhoneLayoutsOnPad;
+ (id)disallowedDictationLanguagesForDeviceLanguage;
+ (id)filteredCarPlayInputModesFromInputModes:(id)modes;
+ (id)inputModeIdentifierForPreferredLanguages:(id)languages passingTest:(id)test;
+ (id)sharedInputModeController;
- (BOOL)_mayContainExtensionInputModes;
- (BOOL)containsDictationSupportedInputMode;
- (BOOL)containsEmojiInputMode;
- (BOOL)currentLocaleRequiresExtendedSetup;
- (BOOL)identifierIsValidSystemInputMode:(id)mode;
- (BOOL)isDictationLanguageEnabled:(id)enabled;
- (BOOL)isLockscreenPasscodeKeyboard;
- (BOOL)toggleDictationForResponder:(id)responder withOption:(id)option firstResponderSetupCompletion:(id)completion;
- (BOOL)verifyKeyboardExtensionsWithApp;
- (NSArray)activeDictationLanguages;
- (NSArray)activeDictationSupportedInputModeIdentifiers;
- (NSArray)activeInputModeIdentifiers;
- (NSArray)activeUserSelectableInputModeIdentifiers;
- (NSArray)enabledDictationLanguages;
- (NSArray)enabledInputModeLanguages;
- (NSArray)inputModesWithoutHardwareSupport;
- (NSArray)supportedInputModeIdentifiers;
- (NSDate)defaultsLastChangedDate;
- (NSString)hardwareKeyboardExclusivityIdentifier;
- (NSString)textEffectsButtonLanguageCode;
- (UIKeyboardInputMode)currentInputMode;
- (UIKeyboardInputMode)currentInputModeInPreference;
- (UIKeyboardInputMode)currentLinguisticInputMode;
- (UIKeyboardInputMode)currentPublicInputMode;
- (UIKeyboardInputMode)hardwareInputMode;
- (UIKeyboardInputMode)lastUsedInputModeForCurrentContext;
- (UIKeyboardInputModeController)init;
- (UIKeyboardInputModeControllerDelegate)delegate;
- (id)_MCFilteredExtensionIdentifiers;
- (id)_allExtensionsFromMatchingExtensions:(id)extensions;
- (id)_prefixedKey;
- (id)_prefixedSetTimeKey;
- (id)_systemInputModePassingLanguageTest:(id)test;
- (id)_systemInputModePassingTest:(id)test;
- (id)activeInputModes;
- (id)activeUserSelectableInputModes;
- (id)appendPasscodeInputModes:(id)modes;
- (id)currentSystemInputModeExcludingEmoji:(BOOL)emoji;
- (id)defaultDictationLanguages:(id)languages;
- (id)defaultEnabledInputModesForCurrentLocale:(BOOL)locale;
- (id)enabledInputModeIdentifiers:(BOOL)identifiers;
- (id)extensionInputModes;
- (id)fallbackCurrentInputModeForFilteredInputMode:(id)mode fromInputModes:(id)modes;
- (id)fallbackCurrentInputModeForFilteredInputModeIdentifier:(id)identifier fromInputModeIdentifiers:(id)identifiers;
- (id)filteredInputModesForSiriLanguageFromInputModes:(id)modes;
- (id)filteredPadInputModesFromInputModes:(id)modes withRules:(id)rules;
- (id)filteredTVInputModesFromInputModes:(id)modes;
- (id)fullInputModeFromIdentifier:(id)identifier hardwareKeyboardLanguage:(id)language;
- (id)getActiveInputModeInDictationFromMultiLingualInputModes:(id)modes;
- (id)getDictationSLSLanguagesEnabled;
- (id)hardwareKeyboard;
- (id)hardwareLayoutToUseForInputMode:(id)mode;
- (id)hardwareLayoutToUseForInputMode:(id)mode hardwareKeyboardLanguage:(id)language countryCode:(id)code;
- (id)identifiersFromInputModes:(id)modes;
- (id)inputModeByReplacingSoftwareLayoutWithSoftwareLayout:(id)layout inInputMode:(id)mode;
- (id)inputModeForASCIIToggleWithTraits:(id)traits;
- (id)inputModeIdentifierLastUsedForLanguage:(id)language includingExtensions:(BOOL)extensions;
- (id)inputModeLastUsedForLanguage:(id)language includingExtensions:(BOOL)extensions;
- (id)inputModeToAddForKeyboardLanguage:(id)language countryCode:(id)code activeModes:(id)modes;
- (id)inputModeToRestoreFrom:(id)from;
- (id)inputModeWithIdentifier:(id)identifier;
- (id)inputModesByAppendingApplicationLanguagesToInputModes:(id)modes;
- (id)inputModesFromIdentifiers:(id)identifiers;
- (id)keyboardLanguageForDictationLanguage:(id)language;
- (id)lastUsedInputModeForTextInputMode:(id)mode;
- (id)nextInputModeFromList:(id)list withFilter:(unint64_t)filter withTraits:(id)traits;
- (id)nextInputModeInPreferenceListForTraits:(id)traits updatePreference:(BOOL)preference skipEmoji:(BOOL)emoji;
- (id)nextInputModeToUseForTraits:(id)traits updatePreference:(BOOL)preference;
- (id)suggestedDictationLanguagesForDeviceLanguage;
- (id)suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:(id)modes;
- (id)suggestedInputModesForCurrentLocale;
- (id)suggestedInputModesForCurrentLocale:(BOOL)locale fallbackToDefaultInputModes:(BOOL)modes;
- (id)suggestedInputModesForHardwareKeyboardLanguage:(id)language countryCode:(id)code inputModes:(id)modes;
- (id)suggestedInputModesForLocales:(id)locales;
- (id)suggestedInputModesForPreferredLanguages;
- (id)supportedFullModesForHardwareKeyboard:(id)keyboard countryCode:(id)code activeModes:(id)modes matchedMode:(id *)mode;
- (id)supportedInputModesFromArray:(id)array;
- (id)textInputModeForResponder:(id)responder;
- (id)updateEnabledDictationLanguages:(BOOL)languages;
- (id)userSelectableInputModeIdentifiersFromInputModeIdentifiers:(id)identifiers;
- (id)userSelectableInputModesFromInputModes:(id)modes;
- (void)_beginContinuousDiscoveryIfNeeded;
- (void)_clearAllExtensions;
- (void)_clearAllExtensionsIfNeeded;
- (void)_inputModeChangedWhileContextTracked;
- (void)_removeInputModes:(id)modes;
- (void)_setCurrentAndNextInputModePreference;
- (void)_setCurrentInputMode:(id)mode force:(BOOL)force;
- (void)_trackInputModeIfNecessary:(id)necessary;
- (void)changePreferredEmojiSearchInputModeForInputDelegate:(id)delegate;
- (void)dealloc;
- (void)didAcceptAddKeyboardInputMode;
- (void)didEnterBackground:(id)background;
- (void)downloadDictationLangaugesAssets;
- (void)forceDictationReturnToKeyboardInputMode;
- (void)getHardwareKeyboardLanguage:(id *)language countryCode:(id *)code;
- (void)handleLastUsedInputMode:(id)mode withNewInputMode:(id)inputMode;
- (void)handleSpecificHardwareKeyboard:(id)keyboard;
- (void)keyboardDeviceLayoutsDidChange:(id)change;
- (void)keyboardDevicesDidConnect:(id)connect;
- (void)keyboardDevicesDidDisconnect:(id)disconnect;
- (void)loadSuggestedInputModesForSiriLanguage;
- (void)performWithForcedExtensionInputModes:(id)modes;
- (void)performWithoutExtensionInputModes:(id)modes;
- (void)presentEnablementAndDataSharingPromptIfNeeded:(id)needed;
- (void)releaseAddKeyboardNotification;
- (void)saveDeviceUnlockPasscodeInputModes;
- (void)setCurrentInputModeInPreference:(id)preference;
- (void)setDefaultsLastChangedDate:(id)date;
- (void)setDictationSLSLanguagesEnabled:(id)enabled;
- (void)setDocumentInputMode:(id)mode;
- (void)setInputModeByMacOSInputSource;
- (void)setInputModeFromInputModeConfiguration:(id)configuration;
- (void)setInputModeFromMacKeyboard:(id)keyboard;
- (void)showAddKeyboardAlertForInputModeIdentifier:(id)identifier;
- (void)startDictationConnectionForFileAtURL:(id)l forInputModeIdentifier:(id)identifier;
- (void)stopDictation;
- (void)stopDictationAndResignFirstResponder;
- (void)switchToCurrentSystemInputMode;
- (void)switchToDictationInputModeWithOptions:(id)options;
- (void)updateCurrentAndNextInputModes;
- (void)updateCurrentInputMode:(id)mode;
- (void)updateDefaultInputModesIfNecessaryForIdiom;
- (void)updateEnabledDictationAndSLSLanguagesWithCompletionBlock:(id)block;
- (void)updateInputModeFromMacKeyboards:(id)keyboards;
- (void)updateLastUsedInputMode:(id)mode;
- (void)updateUserSelectableInputModes;
- (void)willEnterForeground:(id)foreground;
@end

@implementation UIKeyboardInputModeController

+ (id)sharedInputModeController
{
  if (qword_1ED4986D0 != -1)
  {
    dispatch_once(&qword_1ED4986D0, &__block_literal_global_338);
  }

  v3 = qword_1ED4986C8;

  return v3;
}

- (id)hardwareKeyboard
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mEMORY[0x1E698E3E0] = [MEMORY[0x1E698E3E0] sharedInstance];
  allKeyboardDevices = [mEMORY[0x1E698E3E0] allKeyboardDevices];

  v5 = [allKeyboardDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(allKeyboardDevices);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        exclusivityIdentifier = [v9 exclusivityIdentifier];

        if (exclusivityIdentifier)
        {
          if (!self->_keyboardObserver)
          {
            mEMORY[0x1E698E3E0]2 = [MEMORY[0x1E698E3E0] sharedInstance];
            v14 = [mEMORY[0x1E698E3E0]2 addKeyboardObserver:self];
            keyboardObserver = self->_keyboardObserver;
            self->_keyboardObserver = v14;
          }

          v12 = v9;
          goto LABEL_14;
        }
      }

      v6 = [allKeyboardDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = self->_keyboardObserver;
  if (v11)
  {
    [(BSInvalidatable *)v11 invalidate];
    v12 = 0;
    allKeyboardDevices = self->_keyboardObserver;
    self->_keyboardObserver = 0;
LABEL_14:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (UIKeyboardInputMode)currentInputMode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_currentInputMode)
  {
    currentInputModeInPreference = [(UIKeyboardInputModeController *)selfCopy currentInputModeInPreference];
    [(UIKeyboardInputModeController *)selfCopy updateCurrentInputMode:currentInputModeInPreference];
  }

  objc_sync_exit(selfCopy);

  currentInputMode = selfCopy->_currentInputMode;

  return currentInputMode;
}

- (NSString)hardwareKeyboardExclusivityIdentifier
{
  hardwareKeyboard = [(UIKeyboardInputModeController *)self hardwareKeyboard];
  exclusivityIdentifier = [hardwareKeyboard exclusivityIdentifier];

  return exclusivityIdentifier;
}

void __58__UIKeyboardInputModeController_sharedInputModeController__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardInputModeController);
  v1 = qword_1ED4986C8;
  qword_1ED4986C8 = v0;
}

- (UIKeyboardInputModeController)init
{
  v15.receiver = self;
  v15.super_class = UIKeyboardInputModeController;
  v2 = [(UIKeyboardInputModeController *)&v15 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_willEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69ADD68] object:0];
    [defaultCenter addObserver:v2 selector:sel_keyboardsPreferencesChanged_ name:@"AppleKeyboardsPreferencesChangedNotification" object:0];
    v4 = _UIMainBundleIdentifier();
    v5 = [v4 isEqualToString:@"com.apple.springboard"];

    if (v5)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x3032000000;
      v13[3] = __Block_byref_object_copy__119;
      v13[4] = __Block_byref_object_dispose__119;
      v6 = v2;
      v14 = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __37__UIKeyboardInputModeController_init__block_invoke;
      aBlock[3] = &unk_1E710DBC0;
      aBlock[4] = v13;
      v7 = _Block_copy(aBlock);
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
      LODWORD(v8) = notify_register_dispatch("com.apple.managedconfiguration.passcodechanged", v6 + 11, v8, v7);

      if (v8)
      {
        NSLog(&cfstr_FailedToRegist_1.isa);
      }

      [UIPeripheralHost setKeyboardOnScreenNotifyKey:0];
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v6 selector:sel_handleSpecificHardwareKeyboard_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

      _Block_object_dispose(v13, 8);
    }
  }

  return v2;
}

- (UIKeyboardInputMode)currentPublicInputMode
{
  if (self->_suppressCurrentPublicInputMode)
  {
    nextInputModeToUse = 0;
    goto LABEL_12;
  }

  currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
  if (![currentInputMode isEmojiInputMode])
  {
    goto LABEL_10;
  }

  currentUsedInputMode = [(UIKeyboardInputModeController *)self currentUsedInputMode];

  if (!currentUsedInputMode || [currentUsedInputMode isEmojiInputMode])
  {
    nextInputModeToUse = [(UIKeyboardInputModeController *)self nextInputModeToUse];

    currentUsedInputMode = nextInputModeToUse;
    if (!nextInputModeToUse)
    {
      goto LABEL_11;
    }
  }

  if (([currentUsedInputMode isEmojiInputMode] & 1) == 0)
  {
    currentInputMode = currentUsedInputMode;
LABEL_10:
    nextInputModeToUse = currentInputMode;
    currentUsedInputMode = nextInputModeToUse;
    goto LABEL_11;
  }

  nextInputModeToUse = 0;
LABEL_11:

LABEL_12:

  return nextInputModeToUse;
}

- (void)_beginContinuousDiscoveryIfNeeded
{
  if ([(UIKeyboardInputModeController *)self shouldRunContinuousDiscovery])
  {
    extensionMatchingContext = [(UIKeyboardInputModeController *)self extensionMatchingContext];
    if (extensionMatchingContext)
    {
    }

    else if ([(UIKeyboardInputModeController *)self _mayContainExtensionInputModes])
    {
      v4 = dispatch_time(0, 3000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_clearAllExtensionsIfNeeded
{
  if (self->_allExtensions)
  {
    keyboardInputModes = [(UIKeyboardInputModeController *)self keyboardInputModes];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__UIKeyboardInputModeController__clearAllExtensionsIfNeeded__block_invoke;
    v4[3] = &unk_1E710DD80;
    v4[4] = self;
    [keyboardInputModes enumerateObjectsUsingBlock:v4];
  }
}

- (void)updateUserSelectableInputModes
{
  v17 = *MEMORY[0x1E69E9840];
  keyboardInputModes = [(UIKeyboardInputModeController *)self keyboardInputModes];
  v4 = [(UIKeyboardInputModeController *)self userSelectableInputModesFromInputModes:keyboardInputModes];

  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        identifier = [*(*(&v12 + 1) + 8 * v10) identifier];
        [array addObject:identifier];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UIKeyboardInputModeController *)self setUserSelectableKeyboardInputModes:v6];
  [(UIKeyboardInputModeController *)self setUserSelectableKeyboardInputModeIdentifiers:array];
}

- (BOOL)verifyKeyboardExtensionsWithApp
{
  delegate = [UIApp delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [delegate application:UIApp shouldAllowExtensionPointIdentifier:@"com.apple.keyboard-service"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (NSArray)inputModesWithoutHardwareSupport
{
  inputModesWithoutHardwareSupport = self->_inputModesWithoutHardwareSupport;
  if (!inputModesWithoutHardwareSupport)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"emoji", @"ja_JP-HWR", @"zh_Hant-HWR", @"zh_Hans-HWR", @"yue_Hant-HWR", 0}];
    v5 = self->_inputModesWithoutHardwareSupport;
    self->_inputModesWithoutHardwareSupport = v4;

    inputModesWithoutHardwareSupport = self->_inputModesWithoutHardwareSupport;
  }

  return inputModesWithoutHardwareSupport;
}

- (UIKeyboardInputMode)currentInputModeInPreference
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  v5 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9868]];

  if (![v5 length] || (-[UIKeyboardInputModeController keyboardInputModeIdentifiers](self, "keyboardInputModeIdentifiers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v5), v6, (v7 & 1) == 0))
  {
    keyboardInputModeIdentifiers = [(UIKeyboardInputModeController *)self keyboardInputModeIdentifiers];
    if (![v5 length])
    {
      keyboardInputModeIdentifiers2 = [(UIKeyboardInputModeController *)self keyboardInputModeIdentifiers];
      v10 = [keyboardInputModeIdentifiers2 containsObject:v5];

      if ((v10 & 1) == 0)
      {
        activeInputModeIdentifiers = [(UIKeyboardInputModeController *)self activeInputModeIdentifiers];

        keyboardInputModeIdentifiers = activeInputModeIdentifiers;
      }
    }

    v12 = [(UIKeyboardInputModeController *)self fallbackCurrentInputModeForFilteredInputModeIdentifier:v5 fromInputModeIdentifiers:keyboardInputModeIdentifiers];

    if ([v12 hasPrefix:@"emoji"])
    {
      if ([keyboardInputModeIdentifiers count] < 2)
      {
        v13 = 0;
      }

      else
      {
        v13 = [keyboardInputModeIdentifiers objectAtIndex:1];
      }

      v12 = v13;
    }

    if (![v12 length])
    {
      v14 = [(UIKeyboardInputModeController *)self defaultEnabledInputModesForCurrentLocale:1];
      firstObject = [v14 firstObject];

      v12 = firstObject;
    }

    v5 = v12;
  }

  v16 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v5];
  v17 = [(UIKeyboardInputModeController *)self inputModeToRestoreFrom:v16];

  return v17;
}

- (NSArray)activeInputModeIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabledInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy enabledInputModeIdentifiers];
  keyboardInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy keyboardInputModeIdentifiers];
  objc_sync_exit(selfCopy);

  return keyboardInputModeIdentifiers;
}

- (NSArray)enabledDictationLanguages
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeDictationLanguages = [(UIKeyboardInputModeController *)self activeDictationLanguages];
  v5 = [activeDictationLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activeDictationLanguages);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([(UIKeyboardInputModeController *)self isDictationLanguageEnabled:v9])
        {
          [array addObject:v9];
        }
      }

      v6 = [activeDictationLanguages countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSArray)activeDictationLanguages
{
  v20 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeDictationSupportedInputModeIdentifiers = [(UIKeyboardInputModeController *)self activeDictationSupportedInputModeIdentifiers];
  v5 = [activeDictationSupportedInputModeIdentifiers countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeDictationSupportedInputModeIdentifiers);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(UIKeyboardInputModeController *)self defaultDictationLanguages:v9];
        if (v10)
        {
          [orderedSet addObjectsFromArray:v10];
        }

        else
        {
          v18 = v9;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
          [orderedSet addObjectsFromArray:v11];
        }
      }

      v6 = [activeDictationSupportedInputModeIdentifiers countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  array = [orderedSet array];

  return array;
}

- (NSArray)activeDictationSupportedInputModeIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
  v5 = [activeInputModes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(activeInputModes);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        languageWithRegion = [v9 languageWithRegion];
        if ([array containsObject:languageWithRegion])
        {
          v11 = 0;
        }

        else
        {
          v12 = +[UIDictationController sharedInstance];
          v15 = 0;
          v13 = [v12 supportsInputMode:v9 error:&v15];
          v11 = v15;

          if (!v13)
          {
            goto LABEL_11;
          }

          languageWithRegion = [v9 languageWithRegion];
          [array addObject:languageWithRegion];
        }

LABEL_11:
      }

      v6 = [activeInputModes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)activeInputModes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabledInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy enabledInputModeIdentifiers];
  keyboardInputModes = [(UIKeyboardInputModeController *)selfCopy keyboardInputModes];
  objc_sync_exit(selfCopy);

  return keyboardInputModes;
}

- (UIKeyboardInputMode)currentLinguisticInputMode
{
  currentPublicInputMode = [(UIKeyboardInputModeController *)self currentPublicInputMode];
  v4 = currentPublicInputMode;
  if (currentPublicInputMode)
  {
    currentInputModeInPreference = currentPublicInputMode;
  }

  else
  {
    currentInputModeInPreference = [(UIKeyboardInputModeController *)self currentInputModeInPreference];
  }

  v6 = currentInputModeInPreference;

  return v6;
}

- (void)updateCurrentAndNextInputModes
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  inputModeSelectionSequence = [preferencesActions inputModeSelectionSequence];

  if ([inputModeSelectionSequence count])
  {
    v5 = [inputModeSelectionSequence objectAtIndex:0];
    v6 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v5];
    [(UIKeyboardInputModeController *)self setCurrentUsedInputMode:v6];
  }

  if ([inputModeSelectionSequence count] >= 2)
  {
    v7 = [inputModeSelectionSequence objectAtIndex:1];
    v8 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v7];
    [(UIKeyboardInputModeController *)self setLastUsedInputMode:v8];
  }

  if ([inputModeSelectionSequence count] >= 3)
  {
    v9 = [inputModeSelectionSequence objectAtIndex:2];
    v10 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v9];
    [(UIKeyboardInputModeController *)self setNextInputModeToUse:v10];
  }
}

- (id)activeUserSelectableInputModes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabledInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy enabledInputModeIdentifiers];
  userSelectableKeyboardInputModes = [(UIKeyboardInputModeController *)selfCopy userSelectableKeyboardInputModes];
  objc_sync_exit(selfCopy);

  return userSelectableKeyboardInputModes;
}

- (NSArray)activeUserSelectableInputModeIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  enabledInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy enabledInputModeIdentifiers];
  userSelectableKeyboardInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy userSelectableKeyboardInputModeIdentifiers];
  objc_sync_exit(selfCopy);

  return userSelectableKeyboardInputModeIdentifiers;
}

- (NSString)textEffectsButtonLanguageCode
{
  if (qword_1ED498720 != -1)
  {
    dispatch_once(&qword_1ED498720, &__block_literal_global_771);
  }

  v2 = UIKeyboardGetCurrentInputMode();
  v3 = TIInputModeGetLanguageWithRegion();

  v4 = [MEMORY[0x1E695DF58] scriptCodeFromLanguage:v3];
  v5 = [qword_1ED498718 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"en";
  }

  v8 = v7;

  return &v7->isa;
}

void __62__UIKeyboardInputModeController_textEffectsButtonLanguageCode__block_invoke()
{
  v0 = qword_1ED498718;
  qword_1ED498718 = &unk_1EFE34338;
}

- (id)_prefixedKey
{
  inputModeContextIdentifier = [(UIKeyboardInputModeController *)self inputModeContextIdentifier];
  if (inputModeContextIdentifier)
  {
    v3 = [@"ID_" stringByAppendingString:inputModeContextIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateDefaultInputModesIfNecessaryForIdiom
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(UIKeyboardInputModeController *)self disableFloatingKeyboardFilter]&& !+[UIKeyboardImpl isFloating])
  {
    defaultKeyboardInputModes = [(UIKeyboardInputModeController *)self defaultKeyboardInputModes];
    layoutFallbacksForPhoneLayoutsOnPad = [objc_opt_class() layoutFallbacksForPhoneLayoutsOnPad];
    v5 = [(UIKeyboardInputModeController *)self filteredPadInputModesFromInputModes:defaultKeyboardInputModes withRules:layoutFallbacksForPhoneLayoutsOnPad];
    [(UIKeyboardInputModeController *)self setDefaultKeyboardInputModes:v5];

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    defaultKeyboardInputModes2 = [(UIKeyboardInputModeController *)self defaultKeyboardInputModes];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __75__UIKeyboardInputModeController_updateDefaultInputModesIfNecessaryForIdiom__block_invoke;
    v14 = &unk_1E710DCC8;
    v15 = array;
    v16 = array2;
    v9 = array2;
    v10 = array;
    [defaultKeyboardInputModes2 enumerateObjectsUsingBlock:&v11];

    [(UIKeyboardInputModeController *)self setDefaultInputModes:v10, v11, v12, v13, v14];
    [(UIKeyboardInputModeController *)self setDefaultNormalizedInputModes:v9];
    [(UIKeyboardInputModeController *)self setDefaultRawInputModes:v9];
  }
}

- (void)dealloc
{
  v22[6] = *MEMORY[0x1E69E9840];
  if ([UIApp _isSpringBoard])
  {
    notify_cancel(self->_notifyPasscodeChangedToken);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v22[0] = @"UIApplicationDidEnterBackgroundNotification";
  v22[1] = @"UIApplicationWillEnterForegroundNotification";
  v22[2] = @"AppleKeyboardsPreferencesChangedNotification";
  v22[3] = @"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification";
  v4 = *MEMORY[0x1E69ADD68];
  v22[4] = *MEMORY[0x1E69D9908];
  v22[5] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:6];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v5 names:?];

  if (self->_extensionMatchingContext)
  {
    [MEMORY[0x1E696ABD0] endMatchingExtensions:?];
    extensionMatchingContext = self->_extensionMatchingContext;
    self->_extensionMatchingContext = 0;
  }

  allExtensions = self->_allExtensions;
  self->_allExtensions = 0;

  allowedExtensions = self->_allowedExtensions;
  self->_allowedExtensions = 0;

  newModeForUserNotification = self->_newModeForUserNotification;
  self->_newModeForUserNotification = 0;

  keyboardTagForUserNotification = self->_keyboardTagForUserNotification;
  self->_keyboardTagForUserNotification = 0;

  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
    CFRelease(self->_userNotification);
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_userNotificationRunLoopSource, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_userNotificationRunLoopSource);
    self->_userNotification = 0;
  }

  [(UIKeyboardInputModeController *)self setKeyboardInputModes:0];
  [(UIKeyboardInputModeController *)self setUserSelectableKeyboardInputModes:0];
  [(UIKeyboardInputModeController *)self setKeyboardInputModeIdentifiers:0];
  [(UIKeyboardInputModeController *)self setUserSelectableKeyboardInputModeIdentifiers:0];
  [(UIKeyboardInputModeController *)self setEnabledInputModes:0];
  [(UIKeyboardInputModeController *)self setNormalizedInputModes:0];
  [(UIKeyboardInputModeController *)self setDefaultKeyboardInputModes:0];
  [(UIKeyboardInputModeController *)self setDefaultRawInputModes:0];
  [(UIKeyboardInputModeController *)self setDefaultInputModes:0];
  [(UIKeyboardInputModeController *)self setDefaultNormalizedInputModes:0];
  [(UIKeyboardInputModeController *)self setInputModeContextIdentifier:0];
  [(UIKeyboardInputModeController *)self setSuggestedInputModesForSiriLanguage:0];
  additionalTextInputLocales = self->_additionalTextInputLocales;
  self->_additionalTextInputLocales = 0;

  documentInputMode = self->_documentInputMode;
  self->_documentInputMode = 0;

  lastUsedInputMode = self->_lastUsedInputMode;
  self->_lastUsedInputMode = 0;

  nextInputModeToUse = self->_nextInputModeToUse;
  self->_nextInputModeToUse = 0;

  currentUsedInputMode = self->_currentUsedInputMode;
  self->_currentUsedInputMode = 0;

  currentInputMode = self->_currentInputMode;
  self->_currentInputMode = 0;

  inputModeThatInvokeEmoji = self->_inputModeThatInvokeEmoji;
  self->_inputModeThatInvokeEmoji = 0;

  inputModesWithoutHardwareSupport = self->_inputModesWithoutHardwareSupport;
  self->_inputModesWithoutHardwareSupport = 0;

  v21.receiver = self;
  v21.super_class = UIKeyboardInputModeController;
  [(UIKeyboardInputModeController *)&v21 dealloc];
}

- (id)inputModeWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setCurrentInputModeInPreference:(id)preference
{
  preferenceCopy = preference;
  if (([preferenceCopy isEmojiInputMode] & 1) == 0)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v3 preferencesActions];
    identifier = [preferenceCopy identifier];
    [preferencesActions updateLastUsedInputMode:identifier];
  }
}

- (id)_systemInputModePassingTest:(id)test
{
  v21 = *MEMORY[0x1E69E9840];
  testCopy = test;
  currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
  if (currentInputMode && testCopy[2](testCopy, currentInputMode))
  {
    goto LABEL_8;
  }

  currentUsedInputMode = [(UIKeyboardInputModeController *)self currentUsedInputMode];

  if (currentUsedInputMode && testCopy[2](testCopy, currentUsedInputMode))
  {
    v7 = currentUsedInputMode;
LABEL_9:
    currentInputMode = v7;
    goto LABEL_10;
  }

  currentInputMode = [(UIKeyboardInputModeController *)self lastUsedInputMode];

  if (currentInputMode)
  {
    if (testCopy[2](testCopy, currentInputMode))
    {
LABEL_8:
      v7 = currentInputMode;
      goto LABEL_9;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
  v11 = [activeInputModes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(activeInputModes);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ((testCopy[2])(testCopy, v15))
        {
          v8 = v15;

          goto LABEL_11;
        }
      }

      v12 = [activeInputModes countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v7 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:@"en_US"];
LABEL_10:
  v8 = v7;
LABEL_11:

  return v8;
}

- (id)_systemInputModePassingLanguageTest:(id)test
{
  testCopy = test;
  currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
  primaryLanguage = [currentInputMode primaryLanguage];

  if (!primaryLanguage || (-[UIKeyboardInputModeController currentInputMode](self, "currentInputMode"), v7 = objc_claimAutoreleasedReturnValue(), [v7 normalizedIdentifier], v8 = objc_claimAutoreleasedReturnValue(), IsNonLinguistic = UIKeyboardInputModeIsNonLinguistic(v8), v8, v7, IsNonLinguistic))
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __69__UIKeyboardInputModeController__systemInputModePassingLanguageTest___block_invoke;
    v31[3] = &unk_1E710DBE8;
    v10 = &v32;
    v32 = testCopy;
    v11 = [(UIKeyboardInputModeController *)self _systemInputModePassingTest:v31];
    goto LABEL_15;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __69__UIKeyboardInputModeController__systemInputModePassingLanguageTest___block_invoke_2;
  v28[3] = &unk_1E710DC10;
  v10 = &v30;
  v12 = testCopy;
  v30 = v12;
  v13 = primaryLanguage;
  v29 = v13;
  v14 = [(UIKeyboardInputModeController *)self _systemInputModePassingTest:v28];
  primaryLanguage2 = [v14 primaryLanguage];
  v16 = [v13 isEqualToString:primaryLanguage2];

  v17 = off_1E70EA000;
  if (v16)
  {
    v18 = v14;
    goto LABEL_10;
  }

  v19 = TIGetDefaultInputModesForLanguage();
  firstObject = [v19 firstObject];

  v21 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(firstObject);

  v17 = off_1E70EA000;
  v18 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v21];

  if (!v18 || (-[UIKeyboardInputModeController currentInputMode](self, "currentInputMode"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 isExtensionInputMode], v22, !v23))
  {

LABEL_10:
    if (!v12[2](v12, v18) || ([v18 primaryLanguage], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v13, "isEqualToString:", v24), v24, (v25 & 1) == 0))
    {
      intlInputMode = [(__objc2_class *)v17[12] intlInputMode];

      v18 = intlInputMode;
    }

    v11 = v18;
    goto LABEL_14;
  }

  v11 = v18;

LABEL_14:
LABEL_15:

  return v11;
}

uint64_t __69__UIKeyboardInputModeController__systemInputModePassingLanguageTest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    v4 = *(a1 + 32);
    v5 = [v3 primaryLanguage];
    v6 = [v4 isEqualToString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UIKeyboardInputMode)hardwareInputMode
{
  currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
  if ([currentInputMode isExtensionInputMode])
  {
  }

  else
  {
    currentInputMode2 = [(UIKeyboardInputModeController *)self currentInputMode];
    identifier = [currentInputMode2 identifier];
    v6 = TIInputModeGetVariant();
    v7 = [v6 isEqualToString:@"HWR"];

    if (v7)
    {
      v8 = +[UIKeyboardInputMode intlInputMode];
LABEL_7:
      keyboardInputModeToReturn = v8;
      goto LABEL_9;
    }
  }

  currentInputMode3 = [(UIKeyboardInputModeController *)self currentInputMode];
  v10 = +[UIKeyboardInputMode dictationInputMode];

  if (currentInputMode3 != v10)
  {
    v8 = [(UIKeyboardInputModeController *)self _systemInputModePassingLanguageTest:&__block_literal_global_147_0];
    goto LABEL_7;
  }

  v12 = +[UIDictationController sharedInstance];
  keyboardInputModeToReturn = [v12 keyboardInputModeToReturn];

LABEL_9:

  return keyboardInputModeToReturn;
}

BOOL __50__UIKeyboardInputModeController_hardwareInputMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isExtensionInputMode])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 hardwareLayout];
    v3 = v4 != 0;
  }

  return v3;
}

- (id)currentSystemInputModeExcludingEmoji:(BOOL)emoji
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__UIKeyboardInputModeController_currentSystemInputModeExcludingEmoji___block_invoke;
  v5[3] = &unk_1E710DC58;
  emojiCopy = emoji;
  v5[4] = self;
  v3 = [(UIKeyboardInputModeController *)self _systemInputModePassingLanguageTest:v5];

  return v3;
}

uint64_t __70__UIKeyboardInputModeController_currentSystemInputModeExcludingEmoji___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isExtensionInputMode] & 1) == 0 && (*(a1 + 40) != 1 || (objc_msgSend(v3, "isEmojiInputMode") & 1) == 0) && (objc_msgSend(v3, "isSpecializedInputMode") & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = UIKeyboardActiveInputModes;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
LABEL_9:
      v10 = 0;
      while (1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [v3 identifier];
        LOBYTE(v11) = UIKeyboardInputBaseLanguagesEqual(v11, v12);

        if (v11)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v8)
          {
            goto LABEL_9;
          }

          goto LABEL_23;
        }
      }

      v13 = [*(a1 + 32) keyboardInputModes];
      v14 = [v13 containsObject:v3];

      if (v14 & 1) != 0 || ([v3 identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E69D97E8]), v15, (v16))
      {
        v4 = 1;
        goto LABEL_6;
      }

      v17 = [v3 identifier];
      IsASCIICapable = UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v17);

      if (!IsASCIICapable)
      {
        goto LABEL_5;
      }

      v6 = [*(a1 + 32) inputModeIdentifierLastUsedForLanguage:@"NonASCII"];
      if (![v6 length])
      {
        goto LABEL_23;
      }

      v19 = [v3 identifier];
      v20 = [v19 isEqualToString:@"intl"];

      if (v20)
      {
        v4 = 1;
      }

      else
      {
        v21 = [objc_opt_class() ASCIICapableInputModeIdentifierForPreferredLanguages];
        v22 = [v3 identifier];
        v4 = [v21 isEqualToString:v22];
      }
    }

    else
    {
LABEL_23:
      v4 = 0;
    }

    goto LABEL_6;
  }

LABEL_5:
  v4 = 0;
LABEL_6:

  return v4;
}

- (id)inputModeToRestoreFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy isMultilingual])
  {
    multilingualSet = [fromCopy multilingualSet];
    firstObject = [multilingualSet firstObject];

    identifier = [fromCopy identifier];
    identifier2 = [firstObject identifier];
    v8 = [identifier isEqualToString:identifier2];

    v9 = fromCopy;
    if ((v8 & 1) == 0)
    {
      if (![fromCopy isMultiscript] || (objc_msgSend(fromCopy, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = UIKeyboardShowsTransliterationCandidatesForInputMode(), v10, v9 = fromCopy, (v11 & 1) == 0))
      {
        v9 = firstObject;
      }
    }

    v12 = v9;
  }

  else
  {
    v12 = fromCopy;
  }

  return v12;
}

- (id)lastUsedInputModeForTextInputMode:(id)mode
{
  v70 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentInputModeInPreference = 0;
    goto LABEL_47;
  }

  [(UIKeyboardInputModeController *)self setDocumentInputMode:modeCopy];
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9860]];

  v8 = modeCopy;
  languageWithRegion = [v8 languageWithRegion];
  v53 = v7;
  selfCopy = self;
  if ([v8 isExtensionInputMode])
  {
    languageWithRegion2 = [v8 languageWithRegion];
    v11 = [languageWithRegion2 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    v12 = [v7 objectForKey:v11];

    if (!v12)
    {
      v13 = TIGetDefaultInputModesForLanguage();
      v14 = v13;
      if (v13)
      {
        firstObject = [v13 firstObject];
        v16 = TIInputModeGetLanguageWithRegion();

        v17 = [v7 objectForKey:v16];

        if (!v17)
        {
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          obj = [v7 allKeys];
          v18 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
          if (v18)
          {
            v19 = v18;
            v48 = v14;
            v20 = *v64;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v64 != v20)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v63 + 1) + 8 * i);
                v23 = TIInputModeGetBaseLanguage();
                v24 = [v16 isEqualToString:v23];

                if (v24)
                {
                  v26 = v22;

                  v16 = v26;
                  goto LABEL_17;
                }
              }

              v19 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

LABEL_17:
            v7 = v53;
            self = selfCopy;
            v14 = v48;
          }
        }

        v11 = v16;
      }
    }

    languageWithRegion = v11;
  }

  v27 = [v7 objectForKey:{languageWithRegion, v48}];
  v49 = v27;
  obja = languageWithRegion;
  if (v27)
  {
    v28 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v27, v27];
    if ([v28 isExtensionInputMode])
    {
      languageWithRegion3 = [v8 languageWithRegion];
      [v28 setPrimaryLanguage:languageWithRegion3];
    }

    if (v28)
    {
      v30 = v28;

      v8 = v30;
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
  v32 = [activeInputModes countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v60;
LABEL_30:
    v35 = 0;
    while (1)
    {
      if (*v60 != v34)
      {
        objc_enumerationMutation(activeInputModes);
      }

      v36 = *(*(&v59 + 1) + 8 * v35);
      identifier = [v36 identifier];
      identifier2 = [v8 identifier];
      v39 = [identifier isEqualToString:identifier2];

      if (v39)
      {
        goto LABEL_45;
      }

      if (v33 == ++v35)
      {
        v33 = [activeInputModes countByEnumeratingWithState:&v59 objects:v68 count:16];
        if (v33)
        {
          goto LABEL_30;
        }

        break;
      }
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)selfCopy activeInputModes];
  v40 = [activeInputModes countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v56;
LABEL_38:
    v43 = 0;
    while (1)
    {
      if (*v56 != v42)
      {
        objc_enumerationMutation(activeInputModes);
      }

      v36 = *(*(&v55 + 1) + 8 * v43);
      normalizedIdentifier = [v36 normalizedIdentifier];
      normalizedIdentifier2 = [v8 normalizedIdentifier];
      v46 = [normalizedIdentifier isEqualToString:normalizedIdentifier2];

      if (v46)
      {
        break;
      }

      if (v41 == ++v43)
      {
        v41 = [activeInputModes countByEnumeratingWithState:&v55 objects:v67 count:16];
        if (v41)
        {
          goto LABEL_38;
        }

        goto LABEL_44;
      }
    }

LABEL_45:
    currentInputModeInPreference = [(UIKeyboardInputModeController *)selfCopy inputModeToRestoreFrom:v36];

    goto LABEL_46;
  }

LABEL_44:

  currentInputModeInPreference = [(UIKeyboardInputModeController *)selfCopy currentInputModeInPreference];
LABEL_46:

LABEL_47:

  return currentInputModeInPreference;
}

- (void)setDocumentInputMode:(id)mode
{
  primaryLanguage = [mode primaryLanguage];
  v4 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:primaryLanguage];
  documentInputMode = self->_documentInputMode;
  self->_documentInputMode = v4;
}

- (void)_trackInputModeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (!+[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardImpl activeInstance];
    if (v4)
    {
      v5 = v4;
      _requiresKeyboardWhenFirstResponder = [necessaryCopy _requiresKeyboardWhenFirstResponder];

      if (_requiresKeyboardWhenFirstResponder)
      {
        v7 = +[UIKeyboardImpl activeInstance];
        inputDelegateManager = [v7 inputDelegateManager];
        textInputTraits = [inputDelegateManager textInputTraits];
        keyboardType = [textInputTraits keyboardType];

        if (keyboardType != 124)
        {
          inputModeContextIdentifier = [(UIKeyboardInputModeController *)self inputModeContextIdentifier];
          textInputContextIdentifier = [necessaryCopy textInputContextIdentifier];
          v13 = KBEqualStrings(inputModeContextIdentifier, textInputContextIdentifier);

          if ((v13 & 1) == 0)
          {
            textInputContextIdentifier2 = [necessaryCopy textInputContextIdentifier];
            [(UIKeyboardInputModeController *)self setInputModeContextIdentifier:textInputContextIdentifier2];

            inputModeContextIdentifier2 = [(UIKeyboardInputModeController *)self inputModeContextIdentifier];

            if (inputModeContextIdentifier2)
            {
              v16 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"UITextInputContextIdentifiers"];
              _prefixedKey = [(UIKeyboardInputModeController *)self _prefixedKey];
              if (_prefixedKey)
              {
                v18 = [v16 objectForKey:_prefixedKey];
                if (!v18)
                {
                  [(UIKeyboardInputModeController *)self _inputModeChangedWhileContextTracked];
                }
              }
            }
          }

          inputModeContextIdentifier3 = [(UIKeyboardInputModeController *)self inputModeContextIdentifier];

          if (inputModeContextIdentifier3)
          {
            v20 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
            isInOnenessSceneAndRTIEnabled = [v20 isInOnenessSceneAndRTIEnabled];

            if ((isInOnenessSceneAndRTIEnabled & 1) == 0)
            {
              textInputMode = [necessaryCopy textInputMode];
              v23 = [(UIKeyboardInputModeController *)self lastUsedInputModeForTextInputMode:textInputMode];

              if (!v23)
              {
                goto LABEL_24;
              }

              currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
              v25 = [currentInputMode isEqual:v23];

              if (v25)
              {
                goto LABEL_24;
              }

              activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
              v27 = [activeInputModes containsObject:v23];

              if (v27)
              {
                [(UIKeyboardInputModeController *)self setCurrentInputMode:v23];
              }

              else
              {
                inputModeContextIdentifier4 = [(UIKeyboardInputModeController *)self inputModeContextIdentifier];
                if (inputModeContextIdentifier4)
                {
                  v29 = inputModeContextIdentifier4;
                  v30 = +[UIKeyboardPreferencesController sharedPreferencesController];
                  preferencesActions = [v30 preferencesActions];
                  if ([preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D96F0]])
                  {
                    v32 = +[UIKeyboardPreferencesController sharedPreferencesController];
                    preferencesActions2 = [v32 preferencesActions];
                    v34 = [preferencesActions2 valueForPreferenceKey:*MEMORY[0x1E69D96F8]];
                    identifier = [v23 identifier];
                    v36 = [v34 containsObject:identifier];

                    if (v36)
                    {
                      goto LABEL_24;
                    }
                  }

                  else
                  {
                  }

                  [(UIKeyboardInputModeController *)self _inputModeChangedWhileContextTracked];
                }
              }

LABEL_24:
            }
          }
        }
      }
    }
  }
}

- (void)_inputModeChangedWhileContextTracked
{
  v31[3] = *MEMORY[0x1E69E9840];
  inputModeContextIdentifier = [(UIKeyboardInputModeController *)self inputModeContextIdentifier];
  if (inputModeContextIdentifier)
  {
    v4 = inputModeContextIdentifier;
    currentPublicInputMode = [(UIKeyboardInputModeController *)self currentPublicInputMode];

    if (currentPublicInputMode)
    {
      _prefixedKey = [(UIKeyboardInputModeController *)self _prefixedKey];
      _prefixedSetTimeKey = [(UIKeyboardInputModeController *)self _prefixedSetTimeKey];
      v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"UITextInputContextIdentifiers"];
      v9 = [v8 objectForKey:_prefixedKey];
      currentPublicInputMode2 = [(UIKeyboardInputModeController *)self currentPublicInputMode];
      isExtensionInputMode = [currentPublicInputMode2 isExtensionInputMode];

      if (isExtensionInputMode)
      {
        v12 = MEMORY[0x1E696ACC8];
        currentPublicInputMode3 = [(UIKeyboardInputModeController *)self currentPublicInputMode];
        v14 = [v12 archivedDataWithRootObject:currentPublicInputMode3 requiringSecureCoding:1 error:0];
        v15 = 0;
      }

      else
      {
        currentPublicInputMode3 = [(UIKeyboardInputModeController *)self currentPublicInputMode];
        identifier = [currentPublicInputMode3 identifier];
        v15 = TIInputModeGetLanguageWithRegion();

        v14 = 0;
      }

      if (!v9)
      {
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        currentPublicInputMode4 = [(UIKeyboardInputModeController *)self currentPublicInputMode];
        isExtensionInputMode2 = [currentPublicInputMode4 isExtensionInputMode];

        if (isExtensionInputMode2)
        {
          v19 = v9;
          if (v14 && ([v14 isEqualToData:v19] & 1) != 0)
          {
            goto LABEL_20;
          }

LABEL_16:
          currentPublicInputMode5 = [(UIKeyboardInputModeController *)self currentPublicInputMode];
          isExtensionInputMode3 = [currentPublicInputMode5 isExtensionInputMode];

          if (isExtensionInputMode3)
          {
            v24 = v14;
          }

          else
          {
            v24 = v15;
          }

          [v8 setObject:v24 forKey:_prefixedKey];
          date = [MEMORY[0x1E695DF00] date];
          [v8 setObject:date forKey:_prefixedSetTimeKey];

          [v8 synchronize];
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v30[0] = @"UITextInputContextIdentifierPreferencesDomainKey";
          v30[1] = @"UITextInputContextIdentifierPreferencesIdentifierKey";
          v31[0] = @"UITextInputContextIdentifiers";
          v31[1] = _prefixedKey;
          v30[2] = @"UITextInputContextIdentifierPreferencesIdentifierSetTimeKey";
          v31[2] = _prefixedSetTimeKey;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
          [defaultCenter postNotificationName:@"UITextInputContextIdentifierDataDidUpdateNotification" object:0 userInfo:v27];

          goto LABEL_20;
        }

LABEL_15:
        v19 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v9;
        currentPublicInputMode6 = [(UIKeyboardInputModeController *)self currentPublicInputMode];
        isExtensionInputMode4 = [currentPublicInputMode6 isExtensionInputMode];

        if (isExtensionInputMode4)
        {

          goto LABEL_15;
        }

        v28 = [v29 isEqualToString:v15];

        v19 = 0;
        if ((v28 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v19 = 0;
      }

LABEL_20:
    }
  }
}

- (id)_prefixedSetTimeKey
{
  _prefixedKey = [(UIKeyboardInputModeController *)self _prefixedKey];
  v3 = [_prefixedKey stringByAppendingString:@"_SETTIME"];

  return v3;
}

- (NSDate)defaultsLastChangedDate
{
  _prefixedSetTimeKey = [(UIKeyboardInputModeController *)self _prefixedSetTimeKey];
  if (_prefixedSetTimeKey)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"UITextInputContextIdentifiers"];
    v4 = [v3 objectForKey:_prefixedSetTimeKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDefaultsLastChangedDate:(id)date
{
  dateCopy = date;
  _prefixedSetTimeKey = [(UIKeyboardInputModeController *)self _prefixedSetTimeKey];
  if (_prefixedSetTimeKey)
  {
    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"UITextInputContextIdentifiers"];
    [v5 setObject:dateCopy forKey:_prefixedSetTimeKey];
    [v5 synchronize];
  }
}

- (id)textInputModeForResponder:(id)responder
{
  self->_suppressCurrentPublicInputMode = 1;
  result = [responder textInputMode];
  self->_suppressCurrentPublicInputMode = 0;
  return result;
}

- (UIKeyboardInputMode)lastUsedInputModeForCurrentContext
{
  v3 = +[UIPeripheralHost sharedInstance];
  lastUsedInputModeForCurrentContext = [v3 lastUsedInputModeForCurrentContext];
  v5 = lastUsedInputModeForCurrentContext;
  if (lastUsedInputModeForCurrentContext)
  {
    currentInputModeInPreference = lastUsedInputModeForCurrentContext;
  }

  else
  {
    currentInputModeInPreference = [(UIKeyboardInputModeController *)self currentInputModeInPreference];
  }

  v7 = currentInputModeInPreference;

  return v7;
}

- (id)suggestedDictationLanguagesForDeviceLanguage
{
  v27[1] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D95B8] = [MEMORY[0x1E69D95B8] sharedInputModeController];
  v3 = objc_opt_respondsToSelector();

  mEMORY[0x1E69D95B8]2 = [MEMORY[0x1E69D95B8] sharedInputModeController];
  suggestedDictationLanguageForDeviceLanguage = mEMORY[0x1E69D95B8]2;
  if (v3)
  {
    suggestedDictationLanguagesForDeviceLanguage = [mEMORY[0x1E69D95B8]2 suggestedDictationLanguagesForDeviceLanguage];
    goto LABEL_6;
  }

  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    mEMORY[0x1E69D95B8]3 = [MEMORY[0x1E69D95B8] sharedInputModeController];
    suggestedDictationLanguageForDeviceLanguage = [mEMORY[0x1E69D95B8]3 suggestedDictationLanguageForDeviceLanguage];

    if (!suggestedDictationLanguageForDeviceLanguage)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v27[0] = suggestedDictationLanguageForDeviceLanguage;
    suggestedDictationLanguagesForDeviceLanguage = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
LABEL_6:
    v9 = suggestedDictationLanguagesForDeviceLanguage;
LABEL_7:

    goto LABEL_9;
  }

  v9 = 0;
LABEL_9:
  if ([v9 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v9;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          if ([(__CFString *)v16 hasPrefix:@"zh"])
          {
            v17 = +[UIDictationConnectionPreferences sharedInstance];
            languageCode = [v17 languageCode];

            if (([languageCode isEqualToString:@"yue-CN"] & 1) != 0 || objc_msgSend(languageCode, "isEqualToString:", @"zh-HK"))
            {
              v19 = @"yue_CN";
              if (([(__CFString *)v16 isEqualToString:@"zh_CN"]& 1) != 0 || (v19 = @"zh_HK", [(__CFString *)v16 isEqualToString:@"zh_TW"]))
              {

                v16 = v19;
              }
            }
          }

          [array addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v9 = v21;
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)defaultDictationLanguages:(id)languages
{
  languagesCopy = languages;
  mEMORY[0x1E69D95B8] = [MEMORY[0x1E69D95B8] sharedInputModeController];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    mEMORY[0x1E69D95B8]2 = [MEMORY[0x1E69D95B8] sharedInputModeController];
    v7 = [mEMORY[0x1E69D95B8]2 defaultDictationLanguagesForKeyboardLanguage:languagesCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)keyboardLanguageForDictationLanguage:(id)language
{
  v32 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if (qword_1ED4986E0 != -1)
  {
    dispatch_once(&qword_1ED4986E0, &__block_literal_global_194);
  }

  v5 = [qword_1ED4986D8 objectForKey:languageCopy];
  if (!v5)
  {
    v20 = languageCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = +[UIKeyboardInputModeController sharedInputModeController];
    activeInputModes = [v6 activeInputModes];

    obj = activeInputModes;
    v8 = [activeInputModes countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(obj);
          }

          languageWithRegion = [*(*(&v26 + 1) + 8 * i) languageWithRegion];
          v13 = [(UIKeyboardInputModeController *)self defaultDictationLanguages:languageWithRegion];
          v14 = v13;
          if (v13)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v23;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v23 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [qword_1ED4986D8 setObject:languageWithRegion forKey:*(*(&v22 + 1) + 8 * j)];
                }

                v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v16);
            }
          }

          else
          {
            [qword_1ED4986D8 setObject:languageWithRegion forKey:languageWithRegion];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
    }

    languageCopy = v20;
    v5 = [qword_1ED4986D8 objectForKey:v20];
  }

  return v5;
}

void __70__UIKeyboardInputModeController_keyboardLanguageForDictationLanguage___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED4986D8;
  qword_1ED4986D8 = v0;
}

- (void)downloadDictationLangaugesAssets
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  activeDictationLanguages = [(UIKeyboardInputModeController *)self activeDictationLanguages];
  v3 = [activeDictationLanguages countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(activeDictationLanguages);
        }

        [UIDictationUtilities _isDictationAssetAvailableForLocale:*(*(&v7 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [activeDictationLanguages countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)isDictationLanguageEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions valueForPreferenceKey:@"DictationLanguagesEnabled"];

  allKeys = [v7 allKeys];
  LOBYTE(preferencesActions) = [allKeys containsObject:enabledCopy];

  if ((preferencesActions & 1) == 0)
  {
    v9 = [(UIKeyboardInputModeController *)self updateEnabledDictationLanguages:0];

    v7 = v9;
  }

  v10 = [v7 objectForKey:enabledCopy];
  if ([v10 BOOLValue])
  {
    v11 = +[UIDictationController sharedInstance];
    dictationConnection = [v11 dictationConnection];
    v13 = [dictationConnection dictationIsAvailableForLanguage:enabledCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)updateEnabledDictationLanguages:(BOOL)languages
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__119;
  v11 = __Block_byref_object_dispose__119;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__UIKeyboardInputModeController_updateEnabledDictationLanguages___block_invoke;
  v5[3] = &unk_1E710DC80;
  languagesCopy = languages;
  v5[4] = self;
  v5[5] = &v7;
  [(UIKeyboardInputModeController *)self updateEnabledDictationAndSLSLanguagesWithCompletionBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

void __65__UIKeyboardInputModeController_updateEnabledDictationLanguages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v20 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v5];
  v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v20];
  if ((*(a1 + 48) & 1) != 0 || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v8 = objc_claimAutoreleasedReturnValue(), [v8 inputDelegateManager], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "keyInputDelegate"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    v11 = [*(a1 + 32) keyboardInputModes];
    v12 = [v11 count];

    if (v12 == 1)
    {
      v13 = [*(a1 + 32) keyboardInputModes];
      v14 = [v13 objectAtIndexedSubscript:0];

      v15 = [v14 languageWithRegion];
      if (v15)
      {
        [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v15];
      }
    }

    v16 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v17 = [v16 preferencesActions];
    [v17 setEnabledDictationLanguages:v5];

    if (_os_feature_enabled_impl())
    {
      [*(a1 + 32) setDictationSLSLanguagesEnabled:v20];
    }
  }

  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v5;
}

+ (id)disallowedDictationLanguagesForDeviceLanguage
{
  UIKeyboardHasCompletedBuddy();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    if (qword_1ED4986F0 != -1)
    {
      dispatch_once(&qword_1ED4986F0, &__block_literal_global_202);
    }

    v3 = qword_1ED4986E8;
  }

  return v3;
}

void __78__UIKeyboardInputModeController_disallowedDictationLanguagesForDeviceLanguage__block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v1 = v0;
  v2 = &stru_1EFB14550;
  if (v0)
  {
    v2 = v0;
  }

  v3 = v2;

  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v8 = [&unk_1EFE342E8 objectForKeyedSubscript:v3];

  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v4 initWithArray:v5];
  v7 = qword_1ED4986E8;
  qword_1ED4986E8 = v6;
}

- (void)updateEnabledDictationAndSLSLanguagesWithCompletionBlock:(id)block
{
  v95 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  disallowedDictationLanguagesForDeviceLanguage = [objc_opt_class() disallowedDictationLanguagesForDeviceLanguage];
  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v4 preferencesActions];
  v6 = [preferencesActions valueForPreferenceKey:@"DictationLanguagesEnabled"];

  getDictationSLSLanguagesEnabled = [(UIKeyboardInputModeController *)self getDictationSLSLanguagesEnabled];
  v8 = [getDictationSLSLanguagesEnabled keysOfEntriesPassingTest:&__block_literal_global_221_0];
  v77 = [v8 count];

  suggestedDictationLanguagesForDeviceLanguage = [(UIKeyboardInputModeController *)self suggestedDictationLanguagesForDeviceLanguage];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  selfCopy = self;
  obj = [(UIKeyboardInputModeController *)self activeDictationSupportedInputModeIdentifiers];
  v76 = dictionary2;
  v74 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (v74)
  {
    v72 = *v90;
    do
    {
      v12 = 0;
      do
      {
        if (*v90 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v89 + 1) + 8 * v12);
        blockCopy = [(UIKeyboardInputModeController *)selfCopy defaultDictationLanguages:v13, blockCopy];
        v80 = blockCopy;
        v75 = v12;
        if (!blockCopy)
        {
          allKeys = [v6 allKeys];
          v40 = [allKeys containsObject:v13];

          if (v40)
          {
            v41 = [v6 objectForKey:v13];
            bOOLValue = [v41 BOOLValue];
          }

          else
          {
            bOOLValue = [disallowedDictationLanguagesForDeviceLanguage containsObject:v13] ^ 1;
          }

          v43 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
          [dictionary setObject:v43 forKey:v13];

          v44 = [getDictationSLSLanguagesEnabled objectForKeyedSubscript:v13];
          bOOLValue2 = [v44 BOOLValue];

          if (bOOLValue2)
          {
            v46 = v76;
            v47 = MEMORY[0x1E695E118];
            goto LABEL_45;
          }

          if (v77 < 4)
          {
            v48 = bOOLValue;
          }

          else
          {
            v48 = 0;
          }

          if (v48 == 1 && ([getDictationSLSLanguagesEnabled allKeys], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "containsObject:", v13), v49, (v50 & 1) == 0))
          {
            v52 = v13;
            dictionary2 = v76;
            [v76 setObject:MEMORY[0x1E695E118] forKey:v52];
            ++v77;
          }

          else
          {
            v46 = v76;
            v47 = MEMORY[0x1E695E110];
LABEL_45:
            v51 = v13;
            dictionary2 = v46;
            [v46 setObject:v47 forKey:v51];
          }

          v15 = 0;
          goto LABEL_47;
        }

        v15 = blockCopy;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v79 = [blockCopy countByEnumeratingWithState:&v85 objects:v93 count:16];
        if (!v79)
        {
          dictionary2 = v76;
          goto LABEL_47;
        }

        v78 = *v86;
        dictionary2 = v76;
        do
        {
          for (i = 0; i != v79; ++i)
          {
            if (*v86 != v78)
            {
              objc_enumerationMutation(v80);
            }

            v17 = *(*(&v85 + 1) + 8 * i);
            allKeys2 = [v6 allKeys];
            v19 = [allKeys2 containsObject:v17];

            if (v19)
            {
              v22 = [v6 objectForKey:v17];
              bOOLValue3 = [v22 BOOLValue];

              v21 = [getDictationSLSLanguagesEnabled objectForKey:v17];
              LODWORD(v22) = [v21 BOOLValue];
              if ((v22 & 1) == 0 && bOOLValue3)
              {
                [getDictationSLSLanguagesEnabled allKeys];
                v23 = dictionary;
                v24 = suggestedDictationLanguagesForDeviceLanguage;
                v25 = getDictationSLSLanguagesEnabled;
                v27 = v26 = v6;
                LODWORD(v22) = [v27 containsObject:v17] ^ 1;

                v6 = v26;
                getDictationSLSLanguagesEnabled = v25;
                suggestedDictationLanguagesForDeviceLanguage = v24;
                dictionary = v23;
                dictionary2 = v76;
              }
            }

            else if (suggestedDictationLanguagesForDeviceLanguage && ([MEMORY[0x1E695DFD8] setWithArray:suggestedDictationLanguagesForDeviceLanguage], v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v80), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isSubsetOfSet:", v29), v29, v28, v30))
            {
              v31 = [suggestedDictationLanguagesForDeviceLanguage containsObject:v17];
              LODWORD(v22) = v31;
              bOOLValue3 = v31;
            }

            else
            {
              firstObject = [v80 firstObject];
              v22 = v17 == firstObject;

              bOOLValue3 = v22;
            }

            v33 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue3];
            [dictionary setObject:v33 forKey:v17];

            v34 = [getDictationSLSLanguagesEnabled objectForKeyedSubscript:v17];
            bOOLValue4 = [v34 BOOLValue];

            if (bOOLValue4)
            {
              v36 = dictionary2;
              v37 = MEMORY[0x1E695E118];
            }

            else
            {
              if (v77 < 4)
              {
                v38 = v22;
              }

              else
              {
                v38 = 0;
              }

              v36 = dictionary2;
              if (v38 == 1)
              {
                [dictionary2 setObject:MEMORY[0x1E695E118] forKey:v17];
                ++v77;
                continue;
              }

              v37 = MEMORY[0x1E695E110];
            }

            [v36 setObject:v37 forKey:v17];
          }

          v15 = v80;
          v79 = [v80 countByEnumeratingWithState:&v85 objects:v93 count:16];
        }

        while (v79);
LABEL_47:

        v12 = v75 + 1;
      }

      while (v75 + 1 != v74);
      v53 = [obj countByEnumeratingWithState:&v89 objects:v94 count:16];
      v74 = v53;
    }

    while (v53);
  }

  [dictionary2 keysOfEntriesPassingTest:&__block_literal_global_225_0];
  v55 = v54 = dictionary2;
  v56 = [v55 count];

  v57 = blockCopy;
  if (v56 <= 1)
  {
    activeDictationLanguages = [(UIKeyboardInputModeController *)selfCopy activeDictationLanguages];
    v59 = [activeDictationLanguages count];

    if (v59 > 4)
    {
      v60 = [dictionary keysOfEntriesPassingTest:&__block_literal_global_227_0];
      v61 = [v60 count];

      v62 = [dictionary count];
      if (v62 <= [v6 count] || v61 < 2)
      {
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __90__UIKeyboardInputModeController_updateEnabledDictationAndSLSLanguagesWithCompletionBlock___block_invoke_5;
        v81[3] = &unk_1E70F7970;
        v54 = v76;
        v82 = v76;
        [dictionary enumerateKeysAndObjectsUsingBlock:v81];
        v63 = v82;
      }

      else
      {
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __90__UIKeyboardInputModeController_updateEnabledDictationAndSLSLanguagesWithCompletionBlock___block_invoke_4;
        v83[3] = &unk_1E70F7970;
        v54 = v76;
        v84 = v76;
        [dictionary enumerateKeysAndObjectsUsingBlock:v83];
        v63 = v84;
      }
    }

    else
    {
      v54 = v76;
      [v76 removeAllObjects];
    }
  }

  (*(blockCopy + 2))(blockCopy, dictionary, v54);
  if (disallowedDictationLanguagesForDeviceLanguage)
  {
    v64 = MEMORY[0x1E695DFD8];
    allKeys3 = [dictionary allKeys];
    v66 = allKeys3;
    if (allKeys3)
    {
      v67 = allKeys3;
    }

    else
    {
      v67 = MEMORY[0x1E695E0F0];
    }

    v68 = [v64 setWithArray:{v67, blockCopy}];
    [disallowedDictationLanguagesForDeviceLanguage intersectSet:v68];

    v54 = v76;
  }
}

+ (BOOL)shouldShowDictationMic
{
  v2 = +[UIKeyboardInputModeController sharedInputModeController];
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  if ([sharedPreferences dictationIsEnabled] & 1) == 0 && (objc_msgSend(sharedPreferences, "suppressDictationOptIn"))
  {
    LOBYTE(v4) = 0;
LABEL_11:

    return v4;
  }

  enabledDictationLanguages = [v2 enabledDictationLanguages];
  if (![enabledDictationLanguages count])
  {
    LOBYTE(v4) = 0;
    goto LABEL_10;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getAFDictationRestrictedSymbolLoc_ptr;
  v14 = getAFDictationRestrictedSymbolLoc_ptr;
  if (!getAFDictationRestrictedSymbolLoc_ptr)
  {
    v7 = AssistantServicesLibrary();
    v12[3] = dlsym(v7, "AFDictationRestricted");
    getAFDictationRestrictedSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v4 = v6() ^ 1;
LABEL_10:

    goto LABEL_11;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _AFDictationRestricted(void)"];
  [currentHandler handleFailureInFunction:v10 file:@"UIKeyboardInputModeController.m" lineNumber:123 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)changePreferredEmojiSearchInputModeForInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 updateIdleDetection:0];

  v6 = +[UIKeyboardImpl activeInstance];
  inputDelegateManager = [v6 inputDelegateManager];
  [inputDelegateManager setForwardingInputDelegate:delegateCopy];

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 enableTransientInputDelegateSelectionMode];

  v9 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v9 responder];

  currentInputModeInPreference = [(UIKeyboardInputModeController *)self currentInputModeInPreference];
  textInputContextIdentifier = [responder textInputContextIdentifier];

  if (textInputContextIdentifier)
  {
    textInputMode = [responder textInputMode];
    v13 = [(UIKeyboardInputModeController *)self lastUsedInputModeForTextInputMode:textInputMode];

    currentInputModeInPreference = v13;
  }

  if (!currentInputModeInPreference || ([currentInputModeInPreference isEmojiInputMode] & 1) != 0 || (objc_msgSend(currentInputModeInPreference, "supportsEmojiSearch") & 1) == 0)
  {
    v14 = [(UIKeyboardInputModeController *)self currentSystemInputModeExcludingEmoji:1];

    currentInputModeInPreference = v14;
  }

  [(UIKeyboardInputModeController *)self setCurrentInputMode:currentInputModeInPreference];
}

- (BOOL)containsEmojiInputMode
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
  v3 = [activeInputModes countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(activeInputModes);
        }

        if ([*(*(&v7 + 1) + 8 * i) isEmojiInputMode])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [activeInputModes countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)containsDictationSupportedInputMode
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
  v3 = [activeInputModes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(activeInputModes);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = +[UIDictationController sharedInstance];
        v9 = 0;
        LOBYTE(v6) = [v7 supportsInputMode:v6 error:&v9];

        if (v6)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [activeInputModes countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)setDictationSLSLanguagesEnabled:(id)enabled
{
  enabledCopy = enabled;
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  [sharedPreferences setDictationSLSLanguagesEnabled:enabledCopy];
}

- (id)getDictationSLSLanguagesEnabled
{
  sharedPreferences = [getAFPreferencesClass() sharedPreferences];
  dictationSLSLanguagesEnabled = [sharedPreferences dictationSLSLanguagesEnabled];

  return dictationSLSLanguagesEnabled;
}

- (void)_setCurrentInputMode:(id)mode force:(BOOL)force
{
  modeCopy = mode;
  identifier = [modeCopy identifier];
  if (!force)
  {
    activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
    v8 = [activeInputModes containsObject:modeCopy];

    if ((v8 & 1) == 0)
    {
      normalizedInputModes = [(UIKeyboardInputModeController *)self normalizedInputModes];
      normalizedIdentifier = [modeCopy normalizedIdentifier];
      v11 = [normalizedInputModes indexOfObject:normalizedIdentifier];

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }

      enabledInputModes = [(UIKeyboardInputModeController *)self enabledInputModes];
      v13 = [enabledInputModes objectAtIndex:v11];

      identifier = v13;
    }
  }

  if (!identifier)
  {
    goto LABEL_8;
  }

  v14 = +[UIKeyboardImpl sharedInstance];
  [v14 setInputMode:identifier];

LABEL_7:
LABEL_8:
}

- (void)updateCurrentInputMode:(id)mode
{
  v14[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  currentInputMode = self->_currentInputMode;
  if (currentInputMode == modeCopy)
  {
    v10 = 0;
  }

  else
  {
    if (![(UIKeyboardInputMode *)currentInputMode isSpecializedInputMode]&& ![(UIKeyboardInputMode *)modeCopy isSpecializedInputMode])
    {
      v7 = +[UIDictationController activeInstance];
      [v7 endSmartLanguageSelectionOverride];
    }

    v8 = self->_currentInputMode;
    objc_storeStrong(&self->_currentInputMode, mode);
    if (self->_inputModeThatInvokeEmoji && ![(UIKeyboardInputMode *)modeCopy isEmojiInputMode])
    {
      inputModeThatInvokeEmoji = self->_inputModeThatInvokeEmoji;
      self->_inputModeThatInvokeEmoji = 0;
    }

    if (v8)
    {
      v13 = @"UITextInputFromInputModeKey";
      v14[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    }

    else
    {
      v10 = 0;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UITextInputCurrentInputModeDidChangeNotification" object:0 userInfo:v10];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"UITextInputDidPersistFindUINotification" object:0 userInfo:v10];
}

- (BOOL)currentLocaleRequiresExtendedSetup
{
  v3 = [(UIKeyboardInputModeController *)self suggestedInputModesForCurrentLocale:0 fallbackToDefaultInputModes:0];
  v4 = [v3 arrayByExcludingObjectsInArray:&unk_1EFE2C208];

  v10 = 0;
  v11 = 0;
  [(UIKeyboardInputModeController *)self getHardwareKeyboardLanguage:&v11 countryCode:&v10];
  v5 = v11;
  v6 = v10;
  v7 = [(UIKeyboardInputModeController *)self suggestedInputModesForHardwareKeyboardLanguage:v5 countryCode:v6 inputModes:v4];
  v8 = [v4 count];
  LOBYTE(v8) = ([v7 count] + v8) > 1;

  return v8;
}

- (id)filteredInputModesForSiriLanguageFromInputModes:(id)modes
{
  v31 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = modesCopy;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v10, array2];
        suggestedInputModesForSiriLanguage = [(UIKeyboardInputModeController *)self suggestedInputModesForSiriLanguage];
        normalizedIdentifier = [v11 normalizedIdentifier];
        v14 = [suggestedInputModesForSiriLanguage containsObject:normalizedIdentifier];

        v15 = array;
        if ((v14 & 1) != 0 || ([v11 primaryLanguage], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"mul"), v16, v15 = array2, v17))
        {
          [v15 addObject:v10];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  if (![array count])
  {
    suggestedInputModesForSiriLanguage2 = [(UIKeyboardInputModeController *)self suggestedInputModesForSiriLanguage];
    v19 = [suggestedInputModesForSiriLanguage2 count];

    if (v19)
    {
      suggestedInputModesForSiriLanguage3 = [(UIKeyboardInputModeController *)self suggestedInputModesForSiriLanguage];
      firstObject = [suggestedInputModesForSiriLanguage3 firstObject];
      [array addObject:firstObject];
    }
  }

  v22 = array2;
  if ([array2 count])
  {
    [array addObjectsFromArray:v22];
  }

  return array;
}

- (id)filteredTVInputModesFromInputModes:(id)modes
{
  v50 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  if (qword_1ED498700 != -1)
  {
    dispatch_once(&qword_1ED498700, &__block_literal_global_239);
  }

  if (!_os_feature_enabled_impl())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = modesCopy;
    v14 = [v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v41;
LABEL_16:
      v17 = 0;
      while (1)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);
        v19 = qword_1ED4986F8;
        normalizedIdentifier = [v18 normalizedIdentifier];
        LODWORD(v19) = [v19 containsObject:normalizedIdentifier];

        if (!v19)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v15)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v5 = v18;

      if (!v5)
      {
        goto LABEL_26;
      }

      if ([v5 defaultLayoutIsASCIICapable])
      {
        v4 = [MEMORY[0x1E695DF70] arrayWithObjects:{v5, 0}];
        goto LABEL_32;
      }

      v21 = 0;
    }

    else
    {
LABEL_22:

      v5 = 0;
LABEL_26:
      v21 = 1;
    }

    v22 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(@"en_US@hw=Automatic");
    v23 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v22];
    if (v21)
    {
      [MEMORY[0x1E695DF70] arrayWithObjects:{v23, 0, v39, v40}];
    }

    else
    {
      [MEMORY[0x1E695DF70] arrayWithObjects:{v5, v23, 0, v40}];
    }
    v4 = ;

LABEL_32:
    normalizedIdentifier2 = [v5 normalizedIdentifier];
    v25 = [normalizedIdentifier2 isEqualToString:@"ja_JP-Kana"];

    if (v25)
    {
      v26 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(@"ja_JP-Romaji@hw=Automatic");
      v27 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v26];
      [v4 insertObject:v27 atIndex:1];
    }

    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    v30 = TIInputModeGetBaseLanguage();
    v31 = TIInputModeGetRegion();
    v32 = TIInputModeGetVariant();
    if ((([v30 isEqualToString:@"zh"] & 1) != 0 || objc_msgSend(v30, "isEqualToString:", @"en")) && objc_msgSend(v31, "isEqualToString:", @"HK"))
    {
      [v4 removeAllObjects];
      v33 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(@"zh_Hant-Wubihua@hw=Automatic");
      v34 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v33];
      [v4 addObject:v34];

      v35 = @"zh_Hant-Sucheng@hw=Automatic";
    }

    else
    {
      if (![v30 isEqualToString:@"es"] || !objc_msgSend(v32, "isEqualToString:", @"419"))
      {
        goto LABEL_42;
      }

      [v4 removeAllObjects];
      v35 = @"es_MX@hw=Automatic";
    }

    v36 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v35);
    v37 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v36];
    [v4 addObject:v37];

LABEL_42:
    goto LABEL_43;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        v11 = qword_1ED4986F8;
        normalizedIdentifier3 = [v10 normalizedIdentifier];
        LOBYTE(v11) = [v11 containsObject:normalizedIdentifier3];

        if ((v11 & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v7);
  }

LABEL_43:

  return v4;
}

void __68__UIKeyboardInputModeController_filteredTVInputModesFromInputModes___block_invoke()
{
  v0 = qword_1ED4986F8;
  qword_1ED4986F8 = &unk_1EFE2C220;
}

+ (id)filteredCarPlayInputModesFromInputModes:(id)modes
{
  v36 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v5 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = modesCopy;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = objc_opt_class();
        identifier = [v10 identifier];
        v13 = [v11 multilingualSetForInputModeIdentifier:identifier];

        if ([v13 count] < 2 || ((v30 = objc_msgSend(v13, "indexOfObjectPassingTest:", &__block_literal_global_288), _GetNormalizedIdentifiersForMultiscriptInputModes(), v14 = v7, v15 = v8, v16 = v5, v17 = self, v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "normalizedIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "containsObject:", v19), v19, v18, self = v17, v5 = v16, v8 = v15, v7 = v14, v30 == 0x7FFFFFFFFFFFFFFFLL) ? (v21 = v20 == 0) : (v21 = 0), v21))
        {
          [v5 addObject:v10];
        }

        else
        {
          identifier2 = [v10 identifier];
          v23 = TIInputModeGetComponentsFromIdentifier();
          v24 = [v23 mutableCopy];

          [v24 removeObjectForKey:@"ml"];
          if (UIKeyboardInputModeIsMultiscript(v10))
          {
            TIInputModeGetNormalizedIdentifierFromComponents();
          }

          else
          {
            UIKeyboardInputModeGetIdentifierFromComponents(v24);
          }
          v25 = ;
          v26 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v25];
          [v5 addObject:v26];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  array = [v5 array];

  return array;
}

- (id)inputModeByReplacingSoftwareLayoutWithSoftwareLayout:(id)layout inInputMode:(id)mode
{
  modeCopy = mode;
  layoutCopy = layout;
  v7 = UIKeyboardGetComponentsFromLanguageIdentifier(modeCopy);
  v8 = [v7 objectForKeyedSubscript:@"sw"];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sw=%@", v8];
  layoutCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"sw=%@", layoutCopy];

  v11 = [modeCopy stringByReplacingOccurrencesOfString:v9 withString:layoutCopy];

  return v11;
}

- (id)filteredPadInputModesFromInputModes:(id)modes withRules:(id)rules
{
  v47 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  rulesCopy = rules;
  array = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = modesCopy;
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    v31 = *v42;
    v32 = v6;
    do
    {
      v10 = 0;
      v33 = v8;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        softwareLayout = [v11 softwareLayout];

        if (softwareLayout)
        {
          softwareLayout2 = [v11 softwareLayout];
          v14 = [rulesCopy objectForKeyedSubscript:softwareLayout2];

          if (v14)
          {
            v36 = v10;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v15 = v6;
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  if (v11 != v20)
                  {
                    normalizedIdentifier = [v11 normalizedIdentifier];
                    normalizedIdentifier2 = [v20 normalizedIdentifier];
                    if ([normalizedIdentifier isEqualToString:normalizedIdentifier2])
                    {
                      softwareLayout3 = [v20 softwareLayout];
                      v24 = [softwareLayout3 isEqualToString:v14];

                      if (v24)
                      {

                        v9 = v31;
                        v6 = v32;
                        v8 = v33;
                        v10 = v36;
                        goto LABEL_23;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v17);
            }

            identifier = [v11 identifier];
            v26 = [(UIKeyboardInputModeController *)self inputModeByReplacingSoftwareLayoutWithSoftwareLayout:v14 inInputMode:identifier];

            v27 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v26];

            v11 = v27;
            v9 = v31;
            v6 = v32;
            v8 = v33;
            v10 = v36;
          }
        }

        [array addObject:v11];
LABEL_23:

        ++v10;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v8);
  }

  v28 = [array copy];

  return v28;
}

- (id)fallbackCurrentInputModeForFilteredInputMode:(id)mode fromInputModes:(id)modes
{
  v24 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  modesCopy = modes;
  v8 = [(UIKeyboardInputModeController *)self identifiersFromInputModes:modesCopy];
  identifier = [modeCopy identifier];
  v10 = [(UIKeyboardInputModeController *)self fallbackCurrentInputModeForFilteredInputModeIdentifier:identifier fromInputModeIdentifiers:v8];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = modesCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        identifier2 = [v15 identifier];
        v17 = [identifier2 isEqualToString:v10];

        if (v17)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

+ (id)bidirectionalLayoutFallbacksForPhoneLayoutsOnPad
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = bidirectionalLayoutFallbacksForPhoneLayoutsOnPad___fallbacks;
  if (!bidirectionalLayoutFallbacksForPhoneLayoutsOnPad___fallbacks)
  {
    layoutFallbacksForPhoneLayoutsOnPad = [self layoutFallbacksForPhoneLayoutsOnPad];
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{2 * objc_msgSend(layoutFallbacksForPhoneLayoutsOnPad, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = layoutFallbacksForPhoneLayoutsOnPad;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, v16}];
          [v5 setObject:v12 forKeyedSubscript:v11];
          [v5 setObject:v11 forKeyedSubscript:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
    v14 = bidirectionalLayoutFallbacksForPhoneLayoutsOnPad___fallbacks;
    bidirectionalLayoutFallbacksForPhoneLayoutsOnPad___fallbacks = v13;

    v3 = bidirectionalLayoutFallbacksForPhoneLayoutsOnPad___fallbacks;
  }

  return v3;
}

- (id)fallbackCurrentInputModeForFilteredInputModeIdentifier:(id)identifier fromInputModeIdentifiers:(id)identifiers
{
  identifierCopy = identifier;
  identifiersCopy = identifiers;
  v8 = UIKeyboardGetComponentsFromLanguageIdentifier(identifierCopy);
  v9 = [v8 objectForKeyedSubscript:@"sw"];
  if (v9 && ([objc_opt_class() bidirectionalLayoutFallbacksForPhoneLayoutsOnPad], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v9), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = [(UIKeyboardInputModeController *)self inputModeByReplacingSoftwareLayoutWithSoftwareLayout:v11 inInputMode:identifierCopy];
    if ([identifiersCopy containsObject:v12])
    {
      firstObject = v12;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [identifiersCopy firstObject];
  }

  if (firstObject)
  {
    v14 = firstObject;
  }

  else
  {
    v14 = identifierCopy;
  }

  v15 = v14;

  return v14;
}

void __75__UIKeyboardInputModeController_updateDefaultInputModesIfNecessaryForIdiom__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 identifierWithLayouts];
  [v3 addObject:v5];

  v6 = *(a1 + 40);
  v7 = [v4 normalizedIdentifier];

  [v6 addObject:v7];
}

- (id)appendPasscodeInputModes:(id)modes
{
  v27 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v5 = +[UIKeyboard keyboardBundleIdentifier];
  if ([v5 isEqualToString:@"com.apple.springboard"])
  {
    v6 = +[UIKeyboardImpl activeInstance];
    textInputTraits = [v6 textInputTraits];
    keyboardAppearance = [textInputTraits keyboardAppearance];

    v20 = modesCopy;
    if (keyboardAppearance == 127)
    {
      v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v9 preferencesActions];
      v11 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9708]];

      v20 = modesCopy;
      if (v11)
      {
        v12 = modesCopy;
        v20 = [modesCopy mutableCopy];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * i);
              if ([(UIKeyboardInputModeController *)self identifierIsValidSystemInputMode:v18])
              {
                v21[0] = MEMORY[0x1E69E9820];
                v21[1] = 3221225472;
                v21[2] = __58__UIKeyboardInputModeController_appendPasscodeInputModes___block_invoke;
                v21[3] = &unk_1E710DCF0;
                v21[4] = v18;
                if ([v12 indexOfObjectPassingTest:v21] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v20 addObject:v18];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v15);
        }

        modesCopy = v12;
      }
    }
  }

  else
  {

    v20 = modesCopy;
  }

  return v20;
}

uint64_t __58__UIKeyboardInputModeController_appendPasscodeInputModes___block_invoke()
{
  v0 = TIInputModeGetNormalizedIdentifier();
  v1 = TIInputModeGetNormalizedIdentifier();
  v2 = [v0 isEqualToString:v1];

  return v2;
}

- (id)defaultEnabledInputModesForCurrentLocale:(BOOL)locale
{
  v39 = *MEMORY[0x1E69E9840];
  defaultRawInputModes = [(UIKeyboardInputModeController *)self defaultRawInputModes];
  v6 = [defaultRawInputModes copy];

  v7 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v7 textInputTraits];
  loadKeyboardsForSiriLanguage = [textInputTraits loadKeyboardsForSiriLanguage];

  if (loadKeyboardsForSiriLanguage)
  {
    suggestedInputModesForSiriLanguage = [(UIKeyboardInputModeController *)self suggestedInputModesForSiriLanguage];
    firstObject = [suggestedInputModesForSiriLanguage firstObject];
    v12 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:firstObject];
    primaryLanguage = [v12 primaryLanguage];

    v14 = TIGetDefaultInputModesForLanguage();
    v15 = [(UIKeyboardInputModeController *)self filteredInputModesForSiriLanguageFromInputModes:v14];
  }

  else
  {
    mEMORY[0x1E69D95B8] = [MEMORY[0x1E69D95B8] sharedInputModeController];
    defaultEnabledInputModesForCurrentLocale = [mEMORY[0x1E69D95B8] defaultEnabledInputModesForCurrentLocale];
    primaryLanguage = [(UIKeyboardInputModeController *)self appendPasscodeInputModes:defaultEnabledInputModesForCurrentLocale];

    v15 = [(UIKeyboardInputModeController *)self inputModesByAppendingApplicationLanguagesToInputModes:primaryLanguage];
  }

  if (([v15 isEqualToArray:v6] & 1) == 0)
  {
    localeCopy = locale;
    v32 = v6;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v30 = v15;
    v20 = v15;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(*(*(&v34 + 1) + 8 * i));
          v26 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v25];
          if (v26 && ([array3 containsObject:v25] & 1) == 0)
          {
            normalizedIdentifier = [v26 normalizedIdentifier];
            [array2 addObject:normalizedIdentifier];

            [array3 addObject:v25];
            [array addObject:v26];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    [(UIKeyboardInputModeController *)self setDefaultRawInputModes:v20];
    [(UIKeyboardInputModeController *)self setDefaultKeyboardInputModes:array];
    [(UIKeyboardInputModeController *)self setDefaultNormalizedInputModes:array2];
    [(UIKeyboardInputModeController *)self setDefaultInputModes:array3];

    v6 = v32;
    locale = localeCopy;
    v15 = v30;
  }

  [(UIKeyboardInputModeController *)self updateDefaultInputModesIfNecessaryForIdiom];
  if (locale)
  {
    [(UIKeyboardInputModeController *)self defaultNormalizedInputModes];
  }

  else
  {
    [(UIKeyboardInputModeController *)self defaultInputModes];
  }
  v28 = ;

  return v28;
}

- (id)suggestedInputModesForCurrentLocale:(BOOL)locale fallbackToDefaultInputModes:(BOOL)modes
{
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9700]];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  if ([preferredLanguages count])
  {
    v9 = [preferredLanguages objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97__UIKeyboardInputModeController_suggestedInputModesForCurrentLocale_fallbackToDefaultInputModes___block_invoke;
  v12[3] = &__block_descriptor_33_e27___NSArray_16__0__NSString_8l;
  modesCopy = modes;
  v10 = [MEMORY[0x1E69D95B8] _inputModesForLocale:v7 language:v9 modeFetcher:v12];

  return v10;
}

- (id)suggestedInputModesForHardwareKeyboardLanguage:(id)language countryCode:(id)code inputModes:(id)modes
{
  modesCopy = modes;
  if (language | code)
  {
    v10 = MEMORY[0x1E695DF70];
    codeCopy = code;
    languageCopy = language;
    array = [v10 array];
    v13 = [(UIKeyboardInputModeController *)self inputModeToAddForKeyboardLanguage:languageCopy countryCode:codeCopy activeModes:modesCopy];

    if (v13)
    {
      [array addObject:v13];
      if ([modesCopy count] == 1)
      {
        [array addObject:@"emoji"];
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:(id)modes
{
  v36 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v32 = 0;
  v33 = 0;
  [(UIKeyboardInputModeController *)self getHardwareKeyboardLanguage:&v33 countryCode:&v32];
  v5 = v33;
  v6 = v32;
  array2 = 0;
  if (v5 | v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v23 = modesCopy;
    v9 = modesCopy;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          identifier = [*(*(&v28 + 1) + 8 * i) identifier];
          [array addObject:identifier];
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v11);
    }

    v15 = [(UIKeyboardInputModeController *)self suggestedInputModesForHardwareKeyboardLanguage:v5 countryCode:v6 inputModes:array];
    array2 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[UIKeyboardSuggestedInputMode alloc] initWithIdentifier:*(*(&v24 + 1) + 8 * j) enabled:1];
          [array2 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v18);
    }

    modesCopy = v23;
  }

  return array2;
}

- (id)suggestedInputModesForCurrentLocale
{
  v47 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v4 preferencesActions];
  v6 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9700]];

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v31 = preferredLanguages;
  if ([preferredLanguages count])
  {
    v8 = [preferredLanguages objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  v32 = v6;
  v30 = v8;
  v9 = [MEMORY[0x1E69D95B8] _inputModesForLocale:v6 language:v8 modeFetcher:&__block_literal_global_325_1];
  v35 = [(UIKeyboardInputModeController *)self suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  obj = [(UIKeyboardInputModeController *)self suggestedInputModesForCurrentLocale:0 fallbackToDefaultInputModes:1];
  v10 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  v11 = off_1E70EA000;
  if (v10)
  {
    v12 = v10;
    v13 = *v42;
    v33 = *v42;
    do
    {
      v14 = 0;
      v34 = v12;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        if ([v9 containsObject:v15])
        {
          v16 = 1;
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v17 = v35;
          v16 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v16)
          {
            v18 = array;
            v19 = *v38;
            while (2)
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v38 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                normalizedIdentifier = [*(*(&v37 + 1) + 8 * i) normalizedIdentifier];
                v22 = [normalizedIdentifier isEqualToString:v15];

                if (v22)
                {
                  v16 = 1;
                  goto LABEL_21;
                }
              }

              v16 = [v17 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }

LABEL_21:
            array = v18;
            v11 = off_1E70EA000;
            v13 = v33;
            v12 = v34;
          }
        }

        v23 = [objc_alloc(v11[25]) initWithIdentifier:v15 enabled:v16];
        [array addObject:v23];

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v12);
  }

  v24 = [(UIKeyboardInputModeController *)selfCopy suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:array];
  [array addObjectsFromArray:v24];

  v25 = [objc_alloc(v11[25]) initWithIdentifier:@"emoji" enabled:1];
  v26 = [array indexOfObject:v25];
  if (v26 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v26;
    if (v26 + 1 == [array count])
    {
      goto LABEL_29;
    }

    [array removeObjectAtIndex:v27];
  }

  [array addObject:v25];
LABEL_29:

  return array;
}

- (id)suggestedInputModesForLocales:(id)locales
{
  selfCopy = self;
  v73 = *MEMORY[0x1E69E9840];
  localesCopy = locales;
  array = [MEMORY[0x1E695DF70] array];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v4 = localesCopy;
  v5 = [v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v66;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v65 + 1) + 8 * i);
        v10 = MEMORY[0x1E69D95B8];
        localeIdentifier = [v9 localeIdentifier];
        languageCode = [v9 languageCode];
        v13 = [v10 _inputModesForLocale:localeIdentifier language:languageCode modeFetcher:&__block_literal_global_327_2];

        [orderedSet addObjectsFromArray:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v6);
  }

  v46 = [(UIKeyboardInputModeController *)selfCopy suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:0];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v4;
  v15 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v61 + 1) + 8 * j);
        v20 = MEMORY[0x1E69D95B8];
        localeIdentifier2 = [v19 localeIdentifier];
        languageCode2 = [v19 languageCode];
        v23 = [v20 _inputModesForLocale:localeIdentifier2 language:languageCode2 modeFetcher:&__block_literal_global_329_0];

        [orderedSet2 addObjectsFromArray:v23];
      }

      v16 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    }

    while (v16);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47 = orderedSet2;
  v51 = [v47 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v51)
  {
    v24 = 0;
    v49 = *v58;
    do
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v58 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v26 = *(*(&v57 + 1) + 8 * k);
        if ([orderedSet containsObject:{v26, selfCopy}])
        {
          v27 = 1;
        }

        else
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v28 = v46;
          v27 = [v28 countByEnumeratingWithState:&v53 objects:v69 count:16];
          if (v27)
          {
            v29 = *v54;
            while (2)
            {
              for (m = 0; m != v27; ++m)
              {
                if (*v54 != v29)
                {
                  objc_enumerationMutation(v28);
                }

                normalizedIdentifier = [*(*(&v53 + 1) + 8 * m) normalizedIdentifier];
                v32 = [normalizedIdentifier isEqualToString:v26];

                if (v32)
                {
                  v27 = 1;
                  goto LABEL_32;
                }
              }

              v27 = [v28 countByEnumeratingWithState:&v53 objects:v69 count:16];
              if (v27)
              {
                continue;
              }

              break;
            }
          }

LABEL_32:
        }

        v33 = [[UIKeyboardSuggestedInputMode alloc] initWithIdentifier:v26 enabled:v27];
        v34 = MEMORY[0x1E695DF58];
        primaryLanguage = [(UIKeyboardInputMode *)v33 primaryLanguage];
        v36 = [v34 localeWithLocaleIdentifier:primaryLanguage];
        languageCode3 = [v36 languageCode];
        v38 = [languageCode3 isEqualToString:@"en"];

        if ((v27 & v38 & v24) == 1)
        {
          v39 = [[UIKeyboardSuggestedInputMode alloc] initWithIdentifier:v26 enabled:0];

          v24 = 1;
          v33 = v39;
        }

        else
        {
          v24 |= v27 & v38;
        }

        [array addObject:v33];
      }

      v51 = [v47 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v51);
  }

  v40 = [(UIKeyboardInputModeController *)selfCopy suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:array];
  [array addObjectsFromArray:v40];

  v41 = [[UIKeyboardSuggestedInputMode alloc] initWithIdentifier:@"emoji" enabled:1];
  v42 = [array indexOfObject:v41];
  if (v42 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v43 = v42;
    if (v42 + 1 == [array count])
    {
      goto LABEL_42;
    }

    [array removeObjectAtIndex:v43];
  }

  [array addObject:{v41, selfCopy}];
LABEL_42:

  return array;
}

- (id)suggestedInputModesForPreferredLanguages
{
  v31 = *MEMORY[0x1E69E9840];
  preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
  localeIdentifier = [preferredLocale localeIdentifier];

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v7 = [preferredLanguages countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(preferredLanguages);
        }

        v11 = [MEMORY[0x1E69D95B8] _inputModesForLocale:localeIdentifier language:*(*(&v25 + 1) + 8 * i) modeFetcher:&__block_literal_global_331_1];
        [orderedSet addObjectsFromArray:v11];
      }

      v8 = [preferredLanguages countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  array2 = [orderedSet array];
  v14 = [array2 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(array2);
        }

        v18 = [[UIKeyboardSuggestedInputMode alloc] initWithIdentifier:*(*(&v21 + 1) + 8 * j) enabled:1];
        [array addObject:v18];
      }

      v15 = [array2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = [(UIKeyboardInputModeController *)self suggestedInputModesForCurrentHardwareKeyboardAndSuggestedInputModes:array];
  [array addObjectsFromArray:v19];

  return array;
}

- (void)loadSuggestedInputModesForSiriLanguage
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[UIDictationConnectionPreferences sharedInstance];
  languageCode = [v3 languageCode];

  if ([languageCode hasPrefix:@"yue"] & 1) != 0 || (objc_msgSend(languageCode, "hasPrefix:", @"wuu"))
  {
    v5 = @"zh-CN";
LABEL_4:

    languageCode = v5;
    goto LABEL_5;
  }

  if ([languageCode isEqualToString:@"zh-HK"])
  {
    v5 = @"yue-Hant";
    goto LABEL_4;
  }

  if ([languageCode isEqualToString:@"zh-TW"])
  {
    v5 = @"zh-Hant";
    goto LABEL_4;
  }

LABEL_5:
  array = [MEMORY[0x1E695DF70] array];
  v7 = TIInputModeGetBaseLanguage();
  if (v7)
  {
    selfCopy = self;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = UIKeyboardGetSupportedInputModes();
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          selfCopy = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v21 + 1) + 8 * i), selfCopy];
          primaryLanguage = [selfCopy primaryLanguage];
          v15 = [primaryLanguage hasPrefix:v7];

          if (v15)
          {
            primaryLanguage2 = [selfCopy primaryLanguage];
            v17 = [primaryLanguage2 isEqualToString:languageCode];

            normalizedIdentifier = [selfCopy normalizedIdentifier];
            if (v17)
            {
              [array insertObject:normalizedIdentifier atIndex:0];
            }

            else
            {
              [array addObject:normalizedIdentifier];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [(UIKeyboardInputModeController *)selfCopy setSuggestedInputModesForSiriLanguage:array];
  }

  else
  {
    normalizedEnabledInputModeIdentifiers = [(UIKeyboardInputModeController *)self normalizedEnabledInputModeIdentifiers];
    [(UIKeyboardInputModeController *)self setSuggestedInputModesForSiriLanguage:normalizedEnabledInputModeIdentifiers];
  }
}

- (void)willEnterForeground:(id)foreground
{
  [(UIKeyboardInputModeController *)self _beginContinuousDiscoveryIfNeeded];

  [(UIKeyboardInputModeController *)self _clearAllExtensionsIfNeeded];
}

- (void)didEnterBackground:(id)background
{
  backgroundCopy = background;
  if (pthread_main_np())
  {
    extensionMatchingContext = [(UIKeyboardInputModeController *)self extensionMatchingContext];

    if (backgroundCopy && extensionMatchingContext)
    {
      extensionMatchingContext2 = [(UIKeyboardInputModeController *)self extensionMatchingContext];
      [(UIKeyboardInputModeController *)self setExtensionMatchingContext:0];
      [MEMORY[0x1E696ABD0] endMatchingExtensions:extensionMatchingContext2];
    }

    [(UIKeyboardInputModeController *)self _clearAllExtensionsIfNeeded];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__UIKeyboardInputModeController_didEnterBackground___block_invoke;
    v7[3] = &unk_1E70F35B8;
    v7[4] = self;
    v8 = backgroundCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)_clearAllExtensions
{
  if (pthread_main_np())
  {
    allExtensions = self->_allExtensions;
    self->_allExtensions = 0;

    allowedExtensions = self->_allowedExtensions;
    self->_allowedExtensions = 0;

    [(UIKeyboardInputModeController *)self setEnabledInputModes:0];
    array = [MEMORY[0x1E695DF70] array];
    v7 = qword_1ED4986C0;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__UIKeyboardInputModeController__clearAllExtensions__block_invoke;
    v12 = &unk_1E710DD58;
    v13 = array;
    selfCopy = self;
    v8 = array;
    [v7 enumerateKeysAndObjectsUsingBlock:&v9];
    [qword_1ED4986C0 removeObjectsForKeys:{v8, v9, v10, v11, v12}];
  }

  else
  {

    [(UIKeyboardInputModeController *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:1];
  }
}

void __52__UIKeyboardInputModeController__clearAllExtensions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v5 isExtensionInputMode])
  {
    [*(a1 + 32) addObject:v8];
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    if (v7 == v5)
    {
      *(v6 + 8) = 0;
    }
  }
}

uint64_t __60__UIKeyboardInputModeController__clearAllExtensionsIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isStalledExtensionInputMode];
  if (result)
  {
    result = [*(a1 + 32) _clearAllExtensions];
    *a4 = 1;
  }

  return result;
}

- (id)_allExtensionsFromMatchingExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if ([(NSArray *)extensionsCopy count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](extensionsCopy, "count")}];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __70__UIKeyboardInputModeController__allExtensionsFromMatchingExtensions___block_invoke;
    v32[3] = &unk_1E710DDA8;
    v7 = v6;
    v33 = v7;
    [(NSArray *)extensionsCopy enumerateObjectsUsingBlock:v32];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__119;
    v30 = __Block_byref_object_dispose__119;
    v31 = 0;
    v8 = dispatch_semaphore_create(0);
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v10 = _UIMainBundleIdentifier();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__UIKeyboardInputModeController__allExtensionsFromMatchingExtensions___block_invoke_2;
    v23[3] = &unk_1E710DDD0;
    v25 = &v26;
    v11 = v8;
    v24 = v11;
    [mEMORY[0x1E69ADFB8] allowedKeyboardBundleIDsAfterApplyingFilterToBundleIDs:v7 hostAppBundleID:v10 accountIsManaged:0 completion:v23];

    v12 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v11, v12);
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27[5], "count")}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__UIKeyboardInputModeController__allExtensionsFromMatchingExtensions___block_invoke_3;
    v20[3] = &unk_1E710DDF8;
    v22 = &v26;
    v14 = v13;
    v21 = v14;
    [(NSArray *)extensionsCopy enumerateObjectsUsingBlock:v20];
    allExtensions = self->_allExtensions;
    self->_allExtensions = extensionsCopy;
    v16 = extensionsCopy;

    allowedExtensions = self->_allowedExtensions;
    self->_allowedExtensions = v14;
    v18 = v14;

    extensionsCopy = self->_allExtensions;
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    objc_storeStrong(&self->_allExtensions, extensions);
    objc_storeStrong(&self->_allowedExtensions, extensions);
  }

  return extensionsCopy;
}

void __70__UIKeyboardInputModeController__allExtensionsFromMatchingExtensions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 addObject:v3];
}

void __70__UIKeyboardInputModeController__allExtensionsFromMatchingExtensions___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__UIKeyboardInputModeController__allExtensionsFromMatchingExtensions___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6 = v3;
  v5 = [v3 identifier];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) extensionMatchingContext];

  if (!v2)
  {
    v3 = MEMORY[0x1E696ABD0];
    v7 = *MEMORY[0x1E696A2F8];
    v8[0] = @"com.apple.keyboard-service";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke_2;
    v6[3] = &unk_1E710DE48;
    v6[4] = *(a1 + 32);
    v5 = [v3 beginMatchingExtensionsWithAttributes:v4 completion:v6];
    [*(a1 + 32) setExtensionMatchingContext:v5];
  }
}

void __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = [v6 valueForPreferenceKey:*MEMORY[0x1E69D96F8]];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([*(a1 + 32) identifierIsValidSystemInputMode:v12] & 1) == 0)
        {
          if (![v3 count] || (v16[0] = MEMORY[0x1E69E9820], v16[1] = 3221225472, v16[2] = __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke_3, v16[3] = &unk_1E710DE20, v16[4] = v12, objc_msgSend(v3, "indexOfObjectPassingTest:", v16) == 0x7FFFFFFFFFFFFFFFLL))
          {
            [v4 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    v13 = dispatch_time(0, 18000000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke_4;
    block[3] = &unk_1E70F35B8;
    block[4] = *(a1 + 32);
    v15 = v4;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }

  [*(a1 + 32) _clearAllExtensionsIfNeeded];
}

uint64_t __66__UIKeyboardInputModeController__beginContinuousDiscoveryIfNeeded__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (BOOL)_mayContainExtensionInputModes
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  allEnabledInputModesAreValid = [preferencesActions allEnabledInputModesAreValid];

  return allEnabledInputModesAreValid ^ 1;
}

- (void)_removeInputModes:(id)modes
{
  v25 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D96F8]];
  v8 = [v7 mutableCopy];

  v9 = [v8 count];
  [(UIKeyboardInputModeController *)self _clearAllExtensions];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = modesCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        if ([v8 containsObject:{v15, v20}])
        {
          v16 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v15];
          if (!v16)
          {
            [v8 removeObject:v15];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  if (v9 != [v8 count])
  {
    v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions2 = [v17 preferencesActions];
    if ([v8 count])
    {
      v19 = v8;
    }

    else
    {
      v19 = 0;
    }

    [preferencesActions2 saveInputModes:{v19, v20}];
  }
}

- (id)_MCFilteredExtensionIdentifiers
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (self->_skipExtensionInputModes || ![(UIKeyboardInputModeController *)self verifyKeyboardExtensionsWithApp])
  {
    v3 = 0;
  }

  else if ([(NSArray *)self->_allExtensions count])
  {
    v3 = self->_allExtensions;
  }

  else
  {
    v5 = MEMORY[0x1E696ABD0];
    v10 = *MEMORY[0x1E696A2F8];
    v11[0] = @"com.apple.keyboard-service";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v9 = 0;
    v7 = [v5 extensionsWithMatchingAttributes:v6 error:&v9];
    v8 = v9;

    if (v8)
    {
      NSLog(&cfstr_FailedToLoadKe.isa);
      v3 = 0;
    }

    else
    {
      NSLog(&cfstr_SuccessfullyLo.isa);
      v3 = [(UIKeyboardInputModeController *)self _allExtensionsFromMatchingExtensions:v7];
    }
  }

  return v3;
}

- (BOOL)isLockscreenPasscodeKeyboard
{
  v2 = +[UIKeyboardImpl activeInstance];
  if ([UIApp _isSpringBoard])
  {
    delegate = [v2 delegate];
    if (delegate)
    {
      textInputTraits = [v2 textInputTraits];
      isSecureTextEntry = [textInputTraits isSecureTextEntry];
    }

    else
    {
      isSecureTextEntry = 1;
    }
  }

  else
  {
    isSecureTextEntry = 0;
  }

  return isSecureTextEntry;
}

- (id)extensionInputModes
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardInputModeController *)self isLockscreenPasscodeKeyboard])
  {
    array = 0;
  }

  else
  {
    _MCFilteredExtensionIdentifiers = [(UIKeyboardInputModeController *)self _MCFilteredExtensionIdentifiers];
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = _MCFilteredExtensionIdentifiers;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          identifier = [*(*(&v13 + 1) + 8 * i) identifier];
          v11 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:identifier];

          if (v11)
          {
            [array addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return array;
}

- (id)nextInputModeFromList:(id)list withFilter:(unint64_t)filter withTraits:(id)traits
{
  v43 = *MEMORY[0x1E69E9840];
  listCopy = list;
  traitsCopy = traits;
  v37 = 0;
  v10 = 1;
  if (filter <= 2)
  {
    if (filter)
    {
      if (filter == 1)
      {
        v10 = 0;
        v11 = _UITextInputTraitsAllowedInputModeExceptEmoji;
      }

      else
      {
        if (filter != 2)
        {
          goto LABEL_17;
        }

        v10 = 0;
        v11 = _UITextInputTraitsAllowedInputModeExcludeLastAndCurrentInputModes;
      }
    }

    else
    {
      v10 = 0;
      v11 = _UITextInputTraitsAllowedInputMode;
    }
  }

  else if (filter > 4)
  {
    if (filter == 5)
    {
      v10 = 0;
      v11 = _UIKeyboardInputModeDefaultLayoutIsCarPlayEnabled;
    }

    else
    {
      if (filter != 6)
      {
        goto LABEL_17;
      }

      v10 = 0;
      v11 = _UIKeyboardInputModeFilterAllowedExceptLastAndCurrentAndEmojiAndSameMultilingualKeyboard;
    }
  }

  else
  {
    v10 = 0;
    if (filter == 3)
    {
      v11 = _UITextInputTraitsAllowedInputModeExcludeLastAndCurrentInputModesAndEmoji;
    }

    else
    {
      v11 = _UIKeyboardInputModeDefaultLayoutIsASCIICapable;
    }
  }

  v37 = v11;
LABEL_17:
  v12 = [listCopy count];
  if (v12 == 1)
  {
    v15 = [listCopy objectAtIndex:0];
    v16 = v15;
    if ((v10 & 1) == 0 && ((v37)(v15, traitsCopy) & 1) == 0)
    {

LABEL_47:
      v16 = 0;
    }
  }

  else
  {
    v13 = v12;
    if (!v12)
    {
      currentInputMode3 = +[UIKeyboardInputMode intlInputMode];
LABEL_46:
      v16 = currentInputMode3;
      goto LABEL_48;
    }

    currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
    if (currentInputMode && (v18 = currentInputMode, -[UIKeyboardInputModeController currentInputMode](self, "currentInputMode"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [listCopy indexOfObject:v19], v19, v18, v20 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v28 = v20 + 1;
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      currentInputMode2 = [(UIKeyboardInputModeController *)self currentInputMode];
      multilingualSet = [currentInputMode2 multilingualSet];

      v23 = [multilingualSet countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(multilingualSet);
            }

            v27 = [listCopy indexOfObject:*(*(&v38 + 1) + 8 * i)];
            if (v27 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v29 = v27;

              v28 = v29 + 1;
              goto LABEL_35;
            }
          }

          v24 = [multilingualSet countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v28 = v13;
LABEL_35:
      traitsCopy = v36;
      if (!v13)
      {
LABEL_43:
        if ((v10 & 1) != 0 || ([(UIKeyboardInputModeController *)self currentInputMode], v33 = objc_claimAutoreleasedReturnValue(), v34 = (v37)(v33, traitsCopy), v33, v34))
        {
          currentInputMode3 = [(UIKeyboardInputModeController *)self currentInputMode];
          goto LABEL_46;
        }

        goto LABEL_47;
      }
    }

    v30 = v13;
    while (1)
    {
      v16 = [listCopy objectAtIndex:(v28 % v13)];
      currentInputMode4 = [(UIKeyboardInputModeController *)self currentInputMode];
      v32 = [v16 isEqual:currentInputMode4];

      if (v32 & 1) == 0 && ((v10 & 1) != 0 || ((v37)(v16, traitsCopy)))
      {
        break;
      }

      ++v28;
      if (!--v30)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_48:

  return v16;
}

- (void)_setCurrentAndNextInputModePreference
{
  array = [MEMORY[0x1E695DF70] array];
  currentUsedInputMode = [(UIKeyboardInputModeController *)self currentUsedInputMode];

  if (currentUsedInputMode)
  {
    currentUsedInputMode2 = [(UIKeyboardInputModeController *)self currentUsedInputMode];
    identifier = [currentUsedInputMode2 identifier];
    [array addObject:identifier];

    lastUsedInputMode = [(UIKeyboardInputModeController *)self lastUsedInputMode];

    if (lastUsedInputMode)
    {
      lastUsedInputMode2 = [(UIKeyboardInputModeController *)self lastUsedInputMode];
      identifier2 = [lastUsedInputMode2 identifier];
      [array addObject:identifier2];

      nextInputModeToUse = [(UIKeyboardInputModeController *)self nextInputModeToUse];

      if (nextInputModeToUse)
      {
        nextInputModeToUse2 = [(UIKeyboardInputModeController *)self nextInputModeToUse];
        identifier3 = [nextInputModeToUse2 identifier];
        [array addObject:identifier3];
      }
    }
  }

  v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v12 preferencesActions];
  [preferencesActions setInputModeSelectionSequence:array];
}

- (id)nextInputModeToUseForTraits:(id)traits updatePreference:(BOOL)preference
{
  preferenceCopy = preference;
  traitsCopy = traits;
  nextInputModeToUse = [(UIKeyboardInputModeController *)self nextInputModeToUse];
  if (nextInputModeToUse)
  {
    nextInputModeToUse2 = [(UIKeyboardInputModeController *)self nextInputModeToUse];
    currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
    if (![nextInputModeToUse2 isEqual:currentInputMode])
    {
      activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
      nextInputModeToUse3 = [(UIKeyboardInputModeController *)self nextInputModeToUse];
      if ([activeInputModes indexOfObject:nextInputModeToUse3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        nextInputModeToUse4 = [(UIKeyboardInputModeController *)self nextInputModeToUse];
        if ([nextInputModeToUse4 isAllowedForTraits:traitsCopy])
        {
          keyboardType = [traitsCopy keyboardType];
          if ((keyboardType > 0xB || ((1 << keyboardType) & 0x930) == 0) && keyboardType != 127)
          {
            currentInputMode2 = [(UIKeyboardInputModeController *)self currentInputMode];
            [(UIKeyboardInputModeController *)self nextInputModeToUse];
            v22 = v21 = currentInputMode2;
            identifier = [currentInputMode2 identifier];
            v20 = TIInputModeGetMultilingualID();

            identifier2 = [v22 identifier];
            v23 = TIInputModeGetMultilingualID();

            if ([v20 length] && objc_msgSend(v23, "length"))
            {
              v19 = [v20 isEqualToString:v23];

              if (v19)
              {
                goto LABEL_11;
              }
            }

            else
            {
            }

            nextInputModeToUse = [(UIKeyboardInputModeController *)self nextInputModeToUse];
            if (!preferenceCopy)
            {
              goto LABEL_15;
            }

            goto LABEL_13;
          }
        }
      }
    }

LABEL_11:
    nextInputModeToUse = 0;
  }

  if (!preferenceCopy)
  {
    goto LABEL_15;
  }

LABEL_13:
  nextInputModeToUse5 = [(UIKeyboardInputModeController *)self nextInputModeToUse];

  if (nextInputModeToUse5)
  {
    [(UIKeyboardInputModeController *)self setNextInputModeToUse:0];
    [(UIKeyboardInputModeController *)self _setCurrentAndNextInputModePreference];
  }

LABEL_15:

  return nextInputModeToUse;
}

- (id)nextInputModeInPreferenceListForTraits:(id)traits updatePreference:(BOOL)preference skipEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  preferenceCopy = preference;
  traitsCopy = traits;
  v9 = [(UIKeyboardInputModeController *)self nextInputModeToUseForTraits:traitsCopy updatePreference:preferenceCopy];
  activeUserSelectableInputModes = [(UIKeyboardInputModeController *)self activeUserSelectableInputModes];
  if (v9 && (!emojiCopy || ![v9 isEmojiInputMode]))
  {
    goto LABEL_18;
  }

  v11 = +[UIKeyboardInputMode intlInputMode];
  v12 = UIKeyboardActiveInputModes;
  identifier = [v11 identifier];
  v14 = [v12 containsObject:identifier];

  if (v14)
  {
    v15 = [activeUserSelectableInputModes arrayByAddingObject:v11];

    activeUserSelectableInputModes = v15;
  }

  if (emojiCopy)
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = [(UIKeyboardInputModeController *)self nextInputModeFromList:activeUserSelectableInputModes withFilter:v16 withTraits:traitsCopy];

  if (!v17)
  {
    v18 = [(UIKeyboardInputModeController *)self nextInputModeFromList:activeUserSelectableInputModes withFilter:emojiCopy withTraits:traitsCopy];
    if (!v18)
    {
      v18 = +[UIKeyboardInputMode intlInputMode];
    }

    v9 = v18;
    if (!preferenceCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v9 = v17;
  if (preferenceCopy)
  {
LABEL_15:
    lastUsedInputMode = [(UIKeyboardInputModeController *)self lastUsedInputMode];

    if (lastUsedInputMode)
    {
      [(UIKeyboardInputModeController *)self setLastUsedInputMode:0];
      [(UIKeyboardInputModeController *)self _setCurrentAndNextInputModePreference];
    }
  }

LABEL_17:

LABEL_18:
  v20 = +[UIKeyboardImpl activeInstance];
  if ([v20 globeKeyDisplaysAsEmojiKey])
  {
    v21 = +[UIKeyboardImpl activeInstance];
    showsDedicatedEmojiKeyAlongsideGlobeButton = [v21 showsDedicatedEmojiKeyAlongsideGlobeButton];
  }

  else
  {
    showsDedicatedEmojiKeyAlongsideGlobeButton = 1;
  }

  if (+[UIDictationController isRunning]&& showsDedicatedEmojiKeyAlongsideGlobeButton)
  {
    v23 = [(UIKeyboardInputModeController *)self nextInputModeFromList:activeUserSelectableInputModes withFilter:6 withTraits:traitsCopy];

    v9 = [(UIKeyboardInputModeController *)self getActiveInputModeInDictationFromMultiLingualInputModes:v23];
  }

  return v9;
}

- (id)getActiveInputModeInDictationFromMultiLingualInputModes:(id)modes
{
  v39 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  multilingualSet = [modesCopy multilingualSet];
  v5 = multilingualSet;
  v6 = MEMORY[0x1E695E0F0];
  if (multilingualSet)
  {
    v7 = multilingualSet;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v7;

  multilingualLanguages = [modesCopy multilingualLanguages];
  v10 = multilingualLanguages;
  if (multilingualLanguages)
  {
    v11 = multilingualLanguages;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11;

  if ([v12 count])
  {
    v13 = [v12 sortedArrayUsingSelector:sel_compare_];
    v14 = [v13 componentsJoinedByString:{@", "}];
    v15 = +[UIDictationUtilities activeMultilingualKeyboardDictationMappings];
    v16 = [v15 objectForKeyedSubscript:v14];

    if (v16)
    {
      primaryLanguage = [modesCopy primaryLanguage];
      if (primaryLanguage)
      {
        v18 = primaryLanguage;
        primaryLanguage2 = [modesCopy primaryLanguage];
        v20 = [v16 isEqualToString:primaryLanguage2];

        if ((v20 & 1) == 0)
        {
          v31 = v14;
          v32 = v13;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = v8;
          v21 = v8;
          v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v35;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v35 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v34 + 1) + 8 * i);
                primaryLanguage3 = [v26 primaryLanguage];
                v28 = [primaryLanguage3 isEqualToString:v16];

                if (v28)
                {
                  v29 = v26;

                  v13 = v32;
                  v8 = v33;
                  v14 = v31;
                  goto LABEL_21;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }
          }

          v13 = v32;
          v8 = v33;
          v14 = v31;
        }
      }
    }

    v29 = modesCopy;
LABEL_21:
  }

  else
  {
    v29 = modesCopy;
  }

  return v29;
}

+ (id)inputModeIdentifierForPreferredLanguages:(id)languages passingTest:(id)test
{
  v32 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  testCopy = test;
  v7 = [languagesCopy count];
  v8 = 0;
  if (testCopy && v7)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = languagesCopy;
    v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v20 = languagesCopy;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v13 = TIGetDefaultInputModesForLanguage();
          v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v23;
LABEL_10:
            v17 = 0;
            while (1)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v22 + 1) + 8 * v17);
              if (testCopy[2](testCopy, v18))
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v15)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }

            v8 = v18;

            if (v8)
            {
              goto LABEL_21;
            }
          }

          else
          {
LABEL_16:
          }
        }

        v10 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
      v8 = 0;
LABEL_21:
      languagesCopy = v20;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)ASCIICapableInputModeIdentifierForPreferredLanguages
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [self inputModeIdentifierForPreferredLanguages:preferredLanguages passingTest:&__block_literal_global_371_1];

  if (![v4 length])
  {
    v5 = TIGetDefaultInputModesForLanguage();
    firstObject = [v5 firstObject];

    v4 = firstObject;
  }

  return v4;
}

- (id)inputModeIdentifierLastUsedForLanguage:(id)language includingExtensions:(BOOL)extensions
{
  v78 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  if ([languageCopy isEqualToString:@"ASCIICapable"])
  {
    v6 = UIKeyboardGetCurrentInputMode();
    v7 = UIKeyboardLayoutSupportsASCIIToggleKey(v6);

    if (!v7)
    {
      aSCIICapableInputModeIdentifierForPreferredLanguages = 0;
      goto LABEL_80;
    }
  }

  v8 = TIInputModeGetLanguageWithRegion();

  v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v9 preferencesActions];
  v11 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9860]];

  if ([v11 count])
  {
    aSCIICapableInputModeIdentifierForPreferredLanguages = [v11 objectForKey:v8];
  }

  else
  {
    aSCIICapableInputModeIdentifierForPreferredLanguages = 0;
  }

  languageCopy = v8;
  if ([v8 isEqualToString:@"NonASCII"] && !UIKeyboardLayoutSupportsASCIIToggleKey(aSCIICapableInputModeIdentifierForPreferredLanguages) || aSCIICapableInputModeIdentifierForPreferredLanguages && !extensions && (+[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", aSCIICapableInputModeIdentifierForPreferredLanguages), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isExtensionInputMode"), v13, languageCopy = v8, v14))
  {

    aSCIICapableInputModeIdentifierForPreferredLanguages = 0;
  }

  v15 = UIKeyboardActiveInputModes;
  if (([v15 containsObject:aSCIICapableInputModeIdentifierForPreferredLanguages] & 1) == 0)
  {

    aSCIICapableInputModeIdentifierForPreferredLanguages = 0;
  }

  if ([v15 count] == 1)
  {
    if ([languageCopy isEqualToString:@"ASCIICapable"])
    {
      v16 = UIKeyboardGetCurrentInputMode();
      v17 = TIInputModeGetNormalizedIdentifier();
      v18 = UIKeyboardGetPreferredASCIICapableInputModeForInputMode(v17);
    }

    else
    {
      if (![languageCopy isEqualToString:@"NonASCII"])
      {
        goto LABEL_21;
      }

      v16 = UIKeyboardGetCurrentInputMode();
      v17 = TIInputModeGetNormalizedIdentifier();
      v18 = UIKeyboardGetPreferredNonASCIICapableInputModeForInputMode(v17);
    }

    v19 = v18;

    aSCIICapableInputModeIdentifierForPreferredLanguages = v19;
  }

LABEL_21:
  if (![aSCIICapableInputModeIdentifierForPreferredLanguages length])
  {
    if ([languageCopy isEqualToString:@"ASCIICapable"])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v20 = v15;
      v21 = [v20 countByEnumeratingWithState:&v70 objects:v77 count:16];
      if (v21)
      {
        v22 = v21;
        v54 = v15;
        v56 = v11;
        v23 = *v71;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v71 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v70 + 1) + 8 * i);
            if (!extensions)
            {
              v26 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v70 + 1) + 8 * i)];
              isExtensionInputMode = [v26 isExtensionInputMode];

              if (isExtensionInputMode)
              {
                continue;
              }
            }

            if (UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v25))
            {
              v28 = v25;

              goto LABEL_48;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v70 objects:v77 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

        v28 = aSCIICapableInputModeIdentifierForPreferredLanguages;
LABEL_48:
        v11 = v56;
        v15 = v54;
      }

      else
      {
        v28 = aSCIICapableInputModeIdentifierForPreferredLanguages;
      }

      if ([v28 length])
      {
        aSCIICapableInputModeIdentifierForPreferredLanguages = v28;
        goto LABEL_79;
      }

      aSCIICapableInputModeIdentifierForPreferredLanguages = [objc_opt_class() ASCIICapableInputModeIdentifierForPreferredLanguages];
    }

    else if ([languageCopy isEqualToString:@"NonASCII"])
    {
      v68 = 0uLL;
      v69 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v28 = v15;
      v29 = [v28 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v29)
      {
        v30 = v29;
        v55 = v15;
        v57 = v11;
        v31 = *v67;
        while (2)
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v67 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v66 + 1) + 8 * j);
            if (!extensions)
            {
              v34 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v66 + 1) + 8 * j)];
              isExtensionInputMode2 = [v34 isExtensionInputMode];

              if (isExtensionInputMode2)
              {
                continue;
              }
            }

            if ((UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v33) & 1) == 0 && UIKeyboardLayoutSupportsASCIIToggleKey(v33))
            {
              v51 = v33;

              aSCIICapableInputModeIdentifierForPreferredLanguages = v51;
              goto LABEL_75;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }

LABEL_75:
        v11 = v57;
        v15 = v55;
      }
    }

    else
    {
      v64 = 0uLL;
      v65 = 0uLL;
      v62 = 0uLL;
      v63 = 0uLL;
      v36 = v15;
      v37 = [v36 countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = v15;
        v40 = *v63;
        while (2)
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v63 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v42 = *(*(&v62 + 1) + 8 * k);
            v43 = TIInputModeGetLanguageWithRegion();
            if ([v43 isEqualToString:languageCopy])
            {
              v44 = v42;

              aSCIICapableInputModeIdentifierForPreferredLanguages = v44;
              goto LABEL_63;
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v62 objects:v75 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }

LABEL_63:
        v15 = v39;
      }

      if ([aSCIICapableInputModeIdentifierForPreferredLanguages length])
      {
        goto LABEL_79;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v28 = v36;
      v45 = [v28 countByEnumeratingWithState:&v58 objects:v74 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = v15;
        v48 = *v59;
        while (2)
        {
          for (m = 0; m != v46; ++m)
          {
            if (*v59 != v48)
            {
              objc_enumerationMutation(v28);
            }

            v50 = *(*(&v58 + 1) + 8 * m);
            if (UIKeyboardInputBaseLanguagesEqual(v50, languageCopy))
            {
              v52 = v50;

              aSCIICapableInputModeIdentifierForPreferredLanguages = v52;
              goto LABEL_77;
            }
          }

          v46 = [v28 countByEnumeratingWithState:&v58 objects:v74 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }

LABEL_77:
        v15 = v47;
      }
    }
  }

LABEL_79:

LABEL_80:

  return aSCIICapableInputModeIdentifierForPreferredLanguages;
}

- (id)inputModeLastUsedForLanguage:(id)language includingExtensions:(BOOL)extensions
{
  v4 = [(UIKeyboardInputModeController *)self inputModeIdentifierLastUsedForLanguage:language includingExtensions:extensions];
  v5 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v4];

  return v5;
}

- (id)inputModeForASCIIToggleWithTraits:(id)traits
{
  traitsCopy = traits;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v4 currentInputMode];

  defaultLayoutIsASCIICapable = [currentInputMode defaultLayoutIsASCIICapable];
  v7 = @"ASCIICapable";
  if (defaultLayoutIsASCIICapable)
  {
    v7 = @"NonASCII";
  }

  v8 = v7;
  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 inputModeLastUsedForLanguage:v8 includingExtensions:0];

  if (([v10 isEqual:currentInputMode] & 1) == 0)
  {
    primaryLanguage = [v10 primaryLanguage];
    primaryLanguage2 = [currentInputMode primaryLanguage];
    if ([primaryLanguage isEqual:primaryLanguage2] && (objc_msgSend(v10, "isExtensionInputMode") & 1) == 0)
    {
    }

    else
    {
      v13 = [v10 isAllowedForTraits:traitsCopy];

      if (v13)
      {
        v14 = v10;
        goto LABEL_10;
      }
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (void)updateLastUsedInputMode:(id)mode
{
  v19[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  if (!self->_inputModeThatInvokeEmoji)
  {
    v5 = +[UIKeyboardInputMode dictationInputMode];

    if (v5 == modeCopy)
    {
      currentInputModeInPreference = [(UIKeyboardInputModeController *)self currentInputModeInPreference];

      modeCopy = currentInputModeInPreference;
    }

    currentUsedInputMode = [(UIKeyboardInputModeController *)self currentUsedInputMode];
    v8 = [currentUsedInputMode isEqual:modeCopy];

    if ((v8 & 1) == 0)
    {
      currentUsedInputMode2 = [(UIKeyboardInputModeController *)self currentUsedInputMode];
      if (currentUsedInputMode2)
      {
        v10 = currentUsedInputMode2;
        isEmojiInputMode = [modeCopy isEmojiInputMode];

        if (isEmojiInputMode)
        {
          v18 = @"UITextInputNextInputModeInputModeDidChangeKey";
          currentUsedInputMode3 = [(UIKeyboardInputModeController *)self currentUsedInputMode];
          v19[0] = currentUsedInputMode3;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:@"UITextInputNextInputModeInputModeDidChangeNotification" object:0 userInfo:v13];
        }
      }

      currentUsedInputMode4 = [(UIKeyboardInputModeController *)self currentUsedInputMode];
      [(UIKeyboardInputModeController *)self setNextInputModeToUse:currentUsedInputMode4];

      [(UIKeyboardInputModeController *)self setCurrentUsedInputMode:modeCopy];
      [(UIKeyboardInputModeController *)self setLastUsedInputMode:modeCopy];
      [(UIKeyboardInputModeController *)self _setCurrentAndNextInputModePreference];
      identifier = [modeCopy identifier];
      v17 = TIStatisticGetKeyForInputMode();
      TIStatisticScalarSetBoolean();
    }
  }
}

- (void)switchToCurrentSystemInputMode
{
  currentSystemInputMode = [(UIKeyboardInputModeController *)self currentSystemInputMode];
  [(UIKeyboardInputModeController *)self _setCurrentInputMode:currentSystemInputMode force:1];
}

- (void)presentEnablementAndDataSharingPromptIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[UIDictationController sharedInstance];
  [v4 presentEnablementAndDataSharingPromptIfNeeded:neededCopy];
}

- (void)stopDictation
{
  v2 = +[UIDictationController sharedInstance];
  [v2 setReasonType:17];

  v3 = +[UIDictationController sharedInstance];
  [v3 stopDictation];

  v4 = +[UIKeyboardImpl sharedInstance];
  [v4 dismissDictationPopover];
}

- (void)switchToDictationInputModeWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [UIDictationController reasonType:optionsCopy];
  v5 = +[UIDictationController sharedInstance];
  [v5 setReasonType:v4];

  v6 = +[UIDictationController sharedInstance];
  [v6 switchToDictationInputModeWithOptions:optionsCopy];
}

- (BOOL)toggleDictationForResponder:(id)responder withOption:(id)option firstResponderSetupCompletion:(id)completion
{
  responderCopy = responder;
  optionCopy = option;
  completionCopy = completion;
  v10 = [UIDictationController reasonType:optionCopy];
  if (objc_opt_respondsToSelector())
  {
    textInputTraits = [responderCopy performSelector:sel_textInputTraits];
  }

  else
  {
    v12 = +[UIKeyboardImpl activeInstance];
    textInputTraits = [v12 textInputTraits];
  }

  if (v10 != 26 || !+[UIDictationController isRunning](UIDictationController, "isRunning") && ([textInputTraits forceDisableDictation] & 1) == 0 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(responderCopy, "forceDisableDictation") & 1) == 0))
  {
    v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    keyboardWindow = [v14 keyboardWindow];

    v47 = completionCopy;
    if (keyboardWindow && ([responderCopy _window], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == keyboardWindow))
    {
      v35 = +[UIKeyboardImpl activeInstance];
      inputDelegateManager = [v35 inputDelegateManager];
      forwardingInputDelegate = [inputDelegateManager forwardingInputDelegate];

      if (forwardingInputDelegate == responderCopy)
      {

        LOBYTE(forwardingInputDelegate) = 0;
        goto LABEL_52;
      }

      [responderCopy becomeFirstResponder];
      v37 = +[UIKeyboardImpl activeInstance];
      inputDelegateManager2 = [v37 inputDelegateManager];
      v39 = [inputDelegateManager2 delegateRespectingForwardingDelegate:1];

      if (v39 == responderCopy)
      {
        _responderWindow = [responderCopy _responderWindow];

        if (_responderWindow == keyboardWindow)
        {
          v41 = +[UIKeyboardImpl activeInstance];
          inputDelegateManager3 = [v41 inputDelegateManager];
          v43 = [inputDelegateManager3 delegateRespectingForwardingDelegate:0];

          [responderCopy _overrideInputViewNextResponderWithResponder:v43];
        }
      }

      _responderWindow2 = [responderCopy _responderWindow];

      if (_responderWindow2 == keyboardWindow)
      {
        goto LABEL_47;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = +[UIKeyboard keyboardBundleIdentifier];
    v19 = [v18 isEqualToString:@"com.apple.mobilenotes"];

    if ([responderCopy isEditable])
    {
      goto LABEL_14;
    }

    if (v19 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [responderCopy setEditable:1];
LABEL_14:
      _responderWindow3 = [responderCopy _responderWindow];
      _isApplicationKeyWindow = [_responderWindow3 _isApplicationKeyWindow];

      if ((_isApplicationKeyWindow & 1) == 0)
      {
        _responderWindow4 = [responderCopy _responderWindow];
        [_responderWindow4 makeKeyWindow];
      }

      returnKeyType = [textInputTraits returnKeyType];
      if ([responderCopy conformsToProtocol:&unk_1EFE8DCA0] && returnKeyType == 6)
      {
        [responderCopy setUseAutomaticEndpointing:1];
      }

      if (((v17 | [responderCopy isFirstResponder]) & 1) == 0)
      {
        deferBecomingResponder = [textInputTraits deferBecomingResponder];
        [textInputTraits setDeferBecomingResponder:0];
        completionCopy = v47;
        if (v10 <= 0x1A && ((1 << v10) & 0x4002600) != 0)
        {
          if (+[UIKeyboardImpl isDictationPopoverEnabled])
          {
            if (+[UIKeyboard isMajelEnabled])
            {
              v32 = +[UIKeyboardImpl sharedInstance];
              [v32 setKeyboardMinimizedByDictation:1];

              if (v10 == 13)
              {
                v10 = 27;
              }
            }
          }
        }

        LODWORD(forwardingInputDelegate) = [responderCopy becomeFirstResponder];
        if (forwardingInputDelegate)
        {
          if (v47)
          {
            v47[2](v47);
          }

          if (v10 == 9)
          {
            v10 = 8;
          }

          v33 = +[UIDictationController sharedInstance];
          [v33 setReasonType:v10];

          v34 = +[UIDictationController sharedInstance];
          [v34 switchToDictationInputModeWithOptions:optionCopy];
        }

        [textInputTraits setDeferBecomingResponder:deferBecomingResponder];
        goto LABEL_52;
      }

      v24 = +[UIDictationController isRunning];
      v25 = +[UIDictationController sharedInstance];
      [v25 setReasonType:v10];

      completionCopy = v47;
      if (v24)
      {
        v26 = +[UIDictationController activeInstance];
        [v26 stopDictation];

        v27 = +[UIDictationLandingView activeInstance];
        [v27 stopLanding];

        v28 = +[UIDictationController activeInstance];
        shouldSuppressSoftwareKeyboard = [v28 shouldSuppressSoftwareKeyboard];

        if (!shouldSuppressSoftwareKeyboard)
        {
LABEL_50:
          LOBYTE(forwardingInputDelegate) = 1;
          goto LABEL_52;
        }

        if (returnKeyType == 6)
        {
          [responderCopy resignFirstResponder];
        }

        v30 = +[UIKeyboardImpl activeInstance];
        [v30 setKeyboardMinimizedByDictation:0];
      }

      else
      {
        v45 = +[UIDictationController sharedInstance];
        [v45 showSoftwareKeyboardIfNeeded];

        v30 = +[UIDictationController sharedInstance];
        [v30 switchToDictationInputModeWithOptions:optionCopy];
      }

      goto LABEL_50;
    }

LABEL_47:
    LOBYTE(forwardingInputDelegate) = 0;
    completionCopy = v47;
LABEL_52:

    goto LABEL_53;
  }

  LOBYTE(forwardingInputDelegate) = 0;
LABEL_53:

  return forwardingInputDelegate;
}

- (void)stopDictationAndResignFirstResponder
{
  v2 = +[UIDictationController sharedInstance];
  [v2 stopDictationAndResignFirstResponder];
}

- (void)forceDictationReturnToKeyboardInputMode
{
  v2 = +[UIDictationController sharedInstance];
  [v2 forceDictationReturnToKeyboardInputMode];
}

- (void)performWithoutExtensionInputModes:(id)modes
{
  skipExtensionInputModes = self->_skipExtensionInputModes;
  self->_skipExtensionInputModes = 1;
  (*(modes + 2))(modes, a2);
  self->_skipExtensionInputModes = skipExtensionInputModes;
  self->_cacheNeedsRefresh = 1;
}

- (void)performWithForcedExtensionInputModes:(id)modes
{
  skipExtensionInputModes = self->_skipExtensionInputModes;
  self->_skipExtensionInputModes = 0;
  (*(modes + 2))(modes, a2);
  self->_skipExtensionInputModes = skipExtensionInputModes;
}

- (void)startDictationConnectionForFileAtURL:(id)l forInputModeIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v6 = +[UIKeyboardImpl sharedInstance];
  inputDelegate = [v6 inputDelegate];

  if (inputDelegate)
  {
    v8 = +[UIDictationController sharedInstance];
    [v8 startDictationForFileAtURL:lCopy forInputModeIdentifier:identifierCopy];
  }

  else
  {
    v9 = +[UIKeyboardInputModeController sharedInputModeController];
    delegate = [v9 delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

    v8 = +[UIKeyboardInputModeController sharedInputModeController];
    delegate2 = [v8 delegate];
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UIKeyboardErrorDomain" code:0 userInfo:0];
    [delegate2 dictationRequestDidFailWithError:v13];
  }

LABEL_6:
}

- (id)supportedInputModesFromArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  supportedInputModeIdentifiers = [(UIKeyboardInputModeController *)self supportedInputModeIdentifiers];
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = arrayCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = TIInputModeGetNormalizedIdentifier();
        if ([supportedInputModeIdentifiers containsObject:{v13, v15}])
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return array;
}

- (void)handleLastUsedInputMode:(id)mode withNewInputMode:(id)inputMode
{
  modeCopy = mode;
  inputModeCopy = inputMode;
  if ([UIApp _isSpringBoard] && modeCopy | qword_1ED498708)
  {
    if (inputModeCopy)
    {
      if (!qword_1ED498708)
      {
        v6 = [modeCopy copy];
        v7 = qword_1ED498708;
        qword_1ED498708 = v6;
      }

      if (modeCopy)
      {
        v8 = [inputModeCopy copy];
        v9 = qword_1ED498710;
        qword_1ED498710 = v8;
      }

      else
      {
        if ([inputModeCopy isEqualToString:qword_1ED498710])
        {
          goto LABEL_13;
        }

        v12 = qword_1ED498708;
        qword_1ED498708 = 0;

        v9 = qword_1ED498710;
        qword_1ED498710 = 0;
      }
    }

    else
    {
      if ([qword_1ED498708 isEqualToString:qword_1ED498710])
      {
        goto LABEL_13;
      }

      v9 = [qword_1ED498708 copy];
      v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v10 preferencesActions];
      [preferencesActions setLanguageAwareInputModeLastUsed:v9];
    }
  }

LABEL_13:
}

- (id)hardwareLayoutToUseForInputMode:(id)mode
{
  modeCopy = mode;
  v5 = BKSHIDServicesGetHardwareKeyboardLanguage();
  if (![v5 length] && (+[UIDevice currentDevice](UIDevice, "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isHardwareKeyboardAvailable"), v6, v7) && (HardwareKeyboardCountry = GSEventGetHardwareKeyboardCountry(), HardwareKeyboardCountry))
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:HardwareKeyboardCountry];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(UIKeyboardInputModeController *)self hardwareLayoutToUseForInputMode:modeCopy hardwareKeyboardLanguage:v5 countryCode:v9];

  return v10;
}

- (id)hardwareLayoutToUseForInputMode:(id)mode hardwareKeyboardLanguage:(id)language countryCode:(id)code
{
  v29[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  codeCopy = code;
  languageCopy = language;
  v11 = UIKeyboardGetHardwareLayoutFromInputMode(modeCopy, languageCopy, codeCopy);
  identifierWithLayouts = [modeCopy identifierWithLayouts];
  v29[0] = identifierWithLayouts;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v28 = 0;
  v14 = [(UIKeyboardInputModeController *)self supportedFullModesForHardwareKeyboard:languageCopy countryCode:codeCopy activeModes:v13 matchedMode:&v28];

  v15 = v28;
  if ([v14 count] && v15)
  {
    v16 = TIInputModeGetComponentsFromIdentifier();
    v17 = [v16 objectForKey:@"hw"];
    v18 = v17;
    if (v17 && ([v17 isEqualToString:@"Automatic"] & 1) == 0)
    {
      v19 = v18;

      v11 = v19;
    }
  }

  normalizedIdentifier = [modeCopy normalizedIdentifier];
  v21 = UIKeyboardGetSupportedHardwareKeyboardsForInputMode(normalizedIdentifier);

  if ([v21 containsObject:v11])
  {
    v22 = v11;
    if (v22)
    {
      goto LABEL_12;
    }
  }

  normalizedIdentifier2 = [modeCopy normalizedIdentifier];
  v24 = UIKeyboardGetDefaultHardwareKeyboardLayoutForInputMode(normalizedIdentifier2);

  if (v24)
  {
    goto LABEL_14;
  }

  v25 = +[UIKeyboardInputMode intlInputMode];
  v26 = [modeCopy isEqual:v25];

  if (v26)
  {
    v22 = UIKeyboardGetDefaultHardwareKeyboardLayoutForInputMode(@"en_US");
LABEL_12:
    v24 = v22;
    goto LABEL_14;
  }

  v24 = 0;
LABEL_14:

  return v24;
}

- (id)inputModeToAddForKeyboardLanguage:(id)language countryCode:(id)code activeModes:(id)modes
{
  v46 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  codeCopy = code;
  modesCopy = modes;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = modesCopy;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = TIInputModeGetNormalizedIdentifier();
        [v10 addObject:v17];

        v18 = TIInputModeGetLanguage();
        [v11 addObject:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v14);
  }

  v39 = 0;
  v19 = [(UIKeyboardInputModeController *)self supportedFullModesForHardwareKeyboard:languageCopy countryCode:codeCopy activeModes:v12 matchedMode:&v39];
  v20 = v39;
  if (v20)
  {
    v21 = 0;
    goto LABEL_30;
  }

  v33 = codeCopy;
  v22 = [(UIKeyboardInputModeController *)self supportedInputModesFromArray:v19];

  if (![v22 count])
  {
    v21 = 0;
    v19 = v22;
LABEL_29:
    codeCopy = v33;
    goto LABEL_30;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = v22;
  v23 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (!v23)
  {
    v21 = 0;
    v30 = v19;
LABEL_28:

    goto LABEL_29;
  }

  v24 = v23;
  v32 = languageCopy;
  v25 = *v36;
LABEL_13:
  v26 = 0;
  while (1)
  {
    if (*v36 != v25)
    {
      objc_enumerationMutation(v19);
    }

    v27 = *(*(&v35 + 1) + 8 * v26);
    v28 = TIInputModeGetNormalizedIdentifier();
    v29 = TIInputModeGetLanguage();
    if (UIKeyboardLayoutDefaultTypeForInputModeIsASCIICapable(v27))
    {
      if (![v11 containsObject:v29])
      {
        break;
      }

      goto LABEL_20;
    }

    if (([v10 containsObject:v28] & 1) == 0)
    {
      break;
    }

LABEL_20:

    if (v24 == ++v26)
    {
      v24 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v24)
      {
        goto LABEL_13;
      }

      v21 = 0;
      v30 = v19;
      languageCopy = v32;
      goto LABEL_25;
    }
  }

  if (v28)
  {
    v30 = [(UIKeyboardInputModeController *)self fullInputModeFromIdentifier:v28 hardwareKeyboardLanguage:v32];
    v21 = UIKeyboardInputModeGetIdentifierFromComponents(v30);

    languageCopy = v32;
LABEL_25:
    v20 = 0;
    goto LABEL_28;
  }

  v21 = 0;
  languageCopy = v32;
  codeCopy = v33;
  v20 = 0;
LABEL_30:

  return v21;
}

- (id)fullInputModeFromIdentifier:(id)identifier hardwareKeyboardLanguage:(id)language
{
  identifierCopy = identifier;
  languageCopy = language;
  v7 = TIInputModeGetComponentsFromIdentifier();
  v8 = [v7 mutableCopy];

  v9 = UIKeyboardGetSoftwareLayoutForHardwareKeyboardAndInputMode(languageCopy, identifierCopy);
  if (v9)
  {
    [v8 setObject:v9 forKey:@"sw"];
  }

  v10 = UIKeyboardGetDefaultInputModeLayoutForHardwareKeyboardWithCountryCode(identifierCopy, languageCopy, &unk_1EFE30E68);
  if (!v10)
  {
    v10 = @"Automatic";
  }

  [v8 setObject:v10 forKey:@"hw"];

  return v8;
}

- (void)showAddKeyboardAlertForInputModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:identifierCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  languageWithRegion = [v6 languageWithRegion];
  v9 = UIKeyboardLanguageNameInUILanguage(languageWithRegion);

  v10 = MGCopyAnswer();
  v27 = _UINSLocalizedStringWithDefaultValue(@"%@ Keyboard Detected", @"%@ Keyboard Detected");
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v9];
  _UINSLocalizedStringWithDefaultValue(@"Do you want to configure this %@ for typing in %@?", @"Do you want to configure this %@ for typing in %@?");
  v26 = v28 = v10;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, v9];
  v24 = _UINSLocalizedStringWithDefaultValue(@"Add %@ Keyboard", @"Add %@ Keyboard");
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v9];
  v14 = _UINSLocalizedStringWithDefaultValue(@"Not Now", @"Not Now");
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v11 forKey:*MEMORY[0x1E695EE58]];
  v25 = v12;
  [dictionary setObject:v12 forKey:*MEMORY[0x1E695EE60]];
  [dictionary setObject:v13 forKey:*MEMORY[0x1E695EE78]];
  [dictionary setObject:v14 forKey:*MEMORY[0x1E695EE70]];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v16 = qword_1ED498780;
  v37 = qword_1ED498780;
  if (!qword_1ED498780)
  {
    *error = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __getSBUserNotificationDefaultButtonTagSymbolLoc_block_invoke;
    v32 = &unk_1E70F2F20;
    v33 = &v34;
    v17 = SpringBoardServicesLibrary_0();
    v35[3] = dlsym(v17, "SBUserNotificationDefaultButtonTag");
    qword_1ED498780 = *(v33[1] + 24);
    v16 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (v16)
  {
    [dictionary setObject:&unk_1EFE30E80 forKey:*v16];
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v18 = qword_1ED498788;
    v37 = qword_1ED498788;
    if (!qword_1ED498788)
    {
      *error = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __getSBUserNotificationAllowInSetupKeySymbolLoc_block_invoke;
      v32 = &unk_1E70F2F20;
      v33 = &v34;
      v19 = SpringBoardServicesLibrary_0();
      v35[3] = dlsym(v19, "SBUserNotificationAllowInSetupKey");
      qword_1ED498788 = *(v33[1] + 24);
      v18 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v18)
    {
      [dictionary setObject:*MEMORY[0x1E695E4D0] forKey:*v18];
      objc_storeStrong(&self->_newModeForUserNotification, identifier);
      error[0] = 0;
      v20 = CFUserNotificationCreate(0, 0.0, 3uLL, error, dictionary);
      self->_userNotification = v20;
      self->_userNotificationRunLoopSource = CFUserNotificationCreateRunLoopSource(0, v20, __userNotificationCallback, 0);
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, self->_userNotificationRunLoopSource, *MEMORY[0x1E695E8D0]);

LABEL_9:
      return;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationAllowInSetupKey(void)"];
    [currentHandler handleFailureInFunction:v23 file:@"UIKeyboardInputModeController.m" lineNumber:108 description:{@"%s", dlerror()}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSBUserNotificationDefaultButtonTag(void)"];
    [currentHandler handleFailureInFunction:v23 file:@"UIKeyboardInputModeController.m" lineNumber:107 description:{@"%s", dlerror()}];
  }

  __break(1u);
}

- (void)didAcceptAddKeyboardInputMode
{
  v16 = self->_newModeForUserNotification;
  enabledInputModeIdentifiers = [(UIKeyboardInputModeController *)self enabledInputModeIdentifiers];
  v4 = [enabledInputModeIdentifiers arrayByAddingObject:v16];
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  [preferencesActions saveInputModes:v4];

  v7 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v7 preferencesActions];
  v9 = [preferencesActions2 valueForPreferenceKey:*MEMORY[0x1E69D9868]];

  if (v9)
  {
    v10 = v16 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && ([v9 isEqualToString:v16] & 1) == 0)
  {
    [(UIKeyboardInputModeController *)self handleLastUsedInputMode:v9 withNewInputMode:v16];
  }

  v11 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions3 = [v11 preferencesActions];
  [preferencesActions3 setLanguageAwareInputModeLastUsed:v16];

  v13 = +[UIKeyboardImpl activeInstance];
  [v13 defaultsDidChange];

  newModeForUserNotification = self->_newModeForUserNotification;
  self->_newModeForUserNotification = 0;

  keyboardTagForUserNotification = self->_keyboardTagForUserNotification;
  self->_keyboardTagForUserNotification = 0;

  [(UIKeyboardInputModeController *)self releaseAddKeyboardNotification];
}

- (void)releaseAddKeyboardNotification
{
  userNotification = self->_userNotification;
  if (userNotification)
  {
    CFRelease(userNotification);
    self->_userNotification = 0;
  }

  if (self->_userNotificationRunLoopSource)
  {
    Main = CFRunLoopGetMain();
    CFRunLoopRemoveSource(Main, self->_userNotificationRunLoopSource, *MEMORY[0x1E695E8D0]);
    CFRelease(self->_userNotificationRunLoopSource);
    self->_userNotificationRunLoopSource = 0;
  }
}

- (void)getHardwareKeyboardLanguage:(id *)language countryCode:(id *)code
{
  v6 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v6 textInputTraits];
  loadKeyboardsForSiriLanguage = [textInputTraits loadKeyboardsForSiriLanguage];

  if (loadKeyboardsForSiriLanguage)
  {
    return;
  }

  v14 = BKSHIDServicesGetHardwareKeyboardLanguage();
  if (![v14 length])
  {
    v9 = +[UIDevice currentDevice];
    _isHardwareKeyboardAvailable = [v9 _isHardwareKeyboardAvailable];

    if (_isHardwareKeyboardAvailable)
    {
      HardwareKeyboardCountry = GSEventGetHardwareKeyboardCountry();
      if (HardwareKeyboardCountry)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInt:HardwareKeyboardCountry];
        if (!language)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }
  }

  v12 = 0;
  if (language)
  {
LABEL_8:
    *language = v14;
  }

LABEL_9:
  if (code)
  {
    v13 = v12;
    *code = v12;
  }
}

- (void)updateInputModeFromMacKeyboards:(id)keyboards
{
  v24 = *MEMORY[0x1E69E9840];
  keyboardsCopy = keyboards;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  isInOnenessSceneAndRTIEnabled = [v5 isInOnenessSceneAndRTIEnabled];

  if (isInOnenessSceneAndRTIEnabled)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = keyboardsCopy;
    v7 = keyboardsCopy;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = MEMORY[0x1E69E96A0];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          exclusivityIdentifier = [v13 exclusivityIdentifier];

          if (exclusivityIdentifier)
          {
            if (pthread_main_np())
            {
              [(UIKeyboardInputModeController *)self setInputModeFromMacKeyboard:v13];
            }

            else
            {
              objc_initWeak(&location, self);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __65__UIKeyboardInputModeController_updateInputModeFromMacKeyboards___block_invoke;
              block[3] = &unk_1E70F2F80;
              objc_copyWeak(&v17, &location);
              block[4] = v13;
              dispatch_async(v11, block);
              objc_destroyWeak(&v17);
              objc_destroyWeak(&location);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    keyboardsCopy = v15;
  }
}

void __65__UIKeyboardInputModeController_updateInputModeFromMacKeyboards___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInputModeFromMacKeyboard:*(a1 + 32)];
}

- (void)keyboardDevicesDidConnect:(id)connect
{
  v8 = *MEMORY[0x1E69E9840];
  connectCopy = connect;
  v5 = _UIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UIKeyboardInputModeController keyboardDevicesDidConnect:]";
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s: MacOS keyboard is connected", &v6, 0xCu);
  }

  [(UIKeyboardInputModeController *)self updateInputModeFromMacKeyboards:connectCopy];
}

- (void)keyboardDevicesDidDisconnect:(id)disconnect
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = _UIKeyboardLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[UIKeyboardInputModeController keyboardDevicesDidDisconnect:]";
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "%s: MacOS keyboard is disconnected", &v4, 0xCu);
  }
}

- (void)keyboardDeviceLayoutsDidChange:(id)change
{
  v8 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = _UIKeyboardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[UIKeyboardInputModeController keyboardDeviceLayoutsDidChange:]";
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "%s: MacOS keyboard layout is chanbged", &v6, 0xCu);
  }

  [(UIKeyboardInputModeController *)self updateInputModeFromMacKeyboards:changeCopy];
}

- (void)setInputModeFromMacKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  if (objc_opt_respondsToSelector())
  {
    platformInputModeConfiguration = [keyboardCopy platformInputModeConfiguration];
    [(UIKeyboardInputModeController *)self setInputModeFromInputModeConfiguration:platformInputModeConfiguration];
  }

  else
  {
    [(UIKeyboardInputModeController *)self setInputModeFromInputModeConfiguration:0];
  }
}

- (void)setInputModeFromInputModeConfiguration:(id)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v8 = _UIKeyboardLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[UIKeyboardInputModeController setInputModeFromInputModeConfiguration:]";
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "%s: platformInputModeConfiguration is nil", buf, 0xCu);
    }

    goto LABEL_13;
  }

  mEMORY[0x1E69D95B8] = [MEMORY[0x1E69D95B8] sharedInputModeController];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  mEMORY[0x1E69D95B8]2 = [MEMORY[0x1E69D95B8] sharedInputModeController];
  v8 = [mEMORY[0x1E69D95B8]2 inputModesFromArchivedInputModeConfiguration:configurationCopy];

  if (![v8 count])
  {
    v12 = _UIKeyboardLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[UIKeyboardInputModeController setInputModeFromInputModeConfiguration:]";
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "%s: could convert platformInputModeConfiguration to iOS inputMode", buf, 0xCu);
    }

LABEL_13:
    goto LABEL_14;
  }

  firstObject = [v8 firstObject];
  currentInputModeInPreference = [UIKeyboardInputMode keyboardInputModeWithIdentifier:firstObject];

  v11 = _UIKeyboardLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[UIKeyboardInputModeController setInputModeFromInputModeConfiguration:]";
    v19 = 2112;
    v20 = currentInputModeInPreference;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "%s: convert platformInputModeConfiguration to iOS inputMode(%@)", buf, 0x16u);
  }

  if (!currentInputModeInPreference)
  {
LABEL_14:
    currentInputModeInPreference = [(UIKeyboardInputModeController *)self currentInputModeInPreference];
    if (!currentInputModeInPreference)
    {
      goto LABEL_17;
    }
  }

  identifier = [currentInputModeInPreference identifier];
  v16 = identifier;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  UIKeyboardSetActiveInputModes(v14);

  currentInputMode = [(UIKeyboardInputModeController *)self currentInputMode];
  LOBYTE(v14) = [currentInputMode isEqual:currentInputModeInPreference];

  if ((v14 & 1) == 0)
  {
    [(UIKeyboardInputModeController *)self _setCurrentInputMode:currentInputModeInPreference force:1];
  }

LABEL_17:
}

- (void)setInputModeByMacOSInputSource
{
  hardwareKeyboard = [(UIKeyboardInputModeController *)self hardwareKeyboard];
  [(UIKeyboardInputModeController *)self setInputModeFromMacKeyboard:hardwareKeyboard];
}

- (void)handleSpecificHardwareKeyboard:(id)keyboard
{
  selfCopy = self;
  v56 = *MEMORY[0x1E69E9840];
  hardwareKeyboardExclusivityIdentifier = [(UIKeyboardInputModeController *)self hardwareKeyboardExclusivityIdentifier];

  if (hardwareKeyboardExclusivityIdentifier)
  {
    return;
  }

  v53 = 0;
  v54 = 0;
  [(UIKeyboardInputModeController *)selfCopy getHardwareKeyboardLanguage:&v54 countryCode:&v53];
  v5 = v54;
  v6 = v53;
  if (![v5 length])
  {
    if (!v6)
    {
      v7 = 0;
      goto LABEL_30;
    }

    v7 = v6;
LABEL_7:
    UIKeyboardHasCompletedBuddy();
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v9 preferencesActions];
    v11 = *MEMORY[0x1E69D9848];
    v12 = [preferencesActions valueForPreferenceKey:*MEMORY[0x1E69D9848]];

    if ([v12 containsObject:v7])
    {
      goto LABEL_29;
    }

    if (v12)
    {
      v13 = [v12 arrayByAddingObject:v7];

      v14 = v13;
    }

    else
    {
      v14 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
    }

    mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v47 = v14;
    [mEMORY[0x1E69D9680] setValue:v14 forPreferenceKey:v11];

    objc_storeStrong(&selfCopy->_keyboardTagForUserNotification, v7);
    enabledInputModeIdentifiers = [(UIKeyboardInputModeController *)selfCopy enabledInputModeIdentifiers];
    v52 = 0;
    v17 = [(UIKeyboardInputModeController *)selfCopy supportedFullModesForHardwareKeyboard:v5 countryCode:v6 activeModes:enabledInputModeIdentifiers matchedMode:&v52];
    v18 = v52;
    if (v18)
    {
      v41 = v17;
      v45 = selfCopy;
      v46 = v7;
      v43 = v6;
      v44 = v5;
      firstObject = objc_opt_new();
      v20 = TIInputModeGetNormalizedIdentifier();
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v42 = enabledInputModeIdentifiers;
      v21 = enabledInputModeIdentifiers;
      v22 = [v21 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v49;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v49 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v48 + 1) + 8 * i);
            v27 = TIInputModeGetNormalizedIdentifier();
            v28 = [v27 isEqualToString:v20];

            if (v28)
            {
              v29 = v18;
            }

            else
            {
              v29 = v26;
            }

            [firstObject addObject:v29];
          }

          v23 = [v21 countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v23);
      }

      v30 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions2 = [v30 preferencesActions];
      [preferencesActions2 saveInputModes:firstObject];

      v5 = v44;
      selfCopy = v45;
      enabledInputModeIdentifiers = v42;
      v6 = v43;
      v17 = v41;
    }

    else
    {
      if (![v17 count])
      {
LABEL_28:

        v12 = v47;
LABEL_29:

        goto LABEL_30;
      }

      v46 = v7;
      firstObject = [v17 firstObject];
      [(UIKeyboardInputModeController *)selfCopy showAddKeyboardAlertForInputModeIdentifier:firstObject];
    }

    v7 = v46;
    goto LABEL_28;
  }

  v7 = v5;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_30:
  v32 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v32 _isHardwareKeyboardAvailable];

  if ((_isHardwareKeyboardAvailable & 1) == 0)
  {
    [(UIKeyboardInputModeController *)selfCopy handleLastUsedInputMode:0 withNewInputMode:0];
    userNotification = selfCopy->_userNotification;
    if (userNotification)
    {
      if (selfCopy->_keyboardTagForUserNotification)
      {
        v35 = +[UIKeyboardPreferencesController sharedPreferencesController];
        preferencesActions3 = [v35 preferencesActions];
        v37 = *MEMORY[0x1E69D9848];
        v38 = [preferencesActions3 valueForPreferenceKey:*MEMORY[0x1E69D9848]];

        if ([v38 containsObject:selfCopy->_keyboardTagForUserNotification])
        {
          v39 = [v38 mutableCopy];
          [v39 removeObject:selfCopy->_keyboardTagForUserNotification];
          mEMORY[0x1E69D9680]2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
          [mEMORY[0x1E69D9680]2 setValue:v39 forPreferenceKey:v37];
        }

        userNotification = selfCopy->_userNotification;
      }

      CFUserNotificationCancel(userNotification);
      [(UIKeyboardInputModeController *)selfCopy releaseAddKeyboardNotification];
    }
  }
}

- (id)supportedFullModesForHardwareKeyboard:(id)keyboard countryCode:(id)code activeModes:(id)modes matchedMode:(id *)mode
{
  v57 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  codeCopy = code;
  modesCopy = modes;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v45 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(modesCopy, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = modesCopy;
  v13 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        v18 = TIInputModeGetNormalizedIdentifier();
        [v11 addObject:v18];
        if (([v18 isEqualToString:v17] & 1) == 0)
        {
          [v45 setObject:v17 forKey:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v14);
  }

  v36 = v12;

  v19 = keyboardCopy;
  v37 = codeCopy;
  v20 = UIKeyboardGetInputModesSupportingHardwareKeyboard();
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v20;
  v46 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v46)
  {
    v44 = 0;
    v22 = *v48;
    v40 = *v48;
    v41 = v11;
    v39 = v21;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v47 + 1) + 8 * j);
        v25 = [(UIKeyboardInputModeController *)self fullInputModeFromIdentifier:v24 hardwareKeyboardLanguage:v19, v36, v37];
        if ([v11 containsObject:v24])
        {
          v26 = [v45 objectForKey:v24];
          if (v26)
          {
            selfCopy = self;
            v28 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v26];
            v29 = UIKeyboardGetHardwareLayoutFromInputMode(v28, v19, &unk_1EFE30E68);

            if (v29)
            {
              [v25 setObject:v29 forKey:@"hw"];
              v30 = TIInputModeGetComponentsFromIdentifier();
              v31 = [v30 objectForKey:@"sw"];
              if (v31)
              {
                [v25 setObject:v31 forKey:@"sw"];
              }

              v32 = [v30 objectForKey:@"ml"];
              if (v32)
              {
                [v25 setObject:v32 forKey:@"ml"];
              }

              v19 = keyboardCopy;
            }

            self = selfCopy;
            v21 = v39;
            v22 = v40;
            v11 = v41;
          }

          v33 = UIKeyboardInputModeGetIdentifierFromComponents(v25);
          if (v44)
          {
            [v21 addObject:v33];
          }

          else
          {
            [v21 insertObject:v33 atIndex:0];
            if (mode)
            {
              v34 = v33;
              *mode = v33;
            }
          }

          v44 = 1;
        }

        else
        {
          [v25 setObject:@"Automatic" forKey:@"hw"];
          v26 = UIKeyboardInputModeGetIdentifierFromComponents(v25);
          [v21 addObject:v26];
        }
      }

      v46 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v46);
  }

  return v21;
}

- (UIKeyboardInputModeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSArray)supportedInputModeIdentifiers
{
  mEMORY[0x1E69D95B8] = [MEMORY[0x1E69D95B8] sharedInputModeController];
  supportedInputModeIdentifiers = [mEMORY[0x1E69D95B8] supportedInputModeIdentifiers];

  v5 = +[UIKeyboardInputModeController sharedInputModeController];
  extensionInputModes = [v5 extensionInputModes];

  v7 = [(UIKeyboardInputModeController *)self identifiersFromInputModes:extensionInputModes];
  v8 = [v7 arrayByAddingObjectsFromArray:supportedInputModeIdentifiers];

  return v8;
}

- (void)saveDeviceUnlockPasscodeInputModes
{
  mEMORY[0x1E69D9680] = [MEMORY[0x1E69D9680] sharedPreferencesController];
  v3 = [(UIKeyboardInputModeController *)self enabledInputModeIdentifiers:0];
  [mEMORY[0x1E69D9680] setValue:v3 forPreferenceKey:*MEMORY[0x1E69D9708]];
}

- (id)inputModesByAppendingApplicationLanguagesToInputModes:(id)modes
{
  v54 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  additionalTextInputLocales = [(UIKeyboardInputModeController *)self additionalTextInputLocales];
  v6 = [additionalTextInputLocales count];

  v7 = modesCopy;
  if (v6)
  {
    v7 = [modesCopy mutableCopy];
    v8 = [MEMORY[0x1E695DFA8] set];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v35 = modesCopy;
    v9 = modesCopy;
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = TIInputModeGetLanguage();
          if (v14)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v47 objects:v53 count:16];
      }

      while (v11);
    }

    v34 = v9;

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(UIKeyboardInputModeController *)self additionalTextInputLocales];
    v16 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        v19 = 0;
        v37 = v17;
        do
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v43 + 1) + 8 * v19);
          localeIdentifier2 = [v20 localeIdentifier];
          v22 = TIInputModeGetLanguage();

          if (([v8 containsObject:v22] & 1) == 0)
          {
            v23 = v8;
            [v8 addObject:v22];
            v24 = MEMORY[0x1E69D95B8];
            localeIdentifier3 = [v20 localeIdentifier];
            v26 = [v24 _inputModesForLocale:localeIdentifier language:localeIdentifier3 modeFetcher:&__block_literal_global_1147_0];

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v27 = v26;
            v28 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v40;
              do
              {
                for (j = 0; j != v29; ++j)
                {
                  if (*v40 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v39 + 1) + 8 * j);
                  if (([v7 containsObject:v32] & 1) == 0)
                  {
                    [v7 addObject:v32];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
              }

              while (v29);
            }

            v17 = v37;
            v8 = v23;
          }

          ++v19;
        }

        while (v19 != v17);
        v17 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v17);
    }

    modesCopy = v35;
  }

  return v7;
}

- (id)enabledInputModeIdentifiers:(BOOL)identifiers
{
  v79 = *MEMORY[0x1E69E9840];
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = [preferencesActions BOOLForPreferenceKey:*MEMORY[0x1E69D96F0]];

  if ((v7 & 1) == 0)
  {
    v18 = [(UIKeyboardInputModeController *)self defaultEnabledInputModesForCurrentLocale:1];
    defaultInputModes = [(UIKeyboardInputModeController *)self defaultInputModes];
    [(UIKeyboardInputModeController *)self setEnabledInputModes:defaultInputModes];

    defaultNormalizedInputModes = [(UIKeyboardInputModeController *)self defaultNormalizedInputModes];
    [(UIKeyboardInputModeController *)self setNormalizedInputModes:defaultNormalizedInputModes];

    defaultKeyboardInputModes = [(UIKeyboardInputModeController *)self defaultKeyboardInputModes];
    [(UIKeyboardInputModeController *)self setKeyboardInputModes:defaultKeyboardInputModes];

    defaultInputModes2 = [(UIKeyboardInputModeController *)self defaultInputModes];
    [(UIKeyboardInputModeController *)self setKeyboardInputModeIdentifiers:defaultInputModes2];

    goto LABEL_57;
  }

  v8 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions2 = [v8 preferencesActions];
  v10 = [preferencesActions2 valueForPreferenceKey:*MEMORY[0x1E69D96F8]];
  v11 = [(UIKeyboardInputModeController *)self appendPasscodeInputModes:v10];

  v12 = [(UIKeyboardInputModeController *)self inputModesByAppendingApplicationLanguagesToInputModes:v11];

  v13 = +[UIKeyboardImpl keyboardScreen];
  _userInterfaceIdiom = [v13 _userInterfaceIdiom];

  if (_userInterfaceIdiom == 3)
  {
    v15 = [(UIKeyboardInputModeController *)self inputModesFromIdentifiers:v12];
    v16 = [objc_opt_class() filteredCarPlayInputModesFromInputModes:v15];

    v17 = [(UIKeyboardInputModeController *)self identifiersFromInputModes:v16];

    v12 = v16;
LABEL_7:

    v12 = v17;
    goto LABEL_8;
  }

  v23 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v23 textInputTraits];
  loadKeyboardsForSiriLanguage = [textInputTraits loadKeyboardsForSiriLanguage];

  if (loadKeyboardsForSiriLanguage)
  {
    v17 = [(UIKeyboardInputModeController *)self filteredInputModesForSiriLanguageFromInputModes:v12];
    goto LABEL_7;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && ![(UIKeyboardInputModeController *)self disableFloatingKeyboardFilter]&& !+[UIKeyboardImpl isFloating])
  {
    v28 = [(UIKeyboardInputModeController *)self inputModesFromIdentifiers:v12];
    layoutFallbacksForPhoneLayoutsOnPad = [objc_opt_class() layoutFallbacksForPhoneLayoutsOnPad];
    v30 = [(UIKeyboardInputModeController *)self filteredPadInputModesFromInputModes:v28 withRules:layoutFallbacksForPhoneLayoutsOnPad];

    v17 = [(UIKeyboardInputModeController *)self identifiersFromInputModes:v30];

    v12 = v30;
    goto LABEL_7;
  }

LABEL_8:
  v26 = ![(UIKeyboardInputModeController *)self verifyKeyboardExtensionsWithApp];
  if (self->_excludeExtensionInputModes == v26)
  {
    if (self->_cacheNeedsRefresh)
    {
      skipExtensionInputModes = self->_skipExtensionInputModes;
      self->_excludeExtensionInputModes = v26;
      if (!skipExtensionInputModes)
      {
        goto LABEL_22;
      }
    }

    else
    {
      self->_excludeExtensionInputModes = v26;
    }

    enabledInputModes = [(UIKeyboardInputModeController *)self enabledInputModes];
    if ([enabledInputModes count])
    {
      enabledInputModes2 = [(UIKeyboardInputModeController *)self enabledInputModes];
      v33 = [enabledInputModes2 isEqualToArray:v12];

      if (v33)
      {
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_22;
  }

  self->_excludeExtensionInputModes = v26;
LABEL_22:
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v65 = v12;
  obj = v12;
  v70 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
  if (!v70)
  {
    goto LABEL_51;
  }

  v69 = *v75;
  v67 = array4;
  do
  {
    v38 = 0;
    do
    {
      if (*v75 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(*(&v74 + 1) + 8 * v38);
      if (![(UIKeyboardInputModeController *)self identifierIsValidSystemInputMode:v39])
      {
        if ([(UIKeyboardInputModeController *)self isLockscreenPasscodeKeyboard])
        {
          goto LABEL_46;
        }

LABEL_34:
        v39 = v39;
        v49 = v39;
        if ([(UIKeyboardInputModeController *)self identifierIsValidSystemInputMode:v39])
        {
          v49 = UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v39);
        }

        v50 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v49];
        v51 = v50;
        if (v50)
        {
          if (![v50 isExtensionInputMode] || (objc_msgSend(array, "containsObject:", v39) & 1) != 0)
          {
            v52 = TIInputModeGetNormalizedIdentifier();
            if (![array2 containsObject:v52] || (objc_msgSend(array, "containsObject:", v49) & 1) == 0)
            {
              [array addObject:v49];
              [array2 addObject:v52];
              [array3 addObject:v51];
              [array4 addObject:v49];
            }

            goto LABEL_45;
          }

          if (!self->_excludeExtensionInputModes)
          {
            [array addObject:v39];
            [array2 addObject:v39];
            [array3 addObject:v51];
            v53 = array4;
LABEL_44:
            [v53 addObject:v39];
          }

LABEL_45:

          goto LABEL_46;
        }

        [array addObject:v39];
        v53 = array2;
        goto LABEL_44;
      }

      if ([v39 rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_34;
      }

      v40 = TICanonicalInputModeName();
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __76__UIKeyboardInputModeController_Compatibility__enabledInputModeIdentifiers___block_invoke;
      v71[3] = &unk_1E710DE90;
      v39 = v39;
      v72 = v39;
      v41 = v40;
      v73 = v41;
      v42 = [obj indexesOfObjectsPassingTest:v71];
      v43 = [v42 count];
      if (v43 <= 1)
      {
        v44 = array3;
        selfCopy = self;
        v46 = array2;
        v47 = array;
        v48 = v41;

        v39 = v48;
        array = v47;
        array2 = v46;
        self = selfCopy;
        array3 = v44;
        array4 = v67;
      }

      if (v43 < 2)
      {
        goto LABEL_34;
      }

LABEL_46:

      ++v38;
    }

    while (v70 != v38);
    v54 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    v70 = v54;
  }

  while (v54);
LABEL_51:

  if (![array3 count] || objc_msgSend(array3, "count") == 1 && (objc_msgSend(array3, "firstObject"), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "primaryLanguage"), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v56, "isEqualToString:", @"emoji"), v56, v55, v57))
  {
    v58 = [(UIKeyboardInputModeController *)self defaultEnabledInputModesForCurrentLocale:1];
    defaultInputModes3 = [(UIKeyboardInputModeController *)self defaultInputModes];
    [array setArray:defaultInputModes3];

    defaultNormalizedInputModes2 = [(UIKeyboardInputModeController *)self defaultNormalizedInputModes];
    [array2 setArray:defaultNormalizedInputModes2];

    defaultKeyboardInputModes2 = [(UIKeyboardInputModeController *)self defaultKeyboardInputModes];
    [array3 setArray:defaultKeyboardInputModes2];

    defaultInputModes4 = [(UIKeyboardInputModeController *)self defaultInputModes];
    [array4 setArray:defaultInputModes4];
  }

  [(UIKeyboardInputModeController *)self setEnabledInputModes:array];
  [(UIKeyboardInputModeController *)self setNormalizedInputModes:array2];
  [(UIKeyboardInputModeController *)self setKeyboardInputModes:array3];
  [(UIKeyboardInputModeController *)self setKeyboardInputModeIdentifiers:array4];

  identifiers = identifiersCopy;
  v12 = v65;
LABEL_56:

LABEL_57:
  [(UIKeyboardInputModeController *)self updateUserSelectableInputModes];
  self->_cacheNeedsRefresh = 0;
  if (identifiers)
  {
    [(UIKeyboardInputModeController *)self normalizedInputModes];
  }

  else
  {
    [(UIKeyboardInputModeController *)self enabledInputModes];
  }
  v63 = ;

  return v63;
}

uint64_t __76__UIKeyboardInputModeController_Compatibility__enabledInputModeIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = TIInputModeGetNormalizedIdentifier();
    v4 = [v5 isEqualToString:v6];
  }

  return v4;
}

- (id)userSelectableInputModesFromInputModes:(id)modes
{
  v67 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  v4 = UICurrentKeyboardSupportsMultilingual();
  if (_os_feature_enabled_impl())
  {
    array = [MEMORY[0x1E695DF70] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v6 = modesCopy;
    v7 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v61;
    LODWORD(v45) = v4 ^ 1;
    while (1)
    {
      v10 = 0;
      v48 = v8;
      do
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v60 + 1) + 8 * v10);
        identifier = [v11 identifier];
        if ((TIInputModeIsMultilingualOnly() & 1) == 0)
        {
          v13 = v6;
          v14 = [objc_opt_class() multilingualSetForInputModeIdentifier:identifier];
          if ([v14 count] < 2)
          {
            goto LABEL_12;
          }

          v15 = [v14 objectAtIndexedSubscript:0];
          if ([v15 isEqualToString:identifier])
          {

            goto LABEL_12;
          }

          v16 = [v14 objectAtIndexedSubscript:0];
          UIKeyboardInputModeGetIdentifierWithKeyboardLayouts(v16);
          v17 = v9;
          v19 = v18 = array;
          v50 = [v19 isEqualToString:identifier] | v45;

          array = v18;
          v9 = v17;
          v8 = v48;

          if (v50)
          {
LABEL_12:
            [array addObject:v11];
          }

          v6 = v13;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (!v8)
      {
LABEL_16:
        v20 = v6;
        goto LABEL_47;
      }
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v21 = modesCopy;
  v22 = [v21 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v22)
  {
    v23 = v22;
    v49 = 0;
    v51 = 0;
    v24 = 0;
    v25 = *v57;
    v26 = *MEMORY[0x1E69D97C8];
    v46 = *MEMORY[0x1E69D97E0];
    obj = v21;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v57 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v56 + 1) + 8 * i);
        normalizedIdentifier = [v28 normalizedIdentifier];
        v30 = TIGetInputModeProperties();
        v31 = [v30 objectForKey:v26];
        bOOLValue = [v31 BOOLValue];

        if (bOOLValue)
        {
          v33 = v28;

          ++v49;
          v24 = v33;
        }

        else
        {
          v34 = [v30 objectForKey:v46];
          bOOLValue2 = [v34 BOOLValue];

          v51 += bOOLValue2;
        }
      }

      v21 = obj;
      v23 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v23);

    v36 = v51 == 1 && v49 == 1;
    v6 = v24;
    if (!v36 || v24 == 0)
    {
      goto LABEL_46;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = obj;
    v40 = [v39 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v53;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v53 != v42)
          {
            objc_enumerationMutation(v39);
          }

          if (*(*(&v52 + 1) + 8 * j) != v6)
          {
            [array2 addObject:?];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v41);
    }

    v21 = [array2 copy];
  }

  else
  {
    v6 = 0;
    array2 = v21;
  }

LABEL_46:
  v20 = v21;
  array = v20;
LABEL_47:

  return array;
}

- (id)userSelectableInputModeIdentifiersFromInputModeIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v15 + 1) + 8 * i), v15];
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(UIKeyboardInputModeController *)self userSelectableInputModesFromInputModes:array];
  v13 = [(UIKeyboardInputModeController *)self identifiersFromInputModes:v12];

  return v13;
}

- (NSArray)enabledInputModeLanguages
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeInputModes = [(UIKeyboardInputModeController *)self activeInputModes];
  v5 = [activeInputModes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(activeInputModes);
        }

        primaryLanguage = [*(*(&v11 + 1) + 8 * i) primaryLanguage];
        if (([array containsObject:primaryLanguage] & 1) == 0 && (objc_msgSend(primaryLanguage, "isEqualToString:", @"emoji") & 1) == 0)
        {
          [array addObject:primaryLanguage];
        }
      }

      v6 = [activeInputModes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)identifiersFromInputModes:(id)modes
{
  v17 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = modesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        [array addObject:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)inputModesFromIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:*(*(&v13 + 1) + 8 * v10), v13];

        if (v8)
        {
          [array addObject:v8];
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

- (BOOL)identifierIsValidSystemInputMode:(id)mode
{
  v3 = MEMORY[0x1E69D95B8];
  modeCopy = mode;
  sharedInputModeController = [v3 sharedInputModeController];
  v6 = [sharedInputModeController identifierIsValidSystemInputMode:modeCopy];

  return v6;
}

@end