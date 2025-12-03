@interface CACSpokenCommand
+ (id)attributedStringFromRecognizedCommandParameters:(id)parameters variantOverrides:(id)overrides;
+ (id)languageModelFromCommandDictionary:(id)dictionary tokenResolution:(id)resolution containsBuiltInIdentifier:(BOOL *)identifier error:(id *)error;
+ (id)stringFromContextEvaluationDictionary:(id)dictionary isCustom:(BOOL)custom;
+ (void)displayRecognizedMessageUsingAttributedString:(id)string;
- (BOOL)_endDragForLabeledElement:(id)element;
- (BOOL)_handleDisambiguationIfNeededWithBlock:(id)block;
- (BOOL)_isLeftToRightWritingSystem;
- (BOOL)_performActionOnTextSegment:(id)segment;
- (BOOL)_performActionOnTextSegmentRange:(id)range;
- (BOOL)_performScrollingAction:(int)action;
- (BOOL)_performUncheckedScrollAction:(int)action forScrollAreaSupportingAction:(int)supportingAction;
- (BOOL)_startDragForLabeledElement:(id)element;
- (BOOL)_updateGridWithNumberOfColumnsAndRows:(BOOL)rows;
- (BOOL)isListening;
- (BOOL)isRestrictedForAAC;
- (BOOL)scrollToLandmark;
- (CACCommandRecognizer)commandRecognizer;
- (CACLanguageModel)languageModel;
- (CACSpokenCommand)initWithProperties:(id)properties;
- (CACSpokenCommand)initWithSpokenCommand:(id)command;
- (SEL)action;
- (_NSRange)_rangeFromPreviousTextInsertionForAXElement:(id)element;
- (id)_axActionOfType:(int64_t)type forElement:(id)element;
- (id)_dragActionForLabeledElement:(id)element;
- (id)_dropActionForLabeledElement:(id)element;
- (id)_elementActionManager;
- (id)_markerRangeForTextSegment;
- (id)_markerRangeForTextSegmentRange;
- (id)_nBestListFromPreviousTextInsertionForAXElement:(id)element;
- (id)_scrollAncestorsFromTopLevelElementsForAction:(int)action categorizedElements:(id *)elements;
- (id)_strippedPhraseStringsFromStrings:(id)strings;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_textSegmentCardinalNumber;
- (int64_t)_textSegmentCardinalNumberEnd;
- (int64_t)_textSegmentCardinalNumberStart;
- (unsigned)_getModifierFlag;
- (void)_activateKeyboardReturnKey:(id)key;
- (void)_didShowOverlayWithHintIdentifier:(id)identifier hint:(id)hint;
- (void)_displayNumberedGridAtCurrentNumberOfColumnsAndRows;
- (void)_handleGestureWithBlock:(id)block;
- (void)_handleGestureWithBlock:(id)block repeating:(int64_t)repeating interval:(double)interval;
- (void)_handleTwoPointGestureWithBlock:(id)block;
- (void)_insertProgrammingSymbol:(id)symbol combineStrings:(id)strings;
- (void)_postKeyboardEventsForModifierFlags:(unsigned int)flags isKeyDown:(BOOL)down;
- (void)_scrollWithCount:(unint64_t)count forAction:(int)action;
- (void)_selectTextSegment:(id)segment insertionString:(id)string commandIdentifier:(id)identifier;
- (void)_selectTextSegmentRange:(id)range insertionString:(id)string commandIdentifier:(id)identifier;
- (void)_smartInsertComment:(id)comment;
- (void)_updateGridWithNumberOfRows:(BOOL)rows;
- (void)activateAppLibrary;
- (void)activateAppSwitcher;
- (void)activateApplePay;
- (void)activateControlCenter;
- (void)activateDock;
- (void)activateLockButton;
- (void)activateMenuBar;
- (void)activateNotificationCenter;
- (void)activateSOS;
- (void)activateScreenItem;
- (void)activateSiri;
- (void)activateSpeakScreen;
- (void)activateSpotlight;
- (void)activateSysdiagnose;
- (void)activateTripleClick;
- (void)activateTypeToSiri;
- (void)addSelectionToVocabulary:(id)vocabulary;
- (void)alwaysShowOverlayGrid;
- (void)alwaysShowOverlayGridWithNumberOfColumns;
- (void)alwaysShowOverlayGridWithNumberOfRows;
- (void)alwaysShowOverlayNames;
- (void)alwaysShowOverlayNumbers;
- (void)applyFormat:(id)format;
- (void)armApplePay;
- (void)cancelGesture;
- (void)changeTextSegment:(id)segment;
- (void)changeTextSegmentRange:(id)range;
- (void)chooseAllOverlayItems;
- (void)chooseOverlayItem;
- (void)closeApplication;
- (void)closeFrontApplication;
- (void)copyTextSegment:(id)segment;
- (void)copyTextSegmentRange:(id)range;
- (void)correctSelection:(id)selection;
- (void)correctTextSegment:(id)segment;
- (void)correctTextSegmentRange:(id)range;
- (void)createCustomCommand;
- (void)cutTextSegment:(id)segment;
- (void)cutTextSegmentRange:(id)range;
- (void)decreaseVolume;
- (void)decreaseZoomLevel;
- (void)decrementItem;
- (void)delete:(id)delete;
- (void)deleteAll:(id)all;
- (void)deleteCurrentCharacter:(id)character;
- (void)deleteCurrentLine:(id)line;
- (void)deleteCurrentParagraph:(id)paragraph;
- (void)deleteCurrentSentence:(id)sentence;
- (void)deleteCurrentWord:(id)word;
- (void)deleteNextCharacter:(id)character;
- (void)deleteNextLine:(id)line;
- (void)deleteNextParagraph:(id)paragraph;
- (void)deleteNextSentence:(id)sentence;
- (void)deleteNextWord:(id)word;
- (void)deletePreviousCharacter:(id)character;
- (void)deletePreviousLine:(id)line;
- (void)deletePreviousParagraph:(id)paragraph;
- (void)deletePreviousSentence:(id)sentence;
- (void)deletePreviousWord:(id)word;
- (void)deleteTextSegment:(id)segment;
- (void)deleteTextSegmentRange:(id)range;
- (void)disableAssistiveTouch;
- (void)disableAttentionAwareness;
- (void)disableClassicInvertColors;
- (void)disableColorFilters;
- (void)disableCommandAndControl;
- (void)disableEyeTracking;
- (void)disableFullKeyboardAccess;
- (void)disableHeadTracking;
- (void)disableReduceWhitePoint;
- (void)disableSmartInvertColors;
- (void)disableSwitchControl;
- (void)disableVoiceOver;
- (void)disableWatchMirroring;
- (void)disableWatchRemoteControl;
- (void)disableZoom;
- (void)dismissSiri;
- (void)dragFromPointToPoint;
- (void)enableAssistiveTouch;
- (void)enableAttentionAwareness;
- (void)enableClassicInvertColors;
- (void)enableColorFilters;
- (void)enableEyeTracking;
- (void)enableFullKeyboardAccess;
- (void)enableHeadTracking;
- (void)enableReduceWhitePoint;
- (void)enableSmartInvertColors;
- (void)enableSwitchControl;
- (void)enableVoiceOver;
- (void)enableWatchMirroring;
- (void)enableWatchRemoteControl;
- (void)enableZoom;
- (void)endDrag;
- (void)extendSelectionBackwardCharactersUsingCardinalNumber:(id)number;
- (void)extendSelectionBackwardLinesUsingCardinalNumber:(id)number;
- (void)extendSelectionBackwardParagraphsUsingCardinalNumber:(id)number;
- (void)extendSelectionBackwardSentencesUsingCardinalNumber:(id)number;
- (void)extendSelectionBackwardWordsUsingCardinalNumber:(id)number;
- (void)extendSelectionForwardCharactersUsingCardinalNumber:(id)number;
- (void)extendSelectionForwardLinesUsingCardinalNumber:(id)number;
- (void)extendSelectionForwardParagraphsUsingCardinalNumber:(id)number;
- (void)extendSelectionForwardSentencesUsingCardinalNumber:(id)number;
- (void)extendSelectionForwardWordsUsingCardinalNumber:(id)number;
- (void)extendSelectionToBeginning:(id)beginning;
- (void)extendSelectionToEnd:(id)end;
- (void)extendSelectionToTextSegment:(id)segment;
- (void)goBack;
- (void)goToEndOfDocument:(id)document;
- (void)goToEndOfLine:(id)line;
- (void)goToEndOfParagraph:(id)paragraph;
- (void)goToEndOfSelection:(id)selection;
- (void)goToEndOfSentence:(id)sentence;
- (void)goToEndOfWord:(id)word;
- (void)goToStartOfDocument:(id)document;
- (void)goToStartOfLine:(id)line;
- (void)goToStartOfParagraph:(id)paragraph;
- (void)goToStartOfSelection:(id)selection;
- (void)goToStartOfSentence:(id)sentence;
- (void)goToStartOfWord:(id)word;
- (void)handleLabeledElementFromNameOrNumberWithBlock:(id)block;
- (void)handleLabeledElementsFromTwoNumbersWithBlock:(id)block;
- (void)handleSleepListening;
- (void)handleWakeListening;
- (void)hangUp;
- (void)hideControlCenter;
- (void)hideElementNames;
- (void)hideNotificationCenter;
- (void)hideNumberedElements;
- (void)hideNumberedGrid;
- (void)hideSearch;
- (void)hideTextEditingNumbers;
- (void)hideVirtualKeyboard;
- (void)increaseVolume;
- (void)increaseZoomLevel;
- (void)incrementItem;
- (void)insertDate:(id)date;
- (void)insertEmoji:(id)emoji;
- (void)insertLineAbove:(id)above;
- (void)insertLineBelow:(id)below;
- (void)insertPhraseAfterTextSegment:(id)segment;
- (void)insertPhraseBeforeTextSegment:(id)segment;
- (void)insertSingleLineComment:(id)comment;
- (void)lockScreen;
- (void)maximizeZoomLevel;
- (void)minimizeZoomLevel;
- (void)moveBackwardCharactersUsingCardinalNumber:(id)number;
- (void)moveBackwardLinesUsingCardinalNumber:(id)number;
- (void)moveBackwardParagraphsUsingCardinalNumber:(id)number;
- (void)moveBackwardSentencesUsingCardinalNumber:(id)number;
- (void)moveBackwardWordsUsingCardinalNumber:(id)number;
- (void)moveDown:(id)down;
- (void)moveForwardCharactersUsingCardinalNumber:(id)number;
- (void)moveForwardLinesUsingCardinalNumber:(id)number;
- (void)moveForwardParagraphsUsingCardinalNumber:(id)number;
- (void)moveForwardSentencesUsingCardinalNumber:(id)number;
- (void)moveForwardWordsUsingCardinalNumber:(id)number;
- (void)moveLeft:(id)left;
- (void)moveLeftCharactersUsingCardinalNumber:(id)number;
- (void)moveLeftSentencesUsingCardinalNumber:(id)number;
- (void)moveLeftWordsUsingCardinalNumber:(id)number;
- (void)moveRight:(id)right;
- (void)moveRightCharactersUsingCardinalNumber:(id)number;
- (void)moveRightSentencesUsingCardinalNumber:(id)number;
- (void)moveRightWordsUsingCardinalNumber:(id)number;
- (void)moveToEndOfTextSegment:(id)segment;
- (void)moveToStartOfTextSegment:(id)segment;
- (void)moveUp:(id)up;
- (void)openApplication;
- (void)panDown;
- (void)panLeft;
- (void)panRight;
- (void)panUp;
- (void)panZoomDown;
- (void)panZoomLeft;
- (void)panZoomRight;
- (void)panZoomUp;
- (void)pasteboardCopy:(id)copy;
- (void)pasteboardCut:(id)cut;
- (void)pasteboardPaste:(id)paste;
- (void)performAction;
- (void)postKeyboardEventWithKeyCode:(unsigned __int16)code modifierFlags:(unsigned int)flags isKeyDown:(BOOL)down;
- (void)pressKeyboardKey;
- (void)pressOverlayItem;
- (void)reboot;
- (void)repeatPreviousCommand;
- (void)rotateToLandscape;
- (void)rotateToPortrait;
- (void)scrollPageDown;
- (void)scrollPageLeft;
- (void)scrollPageRight;
- (void)scrollPageUp;
- (void)scrollToBottom;
- (void)scrollToTop;
- (void)searchSpotlight;
- (void)searchWeb;
- (void)selectAll:(id)all;
- (void)selectCurrentCharacter:(id)character;
- (void)selectCurrentLine:(id)line;
- (void)selectCurrentParagraph:(id)paragraph;
- (void)selectCurrentSentence:(id)sentence;
- (void)selectCurrentWord:(id)word;
- (void)selectNext:(id)next;
- (void)selectNextCharacter:(id)character;
- (void)selectNextLine:(id)line;
- (void)selectNextParagraph:(id)paragraph;
- (void)selectNextSentence:(id)sentence;
- (void)selectNextWord:(id)word;
- (void)selectPhrase:(id)phrase;
- (void)selectPhraseThroughPhrase:(id)phrase;
- (void)selectPrevious:(id)previous;
- (void)selectPreviousCharacter:(id)character;
- (void)selectPreviousLine:(id)line;
- (void)selectPreviousParagraph:(id)paragraph;
- (void)selectPreviousSentence:(id)sentence;
- (void)selectPreviousTextInsertion:(id)insertion;
- (void)selectPreviousWord:(id)word;
- (void)selectTextSegment:(id)segment postAction:(id)action;
- (void)selectTextSegmentRange:(id)range;
- (void)selectTextSegmentRange:(id)range postAction:(id)action;
- (void)setAction:(SEL)action;
- (void)setCompletionBlock:(id)block;
- (void)setExecuting:(BOOL)executing;
- (void)shake;
- (void)showActiveCommands;
- (void)showCommands;
- (void)showElementNames;
- (void)showGridWithNumberOfColumns;
- (void)showGridWithNumberOfRows;
- (void)showNumberedElements;
- (void)showNumberedGrid;
- (void)showTextEditingNumbers;
- (void)showTraining;
- (void)showVirtualKeyboard;
- (void)showVocabulary;
- (void)sleepCarPlay;
- (void)startCommandMode;
- (void)startDictationMode;
- (void)startDrag;
- (void)startNumberMode;
- (void)startRecordingGesture;
- (void)startRecordingUserActions;
- (void)startSpellingMode;
- (void)stopRecordingGesture;
- (void)stopRecordingUserActions;
- (void)surroundSelectionWithPunctuation:(id)punctuation;
- (void)swipeDown;
- (void)swipeLeft;
- (void)swipeRight;
- (void)swipeUp;
- (void)systemDoubleLightPressCameraButton;
- (void)systemLightPressCameraButton;
- (void)systemLongPressCameraButton;
- (void)systemPressCameraButton;
- (void)systemPressKeySpace;
- (void)takeScreenshot;
- (void)toggleDock;
- (void)toggleMute;
- (void)toggleRingerSwitchOff;
- (void)toggleRingerSwitchOn;
- (void)tripleClick;
- (void)twoFingerPanDown;
- (void)twoFingerPanLeft;
- (void)twoFingerPanRight;
- (void)twoFingerPanUp;
- (void)twoFingerSwipeDown;
- (void)twoFingerSwipeLeft;
- (void)twoFingerSwipeRight;
- (void)twoFingerSwipeUp;
- (void)unselect:(id)unselect;
- (void)voActivate;
- (void)voMagicTap;
- (void)voReadAll;
- (void)voSelectFirstItem;
- (void)voSelectLastItem;
- (void)voSelectNextApp;
- (void)voSelectNextItem;
- (void)voSelectNextRotor;
- (void)voSelectNextRotorOption;
- (void)voSelectPreviousApp;
- (void)voSelectPreviousItem;
- (void)voSelectPreviousRotor;
- (void)voSelectPreviousRotorOption;
- (void)voSelectStatusBar;
- (void)voShowItemChooser;
- (void)voSpeakSummary;
- (void)voStopSpeaking;
- (void)voToggleScreenCurtain;
- (void)wakeCarPlay;
@end

@implementation CACSpokenCommand

- (id)_elementActionManager
{
  if (_elementActionManager_onceToken != -1)
  {
    [CACSpokenCommand(CACSpokenCommandGestures) _elementActionManager];
  }

  v3 = _elementActionManager_sElementActionManager;

  return v3;
}

void __67__CACSpokenCommand_CACSpokenCommandGestures___elementActionManager__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CE7808]);
  v3 = +[CACAXDragManager sharedManager];
  v1 = [v0 initWithDragManager:v3];
  v2 = _elementActionManager_sElementActionManager;
  _elementActionManager_sElementActionManager = v1;
}

- (void)_handleGestureWithBlock:(id)block repeating:(int64_t)repeating interval:(double)interval
{
  blockCopy = block;
  if (repeating >= 1)
  {
    v9 = 0;
    do
    {
      v10 = dispatch_time(0, (v9 * interval * 1000000000.0));
      v11 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      commandExecutionDispatchQueue = [v11 commandExecutionDispatchQueue];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __89__CACSpokenCommand_CACSpokenCommandGestures___handleGestureWithBlock_repeating_interval___block_invoke;
      v13[3] = &unk_279CEB3E0;
      v13[4] = self;
      v14 = blockCopy;
      dispatch_after(v10, commandExecutionDispatchQueue, v13);

      ++v9;
    }

    while (repeating != v9);
  }
}

- (void)_handleGestureWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__CACSpokenCommand_CACSpokenCommandGestures___handleGestureWithBlock___block_invoke;
  v6[3] = &unk_279CEB408;
  v7 = blockCopy;
  v5 = blockCopy;
  [(CACSpokenCommand *)self handleLabeledElementFromNameOrNumberWithBlock:v6];
}

void __70__CACSpokenCommand_CACSpokenCommandGestures___handleGestureWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__CACSpokenCommand_CACSpokenCommandGestures___handleGestureWithBlock___block_invoke_2;
  v5[3] = &unk_279CEB3E0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __70__CACSpokenCommand_CACSpokenCommandGestures___handleGestureWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) element];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 element];
    [v4 visibleFrame];
    AX_CGRectGetCenter();
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [v3 rectangle];
    AX_CGRectGetCenter();
    v6 = v9;
    v8 = v10;
  }

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) displayID];
  v13 = *(v11 + 16);
  v14.n128_u64[0] = v6;
  v15.n128_u64[0] = v8;

  return v13(v11, v12, v14, v15);
}

- (void)_handleTwoPointGestureWithBlock:(id)block
{
  blockCopy = block;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__CACSpokenCommand_CACSpokenCommandGestures___handleTwoPointGestureWithBlock___block_invoke;
  v6[3] = &unk_279CEB458;
  v7 = blockCopy;
  v5 = blockCopy;
  [(CACSpokenCommand *)self handleLabeledElementsFromTwoNumbersWithBlock:v6];
}

void __78__CACSpokenCommand_CACSpokenCommandGestures___handleTwoPointGestureWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__CACSpokenCommand_CACSpokenCommandGestures___handleTwoPointGestureWithBlock___block_invoke_2;
  block[3] = &unk_279CEB430;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __78__CACSpokenCommand_CACSpokenCommandGestures___handleTwoPointGestureWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) element];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 element];
    [v4 visibleFrame];
    AX_CGRectGetCenter();
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [v3 rectangle];
    AX_CGRectGetCenter();
    v6 = v9;
    v8 = v10;
  }

  v11 = [*(a1 + 40) element];

  v12 = *(a1 + 40);
  if (v11)
  {
    v13 = [v12 element];
    [v13 visibleFrame];
    AX_CGRectGetCenter();
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [v12 rectangle];
    AX_CGRectGetCenter();
    v15 = v18;
    v17 = v19;
  }

  v20 = *(a1 + 48);
  v21 = [*(a1 + 32) displayID];
  v22 = [*(a1 + 40) displayID];
  v23 = *(v20 + 16);
  v24.n128_u64[0] = v6;
  v25.n128_u64[0] = v8;
  v26.n128_u64[0] = v15;
  v27.n128_u64[0] = v17;

  return v23(v20, v21, v22, v24, v25, v26, v27);
}

void __52__CACSpokenCommand_CACSpokenCommandGestures__zoomIn__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performPinchOutGestureAtPoint:{a1, a2}];
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__zoomOut__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performPinchInGestureAtPoint:{a1, a2}];
}

void __57__CACSpokenCommand_CACSpokenCommandGestures__rotateRight__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performRotateRightGestureAtPoint:{a1, a2}];
}

void __56__CACSpokenCommand_CACSpokenCommandGestures__rotateLeft__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performRotateLeftGestureAtPoint:{a1, a2}];
}

- (void)swipeUp
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_296 repeating:intValue interval:0.5];
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__swipeUp__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:2 inDirection:1 fast:1 numberOfFingers:{a1, a2}];
}

- (void)swipeDown
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_298 repeating:intValue interval:0.5];
}

void __55__CACSpokenCommand_CACSpokenCommandGestures__swipeDown__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:3 inDirection:1 fast:1 numberOfFingers:{a1, a2}];
}

- (void)swipeLeft
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_300 repeating:intValue interval:0.5];
}

void __55__CACSpokenCommand_CACSpokenCommandGestures__swipeLeft__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:0 inDirection:1 fast:1 numberOfFingers:{a1, a2}];
}

- (void)swipeRight
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_302 repeating:intValue interval:0.5];
}

void __56__CACSpokenCommand_CACSpokenCommandGestures__swipeRight__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:1 inDirection:1 fast:1 numberOfFingers:{a1, a2}];
}

void __58__CACSpokenCommand_CACSpokenCommandGestures__swipeFromTop__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  v4 = [v3 fingerController];
  v11 = [v4 fingerContainerView];

  [v11 bounds];
  MidX = CGRectGetMidX(v13);
  [v11 bounds];
  v6 = CGRectGetMinY(v14) + 1.0;
  [v11 bounds];
  v7 = CGRectGetMidX(v15);
  [v11 bounds];
  MinY = CGRectGetMinY(v16);
  [v11 bounds];
  v9 = MinY + CGRectGetHeight(v17) * 0.6;
  v10 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  [v10 performSwipeGestureFromPoint:1 toPoint:1 fast:MidX numberOfFingers:{v6, v7, v9}];
}

