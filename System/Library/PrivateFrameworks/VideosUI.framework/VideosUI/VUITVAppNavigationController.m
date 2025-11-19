@interface VUITVAppNavigationController
@end

@implementation VUITVAppNavigationController

void __81___VUITVAppNavigationController__notifyObserversOfViewControllerChange_animated___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained viewControllers];
    v5 = [v4 count];

    if (*(a1 + 40) != v5)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [v3[186] allObjects];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [*(*(&v11 + 1) + 8 * v10++) numberOfChildControllersDidChangeFor:v3 from:*(a1 + 40) to:v5 animated:*(a1 + 48)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

void __83___VUITVAppNavigationController_iOS__accessibilityButtonBackgroundDefaultTintColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.15];
  v1 = _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor;
  _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor = v0;
}

@end