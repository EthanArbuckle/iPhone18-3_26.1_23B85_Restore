@interface CACPreferences
+ (id)_builtinCommandsCatalogURL;
+ (id)_suffixedURLsForURL:(id)a3;
+ (id)sharedPreferences;
- (BOOL)additionalLoggingForCommands;
- (BOOL)allowLetterKeysAsTapCommands;
- (BOOL)commandAndControlIsEnabled;
- (BOOL)didShowOnboarding;
- (BOOL)donationTipKitSeen;
- (BOOL)forceAllCommandsToBeActive;
- (BOOL)gridOverlayCustomColumnsEnabled;
- (BOOL)gridOverlayCustomRowsEnabled;
- (BOOL)gridOverlayMaxDensityEnabled;
- (BOOL)gridOverlayPressOnFirstLevelEnabled;
- (BOOL)gridOverlayShowsNumbersInTopLeft;
- (BOOL)hidePreferencesForCommandSetIdentifier:(id)a3;
- (BOOL)isCommandIdentifier:(id)a3 availableForLocaleIdentifier:(id)a4;
- (BOOL)isConfirmationRequiredForCommandIdentifier:(id)a3;
- (BOOL)isEnabledForCommandIdentifier:(id)a3;
- (BOOL)overlayFadingEnabled;
- (BOOL)phoneticVocabularyShowDebugUI;
- (BOOL)phoneticVocabularyShowUserFacingIPA;
- (BOOL)phoneticVocabularyShowUserFacingIPAToggle;
- (BOOL)phoneticVocabularySkipPickingPronunciation;
- (BOOL)playSoundUponRecognition;
- (BOOL)shouldDisableDeviceIdleTimer;
- (BOOL)showTextResponseUponRecognition;
- (BOOL)sleepOnAttentionLost;
- (BOOL)wakeOnAttentionGained;
- (CACPreferences)init;
- (NSArray)userSelectableLocaleIdentifiers;
- (NSString)alwaysShowOverlayType;
- (NSString)bestLocaleIdentifier;
- (double)lastCommandDate;
- (double)overlayFadeDelay;
- (float)overlayFadeOpacity;
- (id)_allPropertyIdentifiers;
- (id)_commandIdentifiersForCommandSetIdentifier:(id)a3 localeIdentifier:(id)a4 enabledOnly:(BOOL)a5;
- (id)_mutablePropertiesForIdentifier:(id)a3 create:(BOOL)a4;
- (id)_propertiesForIdentifier:(id)a3;
- (id)allCustomCommandProperties;
- (id)attentionAwareAction;
- (id)builtInCommandsStringsTableForLocaleIdentifier:(id)a3;
- (id)builtInCommandsTable;
- (id)commandCounts;
- (id)displayNameForCommandSetIdentifier:(id)a3;
- (id)divertedCommandsLogPath;
- (id)enabledCommandIdentifiersForCommandSetIdentifier:(id)a3;
- (id)externalContextOverrideFilePath;
- (id)propertiesForCommandIdentifier:(id)a3;
- (id)propertiesForCommandIdentifier:(id)a3 localeIdentifier:(id)a4;
- (id)rawCustomCommandsPreferencesDictionary;
- (id)recentCommandEntries;
- (id)setOfApplicationIdentifiersUsedByCustomCommands;
- (id)targetApplicationCounts;
- (id)targetApplicationProperties;
- (id)textDisambiguationStrategy;
- (id)uniqueCustomCommandIdentifier;
- (id)userHintsHistory;
- (id)vocabularyEntries;
- (int64_t)correctionCount;
- (int64_t)gridOverlayCustomColumnsCount;
- (int64_t)gridOverlayCustomRowsCount;
- (int64_t)gridOverlayMaxLevel;
- (int64_t)messageTracesSinceLastReport;
- (int64_t)userHintsFeatures;
- (void)_flushBuiltInCommandsStringsTable;
- (void)_propertyTransactionPostNotification:(id)a3 identifier:(id)a4;
- (void)_propertyTransactionSynchronize;
- (void)_setProperties:(id)a3 forIdentifier:(id)a4 client:(BOOL)a5;
- (void)_writeDefaultCommandSettingsIfNecessary;
- (void)addOrUpdateCommandPropertiesFromImportedTable:(id)a3;
- (void)beginPropertyTransaction;
- (void)dealloc;
- (void)deleteAllCustomCommandEntries;
- (void)endPropertyTransaction;
- (void)removeUserCommandHistory;
- (void)setAdditionalLoggingForCommands:(BOOL)a3;
- (void)setAllowLetterKeysAsTapCommands:(BOOL)a3;
- (void)setAlwaysShowOverlayType:(id)a3;
- (void)setAttentionAwareAction:(id)a3;
- (void)setCommandAndControlEnabled:(BOOL)a3;
- (void)setCommandCounts:(id)a3;
- (void)setCorrectionCount:(int64_t)a3;
- (void)setDidShowOnboarding:(BOOL)a3;
- (void)setDonationTipKitSeen:(BOOL)a3;
- (void)setGridOverlayCustomColumnsCount:(int64_t)a3;
- (void)setGridOverlayCustomColumnsEnabled:(BOOL)a3;
- (void)setGridOverlayCustomRowsCount:(int64_t)a3;
- (void)setGridOverlayCustomRowsEnabled:(BOOL)a3;
- (void)setGridOverlayMaxDensityEnabled:(BOOL)a3;
- (void)setGridOverlayMaxLevel:(int64_t)a3;
- (void)setGridOverlayPressOnFirstLevelEnabled:(BOOL)a3;
- (void)setGridOverlayShowsNumbersInTopLeft:(BOOL)a3;
- (void)setLastCommandDate:(double)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setMessageTracesSinceLastReport:(int64_t)a3;
- (void)setOverlayFadeDelay:(double)a3;
- (void)setOverlayFadeOpacity:(float)a3;
- (void)setOverlayFadingEnabled:(BOOL)a3;
- (void)setPhoneticVocabularyShowDebugUI:(BOOL)a3;
- (void)setPhoneticVocabularyShowUserFacingIPA:(BOOL)a3;
- (void)setPhoneticVocabularyShowUserFacingIPAToggle:(BOOL)a3;
- (void)setPhoneticVocabularySkipPickingPronunciation:(BOOL)a3;
- (void)setPlaySoundUponRecognition:(BOOL)a3;
- (void)setProperties:(id)a3 forCommandIdentifier:(id)a4 client:(BOOL)a5;
- (void)setRecentCommandEntries:(id)a3;
- (void)setShowTextResponseUponRecognition:(BOOL)a3;
- (void)setSleepOnAttentionLost:(BOOL)a3;
- (void)setTargetApplicationCounts:(id)a3;
- (void)setTargetApplicationProperties:(id)a3;
- (void)setTextDisambiguationStrategy:(id)a3;
- (void)setUserHintsFeatures:(int64_t)a3;
- (void)setUserHintsHistory:(id)a3;
- (void)setWakeOnAttentionGained:(BOOL)a3;
@end

