@interface SCROBrailleDisplayManager
+ (void)initialize;
- (BOOL)_eventQueue_addDetectedIOElement:(id)a3 withDriverIdentifier:(id)a4;
- (BOOL)_eventQueue_handleBrailleUICommand:(id)a3;
- (BOOL)_eventQueue_handleBrailleUIKeyPress:(id)a3;
- (BOOL)_eventQueue_handleSystemVirtualDisplayKeyPress:(id)a3;
- (BOOL)_eventQueue_hasActiveUserDisplays;
- (BOOL)_hasPlanarDisplay;
- (BOOL)_isBrailleUIActive;
- (BOOL)_isIOElementHID:(id)a3;
- (BOOL)alwaysUsesNemethCodeForTechnicalText;
- (BOOL)autoAdvanceEnabled;
- (BOOL)automaticBrailleTranslation;
- (BOOL)blinkingCursorEnabled;
- (BOOL)hasActiveUserDisplays;
- (BOOL)inputEightDotBraille;
- (BOOL)isBrailleUIActive;
- (BOOL)isCandidateSelectionOn;
- (BOOL)isConfigured;
- (BOOL)isValid;
- (BOOL)isWordDescriptionOn;
- (BOOL)lineDescriptorDisplayCallbackEnabled;
- (BOOL)showDotsSevenAndEight;
- (BOOL)showEightDotBraille;
- (BOOL)wordWrapEnabled;
- (SCROBrailleDisplayManager)init;
- (SCROSBrailleDisplayManagerDelegate)delegate;
- (_NSRange)rangeOfBrailleCellRepresentingCharacterAtIndex:(unint64_t)a3;
- (double)autoAdvanceDuration;
- (id)_brailleUIFirstResponder;
- (id)_eventQueue_cachedMainStringForDisplayMode:(int)a3;
- (id)_eventQueue_driverConfiguration;
- (id)_eventQueue_mainAttributedString;
- (id)_eventQueue_mainCellsForVirtualDisplay:(unint64_t)a3;
- (id)aggregatedStatus;
- (id)driverConfiguration;
- (id)mainAttributedString;
- (id)mainCellsForVirtualDisplay:(unint64_t)a3;
- (int)contractionMode;
- (int)displayInputAccessMode;
- (int)displayMode;
- (int)inputContractionMode;
- (int)virtualStatusAlignment;
- (int64_t)masterStatusCellIndex;
- (int64_t)tokenForRouterIndex:(int64_t)a3 location:(int64_t *)a4 appToken:(id *)a5 forDisplayWithToken:(int)a6;
- (unint64_t)_eventQueue_loadVirtualDisplay:(id)a3;
- (unint64_t)loadVirtualDisplayWithMainSize:(int64_t)a3;
- (unint64_t)numberOfTextLinesInPlanarBraille;
- (unsigned)persistentKeyModifiers;
- (void)_addDetectedIOElement:(id)a3 withDriverIdentifier:(id)a4;
- (void)_blankOutDisplaysInQueue:(id)a3;
- (void)_deviceConnectedHandler:(id)a3;
- (void)_disableAutoDetect;
- (void)_enableAutoDetect;
- (void)_enumerateActiveDisplays:(id)a3;
- (void)_eventQueue_alertTimeoutHandler;
- (void)_eventQueue_brailleDisplay:(id)a3 isSleeping:(BOOL)a4;
- (void)_eventQueue_brailleDisplayDriverDidLoad:(id)a3;
- (void)_eventQueue_brailleDisplayDriverFailedToLoad:(id)a3;
- (void)_eventQueue_brailleDriverDisconnected:(id)a3;
- (void)_eventQueue_didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5;
- (void)_eventQueue_endBrailleUI;
- (void)_eventQueue_exitCurrentDisplayMode;
- (void)_eventQueue_fireAlertTimeoutHandler;
- (void)_eventQueue_handleBrailleUIResponse:(id)a3 forRequest:(id)a4;
- (void)_eventQueue_invalidate;
- (void)_eventQueue_loadNextDriverForIOElement:(id)a3;
- (void)_eventQueue_loadStealthDisplay;
- (void)_eventQueue_migratePasteBoardContentToSystem;
- (void)_eventQueue_popDisplayModeStack;
- (void)_eventQueue_resetAlertTimer;
- (void)_eventQueue_resetEditingManager;
- (void)_eventQueue_setAggregatedStatus:(id)a3;
- (void)_eventQueue_setAutoAdvanceDuration:(double)a3;
- (void)_eventQueue_setAutoAdvanceEnabled:(BOOL)a3;
- (void)_eventQueue_setAutomaticBrailleTranslationEnabled:(BOOL)a3;
- (void)_eventQueue_setBatchUpdates:(BOOL)a3;
- (void)_eventQueue_setBrailleFormatter:(id)a3;
- (void)_eventQueue_setBrailleKeyDebounceTimeout:(double)a3;
- (void)_eventQueue_setDisplayInputAccessMode:(int)a3;
- (void)_eventQueue_setInputTableWithIdentifier:(id)a3;
- (void)_eventQueue_setMainAttributedString:(id)a3 shouldDisplay:(BOOL)a4 forceUpdate:(BOOL)a5;
- (void)_eventQueue_setMasterStatusCellIndex:(int64_t)a3;
- (void)_eventQueue_setPersistentKeyModifiers:(unsigned int)a3;
- (void)_eventQueue_setPlanarData:(id)a3;
- (void)_eventQueue_setSingleLetterInputIsOn:(BOOL)a3;
- (void)_eventQueue_setTableIdentifier:(id)a3;
- (void)_eventQueue_setTactileGraphicsImageData:(id)a3;
- (void)_eventQueue_setTextSearchModeIsOn:(BOOL)a3;
- (void)_eventQueue_setWordWrapEnabled:(BOOL)a3;
- (void)_eventQueue_showDotsSevenAndEight:(BOOL)a3;
- (void)_eventQueue_showNextAnnouncement:(BOOL)a3;
- (void)_eventQueue_simulateKeypress:(id)a3;
- (void)_eventQueue_startBrailleUI:(id)a3;
- (void)_eventQueue_stopAlertTimer;
- (void)_eventQueue_unloadStealthDisplay;
- (void)_eventQueue_unloadVirtualDisplay:(unint64_t)a3;
- (void)_eventQueue_virtualDisplay:(unint64_t)a3 pressButton:(unint64_t)a4;
- (void)_eventQueue_virtualDisplay:(unint64_t)a3 pressKeyChord:(unint64_t)a4;
- (void)_loadNextDriverForIOElement:(id)a3;
- (void)_loadStealthDisplay;
- (void)_mainQueue_invalidate;
- (void)_startAutodetectingTactileGraphics;
- (void)_unloadStealthDisplay;
- (void)_updateTactileGraphicsDisplay;
- (void)beginUpdates;
- (void)brailleDidStartEditingWithDisplay:(id)a3;
- (void)brailleDisplay:(id)a3 copyStringToClipboard:(id)a4;
- (void)brailleDisplay:(id)a3 deletedUntranslatedText:(id)a4 speakLiterally:(BOOL)a5;
- (void)brailleDisplay:(id)a3 didDisplay:(id)a4;
- (void)brailleDisplay:(id)a3 didPanLeft:(id)a4 elementToken:(id)a5 appToken:(id)a6 lineOffset:(id)a7;
- (void)brailleDisplay:(id)a3 didPanRight:(id)a4 elementToken:(id)a5 appToken:(id)a6 lineOffset:(id)a7;
- (void)brailleDisplay:(id)a3 didReplaceRange:(_NSRange)a4 withString:(id)a5 cursor:(unint64_t)a6;
- (void)brailleDisplay:(id)a3 driverDidLoad:(BOOL)a4;
- (void)brailleDisplay:(id)a3 insertedUntranslatedText:(id)a4 speakLiterally:(BOOL)a5;
- (void)brailleDisplay:(id)a3 isSleeping:(BOOL)a4;
- (void)brailleDisplay:(id)a3 memorizedKey:(id)a4;
- (void)brailleDisplay:(id)a3 pressedKeys:(id)a4;
- (void)brailleDisplay:(id)a3 willMemorizeKey:(id)a4;
- (void)brailleDisplayHadUserInteraction:(id)a3;
- (void)brailleDriverDisconnected:(id)a3;
- (void)cancelCandidateSelection;
- (void)clearTimeoutAlert;
- (void)configurationChangedForBrailleDisplay:(id)a3;
- (void)configureInputTableWithIdentifier:(id)a3;
- (void)configureTableWithIdentifier:(id)a3;
- (void)didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5;
- (void)didDeleteBrailleChar:(id)a3;
- (void)didInsertScriptString:(id)a3;
- (void)didReplaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(int64_t)a5;
- (void)endBrailleUI;
- (void)endBrailleUI:(id)a3;
- (void)endUpdates;
- (void)exitCurrentDisplayMode;
- (void)handleBrailleUIRequest:(id)a3;
- (void)handleBrailleUIResponse:(id)a3 forRequest:(id)a4;
- (void)handleDidBrailleUIEnd;
- (void)handlePlanarPanFailedIsLeft:(BOOL)a3;
- (void)invalidate;
- (void)loadBLEDriverWithIdentifier:(id)a3;
- (void)panDisplayBeginning:(int)a3;
- (void)panDisplayEnd:(int)a3;
- (void)panDisplayLeft:(int)a3;
- (void)panDisplayRight:(int)a3;
- (void)planarPanDisplayLeft:(int)a3;
- (void)planarPanDisplayRight:(int)a3;
- (void)playBorderHitSoundForBrailleDisplay:(id)a3;
- (void)playCommandNotSupportedSoundForBrailleDisplay:(id)a3;
- (void)processBrailleUICommand:(id)a3;
- (void)requestSpeech:(id)a3 language:(id)a4 shouldQueue:(BOOL)a5;
- (void)resetEditingManager;
- (void)screenLockStateChanged:(BOOL)a3;
- (void)setAggregatedStatus:(id)a3;
- (void)setAlwaysUsesNemethCodeForTechnicalText:(BOOL)a3;
- (void)setAnnouncementsDisplayMode;
- (void)setAutoAdvanceDuration:(double)a3;
- (void)setAutoAdvanceEnabled:(BOOL)a3;
- (void)setAutomaticBrailleTranslationEnabled:(BOOL)a3;
- (void)setBlinkingCursorEnabled:(BOOL)a3;
- (void)setBrailleKeyDebounceTimeout:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayInputAccessMode:(int)a3;
- (void)setLastUserInteractionTime:(double)a3;
- (void)setLineDescriptorDisplayCallbackEnabled:(BOOL)a3;
- (void)setMainAttributedString:(id)a3 forceUpdate:(BOOL)a4;
- (void)setMasterStatusCellIndex:(int64_t)a3;
- (void)setPersistentKeyModifiers:(unsigned int)a3;
- (void)setPlanarData:(id)a3;
- (void)setPrepareToMemorizeNextKey:(BOOL)a3 immediate:(BOOL)a4 forDisplayWithToken:(int)a5;
- (void)setPrimaryBrailleDisplay:(int)a3;
- (void)setShowDotsSevenAndEight:(BOOL)a3;
- (void)setSingleKeyQuickNav:(BOOL)a3;
- (void)setSingleLetterInputIsOn:(BOOL)a3;
- (void)setTactileGraphicsImageData:(id)a3;
- (void)setTextSearchModeIsOn:(BOOL)a3;
- (void)setUIDisplayMode;
- (void)setVirtualStatusAlignment:(int)a3;
- (void)setWordWrapEnabled:(BOOL)a3;
- (void)showNextAnnouncement;
- (void)showNextCandidate;
- (void)showNextWordDescription;
- (void)showPreviousAnnouncement;
- (void)showPreviousCandidate;
- (void)showPreviousWordDescription;
- (void)simulateKeypress:(id)a3;
- (void)startBrailleUI:(id)a3;
- (void)systemVirtualDisplayPressKeyChord:(unint64_t)a3;
- (void)tokenizeString:(id)a3 intoFormatter:(id)a4 selection:(_NSRange *)a5;
- (void)translateBrailleToClipboard;
- (void)unloadVirtualDisplay:(unint64_t)a3;
- (void)virtualDisplay:(unint64_t)a3 pressButton:(unint64_t)a4;
- (void)virtualDisplay:(unint64_t)a3 pressKeyChord:(unint64_t)a4;
- (void)virtualDisplay:(unint64_t)a3 pressRouterWithIndex:(unint64_t)a4 withSpace:(BOOL)a5;
@end

@implementation SCROBrailleDisplayManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x277CCA8D8] brailleDriverBundles];
  }
}

- (SCROBrailleDisplayManager)init
{
  v36.receiver = self;
  v36.super_class = SCROBrailleDisplayManager;
  v2 = [(SCROBrailleDisplayManager *)&v36 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("display manager event queue", v3);
    eventQueue = v2->_eventQueue;
    v2->_eventQueue = v4;

    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [v6 initWithObjectsAndKeys:{&unk_287651B78, kSCROTokenAttribute[0], 0}];
    v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" " attributes:v7];
    blankUIString = v2->_blankUIString;
    v2->_blankUIString = v8;

    v10 = objc_alloc_init(SCROBrailleDisplayManagedQueue);
    managedDisplayQueue = v2->_managedDisplayQueue;
    v2->_managedDisplayQueue = v10;

    [(SCROBrailleDisplayManagedQueue *)v2->_managedDisplayQueue setActiveQueueMaximumSize:1];
    v2->_displayConfigurationDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    detectedIOElementsDict = v2->_detectedIOElementsDict;
    v2->_detectedIOElementsDict = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loadedIOElements = v2->_loadedIOElements;
    v2->_loadedIOElements = v14;

    inputTableIdentifier = v2->_inputTableIdentifier;
    v2->_inputTableIdentifier = &stru_28763D5C8;

    outputTableIdentifier = v2->_outputTableIdentifier;
    v2->_outputTableIdentifier = &stru_28763D5C8;

    v2->_showDotsSevenAndEight = 1;
    v2->_automaticBrailleTranslation = 1;
    v18 = objc_alloc_init(SCROBrailleDisplayManagerStatus);
    status = v2->_status;
    v2->_status = v18;

    [(SCROBrailleDisplayManagerStatus *)v2->_status setVirtualAlignment:0];
    [(SCROBrailleDisplayManagerStatus *)v2->_status setMasterStatusCellIndex:0];
    v2->_inputAccessMode = 0;
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    displayModeStack = v2->_displayModeStack;
    v2->_displayModeStack = v20;

    v22 = objc_alloc_init(SCROBrailleDisplayHistory);
    history = v2->_history;
    v2->_history = v22;

    v2->_isValid = 0;
    v24 = objc_opt_new();
    virtualDisplays = v2->_virtualDisplays;
    v2->_virtualDisplays = v24;

    v26 = [MEMORY[0x277CF3318] sharedModel];
    [v26 setDelegate:v2];

    v27 = [[SCROBrailleUIVisualManager alloc] initWithDelegate:v2];
    brailleUIVisualManager = v2->_brailleUIVisualManager;
    v2->_brailleUIVisualManager = v27;

    v29 = +[SCROBrailleUIDisplayManager sharedManager];
    [v29 setSpeechDelegate:v2];

    v30 = objc_alloc_init(MEMORY[0x277D23DD8]);
    lockScreenObserver = v2->_lockScreenObserver;
    v2->_lockScreenObserver = v30;

    [(AXLTLockScreenObserver *)v2->_lockScreenObserver setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, brailleUIOnKeybagLockStatusChange, [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277D28B38]], 0, CFNotificationSuspensionBehaviorDrop);
    v33 = objc_alloc_init(SCROBrailleUIKeyCommandAdapter);
    brailleUIKeyCommandAdapter = v2->_brailleUIKeyCommandAdapter;
    v2->_brailleUIKeyCommandAdapter = v33;
  }

  return v2;
}

