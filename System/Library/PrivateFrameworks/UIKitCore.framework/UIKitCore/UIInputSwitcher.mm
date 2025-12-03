@interface UIInputSwitcher
+ (id)sharedInstance;
- (BOOL)handleEmojiPicker;
- (BOOL)handleGlobeKeyEvent:(id)event switcherIsVisible:(BOOL)visible;
- (BOOL)handleModifiersChangedEvent:(id)event;
- (BOOL)handleNavigationEvent:(id)event;
- (BOOL)handleSwitchCommand:(BOOL)command withHUD:(BOOL)d withDelay:(BOOL)delay;
- (BOOL)handleSwitchingKeyEvent:(id)event;
- (BOOL)isVisibleOrHiding;
- (BOOL)needsFullHUD;
- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay;
- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay fromCapsLock:(BOOL)lock;
- (UIInputSwitcher)init;
- (id)availableInputModes;
- (id)inputModeIdentifierWithNextFlag:(BOOL)flag;
- (id)nextInputMode;
- (id)previousInputMode;
- (id)selectedInputMode;
- (void)cancelHideSwitcherTimer;
- (void)cancelShowSwitcherTimer;
- (void)cleanUpAfterHide;
- (void)clearHideSwitcherTimer;
- (void)clearShowSwitcherTimer;
- (void)dealloc;
- (void)dismissSwitcher:(BOOL)switcher;
- (void)dismissSwitcherWithDelay:(double)delay;
- (void)hideSwitcher;
- (void)hideSwitcherIfNeeded;
- (void)reloadInputModes;
- (void)setSelectedInputMode:(id)mode;
- (void)setShowingCapsLockSwitcher:(BOOL)switcher;
- (void)showSwitcherShouldAutoHide:(BOOL)hide;
- (void)showsLanguageIndicator:(id)indicator;
- (void)touchHideSwitcherTimer;
- (void)touchShowSwitcherTimer;
- (void)updateHardwareLayout;
@end

@implementation UIInputSwitcher

+ (id)sharedInstance
{
  if (+[UIKeyboard isLanguageIndicatorEnabled])
  {
    v2 = &qword_1ED49AC70;
    v3 = qword_1ED49AC70;
    if (qword_1ED49AC70)
    {
      goto LABEL_7;
    }

    v4 = off_1E70E9AC8;
  }

  else
  {
    v2 = &qword_1ED49AC78;
    v3 = qword_1ED49AC78;
    if (qword_1ED49AC78)
    {
      goto LABEL_7;
    }

    v4 = off_1E70E9A00;
  }

  v5 = objc_alloc_init(*v4);
  v6 = *v2;
  *v2 = v5;

  v3 = *v2;
LABEL_7:
  objc_storeStrong(&_MergedGlobals_7_2, v3);
  v7 = *v2;

  return v7;
}

- (UIInputSwitcher)init
{
  v5.receiver = self;
  v5.super_class = UIInputSwitcher;
  v2 = [(UIInputSwitcher *)&v5 init];
  if (v2)
  {
    v2->m_lastGlobeKeyUpTime = CFAbsoluteTimeGetCurrent() + -10.0;
    v2->m_state = 0;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIWindowWillRotateNotification" object:0];

  [(UIInputSwitcher *)self setLoadedIdentifier:0];
  [(UIInputSwitcher *)self clearShowSwitcherTimer];
  [(UIInputSwitcher *)self clearHideSwitcherTimer];
  v4.receiver = self;
  v4.super_class = UIInputSwitcher;
  [(UIInputSwitcher *)&v4 dealloc];
}

- (void)hideSwitcher
{
  [(UIInputSwitcher *)self cancelHideSwitcherTimer];
  [(UIInputSwitcher *)self cancelShowSwitcherTimer];
  selectedInputMode = [(UIInputSwitcher *)self selectedInputMode];
  if (!selectedInputMode)
  {
    goto LABEL_9;
  }

  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v3 inputViews];
  if ([inputViews isCustomInputView])
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 inputModeWithIdentifier:selectedInputMode];
    hardwareLayout = [v6 hardwareLayout];

    if (!hardwareLayout)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 setInputMode:selectedInputMode userInitiated:1];

  v9 = +[UIKeyboardImpl activeInstance];
  isInHardwareKeyboardMode = [v9 isInHardwareKeyboardMode];

  if (isInHardwareKeyboardMode && ([selectedInputMode containsString:@"emoji"] & 1) != 0)
  {
    [(UIInputSwitcher *)self dismissSwitcher:1];
    goto LABEL_10;
  }