@implementation CACPreferences

+ (id)sharedPreferences
{
  if (sharedPreferences_staticManagerInstanceSetup != -1)
  {
    +[CACPreferences sharedPreferences];
  }

  v3 = sCACPreferences;

  return v3;
}

uint64_t __35__CACPreferences_sharedPreferences__block_invoke()
{
  sCACPreferences = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (CACPreferences)init
{
  v7.receiver = self;
  v7.super_class = CACPreferences;
  v2 = [(CACPreferences *)&v7 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _handleNotification, @"CACNotificationLanguageChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = objc_opt_new();
    builtInLocalizedCommandStringsByLocaleIdentifier = v2->_builtInLocalizedCommandStringsByLocaleIdentifier;
    v2->_builtInLocalizedCommandStringsByLocaleIdentifier = v4;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"CACNotificationLanguageChanged", 0);
  v4.receiver = self;
  v4.super_class = CACPreferences;
  [(CACPreferences *)&v4 dealloc];
}

- (void)setAdditionalLoggingForCommands:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACAddDebuggingInfoToRecentCommands", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)additionalLoggingForCommands
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACAddDebuggingInfoToRecentCommands", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (id)attentionAwareAction
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACAttentionAwareAction", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"None";
  }

  v5 = v4;

  return v4;
}

- (void)setAttentionAwareAction:(id)a3
{
  CFPreferencesSetAppValue(@"CACAttentionAwareAction", a3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationAttentionBasedSettingsChanged", 0, 0, 1u);
}

- (BOOL)sleepOnAttentionLost
{
  v2 = [(CACPreferences *)self attentionAwareAction];
  v3 = [v2 isEqualToString:@"SleepAndWake"];

  return v3;
}

- (void)setSleepOnAttentionLost:(BOOL)a3
{
  if (a3)
  {
    v3 = @"SleepAndWake";
  }

  else
  {
    v3 = @"None";
  }

  [(CACPreferences *)self setAttentionAwareAction:v3];
}

- (BOOL)wakeOnAttentionGained
{
  v2 = [(CACPreferences *)self attentionAwareAction];
  v3 = [v2 isEqualToString:@"SleepAndWake"];

  return v3;
}

- (void)setWakeOnAttentionGained:(BOOL)a3
{
  if (a3)
  {
    v3 = @"SleepAndWake";
  }

  else
  {
    v3 = @"None";
  }

  [(CACPreferences *)self setAttentionAwareAction:v3];
}

- (BOOL)didShowOnboarding
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACDidShowOnboarding", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setDidShowOnboarding:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACDidShowOnboarding", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)donationTipKitSeen
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACDonationTipKitSeen", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setDonationTipKitSeen:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACDonationTipKitSeen", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (id)textDisambiguationStrategy
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACTextDisambiguationStrategy", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"ShowNumbers";
  }

  v5 = v4;

  return v4;
}

