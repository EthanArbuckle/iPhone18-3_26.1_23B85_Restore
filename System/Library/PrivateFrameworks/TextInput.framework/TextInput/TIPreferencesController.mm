@interface TIPreferencesController
+ (id)sharedPreferencesController;
+ (void)registerPreferredLanguagesForInputModes:(id)modes replacingInputModes:(id)inputModes;
- (BOOL)BOOLForKey:(int)key;
- (BOOL)BOOLForPreferenceKey:(id)key;
- (BOOL)_isOneTimeAction:(id)action;
- (BOOL)allEnabledInputModesAreValid;
- (BOOL)automaticMinimizationEnabled;
- (BOOL)isKeyLockedDown:(int)down;
- (BOOL)isPreferenceKeyLockedDown:(id)down;
- (BOOL)oneTimeActionCompleted:(id)completed;
- (CGPoint)floatingKeyboardPosition;
- (CGPoint)keyboardPosition;
- (TIPreferencesController)init;
- (id)_configuredPreferencesForDomain:(id)domain;
- (id)valueForKey:(int)key;
- (id)valueForPreferenceKey:(id)key;
- (int)MCValueForManagedPreferenceKey:(id)key;
- (unint64_t)floatingKeyboardDockedEdge;
- (void)_configureDomain:(id)domain notification:(id)notification;
- (void)_configureDomains;
- (void)_configureKey:(id)key domain:(id)domain defaultValue:(id)value fallbackKey:(id)fallbackKey isAnalyzed:(BOOL)analyzed isCloudSetting:(BOOL)setting isWatchSync:(BOOL)sync;
- (void)_configurePreferences;
- (void)_pushValue:(id)value toPreference:(id)preference domain:(id)domain;
- (void)clearSynchronizePreferencesTimer;
- (void)dealloc;
- (void)didSeeHardwareKeyboard:(id)keyboard;
- (void)didTriggerOneTimeAction:(id)action;
- (void)didUnseeHardwareKeyboard:(id)keyboard;
- (void)idleInit;
- (void)managedKeyboardSettingDidChange:(id)change;
- (void)preferencesChangedCallback:(id)callback;
- (void)profileSettingDidChange:(id)change;
- (void)registerRemoteDeviceWithIDSIdentifier:(id)identifier user:(id)user;
- (void)resetDictationTipsToDefaultSettings;
- (void)setAutomaticMinimizationEnabled:(BOOL)enabled;
- (void)setFloatingKeyboardDockedEdge:(unint64_t)edge;
- (void)setFloatingKeyboardPosition:(CGPoint)position;
- (void)setInputModeSelectionSequence:(id)sequence;
- (void)setInputModes:(id)modes;
- (void)setKeyboardPosition:(CGPoint)position;
- (void)setKeyboardShownByTouch:(BOOL)touch;
- (void)setPredictionEnabled:(BOOL)enabled;
- (void)setValue:(id)value forKey:(int)key;
- (void)setValue:(id)value forManagedPreferenceKey:(id)key asyncWithCompletion:(id)completion;
- (void)setValue:(id)value forPreferenceKey:(id)key asyncIfManaged:(BOOL)managed;
- (void)setautocorrectionEnabled:(BOOL)enabled;
- (void)synchronizeDomainIfNeedsGet:(id)get;
- (void)synchronizePreferences;
- (void)touchSynchronizePreferencesTimer;
- (void)updateCompactAssistantBarPersistentLocation:(unint64_t)location;
- (void)updateDictationTipDisplayCount:(id)count dictationTipKey:(id)key;
- (void)updateEnableProKeyboard:(BOOL)keyboard;
- (void)updateInputModes:(id)modes;
- (void)updateKeyboardHandBias:(id)bias;
- (void)updateKeyboardIsFloating:(BOOL)floating;
- (void)updateKeyboardIsSplit:(BOOL)split locked:(BOOL)locked;
- (void)updateLastUsedDictionaryLanguageInMultilingualKeyboard:(id)keyboard activeDictationlanguage:(id)dictationlanguage;
- (void)updateLastUsedInputMode:(id)mode;
- (void)updateLastUsedLayout:(id)layout;
- (void)updateVisceral:(id)visceral;
@end

@implementation TIPreferencesController

+ (id)sharedPreferencesController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__TIPreferencesController_sharedPreferencesController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedPreferencesController_once != -1)
  {
    dispatch_once(&sharedPreferencesController_once, block);
  }

  v2 = sharedPreferencesController_sharedController;

  return v2;
}

- (BOOL)automaticMinimizationEnabled
{
  if ([(TIPreferencesController *)self BOOLForPreferenceKey:@"SuppressAutomaticMinimization"])
  {
    return 0;
  }

  return [(TIPreferencesController *)self BOOLForPreferenceKey:@"AutomaticMinimizationEnabled"];
}