- (void)invalidate
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_isValid)
  {
    self->_isValid = 0;
    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SCROBrailleDisplayManager_invalidate__block_invoke;
    block[3] = &unk_279B73DD0;
    block[4] = self;
    dispatch_sync(eventQueue, block);
    [(SCROBrailleDisplayManager *)self _mainQueue_invalidate];
  }
}

- (void)_eventQueue_invalidate
{
  dispatch_assert_queue_V2(self->_eventQueue);
  [(SCROBrailleDisplayManager *)self _eventQueue_stop];
  bluetoothBrailleDisplay = self->_bluetoothBrailleDisplay;
  self->_bluetoothBrailleDisplay = 0;

  stealthBrailleDisplay = self->_stealthBrailleDisplay;
  self->_stealthBrailleDisplay = 0;

  detectedIOElementsDict = self->_detectedIOElementsDict;
  self->_detectedIOElementsDict = 0;

  loadedIOElements = self->_loadedIOElements;
  self->_loadedIOElements = 0;
}

- (void)_mainQueue_invalidate
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(SCROBrailleDisplayManager *)self _disableAutoDetect];
  v3 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  [v3 makeObjectsPerformSelector:sel_invalidate];

  v4 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activePendingDisplays];
  [v4 makeObjectsPerformSelector:sel_invalidate];

  v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue sleepingDisplays];
  [v5 makeObjectsPerformSelector:sel_invalidate];

  v6 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue disconnectedDisplays];
  [v6 makeObjectsPerformSelector:sel_invalidate];

  v7 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue loadingDisplays];
  [v7 makeObjectsPerformSelector:sel_invalidate];

  managedDisplayQueue = self->_managedDisplayQueue;
  self->_managedDisplayQueue = 0;

  displayConfigurationDict = self->_displayConfigurationDict;
  if (displayConfigurationDict)
  {
    CFRelease(displayConfigurationDict);
    self->_displayConfigurationDict = 0;
  }
}

- (BOOL)isValid
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SCROBrailleDisplayManager_isValid__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)tokenizeString:(id)a3 intoFormatter:(id)a4 selection:(_NSRange *)a5
{
  v7 = a3;
  v48 = a4;
  v46 = v7;
  v8 = [v7 length];
  v73 = 0;
  v74 = 0;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v52 = a5;
    do
    {
      v51 = v10;
      v54 = [v46 attribute:kSCROTokenAttribute[0] atIndex:v10 longestEffectiveRange:&v73 inRange:{v10, v9}];
      v11 = [v46 attributedSubstringFromRange:{v73, v74}];
      v53 = [v11 attribute:kSCROLanguageAttribute[0] atIndex:0 effectiveRange:0];
      if (([v11 getRange:a5 ofAttribute:kSCROSelectionAttribute[0]] & 1) == 0)
      {
        if (![v11 getRange:a5 ofAttribute:kSCROCursorAttribute[0]])
        {
          v12 = 0;
          goto LABEL_8;
        }

        a5->length = 0;
      }

      v12 = 1;
LABEL_8:
      v13 = [v11 attribute:kSCROSelectionOnDifferentLineAttribute[0] atIndex:0 effectiveRange:0];
      v14 = [v13 BOOLValue];

      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__0;
      v71 = __Block_byref_object_dispose__0;
      v72 = 0;
      if (v12)
      {
        v15 = kSCROBrailleEditingStringAttribute[0];
        v16 = [v11 length];
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke;
        v66[3] = &unk_279B74038;
        v66[4] = &v67;
        [v11 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v66}];
      }

      v17 = [v11 attribute:kSCROTechnicalContextAttribute[0] atIndex:0 effectiveRange:0];
      v18 = [v17 BOOLValue];

      v19 = [v11 attribute:kSCROEditableTextAttribute[0] atIndex:0 effectiveRange:0];
      v20 = [v19 BOOLValue];

      if (v20)
      {
        v21 = 1;
      }

      else
      {
        v22 = [v11 attribute:kSCROEditableTextPaddingAttribute[0] atIndex:0 effectiveRange:0];
        v21 = [v22 BOOLValue];
      }

      v65[0] = 0;
      v65[1] = 0;
      v23 = [v11 getRange:v65 ofAttribute:kSCROPlaceholderTextAttribute[0]];
      v64[0] = 0;
      v64[1] = 0;
      v24 = [v11 getRange:v64 ofAttribute:kSCROFocusedAttribute[0]];
      v63 = xmmword_26498C6C0;
      [v11 getRange:&v63 ofAttribute:kSCROEditableTextPaddingAttribute[0]];
      v50 = v21;
      v49 = v9;
      v62 = xmmword_26498C6C0;
      [v11 getRange:&v62 ofAttribute:kSCROSuggestionTextAttribute[0]];
      v25 = v18;
      v26 = v14;
      v27 = v12;
      v61[0] = 0;
      v61[1] = 0;
      if ([v11 getRange:v61 ofAttribute:kSCROTerminalOutputAttribute[0]])
      {
        [v48 setDisplayMode:5];
      }

      v28 = objc_opt_new();
      v29 = kSCROBoldTextAttribute[0];
      v30 = [v11 length];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke_2;
      v59[3] = &unk_279B74060;
      v31 = v28;
      v60 = v31;
      [v11 enumerateAttribute:v29 inRange:0 options:v30 usingBlock:{0, v59}];
      v32 = kSCROItalicTextAttribute[0];
      v33 = [v11 length];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke_3;
      v57[3] = &unk_279B74060;
      v34 = v31;
      v58 = v34;
      [v11 enumerateAttribute:v32 inRange:0 options:v33 usingBlock:{0, v57}];
      v35 = kSCROUnderlineTextAttribute;
      v36 = [v11 length];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke_4;
      v55[3] = &unk_279B74060;
      v37 = v34;
      v56 = v37;
      [v11 enumerateAttribute:v35 inRange:0 options:v36 usingBlock:{0, v55}];
      v38 = [v11 string];
      if (v23)
      {
        v47 = [v11 string];
        v39 = v47;
      }

      else
      {
        v39 = 0;
      }

      v40 = [v54 integerValue];
      if (v27)
      {
        v41 = v52;
      }

      else
      {
        v41 = 0;
      }

      if (v24)
      {
        v42 = v64;
      }

      else
      {
        v42 = 0;
      }

      LOBYTE(v45) = v26;
      BYTE1(v44) = v50;
      LOBYTE(v44) = v25;
      [v48 addText:v38 overrideText:v39 language:v53 selection:v41 token:v40 focus:v42 technical:v44 isEditableText:v63 paddingRange:v62 suggestionRange:v68[5] editingString:v37 textFormattingRanges:v45 selectionOnDifferentLine:?];
      if (v23)
      {
      }

      v43 = v74 + v73;
      v9 = v51 + v49 - (v74 + v73);

      _Block_object_dispose(&v67, 8);
      v10 = v43;
      a5 = v52;
    }

    while (v9);
  }
}

void __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = v9;
    *a5 = 1;
  }
}

uint64_t __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addBoldRange:?];
  }

  return result;
}

uint64_t __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke_3(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addItalicRange:?];
  }

  return result;
}

uint64_t __68__SCROBrailleDisplayManager_tokenizeString_intoFormatter_selection___block_invoke_4(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addUnderlineRange:?];
  }

  return result;
}

- (void)_startAutodetectingTactileGraphics
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef soft__AXSVoiceOverTouchCopyTactileGraphicsDisplay(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplayManager.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_updateTactileGraphicsDisplay
{
  v3 = _SCROD_LOG();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26490B000, v3, OS_LOG_TYPE_DEFAULT, "Updating tactile graphics from notification", v4, 2u);
  }

  [(SCROBrailleDisplayManager *)self _startAutodetectingTactileGraphics];
}

- (void)_enableAutoDetect
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef getkAXSVoiceOverTouchTactileGraphicsDisplayChangedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplayManager.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_disableAutoDetect
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = kSCROBrailleDisplayConnectedNotification;
  v5 = +[SCROBrailleDisplayAutoDetector sharedDetector];
  [v3 removeObserver:self name:v4 object:v5];

  v6 = +[SCROBrailleDisplayAutoDetector sharedDetector];
  [v6 stopDetectingDisplays];
}

- (void)_deviceConnectedHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SCROBrailleDisplayManager__deviceConnectedHandler___block_invoke;
  v6[3] = &unk_279B74088;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__SCROBrailleDisplayManager__deviceConnectedHandler___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) userInfo];
  v2 = *(a1 + 40);
  v3 = [v5 objectForKey:@"element"];
  v4 = [v5 objectForKey:@"driverID"];
  [v2 _addDetectedIOElement:v3 withDriverIdentifier:v4];
}

- (void)_addDetectedIOElement:(id)a3 withDriverIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v6 && v7)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    eventQueue = self->_eventQueue;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __72__SCROBrailleDisplayManager__addDetectedIOElement_withDriverIdentifier___block_invoke;
    v13 = &unk_279B740B0;
    v17 = &v18;
    v14 = self;
    v9 = v6;
    v15 = v9;
    v16 = v7;
    dispatch_sync(eventQueue, &v10);
    if (*(v19 + 24) == 1)
    {
      [(SCROBrailleDisplayManager *)self _loadNextDriverForIOElement:v9, v10, v11, v12, v13, v14, v15];
    }

    _Block_object_dispose(&v18, 8);
  }
}

uint64_t __72__SCROBrailleDisplayManager__addDetectedIOElement_withDriverIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _eventQueue_addDetectedIOElement:*(a1 + 40) withDriverIdentifier:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)_eventQueue_addDetectedIOElement:(id)a3 withDriverIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_eventQueue);
  if (([(NSMutableSet *)self->_loadedIOElements containsObject:v6]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_detectedIOElementsDict objectForKey:v6];
    v8 = v9 == 0;
    if (v9)
    {
      v10 = v9;
      if (([v9 containsObject:v6] & 1) == 0)
      {
        [v10 addObject:v7];
      }
    }

    else
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
      [(NSMutableDictionary *)self->_detectedIOElementsDict setObject:v10 forKey:v6];
    }
  }

  return v8;
}

- (void)_loadNextDriverForIOElement:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v4)
  {
    eventQueue = self->_eventQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__SCROBrailleDisplayManager__loadNextDriverForIOElement___block_invoke;
    v6[3] = &unk_279B74088;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(eventQueue, v6);
  }
}

- (void)_eventQueue_loadNextDriverForIOElement:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v39 = v4;
  v40 = self;
  if ([v4 conformsToProtocol:&unk_28765F968])
  {
    v5 = [v4 bluetoothAddress];
    v6 = SCRONSStringForPurportedString(v5);

    v7 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_opt_new();
    }

    v9 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activePendingDisplays];
    if (v9)
    {
      [v8 addObjectsFromArray:v9];
    }

    v38 = v9;
    v10 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue loadingDisplays];
    if (v10)
    {
      [v8 addObjectsFromArray:v10];
    }

    v37 = v10;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [v16 ioElement];
          v18 = [v17 conformsToProtocol:&unk_28765F968];

          if (v18)
          {
            v19 = [v16 ioElement];
            v20 = [v19 bluetoothAddress];

            v21 = SCRONSStringForPurportedString(v20);

            if (v21 && [v6 isEqualToString:v21])
            {
              v22 = v40;
              if (-[SCROBrailleDisplayManager _isIOElementHID:](v40, "_isIOElementHID:", v4) && ([v16 ioElement], v23 = objc_claimAutoreleasedReturnValue(), v24 = -[SCROBrailleDisplayManager _isIOElementHID:](v40, "_isIOElementHID:", v23), v23, v22 = v40, !v24))
              {
                v26 = _SCROD_LOG();
                v4 = v39;
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v46 = v16;
                  v47 = 2112;
                  v48 = v39;
                  _os_log_impl(&dword_26490B000, v26, OS_LOG_TYPE_DEFAULT, "loadNextDriverForIOElement: old display is non-HID and the new one is HID. Invalidating %@ (new ioElement = %@)", buf, 0x16u);
                }

                [v16 invalidate];
              }

              else
              {
                v25 = _SCROD_LOG();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_26490B000, v25, OS_LOG_TYPE_DEFAULT, "loadNextDriverForIOElement: second load attempt from the same BT address. Ignoring.", buf, 2u);
                }

                v4 = v39;
                [(NSMutableDictionary *)v22->_detectedIOElementsDict removeObjectForKey:v39];
              }
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v13);
    }

    self = v40;
  }

  if ([v4 transport] == 2 || objc_msgSend(v4, "transport") == 8)
  {
    v27 = [v4 conformsToProtocol:&unk_28765F968];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(NSMutableDictionary *)self->_detectedIOElementsDict objectForKey:v4];
  v29 = [v28 count];
  if (v29)
  {
    v30 = v29;
    while (1)
    {
      v31 = [v28 objectAtIndex:0];
      v32 = [(SCROBrailleDisplayManager *)v40 _displayWithIOElement:v4 driverIdentifier:v31 delegate:v40];
      v33 = _SCROD_LOG();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v46 = v32;
        v47 = 2114;
        v48 = v31;
        v49 = 2112;
        v50 = v39;
        _os_log_impl(&dword_26490B000, v33, OS_LOG_TYPE_DEFAULT, "Made braille display %@ from identifier %{public}@ %@", buf, 0x20u);
      }

      if (v27)
      {
        objc_storeStrong(&v40->_bluetoothBrailleDisplay, v32);
      }

      [v28 removeObjectAtIndex:0];
      v4 = v39;
      if (v32)
      {
        break;
      }

      --v30;

      if (!v30)
      {
        goto LABEL_40;
      }
    }

    [(SCROBrailleDisplayManagedQueue *)v40->_managedDisplayQueue addDisplay:v32 withState:4];
    goto LABEL_44;
  }