void __61__CACSpokenCommand_CACSpokenCommandGestures__swipeFromBottom__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  v4 = [v3 fingerController];
  v11 = [v4 fingerContainerView];

  [v11 bounds];
  MidX = CGRectGetMidX(v13);
  [v11 bounds];
  v6 = CGRectGetMaxY(v14) + -1.0;
  [v11 bounds];
  v7 = CGRectGetMidX(v15);
  [v11 bounds];
  MaxY = CGRectGetMaxY(v16);
  [v11 bounds];
  v9 = MaxY + CGRectGetHeight(v17) * -0.6;
  v10 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  [v10 performSwipeGestureFromPoint:1 toPoint:1 fast:MidX numberOfFingers:{v6, v7, v9}];
}

void __59__CACSpokenCommand_CACSpokenCommandGestures__swipeFromLeft__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  v4 = [v3 fingerController];
  v11 = [v4 fingerContainerView];

  [v11 bounds];
  v5 = CGRectGetMinX(v13) + 1.0;
  [v11 bounds];
  MidY = CGRectGetMidY(v14);
  [v11 bounds];
  MinX = CGRectGetMinX(v15);
  [v11 bounds];
  v8 = MinX + CGRectGetWidth(v16) * 0.6;
  [v11 bounds];
  v9 = CGRectGetMidY(v17);
  v10 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  [v10 performSwipeGestureFromPoint:1 toPoint:1 fast:v5 numberOfFingers:{MidY, v8, v9}];
}

void __60__CACSpokenCommand_CACSpokenCommandGestures__swipeFromRight__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  v4 = [v3 fingerController];
  v11 = [v4 fingerContainerView];

  [v11 bounds];
  v5 = CGRectGetMaxX(v13) + -1.0;
  [v11 bounds];
  MidY = CGRectGetMidY(v14);
  [v11 bounds];
  MaxX = CGRectGetMaxX(v15);
  [v11 bounds];
  v8 = MaxX + CGRectGetWidth(v16) * -0.6;
  [v11 bounds];
  v9 = CGRectGetMidY(v17);
  v10 = [CACSpokenCommandGestureManager managerForDisplayID:a2];
  [v10 performSwipeGestureFromPoint:1 toPoint:1 fast:v5 numberOfFingers:{MidY, v8, v9}];
}

- (void)panUp
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_312 repeating:intValue interval:1.0];
}

void __51__CACSpokenCommand_CACSpokenCommandGestures__panUp__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:2 inDirection:0 fast:1 numberOfFingers:{a1, a2}];
}

- (void)panDown
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_314 repeating:intValue interval:1.0];
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__panDown__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:3 inDirection:0 fast:1 numberOfFingers:{a1, a2}];
}

- (void)panLeft
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_316 repeating:intValue interval:1.0];
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__panLeft__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:0 inDirection:0 fast:1 numberOfFingers:{a1, a2}];
}

- (void)panRight
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_318 repeating:intValue interval:1.0];
}

void __54__CACSpokenCommand_CACSpokenCommandGestures__panRight__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:1 inDirection:0 fast:1 numberOfFingers:{a1, a2}];
}

- (void)twoFingerSwipeUp
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_320 repeating:intValue interval:0.5];
}

void __62__CACSpokenCommand_CACSpokenCommandGestures__twoFingerSwipeUp__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:2 inDirection:1 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerSwipeDown
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_322 repeating:intValue interval:0.5];
}

void __64__CACSpokenCommand_CACSpokenCommandGestures__twoFingerSwipeDown__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:3 inDirection:1 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerSwipeLeft
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_324 repeating:intValue interval:0.5];
}

void __64__CACSpokenCommand_CACSpokenCommandGestures__twoFingerSwipeLeft__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:0 inDirection:1 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerSwipeRight
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_326 repeating:intValue interval:0.5];
}

void __65__CACSpokenCommand_CACSpokenCommandGestures__twoFingerSwipeRight__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:1 inDirection:1 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerPanUp
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_328 repeating:intValue interval:1.0];
}

void __60__CACSpokenCommand_CACSpokenCommandGestures__twoFingerPanUp__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:2 inDirection:0 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerPanDown
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_330 repeating:intValue interval:1.0];
}

void __62__CACSpokenCommand_CACSpokenCommandGestures__twoFingerPanDown__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:3 inDirection:0 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerPanLeft
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_332 repeating:intValue interval:1.0];
}

void __62__CACSpokenCommand_CACSpokenCommandGestures__twoFingerPanLeft__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:0 inDirection:0 fast:2 numberOfFingers:{a1, a2}];
}

- (void)twoFingerPanRight
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_334 repeating:intValue interval:1.0];
}

void __63__CACSpokenCommand_CACSpokenCommandGestures__twoFingerPanRight__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performSwipeGestureAtPoint:1 inDirection:0 fast:2 numberOfFingers:{a1, a2}];
}

void __55__CACSpokenCommand_CACSpokenCommandGestures__doubleTap__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performDoubleTapAtPoint:1 numberOfFingers:{a1, a2}];
}

void __64__CACSpokenCommand_CACSpokenCommandGestures__twoFingerDoubleTap__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performDoubleTapAtPoint:2 numberOfFingers:{a1, a2}];
}

void __49__CACSpokenCommand_CACSpokenCommandGestures__tap__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performTapAtPoint:1 numberOfFingers:{a1, a2}];
}

void __58__CACSpokenCommand_CACSpokenCommandGestures__twoFingerTap__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performTapAtPoint:2 numberOfFingers:{a1, a2}];
}

- (id)_dragActionForLabeledElement:(id)element
{
  element = [element element];
  v5 = [(CACSpokenCommand *)self _axActionOfType:1 forElement:element];

  return v5;
}

- (id)_dropActionForLabeledElement:(id)element
{
  element = [element element];
  v5 = [(CACSpokenCommand *)self _axActionOfType:2 forElement:element];

  return v5;
}

- (id)_axActionOfType:(int64_t)type forElement:(id)element
{
  if (element)
  {
    elementCopy = element;
    _elementActionManager = [(CACSpokenCommand *)self _elementActionManager];
    v8 = [_elementActionManager actionsForElement:elementCopy];

    if ([v8 count] && (v12[0] = MEMORY[0x277D85DD0], v12[1] = 3221225472, v12[2] = __73__CACSpokenCommand_CACSpokenCommandGestures___axActionOfType_forElement___block_invoke, v12[3] = &__block_descriptor_40_e32_B32__0__AXElementAction_8Q16_B24l, v12[4] = type, v9 = objc_msgSend(v8, "indexOfObjectPassingTest:", v12), v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_startDragForLabeledElement:(id)element
{
  v4 = [(CACSpokenCommand *)self _dragActionForLabeledElement:element];
  if (v4)
  {
    _elementActionManager = [(CACSpokenCommand *)self _elementActionManager];
    v6 = [_elementActionManager performAction:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_endDragForLabeledElement:(id)element
{
  v4 = [(CACSpokenCommand *)self _dropActionForLabeledElement:element];
  if (v4)
  {
    _elementActionManager = [(CACSpokenCommand *)self _elementActionManager];
    v6 = [_elementActionManager performAction:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)startDrag
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__CACSpokenCommand_CACSpokenCommandGestures__startDrag__block_invoke;
  v2[3] = &unk_279CEB4E8;
  v2[4] = self;
  [(CACSpokenCommand *)self handleLabeledElementFromNameOrNumberWithBlock:v2];
}

void __55__CACSpokenCommand_CACSpokenCommandGestures__startDrag__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _dragActionForLabeledElement:v3];
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__CACSpokenCommand_CACSpokenCommandGestures__startDrag__block_invoke_2;
    v5[3] = &unk_279CEB4C0;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  else
  {
    [*(a1 + 32) _handleGestureWithBlock:&__block_literal_global_345];
  }
}

void __55__CACSpokenCommand_CACSpokenCommandGestures__startDrag__block_invoke_3(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 startDragAtPoint:{a1, a2}];
}

void __62__CACSpokenCommand_CACSpokenCommandGestures__startHoldAndDrag__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 startHoldAndDragAtPoint:{a1, a2}];
}

- (void)endDrag
{
  v3 = +[CACAXDragManager sharedManager];
  isDragActive = [v3 isDragActive];

  if (isDragActive)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke;
    v5[3] = &unk_279CEB4E8;
    v5[4] = self;
    [(CACSpokenCommand *)self handleLabeledElementFromNameOrNumberWithBlock:v5];
  }

  else
  {

    [(CACSpokenCommand *)self _handleGestureWithBlock:&__block_literal_global_352];
  }
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _dropActionForLabeledElement:v3];
  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke_2;
    v5[3] = &unk_279CEB4C0;
    v5[4] = *(a1 + 32);
    v6 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }

  else
  {
    [*(a1 + 32) _handleGestureWithBlock:&__block_literal_global_349];
  }
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke_3(double a1, double a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke_4;
  v2[3] = &__block_descriptor_48_e5_v8__0l;
  *&v2[4] = a1;
  *&v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke_4(uint64_t a1)
{
  v2 = +[CACAXDragManager sharedManager];
  [v2 moveToAndDropAtPoint:{*(a1 + 32), *(a1 + 40)}];
}

void __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke_5(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  v8 = [v7 isInGesture];

  if (v8)
  {
    v10 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
    [v10 endDragAtPoint:{a1, a2}];
  }

  else
  {
    v9 = CACLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __53__CACSpokenCommand_CACSpokenCommandGestures__endDrag__block_invoke_5_cold_1(v9);
    }
  }
}

- (void)dragFromPointToPoint
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke;
  v2[3] = &unk_279CEB578;
  v2[4] = self;
  [(CACSpokenCommand *)self handleLabeledElementsFromTwoNumbersWithBlock:v2];
}

void __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _dragActionForLabeledElement:v5];
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_2;
    block[3] = &unk_279CEB550;
    block[4] = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 32) _handleTwoPointGestureWithBlock:&__block_literal_global_357];
  }
}

void __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _startDragForLabeledElement:*(a1 + 40)];
  v2 = dispatch_time(0, 1000000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_3;
  v3[3] = &unk_279CEB4C0;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 48);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

void __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_3(uint64_t a1)
{
  v2 = +[CACAXDragManager sharedManager];
  v3 = [v2 isDragActive];

  if (v3)
  {
    v4 = [*(a1 + 32) _dropActionForLabeledElement:*(a1 + 40)];
    if (v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_4;
      v6[3] = &unk_279CEB4C0;
      v5 = *(a1 + 40);
      v6[4] = *(a1 + 32);
      v7 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }

    else
    {
      [*(a1 + 32) _handleTwoPointGestureWithBlock:&__block_literal_global_355];
    }
  }
}

void __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_5(double a1, double a2, double a3, double a4)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_6;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  *&v4[4] = a3;
  *&v4[5] = a4;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_6(uint64_t a1)
{
  v2 = +[CACAXDragManager sharedManager];
  [v2 moveToAndDropAtPoint:{*(a1 + 32), *(a1 + 40)}];
}

void __66__CACSpokenCommand_CACSpokenCommandGestures__dragFromPointToPoint__block_invoke_7(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v11 = [CACSpokenCommandGestureManager managerForDisplayID:a6];
  [v11 startDragAtPoint:{a1, a2}];

  v12 = [CACSpokenCommandGestureManager managerForDisplayID:a6];
  v13 = [v12 isInGesture];

  if (v13)
  {
    v14 = [CACSpokenCommandGestureManager managerForDisplayID:a6];
    [v14 endDragAtPoint:{a3, a4}];
  }
}

- (void)cancelGesture
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = +[CACSpokenCommandGestureManager allManagers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v9 + 1) + 8 * v6++) resetState];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = +[CACAXDragManager sharedManager];
  isDragActive = [v7 isDragActive];

  if (isDragActive)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_359);
  }
}

void __59__CACSpokenCommand_CACSpokenCommandGestures__cancelGesture__block_invoke()
{
  v0 = +[CACAXDragManager sharedManager];
  [v0 cancelDrag];
}

void __55__CACSpokenCommand_CACSpokenCommandGestures__longPress__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performLongPressAtPoint:1 numberOfFingers:{a1, a2}];
}

void __64__CACSpokenCommand_CACSpokenCommandGestures__twoFingerLongPress__block_invoke(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [CACSpokenCommandGestureManager managerForDisplayID:a4];
  [v6 performLongPressAtPoint:2 numberOfFingers:{a1, a2}];
}

- (void)_postKeyboardEventsForModifierFlags:(unsigned int)flags isKeyDown:(BOOL)down
{
  downCopy = down;
  v25[5] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_287BEFB80;
  v24[1] = &unk_287BEFBB0;
  v25[0] = &unk_287BEFB98;
  v25[1] = &unk_287BEFBC8;
  v24[2] = &unk_287BEFBE0;
  v24[3] = &unk_287BEFC10;
  v25[2] = &unk_287BEFBF8;
  v25[3] = &unk_287BEFC28;
  v24[4] = &unk_287BEFC40;
  v25[4] = &unk_287BEFC58;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v7 = v6;
  if (flags)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [v6 allKeys];
    v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      if (downCopy)
      {
        LODWORD(v10) = 0;
      }

      else
      {
        LODWORD(v10) = flags;
      }

      v11 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          unsignedIntValue = [v13 unsignedIntValue];
          v15 = [v7 objectForKey:v13];
          unsignedIntValue2 = [v15 unsignedIntValue];

          if ((unsignedIntValue & flags) != 0)
          {
            if (downCopy)
            {
              v10 = unsignedIntValue | v10;
            }

            else
            {
              v10 = v10 & ~unsignedIntValue;
            }

            [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:unsignedIntValue2 modifierFlags:v10 isKeyDown:downCopy];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }
  }
}

- (void)postKeyboardEventWithKeyCode:(unsigned __int16)code modifierFlags:(unsigned int)flags isKeyDown:(BOOL)down
{
  v5 = *&flags;
  codeCopy = code;
  if (down)
  {
    v7 = 10;
  }

  else
  {
    v7 = 11;
  }

  v10 = [MEMORY[0x277CE7D78] keyRepresentationWithType:v7];
  keyInfo = [v10 keyInfo];
  [keyInfo setKeyCode:codeCopy];
  [keyInfo setModifierState:v5];
  [keyInfo setUnmodifiedInput:&stru_287BD8610];
  [keyInfo setModifiedInput:&stru_287BD8610];
  server = [MEMORY[0x277CE7D30] server];
  [server postEvent:v10 systemEvent:0];

  usleep(0x3E8u);
}

- (void)pressKeyboardKey
{
  v27 = *MEMORY[0x277D85DE8];
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655D8]];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [v4 allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 hasPrefix:@"KeyboardKeyName."])
        {
          v12 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          [v12 setRecognizedCommandIdentifier:v10];

          v11 = [v4 objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  _getModifierFlag = [(CACSpokenCommand *)self _getModifierFlag];
  recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
  v15 = [recognizedParameters2 objectForKey:*MEMORY[0x277D655E8]];
  v16 = [v15 objectForKey:kCACCommandParameterText];

  if (v16)
  {
    intValue = [v16 intValue];
  }

  else
  {
    intValue = 1;
  }

  v18 = [v11 objectForKey:kCACCommandParameterHIDKeyCode];

  if (v18 && intValue >= 1)
  {
    v19 = intValue;
    do
    {
      v20 = [v11 objectForKey:kCACCommandParameterHIDKeyCode];
      integerValue = [v20 integerValue];

      if (_getModifierFlag)
      {
        [(CACSpokenCommand *)self _postKeyboardEventsForModifierFlags:_getModifierFlag isKeyDown:1];
        [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:integerValue modifierFlags:_getModifierFlag isKeyDown:1];
        [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:integerValue modifierFlags:_getModifierFlag isKeyDown:0];
        [(CACSpokenCommand *)self _postKeyboardEventsForModifierFlags:_getModifierFlag isKeyDown:0];
      }

      else
      {
        [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:integerValue modifierFlags:0 isKeyDown:1];
        [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:integerValue modifierFlags:0 isKeyDown:0];
      }

      if (intValue >= 2)
      {
        usleep(0xC350u);
      }

      --v19;
    }

    while (v19);
  }
}

- (void)systemPressKeySpace
{
  [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:44 modifierFlags:0 isKeyDown:1];

  [(CACSpokenCommand *)self postKeyboardEventWithKeyCode:44 modifierFlags:0 isKeyDown:0];
}

- (unsigned)_getModifierFlag
{
  v27 = *MEMORY[0x277D85DE8];
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v21 = [recognizedParameters objectForKey:*MEMORY[0x277D655E0]];

  recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [recognizedParameters2 objectForKey:kCACCommandParameterTextSequence];

  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v22 + 1) + 8 * i) objectForKey:kCACCommandParameterBuiltInIdentifier];
        if (v12)
        {
          [v6 appendString:v12];
          [v6 appendString:{@", "}];
        }

        if (([v12 hasPrefix:@"ModifierKeyName."] & 1) != 0 || objc_msgSend(v12, "hasPrefix:", @"ClickModifierName."))
        {
          v13 = [v21 objectForKey:v12];
          v14 = [v13 objectForKey:kCACCommandParameterAXModifierFlag];
          unsignedIntegerValue = [v14 unsignedIntegerValue];

          v9 |= unsignedIntegerValue;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v6 length])
  {
    v16 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 1}];
    v17 = [v16 mutableCopy];

    v18 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v18 setRecognizedCommandIdentifier:v17];

    v6 = v17;
  }

  return v9;
}

void __39__CACSpokenCommand_VoiceOver__voSelect__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 element];

  if (v2)
  {
    v3 = *MEMORY[0x277D74020];
    v4 = [v6 element];
    v5 = [v4 uiElement];
    UIAccessibilityPostNotification(v3, [v5 axElement]);
  }
}

- (void)voSelectFirstItem
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:10];
}

- (void)voSelectLastItem
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:11];
}

- (void)voSelectNextApp
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:36];
}

- (void)voSelectPreviousApp
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:37];
}

- (void)voToggleScreenCurtain
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:2];
}

- (void)voStopSpeaking
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:20];
}

- (void)voShowItemChooser
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:18];
}

- (void)voSelectStatusBar
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:12];
}

- (void)voSpeakSummary
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:7];
}

- (void)voMagicTap
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:28];
}

- (void)voActivate
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:19];
}

- (void)voSelectNextItem
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:9];
}

- (void)voSelectPreviousItem
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:8];
}

- (void)voSelectNextRotor
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:14];
}

- (void)voSelectPreviousRotor
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:15];
}

- (void)voSelectNextRotorOption
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:17];
}

- (void)voSelectPreviousRotorOption
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:16];
}

- (void)voReadAll
{
  server = [MEMORY[0x277CE7E80] server];
  [server triggerCommand:38];
}

+ (id)stringFromContextEvaluationDictionary:(id)dictionary isCustom:(BOOL)custom
{
  customCopy = custom;
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [dictionaryCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = MEMORY[0x277CCACA8];
        v12 = [dictionaryCopy objectForKey:v10];
        v13 = [v12 description];
        v14 = [v11 stringWithFormat:@"%@_%@", v10, v13];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if (![v5 count])
  {
    if (customCopy)
    {
      v15 = @"CustomDefaultRecognizer";
    }

    else
    {
      v15 = @"DefaultRecognizer";
    }

    [v5 addObject:v15];
  }

  v16 = [v5 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v17 = [v16 componentsJoinedByString:@"_"];

  return v17;
}

+ (id)attributedStringFromRecognizedCommandParameters:(id)parameters variantOverrides:(id)overrides
{
  v45 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  overridesCopy = overrides;
  v6 = objc_opt_new();
  v7 = [parametersCopy objectForKey:kCACCommandParameterTextSequence];
  if ([v7 count])
  {
    v37 = v7;
    v38 = parametersCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (!v9)
    {
      goto LABEL_29;
    }

    v10 = v9;
    v11 = *v41;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 objectForKey:kCACCommandParameterBuiltInIdentifier];
        v15 = [v13 objectForKey:kCACCommandParameterText];
        v16 = v15;
        if (v14)
        {
          v17 = [overridesCopy objectForKey:v14];
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;

              v16 = v18;
LABEL_22:
              if ([v6 length])
              {
                v26 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
                doesCurrentLanguageSupportInterWordSpaces = [v26 doesCurrentLanguageSupportInterWordSpaces];

                if (doesCurrentLanguageSupportInterWordSpaces)
                {
                  v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
                  [v6 appendAttributedString:v28];
                }
              }

              v29 = objc_alloc(MEMORY[0x277CCA898]);
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"\x1B‘%@’", v16];
              v31 = [v29 initWithString:v30 attributes:0];
              [v6 appendAttributedString:v31];

              goto LABEL_26;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              bOOLValue = [v17 BOOLValue];
              v23 = [v38 objectForKey:kCACCommandParameterTextVariants];
              v24 = v23;
              if (bOOLValue && [v23 count] > bOOLValue)
              {
                v25 = [v24 objectAtIndex:bOOLValue];

                v16 = v25;
              }
            }
          }

          if (v16)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (!v15)
          {
            goto LABEL_27;
          }

          if ([v6 length])
          {
            v19 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
            doesCurrentLanguageSupportInterWordSpaces2 = [v19 doesCurrentLanguageSupportInterWordSpaces];

            if (doesCurrentLanguageSupportInterWordSpaces2)
            {
              v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" " attributes:0];
              [v6 appendAttributedString:v21];
            }
          }

          v17 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v16 attributes:0];
          [v6 appendAttributedString:v17];
        }

LABEL_26:

LABEL_27:
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (!v10)
      {
LABEL_29:

        v7 = v37;
        parametersCopy = v38;
        goto LABEL_32;
      }
    }
  }

  v32 = [parametersCopy objectForKey:kCACCommandParameterText];

  if (v32)
  {
    v33 = objc_alloc(MEMORY[0x277CCAB48]);
    v34 = [parametersCopy objectForKey:kCACCommandParameterText];
    v35 = [v33 initWithString:v34];

    v6 = v35;
  }

LABEL_32:

  return v6;
}

