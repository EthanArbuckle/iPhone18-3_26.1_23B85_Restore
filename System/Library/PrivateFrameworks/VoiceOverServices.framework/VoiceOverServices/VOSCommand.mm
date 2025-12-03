@interface VOSCommand
+ (NSSet)allBuiltInCommands;
+ (VOSCommand)ActivateAccessibilityShortcut;
+ (VOSCommand)ActivateBrailleScreenInput;
+ (VOSCommand)ActivateBrailleScreenInputCommand;
+ (VOSCommand)ActivateBrailleScreenInputPreferringSingleHand;
+ (VOSCommand)ActivateHomeButton;
+ (VOSCommand)ActivateLockButton;
+ (VOSCommand)ActivateSpeakScreen;
+ (VOSCommand)AnalyzeElement;
+ (VOSCommand)AnnounceHandwritingCharacterMode;
+ (VOSCommand)BSIEscape;
+ (VOSCommand)BSIExit;
+ (VOSCommand)BSINextBrailleMode;
+ (VOSCommand)BSINextRotor;
+ (VOSCommand)BSINextTextSegment;
+ (VOSCommand)BSINextTextSegmentType;
+ (VOSCommand)BSINextUsage;
+ (VOSCommand)BSIOrientationLock;
+ (VOSCommand)BSIPreviousBrailleMode;
+ (VOSCommand)BSIPreviousRotor;
+ (VOSCommand)BSIPreviousTextSegment;
+ (VOSCommand)BSIPreviousTextSegmentType;
+ (VOSCommand)BSIPreviousUsage;
+ (VOSCommand)BSIQuickAction;
+ (VOSCommand)BSISelectNextTextSegment;
+ (VOSCommand)BSISelectPreviousTextSegment;
+ (VOSCommand)BSITranslateImmediately;
+ (VOSCommand)BrailleActivateBrailleUIBrailleNotes;
+ (VOSCommand)BrailleActivateBrailleUIChooseItem;
+ (VOSCommand)BrailleActivateBrailleUIDateTime;
+ (VOSCommand)BrailleActivateBrailleUIFinder;
+ (VOSCommand)BrailleActivateBrailleUILaunchApp;
+ (VOSCommand)BrailleActivateBrailleUILiveCaptions;
+ (VOSCommand)BrailleActivateBrailleUINemethCalculator;
+ (VOSCommand)BrailleAnnouncementMode;
+ (VOSCommand)BrailleDecreaseAutoAdvance;
+ (VOSCommand)BrailleEnableAutoAdvance;
+ (VOSCommand)BrailleIncreaseAutoAdvance;
+ (VOSCommand)BrailleNextInputTable;
+ (VOSCommand)BrailleNextOutputTable;
+ (VOSCommand)BraillePanLeft;
+ (VOSCommand)BraillePanRight;
+ (VOSCommand)BrailleReconnectBrailleDisplays;
+ (VOSCommand)BrailleToggleBrailleUI;
+ (VOSCommand)BrailleToggleKeyboardBrailleUI;
+ (VOSCommand)BrailleTogglePerkinsKeyboardInput;
+ (VOSCommand)BrailleToggleWordWrap;
+ (VOSCommand)BrailleTranslate;
+ (VOSCommand)BrailleTranslateToClipboard;
+ (VOSCommand)ChangeAudioDuckingMode;
+ (VOSCommand)Copy;
+ (VOSCommand)CopySpeechToClipboard;
+ (VOSCommand)Cut;
+ (VOSCommand)DescribeCameraScene;
+ (VOSCommand)DescribeImage;
+ (VOSCommand)Escape;
+ (VOSCommand)FindElementWithTextSearch;
+ (VOSCommand)GesturedTextInputBackspace;
+ (VOSCommand)GesturedTextInputDeleteWord;
+ (VOSCommand)GesturedTextInputInsertSpace;
+ (VOSCommand)GesturedTextInputLaunchApp;
+ (VOSCommand)GesturedTextInputNextBrailleTable;
+ (VOSCommand)GesturedTextInputNextKeyboardLanguage;
+ (VOSCommand)GesturedTextInputNextSuggestion;
+ (VOSCommand)GesturedTextInputPerformReturnEquivalent;
+ (VOSCommand)GesturedTextInputPreviousSuggestion;
+ (VOSCommand)Invalid;
+ (VOSCommand)LabelElement;
+ (VOSCommand)LaunchPeopleDetection;
+ (VOSCommand)MagicTap;
+ (VOSCommand)MonitorElement;
+ (VOSCommand)MoveIn;
+ (VOSCommand)MoveOut;
+ (VOSCommand)MoveToBottomOfCurrentContainer;
+ (VOSCommand)MoveToBottomOfCurrentDocument;
+ (VOSCommand)MoveToCenterElement;
+ (VOSCommand)MoveToElementAbove;
+ (VOSCommand)MoveToElementBelow;
+ (VOSCommand)MoveToFirstElement;
+ (VOSCommand)MoveToFirstWord;
+ (VOSCommand)MoveToLastElement;
+ (VOSCommand)MoveToLastWord;
+ (VOSCommand)MoveToLinkedUI;
+ (VOSCommand)MoveToNextBlockquote;
+ (VOSCommand)MoveToNextBoldText;
+ (VOSCommand)MoveToNextCharacter;
+ (VOSCommand)MoveToNextCheckbox;
+ (VOSCommand)MoveToNextColorChange;
+ (VOSCommand)MoveToNextColumn;
+ (VOSCommand)MoveToNextContainer;
+ (VOSCommand)MoveToNextControl;
+ (VOSCommand)MoveToNextDifferentElement;
+ (VOSCommand)MoveToNextElement;
+ (VOSCommand)MoveToNextElementCommunity;
+ (VOSCommand)MoveToNextFontChange;
+ (VOSCommand)MoveToNextFrame;
+ (VOSCommand)MoveToNextGraphic;
+ (VOSCommand)MoveToNextHeading;
+ (VOSCommand)MoveToNextItalicText;
+ (VOSCommand)MoveToNextLink;
+ (VOSCommand)MoveToNextList;
+ (VOSCommand)MoveToNextMisspelledWord;
+ (VOSCommand)MoveToNextParagraph;
+ (VOSCommand)MoveToNextPlainText;
+ (VOSCommand)MoveToNextRadioGroup;
+ (VOSCommand)MoveToNextSameBlockquote;
+ (VOSCommand)MoveToNextSameElement;
+ (VOSCommand)MoveToNextSameHeading;
+ (VOSCommand)MoveToNextSentence;
+ (VOSCommand)MoveToNextStyleChange;
+ (VOSCommand)MoveToNextTable;
+ (VOSCommand)MoveToNextUnderlineText;
+ (VOSCommand)MoveToNextVisitedLink;
+ (VOSCommand)MoveToNextWord;
+ (VOSCommand)MoveToPreviousBlockquote;
+ (VOSCommand)MoveToPreviousBoldText;
+ (VOSCommand)MoveToPreviousCharacter;
+ (VOSCommand)MoveToPreviousCheckbox;
+ (VOSCommand)MoveToPreviousColorChange;
+ (VOSCommand)MoveToPreviousColumn;
+ (VOSCommand)MoveToPreviousContainer;
+ (VOSCommand)MoveToPreviousControl;
+ (VOSCommand)MoveToPreviousDifferentElement;
+ (VOSCommand)MoveToPreviousElement;
+ (VOSCommand)MoveToPreviousElementCommunity;
+ (VOSCommand)MoveToPreviousFontChange;
+ (VOSCommand)MoveToPreviousFrame;
+ (VOSCommand)MoveToPreviousGraphic;
+ (VOSCommand)MoveToPreviousHeading;
+ (VOSCommand)MoveToPreviousItalicText;
+ (VOSCommand)MoveToPreviousLink;
+ (VOSCommand)MoveToPreviousList;
+ (VOSCommand)MoveToPreviousMisspelledWord;
+ (VOSCommand)MoveToPreviousParagraph;
+ (VOSCommand)MoveToPreviousPlainText;
+ (VOSCommand)MoveToPreviousRadioGroup;
+ (VOSCommand)MoveToPreviousSameBlockquote;
+ (VOSCommand)MoveToPreviousSameElement;
+ (VOSCommand)MoveToPreviousSameHeading;
+ (VOSCommand)MoveToPreviousSentence;
+ (VOSCommand)MoveToPreviousStyleChange;
+ (VOSCommand)MoveToPreviousTable;
+ (VOSCommand)MoveToPreviousUnderlineText;
+ (VOSCommand)MoveToPreviousVisitedLink;
+ (VOSCommand)MoveToPreviousWord;
+ (VOSCommand)MoveToStatusBar;
+ (VOSCommand)MoveToSystemFocusedElement;
+ (VOSCommand)MoveToTopOfCurrentContainer;
+ (VOSCommand)MoveToTopOfCurrentDocument;
+ (VOSCommand)NextHandwritingCharacterMode;
+ (VOSCommand)NextKeyboardLanguage;
+ (VOSCommand)NextRotor;
+ (VOSCommand)NextRotorItem;
+ (VOSCommand)NextSearchResult;
+ (VOSCommand)NextSpeechVoice;
+ (VOSCommand)None;
+ (VOSCommand)OpenVoiceOverSettings;
+ (VOSCommand)Paste;
+ (VOSCommand)PerformLongPress;
+ (VOSCommand)PreviewElementWith3DTouch;
+ (VOSCommand)PreviousHandwritingCharacterMode;
+ (VOSCommand)PreviousRotor;
+ (VOSCommand)PreviousRotorItem;
+ (VOSCommand)PreviousSearchResult;
+ (VOSCommand)PreviousSpeechVoice;
+ (VOSCommand)PrimaryActivate;
+ (VOSCommand)ReadAll;
+ (VOSCommand)ReadAllPrefixes;
+ (VOSCommand)ReadCharacter;
+ (VOSCommand)ReadCharacterPhonetically;
+ (VOSCommand)ReadColumnContents;
+ (VOSCommand)ReadColumnHeader;
+ (VOSCommand)ReadFromTop;
+ (VOSCommand)ReadFromTopPrefixes;
+ (VOSCommand)ReadHint;
+ (VOSCommand)ReadLine;
+ (VOSCommand)ReadLineCount;
+ (VOSCommand)ReadRowContents;
+ (VOSCommand)ReadRowHeader;
+ (VOSCommand)ReadSelectedText;
+ (VOSCommand)ReadSystemFocusedElementDetails;
+ (VOSCommand)ReadTableRowColumn;
+ (VOSCommand)ReadTableRowColumnCell;
+ (VOSCommand)ReadTextStyle;
+ (VOSCommand)ReadURL;
+ (VOSCommand)ReadWord;
+ (VOSCommand)Redo;
+ (VOSCommand)ScrollDown;
+ (VOSCommand)ScrollLeft;
+ (VOSCommand)ScrollRight;
+ (VOSCommand)ScrollToBottom;
+ (VOSCommand)ScrollToTop;
+ (VOSCommand)ScrollUp;
+ (VOSCommand)SecondaryActivate;
+ (VOSCommand)ShowControlCenter;
+ (VOSCommand)ShowItemChooser;
+ (VOSCommand)ShowNotificationCenter;
+ (VOSCommand)ShowSpotlight;
+ (VOSCommand)StartHelp;
+ (VOSCommand)SummarizeElement;
+ (VOSCommand)SummarizeSystemFocusedElement;
+ (VOSCommand)SwitchToNextApp;
+ (VOSCommand)SwitchToPreviousApp;
+ (VOSCommand)TakeScreenshot;
+ (VOSCommand)ToggleAppSwitcher;
+ (VOSCommand)ToggleAutomaticAccessibility;
+ (VOSCommand)ToggleCaptionPanel;
+ (VOSCommand)ToggleDock;
+ (VOSCommand)ToggleIgnoreTrackpad;
+ (VOSCommand)ToggleLiveRegions;
+ (VOSCommand)ToggleLockModifierKeys;
+ (VOSCommand)ToggleMute;
+ (VOSCommand)ToggleNavigationStyle;
+ (VOSCommand)ToggleQuickNav;
+ (VOSCommand)ToggleQuickNote;
+ (VOSCommand)ToggleReachability;
+ (VOSCommand)ToggleScreenCurtain;
+ (VOSCommand)ToggleSettingsHUD;
+ (VOSCommand)ToggleSingleLetterQuickNav;
+ (VOSCommand)ToggleSoundCurtain;
+ (VOSCommand)ToggleSpeech;
+ (VOSCommand)ToggleSyncNativeAndExploreFocus;
+ (VOSCommand)ToggleTextSelection;
+ (VOSCommand)ToggleTypeToSiri;
+ (VOSCommand)Undo;
+ (VOSCommand)VolumeDown;
+ (VOSCommand)VolumeUp;
+ (VOSCommand)commandWithSiriShortcut:(id)shortcut;
+ (id)builtInCommandWithStringValue:(id)value;
+ (id)commandForVOSEventCommand:(id)command;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedName;
- (id)_initBuiltInCommandWithRawValue:(id)value votEventCommandName:(id)name;
- (id)_initWithSiriShortcut:(id)shortcut;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOSCommand

+ (VOSCommand)commandWithSiriShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v4 = [[VOSCommand alloc] _initWithSiriShortcut:shortcutCopy];

  return v4;
}

- (id)_initWithSiriShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v9.receiver = self;
  v9.super_class = VOSCommand;
  v6 = [(VOSCommand *)&v9 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    v6->_commandType = 1;
    objc_storeStrong(&v6->_siriShortcut, shortcut);
    objc_storeStrong(p_isa + 3, kVOTEventCommandRunSiriShortcut);
  }

  return p_isa;
}

- (id)_initBuiltInCommandWithRawValue:(id)value votEventCommandName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = VOSCommand;
  v9 = [(VOSCommand *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    v9->_commandType = 0;
    objc_storeStrong(&v9->_rawValue, value);
    objc_storeStrong(p_isa + 3, name);
  }

  return p_isa;
}

- (id)description
{
  commandType = [(VOSCommand *)self commandType];
  v4 = @"Shortcut";
  if (commandType != 1)
  {
    v4 = 0;
  }

  if (commandType)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Built-in";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  localizedName = [(VOSCommand *)self localizedName];
  v10 = [v6 stringWithFormat:@"%@<%p>: %@: %@", v8, self, v5, localizedName];

  return v10;
}

+ (VOSCommand)None
{
  if (None_onceToken != -1)
  {
    +[VOSCommand None];
  }

  v3 = None__Command;

  return v3;
}

uint64_t __18__VOSCommand_None__block_invoke()
{
  v0 = [VOSCommand alloc];
  None__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"None" votEventCommandName:kVOTEventCommandNone];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PrimaryActivate
{
  if (PrimaryActivate_onceToken != -1)
  {
    +[VOSCommand PrimaryActivate];
  }

  v3 = PrimaryActivate__Command;

  return v3;
}

