@interface PUWelcomeViewControllersManager
+ (PUWelcomeViewControllersManager)defaultManager;
- (id)_initWithWelcomeViewControllerClasses:(id)classes;
- (void)_handleWelcomeViewControllerCompletion;
- (void)_reset;
- (void)_update;
- (void)presentWelcomeViewControllersIfNecessaryFromViewController:(id)controller completion:(id)completion;
- (void)resetAllLastPresentationInfos;
@end

@implementation PUWelcomeViewControllersManager

- (void)_handleWelcomeViewControllerCompletion
{
  _presentedWelcomeViewControllerClass = [(PUWelcomeViewControllersManager *)self _presentedWelcomeViewControllerClass];
  _remainingWelcomeViewControllerClassesToPresent = [(PUWelcomeViewControllersManager *)self _remainingWelcomeViewControllerClassesToPresent];
  [_remainingWelcomeViewControllerClassesToPresent removeObject:_presentedWelcomeViewControllerClass];

  [(PUWelcomeViewControllersManager *)self _setPresentedWelcomeViewControllerClass:0];

  [(PUWelcomeViewControllersManager *)self _update];
}

- (void)_update
{
  v22 = *MEMORY[0x1E69E9840];
  _presentingViewController = [(PUWelcomeViewControllersManager *)self _presentingViewController];
  if (_presentingViewController && ![(PUWelcomeViewControllersManager *)self _presentedWelcomeViewControllerClass])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _welcomeViewControllerClasses = [(PUWelcomeViewControllersManager *)self _welcomeViewControllerClasses];
    v5 = [_welcomeViewControllerClasses countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(_welcomeViewControllerClasses);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        _remainingWelcomeViewControllerClassesToPresent = [(PUWelcomeViewControllersManager *)self _remainingWelcomeViewControllerClassesToPresent];
        v10 = [_remainingWelcomeViewControllerClassesToPresent containsObject:v8];

        if (v10)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [_welcomeViewControllerClasses countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v5)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if (!v8)
      {
        goto LABEL_15;
      }

      objc_initWeak(&location, self);
      [(PUWelcomeViewControllersManager *)self _setPresentedWelcomeViewControllerClass:v8];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __42__PUWelcomeViewControllersManager__update__block_invoke_2;
      v14[3] = &unk_1E7B80660;
      objc_copyWeak(&v15, &location);
      [v8 presentIfNecessaryFromViewController:_presentingViewController presentationHandler:&__block_literal_global_7 completionHandler:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
LABEL_12:

LABEL_15:
      completionHandler = [(PUWelcomeViewControllersManager *)self completionHandler];
      v12 = completionHandler == 0;

      if (!v12)
      {
        completionHandler2 = [(PUWelcomeViewControllersManager *)self completionHandler];
        completionHandler2[2]();

        [(PUWelcomeViewControllersManager *)self setCompletionHandler:0];
      }
    }
  }
}

void __42__PUWelcomeViewControllersManager__update__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PUWelcomeViewControllersManager__update__block_invoke_3;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __42__PUWelcomeViewControllersManager__update__block_invoke()
{
  v0 = [MEMORY[0x1E695DF00] now];
  PXPreferencesSetWelcomeViewLastPresentationDate();
}

void __42__PUWelcomeViewControllersManager__update__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleWelcomeViewControllerCompletion];
}

- (void)_reset
{
  _remainingWelcomeViewControllerClassesToPresent = [(PUWelcomeViewControllersManager *)self _remainingWelcomeViewControllerClassesToPresent];
  _welcomeViewControllerClasses = [(PUWelcomeViewControllersManager *)self _welcomeViewControllerClasses];
  [_remainingWelcomeViewControllerClassesToPresent addObjectsFromArray:_welcomeViewControllerClasses];
}

- (void)resetAllLastPresentationInfos
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  _welcomeViewControllerClasses = [(PUWelcomeViewControllersManager *)self _welcomeViewControllerClasses];
  v3 = [_welcomeViewControllerClasses countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(_welcomeViewControllerClasses);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetLastPresentationInfo];
      }

      while (v4 != v6);
      v4 = [_welcomeViewControllerClasses countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults synchronize];
}

- (void)presentWelcomeViewControllersIfNecessaryFromViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  [(PUWelcomeViewControllersManager *)self setCompletionHandler:completion];
  [(PUWelcomeViewControllersManager *)self _setPresentingViewController:controllerCopy];

  [(PUWelcomeViewControllersManager *)self _reset];

  [(PUWelcomeViewControllersManager *)self _update];
}

- (id)_initWithWelcomeViewControllerClasses:(id)classes
{
  classesCopy = classes;
  v11.receiver = self;
  v11.super_class = PUWelcomeViewControllersManager;
  v5 = [(PUWelcomeViewControllersManager *)&v11 init];
  if (v5)
  {
    v6 = [classesCopy copy];
    welcomeViewControllerClasses = v5->__welcomeViewControllerClasses;
    v5->__welcomeViewControllerClasses = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    remainingWelcomeViewControllerClassesToPresent = v5->__remainingWelcomeViewControllerClassesToPresent;
    v5->__remainingWelcomeViewControllerClassesToPresent = v8;
  }

  return v5;
}

+ (PUWelcomeViewControllersManager)defaultManager
{
  if (defaultManager_onceToken_95499 != -1)
  {
    dispatch_once(&defaultManager_onceToken_95499, &__block_literal_global_95500);
  }

  v3 = defaultManager_defaultManager_95501;

  return v3;
}

void __49__PUWelcomeViewControllersManager_defaultManager__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v1 = [[PUWelcomeViewControllersManager alloc] _initWithWelcomeViewControllerClasses:v0];
  v2 = defaultManager_defaultManager_95501;
  defaultManager_defaultManager_95501 = v1;
}

@end