- (void)setTextDisambiguationStrategy:(id)a3
{
  CFPreferencesSetAppValue(@"CACTextDisambiguationStrategy", a3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (id)vocabularyEntries
{
  v2 = +[VCVocabularyObjC visibleVocabularyEntriesForAllLocales];
  v3 = [v2 mutableCopy];

  return v3;
}

- (id)userHintsHistory
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACUserHintsHistory", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [v2 addEntriesFromDictionary:v4];
    }

    CFRelease(v4);
  }

  return v2;
}

- (void)setUserHintsHistory:(id)a3
{
  if (a3)
  {
    v3 = a3;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACUserHintsHistory", v3, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  }
}

- (BOOL)overlayFadingEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACOverlayFadingEnabled", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setOverlayFadingEnabled:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACOverlayFadingEnabled", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationOverlayFadingSettingsChanged", 0, 0, 1u);
}

- (double)overlayFadeDelay
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACOverlayFadeDelay", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  if (!v2)
  {
    return 2.0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = 2.0;
  if (v4 == CFNumberGetTypeID())
  {
    [v3 doubleValue];
    v5 = v6;
  }

  CFRelease(v3);
  return v5;
}

- (void)setOverlayFadeDelay:(double)a3
{
  CFPreferencesSetAppValue(@"CACOverlayFadeDelay", [MEMORY[0x277CCABB0] numberWithDouble:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationOverlayFadingSettingsChanged", 0, 0, 1u);
}

- (float)overlayFadeOpacity
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACOverlayFadeOpacity", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  if (!v2)
  {
    return 0.25;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = 0.25;
  if (v4 == CFNumberGetTypeID())
  {
    [v3 doubleValue];
    v5 = v6;
  }

  CFRelease(v3);
  return v5;
}

- (void)setOverlayFadeOpacity:(float)a3
{
  CFPreferencesSetAppValue(@"CACOverlayFadeOpacity", [MEMORY[0x277CCABB0] numberWithFloat:?], @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationOverlayFadingSettingsChanged", 0, 0, 1u);
}

- (BOOL)gridOverlayCustomColumnsEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACGridOverlayUseCustomColumns", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setGridOverlayCustomColumnsEnabled:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACGridOverlayUseCustomColumns", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (BOOL)gridOverlayCustomRowsEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACGridOverlayUseCustomRows", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setGridOverlayCustomRowsEnabled:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACGridOverlayUseCustomRows", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (int64_t)gridOverlayCustomColumnsCount
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACGridOverlayDesiredColumns", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  if (!v2)
  {
    return 4;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFNumberGetTypeID())
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 4;
  }

  CFRelease(v3);
  return v5;
}

- (void)setGridOverlayCustomColumnsCount:(int64_t)a3
{
  CFPreferencesSetAppValue(@"CACGridOverlayDesiredColumns", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (int64_t)gridOverlayCustomRowsCount
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACGridOverlayDesiredRows", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  if (!v2)
  {
    return 6;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFNumberGetTypeID())
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 6;
  }

  CFRelease(v3);
  return v5;
}

- (void)setGridOverlayCustomRowsCount:(int64_t)a3
{
  CFPreferencesSetAppValue(@"CACGridOverlayDesiredRows", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (int64_t)gridOverlayMaxLevel
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACGridOverlayMaxLevel", @"com.apple.speech.SpeechRecognitionCommandAndControl");
  if (!v2)
  {
    return 3;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  if (v4 == CFNumberGetTypeID())
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 3;
  }

  CFRelease(v3);
  return v5;
}

- (void)setGridOverlayMaxLevel:(int64_t)a3
{
  CFPreferencesSetAppValue(@"CACGridOverlayMaxLevel", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (BOOL)gridOverlayPressOnFirstLevelEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACGridOverlayPressOnFirstLevel", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setGridOverlayPressOnFirstLevelEnabled:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACGridOverlayPressOnFirstLevel", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (BOOL)gridOverlayMaxDensityEnabled
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACGridOverlayUseMaxDensity", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setGridOverlayMaxDensityEnabled:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACGridOverlayUseMaxDensity", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (BOOL)gridOverlayShowsNumbersInTopLeft
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACGridOverlayShowsNumbersInTopLeft", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setGridOverlayShowsNumbersInTopLeft:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACGridOverlayShowsNumbersInTopLeft", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationGridOverlaySettingsChanged", 0, 0, 1u);
}

- (BOOL)allowLetterKeysAsTapCommands
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  return CFPreferencesGetAppBooleanValue(@"CACKeyboardLetterKeysAsCommands", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

- (void)setAllowLetterKeysAsTapCommands:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACKeyboardLetterKeysAsCommands", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationKeyboardSettingsChanged", 0, 0, 1u);
}

- (id)targetApplicationProperties
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  v2 = CFPreferencesCopyAppValue(@"CACTargetApplications", @"com.apple.speech.SpeechRecognitionCommandAndControl");

  return v2;
}

- (void)setTargetApplicationProperties:(id)a3
{
  CFPreferencesSetAppValue(@"CACTargetApplications", a3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)isEnabledForCommandIdentifier:(id)a3
{
  v3 = [(CACPreferences *)self _propertiesForIdentifier:a3];
  v4 = [v3 objectForKey:@"Enabled"];

  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 BOOLValue];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isConfirmationRequiredForCommandIdentifier:(id)a3
{
  v3 = [(CACPreferences *)self _propertiesForIdentifier:a3];
  v4 = [v3 objectForKey:@"ConfirmationRequired"];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)propertiesForCommandIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CACPreferences *)self bestLocaleIdentifier];
  v6 = [(CACPreferences *)self propertiesForCommandIdentifier:v4 localeIdentifier:v5];

  return v6;
}