LABEL_40:
  [(NSMutableDictionary *)v40->_detectedIOElementsDict removeObjectForKey:v4];
  if (v27)
  {
    bluetoothBrailleDisplay = v40->_bluetoothBrailleDisplay;
    v40->_bluetoothBrailleDisplay = 0;

    WeakRetained = objc_loadWeakRetained(&v40->_delegate);
    if (WeakRetained)
    {
      v32 = WeakRetained;
      v31 = [v4 bluetoothAddress];
      [v32 handleFailedToLoadBluetoothDevice:v31];
LABEL_44:
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isIOElementHID:(id)a3
{
  v3 = a3;
  if ([v3 conformsToProtocol:&unk_28765FB78])
  {
    v4 = [v3 hidDevice] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__SCROBrailleDisplayManager_setDelegate___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (SCROSBrailleDisplayManagerDelegate)delegate
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__SCROBrailleDisplayManager_delegate__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __37__SCROBrailleDisplayManager_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8](WeakRetained);
}

- (void)brailleDisplay:(id)a3 driverDidLoad:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _SCROD_LOG();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Driver did load: %d %{public}@", buf, 0x12u);
  }

  eventQueue = self->_eventQueue;
  if (v4)
  {
    v9 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v10 = __58__SCROBrailleDisplayManager_brailleDisplay_driverDidLoad___block_invoke;
  }

  else
  {
    v9 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v10 = __58__SCROBrailleDisplayManager_brailleDisplay_driverDidLoad___block_invoke_2;
  }

  v9[2] = v10;
  v9[3] = &unk_279B74088;
  v9[4] = self;
  v9[5] = v6;
  v11 = v6;
  dispatch_async(eventQueue, v9);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_eventQueue_brailleDisplayDriverDidLoad:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SCROD_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SCROBrailleDisplay *)v4 driverIdentifier];
    *buf = 138412290;
    v51 = v6;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Display loaded: %@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_eventQueue);
  v7 = [(SCROBrailleDisplay *)v4 ioElement];
  v8 = [(SCROBrailleDisplay *)v4 configuration];
  if (v7)
  {
    bluetoothBrailleDisplay = self->_bluetoothBrailleDisplay;
    v47 = bluetoothBrailleDisplay == v4;
    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithBool:bluetoothBrailleDisplay == v4];
      v12 = self->_bluetoothBrailleDisplay;
      *buf = 138412802;
      v51 = v11;
      v52 = 2112;
      v53 = v12;
      v54 = 2112;
      v55 = v4;
      _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, "Selected BT Display (%@): %@ | %@", buf, 0x20u);
    }

    v13 = _SCROD_LOG();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v51 = v7;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Selected ioElement (%@)", buf, 0xCu);
    }

    if (!self->_bluetoothBrailleDisplay)
    {
      v14 = _SCROD_LOG();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v51 = v7;
        _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Marking BT device as loading so it can be saved: %@", buf, 0xCu);
      }

      v47 = 1;
    }

    [(NSMutableSet *)self->_loadedIOElements addObject:v7];
    [(NSMutableDictionary *)self->_detectedIOElementsDict removeObjectForKey:v7];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass() ^ 1;
    v16 = 1;
  }

  else
  {
    v47 = 0;
    v16 = self->_stealthBrailleDisplay != v4;
    v15 = 1;
  }

  v17 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:v4];
  v18 = _SCROD_LOG();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v51) = v17;
    _os_log_impl(&dword_26490B000, v18, OS_LOG_TYPE_DEFAULT, "Current display state: %d", buf, 8u);
  }

  v19 = v17 & 0xFFFFFFFB;
  v20 = (v17 & 0xFFFFFFFB) == 0;
  v45 = v8;
  if (v19)
  {
    v21 = 0;
    v46 = 0;
    WeakRetained = 0;
    v23 = 0;
    goto LABEL_18;
  }

  displayConfigurationDict = self->_displayConfigurationDict;
  if (displayConfigurationDict && v8)
  {
    CFDictionarySetValue(displayConfigurationDict, v4, v8);
  }

  v25 = v15 & v16;
  v26 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v27 = [v26 count];

  if (!v27)
  {
    v16 = 1;
  }

  if (v16)
  {
    if (v27 == 1)
    {
      v28 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
      v29 = [v28 lastObject];
      stealthBrailleDisplay = self->_stealthBrailleDisplay;

      if (v29 == stealthBrailleDisplay)
      {
        [(SCROBrailleDisplayManager *)self _eventQueue_unloadStealthDisplay];
      }
    }

    [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue setState:1 forDisplay:v4];
    if ([(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:v4]== 1)
    {
      v44 = [(SCROBrailleDisplayManagerStatus *)self->_status virtualAlignment];
      v43 = [(SCROBrailleDisplayManagerStatus *)self->_status masterStatusCellIndex];
      v31 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue primaryDisplay];
      v42 = v31 == v4;

      v46 = self->_currentBrailleFormatter;
      v32 = 1;
      if ((v25 & 1) == 0)
      {
        v21 = 0;
        WeakRetained = 0;
        goto LABEL_37;
      }
    }

    else
    {
      v32 = 0;
      v42 = 0;
      v44 = 0;
      v43 = 0;
      v46 = 0;
      v21 = 0;
      WeakRetained = 0;
      if (!v25)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v33 = self->_stealthBrailleDisplay;
    self->_stealthBrailleDisplay = 0;

    [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue removeDisplay:v4];
    if ((v25 & 1) == 0)
    {
      v21 = 0;
      v46 = 0;
      WeakRetained = 0;
      v23 = 0;
      v20 = 1;
      goto LABEL_18;
    }

    v32 = 0;
    v42 = 0;
    v44 = 0;
    v43 = 0;
    v46 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v16)
  {
    v21 = 1;
LABEL_37:
    v23 = objc_loadWeakRetained(&self->_delegate);
    v20 = 0;
    if (v32)
    {
      goto LABEL_41;
    }

LABEL_18:
    if ([(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:v4]!= 1)
    {
      [(SCROBrailleDisplay *)v4 setDelegateWantsDisplayCallback:0];
      [(SCROBrailleDisplay *)v4 setInputAllowed:0];
    }

    goto LABEL_44;
  }

  v23 = 0;
  v20 = 1;
  v21 = 1;
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_41:
  lineDescriptorDisplayCallbackEnabled = v42;
  if (v42)
  {
    lineDescriptorDisplayCallbackEnabled = self->_lineDescriptorDisplayCallbackEnabled;
  }

  _updateNewlyActiveDisplay(v4, v46, lineDescriptorDisplayCallbackEnabled, 1, v43, v44, self->_automaticBrailleTranslation);
LABEL_44:
  v35 = _SCROD_LOG();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [MEMORY[0x277CCABB0] numberWithBool:v21];
    v37 = [MEMORY[0x277CCABB0] numberWithBool:v47];
    *buf = 138412546;
    v51 = v36;
    v52 = 2112;
    v53 = v37;
    _os_log_impl(&dword_26490B000, v35, OS_LOG_TYPE_DEFAULT, "Braille display loaded: will notify: %@, will save: %@", buf, 0x16u);
  }

  if (v21)
  {
    if (v47)
    {
      [(SCROBrailleDisplayManager *)self _saveBluetoothDisplayConfiguration:v45];
    }

    [WeakRetained handleBrailleDriverDidLoad];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SCROBrailleDisplayManager__eventQueue_brailleDisplayDriverDidLoad___block_invoke;
  block[3] = &unk_279B73DD0;
  v49 = v23;
  v38 = v23;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v39 = [(SCROBrailleDisplayManager *)self brailleInputManager];
  v40 = [(SCROBrailleDisplayManager *)self _eventQueue_driverConfiguration];
  [v39 configureWithDriverConfiguration:v40];

  if (v20)
  {
    [(SCROBrailleDisplay *)v4 invalidate];
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_eventQueue_brailleDisplayDriverFailedToLoad:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SCROD_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(SCROBrailleDisplay *)v4 driverIdentifier];
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Display failed load: %{public}@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_eventQueue);
  v7 = [(SCROBrailleDisplay *)v4 ioElement];
  stealthBrailleDisplay = self->_stealthBrailleDisplay;
  if (stealthBrailleDisplay == v4)
  {
    self->_stealthBrailleDisplay = 0;
  }

  [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue removeDisplay:v4];
  v9 = [(NSMutableDictionary *)self->_detectedIOElementsDict objectForKey:v7];
  if (v9)
  {
    if (stealthBrailleDisplay == v4)
    {
      WeakRetained = 0;
      goto LABEL_15;
    }
  }

  else
  {
    bluetoothBrailleDisplay = self->_bluetoothBrailleDisplay;
    if (bluetoothBrailleDisplay == v4)
    {
      self->_bluetoothBrailleDisplay = 0;
    }

    if (stealthBrailleDisplay == v4)
    {
      [(SCROBrailleDisplayManager *)self _loadStealthDisplay];
      WeakRetained = 0;
      goto LABEL_16;
    }
  }

  if ([v9 count])
  {
    WeakRetained = 0;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v9)
  {
LABEL_15:
    [(SCROBrailleDisplayManager *)self performSelectorOnMainThread:sel__loadNextDriverForIOElement_ withObject:v7 waitUntilDone:0];
  }

LABEL_16:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SCROBrailleDisplayManager__eventQueue_brailleDisplayDriverFailedToLoad___block_invoke;
  block[3] = &unk_279B73DD0;
  v15 = WeakRetained;
  v12 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)brailleDriverDisconnected:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SCROBrailleDisplayManager_brailleDriverDisconnected___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_brailleDriverDisconnected:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v5 = [(SCROBrailleDisplay *)v4 ioElement];
  v6 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v7 = [v6 lastObject];

  v8 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:v4];
  v9 = v8;
  stealthBrailleDisplay = self->_stealthBrailleDisplay;
  v11 = self->_bluetoothBrailleDisplay != v4 || v8 == 4;
  v12 = v11;
  v39 = v12;
  if (v11)
  {
    [(NSMutableSet *)self->_loadedIOElements removeObject:v5];
    [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue removeDisplay:v4];
  }

  else
  {
    if ([v5 transport] == 8 && -[NSMutableSet containsObject:](self->_loadedIOElements, "containsObject:", v5))
    {
      [(NSMutableSet *)self->_loadedIOElements removeObject:v5];
    }

    [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue setState:0 forDisplay:v4];
  }

  v13 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v14 = [v13 count];
  v37 = v13;
  v38 = v7;
  if (v14)
  {
    v35 = v5;
    v15 = stealthBrailleDisplay;
    v16 = [v13 lastObject];
    v17 = v16;
    if (v7 == v16)
    {
      v22 = 0;
      v36 = 0;
      v40 = 0;
      v21 = 0;
      v20 = 0;
      inputAccessMode = 2;
    }

    else
    {
      v18 = v16;
      v19 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue primaryDisplay];
      v20 = v18;
      v21 = v18 == v19;

      v22 = [(SCROBrailleDisplayManagerStatus *)self->_status virtualAlignment];
      v36 = [(SCROBrailleDisplayManagerStatus *)self->_status masterStatusCellIndex];
      inputAccessMode = self->_inputAccessMode;
      v40 = self->_currentBrailleFormatter;
    }

    stealthBrailleDisplay = v15;
    v5 = v35;
  }

  else
  {
    v22 = 0;
    v36 = 0;
    v40 = 0;
    v21 = 0;
    v20 = 0;
    inputAccessMode = 2;
  }

  if (v9 != [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:v4])
  {
    if (stealthBrailleDisplay == v4)
    {
      WeakRetained = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    v24 = objc_loadWeakRetained(&self->_delegate);
    if (v14)
    {
      goto LABEL_22;
    }

LABEL_33:
    [(SCROBrailleDisplayManager *)self setUIDisplayMode];
    [(SCROBrailleDisplayManager *)self _loadStealthDisplay];
    v28 = v38;
    v29 = v20;
    goto LABEL_34;
  }

  v24 = 0;
  WeakRetained = 0;
  if (!v14)
  {
    goto LABEL_33;
  }

LABEL_22:
  if (inputAccessMode == 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = (inputAccessMode == 0) & v21;
  }

  v27 = v21 && self->_lineDescriptorDisplayCallbackEnabled;
  v28 = v38;
  v29 = v20;
  _updateNewlyActiveDisplay(v20, v40, v27, v26, v36, v22, self->_automaticBrailleTranslation);
LABEL_34:
  [WeakRetained handleBrailleDriverDisconnected];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SCROBrailleDisplayManager__eventQueue_brailleDriverDisconnected___block_invoke;
  block[3] = &unk_279B73DD0;
  v30 = v24;
  v42 = v30;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v31 = [(SCROBrailleDisplayManager *)self brailleInputManager];
  v32 = [(SCROBrailleDisplayManager *)self _eventQueue_driverConfiguration];
  [v31 configureWithDriverConfiguration:v32];

  if (v39)
  {
    [(SCROBrailleDisplay *)v4 invalidate];
  }

  if ([v5 conformsToProtocol:&unk_28765F720])
  {
    v33 = _SCROD_LOG();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v5;
      _os_log_impl(&dword_26490B000, v33, OS_LOG_TYPE_DEFAULT, "element was BTLE, restarting auto detect: %@", buf, 0xCu);
    }

    [(SCROBrailleDisplayManager *)self _startAutodetectingTactileGraphics];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)brailleDisplay:(id)a3 isSleeping:(BOOL)a4
{
  v6 = a3;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SCROBrailleDisplayManager_brailleDisplay_isSleeping___block_invoke;
  block[3] = &unk_279B740D8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_brailleDisplay:(id)a3 isSleeping:(BOOL)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v7 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v8 = [v7 lastObject];
  if (a4)
  {
    v9 = 3;
  }

  else
  {
    if ([v7 count] == 1 && v8 == self->_stealthBrailleDisplay)
    {
      [(SCROBrailleDisplayManager *)self _unloadStealthDisplay];
    }

    v9 = 1;
  }

  [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue setState:v9 forDisplay:v6];
  v10 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];

  if ([v10 count])
  {
    v26 = v6;
    v11 = [v10 lastObject];
    v12 = v11;
    if (v8 == v11)
    {
      v16 = 0;
      v17 = 0;
      v19 = 0;
      v15 = 0;
      v13 = 0;
      inputAccessMode = 2;
    }

    else
    {
      v13 = v11;
      v14 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue primaryDisplay];
      v15 = v13 == v14;

      v16 = [(SCROBrailleDisplayManagerStatus *)self->_status virtualAlignment];
      v17 = [(SCROBrailleDisplayManagerStatus *)self->_status masterStatusCellIndex];
      inputAccessMode = self->_inputAccessMode;
      v19 = self->_currentBrailleFormatter;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (inputAccessMode == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = (inputAccessMode == 0) & v15;
    }

    v22 = v15 && self->_lineDescriptorDisplayCallbackEnabled;
    v6 = v26;
    _updateNewlyActiveDisplay(v13, v19, v22, v21, v17, v16, self->_automaticBrailleTranslation);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(SCROBrailleDisplayManager *)self setUIDisplayMode];
    [(SCROBrailleDisplayManager *)self _loadStealthDisplay];
    v13 = 0;
    v19 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SCROBrailleDisplayManager__eventQueue_brailleDisplay_isSleeping___block_invoke;
  block[3] = &unk_279B73DD0;
  v28 = WeakRetained;
  v23 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v24 = [(SCROBrailleDisplayManager *)self brailleInputManager];
  v25 = [(SCROBrailleDisplayManager *)self _eventQueue_driverConfiguration];
  [v24 configureWithDriverConfiguration:v25];
}

- (void)configurationChangedForBrailleDisplay:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [v4 configuration];
    if (v5)
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x2020000000;
      v21 = 0;
      v16[0] = 0;
      v16[1] = v16;
      v16[2] = 0x3032000000;
      v16[3] = __Block_byref_object_copy__0;
      v16[4] = __Block_byref_object_dispose__0;
      v17 = 0;
      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__SCROBrailleDisplayManager_configurationChangedForBrailleDisplay___block_invoke;
      block[3] = &unk_279B74100;
      block[4] = self;
      v12 = v4;
      v7 = v5;
      v13 = v7;
      v14 = &v18;
      v15 = v16;
      dispatch_sync(eventQueue, block);
      if (*(v19 + 24) == 1)
      {
        [(SCROBrailleDisplayManager *)self _saveBluetoothDisplayConfiguration:v7];
      }

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __67__SCROBrailleDisplayManager_configurationChangedForBrailleDisplay___block_invoke_2;
      v10[3] = &unk_279B73EB0;
      v10[4] = v16;
      dispatch_async(MEMORY[0x277D85CD0], v10);
      v8 = [(SCROBrailleDisplayManager *)self brailleInputManager];
      v9 = [(SCROBrailleDisplayManager *)self driverConfiguration];
      [v8 configureWithDriverConfiguration:v9];

      _Block_object_dispose(v16, 8);
      _Block_object_dispose(&v18, 8);
    }
  }
}

void __67__SCROBrailleDisplayManager_configurationChangedForBrailleDisplay___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    if (v4)
    {
      CFDictionarySetValue(v4, *(a1 + 40), *(a1 + 48));
      v3 = *(a1 + 32);
    }

    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 40) == *(v3 + 24);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = WeakRetained;

    MEMORY[0x2821F96F8](WeakRetained);
  }
}

- (void)brailleDisplay:(id)a3 pressedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__SCROBrailleDisplayManager_brailleDisplay_pressedKeys___block_invoke;
  v13[3] = &unk_279B74128;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v17 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(eventQueue, v13);
}