- (void)_configurePreferences
{
  [(TIPreferencesController *)self _configureKey:@"AppleKeyboards" domain:@".GlobalPreferences" defaultValue:0];
  v3 = MEMORY[0x1E695E110];
  [(TIPreferencesController *)self _configureKey:@"AppleKeyboardsExpanded" domain:@".GlobalPreferences" defaultValue:MEMORY[0x1E695E110]];
  [(TIPreferencesController *)self _configureKey:@"AppleKeyboardsIncludeIntl" domain:@".GlobalPreferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"ApplePasscodeKeyboards" domain:@".GlobalPreferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"AppleLocale" domain:@".GlobalPreferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"AppleLanguages" domain:@".GlobalPreferences" defaultValue:0];
  v4 = MEMORY[0x1E695E118];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAssistant" domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x1E695E118]];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAutocorrection" domain:@"com.apple.keyboard.preferences" defaultValue:v4 fallbackKey:0 isAnalyzed:1 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAutocapitalization" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCheckSpelling" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardInlineCompletion" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardMathExpressionCompletion" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"SmartQuotesEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"SmartDashesEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardPeriodShortcut" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCapsLock" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"SmartInsertDeleteEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"HWKeyboardAutocorrection" domain:@"com.apple.keyboard.preferences" fallbackKey:@"KeyboardAutocorrection" isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"HWKeyboardAutocapitalization" domain:@"com.apple.keyboard.preferences" fallbackKey:@"KeyboardAutocapitalization" isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"HWKeyboardPeriodShortcut" domain:@"com.apple.keyboard.preferences" fallbackKey:@"KeyboardPeriodShortcut" isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"HWKeyboardGlobeAsEmojiKey" domain:@"com.apple.keyboard.preferences" defaultValue:0 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"HWKeyboardCapsLockRomanSwitch" domain:@"com.apple.keyboard.preferences" defaultValue:0 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"HWKeyboardDictationShortcut" domain:@"com.apple.keyboard.preferences" defaultValue:0 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardLastUsed" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardsCurrentAndNext" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardLastUsedForLanguage" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardLayoutLastUsedForKeyboard" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardLastChosen" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardInputModeUpdateDate" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardSecondLanguage" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAdditionalLanguages" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:MGGetSInt32Answer() == 3];
  [(TIPreferencesController *)self _configureKey:@"KeyboardLanguageIndicatorEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v5];

  [(TIPreferencesController *)self _configureKey:@"UIKeyboardDidShowInternationalInfoIntroduction" domain:@"com.apple.keyboard.preferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"KeyboardDidShowProductivityTutorial" domain:@"com.apple.keyboard.preferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"DictationLanguagesLastUsed" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"DictationLanguagesEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"DictationAsPrimaryInputMode" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"DictationAsPrimaryInputModeResetAtNewSession" domain:@"com.apple.keyboard.preferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"RemoteDeviceIDSIdentifier" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"PersonaUniqueIdentifierSelf" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardHardwareKeyboardsSeen" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"HardwareKeyboardLastSeen" domain:@"com.apple.keyboard.preferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"SoftwareKeyboardShownByTouch" domain:@"com.apple.keyboard.preferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"AutomaticMinimizationEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"SuppressAutomaticMinimization" domain:@"com.apple.keyboard.preferences" defaultValue:v3];
  [(TIPreferencesController *)self _configureKey:@"KeyboardPredictionHelpMessageCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"KeyboardShowPredictionBar" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardPrediction" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardBias" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardReachableFirstInteraction" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  v6 = MEMORY[0x1E696AD98];
  if (IsLargeIPad_onceToken != -1)
  {
    dispatch_once(&IsLargeIPad_onceToken, &__block_literal_global_854);
  }

  v7 = [v6 numberWithBool:IsLargeIPad_isLarge];
  [(TIPreferencesController *)self _configureKey:@"KeyboardUseProLayout" domain:@"com.apple.keyboard.preferences" defaultValue:v7];

  [(TIPreferencesController *)self _configureKey:@"ShowMemoji" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"ShowStickers" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardFloatingPersistentVerticalOffset" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"KeyboardFloatingPersistentHorizontalOffset" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"KeyboardFloatingDockedEdge" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"KeyboardVisceral" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAllowPaddle" domain:@"com.apple.keyboard.preferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardFeedbackIdleTimeout" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DCE60];
  [(TIPreferencesController *)self _configureKey:@"CompactAssistantBarPersistentLocation" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"RivenKeyboard" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"UIKeyboardPersistentVerticalOffset" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"UIKeyboardPersistentHorizontalOffset" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"UIKeyboardPersistentSplitProgress" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  v8 = MEMORY[0x1E695E110];
  [(TIPreferencesController *)self _configureKey:@"UIKeyboardPersistentSplitLock" domain:@"com.apple.keyboard.preferences" defaultValue:MEMORY[0x1E695E110]];
  [(TIPreferencesController *)self _configureKey:@"KeyboardIsFloating" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"RivenLayoutSize" domain:@"com.apple.keyboard" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardFloatingEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"DidShowGestureKeyboardIntroduction" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DidShowContinuousPathIntroduction" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardDidShowGenmojiTip" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:*MEMORY[0x1E698E378] domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardPerformanceLogging" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"TypologyEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"CustomerTypologyEnabledByDiagnosticExtension" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAssetDownloadInFive" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardGlobeKeyExperiments" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardMultilingualEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:MGGetSInt32Answer() != 3];
  [(TIPreferencesController *)self _configureKey:@"KeyboardMultiscriptEnabled" domain:@"com.apple.keyboard" defaultValue:v9];

  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathEnabled" domain:@"com.apple.keyboard.ContinuousPath" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathProgressiveCandidatesEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathCompletesWords" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathDeleteWholeWord" domain:@"com.apple.keyboard.ContinuousPath" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathDetectPause" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardInsertsSpaceAfterPredictiveInput" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathLanguageWeight" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DCE70];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:19];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathEnabledAlgorithmTypes" domain:@"com.apple.keyboard" defaultValue:v10];

  [(TIPreferencesController *)self _configureKey:@"KeyboardCPCandidateCount" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DC4A0];
  [(TIPreferencesController *)self _configureKey:@"KeyboardContinuousPathRetrocorrection" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardIgnoreCPConfigRequirements" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardDODMLLoggingEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardSensorKitEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardSensorKitAggregatedWordsThreshold" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DC4B8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardUserModelLoggingEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardSimulateAutofillCandidates" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardAllowRelaxedOVSPolicy" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardSkipCandidateQualityFilter" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCJContinuousPathEnabled" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCPUIColorfulEffect" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCPUISpotlightEffect" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCPUIModalPunctuationPlane" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCPConfidenceModel" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"FuzzyPinyin" domain:@"com.apple.InputModePreferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"SuchengCangjie" domain:@"com.apple.InputModePreferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"FuzzyPinyinPairs" domain:@"com.apple.InputModePreferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"SpaceConfirmation" domain:@"com.apple.InputModePreferences" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"ShuangpinType" domain:@"com.apple.InputModePreferences" defaultValue:&unk_1EF7DC4D0];
  [(TIPreferencesController *)self _configureKey:@"PinyinDialect" domain:@"com.apple.InputModePreferences" defaultValue:&unk_1EF7DC4E8];
  [(TIPreferencesController *)self _configureKey:@"WubiStandard" domain:@"com.apple.InputModePreferences" defaultValue:&unk_1EF7DC488];
  LOBYTE(v12) = 1;
  [(TIPreferencesController *)self _configureKey:@"SmartFullwidthSpace" domain:@"com.apple.InputModePreferences" defaultValue:v4 fallbackKey:0 isAnalyzed:0 isCloudSetting:0 isWatchSync:v12];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:MGGetSInt32Answer() == 3];
  [(TIPreferencesController *)self _configureKey:@"LiveConversion" domain:@"com.apple.InputModePreferences" defaultValue:v11];

  [(TIPreferencesController *)self _configureKey:@"SoftwareLiveConversion" domain:@"com.apple.InputModePreferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"PredictionTime" domain:@"com.apple.InputModePreferences" defaultValue:&unk_1EF7DCE80];
  [(TIPreferencesController *)self _configureKey:@"ConversionOnSearchField" domain:@"com.apple.InputModePreferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"EmojiDefaultsKey" domain:@"com.apple.EmojiPreferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"DictationKeyAlwaysEnabled" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationLogging" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"TypoTrackerButton" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"HandwritingCaptureEnabled" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardCachingDisabled" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"KeyboardSwipeToTab" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"ShowExtraLayouts" domain:@"com.apple.keyboard" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationLanguagesLastUsed" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"DictationLanguagesEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:0 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"Dictation Enabled" domain:@"com.apple.assistant.support" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"Dictation Auto Punctuation Enabled" domain:@"com.apple.assistant.support" defaultValue:v4 isCloudSetting:1];
  [(TIPreferencesController *)self _configureKey:@"DictationReplacementCommandTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationDeletionCommandTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationInsertionCommandTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationEmojiCommandTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationSelectionCommandTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationStopCommandTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationTipLastShownDate" domain:@"com.apple.keyboard.preferences" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"DictationTipContextual" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationCommandTipsEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"DictationOneTipPerDayEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"DictationTipsDisplayCountLimit" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC500];
  [(TIPreferencesController *)self _configureKey:@"DictationReplacementCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationDeletionCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationInsertionCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationEmojiCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationSelectionCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationStopCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationModelessInputTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationSendMessageCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationClearAllCommandTipShownCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"DictationWordwiseBackspaceEnabled" domain:@"com.apple.keyboard.preferences" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"ModelessInputTipShown" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationDisableInlinePopoverUI" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"DictationDisableTapAnywhereToDisable" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"keyboard-audio" domain:@"com.apple.preferences.sounds" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardTransformerLMForAutocorrection" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DC518];
  [(TIPreferencesController *)self _configureKey:@"KeyboardInlineCompletionsOpenEnded" domain:@"com.apple.keyboard" defaultValue:v4];
  [(TIPreferencesController *)self _configureKey:@"KeyboardInlineCompletionsPrefixLength" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DC518];
  [(TIPreferencesController *)self _configureKey:@"KeyboardInlineCompletionsProbThreshold" domain:@"com.apple.keyboard" defaultValue:&unk_1EF7DC530];
  [(TIPreferencesController *)self _configureKey:@"DidShowInlineCompletionEducationTip" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"InlineCompletionAcceptedBySpaceEventCount" domain:@"com.apple.keyboard.preferences" defaultValue:&unk_1EF7DC488];
  [(TIPreferencesController *)self _configureKey:@"KeyboardFlushDynamicCachePeriod" domain:@"com.apple.keyboard" defaultValue:0];
  [(TIPreferencesController *)self _configureKey:@"MultilingualKeyboardTip" domain:@"com.apple.keyboard.preferences" defaultValue:v8];
  [(TIPreferencesController *)self _configureKey:@"MultilingualSettingTip" domain:@"com.apple.keyboard.preferences" defaultValue:v8];

  [(TIPreferencesController *)self _configureKey:@"ActiveMultilingualKeyboardDictationMappings" domain:@"com.apple.keyboard.preferences" defaultValue:0];
}

- (TIPreferencesController)init
{
  v7.receiver = self;
  v7.super_class = TIPreferencesController;
  v2 = [(TIPreferencesController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(TIPreferencesController *)v2 _configureDomains];
    [(TIPreferencesController *)v3 _configurePreferences];
    [(TIPreferencesController *)v3 setIsInternalInstall:MGGetBoolAnswer()];
    if (_tiShouldSkipMCObservation_onceToken != -1)
    {
      dispatch_once(&_tiShouldSkipMCObservation_onceToken, &__block_literal_global_838);
    }

    if ((_tiShouldSkipMCObservation__result & 1) == 0)
    {
      v4 = [TIActionWhenIdle actionWhenIdleWithTarget:v3 selector:sel_idleInit object:0];
      [(TIPreferencesController *)v3 setActionWhenIdle:v4];
    }

    v5 = v3;
  }

  return v3;
}

- (void)_configureDomains
{
  [(TIPreferencesController *)self _configureDomain:@".GlobalPreferences" notification:@"AppleKeyboardsPreferencesChangedNotification"];
  [(TIPreferencesController *)self _configureDomain:@"com.apple.keyboard.preferences" notification:@"AppleKeyboardsSettingsChangedNotification"];
  [(TIPreferencesController *)self _configureDomain:@"com.apple.keyboard" notification:@"AppleKeyboardsInternalSettingsChangedNotification"];
  [(TIPreferencesController *)self _configureDomain:@"com.apple.InputModePreferences" notification:@"AppleKeyboardsInputModeChangedNotification"];
  [(TIPreferencesController *)self _configureDomain:@"com.apple.keyboard.ContinuousPath" notification:@"AppleKeyboardsContinuousPathSettingsChangedNotification"];
  [(TIPreferencesController *)self _configureDomain:@"com.apple.preferences.sounds" notification:@"com.apple.preferences.sounds.keyboard-audio.changed"];

  [(TIPreferencesController *)self _configureDomain:@"com.apple.assistant.support" notification:@"kAFPreferencesDidChangeDarwinNotification"];
}

uint64_t __54__TIPreferencesController_sharedPreferencesController__block_invoke()
{
  sharedPreferencesController_sharedController = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)idleInit
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr;
  v12 = getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr;
  if (!getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr)
  {
    v5 = ManagedConfigurationLibrary();
    v10[3] = dlsym(v5, "MCKeyboardSettingsChangedNotification");
    getMCKeyboardSettingsChangedNotificationSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  [defaultCenter addObserver:self selector:sel_managedKeyboardSettingDidChange_ name:*v4 object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v7 = getMCProfileListChangedNotificationSymbolLoc_ptr;
  v12 = getMCProfileListChangedNotificationSymbolLoc_ptr;
  if (!getMCProfileListChangedNotificationSymbolLoc_ptr)
  {
    v8 = ManagedConfigurationLibrary();
    v10[3] = dlsym(v8, "MCProfileListChangedNotification");
    getMCProfileListChangedNotificationSymbolLoc_ptr = v10[3];
    v7 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v7)
  {
    [defaultCenter2 addObserver:self selector:sel_profileSettingDidChange_ name:*v7 object:0];
  }

  else
  {
LABEL_8:
    dlerror();
    abort_report_np();
    ManagedConfigurationLibrary();
  }
}

- (void)registerRemoteDeviceWithIDSIdentifier:(id)identifier user:(id)user
{
  userCopy = user;
  [(TIPreferencesController *)self setValue:identifier forPreferenceKey:@"RemoteDeviceIDSIdentifier"];
  [(TIPreferencesController *)self setValue:userCopy forPreferenceKey:@"PersonaUniqueIdentifierSelf"];
}

- (void)resetDictationTipsToDefaultSettings
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [(TIPreferencesController *)self setValue:distantPast forPreferenceKey:@"DictationTipLastShownDate"];

  [(TIPreferencesController *)self setValue:&unk_1EF7DC500 forPreferenceKey:@"DictationTipsDisplayCountLimit"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationReplacementCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationReplacementCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationInsertionCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationEmojiCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationSelectionCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationStopCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationModelessInputTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationDeletionCommandTipShownCount"];
  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationSendMessageCommandTipShownCount"];

  [(TIPreferencesController *)self setValue:&unk_1EF7DC488 forPreferenceKey:@"DictationClearAllCommandTipShownCount"];
}

- (void)updateDictationTipDisplayCount:(id)count dictationTipKey:(id)key
{
  countCopy = count;
  keyCopy = key;
  if (([keyCopy isEqualToString:@"DictationReplacementCommandTipShownCount"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationDeletionCommandTipShownCount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationInsertionCommandTipShownCount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationEmojiCommandTipShownCount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationSelectionCommandTipShownCount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationStopCommandTipShownCount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationModelessInputTipShownCount") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"DictationSendMessageCommandTipShownCount") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"DictationClearAllCommandTipShownCount"))
  {
    [(TIPreferencesController *)self setValue:countCopy forPreferenceKey:keyCopy];
  }
}

- (void)updateEnableProKeyboard:(BOOL)keyboard
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:keyboard];
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"KeyboardUseProLayout"];
}

- (void)updateVisceral:(id)visceral
{
  visceralCopy = visceral;
  if (_os_feature_enabled_impl())
  {
    [(TIPreferencesController *)self setValue:visceralCopy forPreferenceKey:@"KeyboardVisceral"];
  }
}

- (void)updateKeyboardHandBias:(id)bias
{
  biasCopy = bias;
  if (([biasCopy isEqualToString:@"None"] & 1) != 0 || (objc_msgSend(biasCopy, "isEqualToString:", @"Left") & 1) != 0 || objc_msgSend(biasCopy, "isEqualToString:", @"Right"))
  {
    [(TIPreferencesController *)self setValue:biasCopy forPreferenceKey:@"KeyboardBias"];
  }
}

- (void)updateCompactAssistantBarPersistentLocation:(unint64_t)location
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"CompactAssistantBarPersistentLocation"];
}

- (void)updateKeyboardIsFloating:(BOOL)floating
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:floating];
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"KeyboardIsFloating"];
}

- (void)updateKeyboardIsSplit:(BOOL)split locked:(BOOL)locked
{
  lockedCopy = locked;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:split];
  [(TIPreferencesController *)self setValue:v6 forPreferenceKey:@"UIKeyboardPersistentSplitProgress"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:lockedCopy];
  [(TIPreferencesController *)self setValue:v7 forPreferenceKey:@"UIKeyboardPersistentSplitLock"];
}

