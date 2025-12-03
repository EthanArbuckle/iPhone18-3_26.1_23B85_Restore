@interface UIKeyboardInputModeIndicatorController
- (BOOL)enabled;
- (UIKeyboardInputModeIndicatorControllerDelegate)delegate;
- (id)inputModeUpdateTime;
- (void)clear;
- (void)dismissIndicator;
- (void)hardwareKeyboardDettached;
- (void)idle;
- (void)inputModeChanged;
- (void)inputModeSelectorDidOpen;
- (void)keyPressed;
- (void)keyboardWindowEnabled:(BOOL)enabled;
- (void)presentIndicatorWithReason:(id)reason force:(BOOL)force;
- (void)showIndicatorWithReason:(id)reason force:(BOOL)force;
- (void)willResignActive;
@end

@implementation UIKeyboardInputModeIndicatorController

- (void)willResignActive
{
  v7 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &willResignActive___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UIKeyboardInputModeIndicatorController willResignActive]";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
    }
  }

  [(UIKeyboardInputModeIndicatorController *)self clear];
}

- (void)clear
{
  [(UIKeyboardInputModeIndicatorController *)self dismissIndicator];
  dismissAction = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
  [dismissAction cancel];

  [(UIKeyboardInputModeIndicatorController *)self setDismissAction:0];
  idleAction = [(UIKeyboardInputModeIndicatorController *)self idleAction];
  [idleAction cancel];

  [(UIKeyboardInputModeIndicatorController *)self setIdleAction:0];
}

- (void)dismissIndicator
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED49C548 != -1)
  {
    dispatch_once(&qword_1ED49C548, &__block_literal_global_15);
  }

  dismissAction = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
  [dismissAction cancel];

  [(UIKeyboardInputModeIndicatorController *)self setDismissAction:0];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &qword_1ED49C550);
  if (*CategoryCachedImpl)
  {
    v11 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Dismiss indicator.", &v14, 2u);
    }
  }

  delegate = [(UIKeyboardInputModeIndicatorController *)self delegate];
  [delegate keyboardInputModeIndicatorControllerDismissIndicator:self];

  if ([(UIKeyboardInputModeIndicatorController *)self enabled])
  {
    idleAction = [(UIKeyboardInputModeIndicatorController *)self idleAction];

    if (idleAction)
    {
      v7 = __UILogGetCategoryCachedImpl("InputModeIndicator", &qword_1ED49C558);
      if (*v7)
      {
        v12 = *(v7 + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Reset idle timer.", &v14, 2u);
        }
      }

      idleAction2 = [(UIKeyboardInputModeIndicatorController *)self idleAction];
      [(UIDelayedAction *)idleAction2 touch];
    }

    else
    {
      v9 = __UILogGetCategoryCachedImpl("InputModeIndicator", &qword_1ED49C560);
      if (*v9)
      {
        v13 = *(v9 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = 134217984;
          v15 = dismissIndicator_idleTime;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Invoke idle action after %lf sec.", &v14, 0xCu);
        }
      }

      v10 = [UIDelayedAction alloc];
      idleAction2 = [(UIDelayedAction *)v10 initWithTarget:self action:sel_idle userInfo:0 delay:*&dismissIndicator_idleTime];
      [(UIKeyboardInputModeIndicatorController *)self setIdleAction:idleAction2];
    }
  }
}

- (UIKeyboardInputModeIndicatorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)enabled
{
  enabled = [objc_opt_class() enabled];
  if (enabled)
  {
    delegate = [(UIKeyboardInputModeIndicatorController *)self delegate];

    if (delegate)
    {
      delegate2 = [(UIKeyboardInputModeIndicatorController *)self delegate];
      v6 = [delegate2 keyboardInputModeIndicatorControllerShouldPresentIndicator:self];

      LOBYTE(enabled) = v6;
    }

    else
    {
      LOBYTE(enabled) = 1;
    }
  }

  return enabled;
}

- (void)idle
{
  v7 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &idle___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UIKeyboardInputModeIndicatorController idle]";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
    }
  }

  [(UIKeyboardInputModeIndicatorController *)self presentIndicatorWithReason:@"idle" force:0];
}

- (void)inputModeChanged
{
  v7 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &inputModeChanged___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UIKeyboardInputModeIndicatorController inputModeChanged]";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
    }
  }

  [(UIKeyboardInputModeIndicatorController *)self showIndicatorWithReason:@"input mode changed" force:1];
}