+ (void)displayRecognizedMessageUsingAttributedString:(id)string
{
  stringCopy = string;
  v4 = +[CACPreferences sharedPreferences];
  if ([v4 playSoundUponRecognition])
  {

LABEL_3:
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:@"DefaultRecognitionSound" withExtension:@"aiff"];

    v7 = +[CACDisplayManager sharedManager];
    carPlayConnected = [v7 carPlayConnected];

    if (carPlayConnected)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __66__CACSpokenCommand_displayRecognizedMessageUsingAttributedString___block_invoke;
      block[3] = &unk_279CEB2D0;
      v9 = &v26;
      v26 = v6;
      if (displayRecognizedMessageUsingAttributedString__recSoundInit != -1)
      {
        dispatch_once(&displayRecognizedMessageUsingAttributedString__recSoundInit, block);
      }

      AudioServicesPlaySystemSoundWithOptions();
    }

    else
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __66__CACSpokenCommand_displayRecognizedMessageUsingAttributedString___block_invoke_3;
      v23[3] = &unk_279CEB2D0;
      v9 = &v24;
      v24 = v6;
      if (displayRecognizedMessageUsingAttributedString__recSoundInit_503 != -1)
      {
        dispatch_once(&displayRecognizedMessageUsingAttributedString__recSoundInit_503, v23);
      }

      if (displayRecognizedMessageUsingAttributedString__gRecognizedAudioPlayer)
      {
        [displayRecognizedMessageUsingAttributedString__gRecognizedAudioPlayer play];
      }
    }

    goto LABEL_16;
  }

  v10 = +[CACDisplayManager sharedManager];
  if (([v10 carPlayConnected] & 1) == 0)
  {

    goto LABEL_16;
  }

  v11 = +[CACDisplayManager sharedManager];
  carPlayConnectedWirelessly = [v11 carPlayConnectedWirelessly];

  if ((carPlayConnectedWirelessly & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v13 = +[CACPreferences sharedPreferences];
  if (![v13 showTextResponseUponRecognition])
  {
LABEL_23:

    goto LABEL_24;
  }

  v14 = +[CACDisplayManager sharedManager];
  carPlayConnected2 = [v14 carPlayConnected];

  if ((carPlayConnected2 & 1) == 0)
  {
    v16 = dispatch_semaphore_create(0);
    v17 = +[CACDisplayManager sharedManager];
    string = [stringCopy string];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__CACSpokenCommand_displayRecognizedMessageUsingAttributedString___block_invoke_4;
    v21[3] = &unk_279CEB2D0;
    v13 = v16;
    v22 = v13;
    [v17 displayMessageString:string type:2 announcementCompletion:v21];

    v19 = dispatch_time(0, 15000000000);
    if (dispatch_semaphore_wait(v13, v19))
    {
      v20 = CACLogAccessibility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(CACSpokenCommand *)stringCopy displayRecognizedMessageUsingAttributedString:v20];
      }
    }

    goto LABEL_23;
  }

LABEL_24:
}

void __66__CACSpokenCommand_displayRecognizedMessageUsingAttributedString___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*(a1 + 32), *MEMORY[0x277CBA628], 0}];
  AudioServicesCreateSystemSoundIDWithOptions();
  v1 = MEMORY[0x277CBEAC0];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1111];
  v3 = *MEMORY[0x277CBA638];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v5 = [v1 dictionaryWithObjectsAndKeys:{v2, v3, v4, *MEMORY[0x277CBA640], 0}];
  v6 = displayRecognizedMessageUsingAttributedString__playSSOptions;
  displayRecognizedMessageUsingAttributedString__playSSOptions = v5;
}

void __66__CACSpokenCommand_displayRecognizedMessageUsingAttributedString___block_invoke_3(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277CB83D0]) initWithContentsOfURL:*(a1 + 32) error:0];
  v2 = displayRecognizedMessageUsingAttributedString__gRecognizedAudioPlayer;
  displayRecognizedMessageUsingAttributedString__gRecognizedAudioPlayer = v1;

  v3 = [MEMORY[0x277CB83F8] sharedInstance];
  [v3 setCategory:*MEMORY[0x277CB8020] error:0];
}

+ (id)languageModelFromCommandDictionary:(id)dictionary tokenResolution:(id)resolution containsBuiltInIdentifier:(BOOL *)identifier error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  resolutionCopy = resolution;
  v11 = [dictionaryCopy objectForKey:*MEMORY[0x277D65658]];
  bOOLValue = [v11 BOOLValue];

  if (!bOOLValue)
  {
    children = [dictionaryCopy objectForKey:*MEMORY[0x277D65660]];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v23 = [children stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v23 length] || (objc_msgSend(dictionaryCopy, "objectForKey:", *MEMORY[0x277D65648]), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count"), v24, v25))
    {
      v26 = [CACLanguageModel alloc];
      v27 = [dictionaryCopy objectForKey:*MEMORY[0x277D65650]];
      v28 = [dictionaryCopy objectForKey:*MEMORY[0x277D65640]];
      v15 = [(CACLanguageModel *)v26 initWithText:v23 identifier:v27 attributes:v28];

      if (v15)
      {
        v36 = children;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v37 = dictionaryCopy;
        v29 = [dictionaryCopy objectForKey:*MEMORY[0x277D65648]];
        v30 = [v29 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v39;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v39 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [CACSpokenCommand languageModelFromCommandDictionary:*(*(&v38 + 1) + 8 * i) tokenResolution:resolutionCopy containsBuiltInIdentifier:identifier error:error];
              if (v34)
              {
                [(CACLanguageModel *)v15 addChildLanguageModel:v34];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v31);
        }

        children = v36;
        dictionaryCopy = v37;
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_31;
  }

  if (identifier)
  {
    *identifier = 1;
  }

  v13 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v14 = [dictionaryCopy objectForKey:*MEMORY[0x277D65650]];
  v15 = [v13 languageModelForBuiltInLMIdentifier:v14];

  if (resolutionCopy && ![resolutionCopy count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    children = [(CACLanguageModel *)v15 children];
    v17 = [children countByEnumeratingWithState:&v42 objects:v47 count:16];
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
            objc_enumerationMutation(children);
          }

          text = [*(*(&v42 + 1) + 8 * j) text];
          if (text)
          {
            [resolutionCopy addObject:text];
          }
        }

        v18 = [children countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v18);
    }

LABEL_31:
  }

  return v15;
}

- (CACSpokenCommand)initWithProperties:(id)properties
{
  v41 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v35.receiver = self;
  v35.super_class = CACSpokenCommand;
  v5 = [(CACSpokenCommand *)&v35 init];
  if (v5)
  {
    v6 = objc_opt_new();
    [(CACSpokenCommand *)v5 setContextEvaluation:v6];

    if (propertiesCopy)
    {
      v7 = [propertiesCopy objectForKey:kCACCommandPropertyIdentifier];
      [(CACSpokenCommand *)v5 setIdentifier:v7];

      v8 = [propertiesCopy objectForKey:kCACCommandPropertyStrings];
      [(CACSpokenCommand *)v5 setStrings:v8];

      v9 = [propertiesCopy objectForKey:@"ActionMethod"];
      v10 = v9;
      if (v9)
      {
        [(CACSpokenCommand *)v5 setAction:NSSelectorFromString(v9)];
      }

      v11 = [propertiesCopy objectForKey:@"ContextEvaluation"];

      if (v11)
      {
        contextEvaluation = [(CACSpokenCommand *)v5 contextEvaluation];
        v30 = propertiesCopy;
        v13 = [propertiesCopy objectForKey:@"ContextEvaluation"];
        [contextEvaluation addEntriesFromDictionary:v13];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        contextEvaluation2 = [(CACSpokenCommand *)v5 contextEvaluation];
        allKeys = [contextEvaluation2 allKeys];

        v16 = [allKeys countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v32;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v32 != v18)
              {
                objc_enumerationMutation(allKeys);
              }

              v20 = *(*(&v31 + 1) + 8 * i);
              v21 = +[CACSpokenCommandManager hardwareEvaluatorKeys];
              v22 = [v21 containsObject:v20];

              if (v22)
              {
                contextEvaluation3 = [(CACSpokenCommand *)v5 contextEvaluation];
                v24 = [contextEvaluation3 objectForKey:v20];
                v25 = [CACSpokenCommandManager doesEvaluatorKey:v20 matchValue:v24];

                if (!v25)
                {
                  v28 = CACLogAccessibility();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    identifier = v5->_identifier;
                    *buf = 138412546;
                    v37 = identifier;
                    v38 = 2112;
                    v39 = v20;
                    _os_log_impl(&dword_26B354000, v28, OS_LOG_TYPE_INFO, "Removing command %@ for failing evaluator %@", buf, 0x16u);
                  }

                  v26 = 0;
                  propertiesCopy = v30;
                  goto LABEL_18;
                }
              }
            }

            v17 = [allKeys countByEnumeratingWithState:&v31 objects:v40 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        propertiesCopy = v30;
      }
    }
  }

  v26 = v5;
LABEL_18:

  return v26;
}

- (CACSpokenCommand)initWithSpokenCommand:(id)command
{
  commandCopy = command;
  v15.receiver = self;
  v15.super_class = CACSpokenCommand;
  v5 = [(CACSpokenCommand *)&v15 init];
  if (v5)
  {
    identifier = [commandCopy identifier];
    [(CACSpokenCommand *)v5 setIdentifier:identifier];

    strings = [commandCopy strings];
    [(CACSpokenCommand *)v5 setStrings:strings];

    -[CACSpokenCommand setAction:](v5, "setAction:", [commandCopy action]);
    commandRecognizer = [commandCopy commandRecognizer];
    [(CACSpokenCommand *)v5 setCommandRecognizer:commandRecognizer];

    recognizedParameters = [commandCopy recognizedParameters];
    [(CACSpokenCommand *)v5 setRecognizedParameters:recognizedParameters];

    contextEvaluation = [commandCopy contextEvaluation];
    [(CACSpokenCommand *)v5 setContextEvaluation:contextEvaluation];

    languageObject = [commandCopy languageObject];
    [(CACSpokenCommand *)v5 setLanguageObject:languageObject];

    languageModelCache = [commandCopy languageModelCache];
    languageModelCache = v5->_languageModelCache;
    v5->_languageModelCache = languageModelCache;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithSpokenCommand:self];
}

- (CACLanguageModel)languageModel
{
  selfCopy = self;
  v66 = *MEMORY[0x277D85DE8];
  languageModelCache = self->_languageModelCache;
  if (!languageModelCache)
  {
    v4 = [CACLanguageModel alloc];
    identifier = [(CACSpokenCommand *)selfCopy identifier];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{selfCopy->_identifier, kCACLanguageModelAttributeCommandIdentifier, 0}];
    v7 = [(CACLanguageModel *)v4 initWithText:&stru_287BD8610 identifier:identifier attributes:v6];
    v8 = selfCopy->_languageModelCache;
    selfCopy->_languageModelCache = v7;

    identifier2 = [(CACSpokenCommand *)selfCopy identifier];
    LODWORD(identifier) = [identifier2 isEqualToString:@"System.IgnoreSiriKeywordAndOptionalPhrase"];

    if (identifier)
    {
      mEMORY[0x277D7A8C8] = [MEMORY[0x277D7A8C8] sharedPreferences];
      v11 = +[CACPreferences sharedPreferences];
      bestLocaleIdentifier = [v11 bestLocaleIdentifier];
      v13 = [mEMORY[0x277D7A8C8] localizedTriggerPhraseForLanguageCode:bestLocaleIdentifier];

      if (![(__CFString *)v13 length])
      {

        v13 = @"Hey Siri";
      }

      v14 = [CACLanguageModel alloc];
      identifier3 = [(CACSpokenCommand *)selfCopy identifier];
      v16 = *MEMORY[0x277CBED28];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{*MEMORY[0x277CBED28], *MEMORY[0x277D65638], 0}];
      v18 = [(CACLanguageModel *)v14 initWithText:&stru_287BD8610 identifier:identifier3 attributes:v17];

      v19 = [[CACLanguageModel alloc] initWithText:v13 identifier:0 attributes:0];
      v20 = [CACLanguageModel alloc];
      v21 = *MEMORY[0x277D655C8];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v16, *MEMORY[0x277D65630], 0}];
      v23 = [(CACLanguageModel *)v20 initWithText:&stru_287BD8610 identifier:v21 attributes:v22];

      [(CACLanguageModel *)v18 addChildLanguageModel:v19];
      [(CACLanguageModel *)v18 addChildLanguageModel:v23];
      [(CACLanguageModel *)selfCopy->_languageModelCache addChildLanguageModel:v18];
      v24 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{&stru_287BD8610, 0}];
      strings = selfCopy->_strings;
      selfCopy->_strings = v24;
    }

    else if ([(CACSpokenCommand *)selfCopy isCustomCommand])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v55 = selfCopy;
      v26 = selfCopy->_strings;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v58 objects:v65 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v59;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v58 + 1) + 8 * i);
            v57 = 0;
            v32 = [MEMORY[0x277D65598] languageModelDictionaryFromCommandText:v31 parsingErrorString:&v57];
            v33 = v57;
            v34 = 0;
            if (![v33 length])
            {
              v34 = [CACSpokenCommand languageModelFromCommandDictionary:v32 tokenResolution:0 containsBuiltInIdentifier:0 error:0];
            }

            if ([v33 length])
            {
              NSLog(&cfstr_ErrorCreatingL_0.isa, v31, v33);
            }

            else
            {
              [(CACLanguageModel *)v55->_languageModelCache addChildLanguageModel:v34];
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v58 objects:v65 count:16];
        }

        while (v28);
      }

      selfCopy = v55;
    }

    else
    {
      v35 = +[CACPreferences sharedPreferences];
      bestLocaleIdentifier2 = [v35 bestLocaleIdentifier];
      mEMORY[0x277D655A0] = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
      v38 = [mEMORY[0x277D655A0] commandStringsTableForLocaleIdentifier:bestLocaleIdentifier2];

      identifier4 = [(CACSpokenCommand *)selfCopy identifier];
      activeTargetTypes = [MEMORY[0x277D65598] activeTargetTypes];
      v64 = 0;
      v41 = [v38 languageModelDictionaryForCommandIdentifier:identifier4 targetTypes:activeTargetTypes parsingErrorString:&v64];
      v42 = v64;

      if (!selfCopy->_strings)
      {
        v43 = [v35 builtInCommandsStringsTableForLocaleIdentifier:bestLocaleIdentifier2];
        v44 = [v38 spokenStringPermutationsOfLanguageModelDictionary:v41 stringsTable:v43];
        if ([v44 count])
        {
          v45 = objc_alloc(MEMORY[0x277CBEA60]);
          firstObject = [v44 firstObject];
          v47 = [v45 initWithObjects:{firstObject, 0}];
          v48 = selfCopy->_strings;
          selfCopy->_strings = v47;
        }

        else
        {
          firstObject = selfCopy->_strings;
          selfCopy->_strings = 0;
        }
      }

      if (v41 && ![v42 length])
      {
        identifier6 = objc_opt_new();
        v63 = 0;
        v62 = 0;
        v51 = [CACSpokenCommand languageModelFromCommandDictionary:v41 tokenResolution:identifier6 containsBuiltInIdentifier:&v63 error:&v62];
        v50 = v62;
        if (v50)
        {
          identifier5 = [(CACSpokenCommand *)selfCopy identifier];
          [v50 localizedDescription];
          v53 = v56 = v51;
          NSLog(&cfstr_ErrorCreatingL.isa, identifier5, v53);

          v51 = v56;
        }

        else
        {
          [(CACLanguageModel *)selfCopy->_languageModelCache addChildLanguageModel:v51];
        }
      }

      else
      {
        identifier6 = [(CACSpokenCommand *)selfCopy identifier];
        NSLog(&cfstr_ErrorCreatingL.isa, identifier6, v42);
        v50 = 0;
      }
    }

    languageModelCache = selfCopy->_languageModelCache;
  }

  return languageModelCache;
}

- (BOOL)isListening
{
  WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);
  isListening = [WeakRetained isListening];

  return isListening;
}

- (void)setExecuting:(BOOL)executing
{
  if (executing)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_exectutionStartTime = v4;
  }

  else
  {
    self->_exectutionStartTime = 0.0;
    self->_executionCompletionDeterminedManually = 0;
    executionCompletionBlock = self->_executionCompletionBlock;
    if (executionCompletionBlock)
    {
      executionCompletionBlock[2](executionCompletionBlock, self);
      v6 = self->_executionCompletionBlock;
    }

    else
    {
      v6 = 0;
    }

    self->_executionCompletionBlock = 0;

    v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v7 didFinishExecutingSpokenCommand:self];
  }
}

- (void)setCompletionBlock:(id)block
{
  self->_executionCompletionBlock = _Block_copy(block);

  MEMORY[0x2821F96F8]();
}

- (void)performAction
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = RXSignpostLog();
  if (os_signpost_enabled(v3))
  {
    uTF8String = [(NSString *)self->_identifier UTF8String];
    *buf = 136315138;
    v68 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CAC, CmdRec: Performing action.", "%s", buf, 0xCu);
  }

  v5 = CACLogRecognition();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String2 = [(NSString *)self->_identifier UTF8String];
    *buf = 136315138;
    v68 = uTF8String2;
    _os_log_impl(&dword_26B354000, v5, OS_LOG_TYPE_DEFAULT, "CAC, CmdRec: Performing action. %s", buf, 0xCu);
  }

  v7 = +[CACDisplayManager sharedManager];
  [v7 hideDictationRecognizerModeOverlayNow];

  identifier = [(CACSpokenCommand *)self identifier];
  v9 = [identifier hasPrefix:@"Dictation."];

  if (v9)
  {
    v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    disambiguationHandler = [v10 disambiguationHandler];
    labeledElements = [disambiguationHandler labeledElements];
    firstObject = [labeledElements firstObject];
    textMarkerRange = [firstObject textMarkerRange];

    if (!textMarkerRange)
    {
      goto LABEL_20;
    }

    v15 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v15 cancelAnyTransientOverlay];
  }

  else
  {
    v15 = +[CACSpokenCommandGestureManager defaultGestureManager];
    v16 = +[CACDisplayManager sharedManager];
    [v16 defaultPortraitUpPointForGestures];
    [v15 setDefaultPortraitUpPointForGestures:?];

    if (![(NSString *)self->_identifier isEqualToString:@"VoiceOver.StopSpeaking"])
    {
      contextEvaluation = [(CACSpokenCommand *)self contextEvaluation];
      v18 = [contextEvaluation objectForKey:kCACCommandContextDeferRecognizedStringDisplay];
      bOOLValue = [v18 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
        v21 = [CACSpokenCommand attributedStringFromRecognizedCommandParameters:recognizedParameters variantOverrides:0];
        [CACSpokenCommand displayRecognizedMessageUsingAttributedString:v21];
      }
    }

    v22 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v23 = [v22 isActiveOverlayType:@"NumberedGrid"];

    if (v23)
    {
      if (![(NSString *)self->_identifier isEqualToString:@"System.ShowGrid"]&& ![(NSString *)self->_identifier isEqualToString:@"System.HideGrid"]&& ![(NSString *)self->_identifier isEqualToString:@"System.OverlayChooseLabel"]&& ![(NSString *)self->_identifier isEqualToString:@"System.OverlayChooseLabelWithoutPrefix"])
      {
        v24 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        [v24 cancelAnyTransientOverlay];
      }

      v25 = +[CACDisplayManager sharedManager];
      [v25 resetGridIdleTimer];
    }

    else
    {
      v33 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v34 = [v33 isActiveOverlayType:@"NumberedElements"];

      if (v34)
      {
        if ([(NSString *)self->_identifier isEqualToString:@"System.ShowLabels"]|| [(NSString *)self->_identifier isEqualToString:@"System.HideLabels"])
        {
          goto LABEL_19;
        }

        if ([(NSString *)self->_identifier isEqualToString:@"System.GoHome"])
        {
          v35 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          [v35 setNextFetchDelayFactor:8.0];
        }

        v36 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v37 = [(NSString *)self->_identifier isEqualToString:@"System.OverlayChooseLabel"]|| [(NSString *)self->_identifier isEqualToString:@"System.OverlayChooseLabelWithoutPrefix"]|| [(NSString *)self->_identifier isEqualToString:@"System.OverlayChooseAllLabels"];
        [v36 setShouldPreserveDisambiguationHandler:v37];

        v60 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        [v60 cancelAnyTransientOverlay];

        v25 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        [v25 setShouldPreserveDisambiguationHandler:0];
      }

      else
      {
        v40 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v41 = [v40 isActiveOverlayType:@"NamedElements"];

        if (v41)
        {
          if ([(NSString *)self->_identifier isEqualToString:@"System.ShowElementNames"]|| [(NSString *)self->_identifier isEqualToString:@"System.HideElementNames"])
          {
            goto LABEL_19;
          }

          v25 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          [v25 cancelAnyTransientOverlay];
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v25 = +[CACSpokenCommandGestureManager allManagers];
          v45 = [v25 countByEnumeratingWithState:&v62 objects:v66 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v63;
            do
            {
              for (i = 0; i != v46; ++i)
              {
                if (*v63 != v47)
                {
                  objc_enumerationMutation(v25);
                }

                v49 = *(*(&v62 + 1) + 8 * i);
                if ([v49 isInDragGesture] && (objc_msgSend(&unk_287BEFF30, "containsObject:", self->_identifier) & 1) == 0)
                {
                  [v49 resetState];
                }
              }

              v46 = [v25 countByEnumeratingWithState:&v62 objects:v66 count:16];
            }

            while (v46);
          }
        }
      }
    }
  }

LABEL_19:

LABEL_20:
  v26 = +[CACRecordedUserActionManager sharedManager];
  if ([v26 isRecording])
  {
    if ([(NSString *)self->_identifier isEqualToString:@"System.LockScreen"]|| [(NSString *)self->_identifier isEqualToString:@"Accessibility.DisableCommandAndControl"])
    {

LABEL_24:
      v27 = +[CACDisplayManager sharedManager];
      v28 = [CACLocaleUtilities localizedUIStringForKey:@"CommandRecording.Warning.StoppedBecauseOfCommandIdentifier"];
      [v27 displayMessageString:v28 type:0];

      v29 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __33__CACSpokenCommand_performAction__block_invoke;
      block[3] = &unk_279CEB2D0;
      block[4] = self;
      dispatch_after(v29, MEMORY[0x277D85CD0], block);
      goto LABEL_66;
    }

    v39 = [(NSString *)self->_identifier isEqualToString:@"System.SleepListening"];

    if (v39)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v30 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  focusedElement = [v30 focusedElement];

  [(CACSpokenCommand *)self setExecuting:1];
  p_action = &self->_action;
  if (objc_opt_respondsToSelector())
  {
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    selfCopy = self;
    selfCopy2 = focusedElement;
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      systemWideElement = [MEMORY[0x277CE6BA0] systemWideElement];
      v54 = objc_opt_respondsToSelector();

      if (v54)
      {
        systemWideElement2 = [MEMORY[0x277CE6BA0] systemWideElement];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);
        v57 = objc_opt_respondsToSelector();

        if ((v57 & 1) == 0)
        {
          [(CACSpokenCommand *)self handleSpokenCommand:0];
          goto LABEL_65;
        }

        systemWideElement2 = objc_loadWeakRetained(&self->_commandRecognizer);
      }

      v58 = systemWideElement2;
      if (*p_action)
      {
        v59 = *p_action;
      }

      else
      {
        v59 = 0;
      }

      [systemWideElement2 performSelector:v59 withObject:self];

      goto LABEL_65;
    }

    if (*p_action)
    {
      action = *p_action;
    }

    else
    {
      action = 0;
    }

    selfCopy = focusedElement;
    selfCopy2 = self;
  }

  [(CACSpokenCommand *)selfCopy performSelector:action withObject:selfCopy2];
