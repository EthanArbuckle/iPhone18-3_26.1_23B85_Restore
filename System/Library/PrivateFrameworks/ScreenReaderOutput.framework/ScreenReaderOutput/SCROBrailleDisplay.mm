@interface SCROBrailleDisplay
+ (id)displayWithIOElement:(id)a3 driverIdentifier:(id)a4 delegate:(id)a5;
- (BOOL)_currentChordShouldExecuteEvenDuringTyping;
- (BOOL)_hasBrailleChord;
- (BOOL)_hasPressedBrailleKeys;
- (BOOL)isLoaded;
- (BOOL)isMultiLine;
- (BOOL)isPlanar;
- (BOOL)isValid;
- (id)_initWithDriver:(id)a3 driverIdentifier:(id)a4 ioElement:(id)a5 delegate:(id)a6;
- (id)_newBrailleKeyForCurrentBrailleChord;
- (id)_newBrailleKeyForCurrentKeyChord;
- (id)_statusStringWithDictionary:(id)a3;
- (id)aggregatedStatus;
- (id)brailleInputManager;
- (id)canvasDescriptor;
- (id)configuration;
- (id)driverIdentifier;
- (id)driverModelIdentifier;
- (id)keyArrayForBrailleStringWithCurrentModifiers:(id)a3;
- (id)lineDescriptor;
- (id)realStatus;
- (id)virtualStatus;
- (int)virtualStatusAlignment;
- (int64_t)mainSize;
- (int64_t)masterStatusCellIndex;
- (int64_t)statusSize;
- (int64_t)tokenForRouterIndex:(int64_t)a3 location:(int64_t *)a4 appToken:(id *)a5;
- (unsigned)_blinkingCursorSetting;
- (void)_aggregatedStatusHandler:(id)a3;
- (void)_autoAdvancePanHandler:(id)a3;
- (void)_beginAutoAdvanceIfEnabled;
- (void)_blinkerEventHandler;
- (void)_blinkingCursorSetting;
- (void)_brailleDisplayStringDidChangeHandler:(id)a3 brailleSelection:(id)a4 brailleUIOptions:(id)a5;
- (void)_bulkStatusAttributesHandler:(id)a3;
- (void)_configurationChangeHandler;
- (void)_delayedConfigurationChangeNotification;
- (void)_delayedSleepNotification:(id)a3;
- (void)_delayedUnloadNotification;
- (void)_forwardToScreenReader:(id)a3 routerIndex:(int64_t)a4 token:(int64_t)a5 BeginLocation:(int64_t)a6 endLocation:(int64_t)a7 appToken:(id)a8 didPerform:(BOOL)a9;
- (void)_inputEventHandler;
- (void)_panHandler:(id)a3;
- (void)_processKeyEvents:(id)a3;
- (void)_replaceRange:(_NSRange)a3 withString:(id)a4 cursor:(unint64_t)a5;
- (void)_runThread;
- (void)_setBatchUpdates:(id)a3;
- (void)_setBrailleFormatter:(id)a3;
- (void)_setBrailleFormatterHandler:(id)a3;
- (void)_setDelegateWantsDisplayCallbackHandler:(id)a3;
- (void)_setPlanarDataHandler:(id)a3;
- (void)_setTactileGraphicsImageDataHandler:(id)a3;
- (void)_simulateKeypressHandler:(id)a3;
- (void)_singleLetterInputHandler:(id)a3;
- (void)_sleepNotification:(id)a3;
- (void)_startEditingText;
- (void)_statusDisplayHandler:(id)a3;
- (void)_textSearchModeHandler:(id)a3;
- (void)_translateBrailleToClipboard;
- (void)_unloadHandler;
- (void)_unpauseInputAndProcessKeyEvents;
- (void)_updateDisplay;
- (void)beginUpdates;
- (void)brailleDisplayDeletedCharacter:(id)a3;
- (void)brailleDisplayInsertedCharacter:(id)a3 modifiers:(id)a4;
- (void)brailleDriverDidReceiveInput;
- (void)dealloc;
- (void)didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5;
- (void)didInsertScriptString:(id)a3;
- (void)endUpdates;
- (void)handleCommandDeleteKeyEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandEscapeKeyEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandForwardDeleteKeyEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandMoveLeftForDispatcher:(id)a3;
- (void)handleCommandMoveRightForDispatcher:(id)a3;
- (void)handleCommandPanLeftForDispatcher:(id)a3;
- (void)handleCommandPanRightForDispatcher:(id)a3;
- (void)handleCommandReturnBrailleEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandRouterKeyEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandToggleContractedBrailleEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandToggleEightDotBrailleEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleCommandTranslateForDispatcher:(id)a3;
- (void)handleCommandWordDescriptionEvent:(id)a3 forDispatcher:(id)a4;
- (void)handleEvent:(id)a3;
- (void)handleUnsupportedKeyEvent:(id)a3 forDispatcher:(id)a4;
- (void)invalidate;
- (void)panBeginning;
- (void)panEnd;
- (void)panLeft;
- (void)panRight;
- (void)planarPanLeft;
- (void)planarPanRight;
- (void)replaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(unint64_t)a5;
- (void)requestFlushLine;
- (void)scriptSelectionDidChange:(_NSRange)a3;
- (void)setAggregatedStatus:(id)a3;
- (void)setAutoAdvanceDuration:(double)a3;
- (void)setAutoAdvanceEnabled:(BOOL)a3;
- (void)setBlinkingCursorEnabled:(BOOL)a3;
- (void)setBrailleFormatter:(id)a3;
- (void)setBrailleKeyDebounceTimeout:(double)a3;
- (void)setImageData:(id)a3;
- (void)setInputAllowed:(BOOL)a3;
- (void)setInputContractionMode:(int)a3;
- (void)setInputShowEightDot:(BOOL)a3;
- (void)setMasterStatusCellIndex:(int64_t)a3;
- (void)setOutputContractionMode:(int)a3;
- (void)setOutputShowEightDot:(BOOL)a3;
- (void)setPlanarData:(id)a3;
- (void)simulateKeypress:(id)a3;
- (void)translateBrailleToClipboard;
- (void)unpauseInputOnBrailleFormatterChange;
- (void)updateBlinkingCursorTimer:(BOOL)a3;
@end

@implementation SCROBrailleDisplay

+ (id)displayWithIOElement:(id)a3 driverIdentifier:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = 0;
  if (v7 && v8)
  {
    v11 = [MEMORY[0x277CCA8D8] brailleDriverBundleWithIdentifier:v8];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 principalClass];
      if ([SCROBrailleDisplay brailleDriverClassIsValid:v13])
      {
        v14 = objc_alloc_init(v13);
        v15 = v14;
        if (v14)
        {
          if ([v14 interfaceVersion] == 4)
          {
            v16 = [objc_alloc(objc_opt_class()) _initWithDriver:v15 driverIdentifier:v8 ioElement:v7 delegate:v9];
            v10 = v16;
            if (v16)
            {
              [v16 _delayedDisplayLoad];
            }

            goto LABEL_15;
          }

          NSLog(&cfstr_ErrorInvalidPr.isa, v8);
        }

        else
        {
          NSLog(&cfstr_ErrorUnableToI.isa, v8);
        }

        v10 = 0;
LABEL_15:

        goto LABEL_16;
      }

      NSLog(&cfstr_ErrorInvalidPr.isa, v8);
    }

    else
    {
      NSLog(&cfstr_ErrorCouldNotF.isa, v8);
    }

    v10 = 0;
LABEL_16:
  }

  return v10;
}

- (id)_initWithDriver:(id)a3 driverIdentifier:(id)a4 ioElement:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v39.receiver = self;
  v39.super_class = SCROBrailleDisplay;
  v15 = [(SCROBrailleDisplay *)&v39 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = 0;
  if (v11 && v12)
  {
    v15->_isValid = 1;
    v18 = objc_alloc_init(SCROBrailleDisplayInput);
    input = v16->_input;
    v16->_input = v18;

    [(SCROBrailleDisplayInput *)v16->_input setQuietSince:-3061152000.0];
    [(SCROBrailleDisplayInput *)v16->_input setBusySince:-3061152000.0];
    [(SCROBrailleDisplayInput *)v16->_input setNextWillMemorizeNotificationTime:-3061152000.0];
    [(SCROBrailleDisplayInput *)v16->_input setMemorizeNextKeyImmediatelyTimeout:-3061152000.0];
    v20 = MEMORY[0x277CBF158];
    [(SCROBrailleDisplayInput *)v16->_input setDownKeys:CFSetCreateMutable(0, 0, MEMORY[0x277CBF158])];
    [(SCROBrailleDisplayInput *)v16->_input setIsQuiet:1];
    [(SCROBrailleDisplayInput *)v16->_input setDownBrailleDots:CFSetCreateMutable(0, 0, v20)];
    [(SCROBrailleDisplayInput *)v16->_input setBrailleCharExponentialMovingAverage:1.0];
    [(SCROBrailleDisplayInput *)v16->_input setBrailleTranslationTimeout:1.0];
    v21 = +[SCROSharedInputProperties sharedInstance];
    [v21 setLastBrailleChordPosted:-3061152000.0];

    v16->_brailleKeyDebounceTimeout = 0.5;
    v22 = objc_alloc_init(SCROBrailleDisplayStatus);
    status = v16->_status;
    v16->_status = v22;

    [(SCROBrailleDisplayStatus *)v16->_status setVirtualAlignment:0];
    inputTableIdentifier = v16->_inputTableIdentifier;
    v16->_inputTableIdentifier = &stru_28763D5C8;

    outputTableIdentifier = v16->_outputTableIdentifier;
    v16->_outputTableIdentifier = &stru_28763D5C8;

    v16->_automaticBrailleTranslationEnabled = 1;
    v26 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    contentLock = v16->_contentLock;
    v16->_contentLock = v26;

    v38.version = 0;
    memset(&v38.retain, 0, 24);
    v38.info = v16;
    Current = CFAbsoluteTimeGetCurrent();
    v16->_inputEventTimer = CFRunLoopTimerCreate(0, Current, 0.1, 0, 0, _inputEventHandler, &v38);
    objc_storeStrong(&v16->_brailleDriver, a3);
    objc_storeStrong(&v16->_driverIdentifier, a4);
    objc_storeStrong(&v16->_ioElement, a5);
    v29 = objc_storeWeak(&v16->_delegate, v14);
    v30 = [v14 newBrailleDisplayCommandDispatcher];
    commandDispatcher = v16->_commandDispatcher;
    v16->_commandDispatcher = v30;

    [(SCROBrailleDisplayCommandDispatcherProtocol *)v16->_commandDispatcher setDelegate:v16];
    v16->_delegateWantsDisplayCallback = 1;
    v16->_inputAllowed = 1;
    v32 = [[SCROBrailleEventDispatcher alloc] initWithTarget:v16];
    eventDispatcher = v16->_eventDispatcher;
    v16->_eventDispatcher = v32;

    v16->_latinEscapeEnabled = 0;
    v34 = [MEMORY[0x277CCAB98] defaultCenter];
    [v34 addObserver:v16 selector:sel__unloadNotification_ name:@"SCROBrailleDriverProtocolUnloadNotification" object:v16->_brailleDriver];

    v35 = [MEMORY[0x277CCAB98] defaultCenter];
    [v35 addObserver:v16 selector:sel__configurationChangeNotification_ name:@"SCROBrailleDriverProtocolConfigurationChangeNotification" object:v16->_brailleDriver];

    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:v16 selector:sel__sleepNotification_ name:@"SCROBrailleDriverProtocolSleepNotification" object:v16->_brailleDriver];

    v16->_lastRouterPressTime = -3061152000.0;
    v16->_lastRouterIndex = -1;
    v16->_routerClicks = 0;
LABEL_5:
    v17 = v16;
  }

  return v17;
}