- (void)hardwareKeyboardDettached
{
  v7 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &hardwareKeyboardDettached___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UIKeyboardInputModeIndicatorController hardwareKeyboardDettached]";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
    }
  }

  [(UIKeyboardInputModeIndicatorController *)self clear];
}

- (void)keyboardWindowEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &keyboardWindowEnabled____s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "N";
      if (enabledCopy)
      {
        v7 = "Y";
      }

      v8 = 136315394;
      v9 = "[UIKeyboardInputModeIndicatorController keyboardWindowEnabled:]";
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%s enabled=%s", &v8, 0x16u);
    }
  }

  if (!enabledCopy)
  {
    [(UIKeyboardInputModeIndicatorController *)self clear];
  }
}

- (void)keyPressed
{
  v7 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &keyPressed___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[UIKeyboardInputModeIndicatorController keyPressed]";
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%s", &v5, 0xCu);
    }
  }

  [(UIKeyboardInputModeIndicatorController *)self dismissIndicator];
}

- (void)inputModeSelectorDidOpen
{
  dismissAction = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
  [dismissAction cancel];

  [(UIKeyboardInputModeIndicatorController *)self setDismissAction:0];
}

- (void)showIndicatorWithReason:(id)reason force:(BOOL)force
{
  v13 = *MEMORY[0x1E69E9840];
  [(UIKeyboardInputModeIndicatorController *)self presentIndicatorWithReason:reason force:force];
  dismissAction = [(UIKeyboardInputModeIndicatorController *)self dismissAction];

  if (dismissAction)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &_MergedGlobals_972);
    if (*CategoryCachedImpl)
    {
      v9 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Reset dismiss timer.", &v11, 2u);
      }
    }

    dismissAction2 = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
    [(UIDelayedAction *)dismissAction2 touch];
  }

  else
  {
    v8 = __UILogGetCategoryCachedImpl("InputModeIndicator", &qword_1ED49C540);
    if (*v8)
    {
      v10 = *(v8 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 134217984;
        v12 = 0x3FF8000000000000;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Dismiss after %lf sec.", &v11, 0xCu);
      }
    }

    dismissAction2 = [[UIDelayedAction alloc] initWithTarget:self action:sel_dismissIndicator userInfo:0 delay:1.5];
    [(UIKeyboardInputModeIndicatorController *)self setDismissAction:dismissAction2];
  }
}

- (void)presentIndicatorWithReason:(id)reason force:(BOOL)force
{
  reasonCopy = reason;
  if (presentIndicatorWithReason_force__onceToken != -1)
  {
    dispatch_once(&presentIndicatorWithReason_force__onceToken, &__block_literal_global_6);
  }

  idleAction = [(UIKeyboardInputModeIndicatorController *)self idleAction];
  [idleAction cancel];

  [(UIKeyboardInputModeIndicatorController *)self setIdleAction:0];
  if (force)
  {
    v7 = 1;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    inputModeUpdateTime = [(UIKeyboardInputModeIndicatorController *)self inputModeUpdateTime];
    [date timeIntervalSinceDate:inputModeUpdateTime];
    v11 = v10;

    v7 = v11 < *&presentIndicatorWithReason_force__indicatorTimeout;
  }

  if ([(UIKeyboardInputModeIndicatorController *)self enabled]&& v7)
  {
    delegate = [(UIKeyboardInputModeIndicatorController *)self delegate];
    [delegate keyboardInputModeIndicatorControllerPresentIndicator:self reason:reasonCopy];
  }
}

void __75__UIKeyboardInputModeIndicatorController_presentIndicatorWithReason_force___block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"UIKeyboardInputModeIndicatorTimeout"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
    presentIndicatorWithReason_force__indicatorTimeout = v2;
  }
}

void __58__UIKeyboardInputModeIndicatorController_dismissIndicator__block_invoke()
{
  v0 = _UIKitUserDefaults();
  v3 = [v0 objectForKey:@"UIKeyboardInputModeIndicatorIdleTime"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
    dismissIndicator_idleTime = v2;
  }
}

- (id)inputModeUpdateTime
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  inputModeUpdateTime = [v2 inputModeUpdateTime];

  return inputModeUpdateTime;
}

@end