uint64_t __29__VOSCommand_PrimaryActivate__block_invoke()
{
  v0 = [VOSCommand alloc];
  PrimaryActivate__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PrimaryActivate" votEventCommandName:kVOTEventCommandSimpleTap];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)SecondaryActivate
{
  if (SecondaryActivate_onceToken != -1)
  {
    +[VOSCommand SecondaryActivate];
  }

  v3 = SecondaryActivate__Command;

  return v3;
}

uint64_t __31__VOSCommand_SecondaryActivate__block_invoke()
{
  v0 = [VOSCommand alloc];
  SecondaryActivate__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"SecondaryActivate" votEventCommandName:kVOTEventCommandDoubleTap];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PerformLongPress
{
  if (PerformLongPress_onceToken != -1)
  {
    +[VOSCommand PerformLongPress];
  }

  v3 = PerformLongPress__Command;

  return v3;
}

uint64_t __30__VOSCommand_PerformLongPress__block_invoke()
{
  v0 = [VOSCommand alloc];
  PerformLongPress__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PerformLongPress" votEventCommandName:kVOTEventCommandSimulatedLongPress];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousElement
{
  if (MoveToPreviousElement_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousElement];
  }

  v3 = MoveToPreviousElement__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToPreviousElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousElement" votEventCommandName:kVOTEventCommandPreviousElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextElement
{
  if (MoveToNextElement_onceToken != -1)
  {
    +[VOSCommand MoveToNextElement];
  }

  v3 = MoveToNextElement__Command;

  return v3;
}

uint64_t __31__VOSCommand_MoveToNextElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextElement" votEventCommandName:kVOTEventCommandNextElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToFirstElement
{
  if (MoveToFirstElement_onceToken != -1)
  {
    +[VOSCommand MoveToFirstElement];
  }

  v3 = MoveToFirstElement__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToFirstElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToFirstElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToFirstElement" votEventCommandName:kVOTEventCommandFirstElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToFirstWord
{
  if (MoveToFirstWord_onceToken != -1)
  {
    +[VOSCommand MoveToFirstWord];
  }

  v3 = MoveToFirstWord__Command;

  return v3;
}

uint64_t __29__VOSCommand_MoveToFirstWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToFirstWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToFirstWord" votEventCommandName:kVOTEventCommandFirstWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToLastElement
{
  if (MoveToLastElement_onceToken != -1)
  {
    +[VOSCommand MoveToLastElement];
  }

  v3 = MoveToLastElement__Command;

  return v3;
}

uint64_t __31__VOSCommand_MoveToLastElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToLastElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToLastElement" votEventCommandName:kVOTEventCommandLastElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToCenterElement
{
  if (MoveToCenterElement_onceToken != -1)
  {
    +[VOSCommand MoveToCenterElement];
  }

  v3 = MoveToCenterElement__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToCenterElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToCenterElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToCenterElement" votEventCommandName:kVOTEventCommandCenterElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToLastWord
{
  if (MoveToLastWord_onceToken != -1)
  {
    +[VOSCommand MoveToLastWord];
  }

  v3 = MoveToLastWord__Command;

  return v3;
}

uint64_t __28__VOSCommand_MoveToLastWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToLastWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToLastWord" votEventCommandName:kVOTEventCommandLastWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToElementAbove
{
  if (MoveToElementAbove_onceToken != -1)
  {
    +[VOSCommand MoveToElementAbove];
  }

  v3 = MoveToElementAbove__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToElementAbove__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToElementAbove__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToElementAbove" votEventCommandName:kVOTEventCommandElementAbove];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToElementBelow
{
  if (MoveToElementBelow_onceToken != -1)
  {
    +[VOSCommand MoveToElementBelow];
  }

  v3 = MoveToElementBelow__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToElementBelow__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToElementBelow__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToElementBelow" votEventCommandName:kVOTEventCommandElementBelow];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousElementCommunity
{
  if (MoveToPreviousElementCommunity_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousElementCommunity];
  }

  v3 = MoveToPreviousElementCommunity__Command;

  return v3;
}

uint64_t __44__VOSCommand_MoveToPreviousElementCommunity__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousElementCommunity__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousElementCommunity" votEventCommandName:kVOTEventCommandLeftElementCommunity];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextElementCommunity
{
  if (MoveToNextElementCommunity_onceToken != -1)
  {
    +[VOSCommand MoveToNextElementCommunity];
  }

  v3 = MoveToNextElementCommunity__Command;

  return v3;
}

uint64_t __40__VOSCommand_MoveToNextElementCommunity__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextElementCommunity__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextElementCommunity" votEventCommandName:kVOTEventCommandRightElementCommunity];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousContainer
{
  if (MoveToPreviousContainer_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousContainer];
  }

  v3 = MoveToPreviousContainer__Command;

  return v3;
}

uint64_t __37__VOSCommand_MoveToPreviousContainer__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousContainer__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousContainer" votEventCommandName:kVOTEventCommandPreviousContainer];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextContainer
{
  if (MoveToNextContainer_onceToken != -1)
  {
    +[VOSCommand MoveToNextContainer];
  }

  v3 = MoveToNextContainer__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToNextContainer__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextContainer__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextContainer" votEventCommandName:kVOTEventCommandNextContainer];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToTopOfCurrentContainer
{
  if (MoveToTopOfCurrentContainer_onceToken != -1)
  {
    +[VOSCommand MoveToTopOfCurrentContainer];
  }

  v3 = MoveToTopOfCurrentContainer__Command;

  return v3;
}

uint64_t __41__VOSCommand_MoveToTopOfCurrentContainer__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToTopOfCurrentContainer__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToTopOfCurrentContainer" votEventCommandName:kVOTEventCommandContainerTop];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToBottomOfCurrentContainer
{
  if (MoveToBottomOfCurrentContainer_onceToken != -1)
  {
    +[VOSCommand MoveToBottomOfCurrentContainer];
  }

  v3 = MoveToBottomOfCurrentContainer__Command;

  return v3;
}

uint64_t __44__VOSCommand_MoveToBottomOfCurrentContainer__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToBottomOfCurrentContainer__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToBottomOfCurrentContainer" votEventCommandName:kVOTEventCommandContainerBottom];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToTopOfCurrentDocument
{
  if (MoveToTopOfCurrentDocument_onceToken != -1)
  {
    +[VOSCommand MoveToTopOfCurrentDocument];
  }

  v3 = MoveToTopOfCurrentDocument__Command;

  return v3;
}

uint64_t __40__VOSCommand_MoveToTopOfCurrentDocument__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToTopOfCurrentDocument__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToTopOfCurrentDocument" votEventCommandName:kVOTEventCommandDocumentTop];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToBottomOfCurrentDocument
{
  if (MoveToBottomOfCurrentDocument_onceToken != -1)
  {
    +[VOSCommand MoveToBottomOfCurrentDocument];
  }

  v3 = MoveToBottomOfCurrentDocument__Command;

  return v3;
}

uint64_t __43__VOSCommand_MoveToBottomOfCurrentDocument__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToBottomOfCurrentDocument__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToBottomOfCurrentDocument" votEventCommandName:kVOTEventCommandDocumentBottom];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousCharacter
{
  if (MoveToPreviousCharacter_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousCharacter];
  }

  v3 = MoveToPreviousCharacter__Command;

  return v3;
}

uint64_t __37__VOSCommand_MoveToPreviousCharacter__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousCharacter__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousCharacter" votEventCommandName:kVOTEventCommandPreviousCharacter];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextCharacter
{
  if (MoveToNextCharacter_onceToken != -1)
  {
    +[VOSCommand MoveToNextCharacter];
  }

  v3 = MoveToNextCharacter__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToNextCharacter__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextCharacter__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextCharacter" votEventCommandName:kVOTEventCommandNextCharacter];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousWord
{
  if (MoveToPreviousWord_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousWord];
  }

  v3 = MoveToPreviousWord__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToPreviousWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousWord" votEventCommandName:kVOTEventCommandPreviousWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextWord
{
  if (MoveToNextWord_onceToken != -1)
  {
    +[VOSCommand MoveToNextWord];
  }

  v3 = MoveToNextWord__Command;

  return v3;
}

uint64_t __28__VOSCommand_MoveToNextWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextWord" votEventCommandName:kVOTEventCommandNextWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousSentence
{
  if (MoveToPreviousSentence_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousSentence];
  }

  v3 = MoveToPreviousSentence__Command;

  return v3;
}

uint64_t __36__VOSCommand_MoveToPreviousSentence__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousSentence__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousSentence" votEventCommandName:kVOTEventCommandPreviousSentence];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextSentence
{
  if (MoveToNextSentence_onceToken != -1)
  {
    +[VOSCommand MoveToNextSentence];
  }

  v3 = MoveToNextSentence__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToNextSentence__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextSentence__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextSentence" votEventCommandName:kVOTEventCommandNextSentence];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousParagraph
{
  if (MoveToPreviousParagraph_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousParagraph];
  }

  v3 = MoveToPreviousParagraph__Command;

  return v3;
}

uint64_t __37__VOSCommand_MoveToPreviousParagraph__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousParagraph__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousParagraph" votEventCommandName:kVOTEventCommandPreviousParagraph];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextParagraph
{
  if (MoveToNextParagraph_onceToken != -1)
  {
    +[VOSCommand MoveToNextParagraph];
  }

  v3 = MoveToNextParagraph__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToNextParagraph__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextParagraph__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextParagraph" votEventCommandName:kVOTEventCommandNextParagraph];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToStatusBar
{
  if (MoveToStatusBar_onceToken != -1)
  {
    +[VOSCommand MoveToStatusBar];
  }

  v3 = MoveToStatusBar__Command;

  return v3;
}

uint64_t __29__VOSCommand_MoveToStatusBar__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToStatusBar__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToStatusBar" votEventCommandName:kVOTEventCommandMoveToStatusBar];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToLinkedUI
{
  if (MoveToLinkedUI_onceToken != -1)
  {
    +[VOSCommand MoveToLinkedUI];
  }

  v3 = MoveToLinkedUI__Command;

  return v3;
}

uint64_t __28__VOSCommand_MoveToLinkedUI__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToLinkedUI__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToLinkedUI" votEventCommandName:kVOTEventCommandMoveToLinkedUI];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToSystemFocusedElement
{
  if (MoveToSystemFocusedElement_onceToken != -1)
  {
    +[VOSCommand MoveToSystemFocusedElement];
  }

  v3 = MoveToSystemFocusedElement__Command;

  return v3;
}

uint64_t __40__VOSCommand_MoveToSystemFocusedElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToSystemFocusedElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToSystemFocusedElement" votEventCommandName:kVOTEventCommandMoveToNativeFocusedElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextGraphic
{
  if (MoveToNextGraphic_onceToken != -1)
  {
    +[VOSCommand MoveToNextGraphic];
  }

  v3 = MoveToNextGraphic__Command;

  return v3;
}

uint64_t __31__VOSCommand_MoveToNextGraphic__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextGraphic__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextGraphic" votEventCommandName:kVOTEventCommandNextGraphic];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousGraphic
{
  if (MoveToPreviousGraphic_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousGraphic];
  }

  v3 = MoveToPreviousGraphic__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToPreviousGraphic__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousGraphic__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousGraphic" votEventCommandName:kVOTEventCommandPreviousGraphic];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextHeading
{
  if (MoveToNextHeading_onceToken != -1)
  {
    +[VOSCommand MoveToNextHeading];
  }

  v3 = MoveToNextHeading__Command;

  return v3;
}

uint64_t __31__VOSCommand_MoveToNextHeading__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextHeading__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextHeading" votEventCommandName:kVOTEventCommandNextHeading];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousHeading
{
  if (MoveToPreviousHeading_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousHeading];
  }

  v3 = MoveToPreviousHeading__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToPreviousHeading__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousHeading__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousHeading" votEventCommandName:kVOTEventCommandPreviousHeading];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextTable
{
  if (MoveToNextTable_onceToken != -1)
  {
    +[VOSCommand MoveToNextTable];
  }

  v3 = MoveToNextTable__Command;

  return v3;
}

uint64_t __29__VOSCommand_MoveToNextTable__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextTable__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextTable" votEventCommandName:kVOTEventCommandNextTable];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousTable
{
  if (MoveToPreviousTable_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousTable];
  }

  v3 = MoveToPreviousTable__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToPreviousTable__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousTable__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousTable" votEventCommandName:kVOTEventCommandPreviousTable];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextList
{
  if (MoveToNextList_onceToken != -1)
  {
    +[VOSCommand MoveToNextList];
  }

  v3 = MoveToNextList__Command;

  return v3;
}

uint64_t __28__VOSCommand_MoveToNextList__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextList__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextList" votEventCommandName:kVOTEventCommandNextList];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousList
{
  if (MoveToPreviousList_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousList];
  }

  v3 = MoveToPreviousList__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToPreviousList__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousList__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousList" votEventCommandName:kVOTEventCommandPreviousList];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextSameElement
{
  if (MoveToNextSameElement_onceToken != -1)
  {
    +[VOSCommand MoveToNextSameElement];
  }

  v3 = MoveToNextSameElement__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToNextSameElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextSameElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextSameElement" votEventCommandName:kVOTEventCommandNextSameElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousSameElement
{
  if (MoveToPreviousSameElement_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousSameElement];
  }

  v3 = MoveToPreviousSameElement__Command;

  return v3;
}

uint64_t __39__VOSCommand_MoveToPreviousSameElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousSameElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousSameElement" votEventCommandName:kVOTEventCommandPreviousSameElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextControl
{
  if (MoveToNextControl_onceToken != -1)
  {
    +[VOSCommand MoveToNextControl];
  }

  v3 = MoveToNextControl__Command;

  return v3;
}

uint64_t __31__VOSCommand_MoveToNextControl__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextControl__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextControl" votEventCommandName:kVOTEventCommandNextControl];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousControl
{
  if (MoveToPreviousControl_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousControl];
  }

  v3 = MoveToPreviousControl__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToPreviousControl__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousControl__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousControl" votEventCommandName:kVOTEventCommandPreviousControl];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextRadioGroup
{
  if (MoveToNextRadioGroup_onceToken != -1)
  {
    +[VOSCommand MoveToNextRadioGroup];
  }

  v3 = MoveToNextRadioGroup__Command;

  return v3;
}

uint64_t __34__VOSCommand_MoveToNextRadioGroup__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextRadioGroup__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextRadioGroup" votEventCommandName:kVOTEventCommandNextRadioGroup];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousRadioGroup
{
  if (MoveToPreviousRadioGroup_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousRadioGroup];
  }

  v3 = MoveToPreviousRadioGroup__Command;

  return v3;
}

uint64_t __38__VOSCommand_MoveToPreviousRadioGroup__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousRadioGroup__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousRadioGroup" votEventCommandName:kVOTEventCommandPreviousRadioGroup];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextCheckbox
{
  if (MoveToNextCheckbox_onceToken != -1)
  {
    +[VOSCommand MoveToNextCheckbox];
  }

  v3 = MoveToNextCheckbox__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToNextCheckbox__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextCheckbox__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextCheckbox" votEventCommandName:kVOTEventCommandNextCheckbox];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousCheckbox
{
  if (MoveToPreviousCheckbox_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousCheckbox];
  }

  v3 = MoveToPreviousCheckbox__Command;

  return v3;
}

uint64_t __36__VOSCommand_MoveToPreviousCheckbox__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousCheckbox__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousCheckbox" votEventCommandName:kVOTEventCommandPreviousCheckbox];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextLink
{
  if (MoveToNextLink_onceToken != -1)
  {
    +[VOSCommand MoveToNextLink];
  }

  v3 = MoveToNextLink__Command;

  return v3;
}

uint64_t __28__VOSCommand_MoveToNextLink__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextLink__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextLink" votEventCommandName:kVOTEventCommandNextLink];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousLink
{
  if (MoveToPreviousLink_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousLink];
  }

  v3 = MoveToPreviousLink__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToPreviousLink__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousLink__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousLink" votEventCommandName:kVOTEventCommandPreviousLink];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextBlockquote
{
  if (MoveToNextBlockquote_onceToken != -1)
  {
    +[VOSCommand MoveToNextBlockquote];
  }

  v3 = MoveToNextBlockquote__Command;

  return v3;
}

uint64_t __34__VOSCommand_MoveToNextBlockquote__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextBlockquote__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextBlockquote" votEventCommandName:kVOTEventCommandNextBlockquote];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousBlockquote
{
  if (MoveToPreviousBlockquote_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousBlockquote];
  }

  v3 = MoveToPreviousBlockquote__Command;

  return v3;
}

uint64_t __38__VOSCommand_MoveToPreviousBlockquote__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousBlockquote__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousBlockquote" votEventCommandName:kVOTEventCommandPreviousBlockquote];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextSameBlockquote
{
  if (MoveToNextSameBlockquote_onceToken != -1)
  {
    +[VOSCommand MoveToNextSameBlockquote];
  }

  v3 = MoveToNextSameBlockquote__Command;

  return v3;
}

uint64_t __38__VOSCommand_MoveToNextSameBlockquote__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextSameBlockquote__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextSameBlockquote" votEventCommandName:kVOTEventCommandNextSameBlockquote];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousSameBlockquote
{
  if (MoveToPreviousSameBlockquote_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousSameBlockquote];
  }

  v3 = MoveToPreviousSameBlockquote__Command;

  return v3;
}

uint64_t __42__VOSCommand_MoveToPreviousSameBlockquote__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousSameBlockquote__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousSameBlockquote" votEventCommandName:kVOTEventCommandPreviousSameBlockquote];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextVisitedLink
{
  if (MoveToNextVisitedLink_onceToken != -1)
  {
    +[VOSCommand MoveToNextVisitedLink];
  }

  v3 = MoveToNextVisitedLink__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToNextVisitedLink__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextVisitedLink__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextVisitedLink" votEventCommandName:kVOTEventCommandNextVisitedLink];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousVisitedLink
{
  if (MoveToPreviousVisitedLink_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousVisitedLink];
  }

  v3 = MoveToPreviousVisitedLink__Command;

  return v3;
}

uint64_t __39__VOSCommand_MoveToPreviousVisitedLink__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousVisitedLink__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousVisitedLink" votEventCommandName:kVOTEventCommandPreviousVisitedLink];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextSameHeading
{
  if (MoveToNextSameHeading_onceToken != -1)
  {
    +[VOSCommand MoveToNextSameHeading];
  }

  v3 = MoveToNextSameHeading__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToNextSameHeading__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextSameHeading__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextSameHeading" votEventCommandName:kVOTEventCommandNextSameHeading];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousSameHeading
{
  if (MoveToPreviousSameHeading_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousSameHeading];
  }

  v3 = MoveToPreviousSameHeading__Command;

  return v3;
}

uint64_t __39__VOSCommand_MoveToPreviousSameHeading__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousSameHeading__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousSameHeading" votEventCommandName:kVOTEventCommandPreviousSameHeading];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextBoldText
{
  if (MoveToNextBoldText_onceToken != -1)
  {
    +[VOSCommand MoveToNextBoldText];
  }

  v3 = MoveToNextBoldText__Command;

  return v3;
}

uint64_t __32__VOSCommand_MoveToNextBoldText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextBoldText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextBoldText" votEventCommandName:kVOTEventCommandNextBoldText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousBoldText
{
  if (MoveToPreviousBoldText_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousBoldText];
  }

  v3 = MoveToPreviousBoldText__Command;

  return v3;
}

uint64_t __36__VOSCommand_MoveToPreviousBoldText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousBoldText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousBoldText" votEventCommandName:kVOTEventCommandPreviousBoldText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextMisspelledWord
{
  if (MoveToNextMisspelledWord_onceToken != -1)
  {
    +[VOSCommand MoveToNextMisspelledWord];
  }

  v3 = MoveToNextMisspelledWord__Command;

  return v3;
}

uint64_t __38__VOSCommand_MoveToNextMisspelledWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextMisspelledWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextMisspelledWord" votEventCommandName:kVOTEventCommandNextMisspelledWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousMisspelledWord
{
  if (MoveToPreviousMisspelledWord_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousMisspelledWord];
  }

  v3 = MoveToPreviousMisspelledWord__Command;

  return v3;
}