- (id)propertiesForCommandIdentifier:(id)a3 localeIdentifier:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CACPreferences *)self _propertiesForIdentifier:v6];
  v9 = [v8 objectForKey:@"CustomType"];

  if (v9)
  {
    v10 = [(CACPreferences *)self _mutablePropertiesForIdentifier:v6 create:0];
    v11 = [v10 objectForKey:@"CustomCommands"];
    if (v11)
    {
      v42 = v10;
      v44 = v7;
      v12 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v13 = [v11 allKeys];
      v14 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v46;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v46 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v45 + 1) + 8 * i);
            v19 = [v11 objectForKey:v18];
            v20 = [CACLocaleUtilities normalizedLocaleIdentifier:v18];
            [v12 setObject:v19 forKey:v20];
          }

          v15 = [v13 countByEnumeratingWithState:&v45 objects:v54 count:16];
        }

        while (v15);
      }

      v10 = v42;
      [v42 setObject:v12 forKey:@"CustomCommands"];
    }

    else
    {
      v12 = [v10 objectForKey:@"CustomTextLocalized"];
      if (!v12)
      {
        goto LABEL_31;
      }

      v40 = self;
      v41 = v6;
      v43 = v10;
      v44 = v7;
      v27 = [MEMORY[0x277CBEB38] dictionary];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v28 = [v12 allKeys];
      v29 = [v28 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v50;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v50 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v49 + 1) + 8 * j);
            v34 = [v12 objectForKey:v33];
            if (v34)
            {
              v35 = [MEMORY[0x277CBEA60] arrayWithObject:v34];
              [v27 setObject:v35 forKey:v33];
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v30);
      }

      v36 = MEMORY[0x277CBEB38];
      v37 = [MEMORY[0x277CBEB68] null];
      v38 = [v36 dictionaryWithObjectsAndKeys:{v37, @"CustomTextLocalized", 0}];

      v10 = v43;
      if ([v27 count])
      {
        [v38 setObject:v27 forKey:@"CustomCommands"];
        [v43 setObject:v27 forKey:@"CustomCommands"];
      }

      v6 = v41;
      [(CACPreferences *)v40 setProperties:v38 forCommandIdentifier:v41];
      [v43 removeObjectForKey:@"CustomTextLocalized"];
    }

    v7 = v44;
  }

  else
  {
    v21 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
    v11 = [v21 commandStringsTableForLocaleIdentifier:v7];

    v22 = [MEMORY[0x277D65598] activeTargetTypes];
    v53 = 0;
    v12 = [v11 languageModelDictionaryForCommandIdentifier:v6 targetTypes:v22 parsingErrorString:&v53];

    v23 = [(CACPreferences *)self builtInCommandsStringsTableForLocaleIdentifier:v7];
    v24 = [v11 spokenStringPermutationsOfLanguageModelDictionary:v12 stringsTable:v23 restrictPermutationsToShortestAndLongest:1];
    if ([v24 count])
    {
      v10 = [(CACPreferences *)self _mutablePropertiesForIdentifier:v6 create:1];
      [v10 setObject:v24 forKey:@"BuiltInStrings"];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.search", v6];
      v26 = [v23 objectForKey:v25];

      if (v26)
      {
        [v10 setObject:v26 forKey:@"SearchAlternates"];
      }
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_31:

  return v10;
}

- (void)setProperties:(id)a3 forCommandIdentifier:(id)a4 client:(BOOL)a5
{
  v19 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v17 = a4;
  v18 = self;
  v8 = [CACPreferences _mutablePropertiesForIdentifier:"_mutablePropertiesForIdentifier:create:" create:?];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [v7 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v7 objectForKey:v14];
        v16 = [MEMORY[0x277CBEB68] null];

        if (v15 == v16)
        {
          [v8 removeObjectForKey:v14];
        }

        else
        {
          [v8 setObject:v15 forKey:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [(CACPreferences *)v18 _setProperties:v8 forIdentifier:v17 client:v19];
}

- (id)uniqueCustomCommandIdentifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Custom.%lf", CFAbsoluteTimeGetCurrent()];
  v4 = [(CACPreferences *)self _propertiesForIdentifier:v3];

  if (v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Custom.%lf", CFAbsoluteTimeGetCurrent()];

      v6 = [(CACPreferences *)self _propertiesForIdentifier:v5];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (void)beginPropertyTransaction
{
  if (!self->_propertyTransactions)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    propertyTransactions = self->_propertyTransactions;
    self->_propertyTransactions = v3;
  }

  v5 = [MEMORY[0x277CBEB58] set];
  [(NSMutableArray *)self->_propertyTransactions insertObject:v5 atIndex:0];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
}

- (void)_propertyTransactionSynchronize
{
  if (!self->_propertyTransactions)
  {
    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__CACPreferences__propertyTransactionSynchronize__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  if (_propertyTransactionSynchronize_sSetUpDefaultCommandSettings != -1)
  {
    dispatch_once(&_propertyTransactionSynchronize_sSetUpDefaultCommandSettings, block);
  }
}

- (void)_propertyTransactionPostNotification:(id)a3 identifier:(id)a4
{
  name = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->_propertyTransactions objectAtIndex:0];
  v8 = v7;
  if (v7)
  {
    [v7 addObject:name];
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, v6, 0, 1u);
  }
}

- (void)endPropertyTransaction
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
  v3 = [(NSMutableArray *)self->_propertyTransactions objectAtIndex:0];
  if (v3)
  {
    [v3 enumerateObjectsUsingBlock:&__block_literal_global_415];
    [(NSMutableArray *)self->_propertyTransactions removeObjectAtIndex:0];
    if (![(NSMutableArray *)self->_propertyTransactions count])
    {
      propertyTransactions = self->_propertyTransactions;
      self->_propertyTransactions = 0;
    }
  }

  MEMORY[0x2821F96F8]();
}

void __40__CACPreferences_endPropertyTransaction__block_invoke(uint64_t a1, void *a2)
{
  name = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
}

- (id)_allPropertyIdentifiers
{
  [(CACPreferences *)self _propertyTransactionSynchronize];
  v2 = CFPreferencesCopyKeyList(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v2;
}

- (id)_propertiesForIdentifier:(id)a3
{
  v4 = a3;
  [(CACPreferences *)self _propertyTransactionSynchronize];
  v5 = CFPreferencesCopyAppValue(v4, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");

  return v5;
}

- (id)_mutablePropertiesForIdentifier:(id)a3 create:(BOOL)a4
{
  v5 = [(CACPreferences *)self _propertiesForIdentifier:a3];
  v6 = v5;
  if (a4 || v5)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    v8 = [v7 objectForKey:@"Enabled"];

    if (!v8)
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKey:@"Enabled"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_setProperties:(id)a3 forIdentifier:(id)a4 client:(BOOL)a5
{
  v5 = a5;
  v19 = a3;
  v8 = a4;
  v9 = [v19 objectForKey:@"Enabled"];
  v10 = v9;
  if (v9 && [v9 BOOLValue])
  {
    v11 = [v19 mutableCopy];

    [v11 removeObjectForKey:@"Enabled"];
    v12 = v19;
    v13 = v11;
  }

  else
  {
    v11 = 0;
    v12 = v19;
    v13 = v19;
  }

  v14 = [v12 objectForKey:@"CustomType"];

  if (v14)
  {
    if (!v11)
    {
      v11 = [v19 mutableCopy];

      v13 = v11;
    }

    v15 = [MEMORY[0x277CBEAA8] date];
    [v11 setObject:v15 forKey:@"CustomModifyDate"];
  }

  if ([v13 count])
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  CFPreferencesSetAppValue(v8, v16, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
  [(CACPreferences *)self _propertyTransactionSynchronize];
  if (v5)
  {
    v17 = @"CACNotificationClientCommandsSettingsChanged";
  }

  else
  {
    v17 = @"CACNotificationCommandsSettingsChanged";
  }

  if (v5)
  {
    v18 = v8;
  }

  else
  {
    v18 = 0;
  }

  [(CACPreferences *)self _propertyTransactionPostNotification:v17 identifier:v18];
}

- (void)_writeDefaultCommandSettingsIfNecessary
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"DefaultCommandSettings" ofType:@"plist"];
  v5 = [v2 initWithContentsOfFile:v4];

  v6 = [v5 allKeys];
  v7 = [v6 count];

  if (v7)
  {
    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
    v8 = CFPreferencesCopyKeyList(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (([(__CFArray *)v8 containsObject:v15]& 1) == 0)
          {
            v16 = [v5 objectForKey:v15];
            CFPreferencesSetAppValue(v15, v16, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");

            v12 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);

      if (v12)
      {
        CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
      }
    }

    else
    {
    }
  }
}

+ (id)_builtinCommandsCatalogURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"BuiltinCommandsCatalog" withExtension:@"plist"];

  return v3;
}

+ (id)_suffixedURLsForURL:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v23 = objc_opt_new();
  v4 = [v3 URLByDeletingLastPathComponent];
  v24 = [v3 pathExtension];
  v5 = [v3 URLByDeletingPathExtension];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = v4;
  v7 = [v6 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:0];

  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 path];
        v14 = [v3 path];
        v15 = [v13 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [v12 path];
          v17 = [v5 path];
          v18 = [v16 hasPrefix:v17];

          if (v18)
          {
            v19 = [v12 pathExtension];
            v20 = v19;
            if (!(v24 | v19) || (v24 == 0) == (v19 == 0) && [v24 isEqualToString:v19])
            {
              [v23 addObject:v12];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v23;
}

- (id)builtInCommandsTable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__CACPreferences_builtInCommandsTable__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  if (builtInCommandsTable_builtInCommandsTableCacheSetup != -1)
  {
    dispatch_once(&builtInCommandsTable_builtInCommandsTableCacheSetup, block);
  }

  return self->_builtInCommandsTableCache;
}

void __38__CACPreferences_builtInCommandsTable__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _builtinCommandsCatalogURL];
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v2];
  v4 = CACLogPreferences();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __38__CACPreferences_builtInCommandsTable__block_invoke_cold_1(v2, v4);
  }

  v18 = a1;
  v17 = v2;
  v5 = [objc_opt_class() _suffixedURLsForURL:v2];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      v10 = v3;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * v9);
        v12 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v11];
        v13 = CACLogPreferences();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v11 lastPathComponent];
          *buf = 138412290;
          v24 = v14;
          _os_log_impl(&dword_26B354000, v13, OS_LOG_TYPE_DEFAULT, "Loaded commands override table: %@", buf, 0xCu);
        }

        v3 = [v12 dictionaryByMergingEntriesFromDictionary:v10];

        ++v9;
        v10 = v3;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = *(v18 + 32);
  v16 = *(v15 + 8);
  *(v15 + 8) = v3;
}

