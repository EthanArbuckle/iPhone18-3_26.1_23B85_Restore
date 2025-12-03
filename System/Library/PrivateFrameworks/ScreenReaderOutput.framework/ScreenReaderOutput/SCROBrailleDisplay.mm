@interface SCROBrailleDisplay
+ (id)displayWithIOElement:(id)element driverIdentifier:(id)identifier delegate:(id)delegate;
- (BOOL)_currentChordShouldExecuteEvenDuringTyping;
- (BOOL)_hasBrailleChord;
- (BOOL)_hasPressedBrailleKeys;
- (BOOL)isLoaded;
- (BOOL)isMultiLine;
- (BOOL)isPlanar;
- (BOOL)isValid;
- (id)_initWithDriver:(id)driver driverIdentifier:(id)identifier ioElement:(id)element delegate:(id)delegate;
- (id)_newBrailleKeyForCurrentBrailleChord;
- (id)_newBrailleKeyForCurrentKeyChord;
- (id)_statusStringWithDictionary:(id)dictionary;
- (id)aggregatedStatus;
- (id)brailleInputManager;
- (id)canvasDescriptor;
- (id)configuration;
- (id)driverIdentifier;
- (id)driverModelIdentifier;
- (id)keyArrayForBrailleStringWithCurrentModifiers:(id)modifiers;
- (id)lineDescriptor;
- (id)realStatus;
- (id)virtualStatus;
- (int)virtualStatusAlignment;
- (int64_t)mainSize;
- (int64_t)masterStatusCellIndex;
- (int64_t)statusSize;
- (int64_t)tokenForRouterIndex:(int64_t)index location:(int64_t *)location appToken:(id *)token;
- (unsigned)_blinkingCursorSetting;
- (void)_aggregatedStatusHandler:(id)handler;
- (void)_autoAdvancePanHandler:(id)handler;
- (void)_beginAutoAdvanceIfEnabled;
- (void)_blinkerEventHandler;
- (void)_blinkingCursorSetting;
- (void)_brailleDisplayStringDidChangeHandler:(id)handler brailleSelection:(id)selection brailleUIOptions:(id)options;
- (void)_bulkStatusAttributesHandler:(id)handler;
- (void)_configurationChangeHandler;
- (void)_delayedConfigurationChangeNotification;
- (void)_delayedSleepNotification:(id)notification;
- (void)_delayedUnloadNotification;
- (void)_forwardToScreenReader:(id)reader routerIndex:(int64_t)index token:(int64_t)token BeginLocation:(int64_t)location endLocation:(int64_t)endLocation appToken:(id)appToken didPerform:(BOOL)perform;
- (void)_inputEventHandler;
- (void)_panHandler:(id)handler;
- (void)_processKeyEvents:(id)events;
- (void)_replaceRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor;
- (void)_runThread;
- (void)_setBatchUpdates:(id)updates;
- (void)_setBrailleFormatter:(id)formatter;
- (void)_setBrailleFormatterHandler:(id)handler;
- (void)_setDelegateWantsDisplayCallbackHandler:(id)handler;
- (void)_setPlanarDataHandler:(id)handler;
- (void)_setTactileGraphicsImageDataHandler:(id)handler;
- (void)_simulateKeypressHandler:(id)handler;
- (void)_singleLetterInputHandler:(id)handler;
- (void)_sleepNotification:(id)notification;
- (void)_startEditingText;
- (void)_statusDisplayHandler:(id)handler;
- (void)_textSearchModeHandler:(id)handler;
- (void)_translateBrailleToClipboard;
- (void)_unloadHandler;
- (void)_unpauseInputAndProcessKeyEvents;
- (void)_updateDisplay;
- (void)beginUpdates;
- (void)brailleDisplayDeletedCharacter:(id)character;
- (void)brailleDisplayInsertedCharacter:(id)character modifiers:(id)modifiers;
- (void)brailleDriverDidReceiveInput;
- (void)dealloc;
- (void)didChangeBrailleString:(id)string brailleSelection:(_NSRange)selection brailleUIOptions:(id)options;
- (void)didInsertScriptString:(id)string;
- (void)endUpdates;
- (void)handleCommandDeleteKeyEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandEscapeKeyEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandForwardDeleteKeyEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandMoveLeftForDispatcher:(id)dispatcher;
- (void)handleCommandMoveRightForDispatcher:(id)dispatcher;
- (void)handleCommandPanLeftForDispatcher:(id)dispatcher;
- (void)handleCommandPanRightForDispatcher:(id)dispatcher;
- (void)handleCommandReturnBrailleEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandRouterKeyEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandToggleContractedBrailleEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandToggleEightDotBrailleEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleCommandTranslateForDispatcher:(id)dispatcher;
- (void)handleCommandWordDescriptionEvent:(id)event forDispatcher:(id)dispatcher;
- (void)handleEvent:(id)event;
- (void)handleUnsupportedKeyEvent:(id)event forDispatcher:(id)dispatcher;
- (void)invalidate;
- (void)panBeginning;
- (void)panEnd;
- (void)panLeft;
- (void)panRight;
- (void)planarPanLeft;
- (void)planarPanRight;
- (void)replaceScriptStringRange:(_NSRange)range withScriptString:(id)string cursorLocation:(unint64_t)location;
- (void)requestFlushLine;
- (void)scriptSelectionDidChange:(_NSRange)change;
- (void)setAggregatedStatus:(id)status;
- (void)setAutoAdvanceDuration:(double)duration;
- (void)setAutoAdvanceEnabled:(BOOL)enabled;
- (void)setBlinkingCursorEnabled:(BOOL)enabled;
- (void)setBrailleFormatter:(id)formatter;
- (void)setBrailleKeyDebounceTimeout:(double)timeout;
- (void)setImageData:(id)data;
- (void)setInputAllowed:(BOOL)allowed;
- (void)setInputContractionMode:(int)mode;
- (void)setInputShowEightDot:(BOOL)dot;
- (void)setMasterStatusCellIndex:(int64_t)index;
- (void)setOutputContractionMode:(int)mode;
- (void)setOutputShowEightDot:(BOOL)dot;
- (void)setPlanarData:(id)data;
- (void)simulateKeypress:(id)keypress;
- (void)translateBrailleToClipboard;
- (void)unpauseInputOnBrailleFormatterChange;
- (void)updateBlinkingCursorTimer:(BOOL)timer;
@end

@implementation SCROBrailleDisplay

+ (id)displayWithIOElement:(id)element driverIdentifier:(id)identifier delegate:(id)delegate
{
  elementCopy = element;
  identifierCopy = identifier;
  delegateCopy = delegate;
  v10 = 0;
  if (elementCopy && identifierCopy)
  {
    v11 = [MEMORY[0x277CCA8D8] brailleDriverBundleWithIdentifier:identifierCopy];
    v12 = v11;
    if (v11)
    {
      principalClass = [v11 principalClass];
      if ([SCROBrailleDisplay brailleDriverClassIsValid:principalClass])
      {
        v14 = objc_alloc_init(principalClass);
        v15 = v14;
        if (v14)
        {
          if ([v14 interfaceVersion] == 4)
          {
            v16 = [objc_alloc(objc_opt_class()) _initWithDriver:v15 driverIdentifier:identifierCopy ioElement:elementCopy delegate:delegateCopy];
            v10 = v16;
            if (v16)
            {
              [v16 _delayedDisplayLoad];
            }

            goto LABEL_15;
          }

          NSLog(&cfstr_ErrorInvalidPr.isa, identifierCopy);
        }

        else
        {
          NSLog(&cfstr_ErrorUnableToI.isa, identifierCopy);
        }

        v10 = 0;
LABEL_15:

        goto LABEL_16;
      }

      NSLog(&cfstr_ErrorInvalidPr.isa, identifierCopy);
    }

    else
    {
      NSLog(&cfstr_ErrorCouldNotF.isa, identifierCopy);
    }

    v10 = 0;
LABEL_16:
  }

  return v10;
}