- (void)setFloatingKeyboardDockedEdge:(unint64_t)edge
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"KeyboardFloatingDockedEdge"];
}

- (unint64_t)floatingKeyboardDockedEdge
{
  v2 = [(TIPreferencesController *)self valueForPreferenceKey:@"KeyboardFloatingDockedEdge"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFloatingKeyboardPosition:(CGPoint)position
{
  y = position.y;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:position.x];
  [(TIPreferencesController *)self setValue:v5 forPreferenceKey:@"KeyboardFloatingPersistentHorizontalOffset"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  [(TIPreferencesController *)self setValue:v6 forPreferenceKey:@"KeyboardFloatingPersistentVerticalOffset"];

  [(TIPreferencesController *)self synchronizePreferences];
}

- (CGPoint)floatingKeyboardPosition
{
  v3 = [(TIPreferencesController *)self valueForPreferenceKey:@"KeyboardFloatingPersistentHorizontalOffset"];
  [v3 doubleValue];
  v5 = v4;
  v6 = [(TIPreferencesController *)self valueForPreferenceKey:@"KeyboardFloatingPersistentVerticalOffset"];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setKeyboardPosition:(CGPoint)position
{
  y = position.y;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:position.x];
  [(TIPreferencesController *)self setValue:v5 forPreferenceKey:@"UIKeyboardPersistentHorizontalOffset"];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:y];
  [(TIPreferencesController *)self setValue:v6 forPreferenceKey:@"UIKeyboardPersistentVerticalOffset"];
}

- (CGPoint)keyboardPosition
{
  v3 = [(TIPreferencesController *)self valueForPreferenceKey:@"UIKeyboardPersistentHorizontalOffset"];
  [v3 doubleValue];
  v5 = v4;
  v6 = [(TIPreferencesController *)self valueForPreferenceKey:@"UIKeyboardPersistentVerticalOffset"];
  [v6 doubleValue];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)didUnseeHardwareKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v4 = [(TIPreferencesController *)self valueForPreferenceKey:@"KeyboardHardwareKeyboardsSeen"];
  if ([v4 containsObject:keyboardCopy])
  {
    v5 = [v4 mutableCopy];
    [v5 removeObject:keyboardCopy];
    [(TIPreferencesController *)self setValue:v5 forPreferenceKey:@"KeyboardHardwareKeyboardsSeen"];
  }
}