LABEL_65:

LABEL_66:
  if (!self->_executionCompletionDeterminedManually)
  {
    [(CACSpokenCommand *)self setExecuting:0];
  }

  v50 = RXSignpostLog();
  if (os_signpost_enabled(v50))
  {
    uTF8String3 = [(NSString *)self->_identifier UTF8String];
    *buf = 136315138;
    v68 = uTF8String3;
    _os_signpost_emit_with_name_impl(&dword_26B354000, v50, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CAC, CmdRec: Performing action.", "%s", buf, 0xCu);
  }

  v52 = CACLogRecognition();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String4 = [(NSString *)self->_identifier UTF8String];
    *buf = 136315138;
    v68 = uTF8String4;
    _os_log_impl(&dword_26B354000, v52, OS_LOG_TYPE_DEFAULT, "CAC, CmdRec: Performed action. %s", buf, 0xCu);
  }
}

- (void)openApplication
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:@"Text"];
  v5 = [v4 hasPrefix:@"Show"];
  v6 = MEMORY[0x277D65608];
  if (v5)
  {
    recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
    v8 = [recognizedParameters2 objectForKey:*v6];
    v9 = [v8 objectForKey:@"Text"];
    v10 = [v9 isEqualToString:@"Numbers"];

    if (v10)
    {

      [(CACSpokenCommand *)self alwaysShowOverlayNumbers];
      return;
    }
  }

  else
  {
  }

  recognizedParameters3 = [(CACSpokenCommand *)self recognizedParameters];
  v12 = [recognizedParameters3 objectForKey:*v6];
  v13 = [v12 objectForKey:kCACCommandParameterMatchingApps];

  if ([v13 count] == 1)
  {
    firstObject = [v13 firstObject];
    v15 = [firstObject objectForKey:kCACCommandParameterAppIdentifier];
    if (v15)
    {
      [CACApplicationUtilities launchApplicationWithIdentifier:v15];
    }
  }

  else
  {
    firstObject = CACLogGeneral();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [CACSpokenCommand openApplication];
    }
  }
}

- (void)closeApplication
{
  v3 = CACLogDictationCommands();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [CACSpokenCommand closeApplication];
  }

  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [recognizedParameters objectForKey:*MEMORY[0x277D65608]];

  v6 = [v5 objectForKey:kCACCommandParameterMatchingApps];
  if ([v6 count] == 1)
  {
    firstObject = [v6 firstObject];
    v8 = [firstObject objectForKey:kCACCommandParameterAppIdentifier];
    if (v8)
    {
      [CACApplicationUtilities terminateApplicationWithIdentifier:v8];
    }
  }
}

- (void)closeFrontApplication
{
  v2 = CACLogDictationCommands();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [CACSpokenCommand closeFrontApplication];
  }

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  activeApplications = [v3 activeApplications];
  firstObject = [activeApplications firstObject];

  bundleId = [firstObject bundleId];
  if (bundleId)
  {
    systemApplication = [MEMORY[0x277CE6BA0] systemApplication];
    uiElement = [systemApplication uiElement];
    v9 = [uiElement objectWithAXAttribute:1508];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __41__CACSpokenCommand_closeFrontApplication__block_invoke;
    v10[3] = &unk_279CEB8F0;
    v11 = bundleId;
    [v9 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

uint64_t __41__CACSpokenCommand_closeFrontApplication__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEqualToString:*(a1 + 32)];
  if (result)
  {
    result = [CACApplicationUtilities terminateApplicationWithIdentifier:*(a1 + 32)];
    *a4 = 1;
  }

  return result;
}

- (void)_didShowOverlayWithHintIdentifier:(id)identifier hint:(id)hint
{
  identifierCopy = identifier;
  hintCopy = hint;
  v6 = +[CACPreferences sharedPreferences];
  if (([v6 userHintsFeatures] & 2) != 0)
  {
    v7 = +[CACUserHintsManager sharedManager];
    v8 = [v7 shouldDisplayUserHintAfterRegisteringIdentifier:identifierCopy];

    if (v8)
    {
      v9 = +[CACDisplayManager sharedManager];
      [v9 displayMessageString:hintCopy type:0 announcementCompletion:&__block_literal_global_617];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = +[CACDisplayManager sharedManager];
  [v9 speakVoiceOverDescriptionForActiveOverlayIfNeeded];
LABEL_6:
}

void __59__CACSpokenCommand__didShowOverlayWithHintIdentifier_hint___block_invoke()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 speakVoiceOverDescriptionForActiveOverlayIfNeeded];
}

- (BOOL)_handleDisambiguationIfNeededWithBlock:(id)block
{
  blockCopy = block;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D65628]];

  v7 = [v6 objectForKey:kCACCommandParameterLabeledElementForDisambiguation];
  v8 = +[CACDisplayManager sharedManager];
  carPlayConnected = [v8 carPlayConnected];
  if (v7)
  {
    v10 = carPlayConnected;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    selfCopy = self;
    v11 = [v6 objectForKey:kCACCommandParameterText];
    v12 = v11;
    if (!v11 || ![v11 length])
    {
      label = [v7 label];

      v12 = label;
    }

    v14 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v15 = [v14 labeledElementsFromScreenWithTitle:v12];

    v27 = v15;
    v16 = [[CACDisambiguationHandler alloc] initWithLabeledElements:v15];
    [(CACDisambiguationHandler *)v16 setChosenLabeledElementHandler:blockCopy];
    v17 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v17 setDisambiguationHandler:v16];

    v18 = +[CACDisplayManager sharedManager];
    [v18 startShowingTransientOverlayForType:@"NumberedElements"];

    v19 = +[CACPreferences sharedPreferences];
    if ([v19 isEnabledForCommandIdentifier:@"System.OverlayChooseLabelWithoutPrefix"])
    {
      v20 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.DisambiguationPrompt"];
    }

    else
    {
      v21 = MEMORY[0x277CCACA8];
      [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.DisambiguationPromptWithCommandAsArgument"];
      v22 = v26 = blockCopy;
      v23 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v24 = [v23 primaryStringForCommandIdentifier:@"System.OverlayChooseLabel"];
      v20 = [v21 stringWithValidatedFormat:v22 validFormatSpecifiers:@"%@" error:0, v24];

      blockCopy = v26;
    }

    [(CACSpokenCommand *)selfCopy _didShowOverlayWithHintIdentifier:@"DisambiguationPrompt" hint:v20];
  }

  return v10 ^ 1;
}

- (void)activateScreenItem
{
  if (![(CACSpokenCommand *)self _handleDisambiguationIfNeededWithBlock:0])
  {
    recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
    v4 = [recognizedParameters objectForKey:*MEMORY[0x277D65628]];

    v5 = [v4 objectForKey:kCACCommandParameterText];
    if (v5)
    {
      v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v7 = [v6 labeledElementsFromScreenWithTitle:v5];

      firstObject = [v7 firstObject];
      v9 = firstObject;
      if (firstObject)
      {
        element = [firstObject element];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __38__CACSpokenCommand_activateScreenItem__block_invoke;
          block[3] = &unk_279CEB2D0;
          v9 = v9;
          v17 = v9;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }

    else
    {
      v7 = [v4 objectForKey:kCACCommandParameterLabeledElement];
      element2 = [v7 element];
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
LABEL_9:

        return;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __38__CACSpokenCommand_activateScreenItem__block_invoke_2;
      v14[3] = &unk_279CEB2D0;
      v7 = v7;
      v15 = v7;
      dispatch_async(MEMORY[0x277D85CD0], v14);
      v9 = v15;
    }

    goto LABEL_9;
  }
}

void __38__CACSpokenCommand_activateScreenItem__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) element];
  [v1 cacActivate];
}

void __38__CACSpokenCommand_activateScreenItem__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) element];
  [v1 cacActivate];
}

- (void)handleLabeledElementFromNameOrNumberWithBlock:(id)block
{
  blockCopy = block;
  if (![(CACSpokenCommand *)self _handleDisambiguationIfNeededWithBlock:?])
  {
    recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
    v5 = [recognizedParameters objectForKeyedSubscript:*MEMORY[0x277D65628]];
    v6 = [v5 objectForKeyedSubscript:kCACCommandParameterLabeledElement];

    if (!v6)
    {
      recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
      v8 = [recognizedParameters2 objectForKeyedSubscript:*MEMORY[0x277D655F8]];
      v6 = [v8 objectForKeyedSubscript:kCACCommandParameterLabeledElement];
    }

    blockCopy[2](blockCopy, v6);
  }
}

- (void)handleLabeledElementsFromTwoNumbersWithBlock:(id)block
{
  blockCopy = block;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKeyedSubscript:*MEMORY[0x277D655F8]];
  v7 = [v6 objectForKeyedSubscript:kCACCommandParameterLabeledElement];
  recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
  v9 = [recognizedParameters2 objectForKeyedSubscript:*MEMORY[0x277D65600]];
  v10 = [v9 objectForKeyedSubscript:kCACCommandParameterLabeledElement];
  (*(block + 2))(blockCopy, v7, v10);
}

- (void)incrementItem
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v5 = [v4 objectForKey:kCACCommandParameterText];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__CACSpokenCommand_incrementItem__block_invoke;
  v7[3] = &__block_descriptor_40_e27_v16__0__CACLabeledElement_8l;
  v7[4] = intValue;
  [(CACSpokenCommand *)self handleLabeledElementFromNameOrNumberWithBlock:v7];
}

void __33__CACSpokenCommand_incrementItem__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 element];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  [v4 performAction:2004 withValue:v3];
}

- (void)decrementItem
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v5 = [v4 objectForKey:kCACCommandParameterText];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__CACSpokenCommand_decrementItem__block_invoke;
  v7[3] = &__block_descriptor_40_e27_v16__0__CACLabeledElement_8l;
  v7[4] = intValue;
  [(CACSpokenCommand *)self handleLabeledElementFromNameOrNumberWithBlock:v7];
}

void __33__CACSpokenCommand_decrementItem__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 element];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  [v4 performAction:2005 withValue:v3];
}

- (void)showVocabulary
{
  server = [MEMORY[0x277CE7E40] server];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = MEMORY[0x277D85CD0];

    dispatch_async(v4, &__block_literal_global_639);
  }
}

void __34__CACSpokenCommand_showVocabulary__block_invoke()
{
  v0 = [MEMORY[0x277CE7E40] server];
  [v0 performSelector:sel_openCommandAndControlVocabulary withObject:0 afterDelay:0.0];
}

- (void)showTraining
{
  v2 = CACLogAccessibility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_26B354000, v2, OS_LOG_TYPE_INFO, "Opening Voice Control training.", v4, 2u);
  }

  server = [MEMORY[0x277CE7E40] server];
  [server launchOnboardingViewService:@"voicecontrol"];
}

- (void)showCommands
{
  server = [MEMORY[0x277CE7E40] server];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = MEMORY[0x277D85CD0];

    dispatch_async(v4, &__block_literal_global_646);
  }
}

void __32__CACSpokenCommand_showCommands__block_invoke()
{
  v0 = [MEMORY[0x277CE7E40] server];
  [v0 performSelector:sel_openCommandAndControlCommands withObject:0 afterDelay:0.0];
}

- (void)showActiveCommands
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  activeCommandIdentifiers = [v2 activeCommandIdentifiers];

  v4 = +[CACUserHintsManager sharedManager];
  v30 = activeCommandIdentifiers;
  v5 = [v4 suggestedCommandIdentifiersFromActiveCommandIdentifiers:activeCommandIdentifiers maximumCount:10];

  array = [MEMORY[0x277CBEB18] array];
  v6 = +[CACPreferences sharedPreferences];
  bestLocaleIdentifier = [v6 bestLocaleIdentifier];

  mEMORY[0x277D655A0] = [MEMORY[0x277D655A0] sharedSpokenCommandUtilities];
  v9 = [mEMORY[0x277D655A0] commandStringsTableForLocaleIdentifier:bestLocaleIdentifier];

  v10 = +[CACPreferences sharedPreferences];
  v29 = bestLocaleIdentifier;
  v32 = [v10 builtInCommandsStringsTableForLocaleIdentifier:bestLocaleIdentifier];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v33 = *v36;
    v13 = 0x277CCA000uLL;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v35 + 1) + 8 * v14);
        activeTargetTypes = [MEMORY[0x277D65598] activeTargetTypes];
        v17 = [v9 descriptionStringForCommandIdentifier:v15 descriptionType:@"SUMM" targetTypes:activeTargetTypes];

        v18 = [v17 length];
        v19 = objc_alloc(MEMORY[0x277CCAB48]);
        if (v18)
        {
          v20 = [v19 initWithString:v17];
          [v9 resolveReferencesInMutableAttributedString:v20 stringsTable:v32];
        }

        else
        {
          v20 = [v19 initWithString:&stru_287BD8610];
        }

        v21 = *(v13 + 3240);
        v22 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
        v23 = [v22 primaryStringForCommandIdentifier:v15];
        v24 = [v21 stringWithFormat:@"“%@”", v23];

        string = [v20 string];
        if ([string length])
        {
          v26 = [*(v13 + 3240) stringWithFormat:@"%@", string];
        }

        else
        {
          v26 = 0;
        }

        v27 = [CACOnboardingFeature featureWithTitleText:v24 helperText:v26 imageBundleName:@"onboarding-gestures"];
        [array addObject:v27];

        ++v14;
        v13 = 0x277CCA000;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  v28 = +[CACDisplayManager sharedManager];
  [v28 showContextCluesViewWithCommands:array];
}

- (void)showNumberedElements
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v3 setDisambiguationHandler:0];

  v4 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v4 alwaysShowOverlayType];
  v6 = [alwaysShowOverlayType isEqualToString:@"NumberedElements"];

  if (v6)
  {
    v7 = +[CACDisplayManager sharedManager];
    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = +[CACPreferences sharedPreferences];
    alwaysShowOverlayType2 = [v10 alwaysShowOverlayType];
    v12 = [alwaysShowOverlayType2 isEqualToString:@"NumberedGrid"];

    if (v12)
    {
      v13 = +[CACDisplayManager sharedManager];
      [v13 hideAnyNonInteractiveOverlay];
    }

    v7 = +[CACDisplayManager sharedManager];
    v8 = v7;
    v9 = @"NumberedElements";
  }

  [v7 startShowingTransientOverlayForType:v9];

  v14 = +[CACPreferences sharedPreferences];
  if ([v14 isEnabledForCommandIdentifier:@"System.OverlayChooseLabelWithoutPrefix"])
  {
    v19 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ShowNumbersPrompt"];
  }

  else
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ShowNumbersPromptWithCommandAsArgument"];
    v17 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v18 = [v17 primaryStringForCommandIdentifier:@"System.OverlayChooseLabel"];
    v19 = [v15 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, v18];
  }

  [(CACSpokenCommand *)self _didShowOverlayWithHintIdentifier:@"ShowNumbersPrompt" hint:v19];
}

- (void)hideNumberedElements
{
  v2 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v2 alwaysShowOverlayType];
  v4 = [alwaysShowOverlayType isEqualToString:@"NumberedElements"];

  if (v4)
  {
    v5 = +[CACPreferences sharedPreferences];
    [v5 setAlwaysShowOverlayType:@"None"];
  }

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  transientOverlayType = [v6 transientOverlayType];
  v8 = [transientOverlayType isEqualToString:@"NumberedElements"];

  if (v8)
  {
    v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v9 setTransientOverlayType:0];
  }

  v10 = +[CACDisplayManager sharedManager];
  [v10 hideAnyOverlayAnimated:1 includeInteractiveOverlays:0];

  v11 = +[CACDisplayManager sharedManager];
  [v11 refreshOverlays];
}

- (void)alwaysShowOverlayNumbers
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 setAlwaysShowOverlayType:@"NumberedElements"];

  [(CACSpokenCommand *)self showNumberedElements];
}

- (void)showNumberedGrid
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CACSpokenCommand_showNumberedGrid__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __36__CACSpokenCommand_showNumberedGrid__block_invoke(uint64_t a1)
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 updateGridLayoutFromPreferences];

  v3 = *(a1 + 32);

  return [v3 _displayNumberedGridAtCurrentNumberOfColumnsAndRows];
}

- (void)_displayNumberedGridAtCurrentNumberOfColumnsAndRows
{
  v2 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v2 alwaysShowOverlayType];
  v4 = [alwaysShowOverlayType isEqualToString:@"NumberedGrid"];

  v5 = +[CACDisplayManager sharedManager];
  v6 = v5;
  if (v4)
  {
    [v5 startShowingTransientOverlayForType:0];

    v6 = +[CACDisplayManager sharedManager];
    [v6 resetGrid];
  }

  else
  {
    [v5 startShowingTransientOverlayForType:@"NumberedGrid"];
  }

  v10 = +[CACPreferences sharedPreferences];
  if (([v10 userHintsFeatures] & 2) != 0)
  {
    v7 = +[CACUserHintsManager sharedManager];
    v8 = [v7 shouldDisplayUserHintAfterRegisteringIdentifier:@"ShowGridPrompt"];

    if (!v8)
    {
      return;
    }

    v10 = +[CACDisplayManager sharedManager];
    v9 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ShowGridPrompt"];
    [v10 displayMessageString:v9 type:0];
  }
}

- (void)hideNumberedGrid
{
  v2 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v2 alwaysShowOverlayType];
  v4 = [alwaysShowOverlayType isEqualToString:@"NumberedGrid"];

  if (v4)
  {
    v5 = +[CACPreferences sharedPreferences];
    [v5 setAlwaysShowOverlayType:@"None"];
  }

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  transientOverlayType = [v6 transientOverlayType];
  v8 = [transientOverlayType isEqualToString:@"NumberedGrid"];

  if (v8)
  {
    v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v9 setTransientOverlayType:0];
  }

  v10 = +[CACDisplayManager sharedManager];
  [v10 hideAnyOverlayAnimated:1 includeInteractiveOverlays:0];

  v11 = +[CACDisplayManager sharedManager];
  [v11 refreshOverlays];

  v12 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v12 forceSynchronizeRecognizersForBuiltInLMIdentifier:*MEMORY[0x277D65628]];
}

- (void)alwaysShowOverlayGrid
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 setAlwaysShowOverlayType:@"NumberedGrid"];

  [(CACSpokenCommand *)self showNumberedGrid];
}

- (void)alwaysShowOverlayGridWithNumberOfColumns
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 setAlwaysShowOverlayType:@"NumberedGrid"];

  v4 = [(CACSpokenCommand *)self _updateGridWithNumberOfColumnsAndRows:0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CACSpokenCommand_alwaysShowOverlayGridWithNumberOfColumns__block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__CACSpokenCommand_alwaysShowOverlayGridWithNumberOfColumns__block_invoke(uint64_t a1)
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 updatePreferencesFromCurrentGridLayoutForRows:*(a1 + 32) forColumns:1];
}

- (void)alwaysShowOverlayGridWithNumberOfRows
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 setAlwaysShowOverlayType:@"NumberedGrid"];

  [(CACSpokenCommand *)self _updateGridWithNumberOfRows:0];
  v4 = MEMORY[0x277D85CD0];

  dispatch_async(v4, &__block_literal_global_677);
}

void __57__CACSpokenCommand_alwaysShowOverlayGridWithNumberOfRows__block_invoke()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 updatePreferencesFromCurrentGridLayoutForRows:1 forColumns:0];
}

- (void)showElementNames
{
  v3 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v3 alwaysShowOverlayType];
  v5 = [alwaysShowOverlayType isEqualToString:@"NamedElements"];

  if (v5)
  {
    v6 = +[CACDisplayManager sharedManager];
    v7 = v6;
    v8 = 0;
  }

  else
  {
    v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    activeOverlayType = [v9 activeOverlayType];
    v11 = [activeOverlayType isEqualToString:@"NumberedGrid"];

    if (v11)
    {
      v12 = +[CACDisplayManager sharedManager];
      [v12 hideAnyNonInteractiveOverlay];
    }

    v6 = +[CACDisplayManager sharedManager];
    v7 = v6;
    v8 = @"NamedElements";
  }

  [v6 startShowingTransientOverlayForType:v8];

  v13 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v20 = [v13 primaryStringForCommandIdentifier:@"System.PressItem"];

  v14 = +[CACPreferences sharedPreferences];
  v15 = [v14 isEnabledForCommandIdentifier:@"System.PressItemWithoutPrefix"];

  v16 = v20;
  if (v15)
  {
    v17 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ShowNamesPrompt"];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ShowNamesPromptWithCommandAsArgument"];
    v17 = [v18 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:0, v20];
  }

  v16 = v20;
  if (v17)
  {
    [(CACSpokenCommand *)self _didShowOverlayWithHintIdentifier:@"ShowNamesPrompt" hint:v17];

    v16 = v20;
  }

LABEL_12:
}

- (void)hideElementNames
{
  v2 = +[CACPreferences sharedPreferences];
  alwaysShowOverlayType = [v2 alwaysShowOverlayType];
  v4 = [alwaysShowOverlayType isEqualToString:@"NamedElements"];

  if (v4)
  {
    v5 = +[CACPreferences sharedPreferences];
    [v5 setAlwaysShowOverlayType:@"None"];
  }

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  transientOverlayType = [v6 transientOverlayType];
  v8 = [transientOverlayType isEqualToString:@"NamedElements"];

  if (v8)
  {
    v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v9 setTransientOverlayType:0];
  }

  v10 = +[CACDisplayManager sharedManager];
  [v10 hideAnyOverlayAnimated:1 includeInteractiveOverlays:0];

  v11 = +[CACDisplayManager sharedManager];
  [v11 refreshOverlays];
}

- (void)alwaysShowOverlayNames
{
  v3 = +[CACPreferences sharedPreferences];
  [v3 setAlwaysShowOverlayType:@"NamedElements"];

  [(CACSpokenCommand *)self showElementNames];
}

