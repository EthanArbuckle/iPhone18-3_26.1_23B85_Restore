@interface UIInputSwitcher
+ (id)sharedInstance;
- (BOOL)handleEmojiPicker;
- (BOOL)handleGlobeKeyEvent:(id)a3 switcherIsVisible:(BOOL)a4;
- (BOOL)handleModifiersChangedEvent:(id)a3;
- (BOOL)handleNavigationEvent:(id)a3;
- (BOOL)handleSwitchCommand:(BOOL)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5;
- (BOOL)handleSwitchingKeyEvent:(id)a3;
- (BOOL)isVisibleOrHiding;
- (BOOL)needsFullHUD;
- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5;
- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5 fromCapsLock:(BOOL)a6;
- (UIInputSwitcher)init;
- (id)availableInputModes;
- (id)inputModeIdentifierWithNextFlag:(BOOL)a3;
- (id)nextInputMode;
- (id)previousInputMode;
- (id)selectedInputMode;
- (void)cancelHideSwitcherTimer;
- (void)cancelShowSwitcherTimer;
- (void)cleanUpAfterHide;
- (void)clearHideSwitcherTimer;
- (void)clearShowSwitcherTimer;
- (void)dealloc;
- (void)dismissSwitcher:(BOOL)a3;
- (void)dismissSwitcherWithDelay:(double)a3;
- (void)hideSwitcher;
- (void)hideSwitcherIfNeeded;
- (void)reloadInputModes;
- (void)setSelectedInputMode:(id)a3;
- (void)setShowingCapsLockSwitcher:(BOOL)a3;
- (void)showSwitcherShouldAutoHide:(BOOL)a3;
- (void)showsLanguageIndicator:(id)a3;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIWindowWillRotateNotification" object:0];

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
  v11 = [(UIInputSwitcher *)self selectedInputMode];
  if (!v11)
  {
    goto LABEL_9;
  }

  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 inputViews];
  if ([v4 isCustomInputView])
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v5 inputModeWithIdentifier:v11];
    v7 = [v6 hardwareLayout];

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = +[UIKeyboardImpl activeInstance];
  [v8 setInputMode:v11 userInitiated:1];

  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 isInHardwareKeyboardMode];

  if (v10 && ([v11 containsString:@"emoji"] & 1) != 0)
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (void)showSwitcherShouldAutoHide:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInputSwitcher *)self loadedIdentifier];
  [(UIInputSwitcher *)self setSelectedInputMode:v5];

  self->m_state = 2;
  if (v3)
  {
    [(UIInputSwitcher *)self touchHideSwitcherTimer];
  }

  if ((UIKeyboardAutomaticIsOnScreen() & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel_handleRotate_ name:@"UIWindowWillRotateNotification" object:0];
  }
}