- (void)didSeeHardwareKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v4 = [(TIPreferencesController *)self valueForPreferenceKey:@"KeyboardHardwareKeyboardsSeen"];
  if (([v4 containsObject:keyboardCopy] & 1) == 0)
  {
    if (v4)
    {
      v5 = [v4 arrayByAddingObject:keyboardCopy];

      v4 = v5;
    }

    else
    {
      v4 = [MEMORY[0x1E695DEC8] arrayWithObject:keyboardCopy];
    }

    [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"KeyboardHardwareKeyboardsSeen"];
  }
}

- (void)setKeyboardShownByTouch:(BOOL)touch
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:touch];
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"SoftwareKeyboardShownByTouch"];
}

- (void)setAutomaticMinimizationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [(TIPreferencesController *)self BOOLForPreferenceKey:@"SuppressAutomaticMinimization"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy & ~v5];
  [(TIPreferencesController *)self setValue:v6 forPreferenceKey:@"AutomaticMinimizationEnabled"];
}

- (void)setautocorrectionEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"KeyboardAutocorrection"];
}

- (void)setPredictionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  [(TIPreferencesController *)self setValue:v5 forPreferenceKey:@"KeyboardPrediction"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  [(TIPreferencesController *)self setValue:v6 forPreferenceKey:@"KeyboardShowPredictionBar"];
}

- (void)setInputModeSelectionSequence:(id)sequence
{
  v15 = *MEMORY[0x1E69E9840];
  sequenceCopy = sequence;
  if ([sequenceCopy count] <= 3)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = sequenceCopy;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [(TIPreferencesController *)self setValue:v5 forPreferenceKey:@"KeyboardsCurrentAndNext", v10];
  }

LABEL_12:
}

- (void)updateLastUsedDictionaryLanguageInMultilingualKeyboard:(id)keyboard activeDictationlanguage:(id)dictationlanguage
{
  v16 = *MEMORY[0x1E69E9840];
  keyboardCopy = keyboard;
  dictationlanguageCopy = dictationlanguage;
  if (dictationlanguageCopy && [keyboardCopy count])
  {
    v8 = [keyboardCopy sortedArrayUsingSelector:sel_compare_];
    v9 = [v8 componentsJoinedByString:{@", "}];
    if ([v9 length])
    {
      v10 = [(TIPreferencesController *)self valueForPreferenceKey:@"ActiveMultilingualKeyboardDictationMappings"];
      v11 = v10;
      if (v10)
      {
        dictionary = [v10 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v13 = dictionary;
      [dictionary setObject:dictationlanguageCopy forKey:v9];
      [(TIPreferencesController *)self setValue:v13 forPreferenceKey:@"ActiveMultilingualKeyboardDictationMappings"];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[TIPreferencesController updateLastUsedDictionaryLanguageInMultilingualKeyboard:activeDictationlanguage:]";
      _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  (Dictation) Serialized key is empty", &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[TIPreferencesController updateLastUsedDictionaryLanguageInMultilingualKeyboard:activeDictationlanguage:]";
    _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  (Dictation) Invalid input: language or multilingualKeyboardLanguages", &v14, 0xCu);
  }
}

- (void)updateLastUsedLayout:(id)layout
{
  v26 = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  v5 = +[TIInputModeController sharedInputModeController];
  enabledInputModeIdentifiers = [v5 enabledInputModeIdentifiers];

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(enabledInputModeIdentifiers, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = enabledInputModeIdentifiers;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = TIInputModeGetNormalizedIdentifier(*(*(&v21 + 1) + 8 * v12));
        [v7 addObject:{v13, v21}];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v14 = [(TIPreferencesController *)self valueForPreferenceKey:@"KeyboardLayoutLastUsedForKeyboard"];
  v15 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  v16 = [v15 count];
  v17 = [v7 count];

  if (v16 == v17)
  {
    if (v14)
    {
      [(TIPreferencesController *)self setValue:0 forPreferenceKey:@"KeyboardLayoutLastUsedForKeyboard"];
    }
  }

  else
  {
    if (v14)
    {
      v18 = [v14 mutableCopy];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    }

    v19 = v18;
    v20 = TIInputModeGetNormalizedIdentifier(layoutCopy);
    [v19 setObject:layoutCopy forKey:v20];

    [(TIPreferencesController *)self setValue:v19 forPreferenceKey:@"KeyboardLayoutLastUsedForKeyboard"];
  }
}

- (void)updateLastUsedInputMode:(id)mode
{
  [(TIPreferencesController *)self setValue:mode forPreferenceKey:@"KeyboardLastUsed"];
  v4 = objc_opt_new();
  [(TIPreferencesController *)self setValue:v4 forPreferenceKey:@"KeyboardInputModeUpdateDate"];
}

- (void)didTriggerOneTimeAction:(id)action
{
  actionCopy = action;
  if ([(TIPreferencesController *)self _isOneTimeAction:?])
  {
    [(TIPreferencesController *)self setValue:MEMORY[0x1E695E118] forPreferenceKey:actionCopy];
  }
}

- (BOOL)oneTimeActionCompleted:(id)completed
{
  completedCopy = completed;
  if ([(TIPreferencesController *)self _isOneTimeAction:completedCopy])
  {
    v5 = [(TIPreferencesController *)self BOOLForPreferenceKey:completedCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isOneTimeAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"UIKeyboardDidShowInternationalInfoIntroduction"] & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DidShowGestureKeyboardIntroduction") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DidShowContinuousPathIntroduction") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"KeyboardDidShowProductivityTutorial") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"KeyboardDidShowGenmojiTip") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"HardwareKeyboardLastSeen") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DictationReplacementCommandTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DictationDeletionCommandTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DictationInsertionCommandTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DictationEmojiCommandTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DictationSelectionCommandTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DictationStopCommandTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"DidShowInlineCompletionEducationTip") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"ModelessInputTipShown") & 1) != 0 || (objc_msgSend(actionCopy, "isEqualToString:", @"MultilingualKeyboardTip"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [actionCopy isEqualToString:@"MultilingualSettingTip"];
  }

  return v4;
}

