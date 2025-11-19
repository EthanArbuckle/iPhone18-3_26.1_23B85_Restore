@interface UIHUDInputSwitcher
- (BOOL)handleSwitchCommand:(BOOL)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5;
- (BOOL)isVisibleOrHiding;
- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5;
- (UIHUDInputSwitcher)init;
- (id)selectedInputMode;
- (void)_showSwitcherViewAsHUD;
- (void)dismissSwitcher:(BOOL)a3;
- (void)dismissSwitcherWithDelay:(double)a3;
- (void)setSelectedInputMode:(id)a3;
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
    v3 = [(UIInputSwitcherView *)self->m_switcherView selectedInputMode];
  }

  else if (self->super.m_state == 1)
  {
    v3 = [(UIInputSwitcher *)self loadedIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSelectedInputMode:(id)a3
{
  v4 = a3;
  [(UIHUDInputSwitcher *)self _showSwitcherViewAsHUD];
  [(UIInputSwitcherView *)self->m_switcherView selectInputMode:v4];
}

- (BOOL)isVisibleOrHiding
{
  v2 = [(UIView *)self->m_switcherView superview];
  v3 = v2 != 0;

  return v3;
}

- (void)dismissSwitcherWithDelay:(double)a3
{
  [(UIKeyboardMenuView *)self->m_switcherView setMode:2];
  m_switcherView = self->m_switcherView;

  [(UIInputSwitcherView *)m_switcherView fadeWithDelay:a3];
}

- (void)dismissSwitcher:(BOOL)a3
{
  if (a3)
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

- (BOOL)handleSwitchCommand:(BOOL)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  [(UIInputSwitcherView *)self->m_switcherView reloadInputModes];
  v9 = [(UIInputSwitcherView *)self->m_switcherView inputModes];
  v10 = [v9 count];

  if (v10 < 2)
  {
    return 0;
  }

  v12.receiver = self;
  v12.super_class = UIHUDInputSwitcher;
  return [(UIInputSwitcher *)&v12 handleSwitchCommand:v7 withHUD:v6 withDelay:v5];
}

- (BOOL)switchMode:(id)a3 withHUD:(BOOL)a4 withDelay:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = UIKeyboardActiveUserSelectableInputModes;
  if ([v9 count] < 2)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  [(UIInputSwitcher *)self setLoadedIdentifier:v8];
  if (!v6 || ([(UIKeyboardMenuView *)self->m_switcherView containerView], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    [(UIInputSwitcher *)self cancelShowSwitcherTimer];
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [(UIInputSwitcher *)self loadedIdentifier];
    [v13 setInputMode:v14 userInitiated:1];

    if (v5)
    {
      [(UIHUDInputSwitcher *)self _showSwitcherViewAsHUD];
      m_switcherView = self->m_switcherView;
      v16 = [(UIInputSwitcher *)self loadedIdentifier];
      [(UIInputSwitcherView *)m_switcherView selectInputMode:v16];

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
    v18 = [(UIInputSwitcher *)self loadedIdentifier];
    [(UIInputSwitcherView *)v17 selectInputMode:v18];

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

  if (!v5)
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