uint64_t __42__VOSCommand_MoveToPreviousMisspelledWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousMisspelledWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousMisspelledWord" votEventCommandName:kVOTEventCommandPreviousMisspelledWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextPlainText
{
  if (MoveToNextPlainText_onceToken != -1)
  {
    +[VOSCommand MoveToNextPlainText];
  }

  v3 = MoveToNextPlainText__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToNextPlainText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextPlainText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextPlainText" votEventCommandName:kVOTEventCommandNextPlainText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousPlainText
{
  if (MoveToPreviousPlainText_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousPlainText];
  }

  v3 = MoveToPreviousPlainText__Command;

  return v3;
}

uint64_t __37__VOSCommand_MoveToPreviousPlainText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousPlainText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousPlainText" votEventCommandName:kVOTEventCommandPreviousPlainText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextColorChange
{
  if (MoveToNextColorChange_onceToken != -1)
  {
    +[VOSCommand MoveToNextColorChange];
  }

  v3 = MoveToNextColorChange__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToNextColorChange__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextColorChange__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextColorChange" votEventCommandName:kVOTEventCommandNextColorChange];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousColorChange
{
  if (MoveToPreviousColorChange_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousColorChange];
  }

  v3 = MoveToPreviousColorChange__Command;

  return v3;
}

uint64_t __39__VOSCommand_MoveToPreviousColorChange__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousColorChange__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousColorChange" votEventCommandName:kVOTEventCommandPreviousColorChange];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextItalicText
{
  if (MoveToNextItalicText_onceToken != -1)
  {
    +[VOSCommand MoveToNextItalicText];
  }

  v3 = MoveToNextItalicText__Command;

  return v3;
}

uint64_t __34__VOSCommand_MoveToNextItalicText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextItalicText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextItalicText" votEventCommandName:kVOTEventCommandNextItalicText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousItalicText
{
  if (MoveToPreviousItalicText_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousItalicText];
  }

  v3 = MoveToPreviousItalicText__Command;

  return v3;
}

uint64_t __38__VOSCommand_MoveToPreviousItalicText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousItalicText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousItalicText" votEventCommandName:kVOTEventCommandPreviousItalicText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextUnderlineText
{
  if (MoveToNextUnderlineText_onceToken != -1)
  {
    +[VOSCommand MoveToNextUnderlineText];
  }

  v3 = MoveToNextUnderlineText__Command;

  return v3;
}

uint64_t __37__VOSCommand_MoveToNextUnderlineText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextUnderlineText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextUnderlineText" votEventCommandName:kVOTEventCommandNextUnderlineText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousUnderlineText
{
  if (MoveToPreviousUnderlineText_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousUnderlineText];
  }

  v3 = MoveToPreviousUnderlineText__Command;

  return v3;
}

uint64_t __41__VOSCommand_MoveToPreviousUnderlineText__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousUnderlineText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousUnderlineText" votEventCommandName:kVOTEventCommandPreviousUnderlineText];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextDifferentElement
{
  if (MoveToNextDifferentElement_onceToken != -1)
  {
    +[VOSCommand MoveToNextDifferentElement];
  }

  v3 = MoveToNextDifferentElement__Command;

  return v3;
}

uint64_t __40__VOSCommand_MoveToNextDifferentElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextDifferentElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextDifferentElement" votEventCommandName:kVOTEventCommandNextDifferentElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousDifferentElement
{
  if (MoveToPreviousDifferentElement_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousDifferentElement];
  }

  v3 = MoveToPreviousDifferentElement__Command;

  return v3;
}

uint64_t __44__VOSCommand_MoveToPreviousDifferentElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousDifferentElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousDifferentElement" votEventCommandName:kVOTEventCommandPreviousDifferentElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextColumn
{
  if (MoveToNextColumn_onceToken != -1)
  {
    +[VOSCommand MoveToNextColumn];
  }

  v3 = MoveToNextColumn__Command;

  return v3;
}

uint64_t __30__VOSCommand_MoveToNextColumn__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextColumn__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextColumn" votEventCommandName:kVOTEventCommandNextColumn];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousColumn
{
  if (MoveToPreviousColumn_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousColumn];
  }

  v3 = MoveToPreviousColumn__Command;

  return v3;
}

uint64_t __34__VOSCommand_MoveToPreviousColumn__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousColumn__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousColumn" votEventCommandName:kVOTEventCommandPreviousColumn];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextFontChange
{
  if (MoveToNextFontChange_onceToken != -1)
  {
    +[VOSCommand MoveToNextFontChange];
  }

  v3 = MoveToNextFontChange__Command;

  return v3;
}

uint64_t __34__VOSCommand_MoveToNextFontChange__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextFontChange__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextFontChange" votEventCommandName:kVOTEventCommandNextFontChange];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousFontChange
{
  if (MoveToPreviousFontChange_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousFontChange];
  }

  v3 = MoveToPreviousFontChange__Command;

  return v3;
}

uint64_t __38__VOSCommand_MoveToPreviousFontChange__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousFontChange__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousFontChange" votEventCommandName:kVOTEventCommandPreviousFontChange];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextFrame
{
  if (MoveToNextFrame_onceToken != -1)
  {
    +[VOSCommand MoveToNextFrame];
  }

  v3 = MoveToNextFrame__Command;

  return v3;
}

uint64_t __29__VOSCommand_MoveToNextFrame__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextFrame__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextFrame" votEventCommandName:kVOTEventCommandNextFrame];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousFrame
{
  if (MoveToPreviousFrame_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousFrame];
  }

  v3 = MoveToPreviousFrame__Command;

  return v3;
}

uint64_t __33__VOSCommand_MoveToPreviousFrame__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousFrame__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousFrame" votEventCommandName:kVOTEventCommandPreviousFrame];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToNextStyleChange
{
  if (MoveToNextStyleChange_onceToken != -1)
  {
    +[VOSCommand MoveToNextStyleChange];
  }

  v3 = MoveToNextStyleChange__Command;

  return v3;
}

uint64_t __35__VOSCommand_MoveToNextStyleChange__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToNextStyleChange__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToNextStyleChange" votEventCommandName:kVOTEventCommandNextStyleChange];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveToPreviousStyleChange
{
  if (MoveToPreviousStyleChange_onceToken != -1)
  {
    +[VOSCommand MoveToPreviousStyleChange];
  }

  v3 = MoveToPreviousStyleChange__Command;

  return v3;
}

uint64_t __39__VOSCommand_MoveToPreviousStyleChange__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveToPreviousStyleChange__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveToPreviousStyleChange" votEventCommandName:kVOTEventCommandPreviousStyleChange];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)FindElementWithTextSearch
{
  if (FindElementWithTextSearch_onceToken != -1)
  {
    +[VOSCommand FindElementWithTextSearch];
  }

  v3 = FindElementWithTextSearch__Command;

  return v3;
}

uint64_t __39__VOSCommand_FindElementWithTextSearch__block_invoke()
{
  v0 = [VOSCommand alloc];
  FindElementWithTextSearch__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"FindElementWithTextSearch" votEventCommandName:kVOTEventCommandStartTextSearch];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PreviousSearchResult
{
  if (PreviousSearchResult_onceToken != -1)
  {
    +[VOSCommand PreviousSearchResult];
  }

  v3 = PreviousSearchResult__Command;

  return v3;
}

uint64_t __34__VOSCommand_PreviousSearchResult__block_invoke()
{
  v0 = [VOSCommand alloc];
  PreviousSearchResult__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PreviousSearchResult" votEventCommandName:kVOTEventCommandTextSearchBackward];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)NextSearchResult
{
  if (NextSearchResult_onceToken != -1)
  {
    +[VOSCommand NextSearchResult];
  }

  v3 = NextSearchResult__Command;

  return v3;
}

uint64_t __30__VOSCommand_NextSearchResult__block_invoke()
{
  v0 = [VOSCommand alloc];
  NextSearchResult__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"NextSearchResult" votEventCommandName:kVOTEventCommandTextSearchForward];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Copy
{
  if (Copy_onceToken != -1)
  {
    +[VOSCommand Copy];
  }

  v3 = Copy__Command;

  return v3;
}

uint64_t __18__VOSCommand_Copy__block_invoke()
{
  v0 = [VOSCommand alloc];
  Copy__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"Copy" votEventCommandName:kVOTEventCommandCopy];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Cut
{
  if (Cut_onceToken != -1)
  {
    +[VOSCommand Cut];
  }

  v3 = Cut__Command;

  return v3;
}

uint64_t __17__VOSCommand_Cut__block_invoke()
{
  v0 = [VOSCommand alloc];
  Cut__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"Cut" votEventCommandName:kVOTEventCommandCut];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Paste
{
  if (Paste_onceToken != -1)
  {
    +[VOSCommand Paste];
  }

  v3 = Paste__Command;

  return v3;
}

uint64_t __19__VOSCommand_Paste__block_invoke()
{
  v0 = [VOSCommand alloc];
  Paste__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"Paste" votEventCommandName:kVOTEventCommandPaste];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Undo
{
  if (Undo_onceToken != -1)
  {
    +[VOSCommand Undo];
  }

  v3 = Undo__Command;

  return v3;
}

uint64_t __18__VOSCommand_Undo__block_invoke()
{
  v0 = [VOSCommand alloc];
  Undo__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"Undo" votEventCommandName:kVOTEventCommandUndo];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Redo
{
  if (Redo_onceToken != -1)
  {
    +[VOSCommand Redo];
  }

  v3 = Redo__Command;

  return v3;
}

uint64_t __18__VOSCommand_Redo__block_invoke()
{
  v0 = [VOSCommand alloc];
  Redo__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"Redo" votEventCommandName:kVOTEventCommandRedo];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleTextSelection
{
  if (ToggleTextSelection_onceToken != -1)
  {
    +[VOSCommand ToggleTextSelection];
  }

  v3 = ToggleTextSelection__Command;

  return v3;
}

uint64_t __33__VOSCommand_ToggleTextSelection__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleTextSelection__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleTextSelection" votEventCommandName:kVOTEventCommandStartStopTextSelection];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)SummarizeElement
{
  if (SummarizeElement_onceToken != -1)
  {
    +[VOSCommand SummarizeElement];
  }

  v3 = SummarizeElement__Command;

  return v3;
}

uint64_t __30__VOSCommand_SummarizeElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  SummarizeElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"SummarizeElement" votEventCommandName:kVOTEventCommandOutputElementSummary];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)SummarizeSystemFocusedElement
{
  if (SummarizeSystemFocusedElement_onceToken != -1)
  {
    +[VOSCommand SummarizeSystemFocusedElement];
  }

  v3 = SummarizeSystemFocusedElement__Command;

  return v3;
}