LABEL_9:
  [(UIInputSwitcher *)self dismissSwitcherWithDelay:0.0];
LABEL_10:
  [(UIInputSwitcher *)self cleanUpAfterHide];
}

- (void)cleanUpAfterHide
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  self->m_state = 0;

  [(UIInputSwitcher *)self clearShowSwitcherTimer];
}

- (void)cancelHideSwitcherTimer
{
  m_hideSwitcherDelay = self->m_hideSwitcherDelay;
  if (m_hideSwitcherDelay)
  {
    [(UIDelayedAction *)m_hideSwitcherDelay cancel];
  }
}

- (void)touchHideSwitcherTimer
{
  [(UIInputSwitcher *)self setShowingCapsLockSwitcher:[(UIInputSwitcher *)self usingCapsLockLanguageSwitch]];
  if ([(UIInputSwitcher *)self usingCapsLockLanguageSwitch])
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 1.0;
  }

  m_hideSwitcherDelay = self->m_hideSwitcherDelay;
  if (m_hideSwitcherDelay)
  {

    [(UIDelayedAction *)m_hideSwitcherDelay touchWithDelay:v3];
  }

  else
  {
    v5 = [[UIDelayedAction alloc] initWithTarget:self action:sel_hideSwitcher userInfo:0 delay:v3];
    v6 = self->m_hideSwitcherDelay;
    self->m_hideSwitcherDelay = v5;
  }
}

- (void)clearHideSwitcherTimer
{
  [(UIDelayedAction *)self->m_hideSwitcherDelay setTarget:0];
  m_hideSwitcherDelay = self->m_hideSwitcherDelay;
  self->m_hideSwitcherDelay = 0;
}

- (void)showSwitcherShouldAutoHide:(BOOL)hide
{
  hideCopy = hide;
  loadedIdentifier = [(UIInputSwitcher *)self loadedIdentifier];
  [(UIInputSwitcher *)self setSelectedInputMode:loadedIdentifier];

  self->m_state = 2;
  if (hideCopy)
  {
    [(UIInputSwitcher *)self touchHideSwitcherTimer];
  }

  if ((UIKeyboardAutomaticIsOnScreen() & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleRotate_ name:@"UIWindowWillRotateNotification" object:0];
  }
}

- (void)touchShowSwitcherTimer
{
  m_showSwitcherDelay = self->m_showSwitcherDelay;
  if (m_showSwitcherDelay)
  {
    isVisibleOrHiding = [(UIInputSwitcher *)self isVisibleOrHiding];
    v5 = 0.1;
    if (isVisibleOrHiding)
    {
      v5 = 0.0;
    }

    [(UIDelayedAction *)m_showSwitcherDelay touchWithDelay:v5];
  }

  else
  {
    v6 = [[UIDelayedAction alloc] initWithTarget:self action:sel_showSwitcherWithAutoHide userInfo:0 delay:0.1];
    v7 = self->m_showSwitcherDelay;
    self->m_showSwitcherDelay = v6;
  }
}

- (void)cancelShowSwitcherTimer
{
  m_showSwitcherDelay = self->m_showSwitcherDelay;
  if (m_showSwitcherDelay)
  {
    [(UIDelayedAction *)m_showSwitcherDelay cancel];
  }
}