- (BOOL)allEnabledInputModesAreValid
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(TIPreferencesController *)self BOOLForPreferenceKey:@"AppleKeyboardsExpanded"])
  {
    return 1;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(TIPreferencesController *)self valueForPreferenceKey:@"AppleKeyboards", 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = +[TIInputModeController sharedInputModeController];
        LODWORD(v8) = [v9 identifierIsValidSystemInputMode:v8];

        if (!v8)
        {
          v10 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_13:

  return v10;
}

- (void)setInputModes:(id)modes
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFB8] orderedSetWithArray:modes];
  array = [v4 array];
  v6 = [(TIPreferencesController *)self valueForPreferenceKey:@"AppleKeyboards"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[TIPreferencesController setInputModes:]";
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  updateInputModes: oldInputModes = %@", &v7, 0x16u);
  }

  [objc_opt_class() registerPreferredLanguagesForInputModes:array replacingInputModes:v6];
  [(TIPreferencesController *)self setValue:array forPreferenceKey:@"AppleKeyboards"];
}

- (void)updateInputModes:(id)modes
{
  v15 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    if (modesCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    selfCopy2 = self;
    v9 = 0;
LABEL_9:
    [(TIPreferencesController *)selfCopy2 setValue:v9 forPreferenceKey:@"AppleKeyboardsExpanded"];
    goto LABEL_10;
  }

  v11 = 136315394;
  v12 = "[TIPreferencesController updateInputModes:]";
  v13 = 2112;
  v14 = modesCopy;
  _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  updateInputModes: Called with inputModes = %@", &v11, 0x16u);
  if (!modesCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (![(TIPreferencesController *)self BOOLForPreferenceKey:@"AppleKeyboardsExpanded"])
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v7 = TIGetDefaultInputModesForLanguage(localeIdentifier);
    v8 = [v7 count];

    if (!v8)
    {
      [(TIPreferencesController *)self setValue:&unk_1EF7DC548 forPreferenceKey:@"AppleKeyboardsIncludeIntl"];
    }

    v9 = &unk_1EF7DC548;
    selfCopy2 = self;
    goto LABEL_9;
  }

LABEL_10:
  [(TIPreferencesController *)self setInputModes:modesCopy];
}

- (BOOL)isKeyLockedDown:(int)down
{
  v4 = preferenceKeyForEnumKey(down);
  LOBYTE(self) = [(TIPreferencesController *)self isPreferenceKeyLockedDown:v4];

  return self;
}

- (BOOL)isPreferenceKeyLockedDown:(id)down
{
  v3 = managedConfigurationFeatureForPreferenceKey(down);
  if (v3)
  {
    sharedConnection = [getMCProfileConnectionClass() sharedConnection];
    v5 = [sharedConnection isSettingLockedDownByRestrictions:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setValue:(id)value forManagedPreferenceKey:(id)key asyncWithCompletion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  completionCopy = completion;
  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  if ([keyCopy isEqualToString:@"KeyboardAutocorrection"])
  {
    if (!completionCopy)
    {
      [sharedConnection setAutoCorrectionAllowed:{objc_msgSend(valueCopy, "BOOLValue")}];
      goto LABEL_32;
    }

    v10 = objc_opt_respondsToSelector();
    bOOLValue = [valueCopy BOOLValue];
    if (v10)
    {
      [sharedConnection setAutoCorrectionAllowed:bOOLValue completion:completionCopy];
      goto LABEL_32;
    }

    [sharedConnection setAutoCorrectionAllowed:bOOLValue];
  }

  else if ([keyCopy isEqualToString:@"KeyboardPrediction"])
  {
    if (!completionCopy)
    {
      [sharedConnection setPredictiveKeyboardAllowed:{objc_msgSend(valueCopy, "BOOLValue")}];
      goto LABEL_32;
    }

    v12 = objc_opt_respondsToSelector();
    bOOLValue2 = [valueCopy BOOLValue];
    if (v12)
    {
      [sharedConnection setPredictiveKeyboardAllowed:bOOLValue2 completion:completionCopy];
      goto LABEL_32;
    }

    [sharedConnection setPredictiveKeyboardAllowed:bOOLValue2];
  }

  else if ([keyCopy isEqualToString:@"KeyboardCheckSpelling"])
  {
    if (!completionCopy)
    {
      [sharedConnection setSpellCheckAllowed:{objc_msgSend(valueCopy, "BOOLValue")}];
      goto LABEL_32;
    }

    v14 = objc_opt_respondsToSelector();
    bOOLValue3 = [valueCopy BOOLValue];
    if (v14)
    {
      [sharedConnection setSpellCheckAllowed:bOOLValue3 completion:completionCopy];
      goto LABEL_32;
    }

    [sharedConnection setSpellCheckAllowed:bOOLValue3];
  }

  else if ([keyCopy isEqualToString:@"SmartQuotesEnabled"])
  {
    if (!completionCopy)
    {
      [sharedConnection setSmartPunctuationAllowed:{objc_msgSend(valueCopy, "BOOLValue")}];
      goto LABEL_32;
    }

    v16 = objc_opt_respondsToSelector();
    bOOLValue4 = [valueCopy BOOLValue];
    if (v16)
    {
      [sharedConnection setSmartPunctuationAllowed:bOOLValue4 completion:completionCopy];
      goto LABEL_32;
    }

    [sharedConnection setSmartPunctuationAllowed:bOOLValue4];
  }

  else
  {
    if (![keyCopy isEqualToString:@"KeyboardContinuousPathEnabled"])
    {
      goto LABEL_32;
    }

    if (!completionCopy)
    {
      [sharedConnection setContinuousPathKeyboardAllowed:{objc_msgSend(valueCopy, "BOOLValue")}];
      goto LABEL_32;
    }

    v18 = objc_opt_respondsToSelector();
    bOOLValue5 = [valueCopy BOOLValue];
    if (v18)
    {
      [sharedConnection setContinuousPathKeyboardAllowed:bOOLValue5 completion:completionCopy];
      goto LABEL_32;
    }

    [sharedConnection setContinuousPathKeyboardAllowed:bOOLValue5];
  }

  completionCopy[2](completionCopy, 0);
LABEL_32:
}

- (int)MCValueForManagedPreferenceKey:(id)key
{
  keyCopy = key;
  v5 = managedConfigurationFeatureForPreferenceKey(keyCopy);
  if (v5)
  {
    cachedMCRestrictedValue = self->_cachedMCRestrictedValue;
    if (!cachedMCRestrictedValue)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      v8 = self->_cachedMCRestrictedValue;
      self->_cachedMCRestrictedValue = v7;

      cachedMCRestrictedValue = self->_cachedMCRestrictedValue;
    }

    v9 = [(NSCache *)cachedMCRestrictedValue objectForKey:keyCopy];
    v10 = v9;
    if (v9)
    {
      LODWORD(v11) = [v9 intValue];
    }

    else
    {
      sharedConnection = [getMCProfileConnectionClass() sharedConnection];
      v11 = [sharedConnection effectiveBoolValueForSetting:v5];

      v13 = self->_cachedMCRestrictedValue;
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      v15 = [keyCopy copy];
      [(NSCache *)v13 setObject:v14 forKey:v15];
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  return v11;
}

- (void)setValue:(id)value forKey:(int)key
{
  valueCopy = value;
  v7 = preferenceKeyForEnumKey(key);
  [(TIPreferencesController *)self setValue:valueCopy forPreferenceKey:v7];
}

- (void)touchSynchronizePreferencesTimer
{
  if ([(NSTimer *)self->_synchronizePreferencesTimer isValid])
  {
    synchronizePreferencesTimer = self->_synchronizePreferencesTimer;
    mainRunLoop = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.5];
    [(NSTimer *)synchronizePreferencesTimer setFireDate:?];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel_synchronizePreferences selector:0 userInfo:0 repeats:0.5];
    v5 = self->_synchronizePreferencesTimer;
    self->_synchronizePreferencesTimer = v4;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:self->_synchronizePreferencesTimer forMode:*MEMORY[0x1E695D918]];
  }
}