- (void)showGridWithNumberOfColumns
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CACSpokenCommand_showGridWithNumberOfColumns__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)showGridWithNumberOfRows
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__CACSpokenCommand_showGridWithNumberOfRows__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)_updateGridWithNumberOfColumnsAndRows:(BOOL)rows
{
  rowsCopy = rows;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  if (v7)
  {
    integerValue = [v7 integerValue];
    recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
    v10 = [recognizedParameters2 objectForKey:*MEMORY[0x277D655F0]];
    v11 = [v10 objectForKey:kCACCommandParameterText];

    integerValue2 = [v11 integerValue];
    v13 = +[CACDisplayManager sharedManager];
    [v13 updateGridLayoutWithNumberOfRows:integerValue2 numberOfColumns:integerValue shouldPreferRows:0];

    if (rowsCopy)
    {
      [(CACSpokenCommand *)self _displayNumberedGridAtCurrentNumberOfColumnsAndRows];
    }

    v14 = [v11 length] != 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_updateGridWithNumberOfRows:(BOOL)rows
{
  rowsCopy = rows;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v10 = [v6 objectForKey:kCACCommandParameterText];

  v7 = v10;
  if (v10)
  {
    integerValue = [v10 integerValue];
    v9 = +[CACDisplayManager sharedManager];
    [v9 updateGridLayoutWithNumberOfRows:integerValue numberOfColumns:0 shouldPreferRows:1];

    v7 = v10;
    if (rowsCopy)
    {
      [(CACSpokenCommand *)self _displayNumberedGridAtCurrentNumberOfColumnsAndRows];
      v7 = v10;
    }
  }
}

- (void)chooseOverlayItem
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655F8]];
  v27 = [v4 objectForKey:kCACCommandParameterLabeledElement];

  element = [v27 element];
  if (element)
  {
    v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    disambiguationHandler = [v6 disambiguationHandler];

    textMarkerRange = [v27 textMarkerRange];
    v9 = textMarkerRange;
    if (textMarkerRange)
    {
      v10 = disambiguationHandler == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      startMarker = [textMarkerRange startMarker];
      startMarker2 = [v9 startMarker];
      v25 = [CACTextMarkerRange markerRangeWithStartMarker:startMarker endMarker:startMarker2];

      [element cacSetTextSelectionToCACTextMarkerRange:v25];
      v26 = +[CACDisplayManager sharedManager];
      [v26 refreshOverlays];
    }

    else
    {
      [(CACSpokenCommand *)self pressOverlayItem];
    }
  }

  else
  {
    v11 = +[CACDisplayManager sharedManager];
    [v27 rectangle];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    label = [v27 label];
    v21 = [v11 updateGridWithPortraitUpRect:label gridContainingLabel:{v13, v15, v17, v19}];

    if ((v21 & 1) == 0)
    {
      v22 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v22 cancelAnyTransientOverlay];

      [(CACSpokenCommand *)self pressOverlayItem];
    }
  }
}

- (void)pressOverlayItem
{
  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  disambiguationHandler = [v3 disambiguationHandler];

  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v5 cancelAnyTransientOverlay];

  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v7 = [recognizedParameters objectForKey:*MEMORY[0x277D655F8]];
  v8 = [v7 objectForKey:kCACCommandParameterLabeledElement];

  if (disambiguationHandler)
  {
    [disambiguationHandler handleChosenLabeledElement:v8];
    element = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [element setDisambiguationHandler:0];
  }

  else
  {
    element = [v8 element];
    if (element && (objc_opt_respondsToSelector() & 1) != 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__CACSpokenCommand_pressOverlayItem__block_invoke;
      block[3] = &unk_279CEB2D0;
      v16 = element;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      [(CACSpokenCommand *)self tap];
      v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      v11 = [v10 isActiveOverlayType:@"NumberedGrid"];

      if (v11)
      {
        v12 = +[CACDisplayManager sharedManager];
        updateGridLayoutFromPreferences = [v12 updateGridLayoutFromPreferences];

        if (updateGridLayoutFromPreferences)
        {
          v14 = +[CACDisplayManager sharedManager];
          [v14 resetGrid];
        }
      }
    }
  }
}

- (void)chooseAllOverlayItems
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  disambiguationHandler = [v2 disambiguationHandler];

  if (disambiguationHandler)
  {
    chosenLabeledElementHandler = [disambiguationHandler chosenLabeledElementHandler];

    if (chosenLabeledElementHandler)
    {
      labeledElements = [disambiguationHandler labeledElements];
      v6 = [labeledElements count] - 1;
      if (v6 >= 0)
      {
        v7 = MEMORY[0x277D85CD0];
        do
        {
          v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
          [v8 cancelAnyTransientOverlay];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __41__CACSpokenCommand_chooseAllOverlayItems__block_invoke;
          block[3] = &unk_279CEB958;
          v11 = disambiguationHandler;
          v12 = labeledElements;
          v13 = v6;
          dispatch_async(v7, block);
          usleep(0x7A120u);

          --v6;
        }

        while (v6 != -1);
      }

      v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v9 setDisambiguationHandler:0];
    }
  }
}

void __41__CACSpokenCommand_chooseAllOverlayItems__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) objectAtIndex:*(a1 + 48)];
  [v1 handleChosenLabeledElement:v2];
}

- (void)handleSleepListening
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 enterSleepInteractionLevel];
}

- (void)handleWakeListening
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 exitSleepInteractionLevel];
}

- (void)disableCommandAndControl
{
  v2 = dispatch_time(0, 1500000000);
  v3 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v3, &__block_literal_global_695);
}

void __44__CACSpokenCommand_disableCommandAndControl__block_invoke()
{
  v0 = +[CACPreferences sharedPreferences];
  [v0 setCommandAndControlEnabled:0];
}

- (void)sleepCarPlay
{
  [(CACSpokenCommand *)self handleWakeListening];
  v2 = MEMORY[0x277D85CD0];

  dispatch_async(v2, &__block_literal_global_697);
}

void __32__CACSpokenCommand_sleepCarPlay__block_invoke()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 carPlayDidConnect:0];
}

- (void)wakeCarPlay
{
  [(CACSpokenCommand *)self handleWakeListening];
  v2 = MEMORY[0x277D85CD0];

  dispatch_async(v2, &__block_literal_global_699);
}

void __31__CACSpokenCommand_wakeCarPlay__block_invoke()
{
  v0 = +[CACDisplayManager sharedManager];
  [v0 carPlayDidConnect:1];
}

- (void)startDictationMode
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 setDictationRecognizerMode:0];
}

- (void)startCommandMode
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 setDictationRecognizerMode:1];

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v3 dictationRecognizerMode];

  if (dictationRecognizerMode)
  {
    v6 = +[CACDisplayManager sharedManager];
    v5 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ExitingDictationMode"];
    [v6 displayMessageString:v5 type:0];
  }
}

- (void)startSpellingMode
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 setDictationRecognizerMode:3];

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v3 dictationRecognizerMode];

  if (dictationRecognizerMode)
  {
    v6 = +[CACDisplayManager sharedManager];
    v5 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ExitingDictationMode"];
    [v6 displayMessageString:v5 type:0];
  }
}

- (void)startNumberMode
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 setDictationRecognizerMode:2];

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  dictationRecognizerMode = [v3 dictationRecognizerMode];

  if (dictationRecognizerMode)
  {
    v6 = +[CACDisplayManager sharedManager];
    v5 = [CACLocaleUtilities localizedUIStringForKey:@"InfoMessage.ExitingDictationMode"];
    [v6 displayMessageString:v5 type:0];
  }
}

- (void)goBack
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 labeledElementsFromScreenWithTrait:*MEMORY[0x277CE6CF8]];

  if (![v3 count])
  {
    v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    v9 = [CACLocaleUtilities localizedUIStringForKey:@"SafariBackButtonLabel"];
    v6 = [v8 labeledElementsFromScreenWithTitle:v9];

    if ([v6 count])
    {
      firstObject = [v6 firstObject];
      element = [firstObject element];

      v12 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __26__CACSpokenCommand_goBack__block_invoke_2;
      v15[3] = &unk_279CEB2D0;
      v15[4] = element;
      screenElementsForEscape = element;
    }

    else
    {
      v13 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      screenElementsForEscape = [v13 screenElementsForEscape];

      if (![screenElementsForEscape count])
      {
        goto LABEL_8;
      }

      v12 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __26__CACSpokenCommand_goBack__block_invoke_3;
      v14[3] = &unk_279CEB2D0;
      screenElementsForEscape = screenElementsForEscape;
      v14[4] = screenElementsForEscape;
    }

    dispatch_async(MEMORY[0x277D85CD0], v12);

    goto LABEL_8;
  }

  firstObject2 = [v3 firstObject];
  element2 = [firstObject2 element];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__CACSpokenCommand_goBack__block_invoke;
  block[3] = &unk_279CEB2D0;
  v17 = element2;
  v6 = element2;
  dispatch_async(MEMORY[0x277D85CD0], block);
  screenElementsForEscape = v17;
LABEL_8:
}

void __26__CACSpokenCommand_goBack__block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v7 != v4)
      {
        objc_enumerationMutation(v1);
      }

      if ([*(*(&v6 + 1) + 8 * v5) cacPerformExcapeAction])
      {
        break;
      }

      if (v3 == ++v5)
      {
        v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __44__CACSpokenCommand_showAccessibilityActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v12 = +[CACDisplayManager sharedManager];
  v3 = [v2 element];
  [v2 rectangle];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v12 showElementActionsForElement:v3 usingPortraitUpRect:{v5, v7, v9, v11}];
}

- (void)showTextEditingNumbers
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 setTextEditingOverlaysEnabled:1];
}

- (void)hideTextEditingNumbers
{
  v2 = +[CACDisplayManager sharedManager];
  [v2 setTextEditingOverlaysEnabled:0];
}

- (void)showVirtualKeyboard
{
  if (AXUIKeyboardIsOOP())
  {
    systemWideElement = [MEMORY[0x277CE6BA0] systemWideElement];
    uiElement = [systemWideElement uiElement];

    v3 = [uiElement uiElementsWithAttribute:1011];
    lastObject = [v3 lastObject];

    [lastObject performAXAction:2066];
  }

  else
  {
    v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    focusedElement = [v5 focusedElement];
    uiElement = [focusedElement application];

    [uiElement performAction:2066];
  }
}

- (void)hideVirtualKeyboard
{
  if (AXUIKeyboardIsOOP())
  {
    systemWideElement = [MEMORY[0x277CE6BA0] systemWideElement];
    uiElement = [systemWideElement uiElement];

    v3 = [uiElement uiElementsWithAttribute:1011];
    lastObject = [v3 lastObject];

    [lastObject performAXAction:2067];
  }

  else
  {
    v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    focusedElement = [v5 focusedElement];
    uiElement = [focusedElement application];

    [uiElement performAction:2067];
  }
}

- (void)createCustomCommand
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  focusedElement = [v2 focusedElement];

  if (!focusedElement || ((v3 = [focusedElement selectedTextRange], v3 != 0x7FFFFFFF) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v6 = 0;
  }

  else
  {
    v7 = v3;
    v8 = v4;
    value = [focusedElement value];
    v10 = [value substringWithRange:{v7, v8}];

    if ([v10 length])
    {
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }
  }

  v11 = +[CACDisplayManager sharedManager];
  [v11 showCustomCommandEditorWithTextToInsert:v6];
}

- (void)repeatPreviousCommand
{
  intValue = 1;
  [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v5 objectForKey:kCACCommandParameterText];

  v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  if (v6)
  {
    intValue = [v6 intValue];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__CACSpokenCommand_repeatPreviousCommand__block_invoke;
  v8[3] = &unk_279CEB980;
  v8[4] = self;
  [v7 beginExecutingRepeatingSpokenCommandNumberOfTimes:intValue completionBlock:v8];
}

void __41__CACSpokenCommand_repeatPreviousCommand__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [*(a1 + 32) setExecuting:0];
  if ([v7 code])
  {
    v3 = [v7 localizedDescription];
    v4 = [v3 length];

    if (v4)
    {
      v5 = +[CACDisplayManager sharedManager];
      v6 = [v7 localizedDescription];
      [v5 displayMessageString:v6 type:1];
    }
  }
}

- (void)startRecordingGesture
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 startRecordingGesture];

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v3 updateStatusIndicatorView];
}

- (void)stopRecordingGesture
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  stopRecordingGesture = [v2 stopRecordingGesture];

  numberOfEvents = [stopRecordingGesture numberOfEvents];
  v4 = +[CACDisplayManager sharedManager];
  v5 = v4;
  if (numberOfEvents)
  {
    [v4 showCustomCommandEditorWithGesture:stopRecordingGesture];
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"CustomCommand.Error.RecordedEmptyGesture" value:&stru_287BD8610 table:0];
    [v5 displayMessageString:v7 type:1];
  }

  v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v8 updateStatusIndicatorView];
}

- (void)startRecordingUserActions
{
  v2 = +[CACRecordedUserActionManager sharedManager];
  [v2 startRecordingUserActions];

  v3 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v3 updateStatusIndicatorView];
}

- (void)stopRecordingUserActions
{
  v2 = +[CACRecordedUserActionManager sharedManager];
  isRecording = [v2 isRecording];

  if (isRecording)
  {
    v4 = +[CACRecordedUserActionManager sharedManager];
    [v4 stopRecordingUserActions];

    v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v5 updateStatusIndicatorView];

    v6 = +[CACRecordedUserActionManager sharedManager];
    recordedUserActionFlow = [v6 recordedUserActionFlow];

    v7 = +[CACDisplayManager sharedManager];
    [v7 showCustomCommandEditorWithRecordedUserActionFlow:recordedUserActionFlow];
  }
}

- (void)searchSpotlight
{
  v14 = *MEMORY[0x277D85DE8];
  value = [self value];
  label = [self label];
  v8 = 138412802;
  v9 = value;
  v10 = 2112;
  v11 = label;
  v12 = 2048;
  v13 = a2;
  _os_log_debug_impl(&dword_26B354000, a3, OS_LOG_TYPE_DEBUG, "Search Spotlight 5.2. Spotlight search field focused. value: %@, label: %@, numTrysLeft: %ld", &v8, 0x20u);
}

uint64_t __35__CACSpokenCommand_searchSpotlight__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 element];
  v3 = [v2 hasAnyTraits:*MEMORY[0x277CE6D00]];

  return v3;
}

void __35__CACSpokenCommand_searchSpotlight__block_invoke_723(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v3 = [v2 focusedElement];

  v4 = CACLogDictationCommands();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = [v3 hasTextEntry];
    _os_log_impl(&dword_26B354000, v4, OS_LOG_TYPE_DEFAULT, "Search Spotlight 6. Trying to input text. hasTextEntry: %d", v15, 8u);
  }

  if (v3)
  {
    v5 = [v3 value];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (v6)
    {
      v7 = CACLogDictationCommands();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_26B354000, v7, OS_LOG_TYPE_DEFAULT, "Search Spotlight 6.4. Search phrase already entered.", v15, 2u);
      }
    }

    else
    {
      v8 = [v3 value];
      v9 = [v8 length];

      v10 = CACLogDictationCommands();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v11)
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_DEFAULT, "Search Spotlight 6.1. Has existing text. Deleting all.", v15, 2u);
        }

        v12 = [[CACTextEditingProvider alloc] initWithSpokenCommand:*(a1 + 40) axElement:v3];
        v13 = [(CACTextEditingProvider *)v12 textEditingEngine];
        [v13 deleteAll];

        usleep(0x61A80u);
      }

      else
      {
        if (v11)
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_DEFAULT, "Search Spotlight 6.2. Already empty.", v15, 2u);
        }
      }

      v14 = CACLogDictationCommands();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&dword_26B354000, v14, OS_LOG_TYPE_DEFAULT, "Search Spotlight 6.3. Entering dictated text.", v15, 2u);
      }

      v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v7 enterDictatedString:*(a1 + 32)];
    }
  }

  else
  {
    v7 = CACLogDictationCommands();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __35__CACSpokenCommand_searchSpotlight__block_invoke_723_cold_1();
    }
  }

  [*(a1 + 40) setExecuting:0];
}

- (void)hideSearch
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleSpotlight];
}

- (void)enableAttentionAwareness
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 setSleepOnAttentionLost:1];

  v3 = +[CACPreferences sharedPreferences];
  [v3 setWakeOnAttentionGained:1];
}

- (void)disableAttentionAwareness
{
  v2 = +[CACPreferences sharedPreferences];
  [v2 setSleepOnAttentionLost:0];

  v3 = +[CACPreferences sharedPreferences];
  [v3 setWakeOnAttentionGained:0];
}

- (void)searchWeb
{
  v18 = *MEMORY[0x277D85DE8];
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v3 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v4 = [v3 objectForKey:kCACCommandParameterText];

  if ([v4 length])
  {
    v5 = MEMORY[0x277CBEBC0];
    v6 = MEMORY[0x277CCACA8];
    uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v8 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
    v9 = [v6 stringWithFormat:@"x-web-search://?%@", v8];
    v10 = [v5 URLWithString:v9];

    v11 = CACLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_26B354000, v11, OS_LOG_TYPE_INFO, "Asking UIApplication to open URL %@", buf, 0xCu);
    }

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __29__CACSpokenCommand_searchWeb__block_invoke;
    v14[3] = &unk_279CEB760;
    v15 = v10;
    v13 = v10;
    [mEMORY[0x277D75128] openURL:v13 options:MEMORY[0x277CBEC10] completionHandler:v14];
  }
}

void __29__CACSpokenCommand_searchWeb__block_invoke(uint64_t a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = CACLogGeneral();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_26B354000, v5, OS_LOG_TYPE_INFO, "UIApplication successfully opened URL %@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __29__CACSpokenCommand_searchWeb__block_invoke_cold_1(a1, v5);
  }
}

- (void)hangUp
{
  v2 = dispatch_queue_create("com.apple.speech.CallCenterQueue", 0);
  v3 = [MEMORY[0x277D6EDF8] callCenterWithQueue:v2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__CACSpokenCommand_hangUp__block_invoke;
  block[3] = &unk_279CEB2D0;
  v6 = v3;
  v4 = v3;
  dispatch_async(v2, block);
}

void __26__CACSpokenCommand_hangUp__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) incomingCall];
  if (v2 || ([*(a1 + 32) incomingVideoCall], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v2;
    [*(a1 + 32) disconnectCall:v2 withReason:2];
  }

  else if ([*(a1 + 32) hasCurrentCalls])
  {
    v3 = *(a1 + 32);

    [v3 disconnectCurrentCallAndActivateHeld];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(CACSpokenCommand *)self identifier];
  strings = [(CACSpokenCommand *)self strings];
  v6 = [v3 stringWithFormat:@"%@, %@, Rec Params: %@", identifier, strings, self->_recognizedParameters];

  return v6;
}

- (SEL)action
{
  if (self->_action)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

- (CACCommandRecognizer)commandRecognizer
{
  WeakRetained = objc_loadWeakRetained(&self->_commandRecognizer);

  return WeakRetained;
}

- (void)_scrollWithCount:(unint64_t)count forAction:(int)action
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CACSpokenCommand_CACSpokenCommandScrolling___scrollWithCount_forAction___block_invoke;
  block[3] = &unk_279CEBB60;
  block[4] = self;
  block[5] = count;
  actionCopy = action;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __74__CACSpokenCommand_CACSpokenCommandScrolling___scrollWithCount_forAction___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    do
    {
      result = [*(v2 + 32) _performScrollingAction:*(v2 + 48)];
      if (!result)
      {
        break;
      }

      --v1;
      result = usleep(0x186A0u);
    }

    while (v1);
  }

  return result;
}

- (void)scrollPageUp
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v5 = [v4 objectForKey:kCACCommandParameterText];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CACSpokenCommand_CACSpokenCommandScrolling__scrollPageUp__block_invoke;
  v7[3] = &unk_279CEBB88;
  v7[4] = self;
  v7[5] = intValue;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __59__CACSpokenCommand_CACSpokenCommandScrolling__scrollPageUp__block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    do
    {
      if (([*(v2 + 32) _performScrollingAction:2007] & 1) == 0)
      {
        result = [*(v2 + 32) _performScrollingAction:2020];
        if (!result)
        {
          break;
        }
      }

      --v1;
      result = usleep(0x186A0u);
    }

    while (v1);
  }

  return result;
}

- (void)scrollPageDown
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v5 = [v4 objectForKey:kCACCommandParameterText];

  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 1;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CACSpokenCommand_CACSpokenCommandScrolling__scrollPageDown__block_invoke;
  v7[3] = &unk_279CEBB88;
  v7[4] = self;
  v7[5] = intValue;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __61__CACSpokenCommand_CACSpokenCommandScrolling__scrollPageDown__block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    do
    {
      if (([*(v2 + 32) _performScrollingAction:2006] & 1) == 0)
      {
        result = [*(v2 + 32) _performScrollingAction:2019];
        if (!result)
        {
          break;
        }
      }

      --v1;
      result = usleep(0x186A0u);
    }

    while (v1);
  }

  return result;
}

- (void)scrollToTop
{
  if (![(CACSpokenCommand *)self _performUncheckedScrollAction:2068 forScrollAreaSupportingAction:2007])
  {

    [(CACSpokenCommand *)self _scrollWithCount:6 forAction:2007];
  }
}

- (void)scrollToBottom
{
  if (![(CACSpokenCommand *)self _performUncheckedScrollAction:2069 forScrollAreaSupportingAction:2006])
  {

    [(CACSpokenCommand *)self _scrollWithCount:24 forAction:2006];
  }
}

- (BOOL)scrollToLandmark
{
  v37 = *MEMORY[0x277D85DE8];
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v3 = [recognizedParameters objectForKey:*MEMORY[0x277D65628]];

  v4 = [v3 objectForKey:kCACCommandParameterText];
  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v6 = [v5 labeledElementsFromScreenWithTrait:*MEMORY[0x277CE6DF8]];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v25 = *v32;
    v26 = v3;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        element = [v12 element];
        uiElement = [element uiElement];
        v15 = [uiElement arrayWithAXAttribute:2239];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v27 + 1) + 8 * j);
              if (![v21 compare:v4 options:129])
              {
                element2 = [v12 element];
                [element2 performAction:2022 withValue:v21];

                v22 = 1;
                v3 = v26;
                goto LABEL_19;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v10 = v25;
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      v22 = 0;
      v3 = v26;
    }

    while (v9);
  }

  else
  {
    v22 = 0;
  }

LABEL_19:

  return v22;
}

- (void)scrollPageLeft
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _scrollWithCount:intValue forAction:2008];
}

- (void)scrollPageRight
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v4 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
  }

  [(CACSpokenCommand *)self _scrollWithCount:intValue forAction:2009];
}

