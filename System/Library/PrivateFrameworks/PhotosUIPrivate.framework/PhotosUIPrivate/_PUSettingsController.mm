@interface _PUSettingsController
- (PXSettings)currentSettings;
- (UINavigationController)searchNavigationController;
- (_PUSettingsController)initWithRootSettings:(id)a3;
- (void)_clearSettingsOverride;
- (void)_hideToast;
- (void)_invalidateNavigationItems;
- (void)_showReminderToQuitAfterChange;
- (void)_updateNavigationItemOfViewController:(id)a3;
- (void)_warnForSettingsOverride;
- (void)callOnViewDidDisappearBlock;
- (void)handleEllipsisBarButtonItem:(id)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setDismissButtonFactory:(id)a3;
- (void)setEllipsisBarButtonItemFactory:(id)a3;
- (void)setToast:(id)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation _PUSettingsController

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 isTransientKeyPath:v6];
  if ((v8 & 1) == 0)
  {
    [(_PUSettingsController *)self _showReminderToQuitAfterChange];
  }
}

- (void)_hideToast
{
  v2 = [(_PUSettingsController *)self toast];
  [v2 dismissAnimated:1];

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E69C4468];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___PUSettingsController__hideToast__block_invoke;
  v7[3] = &unk_1E7B7DBC0;
  v8 = v3;
  v5 = v3;
  v6 = [v4 show:v7];
}

- (void)_showReminderToQuitAfterChange
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([v3 BOOLForKey:@"InternalSettingsDisableReminderToQuitAfterChange"] & 1) == 0)
  {
    if (settingsWindow)
    {
      if (([settingsWindow isHidden] & 1) == 0)
      {
        v4 = [(_PUSettingsController *)self toast];

        if (!v4)
        {
          v5 = [MEMORY[0x1E695DF00] date];
          v6 = [v3 objectForKey:@"InternalSettingsReminderToQuitAfterChangeLastDate"];
          v7 = v6;
          if (!v6 || ([v6 timeIntervalSinceDate:v5], v8 >= 480.0))
          {
            [v3 setObject:v5 forKey:@"InternalSettingsReminderToQuitAfterChangeLastDate"];
            v10[0] = MEMORY[0x1E69E9820];
            v10[1] = 3221225472;
            v10[2] = __55___PUSettingsController__showReminderToQuitAfterChange__block_invoke;
            v10[3] = &unk_1E7B7DB98;
            v10[4] = self;
            v9 = [MEMORY[0x1E69C3BC0] show:v10];
            [(_PUSettingsController *)self setToast:v9];
          }
        }
      }
    }
  }
}

- (void)_clearSettingsOverride
{
  v3 = [(_PUSettingsController *)self currentSettings];
  [v3 clearManualOverrides];

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Overrides Cleared" message:@"Internal settings overrides have been cleared. This will take effect on the next launch of Photos." preferredStyle:1];
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:0];
  [v6 addAction:v4];

  v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"Quit" style:2 handler:&__block_literal_global_981];
  [v6 addAction:v5];

  [(_PUSettingsController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)_warnForSettingsOverride
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Internal Settings Are Overridden" message:@"Internal settings have been overridden by a defaults write. Changes made here may not be saved." preferredStyle:1];
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:0];
  [v3 addAction:v4];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___PUSettingsController__warnForSettingsOverride__block_invoke;
  v6[3] = &unk_1E7B7E148;
  v6[4] = self;
  v5 = [MEMORY[0x1E69DC648] actionWithTitle:@"Clear Overrides" style:2 handler:v6];
  [v3 addAction:v5];

  [(_PUSettingsController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)setToast:(id)a3
{
  v5 = a3;
  if (self->_toast != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_toast, a3);
    v5 = v6;
  }
}

