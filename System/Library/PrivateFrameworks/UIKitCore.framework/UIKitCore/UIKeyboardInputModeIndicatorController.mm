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
- (void)keyboardWindowEnabled:(BOOL)a3;
- (void)presentIndicatorWithReason:(id)a3 force:(BOOL)a4;
- (void)showIndicatorWithReason:(id)a3 force:(BOOL)a4;
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
  v3 = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
  [v3 cancel];

  [(UIKeyboardInputModeIndicatorController *)self setDismissAction:0];
  v4 = [(UIKeyboardInputModeIndicatorController *)self idleAction];
  [v4 cancel];

  [(UIKeyboardInputModeIndicatorController *)self setIdleAction:0];
}

- (void)dismissIndicator
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED49C548 != -1)
  {
    dispatch_once(&qword_1ED49C548, &__block_literal_global_15);
  }

  v3 = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
  [v3 cancel];

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

  v5 = [(UIKeyboardInputModeIndicatorController *)self delegate];
  [v5 keyboardInputModeIndicatorControllerDismissIndicator:self];

  if ([(UIKeyboardInputModeIndicatorController *)self enabled])
  {
    v6 = [(UIKeyboardInputModeIndicatorController *)self idleAction];

    if (v6)
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

      v8 = [(UIKeyboardInputModeIndicatorController *)self idleAction];
      [(UIDelayedAction *)v8 touch];
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
      v8 = [(UIDelayedAction *)v10 initWithTarget:self action:sel_idle userInfo:0 delay:*&dismissIndicator_idleTime];
      [(UIKeyboardInputModeIndicatorController *)self setIdleAction:v8];
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
  v3 = [objc_opt_class() enabled];
  if (v3)
  {
    v4 = [(UIKeyboardInputModeIndicatorController *)self delegate];

    if (v4)
    {
      v5 = [(UIKeyboardInputModeIndicatorController *)self delegate];
      v6 = [v5 keyboardInputModeIndicatorControllerShouldPresentIndicator:self];

      LOBYTE(v3) = v6;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
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

- (void)keyboardWindowEnabled:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("InputModeIndicator", &keyboardWindowEnabled____s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = "N";
      if (v3)
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

  if (!v3)
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
  v3 = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
  [v3 cancel];

  [(UIKeyboardInputModeIndicatorController *)self setDismissAction:0];
}

- (void)showIndicatorWithReason:(id)a3 force:(BOOL)a4
{
  v13 = *MEMORY[0x1E69E9840];
  [(UIKeyboardInputModeIndicatorController *)self presentIndicatorWithReason:a3 force:a4];
  v5 = [(UIKeyboardInputModeIndicatorController *)self dismissAction];

  if (v5)
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

    v7 = [(UIKeyboardInputModeIndicatorController *)self dismissAction];
    [(UIDelayedAction *)v7 touch];
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

    v7 = [[UIDelayedAction alloc] initWithTarget:self action:sel_dismissIndicator userInfo:0 delay:1.5];
    [(UIKeyboardInputModeIndicatorController *)self setDismissAction:v7];
  }
}

- (void)presentIndicatorWithReason:(id)a3 force:(BOOL)a4
{
  v13 = a3;
  if (presentIndicatorWithReason_force__onceToken != -1)
  {
    dispatch_once(&presentIndicatorWithReason_force__onceToken, &__block_literal_global_6);
  }

  v6 = [(UIKeyboardInputModeIndicatorController *)self idleAction];
  [v6 cancel];

  [(UIKeyboardInputModeIndicatorController *)self setIdleAction:0];
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [(UIKeyboardInputModeIndicatorController *)self inputModeUpdateTime];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    v7 = v11 < *&presentIndicatorWithReason_force__indicatorTimeout;
  }

  if ([(UIKeyboardInputModeIndicatorController *)self enabled]&& v7)
  {
    v12 = [(UIKeyboardInputModeIndicatorController *)self delegate];
    [v12 keyboardInputModeIndicatorControllerPresentIndicator:self reason:v13];
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
  v3 = [v2 inputModeUpdateTime];

  return v3;
}

@end