- (void)clearShowSwitcherTimer
{
  [(UIDelayedAction *)self->m_showSwitcherDelay setTarget:0];
  m_showSwitcherDelay = self->m_showSwitcherDelay;
  self->m_showSwitcherDelay = 0;
}

- (id)inputModeIdentifierWithNextFlag:(BOOL)flag
{
  if (!flag)
  {
    previousInputMode = [(UIInputSwitcher *)self previousInputMode];
    if (previousInputMode)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardImpl activeInstance];
  textInputTraits = [v5 textInputTraits];
  v7 = [v4 nextInputModeToUseForTraits:textInputTraits];

  identifier = [v7 identifier];
  if (identifier && (-[UIInputSwitcher availableInputModes](self, "availableInputModes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:identifier], v9, v10))
  {
    nextInputMode = identifier;
  }

  else
  {
    nextInputMode = [(UIInputSwitcher *)self nextInputMode];
  }

  previousInputMode = nextInputMode;

  if (!previousInputMode)
  {
LABEL_9:
    previousInputMode = UIKeyboardGetCurrentInputMode();
  }

LABEL_10:

  return previousInputMode;
}

- (void)hideSwitcherIfNeeded
{
  if (self->m_state)
  {
    [(UIInputSwitcher *)self hideSwitcher];
  }
}

- (BOOL)handleSwitchCommand:(BOOL)command withHUD:(BOOL)d withDelay:(BOOL)delay
{
  delayCopy = delay;
  dCopy = d;
  commandCopy = command;
  [(UIInputSwitcher *)self reloadInputModes];
  availableInputModes = [(UIInputSwitcher *)self availableInputModes];
  v10 = [availableInputModes count];

  if (!v10)
  {
    return 0;
  }

  v11 = [(UIInputSwitcher *)self inputModeIdentifierWithNextFlag:!commandCopy];
  if (dCopy)
  {
    [(UIInputSwitcher *)self touchHideSwitcherTimer];
  }

  v12 = [(UIInputSwitcher *)self switchMode:v11 withHUD:dCopy withDelay:delayCopy];

  return v12;
}

- (void)showsLanguageIndicator:(id)indicator
{
  indicatorCopy = indicator;
  availableInputModes = [(UIInputSwitcher *)self availableInputModes];
  v5 = [availableInputModes count];

  if (v5 >= 2)
  {
    [(UIInputSwitcher *)self setShowsLanguageIndicatorOnly:1];
    [(UIInputSwitcher *)self switchMode:indicatorCopy withHUD:1 withDelay:1];
    [(UIInputSwitcher *)self setShowsLanguageIndicatorOnly:0];
  }
}

- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay fromCapsLock:(BOOL)lock
{
  lockCopy = lock;
  delayCopy = delay;
  dCopy = d;
  modeCopy = mode;
  [(UIInputSwitcher *)self setUsingCapsLockLanguageSwitch:lockCopy];
  if (lockCopy)
  {
    [(UIInputSwitcher *)self handleEmojiPicker];
  }

  v11 = [(UIInputSwitcher *)self switchMode:modeCopy withHUD:dCopy withDelay:delayCopy];

  return v11;
}

- (void)updateHardwareLayout
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  loadedIdentifier = [(UIInputSwitcher *)self loadedIdentifier];
  v8 = [v3 inputModeWithIdentifier:loadedIdentifier];

  automaticHardwareLayout = [v8 automaticHardwareLayout];

  if (automaticHardwareLayout)
  {
    v6 = UIApp;
    automaticHardwareLayout2 = [v8 automaticHardwareLayout];
    [v6 setHardwareKeyboardLayoutName:automaticHardwareLayout2];
  }
}

- (BOOL)handleSwitchingKeyEvent:(id)event
{
  eventCopy = event;
  isVisibleOrHiding = [(UIInputSwitcher *)self isVisibleOrHiding];
  if ([eventCopy _isGlobeKey])
  {
    v6 = [eventCopy _isKeyDown] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIInputSwitcher *)self usingCapsLockLanguageSwitch]&& isVisibleOrHiding;
  if ([eventCopy _modifierFlags] == 0x40000)
  {
    _unmodifiedInput = [eventCopy _unmodifiedInput];
    v9 = [_unmodifiedInput isEqualToString:@" "];

    if (v9)
    {
      [(UIInputSwitcher *)self setUsingCapsLockLanguageSwitch:0];
      [(UIInputSwitcher *)self setShowingCapsLockSwitcher:0];
      if (v7)
      {
        [(UIInputSwitcher *)self hideSwitcher];
        if (v6)
        {
          [(UIInputSwitcher *)self setUsingCapsLockLanguageSwitch:0];
LABEL_11:
          [(UIInputSwitcher *)self hideSwitcherIfNeeded];
          goto LABEL_12;
        }
      }

      else if (v6)
      {
        [(UIInputSwitcher *)self setUsingCapsLockLanguageSwitch:0];
        goto LABEL_12;
      }

LABEL_19:
      useHardwareGlobeKeyAsEmojiKey = 0;
      goto LABEL_20;
    }
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_19;
  }

  [(UIInputSwitcher *)self setUsingCapsLockLanguageSwitch:0];
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  [(UIInputSwitcher *)self reloadInputModes];
  availableInputModes = [(UIInputSwitcher *)self availableInputModes];
  v11 = [availableInputModes count];

  if ([(UIInputSwitcher *)self handleEmojiPicker])
  {
    useHardwareGlobeKeyAsEmojiKey = 1;
    goto LABEL_25;
  }

  v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v13 preferencesActions];
  useHardwareGlobeKeyAsEmojiKey = [preferencesActions useHardwareGlobeKeyAsEmojiKey];

  if (v11 >= 2 && (useHardwareGlobeKeyAsEmojiKey & 1) == 0)
  {
    useHardwareGlobeKeyAsEmojiKey = [(UIInputSwitcher *)self handleGlobeKeyEvent:eventCopy switcherIsVisible:isVisibleOrHiding];
  }

LABEL_20:
  if ((useHardwareGlobeKeyAsEmojiKey & 1) == 0 && isVisibleOrHiding)
  {
    if ([eventCopy _isKeyDown])
    {
      useHardwareGlobeKeyAsEmojiKey = [(UIInputSwitcher *)self handleNavigationEvent:eventCopy];
    }

    else
    {
      useHardwareGlobeKeyAsEmojiKey = 0;
    }
  }

LABEL_25:

  return useHardwareGlobeKeyAsEmojiKey;
}

