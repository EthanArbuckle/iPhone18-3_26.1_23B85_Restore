@interface _UIKBEventDeferralPolicyAssistant
- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)a3;
- (UIKeyboardSceneDelegate)keyboardSceneDelegate;
- (void)_handleObserverDeliveryPolicyDidChange;
- (void)_isWindowDeferringTarget:(void *)a1;
- (void)configureEventDeferralPolicyObserver;
- (void)didReloadInputViewsForNonKeyWindowSceneForResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5;
- (void)observerDeliveryPolicyDidChange:(id)a3;
- (void)prepareForReloadInputViews;
- (void)stopEventDeferralPolicyObserver;
@end

@implementation _UIKBEventDeferralPolicyAssistant

- (void)configureEventDeferralPolicyObserver
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKBEventDeferralPolicyAssistant *)self keyboardSceneDelegate];
  v4 = [v3 scene];
  v5 = [v4 keyWindow];

  v6 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:{objc_msgSend(v5, "_contextId")}];
  v7 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
  v8 = [v7 deferringToken];
  v9 = _deferringTokenEqualToToken(v6, v8);

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

      v12 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      [v12 setDeferringToken:v6];

      v13 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      [v13 addObserver:self];

      [(_UIKBEventDeferralPolicyAssistant *)self _handleObserverDeliveryPolicyDidChange];
    }
  }
}

- (void)stopEventDeferralPolicyObserver
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];

  if (v3)
  {
    v4 = _UIKBEventDeferralPolicyAssistantLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      v7 = [v6 deferringToken];
      v8 = 138543362;
      v9 = v7;
      _os_log_debug_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEBUG, "Stop observing event deferral policy for window with token %{public}@", &v8, 0xCu);
    }

    v5 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
    [v5 removeObserver:self];

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

- (void)_isWindowDeferringTarget:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    if ([a1 keyWindowIsDeferringTarget])
    {
      v4 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:{objc_msgSend(v3, "_contextId")}];
      v5 = [a1 eventDeferralPolicyObserver];
      v6 = [v5 deferringToken];
      a1 = _deferringTokenEqualToToken(v4, v6);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (BOOL)shouldLoadKeySceneInputViewsForResponder:(id)a3
{
  v4 = a3;
  v5 = [v4 _window];
  v6 = [(_UIKBEventDeferralPolicyAssistant *)self _isWindowDeferringTarget:v5];

  v7 = [(_UIKBEventDeferralPolicyAssistant *)self keyboardSceneDelegate];
  v8 = [v7 scene];
  v9 = [v8 _isKeyWindowScene];

  if ([v4 isFirstResponder])
  {
    v10 = [v4 _requiresKeyboardWhenFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v11 = +[UIKeyboard isKeyboardProcess];
  v12 = v11;
  v13 = v9 ^ 1 | v6;
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
    v9 = v10 | v12;
  }

  return v9 & 1;
}

- (void)didReloadInputViewsForNonKeyWindowSceneForResponder:(id)a3 force:(BOOL)a4 fromBecomeFirstResponder:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v40 = *MEMORY[0x1E69E9840];
  v31 = a3;
  if (!self)
  {
    goto LABEL_6;
  }

  v8 = [(_UIKBEventDeferralPolicyAssistant *)self keyboardSceneDelegate];
  v9 = [v31 _window];
  v10 = [(_UIKBEventDeferralPolicyAssistant *)self _isWindowDeferringTarget:v9];

  v11 = [v8 scene];
  v12 = [v11 _isKeyWindowScene];

  v13 = [v31 isFirstResponder];
  if (v13)
  {
    v13 = [v31 _requiresKeyboardWhenFirstResponder];
  }

  if (v10)
  {

LABEL_6:
    goto LABEL_18;
  }

  v14 = v12 & v13;

  if (v14 == 1)
  {
    v15 = v31;
    v16 = _UIKBEventDeferralPolicyAssistantLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [(_UIKBEventDeferralPolicyAssistant *)self eventDeferralPolicyObserver];
      v20 = [v19 deferringToken];
      *buf = 138543875;
      v33 = v18;
      v34 = 2049;
      v35 = v15;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "Request event deferral target selection (responder:<%{public}@: %{private}p> token:%@)", buf, 0x20u);
    }

    v21 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v22 = [v15 _window];
    [v21 requestEventDeferralTargetSelectionForWindow:v22];

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
      if (v6)
      {
        v29 = "Y";
      }

      else
      {
        v29 = "N";
      }

      v33 = v26;
      v35 = v23;
      if (v5)
      {
        v28 = "Y";
      }

      v36 = 2080;
      v37 = v29;
      v38 = 2080;
      v39 = v28;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Queue reload task for become event deferral target (responder:<%{public}@: %{private}p> force:%s fromBFR:%s)", buf, 0x2Au);
    }

    v30 = [[_UIReloadInputViewsTask alloc] initWithResponder:v23 force:v6 fromBecomeFirstResponder:v5];
    [(_UIKBEventDeferralPolicyAssistant *)self setReloadInputViewTask:v30];
  }

LABEL_18:
}

- (void)prepareForReloadInputViews
{
  [(_UIKBEventDeferralPolicyAssistant *)self setReloadInputViewTask:0];

  [(_UIKBEventDeferralPolicyAssistant *)self configureEventDeferralPolicyObserver];
}

- (void)observerDeliveryPolicyDidChange:(id)a3
{
  if (self->_eventDeferralPolicyObserver == a3)
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