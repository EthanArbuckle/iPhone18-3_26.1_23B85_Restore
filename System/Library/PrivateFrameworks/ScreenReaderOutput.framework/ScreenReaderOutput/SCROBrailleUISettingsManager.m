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
- (float)liveSpeechPitchForKeyboardID:(id)a3;
- (float)liveSpeechRateForKeyboardID:(id)a3;
- (id)enabledMainMenuItems;
- (id)liveSpeechVoiceIDForKeyboardID:(id)a3;
- (int64_t)zoomOutNumCellsPerElement;
- (unint64_t)brailleNotesSortDirection;
- (unint64_t)brailleNotesSortType;
- (unint64_t)liveCaptionsSource;
- (void)setLiveCaptionsSource:(unint64_t)a3;
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
  v2 = [(objc_class *)getAXSpringBoardServerClass() server];
  v3 = [v2 isScreenLockedWithPasscode:&v5];

  return v3 & v5;
}

- (id)enabledMainMenuItems
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v16 voiceOverTouchBrailleUIMainMenuItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"enabled"];
        v10 = [v9 BOOLValue];

        if (v10)
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

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)shouldReopenViewsWhenRestart
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIShouldReopenViewsWhenRestart];

  return v3;
}

- (BOOL)isReadListItemsEnabled
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIReadListItemsEnabled];

  return v3;
}

- (BOOL)showsBackButton
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIShowsBackButton];

  return v3;
}

- (BOOL)isTypingSpeechFeedbackEnabled
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUITypingSpeechFeedbackEnabled];

  return v3;
}

- (BOOL)isVisualsEnabled
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIVisualsEnabled];

  return v3;
}

- (unint64_t)brailleNotesSortType
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIBrailleNotesSortType];

  return v3 != 0;
}

- (unint64_t)brailleNotesSortDirection
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIBrailleNotesSortDirection];

  return v3 != 0;
}

- (BOOL)calculatorUsesUEBMath
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUICalculatorUsesUEBMath];

  return v3;
}

- (unint64_t)liveCaptionsSource
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUILiveCaptionsSource];

  return v3 != 0;
}

- (void)setLiveCaptionsSource:(unint64_t)a3
{
  v3 = a3 != 0;
  v4 = [(objc_class *)getAXSettingsClass() sharedInstance];
  [v4 setVoiceOverTouchBrailleUILiveCaptionsSource:v3];
}

- (id)liveSpeechVoiceIDForKeyboardID:(id)a3
{
  v3 = getAXSettingsClass;
  v4 = a3;
  v5 = [(objc_class *)v3() sharedInstance];
  v6 = [v5 liveSpeechVoiceIdentifierForKeyboardID:v4];

  return v6;
}

- (float)liveSpeechRateForKeyboardID:(id)a3
{
  v3 = getAXSettingsClass;
  v4 = a3;
  v5 = [(objc_class *)v3() sharedInstance];
  [v5 liveSpeechRateForKeyboardID:v4];
  v7 = v6;

  return v7;
}

- (float)liveSpeechPitchForKeyboardID:(id)a3
{
  v3 = getAXSettingsClass;
  v4 = a3;
  v5 = [(objc_class *)v3() sharedInstance];
  [v5 liveSpeechPitchForKeyboardID:v4];
  v7 = v6;

  return v7;
}

- (BOOL)isBRFReflowEnabled
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIIsBRFReflowEnabled];

  return v3;
}

- (BOOL)isBRFStripPageIndicatorsEnabled
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled];

  return v3;
}

- (int64_t)zoomOutNumCellsPerElement
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleZoomOutNumCellsPerElement];

  return v3;
}

- (BOOL)himsUsesDot7ForCommands
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleHIMSUsesDot7ForCommand];

  return v3;
}

- (BOOL)usesUnderlineCursor
{
  v2 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v3 = [v2 voiceOverTouchBrailleUsesUnderlineCursor];

  return v3;
}

@end