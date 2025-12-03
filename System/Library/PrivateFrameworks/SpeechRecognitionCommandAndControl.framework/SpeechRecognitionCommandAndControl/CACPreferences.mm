@interface CACPreferences
+ (id)_builtinCommandsCatalogURL;
+ (id)_suffixedURLsForURL:(id)l;
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
- (BOOL)hidePreferencesForCommandSetIdentifier:(id)identifier;
- (BOOL)isCommandIdentifier:(id)identifier availableForLocaleIdentifier:(id)localeIdentifier;
- (BOOL)isConfirmationRequiredForCommandIdentifier:(id)identifier;
- (BOOL)isEnabledForCommandIdentifier:(id)identifier;
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
- (id)_commandIdentifiersForCommandSetIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier enabledOnly:(BOOL)only;
- (id)_mutablePropertiesForIdentifier:(id)identifier create:(BOOL)create;
- (id)_propertiesForIdentifier:(id)identifier;
- (id)allCustomCommandProperties;
- (id)attentionAwareAction;
- (id)builtInCommandsStringsTableForLocaleIdentifier:(id)identifier;
- (id)builtInCommandsTable;
- (id)commandCounts;
- (id)displayNameForCommandSetIdentifier:(id)identifier;
- (id)divertedCommandsLogPath;
- (id)enabledCommandIdentifiersForCommandSetIdentifier:(id)identifier;
- (id)externalContextOverrideFilePath;
- (id)propertiesForCommandIdentifier:(id)identifier;
- (id)propertiesForCommandIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier;
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
- (void)_propertyTransactionPostNotification:(id)notification identifier:(id)identifier;
- (void)_propertyTransactionSynchronize;
- (void)_setProperties:(id)properties forIdentifier:(id)identifier client:(BOOL)client;
- (void)_writeDefaultCommandSettingsIfNecessary;
- (void)addOrUpdateCommandPropertiesFromImportedTable:(id)table;
- (void)beginPropertyTransaction;
- (void)dealloc;
- (void)deleteAllCustomCommandEntries;
- (void)endPropertyTransaction;
- (void)removeUserCommandHistory;
- (void)setAdditionalLoggingForCommands:(BOOL)commands;
- (void)setAllowLetterKeysAsTapCommands:(BOOL)commands;
- (void)setAlwaysShowOverlayType:(id)type;
- (void)setAttentionAwareAction:(id)action;
- (void)setCommandAndControlEnabled:(BOOL)enabled;
- (void)setCommandCounts:(id)counts;
- (void)setCorrectionCount:(int64_t)count;
- (void)setDidShowOnboarding:(BOOL)onboarding;
- (void)setDonationTipKitSeen:(BOOL)seen;
- (void)setGridOverlayCustomColumnsCount:(int64_t)count;
- (void)setGridOverlayCustomColumnsEnabled:(BOOL)enabled;
- (void)setGridOverlayCustomRowsCount:(int64_t)count;
- (void)setGridOverlayCustomRowsEnabled:(BOOL)enabled;
- (void)setGridOverlayMaxDensityEnabled:(BOOL)enabled;
- (void)setGridOverlayMaxLevel:(int64_t)level;
- (void)setGridOverlayPressOnFirstLevelEnabled:(BOOL)enabled;
- (void)setGridOverlayShowsNumbersInTopLeft:(BOOL)left;
- (void)setLastCommandDate:(double)date;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setMessageTracesSinceLastReport:(int64_t)report;
- (void)setOverlayFadeDelay:(double)delay;
- (void)setOverlayFadeOpacity:(float)opacity;
- (void)setOverlayFadingEnabled:(BOOL)enabled;
- (void)setPhoneticVocabularyShowDebugUI:(BOOL)i;
- (void)setPhoneticVocabularyShowUserFacingIPA:(BOOL)a;
- (void)setPhoneticVocabularyShowUserFacingIPAToggle:(BOOL)toggle;
- (void)setPhoneticVocabularySkipPickingPronunciation:(BOOL)pronunciation;
- (void)setPlaySoundUponRecognition:(BOOL)recognition;
- (void)setProperties:(id)properties forCommandIdentifier:(id)identifier client:(BOOL)client;
- (void)setRecentCommandEntries:(id)entries;
- (void)setShowTextResponseUponRecognition:(BOOL)recognition;
- (void)setSleepOnAttentionLost:(BOOL)lost;
- (void)setTargetApplicationCounts:(id)counts;
- (void)setTargetApplicationProperties:(id)properties;
- (void)setTextDisambiguationStrategy:(id)strategy;
- (void)setUserHintsFeatures:(int64_t)features;
- (void)setUserHintsHistory:(id)history;
- (void)setWakeOnAttentionGained:(BOOL)gained;
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