- (void)touchShowSwitcherTimer
{
  m_showSwitcherDelay = self->m_showSwitcherDelay;
  if (m_showSwitcherDelay)
  {
    v4 = [(UIInputSwitcher *)self isVisibleOrHiding];
    v5 = 0.1;
    if (v4)
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

- (id)inputModeIdentifierWithNextFlag:(BOOL)a3
{
  if (!a3)
  {
    v12 = [(UIInputSwitcher *)self previousInputMode];
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 textInputTraits];
  v7 = [v4 nextInputModeToUseForTraits:v6];

  v8 = [v7 identifier];
  if (v8 && (-[UIInputSwitcher availableInputModes](self, "availableInputModes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v8], v9, v10))
  {
    v11 = v8;
  }

  else
  {
    v11 = [(UIInputSwitcher *)self nextInputMode];
  }

  v12 = v11;

  if (!v12)
  {
LABEL_9:
    v12 = UIKeyboardGetCurrentInputMode();
  }

LABEL_10:

  return v12;
}

- (void)hideSwitcherIfNeeded
{
  if (self->m_state)
  {
    [(UIInputSwitcher *)self hideSwitcher];
  }
}

- (BOOL)handleSwitchCommand:(BOOL)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [(UIInputSwitcher *)self reloadInputModes];
  v9 = [(UIInputSwitcher *)self availableInputModes];
  v10 = [v9 count];

  if (!v10)
  {
    return 0;
  }

  v11 = [(UIInputSwitcher *)self inputModeIdentifierWithNextFlag:!v7];
  if (v6)
  {
    [(UIInputSwitcher *)self touchHideSwitcherTimer];
  }

  v12 = [(UIInputSwitcher *)self switchMode:v11 withHUD:v6 withDelay:v5];

  return v12;
}

- (void)showsLanguageIndicator:(id)a3
{
  v6 = a3;
  v4 = [(UIInputSwitcher *)self availableInputModes];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    [(UIInputSwitcher *)self setShowsLanguageIndicatorOnly:1];
    [(UIInputSwitcher *)self switchMode:v6 withHUD:1 withDelay:1];
    [(UIInputSwitcher *)self setShowsLanguageIndicatorOnly:0];
  }
}

- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5 fromCapsLock:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  [(UIInputSwitcher *)self setUsingCapsLockLanguageSwitch:v6];
  if (v6)
  {
    [(UIInputSwitcher *)self handleEmojiPicker];
  }

  v11 = [(UIInputSwitcher *)self switchMode:v10 withHUD:v8 withDelay:v7];

  return v11;
}

- (void)updateHardwareLayout
{
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [(UIInputSwitcher *)self loadedIdentifier];
  v8 = [v3 inputModeWithIdentifier:v4];

  v5 = [v8 automaticHardwareLayout];

  if (v5)
  {
    v6 = UIApp;
    v7 = [v8 automaticHardwareLayout];
    [v6 setHardwareKeyboardLayoutName:v7];
  }
}

- (BOOL)handleSwitchingKeyEvent:(id)a3
{
  v4 = a3;
  v5 = [(UIInputSwitcher *)self isVisibleOrHiding];
  if ([v4 _isGlobeKey])
  {
    v6 = [v4 _isKeyDown] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIInputSwitcher *)self usingCapsLockLanguageSwitch]&& v5;
  if ([v4 _modifierFlags] == 0x40000)
  {
    v8 = [v4 _unmodifiedInput];
    v9 = [v8 isEqualToString:@" "];

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
      v12 = 0;
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
  v10 = [(UIInputSwitcher *)self availableInputModes];
  v11 = [v10 count];

  if ([(UIInputSwitcher *)self handleEmojiPicker])
  {
    v12 = 1;
    goto LABEL_25;
  }

  v13 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v14 = [v13 preferencesActions];
  v12 = [v14 useHardwareGlobeKeyAsEmojiKey];

  if (v11 >= 2 && (v12 & 1) == 0)
  {
    v12 = [(UIInputSwitcher *)self handleGlobeKeyEvent:v4 switcherIsVisible:v5];
  }

LABEL_20:
  if ((v12 & 1) == 0 && v5)
  {
    if ([v4 _isKeyDown])
    {
      v12 = [(UIInputSwitcher *)self handleNavigationEvent:v4];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_25:

  return v12;
}

- (BOOL)handleGlobeKeyEvent:(id)a3 switcherIsVisible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIInputSwitcher *)self needsFullHUD];
  Current = CFAbsoluteTimeGetCurrent();
  v9 = -[UIInputSwitcher inputModeIdentifierWithNextFlag:](self, "inputModeIdentifierWithNextFlag:", [v6 _modifierFlags] != 0x20000);
  if ([(UIInputSwitcher *)self dismissingEmojiPopover])
  {
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 currentLinguisticInputMode];
    v12 = [v11 identifier];

    [(UIInputSwitcher *)self setDismissingEmojiPopover:0];
    v9 = v12;
  }

  [(UIInputSwitcher *)self switchMode:v9 withHUD:v7 withDelay:0];
  if (v4)
  {
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
  }

  [(UIInputSwitcher *)self touchHideSwitcherTimer];
  self->m_lastGlobeKeyUpTime = Current;
  if ([v6 _modifierFlags] != 0x20000)
  {
    [(UIInputSwitcher *)self updateHardwareLayout];
  }

  return 1;
}

