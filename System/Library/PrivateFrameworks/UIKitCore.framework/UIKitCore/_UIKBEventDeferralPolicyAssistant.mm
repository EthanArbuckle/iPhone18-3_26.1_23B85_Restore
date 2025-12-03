@interface _UIKBEventDeferralPolicyAssistant
- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)responder;
- (UIKeyboardSceneDelegate)keyboardSceneDelegate;
- (void)_handleObserverDeliveryPolicyDidChange;
- (void)_isWindowDeferringTarget:(void *)target;
- (void)configureEventDeferralPolicyObserver;
- (void)didReloadInputViewsForNonKeyWindowSceneForResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder;
- (void)observerDeliveryPolicyDidChange:(id)change;
- (void)prepareForReloadInputViews;
- (void)stopEventDeferralPolicyObserver;
@end

@implementation _UIKBEventDeferralPolicyAssistant

- (void)configureEventDeferralPolicyObserver
{
  v16 = *MEMORY[0x1E69E9840];
  keyboardSceneDelegate = [(_UIKBEventDeferralPolicyAssistant *)self keyboardSceneDelegate];
  scene = [keyboardSceneDelegate scene];
  keyWindow = [scene keyWindow];

  v6 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:{objc_msgSend(keyWindow, "_contextId")}];
  eventDeferralPolicyObserver = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
  deferringToken = [eventDeferralPolicyObserver deferringToken];
  v9 = _deferringTokenEqualToToken(v6, deferringToken);

  if ((v9 & 1) == 0)
  {
    [(_UIKBEventDeferralPolicyAssistant *)self stopEventDeferralPolicyObserver];
    if (v6)
    {
      v10 = _UIKBEventDeferralPolicyAssistantLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = 138543362;
        v15 = v6;
        _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "Start observing event deferral policy for key window with token %{public}@", &v14, 0xCu);
      }

      v11 = objc_opt_new();
      [(_UIKBEventDeferralPolicyAssistant *)self setEventDeferralPolicyObserver:v11];

      eventDeferralPolicyObserver2 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      [eventDeferralPolicyObserver2 setDeferringToken:v6];

      eventDeferralPolicyObserver3 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      [eventDeferralPolicyObserver3 addObserver:self];

      [(_UIKBEventDeferralPolicyAssistant *)self _handleObserverDeliveryPolicyDidChange];
    }
  }
}

- (void)stopEventDeferralPolicyObserver
{
  v10 = *MEMORY[0x1E69E9840];
  eventDeferralPolicyObserver = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];

  if (eventDeferralPolicyObserver)
  {
    v4 = _UIKBEventDeferralPolicyAssistantLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      eventDeferralPolicyObserver2 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      deferringToken = [eventDeferralPolicyObserver2 deferringToken];
      v8 = 138543362;
      v9 = deferringToken;
      _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "Stop observing event deferral policy for window with token %{public}@", &v8, 0xCu);
    }

    eventDeferralPolicyObserver3 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
    [eventDeferralPolicyObserver3 removeObserver:self];

    [(_UIKBEventDeferralPolicyAssistant *)self setEventDeferralPolicyObserver:0];
  }
}

- (void)_handleObserverDeliveryPolicyDidChange
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  BSDispatchMain();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

- (void)_isWindowDeferringTarget:(void *)target
{
  v3 = a2;
  if (target)
  {
    if ([target keyWindowIsDeferringTarget])
    {
      v4 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:{objc_msgSend(v3, "_contextId")}];
      eventDeferralPolicyObserver = [target eventDeferralPolicyObserver];
      deferringToken = [eventDeferralPolicyObserver deferringToken];
      target = _deferringTokenEqualToToken(v4, deferringToken);
    }

    else
    {
      target = 0;
    }
  }

  return target;
}

- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)responder
{
  responderCopy = responder;
  _window = [responderCopy _window];
  v6 = [(_UIKBEventDeferralPolicyAssistant *)self _isWindowDeferringTarget:_window];

  keyboardSceneDelegate = [(_UIKBEventDeferralPolicyAssistant *)self keyboardSceneDelegate];
  scene = [keyboardSceneDelegate scene];
  _isKeyWindowScene = [scene _isKeyWindowScene];

  if ([responderCopy isFirstResponder])
  {
    v10 = [responderCopy _requiresKeyboardWhenFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = +[UIKeyboard isKeyboardProcess];
  v12 = v11;
  v13 = _isKeyWindowScene ^ 1 | v6;
  if ((v13 & 1) == 0 && (v10 & 1) == 0 && !v11)
  {
    v14 = _UIKBEventDeferralPolicyAssistantLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_debug_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEBUG, "Recommend deferring load key scene input views: window is not event deferral target", v16, 2u);
    }
  }

  if ((v13 & 1) == 0)
  {
    _isKeyWindowScene = v10 | v12;
  }

  return _isKeyWindowScene & 1;
}

- (void)didReloadInputViewsForNonKeyWindowSceneForResponder:(id)responder force:(BOOL)force fromBecomeFirstResponder:(BOOL)firstResponder
{
  firstResponderCopy = firstResponder;
  forceCopy = force;
  v40 = *MEMORY[0x1E69E9840];
  responderCopy = responder;
  if (!self)
  {
    goto LABEL_6;
  }

  keyboardSceneDelegate = [(_UIKBEventDeferralPolicyAssistant *)self keyboardSceneDelegate];
  _window = [responderCopy _window];
  v10 = [(_UIKBEventDeferralPolicyAssistant *)self _isWindowDeferringTarget:_window];

  scene = [keyboardSceneDelegate scene];
  _isKeyWindowScene = [scene _isKeyWindowScene];

  isFirstResponder = [responderCopy isFirstResponder];
  if (isFirstResponder)
  {
    isFirstResponder = [responderCopy _requiresKeyboardWhenFirstResponder];
  }

  if (v10)
  {

LABEL_6:
    goto LABEL_18;
  }

  v14 = _isKeyWindowScene & isFirstResponder;

  if (v14 == 1)
  {
    v15 = responderCopy;
    v16 = _UIKBEventDeferralPolicyAssistantLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      eventDeferralPolicyObserver = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      deferringToken = [eventDeferralPolicyObserver deferringToken];
      *buf = 138543875;
      v33 = v18;
      v34 = 2049;
      v35 = v15;
      v36 = 2112;
      v37 = deferringToken;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Request event deferral target selection (responder:<%{public}@: %{private}p> token:%@)", buf, 0x20u);
    }

    v21 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    _window2 = [v15 _window];
    [v21 requestEventDeferralTargetSelectionForWindow:_window2];

    v23 = v15;
    v24 = _UIKBEventDeferralPolicyAssistantLogger();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = v26;
      v28 = "N";
      *buf = 138544131;
      v34 = 2049;
      if (forceCopy)
      {
        v29 = "Y";
      }

      else
      {
        v29 = "N";
      }

      v33 = v26;
      v35 = v23;
      if (firstResponderCopy)
      {
        v28 = "Y";
      }

      v36 = 2080;
      v37 = v29;
      v38 = 2080;
      v39 = v28;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Queue reload task for become event deferral target (responder:<%{public}@: %{private}p> force:%s fromBFR:%s)", buf, 0x2Au);
    }

    v30 = [[_UIReloadInputViewsTask alloc] initWithResponder:v23 force:forceCopy fromBecomeFirstResponder:firstResponderCopy];
    [(_UIKBEventDeferralPolicyAssistant *)self setReloadInputViewTask:v30];
  }

LABEL_18:
}

- (void)prepareForReloadInputViews
{
  [(_UIKBEventDeferralPolicyAssistant *)self setReloadInputViewTask:0];

  [(_UIKBEventDeferralPolicyAssistant *)self configureEventDeferralPolicyObserver];
}

- (void)observerDeliveryPolicyDidChange:(id)change
{
  if (self->_eventDeferralPolicyObserver == change)
  {
    [(_UIKBEventDeferralPolicyAssistant *)self _handleObserverDeliveryPolicyDidChange];
  }
}

- (UIKeyboardSceneDelegate)keyboardSceneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardSceneDelegate);

  return WeakRetained;
}

@end