uint64_t __43__VOSCommand_SummarizeSystemFocusedElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  SummarizeSystemFocusedElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"SummarizeSystemFocusedElement" votEventCommandName:kVOTEventCommandOutputFocusedElementSummary];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadSystemFocusedElementDetails
{
  if (ReadSystemFocusedElementDetails_onceToken != -1)
  {
    +[VOSCommand ReadSystemFocusedElementDetails];
  }

  v3 = ReadSystemFocusedElementDetails__Command;

  return v3;
}

uint64_t __45__VOSCommand_ReadSystemFocusedElementDetails__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadSystemFocusedElementDetails__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadSystemFocusedElementDetails" votEventCommandName:kVOTEventCommandOutputDetailedFocusedElementSummary];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PreviewElementWith3DTouch
{
  if (PreviewElementWith3DTouch_onceToken != -1)
  {
    +[VOSCommand PreviewElementWith3DTouch];
  }

  v3 = PreviewElementWith3DTouch__Command;

  return v3;
}

uint64_t __39__VOSCommand_PreviewElementWith3DTouch__block_invoke()
{
  v0 = [VOSCommand alloc];
  PreviewElementWith3DTouch__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PreviewElementWith3DTouch" votEventCommandName:kVOTEventCommandSimulatedForceTouch];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)AnalyzeElement
{
  if (AnalyzeElement_onceToken != -1)
  {
    +[VOSCommand AnalyzeElement];
  }

  v3 = AnalyzeElement__Command;

  return v3;
}

uint64_t __28__VOSCommand_AnalyzeElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  AnalyzeElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"AnalyzeElement" votEventCommandName:kVOTEventCommandOutputElementCVAnalysisSummary];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadAll
{
  if (ReadAll_onceToken != -1)
  {
    +[VOSCommand ReadAll];
  }

  v3 = ReadAll__Command;

  return v3;
}

uint64_t __21__VOSCommand_ReadAll__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadAll__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadAll" votEventCommandName:kVOTEventCommandReadAll];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadFromTop
{
  if (ReadFromTop_onceToken != -1)
  {
    +[VOSCommand ReadFromTop];
  }

  v3 = ReadFromTop__Command;

  return v3;
}

uint64_t __25__VOSCommand_ReadFromTop__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadFromTop__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadFromTop" votEventCommandName:kVOTEventCommandReadFromTop];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadLine
{
  if (ReadLine_onceToken != -1)
  {
    +[VOSCommand ReadLine];
  }

  v3 = ReadLine__Command;

  return v3;
}

uint64_t __22__VOSCommand_ReadLine__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadLine__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadLine" votEventCommandName:kVOTEventCommandReadLine];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadWord
{
  if (ReadWord_onceToken != -1)
  {
    +[VOSCommand ReadWord];
  }

  v3 = ReadWord__Command;

  return v3;
}

uint64_t __22__VOSCommand_ReadWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadWord" votEventCommandName:kVOTEventCommandReadWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadHint
{
  if (ReadHint_onceToken != -1)
  {
    +[VOSCommand ReadHint];
  }

  v3 = ReadHint__Command;

  return v3;
}

uint64_t __22__VOSCommand_ReadHint__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadHint__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadHint" votEventCommandName:kVOTEventCommandReadHint];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadTextStyle
{
  if (ReadTextStyle_onceToken != -1)
  {
    +[VOSCommand ReadTextStyle];
  }

  v3 = ReadTextStyle__Command;

  return v3;
}

uint64_t __27__VOSCommand_ReadTextStyle__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadTextStyle__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadTextStyle" votEventCommandName:kVOTEventCommandOutputTextStyle];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadURL
{
  if (ReadURL_onceToken != -1)
  {
    +[VOSCommand ReadURL];
  }

  v3 = ReadURL__Command;

  return v3;
}

uint64_t __21__VOSCommand_ReadURL__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadURL__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadURL" votEventCommandName:kVOTEventCommandReadURL];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadSelectedText
{
  if (ReadSelectedText_onceToken != -1)
  {
    +[VOSCommand ReadSelectedText];
  }

  v3 = ReadSelectedText__Command;

  return v3;
}

uint64_t __30__VOSCommand_ReadSelectedText__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadSelectedText__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadSelectedText" votEventCommandName:kVOTEventCommandOutputSelectedInformation];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadCharacter
{
  if (ReadCharacter_onceToken != -1)
  {
    +[VOSCommand ReadCharacter];
  }

  v3 = ReadCharacter__Command;

  return v3;
}

uint64_t __27__VOSCommand_ReadCharacter__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadCharacter__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadCharacter" votEventCommandName:kVOTEventCommandOutputCharacter];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadCharacterPhonetically
{
  if (ReadCharacterPhonetically_onceToken != -1)
  {
    +[VOSCommand ReadCharacterPhonetically];
  }

  v3 = ReadCharacterPhonetically__Command;

  return v3;
}

uint64_t __39__VOSCommand_ReadCharacterPhonetically__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadCharacterPhonetically__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadCharacterPhonetically" votEventCommandName:kVOTEventCommandOutputCharacterPhonetically];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadRowHeader
{
  if (ReadRowHeader_onceToken != -1)
  {
    +[VOSCommand ReadRowHeader];
  }

  v3 = ReadRowHeader__Command;

  return v3;
}

uint64_t __27__VOSCommand_ReadRowHeader__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadRowHeader__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadRowHeader" votEventCommandName:kVOTEventCommandOutputRowHeader];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadRowContents
{
  if (ReadRowContents_onceToken != -1)
  {
    +[VOSCommand ReadRowContents];
  }

  v3 = ReadRowContents__Command;

  return v3;
}

uint64_t __29__VOSCommand_ReadRowContents__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadRowContents__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadRowContents" votEventCommandName:kVOTEventCommandOutputContentsOfRow];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadTableRowColumn
{
  if (ReadTableRowColumn_onceToken != -1)
  {
    +[VOSCommand ReadTableRowColumn];
  }

  v3 = ReadTableRowColumn__Command;

  return v3;
}

uint64_t __32__VOSCommand_ReadTableRowColumn__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadTableRowColumn__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadTableRowColumn" votEventCommandName:kVOTEventCommandOutputTableRowColumnInfo];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadColumnHeader
{
  if (ReadColumnHeader_onceToken != -1)
  {
    +[VOSCommand ReadColumnHeader];
  }

  v3 = ReadColumnHeader__Command;

  return v3;
}

uint64_t __30__VOSCommand_ReadColumnHeader__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadColumnHeader__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadColumnHeader" votEventCommandName:kVOTEventCommandOutputColumnHeader];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadColumnContents
{
  if (ReadColumnContents_onceToken != -1)
  {
    +[VOSCommand ReadColumnContents];
  }

  v3 = ReadColumnContents__Command;

  return v3;
}

uint64_t __32__VOSCommand_ReadColumnContents__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadColumnContents__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadColumnContents" votEventCommandName:kVOTEventCommandOutputContentsOfColumn];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadTableRowColumnCell
{
  if (ReadTableRowColumnCell_onceToken != -1)
  {
    +[VOSCommand ReadTableRowColumnCell];
  }

  v3 = ReadTableRowColumnCell__Command;

  return v3;
}

uint64_t __36__VOSCommand_ReadTableRowColumnCell__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadTableRowColumnCell__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadTableRowColumnCell" votEventCommandName:kVOTEventCommandOutputCellRowColumnInfo];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadLineCount
{
  if (ReadLineCount_onceToken != -1)
  {
    +[VOSCommand ReadLineCount];
  }

  v3 = ReadLineCount__Command;

  return v3;
}

uint64_t __27__VOSCommand_ReadLineCount__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadLineCount__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadLineCount" votEventCommandName:kVOTEventCommandOutputLineCount];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleSpeech
{
  if (ToggleSpeech_onceToken != -1)
  {
    +[VOSCommand ToggleSpeech];
  }

  v3 = ToggleSpeech__Command;

  return v3;
}

uint64_t __26__VOSCommand_ToggleSpeech__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleSpeech__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleSpeech" votEventCommandName:kVOTEventCommandToggleSpeaking];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleMute
{
  if (ToggleMute_onceToken != -1)
  {
    +[VOSCommand ToggleMute];
  }

  v3 = ToggleMute__Command;

  return v3;
}

uint64_t __24__VOSCommand_ToggleMute__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleMute__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleMute" votEventCommandName:kVOTEventCommandToggleMute];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleScreenCurtain
{
  if (ToggleScreenCurtain_onceToken != -1)
  {
    +[VOSCommand ToggleScreenCurtain];
  }

  v3 = ToggleScreenCurtain__Command;

  return v3;
}

uint64_t __33__VOSCommand_ToggleScreenCurtain__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleScreenCurtain__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleScreenCurtain" votEventCommandName:kVOTEventCommandToggleScreenCurtain];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleSoundCurtain
{
  if (ToggleSoundCurtain_onceToken != -1)
  {
    +[VOSCommand ToggleSoundCurtain];
  }

  v3 = ToggleSoundCurtain__Command;

  return v3;
}

uint64_t __32__VOSCommand_ToggleSoundCurtain__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleSoundCurtain__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleSoundCurtain" votEventCommandName:kVOTEventCommandToggleSoundCurtain];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ShowItemChooser
{
  if (ShowItemChooser_onceToken != -1)
  {
    +[VOSCommand ShowItemChooser];
  }

  v3 = ShowItemChooser__Command;

  return v3;
}

uint64_t __29__VOSCommand_ShowItemChooser__block_invoke()
{
  v0 = [VOSCommand alloc];
  ShowItemChooser__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ShowItemChooser" votEventCommandName:kVOTEventCommandItemChooser];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)OpenVoiceOverSettings
{
  if (OpenVoiceOverSettings_onceToken != -1)
  {
    +[VOSCommand OpenVoiceOverSettings];
  }

  v3 = OpenVoiceOverSettings__Command;

  return v3;
}

uint64_t __35__VOSCommand_OpenVoiceOverSettings__block_invoke()
{
  v0 = [VOSCommand alloc];
  OpenVoiceOverSettings__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"OpenVoiceOverSettings" votEventCommandName:kVOTEventCommandOpenVoiceOverSettings];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)StartHelp
{
  if (StartHelp_onceToken != -1)
  {
    +[VOSCommand StartHelp];
  }

  v3 = StartHelp__Command;

  return v3;
}

uint64_t __23__VOSCommand_StartHelp__block_invoke()
{
  v0 = [VOSCommand alloc];
  StartHelp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"StartHelp" votEventCommandName:kVOTEventCommandStartHelp];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MagicTap
{
  if (MagicTap_onceToken != -1)
  {
    +[VOSCommand MagicTap];
  }

  v3 = MagicTap__Command;

  return v3;
}

