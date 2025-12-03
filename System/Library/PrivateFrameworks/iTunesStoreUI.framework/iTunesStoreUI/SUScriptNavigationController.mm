@interface SUScriptNavigationController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)navigationBarHidden;
- (SUScriptNavigationBar)navigationBar;
- (SUScriptNavigationController)initWithRootScriptViewController:(id)controller clientInterface:(id)interface;
- (SUScriptViewController)topViewController;
- (id)_copyNativeViewControllersFromScriptViewControllers:(id)controllers;
- (id)_filteredViewControllers;
- (id)_navigationController;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (id)toolbarHidden;
- (id)viewControllers;
- (void)_popToRootViewControllerAnimated:(BOOL)animated;
- (void)_popViewControllerAnimated:(BOOL)animated;
- (void)_pushViewController:(id)controller animated:(BOOL)animated;
- (void)_setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)dealloc;
- (void)didPerformBatchedInvocations;
- (void)popToRootViewControllerAnimated:(BOOL)animated;
- (void)popViewControllerAnimated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setNavigationBar:(id)bar;
- (void)setToolbarHidden:(id)hidden;
- (void)setTopViewController:(id)controller;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)willPerformBatchedInvocations;
@end

@implementation SUScriptNavigationController

- (SUScriptNavigationController)initWithRootScriptViewController:(id)controller clientInterface:(id)interface
{
  v4 = [(SUScriptObject *)self init];
  if (v4)
  {
    WebThreadRunOnMainThread();
  }

  return v4;
}

void __81__SUScriptNavigationController_initWithRootScriptViewController_clientInterface___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) nativeViewController];
  if (v2)
  {
    v3 = v2;
    v12 = [[SUNavigationController alloc] initWithRootViewController:v2];
    [(SUNavigationController *)v12 setClientInterface:*(a1 + 48)];
    -[SUNavigationController setModalPresentationStyle:](v12, "setModalPresentationStyle:", [v3 modalPresentationStyle]);
    [*(a1 + 40) setNativeViewController:v12];
  }

  else
  {
    v4 = [MEMORY[0x1E69D4938] sharedConfig];
    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v7 = [*(a1 + 40) _className];
      v8 = *(a1 + 32);
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      LODWORD(v11) = 22;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v13, v11}];
        free(v10);
        SSFileLog();
      }
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptNavigationController;
  [(SUScriptViewController *)&v3 dealloc];
}

- (id)newNativeViewController
{
  v3 = objc_alloc_init(SUNavigationController);
  [(SUNavigationController *)v3 setClientInterface:[(SUScriptObject *)self clientInterface]];
  return v3;
}

- (void)didPerformBatchedInvocations
{
  self->_navController = 0;
  v3.receiver = self;
  v3.super_class = SUScriptNavigationController;
  [(SUScriptObject *)&v3 didPerformBatchedInvocations];
}

- (void)willPerformBatchedInvocations
{
  self->_navController = 0;
  self->_navController = [(SUScriptNavigationController *)self _navigationController];
  v3.receiver = self;
  v3.super_class = SUScriptNavigationController;
  [(SUScriptObject *)&v3 willPerformBatchedInvocations];
}

- (void)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

  [webThreadMainThreadBatchProxy _popToRootViewControllerAnimated:animatedCopy];
}

- (void)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

  [webThreadMainThreadBatchProxy _popViewControllerAnimated:animatedCopy];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];

  [webThreadMainThreadBatchProxy _pushViewController:controller animated:animatedCopy];
}

uint64_t __64__SUScriptNavigationController_setNavigationBarHidden_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DD258] transitionSafePerformer:{objc_msgSend(*(a1 + 32), "_navigationController")}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return [v2 setNavigationBarHidden:v3 animated:v4];
}

uint64_t __58__SUScriptNavigationController_setToolbarHidden_animated___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DD258] transitionSafePerformer:{objc_msgSend(*(a1 + 32), "_navigationController")}];
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return [v2 setToolbarHidden:v3 animated:v4];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [controllers copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
    if ([v8 count])
    {
      [-[SUScriptObject webThreadMainThreadBatchProxy](self "webThreadMainThreadBatchProxy")];
    }

    else
    {
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

- (SUScriptNavigationBar)navigationBar
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__SUScriptNavigationController_navigationBar__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __45__SUScriptNavigationController_navigationBar__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

SUScriptNavigationBar *__45__SUScriptNavigationController_navigationBar__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_navigationController")];
  if (result)
  {
    result = [[SUScriptNavigationBar alloc] initWithNativeNavigationBar:result];
    *(*(*(a1 + 40) + 8) + 40) = result;
  }

  return result;
}

- (BOOL)navigationBarHidden
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __51__SUScriptNavigationController_navigationBarHidden__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _navigationController];
  if (v2)
  {
    result = [v2 isNavigationBarHidden];
  }

  else
  {
    result = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setNavigationBar:(id)bar
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"navigationBar"];

  [v3 throwException:v4];
}

- (void)setToolbarHidden:(id)hidden
{
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [hidden BOOLValue];

    [(SUScriptNavigationController *)self setToolbarHidden:bOOLValue animated:0];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setTopViewController:(id)controller
{
  v3 = MEMORY[0x1E69E2F88];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is readonly", @"topViewController"];

  [v3 throwException:v4];
}

- (id)toolbarHidden
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);
  return v3;
}