void __56__SCROBrailleDisplayManager_brailleDisplay_pressedKeys___block_invoke(id *a1)
{
  v2 = [a1[4] token];
  if ((v2 != kSCROSystemVirtualBrailleDisplayToken || ([a1[5] _eventQueue_handleSystemVirtualDisplayKeyPress:a1[6]] & 1) == 0) && (objc_msgSend(a1[5], "_eventQueue_handleBrailleUIKeyPress:", a1[6]) & 1) == 0)
  {
    v3 = [a1[7] displayForToken:{objc_msgSend(a1[4], "token")}];
    if (v3 == a1[4] && [a1[7] stateForDisplay:v3] == 1)
    {
      WeakRetained = objc_loadWeakRetained(a1[5] + 9);
    }

    else
    {
      WeakRetained = 0;
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __56__SCROBrailleDisplayManager_brailleDisplay_pressedKeys___block_invoke_2;
    v6[3] = &unk_279B74088;
    v7 = WeakRetained;
    v8 = a1[6];
    v5 = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

- (BOOL)_eventQueue_handleSystemVirtualDisplayKeyPress:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v6 = [v5 count];

  v7 = v6 - ([(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:self->_stealthBrailleDisplay]== 1);
  virtualDisplays = self->_virtualDisplays;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:kSCROSystemVirtualBrailleDisplayToken];
  v10 = [(NSMutableDictionary *)virtualDisplays objectForKey:v9];

  if (v10)
  {
    v7 -= [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:v10]== 1;
  }

  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v12 = +[SCROMobileBrailleDisplayInputManager sharedManager];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v12 commandForBrailleKey:{*(*(&v21 + 1) + 8 * i), v21}];
          if ([v18 isEqualToString:@"VOTEventCommandBrailleAnnouncementModeOn"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"VOTEventCommandStartTextSearch") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"VOTEventCommandWordDescription") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"VOTEventCommandBrailleToggleZoomOut") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"VOTEventCommandBraillePanLeft") & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"VOTEventCommandBraillePanRight"))
          {

            v11 = 1;
            goto LABEL_21;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v11 = 0;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_21:
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)brailleDisplayHadUserInteraction:(id)a3
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SCROBrailleDisplayManager_brailleDisplayHadUserInteraction___block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

void __62__SCROBrailleDisplayManager_brailleDisplayHadUserInteraction___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isBrailleUIActive])
  {
    v2 = [*(a1 + 32) brailleUIVisualManager];
    [v2 showVisual];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained handleUserEventOccured];
}

- (void)brailleDidStartEditingWithDisplay:(id)a3
{
  v4 = a3;
  v5 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SCROBrailleDisplayManager_brailleDidStartEditingWithDisplay___block_invoke;
  block[3] = &unk_279B73FB0;
  v10 = v5;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v5;
  dispatch_async(eventQueue, block);
}

void __63__SCROBrailleDisplayManager_brailleDidStartEditingWithDisplay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 == *(a1 + 40) && [*(a1 + 32) stateForDisplay:v2] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SCROBrailleDisplayManager_brailleDidStartEditingWithDisplay___block_invoke_2;
  block[3] = &unk_279B73DD0;
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)brailleDisplay:(id)a3 didReplaceRange:(_NSRange)a4 withString:(id)a5 cursor:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SCROBrailleDisplayManager_brailleDisplay_didReplaceRange_withString_cursor___block_invoke;
  block[3] = &unk_279B74178;
  v19 = v13;
  v20 = v11;
  v23 = location;
  v24 = length;
  v21 = self;
  v22 = v12;
  v25 = a6;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  dispatch_async(eventQueue, block);
}

void __78__SCROBrailleDisplayManager_brailleDisplay_didReplaceRange_withString_cursor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 == *(a1 + 40) && [*(a1 + 32) stateForDisplay:v2] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SCROBrailleDisplayManager_brailleDisplay_didReplaceRange_withString_cursor___block_invoke_2;
  block[3] = &unk_279B74150;
  v8 = WeakRetained;
  v10 = *(a1 + 64);
  v4 = *(a1 + 56);
  v5 = *(a1 + 80);
  v9 = v4;
  v11 = v5;
  v6 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)brailleDisplay:(id)a3 insertedUntranslatedText:(id)a4 speakLiterally:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (!-[SCROBrailleDisplayManager _isBrailleUIActive](self, "_isBrailleUIActive") || (+[SCROBrailleUISettingsManager sharedInstance](SCROBrailleUISettingsManager, "sharedInstance"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 isTypingSpeechFeedbackEnabled], v10, v11))
  {
    v12 = self->_managedDisplayQueue;
    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__SCROBrailleDisplayManager_brailleDisplay_insertedUntranslatedText_speakLiterally___block_invoke;
    block[3] = &unk_279B741A0;
    v16 = v12;
    v17 = v8;
    v18 = self;
    v19 = v9;
    v20 = a5;
    v14 = v12;
    dispatch_async(eventQueue, block);
  }
}

void __84__SCROBrailleDisplayManager_brailleDisplay_insertedUntranslatedText_speakLiterally___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 == *(a1 + 40) && [*(a1 + 32) stateForDisplay:v2] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SCROBrailleDisplayManager_brailleDisplay_insertedUntranslatedText_speakLiterally___block_invoke_2;
  block[3] = &unk_279B740D8;
  v6 = WeakRetained;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)brailleDisplay:(id)a3 copyStringToClipboard:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__SCROBrailleDisplayManager_brailleDisplay_copyStringToClipboard___block_invoke;
  v13[3] = &unk_279B74128;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(eventQueue, v13);
}

void __66__SCROBrailleDisplayManager_brailleDisplay_copyStringToClipboard___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 == *(a1 + 40) && [*(a1 + 32) stateForDisplay:v2] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SCROBrailleDisplayManager_brailleDisplay_copyStringToClipboard___block_invoke_2;
  v5[3] = &unk_279B74088;
  v6 = WeakRetained;
  v7 = *(a1 + 56);
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)brailleDisplay:(id)a3 deletedUntranslatedText:(id)a4 speakLiterally:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SCROBrailleDisplayManager_brailleDisplay_deletedUntranslatedText_speakLiterally___block_invoke;
  block[3] = &unk_279B741A0;
  v16 = v10;
  v17 = v8;
  v18 = self;
  v19 = v9;
  v20 = a5;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(eventQueue, block);
}

void __83__SCROBrailleDisplayManager_brailleDisplay_deletedUntranslatedText_speakLiterally___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 == *(a1 + 40) && [*(a1 + 32) stateForDisplay:v2] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SCROBrailleDisplayManager_brailleDisplay_deletedUntranslatedText_speakLiterally___block_invoke_2;
  block[3] = &unk_279B740D8;
  v6 = WeakRetained;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)brailleDisplay:(id)a3 willMemorizeKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SCROBrailleDisplayManager_brailleDisplay_willMemorizeKey___block_invoke;
  v13[3] = &unk_279B74128;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(eventQueue, v13);
}

void __60__SCROBrailleDisplayManager_brailleDisplay_willMemorizeKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 != *(a1 + 40) || [*(a1 + 32) stateForDisplay:v2] != 1)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 48);
  v4 = *(v3 + 232);
  if (v4 == 1)
  {
    goto LABEL_11;
  }

  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) primaryDisplay];
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      v8 = [*(a1 + 40) token];
      v9 = kSCROSystemVirtualBrailleDisplayToken;

      if (v8 != v9)
      {
        goto LABEL_7;
      }
    }

    v3 = *(a1 + 48);
LABEL_11:
    WeakRetained = objc_loadWeakRetained((v3 + 72));
    goto LABEL_8;
  }

LABEL_7:
  WeakRetained = 0;
LABEL_8:
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SCROBrailleDisplayManager_brailleDisplay_willMemorizeKey___block_invoke_2;
  v12[3] = &unk_279B74088;
  v13 = WeakRetained;
  v14 = *(a1 + 56);
  v11 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (void)brailleDisplay:(id)a3 memorizedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SCROBrailleDisplayManager_brailleDisplay_memorizedKey___block_invoke;
  v13[3] = &unk_279B74128;
  v14 = v8;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  v12 = v8;
  dispatch_async(eventQueue, v13);
}

void __57__SCROBrailleDisplayManager_brailleDisplay_memorizedKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) displayForToken:{objc_msgSend(*(a1 + 40), "token")}];
  if (v2 != *(a1 + 40) || [*(a1 + 32) stateForDisplay:v2] != 1)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 48);
  v4 = *(v3 + 232);
  if (v4 == 1)
  {
LABEL_9:
    WeakRetained = objc_loadWeakRetained((v3 + 72));
    goto LABEL_7;
  }

  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) primaryDisplay];

    if (v5 == v6)
    {
      v3 = *(a1 + 48);
      goto LABEL_9;
    }
  }

LABEL_6:
  WeakRetained = 0;
LABEL_7:
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SCROBrailleDisplayManager_brailleDisplay_memorizedKey___block_invoke_2;
  v9[3] = &unk_279B74088;
  v10 = WeakRetained;
  v11 = *(a1 + 56);
  v8 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (void)brailleDisplay:(id)a3 didDisplay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SCROBrailleDisplayManager_brailleDisplay_didDisplay___block_invoke;
  v13[3] = &unk_279B74128;
  v14 = v6;
  v15 = v8;
  v16 = self;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_async(eventQueue, v13);
}

void __55__SCROBrailleDisplayManager_brailleDisplay_didDisplay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) primaryDisplay];

  if (v2 == v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SCROBrailleDisplayManager_brailleDisplay_didDisplay___block_invoke_2;
  v6[3] = &unk_279B74088;
  v7 = WeakRetained;
  v8 = *(a1 + 56);
  v5 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)brailleDisplay:(id)a3 didPanLeft:(id)a4 elementToken:(id)a5 appToken:(id)a6 lineOffset:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SCROBrailleDisplayManager_brailleDisplay_didPanLeft_elementToken_appToken_lineOffset___block_invoke;
  block[3] = &unk_279B741F0;
  v26 = v17;
  v27 = v12;
  v28 = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v17;
  dispatch_async(eventQueue, block);
}

void __88__SCROBrailleDisplayManager_brailleDisplay_didPanLeft_elementToken_appToken_lineOffset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) stateForDisplay:*(a1 + 40)] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = +[SCROBrailleUIView visibleView];
  if (+[SCROBrailleUIApp isHidingViews](SCROBrailleUIApp, "isHidingViews") || !v3 || ([*(a1 + 56) BOOLValue] & 1) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__SCROBrailleDisplayManager_brailleDisplay_didPanLeft_elementToken_appToken_lineOffset___block_invoke_2;
    block[3] = &unk_279B741C8;
    v13 = WeakRetained;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v14 = v9;
    v15 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = [SCROBrailleUIEvent eventWithType:1];
    v11 = [v3 handleEvent:v10];
  }
}

- (void)brailleDisplay:(id)a3 didPanRight:(id)a4 elementToken:(id)a5 appToken:(id)a6 lineOffset:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self->_managedDisplayQueue;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SCROBrailleDisplayManager_brailleDisplay_didPanRight_elementToken_appToken_lineOffset___block_invoke;
  block[3] = &unk_279B741F0;
  v26 = v17;
  v27 = v12;
  v28 = self;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v17;
  dispatch_async(eventQueue, block);
}

void __89__SCROBrailleDisplayManager_brailleDisplay_didPanRight_elementToken_appToken_lineOffset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) stateForDisplay:*(a1 + 40)] == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = +[SCROBrailleUIView visibleView];
  if (+[SCROBrailleUIApp isHidingViews](SCROBrailleUIApp, "isHidingViews") || !v3 || ([*(a1 + 56) BOOLValue] & 1) != 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__SCROBrailleDisplayManager_brailleDisplay_didPanRight_elementToken_appToken_lineOffset___block_invoke_2;
    block[3] = &unk_279B741C8;
    v13 = WeakRetained;
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 80);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v14 = v9;
    v15 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v10 = [SCROBrailleUIEvent eventWithType:2];
    v11 = [v3 handleEvent:v10];
  }
}

- (void)playBorderHitSoundForBrailleDisplay:(id)a3
{
  v3 = [(SCROBrailleDisplayManager *)self delegate];
  [v3 handlePlayBorderHitSound];
}

- (void)playCommandNotSupportedSoundForBrailleDisplay:(id)a3
{
  v3 = [(SCROBrailleDisplayManager *)self delegate];
  [v3 handlePlayCommandNotSupportedSound];
}

- (void)handlePlanarPanFailedIsLeft:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__SCROBrailleDisplayManager_handlePlanarPanFailedIsLeft___block_invoke;
  v3[3] = &unk_279B73E38;
  v3[4] = self;
  v4 = a3;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __57__SCROBrailleDisplayManager_handlePlanarPanFailedIsLeft___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained handlePlanarPanFailedIsLeft:*(a1 + 40)];
}

- (void)loadBLEDriverWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SCROBrailleDisplayAutoDetector sharedDetector];
  [v4 addAutodetectBLEIdentifier:v3];
}

- (void)_loadStealthDisplay
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SCROBrailleDisplayManager__loadStealthDisplay__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

void __48__SCROBrailleDisplayManager__loadStealthDisplay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _eventQueue_loadStealthDisplay];
  v2 = *(a1 + 32);
  v3 = +[SCROVirtualBrailleDisplay systemDisplay];
  [*(a1 + 32) setSystemVirtualDisplayToken:{objc_msgSend(v2, "_eventQueue_loadVirtualDisplay:", v3)}];
}

- (void)_unloadStealthDisplay
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SCROBrailleDisplayManager__unloadStealthDisplay__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_loadStealthDisplay
{
  dispatch_assert_queue_V2(self->_eventQueue);
  if (!self->_stealthBrailleDisplay && self->_isValid)
  {
    v3 = [SCROStealthBrailleDisplay displayWithDelegate:self];
    if (v3)
    {
      obj = v3;
      [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue addDisplay:v3 withState:4];
      objc_storeStrong(&self->_stealthBrailleDisplay, obj);
    }

    MEMORY[0x2821F9730]();
  }
}

- (void)_eventQueue_unloadStealthDisplay
{
  dispatch_assert_queue_V2(self->_eventQueue);
  [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue removeDisplay:self->_stealthBrailleDisplay];
  stealthBrailleDisplay = self->_stealthBrailleDisplay;
  self->_stealthBrailleDisplay = 0;
}

- (unint64_t)loadVirtualDisplayWithMainSize:(int64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SCROBrailleDisplayManager_loadVirtualDisplayWithMainSize___block_invoke;
  block[3] = &unk_279B74218;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(eventQueue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __60__SCROBrailleDisplayManager_loadVirtualDisplayWithMainSize___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = [[SCROVirtualBrailleDisplay alloc] initWithMainSize:a1[6]];
  *(*(a1[5] + 8) + 24) = [v2 _eventQueue_loadVirtualDisplay:v3];
}

- (unint64_t)_eventQueue_loadVirtualDisplay:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 _delayedDisplayLoad];
  [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue addDisplay:v4 withState:4];
  virtualDisplays = self->_virtualDisplays;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_eventQueue_loadVirtualDisplay__token];
  [(NSMutableDictionary *)virtualDisplays setObject:v4 forKey:v6];

  v7 = _SCROD_LOG();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "mainSize")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_eventQueue_loadVirtualDisplay__token];
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Virtual display with %@ main cells loaded. Token: %@", &v13, 0x16u);
  }

  v10 = _eventQueue_loadVirtualDisplay__token++;
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)unloadVirtualDisplay:(unint64_t)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SCROBrailleDisplayManager_unloadVirtualDisplay___block_invoke;
  v4[3] = &unk_279B74240;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(eventQueue, v4);
}

- (void)_eventQueue_unloadVirtualDisplay:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  virtualDisplays = self->_virtualDisplays;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)virtualDisplays objectForKey:v6];

  if (v7)
  {
    [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue removeDisplay:v7];
    v8 = self->_virtualDisplays;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];

    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v14 = 138412290;
      v15 = v11;
      v12 = "Virtual display with token %@ unloaded.";
LABEL_6:
      _os_log_impl(&dword_26490B000, v10, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
    }
  }

  else
  {
    v10 = _SCROD_LOG();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v14 = 138412290;
      v15 = v11;
      v12 = "Virtual display with token %@ not found.";
      goto LABEL_6;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)mainCellsForVirtualDisplay:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SCROBrailleDisplayManager_mainCellsForVirtualDisplay___block_invoke;
  block[3] = &unk_279B74218;
  block[4] = self;
  block[5] = &v7;
  block[6] = a3;
  dispatch_sync(eventQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __56__SCROBrailleDisplayManager_mainCellsForVirtualDisplay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventQueue_mainCellsForVirtualDisplay:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (id)_eventQueue_mainCellsForVirtualDisplay:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  virtualDisplays = self->_virtualDisplays;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)virtualDisplays objectForKey:v5];

  if (v6)
  {
    v7 = [v6 mainCells];
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Virtual display with token %@ is displaying %@", &v13, 0x16u);
    }
  }

  else
  {
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v13 = 138412290;
      v14 = v10;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Virtual display with token %@ not found.", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)virtualDisplay:(unint64_t)a3 pressButton:(unint64_t)a4
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SCROBrailleDisplayManager_virtualDisplay_pressButton___block_invoke;
  block[3] = &unk_279B74268;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(eventQueue, block);
}