uint64_t __22__VOSCommand_MagicTap__block_invoke()
{
  v0 = [VOSCommand alloc];
  MagicTap__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MagicTap" votEventCommandName:kVOTEventCommandStartStopToggle];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Escape
{
  if (Escape_onceToken != -1)
  {
    +[VOSCommand Escape];
  }

  v3 = Escape__Command;

  return v3;
}

uint64_t __20__VOSCommand_Escape__block_invoke()
{
  v0 = [VOSCommand alloc];
  Escape__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"Escape" votEventCommandName:kVOTEventCommandEscape];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ScrollUp
{
  if (ScrollUp_onceToken != -1)
  {
    +[VOSCommand ScrollUp];
  }

  v3 = ScrollUp__Command;

  return v3;
}

uint64_t __22__VOSCommand_ScrollUp__block_invoke()
{
  v0 = [VOSCommand alloc];
  ScrollUp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ScrollUp" votEventCommandName:kVOTEventCommandScrollUpPage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ScrollDown
{
  if (ScrollDown_onceToken != -1)
  {
    +[VOSCommand ScrollDown];
  }

  v3 = ScrollDown__Command;

  return v3;
}

uint64_t __24__VOSCommand_ScrollDown__block_invoke()
{
  v0 = [VOSCommand alloc];
  ScrollDown__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ScrollDown" votEventCommandName:kVOTEventCommandScrollDownPage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ScrollLeft
{
  if (ScrollLeft_onceToken != -1)
  {
    +[VOSCommand ScrollLeft];
  }

  v3 = ScrollLeft__Command;

  return v3;
}

uint64_t __24__VOSCommand_ScrollLeft__block_invoke()
{
  v0 = [VOSCommand alloc];
  ScrollLeft__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ScrollLeft" votEventCommandName:kVOTEventCommandScrollLeftPage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ScrollRight
{
  if (ScrollRight_onceToken != -1)
  {
    +[VOSCommand ScrollRight];
  }

  v3 = ScrollRight__Command;

  return v3;
}

uint64_t __25__VOSCommand_ScrollRight__block_invoke()
{
  v0 = [VOSCommand alloc];
  ScrollRight__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ScrollRight" votEventCommandName:kVOTEventCommandScrollRightPage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ScrollToTop
{
  if (ScrollToTop_onceToken != -1)
  {
    +[VOSCommand ScrollToTop];
  }

  v3 = ScrollToTop__Command;

  return v3;
}

uint64_t __25__VOSCommand_ScrollToTop__block_invoke()
{
  v0 = [VOSCommand alloc];
  ScrollToTop__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ScrollToTop" votEventCommandName:kVOTEventCommandScrollToTop];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ScrollToBottom
{
  if (ScrollToBottom_onceToken != -1)
  {
    +[VOSCommand ScrollToBottom];
  }

  v3 = ScrollToBottom__Command;

  return v3;
}

uint64_t __28__VOSCommand_ScrollToBottom__block_invoke()
{
  v0 = [VOSCommand alloc];
  ScrollToBottom__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ScrollToBottom" votEventCommandName:kVOTEventCommandScrollToBottom];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PreviousRotor
{
  if (PreviousRotor_onceToken != -1)
  {
    +[VOSCommand PreviousRotor];
  }

  v3 = PreviousRotor__Command;

  return v3;
}

uint64_t __27__VOSCommand_PreviousRotor__block_invoke()
{
  v0 = [VOSCommand alloc];
  PreviousRotor__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PreviousRotor" votEventCommandName:kVOTEventCommandSearchRotorLeft];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)NextRotor
{
  if (NextRotor_onceToken != -1)
  {
    +[VOSCommand NextRotor];
  }

  v3 = NextRotor__Command;

  return v3;
}

uint64_t __23__VOSCommand_NextRotor__block_invoke()
{
  v0 = [VOSCommand alloc];
  NextRotor__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"NextRotor" votEventCommandName:kVOTEventCommandSearchRotorRight];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PreviousRotorItem
{
  if (PreviousRotorItem_onceToken != -1)
  {
    +[VOSCommand PreviousRotorItem];
  }

  v3 = PreviousRotorItem__Command;

  return v3;
}

uint64_t __31__VOSCommand_PreviousRotorItem__block_invoke()
{
  v0 = [VOSCommand alloc];
  PreviousRotorItem__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PreviousRotorItem" votEventCommandName:kVOTEventCommandSearchRotorUp];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)NextRotorItem
{
  if (NextRotorItem_onceToken != -1)
  {
    +[VOSCommand NextRotorItem];
  }

  v3 = NextRotorItem__Command;

  return v3;
}

uint64_t __27__VOSCommand_NextRotorItem__block_invoke()
{
  v0 = [VOSCommand alloc];
  NextRotorItem__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"NextRotorItem" votEventCommandName:kVOTEventCommandSearchRotorDown];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)CopySpeechToClipboard
{
  if (CopySpeechToClipboard_onceToken != -1)
  {
    +[VOSCommand CopySpeechToClipboard];
  }

  v3 = CopySpeechToClipboard__Command;

  return v3;
}

uint64_t __35__VOSCommand_CopySpeechToClipboard__block_invoke()
{
  v0 = [VOSCommand alloc];
  CopySpeechToClipboard__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"CopySpeechToClipboard" votEventCommandName:kVOTEventCommandCopySpeechToClipboard];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleCaptionPanel
{
  if (ToggleCaptionPanel_onceToken != -1)
  {
    +[VOSCommand ToggleCaptionPanel];
  }

  v3 = ToggleCaptionPanel__Command;

  return v3;
}

uint64_t __32__VOSCommand_ToggleCaptionPanel__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleCaptionPanel__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleCaptionPanel" votEventCommandName:kVOTEventCommandToggleCaptionPanel];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleIgnoreTrackpad
{
  if (ToggleIgnoreTrackpad_onceToken != -1)
  {
    +[VOSCommand ToggleIgnoreTrackpad];
  }

  v3 = ToggleIgnoreTrackpad__Command;

  return v3;
}

uint64_t __34__VOSCommand_ToggleIgnoreTrackpad__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleIgnoreTrackpad__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleIgnoreTrackpad" votEventCommandName:kVOTEventCommandToggleIgnoreTrackpad];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)LabelElement
{
  if (LabelElement_onceToken != -1)
  {
    +[VOSCommand LabelElement];
  }

  v3 = LabelElement__Command;

  return v3;
}

uint64_t __26__VOSCommand_LabelElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  LabelElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"LabelElement" votEventCommandName:kVOTEventCommandLabelElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)DescribeImage
{
  if (DescribeImage_onceToken != -1)
  {
    +[VOSCommand DescribeImage];
  }

  v3 = DescribeImage__Command;

  return v3;
}

uint64_t __27__VOSCommand_DescribeImage__block_invoke()
{
  v0 = [VOSCommand alloc];
  DescribeImage__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"DescribeImage" votEventCommandName:kVOTEventCommandDescribeImage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)LaunchPeopleDetection
{
  if (LaunchPeopleDetection_onceToken != -1)
  {
    +[VOSCommand LaunchPeopleDetection];
  }

  v3 = LaunchPeopleDetection__Command;

  return v3;
}

uint64_t __35__VOSCommand_LaunchPeopleDetection__block_invoke()
{
  v0 = [VOSCommand alloc];
  LaunchPeopleDetection__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"LaunchPeopleDetection" votEventCommandName:kVOTEventCommandLaunchDetectionMode];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MonitorElement
{
  if (MonitorElement_onceToken != -1)
  {
    +[VOSCommand MonitorElement];
  }

  v3 = MonitorElement__Command;

  return v3;
}

uint64_t __28__VOSCommand_MonitorElement__block_invoke()
{
  v0 = [VOSCommand alloc];
  MonitorElement__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MonitorElement" votEventCommandName:kVOTEventCommandMonitorElement];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateBrailleScreenInput
{
  if (ActivateBrailleScreenInput_onceToken != -1)
  {
    +[VOSCommand ActivateBrailleScreenInput];
  }

  v3 = ActivateBrailleScreenInput__Command;

  return v3;
}

uint64_t __40__VOSCommand_ActivateBrailleScreenInput__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateBrailleScreenInput__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateBrailleScreenInput" votEventCommandName:kVOTEventCommandActivateBrailleScreenInput];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateBrailleScreenInputCommand
{
  if (ActivateBrailleScreenInputCommand_onceToken != -1)
  {
    +[VOSCommand ActivateBrailleScreenInputCommand];
  }

  v3 = ActivateBrailleScreenInputCommand__Command;

  return v3;
}

uint64_t __47__VOSCommand_ActivateBrailleScreenInputCommand__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateBrailleScreenInputCommand__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateBrailleScreenInputCommand" votEventCommandName:kVOTEventCommandActivateBrailleScreenInputCommand];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateBrailleScreenInputPreferringSingleHand
{
  if (ActivateBrailleScreenInputPreferringSingleHand_onceToken != -1)
  {
    +[VOSCommand ActivateBrailleScreenInputPreferringSingleHand];
  }

  v3 = ActivateBrailleScreenInputPreferringSingleHand__Command;

  return v3;
}

uint64_t __60__VOSCommand_ActivateBrailleScreenInputPreferringSingleHand__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateBrailleScreenInputPreferringSingleHand__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateBrailleScreenInputPreferringSingleHand" votEventCommandName:kVOTEventCommandActivateBrailleScreenInputPreferringSingleHand];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleSingleLetterQuickNav
{
  if (ToggleSingleLetterQuickNav_onceToken != -1)
  {
    +[VOSCommand ToggleSingleLetterQuickNav];
  }

  v3 = ToggleSingleLetterQuickNav__Command;

  return v3;
}

uint64_t __40__VOSCommand_ToggleSingleLetterQuickNav__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleSingleLetterQuickNav__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleSingleLetterQuickNav" votEventCommandName:kVOTEventCommandToggleSingleLetterQuickNav];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleQuickNav
{
  if (ToggleQuickNav_onceToken != -1)
  {
    +[VOSCommand ToggleQuickNav];
  }

  v3 = ToggleQuickNav__Command;

  return v3;
}

uint64_t __28__VOSCommand_ToggleQuickNav__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleQuickNav__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleQuickNav" votEventCommandName:kVOTEventCommandToggleQuickNav];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleLockModifierKeys
{
  if (ToggleLockModifierKeys_onceToken != -1)
  {
    +[VOSCommand ToggleLockModifierKeys];
  }

  v3 = ToggleLockModifierKeys__Command;

  return v3;
}

uint64_t __36__VOSCommand_ToggleLockModifierKeys__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleLockModifierKeys__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleLockModifierKeys" votEventCommandName:kVOTEventCommandLockVOKeyboardKeys];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ChangeAudioDuckingMode
{
  if (ChangeAudioDuckingMode_onceToken != -1)
  {
    +[VOSCommand ChangeAudioDuckingMode];
  }

  v3 = ChangeAudioDuckingMode__Command;

  return v3;
}

uint64_t __36__VOSCommand_ChangeAudioDuckingMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  ChangeAudioDuckingMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ChangeAudioDuckingMode" votEventCommandName:kVOTEventCommandChangeAudioDuckingMode];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleNavigationStyle
{
  if (ToggleNavigationStyle_onceToken != -1)
  {
    +[VOSCommand ToggleNavigationStyle];
  }

  v3 = ToggleNavigationStyle__Command;

  return v3;
}

uint64_t __35__VOSCommand_ToggleNavigationStyle__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleNavigationStyle__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleNavigationStyle" votEventCommandName:kVOTEventCommandToggleNavigationStyle];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleSyncNativeAndExploreFocus
{
  if (ToggleSyncNativeAndExploreFocus_onceToken != -1)
  {
    +[VOSCommand ToggleSyncNativeAndExploreFocus];
  }

  v3 = ToggleSyncNativeAndExploreFocus__Command;

  return v3;
}

uint64_t __45__VOSCommand_ToggleSyncNativeAndExploreFocus__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleSyncNativeAndExploreFocus__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleSyncNativeAndExploreFocus" votEventCommandName:kVOTEventCommandToggleSyncNativeAndExploreFocus];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleAutomaticAccessibility
{
  if (ToggleAutomaticAccessibility_onceToken != -1)
  {
    +[VOSCommand ToggleAutomaticAccessibility];
  }

  v3 = ToggleAutomaticAccessibility__Command;

  return v3;
}

uint64_t __42__VOSCommand_ToggleAutomaticAccessibility__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleAutomaticAccessibility__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleAutomaticAccessibility" votEventCommandName:kVOTEventCommandToggleAutomaticAccessibility];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)VolumeUp
{
  if (VolumeUp_onceToken != -1)
  {
    +[VOSCommand VolumeUp];
  }

  v3 = VolumeUp__Command;

  return v3;
}

uint64_t __22__VOSCommand_VolumeUp__block_invoke()
{
  v0 = [VOSCommand alloc];
  VolumeUp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"VolumeUp" votEventCommandName:kVOTEventCommandVolumeUpButtonPress];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)VolumeDown
{
  if (VolumeDown_onceToken != -1)
  {
    +[VOSCommand VolumeDown];
  }

  v3 = VolumeDown__Command;

  return v3;
}

uint64_t __24__VOSCommand_VolumeDown__block_invoke()
{
  v0 = [VOSCommand alloc];
  VolumeDown__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"VolumeDown" votEventCommandName:kVOTEventCommandVolumeDownButtonPress];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleLiveRegions
{
  if (ToggleLiveRegions_onceToken != -1)
  {
    +[VOSCommand ToggleLiveRegions];
  }

  v3 = ToggleLiveRegions__Command;

  return v3;
}

uint64_t __31__VOSCommand_ToggleLiveRegions__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleLiveRegions__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleLiveRegions" votEventCommandName:kVOTEventCommandToggleLiveRegions];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)NextKeyboardLanguage
{
  if (NextKeyboardLanguage_onceToken != -1)
  {
    +[VOSCommand NextKeyboardLanguage];
  }

  v3 = NextKeyboardLanguage__Command;

  return v3;
}

uint64_t __34__VOSCommand_NextKeyboardLanguage__block_invoke()
{
  v0 = [VOSCommand alloc];
  NextKeyboardLanguage__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"NextKeyboardLanguage" votEventCommandName:kVOTEventCommandNextKeyboardLanguage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ShowNotificationCenter
{
  if (ShowNotificationCenter_onceToken != -1)
  {
    +[VOSCommand ShowNotificationCenter];
  }

  v3 = ShowNotificationCenter__Command;

  return v3;
}

uint64_t __36__VOSCommand_ShowNotificationCenter__block_invoke()
{
  v0 = [VOSCommand alloc];
  ShowNotificationCenter__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ShowNotificationCenter" votEventCommandName:kVOTEventCommandSystemShowNotificationCenter];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleTypeToSiri
{
  if (ToggleTypeToSiri_onceToken != -1)
  {
    +[VOSCommand ToggleTypeToSiri];
  }

  v3 = ToggleTypeToSiri__Command;

  return v3;
}

uint64_t __30__VOSCommand_ToggleTypeToSiri__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleTypeToSiri__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleTypeToSiri" votEventCommandName:kVOTEventCommandSystemToggleTypeToSiri];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ShowControlCenter
{
  if (ShowControlCenter_onceToken != -1)
  {
    +[VOSCommand ShowControlCenter];
  }

  v3 = ShowControlCenter__Command;

  return v3;
}

uint64_t __31__VOSCommand_ShowControlCenter__block_invoke()
{
  v0 = [VOSCommand alloc];
  ShowControlCenter__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ShowControlCenter" votEventCommandName:kVOTEventCommandSystemShowControlCenter];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateSpeakScreen
{
  if (ActivateSpeakScreen_onceToken != -1)
  {
    +[VOSCommand ActivateSpeakScreen];
  }

  v3 = ActivateSpeakScreen__Command;

  return v3;
}

uint64_t __33__VOSCommand_ActivateSpeakScreen__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateSpeakScreen__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateSpeakScreen" votEventCommandName:kVOTEventCommandSystemActivateSpeakScreen];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateHomeButton
{
  if (ActivateHomeButton_onceToken != -1)
  {
    +[VOSCommand ActivateHomeButton];
  }

  v3 = ActivateHomeButton__Command;

  return v3;
}

uint64_t __32__VOSCommand_ActivateHomeButton__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateHomeButton__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateHomeButton" votEventCommandName:kVOTEventCommandHomeButtonPress];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleDock
{
  if (ToggleDock_onceToken != -1)
  {
    +[VOSCommand ToggleDock];
  }

  v3 = ToggleDock__Command;

  return v3;
}

uint64_t __24__VOSCommand_ToggleDock__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleDock__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleDock" votEventCommandName:kVOTEventCommandSystemToggleDock];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleAppSwitcher
{
  if (ToggleAppSwitcher_onceToken != -1)
  {
    +[VOSCommand ToggleAppSwitcher];
  }

  v3 = ToggleAppSwitcher__Command;

  return v3;
}

uint64_t __31__VOSCommand_ToggleAppSwitcher__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleAppSwitcher__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleAppSwitcher" votEventCommandName:kVOTEventCommandSystemToggleAppSwitcher];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateLockButton
{
  if (ActivateLockButton_onceToken != -1)
  {
    +[VOSCommand ActivateLockButton];
  }

  v3 = ActivateLockButton__Command;

  return v3;
}

uint64_t __32__VOSCommand_ActivateLockButton__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateLockButton__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateLockButton" votEventCommandName:kVOTEventCommandSystemActivateLockButton];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ShowSpotlight
{
  if (ShowSpotlight_onceToken != -1)
  {
    +[VOSCommand ShowSpotlight];
  }

  v3 = ShowSpotlight__Command;

  return v3;
}

uint64_t __27__VOSCommand_ShowSpotlight__block_invoke()
{
  v0 = [VOSCommand alloc];
  ShowSpotlight__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ShowSpotlight" votEventCommandName:kVOTEventCommandSystemShowSpotlight];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ActivateAccessibilityShortcut
{
  if (ActivateAccessibilityShortcut_onceToken != -1)
  {
    +[VOSCommand ActivateAccessibilityShortcut];
  }

  v3 = ActivateAccessibilityShortcut__Command;

  return v3;
}

uint64_t __43__VOSCommand_ActivateAccessibilityShortcut__block_invoke()
{
  v0 = [VOSCommand alloc];
  ActivateAccessibilityShortcut__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ActivateAccessibilityShortcut" votEventCommandName:kVOTEventCommandSystemActivateAccessibilityShortcut];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleReachability
{
  if (ToggleReachability_onceToken != -1)
  {
    +[VOSCommand ToggleReachability];
  }

  v3 = ToggleReachability__Command;

  return v3;
}

uint64_t __32__VOSCommand_ToggleReachability__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleReachability__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleReachability" votEventCommandName:kVOTEventCommandSystemToggleReachability];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)TakeScreenshot
{
  if (TakeScreenshot_onceToken != -1)
  {
    +[VOSCommand TakeScreenshot];
  }

  v3 = TakeScreenshot__Command;

  return v3;
}

uint64_t __28__VOSCommand_TakeScreenshot__block_invoke()
{
  v0 = [VOSCommand alloc];
  TakeScreenshot__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"TakeScreenshot" votEventCommandName:kVOTEventCommandSystemTakeScreenshot];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)SwitchToPreviousApp
{
  if (SwitchToPreviousApp_onceToken != -1)
  {
    +[VOSCommand SwitchToPreviousApp];
  }

  v3 = SwitchToPreviousApp__Command;

  return v3;
}

uint64_t __33__VOSCommand_SwitchToPreviousApp__block_invoke()
{
  v0 = [VOSCommand alloc];
  SwitchToPreviousApp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"SwitchToPreviousApp" votEventCommandName:kVOTEventCommandSystemSwitchToPreviousApp];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)SwitchToNextApp
{
  if (SwitchToNextApp_onceToken != -1)
  {
    +[VOSCommand SwitchToNextApp];
  }

  v3 = SwitchToNextApp__Command;

  return v3;
}

uint64_t __29__VOSCommand_SwitchToNextApp__block_invoke()
{
  v0 = [VOSCommand alloc];
  SwitchToNextApp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"SwitchToNextApp" votEventCommandName:kVOTEventCommandSystemSwitchToNextApp];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleQuickNote
{
  if (ToggleQuickNote_onceToken != -1)
  {
    +[VOSCommand ToggleQuickNote];
  }

  v3 = ToggleQuickNote__Command;

  return v3;
}

uint64_t __29__VOSCommand_ToggleQuickNote__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleQuickNote__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleQuickNote" votEventCommandName:kVOTEventCommandSystemToggleQuickNote];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PreviousHandwritingCharacterMode
{
  if (PreviousHandwritingCharacterMode_onceToken != -1)
  {
    +[VOSCommand PreviousHandwritingCharacterMode];
  }

  v3 = PreviousHandwritingCharacterMode__Command;

  return v3;
}

uint64_t __46__VOSCommand_PreviousHandwritingCharacterMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  PreviousHandwritingCharacterMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PreviousHandwritingCharacterMode" votEventCommandName:kVOTEventCommandHandwritingPreviousActiveCharacterSet];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)NextHandwritingCharacterMode
{
  if (NextHandwritingCharacterMode_onceToken != -1)
  {
    +[VOSCommand NextHandwritingCharacterMode];
  }

  v3 = NextHandwritingCharacterMode__Command;

  return v3;
}

uint64_t __42__VOSCommand_NextHandwritingCharacterMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  NextHandwritingCharacterMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"NextHandwritingCharacterMode" votEventCommandName:kVOTEventCommandHandwritingNextActiveCharacterSet];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)AnnounceHandwritingCharacterMode
{
  if (AnnounceHandwritingCharacterMode_onceToken != -1)
  {
    +[VOSCommand AnnounceHandwritingCharacterMode];
  }

  v3 = AnnounceHandwritingCharacterMode__Command;

  return v3;
}

uint64_t __46__VOSCommand_AnnounceHandwritingCharacterMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  AnnounceHandwritingCharacterMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"AnnounceHandwritingCharacterMode" votEventCommandName:kVOTEventCommandHandwritingAnnounceActiveCharacterSet];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIPreviousBrailleMode
{
  if (BSIPreviousBrailleMode_onceToken != -1)
  {
    +[VOSCommand BSIPreviousBrailleMode];
  }

  v3 = BSIPreviousBrailleMode__Command;

  return v3;
}

uint64_t __36__VOSCommand_BSIPreviousBrailleMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIPreviousBrailleMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIPreviousBrailleMode" votEventCommandName:kVOTEventCommandBSIPreviousBrailleMode];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSINextBrailleMode
{
  if (BSINextBrailleMode_onceToken != -1)
  {
    +[VOSCommand BSINextBrailleMode];
  }

  v3 = BSINextBrailleMode__Command;

  return v3;
}

uint64_t __32__VOSCommand_BSINextBrailleMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSINextBrailleMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSINextBrailleMode" votEventCommandName:kVOTEventCommandBSINextBrailleMode];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIPreviousUsage
{
  if (BSIPreviousUsage_onceToken != -1)
  {
    +[VOSCommand BSIPreviousUsage];
  }

  v3 = BSIPreviousUsage__Command;

  return v3;
}

uint64_t __30__VOSCommand_BSIPreviousUsage__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIPreviousUsage__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIPreviousUsage" votEventCommandName:kVOTEventCommandBSIPreviousUsage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSINextUsage
{
  if (BSINextUsage_onceToken != -1)
  {
    +[VOSCommand BSINextUsage];
  }

  v3 = BSINextUsage__Command;

  return v3;
}

uint64_t __26__VOSCommand_BSINextUsage__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSINextUsage__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSINextUsage" votEventCommandName:kVOTEventCommandBSINextUsage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSITranslateImmediately
{
  if (BSITranslateImmediately_onceToken != -1)
  {
    +[VOSCommand BSITranslateImmediately];
  }

  v3 = BSITranslateImmediately__Command;

  return v3;
}

uint64_t __37__VOSCommand_BSITranslateImmediately__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSITranslateImmediately__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSITranslateImmediately" votEventCommandName:kVOTEventCommandBSITranslateImmediately];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIOrientationLock
{
  if (BSIOrientationLock_onceToken != -1)
  {
    +[VOSCommand BSIOrientationLock];
  }

  v3 = BSIOrientationLock__Command;

  return v3;
}

uint64_t __32__VOSCommand_BSIOrientationLock__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIOrientationLock__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIOrientationLock" votEventCommandName:kVOTEventCommandBSIOrientationLock];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIQuickAction
{
  if (BSIQuickAction_onceToken != -1)
  {
    +[VOSCommand BSIQuickAction];
  }

  v3 = BSIQuickAction__Command;

  return v3;
}

uint64_t __28__VOSCommand_BSIQuickAction__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIQuickAction__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIQuickAction" votEventCommandName:kVOTEventCommandBSIQuickAction];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIExit
{
  if (BSIExit_onceToken != -1)
  {
    +[VOSCommand BSIExit];
  }

  v3 = BSIExit__Command;

  return v3;
}

uint64_t __21__VOSCommand_BSIExit__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIExit__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIExit" votEventCommandName:kVOTEventCommandBSIExit];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIPreviousRotor
{
  if (BSIPreviousRotor_onceToken != -1)
  {
    +[VOSCommand BSIPreviousRotor];
  }

  v3 = BSIPreviousRotor__Command;

  return v3;
}

uint64_t __30__VOSCommand_BSIPreviousRotor__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIPreviousRotor__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIPreviousRotor" votEventCommandName:kVOTEventCommandBSIPreviousRotor];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSINextRotor
{
  if (BSINextRotor_onceToken != -1)
  {
    +[VOSCommand BSINextRotor];
  }

  v3 = BSINextRotor__Command;

  return v3;
}

uint64_t __26__VOSCommand_BSINextRotor__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSINextRotor__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSINextRotor" votEventCommandName:kVOTEventCommandBSINextRotor];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIEscape
{
  if (BSIEscape_onceToken != -1)
  {
    +[VOSCommand BSIEscape];
  }

  v3 = BSIEscape__Command;

  return v3;
}

uint64_t __23__VOSCommand_BSIEscape__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIEscape__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIEscape" votEventCommandName:kVOTEventCommandBSIEscape];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIPreviousTextSegment
{
  if (BSIPreviousTextSegment_onceToken != -1)
  {
    +[VOSCommand BSIPreviousTextSegment];
  }

  v3 = BSIPreviousTextSegment__Command;

  return v3;
}

uint64_t __36__VOSCommand_BSIPreviousTextSegment__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIPreviousTextSegment__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIPreviousTextSegment" votEventCommandName:kVOTEventCommandPreviousTextSegment];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSINextTextSegment
{
  if (BSINextTextSegment_onceToken != -1)
  {
    +[VOSCommand BSINextTextSegment];
  }

  v3 = BSINextTextSegment__Command;

  return v3;
}

uint64_t __32__VOSCommand_BSINextTextSegment__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSINextTextSegment__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSINextTextSegment" votEventCommandName:kVOTEventCommandNextTextSegment];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSISelectPreviousTextSegment
{
  if (BSISelectPreviousTextSegment_onceToken != -1)
  {
    +[VOSCommand BSISelectPreviousTextSegment];
  }

  v3 = BSISelectPreviousTextSegment__Command;

  return v3;
}

uint64_t __42__VOSCommand_BSISelectPreviousTextSegment__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSISelectPreviousTextSegment__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSISelectPreviousTextSegment" votEventCommandName:kVOTEventCommandSelectLeft];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSISelectNextTextSegment
{
  if (BSISelectNextTextSegment_onceToken != -1)
  {
    +[VOSCommand BSISelectNextTextSegment];
  }

  v3 = BSISelectNextTextSegment__Command;

  return v3;
}

uint64_t __38__VOSCommand_BSISelectNextTextSegment__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSISelectNextTextSegment__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSISelectNextTextSegment" votEventCommandName:kVOTEventCommandSelectRight];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSIPreviousTextSegmentType
{
  if (BSIPreviousTextSegmentType_onceToken != -1)
  {
    +[VOSCommand BSIPreviousTextSegmentType];
  }

  v3 = BSIPreviousTextSegmentType__Command;

  return v3;
}

uint64_t __40__VOSCommand_BSIPreviousTextSegmentType__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSIPreviousTextSegmentType__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSIPreviousTextSegmentType" votEventCommandName:kVOTEventCommandPreviousTextSegmentType];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BSINextTextSegmentType
{
  if (BSINextTextSegmentType_onceToken != -1)
  {
    +[VOSCommand BSINextTextSegmentType];
  }

  v3 = BSINextTextSegmentType__Command;

  return v3;
}

uint64_t __36__VOSCommand_BSINextTextSegmentType__block_invoke()
{
  v0 = [VOSCommand alloc];
  BSINextTextSegmentType__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BSINextTextSegmentType" votEventCommandName:kVOTEventCommandNextTextSegmentType];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BraillePanLeft
{
  if (BraillePanLeft_onceToken != -1)
  {
    +[VOSCommand BraillePanLeft];
  }

  v3 = BraillePanLeft__Command;

  return v3;
}

uint64_t __28__VOSCommand_BraillePanLeft__block_invoke()
{
  v0 = [VOSCommand alloc];
  BraillePanLeft__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BraillePanLeft" votEventCommandName:kVOTEventCommandBraillePanLeft];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BraillePanRight
{
  if (BraillePanRight_onceToken != -1)
  {
    +[VOSCommand BraillePanRight];
  }

  v3 = BraillePanRight__Command;

  return v3;
}

uint64_t __29__VOSCommand_BraillePanRight__block_invoke()
{
  v0 = [VOSCommand alloc];
  BraillePanRight__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BraillePanRight" votEventCommandName:kVOTEventCommandBraillePanRight];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleNextInputTable
{
  if (BrailleNextInputTable_onceToken != -1)
  {
    +[VOSCommand BrailleNextInputTable];
  }

  v3 = BrailleNextInputTable__Command;

  return v3;
}

uint64_t __35__VOSCommand_BrailleNextInputTable__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleNextInputTable__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleNextInputTable" votEventCommandName:kVOTEventCommandBrailleNextInputTable];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleNextOutputTable
{
  if (BrailleNextOutputTable_onceToken != -1)
  {
    +[VOSCommand BrailleNextOutputTable];
  }

  v3 = BrailleNextOutputTable__Command;

  return v3;
}

uint64_t __36__VOSCommand_BrailleNextOutputTable__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleNextOutputTable__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleNextOutputTable" votEventCommandName:kVOTEventCommandBrailleNextOutputTable];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleAnnouncementMode
{
  if (BrailleAnnouncementMode_onceToken != -1)
  {
    +[VOSCommand BrailleAnnouncementMode];
  }

  v3 = BrailleAnnouncementMode__Command;

  return v3;
}

uint64_t __37__VOSCommand_BrailleAnnouncementMode__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleAnnouncementMode__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleAnnouncementMode" votEventCommandName:kVOTEventCommandBrailleAnnouncementModeOn];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleTranslate
{
  if (BrailleTranslate_onceToken != -1)
  {
    +[VOSCommand BrailleTranslate];
  }

  v3 = BrailleTranslate__Command;

  return v3;
}

uint64_t __30__VOSCommand_BrailleTranslate__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleTranslate__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleTranslate" votEventCommandName:kVOTEventCommandBrailleTranslate];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleToggleWordWrap
{
  if (BrailleToggleWordWrap_onceToken != -1)
  {
    +[VOSCommand BrailleToggleWordWrap];
  }

  v3 = BrailleToggleWordWrap__Command;

  return v3;
}

uint64_t __35__VOSCommand_BrailleToggleWordWrap__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleToggleWordWrap__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleToggleWordWrap" votEventCommandName:kVOTEventCommandBrailleToggleWordWrap];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleTranslateToClipboard
{
  if (BrailleTranslateToClipboard_onceToken != -1)
  {
    +[VOSCommand BrailleTranslateToClipboard];
  }

  v3 = BrailleTranslateToClipboard__Command;

  return v3;
}

uint64_t __41__VOSCommand_BrailleTranslateToClipboard__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleTranslateToClipboard__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleTranslateToClipboard" votEventCommandName:kVOTEventCommandBrailleTranslateBrailleToClipboard];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleEnableAutoAdvance
{
  if (BrailleEnableAutoAdvance_onceToken != -1)
  {
    +[VOSCommand BrailleEnableAutoAdvance];
  }

  v3 = BrailleEnableAutoAdvance__Command;

  return v3;
}

uint64_t __38__VOSCommand_BrailleEnableAutoAdvance__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleEnableAutoAdvance__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleEnableAutoAdvance" votEventCommandName:kVOTEventCommandBrailleEnableAutoAdvance];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleIncreaseAutoAdvance
{
  if (BrailleIncreaseAutoAdvance_onceToken != -1)
  {
    +[VOSCommand BrailleIncreaseAutoAdvance];
  }

  v3 = BrailleIncreaseAutoAdvance__Command;

  return v3;
}

uint64_t __40__VOSCommand_BrailleIncreaseAutoAdvance__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleIncreaseAutoAdvance__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleIncreaseAutoAdvance" votEventCommandName:kVOTEventCommandBrailleIncreaseAutoAdvanceSpeed];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleDecreaseAutoAdvance
{
  if (BrailleDecreaseAutoAdvance_onceToken != -1)
  {
    +[VOSCommand BrailleDecreaseAutoAdvance];
  }

  v3 = BrailleDecreaseAutoAdvance__Command;

  return v3;
}

uint64_t __40__VOSCommand_BrailleDecreaseAutoAdvance__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleDecreaseAutoAdvance__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleDecreaseAutoAdvance" votEventCommandName:kVOTEventCommandBrailleDecreaseAutoAdvanceSpeed];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleReconnectBrailleDisplays
{
  if (BrailleReconnectBrailleDisplays_onceToken != -1)
  {
    +[VOSCommand BrailleReconnectBrailleDisplays];
  }

  v3 = BrailleReconnectBrailleDisplays__Command;

  return v3;
}

uint64_t __45__VOSCommand_BrailleReconnectBrailleDisplays__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleReconnectBrailleDisplays__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleReconnectBrailleDisplays" votEventCommandName:kVOTEventCommandReconnectBrailleDisplays];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleTogglePerkinsKeyboardInput
{
  if (BrailleTogglePerkinsKeyboardInput_onceToken != -1)
  {
    +[VOSCommand BrailleTogglePerkinsKeyboardInput];
  }

  v3 = BrailleTogglePerkinsKeyboardInput__Command;

  return v3;
}

uint64_t __47__VOSCommand_BrailleTogglePerkinsKeyboardInput__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleTogglePerkinsKeyboardInput__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleTogglePerkinsKeyboardInput" votEventCommandName:kVOTEventCommandTogglePerkinsKeyboardInput];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleToggleKeyboardBrailleUI
{
  if (BrailleToggleKeyboardBrailleUI_onceToken != -1)
  {
    +[VOSCommand BrailleToggleKeyboardBrailleUI];
  }

  v3 = BrailleToggleKeyboardBrailleUI__Command;

  return v3;
}

uint64_t __44__VOSCommand_BrailleToggleKeyboardBrailleUI__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleToggleKeyboardBrailleUI__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleToggleKeyboardBrailleUI" votEventCommandName:kVOTEventCommandToggleKeyboardBrailleUI];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleToggleBrailleUI
{
  if (BrailleToggleBrailleUI_onceToken != -1)
  {
    +[VOSCommand BrailleToggleBrailleUI];
  }

  v3 = BrailleToggleBrailleUI__Command;

  return v3;
}

uint64_t __36__VOSCommand_BrailleToggleBrailleUI__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleToggleBrailleUI__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleToggleBrailleUI" votEventCommandName:kVOTEventCommandToggleBrailleUI];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUILaunchApp
{
  if (BrailleActivateBrailleUILaunchApp_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUILaunchApp];
  }

  v3 = BrailleActivateBrailleUILaunchApp__Command;

  return v3;
}

uint64_t __47__VOSCommand_BrailleActivateBrailleUILaunchApp__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUILaunchApp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUILaunchApp" votEventCommandName:kVOTEventCommandActivateBrailleUILaunchApp];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUIChooseItem
{
  if (BrailleActivateBrailleUIChooseItem_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUIChooseItem];
  }

  v3 = BrailleActivateBrailleUIChooseItem__Command;

  return v3;
}

uint64_t __48__VOSCommand_BrailleActivateBrailleUIChooseItem__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUIChooseItem__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUIChooseItem" votEventCommandName:kVOTEventCommandActivateBrailleUIChooseItem];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUIBrailleNotes
{
  if (BrailleActivateBrailleUIBrailleNotes_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUIBrailleNotes];
  }

  v3 = BrailleActivateBrailleUIBrailleNotes__Command;

  return v3;
}

uint64_t __50__VOSCommand_BrailleActivateBrailleUIBrailleNotes__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUIBrailleNotes__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUIBrailleNotes" votEventCommandName:kVOTEventCommandActivateBrailleUIBrailleNotes];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUIFinder
{
  if (BrailleActivateBrailleUIFinder_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUIFinder];
  }

  v3 = BrailleActivateBrailleUIFinder__Command;

  return v3;
}

uint64_t __44__VOSCommand_BrailleActivateBrailleUIFinder__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUIFinder__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUIFinder" votEventCommandName:kVOTEventCommandActivateBrailleUIFinder];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUINemethCalculator
{
  if (BrailleActivateBrailleUINemethCalculator_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUINemethCalculator];
  }

  v3 = BrailleActivateBrailleUINemethCalculator__Command;

  return v3;
}

uint64_t __54__VOSCommand_BrailleActivateBrailleUINemethCalculator__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUINemethCalculator__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUINemethCalculator" votEventCommandName:kVOTEventCommandActivateBrailleUINemethCalculator];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUILiveCaptions
{
  if (BrailleActivateBrailleUILiveCaptions_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUILiveCaptions];
  }

  v3 = BrailleActivateBrailleUILiveCaptions__Command;

  return v3;
}

uint64_t __50__VOSCommand_BrailleActivateBrailleUILiveCaptions__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUILiveCaptions__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUILiveCaptions" votEventCommandName:kVOTEventCommandActivateBrailleUILiveCaptions];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)BrailleActivateBrailleUIDateTime
{
  if (BrailleActivateBrailleUIDateTime_onceToken != -1)
  {
    +[VOSCommand BrailleActivateBrailleUIDateTime];
  }

  v3 = BrailleActivateBrailleUIDateTime__Command;

  return v3;
}

uint64_t __46__VOSCommand_BrailleActivateBrailleUIDateTime__block_invoke()
{
  v0 = [VOSCommand alloc];
  BrailleActivateBrailleUIDateTime__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"BrailleActivateBrailleUIDateTime" votEventCommandName:kVOTEventCommandActivateBrailleUIDateTime];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputInsertSpace
{
  if (GesturedTextInputInsertSpace_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputInsertSpace];
  }

  v3 = GesturedTextInputInsertSpace__Command;

  return v3;
}

uint64_t __42__VOSCommand_GesturedTextInputInsertSpace__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputInsertSpace__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputInsertSpace" votEventCommandName:kVOTEventCommandGesturedTextInputInsertSpace];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputBackspace
{
  if (GesturedTextInputBackspace_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputBackspace];
  }

  v3 = GesturedTextInputBackspace__Command;

  return v3;
}

uint64_t __40__VOSCommand_GesturedTextInputBackspace__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputBackspace__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputBackspace" votEventCommandName:kVOTEventCommandGesturedTextInputBackspace];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputDeleteWord
{
  if (GesturedTextInputDeleteWord_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputDeleteWord];
  }

  v3 = GesturedTextInputDeleteWord__Command;

  return v3;
}

uint64_t __41__VOSCommand_GesturedTextInputDeleteWord__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputDeleteWord__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputDeleteWord" votEventCommandName:kVOTEventCommandGesturedTextInputDeleteWord];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputPerformReturnEquivalent
{
  if (GesturedTextInputPerformReturnEquivalent_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputPerformReturnEquivalent];
  }

  v3 = GesturedTextInputPerformReturnEquivalent__Command;

  return v3;
}