- (BOOL)handleGlobeKeyEvent:(id)event switcherIsVisible:(BOOL)visible
{
  visibleCopy = visible;
  eventCopy = event;
  needsFullHUD = [(UIInputSwitcher *)self needsFullHUD];
  Current = CFAbsoluteTimeGetCurrent();
  v9 = -[UIInputSwitcher inputModeIdentifierWithNextFlag:](self, "inputModeIdentifierWithNextFlag:", [eventCopy _modifierFlags] != 0x20000);
  if ([(UIInputSwitcher *)self dismissingEmojiPopover])
  {
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    currentLinguisticInputMode = [v10 currentLinguisticInputMode];
    identifier = [currentLinguisticInputMode identifier];

    [(UIInputSwitcher *)self setDismissingEmojiPopover:0];
    v9 = identifier;
  }

  [(UIInputSwitcher *)self switchMode:v9 withHUD:needsFullHUD withDelay:0];
  if (visibleCopy)
  {
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
  }

  [(UIInputSwitcher *)self touchHideSwitcherTimer];
  self->m_lastGlobeKeyUpTime = Current;
  if ([eventCopy _modifierFlags] != 0x20000)
  {
    [(UIInputSwitcher *)self updateHardwareLayout];
  }

  return 1;
}

- (BOOL)handleNavigationEvent:(id)event
{
  eventCopy = event;
  _unmodifiedInput = [eventCopy _unmodifiedInput];
  [_unmodifiedInput length];

  if (+[UIKeyboard isLanguageIndicatorEnabled])
  {
    availableInputModes = [(UIInputSwitcher *)self availableInputModes];
    v7 = [availableInputModes count] == 1;
  }

  else
  {
    v7 = 0;
  }

  if ([(UIInputSwitcher *)self usingCapsLockLanguageSwitch])
  {
    goto LABEL_22;
  }

  v8 = +[UIKeyboardImpl activeInstance];
  v9 = [v8 isEmojiPopoverPresented] | v7;

  if (v9)
  {
    goto LABEL_22;
  }

  _unmodifiedInput2 = [eventCopy _unmodifiedInput];
  v11 = [_unmodifiedInput2 isEqualToString:@"UIKeyInputDownArrow"];
  if (v11)
  {
    goto LABEL_7;
  }

  _unmodifiedInput3 = [eventCopy _unmodifiedInput];
  v13 = [_unmodifiedInput3 isEqualToString:@"UIKeyInputPageDown"];

  if (v13)
  {
    v11 = 1;
  }

  else
  {
    _unmodifiedInput2 = [eventCopy _unmodifiedInput];
    if ([_unmodifiedInput2 isEqualToString:@"UIKeyInputUpArrow"])
    {
LABEL_7:

      goto LABEL_10;
    }

    _unmodifiedInput4 = [eventCopy _unmodifiedInput];
    v18 = [_unmodifiedInput4 isEqualToString:@"UIKeyInputPageUp"];

    if ((v18 & 1) == 0)
    {
      _unmodifiedInput5 = [eventCopy _unmodifiedInput];
      if ([_unmodifiedInput5 isEqualToString:@"\r"])
      {
      }

      else
      {
        _unmodifiedInput6 = [eventCopy _unmodifiedInput];
        if (([_unmodifiedInput6 isEqualToString:@" "] & 1) == 0)
        {

          goto LABEL_22;
        }

        _modifierFlags = [eventCopy _modifierFlags];

        if ((_modifierFlags & 0x40000) != 0)
        {
          goto LABEL_22;
        }
      }

      [(UIInputSwitcher *)self hideSwitcher];
      v16 = 1;
      goto LABEL_23;
    }

    v11 = 0;
  }

LABEL_10:
  v14 = [(UIInputSwitcher *)self inputModeIdentifierWithNextFlag:v11];
  if (!v14)
  {
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v15 = v14;
  v16 = 1;
  [(UIInputSwitcher *)self switchMode:v14 withHUD:1 withDelay:0];
  [(UIInputSwitcher *)self cancelShowSwitcherTimer];
  [(UIInputSwitcher *)self touchHideSwitcherTimer];

LABEL_23:
  return v16;
}

- (BOOL)handleEmojiPicker
{
  v3 = +[UIKeyboardImpl activeInstance];
  isEmojiPopoverVisibleOrDismissing = [v3 isEmojiPopoverVisibleOrDismissing];

  if (!isEmojiPopoverVisibleOrDismissing)
  {
    if (![(UIInputSwitcher *)self usingCapsLockLanguageSwitch]&& ![(UIInputSwitcher *)self needsFullHUD])
    {
      v8 = +[UIKeyboardImpl activeInstance];
      [v8 presentEmojiPopoverViaTrigger:@"globeKey" completion:0];

      [(UIInputSwitcher *)self cancelHideSwitcherTimer];
      [(UIInputSwitcher *)self cancelShowSwitcherTimer];
      [(UIInputSwitcher *)self dismissSwitcher:0];
      [(UIInputSwitcher *)self cleanUpAfterHide];
      return 1;
    }

    return 0;
  }

  if ([(UIInputSwitcher *)self needsFullHUD]|| [(UIInputSwitcher *)self usingCapsLockLanguageSwitch])
  {
    return 0;
  }

  if ([(UIInputSwitcher *)self dismissingEmojiPopover])
  {
    return 1;
  }

  v5 = 1;
  [(UIInputSwitcher *)self setDismissingEmojiPopover:1];
  v6 = +[UIKeyboardImpl activeInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36__UIInputSwitcher_handleEmojiPicker__block_invoke;
  v9[3] = &unk_1E70F5AC0;
  v9[4] = self;
  [v6 dismissEmojiPopoverIfNecessaryWithCompletion:v9];

  return v5;
}

uint64_t __36__UIInputSwitcher_handleEmojiPicker__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearShowSwitcherTimer];
  v2 = *(a1 + 32);

  return [v2 setDismissingEmojiPopover:0];
}