- (id)builtInCommandsStringsTableForLocaleIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_builtInLocalizedCommandStringsByLocaleIdentifier objectForKey:v4];
  objc_sync_exit(v5);

  v20 = v6;
  if (!v6)
  {
    v19 = v4;
    v20 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
    v8 = [v7 commandStringsTableForLocaleIdentifier:v4];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [AllValidCommandParameterIdentifiers() allObjects];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [MEMORY[0x277D65598] activeTargetTypes];
          v15 = [v8 descriptionStringForCommandIdentifier:v13 descriptionType:@"NAME" targetTypes:v14];

          if ([v15 length])
          {
            [v20 setObject:v15 forKey:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    if (v20)
    {
      v16 = v5;
      objc_sync_enter(v16);
      [(NSMutableDictionary *)v5->_builtInLocalizedCommandStringsByLocaleIdentifier setObject:v20 forKey:v19];
      v17 = v20;
      objc_sync_exit(v16);
    }

    v4 = v19;
  }

  return v20;
}

- (void)_flushBuiltInCommandsStringsTable
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_builtInLocalizedCommandStringsByLocaleIdentifier removeAllObjects];
  objc_sync_exit(obj);
}

- (id)displayNameForCommandSetIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.DisplayName", v4];

  v7 = [v5 localizedStringForKey:v6 value:&stru_287BD8610 table:0];

  return v7;
}