uint64_t __54__VOSCommand_GesturedTextInputPerformReturnEquivalent__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputPerformReturnEquivalent__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputPerformReturnEquivalent" votEventCommandName:kVOTEventCommandGesturedTextInputPerformReturnEquivalent];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputPreviousSuggestion
{
  if (GesturedTextInputPreviousSuggestion_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputPreviousSuggestion];
  }

  v3 = GesturedTextInputPreviousSuggestion__Command;

  return v3;
}

uint64_t __49__VOSCommand_GesturedTextInputPreviousSuggestion__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputPreviousSuggestion__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputPreviousSuggestion" votEventCommandName:kVOTEventCommandGesturedTextInputPreviousSuggestion];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputNextSuggestion
{
  if (GesturedTextInputNextSuggestion_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputNextSuggestion];
  }

  v3 = GesturedTextInputNextSuggestion__Command;

  return v3;
}

uint64_t __45__VOSCommand_GesturedTextInputNextSuggestion__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputNextSuggestion__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputNextSuggestion" votEventCommandName:kVOTEventCommandGesturedTextInputNextSuggestion];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputLaunchApp
{
  if (GesturedTextInputLaunchApp_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputLaunchApp];
  }

  v3 = GesturedTextInputLaunchApp__Command;

  return v3;
}