- (void)synchronizePreferences
{
  [(TIPreferencesController *)self clearSynchronizePreferencesTimer];
  configuredDomains = self->_configuredDomains;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__TIPreferencesController_synchronizePreferences__block_invoke;
  v4[3] = &unk_1E6F4D230;
  v4[4] = self;
  [(NSMutableDictionary *)configuredDomains enumerateKeysAndObjectsUsingBlock:v4];
}

void __49__TIPreferencesController_synchronizePreferences__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if ([v9 needsSetSync])
  {
    [v9 setNeedsSetSync:0];
    v4 = [v9 domain];
    CFPreferencesSynchronize(v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

    v5 = [v9 notification];
    if (v5)
    {
      v6 = *(*(a1 + 32) + 41);

      if ((v6 & 1) == 0)
      {
        [v9 setLastSynchronizedTime:CFAbsoluteTimeGetCurrent()];
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v8 = [v9 notification];
        CFNotificationCenterPostNotification(DarwinNotifyCenter, v8, 0, 0, 1u);
      }
    }
  }
}

- (void)synchronizeDomainIfNeedsGet:(id)get
{
  getCopy = get;
  if ([getCopy needsGetSync])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [getCopy setNeedsGetSync:0];
    domain = [getCopy domain];
    CFPreferencesSynchronize(domain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

    configuredPreferences = selfCopy->_configuredPreferences;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__TIPreferencesController_synchronizeDomainIfNeedsGet___block_invoke;
    v8[3] = &unk_1E6F4D3F8;
    v9 = getCopy;
    v10 = selfCopy;
    [(NSMutableDictionary *)configuredPreferences enumerateKeysAndObjectsUsingBlock:v8];

    objc_sync_exit(selfCopy);
  }
}

void __55__TIPreferencesController_synchronizeDomainIfNeedsGet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 domain];
  v7 = [*(a1 + 32) domain];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    [v5 setCurrentValue:0];
  }

  if (isManagedPreferenceKey(v9))
  {
    [*(*(a1 + 40) + 24) removeObjectForKey:v9];
  }
}

- (void)clearSynchronizePreferencesTimer
{
  [(NSTimer *)self->_synchronizePreferencesTimer invalidate];
  synchronizePreferencesTimer = self->_synchronizePreferencesTimer;
  self->_synchronizePreferencesTimer = 0;
}

- (BOOL)BOOLForKey:(int)key
{
  v3 = [(TIPreferencesController *)self valueForKey:*&key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)valueForKey:(int)key
{
  v4 = preferenceKeyForEnumKey(key);
  v5 = [(TIPreferencesController *)self valueForPreferenceKey:v4];

  return v5;
}

- (void)_pushValue:(id)value toPreference:(id)preference domain:(id)domain
{
  if (preference && domain)
  {
    domainCopy = domain;
    valueCopy = value;
    v10 = [preference key];
    domain = [domainCopy domain];
    CFPreferencesSetAppValue(v10, valueCopy, domain);

    [domainCopy setNeedsSetSync:1];

    [(TIPreferencesController *)self touchSynchronizePreferencesTimer];
  }
}

- (void)setValue:(id)value forPreferenceKey:(id)key asyncIfManaged:(BOOL)managed
{
  managedCopy = managed;
  valueCopy = value;
  keyCopy = key;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __68__TIPreferencesController_setValue_forPreferenceKey_asyncIfManaged___block_invoke;
  v19[3] = &unk_1E6F4D3A8;
  v19[4] = self;
  v10 = keyCopy;
  v20 = v10;
  v11 = valueCopy;
  v21 = v11;
  v12 = MEMORY[0x1866068F0](v19);
  v13 = isManagedPreferenceKey(v10);
  if (!v11 || !v13)
  {
    goto LABEL_6;
  }

  if (!managedCopy)
  {
    [(TIPreferencesController *)self setValue:v11 forManagedPreferenceKey:v10];
LABEL_6:
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v12[2](v12);
    objc_sync_exit(selfCopy);

    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__TIPreferencesController_setValue_forPreferenceKey_asyncIfManaged___block_invoke_2;
  v15[3] = &unk_1E6F4D3D0;
  objc_copyWeak(&v17, &location);
  v16 = v12;
  [(TIPreferencesController *)self setValue:v11 forManagedPreferenceKey:v10 asyncWithCompletion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
LABEL_7:
}

void __68__TIPreferencesController_setValue_forPreferenceKey_asyncIfManaged___block_invoke(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) valueForPreferenceKey:*(a1 + 40)];
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = [v2 currentValue];
      v6 = [v4 isEqual:v5];

      if ((v6 & 1) == 0)
      {
        v7 = *(*(a1 + 32) + 8);
        v8 = [v2 domain];
        v9 = [v7 objectForKey:v8];

        v10 = [v2 currentValue];
        [v2 setCurrentValue:*(a1 + 48)];
        [*(a1 + 32) _pushValue:*(a1 + 48) toPreference:v2 domain:v9];
        if ([v2 isCloudSetting])
        {
          v44 = 0;
          v45 = &v44;
          v46 = 0x2050000000;
          v11 = getCloudSettingsManagerClass_softClass;
          v47 = getCloudSettingsManagerClass_softClass;
          if (!getCloudSettingsManagerClass_softClass)
          {
            v39 = MEMORY[0x1E69E9820];
            v40 = 3221225472;
            v41 = __getCloudSettingsManagerClass_block_invoke;
            v42 = &unk_1E6F4D960;
            v43 = &v44;
            __getCloudSettingsManagerClass_block_invoke(&v39);
            v11 = v45[3];
          }

          v12 = v11;
          _Block_object_dispose(&v44, 8);
          v13 = [v11 sharedCloudSettingsManager];
          v14 = [v2 key];
          v49[0] = v14;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
          [v13 writeToCloudSettings:v15 forStore:@"com.apple.cloudsettings.keyboard"];
        }

        if ([v2 isWatchSync])
        {
          v44 = 0;
          v45 = &v44;
          v46 = 0x2050000000;
          v16 = getNPSManagerClass_softClass;
          v47 = getNPSManagerClass_softClass;
          if (!getNPSManagerClass_softClass)
          {
            v39 = MEMORY[0x1E69E9820];
            v40 = 3221225472;
            v41 = __getNPSManagerClass_block_invoke;
            v42 = &unk_1E6F4D960;
            v43 = &v44;
            __getNPSManagerClass_block_invoke(&v39);
            v16 = v45[3];
          }

          v17 = v16;
          _Block_object_dispose(&v44, 8);
          v18 = objc_opt_new();
          v19 = [v2 domain];
          v20 = MEMORY[0x1E695DFD8];
          v48 = *(a1 + 40);
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
          v22 = [v20 setWithArray:v21];
          [v18 synchronizeUserDefaultsDomain:v19 keys:v22];
        }

        if ([v2 isAnalyzed])
        {
          v23 = *(*(a1 + 32) + 16);
          v24 = [v2 changedAtKey];
          v25 = [v23 objectForKey:v24];

          if (v25)
          {
            v26 = *(a1 + 32);
            v27 = [MEMORY[0x1E695DF00] now];
            [v26 _pushValue:v27 toPreference:v25 domain:v9];
          }

          v28 = *(*(a1 + 32) + 16);
          v29 = [v2 buildAtChangeKey];
          v30 = [v28 objectForKey:v29];

          if (v30)
          {
            v31 = *(a1 + 32);
            v32 = MGGetStringAnswer();
            [v31 _pushValue:v32 toPreference:v30 domain:v9];
          }

          v33 = *(*(a1 + 32) + 16);
          v34 = [v2 previousValueKey];
          v35 = [v33 objectForKey:v34];

          if (v35)
          {
            [*(a1 + 32) _pushValue:v10 toPreference:v35 domain:v9];
          }

          v36 = *(*(a1 + 32) + 16);
          v37 = [v2 analyzedAtKey];
          v38 = [v36 objectForKey:v37];

          if (v38)
          {
            [*(a1 + 32) _pushValue:0 toPreference:v38 domain:v9];
          }
        }
      }
    }
  }
}