- (void)handleEllipsisBarButtonItem:(id)a3
{
  v4 = MEMORY[0x1E69DC650];
  v5 = a3;
  v6 = [v4 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v7 = [(_PUSettingsController *)self currentSettings];
  if (v7)
  {
    v8 = [(_PUSettingsController *)self rootSettings];

    if (v7 != v8)
    {
      v9 = [MEMORY[0x1E69C3558] sharedInstance];
      v10 = [v9 isFavoriteSettings:v7];
      v11 = v10;
      if (v10)
      {
        v12 = @"Unfavorite";
      }

      else
      {
        v12 = @"Favorite";
      }

      if (v10)
      {
        v13 = @"star.fill";
      }

      else
      {
        v13 = @"star";
      }

      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:v13];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __53___PUSettingsController_handleEllipsisBarButtonItem___block_invoke;
      v25[3] = &unk_1E7B805E8;
      v26 = v9;
      v28 = v11;
      v27 = v7;
      v15 = v9;
      [v6 _addActionWithTitle:v12 image:v14 style:0 handler:v25];
    }
  }

  v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __53___PUSettingsController_handleEllipsisBarButtonItem___block_invoke_2;
  v24[3] = &unk_1E7B80DD0;
  v24[4] = self;
  [v6 _addActionWithTitle:@"Search" image:v16 style:0 handler:v24];

  if (v7)
  {
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bookmark"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53___PUSettingsController_handleEllipsisBarButtonItem___block_invoke_3;
    v21[3] = &unk_1E7B80C38;
    v22 = v7;
    v23 = self;
    [v6 _addActionWithTitle:@"Configurations" image:v17 style:0 handler:v21];
  }

  v18 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"PUTTR"];
  [v6 _addActionWithTitle:@"Tap to Radar" image:v18 style:0 handler:&__block_literal_global_961];

  v19 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v6 addAction:v19];

  [v6 setModalPresentationStyle:7];
  [(_PUSettingsController *)self presentViewController:v6 animated:1 completion:0];
  v20 = [v6 popoverPresentationController];
  [v20 setBarButtonItem:v5];
}

- (UINavigationController)searchNavigationController
{
  searchNavigationController = self->_searchNavigationController;
  if (!searchNavigationController)
  {
    v4 = [objc_alloc(MEMORY[0x1E69C39D8]) initWithSettingsController:self];
    v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
    v6 = self->_searchNavigationController;
    self->_searchNavigationController = v5;

    searchNavigationController = self->_searchNavigationController;
  }

  return searchNavigationController;
}

- (void)_updateNavigationItemOfViewController:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___PUSettingsController__updateNavigationItemOfViewController___block_invoke;
  aBlock[3] = &unk_1E7B7DB70;
  v13 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [(_PUSettingsController *)self dismissButtonFactory];
  v8[2](v8, v9);

  v10 = [(_PUSettingsController *)self ellipsisBarButtonItemFactory];
  v8[2](v8, v10);

  v11 = [v5 navigationItem];

  [v11 setRightBarButtonItems:v7];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = _PUSettingsController;
  v6 = a3;
  [(_PUSettingsController *)&v7 pushViewController:v6 animated:v4];
  [(_PUSettingsController *)self _updateNavigationItemOfViewController:v6, v7.receiver, v7.super_class];
}

- (void)_invalidateNavigationItems
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(_PUSettingsController *)self viewControllers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(_PUSettingsController *)self _updateNavigationItemOfViewController:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setEllipsisBarButtonItemFactory:(id)a3
{
  if (self->_ellipsisBarButtonItemFactory != a3)
  {
    v4 = [a3 copy];
    ellipsisBarButtonItemFactory = self->_ellipsisBarButtonItemFactory;
    self->_ellipsisBarButtonItemFactory = v4;

    [(_PUSettingsController *)self _invalidateNavigationItems];
  }
}

- (void)setDismissButtonFactory:(id)a3
{
  if (self->_dismissButtonFactory != a3)
  {
    v4 = [a3 copy];
    dismissButtonFactory = self->_dismissButtonFactory;
    self->_dismissButtonFactory = v4;

    [(_PUSettingsController *)self _invalidateNavigationItems];
  }
}

- (void)callOnViewDidDisappearBlock
{
  v3 = [(_PUSettingsController *)self onViewDidDisappearBlock];

  if (v3)
  {
    v4 = [(_PUSettingsController *)self onViewDidDisappearBlock];
    v4[2]();
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _PUSettingsController;
  [(_PUSettingsController *)&v4 viewDidDisappear:a3];
  [(_PUSettingsController *)self callOnViewDidDisappearBlock];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _PUSettingsController;
  [(_PUSettingsController *)&v6 viewDidAppear:a3];
  if (![(_PUSettingsController *)self hasWarnedForOverrides])
  {
    v4 = [(_PUSettingsController *)self currentSettings];
    v5 = [v4 hasUserDefaultsOverrides];

    if (v5)
    {
      [(_PUSettingsController *)self setHasWarnedForOverrides:1];
      [(_PUSettingsController *)self _warnForSettingsOverride];
    }
  }
}

- (PXSettings)currentSettings
{
  v2 = [(_PUSettingsController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 settings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_PUSettingsController)initWithRootSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PUSettingsController;
  v6 = [(_PUSettingsController *)&v9 initWithRootSettings:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootSettings, a3);
    [(PTSettings *)v7->_rootSettings addKeyPathObserver:v7];
  }

  return v7;
}

@end