- (void)_runThread
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  [(NSLock *)self->_contentLock lock];
  if (self->_isValid && self->_brailleDriver)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(SCROBrailleDisplay *)self _attemptLoad];
    objc_autoreleasePoolPop(v4);
    v6 = _SCROD_LOG();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      brailleDriver = self->_brailleDriver;
      ioElement = self->_ioElement;
      v24 = 138543874;
      v25 = brailleDriver;
      v26 = 2114;
      v27 = ioElement;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Load driver %{public}@ with element: %{public}@ : result: %d", &v24, 0x1Cu);
    }

    if (v5)
    {
      v9 = 1;
      v10 = [(SCROBrailleDriverProtocol *)self->_brailleDriver modelIdentifier];
      driverModelIdentifier = self->_driverModelIdentifier;
      self->_driverModelIdentifier = v10;

      v12 = [(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize];
      self->_mainSize = v12 & ~(v12 >> 63);
      v13 = [(SCROBrailleDriverProtocol *)self->_brailleDriver statusSize];
      self->_statusSize = v13 & ~(v13 >> 63);
      self->_postsKeyboardEvents = [(SCROBrailleDriverProtocol *)self->_brailleDriver postsKeyboardEvents];
      self->_brailleInputMode = [(SCROBrailleDriverProtocol *)self->_brailleDriver brailleInputMode];
      v14 = [[SCROBrailleLine alloc] initWithDriver:self->_brailleDriver mainSize:self->_mainSize statusSize:self->_statusSize];
      brailleLine = self->_brailleLine;
      self->_brailleLine = v14;

      [(SCROBrailleLine *)self->_brailleLine setTranslationDelegate:self];
      self->_runLoop = CFRunLoopGetCurrent();
      [(SCROBrailleDisplay *)self updateBlinkingCursorTimer:[(SCROBrailleDisplay *)self _blinkingCursorSetting]!= 0];
      v16 = [(SCROBrailleDriverProtocol *)self->_brailleDriver isInputEnabled];
      self->_inputEnabled = v16;
      if (v16)
      {
        CFRunLoopAddTimer(self->_runLoop, self->_inputEventTimer, *MEMORY[0x277CBF058]);
      }

      runLoop = self->_runLoop;
      [(SCROBrailleEventDispatcher *)self->_eventDispatcher start];
      v18 = self->_brailleDriver;
      if (objc_opt_respondsToSelector())
      {
        [(SCROBrailleDriverProtocol *)self->_brailleDriver setBrailleDriverDelegate:self];
      }

      v5 = 1;
    }

    else
    {
      runLoop = 0;
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
    runLoop = 0;
    v5 = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  objc_autoreleasePoolPop(v3);
  if (v9)
  {
    v19 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = WeakRetained;
    if (v5)
    {
      [WeakRetained brailleDisplay:self driverDidLoad:1];

      objc_autoreleasePoolPop(v19);
      do
      {
        v22 = objc_autoreleasePoolPush();
        CFRunLoopRun();
        objc_autoreleasePoolPop(v22);
      }

      while (runLoop == self->_runLoop);
    }

    else
    {
      [WeakRetained brailleDisplay:self driverDidLoad:0];

      objc_autoreleasePoolPop(v19);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (unsigned)_blinkingCursorSetting
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v2 = get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr;
  v8 = get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr;
  if (!get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke;
    v4[3] = &unk_279B73EB0;
    v4[4] = &v5;
    __get_AXSPrefersNonBlinkingCursorIndicatorSymbolLoc_block_invoke(v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v2)
  {
    [SCROBrailleDisplay _blinkingCursorSetting];
  }

  return v2() == 0;
}

- (void)dealloc
{
  [(SCROBrailleDisplay *)self invalidate];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = self->_contentLock;
  [(NSLock *)v4 lock];
  [v3 addObject:self->_contentLock];
  contentLock = self->_contentLock;
  self->_contentLock = 0;

  if (self->_status)
  {
    [v3 addObject:?];
    status = self->_status;
    self->_status = 0;
  }

  if (self->_input)
  {
    [v3 addObject:?];
    input = self->_input;
    self->_input = 0;
  }

  if (self->_driverIdentifier)
  {
    [v3 addObject:?];
    driverIdentifier = self->_driverIdentifier;
    self->_driverIdentifier = 0;
  }

  if (self->_driverModelIdentifier)
  {
    [v3 addObject:?];
    driverModelIdentifier = self->_driverModelIdentifier;
    self->_driverModelIdentifier = 0;
  }

  if (self->_ioElement)
  {
    [v3 addObject:?];
    ioElement = self->_ioElement;
    self->_ioElement = 0;
  }

  [(NSLock *)v4 unlock];

  v11.receiver = self;
  v11.super_class = SCROBrailleDisplay;
  [(SCROBrailleDisplay *)&v11 dealloc];
}

- (void)invalidate
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SCROBrailleEventDispatcher *)self->_eventDispatcher invalidate];
  [(NSLock *)self->_contentLock lock];
  self->_isValid = 0;
  inputEventTimer = self->_inputEventTimer;
  if (inputEventTimer)
  {
    CFRunLoopTimerInvalidate(inputEventTimer);
    CFRelease(self->_inputEventTimer);
    self->_inputEventTimer = 0;
  }

  blinkerEventTimer = self->_blinkerEventTimer;
  if (blinkerEventTimer)
  {
    CFRunLoopTimerInvalidate(blinkerEventTimer);
    CFRelease(self->_blinkerEventTimer);
    self->_blinkerEventTimer = 0;
  }

  runLoop = self->_runLoop;
  if (runLoop)
  {
    self->_runLoop = 0;
    CFRunLoopStop(runLoop);
  }

  [(SCROBrailleDriverProtocol *)self->_brailleDriver unloadDriver];
  brailleLine = self->_brailleLine;
  self->_brailleLine = 0;

  brailleDriver = self->_brailleDriver;
  self->_brailleDriver = 0;

  commandDispatcher = self->_commandDispatcher;
  self->_commandDispatcher = 0;

  [(NSLock *)self->_contentLock unlock];
}

- (BOOL)isValid
{
  [(NSLock *)self->_contentLock lock];
  isValid = self->_isValid;
  [(NSLock *)self->_contentLock unlock];
  return isValid;
}

- (BOOL)isLoaded
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleDriverProtocol *)self->_brailleDriver isDriverLoaded];
  [(NSLock *)self->_contentLock unlock];
  return v3;
}

- (id)driverIdentifier
{
  [(NSLock *)self->_contentLock lock];
  driverIdentifier = self->_driverIdentifier;
  if (driverIdentifier)
  {
    v4 = [(NSString *)driverIdentifier copy];
  }

  else
  {
    v4 = 0;
  }

  [(NSLock *)self->_contentLock unlock];

  return v4;
}

- (id)driverModelIdentifier
{
  [(NSLock *)self->_contentLock lock];
  driverModelIdentifier = self->_driverModelIdentifier;
  if (driverModelIdentifier)
  {
    v4 = [(NSString *)driverModelIdentifier copy];
  }

  else
  {
    v4 = 0;
  }

  [(NSLock *)self->_contentLock unlock];

  return v4;
}

- (id)lineDescriptor
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleLine *)self->_brailleLine newLineDescriptor];
  [(NSLock *)self->_contentLock unlock];

  return v3;
}

- (BOOL)isPlanar
{
  brailleDriver = self->_brailleDriver;
  result = 0;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SCROBrailleDriverProtocol *)self->_brailleDriver canvas];
    v5 = [v4 descriptor];
    v6 = [v5 height];

    if (v6)
    {
      return 1;
    }
  }

  return result;
}

- (int64_t)mainSize
{
  [(NSLock *)self->_contentLock lock];
  mainSize = self->_mainSize;
  [(NSLock *)self->_contentLock unlock];
  return mainSize;
}

- (int64_t)statusSize
{
  [(NSLock *)self->_contentLock lock];
  statusSize = self->_statusSize;
  [(NSLock *)self->_contentLock unlock];
  return statusSize;
}

- (void)setInputAllowed:(BOOL)a3
{
  v3 = a3;
  [(NSLock *)self->_contentLock lock];
  if (self->_inputAllowed != v3)
  {
    self->_inputAllowed = v3;
  }

  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (void)setAutoAdvanceEnabled:(BOOL)a3
{
  v5 = @"NO";
  if (a3)
  {
    v5 = @"YES";
  }

  NSLog(&cfstr_AutoadvanceSet.isa, a2, v5);
  self->_autoAdvanceEnabled = a3;

  [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
}

- (void)setAutoAdvanceDuration:(double)a3
{
  autoAdvanceDuration = self->_autoAdvanceDuration;
  self->_autoAdvanceDuration = a3;
  if (autoAdvanceDuration != a3)
  {
    NSLog(&cfstr_AutoadvanceSet_0.isa, a2, *&a3);

    [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
  }
}

- (void)setBlinkingCursorEnabled:(BOOL)a3
{
  if (self->_blinkingCursorEnabled != a3)
  {
    v9 = v3;
    v10 = v4;
    self->_blinkingCursorEnabled = a3;
    [(SCROBrailleLine *)self->_brailleLine setBlinkEnabled:?];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCROBrailleDisplay_setBlinkingCursorEnabled___block_invoke;
    v7[3] = &unk_279B73E38;
    v7[4] = self;
    v8 = a3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)updateBlinkingCursorTimer:(BOOL)a3
{
  if (self->_runLoop)
  {
    if (a3 && [(SCROBrailleDriverProtocol *)self->_brailleDriver supportsBlinkingCursor])
    {
      if (!self->_blinkerEventTimer)
      {
        v7.version = 0;
        memset(&v7.retain, 0, 24);
        v7.info = self;
        Current = CFAbsoluteTimeGetCurrent();
        v5 = CFRunLoopTimerCreate(0, Current, 0.5, 0, 0, _blinkerEventHandler, &v7);
        self->_blinkerEventTimer = v5;
        CFRunLoopAddTimer(self->_runLoop, v5, *MEMORY[0x277CBF058]);
      }
    }

    else
    {
      blinkerEventTimer = self->_blinkerEventTimer;
      if (blinkerEventTimer)
      {
        CFRunLoopTimerInvalidate(blinkerEventTimer);
        CFRelease(self->_blinkerEventTimer);
        self->_blinkerEventTimer = 0;
      }
    }
  }
}

- (void)setImageData:(id)a3
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:44 data:a3 data2:0 data3:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)setPlanarData:(id)a3
{
  objc_storeStrong(&self->_planarData, a3);
  v5 = a3;
  eventDispatcher = self->_eventDispatcher;
  v7 = [SCROBrailleEvent eventWithType:45 data:v5 data2:0 data3:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v7];
}

- (void)_beginAutoAdvanceIfEnabled
{
  v2 = self;
  objc_initWeak(&location, self);
  autoAdvanceDuration = v2->_autoAdvanceDuration;
  LOBYTE(v2) = v2->_autoAdvanceEnabled;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SCROBrailleDisplay__beginAutoAdvanceIfEnabled__block_invoke;
  v4[3] = &unk_279B73E88;
  objc_copyWeak(v5, &location);
  v6 = v2;
  v5[1] = *&autoAdvanceDuration;
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __48__SCROBrailleDisplay__beginAutoAdvanceIfEnabled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained autoAdvanceTimer];
  [v3 invalidate];

  if (*(a1 + 48) == 1 && (v4 = *(a1 + 40), v4 > 0.0))
  {
    v5 = MEMORY[0x277CBEBB8];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SCROBrailleDisplay__beginAutoAdvanceIfEnabled__block_invoke_2;
    v9[3] = &unk_279B73E60;
    objc_copyWeak(&v10, (a1 + 32));
    v6 = [v5 scheduledTimerWithTimeInterval:1 repeats:v9 block:v4];
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setAutoAdvanceTimer:v6];

    objc_destroyWeak(&v10);
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 setAutoAdvanceTimer:0];
  }
}

void __48__SCROBrailleDisplay__beginAutoAdvanceIfEnabled__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[16];
    v4 = WeakRetained;
    v3 = [SCROBrailleEvent eventWithType:18 data:MEMORY[0x277CBEC38]];
    [v2 enqueueEvent:v3];

    WeakRetained = v4;
  }
}