uint64_t __45__SUScriptNavigationController_toolbarHidden__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_navigationController")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SUScriptViewController)topViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__SUScriptNavigationController_topViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __49__SUScriptNavigationController_topViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __49__SUScriptNavigationController_topViewController__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "_filteredViewControllers")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)viewControllers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  [(SUScriptObject *)self checkInScriptObjects:v3, v5, 3221225472, __47__SUScriptNavigationController_viewControllers__block_invoke, &unk_1E8164370, self, v3];
  return v3;
}

uint64_t __47__SUScriptNavigationController_viewControllers__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _filteredViewControllers];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) copyScriptViewController];
        if (v7)
        {
          v8 = v7;
          [*(a1 + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)_popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = [MEMORY[0x1E69DD258] transitionSafePerformer:{-[SUScriptNavigationController _navigationController](self, "_navigationController")}];

  [v4 popToRootViewControllerAnimated:animatedCopy];
}

- (void)_popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = [MEMORY[0x1E69DD258] transitionSafePerformer:{-[SUScriptNavigationController _navigationController](self, "_navigationController")}];

  [v4 popViewControllerAnimated:animatedCopy];
}

- (void)_pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v19 = *MEMORY[0x1E69E9840];
  nativeViewController = [controller nativeViewController];
  if (nativeViewController)
  {
    v14 = [[SUNavigationContainerViewController alloc] initWithChildViewController:nativeViewController];
    [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{-[SUScriptNavigationController _navigationController](self, "_navigationController")), "pushViewController:animated:", v14, animatedCopy}];
  }

  else
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v10 &= 2u;
    }

    if (v10)
    {
      v15 = 138412546;
      _className = [(SUScriptNavigationController *)self _className];
      v17 = 2112;
      controllerCopy = controller;
      LODWORD(v13) = 22;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v15, v13}];
        free(v12);
        SSFileLog();
      }
    }
  }
}

- (void)_setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [(SUScriptNavigationController *)self _copyNativeViewControllersFromScriptViewControllers:controllers];
  if ([v8 count])
  {
    _navigationController = [(SUScriptNavigationController *)self _navigationController];
    v7 = [v8 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 setSection:{objc_msgSend(_navigationController, "section")}];
    }

    [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{_navigationController), "setViewControllers:animated:", v8, animatedCopy}];
  }
}

- (id)_copyNativeViewControllersFromScriptViewControllers:(id)controllers
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [controllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(controllers);
        }

        nativeViewController = [*(*(&v11 + 1) + 8 * v8) nativeViewController];
        if (nativeViewController)
        {
          [v4 addObject:nativeViewController];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [controllers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_filteredViewControllers
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [objc_msgSend(-[SUScriptNavigationController _navigationController](self "_navigationController")];
  selfCopy = self;
  v4 = [-[SUScriptObject invocationBatch:](self invocationBatch:{0), "copyQueuedInvocationsForObject:", self}];
  if ([v4 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v3 count];
          selector = [v9 selector];
          if (sel_isEqual(selector, sel__popToRootViewControllerAnimated_))
          {
            if (v10 >= 2)
            {
              [v3 removeObjectsInRange:{1, v10 - 1}];
            }
          }

          else if (sel_isEqual(selector, sel__popViewControllerAnimated_))
          {
            if (v10 >= 2)
            {
              [v3 removeLastObject];
            }
          }

          else if (sel_isEqual(selector, sel__pushViewController_animated_))
          {
            v15 = 0;
            [v9 getArgument:&v15 atIndex:2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v3 addObject:{objc_msgSend(v15, "nativeViewController")}];
            }
          }

          else if (sel_isEqual(selector, sel__setViewControllers_animated_))
          {
            v15 = 0;
            [v9 getArgument:&v15 atIndex:2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [(SUScriptNavigationController *)selfCopy _copyNativeViewControllersFromScriptViewControllers:v15];
              [v3 setArray:v12];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (id)_navigationController
{
  navController = self->_navController;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    navController = [(SUScriptViewController *)self nativeViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return navController;
  }

  return [(UINavigationController *)navController navigationController];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_22 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptNavigationController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_17, 6);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptNavigationController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptNavigationController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_22, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_17 = sel_popToRootViewControllerAnimated_;
    *algn_1EBF3ABD8 = @"popToRootViewController";
    qword_1EBF3ABE0 = sel_popViewControllerAnimated_;
    unk_1EBF3ABE8 = @"popViewController";
    qword_1EBF3ABF0 = sel_pushViewController_animated_;
    unk_1EBF3ABF8 = @"pushViewController";
    qword_1EBF3AC00 = sel_setNavigationBarHidden_animated_;
    unk_1EBF3AC08 = @"setNavigationBarHidden";
    qword_1EBF3AC10 = sel_setToolbarHidden_animated_;
    unk_1EBF3AC18 = @"setToolbarHidden";
    qword_1EBF3AC20 = sel_setViewControllers_animated_;
    unk_1EBF3AC28 = @"setViewControllers";
    __KeyMapping_22 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"navigationBar", @"navigationBarHidden", @"navigationBarHidden", @"toolbarHidden", @"toolbarHidden", @"topViewController", @"topViewController", @"viewControllers", @"viewControllers", 0}];
  }
}

@end