- (id)_initWithDriver:(id)driver driverIdentifier:(id)identifier ioElement:(id)element delegate:(id)delegate
{
  driverCopy = driver;
  identifierCopy = identifier;
  elementCopy = element;
  delegateCopy = delegate;
  v39.receiver = self;
  v39.super_class = SCROBrailleDisplay;
  v15 = [(SCROBrailleDisplay *)&v39 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = 0;
  if (driverCopy && identifierCopy)
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
    objc_storeStrong(&v16->_brailleDriver, driver);
    objc_storeStrong(&v16->_driverIdentifier, identifier);
    objc_storeStrong(&v16->_ioElement, element);
    v29 = objc_storeWeak(&v16->_delegate, delegateCopy);
    newBrailleDisplayCommandDispatcher = [delegateCopy newBrailleDisplayCommandDispatcher];
    commandDispatcher = v16->_commandDispatcher;
    v16->_commandDispatcher = newBrailleDisplayCommandDispatcher;

    [(SCROBrailleDisplayCommandDispatcherProtocol *)v16->_commandDispatcher setDelegate:v16];
    v16->_delegateWantsDisplayCallback = 1;
    v16->_inputAllowed = 1;
    v32 = [[SCROBrailleEventDispatcher alloc] initWithTarget:v16];
    eventDispatcher = v16->_eventDispatcher;
    v16->_eventDispatcher = v32;

    v16->_latinEscapeEnabled = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__unloadNotification_ name:@"SCROBrailleDriverProtocolUnloadNotification" object:v16->_brailleDriver];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v16 selector:sel__configurationChangeNotification_ name:@"SCROBrailleDriverProtocolConfigurationChangeNotification" object:v16->_brailleDriver];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v16 selector:sel__sleepNotification_ name:@"SCROBrailleDriverProtocolSleepNotification" object:v16->_brailleDriver];

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
    _attemptLoad = [(SCROBrailleDisplay *)self _attemptLoad];
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
      v29 = _attemptLoad;
      _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Load driver %{public}@ with element: %{public}@ : result: %d", &v24, 0x1Cu);
    }

    if (_attemptLoad)
    {
      v9 = 1;
      modelIdentifier = [(SCROBrailleDriverProtocol *)self->_brailleDriver modelIdentifier];
      driverModelIdentifier = self->_driverModelIdentifier;
      self->_driverModelIdentifier = modelIdentifier;

      mainSize = [(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize];
      self->_mainSize = mainSize & ~(mainSize >> 63);
      statusSize = [(SCROBrailleDriverProtocol *)self->_brailleDriver statusSize];
      self->_statusSize = statusSize & ~(statusSize >> 63);
      self->_postsKeyboardEvents = [(SCROBrailleDriverProtocol *)self->_brailleDriver postsKeyboardEvents];
      self->_brailleInputMode = [(SCROBrailleDriverProtocol *)self->_brailleDriver brailleInputMode];
      v14 = [[SCROBrailleLine alloc] initWithDriver:self->_brailleDriver mainSize:self->_mainSize statusSize:self->_statusSize];
      brailleLine = self->_brailleLine;
      self->_brailleLine = v14;

      [(SCROBrailleLine *)self->_brailleLine setTranslationDelegate:self];
      self->_runLoop = CFRunLoopGetCurrent();
      [(SCROBrailleDisplay *)self updateBlinkingCursorTimer:[(SCROBrailleDisplay *)self _blinkingCursorSetting]!= 0];
      isInputEnabled = [(SCROBrailleDriverProtocol *)self->_brailleDriver isInputEnabled];
      self->_inputEnabled = isInputEnabled;
      if (isInputEnabled)
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

      _attemptLoad = 1;
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
    _attemptLoad = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  objc_autoreleasePoolPop(v3);
  if (v9)
  {
    v19 = objc_autoreleasePoolPush();
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = WeakRetained;
    if (_attemptLoad)
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
  isDriverLoaded = [(SCROBrailleDriverProtocol *)self->_brailleDriver isDriverLoaded];
  [(NSLock *)self->_contentLock unlock];
  return isDriverLoaded;
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
  newLineDescriptor = [(SCROBrailleLine *)self->_brailleLine newLineDescriptor];
  [(NSLock *)self->_contentLock unlock];

  return newLineDescriptor;
}

- (BOOL)isPlanar
{
  brailleDriver = self->_brailleDriver;
  result = 0;
  if (objc_opt_respondsToSelector())
  {
    canvas = [(SCROBrailleDriverProtocol *)self->_brailleDriver canvas];
    descriptor = [canvas descriptor];
    height = [descriptor height];

    if (height)
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

- (void)setInputAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  [(NSLock *)self->_contentLock lock];
  if (self->_inputAllowed != allowedCopy)
  {
    self->_inputAllowed = allowedCopy;
  }

  contentLock = self->_contentLock;

  [(NSLock *)contentLock unlock];
}

- (void)setAutoAdvanceEnabled:(BOOL)enabled
{
  v5 = @"NO";
  if (enabled)
  {
    v5 = @"YES";
  }

  NSLog(&cfstr_AutoadvanceSet.isa, a2, v5);
  self->_autoAdvanceEnabled = enabled;

  [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
}

- (void)setAutoAdvanceDuration:(double)duration
{
  autoAdvanceDuration = self->_autoAdvanceDuration;
  self->_autoAdvanceDuration = duration;
  if (autoAdvanceDuration != duration)
  {
    NSLog(&cfstr_AutoadvanceSet_0.isa, a2, *&duration);

    [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
  }
}

- (void)setBlinkingCursorEnabled:(BOOL)enabled
{
  if (self->_blinkingCursorEnabled != enabled)
  {
    v9 = v3;
    v10 = v4;
    self->_blinkingCursorEnabled = enabled;
    [(SCROBrailleLine *)self->_brailleLine setBlinkEnabled:?];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__SCROBrailleDisplay_setBlinkingCursorEnabled___block_invoke;
    v7[3] = &unk_279B73E38;
    v7[4] = self;
    enabledCopy = enabled;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)updateBlinkingCursorTimer:(BOOL)timer
{
  if (self->_runLoop)
  {
    if (timer && [(SCROBrailleDriverProtocol *)self->_brailleDriver supportsBlinkingCursor])
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

- (void)setImageData:(id)data
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:44 data:data data2:0 data3:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)setPlanarData:(id)data
{
  objc_storeStrong(&self->_planarData, data);
  dataCopy = data;
  eventDispatcher = self->_eventDispatcher;
  v7 = [SCROBrailleEvent eventWithType:45 data:dataCopy data2:0 data3:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v7];
}

- (void)_beginAutoAdvanceIfEnabled
{
  selfCopy = self;
  objc_initWeak(&location, self);
  autoAdvanceDuration = selfCopy->_autoAdvanceDuration;
  LOBYTE(selfCopy) = selfCopy->_autoAdvanceEnabled;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SCROBrailleDisplay__beginAutoAdvanceIfEnabled__block_invoke;
  v4[3] = &unk_279B73E88;
  objc_copyWeak(v5, &location);
  v6 = selfCopy;
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

  transport = [(SCROIOElementProtocol *)v10 transport];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:transport];
  [v12 setObject:v17 forKey:kSCROBrailleDisplayTransport[0]];

  if (transport == 1)
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

    productName = [(SCROIOElementProtocol *)v10 productName];
    [v12 setObject:productName forKeyedSubscript:kSCROBrailleDisplayBrailleProductName[0]];

    manufacturerName = [(SCROIOElementProtocol *)v10 manufacturerName];
    v20 = kSCROBrailleDisplayBrailleManufacturerName;
    goto LABEL_22;
  }

  if (transport == 8)
  {
    if (![(SCROIOElementProtocol *)v10 conformsToProtocol:&unk_28765F968])
    {
      goto LABEL_23;
    }

    manufacturerName = [(SCROIOElementProtocol *)v10 bluetoothAddress];
    v20 = kSCROBrailleDisplayBluetoothAddress;
    goto LABEL_22;
  }

  if (transport == 32 && [(SCROIOElementProtocol *)v10 conformsToProtocol:&unk_28765F720])
  {
    address = [(SCROIOElementProtocol *)v10 address];
    [v12 setObject:address forKeyedSubscript:kSCROBrailleDisplayBluetoothAddress[0]];

    manufacturerName = [(SCROIOElementProtocol *)v10 name];
    v20 = kSCROBrailleDisplayBrailleProductName;
LABEL_22:
    [v12 setObject:manufacturerName forKeyedSubscript:*v20];
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
    canvas = [(SCROBrailleDriverProtocol *)self->_brailleDriver canvas];
    descriptor = [canvas descriptor];
  }

  else
  {
    descriptor = 0;
  }

  return descriptor;
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

- (void)setBrailleFormatter:(id)formatter
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:28 data:formatter data2:0 data3:0];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (id)realStatus
{
  [(NSLock *)self->_contentLock lock];
  realData = [(SCROBrailleDisplayStatus *)self->_status realData];

  if (realData)
  {
    realData2 = [(SCROBrailleDisplayStatus *)self->_status realData];
    realData = [realData2 copy];
  }

  [(NSLock *)self->_contentLock unlock];

  return realData;
}

- (id)virtualStatus
{
  [(NSLock *)self->_contentLock lock];
  virtualData = [(SCROBrailleDisplayStatus *)self->_status virtualData];

  if (virtualData)
  {
    virtualData2 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    virtualData = [virtualData2 copy];
  }

  [(NSLock *)self->_contentLock unlock];

  return virtualData;
}

- (void)setAggregatedStatus:(id)status
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:3 data:status];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (id)aggregatedStatus
{
  [(NSLock *)self->_contentLock lock];
  aggregatedData = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];

  if (aggregatedData)
  {
    aggregatedData2 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    aggregatedData = [aggregatedData2 copy];
  }

  [(NSLock *)self->_contentLock unlock];

  return aggregatedData;
}

- (int)virtualStatusAlignment
{
  [(NSLock *)self->_contentLock lock];
  virtualAlignment = [(SCROBrailleDisplayStatus *)self->_status virtualAlignment];
  [(NSLock *)self->_contentLock unlock];
  return virtualAlignment;
}

- (void)setMasterStatusCellIndex:(int64_t)index
{
  eventDispatcher = self->_eventDispatcher;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v4 = [SCROBrailleEvent eventWithType:5 data:v5];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (int64_t)masterStatusCellIndex
{
  [(NSLock *)self->_contentLock lock];
  masterStatusCellIndex = [(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex];
  [(NSLock *)self->_contentLock unlock];
  return masterStatusCellIndex;
}

- (void)simulateKeypress:(id)keypress
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:16 data:keypress];
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

- (void)setBrailleKeyDebounceTimeout:(double)timeout
{
  eventDispatcher = self->_eventDispatcher;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  v4 = [SCROBrailleEvent eventWithType:42 data:v5];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (int64_t)tokenForRouterIndex:(int64_t)index location:(int64_t *)location appToken:(id *)token
{
  indexCopy = index;
  [(NSLock *)self->_contentLock lock];
  v8 = [(SCROBrailleLine *)self->_brailleLine tokenForRouterIndex:&indexCopy location:location appToken:token];
  [(NSLock *)self->_contentLock unlock];
  return v8;
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  switch([eventCopy type])
  {
    case 3u:
      [(SCROBrailleDisplay *)self _aggregatedStatusHandler:eventCopy];
      break;
    case 4u:
    case 5u:
      [(SCROBrailleDisplay *)self _statusDisplayHandler:eventCopy];
      break;
    case 0x10u:
      [(SCROBrailleDisplay *)self _simulateKeypressHandler:eventCopy];
      break;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      data = [eventCopy data];
      v5 = [data isEqual:MEMORY[0x277CBEC38]];

      if (v5)
      {
        [(SCROBrailleDisplay *)self _autoAdvancePanHandler:eventCopy];
      }

      else
      {
        [(SCROBrailleDisplay *)self _panHandler:eventCopy];
      }

      break;
    case 0x17u:
      data2 = [eventCopy data2];
      -[SCROBrailleDisplayInput setMemorizeNextKeyImmediately:](self->_input, "setMemorizeNextKeyImmediately:", [data2 BOOLValue]);

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
      data3 = [eventCopy data];
      bOOLValue = [data3 BOOLValue];

      if (bOOLValue)
      {
        [(SCROBrailleLine *)self->_brailleLine discardEdits];
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      data4 = [eventCopy data];
      [WeakRetained brailleDisplay:self isSleeping:{objc_msgSend(data4, "BOOLValue")}];
      goto LABEL_28;
    case 0x1Au:
      [(SCROBrailleDisplay *)self _configurationChangeHandler];
      break;
    case 0x1Bu:
      [(SCROBrailleDisplay *)self _bulkStatusAttributesHandler:eventCopy];
      break;
    case 0x1Cu:
      [(SCROBrailleDisplay *)self _setBrailleFormatterHandler:eventCopy];
      break;
    case 0x20u:
      [(SCROBrailleDisplay *)self _setDelegateWantsDisplayCallbackHandler:eventCopy];
      break;
    case 0x22u:
      [(SCROBrailleDisplay *)self _setBatchUpdates:eventCopy];
      break;
    case 0x26u:
      [(SCROBrailleDisplay *)self _singleLetterInputHandler:eventCopy];
      break;
    case 0x27u:
      [(SCROBrailleLine *)self->_brailleLine display];
      break;
    case 0x28u:
      [(SCROBrailleDisplay *)self _textSearchModeHandler:eventCopy];
      break;
    case 0x29u:
      [(SCROBrailleDisplay *)self _translateBrailleToClipboard];
      break;
    case 0x2Au:
      WeakRetained = [eventCopy data];
      [WeakRetained doubleValue];
      [(SCROBrailleDisplay *)self _setBrailleKeyDebounceTimeoutHandler:?];
      goto LABEL_32;
    case 0x2Cu:
      [(SCROBrailleDisplay *)self _setTactileGraphicsImageDataHandler:eventCopy];
      break;
    case 0x2Du:
      [(SCROBrailleDisplay *)self _setPlanarDataHandler:eventCopy];
      break;
    case 0x2Eu:
      WeakRetained = [eventCopy data];
      data4 = [eventCopy data2];
      data32 = [eventCopy data3];
      [(SCROBrailleDisplay *)self _brailleDisplayStringDidChangeHandler:WeakRetained brailleSelection:data4 brailleUIOptions:data32];

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

  eventHandled = [(SCROBrailleDisplay *)self eventHandled];

  if (eventHandled)
  {
    eventHandled2 = [(SCROBrailleDisplay *)self eventHandled];
    (eventHandled2)[2](eventHandled2, eventCopy);
  }

  MEMORY[0x2821F96F8]();
}

- (void)_unloadHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDriverDisconnected:self];

  [(SCROBrailleDisplay *)self invalidate];
}

- (id)_statusStringWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  string = [MEMORY[0x277CCAB68] string];
  v6 = [dictionaryCopy objectForKey:kSCROStatusAttributeCellIndex[0]];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [dictionaryCopy objectForKey:kSCROStatusAttributeCellTitle[0]];
  if (!_statusStringWithDictionary__myBundle)
  {
    v9 = MEMORY[0x277CCA8D8];
    v10 = objc_opt_self();
    v11 = [v9 bundleForClass:v10];
    v12 = _statusStringWithDictionary__myBundle;
    _statusStringWithDictionary__myBundle = v11;
  }

  v27 = 0;
  aggregatedData = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
  v14 = [aggregatedData length];

  if (unsignedIntegerValue < v14)
  {
    aggregatedData2 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    [aggregatedData2 getBytes:&v27 range:{unsignedIntegerValue, 1}];
  }

  if ([v8 length])
  {
    [string appendString:v8];
    [string appendString:@": "];
  }

  v26 = v8;
  v16 = 0;
  while (1)
  {
    v17 = [dictionaryCopy objectForKey:kSCROStatusAttributeDotText[v16]];
    v18 = (v27 >> v16) & 1;
    if ([(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]!= unsignedIntegerValue)
    {
      goto LABEL_19;
    }

    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"canPanLeft" value:&stru_28763D5C8 table:@"Server"];

        canPanLeft = [(SCROBrailleLine *)self->_brailleLine canPanLeft];
      }

      else
      {
        if (v16 != 7)
        {
          goto LABEL_19;
        }

        v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"canPanRight" value:&stru_28763D5C8 table:@"Server"];

        canPanLeft = [(SCROBrailleLine *)self->_brailleLine canPanRight];
      }
    }

    else if (v16)
    {
      if (v16 != 1)
      {
        goto LABEL_19;
      }

      v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"currentAnnouncementUnread" value:&stru_28763D5C8 table:@"Server"];

      canPanLeft = [(SCROBrailleLine *)self->_brailleLine currentUnread];
    }

    else
    {
      v19 = [_statusStringWithDictionary__myBundle localizedStringForKey:@"unreadAnnouncements" value:&stru_28763D5C8 table:@"Server"];

      canPanLeft = [(SCROBrailleLine *)self->_brailleLine anyUnread];
    }

    v18 = canPanLeft;
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

  [string appendFormat:@"%d ", v16 + 1];
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
  [string appendString:v24];

  [string appendString:@" "];
  [string appendString:v17];
  if (v16 != 7)
  {
    [string appendString:@"  "];
    goto LABEL_25;
  }

LABEL_28:

  return string;
}

- (void)_setBrailleFormatterHandler:(id)handler
{
  data = [handler data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCROBrailleDisplay *)self _setBrailleFormatter:data];
  }
}