- (id)configuration
{
  [(NSLock *)self->_contentLock lock];
  driverIdentifier = self->_driverIdentifier;
  if (driverIdentifier)
  {
    v4 = [(NSString *)driverIdentifier copy];
  }

  else
  {
    v4 = 0;
  }

  driverModelIdentifier = self->_driverModelIdentifier;
  if (driverModelIdentifier)
  {
    v6 = [(NSString *)driverModelIdentifier copy];
  }

  else
  {
    v6 = 0;
  }

  mainSize = self->_mainSize;
  statusSize = self->_statusSize;
  brailleInputMode = self->_brailleInputMode;
  v10 = self->_ioElement;
  [(NSLock *)self->_contentLock unlock];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:8];
  v12 = v11;
  if (v4)
  {
    [v11 setObject:v4 forKey:kSCROBrailleDisplayDriverIdentifier[0]];
  }

  if (v6)
  {
    [v12 setObject:v6 forKey:kSCROBrailleDisplayModelIdentifier[0]];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:mainSize];
    [v12 setObject:v13 forKey:kSCROBrailleDisplayMainSize[0]];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:statusSize];
    [v12 setObject:v14 forKey:kSCROBrailleDisplayStatusSize[0]];
  }

  if (!v10)
  {
    [v12 setObject:&unk_2876519C8 forKey:kSCROBrailleDisplayTransport[0]];
    goto LABEL_23;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROIOElementProtocol identifier](v10, "identifier")}];
  [v12 setObject:v15 forKey:kSCROBrailleDisplayToken[0]];

  v16 = [(SCROIOElementProtocol *)v10 transport];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  [v12 setObject:v17 forKey:kSCROBrailleDisplayTransport[0]];

  if (v16 == 1)
  {
    if (![(SCROIOElementProtocol *)v10 conformsToProtocol:&unk_28765FB78])
    {
      goto LABEL_23;
    }

    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SCROIOElementProtocol vendorId](v10, "vendorId")}];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SCROIOElementProtocol productId](v10, "productId")}];
    v24 = [v21 stringWithFormat:@"%@, %@", v22, v23];
    [v12 setObject:v24 forKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId[0]];

    v25 = [(SCROIOElementProtocol *)v10 productName];
    [v12 setObject:v25 forKeyedSubscript:kSCROBrailleDisplayBrailleProductName[0]];

    v19 = [(SCROIOElementProtocol *)v10 manufacturerName];
    v20 = kSCROBrailleDisplayBrailleManufacturerName;
    goto LABEL_22;
  }

  if (v16 == 8)
  {
    if (![(SCROIOElementProtocol *)v10 conformsToProtocol:&unk_28765F968])
    {
      goto LABEL_23;
    }

    v19 = [(SCROIOElementProtocol *)v10 bluetoothAddress];
    v20 = kSCROBrailleDisplayBluetoothAddress;
    goto LABEL_22;
  }

  if (v16 == 32 && [(SCROIOElementProtocol *)v10 conformsToProtocol:&unk_28765F720])
  {
    v18 = [(SCROIOElementProtocol *)v10 address];
    [v12 setObject:v18 forKeyedSubscript:kSCROBrailleDisplayBluetoothAddress[0]];

    v19 = [(SCROIOElementProtocol *)v10 name];
    v20 = kSCROBrailleDisplayBrailleProductName;
LABEL_22:
    [v12 setObject:v19 forKeyedSubscript:*v20];
  }

LABEL_23:
  v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_postsKeyboardEvents];
  [v12 setObject:v26 forKey:kSCROBrailleDisplayPostsKeyboardEvents[0]];

  v27 = [MEMORY[0x277CCABB0] numberWithInteger:brailleInputMode];
  [v12 setObject:v27 forKey:kSCROBrailleDisplayBrailleInputMode[0]];

  return v12;
}

- (id)canvasDescriptor
{
  brailleDriver = self->_brailleDriver;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SCROBrailleDriverProtocol *)self->_brailleDriver canvas];
    v5 = [v4 descriptor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMultiLine
{
  brailleDriver = self->_brailleDriver;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = self->_brailleDriver;

  return [(SCROBrailleDriverProtocol *)v4 shouldUseMultiRow];
}

- (void)requestFlushLine
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:39 data:*MEMORY[0x277CBED28]];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)beginUpdates
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:34 data:*MEMORY[0x277CBED28]];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)endUpdates
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:34 data:*MEMORY[0x277CBED10]];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)setBrailleFormatter:(id)a3
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:28 data:a3 data2:0 data3:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (id)realStatus
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleDisplayStatus *)self->_status realData];

  if (v3)
  {
    v4 = [(SCROBrailleDisplayStatus *)self->_status realData];
    v3 = [v4 copy];
  }

  [(NSLock *)self->_contentLock unlock];

  return v3;
}

- (id)virtualStatus
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleDisplayStatus *)self->_status virtualData];

  if (v3)
  {
    v4 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    v3 = [v4 copy];
  }

  [(NSLock *)self->_contentLock unlock];

  return v3;
}

- (void)setAggregatedStatus:(id)a3
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:3 data:a3];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (id)aggregatedStatus
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];

  if (v3)
  {
    v4 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    v3 = [v4 copy];
  }

  [(NSLock *)self->_contentLock unlock];

  return v3;
}

- (int)virtualStatusAlignment
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleDisplayStatus *)self->_status virtualAlignment];
  [(NSLock *)self->_contentLock unlock];
  return v3;
}

- (void)setMasterStatusCellIndex:(int64_t)a3
{
  eventDispatcher = self->_eventDispatcher;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [SCROBrailleEvent eventWithType:5 data:v5];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (int64_t)masterStatusCellIndex
{
  [(NSLock *)self->_contentLock lock];
  v3 = [(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex];
  [(NSLock *)self->_contentLock unlock];
  return v3;
}

- (void)simulateKeypress:(id)a3
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:16 data:a3];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)panLeft
{
  [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:17 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)panRight
{
  [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:18 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)panBeginning
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:19 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)panEnd
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:20 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)planarPanLeft
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:47 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)planarPanRight
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:48 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)translateBrailleToClipboard
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:41 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)setBrailleKeyDebounceTimeout:(double)a3
{
  eventDispatcher = self->_eventDispatcher;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v4 = [SCROBrailleEvent eventWithType:42 data:v5];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (int64_t)tokenForRouterIndex:(int64_t)a3 location:(int64_t *)a4 appToken:(id *)a5
{
  v10 = a3;
  [(NSLock *)self->_contentLock lock];
  v8 = [(SCROBrailleLine *)self->_brailleLine tokenForRouterIndex:&v10 location:a4 appToken:a5];
  [(NSLock *)self->_contentLock unlock];
  return v8;
}

- (void)handleEvent:(id)a3
{
  v14 = a3;
  switch([v14 type])
  {
    case 3u:
      [(SCROBrailleDisplay *)self _aggregatedStatusHandler:v14];
      break;
    case 4u:
    case 5u:
      [(SCROBrailleDisplay *)self _statusDisplayHandler:v14];
      break;
    case 0x10u:
      [(SCROBrailleDisplay *)self _simulateKeypressHandler:v14];
      break;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v4 = [v14 data];
      v5 = [v4 isEqual:MEMORY[0x277CBEC38]];

      if (v5)
      {
        [(SCROBrailleDisplay *)self _autoAdvancePanHandler:v14];
      }

      else
      {
        [(SCROBrailleDisplay *)self _panHandler:v14];
      }

      break;
    case 0x17u:
      v9 = [v14 data2];
      -[SCROBrailleDisplayInput setMemorizeNextKeyImmediately:](self->_input, "setMemorizeNextKeyImmediately:", [v9 BOOLValue]);

      if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
      {
        [(SCROBrailleDisplayInput *)self->_input setMemorizeNextKeyImmediatelyTimeout:CFAbsoluteTimeGetCurrent() + *&kSCROBrailleInputMemorizeNowInterval];
      }

      if ([(SCROBrailleDisplay *)self _isMemorizingKeys])
      {
        [(SCROBrailleLine *)self->_brailleLine discardEdits];
      }

      break;
    case 0x18u:
      [(SCROBrailleDisplay *)self _unloadHandler];
      break;
    case 0x19u:
      v10 = [v14 data];
      v11 = [v10 BOOLValue];

      if (v11)
      {
        [(SCROBrailleLine *)self->_brailleLine discardEdits];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = [v14 data];
      [WeakRetained brailleDisplay:self isSleeping:{objc_msgSend(v7, "BOOLValue")}];
      goto LABEL_28;
    case 0x1Au:
      [(SCROBrailleDisplay *)self _configurationChangeHandler];
      break;
    case 0x1Bu:
      [(SCROBrailleDisplay *)self _bulkStatusAttributesHandler:v14];
      break;
    case 0x1Cu:
      [(SCROBrailleDisplay *)self _setBrailleFormatterHandler:v14];
      break;
    case 0x20u:
      [(SCROBrailleDisplay *)self _setDelegateWantsDisplayCallbackHandler:v14];
      break;
    case 0x22u:
      [(SCROBrailleDisplay *)self _setBatchUpdates:v14];
      break;
    case 0x26u:
      [(SCROBrailleDisplay *)self _singleLetterInputHandler:v14];
      break;
    case 0x27u:
      [(SCROBrailleLine *)self->_brailleLine display];
      break;
    case 0x28u:
      [(SCROBrailleDisplay *)self _textSearchModeHandler:v14];
      break;
    case 0x29u:
      [(SCROBrailleDisplay *)self _translateBrailleToClipboard];
      break;
    case 0x2Au:
      WeakRetained = [v14 data];
      [WeakRetained doubleValue];
      [(SCROBrailleDisplay *)self _setBrailleKeyDebounceTimeoutHandler:?];
      goto LABEL_32;
    case 0x2Cu:
      [(SCROBrailleDisplay *)self _setTactileGraphicsImageDataHandler:v14];
      break;
    case 0x2Du:
      [(SCROBrailleDisplay *)self _setPlanarDataHandler:v14];
      break;
    case 0x2Eu:
      WeakRetained = [v14 data];
      v7 = [v14 data2];
      v8 = [v14 data3];
      [(SCROBrailleDisplay *)self _brailleDisplayStringDidChangeHandler:WeakRetained brailleSelection:v7 brailleUIOptions:v8];

LABEL_28:
LABEL_32:

      break;
    case 0x2Fu:
      [(SCROBrailleLine *)self->_brailleLine planarPanLeft];
      break;
    case 0x30u:
      [(SCROBrailleLine *)self->_brailleLine planarPanRight];
      break;
    default:
      break;
  }

  v12 = [(SCROBrailleDisplay *)self eventHandled];

  if (v12)
  {
    v13 = [(SCROBrailleDisplay *)self eventHandled];
    (v13)[2](v13, v14);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_unloadHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDriverDisconnected:self];

  [(SCROBrailleDisplay *)self invalidate];
}

- (id)_statusStringWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = [v4 objectForKey:kSCROStatusAttributeCellIndex[0]];
  v7 = [v6 unsignedIntegerValue];

  v8 = [v4 objectForKey:kSCROStatusAttributeCellTitle[0]];
  if (!_statusStringWithDictionary__myBundle)
  {
    v9 = MEMORY[0x277CCA8D8];
    v10 = objc_opt_self();
    v11 = [v9 bundleForClass:v10];
    v12 = _statusStringWithDictionary__myBundle;
    _statusStringWithDictionary__myBundle = v11;
  }

  v27 = 0;
  v13 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
  v14 = [v13 length];

  if (v7 < v14)
  {
    v15 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    [v15 getBytes:&v27 range:{v7, 1}];
  }

  if ([v8 length])
  {
    [v5 appendString:v8];
    [v5 appendString:@": "];
  }

  v26 = v8;
  v16 = 0;
  while (1)
  {
    v17 = [v4 objectForKey:kSCROStatusAttributeDotText[v16]];
    v18 = (v27 >> v16) & 1;
    if ([(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]!= v7)
    {
      goto LABEL_19;
    }

    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"canPanLeft" value:&stru_28763D5C8 table:@"Server"];

        v20 = [(SCROBrailleLine *)self->_brailleLine canPanLeft];
      }

      else
      {
        if (v16 != 7)
        {
          goto LABEL_19;
        }

        v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"canPanRight" value:&stru_28763D5C8 table:@"Server"];

        v20 = [(SCROBrailleLine *)self->_brailleLine canPanRight];
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_19;
      }

      v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"currentAnnouncementUnread" value:&stru_28763D5C8 table:@"Server"];

      v20 = [(SCROBrailleLine *)self->_brailleLine currentUnread];
    }

    else
    {
      v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"unreadAnnouncements" value:&stru_28763D5C8 table:@"Server"];

      v20 = [(SCROBrailleLine *)self->_brailleLine anyUnread];
    }

    v18 = v20;
    v17 = v19;
LABEL_19:
    v21 = v16 + 1;
    if (v17)
    {
      break;
    }

LABEL_25:

    ++v16;
    if (v21 == 8)
    {
      goto LABEL_28;
    }
  }

  [v5 appendFormat:@"%d ", v16 + 1];
  if (v18)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2;
  }

  v23 = +[SCROBrailleSubstitutionManager sharedInstance];
  v24 = [v23 brailleSubstitutionForType:v22 withLanguage:0];
  [v5 appendString:v24];

  [v5 appendString:@" "];
  [v5 appendString:v17];
  if (v16 != 7)
  {
    [v5 appendString:@"  "];
    goto LABEL_25;
  }

LABEL_28:

  return v5;
}

- (void)_setBrailleFormatterHandler:(id)a3
{
  v4 = [a3 data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCROBrailleDisplay *)self _setBrailleFormatter:v4];
  }
}

- (void)_setTactileGraphicsImageDataHandler:(id)a3
{
  v4 = [a3 data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCROBrailleLine *)self->_brailleLine setImageData:v4];
  }
}

- (void)_setPlanarDataHandler:(id)a3
{
  v4 = [a3 data];
  [(SCROBrailleLine *)self->_brailleLine setPlanarData:v4];
}

- (void)_unpauseInputAndProcessKeyEvents
{
  [(SCROBrailleDisplay *)self _unpauseInput];
  v3 = MEMORY[0x277CBEBF8];

  [(SCROBrailleDisplay *)self _processKeyEvents:v3];
}