void __68__TIPreferencesController_setValue_forPreferenceKey_asyncIfManaged___block_invoke_2(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 40));
  objc_sync_enter(obj);
  (*(*(a1 + 32) + 16))();
  objc_sync_exit(obj);
}

- (BOOL)BOOLForPreferenceKey:(id)key
{
  v3 = [(TIPreferencesController *)self valueForPreferenceKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)valueForPreferenceKey:(id)key
{
  v30[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (isManagedPreferenceKey(keyCopy) && [(TIPreferencesController *)self MCValueForManagedPreferenceKey:keyCopy]== 2)
  {
    v5 = MEMORY[0x1E695E110];
    goto LABEL_19;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_configuredPreferences objectForKey:keyCopy];
  v8 = v7;
  if (!v7)
  {
    v5 = 0;
    goto LABEL_18;
  }

  configuredDomains = selfCopy->_configuredDomains;
  domain = [v7 domain];
  v11 = [(NSMutableDictionary *)configuredDomains objectForKey:domain];

  [(TIPreferencesController *)selfCopy synchronizeDomainIfNeedsGet:v11];
  v30[0] = @"TypologyEnabledByProfile";
  v30[1] = @"CustomerTypologyEnabledByDiagnosticExtension";
  v30[2] = @"KeyboardTransformerLMForAutocorrection";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
  domain2 = [v8 domain];
  if ([domain2 isEqualToString:@"com.apple.keyboard"] && !-[TIPreferencesController isInternalInstall](selfCopy, "isInternalInstall"))
  {
    v28 = [v8 key];
    v29 = [v12 containsObject:v28];

    if ((v29 & 1) == 0)
    {
      defaultValue = [v8 defaultValue];
      goto LABEL_15;
    }
  }

  else
  {
  }

  currentValue = [v8 currentValue];

  if (!currentValue)
  {
    v15 = [v8 key];
    domain3 = [v11 domain];
    v17 = CFPreferencesCopyAppValue(v15, domain3);

    [v8 setCurrentValue:v17];
  }

  currentValue2 = [v8 currentValue];
  if (currentValue2)
  {
  }

  else
  {
    fallbackKey = [v8 fallbackKey];

    if (fallbackKey)
    {
      configuredPreferences = selfCopy->_configuredPreferences;
      fallbackKey2 = [v8 fallbackKey];
      v26 = [(NSMutableDictionary *)configuredPreferences objectForKey:fallbackKey2];

      if (v26)
      {
        v27 = [v26 key];
        v5 = [(TIPreferencesController *)selfCopy valueForPreferenceKey:v27];

        goto LABEL_16;
      }
    }
  }

  currentValue3 = [v8 currentValue];

  if (!currentValue3)
  {
    defaultValue2 = [v8 defaultValue];
    [v8 setCurrentValue:defaultValue2];
  }

  defaultValue = [v8 currentValue];
LABEL_15:
  v5 = defaultValue;
LABEL_16:

LABEL_18:
  objc_sync_exit(selfCopy);

LABEL_19:

  return v5;
}

- (id)_configuredPreferencesForDomain:(id)domain
{
  v21 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)self->_configuredPreferences allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        domain = [v11 domain];
        v13 = [domain isEqual:domainCopy];

        if (v13)
        {
          v14 = [v11 key];
          [array addObject:v14];
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)_configureKey:(id)key domain:(id)domain defaultValue:(id)value fallbackKey:(id)fallbackKey isAnalyzed:(BOOL)analyzed isCloudSetting:(BOOL)setting isWatchSync:(BOOL)sync
{
  settingCopy = setting;
  analyzedCopy = analyzed;
  keyCopy = key;
  domainCopy = domain;
  valueCopy = value;
  fallbackKeyCopy = fallbackKey;
  v18 = [(NSMutableDictionary *)self->_configuredPreferences objectForKey:keyCopy];
  if (v18)
  {
    v19 = v18;
    defaultValue = [v18 defaultValue];
    if (defaultValue)
    {
      defaultValue2 = [v19 defaultValue];
      [defaultValue2 isEqual:valueCopy];
    }
  }

  else
  {
    if (!self->_configuredPreferences)
    {
      v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1000];
      configuredPreferences = self->_configuredPreferences;
      self->_configuredPreferences = v22;
    }

    v19 = [_TIPreference preferenceWithKey:keyCopy domain:domainCopy defaultValue:valueCopy fallbackKey:fallbackKeyCopy isAnalyzed:analyzedCopy];
    [v19 setIsCloudSetting:settingCopy];
    [v19 setIsWatchSync:sync];
    [(NSMutableDictionary *)self->_configuredPreferences setObject:v19 forKey:keyCopy];
    if (analyzedCopy)
    {
      changedAtKey = [v19 changedAtKey];
      [(TIPreferencesController *)self _configureKey:changedAtKey domain:domainCopy defaultValue:0 fallbackKey:0 isAnalyzed:0];

      analyzedAtKey = [v19 analyzedAtKey];
      [(TIPreferencesController *)self _configureKey:analyzedAtKey domain:domainCopy defaultValue:0 fallbackKey:0 isAnalyzed:0];

      previousValueKey = [v19 previousValueKey];
      [(TIPreferencesController *)self _configureKey:previousValueKey domain:domainCopy defaultValue:0 fallbackKey:0 isAnalyzed:0];

      buildAtChangeKey = [v19 buildAtChangeKey];
      [(TIPreferencesController *)self _configureKey:buildAtChangeKey domain:domainCopy defaultValue:0 fallbackKey:0 isAnalyzed:0];

      approxDateOfBuildInstall = [v19 approxDateOfBuildInstall];
      [(TIPreferencesController *)self _configureKey:approxDateOfBuildInstall domain:domainCopy defaultValue:0 fallbackKey:0 isAnalyzed:0];

      buildAtLastAnalysis = [v19 buildAtLastAnalysis];
      [(TIPreferencesController *)self _configureKey:buildAtLastAnalysis domain:domainCopy defaultValue:0 fallbackKey:0 isAnalyzed:0];
    }

    [(TIPreferencesController *)self _configureDomain:domainCopy notification:0];
  }
}

- (void)_configureDomain:(id)domain notification:(id)notification
{
  domainCopy = domain;
  notificationCopy = notification;
  v7 = [(NSMutableDictionary *)self->_configuredDomains objectForKey:domainCopy];
  if (v7)
  {
    v8 = v7;
    notification = [v7 notification];

    if (notificationCopy && !notification)
    {
      [v8 setNotification:notificationCopy];
LABEL_8:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, self, NotificationCallback, notificationCopy, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  else
  {
    if (!self->_configuredDomains)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
      configuredDomains = self->_configuredDomains;
      self->_configuredDomains = v10;
    }

    v8 = [_TIPreferenceDomain domainWithName:domainCopy notification:notificationCopy];
    [(NSMutableDictionary *)self->_configuredDomains setObject:v8 forKey:domainCopy];
    if (notificationCopy)
    {
      goto LABEL_8;
    }
  }
}

- (void)dealloc
{
  actionWhenIdle = [(TIPreferencesController *)self actionWhenIdle];
  [actionWhenIdle invalidate];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  configuredDomains = self->_configuredDomains;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__TIPreferencesController_dealloc__block_invoke;
  v7[3] = &unk_1E6F4D230;
  v7[4] = self;
  [(NSMutableDictionary *)configuredDomains enumerateKeysAndObjectsUsingBlock:v7];
  v6.receiver = self;
  v6.super_class = TIPreferencesController;
  [(TIPreferencesController *)&v6 dealloc];
}

void __34__TIPreferencesController_dealloc__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = *(a1 + 32);
  name = [v4 notification];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v6, name, 0);
}

