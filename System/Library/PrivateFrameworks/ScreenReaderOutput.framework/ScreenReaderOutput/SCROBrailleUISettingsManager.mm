@interface SCROBrailleUISettingsManager
+ (id)sharedInstance;
- (BOOL)calculatorUsesUEBMath;
- (BOOL)himsUsesDot7ForCommands;
- (BOOL)isBRFReflowEnabled;
- (BOOL)isBRFStripPageIndicatorsEnabled;
- (BOOL)isReadListItemsEnabled;
- (BOOL)isSpringBoardLocked;
- (BOOL)isTypingSpeechFeedbackEnabled;
- (BOOL)isVisualsEnabled;
- (BOOL)shouldReopenViewsWhenRestart;
- (BOOL)showsBackButton;
- (BOOL)usesUnderlineCursor;
- (float)liveSpeechPitchForKeyboardID:(id)d;
- (float)liveSpeechRateForKeyboardID:(id)d;
- (id)enabledMainMenuItems;
- (id)liveSpeechVoiceIDForKeyboardID:(id)d;
- (int64_t)zoomOutNumCellsPerElement;
- (unint64_t)brailleNotesSortDirection;
- (unint64_t)brailleNotesSortType;
- (unint64_t)liveCaptionsSource;
- (void)setLiveCaptionsSource:(unint64_t)source;
@end

@implementation SCROBrailleUISettingsManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SCROBrailleUISettingsManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __46__SCROBrailleUISettingsManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleUISettingsManager);
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (BOOL)isSpringBoardLocked
{
  v5 = 0;
  server = [(objc_class *)getAXSpringBoardServerClass() server];
  v3 = [server isScreenLockedWithPasscode:&v5];

  return v3 & v5;
}

- (id)enabledMainMenuItems
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIMainMenuItems = [sharedInstance voiceOverTouchBrailleUIMainMenuItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [voiceOverTouchBrailleUIMainMenuItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(voiceOverTouchBrailleUIMainMenuItems);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"enabled"];
        bOOLValue = [v9 BOOLValue];

        if (bOOLValue)
        {
          v11 = [v8 objectForKeyedSubscript:@"ID"];
          v12 = v11;
          if (v11 && ([v11 integerValue] - 1) <= 6)
          {
            v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
            [v2 addObject:v13];
          }
        }
      }

      v5 = [voiceOverTouchBrailleUIMainMenuItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldReopenViewsWhenRestart
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIShouldReopenViewsWhenRestart = [sharedInstance voiceOverTouchBrailleUIShouldReopenViewsWhenRestart];

  return voiceOverTouchBrailleUIShouldReopenViewsWhenRestart;
}

- (BOOL)isReadListItemsEnabled
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIReadListItemsEnabled = [sharedInstance voiceOverTouchBrailleUIReadListItemsEnabled];

  return voiceOverTouchBrailleUIReadListItemsEnabled;
}

- (BOOL)showsBackButton
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIShowsBackButton = [sharedInstance voiceOverTouchBrailleUIShowsBackButton];

  return voiceOverTouchBrailleUIShowsBackButton;
}

- (BOOL)isTypingSpeechFeedbackEnabled
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUITypingSpeechFeedbackEnabled = [sharedInstance voiceOverTouchBrailleUITypingSpeechFeedbackEnabled];

  return voiceOverTouchBrailleUITypingSpeechFeedbackEnabled;
}

- (BOOL)isVisualsEnabled
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIVisualsEnabled = [sharedInstance voiceOverTouchBrailleUIVisualsEnabled];

  return voiceOverTouchBrailleUIVisualsEnabled;
}

- (unint64_t)brailleNotesSortType
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIBrailleNotesSortType = [sharedInstance voiceOverTouchBrailleUIBrailleNotesSortType];

  return voiceOverTouchBrailleUIBrailleNotesSortType != 0;
}

- (unint64_t)brailleNotesSortDirection
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIBrailleNotesSortDirection = [sharedInstance voiceOverTouchBrailleUIBrailleNotesSortDirection];

  return voiceOverTouchBrailleUIBrailleNotesSortDirection != 0;
}

- (BOOL)calculatorUsesUEBMath
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUICalculatorUsesUEBMath = [sharedInstance voiceOverTouchBrailleUICalculatorUsesUEBMath];

  return voiceOverTouchBrailleUICalculatorUsesUEBMath;
}

- (unint64_t)liveCaptionsSource
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUILiveCaptionsSource = [sharedInstance voiceOverTouchBrailleUILiveCaptionsSource];

  return voiceOverTouchBrailleUILiveCaptionsSource != 0;
}

- (void)setLiveCaptionsSource:(unint64_t)source
{
  v3 = source != 0;
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  [sharedInstance setVoiceOverTouchBrailleUILiveCaptionsSource:v3];
}

- (id)liveSpeechVoiceIDForKeyboardID:(id)d
{
  v3 = getAXSettingsClass;
  dCopy = d;
  sharedInstance = [(objc_class *)v3() sharedInstance];
  v6 = [sharedInstance liveSpeechVoiceIdentifierForKeyboardID:dCopy];

  return v6;
}

- (float)liveSpeechRateForKeyboardID:(id)d
{
  v3 = getAXSettingsClass;
  dCopy = d;
  sharedInstance = [(objc_class *)v3() sharedInstance];
  [sharedInstance liveSpeechRateForKeyboardID:dCopy];
  v7 = v6;

  return v7;
}

- (float)liveSpeechPitchForKeyboardID:(id)d
{
  v3 = getAXSettingsClass;
  dCopy = d;
  sharedInstance = [(objc_class *)v3() sharedInstance];
  [sharedInstance liveSpeechPitchForKeyboardID:dCopy];
  v7 = v6;

  return v7;
}

- (BOOL)isBRFReflowEnabled
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIIsBRFReflowEnabled = [sharedInstance voiceOverTouchBrailleUIIsBRFReflowEnabled];

  return voiceOverTouchBrailleUIIsBRFReflowEnabled;
}

- (BOOL)isBRFStripPageIndicatorsEnabled
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled = [sharedInstance voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled];

  return voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled;
}

- (int64_t)zoomOutNumCellsPerElement
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleZoomOutNumCellsPerElement = [sharedInstance voiceOverTouchBrailleZoomOutNumCellsPerElement];

  return voiceOverTouchBrailleZoomOutNumCellsPerElement;
}

- (BOOL)himsUsesDot7ForCommands
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleHIMSUsesDot7ForCommand = [sharedInstance voiceOverTouchBrailleHIMSUsesDot7ForCommand];

  return voiceOverTouchBrailleHIMSUsesDot7ForCommand;
}

- (BOOL)usesUnderlineCursor
{
  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  voiceOverTouchBrailleUsesUnderlineCursor = [sharedInstance voiceOverTouchBrailleUsesUnderlineCursor];

  return voiceOverTouchBrailleUsesUnderlineCursor;
}

@end