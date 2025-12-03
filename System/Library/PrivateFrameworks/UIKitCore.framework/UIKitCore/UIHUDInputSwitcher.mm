@interface UIHUDInputSwitcher
- (BOOL)handleSwitchCommand:(BOOL)command withHUD:(BOOL)d withDelay:(BOOL)delay;
- (BOOL)isVisibleOrHiding;
- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay;
- (UIHUDInputSwitcher)init;
- (id)selectedInputMode;
- (void)_showSwitcherViewAsHUD;
- (void)dismissSwitcher:(BOOL)switcher;
- (void)dismissSwitcherWithDelay:(double)delay;
- (void)setSelectedInputMode:(id)mode;
@end

@implementation UIHUDInputSwitcher

- (UIHUDInputSwitcher)init
{
  v6.receiver = self;
  v6.super_class = UIHUDInputSwitcher;
  v2 = [(UIInputSwitcher *)&v6 init];
  if (v2)
  {
    v3 = +[UIInputSwitcherView sharedInstance];
    m_switcherView = v2->m_switcherView;
    v2->m_switcherView = v3;
  }

  return v2;
}

- (id)selectedInputMode
{
  if ([(UIKeyboardMenuView *)self->m_switcherView isVisible])
  {
    selectedInputMode = [(UIInputSwitcherView *)self->m_switcherView selectedInputMode];
  }

  else if (self->super.m_state == 1)
  {
    selectedInputMode = [(UIInputSwitcher *)self loadedIdentifier];
  }

  else
  {
    selectedInputMode = 0;
  }

  return selectedInputMode;
}

- (void)setSelectedInputMode:(id)mode
{
  modeCopy = mode;
  [(UIHUDInputSwitcher *)self _showSwitcherViewAsHUD];
  [(UIInputSwitcherView *)self->m_switcherView selectInputMode:modeCopy];
}

- (BOOL)isVisibleOrHiding
{
  superview = [(UIView *)self->m_switcherView superview];
  v3 = superview != 0;

  return v3;
}

- (void)dismissSwitcherWithDelay:(double)delay
{
  [(UIKeyboardMenuView *)self->m_switcherView setMode:2];
  m_switcherView = self->m_switcherView;

  [(UIInputSwitcherView *)m_switcherView fadeWithDelay:delay];
}

- (void)dismissSwitcher:(BOOL)switcher
{
  if (switcher)
  {
    [(UIKeyboardMenuView *)self->m_switcherView setMode:2];
  }

  m_switcherView = self->m_switcherView;

  [(UIKeyboardMenuView *)m_switcherView hide];
}

- (void)_showSwitcherViewAsHUD
{
  [(UIKeyboardMenuView *)self->m_switcherView setShowingCapsLockSwitcher:[(UIInputSwitcher *)self usingCapsLockLanguageSwitch]];
  [(UIInputSwitcherView *)self->m_switcherView setShowsSwitches:0];
  m_switcherView = self->m_switcherView;

  [(UIKeyboardMenuView *)m_switcherView showAsHUD];
}

- (BOOL)handleSwitchCommand:(BOOL)command withHUD:(BOOL)d withDelay:(BOOL)delay
{
  delayCopy = delay;
  dCopy = d;
  commandCopy = command;
  [(UIInputSwitcherView *)self->m_switcherView reloadInputModes];
  inputModes = [(UIInputSwitcherView *)self->m_switcherView inputModes];
  v10 = [inputModes count];

  if (v10 < 2)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = UIHUDInputSwitcher;
  return [(UIInputSwitcher *)&v12 handleSwitchCommand:commandCopy withHUD:dCopy withDelay:delayCopy];
}

- (BOOL)switchMode:(id)mode withHUD:(BOOL)d withDelay:(BOOL)delay
{
  delayCopy = delay;
  dCopy = d;
  modeCopy = mode;
  v9 = UIKeyboardActiveUserSelectableInputModes;
  if ([v9 count] < 2)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  [(UIInputSwitcher *)self setLoadedIdentifier:modeCopy];
  if (!dCopy || ([(UIKeyboardMenuView *)self->m_switcherView containerView], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
    v13 = +[UIKeyboardImpl activeInstance];
    loadedIdentifier = [(UIInputSwitcher *)self loadedIdentifier];
    [v13 setInputMode:loadedIdentifier userInitiated:1];

    if (delayCopy)
    {
      [(UIHUDInputSwitcher *)self _showSwitcherViewAsHUD];
      m_switcherView = self->m_switcherView;
      loadedIdentifier2 = [(UIInputSwitcher *)self loadedIdentifier];
      [(UIInputSwitcherView *)m_switcherView selectInputMode:loadedIdentifier2];

      [(UIKeyboardMenuView *)self->m_switcherView setMode:2];
      [(UIInputSwitcherView *)self->m_switcherView fadeWithDelay:0.5];
      self->super.m_state = 0;
    }

    else
    {
      [(UIInputSwitcher *)self hideSwitcher];
    }

    goto LABEL_15;
  }

  m_state = self->super.m_state;
  if (m_state == 2)
  {
LABEL_13:
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
LABEL_14:
    v17 = self->m_switcherView;
    loadedIdentifier3 = [(UIInputSwitcher *)self loadedIdentifier];
    [(UIInputSwitcherView *)v17 selectInputMode:loadedIdentifier3];

LABEL_15:
    v12 = 1;
    goto LABEL_19;
  }

  if (m_state == 1)
  {
    self->super.m_state = 2;
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
    [(UIHUDInputSwitcher *)self _showSwitcherViewAsHUD];
    goto LABEL_13;
  }

  if (m_state)
  {
    if ([(UIInputSwitcher *)self isVisible])
    {
      [(UIInputSwitcher *)self hideSwitcher];
    }

    goto LABEL_18;
  }

  if (!delayCopy)
  {
    self->super.m_state = 2;
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
    [(UIHUDInputSwitcher *)self _showSwitcherViewAsHUD];
    goto LABEL_14;
  }

  [(UIInputSwitcher *)self touchShowSwitcherTimer];
  v12 = 1;
  self->super.m_state = 1;
LABEL_19:

  return v12;
}

@end