uint64_t __40__VOSCommand_GesturedTextInputLaunchApp__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputLaunchApp__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputLaunchApp" votEventCommandName:kVOTEventCommandGesturedTextInputLaunchApp];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputNextKeyboardLanguage
{
  if (GesturedTextInputNextKeyboardLanguage_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputNextKeyboardLanguage];
  }

  v3 = GesturedTextInputNextKeyboardLanguage__Command;

  return v3;
}

uint64_t __51__VOSCommand_GesturedTextInputNextKeyboardLanguage__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputNextKeyboardLanguage__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputNextKeyboardLanguage" votEventCommandName:kVOTEventCommandGesturedTextInputNextKeyboardLanguage];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)GesturedTextInputNextBrailleTable
{
  if (GesturedTextInputNextBrailleTable_onceToken != -1)
  {
    +[VOSCommand GesturedTextInputNextBrailleTable];
  }

  v3 = GesturedTextInputNextBrailleTable__Command;

  return v3;
}

uint64_t __47__VOSCommand_GesturedTextInputNextBrailleTable__block_invoke()
{
  v0 = [VOSCommand alloc];
  GesturedTextInputNextBrailleTable__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"GesturedTextInputNextBrailleTable" votEventCommandName:kVOTEventCommandGesturedTextInputNextBrailleTable];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)NextSpeechVoice
{
  if (NextSpeechVoice_onceToken != -1)
  {
    +[VOSCommand NextSpeechVoice];
  }

  v3 = NextSpeechVoice__Command;

  return v3;
}

uint64_t __29__VOSCommand_NextSpeechVoice__block_invoke()
{
  v0 = [VOSCommand alloc];
  NextSpeechVoice__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"NextSpeechVoice" votEventCommandName:kVOTEventCommandSpeechNextVoice];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)PreviousSpeechVoice
{
  if (PreviousSpeechVoice_onceToken != -1)
  {
    +[VOSCommand PreviousSpeechVoice];
  }

  v3 = PreviousSpeechVoice__Command;

  return v3;
}

uint64_t __33__VOSCommand_PreviousSpeechVoice__block_invoke()
{
  v0 = [VOSCommand alloc];
  PreviousSpeechVoice__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"PreviousSpeechVoice" votEventCommandName:kVOTEventCommandSpeechPreviousVoice];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)DescribeCameraScene
{
  if (DescribeCameraScene_onceToken != -1)
  {
    +[VOSCommand DescribeCameraScene];
  }

  v3 = DescribeCameraScene__Command;

  return v3;
}

uint64_t __33__VOSCommand_DescribeCameraScene__block_invoke()
{
  v0 = [VOSCommand alloc];
  DescribeCameraScene__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"DescribeCameraScene" votEventCommandName:kVOTEventCommandDescribeCameraScene];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadAllPrefixes
{
  if (ReadAllPrefixes_onceToken != -1)
  {
    +[VOSCommand ReadAllPrefixes];
  }

  v3 = ReadAllPrefixes__Command;

  return v3;
}

uint64_t __29__VOSCommand_ReadAllPrefixes__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadAllPrefixes__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadAllPrefixes" votEventCommandName:kVOTEventCommandReadAllPrefixes];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ReadFromTopPrefixes
{
  if (ReadFromTopPrefixes_onceToken != -1)
  {
    +[VOSCommand ReadFromTopPrefixes];
  }

  v3 = ReadFromTopPrefixes__Command;

  return v3;
}

uint64_t __33__VOSCommand_ReadFromTopPrefixes__block_invoke()
{
  v0 = [VOSCommand alloc];
  ReadFromTopPrefixes__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ReadFromTopPrefixes" votEventCommandName:kVOTEventCommandReadFromTopPrefixes];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveIn
{
  if (MoveIn_onceToken != -1)
  {
    +[VOSCommand MoveIn];
  }

  v3 = MoveIn__Command;

  return v3;
}

uint64_t __20__VOSCommand_MoveIn__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveIn__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveIn" votEventCommandName:kVOTEventCommandMoveIn];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)MoveOut
{
  if (MoveOut_onceToken != -1)
  {
    +[VOSCommand MoveOut];
  }

  v3 = MoveOut__Command;

  return v3;
}

uint64_t __21__VOSCommand_MoveOut__block_invoke()
{
  v0 = [VOSCommand alloc];
  MoveOut__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"MoveOut" votEventCommandName:kVOTEventCommandMoveOut];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)ToggleSettingsHUD
{
  if (ToggleSettingsHUD_onceToken != -1)
  {
    +[VOSCommand ToggleSettingsHUD];
  }

  v3 = ToggleSettingsHUD__Command;

  return v3;
}

uint64_t __31__VOSCommand_ToggleSettingsHUD__block_invoke()
{
  v0 = [VOSCommand alloc];
  ToggleSettingsHUD__Command = [(VOSCommand *)v0 _initBuiltInCommandWithRawValue:@"ToggleSettingsHUD" votEventCommandName:kVOTEventCommandToggleSettingsHUD];

  return MEMORY[0x2821F96F8]();
}

+ (VOSCommand)Invalid
{
  if (Invalid_onceToken_1 != -1)
  {
    +[VOSCommand Invalid];
  }

  v3 = Invalid__Command;

  return v3;
}

uint64_t __21__VOSCommand_Invalid__block_invoke()
{
  Invalid__Command = [[VOSCommand alloc] _initBuiltInCommandWithRawValue:@"Invalid" votEventCommandName:0];

  return MEMORY[0x2821F96F8]();
}

+ (NSSet)allBuiltInCommands
{
  if (allBuiltInCommands_onceToken != -1)
  {
    +[VOSCommand allBuiltInCommands];
  }

  v3 = allBuiltInCommands__AllCommands;

  return v3;
}