- (id)_scrollAncestorsFromTopLevelElementsForAction:(int)action categorizedElements:(id *)elements
{
  v4 = *&action;
  v29 = *MEMORY[0x277D85DE8];
  v5 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  screenElementsForScrolling = [v5 screenElementsForScrolling];

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = screenElementsForScrolling;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([v14 supportsAction:v4])
        {
          v15 = [v14 scrollAncestorForScrollAction:v4];
          if (v15)
          {
            v16 = v15;
            v17 = [orderedSet indexOfObject:v15];
            if (v17 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v17 = [orderedSet count];
              [orderedSet addObject:v16];
            }

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v17];
            array = [dictionary objectForKey:v18];
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              [dictionary setObject:array forKey:v18];
            }

            [array addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  if (elements)
  {
    v20 = dictionary;
    *elements = dictionary;
  }

  array2 = [orderedSet array];

  return array2;
}

- (BOOL)_performUncheckedScrollAction:(int)action forScrollAreaSupportingAction:(int)supportingAction
{
  v4 = *&action;
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v5 = [(CACSpokenCommand *)self _scrollAncestorsFromTopLevelElementsForAction:*&supportingAction categorizedElements:&v19];
  v6 = v19;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [v6 allValues];
  v8 = [allValues countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(allValues);
        }

        lastObject = [*(*(&v15 + 1) + 8 * i) lastObject];
        v13 = [lastObject performAction:v4];
      }

      v9 = [allValues countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v9);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_performScrollingAction:(int)action
{
  v3 = *&action;
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v4 = [(CACSpokenCommand *)self _scrollAncestorsFromTopLevelElementsForAction:*&action categorizedElements:&v31];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = v31;
  obj = [v20 allValues];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        reverseObjectEnumerator = [v10 reverseObjectEnumerator];
        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              v16 = *(*(&v23 + 1) + 8 * j);
              if ([v16 supportsAction:v3] && objc_msgSend(v16, "performAction:", v3))
              {
                lastObject = [v10 lastObject];

                if (v16 != lastObject)
                {
                  v18 = CACLogElementEvaluation();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_26B354000, v18, OS_LOG_TYPE_DEFAULT, "Reproduced rdar://132435403.  Fell back to alternate element for scrolling.", buf, 2u);
                  }
                }

                v7 = 1;
                goto LABEL_21;
              }
            }

            v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v32 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v7 = 0;
        }

LABEL_21:
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)enableAssistiveTouch
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setAssistiveTouchEnabled:1];
}

- (void)disableAssistiveTouch
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setAssistiveTouchEnabled:0];
}

- (void)enableClassicInvertColors
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  classicInvertColors = [mEMORY[0x277CE7E20] classicInvertColors];

  if ((classicInvertColors & 1) == 0)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20]2 setClassicInvertColors:1];
  }
}

- (void)disableClassicInvertColors
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  classicInvertColors = [mEMORY[0x277CE7E20] classicInvertColors];

  if (classicInvertColors)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20]2 setClassicInvertColors:0];
  }
}

- (void)enableSmartInvertColors
{
  if (!_AXSInvertColorsEnabled())
  {
    v2 = MEMORY[0x277D85CD0];

    dispatch_async(v2, &__block_literal_global_17);
  }
}

uint64_t __74__CACSpokenCommand_CACSpokenCommandAccessibility__enableSmartInvertColors__block_invoke()
{
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 classicInvertColors];

  if (v1)
  {
    v2 = [MEMORY[0x277CE7E20] sharedInstance];
    [v2 setClassicInvertColors:0];
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = [MEMORY[0x277CE7E20] sharedInstance];
  [v4 setLastSmartInvertColorsEnablement:Current];

  return MEMORY[0x2821F0070](1);
}

- (void)disableSmartInvertColors
{
  if (_AXSInvertColorsEnabled())
  {
    v2 = MEMORY[0x277D85CD0];

    dispatch_async(v2, &__block_literal_global_282);
  }
}

uint64_t __75__CACSpokenCommand_CACSpokenCommandAccessibility__disableSmartInvertColors__block_invoke()
{
  v0 = [MEMORY[0x277CE7E20] sharedInstance];
  v1 = [v0 classicInvertColors];

  if (v1)
  {
    v2 = [MEMORY[0x277CE7E20] sharedInstance];
    [v2 setClassicInvertColors:0];
  }

  return MEMORY[0x2821F0070](0);
}

- (void)enableColorFilters
{
  if (!_AXSDisplayFilterColorEnabled())
  {
    v2 = MEMORY[0x277D85CD0];

    dispatch_async(v2, &__block_literal_global_284);
  }
}

- (void)disableColorFilters
{
  if (_AXSDisplayFilterColorEnabled())
  {
    v2 = MEMORY[0x277D85CD0];

    dispatch_async(v2, &__block_literal_global_286);
  }
}

- (void)enableReduceWhitePoint
{
  if (!_AXSReduceWhitePointEnabled())
  {

    MEMORY[0x2821F0218](1);
  }
}

- (void)disableReduceWhitePoint
{
  if (_AXSReduceWhitePointEnabled())
  {

    MEMORY[0x2821F0218](0);
  }
}

- (void)enableSwitchControl
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setSwitchControlEnabled:1];
}

- (void)disableSwitchControl
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] setSwitchControlEnabled:0];
}

- (void)enableVoiceOver
{
  if (!_AXSVoiceOverTouchEnabled())
  {
    if (!_AXSVoiceOverTouchUsageConfirmed())
    {
      _AXSVoiceOverTouchSetUsageConfirmed();
    }

    if (_AXSCanDisableApplicationAccessibility())
    {
      _AXSApplicationAccessibilitySetEnabled();
    }

    _AXSVoiceOverTouchSetEnabled();

    MEMORY[0x2821F0358](1);
  }
}

- (void)disableVoiceOver
{
  if (_AXSVoiceOverTouchEnabled())
  {
    if (!_AXSVoiceOverTouchUsageConfirmed())
    {
      _AXSVoiceOverTouchSetUsageConfirmed();
    }

    _AXSVoiceOverTouchSetEnabled();

    MEMORY[0x2821F0358](0);
  }
}

- (void)enableWatchMirroring
{
  if (!_AXSTwiceRemoteScreenEnabled())
  {

    MEMORY[0x2821F02D8](1);
  }
}

- (void)disableWatchMirroring
{
  if (_AXSTwiceRemoteScreenEnabled())
  {

    MEMORY[0x2821F02D8](0);
  }
}

- (void)enableWatchRemoteControl
{
  if (!_AXSWatchControlEnabled())
  {

    MEMORY[0x2821F0398](1);
  }
}

- (void)disableWatchRemoteControl
{
  if (_AXSWatchControlEnabled())
  {

    MEMORY[0x2821F0398](0);
  }
}

- (void)enableZoom
{
  if (!_AXSZoomTouchEnabled())
  {

    MEMORY[0x2821F03C8](1);
  }
}

- (void)disableZoom
{
  if (_AXSZoomTouchEnabled())
  {

    MEMORY[0x2821F03C8](0);
  }
}

- (void)enableFullKeyboardAccess
{
  if (!_AXSFullKeyboardAccessEnabled())
  {

    MEMORY[0x2821EFFA0](1);
  }
}

- (void)disableFullKeyboardAccess
{
  if (_AXSFullKeyboardAccessEnabled())
  {

    MEMORY[0x2821EFFA0](0);
  }
}

- (void)enableEyeTracking
{
  if (!_AXSOnDeviceEyeTrackingEnabled())
  {
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20] setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:1];
  }
}

- (void)disableEyeTracking
{
  if (_AXSOnDeviceEyeTrackingEnabled())
  {
    mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20] setAssistiveTouchMouseOnDeviceEyeTrackingEnabled:0];
  }
}

- (void)enableHeadTracking
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchHeadTrackingEnabled = [mEMORY[0x277CE7E20] assistiveTouchHeadTrackingEnabled];

  if ((assistiveTouchHeadTrackingEnabled & 1) == 0)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20]2 setAssistiveTouchHeadTrackingEnabled:1];
  }
}

- (void)disableHeadTracking
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  assistiveTouchHeadTrackingEnabled = [mEMORY[0x277CE7E20] assistiveTouchHeadTrackingEnabled];

  if (assistiveTouchHeadTrackingEnabled)
  {
    mEMORY[0x277CE7E20]2 = [MEMORY[0x277CE7E20] sharedInstance];
    [mEMORY[0x277CE7E20]2 setAssistiveTouchHeadTrackingEnabled:0];
  }
}

- (BOOL)isRestrictedForAAC
{
  server = [MEMORY[0x277CE7D30] server];
  if ([server isRestrictedForAAC])
  {
    isActive = 1;
  }

  else
  {
    v4 = objc_opt_new();
    isActive = [v4 isActive];
  }

  return isActive;
}

- (void)activateSiri
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v3 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v8 = [v3 objectForKey:kCACCommandParameterText];

  if ([v8 length])
  {
    v4 = activateSiri_sAssistantServicesConnection;
    if (!activateSiri_sAssistantServicesConnection)
    {
      v5 = objc_opt_new();
      v6 = activateSiri_sAssistantServicesConnection;
      activateSiri_sAssistantServicesConnection = v5;

      v4 = activateSiri_sAssistantServicesConnection;
    }

    [v4 startUIRequestWithText:v8];
  }

  else
  {
    mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
    [mEMORY[0x277CE7178] activateSiri];
  }
}

- (void)activateTypeToSiri
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] activateTypeToSiri];
}

- (void)dismissSiri
{
  server = [MEMORY[0x277CE7E50] server];
  isSiriVisible = [server isSiriVisible];

  server2 = [MEMORY[0x277CE7E40] server];
  isTypeToSiriVisible = [server2 isTypeToSiriVisible];

  if ((isSiriVisible & 1) != 0 || isTypeToSiriVisible)
  {

    [(CACSpokenCommand *)self activateHomeButton];
  }
}

void __64__CACSpokenCommand_CACSpokenCommandHardware__activateHomeButton__block_invoke()
{
  v0 = +[CACDisplayManager sharedManager];
  v1 = [v0 carPlayConnected];

  if (v1)
  {
    v4 = [MEMORY[0x277D0AD78] dashboardService];
    [v4 openApplication:@"com.apple.CarPlayApp" withOptions:0 completion:0];
  }

  else
  {
    v2 = [MEMORY[0x277CE7E40] server];
    v3 = [v2 dismissBuddyIfNecessary];

    if (v3)
    {
      return;
    }

    v4 = [MEMORY[0x277CE7178] sharedInstance];
    [v4 activateHomeButton];
  }
}

- (void)armApplePay
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] armApplePay];
}

- (void)toggleDock
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleDock];
}

- (void)activateAppLibrary
{
  server = [MEMORY[0x277CE7E40] server];
  isShowingHomescreen = [server isShowingHomescreen];

  if ((isShowingHomescreen & 1) == 0)
  {
    mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
    [mEMORY[0x277CE7178] activateHomeButton];
  }

  v5 = dispatch_time(0, 500000000);
  v6 = MEMORY[0x277D85CD0];

  dispatch_after(v5, v6, &__block_literal_global_290_0);
}

void __64__CACSpokenCommand_CACSpokenCommandHardware__activateAppLibrary__block_invoke()
{
  v0 = [MEMORY[0x277CE7178] sharedInstance];
  [v0 toggleAppLibrary];
}

- (void)activateAppSwitcher
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleAppSwitcher];
}

- (void)activateLockButton
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] activateLockButton];
}

- (void)toggleRingerSwitchOn
{
  if (AXDeviceHasStaccato())
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
    [mEMORY[0x277D26E58] setSilentMode:0 untilTime:0 reason:@"Voice Control Disable Silent Mode" clientType:4];
  }

  else
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277CE7178] sharedInstance];
    [mEMORY[0x277D26E58] toggleRingerSwitch:1];
  }
}

- (void)toggleRingerSwitchOff
{
  if (AXDeviceHasStaccato())
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedInstance];
    [mEMORY[0x277D26E58] setSilentMode:1 untilTime:0 reason:@"Voice Control Enable Silent Mode" clientType:4];
  }

  else
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277CE7178] sharedInstance];
    [mEMORY[0x277D26E58] toggleRingerSwitch:0];
  }
}

- (void)toggleMute
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleMute];
}

- (void)decreaseVolume
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] decreaseVolume];
}

- (void)increaseVolume
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] increaseVolume];
}

- (void)activateSpotlight
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] revealSpotlight];
}

- (void)activateTripleClick
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] activateTripleClick];
}

- (void)takeScreenshot
{
  [(CACSpokenCommand *)self setCompletionDeterminedManually:1];
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] takeScreenshot];

  v4 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CACSpokenCommand_CACSpokenCommandHardware__takeScreenshot__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __60__CACSpokenCommand_CACSpokenCommandHardware__takeScreenshot__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contextEvaluation];
  v3 = [v2 objectForKey:kCACCommandContextDeferRecognizedStringDisplay];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [*(a1 + 32) recognizedParameters];
    v6 = [CACSpokenCommand attributedStringFromRecognizedCommandParameters:v5 variantOverrides:0];
    [CACSpokenCommand displayRecognizedMessageUsingAttributedString:v6];
  }

  v7 = *(a1 + 32);

  return [v7 setExecuting:0];
}

- (void)activateControlCenter
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleControlCenter];
}

- (void)hideControlCenter
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleControlCenter];
}

- (void)activateNotificationCenter
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleNotificationCenter];
}

- (void)hideNotificationCenter
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleNotificationCenter];
}

- (void)lockScreen
{
  v2 = dispatch_time(0, 1000000000);
  v3 = MEMORY[0x277D85CD0];

  dispatch_after(v2, v3, &__block_literal_global_300_0);
}

void __56__CACSpokenCommand_CACSpokenCommandHardware__lockScreen__block_invoke()
{
  v0 = [MEMORY[0x277CE7178] sharedInstance];
  [v0 activateLockButton];
}

- (void)rotateToPortrait
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  v5 = mEMORY[0x277CE7178];
  if (orientation == 5)
  {
    [mEMORY[0x277CE7178] rotateUpsideDown];
  }

  else
  {
    [mEMORY[0x277CE7178] rotatePortrait];
  }
}

- (void)rotateToLandscape
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  orientation = [currentDevice orientation];

  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  v5 = mEMORY[0x277CE7178];
  if (orientation == 3)
  {
    [mEMORY[0x277CE7178] rotateRight];
  }

  else
  {
    [mEMORY[0x277CE7178] rotateLeft];
  }
}

- (void)tripleClick
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] activateTripleClick];
}

- (void)shake
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] shake];
}

- (void)increaseZoomLevel
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] zoomLevel];
  v4 = v3;

  mEMORY[0x277D7EA38]2 = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38]2 setZoomLevel:v4 * 1.2];
}

- (void)decreaseZoomLevel
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] zoomLevel];
  v4 = v3;

  mEMORY[0x277D7EA38]2 = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38]2 setZoomLevel:v4 / 1.2];
}

- (void)minimizeZoomLevel
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] setZoomLevel:1.0];
}

- (void)maximizeZoomLevel
{
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  [mEMORY[0x277CE7E20] zoomPreferredMaximumZoomScale];
  v4 = v3;

  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] setZoomLevel:v4];
}

- (void)panZoomLeft
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] panLeft];
}

- (void)panZoomRight
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] panRight];
}

- (void)panZoomUp
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] panUp];
}

- (void)panZoomDown
{
  mEMORY[0x277D7EA38] = [MEMORY[0x277D7EA38] sharedInstance];
  [mEMORY[0x277D7EA38] panDown];
}

- (void)activateSpeakScreen
{
  mEMORY[0x277D65360] = [MEMORY[0x277D65360] sharedInstance];
  [mEMORY[0x277D65360] speakThisWithOptions:12 errorHandler:&__block_literal_global_307];
}

void __65__CACSpokenCommand_CACSpokenCommandHardware__activateSpeakScreen__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CACLogDictationCommands();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __65__CACSpokenCommand_CACSpokenCommandHardware__activateSpeakScreen__block_invoke_cold_1(v2, v3);
  }
}

- (void)activateSOS
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] activateSOSMode];
}

- (void)activateDock
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] toggleDock];
}

- (void)activateMenuBar
{
  server = [MEMORY[0x277CE7E40] server];
  isMenuBarVisible = [server isMenuBarVisible];

  server2 = [MEMORY[0x277CE7E40] server];
  [server2 setMenuBarVisible:isMenuBarVisible ^ 1u];
}

- (void)activateApplePay
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] armApplePay];
}

- (void)systemPressCameraButton
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] pressCameraButton];
}

- (void)systemLightPressCameraButton
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] lightPressCameraButton];
}

- (void)systemDoubleLightPressCameraButton
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] doubleLightPressCameraButton];
}

- (void)systemLongPressCameraButton
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    mEMORY[0x277CE7178]2 = [MEMORY[0x277CE7178] sharedInstance];
    [mEMORY[0x277CE7178]2 performSelector:sel_openVisualIntelligence];
  }
}

- (void)activateSysdiagnose
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] performSysdiagnoseWithStatusUpdateHandler:&__block_literal_global_310_0];
}

void __65__CACSpokenCommand_CACSpokenCommandHardware__activateSysdiagnose__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CACSpokenCommand_CACSpokenCommandHardware__activateSysdiagnose__block_invoke_2;
  block[3] = &unk_279CEB2D0;
  v5 = v2;
  v3 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__CACSpokenCommand_CACSpokenCommandHardware__activateSysdiagnose__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = CACLogAccessibility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_26B354000, v2, OS_LOG_TYPE_INFO, "sysdiagnose status: %@", &v7, 0xCu);
  }

  v4 = +[CACDisplayManager sharedManager];
  v5 = [v4 carPlayConnected];

  if ((v5 & 1) == 0)
  {
    v6 = +[CACDisplayManager sharedManager];
    [v6 displayMessageString:*(a1 + 32) type:0];
  }
}

- (void)reboot
{
  mEMORY[0x277CE7178] = [MEMORY[0x277CE7178] sharedInstance];
  [mEMORY[0x277CE7178] rebootDevice];
}

- (void)selectCurrentCharacter:(id)character
{
  characterCopy = character;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:characterCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectCurrentCharacter];
}

- (void)selectPreviousCharacter:(id)character
{
  characterCopy = character;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:characterCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectPreviousCharacterWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectNextCharacter:(id)character
{
  characterCopy = character;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:characterCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectNextCharacterWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectCurrentWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectCurrentWord];
}

- (void)selectPreviousWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectPreviousWordWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectNextWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectNextWordWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectCurrentSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectCurrentSentence];
}

- (void)selectPreviousSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectPreviousSentenceWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectNextSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectNextSentenceWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectCurrentParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectCurrentParagraph];
}

- (void)selectPreviousParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectPreviousParagraphWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectNextParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectNextParagraphWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectCurrentLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectCurrentLine];
}

- (void)selectPreviousLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectPreviousLineWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectNextLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine selectNextLineWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionToEnd:(id)end
{
  endCopy = end;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:endCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionToEnd];
}

- (void)extendSelectionToBeginning:(id)beginning
{
  beginningCopy = beginning;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:beginningCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionToBeginning];
}

- (void)extendSelectionForwardCharactersUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionForwardCharactersWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionBackwardCharactersUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionBackwardCharactersWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionForwardWordsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionForwardWordsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionBackwardWordsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionBackwardWordsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionForwardSentencesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionForwardSentencesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionBackwardSentencesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionBackwardSentencesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionForwardParagraphsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionForwardParagraphsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionBackwardParagraphsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionBackwardParagraphsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionForwardLinesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionForwardLinesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)extendSelectionBackwardLinesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine extendSelectionBackwardLinesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)selectPhrase:(id)phrase
{
  phraseCopy = phrase;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:phraseCopy];

  textEditingEngine = [(CACTextEditingProvider *)v5 textEditingEngine];
  v7 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v8 = [v7 objectForKey:*MEMORY[0x277D65620]];
  v9 = [recognizedParameters objectForKey:*MEMORY[0x277D655D0]];
  v10 = [v9 objectForKey:*MEMORY[0x277D65610]];
  contextEvaluation = [(CACSpokenCommand *)self contextEvaluation];
  v12 = [contextEvaluation objectForKey:kCACCommandContextDeferRecognizedStringDisplay];
  if ([v12 BOOLValue])
  {
    v13 = recognizedParameters;
  }

  else
  {
    v13 = 0;
  }

  identifier = [(CACSpokenCommand *)self identifier];
  [textEditingEngine selectFromPhraseVariants:v8 insertionString:v10 recognizedParameters:v13 commandIdentifer:identifier];
}

- (void)selectPhraseThroughPhrase:(id)phrase
{
  phraseCopy = phrase;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:phraseCopy];

  textEditingEngine = [(CACTextEditingProvider *)v5 textEditingEngine];
  v7 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v8 = MEMORY[0x277D65620];
  v9 = [v7 objectForKey:*MEMORY[0x277D65620]];
  v10 = [recognizedParameters objectForKey:*MEMORY[0x277D655D0]];
  v11 = [v10 objectForKey:*v8];
  contextEvaluation = [(CACSpokenCommand *)self contextEvaluation];
  v13 = [contextEvaluation objectForKey:kCACCommandContextDeferRecognizedStringDisplay];
  if ([v13 BOOLValue])
  {
    v14 = recognizedParameters;
  }

  else
  {
    v14 = 0;
  }

  identifier = [(CACSpokenCommand *)self identifier];
  [textEditingEngine selectFromPhraseVariants:v9 throughPhraseVariants:v11 recognizedParameters:v14 commandIdentifer:identifier];
}

- (void)selectNext:(id)next
{
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  resolvedNextSpokenCommand = [v4 resolvedNextSpokenCommand];

  if (resolvedNextSpokenCommand)
  {
    v5 = objc_opt_new();
    recognizedParameters = [resolvedNextSpokenCommand recognizedParameters];
    [v5 addEntriesFromDictionary:recognizedParameters];

    recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
    v8 = [recognizedParameters2 objectForKey:kCACCommandParameterText];
    [v5 setObject:v8 forKey:kCACCommandParameterText];

    [resolvedNextSpokenCommand setRecognizedParameters:v5];
    v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v9 handleRecognizedCommand:resolvedNextSpokenCommand];
  }

  else
  {
    v5 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.NextNotFound"];
    v9 = +[CACDisplayManager sharedManager];
    [v9 displayMessageString:v5 type:1];
  }
}