- (void)_setTactileGraphicsImageDataHandler:(id)handler
{
  data = [handler data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SCROBrailleLine *)self->_brailleLine setImageData:data];
  }
}

- (void)_setPlanarDataHandler:(id)handler
{
  data = [handler data];
  [(SCROBrailleLine *)self->_brailleLine setPlanarData:data];
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

- (void)_setBrailleFormatter:(id)formatter
{
  formatterCopy = formatter;
  statusText = [formatterCopy statusText];
  [(NSLock *)self->_contentLock lock];
  if (statusText && ([statusText attribute:kSCROStatusAttribute[0] atIndex:0 effectiveRange:0], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [(SCROBrailleDisplay *)self _statusStringWithDictionary:v5];
    v7 = [formatterCopy copy];

    [v7 addText:v6 selection:0 token:0 focus:0 isEditableText:0];
    [v7 translate];

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = formatterCopy;
  }

  v14 = v9;
  [(SCROBrailleLine *)self->_brailleLine setFormatter:?];
  [(NSLock *)self->_contentLock unlock];
  [(SCROBrailleDisplay *)self unpauseInputOnBrailleFormatterChange];
  [(SCROBrailleDisplay *)self _beginAutoAdvanceIfEnabled];
  outputTableIdentifier = [v14 outputTableIdentifier];
  inputTableIdentifier = [v14 inputTableIdentifier];
  if (outputTableIdentifier)
  {
    objc_storeStrong(&self->_outputTableIdentifier, outputTableIdentifier);
  }

  if (inputTableIdentifier && ![(NSString *)self->_inputTableIdentifier isEqualToString:inputTableIdentifier])
  {
    objc_storeStrong(&self->_inputTableIdentifier, inputTableIdentifier);
    v12 = [objc_alloc(MEMORY[0x277CF3340]) initWithIdentifier:inputTableIdentifier];
    self->_isInputEightDot = [v12 supportsTranslationMode8Dot];
    self->_isInputContracted = [v12 supportsTranslationModeContracted];
  }

  if (![(SCROBrailleLine *)self->_brailleLine hasEdits])
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
  }
}

- (void)_statusDisplayHandler:(id)handler
{
  handlerCopy = handler;
  data = [handlerCopy data];
  intValue = [data intValue];

  type = [handlerCopy type];
  [(NSLock *)self->_contentLock lock];
  if (type == 4)
  {
    if ([(SCROBrailleDisplayStatus *)self->_status virtualAlignment]!= intValue)
    {
      [(SCROBrailleDisplayStatus *)self->_status setVirtualAlignment:intValue];
      virtualData = [(SCROBrailleDisplayStatus *)self->_status virtualData];

      if (virtualData)
      {
        brailleLine = self->_brailleLine;
        virtualData2 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
        [(SCROBrailleLine *)brailleLine setVirtualStatus:virtualData2 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];

        goto LABEL_9;
      }
    }

LABEL_6:
    v7 = 0;
    goto LABEL_10;
  }

  if (type != 5 || [(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]== intValue)
  {
    goto LABEL_6;
  }

  [(SCROBrailleDisplayStatus *)self->_status setMasterStatusCellIndex:intValue];
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

- (void)_aggregatedStatusHandler:(id)handler
{
  handlerCopy = handler;
  data = [handlerCopy data];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = data;
    v6 = [v5 length];
    v7 = objc_alloc_init(MEMORY[0x277CBEA90]);
    [(NSLock *)self->_contentLock lock];
    aggregatedData = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    [(SCROBrailleDisplayStatus *)self->_status setAggregatedData:v5];
    realData = [(SCROBrailleDisplayStatus *)self->_status realData];
    virtualData = [(SCROBrailleDisplayStatus *)self->_status virtualData];
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
    realData2 = [(SCROBrailleDisplayStatus *)self->_status realData];
    [(SCROBrailleLine *)brailleLine setRealStatus:realData2];

    v16 = self->_brailleLine;
    virtualData2 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    [(SCROBrailleLine *)v16 setVirtualStatus:virtualData2 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];

    [(NSLock *)self->_contentLock unlock];
    [(SCROBrailleDisplay *)self _updateDisplay];
  }
}

- (void)_setDelegateWantsDisplayCallbackHandler:(id)handler
{
  data = [handler data];
  self->_delegateWantsDisplayCallback = [data BOOLValue];

  if (self->_delegateWantsDisplayCallback)
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    newLineDescriptor = [(SCROBrailleLine *)self->_brailleLine newLineDescriptor];
    [WeakRetained brailleDisplay:self didDisplay:newLineDescriptor];
  }
}

- (void)_simulateKeypressHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  data = [handler data];
  v5 = data;
  if (data)
  {
    keyMasks = [data keyMasks];
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = keyMasks;
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

          intValue = [*(*(&v16 + 1) + 8 * v12) intValue];
          v14 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
          [array addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [(SCROBrailleDisplay *)self _processKeyEvents:array];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_bulkStatusAttributesHandler:(id)handler
{
  handlerCopy = handler;
  data = [handlerCopy data];
  integerValue = [data integerValue];

  data2 = [handlerCopy data2];
  intValue = [data2 intValue];

  [(NSLock *)self->_contentLock lock];
  [(SCROBrailleDisplayStatus *)self->_status setVirtualAlignment:intValue];
  [(SCROBrailleDisplayStatus *)self->_status setMasterStatusCellIndex:integerValue];
  virtualData = [(SCROBrailleDisplayStatus *)self->_status virtualData];

  if (virtualData)
  {
    brailleLine = self->_brailleLine;
    virtualData2 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    [(SCROBrailleLine *)brailleLine setVirtualStatus:virtualData2 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];
  }

  [(SCROBrailleLine *)self->_brailleLine setMasterStatusCellIndex:[(SCROBrailleDisplayStatus *)self->_status masterStatusCellIndex]];
  [(NSLock *)self->_contentLock unlock];
  [(SCROBrailleDisplay *)self _updateDisplay];
}

- (void)_setBatchUpdates:(id)updates
{
  data = [updates data];
  bOOLValue = [data BOOLValue];

  if (self->_shouldBatchUpdates != bOOLValue)
  {
    self->_shouldBatchUpdates = bOOLValue;
    if ((bOOLValue & 1) == 0 && self->_needsUpdating)
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
  display = [(SCROBrailleLine *)v3 display];
  if (display && self->_delegateWantsDisplayCallback)
  {
    newLineDescriptor = [(SCROBrailleLine *)v3 newLineDescriptor];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
    newLineDescriptor = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  if (display && self->_delegateWantsDisplayCallback)
  {
    [WeakRetained brailleDisplay:self didDisplay:newLineDescriptor];
  }
}

- (void)_configurationChangeHandler
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA90]);
  [(NSLock *)self->_contentLock lock];
  mainSize = [(SCROBrailleDriverProtocol *)self->_brailleDriver mainSize];
  statusSize = [(SCROBrailleDriverProtocol *)self->_brailleDriver statusSize];
  obj = [(SCROBrailleDriverProtocol *)self->_brailleDriver modelIdentifier];
  postsKeyboardEvents = [(SCROBrailleDriverProtocol *)self->_brailleDriver postsKeyboardEvents];
  brailleInputMode = [(SCROBrailleDriverProtocol *)self->_brailleDriver brailleInputMode];
  v8 = mainSize & ~(mainSize >> 63);
  v9 = statusSize & ~(statusSize >> 63);
  v10 = __PAIR128__(v9, v8) != *&self->_mainSize || ![obj isEqual:self->_driverModelIdentifier] || self->_postsKeyboardEvents != postsKeyboardEvents || brailleInputMode != self->_brailleInputMode;
  driverModelIdentifier = self->_driverModelIdentifier;
  self->_mainSize = v8;
  self->_statusSize = v9;
  v12 = driverModelIdentifier;
  objc_storeStrong(&self->_driverModelIdentifier, obj);
  self->_postsKeyboardEvents = postsKeyboardEvents;
  self->_brailleInputMode = brailleInputMode;
  if (v10)
  {
    aggregatedData = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
    v14 = [aggregatedData length];

    realData = [(SCROBrailleDisplayStatus *)self->_status realData];
    virtualData = [(SCROBrailleDisplayStatus *)self->_status virtualData];
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
      aggregatedData2 = [(SCROBrailleDisplayStatus *)self->_status aggregatedData];
      v22 = [aggregatedData2 subdataWithRange:{v20, v14 - v20}];
      [(SCROBrailleDisplayStatus *)self->_status setVirtualData:v22];
    }

    [(SCROBrailleLine *)self->_brailleLine setMainSize:self->_mainSize];
    [(SCROBrailleLine *)self->_brailleLine setStatusSize:self->_statusSize];
    brailleLine = self->_brailleLine;
    realData2 = [(SCROBrailleDisplayStatus *)self->_status realData];
    [(SCROBrailleLine *)brailleLine setRealStatus:realData2];

    v27 = self->_brailleLine;
    virtualData2 = [(SCROBrailleDisplayStatus *)self->_status virtualData];
    [(SCROBrailleLine *)v27 setVirtualStatus:virtualData2 alignment:[(SCROBrailleDisplayStatus *)self->_status virtualAlignment]];

    v23 = 1;
  }

  else
  {
    v23 = 0;
    virtualData = 0;
    realData = 0;
  }

  [(NSLock *)self->_contentLock unlock];
  if (v23)
  {
    [(SCROBrailleDisplay *)self _updateDisplay];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained configurationChangedForBrailleDisplay:self];
  }
}

