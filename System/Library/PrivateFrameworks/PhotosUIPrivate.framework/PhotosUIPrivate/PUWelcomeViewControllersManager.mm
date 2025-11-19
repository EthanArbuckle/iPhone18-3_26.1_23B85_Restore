@interface PUWelcomeViewControllersManager
+ (PUWelcomeViewControllersManager)defaultManager;
- (id)_initWithWelcomeViewControllerClasses:(id)a3;
- (void)_handleWelcomeViewControllerCompletion;
- (void)_reset;
- (void)_update;
- (void)presentWelcomeViewControllersIfNecessaryFromViewController:(id)a3 completion:(id)a4;
- (void)resetAllLastPresentationInfos;
@end

@implementation PUWelcomeViewControllersManager

- (void)_handleWelcomeViewControllerCompletion
{
  v3 = [(PUWelcomeViewControllersManager *)self _presentedWelcomeViewControllerClass];
  v4 = [(PUWelcomeViewControllersManager *)self _remainingWelcomeViewControllerClassesToPresent];
  [v4 removeObject:v3];

  [(PUWelcomeViewControllersManager *)self _setPresentedWelcomeViewControllerClass:0];

  [(PUWelcomeViewControllersManager *)self _update];
}

- (void)_update
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PUWelcomeViewControllersManager *)self _presentingViewController];
  if (v3 && ![(PUWelcomeViewControllersManager *)self _presentedWelcomeViewControllerClass])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(PUWelcomeViewControllersManager *)self _welcomeViewControllerClasses];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
LABEL_6:
      v7 = 0;
      while (1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [(PUWelcomeViewControllersManager *)self _remainingWelcomeViewControllerClassesToPresent];
        v10 = [v9 containsObject:v8];

        if (v10)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
      [v8 presentIfNecessaryFromViewController:v3 presentationHandler:&__block_literal_global_7 completionHandler:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
LABEL_12:

LABEL_15:
      v11 = [(PUWelcomeViewControllersManager *)self completionHandler];
      v12 = v11 == 0;

      if (!v12)
      {
        v13 = [(PUWelcomeViewControllersManager *)self completionHandler];
        v13[2]();

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
  v4 = [(PUWelcomeViewControllersManager *)self _remainingWelcomeViewControllerClassesToPresent];
  v3 = [(PUWelcomeViewControllersManager *)self _welcomeViewControllerClasses];
  [v4 addObjectsFromArray:v3];
}

- (void)resetAllLastPresentationInfos
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(PUWelcomeViewControllersManager *)self _welcomeViewControllerClasses];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetLastPresentationInfo];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v7 synchronize];
}

- (void)presentWelcomeViewControllersIfNecessaryFromViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(PUWelcomeViewControllersManager *)self setCompletionHandler:a4];
  [(PUWelcomeViewControllersManager *)self _setPresentingViewController:v6];

  [(PUWelcomeViewControllersManager *)self _reset];

  [(PUWelcomeViewControllersManager *)self _update];
}

- (id)_initWithWelcomeViewControllerClasses:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUWelcomeViewControllersManager;
  v5 = [(PUWelcomeViewControllersManager *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
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