- (void)unpauseInputOnBrailleFormatterChange
{
  if ([(SCROBrailleDisplay *)self _inputPaused])
  {

    [(SCROBrailleDisplay *)self _unpauseInputAndProcessKeyEvents];
  }
}

- (void)_setBrailleFormatter:(id)a3
{
  v13 = a3;
  v4 = [v13 statusText];
  [(NSLock *)self->_contentLock lock];
  if (v4 && ([v4 attribute:kSCROStatusAttribute[0] atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(SCROBrailleDisplay *)self _statusStringWithDictionary:v5];
    v7 = [v13 copy];

    [v7 addText:v6 selection:0 token:0 focus:0 isEditableText:0];
    [v7 translate];

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = v13;
  }

  v14 = v9;
  [(SCROBrailleLine *)self->_brailleLine setFormatter:?];
  [(NSLock *)self->_contentLock unlock];
  [(SCROBrailleDisplay *)self unpauseInputOnBrailleFormatterChange];
  [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
  v10 = [v14 outputTableIdentifier];
  v11 = [v14 inputTableIdentifier];
  if (v10)
  {
    objc_storeStrong(&self->_outputTableIdentifier, v10);
  }

  if (v11 && ![(NSString *)self->_inputTableIdentifier isEqualToString:v11])
  {
    objc_storeStrong(&self->_inputTableIdentifier, v11);
    v12 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:v11];
    self->_isInputEightDot = [v12 supportsTranslationMode8Dot];
    self->_isInputContracted = [v12 supportsTranslationModeContracted];
  }

  if (![(SCROBrailleLine *)self->_brailleLine hasEdits])
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
  }
}

- (void)_statusDisplayHandler:(id)a3
{
  v11 = a3;
  v4 = [v11 data];
  v5 = [v4 intValue];

  v6 = [v11 type];
  [(NSLock *)self->_contentLock lock];
  if (v6 == 4)
  {
    if ([(SCROBrailleDisplayStatus *)self->_status virtualAlignment]!= v5)
    {
      [(SCROBrailleDisplayStatus *)self->_status setVirtualAlignment:v5];
      v8 = [(SCROBrailleDisplayStatus *)self->_status virtualData];

      if (v8)
      {
        brailleLine = self->_brailleLine;
        v10 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
        [(SCROBrailleLine *)brailleLine setVirtualStatus:v10 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];

        goto LABEL_9;
      }
    }

LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  if (v6 != 5 || [(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]== v5)
  {
    goto LABEL_6;
  }

  [(SCROBrailleDisplayStatus *)self->_status setMasterStatusCellIndex:v5];
  [(SCROBrailleLine *)self->_brailleLine setMasterStatusCellIndex:[(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]];
LABEL_9:
  v7 = 1;
LABEL_10:
  [(NSLock *)self->_contentLock unlock];
  if (v7)
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
  }
}

- (void)_aggregatedStatusHandler:(id)a3
{
  v18 = a3;
  v4 = [v18 data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 length];
    v7 = objc_alloc_init(MEMORY[0x277CBEA90]);
    [(NSLock *)self->_contentLock lock];
    v8 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    [(SCROBrailleDisplayStatus *)self->_status setAggregatedData:v5];
    v9 = [(SCROBrailleDisplayStatus *)self->_status realData];
    v10 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    statusSize = self->_statusSize;
    if (v6 <= statusSize)
    {
      [(SCROBrailleDisplayStatus *)self->_status setRealData:v5];
      [(SCROBrailleDisplayStatus *)self->_status setVirtualData:v7];
    }

    else
    {
      if (statusSize < 1)
      {
        [(SCROBrailleDisplayStatus *)self->_status setRealData:0];
      }

      else
      {
        v12 = [v5 subdataWithRange:0];
        [(SCROBrailleDisplayStatus *)self->_status setRealData:v12];
      }

      v13 = [v5 subdataWithRange:{self->_statusSize, v6 - self->_statusSize}];
      [(SCROBrailleDisplayStatus *)self->_status setVirtualData:v13];
    }

    brailleLine = self->_brailleLine;
    v15 = [(SCROBrailleDisplayStatus *)self->_status realData];
    [(SCROBrailleLine *)brailleLine setRealStatus:v15];

    v16 = self->_brailleLine;
    v17 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    [(SCROBrailleLine *)v16 setVirtualStatus:v17 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];

    [(NSLock *)self->_contentLock unlock];
    [(SCROBrailleDisplay *)self _updateDisplay];
  }
}

- (void)_setDelegateWantsDisplayCallbackHandler:(id)a3
{
  v4 = [a3 data];
  self->_delegateWantsDisplayCallback = [v4 BOOLValue];

  if (self->_delegateWantsDisplayCallback)
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [(SCROBrailleLine *)self->_brailleLine newLineDescriptor];
    [WeakRetained brailleDisplay:self didDisplay:v5];
  }
}

- (void)_simulateKeypressHandler:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 data];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 keyMasks];
    v7 = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) intValue];
          v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
          [v7 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(SCROBrailleDisplay *)self _processKeyEvents:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_bulkStatusAttributesHandler:(id)a3
{
  v11 = a3;
  v4 = [v11 data];
  v5 = [v4 integerValue];

  v6 = [v11 data2];
  v7 = [v6 intValue];

  [(NSLock *)self->_contentLock lock];
  [(SCROBrailleDisplayStatus *)self->_status setVirtualAlignment:v7];
  [(SCROBrailleDisplayStatus *)self->_status setMasterStatusCellIndex:v5];
  v8 = [(SCROBrailleDisplayStatus *)self->_status virtualData];

  if (v8)
  {
    brailleLine = self->_brailleLine;
    v10 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    [(SCROBrailleLine *)brailleLine setVirtualStatus:v10 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];
  }

  [(SCROBrailleLine *)self->_brailleLine setMasterStatusCellIndex:[(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]];
  [(NSLock *)self->_contentLock unlock];
  [(SCROBrailleDisplay *)self _updateDisplay];
}

- (void)_setBatchUpdates:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 BOOLValue];

  if (self->_shouldBatchUpdates != v5)
  {
    self->_shouldBatchUpdates = v5;
    if ((v5 & 1) == 0 && self->_needsUpdating)
    {

      [(SCROBrailleDisplay *)self _updateDisplay];
    }
  }
}

- (void)_updateDisplay
{
  if (self->_shouldBatchUpdates)
  {
    if (!self->_needsPanUpdating)
    {
      self->_needsUpdating = 1;
      return;
    }
  }

  else
  {
    self->_needsUpdating = 0;
  }

  self->_needsPanUpdating = 0;
  [(NSLock *)self->_contentLock lock];
  v3 = self->_brailleLine;
  v4 = [(SCROBrailleLine *)v3 display];
  if (v4 && self->_delegateWantsDisplayCallback)
  {
    v6 = [(SCROBrailleLine *)v3 newLineDescriptor];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
    v6 = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  if (v4 && self->_delegateWantsDisplayCallback)
  {
    [WeakRetained brailleDisplay:self didDisplay:v6];
  }
}

- (void)_configurationChangeHandler
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  [(NSLock *)self->_contentLock lock];
  v4 = [(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize];
  v5 = [(SCROBrailleDriverProtocol *)self->_brailleDriver statusSize];
  obj = [(SCROBrailleDriverProtocol *)self->_brailleDriver modelIdentifier];
  v6 = [(SCROBrailleDriverProtocol *)self->_brailleDriver postsKeyboardEvents];
  v7 = [(SCROBrailleDriverProtocol *)self->_brailleDriver brailleInputMode];
  v8 = v4 & ~(v4 >> 63);
  v9 = v5 & ~(v5 >> 63);
  v10 = __PAIR128__(v9, v8) != *&self->_mainSize || ![obj isEqual:self->_driverModelIdentifier] || self->_postsKeyboardEvents != v6 || v7 != self->_brailleInputMode;
  driverModelIdentifier = self->_driverModelIdentifier;
  self->_mainSize = v8;
  self->_statusSize = v9;
  v12 = driverModelIdentifier;
  objc_storeStrong(&self->_driverModelIdentifier, obj);
  self->_postsKeyboardEvents = v6;
  self->_brailleInputMode = v7;
  if (v10)
  {
    v13 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    v14 = [v13 length];

    v15 = [(SCROBrailleDisplayStatus *)self->_status realData];
    v16 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    statusSize = self->_statusSize;
    [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    if (v14 <= statusSize)
      v24 = {;
      [(SCROBrailleDisplayStatus *)self->_status setRealData:v24];

      [(SCROBrailleDisplayStatus *)self->_status setVirtualData:v3];
    }

    else
      v18 = {;
      v19 = [v18 subdataWithRange:{0, statusSize}];
      [(SCROBrailleDisplayStatus *)self->_status setRealData:v19];

      v20 = self->_statusSize;
      v21 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
      v22 = [v21 subdataWithRange:{v20, v14 - v20}];
      [(SCROBrailleDisplayStatus *)self->_status setVirtualData:v22];
    }

    [(SCROBrailleLine *)self->_brailleLine setMainSize:self->_mainSize];
    [(SCROBrailleLine *)self->_brailleLine setStatusSize:self->_statusSize];
    brailleLine = self->_brailleLine;
    v26 = [(SCROBrailleDisplayStatus *)self->_status realData];
    [(SCROBrailleLine *)brailleLine setRealStatus:v26];

    v27 = self->_brailleLine;
    v28 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    [(SCROBrailleLine *)v27 setVirtualStatus:v28 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];

    v23 = 1;
  }

  else
  {
    v23 = 0;
    v16 = 0;
    v15 = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  if (v23)
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained configurationChangedForBrailleDisplay:self];
  }
}

- (void)_singleLetterInputHandler:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 BOOLValue];

  brailleLine = self->_brailleLine;

  [(SCROBrailleLine *)brailleLine setIsSingleLetterInputOn:v5];
}

- (void)_textSearchModeHandler:(id)a3
{
  v4 = [a3 data];
  v5 = [v4 BOOLValue];

  brailleLine = self->_brailleLine;

  [(SCROBrailleLine *)brailleLine setIsTextSearchModeOn:v5];
}

- (void)_translateBrailleToClipboard
{
  v4 = [(SCROBrailleLine *)self->_brailleLine translatedBrailleForTableIdentifier:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self copyStringToClipboard:v4];
}

- (BOOL)_currentChordShouldExecuteEvenDuringTyping
{
  v3 = [(SCROBrailleDisplay *)self brailleInputManager];
  v4 = [(SCROBrailleDisplay *)self _newBrailleKeyForCurrentBrailleChord];
  v5 = [v3 commandForBrailleKey:v4];

  if ([v5 isEqualToString:@"VOTEventCommandBrailleTranslate"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"VOTEventCommandDelete"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"VOTEventCommandReturn"];
  }

  return v6;
}

- (void)_startEditingText
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDidStartEditingWithDisplay:self];
}

- (void)_replaceRange:(_NSRange)a3 withString:(id)a4 cursor:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self didReplaceRange:location withString:length cursor:{v9, a5}];
}