- (void)_singleLetterInputHandler:(id)handler
{
  data = [handler data];
  bOOLValue = [data BOOLValue];

  brailleLine = self->_brailleLine;

  [(SCROBrailleLine *)brailleLine setIsSingleLetterInputOn:bOOLValue];
}

- (void)_textSearchModeHandler:(id)handler
{
  data = [handler data];
  bOOLValue = [data BOOLValue];

  brailleLine = self->_brailleLine;

  [(SCROBrailleLine *)brailleLine setIsTextSearchModeOn:bOOLValue];
}

- (void)_translateBrailleToClipboard
{
  v4 = [(SCROBrailleLine *)self->_brailleLine translatedBrailleForTableIdentifier:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self copyStringToClipboard:v4];
}

- (BOOL)_currentChordShouldExecuteEvenDuringTyping
{
  brailleInputManager = [(SCROBrailleDisplay *)self brailleInputManager];
  _newBrailleKeyForCurrentBrailleChord = [(SCROBrailleDisplay *)self _newBrailleKeyForCurrentBrailleChord];
  v5 = [brailleInputManager commandForBrailleKey:_newBrailleKeyForCurrentBrailleChord];

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

- (void)_replaceRange:(_NSRange)range withString:(id)string cursor:(unint64_t)cursor
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self didReplaceRange:location withString:length cursor:{stringCopy, cursor}];
}