- (void)setAdditionalLoggingForCommands:(BOOL)commands
{
  v3 = MEMORY[0x277CBED28];
  if (!commands)
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

- (void)setAttentionAwareAction:(id)action
{
  CFPreferencesSetAppValue(@"CACAttentionAwareAction", action, @"com.apple.speech.SpeechRecognitionCommandAndControl");
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CACNotificationAttentionBasedSettingsChanged", 0, 0, 1u);
}

- (BOOL)sleepOnAttentionLost
{
  attentionAwareAction = [(CACPreferences *)self attentionAwareAction];
  v3 = [attentionAwareAction isEqualToString:@"SleepAndWake"];

  return v3;
}

- (void)setSleepOnAttentionLost:(BOOL)lost
{
  if (lost)
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
  attentionAwareAction = [(CACPreferences *)self attentionAwareAction];
  v3 = [attentionAwareAction isEqualToString:@"SleepAndWake"];

  return v3;
}

- (void)setWakeOnAttentionGained:(BOOL)gained
{
  if (gained)
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

- (void)setDidShowOnboarding:(BOOL)onboarding
{
  v3 = MEMORY[0x277CBED28];
  if (!onboarding)
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

- (void)setDonationTipKitSeen:(BOOL)seen
{
  v3 = MEMORY[0x277CBED28];
  if (!seen)
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

- (void)setTextDisambiguationStrategy:(id)strategy
{
  CFPreferencesSetAppValue(@"CACTextDisambiguationStrategy", strategy, @"com.apple.speech.SpeechRecognitionCommandAndControl");

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACUserHintsHistory", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [dictionary addEntriesFromDictionary:v4];
    }

    CFRelease(v4);
  }

  return dictionary;
}

- (void)setUserHintsHistory:(id)history
{
  if (history)
  {
    historyCopy = history;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACUserHintsHistory", historyCopy, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

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

- (void)setOverlayFadingEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
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

- (void)setOverlayFadeDelay:(double)delay
{
  CFPreferencesSetAppValue(@"CACOverlayFadeDelay", [MEMORY[0x277CCABB0] numberWithDouble:delay], @"com.apple.speech.SpeechRecognitionCommandAndControl");
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

- (void)setOverlayFadeOpacity:(float)opacity
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

- (void)setGridOverlayCustomColumnsEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
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

- (void)setGridOverlayCustomRowsEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
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
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 4;
  }

  CFRelease(v3);
  return integerValue;
}

- (void)setGridOverlayCustomColumnsCount:(int64_t)count
{
  CFPreferencesSetAppValue(@"CACGridOverlayDesiredColumns", [MEMORY[0x277CCABB0] numberWithInteger:count], @"com.apple.speech.SpeechRecognitionCommandAndControl");
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
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 6;
  }

  CFRelease(v3);
  return integerValue;
}

- (void)setGridOverlayCustomRowsCount:(int64_t)count
{
  CFPreferencesSetAppValue(@"CACGridOverlayDesiredRows", [MEMORY[0x277CCABB0] numberWithInteger:count], @"com.apple.speech.SpeechRecognitionCommandAndControl");
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
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  CFRelease(v3);
  return integerValue;
}

- (void)setGridOverlayMaxLevel:(int64_t)level
{
  CFPreferencesSetAppValue(@"CACGridOverlayMaxLevel", [MEMORY[0x277CCABB0] numberWithInteger:level], @"com.apple.speech.SpeechRecognitionCommandAndControl");
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

- (void)setGridOverlayPressOnFirstLevelEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
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

- (void)setGridOverlayMaxDensityEnabled:(BOOL)enabled
{
  v3 = MEMORY[0x277CBED28];
  if (!enabled)
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

- (void)setGridOverlayShowsNumbersInTopLeft:(BOOL)left
{
  v3 = MEMORY[0x277CBED28];
  if (!left)
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

- (void)setAllowLetterKeysAsTapCommands:(BOOL)commands
{
  v3 = MEMORY[0x277CBED28];
  if (!commands)
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

- (void)setTargetApplicationProperties:(id)properties
{
  CFPreferencesSetAppValue(@"CACTargetApplications", properties, @"com.apple.speech.SpeechRecognitionCommandAndControl");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl");
}

- (BOOL)isEnabledForCommandIdentifier:(id)identifier
{
  v3 = [(CACPreferences *)self _propertiesForIdentifier:identifier];
  v4 = [v3 objectForKey:@"Enabled"];

  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v4 BOOLValue];
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

- (BOOL)isConfirmationRequiredForCommandIdentifier:(id)identifier
{
  v3 = [(CACPreferences *)self _propertiesForIdentifier:identifier];
  v4 = [v3 objectForKey:@"ConfirmationRequired"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)propertiesForCommandIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bestLocaleIdentifier = [(CACPreferences *)self bestLocaleIdentifier];
  v6 = [(CACPreferences *)self propertiesForCommandIdentifier:identifierCopy localeIdentifier:bestLocaleIdentifier];

  return v6;
}

- (id)propertiesForCommandIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier
{
  v56 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  v8 = [(CACPreferences *)self _propertiesForIdentifier:identifierCopy];
  v9 = [v8 objectForKey:@"CustomType"];

  if (v9)
  {
    v10 = [(CACPreferences *)self _mutablePropertiesForIdentifier:identifierCopy create:0];
    v11 = [v10 objectForKey:@"CustomCommands"];
    if (v11)
    {
      v42 = v10;
      v44 = localeIdentifierCopy;
      v12 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      allKeys = [v11 allKeys];
      v14 = [allKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v18 = *(*(&v45 + 1) + 8 * i);
            v19 = [v11 objectForKey:v18];
            v20 = [CACLocaleUtilities normalizedLocaleIdentifier:v18];
            [v12 setObject:v19 forKey:v20];
          }

          v15 = [allKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
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

      selfCopy = self;
      v41 = identifierCopy;
      v43 = v10;
      v44 = localeIdentifierCopy;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      allKeys2 = [v12 allKeys];
      v29 = [allKeys2 countByEnumeratingWithState:&v49 objects:v55 count:16];
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
              objc_enumerationMutation(allKeys2);
            }

            v33 = *(*(&v49 + 1) + 8 * j);
            v34 = [v12 objectForKey:v33];
            if (v34)
            {
              v35 = [MEMORY[0x277CBEA60] arrayWithObject:v34];
              [dictionary setObject:v35 forKey:v33];
            }
          }

          v30 = [allKeys2 countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v30);
      }

      v36 = MEMORY[0x277CBEB38];
      null = [MEMORY[0x277CBEB68] null];
      v38 = [v36 dictionaryWithObjectsAndKeys:{null, @"CustomTextLocalized", 0}];

      v10 = v43;
      if ([dictionary count])
      {
        [v38 setObject:dictionary forKey:@"CustomCommands"];
        [v43 setObject:dictionary forKey:@"CustomCommands"];
      }

      identifierCopy = v41;
      [(CACPreferences *)selfCopy setProperties:v38 forCommandIdentifier:v41];
      [v43 removeObjectForKey:@"CustomTextLocalized"];
    }

    localeIdentifierCopy = v44;
  }

  else
  {
    mEMORY[0x277D655A0] = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
    v11 = [mEMORY[0x277D655A0] commandStringsTableForLocaleIdentifier:localeIdentifierCopy];

    activeTargetTypes = [MEMORY[0x277D65598] activeTargetTypes];
    v53 = 0;
    v12 = [v11 languageModelDictionaryForCommandIdentifier:identifierCopy targetTypes:activeTargetTypes parsingErrorString:&v53];

    v23 = [(CACPreferences *)self builtInCommandsStringsTableForLocaleIdentifier:localeIdentifierCopy];
    v24 = [v11 spokenStringPermutationsOfLanguageModelDictionary:v12 stringsTable:v23 restrictPermutationsToShortestAndLongest:1];
    if ([v24 count])
    {
      v10 = [(CACPreferences *)self _mutablePropertiesForIdentifier:identifierCopy create:1];
      [v10 setObject:v24 forKey:@"BuiltInStrings"];
      identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.search", identifierCopy];
      v26 = [v23 objectForKey:identifierCopy];

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

- (void)setProperties:(id)properties forCommandIdentifier:(id)identifier client:(BOOL)client
{
  clientCopy = client;
  v25 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  identifierCopy = identifier;
  selfCopy = self;
  v8 = [CACPreferences _mutablePropertiesForIdentifier:"_mutablePropertiesForIdentifier:create:" create:?];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [propertiesCopy allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [propertiesCopy objectForKey:v14];
        null = [MEMORY[0x277CBEB68] null];

        if (v15 == null)
        {
          [v8 removeObjectForKey:v14];
        }

        else
        {
          [v8 setObject:v15 forKey:v14];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [(CACPreferences *)selfCopy _setProperties:v8 forIdentifier:identifierCopy client:clientCopy];
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

- (void)_propertyTransactionPostNotification:(id)notification identifier:(id)identifier
{
  name = notification;
  identifierCopy = identifier;
  v7 = [(NSMutableArray *)self->_propertyTransactions objectAtIndex:0];
  v8 = v7;
  if (v7)
  {
    [v7 addObject:name];
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, identifierCopy, 0, 1u);
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

- (id)_propertiesForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(CACPreferences *)self _propertyTransactionSynchronize];
  v5 = CFPreferencesCopyAppValue(identifierCopy, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");

  return v5;
}

- (id)_mutablePropertiesForIdentifier:(id)identifier create:(BOOL)create
{
  v5 = [(CACPreferences *)self _propertiesForIdentifier:identifier];
  v6 = v5;
  if (create || v5)
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

- (void)_setProperties:(id)properties forIdentifier:(id)identifier client:(BOOL)client
{
  clientCopy = client;
  propertiesCopy = properties;
  identifierCopy = identifier;
  v9 = [propertiesCopy objectForKey:@"Enabled"];
  v10 = v9;
  if (v9 && [v9 BOOLValue])
  {
    v11 = [propertiesCopy mutableCopy];

    [v11 removeObjectForKey:@"Enabled"];
    v12 = propertiesCopy;
    v13 = v11;
  }

  else
  {
    v11 = 0;
    v12 = propertiesCopy;
    v13 = propertiesCopy;
  }

  v14 = [v12 objectForKey:@"CustomType"];

  if (v14)
  {
    if (!v11)
    {
      v11 = [propertiesCopy mutableCopy];

      v13 = v11;
    }

    date = [MEMORY[0x277CBEAA8] date];
    [v11 setObject:date forKey:@"CustomModifyDate"];
  }

  if ([v13 count])
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  CFPreferencesSetAppValue(identifierCopy, v16, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
  [(CACPreferences *)self _propertyTransactionSynchronize];
  if (clientCopy)
  {
    v17 = @"CACNotificationClientCommandsSettingsChanged";
  }

  else
  {
    v17 = @"CACNotificationCommandsSettingsChanged";
  }

  if (clientCopy)
  {
    v18 = identifierCopy;
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

  allKeys = [v5 allKeys];
  v7 = [allKeys count];

  if (v7)
  {
    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
    v8 = CFPreferencesCopyKeyList(@"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allKeys2 = [v5 allKeys];
    v10 = [allKeys2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(allKeys2);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if (([(__CFArray *)v8 containsObject:v15]& 1) == 0)
          {
            v16 = [v5 objectForKey:v15];
            CFPreferencesSetAppValue(v15, v16, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");

            v12 = 1;
          }
        }

        v11 = [allKeys2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

+ (id)_suffixedURLsForURL:(id)l
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v23 = objc_opt_new();
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  pathExtension = [lCopy pathExtension];
  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v22 = uRLByDeletingLastPathComponent;
  v7 = [defaultManager contentsOfDirectoryAtURL:uRLByDeletingLastPathComponent includingPropertiesForKeys:0 options:0 error:0];

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
        path = [v12 path];
        path2 = [lCopy path];
        v15 = [path isEqualToString:path2];

        if ((v15 & 1) == 0)
        {
          path3 = [v12 path];
          path4 = [uRLByDeletingPathExtension path];
          v18 = [path3 hasPrefix:path4];

          if (v18)
          {
            pathExtension2 = [v12 pathExtension];
            v20 = pathExtension2;
            if (!(pathExtension | pathExtension2) || (pathExtension == 0) == (pathExtension2 == 0) && [pathExtension isEqualToString:pathExtension2])
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

- (id)builtInCommandsStringsTableForLocaleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_builtInLocalizedCommandStringsByLocaleIdentifier objectForKey:identifierCopy];
  objc_sync_exit(selfCopy);

  dictionary = v6;
  if (!v6)
  {
    v19 = identifierCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mEMORY[0x277D655A0] = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
    v8 = [mEMORY[0x277D655A0] commandStringsTableForLocaleIdentifier:identifierCopy];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allObjects = [AllValidCommandParameterIdentifiers() allObjects];
    v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(allObjects);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          activeTargetTypes = [MEMORY[0x277D65598] activeTargetTypes];
          v15 = [v8 descriptionStringForCommandIdentifier:v13 descriptionType:@"NAME" targetTypes:activeTargetTypes];

          if ([v15 length])
          {
            [dictionary setObject:v15 forKey:v13];
          }
        }

        v10 = [allObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    if (dictionary)
    {
      v16 = selfCopy;
      objc_sync_enter(v16);
      [(NSMutableDictionary *)selfCopy->_builtInLocalizedCommandStringsByLocaleIdentifier setObject:dictionary forKey:v19];
      v17 = dictionary;
      objc_sync_exit(v16);
    }

    identifierCopy = v19;
  }

  return dictionary;
}

- (void)_flushBuiltInCommandsStringsTable
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_builtInLocalizedCommandStringsByLocaleIdentifier removeAllObjects];
  objc_sync_exit(obj);
}

- (id)displayNameForCommandSetIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCA8D8];
  identifierCopy = identifier;
  v5 = [v3 bundleForClass:objc_opt_class()];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.DisplayName", identifierCopy];

  v7 = [v5 localizedStringForKey:identifierCopy value:&stru_287BD8610 table:0];

  return v7;
}

- (BOOL)hidePreferencesForCommandSetIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277D655B0] collectionWithIdentifier:identifier];
  v4 = [v3 showInSettings] == 0;

  return v4;
}

- (id)enabledCommandIdentifiersForCommandSetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  bestLocaleIdentifier = [(CACPreferences *)self bestLocaleIdentifier];
  v6 = [(CACPreferences *)self _commandIdentifiersForCommandSetIdentifier:identifierCopy localeIdentifier:bestLocaleIdentifier enabledOnly:1];

  return v6;
}

- (id)_commandIdentifiersForCommandSetIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier enabledOnly:(BOOL)only
{
  onlyCopy = only;
  v39 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  array = [MEMORY[0x277CBEB18] array];
  if ([identifierCopy isEqualToString:@"Custom"])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    _allPropertyIdentifiers = [(CACPreferences *)self _allPropertyIdentifiers];
    v11 = [_allPropertyIdentifiers countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v26 = localeIdentifierCopy;
      v27 = identifierCopy;
      v13 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(_allPropertyIdentifiers);
          }

          v15 = *(*(&v33 + 1) + 8 * i);
          v16 = [(CACPreferences *)self _propertiesForIdentifier:v15];
          v17 = [v16 objectForKey:@"CustomType"];

          if (v17 && (!onlyCopy || [(CACPreferences *)self isEnabledForCommandIdentifier:v15]))
          {
            [array addObject:v15];
          }
        }

        v12 = [_allPropertyIdentifiers countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
      localeIdentifierCopy = v26;
      identifierCopy = v27;
    }
  }

  else
  {
    v18 = [MEMORY[0x277D655B0] collectionWithIdentifier:identifierCopy];
    commandIdentifiersForCurrentDevice = [v18 commandIdentifiersForCurrentDevice];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    _allPropertyIdentifiers = commandIdentifiersForCurrentDevice;
    v20 = [_allPropertyIdentifiers countByEnumeratingWithState:&v29 objects:v37 count:16];
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
            objc_enumerationMutation(_allPropertyIdentifiers);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          if ([(CACPreferences *)self isCommandIdentifier:v24 availableForLocaleIdentifier:localeIdentifierCopy]&& (!onlyCopy || [(CACPreferences *)self isEnabledForCommandIdentifier:v24]))
          {
            [array addObject:v24];
          }
        }

        v21 = [_allPropertyIdentifiers countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }
  }

  return array;
}

- (BOOL)isCommandIdentifier:(id)identifier availableForLocaleIdentifier:(id)localeIdentifier
{
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  mEMORY[0x277D655A0] = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
  v8 = [mEMORY[0x277D655A0] commandStringsTableForLocaleIdentifier:localeIdentifierCopy];

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 isSupportedCommandIdentifier:identifierCopy forLocaleIdentifier:localeIdentifierCopy];
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
  _allPropertyIdentifiers = [(CACPreferences *)self _allPropertyIdentifiers];
  v4 = [_allPropertyIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(_allPropertyIdentifiers);
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

      v5 = [_allPropertyIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v13;
}

- (id)allCustomCommandProperties
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  _allPropertyIdentifiers = [(CACPreferences *)self _allPropertyIdentifiers];
  v5 = [_allPropertyIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(_allPropertyIdentifiers);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(CACPreferences *)self _propertiesForIdentifier:v9];
        v11 = [v10 objectForKey:@"CustomType"];

        if (v11)
        {
          [dictionary setObject:v10 forKey:v9];
        }
      }

      v6 = [_allPropertyIdentifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (void)addOrUpdateCommandPropertiesFromImportedTable:(id)table
{
  v17 = *MEMORY[0x277D85DE8];
  tableCopy = table;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [tableCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [tableCopy objectForKey:v10];
        CFPreferencesSetAppValue(v10, v11, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
      }

      v7 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  allCustomCommandProperties = [(CACPreferences *)self allCustomCommandProperties];
  allKeys = [allCustomCommandProperties allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        CFPreferencesSetAppValue(*(*(&v9 + 1) + 8 * v8++), 0, @"com.apple.speech.SpeechRecognitionCommandAndControl.CustomCommands");
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setPhoneticVocabularyShowDebugUI:(BOOL)i
{
  v3 = MEMORY[0x277CBED28];
  if (!i)
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

- (void)setPhoneticVocabularySkipPickingPronunciation:(BOOL)pronunciation
{
  v3 = MEMORY[0x277CBED28];
  if (!pronunciation)
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

- (void)setPhoneticVocabularyShowUserFacingIPAToggle:(BOOL)toggle
{
  v3 = MEMORY[0x277CBED28];
  if (!toggle)
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

- (void)setPhoneticVocabularyShowUserFacingIPA:(BOOL)a
{
  v3 = MEMORY[0x277CBED28];
  if (!a)
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

- (void)setLastCommandDate:(double)date
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACLastCommandDate", [MEMORY[0x277CCABB0] numberWithDouble:date], @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

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
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  CFRelease(v3);
  return intValue;
}

- (void)setCorrectionCount:(int64_t)count
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACCorrectionCount", [MEMORY[0x277CCABB0] numberWithInteger:count], @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

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
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  CFRelease(v3);
  return intValue;
}

- (void)setMessageTracesSinceLastReport:(int64_t)report
{
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"CACMessageTracesSinceLastReport", [MEMORY[0x277CCABB0] numberWithInteger:report], @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
}

- (id)commandCounts
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACCommandCounts", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [dictionary addEntriesFromDictionary:v4];
    }

    CFRelease(v4);
  }

  return dictionary;
}

- (void)setCommandCounts:(id)counts
{
  if (counts)
  {
    countsCopy = counts;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACCommandCounts", countsCopy, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  }
}

- (id)targetApplicationCounts
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACTargetApplicationCounts", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [dictionary addEntriesFromDictionary:v4];
    }

    CFRelease(v4);
  }

  return dictionary;
}

- (void)setTargetApplicationCounts:(id)counts
{
  if (counts)
  {
    countsCopy = counts;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACTargetApplicationCounts", countsCopy, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

    CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  }
}

- (id)recentCommandEntries
{
  array = [MEMORY[0x277CBEB18] array];
  CFPreferencesAppSynchronize(@"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  v3 = CFPreferencesCopyAppValue(@"CACRecentCommands", @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFArrayGetTypeID())
    {
      [array addObjectsFromArray:v4];
    }

    CFRelease(v4);
  }

  return array;
}

- (void)setRecentCommandEntries:(id)entries
{
  if (entries)
  {
    entriesCopy = entries;
    _CFPreferencesSetFileProtectionClass();
    CFPreferencesSetAppValue(@"CACRecentCommands", entriesCopy, @"com.apple.speech.SpeechRecognitionCommandAndControl.Log");

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
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  enabled = [mEMORY[0x277D79890] enabled];

  return enabled;
}

- (void)setCommandAndControlEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  [mEMORY[0x277D79890] setEnabled:enabledCopy];
}

- (NSArray)userSelectableLocaleIdentifiers
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  supportedLocales = [mEMORY[0x277D79890] supportedLocales];

  return supportedLocales;
}

- (void)setLocaleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D79890];
  identifierCopy = identifier;
  shared = [v3 shared];
  [shared setPreferredLocale:identifierCopy];
}

- (NSString)bestLocaleIdentifier
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  activeLocale = [mEMORY[0x277D79890] activeLocale];
  localeIdentifier = [activeLocale localeIdentifier];

  return localeIdentifier;
}

- (NSString)alwaysShowOverlayType
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  alwaysShowOverlayType = [mEMORY[0x277D79890] alwaysShowOverlayType];

  return alwaysShowOverlayType;
}

- (void)setAlwaysShowOverlayType:(id)type
{
  v3 = MEMORY[0x277D79890];
  typeCopy = type;
  shared = [v3 shared];
  [shared setAlwaysShowOverlayType:typeCopy];
}

- (BOOL)playSoundUponRecognition
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  playSoundUponRecognition = [mEMORY[0x277D79890] playSoundUponRecognition];

  return playSoundUponRecognition;
}

- (void)setPlaySoundUponRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  [mEMORY[0x277D79890] setPlaySoundUponRecognition:recognitionCopy];
}

- (BOOL)showTextResponseUponRecognition
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  showTextResponseUponRecognition = [mEMORY[0x277D79890] showTextResponseUponRecognition];

  return showTextResponseUponRecognition;
}

- (void)setShowTextResponseUponRecognition:(BOOL)recognition
{
  recognitionCopy = recognition;
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  [mEMORY[0x277D79890] setShowTextResponseUponRecognition:recognitionCopy];
}

- (int64_t)userHintsFeatures
{
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  if ([mEMORY[0x277D79890] showUserHints])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUserHintsFeatures:(int64_t)features
{
  v3 = features == 3;
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  [mEMORY[0x277D79890] setShowUserHints:v3];
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