void __32__VOSCommand_allBuiltInCommands__block_invoke()
{
  v12 = MEMORY[0x277CBEB98];
  v227 = +[VOSCommand None];
  v226 = +[VOSCommand PrimaryActivate];
  v225 = +[VOSCommand SecondaryActivate];
  v224 = +[VOSCommand PerformLongPress];
  v223 = +[VOSCommand MoveToPreviousElement];
  v222 = +[VOSCommand MoveToNextElement];
  v221 = +[VOSCommand MoveToFirstElement];
  v220 = +[VOSCommand MoveToFirstWord];
  v219 = +[VOSCommand MoveToLastElement];
  v218 = +[VOSCommand MoveToCenterElement];
  v217 = +[VOSCommand MoveToLastWord];
  v216 = +[VOSCommand MoveToElementAbove];
  v215 = +[VOSCommand MoveToElementBelow];
  v214 = +[VOSCommand MoveToPreviousElementCommunity];
  v213 = +[VOSCommand MoveToNextElementCommunity];
  v212 = +[VOSCommand MoveToPreviousContainer];
  v211 = +[VOSCommand MoveToNextContainer];
  v210 = +[VOSCommand MoveToTopOfCurrentContainer];
  v209 = +[VOSCommand MoveToBottomOfCurrentContainer];
  v208 = +[VOSCommand MoveToTopOfCurrentDocument];
  v207 = +[VOSCommand MoveToBottomOfCurrentDocument];
  v206 = +[VOSCommand MoveToPreviousCharacter];
  v205 = +[VOSCommand MoveToNextCharacter];
  v204 = +[VOSCommand MoveToPreviousWord];
  v203 = +[VOSCommand MoveToNextWord];
  v202 = +[VOSCommand MoveToPreviousSentence];
  v201 = +[VOSCommand MoveToNextSentence];
  v200 = +[VOSCommand MoveToPreviousParagraph];
  v199 = +[VOSCommand MoveToNextParagraph];
  v198 = +[VOSCommand MoveToStatusBar];
  v197 = +[VOSCommand MoveToLinkedUI];
  v196 = +[VOSCommand MoveToSystemFocusedElement];
  v195 = +[VOSCommand MoveToNextGraphic];
  v194 = +[VOSCommand MoveToPreviousGraphic];
  v193 = +[VOSCommand MoveToNextHeading];
  v192 = +[VOSCommand MoveToPreviousHeading];
  v191 = +[VOSCommand MoveToNextTable];
  v190 = +[VOSCommand MoveToPreviousTable];
  v189 = +[VOSCommand MoveToNextList];
  v188 = +[VOSCommand MoveToPreviousList];
  v187 = +[VOSCommand MoveToNextSameElement];
  v186 = +[VOSCommand MoveToPreviousSameElement];
  v185 = +[VOSCommand MoveToNextControl];
  v184 = +[VOSCommand MoveToPreviousControl];
  v183 = +[VOSCommand MoveToNextRadioGroup];
  v182 = +[VOSCommand MoveToPreviousRadioGroup];
  v181 = +[VOSCommand MoveToNextCheckbox];
  v180 = +[VOSCommand MoveToPreviousCheckbox];
  v179 = +[VOSCommand MoveToNextLink];
  v178 = +[VOSCommand MoveToPreviousLink];
  v177 = +[VOSCommand MoveToNextBlockquote];
  v176 = +[VOSCommand MoveToPreviousBlockquote];
  v175 = +[VOSCommand MoveToNextSameBlockquote];
  v174 = +[VOSCommand MoveToPreviousSameBlockquote];
  v173 = +[VOSCommand MoveToNextVisitedLink];
  v172 = +[VOSCommand MoveToPreviousVisitedLink];
  v171 = +[VOSCommand MoveToNextSameHeading];
  v170 = +[VOSCommand MoveToPreviousSameHeading];
  v169 = +[VOSCommand MoveToNextBoldText];
  v168 = +[VOSCommand MoveToPreviousBoldText];
  v167 = +[VOSCommand MoveToNextMisspelledWord];
  v166 = +[VOSCommand MoveToPreviousMisspelledWord];
  v165 = +[VOSCommand MoveToNextPlainText];
  v164 = +[VOSCommand MoveToPreviousPlainText];
  v163 = +[VOSCommand MoveToNextColorChange];
  v162 = +[VOSCommand MoveToPreviousColorChange];
  v161 = +[VOSCommand MoveToNextItalicText];
  v160 = +[VOSCommand MoveToPreviousItalicText];
  v159 = +[VOSCommand MoveToNextUnderlineText];
  v158 = +[VOSCommand MoveToPreviousUnderlineText];
  v157 = +[VOSCommand MoveToNextDifferentElement];
  v156 = +[VOSCommand MoveToPreviousDifferentElement];
  v155 = +[VOSCommand MoveToNextColumn];
  v154 = +[VOSCommand MoveToPreviousColumn];
  v153 = +[VOSCommand MoveToNextFontChange];
  v152 = +[VOSCommand MoveToPreviousFontChange];
  v151 = +[VOSCommand MoveToNextFrame];
  v150 = +[VOSCommand MoveToPreviousFrame];
  v149 = +[VOSCommand MoveToNextStyleChange];
  v148 = +[VOSCommand MoveToPreviousStyleChange];
  v147 = +[VOSCommand FindElementWithTextSearch];
  v146 = +[VOSCommand PreviousSearchResult];
  v145 = +[VOSCommand NextSearchResult];
  v144 = +[VOSCommand Copy];
  v143 = +[VOSCommand Cut];
  v142 = +[VOSCommand Paste];
  v141 = +[VOSCommand Undo];
  v140 = +[VOSCommand Redo];
  v139 = +[VOSCommand ToggleTextSelection];
  v138 = +[VOSCommand SummarizeElement];
  v137 = +[VOSCommand SummarizeSystemFocusedElement];
  v136 = +[VOSCommand ReadSystemFocusedElementDetails];
  v135 = +[VOSCommand PreviewElementWith3DTouch];
  v134 = +[VOSCommand AnalyzeElement];
  v133 = +[VOSCommand ReadAll];
  v132 = +[VOSCommand ReadFromTop];
  v131 = +[VOSCommand ReadLine];
  v130 = +[VOSCommand ReadWord];
  v129 = +[VOSCommand ReadHint];
  v128 = +[VOSCommand ReadTextStyle];
  v127 = +[VOSCommand ReadURL];
  v126 = +[VOSCommand ReadSelectedText];
  v125 = +[VOSCommand ReadCharacter];
  v124 = +[VOSCommand ReadCharacterPhonetically];
  v123 = +[VOSCommand ReadRowHeader];
  v122 = +[VOSCommand ReadRowContents];
  v121 = +[VOSCommand ReadTableRowColumn];
  v120 = +[VOSCommand ReadColumnHeader];
  v119 = +[VOSCommand ReadColumnContents];
  v118 = +[VOSCommand ReadTableRowColumnCell];
  v117 = +[VOSCommand ReadLineCount];
  v116 = +[VOSCommand ToggleSpeech];
  v115 = +[VOSCommand ToggleMute];
  v114 = +[VOSCommand ToggleScreenCurtain];
  v113 = +[VOSCommand ToggleSoundCurtain];
  v112 = +[VOSCommand ShowItemChooser];
  v111 = +[VOSCommand OpenVoiceOverSettings];
  v110 = +[VOSCommand StartHelp];
  v109 = +[VOSCommand MagicTap];
  v108 = +[VOSCommand Escape];
  v107 = +[VOSCommand ScrollUp];
  v106 = +[VOSCommand ScrollDown];
  v105 = +[VOSCommand ScrollLeft];
  v104 = +[VOSCommand ScrollRight];
  v103 = +[VOSCommand ScrollToTop];
  v102 = +[VOSCommand ScrollToBottom];
  v101 = +[VOSCommand PreviousRotor];
  v100 = +[VOSCommand NextRotor];
  v99 = +[VOSCommand PreviousRotorItem];
  v98 = +[VOSCommand NextRotorItem];
  v97 = +[VOSCommand CopySpeechToClipboard];
  v96 = +[VOSCommand ToggleCaptionPanel];
  v95 = +[VOSCommand ToggleIgnoreTrackpad];
  v94 = +[VOSCommand LabelElement];
  v93 = +[VOSCommand DescribeImage];
  v92 = +[VOSCommand LaunchPeopleDetection];
  v91 = +[VOSCommand MonitorElement];
  v90 = +[VOSCommand ActivateBrailleScreenInput];
  v89 = +[VOSCommand ActivateBrailleScreenInputCommand];
  v88 = +[VOSCommand ActivateBrailleScreenInputPreferringSingleHand];
  v87 = +[VOSCommand ToggleSingleLetterQuickNav];
  v86 = +[VOSCommand ToggleQuickNav];
  v85 = +[VOSCommand ToggleLockModifierKeys];
  v84 = +[VOSCommand ChangeAudioDuckingMode];
  v83 = +[VOSCommand ToggleNavigationStyle];
  v82 = +[VOSCommand ToggleSyncNativeAndExploreFocus];
  v81 = +[VOSCommand ToggleAutomaticAccessibility];
  v80 = +[VOSCommand VolumeUp];
  v79 = +[VOSCommand VolumeDown];
  v78 = +[VOSCommand ToggleLiveRegions];
  v77 = +[VOSCommand NextKeyboardLanguage];
  v76 = +[VOSCommand ShowNotificationCenter];
  v75 = +[VOSCommand ToggleTypeToSiri];
  v74 = +[VOSCommand ShowControlCenter];
  v73 = +[VOSCommand ActivateSpeakScreen];
  v72 = +[VOSCommand ActivateHomeButton];
  v71 = +[VOSCommand ToggleDock];
  v70 = +[VOSCommand ToggleAppSwitcher];
  v69 = +[VOSCommand ActivateLockButton];
  v68 = +[VOSCommand ShowSpotlight];
  v67 = +[VOSCommand ActivateAccessibilityShortcut];
  v66 = +[VOSCommand ToggleReachability];
  v65 = +[VOSCommand TakeScreenshot];
  v64 = +[VOSCommand SwitchToPreviousApp];
  v63 = +[VOSCommand SwitchToNextApp];
  v62 = +[VOSCommand ToggleQuickNote];
  v61 = +[VOSCommand PreviousHandwritingCharacterMode];
  v60 = +[VOSCommand NextHandwritingCharacterMode];
  v59 = +[VOSCommand AnnounceHandwritingCharacterMode];
  v58 = +[VOSCommand BSIPreviousBrailleMode];
  v57 = +[VOSCommand BSINextBrailleMode];
  v56 = +[VOSCommand BSIPreviousUsage];
  v55 = +[VOSCommand BSINextUsage];
  v54 = +[VOSCommand BSITranslateImmediately];
  v53 = +[VOSCommand BSIOrientationLock];
  v52 = +[VOSCommand BSIQuickAction];
  v51 = +[VOSCommand BSIExit];
  v50 = +[VOSCommand BSIPreviousRotor];
  v49 = +[VOSCommand BSINextRotor];
  v47 = +[VOSCommand BSIEscape];
  v48 = +[VOSCommand BSIPreviousTextSegment];
  v46 = +[VOSCommand BSINextTextSegment];
  v45 = +[VOSCommand BSISelectPreviousTextSegment];
  v44 = +[VOSCommand BSISelectNextTextSegment];
  v43 = +[VOSCommand BSIPreviousTextSegmentType];
  v42 = +[VOSCommand BSINextTextSegmentType];
  v41 = +[VOSCommand BraillePanLeft];
  v40 = +[VOSCommand BraillePanRight];
  v39 = +[VOSCommand BrailleNextInputTable];
  v38 = +[VOSCommand BrailleNextOutputTable];
  v37 = +[VOSCommand BrailleAnnouncementMode];
  v36 = +[VOSCommand BrailleTranslate];
  v35 = +[VOSCommand BrailleToggleWordWrap];
  v34 = +[VOSCommand BrailleTranslateToClipboard];
  v33 = +[VOSCommand BrailleEnableAutoAdvance];
  v32 = +[VOSCommand BrailleIncreaseAutoAdvance];
  v31 = +[VOSCommand BrailleDecreaseAutoAdvance];
  v30 = +[VOSCommand BrailleReconnectBrailleDisplays];
  v29 = +[VOSCommand BrailleTogglePerkinsKeyboardInput];
  v28 = +[VOSCommand BrailleToggleKeyboardBrailleUI];
  v27 = +[VOSCommand BrailleToggleBrailleUI];
  v26 = +[VOSCommand BrailleActivateBrailleUILaunchApp];
  v25 = +[VOSCommand BrailleActivateBrailleUIChooseItem];
  v24 = +[VOSCommand BrailleActivateBrailleUIBrailleNotes];
  v23 = +[VOSCommand BrailleActivateBrailleUIFinder];
  v22 = +[VOSCommand BrailleActivateBrailleUINemethCalculator];
  v21 = +[VOSCommand BrailleActivateBrailleUILiveCaptions];
  v20 = +[VOSCommand BrailleActivateBrailleUIDateTime];
  v19 = +[VOSCommand GesturedTextInputInsertSpace];
  v18 = +[VOSCommand GesturedTextInputBackspace];
  v17 = +[VOSCommand GesturedTextInputDeleteWord];
  v16 = +[VOSCommand GesturedTextInputPerformReturnEquivalent];
  v15 = +[VOSCommand GesturedTextInputPreviousSuggestion];
  v14 = +[VOSCommand GesturedTextInputNextSuggestion];
  v13 = +[VOSCommand GesturedTextInputLaunchApp];
  v0 = +[VOSCommand GesturedTextInputNextKeyboardLanguage];
  v1 = +[VOSCommand GesturedTextInputNextBrailleTable];
  v2 = +[VOSCommand NextSpeechVoice];
  v3 = +[VOSCommand PreviousSpeechVoice];
  v4 = +[VOSCommand DescribeCameraScene];
  v5 = +[VOSCommand ReadAllPrefixes];
  v6 = +[VOSCommand ReadFromTopPrefixes];
  v7 = +[VOSCommand ToggleSettingsHUD];
  v8 = +[VOSCommand MoveIn];
  v11 = +[VOSCommand MoveOut];
  v9 = [v12 setWithObjects:{v227, v226, v225, v224, v223, v222, v221, v220, v219, v218, v217, v216, v215, v214, v213, v212, v211, v210, v209, v208, v207, v206, v205, v204, v203, v202, v201, v200, v199, v198, v197, v196, v195, v194, v193, v192, v191, v190, v189, v188, v187, v186, v185, v184, v183, v182, v181, v180, v179, v178, v177, v176, v175, v174, v173, v172, v171, v170, v169, v168, v167}];
  v10 = allBuiltInCommands__AllCommands;
  allBuiltInCommands__AllCommands = v9;
}

+ (id)builtInCommandWithStringValue:(id)value
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allBuiltInCommands = [self allBuiltInCommands];
  v6 = [allBuiltInCommands countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allBuiltInCommands);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9[1] isEqualToString:valueCopy])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allBuiltInCommands countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)commandForVOSEventCommand:(id)command
{
  v18 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  if (commandCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[VOSCommand allBuiltInCommands];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          votEventCommandName = [v8 votEventCommandName];
          v10 = [votEventCommandName isEqualToString:commandCopy];

          if (v10)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[VOSCommand commandType](self, "commandType") || [v5 commandType])
    {
      if (-[VOSCommand commandType](self, "commandType") != 1 || [v5 commandType] != 1)
      {
        v10 = 0;
LABEL_11:

        goto LABEL_12;
      }

      siriShortcut = [(VOSCommand *)self siriShortcut];
      identifier = [siriShortcut identifier];
      siriShortcut2 = [v5 siriShortcut];
      identifier2 = [siriShortcut2 identifier];
      v10 = [identifier isEqual:identifier2];
    }

    else
    {
      siriShortcut = [(VOSCommand *)self rawValue];
      identifier = [v5 rawValue];
      v10 = [siriShortcut isEqualToString:identifier];
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  commandType = [(VOSCommand *)self commandType];
  if (commandType == 1)
  {
    siriShortcut = [(VOSCommand *)self siriShortcut];
    identifier = [siriShortcut identifier];
    v5 = [identifier hash];
  }

  else
  {
    if (commandType)
    {
      return 0;
    }

    siriShortcut = [(VOSCommand *)self rawValue];
    v5 = [siriShortcut hash];
  }

  return v5;
}

- (NSString)localizedName
{
  if (!-[NSString hasPrefix:](self->_rawValue, "hasPrefix:", @"Braille") || (v3 = objc_opt_new(), -[VOSCommand votEventCommandName](self, "votEventCommandName"), v4 = objc_claimAutoreleasedReturnValue(), [v3 localizedNameForCommand:v4], shortcutName = objc_claimAutoreleasedReturnValue(), v4, v3, !shortcutName))
  {
    commandType = self->_commandType;
    if (commandType == 1)
    {
      shortcutName = [(AXSiriShortcut *)self->_siriShortcut shortcutName];
    }

    else if (commandType)
    {
      shortcutName = 0;
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"VOSCommand.%@", self->_rawValue];
      shortcutName = VOSLocString(v7);
    }
  }

  return shortcutName;
}

@end