- (BOOL)hidePreferencesForCommandSetIdentifier:(id)a3
{
  v3 = [MEMORY[0x277D655B0] collectionWithIdentifier:a3];
  v4 = [v3 showInSettings] == 0;

  return v4;
}

- (id)enabledCommandIdentifiersForCommandSetIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CACPreferences *)self bestLocaleIdentifier];
  v6 = [(CACPreferences *)self _commandIdentifiersForCommandSetIdentifier:v4 localeIdentifier:v5 enabledOnly:1];

  return v6;
}

- (id)_commandIdentifiersForCommandSetIdentifier:(id)a3 localeIdentifier:(id)a4 enabledOnly:(BOOL)a5
{
  v5 = a5;
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v28 = [MEMORY[0x277CBEB18] array];
  if ([v8 isEqualToString:@"Custom"])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = [(CACPreferences *)self _allPropertyIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = v9;
      v27 = v8;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [(CACPreferences *)self _propertiesForIdentifier:v15];
          v17 = [v16 objectForKey:@"CustomType"];

          if (v17 && (!v5 || [(CACPreferences *)self isEnabledForCommandIdentifier:v15]))
          {
            [v28 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
      v9 = v26;
      v8 = v27;
    }
  }

  else
  {
    v18 = [MEMORY[0x277D655B0] collectionWithIdentifier:v8];
    v19 = [v18 commandIdentifiersForCurrentDevice];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v19;
    v20 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v10);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          if ([(CACPreferences *)self isCommandIdentifier:v24 availableForLocaleIdentifier:v9]&& (!v5 || [(CACPreferences *)self isEnabledForCommandIdentifier:v24]))
          {
            [v28 addObject:v24];
          }
        }

        v21 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }
  }

  return v28;
}