- (void)_processKeyEvents:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  keyEventsQueue = self->_keyEventsQueue;
  if (!keyEventsQueue)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = self->_keyEventsQueue;
    self->_keyEventsQueue = v7;

    keyEventsQueue = self->_keyEventsQueue;
  }

  v104 = v4;
  [(NSMutableArray *)keyEventsQueue addObjectsFromArray:v4];
  v109 = [MEMORY[0x277CCAB58] indexSet];
  if (![(NSMutableArray *)self->_keyEventsQueue count])
  {
    v107 = 0;
    goto LABEL_189;
  }

  v107 = 0;
  v9 = 0;
  v95 = *MEMORY[0x277CF3398];
  v96 = *MEMORY[0x277CF3378];
  v102 = ~*MEMORY[0x277CF3378];
  LODWORD(v93) = *MEMORY[0x277CF33A0];
  HIDWORD(v93) = *MEMORY[0x277CF3380];
  v101 = ~*MEMORY[0x277CF33A0];
  v100 = ~*MEMORY[0x277CF3398];
  v94 = *MEMORY[0x277CF3388];
  v99 = ~*MEMORY[0x277CF3388];
  v105 = *MEMORY[0x277CF33A8];
  v97 = ~*MEMORY[0x277CF33A8];
  v98 = ~*MEMORY[0x277CF3380];
  v103 = *MEMORY[0x277CF3390];
  while (1)
  {
    v10 = [(NSMutableArray *)self->_keyEventsQueue objectAtIndexedSubscript:v9, v93];
    if ([(SCROBrailleDisplay *)self _inputPaused])
    {
      break;
    }

    [v109 addIndex:v9];
    v11 = [v10 unsignedLongValue];
    if ((v11 & 0x10000) == 0)
    {
      v12 = self;
      v13 = [v10 unsignedLongValue];
      v14 = v13;
      v15 = v13 | 0x10000u;
      if ((v13 & 0xF) != 2)
      {
        if ([(SCROBrailleDisplayInput *)self->_input currentChord])
        {
          v27 = [(SCROBrailleDisplayInput *)self->_input downKeys];
          CFSetRemoveValue(v27, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15]);
        }

        goto LABEL_101;
      }

      if (BYTE1(v13) <= 7u)
      {
        if (BYTE1(v13) < 8u)
        {
          if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
          {
            v16 = [(SCROBrailleDisplayInput *)self->_input downBrailleDots];
            CFSetRemoveValue(v16, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15]);
          }

          if ((v14 & 0xFE00) == 0x600)
          {
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsNonSpacebarChordableKey:0];
          }
        }

        goto LABEL_101;
      }

      if (BYTE1(v13) <= 0xAu)
      {
        switch(BYTE1(v13))
        {
          case 8u:
            [(SCROBrailleDisplayInput *)self->_input setSpacebarIsDown:0];
            if ([(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
            {
              [(SCROBrailleDisplayInput *)self->_input setSkipBrailleKeyboardKeyTranslation:0];
              [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:0];
              [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:0];
            }

            goto LABEL_101;
          case 9u:
            input = self->_input;
            v38 = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
            v39 = v97;
            break;
          case 0xAu:
            input = self->_input;
            v38 = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
            v39 = v98;
            break;
          default:
            goto LABEL_101;
        }
      }

      else if (BYTE1(v13) > 0xCu)
      {
        if (BYTE1(v13) == 13)
        {
          input = self->_input;
          v38 = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
          v39 = v101;
        }

        else
        {
          if (BYTE1(v13) != 14)
          {
            goto LABEL_101;
          }

          input = self->_input;
          v38 = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
          v39 = v102;
        }
      }

      else
      {
        input = self->_input;
        if (BYTE1(v13) == 11)
        {
          v38 = [(SCROBrailleDisplayInput *)self->_input downBrailleModifiers];
          v39 = v99;
        }

        else
        {
          v38 = [(SCROBrailleDisplayInput *)self->_input downBrailleModifiers];
          v39 = v100;
        }
      }

      [(SCROBrailleDisplayInput *)input setDownBrailleModifiers:v38 & v39];
      goto LABEL_101;
    }

    v17 = v11 & 0xF;
    if (v17 > 2)
    {
      if (v17 != 3)
      {
        if (v17 == 6)
        {
          -[SCROBrailleDisplayInput setCurrentHIDCommand:](self->_input, "setCurrentHIDCommand:", [v10 unsignedLongValue]);
          goto LABEL_102;
        }

LABEL_47:
        v40 = self;
        v41 = v10;
        v42 = [v41 unsignedLongValue];
        [(SCROBrailleDisplayInput *)self->_input setNewDown:1];
        if (![(SCROBrailleDisplayInput *)self->_input currentChord])
        {
          [(SCROBrailleDisplayInput *)self->_input setCurrentChord:CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128])];
        }

        v43 = v5;
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& !CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]))
        {
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:1];
        }

        v44 = [(SCROBrailleDisplayInput *)self->_input currentChord];
        Count = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]);
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v42];
        v131.location = 0;
        v131.length = Count;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v44, v131, v46);

        if (FirstIndexOfValue < 0)
        {
          CFArrayAppendValue([(SCROBrailleDisplayInput *)self->_input currentChord], v41);
        }

        CFSetSetValue([(SCROBrailleDisplayInput *)self->_input downKeys], v41);

        v5 = v43;
        goto LABEL_102;
      }
    }

    else if ((v11 & 0xF) != 0)
    {
      if (v17 == 2)
      {
        v12 = self;
        v18 = v10;
        v19 = [v18 unsignedLongValue];
        v20 = 0;
        if (BYTE1(v19) > 7u)
        {
          if (BYTE1(v19) > 0xBu)
          {
            if (BYTE1(v19) > 0xDu)
            {
              if (BYTE1(v19) != 14)
              {
                v20 = BYTE1(v19) == 15;
                goto LABEL_90;
              }

              v48 = self->_input;
              v49 = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v96;
            }

            else if (BYTE1(v19) == 12)
            {
              v48 = self->_input;
              v49 = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v95;
            }

            else
            {
              v48 = self->_input;
              v49 = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v93;
            }
          }

          else if (BYTE1(v19) > 9u)
          {
            if (BYTE1(v19) == 10)
            {
              v48 = self->_input;
              v49 = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = HIDWORD(v93);
            }

            else
            {
              v48 = self->_input;
              v49 = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v94;
            }
          }

          else
          {
            if (BYTE1(v19) == 8)
            {
              if (![(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
              {
                [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]];
              }

              [(SCROBrailleDisplayInput *)self->_input setSpacebarIsDown:1];
              [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:1];
              goto LABEL_89;
            }

            if (BYTE1(v19) != 9)
            {
              goto LABEL_90;
            }

            v48 = self->_input;
            v49 = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
            v50 = v105;
          }

          [(SCROBrailleDisplayInput *)v48 setCurrentBrailleModifiers:v50 | v49];
          [(SCROBrailleDisplayInput *)self->_input setDownBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]| v50];
        }

        else
        {
          if (BYTE1(v19) >= 8u)
          {
            goto LABEL_90;
          }

          if (![(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
          {
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]];
          }

          if (![(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
          {
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChord:CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128])];
          }

          v21 = v5;
          if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& !CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]))
          {
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:1];
          }

          v22 = [(SCROBrailleDisplayInput *)self->_input currentBrailleChord];
          v23 = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]);
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
          v129.location = 0;
          v129.length = v23;
          v25 = CFArrayGetFirstIndexOfValue(v22, v129, v24);

          if (v25 < 0)
          {
            CFArrayAppendValue([(SCROBrailleDisplayInput *)self->_input currentBrailleChord], v18);
          }

          CFSetSetValue([(SCROBrailleDisplayInput *)self->_input downBrailleDots], v18);
          v5 = v21;
          if (![(SCROBrailleDisplay *)v12 isInputEightDot])
          {
            v26 = [(SCROBrailleLine *)self->_brailleLine isSingleLetterInputOn];
            v20 = 0;
            if ((v19 & 0xFE00) == 0x600 && !v26)
            {
              [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsNonSpacebarChordableKey:1];
              goto LABEL_89;
            }

LABEL_90:
            Current = CFAbsoluteTimeGetCurrent();
            [(SCROBrailleDisplayInput *)self->_input lastBrailleChordTypingTime];
            v53 = Current - v52 > self->_brailleKeyDebounceTimeout || [(SCROBrailleDisplay *)v12 _currentChordShouldExecuteEvenDuringTyping];
            if (![(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation]&& ((v53 & [(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]& 1) != 0 || [(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsNonSpacebarChordableKey]) && [(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
            {
              [(SCROBrailleDisplayInput *)self->_input setSkipBrailleKeyboardKeyTranslation:1];
            }

            if (v20)
            {
              [(SCROBrailleDisplay *)v12 _translateBrailleStringAndPostEvent];
            }

LABEL_101:
            goto LABEL_102;
          }
        }

LABEL_89:
        v20 = 0;
        goto LABEL_90;
      }

      goto LABEL_47;
    }

    v28 = v5;
    v29 = self;
    v30 = v10;
    v31 = [v30 unsignedLongValue];
    [(SCROBrailleDisplayInput *)self->_input setNewDown:1];
    if (![(SCROBrailleDisplayInput *)self->_input currentChord])
    {
      [(SCROBrailleDisplayInput *)self->_input setCurrentChord:CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128])];
    }

    [(SCROBrailleDisplayInput *)self->_input setRouterEvent:v31];
    v32 = [(SCROBrailleDisplayInput *)self->_input currentChord];
    v33 = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]);
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v31 & 0xFFFF00FF];
    v130.location = 0;
    v130.length = v33;
    v35 = CFArrayGetFirstIndexOfValue(v32, v130, v34);

    if (v35 < 0)
    {
      v36 = [(SCROBrailleDisplayInput *)self->_input currentChord];
      CFArrayAppendValue(v36, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v31 & 0xFFFF00FF]);
    }

    CFSetSetValue([(SCROBrailleDisplayInput *)self->_input downKeys], v30);

    v5 = v28;
LABEL_102:
    if ([(SCROBrailleDisplayInput *)self->_input routerEvent]&& ![(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately]|| !CFSetGetCount([(SCROBrailleDisplayInput *)self->_input downKeys]) && [(SCROBrailleDisplayInput *)self->_input currentChord])
    {
      v54 = [(SCROBrailleDisplayInput *)self->_input routerEvent];
      v55 = self;
      v56 = [(SCROBrailleDisplay *)v55 _newBrailleKeyForCurrentKeyChord];
      v57 = [(SCROBrailleDisplayInput *)self->_input routerEvent];
      v58 = self->_input;
      if (v57)
      {
        v59 = [(SCROBrailleDisplayInput *)v58 routerEvent];
        aBlock[0] = BYTE1(v59);
        v110[0] = 0;
        v108 = v9;
        if ((v59 & 0xF) != 0)
        {
          v60 = 0;
        }

        else
        {
          v106 = v5;
          v119 = 0;
          [(NSLock *)self->_contentLock lock];
          v61 = self->_brailleLine;
          if ([(SCROBrailleLine *)v61 getStatusRouterIndex:&v119 forRawIndex:aBlock[0]])
          {
            v60 = 0;
            aBlock[0] = v119 + self->_statusSize;
          }

          else
          {
            v125 = 0;
            [(SCROBrailleLine *)v61 tokenForRouterIndex:aBlock location:v110 appToken:&v125];
            v60 = v125;
          }

          [(NSLock *)self->_contentLock unlock];
          v5 = v106;
        }

        v62 = v5;
        [v56 setRouterIndex:? token:? location:? appToken:?];
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar])
        {
          [v56 setIsSecondaryRouter:1];
        }

        if ([(SCROBrailleDisplayInput *)self->_input currentChord])
        {
          v63 = [(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately];
          v64 = [(SCROBrailleDisplayInput *)self->_input currentChord];
          v65 = v64;
          if (v63)
          {
            CFRelease(v64);
            [(SCROBrailleDisplayInput *)self->_input setCurrentChord:0];
          }

          else
          {
            v66 = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]);
            v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v59 & 0xFFFF00FF];
            v132.location = 0;
            v132.length = v66;
            v68 = CFArrayGetFirstIndexOfValue(v65, v132, v67);

            if ((v68 & 0x8000000000000000) == 0)
            {
              CFArrayRemoveValueAtIndex([(SCROBrailleDisplayInput *)self->_input currentChord], v68);
            }
          }
        }

        v5 = v62;
        v9 = v108;
      }

      else if ([(SCROBrailleDisplayInput *)v58 currentChord])
      {
        CFRelease([(SCROBrailleDisplayInput *)self->_input currentChord]);
        [(SCROBrailleDisplayInput *)self->_input setCurrentChord:0];
      }

      v69 = [(SCROBrailleDisplay *)v55 _hasPressedBrailleKeys];
      v70 = [(SCROBrailleDisplayInput *)self->_input newDown];
      if (v70)
      {
        [(SCROBrailleDisplayInput *)self->_input setNewDown:0];
        if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
        {
          if (v69)
          {
            [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
            v71 = 0;
LABEL_133:

            if (v71)
            {
              if (([(SCROBrailleLine *)self->_brailleLine wantsEdits]|| v54) && [(SCROBrailleDisplayCommandDispatcherProtocol *)self->_commandDispatcher handleBrailleKeyEvent:v71])
              {
                if ([v71 isSecondaryRouter])
                {
                  [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:0];
                }
              }

              else
              {
                [v5 addObject:v71];
              }
            }

            else
            {
              v107 |= v70;
            }

            goto LABEL_142;
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained brailleDisplay:v55 memorizedKey:v56];

          [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
          v71 = 0;
LABEL_132:
          [(SCROBrailleDisplay *)v55 _stopMemorization];
          goto LABEL_133;
        }

        v71 = v56;
      }

      else
      {
        v71 = 0;
      }

      [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
      if (v69)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }

LABEL_142:
    if (!CFSetGetCount([(SCROBrailleDisplayInput *)self->_input downBrailleDots]) && ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]|| ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]|| [(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsNonSpacebarChordableKey]) && ![(SCROBrailleDisplayInput *)self->_input spacebarIsDown]))
    {
      v73 = self;
      if ([(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation])
      {
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
        {
          v74 = [(SCROBrailleDisplay *)v73 _newBrailleKeyForCurrentBrailleChord];
          if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
          {
            if (![(SCROBrailleDisplay *)v73 _hasKeyChord])
            {
              v75 = objc_loadWeakRetained(&self->_delegate);
              [v75 brailleDisplay:v73 memorizedKey:v74];

              [(SCROBrailleDisplay *)v73 _stopMemorization];
            }

            v76 = 0;
          }

          else
          {
            v76 = v74;
          }

          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChord:0];
        }

        else
        {
          v76 = 0;
        }

        if (![(SCROBrailleDisplayInput *)self->_input spacebarIsDown])
        {
          [(SCROBrailleDisplayInput *)self->_input setSkipBrailleKeyboardKeyTranslation:0];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:0];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:0];
        }
      }

      else
      {
        v76 = 0;
      }

      if (![(SCROBrailleDisplay *)v73 _hasKeyChord]&& ![(SCROBrailleDisplay *)v73 _hasPressedBrailleKeys])
      {
        [(SCROBrailleDisplay *)v73 _stopMemorization];
      }

      if (v76 && ([(SCROBrailleDisplayCommandDispatcherProtocol *)self->_commandDispatcher handleBrailleKeyEvent:v76]& 1) == 0)
      {
        [v5 addObject:v76];
        [(SCROBrailleDisplay *)v73 _translateBrailleStringAndPostEvent];
      }

      v77 = v73;
      v125 = 0;
      v126 = &v125;
      v127 = 0x2020000000;
      v128 = 0;
      v119 = 0;
      v120 = &v119;
      v121 = 0x3032000000;
      v122 = __Block_byref_object_copy_;
      v123 = __Block_byref_object_dispose_;
      v78 = v5;
      v124 = v78;
      v79 = v78;
      if (![(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation])
      {
        v80 = [(SCROBrailleDisplay *)v77 persistentKeyModifiers]!= v105 && [(SCROBrailleDisplay *)v77 persistentKeyModifiers]!= v103;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = ___appendBrailleKeysToArray_block_invoke;
        aBlock[3] = &unk_279B73F18;
        v81 = v77;
        v115 = v81;
        v116 = &v125;
        v118 = v80;
        v117 = &v119;
        v82 = _Block_copy(aBlock);
        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = ___appendBrailleKeysToArray_block_invoke_2;
        v110[3] = &unk_279B73F40;
        v83 = v81;
        v113 = v80;
        v111 = v83;
        v112 = &v119;
        v84 = _Block_copy(v110);
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordBeganWithSpacebar]&& [(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
        {
          *(v126 + 24) = 1;
          v82[2](v82);
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:0];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:0];
        }

        else
        {
          v82[2](v82);
          v84[2](v84);
        }

        v79 = v120[5];
        v85 = v79;
        [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChord:0];
        [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]];
      }

      if (![(SCROBrailleDisplay *)v77 _hasKeyChord]&& ![(SCROBrailleDisplay *)v77 _hasPressedBrailleKeys])
      {
        [(SCROBrailleDisplay *)v77 _stopMemorization];
      }

      _Block_object_dispose(&v119, 8);

      _Block_object_dispose(&v125, 8);
      v5 = v79;
    }

    if ([(SCROBrailleDisplayInput *)self->_input currentHIDCommand])
    {
      if ([(SCROBrailleDisplay *)self _isMemorizingKeys])
      {
        v86 = objc_alloc_init(SCROBrailleKey);
        [(SCROBrailleKey *)v86 addKeyMask:[(SCROBrailleDisplayInput *)self->_input currentHIDCommand]];
        [(SCROBrailleKey *)v86 setDisplayToken:[(SCROIOElementProtocol *)self->_ioElement identifier]];
        v87 = objc_loadWeakRetained(&self->_delegate);
        [v87 brailleDisplay:self memorizedKey:v86];

        [(SCROBrailleDisplay *)self _stopMemorization];
      }

      else
      {
        if (!v5)
        {
          v5 = [MEMORY[0x277CBEB18] array];
        }

        v88 = [(SCROBrailleDisplayInput *)self->_input currentHIDCommand];
        v89 = [(SCROIOElementProtocol *)self->_ioElement identifier];
        v90 = objc_alloc_init(SCROBrailleKey);
        [(SCROBrailleKey *)v90 addKeyMask:v88];
        [(SCROBrailleKey *)v90 setDisplayToken:v89];
        [v5 addObject:v90];

        v5 = v5;
        [(SCROBrailleDisplayInput *)self->_input setCurrentHIDCommand:0];
      }
    }

    if (++v9 >= [(NSMutableArray *)self->_keyEventsQueue count])
    {
      goto LABEL_189;
    }
  }