- (BOOL)needsFullHUD
{
  availableInputModes = [(UIInputSwitcher *)self availableInputModes];
  if ([availableInputModes count] >= 2)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    canPresentEmojiPopover = [v4 canPresentEmojiPopover];
    if (canPresentEmojiPopover & 1) != 0 || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 isEmojiPopoverVisibleOrDismissing]))
    {
      v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
      preferencesActions = [v6 preferencesActions];
      useHardwareGlobeKeyAsEmojiKey = [preferencesActions useHardwareGlobeKeyAsEmojiKey];

      if ((canPresentEmojiPopover & 1) == 0)
      {
      }

      if (useHardwareGlobeKeyAsEmojiKey)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v9 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)handleModifiersChangedEvent:(id)event
{
  eventCopy = event;
  _gsModifierFlags = [eventCopy _gsModifierFlags];
  _inputFlags = [eventCopy _inputFlags];

  if ((_inputFlags & 0x20) != 0)
  {
    if ((_gsModifierFlags & 0x220000) != 0 || handleModifiersChangedEvent__lastMods & 0x220000 | _gsModifierFlags & 0x900000)
    {
      goto LABEL_10;
    }

    m_state = self->m_state;
    if (m_state == 1)
    {
      [(UIInputSwitcher *)self cancelShowSwitcherTimer];
      loadedIdentifier = [(UIInputSwitcher *)self loadedIdentifier];

      if (loadedIdentifier)
      {
        v9 = +[UIKeyboardImpl activeInstance];
        loadedIdentifier2 = [(UIInputSwitcher *)self loadedIdentifier];
        [v9 setInputMode:loadedIdentifier2 userInitiated:1];

        loadedIdentifier3 = [(UIInputSwitcher *)self loadedIdentifier];
        [(UIInputSwitcher *)self setSelectedInputMode:loadedIdentifier3];

        [(UIInputSwitcher *)self dismissSwitcherWithDelay:1.5];
      }
    }

    else
    {
      if (m_state != 2)
      {
LABEL_10:
        handleModifiersChangedEvent__lastMods = _gsModifierFlags;
        return (_inputFlags >> 5) & 1;
      }

      [(UIInputSwitcher *)self hideSwitcher];
    }

    self->m_state = 0;
    goto LABEL_10;
  }

  return (_inputFlags >> 5) & 1;
}

- (void)reloadInputModes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:600 description:@"Subclass must implement"];
}

- (id)availableInputModes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:604 description:@"Subclass must implement"];

  return MEMORY[0x1E695E0F0];
}

- (id)selectedInputMode
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:609 description:@"Subclass must implement"];

  return &stru_1EFB14550;
}

- (void)setSelectedInputMode:(id)mode
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:614 description:@"Subclass must implement"];
}

- (id)nextInputMode
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:618 description:@"Subclass must implement"];

  return 0;
}

- (id)previousInputMode
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:623 description:@"Subclass must implement"];

  return 0;
}

- (void)setShowingCapsLockSwitcher:(BOOL)switcher
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:629 description:@"Subclass must implement"];
}

- (BOOL)isVisibleOrHiding
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:634 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:640 description:@"Subclass must implement"];

  return 0;
}

- (void)dismissSwitcherWithDelay:(double)delay
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:645 description:@"Subclass must implement"];
}

- (void)dismissSwitcher:(BOOL)switcher
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:649 description:@"Subclass must implement"];
}

@end