- (BOOL)isCommandIdentifier:(id)a3 availableForLocaleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
  v8 = [v7 commandStringsTableForLocaleIdentifier:v6];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 isSupportedCommandIdentifier:v5 forLocaleIdentifier:v6];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)setOfApplicationIdentifiersUsedByCustomCommands
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(CACPreferences *)self _allPropertyIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(CACPreferences *)self _propertiesForIdentifier:*(*(&v14 + 1) + 8 * i)];
        v9 = [v8 objectForKey:@"CustomType"];

        if (v9)
        {
          v10 = [v8 objectForKey:@"CustomScope"];
          v11 = v10;
          if (v10 && ([v10 isEqualToString:@"com.apple.speech.SystemWideScope"] & 1) == 0)
          {
            [v13 addObject:v11];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v13;
}

- (id)allCustomCommandProperties
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CACPreferences *)self _allPropertyIdentifiers];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(CACPreferences *)self _propertiesForIdentifier:v9];
        v11 = [v10 objectForKey:@"CustomType"];

        if (v11)
        {
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addOrUpdateCommandPropertiesFromImportedTable:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 allKeys];
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

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        CFPreferencesSetAppValue(v10, v11, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(CACPreferences *)self _propertyTransactionSynchronize];
  [(CACPreferences *)self _propertyTransactionPostNotification:@"CACNotificationCommandsSettingsChanged" identifier:0];
}

- (void)deleteAllCustomCommandEntries
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CACPreferences *)self allCustomCommandProperties];
  v4 = [v3 allKeys];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        CFPreferencesSetAppValue(*(*(&v9 + 1) + 8 * v8++), 0, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(CACPreferences *)self _propertyTransactionSynchronize];
  [(CACPreferences *)self _propertyTransactionPostNotification:@"CACNotificationCommandsSettingsChanged" identifier:0];
}

- (BOOL)phoneticVocabularyShowDebugUI
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACPhoneticVocabularyShowDebugUI", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setPhoneticVocabularyShowDebugUI:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACPhoneticVocabularyShowDebugUI", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)phoneticVocabularySkipPickingPronunciation
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  return CFPreferencesGetAppBooleanValue(@"CACPhoneticVocabularySkipPickingPronunciation", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat) || keyExistsAndHasValidFormat == 0;
}

- (void)setPhoneticVocabularySkipPickingPronunciation:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACPhoneticVocabularySkipPickingPronunciation", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)phoneticVocabularyShowUserFacingIPAToggle
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACPhoneticVocabularyShowUserFacingIPAToggle", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setPhoneticVocabularyShowUserFacingIPAToggle:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACPhoneticVocabularyShowUserFacingIPAToggle", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)phoneticVocabularyShowUserFacingIPA
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACPhoneticVocabularyShowUserFacingIPA", @"com.apple.speech.SpeechRecognitionCommandAndControl", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)setPhoneticVocabularyShowUserFacingIPA:(BOOL)a3
{
  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  CFPreferencesSetAppValue(@"CACPhoneticVocabularyShowUserFacingIPA", *v3, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (double)lastCommandDate
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v2 = CFPreferencesCopyAppValue(@"CACLastCommandDate", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  CFRelease(v3);
  return v4;
}

- (void)setLastCommandDate:(double)a3
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACLastCommandDate", [MEMORY[0x277CCABB0] numberWithDouble:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
}

- (int64_t)correctionCount
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v2 = CFPreferencesCopyAppValue(@"CACCorrectionCount", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

- (void)setCorrectionCount:(int64_t)a3
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACCorrectionCount", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
}

- (int64_t)messageTracesSinceLastReport
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v2 = CFPreferencesCopyAppValue(@"CACMessageTracesSinceLastReport", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

- (void)setMessageTracesSinceLastReport:(int64_t)a3
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACMessageTracesSinceLastReport", [MEMORY[0x277CCABB0] numberWithInteger:a3], @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
}

- (id)commandCounts
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACCommandCounts", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [v2 addEntriesFromDictionary:v4];
    }

    CFRelease(v4);
  }

  return v2;
}