LABEL_189:
  if ([v109 count])
  {
    v91 = objc_loadWeakRetained(&self->_delegate);
    [v91 brailleDisplayHadUserInteraction:self];
  }

  [(NSMutableArray *)self->_keyEventsQueue removeObjectsAtIndexes:v109];
  if (([v5 count] != 0) | v107 & 1)
  {
    if ([(SCROBrailleLine *)self->_brailleLine hasEdits])
    {
      [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
    }

    v92 = objc_loadWeakRetained(&self->_delegate);
    [v92 brailleDisplay:self pressedKeys:v5];
  }
}

- (void)_autoAdvancePanHandler:(id)a3
{
  v6 = a3;
  if ([v6 type] == 18)
  {
    [(NSLock *)self->_contentLock lock];
    v4 = [(SCROBrailleLine *)self->_brailleLine canPanRight];
    [(NSLock *)self->_contentLock unlock];
    v5 = @"@NO";
    if (v4)
    {
      v5 = @"YES";
    }

    NSLog(&cfstr_AutoadvancePan.isa, v5);
    if (v4 || ![(SCROBrailleLine *)self->_brailleLine displayMode])
    {
      [(SCROBrailleDisplay *)self _panHandler:v6];
    }
  }
}

- (void)_panHandler:(id)a3
{
  v14 = a3;
  v4 = [v14 type];
  [(NSLock *)self->_contentLock lock];
  v5 = 0;
  v6 = 0;
  if (v4 > 18)
  {
    if (v4 == 19)
    {
      if (![(SCROBrailleLine *)self->_brailleLine panBeginning])
      {
LABEL_14:
        v8 = [(SCROBrailleLine *)self->_brailleLine appToken];
        v9 = [(SCROBrailleLine *)self->_brailleLine firstToken];
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 0;
      if (v4 != 20)
      {
        goto LABEL_16;
      }

      if (![(SCROBrailleLine *)self->_brailleLine panEnd])
      {
        goto LABEL_5;
      }
    }

LABEL_13:
    v5 = 0;
    v7 = 0;
    v6 = 1;
    goto LABEL_16;
  }

  if (v4 == 17)
  {
    if (![(SCROBrailleLine *)self->_brailleLine panLeft])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = 0;
  if (v4 != 18)
  {
    goto LABEL_16;
  }

  if ([(SCROBrailleLine *)self->_brailleLine panRight])
  {
    goto LABEL_13;
  }

LABEL_5:
  v8 = [(SCROBrailleLine *)self->_brailleLine appToken];
  v9 = [(SCROBrailleLine *)self->_brailleLine lastToken];
LABEL_15:
  v7 = v9;
  v6 = 0;
  v5 = v8;
LABEL_16:
  [(NSLock *)self->_contentLock unlock];
  if (v6)
  {
    self->_needsPanUpdating = 1;
    [(SCROBrailleDisplay *)self _updateDisplay];
  }

  if ([(SCROBrailleDisplay *)self inputAllowed])
  {
    if ([(SCROBrailleLine *)self->_brailleLine hasEdits])
    {
      [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
    }

    if (v4 == 18)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROBrailleDisplay lineOffset](self, "lineOffset")}];
      [WeakRetained brailleDisplay:self didPanRight:v11 elementToken:v12 appToken:v5 lineOffset:v13];
    }

    else
    {
      if (v4 != 17)
      {
        goto LABEL_26;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROBrailleDisplay lineOffset](self, "lineOffset")}];
      [WeakRetained brailleDisplay:self didPanLeft:v11 elementToken:v12 appToken:v5 lineOffset:v13];
    }
  }

LABEL_26:
}

- (BOOL)_hasPressedBrailleKeys
{
  if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]|| [(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
  {
    return 1;
  }

  v4 = [(SCROBrailleDisplayInput *)self->_input currentBrailleModifiers];
  return v4 != *MEMORY[0x277CF3390];
}

- (BOOL)_hasBrailleChord
{
  v3 = [(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation];
  if (v3)
  {
    LOBYTE(v3) = [(SCROBrailleDisplayInput *)self->_input currentBrailleChord]!= 0;
  }

  return v3;
}

- (id)keyArrayForBrailleStringWithCurrentModifiers:(id)a3
{
  v4 = a3;
  [(SCROBrailleDisplay *)self isInputContracted];
  v5 = self->_persistentKeyModifiers | [(SCROBrailleDisplayInput *)self->_input currentBrailleModifiers];
  v6 = *MEMORY[0x277CF3390];
  *MEMORY[0x277CF33A8];
  [(SCROBrailleDisplay *)self isInputEightDot];
  v7 = BRLTModeForFlags();
  if ([(SCROBrailleLine *)self->_brailleLine isSingleLetterInputOn])
  {
    v7 = 2;
  }

  v8 = +[SCROBrailleTranslationManager inputManager];
  v9 = [v8 textForPrintBraille:v4 language:0 mode:v7 locations:0];

  if ([v9 length] >= 2)
  {
    v10 = [v9 substringToIndex:1];

    v9 = v10;
  }

  v11 = [(SCROBrailleDisplay *)self newBrailleKeyboardKeyForText:v9 modifiers:v5];
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v11, 0}];

  return v12;
}

- (id)brailleInputManager
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained brailleInputManager];

  return v3;
}

- (void)handleCommandPanLeftForDispatcher:(id)a3
{
  v24 = a3;
  [(NSLock *)self->_contentLock lock];
  if ([(SCROBrailleLine *)self->_brailleLine panLeft])
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = [(SCROBrailleLine *)self->_brailleLine firstToken];
    v4 = [(SCROBrailleLine *)self->_brailleLine appToken];
    v6 = 0;
    v5 = v7;
  }

  [(NSLock *)self->_contentLock unlock];
  if (v6)
  {
    self->_needsPanUpdating = 1;
    [(SCROBrailleDisplay *)self _updateDisplay];
  }

  else if ([(SCROBrailleLine *)self->_brailleLine hasEdits])
  {
    [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROBrailleDisplay lineOffset](self, "lineOffset")}];
  [WeakRetained brailleDisplay:self didPanLeft:v9 elementToken:v10 appToken:v4 lineOffset:v11];

  input = self->_input;
  v13 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v14 = v13;
  Current = CFAbsoluteTimeGetCurrent();
  v16 = +[SCROSharedInputProperties sharedInstance];
  [v16 lastBrailleChordPosted];
  v18 = Current - v17;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v19 * 0.6 + v18 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v21 = fmin(v20 * 3.5, 10.0);
  v22 = self->_input;

  [(SCROBrailleDisplayInput *)v22 setBrailleTranslationTimeout:v21];
  v23 = +[SCROSharedInputProperties sharedInstance];
  [v23 setLastBrailleChordPosted:Current];
}

- (void)handleCommandPanRightForDispatcher:(id)a3
{
  v24 = a3;
  [(NSLock *)self->_contentLock lock];
  if ([(SCROBrailleLine *)self->_brailleLine panRight])
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = [(SCROBrailleLine *)self->_brailleLine firstToken];
    v4 = [(SCROBrailleLine *)self->_brailleLine appToken];
    v6 = 0;
    v5 = v7;
  }

  [(NSLock *)self->_contentLock unlock];
  if (v6)
  {
    self->_needsPanUpdating = 1;
    [(SCROBrailleDisplay *)self _updateDisplay];
  }

  else if ([(SCROBrailleLine *)self->_brailleLine hasEdits])
  {
    [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROBrailleDisplay lineOffset](self, "lineOffset")}];
  [WeakRetained brailleDisplay:self didPanRight:v9 elementToken:v10 appToken:v4 lineOffset:v11];

  input = self->_input;
  v13 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v14 = v13;
  Current = CFAbsoluteTimeGetCurrent();
  v16 = +[SCROSharedInputProperties sharedInstance];
  [v16 lastBrailleChordPosted];
  v18 = Current - v17;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v19 * 0.6 + v18 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v21 = fmin(v20 * 3.5, 10.0);
  v22 = self->_input;

  [(SCROBrailleDisplayInput *)v22 setBrailleTranslationTimeout:v21];
  v23 = +[SCROSharedInputProperties sharedInstance];
  [v23 setLastBrailleChordPosted:Current];
}