- (void)selectPrevious:(id)previous
{
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  resolvedPreviousSpokenCommand = [v4 resolvedPreviousSpokenCommand];

  if (resolvedPreviousSpokenCommand)
  {
    v5 = objc_opt_new();
    recognizedParameters = [resolvedPreviousSpokenCommand recognizedParameters];
    [v5 addEntriesFromDictionary:recognizedParameters];

    recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
    v8 = [recognizedParameters2 objectForKey:kCACCommandParameterText];
    [v5 setObject:v8 forKey:kCACCommandParameterText];

    [resolvedPreviousSpokenCommand setRecognizedParameters:v5];
    v9 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v9 handleRecognizedCommand:resolvedPreviousSpokenCommand];
  }

  else
  {
    v5 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.PreviousNotFound"];
    v9 = +[CACDisplayManager sharedManager];
    [v9 displayMessageString:v5 type:1];
  }
}

- (void)selectAll:(id)all
{
  allCopy = all;
  cacTextSelectionCACTextMarkerRange = [allCopy cacTextSelectionCACTextMarkerRange];
  v6 = [allCopy cacStringForCACTextMarkerRange:cacTextSelectionCACTextMarkerRange];

  if ([v6 length])
  {
    [(CACSpokenCommand *)self goToStartOfDocument:allCopy];
    v7 = dispatch_time(0, 250000000);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__CACSpokenCommand_CACSpokenCommandTextEditing__selectAll___block_invoke_2;
    v11[3] = &unk_279CEB2D0;
    v8 = &v12;
    v12 = allCopy;
    v9 = allCopy;
    dispatch_after(v7, MEMORY[0x277D85CD0], v11);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__CACSpokenCommand_CACSpokenCommandTextEditing__selectAll___block_invoke;
    block[3] = &unk_279CEB2D0;
    v8 = &v14;
    v14 = allCopy;
    v10 = allCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)selectPreviousTextInsertion:(id)insertion
{
  insertionCopy = insertion;
  [insertionCopy selectedTextRange];
  if (!v4)
  {
    v5 = [(CACSpokenCommand *)self _rangeFromPreviousTextInsertionForAXElement:insertionCopy];
    if (v6)
    {
      [insertionCopy cacSetTextSelectionToRange:{v5, v6}];
    }
  }
}

- (void)unselect:(id)unselect
{
  unselectCopy = unselect;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:unselectCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfSelection];
}

- (void)moveLeft:(id)left
{
  leftCopy = left;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v5 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
    if (intValue < 1)
    {
      goto LABEL_6;
    }

    v8 = intValue;
  }

  else
  {
    v8 = 1;
  }

  do
  {
    [(CACSpokenCommand *)self moveLeftCharactersUsingCardinalNumber:leftCopy];
    --v8;
  }

  while (v8);
LABEL_6:
}

- (void)moveRight:(id)right
{
  rightCopy = right;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v6 = [v5 objectForKey:kCACCommandParameterText];

  if (v6)
  {
    intValue = [v6 intValue];
    if (intValue < 1)
    {
      goto LABEL_6;
    }

    v8 = intValue;
  }

  else
  {
    v8 = 1;
  }

  do
  {
    [(CACSpokenCommand *)self moveRightCharactersUsingCardinalNumber:rightCopy];
    --v8;
  }

  while (v8);
LABEL_6:
}

- (void)moveUp:(id)up
{
  v18[3] = *MEMORY[0x277D85DE8];
  upCopy = up;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  if (v7)
  {
    intValue = [v7 intValue];
    if (intValue < 1)
    {
      goto LABEL_11;
    }

    v9 = intValue;
  }

  else
  {
    v9 = 1;
  }

  v10 = MEMORY[0x277CE6E38];
  do
  {
    cacTextSelectionCACTextMarkerRange = [upCopy cacTextSelectionCACTextMarkerRange];
    nsRange = [cacTextSelectionCACTextMarkerRange nsRange];

    uiElement = [upCopy uiElement];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nsRange];
    v18[0] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
    v18[1] = v15;
    v18[2] = &unk_287BEFEB0;
    v16 = [uiElement objectWithAXAttribute:94015 parameter:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v18, 3)}];

    if (v16 && [v16 unsignedIntegerValue] != 0x7FFFFFFF)
    {
      textOperationsOperator = +[CACTextMarkerRange markerRangeWithNSRange:](CACTextMarkerRange, "markerRangeWithNSRange:", [v16 unsignedIntegerValue], 0);
      [upCopy cacSetTextSelectionToCACTextMarkerRange:textOperationsOperator];
    }

    else
    {
      textOperationsOperator = [upCopy textOperationsOperator];
      [textOperationsOperator performAction:2012 withValue:*v10];
    }

    --v9;
  }

  while (v9);
LABEL_11:
}

- (void)moveDown:(id)down
{
  v20[3] = *MEMORY[0x277D85DE8];
  downCopy = down;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655E8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  if (v7)
  {
    intValue = [v7 intValue];
    if (intValue < 1)
    {
      goto LABEL_11;
    }

    v9 = intValue;
  }

  else
  {
    v9 = 1;
  }

  v10 = MEMORY[0x277CE6E30];
  do
  {
    cacTextSelectionCACTextMarkerRange = [downCopy cacTextSelectionCACTextMarkerRange];
    nsRange = [cacTextSelectionCACTextMarkerRange nsRange];
    v14 = v13;

    uiElement = [downCopy uiElement];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nsRange + v14];
    v20[0] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
    v20[1] = v17;
    v20[2] = &unk_287BEFEB0;
    v18 = [uiElement objectWithAXAttribute:94015 parameter:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v20, 3)}];

    if (v18 && [v18 unsignedIntegerValue] != 0x7FFFFFFF)
    {
      textOperationsOperator = +[CACTextMarkerRange markerRangeWithNSRange:](CACTextMarkerRange, "markerRangeWithNSRange:", [v18 unsignedIntegerValue], 0);
      [downCopy cacSetTextSelectionToCACTextMarkerRange:textOperationsOperator];
    }

    else
    {
      textOperationsOperator = [downCopy textOperationsOperator];
      [textOperationsOperator performAction:2012 withValue:*v10];
    }

    --v9;
  }

  while (v9);
LABEL_11:
}

- (void)goToStartOfSelection:(id)selection
{
  selectionCopy = selection;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:selectionCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfSelection];
}

- (void)goToEndOfSelection:(id)selection
{
  selectionCopy = selection;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:selectionCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToEndOfSelection];
}

- (void)goToStartOfWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfWordWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToEndOfWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToEndOfWordWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToStartOfSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfSentenceWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToEndOfSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToEndOfSentenceWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToStartOfParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfParagraphWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToEndOfParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToEndOfParagraphWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToStartOfLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfLineWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToEndOfLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToEndOfLineWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)goToStartOfDocument:(id)document
{
  documentCopy = document;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:documentCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToStartOfTextArea];
}

- (void)goToEndOfDocument:(id)document
{
  documentCopy = document;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:documentCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveToEndOfTextArea];
}

- (void)moveForwardCharactersUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveForwardCharactersWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveBackwardCharactersUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveBackwardCharactersWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveForwardWordsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveForwardWordsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveBackwardWordsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveBackwardWordsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveForwardSentencesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveForwardSentencesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveBackwardSentencesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveBackwardSentencesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveForwardParagraphsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveForwardParagraphsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveBackwardParagraphsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveBackwardParagraphsWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveForwardLinesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveForwardLinesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)moveBackwardLinesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:numberCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine moveBackwardLinesWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (BOOL)_isLeftToRightWritingSystem
{
  v2 = MEMORY[0x277CBEAF8];
  mEMORY[0x277D79890] = [MEMORY[0x277D79890] shared];
  activeLocale = [mEMORY[0x277D79890] activeLocale];
  localeIdentifier = [activeLocale localeIdentifier];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:localeIdentifier] != 2;

  return v2;
}

- (void)moveRightCharactersUsingCardinalNumber:(id)number
{
  numberCopy = number;
  if ([(CACSpokenCommand *)self _isLeftToRightWritingSystem])
  {
    [(CACSpokenCommand *)self moveForwardCharactersUsingCardinalNumber:numberCopy];
  }

  else
  {
    [(CACSpokenCommand *)self moveBackwardCharactersUsingCardinalNumber:numberCopy];
  }
}

- (void)moveLeftCharactersUsingCardinalNumber:(id)number
{
  numberCopy = number;
  if ([(CACSpokenCommand *)self _isLeftToRightWritingSystem])
  {
    [(CACSpokenCommand *)self moveBackwardCharactersUsingCardinalNumber:numberCopy];
  }

  else
  {
    [(CACSpokenCommand *)self moveForwardCharactersUsingCardinalNumber:numberCopy];
  }
}

- (void)moveRightWordsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  if ([(CACSpokenCommand *)self _isLeftToRightWritingSystem])
  {
    [(CACSpokenCommand *)self moveForwardWordsUsingCardinalNumber:numberCopy];
  }

  else
  {
    [(CACSpokenCommand *)self moveBackwardWordsUsingCardinalNumber:numberCopy];
  }
}

- (void)moveLeftWordsUsingCardinalNumber:(id)number
{
  numberCopy = number;
  if ([(CACSpokenCommand *)self _isLeftToRightWritingSystem])
  {
    [(CACSpokenCommand *)self moveBackwardWordsUsingCardinalNumber:numberCopy];
  }

  else
  {
    [(CACSpokenCommand *)self moveForwardWordsUsingCardinalNumber:numberCopy];
  }
}

- (void)moveRightSentencesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  if ([(CACSpokenCommand *)self _isLeftToRightWritingSystem])
  {
    [(CACSpokenCommand *)self moveForwardSentencesUsingCardinalNumber:numberCopy];
  }

  else
  {
    [(CACSpokenCommand *)self moveBackwardSentencesUsingCardinalNumber:numberCopy];
  }
}

- (void)moveLeftSentencesUsingCardinalNumber:(id)number
{
  numberCopy = number;
  if ([(CACSpokenCommand *)self _isLeftToRightWritingSystem])
  {
    [(CACSpokenCommand *)self moveBackwardSentencesUsingCardinalNumber:numberCopy];
  }

  else
  {
    [(CACSpokenCommand *)self moveForwardSentencesUsingCardinalNumber:numberCopy];
  }
}

- (void)insertLineBelow:(id)below
{
  belowCopy = below;
  v7 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:belowCopy];

  textEditingEngine = [(CACTextEditingProvider *)v7 textEditingEngine];
  [textEditingEngine moveToEndOfLineWithCount:1];

  v6 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v6 insertDictatedString:@"\n"];
}

- (void)insertLineAbove:(id)above
{
  aboveCopy = above;
  v4 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:aboveCopy];
  v5 = [(CACTextEditingProvider *)v4 markerRangeForEnumerationType:0 desiredBlock:2 count:1 options:0];
  v6 = [(CACTextEditingProvider *)v4 markerRangeForEnumerationType:0 desiredBlock:1 count:1 options:0];
  if (v6)
  {
    if (v5 && ![v5 isEqual:v6])
    {
      [(CACSpokenCommand *)self moveUp:aboveCopy];
      [(CACSpokenCommand *)self insertLineBelow:aboveCopy];
    }

    else
    {
      textEditingEngine = [(CACTextEditingProvider *)v4 textEditingEngine];
      [textEditingEngine moveToStartOfLineWithCount:1];

      v8 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
      [v8 insertDictatedString:@"\n"];

      [(CACSpokenCommand *)self moveUp:aboveCopy];
    }
  }
}

- (void)deleteCurrentCharacter:(id)character
{
  characterCopy = character;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:characterCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteCurrentCharacter];
}

- (void)deletePreviousCharacter:(id)character
{
  characterCopy = character;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:characterCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deletePreviousCharacterWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteNextCharacter:(id)character
{
  characterCopy = character;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:characterCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteNextCharacterWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteCurrentWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteCurrentWord];
}

- (void)deletePreviousWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deletePreviousWordWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteNextWord:(id)word
{
  wordCopy = word;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:wordCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteNextWordWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteCurrentSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteCurrentSentence];
}

- (void)deletePreviousSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deletePreviousSentenceWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteNextSentence:(id)sentence
{
  sentenceCopy = sentence;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:sentenceCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteNextSentenceWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteCurrentParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteCurrentParagraph];
}

- (void)deletePreviousParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deletePreviousParagraphWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteNextParagraph:(id)paragraph
{
  paragraphCopy = paragraph;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:paragraphCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteNextParagraphWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteCurrentLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteCurrentLine];
}

- (void)deletePreviousLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deletePreviousLineWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteNextLine:(id)line
{
  lineCopy = line;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:lineCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteNextLineWithCount:{-[CACSpokenCommand _textSegmentCardinalNumber](self, "_textSegmentCardinalNumber")}];
}

- (void)deleteAll:(id)all
{
  allCopy = all;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:allCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteAll];
}

- (void)delete:(id)delete
{
  deleteCopy = delete;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:deleteCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine deleteSelection];
}

- (void)surroundSelectionWithPunctuation:(id)punctuation
{
  punctuationCopy = punctuation;
  v7 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:punctuationCopy];

  textEditingEngine = [(CACTextEditingProvider *)v7 textEditingEngine];
  identifier = [(CACSpokenCommand *)self identifier];
  [textEditingEngine surroundSelectionWithPunctuationForCommandIdentifier:identifier];
}

- (void)applyFormat:(id)format
{
  formatCopy = format;
  v7 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:formatCopy];

  textEditingEngine = [(CACTextEditingProvider *)v7 textEditingEngine];
  identifier = [(CACSpokenCommand *)self identifier];
  [textEditingEngine applyFormatWithCommandIdentifier:identifier];
}

- (void)pasteboardPaste:(id)paste
{
  pasteCopy = paste;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:pasteCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardPaste];
}

- (void)pasteboardCopy:(id)copy
{
  copyCopy = copy;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:copyCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardCopy];
}

- (void)pasteboardCut:(id)cut
{
  cutCopy = cut;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:cutCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardCut];
}

- (void)correctSelection:(id)selection
{
  selectionCopy = selection;
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:selectionCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine correctSelection];
}

- (void)addSelectionToVocabulary:(id)vocabulary
{
  vocabularyCopy = vocabulary;
  cacTextSelectionCACTextMarkerRange = [vocabularyCopy cacTextSelectionCACTextMarkerRange];
  v4 = [vocabularyCopy cacStringForCACTextMarkerRange:cacTextSelectionCACTextMarkerRange];

  [VCVocabularyObjC addVocabularyEntryWithString:v4];
}

- (void)_activateKeyboardReturnKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__CACSpokenCommand_CACSpokenCommandTextEditing___activateKeyboardReturnKey___block_invoke;
  v6[3] = &unk_279CEB4C0;
  v7 = keyCopy;
  selfCopy = self;
  v5 = keyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __76__CACSpokenCommand_CACSpokenCommandTextEditing___activateKeyboardReturnKey___block_invoke(uint64_t a1)
{
  if (AXUIKeyboardIsOOP())
  {
    v2 = [MEMORY[0x277CE6BA0] systemWideElement];
    v5 = [v2 uiElement];

    v3 = [v5 uiElementsWithAttribute:1011];
    v4 = [v3 lastObject];

    if (([v4 performAXAction:2054] & 1) == 0)
    {
      [*(a1 + 40) postKeyboardEventWithKeyCode:40 modifierFlags:0 isKeyDown:1];
      [*(a1 + 40) postKeyboardEventWithKeyCode:40 modifierFlags:0 isKeyDown:0];
    }
  }

  else
  {
    v5 = [*(a1 + 32) uiElement];
    [v5 performAXAction:2054];
  }
}

- (void)insertDate:(id)date
{
  v3 = +[CACPreferences sharedPreferences];
  v4 = CFLocaleCreate(0, [v3 bestLocaleIdentifier]);

  if (v4)
  {
    v5 = CFDateFormatterCreate(0, v4, kCFDateFormatterFullStyle, kCFDateFormatterNoStyle);
    if (v5)
    {
      v6 = v5;
      Current = CFAbsoluteTimeGetCurrent();
      StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v6, Current);
      if ([(__CFString *)StringWithAbsoluteTime length])
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __60__CACSpokenCommand_CACSpokenCommandTextEditing__insertDate___block_invoke;
        block[3] = &unk_279CEB2D0;
        v10 = StringWithAbsoluteTime;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }

      CFRelease(v6);
    }

    CFRelease(v4);
  }
}

void __60__CACSpokenCommand_CACSpokenCommandTextEditing__insertDate___block_invoke(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 insertDictatedString:*(a1 + 32)];
}

- (void)insertEmoji:(id)emoji
{
  v42 = *MEMORY[0x277D85DE8];
  emojiCopy = emoji;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v5 = MEMORY[0x277D655C8];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v24 = [v6 objectForKey:kCACCommandParameterText];

  if ([v24 length])
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v24];
    v8 = +[CACEmojiManager sharedManager];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __61__CACSpokenCommand_CACSpokenCommandTextEditing__insertEmoji___block_invoke;
    v34[3] = &unk_279CEC7C0;
    v36 = &v37;
    v9 = v7;
    v35 = v9;
    [v8 enumerateEmojisInText:v24 skinToneFilter:0 usingBlock:v34];

    if (v38[3])
    {
      goto LABEL_12;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
    v11 = [recognizedParameters2 objectForKey:*v5];
    obj = [v11 objectForKey:kCACCommandParameterTextVariants];

    v12 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v12)
    {
      v13 = *v31;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [v15 mutableCopy];

        v17 = +[CACEmojiManager sharedManager];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __61__CACSpokenCommand_CACSpokenCommandTextEditing__insertEmoji___block_invoke_2;
        v27[3] = &unk_279CEC7C0;
        v29 = &v37;
        v9 = v16;
        v28 = v9;
        [v17 enumerateEmojisInText:v15 skinToneFilter:0 usingBlock:v27];

        LOBYTE(v15) = *(v38 + 24);
        if (v15)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    if (v38[3])
    {
LABEL_12:
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__CACSpokenCommand_CACSpokenCommandTextEditing__insertEmoji___block_invoke_3;
      block[3] = &unk_279CEB2D0;
      v9 = v9;
      v26 = v9;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v18 = v26;
    }

    else
    {
      v19 = MEMORY[0x277CCACA8];
      v20 = [CACLocaleUtilities localizedUIStringForKey:@"ErrorMessage.NamedEmojiNotFound"];
      v18 = [v19 stringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:0, v24];

      v21 = +[CACDisplayManager sharedManager];
      [v21 displayMessageString:v18 type:1];
    }

    _Block_object_dispose(&v37, 8);
  }
}

void __61__CACSpokenCommand_CACSpokenCommandTextEditing__insertEmoji___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = [v7 firstObject];
  if ([v7 count] <= 1)
  {
    v12 = [v8 initWithString:v9 attributes:0];
  }

  else
  {
    v13 = @"AXTextAlternatives";
    v10 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v8 initWithString:v9 attributes:v11];
  }

  [*(a1 + 32) replaceCharactersInRange:a3 withAttributedString:{a4, v12}];
}

void __61__CACSpokenCommand_CACSpokenCommandTextEditing__insertEmoji___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v8 = objc_alloc(MEMORY[0x277CCAB48]);
  v9 = [v7 firstObject];
  if ([v7 count] <= 1)
  {
    v12 = [v8 initWithString:v9 attributes:0];
  }

  else
  {
    v13 = @"AXTextAlternatives";
    v10 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v8 initWithString:v9 attributes:v11];
  }

  [*(a1 + 32) replaceCharactersInRange:a3 withAttributedString:{a4, v12}];
}

void __61__CACSpokenCommand_CACSpokenCommandTextEditing__insertEmoji___block_invoke_3(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 insertDictatedAttributedString:*(a1 + 32)];
}

- (void)_smartInsertComment:(id)comment
{
  commentCopy = comment;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CACSpokenCommand_CACSpokenCommandTextEditing___smartInsertComment___block_invoke;
  block[3] = &unk_279CEB2D0;
  v6 = commentCopy;
  v4 = commentCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__CACSpokenCommand_CACSpokenCommandTextEditing___smartInsertComment___block_invoke(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v13 = [v2 leadingTextForCurrentSelection];

  if ([v13 length] && (objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "characterIsMember:", objc_msgSend(v13, "characterAtIndex:", objc_msgSend(v13, "length") - 1)), v3, !v4))
  {
    v5 = @"WORD";
  }

  else
  {
    v5 = &stru_287BD8610;
  }

  v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"WORD"];
  v7 = [v6 mutableCopy];

  v8 = +[CACPreferences sharedPreferences];
  v9 = [v8 bestLocaleIdentifier];

  [v7 adjustCapsAndSpacingUsingLeadingText:v5 localeIdentifier:v9 vocabularyEntries:MEMORY[0x277CBEBF8] spellingGuessesBlock:&__block_literal_global_38];
  [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - objc_msgSend(@"WORD", "length"), objc_msgSend(@"WORD", "length")}];
  v10 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  v11 = [v7 string];
  v12 = [v11 stringByAppendingString:*(a1 + 32)];
  [v10 insertDictatedString:v12];
}

- (void)insertSingleLineComment:(id)comment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CACSpokenCommand_CACSpokenCommandTextEditing__insertSingleLineComment___block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__CACSpokenCommand_CACSpokenCommandTextEditing__insertSingleLineComment___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recognizedParameters];
  v3 = [v2 objectForKey:*MEMORY[0x277D655C8]];
  v13 = [v3 objectForKey:kCACCommandParameterText];

  if ([v13 length])
  {
    v4 = MEMORY[0x277CBEAF8];
    v5 = +[CACPreferences sharedPreferences];
    v6 = [v5 bestLocaleIdentifier];
    v7 = [v4 localeWithLocaleIdentifier:v6];

    v8 = [v13 substringToIndex:1];
    v9 = [v8 capitalizedStringWithLocale:v7];
    v10 = [v13 substringFromIndex:1];
    v11 = [v9 stringByAppendingString:v10];

    v12 = [@"// " stringByAppendingString:v11];
    [*(a1 + 32) _smartInsertComment:v12];

    v13 = v11;
  }

  else
  {
    v7 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v7 notifyUserOfCommandFailureUsingSound];
  }
}