- (BOOL)handleNavigationEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 _unmodifiedInput];
  [v5 length];

  if (+[UIKeyboard isLanguageIndicatorEnabled])
  {
    v6 = [(UIInputSwitcher *)self availableInputModes];
    v7 = [v6 count] == 1;
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

  v10 = [v4 _unmodifiedInput];
  v11 = [v10 isEqualToString:@"UIKeyInputDownArrow"];
  if (v11)
  {
    goto LABEL_7;
  }

  v12 = [v4 _unmodifiedInput];
  v13 = [v12 isEqualToString:@"UIKeyInputPageDown"];

  if (v13)
  {
    v11 = 1;
  }

  else
  {
    v10 = [v4 _unmodifiedInput];
    if ([v10 isEqualToString:@"UIKeyInputUpArrow"])
    {
LABEL_7:

      goto LABEL_10;
    }

    v17 = [v4 _unmodifiedInput];
    v18 = [v17 isEqualToString:@"UIKeyInputPageUp"];

    if ((v18 & 1) == 0)
    {
      v19 = [v4 _unmodifiedInput];
      if ([v19 isEqualToString:@"\r"])
      {
      }

      else
      {
        v20 = [v4 _unmodifiedInput];
        if (([v20 isEqualToString:@" "] & 1) == 0)
        {

          goto LABEL_22;
        }

        v21 = [v4 _modifierFlags];

        if ((v21 & 0x40000) != 0)
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
  v4 = [v3 isEmojiPopoverVisibleOrDismissing];

  if (!v4)
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
  v3 = [(UIInputSwitcher *)self availableInputModes];
  if ([v3 count] >= 2)
  {
    v4 = +[UIKeyboardImpl activeInstance];
    v5 = [v4 canPresentEmojiPopover];
    if (v5 & 1) != 0 || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v2 = objc_claimAutoreleasedReturnValue(), ([v2 isEmojiPopoverVisibleOrDismissing]))
    {
      v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v7 = [v6 preferencesActions];
      v8 = [v7 useHardwareGlobeKeyAsEmojiKey];

      if ((v5 & 1) == 0)
      {
      }

      if (v8)
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

- (BOOL)handleModifiersChangedEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 _gsModifierFlags];
  v6 = [v4 _inputFlags];

  if ((v6 & 0x20) != 0)
  {
    if ((v5 & 0x220000) != 0 || handleModifiersChangedEvent__lastMods & 0x220000 | v5 & 0x900000)
    {
      goto LABEL_10;
    }

    m_state = self->m_state;
    if (m_state == 1)
    {
      [(UIInputSwitcher *)self cancelShowSwitcherTimer];
      v8 = [(UIInputSwitcher *)self loadedIdentifier];

      if (v8)
      {
        v9 = +[UIKeyboardImpl activeInstance];
        v10 = [(UIInputSwitcher *)self loadedIdentifier];
        [v9 setInputMode:v10 userInitiated:1];

        v11 = [(UIInputSwitcher *)self loadedIdentifier];
        [(UIInputSwitcher *)self setSelectedInputMode:v11];

        [(UIInputSwitcher *)self dismissSwitcherWithDelay:1.5];
      }
    }

    else
    {
      if (m_state != 2)
      {
LABEL_10:
        handleModifiersChangedEvent__lastMods = v5;
        return (v6 >> 5) & 1;
      }

      [(UIInputSwitcher *)self hideSwitcher];
    }

    self->m_state = 0;
    goto LABEL_10;
  }

  return (v6 >> 5) & 1;
}

- (void)reloadInputModes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:600 description:@"Subclass must implement"];
}

- (id)availableInputModes
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:604 description:@"Subclass must implement"];

  return MEMORY[0x1E695E0F0];
}

- (id)selectedInputMode
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:609 description:@"Subclass must implement"];

  return &stru_1EFB14550;
}

- (void)setSelectedInputMode:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:614 description:@"Subclass must implement"];
}

- (id)nextInputMode
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:618 description:@"Subclass must implement"];

  return 0;
}

- (id)previousInputMode
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:623 description:@"Subclass must implement"];

  return 0;
}

- (void)setShowingCapsLockSwitcher:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:629 description:@"Subclass must implement"];
}

- (BOOL)isVisibleOrHiding
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:634 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:640 description:@"Subclass must implement"];

  return 0;
}

- (void)dismissSwitcherWithDelay:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:645 description:@"Subclass must implement"];
}

- (void)dismissSwitcher:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIInputSwitcher.m" lineNumber:649 description:@"Subclass must implement"];
}

@end