- (void)_eventQueue_virtualDisplay:(unint64_t)a3 pressButton:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  virtualDisplays = self->_virtualDisplays;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = [(NSMutableDictionary *)virtualDisplays objectForKey:v7];

  if (v8)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        [v8 pressPrevious];
        v9 = _SCROD_LOG();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          v13 = 138412290;
          v14 = v10;
          v11 = "Virtual display with token %@: previous pressed.";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (a4 == 3)
      {
        [v8 pressNext];
        v9 = _SCROD_LOG();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          v13 = 138412290;
          v14 = v10;
          v11 = "Virtual display with token %@: next pressed.";
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (!a4)
      {
        [v8 pressPanLeft];
        v9 = _SCROD_LOG();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          v13 = 138412290;
          v14 = v10;
          v11 = "Virtual display with token %@: pan left pressed.";
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      if (a4 == 1)
      {
        [v8 pressPanRight];
        v9 = _SCROD_LOG();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          v13 = 138412290;
          v14 = v10;
          v11 = "Virtual display with token %@: pan right pressed.";
LABEL_19:
          _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);

          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    v9 = _SCROD_LOG();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v13 = 138412290;
      v14 = v10;
      v11 = "Undefined button number: %@";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v9 = _SCROD_LOG();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v13 = 138412290;
    v14 = v10;
    v11 = "Virtual display with token %@ not found.";
    goto LABEL_19;
  }

LABEL_20:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)virtualDisplay:(unint64_t)a3 pressKeyChord:(unint64_t)a4
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SCROBrailleDisplayManager_virtualDisplay_pressKeyChord___block_invoke;
  block[3] = &unk_279B74268;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_sync(eventQueue, block);
}

- (void)systemVirtualDisplayPressKeyChord:(unint64_t)a3
{
  v5 = [(SCROBrailleDisplayManager *)self systemVirtualDisplayToken];

  [(SCROBrailleDisplayManager *)self virtualDisplay:v5 pressKeyChord:a3];
}

- (void)_eventQueue_virtualDisplay:(unint64_t)a3 pressKeyChord:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  virtualDisplays = self->_virtualDisplays;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = [(NSMutableDictionary *)virtualDisplays objectForKey:v7];

  v9 = _SCROD_LOG();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Virtual display with token %@: keychord %@ pressed.", &v15, 0x16u);
    }

    [v8 pressKeyChord:a4];
  }

  else
  {
    if (v10)
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Virtual display with token %@ not found.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)virtualDisplay:(unint64_t)a3 pressRouterWithIndex:(unint64_t)a4 withSpace:(BOOL)a5
{
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__SCROBrailleDisplayManager_virtualDisplay_pressRouterWithIndex_withSpace___block_invoke;
  v6[3] = &unk_279B74290;
  v6[4] = self;
  v6[5] = a3;
  v6[6] = a4;
  v7 = a5;
  dispatch_sync(eventQueue, v6);
}

- (void)processBrailleUICommand:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__SCROBrailleDisplayManager_processBrailleUICommand___block_invoke;
  v10 = &unk_279B74088;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_sync(eventQueue, &v7);
  [(SCROBrailleDisplayManager *)self brailleDisplayHadUserInteraction:0, v7, v8, v9, v10, v11];
}

- (id)driverConfiguration
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SCROBrailleDisplayManager_driverConfiguration__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__SCROBrailleDisplayManager_driverConfiguration__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _eventQueue_driverConfiguration];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_eventQueue_driverConfiguration
{
  v65 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_eventQueue);
  displayConfigurationDict = self->_displayConfigurationDict;
  if (displayConfigurationDict)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], displayConfigurationDict);
    if (Copy)
    {
      v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
      v6 = [v5 mutableCopy];

      v7 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activePendingDisplays];
      v8 = [v7 copy];

      v9 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue sleepingDisplays];
      v10 = [v9 copy];

      v11 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue disconnectedDisplays];
      v12 = [v11 copy];

      v13 = self->_stealthBrailleDisplay;
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    Copy = 0;
  }

  v13 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v14 = 1;
LABEL_6:
  v15 = _SCROD_LOG();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v62 = v6;
    v63 = 2114;
    v64 = v8;
    _os_log_impl(&dword_26490B000, v15, OS_LOG_TYPE_DEFAULT, "active: %{public}@ pending %{public}@", buf, 0x16u);
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v40 = v10;
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:CFDictionaryGetCount(Copy)];
    [v6 removeObject:v13];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v53 objects:v60 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v54;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(v17);
          }

          _addDisplayConfigurationToList(*(*(&v53 + 1) + 8 * i), v16, Copy, 1);
        }

        v19 = [v17 countByEnumeratingWithState:&v53 objects:v60 count:16];
      }

      while (v19);
    }

    if ([v16 count])
    {
      v22 = [v16 objectAtIndex:0];
      [v22 setObject:MEMORY[0x277CBEC38] forKey:kSCROBrailleDisplayIsPrimary[0]];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v23 = v8;
    v24 = [v23 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v50;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(v23);
          }

          _addDisplayConfigurationToList(*(*(&v49 + 1) + 8 * j), v16, Copy, 2);
        }

        v25 = [v23 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v25);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = v40;
    v29 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v46;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v28);
          }

          _addDisplayConfigurationToList(*(*(&v45 + 1) + 8 * k), v16, Copy, 3);
        }

        v30 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v30);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = v12;
    v34 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v42;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(v33);
          }

          _addDisplayConfigurationToList(*(*(&v41 + 1) + 8 * m), v16, Copy, 0);
        }

        v35 = [v33 countByEnumeratingWithState:&v41 objects:v57 count:16];
      }

      while (v35);
    }

    CFRelease(Copy);
    v10 = v40;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_blankOutDisplaysInQueue:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[SCROBrailleFormatter alloc] initWithOutputTableIdentifier:self->_outputTableIdentifier inputTableIdentifier:self->_inputTableIdentifier showDotsSevenAndEight:1];
  v6 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setBrailleFormatter:{v5, v14}];
        [v12 setAggregatedStatus:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConfigured
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCROBrailleDisplayManager_isConfigured__block_invoke;
  block[3] = &unk_279B742B8;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v12;
  dispatch_sync(eventQueue, block);
  v4 = v9[3];
  if (*(v13 + 24) == 1)
  {
    v9[3] = --v4;
  }

  v5 = v4 > 0;
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __41__SCROBrailleDisplayManager_isConfigured__block_invoke(void *a1)
{
  result = [*(a1[4] + 16) displayCountIncludingDisconnectedDisplays:0];
  *(*(a1[5] + 8) + 24) = result;
  *(*(a1[6] + 8) + 24) = *(a1[4] + 32) != 0;
  return result;
}

- (BOOL)hasActiveUserDisplays
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SCROBrailleDisplayManager_hasActiveUserDisplays__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __50__SCROBrailleDisplayManager_hasActiveUserDisplays__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _eventQueue_hasActiveUserDisplays];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_eventQueue_hasActiveUserDisplays
{
  dispatch_assert_queue_V2(self->_eventQueue);
  v3 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v4 = [v3 count];

  return v4 - ([(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue stateForDisplay:self->_stealthBrailleDisplay]== 1) > 1;
}

- (void)setPrimaryBrailleDisplay:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SCROBrailleDisplayManager_setPrimaryBrailleDisplay___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)setDisplayInputAccessMode:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SCROBrailleDisplayManager_setDisplayInputAccessMode___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (int)displayInputAccessMode
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SCROBrailleDisplayManager_displayInputAccessMode__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_eventQueue_setDisplayInputAccessMode:(int)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  self->_inputAccessMode = a3;
  v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v11 = [v5 copy];

  v6 = [v11 count];
  if (v6)
  {
    v7 = v6;
    v8 = [v11 objectAtIndex:0];
    [v8 setInputAllowed:a3 < 2];

    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        v10 = [v11 objectAtIndex:i];
        [v10 setInputAllowed:a3 == 1];
      }
    }
  }
}

- (void)setMainAttributedString:(id)a3 forceUpdate:(BOOL)a4
{
  v6 = a3;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SCROBrailleDisplayManager_setMainAttributedString_forceUpdate___block_invoke;
  block[3] = &unk_279B740D8;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(eventQueue, block);
}

void __65__SCROBrailleDisplayManager_setMainAttributedString_forceUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _eventQueue_setMainAttributedString:*(a1 + 40) shouldDisplay:1 forceUpdate:*(a1 + 48)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SCROBrailleDisplayManager_setMainAttributedString_forceUpdate___block_invoke_2;
  block[3] = &unk_279B740D8;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__SCROBrailleDisplayManager_setMainAttributedString_forceUpdate___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) eventHandled];

  if (v2)
  {
    v6 = [*(a1 + 32) eventHandled];
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
    v5 = [SCROBrailleEvent eventWithType:0 data:v3 data2:v4 data3:0];
    v6[2](v6, v5);
  }
}

- (id)mainAttributedString
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__SCROBrailleDisplayManager_mainAttributedString__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __49__SCROBrailleDisplayManager_mainAttributedString__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventQueue_mainAttributedString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (id)_eventQueue_mainAttributedString
{
  v2 = [(NSAttributedString *)self->_mainString copy];

  return v2;
}

- (void)_eventQueue_setMainAttributedString:(id)a3 shouldDisplay:(BOOL)a4 forceUpdate:(BOOL)a5
{
  v5 = a4;
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  if ([v8 length] && !-[SCROBrailleDisplayManager _isBrailleUIActive](self, "_isBrailleUIActive"))
  {
    v9 = [[SCROBrailleFormatter alloc] initWithOutputTableIdentifier:self->_outputTableIdentifier inputTableIdentifier:self->_inputTableIdentifier showDotsSevenAndEight:self->_showDotsSevenAndEight];
    v10 = [v8 attribute:kSCROLineFocusAttribute[0] atIndex:0 effectiveRange:0];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 unsignedIntegerValue];
    }

    else
    {
      v12 = 0;
    }

    [(SCROBrailleFormatter *)v9 setLineFocus:v12];
    v56[0] = 0;
    v56[1] = 0;
    v13 = [(NSMutableArray *)self->_displayModeStack lastObject];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 intValue];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v8 getRange:v56 ofAttribute:kSCROTokenAttribute[0]];
    v55[0] = 0;
    v55[1] = 0;
    [v8 getRange:v55 ofAttribute:kSCROTerminalOutputAttribute[0]];
    v54[0] = 0;
    v54[1] = 0;
    v17 = [v8 getRange:v54 ofAttribute:kSCROTokenSecureAttribute[0]];
    if (v16)
    {
      if (!v15 || v15 == 5 || v15 == 1 && [(NSMutableArray *)self->_displayModeStack count]== 1 && self->_alertPriority > 5u)
      {
        v50 = v5;
        objc_storeStrong(&self->_mainString, a3);
        [(SCROBrailleDisplayManager *)self _eventQueue_stopAlertTimer];
        objc_storeStrong(&self->_lineString, self->_mainString);
        if (v15)
        {
          [(SCROBrailleDisplayManager *)self _eventQueue_doSetDisplayMode:0];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
        }

        else
        {
          WeakRetained = 0;
        }

        v36 = 0;
LABEL_39:
        v37 = [v8 attribute:kSCROBrailleOffsetAttribute[0] atIndex:0 effectiveRange:0];
        v38 = [v37 integerValue];

        v39 = [v8 string];
        [(SCROBrailleFormatter *)v9 setBrailleLineOffset:v39 stringLineOffset:v38];

        v40 = _SCROD_LOG();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v58 = v38;
          _os_log_impl(&dword_26490B000, v40, OS_LOG_TYPE_INFO, "Setting line offset: %d", buf, 8u);
        }

        [(SCROBrailleFormatter *)v9 setCurrentUnread:0];
        [(SCROBrailleFormatter *)v9 setAnyUnread:[(SCROBrailleDisplayHistory *)self->_history hasUnread]];
        v21 = v36;
        [(SCROBrailleFormatter *)v9 setDisplayMode:v36];
        [(SCROBrailleFormatter *)v9 setIsTokenSecure:v17];
        v41 = [v8 attribute:kSCROAppTokenAttribute[0] atIndex:0 effectiveRange:0];
        [(SCROBrailleFormatter *)v9 setAppToken:v41];
        [(SCROBrailleDisplayManager *)self tokenizeString:v8 intoFormatter:v9 selection:v56];

        if (v16)
        {
          if (!v50)
          {
            goto LABEL_54;
          }

LABEL_53:
          v45 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
          v46 = [v45 copy];

          [v46 makeObjectsPerformSelector:sel_setBrailleFormatter_ withObject:v9];
          [(SCROBrailleDisplayManager *)self _eventQueue_setBrailleFormatter:v9];

          goto LABEL_54;
        }

        [(SCROBrailleDisplayManager *)self _eventQueue_resetAlertTimer];
        if (v50)
        {
          goto LABEL_53;
        }

LABEL_54:
        if (WeakRetained)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __91__SCROBrailleDisplayManager__eventQueue_setMainAttributedString_shouldDisplay_forceUpdate___block_invoke;
          block[3] = &unk_279B742E0;
          v52 = WeakRetained;
          v53 = v21;
          v11 = WeakRetained;
          dispatch_async(MEMORY[0x277D85CD0], block);

          goto LABEL_56;
        }