- (void)setCommandCounts:(id)a3
{
  if (a3)
  {
    v3 = a3;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACCommandCounts", v3, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  }
}

- (id)targetApplicationCounts
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACTargetApplicationCounts", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [v2 addEntriesFromDictionary:v4];
    }

    CFRelease(v4);
  }

  return v2;
}

- (void)setTargetApplicationCounts:(id)a3
{
  if (a3)
  {
    v3 = a3;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACTargetApplicationCounts", v3, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  }
}

- (id)recentCommandEntries
{
  v2 = [MEMORY[0x277CBEB18] array];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACRecentCommands", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      [v2 addObjectsFromArray:v4];
    }

    CFRelease(v4);
  }

  return v2;
}

- (void)setRecentCommandEntries:(id)a3
{
  if (a3)
  {
    v3 = a3;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACRecentCommands", v3, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  }
}

- (id)divertedCommandsLogPath
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v2 = CFPreferencesCopyAppValue(@"CACDivertCommandsToLogPath", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)forceAllCommandsToBeActive
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  keyExistsAndHasValidFormat = 0;
  return CFPreferencesGetAppBooleanValue(@"CACForceAllCommandsToBeActive", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log", &keyExistsAndHasValidFormat) != 0;
}

- (id)externalContextOverrideFilePath
{
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v2 = CFPreferencesCopyAppValue(@"CACExternalContextOverrideFilePath", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      CFRelease(v3);
      v3 = 0;
    }
  }

  return v3;
}

- (id)rawCustomCommandsPreferencesDictionary
{
  v2 = CFPreferencesCopyMultiple(0, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v2;
}

- (void)removeUserCommandHistory
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACRecentCommands", 0, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  CFPreferencesSetAppValue(@"CACCommandCounts", 0, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  CFPreferencesSetAppValue(@"CACUserHintsHistory", 0, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
}

- (BOOL)shouldDisableDeviceIdleTimer
{
  CFPreferencesAppSynchronize(@"com.apple.SpeechRecognitionCore.Utility");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CACPrefsUtilityDisableDeviceIdleTimerKey", @"com.apple.SpeechRecognitionCore.Utility", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)commandAndControlIsEnabled
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 enabled];

  return v3;
}

- (void)setCommandAndControlEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D79890] shared];
  [v4 setEnabled:v3];
}

- (NSArray)userSelectableLocaleIdentifiers
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 supportedLocales];

  return v3;
}

- (void)setLocaleIdentifier:(id)a3
{
  v3 = MEMORY[0x277D79890];
  v4 = a3;
  v5 = [v3 shared];
  [v5 setPreferredLocale:v4];
}

- (NSString)bestLocaleIdentifier
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 activeLocale];
  v4 = [v3 localeIdentifier];

  return v4;
}

- (NSString)alwaysShowOverlayType
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 alwaysShowOverlayType];

  return v3;
}

- (void)setAlwaysShowOverlayType:(id)a3
{
  v3 = MEMORY[0x277D79890];
  v4 = a3;
  v5 = [v3 shared];
  [v5 setAlwaysShowOverlayType:v4];
}

- (BOOL)playSoundUponRecognition
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 playSoundUponRecognition];

  return v3;
}

- (void)setPlaySoundUponRecognition:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D79890] shared];
  [v4 setPlaySoundUponRecognition:v3];
}

- (BOOL)showTextResponseUponRecognition
{
  v2 = [MEMORY[0x277D79890] shared];
  v3 = [v2 showTextResponseUponRecognition];

  return v3;
}

- (void)setShowTextResponseUponRecognition:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D79890] shared];
  [v4 setShowTextResponseUponRecognition:v3];
}

- (int64_t)userHintsFeatures
{
  v2 = [MEMORY[0x277D79890] shared];
  if ([v2 showUserHints])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserHintsFeatures:(int64_t)a3
{
  v3 = a3 == 3;
  v4 = [MEMORY[0x277D79890] shared];
  [v4 setShowUserHints:v3];
}

void __38__CACPreferences_builtInCommandsTable__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 lastPathComponent];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_26B354000, a2, OS_LOG_TYPE_DEBUG, "Loaded commands table: %@", &v4, 0xCu);
}

@end