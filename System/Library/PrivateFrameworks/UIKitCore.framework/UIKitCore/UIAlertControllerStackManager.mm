@interface UIAlertControllerStackManager
- (BOOL)_alertControllerShouldBeTrackedInStack:(id)stack;
- (UIAlertControllerStackManager)initWithScene:(id)scene;
- (UIScene)_scene;
- (void)_addAlertControllerToStack:(id)stack;
- (void)_alertControllerDidDisappear:(id)disappear;
- (void)_alertControllerWillAppear:(id)appear;
- (void)_alertControllerWillDisappear:(id)disappear;
- (void)_didHideAlertController:(id)controller;
- (void)_hideStackedAlertControllers;
- (void)_removeAlertControllerFromStack:(id)stack;
- (void)_showHiddenStackedAlertControllers;
- (void)_willShowAlertController:(id)controller;
@end

@implementation UIAlertControllerStackManager

- (UIAlertControllerStackManager)initWithScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = UIAlertControllerStackManager;
  v5 = [(UIAlertControllerStackManager *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    alertControllerStack = v5->_alertControllerStack;
    v5->_alertControllerStack = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    hiddenAlertControllers = v5->_hiddenAlertControllers;
    v5->_hiddenAlertControllers = v8;

    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v5;
}

- (void)_alertControllerWillAppear:(id)appear
{
  appearCopy = appear;
  if ([(UIAlertControllerStackManager *)self _alertControllerShouldBeTrackedInStack:appearCopy])
  {
    [(UIAlertControllerStackManager *)self _willShowAlertController:appearCopy];
    [(UIAlertControllerStackManager *)self _addAlertControllerToStack:appearCopy];
    if (([UIApp _isSpringBoard] & 1) == 0)
    {
      if ([UIApp _isSpringBoardShowingAnAlert])
      {
        v5 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_alertControllerWillAppear____s_category) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_alertControllerWillAppear: Hiding stacked Alerts", v6, 2u);
        }

        [(UIAlertControllerStackManager *)self _hideStackedAlertControllers];
      }
    }
  }
}

- (void)_alertControllerWillDisappear:(id)disappear
{
  v8 = *MEMORY[0x1E69E9840];
  disappearCopy = disappear;
  if ([(UIAlertControllerStackManager *)self _alertControllerShouldBeTrackedInStack:disappearCopy])
  {
    v5 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_alertControllerWillDisappear____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_alertControllerWillDisappear: will hide alert : %@", &v6, 0xCu);
    }

    [(UIAlertControllerStackManager *)self _willHideAlertController:disappearCopy];
    [(UIAlertControllerStackManager *)self _removeAlertControllerFromStack:disappearCopy];
  }
}

- (void)_alertControllerDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  if ([(UIAlertControllerStackManager *)self _alertControllerShouldBeTrackedInStack:?])
  {
    [(UIAlertControllerStackManager *)self _didHideAlertController:disappearCopy];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (void)_hideStackedAlertControllers
{
  selfCopy = self;
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_alertControllerStack;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v16 = selfCopy;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        if ([v8 isViewLoaded] && (objc_msgSend(v8, "_isHidden") & 1) == 0)
        {
          [(UIAlertControllerStackManager *)selfCopy _willHideAlertController:v8];
          v9 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_hideStackedAlertControllers___s_category) + 8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            if (v8)
            {
              v10 = MEMORY[0x1E696AEC0];
              v11 = v3;
              v12 = v8;
              v13 = objc_opt_class();
              v14 = NSStringFromClass(v13);
              v15 = [v10 stringWithFormat:@"<%@: %p>", v14, v12];

              v3 = v11;
              selfCopy = v16;
            }

            else
            {
              v15 = @"(nil)";
            }

            *buf = 138412290;
            v22 = v15;
            _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "_hideStackedAlertControllers: Hiding alert : %@", buf, 0xCu);
          }

          [v8 _setHidden:1];
          [(UIAlertControllerStackManager *)selfCopy _didHideAlertController:v8];
          [(NSMutableArray *)selfCopy->_hiddenAlertControllers addObject:v8];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }
}