- (void)handleCommandMoveLeftForDispatcher:(id)a3
{
  if (![(SCROBrailleLine *)self->_brailleLine moveCursorLeft])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playBorderHitSoundForBrailleDisplay:self];
  }

  input = self->_input;
  v6 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v16 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = +[SCROSharedInputProperties sharedInstance];
  [v8 lastBrailleChordPosted];
  v10 = Current - v9;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v11 * 0.6 + v10 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v13 = fmin(v12 * 3.5, 10.0);
  v14 = self->_input;

  [(SCROBrailleDisplayInput *)v14 setBrailleTranslationTimeout:v13];
  v15 = +[SCROSharedInputProperties sharedInstance];
  [v15 setLastBrailleChordPosted:Current];
}

- (void)handleCommandMoveRightForDispatcher:(id)a3
{
  if (![(SCROBrailleLine *)self->_brailleLine moveCursorRight])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playBorderHitSoundForBrailleDisplay:self];
  }

  input = self->_input;
  v6 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v16 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = +[SCROSharedInputProperties sharedInstance];
  [v8 lastBrailleChordPosted];
  v10 = Current - v9;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v11 * 0.6 + v10 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v13 = fmin(v12 * 3.5, 10.0);
  v14 = self->_input;

  [(SCROBrailleDisplayInput *)v14 setBrailleTranslationTimeout:v13];
  v15 = +[SCROSharedInputProperties sharedInstance];
  [v15 setLastBrailleChordPosted:Current];
}

- (void)handleCommandRouterKeyEvent:(id)a3 forDispatcher:(id)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v6 = [v5 getRouterIndex:&v45 token:&v44 location:&v43 appToken:&v42];
  v7 = v42;
  if (!v6)
  {
    goto LABEL_20;
  }

  if ([v5 isSecondaryRouter])
  {
    v40 = 0;
    v41 = 0;
    LOBYTE(v39) = [(SCROBrailleLine *)self->_brailleLine selectUpToRouterIndex:v45 selectionBegin:&v41 selectionEnd:&v40];
    [(SCROBrailleDisplay *)self _forwardToScreenReader:v5 routerIndex:v45 token:v44 BeginLocation:v41 endLocation:v40 appToken:v7 didPerform:v39];
    goto LABEL_22;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = [(SCROBrailleDisplay *)self lastRouterIndex];
  v10 = v45;
  if (v9 == v45)
  {
    [(SCROBrailleDisplay *)self lastRouterPressTime];
    v12 = Current - v11;
    [(SCROBrailleDisplay *)self doubleRouterClickTimeout];
    if (v12 < v13)
    {
      v14 = [(SCROBrailleDisplay *)self routerClicks]+ 1;
      goto LABEL_9;
    }

    v10 = v45;
  }

  [(SCROBrailleDisplay *)self setLastRouterIndex:v10];
  v14 = 1;
LABEL_9:
  [(SCROBrailleDisplay *)self setRouterClicks:v14];
  [(SCROBrailleDisplay *)self setLastRouterPressTime:Current];
  if ([(SCROBrailleDisplay *)self routerClicks]< 2)
  {
    LOBYTE(v41) = 0;
    v18 = [(SCROBrailleLine *)self->_brailleLine moveCursorToRouterIndex:v45 forwardToScreenReader:&v41 updateRouterLocation:&v43];
    if (v41 == 1)
    {
      [v5 setRouterIndex:v45 token:v44 location:v43 appToken:v7];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v46 = v5;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [WeakRetained brailleDisplay:self pressedKeys:v20];

LABEL_21:
      goto LABEL_22;
    }

    if (v18)
    {
      goto LABEL_22;
    }

LABEL_20:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playCommandNotSupportedSoundForBrailleDisplay:self];
    goto LABEL_21;
  }

  v40 = -1;
  v41 = -1;
  v15 = [(SCROBrailleDisplay *)self routerClicks];
  brailleLine = self->_brailleLine;
  if (v15 != 2)
  {
    if (![(SCROBrailleLine *)brailleLine selectEntireLine:&v41 selectionEnd:&v40])
    {
      goto LABEL_12;
    }

LABEL_16:
    v21 = [v5 copy];
    [v21 setRouterIndex:v45 token:v44 location:v41 appToken:v7];
    [v21 setIsSecondaryRouter:0];
    v22 = [v5 copy];
    [v22 setRouterIndex:v45 token:v44 location:v40 appToken:v7];
    [v22 setIsSecondaryRouter:1];
    NSLog(&cfstr_AquiObrailledi.isa, v41, v40);
    v47[0] = v21;
    v47[1] = v22;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];

    goto LABEL_17;
  }

  if ([(SCROBrailleLine *)brailleLine selectContiguousBrailleRange:v45 selectionBegin:&v41 selectionEnd:&v40])
  {
    goto LABEL_16;
  }

LABEL_12:
  v17 = 0;
LABEL_17:
  v23 = [v17 count];
  v24 = objc_loadWeakRetained(&self->_delegate);
  v25 = v24;
  if (v23)
  {
    [v24 brailleDisplay:self pressedKeys:v17];
  }

  else
  {
    [v24 playCommandNotSupportedSoundForBrailleDisplay:self];
  }

LABEL_22:
  input = self->_input;
  v27 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v28 = v27;
  v29 = CFAbsoluteTimeGetCurrent();
  v30 = +[SCROSharedInputProperties sharedInstance];
  [v30 lastBrailleChordPosted];
  v32 = v29 - v31;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v33 * 0.6 + v32 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v35 = fmin(v34 * 3.5, 10.0);
  v36 = self->_input;

  [(SCROBrailleDisplayInput *)v36 setBrailleTranslationTimeout:v35];
  v37 = +[SCROSharedInputProperties sharedInstance];
  [v37 setLastBrailleChordPosted:v29];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_forwardToScreenReader:(id)a3 routerIndex:(int64_t)a4 token:(int64_t)a5 BeginLocation:(int64_t)a6 endLocation:(int64_t)a7 appToken:(id)a8 didPerform:(BOOL)a9
{
  v25[1] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a8;
  if (a9)
  {
    v17 = [v15 copy];
    [v17 setRouterIndex:a4 token:a5 location:a6 appToken:v16];
    [v17 setIsSecondaryRouter:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v25[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v19];

    v20 = [v15 copy];
    [v20 setRouterIndex:a4 token:a5 location:a7 appToken:v16];
    [v20 setIsSecondaryRouter:1];
    v21 = objc_loadWeakRetained(&self->_delegate);
    v24 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    [v21 brailleDisplay:self pressedKeys:v22];
  }

  else
  {
    v17 = objc_loadWeakRetained(&self->_delegate);
    [v17 playCommandNotSupportedSoundForBrailleDisplay:self];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)handleCommandDeleteKeyEvent:(id)a3 forDispatcher:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(SCROBrailleLine *)self->_brailleLine deleteAtCursor])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v7];
  }

  input = self->_input;
  v9 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = v9;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = +[SCROSharedInputProperties sharedInstance];
  [v12 lastBrailleChordPosted];
  v14 = Current - v13;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v15 * 0.6 + v14 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v17 = fmin(v16 * 3.5, 10.0);
  v18 = self->_input;

  [(SCROBrailleDisplayInput *)v18 setBrailleTranslationTimeout:v17];
  v19 = +[SCROSharedInputProperties sharedInstance];
  [v19 setLastBrailleChordPosted:Current];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleCommandForwardDeleteKeyEvent:(id)a3 forDispatcher:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![(SCROBrailleLine *)self->_brailleLine forwardDeleteAtCursor])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v7];
  }

  input = self->_input;
  v9 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = v9;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = +[SCROSharedInputProperties sharedInstance];
  [v12 lastBrailleChordPosted];
  v14 = Current - v13;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v15 * 0.6 + v14 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v17 = fmin(v16 * 3.5, 10.0);
  v18 = self->_input;

  [(SCROBrailleDisplayInput *)v18 setBrailleTranslationTimeout:v17];
  v19 = +[SCROSharedInputProperties sharedInstance];
  [v19 setLastBrailleChordPosted:Current];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleCommandEscapeKeyEvent:(id)a3 forDispatcher:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CF3318] sharedModel];
  v7 = [v6 handleEscape];

  if ((v7 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v9];
  }

  input = self->_input;
  v11 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v12 = v11;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = +[SCROSharedInputProperties sharedInstance];
  [v14 lastBrailleChordPosted];
  v16 = Current - v15;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v17 * 0.6 + v16 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v19 = fmin(v18 * 3.5, 10.0);
  v20 = self->_input;

  [(SCROBrailleDisplayInput *)v20 setBrailleTranslationTimeout:v19];
  v21 = +[SCROSharedInputProperties sharedInstance];
  [v21 setLastBrailleChordPosted:Current];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleCommandReturnBrailleEvent:(id)a3 forDispatcher:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CF3318] sharedModel];
  v7 = [v6 handleReturn];

  if ((v7 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23[0] = v5;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v9];
  }

  input = self->_input;
  v11 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v12 = v11;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = +[SCROSharedInputProperties sharedInstance];
  [v14 lastBrailleChordPosted];
  v16 = Current - v15;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v17 * 0.6 + v16 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v19 = fmin(v18 * 3.5, 10.0);
  v20 = self->_input;

  [(SCROBrailleDisplayInput *)v20 setBrailleTranslationTimeout:v19];
  v21 = +[SCROSharedInputProperties sharedInstance];
  [v21 setLastBrailleChordPosted:Current];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleCommandWordDescriptionEvent:(id)a3 forDispatcher:(id)a4
{
  if (SCROJapaneseBrailleSelected())
  {
    v5 = [MEMORY[0x277CF3318] sharedModel];
    [v5 handleWordDescriptionCommand];
  }

  input = self->_input;
  v7 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v17 = v7;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = +[SCROSharedInputProperties sharedInstance];
  [v9 lastBrailleChordPosted];
  v11 = Current - v10;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v12 * 0.6 + v11 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v14 = fmin(v13 * 3.5, 10.0);
  v15 = self->_input;

  [(SCROBrailleDisplayInput *)v15 setBrailleTranslationTimeout:v14];
  v16 = +[SCROSharedInputProperties sharedInstance];
  [v16 setLastBrailleChordPosted:Current];
}

- (void)handleCommandTranslateForDispatcher:(id)a3
{
  [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
  input = self->_input;
  v5 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v15 = v5;
  Current = CFAbsoluteTimeGetCurrent();
  v7 = +[SCROSharedInputProperties sharedInstance];
  [v7 lastBrailleChordPosted];
  v9 = Current - v8;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v10 * 0.6 + v9 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v12 = fmin(v11 * 3.5, 10.0);
  v13 = self->_input;

  [(SCROBrailleDisplayInput *)v13 setBrailleTranslationTimeout:v12];
  v14 = +[SCROSharedInputProperties sharedInstance];
  [v14 setLastBrailleChordPosted:Current];
}

- (void)handleCommandToggleContractedBrailleEvent:(id)a3 forDispatcher:(id)a4
{
  value = a3;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    CFArrayAppendValue(Mutable, value);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained brailleDisplay:self pressedKeys:v6];

    CFRelease(v6);
  }

  input = self->_input;
  v9 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = v9;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = +[SCROSharedInputProperties sharedInstance];
  [v12 lastBrailleChordPosted];
  v14 = Current - v13;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v15 * 0.6 + v14 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v17 = fmin(v16 * 3.5, 10.0);
  v18 = self->_input;

  [(SCROBrailleDisplayInput *)v18 setBrailleTranslationTimeout:v17];
  v19 = +[SCROSharedInputProperties sharedInstance];
  [v19 setLastBrailleChordPosted:Current];
}

- (void)handleCommandToggleEightDotBrailleEvent:(id)a3 forDispatcher:(id)a4
{
  value = a3;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v6 = Mutable;
    CFArrayAppendValue(Mutable, value);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained brailleDisplay:self pressedKeys:v6];

    CFRelease(v6);
  }

  input = self->_input;
  v9 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = v9;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = +[SCROSharedInputProperties sharedInstance];
  [v12 lastBrailleChordPosted];
  v14 = Current - v13;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v15 * 0.6 + v14 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v17 = fmin(v16 * 3.5, 10.0);
  v18 = self->_input;

  [(SCROBrailleDisplayInput *)v18 setBrailleTranslationTimeout:v17];
  v19 = +[SCROSharedInputProperties sharedInstance];
  [v19 setLastBrailleChordPosted:Current];
}

- (void)handleUnsupportedKeyEvent:(id)a3 forDispatcher:(id)a4
{
  input = self->_input;
  v6 = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v16 = v6;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = +[SCROSharedInputProperties sharedInstance];
  [v8 lastBrailleChordPosted];
  v10 = Current - v9;

  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  [(SCROBrailleDisplayInput *)self->_input setBrailleCharExponentialMovingAverage:v11 * 0.6 + v10 * 0.4];
  [(SCROBrailleDisplayInput *)self->_input brailleCharExponentialMovingAverage];
  v13 = fmin(v12 * 3.5, 10.0);
  v14 = self->_input;

  [(SCROBrailleDisplayInput *)v14 setBrailleTranslationTimeout:v13];
  v15 = +[SCROSharedInputProperties sharedInstance];
  [v15 setLastBrailleChordPosted:Current];
}