LABEL_57:

        goto LABEL_58;
      }

      objc_storeStrong(&self->_lineString, a3);
      goto LABEL_25;
    }

    if ([v8 getRange:v56 ofAttribute:kSCROAlertAttribute[0]])
    {
      objc_storeStrong(&self->_mainString, a3);
      if (v15 == 1)
      {
        WeakRetained = 0;
      }

      else
      {
        [(SCROBrailleDisplayManager *)self _eventQueue_doSetDisplayMode:1];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      [(SCROBrailleDisplayHistory *)self->_history addString:v8];
      v26 = [v8 attribute:kSCROAlertTimeoutAttribute[0] atIndex:0 effectiveRange:0];
      [v26 doubleValue];
      v28 = v27;

      v29 = 0.0;
      if (v28 >= 0.0)
      {
        v29 = v28;
      }

      self->_alertTimeout = fmin(v29, 60.0);
      v30 = [v8 attribute:kSCROAlertPriorityAttribute[0] atIndex:0 effectiveRange:0];
      v31 = v30;
      v50 = v5;
      if (v30)
      {
        v32 = [v30 intValue];
      }

      else
      {
        v32 = 5;
      }

      self->_alertPriority = v32;

      v36 = 1;
      goto LABEL_39;
    }

    if (SCROBrailleDisplayHistoryIsHistoryString(v8))
    {
      if (v15 != 2)
      {
LABEL_25:
        v25 = 0;
LABEL_26:

        v9 = v25;
LABEL_56:

        goto LABEL_57;
      }

      [(SCROBrailleDisplayManagerStatus *)self->_status setCurrentAnnouncementUnread:SCROBrailleDisplayHistoryIsStringUnread(v8)];
      [(SCROBrailleDisplayManagerStatus *)self->_status setAnyUnreadAnnouncements:[(SCROBrailleDisplayHistory *)self->_history hasUnread]];
      objc_storeStrong(&self->_mainString, a3);
      [(SCROBrailleFormatter *)v9 setCurrentUnread:[(SCROBrailleDisplayManagerStatus *)self->_status currentAnnouncementUnread]];
      v19 = [(SCROBrailleDisplayManagerStatus *)self->_status anyUnreadAnnouncements];
      v20 = v9;
    }

    else
    {
      v33 = [v8 attribute:kSCROStatusAttribute[0] atIndex:0 effectiveRange:0];

      if (v33)
      {
        v34 = [(SCROBrailleFormatter *)self->_currentBrailleFormatter currentUnread];
        v35 = [(SCROBrailleFormatter *)self->_currentBrailleFormatter anyUnread];
        if (v15 == 3)
        {
          WeakRetained = 0;
        }

        else
        {
          [(SCROBrailleDisplayManager *)self _eventQueue_doSetDisplayMode:3];
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
        }

        objc_storeStrong(&self->_mainString, a3);
        objc_storeStrong(&self->_statusString, self->_mainString);
        [(SCROBrailleFormatter *)v9 setCurrentUnread:v34];
        [(SCROBrailleFormatter *)v9 setAnyUnread:v35];
        v21 = 3;
        [(SCROBrailleFormatter *)v9 setDisplayMode:3];
        [(SCROBrailleFormatter *)v9 setStatusText:self->_mainString];

        if (v5)
        {
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      v42 = [(SCROBrailleDisplayHistory *)self->_history isOnMostRecent];
      [(SCROBrailleDisplayHistory *)self->_history addString:v8];
      if (!v42 && v15 == 2)
      {
        v43 = [(SCROBrailleFormatter *)self->_currentBrailleFormatter currentUnread];
        [(SCROBrailleFormatter *)v9 setAnyUnread:1];
        [(SCROBrailleFormatter *)v9 setCurrentUnread:v43];
        v21 = 2;
        [(SCROBrailleFormatter *)v9 setDisplayMode:2];
        v24 = [(SCROBrailleDisplayHistory *)self->_history currentString];
        v44 = [v24 string];
        [(SCROBrailleFormatter *)v9 addText:v44 selection:0 token:0 focus:0 isEditableText:0];

        goto LABEL_49;
      }

      if (v15 != 2)
      {
        [(SCROBrailleFormatter *)self->_currentBrailleFormatter setAnyUnread:1];
        v25 = self->_currentBrailleFormatter;
        goto LABEL_26;
      }

      [(SCROBrailleDisplayHistory *)self->_history moveToMostRecent];
      v48 = [(SCROBrailleDisplayHistory *)self->_history currentString];
      mainString = self->_mainString;
      self->_mainString = v48;

      [(SCROBrailleFormatter *)v9 setCurrentUnread:1];
      v20 = v9;
      v19 = 1;
    }

    [(SCROBrailleFormatter *)v20 setAnyUnread:v19];
    v21 = 2;
    [(SCROBrailleFormatter *)v9 setDisplayMode:2];
    v22 = [(NSAttributedString *)self->_mainString attribute:kSCROTechnicalContextAttribute[0] atIndex:0 effectiveRange:0];
    v23 = [v22 BOOLValue];

    v24 = [(NSAttributedString *)self->_mainString string];
    [(SCROBrailleFormatter *)v9 addText:v24 selection:0 token:0 focus:0 technical:v23 isEditableText:0];
LABEL_49:

    if (!v5)
    {
      goto LABEL_57;
    }

    WeakRetained = 0;
    goto LABEL_53;
  }

LABEL_58:

  v47 = *MEMORY[0x277D85DE8];
}

void __91__SCROBrailleDisplayManager__eventQueue_setMainAttributedString_shouldDisplay_forceUpdate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  [v1 handleDisplayModeChanged:v2];
}

- (void)_eventQueue_setBrailleFormatter:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_currentBrailleFormatter, a3);
  v5 = [MEMORY[0x277CF3318] sharedModel];
  [v5 setTechnicalMode:{objc_msgSend(v14, "needsTechnicalMode")}];

  v6 = [MEMORY[0x277CF3318] sharedModel];
  [v6 setIsShowingSecureToken:{objc_msgSend(v14, "isTokenSecure")}];

  LODWORD(self) = [v14 displayMode];
  v7 = [v14 displayMode];
  if (self == 2 || (v8 = v7, v9 = [v14 displayMode], v8 == 1))
  {
    v10 = [MEMORY[0x277CF3318] sharedModel];
    v11 = [v14 editString];
    [v10 setAlert:v11];
  }

  else
  {
    v12 = v9;
    v13 = [MEMORY[0x277CF3318] sharedModel];
    [v13 setEditable:{objc_msgSend(v14, "isEditableText")}];

    v10 = [MEMORY[0x277CF3318] sharedModel];
    v11 = [v14 editString];
    if (v12 == 5)
    {
      [v10 setTerminalOutput:v11];
    }

    else
    {
      [v10 setScript:v11];
    }
  }
}

- (void)startBrailleUI:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SCROBrailleDisplayManager_startBrailleUI___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_startBrailleUI:(id)a3
{
  v4 = a3;
  if ([(SCROBrailleDisplayManager *)self _eventQueue_hasActiveUserDisplays])
  {
    *buf = 0;
    v30 = buf;
    v31 = 0x2020000000;
    v32 = 0;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __56__SCROBrailleDisplayManager__eventQueue_startBrailleUI___block_invoke;
    v28[3] = &unk_279B74308;
    v28[4] = buf;
    [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v28];
    if (*(v30 + 3) <= 0)
    {
      v6 = _SCROD_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v7 = "No active device has a display with nonzero size";
        goto LABEL_21;
      }

LABEL_42:

      _Block_object_dispose(buf, 8);
      goto LABEL_43;
    }

    if ([(SCROBrailleDisplayManager *)self _isBrailleUIActive])
    {
      v5 = [v4 objectForKeyedSubscript:kSCROBrailleUIInitOpenInAppKey[0]];

      if (!v5)
      {
        v6 = _SCROD_LOG();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          v7 = "Braille UI is already active and no app is specifiedx; not starting Braille UI";
          goto LABEL_21;
        }

        goto LABEL_42;
      }
    }

    if (MKBGetDeviceLockState() == 1)
    {
      v6 = _SCROD_LOG();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        v7 = "Device is locked; not starting Braille UI";
LABEL_21:
        _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, v7, v27, 2u);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v9 = _SCROD_LOG();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Starting Braille UI", v27, 2u);
    }

    v6 = [v4 objectForKeyedSubscript:kSCROBrailleUIInitPasteBoardContentKey[0]];
    if ([v6 length])
    {
      v10 = +[SCROBrailleUIPasteBoard sharedBoard];
      [v10 writeText:v6];
    }

    v11 = [v4 objectForKeyedSubscript:kSCROBrailleUIInitOpenInAppKey[0]];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 integerValue];
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v14 = [v4 objectForKeyedSubscript:kSCROBrailleUIInitFilePathKey[0]];
    if ([v14 length])
    {
      if (+[SCROBrailleUIApp isHidingViews])
      {
        +[SCROBrailleUIApp closeAllApps];
      }

      v24 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
    }

    else
    {
      v24 = 0;
    }

    v15 = *(v30 + 3);
    v16 = +[SCROBrailleUISettingsManager sharedInstance];
    [v16 setBrfReflowSize:v15];

    wordWrapEnabled = self->_wordWrapEnabled;
    v18 = +[SCROBrailleUISettingsManager sharedInstance];
    [v18 setIsBRFWordWrapEnabled:wordWrapEnabled];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SCROBrailleDisplayManager__eventQueue_startBrailleUI___block_invoke_189;
    block[3] = &unk_279B73DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v25)
      {
        v19 = [[SCROBrailleUIFinderApp alloc] initWithDelegate:self];
        [(SCROBrailleUIFinderApp *)v19 openWithURL:v25];
      }

      else
      {
        if (+[SCROBrailleUIApp isHidingViews])
        {
          +[SCROBrailleUIApp showViews];
LABEL_41:
          v22 = [(SCROBrailleDisplayManager *)self brailleUIVisualManager];
          [v22 updateEnabledStatus];

          v23 = [(SCROBrailleDisplayManager *)self brailleUIVisualManager];
          [v23 startVisualSession];

          goto LABEL_42;
        }

        v19 = [(SCROBrailleUIApp *)[SCROBrailleUIMainApp alloc] initWithDelegate:self];
        [(SCROBrailleUIFinderApp *)v19 open];
      }
    }

    else
    {
      if (+[SCROBrailleUIApp isHidingViews])
      {
        +[SCROBrailleUIApp showViews];
      }

      if ([(SCROBrailleDisplayManager *)self _isBrailleUIActive])
      {
        +[SCROBrailleUIApp closeAllAppsExceptTheLowerMostView];
        v20 = [(SCROBrailleDisplayManager *)self brailleUIVisualManager];
        [v20 cancelVisualSession];

        v21 = +[SCROBrailleUIApp allApps];
        v19 = [v21 lastObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SCROBrailleUIFinderApp *)v19 navigateToMenuItem:v13];
        }
      }

      else
      {
        v19 = [(SCROBrailleUIApp *)[SCROBrailleUIMainApp alloc] initWithDelegate:self];
        [(SCROBrailleUIFinderApp *)v19 open];
        [(SCROBrailleUIFinderApp *)v19 navigateToMenuItem:v13];
      }
    }

    goto LABEL_41;
  }

  v8 = _SCROD_LOG();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "No active user display detected; not starting Braille UI", buf, 2u);
  }

LABEL_43:
}

void __56__SCROBrailleDisplayManager__eventQueue_startBrailleUI___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 token];
  if (v3 != kSCROSystemVirtualBrailleDisplayToken)
  {
    v4 = [v7 mainSize];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 24);
    if (v4 > v6)
    {
      v6 = v4;
    }

    *(v5 + 24) = v6;
  }
}

void __56__SCROBrailleDisplayManager__eventQueue_startBrailleUI___block_invoke_189(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained handleDidBrailleUIStart];
}

- (void)endBrailleUI:(id)a3
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SCROBrailleDisplayManager_endBrailleUI___block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (BOOL)isBrailleUIActive
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = self->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SCROBrailleDisplayManager_isBrailleUIActive__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__SCROBrailleDisplayManager_isBrailleUIActive__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isBrailleUIActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_isBrailleUIActive
{
  if (+[SCROBrailleUIApp isHidingViews])
  {
    return 0;
  }

  v3 = +[SCROBrailleUIApp allApps];
  if ([v3 count])
  {
    v2 = 1;
  }

  else
  {
    v4 = +[SCROBrailleUIView visibleView];
    v2 = v4 != 0;
  }

  return v2;
}

- (id)_brailleUIFirstResponder
{
  if ([(SCROBrailleDisplayManager *)self _isBrailleUIActive])
  {
    v2 = +[SCROBrailleUIView visibleView];
    v3 = [SCROBrailleUIApp appForView:v2];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v6 = +[SCROBrailleUIApp allApps];
      if ([v6 count])
      {
        v5 = [v6 firstObject];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleBrailleUIRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey[0]];
  v6 = [v5 integerValue];

  if (v6 == 8)
  {
    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SCROBrailleDisplayManager_handleBrailleUIRequest___block_invoke;
    block[3] = &unk_279B73DD0;
    block[4] = self;
    dispatch_async(eventQueue, block);
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SCROBrailleDisplayManager_handleBrailleUIRequest___block_invoke_2;
    v8[3] = &unk_279B74088;
    v9 = v4;
    v10 = self;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __52__SCROBrailleDisplayManager_handleBrailleUIRequest___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _brailleUIFirstResponder];
  [v1 lazyLoad];
}

void __52__SCROBrailleDisplayManager_handleBrailleUIRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey[0]];
  v3 = [v2 integerValue];

  if (v3 == 1)
  {
    v4 = [*(a1 + 40) brailleUIVisualManager];
    [v4 cancelVisualSession];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
  [WeakRetained handleBrailleUIRequest:*(a1 + 32)];
}

- (void)handleDidBrailleUIEnd
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SCROBrailleDisplayManager_handleDidBrailleUIEnd__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__SCROBrailleDisplayManager_handleDidBrailleUIEnd__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _eventQueue_migratePasteBoardContentToSystem];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained handleDidBrailleUIEnd];
}

- (void)_eventQueue_migratePasteBoardContentToSystem
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = +[SCROBrailleUIPasteBoard sharedBoard];
  v4 = [v3 text];

  if ([v4 length])
  {
    v9[0] = kSCROBrailleUIRequestTypeKey[0];
    v9[1] = kSCROBrailleUIRequestTextToWriteToPasteBoardKey[0];
    v10[0] = &unk_287651B90;
    v10[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained handleBrailleUIRequest:v5];

    v7 = +[SCROBrailleUIPasteBoard sharedBoard];
    [v7 reset];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleBrailleUIResponse:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SCROBrailleDisplayManager_handleBrailleUIResponse_forRequest___block_invoke;
  block[3] = &unk_279B73FB0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_handleBrailleUIResponse:(id)a3 forRequest:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(SCROBrailleDisplayManager *)self _isBrailleUIActive])
  {
    v8 = [v7 objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey[0]];
    v9 = [v8 unsignedIntegerValue];

    if (v9)
    {
      goto LABEL_14;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
    {
      v17 = kSCROBrailleUIInitPasteBoardContentKey[0];
      v18[0] = v6;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v10 = MEMORY[0x277CBEC10];
    }

    [(SCROBrailleDisplayManager *)self _eventQueue_startBrailleUI:v10];
  }

  v11 = [v7 objectForKeyedSubscript:kSCROBrailleUIRequestTypeKey[0]];
  v12 = [v11 unsignedIntegerValue];

  if (v12 == 7)
  {
    v13 = [v6 BOOLValue];
    v14 = [(SCROBrailleDisplayManager *)self brailleUIVisualManager];
    v15 = v14;
    if (v13)
    {
      [v14 showVisual];
    }

    else
    {
      [v14 hideVisual];
    }
  }

  else
  {
    v15 = [(SCROBrailleDisplayManager *)self _brailleUIFirstResponder];
    [v15 handleResponse:v6 forRequest:v7];
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_eventQueue_handleBrailleUIKeyPress:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v5 = +[SCROMobileBrailleDisplayInputManager sharedManager];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 commandForBrailleKey:{*(*(&v16 + 1) + 8 * i), v16}];
        v12 = [(SCROBrailleDisplayManager *)self _eventQueue_handleBrailleUICommand:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_eventQueue_handleBrailleUICommand:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SCROBrailleDisplayManager *)self _isBrailleUIActive];
  v6 = [(SCROBrailleDisplayManager *)self brailleUIKeyCommandAdapter];
  v7 = [v6 isBrailleUIStartCommand:v4];
  v8 = v7;
  if (!v5)
  {
    if (v7)
    {
      v10 = SCROBrailleUIEnabled();

      if (v10)
      {
        v25 = kSCROBrailleUIRequestTypeKey[0];
        v26[0] = &unk_287651BA8;
        v9 = 1;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        [(SCROBrailleDisplayManager *)self handleBrailleUIRequest:v11];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v9 = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    v12 = [(SCROBrailleDisplayManager *)self brailleUIKeyCommandAdapter];
    v13 = [v12 isBrailleUIDeleteCommand:v4];

    if (v13)
    {
      v14 = [MEMORY[0x277CF3318] sharedModel];
      v15 = [v14 handleDelete];

      if (v15)
      {
        goto LABEL_4;
      }
    }

    v16 = [(SCROBrailleDisplayManager *)self brailleUIKeyCommandAdapter];
    v17 = [v16 isBrailleUIReturnCommand:v4];

    if (v17)
    {
      v18 = [MEMORY[0x277CF3318] sharedModel];
      v19 = [v18 handleReturn];

      if (v19)
      {
        goto LABEL_4;
      }
    }

    v11 = [(SCROBrailleUIKeyCommandAdapter *)self->_brailleUIKeyCommandAdapter eventForCommand:v4];
    v9 = v11 != 0;
    if (v11)
    {
      v20 = +[SCROBrailleUIView visibleView];
      v21 = [v20 handleEvent:v11];

      v22 = [(SCROBrailleDisplayManager *)self _brailleUIFirstResponder];
      [v22 handleAction:v21];
    }

LABEL_14:

    goto LABEL_17;
  }

  [(SCROBrailleDisplayManager *)self _eventQueue_endBrailleUI];
LABEL_4:
  v9 = 1;
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)endBrailleUI
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCROBrailleDisplayManager_endBrailleUI__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_endBrailleUI
{
  v3 = [(SCROBrailleDisplayManager *)self _isBrailleUIActive];
  v4 = _SCROD_LOG();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_26490B000, v4, OS_LOG_TYPE_DEFAULT, "Ending Braille UI", v9, 2u);
    }

    v6 = [SCROBrailleUIAction alloc];
    v7 = +[SCROBrailleUIView visibleView];
    v4 = [(SCROBrailleUIAction *)v6 initWithType:3 originator:v7];

    v8 = [(SCROBrailleDisplayManager *)self _brailleUIFirstResponder];
    [v8 handleAction:v4];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_26490B000, v4, OS_LOG_TYPE_DEFAULT, "Braille UI is not active; not ending Braille UI", buf, 2u);
  }
}