- (void)_showHiddenStackedAlertControllers
{
  selfCopy = self;
  v36 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_hiddenAlertControllers count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = selfCopy->_hiddenAlertControllers;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = "UIAlertControllerStackManager";
      v6 = &unk_1ED49C708;
      v7 = *v30;
      do
      {
        v8 = 0;
        v27 = v4;
        do
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v29 + 1) + 8 * v8);
          [(UIAlertControllerStackManager *)selfCopy _willShowAlertController:v9];
          v10 = *(__UILogGetCategoryCachedImpl(v5, v6) + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            if (v9)
            {
              v11 = MEMORY[0x1E696AEC0];
              v12 = v7;
              v13 = selfCopy;
              v14 = v6;
              v15 = v5;
              v16 = v9;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v19 = [v11 stringWithFormat:@"<%@: %p>", v18, v16];

              v5 = v15;
              v6 = v14;
              selfCopy = v13;
              v7 = v12;
              v4 = v27;
            }

            else
            {
              v19 = @"(nil)";
            }

            *buf = 138412290;
            v35 = v19;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "_showHiddenStackedAlertControllers: Showing Hidden alert : %@", buf, 0xCu);
          }

          [v9 _setHidden:0];
          ++v8;
        }

        while (v4 != v8);
        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v4);
    }

    [(NSMutableArray *)selfCopy->_hiddenAlertControllers removeAllObjects];
  }

  else
  {
    _topAlertControllerInStack = [(UIAlertControllerStackManager *)selfCopy _topAlertControllerInStack];
    v21 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_MergedGlobals_979) + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = _topAlertControllerInStack;
      if (v22)
      {
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v23 stringWithFormat:@"<%@: %p>", v25, v22];
      }

      else
      {
        v26 = @"(nil)";
      }

      *buf = 138412290;
      v35 = v26;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "_showHiddenStackedAlertControllers : Showing top alert : %@", buf, 0xCu);
    }

    [(UIAlertControllerStackManager *)selfCopy _willShowAlertController:_topAlertControllerInStack];
  }
}

- (void)_addAlertControllerToStack:(id)stack
{
  v13 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  v5 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_addAlertControllerToStack____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = stackCopy;
    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v7 stringWithFormat:@"<%@: %p>", v9, v6];
    }

    else
    {
      v10 = @"(nil)";
    }

    *buf = 138412290;
    v12 = v10;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_addAlertControllerToStack: Adding Alert to stack : %@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_alertControllerStack addObject:stackCopy];
}

- (void)_removeAlertControllerFromStack:(id)stack
{
  v13 = *MEMORY[0x1E69E9840];
  stackCopy = stack;
  v5 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_removeAlertControllerFromStack____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = stackCopy;
    if (v6)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v7 stringWithFormat:@"<%@: %p>", v9, v6];
    }

    else
    {
      v10 = @"(nil)";
    }

    *buf = 138412290;
    v12 = v10;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_removeAlertControllerFromStack: Removing Alert from stack : %@", buf, 0xCu);
  }

  [(NSMutableArray *)self->_alertControllerStack removeObject:stackCopy];
}

- (void)_willShowAlertController:(id)controller
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v4 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_willShowAlertController____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = controllerCopy;
    if (v5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
    }

    else
    {
      v9 = @"(nil)";
    }

    *buf = 138412290;
    v11 = v9;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "_willShowAlertController: %@", buf, 0xCu);
  }

  if (controllerCopy)
  {
    [UIApp willDisplayMiniAlert];
  }
}

- (void)_didHideAlertController:(id)controller
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v4 = *(__UILogGetCategoryCachedImpl("UIAlertControllerStackManager", &_didHideAlertController____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = controllerCopy;
    if (v5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 stringWithFormat:@"<%@: %p>", v8, v5];
    }

    else
    {
      v9 = @"(nil)";
    }

    *buf = 138412290;
    v11 = v9;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "_didHideAlertController: %@", buf, 0xCu);
  }

  if (controllerCopy)
  {
    [UIApp didDismissMiniAlert];
  }
}

- (BOOL)_alertControllerShouldBeTrackedInStack:(id)stack
{
  stackCopy = stack;
  if ([stackCopy _resolvedStyle] == 1)
  {
    _window = [stackCopy _window];
    _windowHostingScene = [_window _windowHostingScene];
    if ([_windowHostingScene _sceneSessionRoleIsCarPlayOrNonInteractiveExternal])
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      _window2 = [stackCopy _window];
      v6 = [_window2 _isHostedInAnotherProcess] ^ 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end