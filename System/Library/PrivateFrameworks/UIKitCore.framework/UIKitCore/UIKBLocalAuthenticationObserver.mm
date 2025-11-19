@interface UIKBLocalAuthenticationObserver
- (BOOL)_applicationStateIsActive;
- (BOOL)localAuthenticationPresentedOrBeingRecoveredFrom;
- (UIKBLocalAuthenticationObserver)init;
- (UIKeyInput)delegateResignedDuringLocalAuthentication;
- (id)sessionIDForInputDelegate:(id)a3;
- (void)_applicationResumed:(id)a3;
- (void)_localAuthenticationDismissed;
- (void)_localAuthenticationPresented;
- (void)_startListeningForLAUINotificationsIfNeeded;
- (void)_stopListeningForLAUINotifications;
- (void)dealloc;
- (void)didTryToBecomeFirstResponder:(id)a3;
- (void)inputDelegateWillTeardown:(id)a3 sessionUUID:(id)a4;
- (void)willTryToBecomeFirstResponder:(id)a3;
@end

@implementation UIKBLocalAuthenticationObserver

- (UIKBLocalAuthenticationObserver)init
{
  v6.receiver = self;
  v6.super_class = UIKBLocalAuthenticationObserver;
  v2 = [(UIKBLocalAuthenticationObserver *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__startListeningForLAUINotificationsIfNeeded name:@"UIApplicationDidBecomeActiveNotification" object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__stopListeningForLAUINotifications name:@"UIApplicationDidEnterBackgroundNotification" object:0];

    [(UIKBLocalAuthenticationObserver *)v2 _startListeningForLAUINotificationsIfNeeded];
  }

  return v2;
}

- (void)_startListeningForLAUINotificationsIfNeeded
{
  if (!self->_isListeningForLAUINotifications)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, UIKBLADarwinUIPresented_0, @"com.apple.LocalAuthentication.ui.presented", 0, 0);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, self, UIKBLADarwinUIDismissed_0, @"com.apple.LocalAuthentication.ui.dismissed", 0, 0);
    self->_isListeningForLAUINotifications = 1;
  }
}

- (UIKeyInput)delegateResignedDuringLocalAuthentication
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateResignedDuringLocalAuthentication);

  return WeakRetained;
}

- (void)_stopListeningForLAUINotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.LocalAuthentication.ui.presented", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.LocalAuthentication.ui.dismissed", 0);
  self->_isListeningForLAUINotifications = 0;
}

- (void)dealloc
{
  [(UIKBLocalAuthenticationObserver *)self _stopListeningForLAUINotifications];
  v3.receiver = self;
  v3.super_class = UIKBLocalAuthenticationObserver;
  [(UIKBLocalAuthenticationObserver *)&v3 dealloc];
}

- (id)sessionIDForInputDelegate:(id)a3
{
  v4 = a3;
  if (!+[UIKeyboard isInputSystemUI]&& ([(UIKBLocalAuthenticationObserver *)self delegateResignedDuringLocalAuthentication], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == v4))
  {
    v6 = [(UIKBLocalAuthenticationObserver *)self uuidOfDelegateResignedDuringLocalAuthentication];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)willTryToBecomeFirstResponder:(id)a3
{
  v8 = a3;
  if (+[UIKeyboard isInputSystemUI]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v8 _rtiSourceSession];
    v5 = [(UIKBLocalAuthenticationObserver *)self uuidOfSessionEndedDuringLocalAuthentication];
    v6 = [v4 uuid];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      [(UIKBLocalAuthenticationObserver *)self setIsRestoringPreLocalAuthenticationDelegate:1];
    }
  }
}

- (void)didTryToBecomeFirstResponder:(id)a3
{
  v8 = a3;
  if (+[UIKeyboard isInputSystemUI]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v8 _rtiSourceSession];
    v5 = [(UIKBLocalAuthenticationObserver *)self uuidOfSessionEndedDuringLocalAuthentication];
    v6 = [v4 uuid];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      [(UIKBLocalAuthenticationObserver *)self setIsRestoringPreLocalAuthenticationDelegate:0];
    }
  }
}

- (void)inputDelegateWillTeardown:(id)a3 sessionUUID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = +[UIKeyboard isInputSystemUI];
  v8 = [(UIKBLocalAuthenticationObserver *)self localAuthenticationPresented];
  if (v7)
  {
    if (v8)
    {
      [(UIKBLocalAuthenticationObserver *)self setUuidOfSessionEndedDuringLocalAuthentication:v6];
    }
  }

  else if (v8)
  {
    [(UIKBLocalAuthenticationObserver *)self setDelegateResignedDuringLocalAuthentication:v9];
    [(UIKBLocalAuthenticationObserver *)self setUuidOfDelegateResignedDuringLocalAuthentication:v6];
  }
}

- (BOOL)_applicationStateIsActive
{
  if (![UIApp applicationState])
  {
    return 1;
  }

  v2 = +[UIWindow _applicationKeyWindow];
  v3 = [v2 _isHostedInAnotherProcess];

  return v3;
}

- (void)_localAuthenticationPresented
{
  [(UIKBLocalAuthenticationObserver *)self setLocalAuthenticationPresented:1];
  v5 = +[UIKeyboardImpl activeInstance];
  if ([v5 textInputTraitsNeedAutofill] && -[UIKBLocalAuthenticationObserver _applicationStateIsActive](self, "_applicationStateIsActive"))
  {
    if (+[UIKeyboard isKeyboardProcess])
    {
      v3 = +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI];

      if (!v3)
      {
        return;
      }
    }

    else
    {
    }

    v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v4 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v5 _preserveInputViewsWithId:v4 animated:1 reset:0];
  }
}

- (void)_localAuthenticationDismissed
{
  [(UIKBLocalAuthenticationObserver *)self setLocalAuthenticationPresented:0];
  if (+[UIKeyboard isInputSystemUI]&& ![(UIKBLocalAuthenticationObserver *)self _applicationStateIsActive])
  {
    [(UIKBLocalAuthenticationObserver *)self setInputUIResuming:1];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__applicationResumed_ name:@"UIApplicationResumedNotification" object:UIApp];
  }

  if (!+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") || +[UIKeyboard usesInputSystemUIForAutoFillOnlyWithRTI])
  {
    [(UIKBLocalAuthenticationObserver *)self setIsRestoringInputViews:1];
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v5 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v4 _restoreInputViewsWithId:v5 animated:1];

    [(UIKBLocalAuthenticationObserver *)self setIsRestoringInputViews:0];
  }
}

- (void)_applicationResumed:(id)a3
{
  [(UIKBLocalAuthenticationObserver *)self setInputUIResuming:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"UIApplicationResumedNotification" object:0];
}

- (BOOL)localAuthenticationPresentedOrBeingRecoveredFrom
{
  if ([(UIKBLocalAuthenticationObserver *)self localAuthenticationPresented]|| [(UIKBLocalAuthenticationObserver *)self isRestoringPreLocalAuthenticationDelegate]|| [(UIKBLocalAuthenticationObserver *)self isRestoringInputViews])
  {
    return 1;
  }

  return [(UIKBLocalAuthenticationObserver *)self inputUIResuming];
}

@end