- (void)screenLockStateChanged:(BOOL)a3
{
  if (MKBGetDeviceLockState() == 1)
  {

    [(SCROBrailleDisplayManager *)self endBrailleUI];
  }
}

- (void)setAggregatedStatus:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SCROBrailleDisplayManager_setAggregatedStatus___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (id)aggregatedStatus
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SCROBrailleDisplayManager_aggregatedStatus__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__SCROBrailleDisplayManager_aggregatedStatus__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 200) aggregatedData];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_eventQueue_setAggregatedStatus:(id)a3
{
  eventQueue = self->_eventQueue;
  v5 = a3;
  dispatch_assert_queue_V2(eventQueue);
  [(SCROBrailleDisplayManagerStatus *)self->_status setAggregatedData:v5];
  v6 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
  v7 = [v6 copy];

  [v7 makeObjectsPerformSelector:sel_setAggregatedStatus_ withObject:v5];
}

- (void)setMasterStatusCellIndex:(int64_t)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SCROBrailleDisplayManager_setMasterStatusCellIndex___block_invoke;
  v4[3] = &unk_279B74240;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(eventQueue, v4);
}

- (int64_t)masterStatusCellIndex
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SCROBrailleDisplayManager_masterStatusCellIndex__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __50__SCROBrailleDisplayManager_masterStatusCellIndex__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) masterStatusCellIndex];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_eventQueue_setMasterStatusCellIndex:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  [(SCROBrailleDisplayManagerStatus *)self->_status setMasterStatusCellIndex:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SCROBrailleDisplayManager__eventQueue_setMasterStatusCellIndex___block_invoke;
  v5[3] = &__block_descriptor_40_e28_v16__0__SCROBrailleDisplay_8l;
  v5[4] = a3;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)setVirtualStatusAlignment:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SCROBrailleDisplayManager_setVirtualStatusAlignment___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (int)virtualStatusAlignment
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SCROBrailleDisplayManager_virtualStatusAlignment__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __51__SCROBrailleDisplayManager_virtualStatusAlignment__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 200) virtualAlignment];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)panDisplayLeft:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SCROBrailleDisplayManager_panDisplayLeft___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)panDisplayRight:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__SCROBrailleDisplayManager_panDisplayRight___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)panDisplayBeginning:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__SCROBrailleDisplayManager_panDisplayBeginning___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)panDisplayEnd:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__SCROBrailleDisplayManager_panDisplayEnd___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)planarPanDisplayLeft:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__SCROBrailleDisplayManager_planarPanDisplayLeft___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)planarPanDisplayRight:(int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SCROBrailleDisplayManager_planarPanDisplayRight___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)setUIDisplayMode
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SCROBrailleDisplayManager_setUIDisplayMode__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)setAnnouncementsDisplayMode
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SCROBrailleDisplayManager_setAnnouncementsDisplayMode__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)exitCurrentDisplayMode
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SCROBrailleDisplayManager_exitCurrentDisplayMode__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (int)displayMode
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__SCROBrailleDisplayManager_displayMode__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __40__SCROBrailleDisplayManager_displayMode__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) lastObject];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

void __56__SCROBrailleDisplayManager__eventQueue_setDisplayMode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  [WeakRetained handleDisplayModeChanged:v2];
}

- (void)_eventQueue_exitCurrentDisplayMode
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_eventQueue);
  if ([(NSMutableArray *)self->_displayModeStack count])
  {
    [(SCROBrailleDisplayManager *)self _eventQueue_popDisplayModeStack];
    v3 = [(NSMutableArray *)self->_displayModeStack lastObject];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 intValue];
    }

    else
    {
      v5 = 0;
    }

    v6 = [(SCROBrailleDisplayManager *)self _eventQueue_cachedMainStringForDisplayMode:v5];
    v7 = [v6 mutableCopy];

    if (!v5)
    {
      v8 = _SCROD_LOG();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        uiStringCachedLineOffset = self->_uiStringCachedLineOffset;
        *buf = 67109120;
        *&buf[4] = uiStringCachedLineOffset;
        _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_INFO, "Consuming stored lineOffset: %d", buf, 8u);
      }

      v10 = kSCROBrailleOffsetAttribute[0];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_uiStringCachedLineOffset];
      [v7 addAttribute:v10 value:v11 range:{0, objc_msgSend(v7, "length")}];

      if (self->_uiEditingCachedString)
      {
        *buf = xmmword_26498C6C0;
        [v7 getRange:buf ofAttribute:kSCROCursorAttribute[0]];
        if (*buf != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v7 addAttribute:kSCROBrailleEditingStringAttribute[0] value:self->_uiEditingCachedString range:{*buf, *&buf[8]}];
        }

        uiEditingCachedString = self->_uiEditingCachedString;
        self->_uiEditingCachedString = 0;
      }

      self->_uiStringCachedLineOffset = 0;
    }

    v13 = [v7 length];
    [v7 removeAttribute:kSCROLineFocusAttribute[0] range:{0, v13}];
    [v7 addAttribute:kSCROLineFocusAttribute[0] value:&unk_287651BC0 range:{0, v13}];
    [(SCROBrailleDisplayManager *)self setMainAttributedString:v7 forceUpdate:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__SCROBrailleDisplayManager__eventQueue_exitCurrentDisplayMode__block_invoke;
    v15[3] = &unk_279B742E0;
    v15[4] = self;
    v16 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __63__SCROBrailleDisplayManager__eventQueue_exitCurrentDisplayMode__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  [WeakRetained handleDisplayModeChanged:v2];
}

- (void)_eventQueue_alertTimeoutHandler
{
  dispatch_assert_queue_V2(self->_eventQueue);
  [(SCROBrailleDisplayManager *)self _eventQueue_exitCurrentDisplayMode];
  alertTimer = self->_alertTimer;
  self->_alertTimer = 0;
}

- (void)_eventQueue_resetAlertTimer
{
  dispatch_assert_queue_V2(self->_eventQueue);
  alertTimeout = self->_alertTimeout;
  alertTimer = self->_alertTimer;
  if (alertTimer && (dispatch_source_testcancel(self->_alertTimer) && alertTimeout > 0.0 || (dispatch_source_cancel(alertTimer), v5 = self->_alertTimer, self->_alertTimer = 0, v5, self->_alertTimer)))
  {
    v6 = dispatch_walltime(0, (self->_alertTimeout * 1000000000.0));
    v7 = self->_alertTimer;
    v8 = (self->_alertTimeout * 0.1);

    dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, v8);
  }

  else if (alertTimeout > 0.0)
  {
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_eventQueue);
    v10 = self->_alertTimer;
    self->_alertTimer = v9;

    if (self->_alertTimer)
    {
      v11 = dispatch_walltime(0, (self->_alertTimeout * 1000000000.0));
      dispatch_source_set_timer(self->_alertTimer, v11, 0xFFFFFFFFFFFFFFFFLL, (self->_alertTimeout * 0.1));
      v12 = self->_alertTimer;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __56__SCROBrailleDisplayManager__eventQueue_resetAlertTimer__block_invoke;
      handler[3] = &unk_279B73DD0;
      handler[4] = self;
      dispatch_source_set_event_handler(v12, handler);
      dispatch_resume(self->_alertTimer);
    }
  }
}

- (void)_eventQueue_stopAlertTimer
{
  dispatch_assert_queue_V2(self->_eventQueue);
  alertTimer = self->_alertTimer;
  if (alertTimer)
  {
    dispatch_source_cancel(alertTimer);
    v4 = self->_alertTimer;
    self->_alertTimer = 0;
  }
}

- (void)_eventQueue_fireAlertTimeoutHandler
{
  dispatch_assert_queue_V2(self->_eventQueue);
  if (self->_alertTimer)
  {
    [(SCROBrailleDisplayManager *)self _eventQueue_stopAlertTimer];

    [(SCROBrailleDisplayManager *)self _eventQueue_alertTimeoutHandler];
  }
}

- (void)_eventQueue_popDisplayModeStack
{
  dispatch_assert_queue_V2(self->_eventQueue);
  if ([(NSMutableArray *)self->_displayModeStack count])
  {
    v3 = [(NSMutableArray *)self->_displayModeStack lastObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 intValue];

      switch(v5)
      {
        case 3:
          statusString = self->_statusString;
          self->_statusString = 0;

          break;
        case 2:
          [(SCROBrailleDisplayHistory *)self->_history markSnapshotAsRead];
          break;
        case 1:
          [(SCROBrailleDisplayManager *)self _eventQueue_stopAlertTimer];
          break;
      }
    }

    displayModeStack = self->_displayModeStack;

    [(NSMutableArray *)displayModeStack removeLastObject];
  }
}

- (id)_eventQueue_cachedMainStringForDisplayMode:(int)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  v5 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v5 = [(SCROBrailleDisplayHistory *)self->_history currentString];
      goto LABEL_13;
    }

    if (a3 != 3)
    {
      goto LABEL_13;
    }

    statusString = self->_statusString;
    if (statusString)
    {
LABEL_9:
      v5 = statusString;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (!a3)
  {
    statusString = self->_lineString;
    if (statusString)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (a3 == 1)
  {
LABEL_8:
    statusString = self->_blankUIString;
    goto LABEL_9;
  }

LABEL_13:

  return v5;
}

- (void)configureTableWithIdentifier:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SCROBrailleDisplayManager_configureTableWithIdentifier___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_setTableIdentifier:(id)a3
{
  obj = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v4 = +[SCROBrailleTranslationManager sharedManager];
  if ([(__CFString *)obj isEqual:@"com.apple.scrod.braille.table.duxbury.jpn"])
  {

    v5 = @"com.apple.scrod.braille.table.apple.ja";
  }

  else
  {
    v5 = obj;
  }

  obja = v5;
  v6 = [(__CFString *)v5 brl_serviceIdentifier];
  [v4 loadTranslatorWithServiceIdentifier:v6 input:0];

  v7 = [(__CFString *)obja brl_tableIdentifier];
  [v4 setDefaultLanguage:v7];

  outputTableIdentifier = self->_outputTableIdentifier;
  p_outputTableIdentifier = &self->_outputTableIdentifier;
  if (![(NSString *)outputTableIdentifier isEqualToString:obja])
  {
    objc_storeStrong(p_outputTableIdentifier, obja);
    v10 = [MEMORY[0x277CF3318] sharedModel];
    v11 = +[SCROBrailleTranslationManager sharedManager];
    [v10 setOutputTableIdentifier:obja manager:v11];
  }
}

- (void)configureInputTableWithIdentifier:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SCROBrailleDisplayManager_configureInputTableWithIdentifier___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_setInputTableWithIdentifier:(id)a3
{
  obj = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v4 = +[SCROBrailleTranslationManager inputManager];
  if ([(__CFString *)obj isEqual:@"com.apple.scrod.braille.table.duxbury.jpn"])
  {

    v5 = @"com.apple.scrod.braille.table.apple.ja";
  }

  else
  {
    v5 = obj;
  }

  obja = v5;
  v6 = [(__CFString *)v5 brl_serviceIdentifier];
  [v4 loadTranslatorWithServiceIdentifier:v6 input:1];

  v7 = [(__CFString *)obja brl_tableIdentifier];
  [v4 setDefaultLanguage:v7];

  inputTableIdentifier = self->_inputTableIdentifier;
  p_inputTableIdentifier = &self->_inputTableIdentifier;
  if (![(NSString *)inputTableIdentifier isEqualToString:obja])
  {
    objc_storeStrong(p_inputTableIdentifier, obja);
    v10 = [MEMORY[0x277CF3318] sharedModel];
    v11 = +[SCROBrailleTranslationManager inputManager];
    [v10 setInputTableIdentifier:obja manager:v11];
  }
}

- (void)setAlwaysUsesNemethCodeForTechnicalText:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SCROBrailleDisplayManager_setAlwaysUsesNemethCodeForTechnicalText___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (BOOL)alwaysUsesNemethCodeForTechnicalText
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SCROBrailleDisplayManager_alwaysUsesNemethCodeForTechnicalText__block_invoke;
  block[3] = &unk_279B73EB0;
  block[4] = &v6;
  dispatch_sync(eventQueue, block);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __65__SCROBrailleDisplayManager_alwaysUsesNemethCodeForTechnicalText__block_invoke(uint64_t a1)
{
  v2 = +[SCROBrailleTranslationManager sharedManager];
  *(*(*(a1 + 32) + 8) + 24) = [v2 alwaysUsesNemethCodeForTechnicalText];
}

- (int)contractionMode
{
  v2 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:self->_outputTableIdentifier];
  v3 = [v2 supportsTranslationModeContracted];

  return v3 ^ 1;
}

- (BOOL)showEightDotBraille
{
  v2 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:self->_outputTableIdentifier];
  v3 = [v2 supportsTranslationMode8Dot];

  return v3;
}

- (BOOL)inputEightDotBraille
{
  v2 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:self->_inputTableIdentifier];
  v3 = [v2 supportsTranslationMode8Dot];

  return v3;
}

- (void)setAutomaticBrailleTranslationEnabled:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67__SCROBrailleDisplayManager_setAutomaticBrailleTranslationEnabled___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (BOOL)automaticBrailleTranslation
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SCROBrailleDisplayManager_automaticBrailleTranslation__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_eventQueue_setAutomaticBrailleTranslationEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  self->_automaticBrailleTranslation = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__SCROBrailleDisplayManager__eventQueue_setAutomaticBrailleTranslationEnabled___block_invoke;
  v5[3] = &unk_279B74370;
  v5[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)setWordWrapEnabled:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SCROBrailleDisplayManager_setWordWrapEnabled___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (BOOL)wordWrapEnabled
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__SCROBrailleDisplayManager_wordWrapEnabled__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_eventQueue_setWordWrapEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  self->_wordWrapEnabled = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SCROBrailleDisplayManager__eventQueue_setWordWrapEnabled___block_invoke;
  v5[3] = &unk_279B74370;
  v5[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)setAutoAdvanceEnabled:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SCROBrailleDisplayManager_setAutoAdvanceEnabled___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (BOOL)autoAdvanceEnabled
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__SCROBrailleDisplayManager_autoAdvanceEnabled__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_eventQueue_setAutoAdvanceEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  self->_autoAdvanceEnabled = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SCROBrailleDisplayManager__eventQueue_setAutoAdvanceEnabled___block_invoke;
  v5[3] = &unk_279B74370;
  v5[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

void __63__SCROBrailleDisplayManager__eventQueue_setAutoAdvanceEnabled___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 token];
  if (v3 != kSCROSystemVirtualBrailleDisplayToken)
  {
    [v4 setAutoAdvanceEnabled:*(*(a1 + 32) + 107)];
  }
}

- (void)setAutoAdvanceDuration:(double)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__SCROBrailleDisplayManager_setAutoAdvanceDuration___block_invoke;
  v4[3] = &unk_279B74240;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(eventQueue, v4);
}