- (void)_insertProgrammingSymbol:(id)symbol combineStrings:(id)strings
{
  v27 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v7 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v8 = [v7 objectForKey:kCACCommandParameterText];

  if (![v8 length])
  {
    goto LABEL_15;
  }

  v9 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  alphanumericCharacterSet = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  invertedSet = [alphanumericCharacterSet invertedSet];
  v12 = [v8 componentsSeparatedByCharactersInSet:invertedSet];

  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        if ([v17 length])
        {
          [v9 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  if (![v9 count])
  {

    goto LABEL_15;
  }

  v18 = stringsCopy[2](stringsCopy, v9);

  if (!v18)
  {
LABEL_15:
    v19 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
    [v19 notifyUserOfCommandFailureUsingSound];
    goto LABEL_16;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CACSpokenCommand_CACSpokenCommandTextEditing___insertProgrammingSymbol_combineStrings___block_invoke;
  block[3] = &unk_279CEB2D0;
  v21 = v18;
  v19 = v18;
  dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_16:
}

void __89__CACSpokenCommand_CACSpokenCommandTextEditing___insertProgrammingSymbol_combineStrings___block_invoke(uint64_t a1)
{
  v2 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  [v2 insertDictatedString:*(a1 + 32)];
}

id __65__CACSpokenCommand_CACSpokenCommandTextEditing__insertCamelCase___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v7 count])
        {
          [v13 capitalizedStringWithLocale:v6];
        }

        else
        {
          [v13 lowercaseStringWithLocale:v6];
        }
        v14 = ;
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = [v7 componentsJoinedByString:&stru_287BD8610];

  return v15;
}

id __66__CACSpokenCommand_CACSpokenCommandTextEditing__insertPascalCase___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) capitalizedStringWithLocale:{v6, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:&stru_287BD8610];

  return v14;
}

id __65__CACSpokenCommand_CACSpokenCommandTextEditing__insertSnakeCase___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) lowercaseStringWithLocale:{v6, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:@"_"];

  return v14;
}

id __72__CACSpokenCommand_CACSpokenCommandTextEditing__insertAllCapsSnakeCase___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) uppercaseStringWithLocale:{v6, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:@"_"];

  return v14;
}

id __65__CACSpokenCommand_CACSpokenCommandTextEditing__insertKebabCase___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) lowercaseStringWithLocale:{v6, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:@"-"];

  return v14;
}

id __72__CACSpokenCommand_CACSpokenCommandTextEditing__insertAllCapsKebabCase___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = MEMORY[0x277CBEAF8];
  v4 = +[CACPreferences sharedPreferences];
  v5 = [v4 bestLocaleIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v5];

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v2;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) uppercaseStringWithLocale:{v6, v16}];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 componentsJoinedByString:@"-"];

  return v14;
}

- (int64_t)_textSegmentCardinalNumberStart
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v3 = [recognizedParameters objectForKey:*MEMORY[0x277D655F8]];
  v4 = [v3 objectForKey:kCACCommandParameterText];

  integerValue = [v4 integerValue];
  return integerValue;
}

- (int64_t)_textSegmentCardinalNumberEnd
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v3 = [recognizedParameters objectForKey:*MEMORY[0x277D65600]];
  v4 = [v3 objectForKey:kCACCommandParameterText];

  integerValue = [v4 integerValue];
  return integerValue;
}

- (id)_markerRangeForTextSegment
{
  v18 = *MEMORY[0x277D85DE8];
  _textSegmentCardinalNumber = [(CACSpokenCommand *)self _textSegmentCardinalNumber];
  v3 = +[CACDisplayManager sharedManager];
  labeledTextSegmentElements = [v3 labeledTextSegmentElements];

  if (_textSegmentCardinalNumber < 1)
  {
    textMarkerRange = 0;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = labeledTextSegmentElements;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 number] == _textSegmentCardinalNumber)
          {
            textMarkerRange = [v10 textMarkerRange];
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    textMarkerRange = 0;
LABEL_12:
  }

  return textMarkerRange;
}

- (id)_markerRangeForTextSegmentRange
{
  v27 = *MEMORY[0x277D85DE8];
  _textSegmentCardinalNumberStart = [(CACSpokenCommand *)self _textSegmentCardinalNumberStart];
  _textSegmentCardinalNumberEnd = [(CACSpokenCommand *)self _textSegmentCardinalNumberEnd];
  v5 = +[CACDisplayManager sharedManager];
  labeledTextSegmentElements = [v5 labeledTextSegmentElements];

  v7 = 0;
  if (_textSegmentCardinalNumberStart >= 1 && _textSegmentCardinalNumberEnd >= 1)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    textMarkerRange = labeledTextSegmentElements;
    v7 = [textMarkerRange countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v21 = labeledTextSegmentElements;
      v9 = 0;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(textMarkerRange);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          if ([v13 number] == _textSegmentCardinalNumberStart)
          {
            v14 = v13;

            v9 = v14;
          }

          if ([v13 number] == _textSegmentCardinalNumberEnd)
          {
            v15 = v13;

            v10 = v15;
          }
        }

        v7 = [textMarkerRange countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);

      if (!v9 || !v10)
      {
        labeledTextSegmentElements = v21;
        goto LABEL_20;
      }

      v16 = [CACTextMarkerRange alloc];
      textMarkerRange = [v9 textMarkerRange];
      startMarker = [textMarkerRange startMarker];
      textMarkerRange2 = [v10 textMarkerRange];
      endMarker = [textMarkerRange2 endMarker];
      v7 = [(CACTextMarkerRange *)v16 initWithStartMarker:startMarker endMarker:endMarker];

      labeledTextSegmentElements = v21;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

LABEL_20:
  }

  return v7;
}

- (BOOL)_performActionOnTextSegment:(id)segment
{
  segmentCopy = segment;
  _markerRangeForTextSegment = [(CACSpokenCommand *)self _markerRangeForTextSegment];
  if (_markerRangeForTextSegment)
  {
    segmentCopy[2](segmentCopy, _markerRangeForTextSegment);
  }

  return _markerRangeForTextSegment != 0;
}

- (BOOL)_performActionOnTextSegmentRange:(id)range
{
  rangeCopy = range;
  _markerRangeForTextSegmentRange = [(CACSpokenCommand *)self _markerRangeForTextSegmentRange];
  if (_markerRangeForTextSegmentRange)
  {
    rangeCopy[2](rangeCopy, _markerRangeForTextSegmentRange);
  }

  return _markerRangeForTextSegmentRange != 0;
}

- (void)deleteTextSegment:(id)segment
{
  segmentCopy = segment;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__CACSpokenCommand_CACSpokenCommandTextEditing__deleteTextSegment___block_invoke;
  v6[3] = &unk_279CEC828;
  v7 = segmentCopy;
  v5 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegment:v6];
}

- (void)deleteTextSegmentRange:(id)range
{
  rangeCopy = range;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CACSpokenCommand_CACSpokenCommandTextEditing__deleteTextSegmentRange___block_invoke;
  v6[3] = &unk_279CEC828;
  v7 = rangeCopy;
  v5 = rangeCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegmentRange:v6];
}

- (void)correctTextSegment:(id)segment
{
  segmentCopy = segment;
  [(CACSpokenCommand *)self selectTextSegment:segmentCopy];
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:segmentCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine correctSelection];
}

- (void)correctTextSegmentRange:(id)range
{
  rangeCopy = range;
  [(CACSpokenCommand *)self selectTextSegmentRange:rangeCopy];
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:rangeCopy];

  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine correctSelection];
}

- (void)selectTextSegment:(id)segment postAction:(id)action
{
  segmentCopy = segment;
  actionCopy = action;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__CACSpokenCommand_CACSpokenCommandTextEditing__selectTextSegment_postAction___block_invoke;
  v10[3] = &unk_279CEC870;
  v11 = segmentCopy;
  v12 = actionCopy;
  v8 = actionCopy;
  v9 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegment:v10];
}

uint64_t __78__CACSpokenCommand_CACSpokenCommandTextEditing__selectTextSegment_postAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 nsRange];
  [v3 cacSetTextSelectionToRange:{v5, v6}];
  v7 = *(a1 + 40);
  v8 = [v4 nsRange];
  v10 = v9;

  v11 = *(v7 + 16);

  return v11(v7, v8, v10);
}

- (void)selectTextSegmentRange:(id)range
{
  rangeCopy = range;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CACSpokenCommand_CACSpokenCommandTextEditing__selectTextSegmentRange___block_invoke;
  v6[3] = &unk_279CEC828;
  v7 = rangeCopy;
  v5 = rangeCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegmentRange:v6];
}

uint64_t __72__CACSpokenCommand_CACSpokenCommandTextEditing__selectTextSegmentRange___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 nsRange];

  return [v2 cacSetTextSelectionToRange:{v4, v3}];
}

- (void)selectTextSegmentRange:(id)range postAction:(id)action
{
  rangeCopy = range;
  actionCopy = action;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__CACSpokenCommand_CACSpokenCommandTextEditing__selectTextSegmentRange_postAction___block_invoke;
  v10[3] = &unk_279CEC870;
  v11 = rangeCopy;
  v12 = actionCopy;
  v8 = actionCopy;
  v9 = rangeCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegmentRange:v10];
}

uint64_t __83__CACSpokenCommand_CACSpokenCommandTextEditing__selectTextSegmentRange_postAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 nsRange];
  [v3 cacSetTextSelectionToRange:{v5, v6}];
  v7 = *(a1 + 40);
  v8 = [v4 nsRange];
  v10 = v9;

  v11 = *(v7 + 16);

  return v11(v7, v8, v10);
}

- (void)_selectTextSegment:(id)segment insertionString:(id)string commandIdentifier:(id)identifier
{
  segmentCopy = segment;
  stringCopy = string;
  identifierCopy = identifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __102__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegment_insertionString_commandIdentifier___block_invoke;
  v14[3] = &unk_279CEC898;
  v15 = segmentCopy;
  selfCopy = self;
  v17 = stringCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = stringCopy;
  v13 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegment:v14];
}

void __102__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegment_insertionString_commandIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) value];
  v5 = [v3 nsRange];
  v7 = [v4 substringWithRange:{v5, v6}];

  if ([v7 length])
  {
    v8 = [[CACTextEditingProvider alloc] initWithSpokenCommand:*(a1 + 40) axElement:*(a1 + 32)];
    v9 = [(CACTextEditingProvider *)v8 textEditingEngine];
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = [*(a1 + 40) recognizedParameters];
    [v9 selectFromRange:v3 insertionString:v11 commandIdentifier:v10 recognizedParamaters:v12];
  }

  v13 = dispatch_time(0, 300000000);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegment_insertionString_commandIdentifier___block_invoke_2;
  v15[3] = &unk_279CEB4C0;
  v16 = *(a1 + 32);
  v17 = v3;
  v14 = v3;
  dispatch_after(v13, MEMORY[0x277D85CD0], v15);
}

uint64_t __102__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegment_insertionString_commandIdentifier___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) nsRange];

  return [v1 cacSetTextSelectionToRange:{v2, 0}];
}

- (void)_selectTextSegmentRange:(id)range insertionString:(id)string commandIdentifier:(id)identifier
{
  rangeCopy = range;
  stringCopy = string;
  identifierCopy = identifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __107__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegmentRange_insertionString_commandIdentifier___block_invoke;
  v14[3] = &unk_279CEC898;
  v15 = rangeCopy;
  selfCopy = self;
  v17 = stringCopy;
  v18 = identifierCopy;
  v11 = identifierCopy;
  v12 = stringCopy;
  v13 = rangeCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegmentRange:v14];
}

void __107__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegmentRange_insertionString_commandIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) value];
  v5 = [v3 nsRange];
  v7 = [v4 substringWithRange:{v5, v6}];

  if ([v7 length])
  {
    v8 = [[CACTextEditingProvider alloc] initWithSpokenCommand:*(a1 + 40) axElement:*(a1 + 32)];
    v9 = [(CACTextEditingProvider *)v8 textEditingEngine];
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = [*(a1 + 40) recognizedParameters];
    [v9 selectFromRange:v3 insertionString:v11 commandIdentifier:v10 recognizedParamaters:v12];
  }

  v13 = dispatch_time(0, 300000000);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __107__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegmentRange_insertionString_commandIdentifier___block_invoke_2;
  v15[3] = &unk_279CEB4C0;
  v16 = *(a1 + 32);
  v17 = v3;
  v14 = v3;
  dispatch_after(v13, MEMORY[0x277D85CD0], v15);
}

uint64_t __107__CACSpokenCommand_CACSpokenCommandTextEditing___selectTextSegmentRange_insertionString_commandIdentifier___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) nsRange];

  return [v1 cacSetTextSelectionToRange:{v2, 0}];
}

- (void)insertPhraseAfterTextSegment:(id)segment
{
  segmentCopy = segment;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  [(CACSpokenCommand *)self _selectTextSegment:segmentCopy insertionString:v7 commandIdentifier:@"Text.InsertPhraseAfterPhrase"];
}

- (void)insertPhraseBeforeTextSegment:(id)segment
{
  segmentCopy = segment;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  [(CACSpokenCommand *)self _selectTextSegment:segmentCopy insertionString:v7 commandIdentifier:@"Text.InsertPhraseBeforePhrase"];
}

- (void)changeTextSegment:(id)segment
{
  segmentCopy = segment;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__CACSpokenCommand_CACSpokenCommandTextEditing__changeTextSegment___block_invoke;
  v10[3] = &unk_279CEC8C0;
  v11 = segmentCopy;
  selfCopy = self;
  v13 = v7;
  v8 = v7;
  v9 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegment:v10];
}

void __67__CACSpokenCommand_CACSpokenCommandTextEditing__changeTextSegment___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) value];
  v4 = [v11 nsRange];
  v6 = [v3 substringWithRange:{v4, v5}];

  if ([v6 length])
  {
    v7 = [[CACTextEditingProvider alloc] initWithSpokenCommand:*(a1 + 40) axElement:*(a1 + 32)];
    v8 = [(CACTextEditingProvider *)v7 textEditingEngine];
    v9 = *(a1 + 48);
    v10 = [*(a1 + 40) recognizedParameters];
    [v8 selectFromRange:v11 insertionString:v9 commandIdentifier:@"Text.ChangePhrase" recognizedParamaters:v10];
  }
}

- (void)changeTextSegmentRange:(id)range
{
  rangeCopy = range;
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v6 = [recognizedParameters objectForKey:*MEMORY[0x277D655C8]];
  v7 = [v6 objectForKey:kCACCommandParameterText];

  [(CACSpokenCommand *)self _selectTextSegmentRange:rangeCopy insertionString:v7 commandIdentifier:@"Text.ChangePhrase"];
}

- (void)moveToEndOfTextSegment:(id)segment
{
  segmentCopy = segment;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__CACSpokenCommand_CACSpokenCommandTextEditing__moveToEndOfTextSegment___block_invoke;
  v6[3] = &unk_279CEC828;
  v7 = segmentCopy;
  v5 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegment:v6];
}

uint64_t __72__CACSpokenCommand_CACSpokenCommandTextEditing__moveToEndOfTextSegment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nsRange];

  return [v2 cacSetTextSelectionToRange:{v3 + v4, 0}];
}

- (void)moveToStartOfTextSegment:(id)segment
{
  segmentCopy = segment;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__CACSpokenCommand_CACSpokenCommandTextEditing__moveToStartOfTextSegment___block_invoke;
  v6[3] = &unk_279CEC828;
  v7 = segmentCopy;
  v5 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegment:v6];
}

uint64_t __74__CACSpokenCommand_CACSpokenCommandTextEditing__moveToStartOfTextSegment___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 nsRange];

  return [v2 cacSetTextSelectionToRange:{v3, 0}];
}

- (void)extendSelectionToTextSegment:(id)segment
{
  segmentCopy = segment;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__CACSpokenCommand_CACSpokenCommandTextEditing__extendSelectionToTextSegment___block_invoke;
  v6[3] = &unk_279CEC828;
  v7 = segmentCopy;
  v5 = segmentCopy;
  [(CACSpokenCommand *)self _performActionOnTextSegmentRange:v6];
}

uint64_t __78__CACSpokenCommand_CACSpokenCommandTextEditing__extendSelectionToTextSegment___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 selectedTextRange];
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = [v4 nsRange];

  v13.location = v5;
  v13.length = v7;
  v14.location = v9;
  v14.length = 0;
  v10 = NSUnionRange(v13, v14);

  return [v8 cacSetTextSelectionToRange:{v10.location, v10.length}];
}

- (void)cutTextSegment:(id)segment
{
  segmentCopy = segment;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__CACSpokenCommand_CACSpokenCommandTextEditing__cutTextSegment___block_invoke;
  v8[3] = &unk_279CEC910;
  v9 = segmentCopy;
  v5 = segmentCopy;
  [(CACSpokenCommand *)self selectTextSegment:v5 postAction:v8];
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:v5];
  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardCut];
}

void __64__CACSpokenCommand_CACSpokenCommandTextEditing__cutTextSegment___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_time(0, 126000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CACSpokenCommand_CACSpokenCommandTextEditing__cutTextSegment___block_invoke_2;
  block[3] = &unk_279CEC8E8;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = a3;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)cutTextSegmentRange:(id)range
{
  rangeCopy = range;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__CACSpokenCommand_CACSpokenCommandTextEditing__cutTextSegmentRange___block_invoke;
  v8[3] = &unk_279CEC910;
  v9 = rangeCopy;
  v5 = rangeCopy;
  [(CACSpokenCommand *)self selectTextSegmentRange:v5 postAction:v8];
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:v5];
  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardCut];
}

void __69__CACSpokenCommand_CACSpokenCommandTextEditing__cutTextSegmentRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_time(0, 126000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CACSpokenCommand_CACSpokenCommandTextEditing__cutTextSegmentRange___block_invoke_2;
  block[3] = &unk_279CEC8E8;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = a3;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)copyTextSegment:(id)segment
{
  segmentCopy = segment;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__CACSpokenCommand_CACSpokenCommandTextEditing__copyTextSegment___block_invoke;
  v8[3] = &unk_279CEC910;
  v9 = segmentCopy;
  v5 = segmentCopy;
  [(CACSpokenCommand *)self selectTextSegment:v5 postAction:v8];
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:v5];
  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardCopy];
}

void __65__CACSpokenCommand_CACSpokenCommandTextEditing__copyTextSegment___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_time(0, 126000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__CACSpokenCommand_CACSpokenCommandTextEditing__copyTextSegment___block_invoke_2;
  block[3] = &unk_279CEC8E8;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = a3;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (void)copyTextSegmentRange:(id)range
{
  rangeCopy = range;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CACSpokenCommand_CACSpokenCommandTextEditing__copyTextSegmentRange___block_invoke;
  v8[3] = &unk_279CEC910;
  v9 = rangeCopy;
  v5 = rangeCopy;
  [(CACSpokenCommand *)self selectTextSegmentRange:v5 postAction:v8];
  v6 = [[CACTextEditingProvider alloc] initWithSpokenCommand:self axElement:v5];
  textEditingEngine = [(CACTextEditingProvider *)v6 textEditingEngine];
  [textEditingEngine pasteboardCopy];
}

void __70__CACSpokenCommand_CACSpokenCommandTextEditing__copyTextSegmentRange___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch_time(0, 126000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CACSpokenCommand_CACSpokenCommandTextEditing__copyTextSegmentRange___block_invoke_2;
  block[3] = &unk_279CEC8E8;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = a3;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

- (id)_strippedPhraseStringsFromStrings:(id)strings
{
  v31 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  array = [MEMORY[0x277CBEB18] array];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = stringsCopy;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [&unk_287BF0020 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (!v9)
        {
          goto LABEL_17;
        }

        v10 = v9;
        v11 = 0;
        v12 = *v22;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(&unk_287BF0020);
            }

            v14 = *(*(&v21 + 1) + 8 * j);
            if ([v8 hasPrefix:v14])
            {
              v11 = [v14 length];
            }
          }

          v10 = [&unk_287BF0020 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v10);
        if (v11)
        {
          v15 = [v8 substringFromIndex:v11];
          v16 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
          [array addObject:v16];
        }

        else
        {
LABEL_17:
          v15 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
          [array addObject:v15];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  return array;
}

- (_NSRange)_rangeFromPreviousTextInsertionForAXElement:(id)element
{
  elementCopy = element;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  previousTextInsertionSpecifier = [v4 previousTextInsertionSpecifier];

  axElement = [previousTextInsertionSpecifier axElement];
  v7 = [elementCopy isEqual:axElement];

  if (v7)
  {
    insertedRange = [previousTextInsertionSpecifier insertedRange];
    v10 = v9;
  }

  else
  {
    v10 = 0;
    insertedRange = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = insertedRange;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

- (id)_nBestListFromPreviousTextInsertionForAXElement:(id)element
{
  v26 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v4 = +[CACSpokenCommandManager sharedCACSpokenCommandManager];
  previousTextInsertionSpecifier = [v4 previousTextInsertionSpecifier];

  insertedCategoryID = [previousTextInsertionSpecifier insertedCategoryID];
  axElement = [previousTextInsertionSpecifier axElement];
  v8 = [elementCopy isEqual:axElement];

  if (v8)
  {
    v9 = insertedCategoryID == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    recognizedParams = [previousTextInsertionSpecifier recognizedParams];
    v12 = [recognizedParams objectForKey:kCACCommandParameterTextSequence];

    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v10 = v13;
    if (v13)
    {
      v20 = elementCopy;
      v14 = *v22;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = [v16 objectForKey:kCACCommandParameterBuiltInIdentifier];
          v18 = [v17 isEqualToString:insertedCategoryID];

          if (v18)
          {
            v10 = [v16 objectForKey:kCACCommandParameterTextVariants];
            goto LABEL_17;
          }

          v15 = v15 + 1;
        }

        while (v10 != v15);
        v10 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_17:
      elementCopy = v20;
    }
  }

  return v10;
}

- (int64_t)_textSegmentCardinalNumber
{
  recognizedParameters = [(CACSpokenCommand *)self recognizedParameters];
  v4 = [recognizedParameters objectForKey:*MEMORY[0x277D65618]];
  v5 = [v4 objectForKey:kCACCommandParameterText];

  if (!v5)
  {
    recognizedParameters2 = [(CACSpokenCommand *)self recognizedParameters];
    v7 = [recognizedParameters2 objectForKey:*MEMORY[0x277D655F8]];
    v5 = [v7 objectForKey:kCACCommandParameterText];

    if (!v5)
    {
      return 1;
    }
  }

  intValue = [v5 intValue];

  return intValue;
}

+ (void)displayRecognizedMessageUsingAttributedString:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 string];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Did not receive a completion callback within the timeout for VoiceOver announcement: %@", &v4, 0xCu);
}

void __29__CACSpokenCommand_searchWeb__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "UIApplication failed to open URL %@", &v3, 0xCu);
}

void __65__CACSpokenCommand_CACSpokenCommandHardware__activateSpeakScreen__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26B354000, a2, OS_LOG_TYPE_ERROR, "Failed to activate Speak Screen: %@", &v2, 0xCu);
}

@end