- (void)_processKeyEvents:(id)events
{
  eventsCopy = events;
  array = [MEMORY[0x277CBEB18] array];
  keyEventsQueue = self->_keyEventsQueue;
  if (!keyEventsQueue)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v8 = self->_keyEventsQueue;
    self->_keyEventsQueue = array2;

    keyEventsQueue = self->_keyEventsQueue;
  }

  v104 = eventsCopy;
  [(NSMutableArray *)keyEventsQueue addObjectsFromArray:eventsCopy];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
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

    [indexSet addIndex:v9];
    unsignedLongValue = [v10 unsignedLongValue];
    if ((unsignedLongValue & 0x10000) == 0)
    {
      selfCopy3 = self;
      unsignedLongValue2 = [v10 unsignedLongValue];
      v14 = unsignedLongValue2;
      v15 = unsignedLongValue2 | 0x10000u;
      if ((unsignedLongValue2 & 0xF) != 2)
      {
        if ([(SCROBrailleDisplayInput *)self->_input currentChord])
        {
          downKeys = [(SCROBrailleDisplayInput *)self->_input downKeys];
          CFSetRemoveValue(downKeys, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15]);
        }

        goto LABEL_101;
      }

      if (BYTE1(unsignedLongValue2) <= 7u)
      {
        if (BYTE1(unsignedLongValue2) < 8u)
        {
          if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
          {
            downBrailleDots = [(SCROBrailleDisplayInput *)self->_input downBrailleDots];
            CFSetRemoveValue(downBrailleDots, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15]);
          }

          if ((v14 & 0xFE00) == 0x600)
          {
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsNonSpacebarChordableKey:0];
          }
        }

        goto LABEL_101;
      }

      if (BYTE1(unsignedLongValue2) <= 0xAu)
      {
        switch(BYTE1(unsignedLongValue2))
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
            downBrailleModifiers = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
            v39 = v97;
            break;
          case 0xAu:
            input = self->_input;
            downBrailleModifiers = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
            v39 = v98;
            break;
          default:
            goto LABEL_101;
        }
      }

      else if (BYTE1(unsignedLongValue2) > 0xCu)
      {
        if (BYTE1(unsignedLongValue2) == 13)
        {
          input = self->_input;
          downBrailleModifiers = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
          v39 = v101;
        }

        else
        {
          if (BYTE1(unsignedLongValue2) != 14)
          {
            goto LABEL_101;
          }

          input = self->_input;
          downBrailleModifiers = [(SCROBrailleDisplayInput *)input downBrailleModifiers];
          v39 = v102;
        }
      }

      else
      {
        input = self->_input;
        if (BYTE1(unsignedLongValue2) == 11)
        {
          downBrailleModifiers = [(SCROBrailleDisplayInput *)self->_input downBrailleModifiers];
          v39 = v99;
        }

        else
        {
          downBrailleModifiers = [(SCROBrailleDisplayInput *)self->_input downBrailleModifiers];
          v39 = v100;
        }
      }

      [(SCROBrailleDisplayInput *)input setDownBrailleModifiers:downBrailleModifiers & v39];
      goto LABEL_101;
    }

    v17 = unsignedLongValue & 0xF;
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
        selfCopy2 = self;
        v41 = v10;
        unsignedLongValue3 = [v41 unsignedLongValue];
        [(SCROBrailleDisplayInput *)self->_input setNewDown:1];
        if (![(SCROBrailleDisplayInput *)self->_input currentChord])
        {
          [(SCROBrailleDisplayInput *)self->_input setCurrentChord:CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128])];
        }

        v43 = array;
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& !CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]))
        {
          [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:1];
        }

        currentChord = [(SCROBrailleDisplayInput *)self->_input currentChord];
        Count = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]);
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue3];
        v131.location = 0;
        v131.length = Count;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(currentChord, v131, v46);

        if (FirstIndexOfValue < 0)
        {
          CFArrayAppendValue([(SCROBrailleDisplayInput *)self->_input currentChord], v41);
        }

        CFSetSetValue([(SCROBrailleDisplayInput *)self->_input downKeys], v41);

        array = v43;
        goto LABEL_102;
      }
    }

    else if ((unsignedLongValue & 0xF) != 0)
    {
      if (v17 == 2)
      {
        selfCopy3 = self;
        v18 = v10;
        unsignedLongValue4 = [v18 unsignedLongValue];
        v20 = 0;
        if (BYTE1(unsignedLongValue4) > 7u)
        {
          if (BYTE1(unsignedLongValue4) > 0xBu)
          {
            if (BYTE1(unsignedLongValue4) > 0xDu)
            {
              if (BYTE1(unsignedLongValue4) != 14)
              {
                v20 = BYTE1(unsignedLongValue4) == 15;
                goto LABEL_90;
              }

              v48 = self->_input;
              currentBrailleModifiers = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v96;
            }

            else if (BYTE1(unsignedLongValue4) == 12)
            {
              v48 = self->_input;
              currentBrailleModifiers = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v95;
            }

            else
            {
              v48 = self->_input;
              currentBrailleModifiers = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v93;
            }
          }

          else if (BYTE1(unsignedLongValue4) > 9u)
          {
            if (BYTE1(unsignedLongValue4) == 10)
            {
              v48 = self->_input;
              currentBrailleModifiers = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = HIDWORD(v93);
            }

            else
            {
              v48 = self->_input;
              currentBrailleModifiers = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
              v50 = v94;
            }
          }

          else
          {
            if (BYTE1(unsignedLongValue4) == 8)
            {
              if (![(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
              {
                [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]];
              }

              [(SCROBrailleDisplayInput *)self->_input setSpacebarIsDown:1];
              [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:1];
              goto LABEL_89;
            }

            if (BYTE1(unsignedLongValue4) != 9)
            {
              goto LABEL_90;
            }

            v48 = self->_input;
            currentBrailleModifiers = [(SCROBrailleDisplayInput *)v48 currentBrailleModifiers];
            v50 = v105;
          }

          [(SCROBrailleDisplayInput *)v48 setCurrentBrailleModifiers:v50 | currentBrailleModifiers];
          [(SCROBrailleDisplayInput *)self->_input setDownBrailleModifiers:[(SCROBrailleDisplayInput *)self->_input downBrailleModifiers]| v50];
        }

        else
        {
          if (BYTE1(unsignedLongValue4) >= 8u)
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

          v21 = array;
          if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]&& !CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]))
          {
            [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordBeganWithSpacebar:1];
          }

          currentBrailleChord = [(SCROBrailleDisplayInput *)self->_input currentBrailleChord];
          v23 = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]);
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue4];
          v129.location = 0;
          v129.length = v23;
          v25 = CFArrayGetFirstIndexOfValue(currentBrailleChord, v129, v24);

          if (v25 < 0)
          {
            CFArrayAppendValue([(SCROBrailleDisplayInput *)self->_input currentBrailleChord], v18);
          }

          CFSetSetValue([(SCROBrailleDisplayInput *)self->_input downBrailleDots], v18);
          array = v21;
          if (![(SCROBrailleDisplay *)selfCopy3 isInputEightDot])
          {
            isSingleLetterInputOn = [(SCROBrailleLine *)self->_brailleLine isSingleLetterInputOn];
            v20 = 0;
            if ((unsignedLongValue4 & 0xFE00) == 0x600 && !isSingleLetterInputOn)
            {
              [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsNonSpacebarChordableKey:1];
              goto LABEL_89;
            }

LABEL_90:
            Current = CFAbsoluteTimeGetCurrent();
            [(SCROBrailleDisplayInput *)self->_input lastBrailleChordTypingTime];
            v53 = Current - v52 > self->_brailleKeyDebounceTimeout || [(SCROBrailleDisplay *)selfCopy3 _currentChordShouldExecuteEvenDuringTyping];
            if (![(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation]&& ((v53 & [(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]& 1) != 0 || [(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsNonSpacebarChordableKey]) && [(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
            {
              [(SCROBrailleDisplayInput *)self->_input setSkipBrailleKeyboardKeyTranslation:1];
            }

            if (v20)
            {
              [(SCROBrailleDisplay *)selfCopy3 _translateBrailleStringAndPostEvent];
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

    v28 = array;
    selfCopy4 = self;
    v30 = v10;
    unsignedLongValue5 = [v30 unsignedLongValue];
    [(SCROBrailleDisplayInput *)self->_input setNewDown:1];
    if (![(SCROBrailleDisplayInput *)self->_input currentChord])
    {
      [(SCROBrailleDisplayInput *)self->_input setCurrentChord:CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128])];
    }

    [(SCROBrailleDisplayInput *)self->_input setRouterEvent:unsignedLongValue5];
    currentChord2 = [(SCROBrailleDisplayInput *)self->_input currentChord];
    v33 = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]);
    0xFFFF00FF = [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue5 & 0xFFFF00FF];
    v130.location = 0;
    v130.length = v33;
    v35 = CFArrayGetFirstIndexOfValue(currentChord2, v130, 0xFFFF00FF);

    if (v35 < 0)
    {
      currentChord3 = [(SCROBrailleDisplayInput *)self->_input currentChord];
      CFArrayAppendValue(currentChord3, [MEMORY[0x277CCABB0] numberWithUnsignedLong:unsignedLongValue5 & 0xFFFF00FF]);
    }

    CFSetSetValue([(SCROBrailleDisplayInput *)self->_input downKeys], v30);

    array = v28;
LABEL_102:
    if ([(SCROBrailleDisplayInput *)self->_input routerEvent]&& ![(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately]|| !CFSetGetCount([(SCROBrailleDisplayInput *)self->_input downKeys]) && [(SCROBrailleDisplayInput *)self->_input currentChord])
    {
      routerEvent = [(SCROBrailleDisplayInput *)self->_input routerEvent];
      selfCopy5 = self;
      _newBrailleKeyForCurrentKeyChord = [(SCROBrailleDisplay *)selfCopy5 _newBrailleKeyForCurrentKeyChord];
      routerEvent2 = [(SCROBrailleDisplayInput *)self->_input routerEvent];
      v58 = self->_input;
      if (routerEvent2)
      {
        routerEvent3 = [(SCROBrailleDisplayInput *)v58 routerEvent];
        aBlock[0] = BYTE1(routerEvent3);
        v110[0] = 0;
        v108 = v9;
        if ((routerEvent3 & 0xF) != 0)
        {
          v60 = 0;
        }

        else
        {
          v106 = array;
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
          array = v106;
        }

        v62 = array;
        [_newBrailleKeyForCurrentKeyChord setRouterIndex:? token:? location:? appToken:?];
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar])
        {
          [_newBrailleKeyForCurrentKeyChord setIsSecondaryRouter:1];
        }

        if ([(SCROBrailleDisplayInput *)self->_input currentChord])
        {
          memorizeNextKeyImmediately = [(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately];
          currentChord4 = [(SCROBrailleDisplayInput *)self->_input currentChord];
          v65 = currentChord4;
          if (memorizeNextKeyImmediately)
          {
            CFRelease(currentChord4);
            [(SCROBrailleDisplayInput *)self->_input setCurrentChord:0];
          }

          else
          {
            v66 = CFArrayGetCount([(SCROBrailleDisplayInput *)self->_input currentChord]);
            0xFFFF00FF2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:routerEvent3 & 0xFFFF00FF];
            v132.location = 0;
            v132.length = v66;
            v68 = CFArrayGetFirstIndexOfValue(v65, v132, 0xFFFF00FF2);

            if ((v68 & 0x8000000000000000) == 0)
            {
              CFArrayRemoveValueAtIndex([(SCROBrailleDisplayInput *)self->_input currentChord], v68);
            }
          }
        }

        array = v62;
        v9 = v108;
      }

      else if ([(SCROBrailleDisplayInput *)v58 currentChord])
      {
        CFRelease([(SCROBrailleDisplayInput *)self->_input currentChord]);
        [(SCROBrailleDisplayInput *)self->_input setCurrentChord:0];
      }

      _hasPressedBrailleKeys = [(SCROBrailleDisplay *)selfCopy5 _hasPressedBrailleKeys];
      newDown = [(SCROBrailleDisplayInput *)self->_input newDown];
      if (newDown)
      {
        [(SCROBrailleDisplayInput *)self->_input setNewDown:0];
        if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
        {
          if (_hasPressedBrailleKeys)
          {
            [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
            v71 = 0;
LABEL_133:

            if (v71)
            {
              if (([(SCROBrailleLine *)self->_brailleLine wantsEdits]|| routerEvent) && [(SCROBrailleDisplayCommandDispatcherProtocol *)self->_commandDispatcher handleBrailleKeyEvent:v71])
              {
                if ([v71 isSecondaryRouter])
                {
                  [(SCROBrailleDisplayInput *)self->_input setCurrentBrailleChordContainsSpacebar:0];
                }
              }

              else
              {
                [array addObject:v71];
              }
            }

            else
            {
              v107 |= newDown;
            }

            goto LABEL_142;
          }

          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained brailleDisplay:selfCopy5 memorizedKey:_newBrailleKeyForCurrentKeyChord];

          [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
          v71 = 0;
LABEL_132:
          [(SCROBrailleDisplay *)selfCopy5 _stopMemorization];
          goto LABEL_133;
        }

        v71 = _newBrailleKeyForCurrentKeyChord;
      }

      else
      {
        v71 = 0;
      }

      [(SCROBrailleDisplayInput *)self->_input setRouterEvent:0];
      if (_hasPressedBrailleKeys)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }

LABEL_142:
    if (!CFSetGetCount([(SCROBrailleDisplayInput *)self->_input downBrailleDots]) && ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord]|| ([(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar]|| [(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsNonSpacebarChordableKey]) && ![(SCROBrailleDisplayInput *)self->_input spacebarIsDown]))
    {
      selfCopy6 = self;
      if ([(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation])
      {
        if ([(SCROBrailleDisplayInput *)self->_input currentBrailleChord])
        {
          _newBrailleKeyForCurrentBrailleChord = [(SCROBrailleDisplay *)selfCopy6 _newBrailleKeyForCurrentBrailleChord];
          if ([(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
          {
            if (![(SCROBrailleDisplay *)selfCopy6 _hasKeyChord])
            {
              v75 = objc_loadWeakRetained(&self->_delegate);
              [v75 brailleDisplay:selfCopy6 memorizedKey:_newBrailleKeyForCurrentBrailleChord];

              [(SCROBrailleDisplay *)selfCopy6 _stopMemorization];
            }

            v76 = 0;
          }

          else
          {
            v76 = _newBrailleKeyForCurrentBrailleChord;
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

      if (![(SCROBrailleDisplay *)selfCopy6 _hasKeyChord]&& ![(SCROBrailleDisplay *)selfCopy6 _hasPressedBrailleKeys])
      {
        [(SCROBrailleDisplay *)selfCopy6 _stopMemorization];
      }

      if (v76 && ([(SCROBrailleDisplayCommandDispatcherProtocol *)self->_commandDispatcher handleBrailleKeyEvent:v76]& 1) == 0)
      {
        [array addObject:v76];
        [(SCROBrailleDisplay *)selfCopy6 _translateBrailleStringAndPostEvent];
      }

      v77 = selfCopy6;
      v125 = 0;
      v126 = &v125;
      v127 = 0x2020000000;
      v128 = 0;
      v119 = 0;
      v120 = &v119;
      v121 = 0x3032000000;
      v122 = __Block_byref_object_copy_;
      v123 = __Block_byref_object_dispose_;
      v78 = array;
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
      array = v79;
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
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        currentHIDCommand = [(SCROBrailleDisplayInput *)self->_input currentHIDCommand];
        identifier = [(SCROIOElementProtocol *)self->_ioElement identifier];
        v90 = objc_alloc_init(SCROBrailleKey);
        [(SCROBrailleKey *)v90 addKeyMask:currentHIDCommand];
        [(SCROBrailleKey *)v90 setDisplayToken:identifier];
        [array addObject:v90];

        array = array;
        [(SCROBrailleDisplayInput *)self->_input setCurrentHIDCommand:0];
      }
    }

    if (++v9 >= [(NSMutableArray *)self->_keyEventsQueue count])
    {
      goto LABEL_189;
    }
  }

LABEL_189:
  if ([indexSet count])
  {
    v91 = objc_loadWeakRetained(&self->_delegate);
    [v91 brailleDisplayHadUserInteraction:self];
  }

  [(NSMutableArray *)self->_keyEventsQueue removeObjectsAtIndexes:indexSet];
  if (([array count] != 0) | v107 & 1)
  {
    if ([(SCROBrailleLine *)self->_brailleLine hasEdits])
    {
      [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
    }

    v92 = objc_loadWeakRetained(&self->_delegate);
    [v92 brailleDisplay:self pressedKeys:array];
  }
}

- (void)_autoAdvancePanHandler:(id)handler
{
  handlerCopy = handler;
  if ([handlerCopy type] == 18)
  {
    [(NSLock *)self->_contentLock lock];
    canPanRight = [(SCROBrailleLine *)self->_brailleLine canPanRight];
    [(NSLock *)self->_contentLock unlock];
    v5 = @"@NO";
    if (canPanRight)
    {
      v5 = @"YES";
    }

    NSLog(&cfstr_AutoadvancePan.isa, v5);
    if (canPanRight || ![(SCROBrailleLine *)self->_brailleLine displayMode])
    {
      [(SCROBrailleDisplay *)self _panHandler:handlerCopy];
    }
  }
}

- (void)_panHandler:(id)handler
{
  handlerCopy = handler;
  type = [handlerCopy type];
  [(NSLock *)self->_contentLock lock];
  v5 = 0;
  v6 = 0;
  if (type > 18)
  {
    if (type == 19)
    {
      if (![(SCROBrailleLine *)self->_brailleLine panBeginning])
      {
LABEL_14:
        appToken = [(SCROBrailleLine *)self->_brailleLine appToken];
        firstToken = [(SCROBrailleLine *)self->_brailleLine firstToken];
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 0;
      if (type != 20)
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

  if (type == 17)
  {
    if (![(SCROBrailleLine *)self->_brailleLine panLeft])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v7 = 0;
  if (type != 18)
  {
    goto LABEL_16;
  }

  if ([(SCROBrailleLine *)self->_brailleLine panRight])
  {
    goto LABEL_13;
  }

LABEL_5:
  appToken = [(SCROBrailleLine *)self->_brailleLine appToken];
  firstToken = [(SCROBrailleLine *)self->_brailleLine lastToken];
LABEL_15:
  v7 = firstToken;
  v6 = 0;
  v5 = appToken;
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

    if (type == 18)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCROBrailleDisplay lineOffset](self, "lineOffset")}];
      [WeakRetained brailleDisplay:self didPanRight:v11 elementToken:v12 appToken:v5 lineOffset:v13];
    }

    else
    {
      if (type != 17)
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

  currentBrailleModifiers = [(SCROBrailleDisplayInput *)self->_input currentBrailleModifiers];
  return currentBrailleModifiers != *MEMORY[0x277CF3390];
}

- (BOOL)_hasBrailleChord
{
  skipBrailleKeyboardKeyTranslation = [(SCROBrailleDisplayInput *)self->_input skipBrailleKeyboardKeyTranslation];
  if (skipBrailleKeyboardKeyTranslation)
  {
    LOBYTE(skipBrailleKeyboardKeyTranslation) = [(SCROBrailleDisplayInput *)self->_input currentBrailleChord]!= 0;
  }

  return skipBrailleKeyboardKeyTranslation;
}

- (id)keyArrayForBrailleStringWithCurrentModifiers:(id)modifiers
{
  modifiersCopy = modifiers;
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
  v9 = [v8 textForPrintBraille:modifiersCopy language:0 mode:v7 locations:0];

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
  brailleInputManager = [WeakRetained brailleInputManager];

  return brailleInputManager;
}

- (void)handleCommandPanLeftForDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  [(NSLock *)self->_contentLock lock];
  if ([(SCROBrailleLine *)self->_brailleLine panLeft])
  {
    appToken = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    firstToken = [(SCROBrailleLine *)self->_brailleLine firstToken];
    appToken = [(SCROBrailleLine *)self->_brailleLine appToken];
    v6 = 0;
    v5 = firstToken;
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
  [WeakRetained brailleDisplay:self didPanLeft:v9 elementToken:v10 appToken:appToken lineOffset:v11];

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v14 = selfCopy;
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

- (void)handleCommandPanRightForDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  [(NSLock *)self->_contentLock lock];
  if ([(SCROBrailleLine *)self->_brailleLine panRight])
  {
    appToken = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    firstToken = [(SCROBrailleLine *)self->_brailleLine firstToken];
    appToken = [(SCROBrailleLine *)self->_brailleLine appToken];
    v6 = 0;
    v5 = firstToken;
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
  [WeakRetained brailleDisplay:self didPanRight:v9 elementToken:v10 appToken:appToken lineOffset:v11];

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v14 = selfCopy;
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

- (void)handleCommandMoveLeftForDispatcher:(id)dispatcher
{
  if (![(SCROBrailleLine *)self->_brailleLine moveCursorLeft])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playBorderHitSoundForBrailleDisplay:self];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v16 = selfCopy;
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

- (void)handleCommandMoveRightForDispatcher:(id)dispatcher
{
  if (![(SCROBrailleLine *)self->_brailleLine moveCursorRight])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained playBorderHitSoundForBrailleDisplay:self];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v16 = selfCopy;
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

- (void)handleCommandRouterKeyEvent:(id)event forDispatcher:(id)dispatcher
{
  v47[2] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v6 = [eventCopy getRouterIndex:&v45 token:&v44 location:&v43 appToken:&v42];
  v7 = v42;
  if (!v6)
  {
    goto LABEL_20;
  }

  if ([eventCopy isSecondaryRouter])
  {
    v40 = 0;
    v41 = 0;
    LOBYTE(v39) = [(SCROBrailleLine *)self->_brailleLine selectUpToRouterIndex:v45 selectionBegin:&v41 selectionEnd:&v40];
    [(SCROBrailleDisplay *)self _forwardToScreenReader:eventCopy routerIndex:v45 token:v44 BeginLocation:v41 endLocation:v40 appToken:v7 didPerform:v39];
    goto LABEL_22;
  }

  Current = CFAbsoluteTimeGetCurrent();
  lastRouterIndex = [(SCROBrailleDisplay *)self lastRouterIndex];
  v10 = v45;
  if (lastRouterIndex == v45)
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
      [eventCopy setRouterIndex:v45 token:v44 location:v43 appToken:v7];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v46 = eventCopy;
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
  routerClicks = [(SCROBrailleDisplay *)self routerClicks];
  brailleLine = self->_brailleLine;
  if (routerClicks != 2)
  {
    if (![(SCROBrailleLine *)brailleLine selectEntireLine:&v41 selectionEnd:&v40])
    {
      goto LABEL_12;
    }

LABEL_16:
    v21 = [eventCopy copy];
    [v21 setRouterIndex:v45 token:v44 location:v41 appToken:v7];
    [v21 setIsSecondaryRouter:0];
    v22 = [eventCopy copy];
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
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v28 = selfCopy;
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

- (void)_forwardToScreenReader:(id)reader routerIndex:(int64_t)index token:(int64_t)token BeginLocation:(int64_t)location endLocation:(int64_t)endLocation appToken:(id)appToken didPerform:(BOOL)perform
{
  v25[1] = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  appTokenCopy = appToken;
  if (perform)
  {
    v17 = [readerCopy copy];
    [v17 setRouterIndex:index token:token location:location appToken:appTokenCopy];
    [v17 setIsSecondaryRouter:0];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v25[0] = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v19];

    v20 = [readerCopy copy];
    [v20 setRouterIndex:index token:token location:endLocation appToken:appTokenCopy];
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

- (void)handleCommandDeleteKeyEvent:(id)event forDispatcher:(id)dispatcher
{
  v21[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![(SCROBrailleLine *)self->_brailleLine deleteAtCursor])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21[0] = eventCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v7];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = selfCopy;
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

- (void)handleCommandForwardDeleteKeyEvent:(id)event forDispatcher:(id)dispatcher
{
  v21[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![(SCROBrailleLine *)self->_brailleLine forwardDeleteAtCursor])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21[0] = eventCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v7];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = selfCopy;
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

- (void)handleCommandEscapeKeyEvent:(id)event forDispatcher:(id)dispatcher
{
  v23[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
  handleEscape = [mEMORY[0x277CF3318] handleEscape];

  if ((handleEscape & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23[0] = eventCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v9];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v12 = selfCopy;
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

- (void)handleCommandReturnBrailleEvent:(id)event forDispatcher:(id)dispatcher
{
  v23[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
  handleReturn = [mEMORY[0x277CF3318] handleReturn];

  if ((handleReturn & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23[0] = eventCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [WeakRetained brailleDisplay:self pressedKeys:v9];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v12 = selfCopy;
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

- (void)handleCommandWordDescriptionEvent:(id)event forDispatcher:(id)dispatcher
{
  if (SCROJapaneseBrailleSelected())
  {
    mEMORY[0x277CF3318] = [MEMORY[0x277CF3318] sharedModel];
    [mEMORY[0x277CF3318] handleWordDescriptionCommand];
  }

  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v17 = selfCopy;
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

- (void)handleCommandTranslateForDispatcher:(id)dispatcher
{
  [(SCROBrailleDisplay *)self _translateBrailleStringAndPostEvent];
  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v15 = selfCopy;
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

- (void)handleCommandToggleContractedBrailleEvent:(id)event forDispatcher:(id)dispatcher
{
  value = event;
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
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = selfCopy;
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

- (void)handleCommandToggleEightDotBrailleEvent:(id)event forDispatcher:(id)dispatcher
{
  value = event;
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
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v10 = selfCopy;
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

- (void)handleUnsupportedKeyEvent:(id)event forDispatcher:(id)dispatcher
{
  input = self->_input;
  selfCopy = self;
  [(SCROBrailleDisplayInput *)input setBrailleCharExponentialMovingAverage:1.0];
  [(SCROBrailleDisplayInput *)self->_input setBrailleTranslationTimeout:1.0];
  v16 = selfCopy;
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
  currentBrailleChord = [(SCROBrailleDisplayInput *)self->_input currentBrailleChord];
  v5 = [currentBrailleChord countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(currentBrailleChord);
        }

        -[SCROBrailleKey addKeyMask:](v3, "addKeyMask:", [*(*(&v11 + 1) + 8 * v8++) unsignedIntValue]);
      }

      while (v6 != v8);
      v6 = [currentBrailleChord countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  currentChord = [(SCROBrailleDisplayInput *)self->_input currentChord];
  v5 = [currentChord countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(currentChord);
        }

        unsignedIntValue = [*(*(&v15 + 1) + 8 * i) unsignedIntValue];
        if ((unsignedIntValue & 0xF) != 0 && (unsignedIntValue & 0xF) != 3)
        {
          [(SCROBrailleKey *)v3 addKeyMask:unsignedIntValue];
        }
      }

      v6 = [currentChord countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([(SCROBrailleDisplayInput *)self->_input routerEvent])
  {
    routerEvent = [(SCROBrailleDisplayInput *)self->_input routerEvent];
    if ((routerEvent & 0xF) == 0)
    {
      v14 = 0;
      [(NSLock *)self->_contentLock lock];
      if ([(SCROBrailleLine *)self->_brailleLine getStatusRouterIndex:&v14 forRawIndex:BYTE1(routerEvent)])
      {
        routerEvent |= 3u;
      }

      [(NSLock *)self->_contentLock unlock];
    }

    [(SCROBrailleKey *)v3 addKeyMask:routerEvent & 0xFFFF00FF];
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
  getInputEvents = [(SCROBrailleDriverProtocol *)self->_brailleDriver getInputEvents];
  [(NSLock *)self->_contentLock unlock];
  if ([getInputEvents count])
  {
    [(SCROBrailleDisplay *)self _processKeyEvents:getInputEvents];
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (![(SCROBrailleDisplayInput *)self->_input currentChord]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChord]&& ![(SCROBrailleDisplayInput *)self->_input currentBrailleChordContainsSpacebar])
  {
    currentBrailleModifiers = [(SCROBrailleDisplayInput *)self->_input currentBrailleModifiers];
    if (currentBrailleModifiers == *MEMORY[0x277CF3390])
    {
      [(SCROBrailleDisplayInput *)self->_input quietSince];
      if (Current - v5 < 2.0 || [(SCROBrailleDisplayInput *)self->_input memorizeNextKeyImmediately])
      {
        inputEventTimer = self->_inputEventTimer;
        v7 = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(inputEventTimer, v7 + 0.01);
      }

      isQuiet = [(SCROBrailleDisplayInput *)self->_input isQuiet];
      input = self->_input;
      if (!isQuiet)
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
          _newBrailleKeyForCurrentKeyChord = [(SCROBrailleDisplay *)self _newBrailleKeyForCurrentKeyChord];
LABEL_24:
          v15 = _newBrailleKeyForCurrentKeyChord;
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
        _newBrailleKeyForCurrentKeyChord = [(SCROBrailleDisplay *)self _newBrailleKeyForCurrentBrailleChord];
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

- (void)_sleepNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKey:@"SCROBrailleDriverProtocolSleepNotificationIsSleepingKey"];
  [(SCROBrailleDisplay *)self performSelector:sel__delayedSleepNotification_ withObject:v4 afterDelay:0.0];
}

- (void)_delayedSleepNotification:(id)notification
{
  eventDispatcher = self->_eventDispatcher;
  v4 = [SCROBrailleEvent eventWithType:25 data:notification];
  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v4];
}

- (void)didChangeBrailleString:(id)string brailleSelection:(_NSRange)selection brailleUIOptions:(id)options
{
  length = selection.length;
  location = selection.location;
  eventDispatcher = self->_eventDispatcher;
  v9 = MEMORY[0x277CF3328];
  optionsCopy = options;
  stringCopy = string;
  v14 = [[v9 alloc] initWithUnicode:stringCopy];

  v12 = [MEMORY[0x277CCAE60] valueWithRange:{location, length}];
  v13 = [SCROBrailleEvent eventWithType:46 data:v14 data2:v12 data3:optionsCopy];

  [(SCROBrailleEventDispatcher *)eventDispatcher enqueueEvent:v13];
}

- (void)_brailleDisplayStringDidChangeHandler:(id)handler brailleSelection:(id)selection brailleUIOptions:(id)options
{
  brailleLine = self->_brailleLine;
  optionsCopy = options;
  handlerCopy = handler;
  rangeValue = [selection rangeValue];
  [(SCROBrailleLine *)brailleLine brailleDisplayStringDidChange:handlerCopy brailleSelection:rangeValue brailleUIOptions:v12 modifiers:optionsCopy, 0];

  if (optionsCopy)
  {
    newLineDescriptor = [(SCROBrailleLine *)self->_brailleLine newLineDescriptor];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained brailleDisplay:self didDisplay:newLineDescriptor];
  }
}

- (void)replaceScriptStringRange:(_NSRange)range withScriptString:(id)string cursorLocation:(unint64_t)location
{
  length = range.length;
  location = range.location;
  string = [string string];
  [(SCROBrailleDisplay *)self _replaceRange:location withString:length cursor:string, location];
}

- (void)scriptSelectionDidChange:(_NSRange)change
{
  location = change.location;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self didMoveSelection:location];
}

- (void)didInsertScriptString:(id)string
{
  v10[1] = *MEMORY[0x277D85DE8];
  input = self->_input;
  stringCopy = string;
  v6 = [(SCROBrailleDisplay *)self newBrailleKeyboardKeyForText:stringCopy modifiers:self->_persistentKeyModifiers | [(SCROBrailleDisplayInput *)input currentBrailleModifiers]];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [WeakRetained brailleDisplay:self pressedKeys:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)brailleDisplayInsertedCharacter:(id)character modifiers:(id)modifiers
{
  v10 = 0;
  modifiersCopy = modifiers;
  unicode = [character unicode];
  v8 = [SCROBrailleTranslationUtility spokenStringForInsertedBrailleString:unicode speakLiterally:&v10 modifiers:modifiersCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self insertedUntranslatedText:v8 speakLiterally:v10];
}

- (void)brailleDisplayDeletedCharacter:(id)character
{
  v7 = 0;
  unicode = [character unicode];
  v5 = [SCROBrailleTranslationUtility spokenStringForDeletedBrailleString:unicode speakLiterally:&v7];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained brailleDisplay:self deletedUntranslatedText:v5 speakLiterally:v7];
}

- (void)setInputContractionMode:(int)mode
{
  v4 = mode == 0;
  if (mode)
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
  brl_languageAndVariant = [(NSString *)self->_inputTableIdentifier brl_languageAndVariant];
  [v7 setDefaultLanguage:brl_languageAndVariant];
}

- (void)setOutputContractionMode:(int)mode
{
  if (mode)
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g1";
  }

  else
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_outputTableIdentifier, v4);
  v6 = +[SCROBrailleTranslationManager sharedManager];
  brl_languageAndVariant = [(NSString *)self->_outputTableIdentifier brl_languageAndVariant];
  [v6 setDefaultLanguage:brl_languageAndVariant];
}

- (void)setInputShowEightDot:(BOOL)dot
{
  if (dot)
  {
    v5 = @"com.apple.scrod.braille.table.duxbury.eng-8dot";
  }

  else
  {
    v5 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_inputTableIdentifier, v5);
  self->_isInputEightDot = dot;
  self->_isInputContracted = !dot;
  v7 = +[SCROBrailleTranslationManager inputManager];
  brl_languageAndVariant = [(NSString *)self->_inputTableIdentifier brl_languageAndVariant];
  [v7 setDefaultLanguage:brl_languageAndVariant];
}

- (void)setOutputShowEightDot:(BOOL)dot
{
  if (dot)
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-8dot";
  }

  else
  {
    v4 = @"com.apple.scrod.braille.table.duxbury.eng-xueb_g2";
  }

  objc_storeStrong(&self->_outputTableIdentifier, v4);
  v6 = +[SCROBrailleTranslationManager sharedManager];
  brl_languageAndVariant = [(NSString *)self->_outputTableIdentifier brl_languageAndVariant];
  [v6 setDefaultLanguage:brl_languageAndVariant];
}

- (void)_blinkingCursorSetting
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Boolean soft__AXSPrefersNonBlinkingCursorIndicator(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"SCROBrailleDisplay.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

@end