- (id)_newBrailleKeyForCurrentBrailleChord
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SCROBrailleKey);
  [(SCROBrailleKey *)v3 setDisplayToken:[(SCROIOElementProtocol *)self->_ioElement identifier]];
  [(SCROBrailleKey *)v3 setDisplayMode:[(SCROBrailleLine *)self->_brailleLine displayMode]];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(SCROBrailleDisplayInput *)self->_input currentBrailleChord];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[SCROBrailleKey addKeyMask:](v3, "addKeyMask:", [*(*(&v11 + 1) + 8 * v8++) unsignedIntValue]);
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar])
  {
    [(SCROBrailleKey *)v3 addSpacebarKeyMask];
  }

  [(SCROBrailleKey *)v3 addModifierMask:[(SCROBrailleDisplayInput *)self->_input currentBrailleModifiers]];
  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_newBrailleKeyForCurrentKeyChord
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SCROBrailleKey);
  [(SCROBrailleKey *)v3 setDisplayToken:[(SCROIOElementProtocol *)self->_ioElement identifier]];
  [(SCROBrailleKey *)v3 setDisplayMode:[(SCROBrailleLine *)self->_brailleLine displayMode]];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(SCROBrailleDisplayInput *)self->_input currentChord];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) unsignedIntValue];
        if ((v9 & 0xF) != 0 && (v9 & 0xF) != 3)
        {
          [(SCROBrailleKey *)v3 addKeyMask:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([(SCROBrailleDisplayInput *)self->_input routerEvent])
  {
    v11 = [(SCROBrailleDisplayInput *)self->_input routerEvent];
    if ((v11 & 0xF) == 0)
    {
      v14 = 0;
      [(NSLock *)self->_contentLock lock];
      if ([(SCROBrailleLine *)self->_brailleLine getStatusRouterIndex:&v14 forRawIndex:BYTE1(v11)])
      {
        v11 |= 3u;
      }

      [(NSLock *)self->_contentLock unlock];
    }

    [(SCROBrailleKey *)v3 addKeyMask:v11 & 0xFFFF00FF];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)brailleDriverDidReceiveInput
{
  runLoop = self->_runLoop;
  v4 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SCROBrailleDisplay_brailleDriverDidReceiveInput__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  CFRunLoopPerformBlock(runLoop, v4, block);
  CFRunLoopWakeUp(self->_runLoop);
}

- (void)_inputEventHandler
{
  [(NSLock *)self->_contentLock lock];
  v23 = [(SCROBrailleDriverProtocol *)self->_brailleDriver getInputEvents];
  [(NSLock *)self->_contentLock unlock];
  if ([v23 count])
  {
    [(SCROBrailleDisplay *)self _processKeyEvents:v23];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (![(SCROBrailleDisplayInput *)self->_input currentChord]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChord]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar])
  {
    v4 = [(SCROBrailleDisplayInput *)self->_input currentBrailleModifiers];
    if (v4 == *MEMORY[0x277CF3390])
    {
      [(SCROBrailleDisplayInput *)self->_input quietSince];
      if (Current - v5 < 2.0 || [(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
      {
        inputEventTimer = self->_inputEventTimer;
        v7 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(inputEventTimer, v7 + 0.01);
      }

      v8 = [(SCROBrailleDisplayInput *)self->_input isQuiet];
      input = self->_input;
      if (!v8)
      {
        [(SCROBrailleDisplayInput *)input setQuietSince:Current];
        input = self->_input;
      }

      [(SCROBrailleDisplayInput *)input setIsQuiet:1];
      if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
      {
        [(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediatelyTimeout];
        if (Current > v10)
        {
          [(SCROBrailleDisplayInput *)self->_input setMemorizeNextKeyImmediately:0];
        }
      }

      goto LABEL_33;
    }
  }

  v11 = self->_inputEventTimer;
  v12 = CFAbsoluteTimeGetCurrent();
  CFRunLoopTimerSetNextFireDate(v11, v12 + 0.01);
  if ([(SCROBrailleDisplayInput *)self->_input isQuiet])
  {
    [(SCROBrailleDisplayInput *)self->_input setBusySince:Current];
  }

  [(SCROBrailleDisplayInput *)self->_input setIsQuiet:0];
  [(SCROBrailleDisplayInput *)self->_input busySince];
  if (Current - v13 > 60.0)
  {
    CFSetRemoveAllValues([(SCROBrailleDisplayInput *)self->_input downKeys]);
    if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
    {
      if ([(SCROBrailleDisplay *)self _hasKeyChord])
      {
        if (![(SCROBrailleDisplay *)self _hasPressedBrailleKeys])
        {
          v14 = [(SCROBrailleDisplay *)self _newBrailleKeyForCurrentKeyChord];
LABEL_24:
          v15 = v14;
LABEL_26:
          if ([(SCROBrailleDisplayInput *)self->_input currentChord])
          {
            CFRelease([(SCROBrailleDisplayInput *)self->_input currentChord]);
            [(SCROBrailleDisplayInput *)self->_input setCurrentChord:0];
          }

          [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
          [(SCROBrailleDisplayInput *)self->_input setNewDown:0];
          [(SCROBrailleDisplayInput *)self->_input setQuietSince:-3061152000.0];
          [(SCROBrailleDisplayInput *)self->_input setIsQuiet:1];
          [(SCROBrailleDisplay *)self _stopMemorization];
          [(SCROBrailleDisplayInput *)self->_input setSkipBrailleKeyboardKeyTranslation:0];
          if (v15)
          {
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            [WeakRetained brailleDisplay:self memorizedKey:v15];
          }

          CFSetRemoveAllValues([(SCROBrailleDisplayInput *)self->_input downBrailleDots]);
          if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
          {
            CFRelease([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]);
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChord:0];
          }

          [(SCROBrailleDisplayInput *)self->_input setSpacebarIsDown:0];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:0];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:0];
          [(SCROBrailleDisplayInput *)self->_input setSkipBrailleKeyboardKeyTranslation:0];
          v17 = *MEMORY[0x277CF3390];
          [(SCROBrailleDisplayInput *)self->_input setDownBrailleModifiers:v17];
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleModifiers:v17];

          goto LABEL_33;
        }
      }

      else if ([(SCROBrailleDisplay *)self _hasBrailleChord])
      {
        v14 = [(SCROBrailleDisplay *)self _newBrailleKeyForCurrentBrailleChord];
        goto LABEL_24;
      }
    }

    v15 = 0;
    goto LABEL_26;
  }

LABEL_33:
  if (![(SCROBrailleDisplayInput *)self->_input currentBrailleChord]&& ![(SCROBrailleDisplayInput *)self->_input spacebarIsDown])
  {
    if ([(SCROBrailleLine *)self->_brailleLine hasEdits])
    {
      if (self->_automaticBrailleTranslationEnabled)
      {
        v18 = +[SCROSharedInputProperties sharedInstance];
        [v18 lastBrailleChordPosted];
        v20 = Current - v19;
        [(SCROBrailleDisplayInput *)self->_input brailleTranslationTimeout];
        v22 = v21;

        if (v20 > v22)
        {
          [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
        }
      }
    }
  }
}

- (void)_blinkerEventHandler
{
  if (self->_isValid)
  {
    [(NSLock *)self->_contentLock lock];
    if (!self->_shouldBatchUpdates || ![(SCROBrailleLine *)self->_brailleLine needsDisplayFlush])
    {
      [(SCROBrailleLine *)self->_brailleLine blinker];
    }

    [(NSLock *)self->_contentLock unlock];
  }
}

- (void)_delayedUnloadNotification
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:24 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)_delayedConfigurationChangeNotification
{
  eventDispatcher = self->_eventDispatcher;
  v3 = [SCROBrailleEvent eventWithType:26 data:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v3];
}

- (void)_sleepNotification:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:@"SCROBrailleDriverProtocolSleepNotificationIsSleepingKey"];
  [(SCROBrailleDisplay *)self performSelector:sel__delayedSleepNotification_ withObject:v4 afterDelay:0.0];
}

- (void)_delayedSleepNotification:(id)a3
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:25 data:a3];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)didChangeBrailleString:(id)a3 brailleSelection:(_NSRange)a4 brailleUIOptions:(id)a5
{
  length = a4.length;
  location = a4.location;
  eventDispatcher = self->_eventDispatcher;
  v9 = MEMORY[0x277CF3328];
  v10 = a5;
  v11 = a3;
  v14 = [[v9 alloc] initWithUnicode:v11];

  v12 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  v13 = [SCROBrailleEvent eventWithType:46 data:v14 data2:v12 data3:v10];

  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v13];
}

- (void)_brailleDisplayStringDidChangeHandler:(id)a3 brailleSelection:(id)a4 brailleUIOptions:(id)a5
{
  brailleLine = self->_brailleLine;
  v9 = a5;
  v10 = a3;
  v11 = [a4 rangeValue];
  [(SCROBrailleLine *)brailleLine brailleDisplayStringDidChange:v10 brailleSelection:v11 brailleUIOptions:v12 modifiers:v9, 0];

  if (v9)
  {
    v14 = [(SCROBrailleLine *)self->_brailleLine newLineDescriptor];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained brailleDisplay:self didDisplay:v14];
  }
}

- (void)replaceScriptStringRange:(_NSRange)a3 withScriptString:(id)a4 cursorLocation:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v9 = [a4 string];
  [(SCROBrailleDisplay *)self _replaceRange:location withString:length cursor:v9, a5];
}

- (void)scriptSelectionDidChange:(_NSRange)a3
{
  location = a3.location;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self didMoveSelection:location];
}

- (void)didInsertScriptString:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  input = self->_input;
  v5 = a3;
  v6 = [(SCROBrailleDisplay *)self newBrailleKeyboardKeyForText:v5 modifiers:self->_persistentKeyModifiers | [(SCROBrailleDisplayInput *)input currentBrailleModifiers]];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [WeakRetained brailleDisplay:self pressedKeys:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)brailleDisplayInsertedCharacter:(id)a3 modifiers:(id)a4
{
  v10 = 0;
  v6 = a4;
  v7 = [a3 unicode];
  v8 = [SCROBrailleTranslationUtility spokenStringForInsertedBrailleString:v7 speakLiterally:&v10 modifiers:v6];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self insertedUntranslatedText:v8 speakLiterally:v10];
}

- (void)brailleDisplayDeletedCharacter:(id)a3
{
  v7 = 0;
  v4 = [a3 unicode];
  v5 = [SCROBrailleTranslationUtility spokenStringForDeletedBrailleString:v4 speakLiterally:&v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self deletedUntranslatedText:v5 speakLiterally:v7];
}

- (void)setInputContractionMode:(int)a3
{
  v4 = a3 == 0;
  if (a3)
  {
    v5 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g1";
  }

  else
  {
    v5 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_inputTableIdentifier, v5);
  self->_isInputContracted = v4;
  self->_isInputEightDot = 0;
  v7 = +[SCROBrailleTranslationManager inputManager];
  v6 = [(NSString *)self->_inputTableIdentifier brl_languageAndVariant];
  [v7 setDefaultLanguage:v6];
}

- (void)setOutputContractionMode:(int)a3
{
  if (a3)
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g1";
  }

  else
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_outputTableIdentifier, v4);
  v6 = +[SCROBrailleTranslationManager sharedManager];
  v5 = [(NSString *)self->_outputTableIdentifier brl_languageAndVariant];
  [v6 setDefaultLanguage:v5];
}

- (void)setInputShowEightDot:(BOOL)a3
{
  if (a3)
  {
    v5 = @"com.apple.scrod.braille.table.duxbury.eng-8dot";
  }

  else
  {
    v5 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_inputTableIdentifier, v5);
  self->_isInputEightDot = a3;
  self->_isInputContracted = !a3;
  v7 = +[SCROBrailleTranslationManager inputManager];
  v6 = [(NSString *)self->_inputTableIdentifier brl_languageAndVariant];
  [v7 setDefaultLanguage:v6];
}

- (void)setOutputShowEightDot:(BOOL)a3
{
  if (a3)
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-8dot";
  }

  else
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_outputTableIdentifier, v4);
  v6 = +[SCROBrailleTranslationManager sharedManager];
  v5 = [(NSString *)self->_outputTableIdentifier brl_languageAndVariant];
  [v6 setDefaultLanguage:v5];
}

- (void)_blinkingCursorSetting
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Boolean soft__AXSPrefersNonBlinkingCursorIndicator(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplay.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

@end