- (void)profileSettingDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__TIPreferencesController_profileSettingDidChange___block_invoke;
  v3[3] = &unk_1E6F4D860;
  v3[4] = self;
  TIDispatchAsync(MEMORY[0x1E69E96A0], v3);
}

uint64_t __51__TIPreferencesController_profileSettingDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__TIPreferencesController_profileSettingDidChange___block_invoke_2;
  v4[3] = &unk_1E6F4D230;
  v4[4] = v1;
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)managedKeyboardSettingDidChange:(id)change
{
  [(NSCache *)self->_cachedMCRestrictedValue removeAllObjects];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__TIPreferencesController_managedKeyboardSettingDidChange___block_invoke;
  v4[3] = &unk_1E6F4D860;
  v4[4] = self;
  TIDispatchAsync(MEMORY[0x1E69E96A0], v4);
}

void __59__TIPreferencesController_managedKeyboardSettingDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TIPreferencesControllerChangedNotification" object:*(a1 + 32)];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"AppleKeyboardsContinuousPathSettingsChangedNotification" object:*(a1 + 32)];
}

- (void)preferencesChangedCallback:(id)callback
{
  v21 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    notification = [callbackCopy notification];
    v15 = 136315650;
    v16 = "[TIPreferencesController preferencesChangedCallback:]";
    v17 = 2112;
    v18 = callbackCopy;
    v19 = 2112;
    v20 = notification;
    _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  preferencesChangedCallback: Triggering preferencesChangedCallback for domain %@ with notification %@", &v15, 0x20u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  [callbackCopy lastSynchronizedTime];
  if (Current - v6 > 1.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "[TIPreferencesController preferencesChangedCallback:]";
      v17 = 2112;
      v18 = callbackCopy;
      _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  preferencesChangedCallback: preferencesChangedCallback updating sync signal for domain %@", &v15, 0x16u);
    }

    domain = [callbackCopy domain];
    v8 = [domain isEqualToString:@".GlobalPreferences"];

    if (v8)
    {
      [(NSMutableDictionary *)self->_configuredDomains enumerateKeysAndObjectsUsingBlock:&__block_literal_global_9659];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v15 = 136315394;
        v16 = "[TIPreferencesController preferencesChangedCallback:]";
        v17 = 2112;
        v18 = callbackCopy;
        _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  preferencesChangedCallback: Marking domain %@ as needs to be synced.", &v15, 0x16u);
      }

      [callbackCopy setNeedsGetSync:1];
    }

    if ([(TIPreferencesController *)self ignoreNextSyncNotification])
    {
      [(TIPreferencesController *)self setIgnoreNextSyncNotification:0];
    }

    else
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"TIPreferencesControllerChangedNotification" object:self];
    }
  }

  domain2 = [callbackCopy domain];
  v11 = [domain2 isEqualToString:@"com.apple.keyboard"];

  if (v11)
  {
    [(TIPreferencesController *)self setIsInternalInstall:MGGetBoolAnswer()];
  }

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  notification2 = [callbackCopy notification];
  [defaultCenter2 postNotificationName:notification2 object:0];
}

void __54__TIPreferencesController_preferencesChangedCallback___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[TIPreferencesController preferencesChangedCallback:]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_debug_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s  preferencesChangedCallback: Marking domain %@ as needs to be synced.", &v4, 0x16u);
  }

  [v3 setNeedsGetSync:1];
}

+ (void)registerPreferredLanguagesForInputModes:(id)modes replacingInputModes:(id)inputModes
{
  v57 = *MEMORY[0x1E69E9840];
  modesCopy = modes;
  inputModesCopy = inputModes;
  v50[0] = 0;
  if (!IntlPreferencesLibraryCore_frameworkLibrary)
  {
    v50[1] = MEMORY[0x1E69E9820];
    v50[2] = 3221225472;
    v50[3] = __IntlPreferencesLibraryCore_block_invoke;
    v50[4] = &__block_descriptor_40_e5_v8__0l;
    v50[5] = v50;
    v55 = xmmword_1E6F4D540;
    v56 = 0;
    IntlPreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
    v7 = v50[0];
    if (IntlPreferencesLibraryCore_frameworkLibrary)
    {
      if (!v50[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v33 = v50[0];
      v7 = abort_report_np();
    }

    free(v7);
  }

LABEL_4:
  v8 = [MEMORY[0x1E695DFA8] set];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = inputModesCopy;
  v10 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = TIInputModeGetLanguageWithRegion(*(*(&v46 + 1) + 8 * i));
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v11);
  }

  v15 = [MEMORY[0x1E695DFA8] set];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = modesCopy;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v43 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = TIInputModeGetLanguageWithRegion(*(*(&v42 + 1) + 8 * j));
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v18);
  }

  v22 = [v15 mutableCopy];
  [v22 intersectSet:v8];
  [v15 minusSet:v22];
  [v8 minusSet:v22];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v15;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [MEMORY[0x1E695DF58] registerPreferredLanguageForAddedKeyboardLanguage:*(*(&v38 + 1) + 8 * k)];
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v25);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v28 = v8;
  v29 = [v28 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v35;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [MEMORY[0x1E695DF58] unregisterPreferredLanguageForKeyboardLanguage:*(*(&v34 + 1) + 8 * m)];
      }

      v30 = [v28 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v30);
  }
}

@end