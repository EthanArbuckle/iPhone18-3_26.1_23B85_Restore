@interface VOSCommandCategory
+ (BOOL)categories:(id)categories containsCommand:(id)command;
+ (NSArray)allCategories;
+ (VOSCommandCategory)advancedNavigation;
+ (VOSCommandCategory)basicNavigation;
+ (VOSCommandCategory)braille;
+ (VOSCommandCategory)brailleScreenInput;
+ (VOSCommandCategory)editing;
+ (VOSCommandCategory)handwriting;
+ (VOSCommandCategory)interaction;
+ (VOSCommandCategory)internalOnly;
+ (VOSCommandCategory)other;
+ (VOSCommandCategory)output;
+ (VOSCommandCategory)rotor;
+ (VOSCommandCategory)scrolling;
+ (VOSCommandCategory)speechAndAudio;
+ (VOSCommandCategory)system;
+ (VOSCommandCategory)textNavigation;
+ (VOSCommandCategory)voiceOverFeatures;
- (BOOL)containsCommand:(id)command;
- (VOSCommandCategory)init;
- (VOSCommandCategory)initWithCommands:(id)commands localizedCategoryName:(id)name;
@end

@implementation VOSCommandCategory

+ (VOSCommandCategory)interaction
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand PrimaryActivate];
  v3 = +[VOSCommand SecondaryActivate];
  v13[1] = v3;
  v4 = +[VOSCommand MagicTap];
  v13[2] = v4;
  v5 = +[VOSCommand Escape];
  v13[3] = v5;
  v6 = +[VOSCommand PerformLongPress];
  v13[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  v8 = [VOSCommandCategory alloc];
  v9 = VOSLocString(@"VOSCommandCategory.Interaction");
  v10 = [(VOSCommandCategory *)v8 initWithCommands:v7 localizedCategoryName:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (VOSCommandCategory)basicNavigation
{
  v28[17] = *MEMORY[0x277D85DE8];
  v27 = +[VOSCommand MoveToPreviousElement];
  v28[0] = v27;
  v26 = +[VOSCommand MoveToNextElement];
  v28[1] = v26;
  v25 = +[VOSCommand MoveToFirstElement];
  v28[2] = v25;
  v24 = +[VOSCommand MoveToElementAbove];
  v28[3] = v24;
  v23 = +[VOSCommand MoveToElementBelow];
  v28[4] = v23;
  v22 = +[VOSCommand MoveToLastElement];
  v28[5] = v22;
  v21 = +[VOSCommand MoveToCenterElement];
  v28[6] = v21;
  v20 = +[VOSCommand MoveToPreviousContainer];
  v28[7] = v20;
  v19 = +[VOSCommand MoveToNextContainer];
  v28[8] = v19;
  v2 = +[VOSCommand MoveToTopOfCurrentContainer];
  v28[9] = v2;
  v3 = +[VOSCommand MoveToBottomOfCurrentContainer];
  v28[10] = v3;
  v4 = +[VOSCommand MoveToTopOfCurrentDocument];
  v28[11] = v4;
  v5 = +[VOSCommand MoveToBottomOfCurrentDocument];
  v28[12] = v5;
  v6 = +[VOSCommand MoveToLinkedUI];
  v28[13] = v6;
  v7 = +[VOSCommand MoveToStatusBar];
  v28[14] = v7;
  v8 = +[VOSCommand MoveToPreviousElementCommunity];
  v28[15] = v8;
  v9 = +[VOSCommand MoveToNextElementCommunity];
  v28[16] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:17];

  if (_os_feature_enabled_impl())
  {
    v11 = +[VOSCommand MoveIn];
    v12 = [v10 arrayByAddingObject:v11];

    v13 = +[VOSCommand MoveOut];
    v10 = [v12 arrayByAddingObject:v13];
  }

  v14 = [VOSCommandCategory alloc];
  v15 = VOSLocString(@"VOSCommandCategory.BasicNavigation");
  v16 = [(VOSCommandCategory *)v14 initWithCommands:v10 localizedCategoryName:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (VOSCommandCategory)textNavigation
{
  v36[28] = *MEMORY[0x277D85DE8];
  v35 = +[VOSCommand MoveToPreviousCharacter];
  v36[0] = v35;
  v34 = +[VOSCommand MoveToNextCharacter];
  v36[1] = v34;
  v33 = +[VOSCommand MoveToPreviousWord];
  v36[2] = v33;
  v32 = +[VOSCommand MoveToNextWord];
  v36[3] = v32;
  v31 = +[VOSCommand MoveToPreviousSentence];
  v36[4] = v31;
  v30 = +[VOSCommand MoveToNextSentence];
  v36[5] = v30;
  v29 = +[VOSCommand MoveToPreviousParagraph];
  v36[6] = v29;
  v28 = +[VOSCommand MoveToNextParagraph];
  v36[7] = v28;
  v27 = +[VOSCommand MoveToPreviousStyleChange];
  v36[8] = v27;
  v26 = +[VOSCommand MoveToNextStyleChange];
  v36[9] = v26;
  v25 = +[VOSCommand MoveToPreviousFontChange];
  v36[10] = v25;
  v24 = +[VOSCommand MoveToNextFontChange];
  v36[11] = v24;
  v23 = +[VOSCommand MoveToPreviousUnderlineText];
  v36[12] = v23;
  v22 = +[VOSCommand MoveToNextUnderlineText];
  v36[13] = v22;
  v21 = +[VOSCommand MoveToPreviousItalicText];
  v36[14] = v21;
  v20 = +[VOSCommand MoveToNextItalicText];
  v36[15] = v20;
  v19 = +[VOSCommand MoveToPreviousBoldText];
  v36[16] = v19;
  v17 = +[VOSCommand MoveToNextBoldText];
  v36[17] = v17;
  v2 = +[VOSCommand MoveToPreviousColorChange];
  v36[18] = v2;
  v3 = +[VOSCommand MoveToNextColorChange];
  v36[19] = v3;
  v4 = +[VOSCommand MoveToPreviousPlainText];
  v36[20] = v4;
  v5 = +[VOSCommand MoveToNextPlainText];
  v36[21] = v5;
  v6 = +[VOSCommand MoveToPreviousMisspelledWord];
  v36[22] = v6;
  v7 = +[VOSCommand MoveToNextMisspelledWord];
  v36[23] = v7;
  v8 = +[VOSCommand MoveToPreviousBlockquote];
  v36[24] = v8;
  v9 = +[VOSCommand MoveToNextBlockquote];
  v36[25] = v9;
  v10 = +[VOSCommand MoveToPreviousSameBlockquote];
  v36[26] = v10;
  v11 = +[VOSCommand MoveToNextSameBlockquote];
  v36[27] = v11;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:28];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.TextNavigation");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v18 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (VOSCommandCategory)editing
{
  v13[5] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand Cut];
  v3 = +[VOSCommand Copy];
  v13[1] = v3;
  v4 = +[VOSCommand Paste];
  v13[2] = v4;
  v5 = +[VOSCommand Undo];
  v13[3] = v5;
  v6 = +[VOSCommand Redo];
  v13[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];

  v8 = [VOSCommandCategory alloc];
  v9 = VOSLocString(@"VOSCommandCategory.Editing");
  v10 = [(VOSCommandCategory *)v8 initWithCommands:v7 localizedCategoryName:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (VOSCommandCategory)advancedNavigation
{
  v40[32] = *MEMORY[0x277D85DE8];
  v39 = +[VOSCommand MoveToPreviousFrame];
  v40[0] = v39;
  v38 = +[VOSCommand MoveToNextFrame];
  v40[1] = v38;
  v37 = +[VOSCommand MoveToPreviousTable];
  v40[2] = v37;
  v36 = +[VOSCommand MoveToNextTable];
  v40[3] = v36;
  v35 = +[VOSCommand MoveToPreviousColumn];
  v40[4] = v35;
  v34 = +[VOSCommand MoveToNextColumn];
  v40[5] = v34;
  v33 = +[VOSCommand MoveToPreviousList];
  v40[6] = v33;
  v32 = +[VOSCommand MoveToNextList];
  v40[7] = v32;
  v31 = +[VOSCommand MoveToPreviousSameElement];
  v40[8] = v31;
  v30 = +[VOSCommand MoveToNextSameElement];
  v40[9] = v30;
  v29 = +[VOSCommand MoveToPreviousDifferentElement];
  v40[10] = v29;
  v28 = +[VOSCommand MoveToNextDifferentElement];
  v40[11] = v28;
  v27 = +[VOSCommand MoveToPreviousHeading];
  v40[12] = v27;
  v26 = +[VOSCommand MoveToNextHeading];
  v40[13] = v26;
  v25 = +[VOSCommand MoveToPreviousSameHeading];
  v40[14] = v25;
  v24 = +[VOSCommand MoveToNextSameHeading];
  v40[15] = v24;
  v23 = +[VOSCommand MoveToPreviousLink];
  v40[16] = v23;
  v22 = +[VOSCommand MoveToNextLink];
  v40[17] = v22;
  v21 = +[VOSCommand MoveToPreviousVisitedLink];
  v40[18] = v21;
  v20 = +[VOSCommand MoveToNextVisitedLink];
  v40[19] = v20;
  v18 = +[VOSCommand MoveToPreviousControl];
  v40[20] = v18;
  v17 = +[VOSCommand MoveToNextControl];
  v40[21] = v17;
  v2 = +[VOSCommand MoveToPreviousGraphic];
  v40[22] = v2;
  v3 = +[VOSCommand MoveToNextRadioGroup];
  v40[23] = v3;
  v4 = +[VOSCommand MoveToPreviousRadioGroup];
  v40[24] = v4;
  v5 = +[VOSCommand MoveToNextCheckbox];
  v40[25] = v5;
  v6 = +[VOSCommand MoveToPreviousCheckbox];
  v40[26] = v6;
  v7 = +[VOSCommand MoveToNextGraphic];
  v40[27] = v7;
  v8 = +[VOSCommand MoveToSystemFocusedElement];
  v40[28] = v8;
  v9 = +[VOSCommand FindElementWithTextSearch];
  v40[29] = v9;
  v10 = +[VOSCommand PreviousSearchResult];
  v40[30] = v10;
  v11 = +[VOSCommand NextSearchResult];
  v40[31] = v11;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:32];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.AdvancedNavigation");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v19 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (VOSCommandCategory)braille
{
  v22[14] = *MEMORY[0x277D85DE8];
  v21 = +[VOSCommand BraillePanLeft];
  v22[0] = v21;
  v20 = +[VOSCommand BraillePanRight];
  v22[1] = v20;
  v19 = +[VOSCommand BrailleNextInputTable];
  v22[2] = v19;
  v18 = +[VOSCommand BrailleNextOutputTable];
  v22[3] = v18;
  v17 = +[VOSCommand BrailleAnnouncementMode];
  v22[4] = v17;
  v2 = +[VOSCommand BrailleTranslate];
  v22[5] = v2;
  v3 = +[VOSCommand BrailleToggleWordWrap];
  v22[6] = v3;
  v4 = +[VOSCommand BrailleTranslateToClipboard];
  v22[7] = v4;
  v5 = +[VOSCommand BrailleEnableAutoAdvance];
  v22[8] = v5;
  v6 = +[VOSCommand BrailleIncreaseAutoAdvance];
  v22[9] = v6;
  v7 = +[VOSCommand BrailleDecreaseAutoAdvance];
  v22[10] = v7;
  v8 = +[VOSCommand BrailleReconnectBrailleDisplays];
  v22[11] = v8;
  v9 = +[VOSCommand BrailleTogglePerkinsKeyboardInput];
  v22[12] = v9;
  v10 = +[VOSCommand BrailleToggleKeyboardBrailleUI];
  v22[13] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:14];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.Braille");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v11 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (VOSCommandCategory)speechAndAudio
{
  v15[7] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand ToggleMute];
  v3 = +[VOSCommand ToggleSpeech];
  v15[1] = v3;
  v4 = +[VOSCommand ChangeAudioDuckingMode];
  v15[2] = v4;
  v5 = +[VOSCommand VolumeUp];
  v15[3] = v5;
  v6 = +[VOSCommand VolumeDown];
  v15[4] = v6;
  v7 = +[VOSCommand NextSpeechVoice];
  v15[5] = v7;
  v8 = +[VOSCommand PreviousSpeechVoice];
  v15[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:7];

  v10 = [VOSCommandCategory alloc];
  v11 = VOSLocString(@"VOSCommandCategory.SpeechAndAudio");
  v12 = [(VOSCommandCategory *)v10 initWithCommands:v9 localizedCategoryName:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (VOSCommandCategory)output
{
  v36[21] = *MEMORY[0x277D85DE8];
  v34 = +[VOSCommand SummarizeElement];
  v36[0] = v34;
  v33 = +[VOSCommand AnalyzeElement];
  v36[1] = v33;
  v32 = +[VOSCommand ReadAll];
  v36[2] = v32;
  v31 = +[VOSCommand ReadFromTop];
  v36[3] = v31;
  v30 = +[VOSCommand ReadLine];
  v36[4] = v30;
  v29 = +[VOSCommand ReadWord];
  v36[5] = v29;
  v28 = +[VOSCommand ReadURL];
  v36[6] = v28;
  v27 = +[VOSCommand ReadSelectedText];
  v36[7] = v27;
  v26 = +[VOSCommand ReadTextStyle];
  v36[8] = v26;
  v25 = +[VOSCommand ReadHint];
  v36[9] = v25;
  v24 = +[VOSCommand ReadCharacter];
  v36[10] = v24;
  v23 = +[VOSCommand ReadCharacterPhonetically];
  v36[11] = v23;
  v22 = +[VOSCommand ReadRowHeader];
  v36[12] = v22;
  v2 = +[VOSCommand ReadRowContents];
  v36[13] = v2;
  v3 = +[VOSCommand ReadTableRowColumn];
  v36[14] = v3;
  v4 = +[VOSCommand ReadTableRowColumnCell];
  v36[15] = v4;
  v5 = +[VOSCommand ReadColumnHeader];
  v36[16] = v5;
  v6 = +[VOSCommand ReadColumnContents];
  v36[17] = v6;
  v7 = +[VOSCommand ReadLineCount];
  v36[18] = v7;
  v8 = +[VOSCommand SummarizeSystemFocusedElement];
  v36[19] = v8;
  v9 = +[VOSCommand ReadSystemFocusedElementDetails];
  v36[20] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:21];

  if (AXRuntimeCheck_SupportsVoiceOverReadPrefixes())
  {
    v11 = +[VOSCommand ReadAllPrefixes];
    v35[0] = v11;
    v12 = +[VOSCommand ReadFromTopPrefixes];
    v35[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v14 = [v10 arrayByAddingObjectsFromArray:v13];

    v10 = v14;
  }

  if (AXDeviceHasForcePress3dTouch())
  {
    v15 = +[VOSCommand PreviewElementWith3DTouch];
    v16 = [v10 arrayByAddingObject:v15];

    v10 = v16;
  }

  v17 = [VOSCommandCategory alloc];
  v18 = VOSLocString(@"VOSCommandCategory.Output");
  v19 = [(VOSCommandCategory *)v17 initWithCommands:v10 localizedCategoryName:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (VOSCommandCategory)rotor
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand PreviousRotor];
  v12[0] = v2;
  v3 = +[VOSCommand NextRotor];
  v12[1] = v3;
  v4 = +[VOSCommand PreviousRotorItem];
  v12[2] = v4;
  v5 = +[VOSCommand NextRotorItem];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v7 = [VOSCommandCategory alloc];
  v8 = VOSLocString(@"VOSCommandCategory.Rotor");
  v9 = [(VOSCommandCategory *)v7 initWithCommands:v6 localizedCategoryName:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (VOSCommandCategory)scrolling
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand ScrollLeft];
  v14[0] = v2;
  v3 = +[VOSCommand ScrollRight];
  v14[1] = v3;
  v4 = +[VOSCommand ScrollUp];
  v14[2] = v4;
  v5 = +[VOSCommand ScrollDown];
  v14[3] = v5;
  v6 = +[VOSCommand ScrollToTop];
  v14[4] = v6;
  v7 = +[VOSCommand ScrollToBottom];
  v14[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:6];

  v9 = [VOSCommandCategory alloc];
  v10 = VOSLocString(@"VOSCommandCategory.Scrolling");
  v11 = [(VOSCommandCategory *)v9 initWithCommands:v8 localizedCategoryName:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (VOSCommandCategory)voiceOverFeatures
{
  v34[16] = *MEMORY[0x277D85DE8];
  v33 = +[VOSCommand ShowItemChooser];
  v34[0] = v33;
  v32 = +[VOSCommand OpenVoiceOverSettings];
  v34[1] = v32;
  v31 = +[VOSCommand ToggleScreenCurtain];
  v34[2] = v31;
  v30 = +[VOSCommand ToggleSoundCurtain];
  v34[3] = v30;
  v29 = +[VOSCommand StartHelp];
  v34[4] = v29;
  v28 = +[VOSCommand ToggleCaptionPanel];
  v34[5] = v28;
  v27 = +[VOSCommand ToggleIgnoreTrackpad];
  v34[6] = v27;
  v26 = +[VOSCommand LabelElement];
  v34[7] = v26;
  v2 = +[VOSCommand MonitorElement];
  v34[8] = v2;
  v3 = +[VOSCommand ToggleSingleLetterQuickNav];
  v34[9] = v3;
  v4 = +[VOSCommand ToggleQuickNav];
  v34[10] = v4;
  v5 = +[VOSCommand ToggleLockModifierKeys];
  v34[11] = v5;
  v6 = +[VOSCommand ToggleLiveRegions];
  v34[12] = v6;
  v7 = +[VOSCommand ActivateBrailleScreenInput];
  v34[13] = v7;
  v8 = +[VOSCommand ActivateBrailleScreenInputCommand];
  v34[14] = v8;
  v9 = +[VOSCommand LaunchPeopleDetection];
  v34[15] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:16];

  if ((AXDeviceIsPad() & 1) == 0)
  {
    v11 = +[VOSCommand ActivateBrailleScreenInputPreferringSingleHand];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v12;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  if ([processInfo physicalMemory] > 0x773593FF)
  {
    v14 = AXRuntimeCheck_HasANE();

    if (!v14)
    {
      goto LABEL_7;
    }

    processInfo = +[VOSCommand DescribeImage];
    v15 = [v10 arrayByAddingObject:processInfo];

    v10 = v15;
  }

LABEL_7:
  if (_os_feature_enabled_impl())
  {
    v16 = +[VOSCommand ToggleSettingsHUD];
    v17 = [v10 arrayByAddingObject:v16];

    v10 = v17;
  }

  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  if ([processInfo2 physicalMemory] > 0x773593FF)
  {
    v19 = AXRuntimeCheck_HasANE();

    if (!v19)
    {
      goto LABEL_13;
    }

    processInfo2 = +[VOSCommand ToggleAutomaticAccessibility];
    v20 = [v10 arrayByAddingObject:processInfo2];

    v10 = v20;
  }

LABEL_13:
  v21 = [VOSCommandCategory alloc];
  v22 = VOSLocString(@"VOSCommandCategory.VoiceOverFeatures");
  v23 = [(VOSCommandCategory *)v21 initWithCommands:v10 localizedCategoryName:v22];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (VOSCommandCategory)system
{
  v25[15] = *MEMORY[0x277D85DE8];
  v24 = +[VOSCommand ShowNotificationCenter];
  v25[0] = v24;
  v23 = +[VOSCommand ShowControlCenter];
  v25[1] = v23;
  v22 = +[VOSCommand ActivateSpeakScreen];
  v25[2] = v22;
  v21 = +[VOSCommand ActivateHomeButton];
  v25[3] = v21;
  v20 = +[VOSCommand ToggleDock];
  v25[4] = v20;
  v19 = +[VOSCommand ToggleAppSwitcher];
  v25[5] = v19;
  v18 = +[VOSCommand ActivateLockButton];
  v25[6] = v18;
  v2 = +[VOSCommand ShowSpotlight];
  v25[7] = v2;
  v3 = +[VOSCommand ActivateAccessibilityShortcut];
  v25[8] = v3;
  v4 = +[VOSCommand ToggleReachability];
  v25[9] = v4;
  v5 = +[VOSCommand TakeScreenshot];
  v25[10] = v5;
  v6 = +[VOSCommand ToggleTypeToSiri];
  v25[11] = v6;
  v7 = +[VOSCommand SwitchToPreviousApp];
  v25[12] = v7;
  v8 = +[VOSCommand SwitchToNextApp];
  v25[13] = v8;
  v9 = +[VOSCommand NextKeyboardLanguage];
  v25[14] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:15];

  if (AXDeviceIsPad())
  {
    v11 = +[VOSCommand ToggleQuickNote];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v12;
  }

  v13 = [VOSCommandCategory alloc];
  v14 = VOSLocString(@"VOSCommandCategory.System");
  v15 = [(VOSCommandCategory *)v13 initWithCommands:v10 localizedCategoryName:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (VOSCommandCategory)other
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand ToggleTextSelection];
  v10[0] = v2;
  v3 = +[VOSCommand CopySpeechToClipboard];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v5 = [VOSCommandCategory alloc];
  v6 = VOSLocString(@"VOSCommandCategory.Other");
  v7 = [(VOSCommandCategory *)v5 initWithCommands:v4 localizedCategoryName:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (VOSCommandCategory)internalOnly
{
  v2 = [VOSCommandCategory alloc];
  if (AXIsInternalInstall())
  {
    v3 = @"Internal Only";
  }

  else
  {
    v3 = &stru_283729578;
  }

  v4 = [(VOSCommandCategory *)v2 initWithCommands:MEMORY[0x277CBEBF8] localizedCategoryName:v3];

  return v4;
}

+ (NSArray)allCategories
{
  v20[13] = *MEMORY[0x277D85DE8];
  v19 = +[VOSCommandCategory interaction];
  v20[0] = v19;
  v18 = +[VOSCommandCategory basicNavigation];
  v20[1] = v18;
  v17 = +[VOSCommandCategory textNavigation];
  v20[2] = v17;
  v16 = +[VOSCommandCategory advancedNavigation];
  v20[3] = v16;
  v15 = +[VOSCommandCategory editing];
  v20[4] = v15;
  v2 = +[VOSCommandCategory rotor];
  v20[5] = v2;
  v3 = +[VOSCommandCategory scrolling];
  v20[6] = v3;
  v4 = +[VOSCommandCategory speechAndAudio];
  v20[7] = v4;
  v5 = +[VOSCommandCategory output];
  v20[8] = v5;
  v6 = +[VOSCommandCategory braille];
  v20[9] = v6;
  v7 = +[VOSCommandCategory voiceOverFeatures];
  v20[10] = v7;
  v8 = +[VOSCommandCategory system];
  v20[11] = v8;
  v9 = +[VOSCommandCategory other];
  v20[12] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:13];

  if (AXIsInternalInstall())
  {
    v11 = [v10 mutableCopy];
    v12 = +[VOSCommandCategory internalOnly];
    [v11 addObject:v12];

    v10 = v11;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (VOSCommandCategory)handwriting
{
  v19[11] = *MEMORY[0x277D85DE8];
  v18 = +[VOSCommand PreviousHandwritingCharacterMode];
  v19[0] = v18;
  v17 = +[VOSCommand NextHandwritingCharacterMode];
  v19[1] = v17;
  v2 = +[VOSCommand AnnounceHandwritingCharacterMode];
  v19[2] = v2;
  v3 = +[VOSCommand GesturedTextInputInsertSpace];
  v19[3] = v3;
  v4 = +[VOSCommand GesturedTextInputBackspace];
  v19[4] = v4;
  v5 = +[VOSCommand GesturedTextInputDeleteWord];
  v19[5] = v5;
  v6 = +[VOSCommand GesturedTextInputPerformReturnEquivalent];
  v19[6] = v6;
  v7 = +[VOSCommand GesturedTextInputPreviousSuggestion];
  v19[7] = v7;
  v8 = +[VOSCommand GesturedTextInputNextSuggestion];
  v19[8] = v8;
  v9 = +[VOSCommand GesturedTextInputLaunchApp];
  v19[9] = v9;
  v10 = +[VOSCommand GesturedTextInputNextKeyboardLanguage];
  v19[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:11];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.Handwriting");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v11 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (VOSCommandCategory)brailleScreenInput
{
  v28[20] = *MEMORY[0x277D85DE8];
  v27 = +[VOSCommand BSIExit];
  v28[0] = v27;
  v26 = +[VOSCommand BSIPreviousBrailleMode];
  v28[1] = v26;
  v25 = +[VOSCommand BSINextBrailleMode];
  v28[2] = v25;
  v24 = +[VOSCommand BSITranslateImmediately];
  v28[3] = v24;
  v23 = +[VOSCommand BSIOrientationLock];
  v28[4] = v23;
  v22 = +[VOSCommand BSIQuickAction];
  v28[5] = v22;
  v21 = +[VOSCommand GesturedTextInputInsertSpace];
  v28[6] = v21;
  v20 = +[VOSCommand GesturedTextInputBackspace];
  v28[7] = v20;
  v19 = +[VOSCommand GesturedTextInputDeleteWord];
  v28[8] = v19;
  v18 = +[VOSCommand GesturedTextInputPerformReturnEquivalent];
  v28[9] = v18;
  v17 = +[VOSCommand GesturedTextInputPreviousSuggestion];
  v28[10] = v17;
  v2 = +[VOSCommand GesturedTextInputNextSuggestion];
  v28[11] = v2;
  v3 = +[VOSCommand GesturedTextInputLaunchApp];
  v28[12] = v3;
  v4 = +[VOSCommand GesturedTextInputNextKeyboardLanguage];
  v28[13] = v4;
  v5 = +[VOSCommand GesturedTextInputNextBrailleTable];
  v28[14] = v5;
  v6 = +[VOSCommand Cut];
  v28[15] = v6;
  v7 = +[VOSCommand Copy];
  v28[16] = v7;
  v8 = +[VOSCommand Paste];
  v28[17] = v8;
  v9 = +[VOSCommand Undo];
  v28[18] = v9;
  v10 = +[VOSCommand Redo];
  v28[19] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:20];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.BSI");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v11 localizedCategoryName:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (VOSCommandCategory)initWithCommands:(id)commands localizedCategoryName:(id)name
{
  commandsCopy = commands;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = VOSCommandCategory;
  v8 = [(VOSCommandCategory *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(VOSCommandCategory *)v8 setLocalizedCategoryName:nameCopy];
    v10 = [commandsCopy sortedArrayUsingComparator:&__block_literal_global_8];
    [(VOSCommandCategory *)v9 setCommands:v10];
  }

  return v9;
}

uint64_t __61__VOSCommandCategory_initWithCommands_localizedCategoryName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (VOSCommandCategory)init
{
  array = [MEMORY[0x277CBEA60] array];
  v4 = [(VOSCommandCategory *)self initWithCommands:array localizedCategoryName:&stru_283729578];

  return v4;
}

- (BOOL)containsCommand:(id)command
{
  commandCopy = command;
  commands = [(VOSCommandCategory *)self commands];
  v6 = [commands containsObject:commandCopy];

  return v6;
}

+ (BOOL)categories:(id)categories containsCommand:(id)command
{
  v18 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  commandCopy = command;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = categoriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v13 + 1) + 8 * i) containsCommand:{commandCopy, v13}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end