- (double)autoAdvanceDuration
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SCROBrailleDisplayManager_autoAdvanceDuration__block_invoke;
  v6[3] = &unk_279B74010;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(eventQueue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __48__SCROBrailleDisplayManager_autoAdvanceDuration__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_eventQueue_setAutoAdvanceDuration:(double)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  self->_autoAdvanceDuration = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SCROBrailleDisplayManager__eventQueue_setAutoAdvanceDuration___block_invoke;
  v5[3] = &unk_279B74370;
  v5[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)setBlinkingCursorEnabled:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SCROBrailleDisplayManager_setBlinkingCursorEnabled___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

uint64_t __54__SCROBrailleDisplayManager_setBlinkingCursorEnabled___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 120) = *(a1 + 40);
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__SCROBrailleDisplayManager_setBlinkingCursorEnabled___block_invoke_2;
  v3[3] = &unk_279B74370;
  v3[4] = v1;
  return [v1 _enumerateActiveDisplays:v3];
}

- (BOOL)blinkingCursorEnabled
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SCROBrailleDisplayManager_blinkingCursorEnabled__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setTactileGraphicsImageData:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__SCROBrailleDisplayManager_setTactileGraphicsImageData___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_setTactileGraphicsImageData:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  imageData = self->_imageData;
  self->_imageData = v4;
  v6 = v4;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SCROBrailleDisplayManager__eventQueue_setTactileGraphicsImageData___block_invoke;
  v7[3] = &unk_279B74370;
  v7[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v7];
}

- (void)setPlanarData:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SCROBrailleDisplayManager_setPlanarData___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_setPlanarData:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  planarData = self->_planarData;
  self->_planarData = v4;
  v6 = v4;

  v7 = [(SCROBrailleDisplayManager *)self _hasPlanarDisplay];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SCROBrailleDisplayManager__eventQueue_setPlanarData___block_invoke;
  v8[3] = &unk_279B74398;
  v9 = v7;
  v8[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v8];
}

void __55__SCROBrailleDisplayManager__eventQueue_setPlanarData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPlanar] & 1) != 0 || (*(a1 + 40) & 1) == 0)
  {
    [v3 setPlanarData:*(*(a1 + 32) + 152)];
  }
}

- (BOOL)_hasPlanarDisplay
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SCROBrailleDisplayManager__hasPlanarDisplay__block_invoke;
  v4[3] = &unk_279B74308;
  v4[4] = &v5;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __46__SCROBrailleDisplayManager__hasPlanarDisplay__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isPlanar];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (unint64_t)numberOfTextLinesInPlanarBraille
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SCROBrailleDisplayManager_numberOfTextLinesInPlanarBraille__block_invoke;
  v4[3] = &unk_279B74308;
  v4[4] = &v5;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

unint64_t __61__SCROBrailleDisplayManager_numberOfTextLinesInPlanarBraille__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 numberOfTextLinesInPlanarBraille];
  if (v3 <= result)
  {
    v5 = result;
  }

  else
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

- (int)inputContractionMode
{
  v2 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:self->_inputTableIdentifier];
  v3 = [v2 supportsTranslationModeContracted];

  return v3 ^ 1;
}

- (void)setLastUserInteractionTime:(double)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SCROBrailleDisplayManager_setLastUserInteractionTime___block_invoke;
  v4[3] = &unk_279B74240;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(eventQueue, v4);
}

double __56__SCROBrailleDisplayManager_setLastUserInteractionTime___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 264) = result;
  return result;
}

- (void)setPersistentKeyModifiers:(unsigned int)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__SCROBrailleDisplayManager_setPersistentKeyModifiers___block_invoke;
  v4[3] = &unk_279B742E0;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (unsigned)persistentKeyModifiers
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SCROBrailleDisplayManager_persistentKeyModifiers__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_eventQueue_setPersistentKeyModifiers:(unsigned int)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  self->_persistentKeyModifiers = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SCROBrailleDisplayManager__eventQueue_setPersistentKeyModifiers___block_invoke;
  v5[3] = &unk_279B74370;
  v5[4] = self;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)setShowDotsSevenAndEight:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SCROBrailleDisplayManager_setShowDotsSevenAndEight___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (BOOL)showDotsSevenAndEight
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SCROBrailleDisplayManager_showDotsSevenAndEight__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_eventQueue_showDotsSevenAndEight:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  if (self->_showDotsSevenAndEight != v3)
  {
    self->_showDotsSevenAndEight = v3;
    mainString = self->_mainString;
    if (mainString)
    {
      v6 = mainString;
    }

    else
    {
      v6 = self->_blankUIString;
      if (!v6)
      {
        return;
      }
    }

    v7 = v6;
    [(SCROBrailleDisplayManager *)self setMainAttributedString:v6 forceUpdate:1];
  }
}

- (BOOL)isCandidateSelectionOn
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  v3 = [v2 isCandidateSelectionActive];

  return v3;
}

- (void)cancelCandidateSelection
{
  if ([(SCROBrailleDisplayManager *)self isCandidateSelectionOn])
  {
    v2 = [MEMORY[0x277CF3318] sharedModel];
    [v2 handleEscape];
  }
}

- (void)showPreviousCandidate
{
  if ([(SCROBrailleDisplayManager *)self isCandidateSelectionOn])
  {
    v2 = [MEMORY[0x277CF3318] sharedModel];
    [v2 showPreviousCandidate];
  }
}

- (void)showNextCandidate
{
  if ([(SCROBrailleDisplayManager *)self isCandidateSelectionOn])
  {
    v2 = [MEMORY[0x277CF3318] sharedModel];
    [v2 showNextCandidate];
  }
}

- (BOOL)isWordDescriptionOn
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  v3 = [v2 isWordDescriptionActive];

  return v3;
}

- (void)showPreviousWordDescription
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  [v2 showPreviousWordDescription];
}

- (void)showNextWordDescription
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  [v2 showNextWordDescription];
}

- (void)showPreviousAnnouncement
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SCROBrailleDisplayManager_showPreviousAnnouncement__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)showNextAnnouncement
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SCROBrailleDisplayManager_showNextAnnouncement__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_showNextAnnouncement:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  v5 = [(NSMutableArray *)self->_displayModeStack lastObject];
  v6 = v5;
  if (!v5)
  {
    v10 = 0;
    WeakRetained = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v7 = [v5 intValue];

  if (v7 != 2)
  {
    v10 = 0;
    WeakRetained = 0;
    v9 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  history = self->_history;
  if (v3)
  {
    if (![(SCROBrailleDisplayHistory *)history moveToNext])
    {
      v6 = 0;
      v9 = 0;
LABEL_10:
      v12 = &selRef_handleBrailleDidShowNextAnnouncement_;
      goto LABEL_13;
    }
  }

  else if (![(SCROBrailleDisplayHistory *)history moveToPrevious])
  {
    v6 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v6 = [(SCROBrailleDisplayHistory *)self->_history currentString];
  v9 = 1;
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_12:
  v12 = &selRef_handleBrailleDidShowPreviousAnnouncement_;
LABEL_13:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = *v12;
  if (v6)
  {
    [(SCROBrailleDisplayManager *)self setMainAttributedString:v6 forceUpdate:1];
  }

LABEL_15:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SCROBrailleDisplayManager__eventQueue_showNextAnnouncement___block_invoke;
  block[3] = &unk_279B743C0;
  v15 = WeakRetained;
  v16 = v10;
  v17 = v9;
  v13 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__SCROBrailleDisplayManager__eventQueue_showNextAnnouncement___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v1 performSelector:v2 withObject:v3];
}

- (void)setLineDescriptorDisplayCallbackEnabled:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SCROBrailleDisplayManager_setLineDescriptorDisplayCallbackEnabled___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (BOOL)lineDescriptorDisplayCallbackEnabled
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  eventQueue = v2->_eventQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SCROBrailleDisplayManager_lineDescriptorDisplayCallbackEnabled__block_invoke;
  v5[3] = &unk_279B74010;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(eventQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (int64_t)tokenForRouterIndex:(int64_t)a3 location:(int64_t *)a4 appToken:(id *)a5 forDisplayWithToken:(int)a6
{
  dispatch_assert_queue_not_V2(self->_eventQueue);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SCROBrailleDisplayManager_tokenForRouterIndex_location_appToken_forDisplayWithToken___block_invoke;
  block[3] = &unk_279B743E8;
  block[4] = self;
  block[5] = &v16;
  v15 = a6;
  dispatch_sync(eventQueue, block);
  v12 = [v17[5] tokenForRouterIndex:a3 location:a4 appToken:a5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

uint64_t __87__SCROBrailleDisplayManager_tokenForRouterIndex_location_appToken_forDisplayWithToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _eventQueue_activeDisplayForToken:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2);
}

- (_NSRange)rangeOfBrailleCellRepresentingCharacterAtIndex:(unint64_t)a3
{
  v3 = [(SCROBrailleFormatter *)self->_currentBrailleFormatter rangeOfBrailleCellRepresentingCharacterAtIndex:a3];
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)clearTimeoutAlert
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SCROBrailleDisplayManager_clearTimeoutAlert__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)simulateKeypress:(id)a3
{
  v4 = a3;
  eventQueue = self->_eventQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__SCROBrailleDisplayManager_simulateKeypress___block_invoke;
  v7[3] = &unk_279B74088;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(eventQueue, v7);
}

- (void)_eventQueue_simulateKeypress:(id)a3
{
  eventQueue = self->_eventQueue;
  v5 = a3;
  dispatch_assert_queue_V2(eventQueue);
  v6 = -[SCROBrailleDisplayManager _eventQueue_activeDisplayForToken:](self, "_eventQueue_activeDisplayForToken:", [v5 displayToken]);
  [v6 simulateKeypress:v5];
}

- (void)setPrepareToMemorizeNextKey:(BOOL)a3 immediate:(BOOL)a4 forDisplayWithToken:(int)a5
{
  eventQueue = self->_eventQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __87__SCROBrailleDisplayManager_setPrepareToMemorizeNextKey_immediate_forDisplayWithToken___block_invoke;
  v6[3] = &unk_279B74410;
  v6[4] = self;
  v8 = a3;
  v9 = a4;
  v7 = a5;
  dispatch_async(eventQueue, v6);
}

- (void)beginUpdates
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCROBrailleDisplayManager_beginUpdates__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)endUpdates
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SCROBrailleDisplayManager_endUpdates__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_setBatchUpdates:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_eventQueue);
  if (self->_shouldBatchUpdates != v3)
  {
    self->_shouldBatchUpdates = v3;
    v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
    v7 = [v5 copy];

    v6 = &selRef_beginUpdates;
    if (!v3)
    {
      v6 = &selRef_endUpdates;
    }

    [v7 makeObjectsPerformSelector:*v6];
  }
}

- (void)setSingleKeyQuickNav:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SCROBrailleDisplayManager_setSingleKeyQuickNav___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = a3;
  dispatch_async(eventQueue, block);
}

void __50__SCROBrailleDisplayManager_setSingleKeyQuickNav___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CF3318] sharedModel];
  [v2 setSingleKeyQuickNav:*(a1 + 32)];
}

- (void)setSingleLetterInputIsOn:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SCROBrailleDisplayManager_setSingleLetterInputIsOn___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)_eventQueue_setSingleLetterInputIsOn:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__SCROBrailleDisplayManager__eventQueue_setSingleLetterInputIsOn___block_invoke;
  v5[3] = &__block_descriptor_33_e28_v16__0__SCROBrailleDisplay_8l;
  v6 = a3;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)setTextSearchModeIsOn:(BOOL)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__SCROBrailleDisplayManager_setTextSearchModeIsOn___block_invoke;
  v4[3] = &unk_279B73E38;
  v4[4] = self;
  v5 = a3;
  dispatch_async(eventQueue, v4);
}

- (void)_eventQueue_setTextSearchModeIsOn:(BOOL)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SCROBrailleDisplayManager__eventQueue_setTextSearchModeIsOn___block_invoke;
  v5[3] = &__block_descriptor_33_e28_v16__0__SCROBrailleDisplay_8l;
  v6 = a3;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)translateBrailleToClipboard
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SCROBrailleDisplayManager_translateBrailleToClipboard__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)setBrailleKeyDebounceTimeout:(double)a3
{
  eventQueue = self->_eventQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SCROBrailleDisplayManager_setBrailleKeyDebounceTimeout___block_invoke;
  v4[3] = &unk_279B74240;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(eventQueue, v4);
}

- (void)_eventQueue_setBrailleKeyDebounceTimeout:(double)a3
{
  dispatch_assert_queue_V2(self->_eventQueue);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SCROBrailleDisplayManager__eventQueue_setBrailleKeyDebounceTimeout___block_invoke;
  v5[3] = &__block_descriptor_40_e28_v16__0__SCROBrailleDisplay_8l;
  *&v5[4] = a3;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:v5];
}

- (void)didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__SCROBrailleDisplayManager_didChangeBrailleString_brailleSelection_brailleUIOptions___block_invoke;
  block[3] = &unk_279B74498;
  block[4] = self;
  v15 = v9;
  v17 = location;
  v18 = length;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  dispatch_assert_queue_V2(self->_eventQueue);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __98__SCROBrailleDisplayManager__eventQueue_didChangeBrailleString_brailleSelection_brailleUIOptions___block_invoke;
  v19 = &unk_279B744C0;
  v11 = v9;
  v20 = v11;
  v22 = location;
  v23 = length;
  v12 = v10;
  v21 = v12;
  [(SCROBrailleDisplayManager *)self _enumerateActiveDisplays:&v16];
  if ([(SCROBrailleDisplayManager *)self _isBrailleUIActive:v16])
  {
    v13 = [(SCROBrailleDisplayManager *)self brailleUIVisualManager];
    v14 = +[SCROBrailleUIView visibleView];
    v15 = [v14 visualRepresentation];
    [v13 updateWith:v15];
  }
}

- (void)didReplaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(int64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SCROBrailleDisplayManager_didReplaceScriptStringRange_withScriptString_cursorLocation___block_invoke;
  block[3] = &unk_279B74150;
  v13 = location;
  v14 = length;
  block[4] = self;
  v12 = v9;
  v15 = a5;
  v10 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__SCROBrailleDisplayManager_didReplaceScriptStringRange_withScriptString_cursorLocation___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 72));
  [WeakRetained handleBrailleReplaceTextRange:a1[6] withString:a1[7] cursor:{a1[5], a1[8]}];
}

- (void)didInsertScriptString:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue primaryDisplay];
  v6 = [v5 newBrailleKeyboardKeyForText:v4 modifiers:*MEMORY[0x277CF3390]];

  if (!v6)
  {
    v6 = objc_alloc_init(SCROBrailleKeyboardKey);
    [(SCROBrailleKeyboardKey *)v6 setKeyString:v4];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SCROBrailleDisplayManager_didInsertScriptString___block_invoke;
  v8[3] = &unk_279B74088;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __51__SCROBrailleDisplayManager_didInsertScriptString___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [WeakRetained handleBrailleKeypress:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)didDeleteBrailleChar:(id)a3
{
  v10 = 0;
  v4 = [a3 unicode];
  v5 = [SCROBrailleTranslationUtility spokenStringForDeletedBrailleString:v4 speakLiterally:&v10];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SCROBrailleDisplayManager_didDeleteBrailleChar___block_invoke;
  block[3] = &unk_279B740D8;
  block[4] = self;
  v8 = v5;
  v9 = v10;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __50__SCROBrailleDisplayManager_didDeleteBrailleChar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained handleBrailleDeletedUntranslatedText:*(a1 + 40) speakLiterally:*(a1 + 48)];
}

- (void)requestSpeech:(id)a3 language:(id)a4 shouldQueue:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SCROBrailleDisplayManager_requestSpeech_language_shouldQueue___block_invoke;
  v12[3] = &unk_279B744E8;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a5;
  v10 = v9;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (void)_enumerateActiveDisplays:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(SCROBrailleDisplayManagedQueue *)self->_managedDisplayQueue activeDisplays];
    v6 = [v5 copy];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v4[2](v4, *(*(&v13 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetEditingManager
{
  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SCROBrailleDisplayManager_resetEditingManager__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  dispatch_async(eventQueue, block);
}

- (void)_eventQueue_resetEditingManager
{
  dispatch_assert_queue_V2(self->_eventQueue);

  +[SCROBrailleFormatter resetEditingManager];
}

@end