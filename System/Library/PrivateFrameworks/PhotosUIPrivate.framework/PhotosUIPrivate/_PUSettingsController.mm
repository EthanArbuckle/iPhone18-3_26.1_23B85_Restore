@interface _PUSettingsController
- (PXSettings)currentSettings;
- (UINavigationController)searchNavigationController;
- (_PUSettingsController)initWithRootSettings:(id)settings;
- (void)_clearSettingsOverride;
- (void)_hideToast;
- (void)_invalidateNavigationItems;
- (void)_showReminderToQuitAfterChange;
- (void)_updateNavigationItemOfViewController:(id)controller;
- (void)_warnForSettingsOverride;
- (void)callOnViewDidDisappearBlock;
- (void)handleEllipsisBarButtonItem:(id)item;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setDismissButtonFactory:(id)factory;
- (void)setEllipsisBarButtonItemFactory:(id)factory;
- (void)setToast:(id)toast;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation _PUSettingsController

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  settingsCopy = settings;
  pathCopy = path;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = settingsCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 isTransientKeyPath:pathCopy];
  if ((v8 & 1) == 0)
  {
    [(_PUSettingsController *)self _showReminderToQuitAfterChange];
  }
}

- (void)_hideToast
{
  toast = [(_PUSettingsController *)self toast];
  [toast dismissAnimated:1];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = MEMORY[0x1E69C4468];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35___PUSettingsController__hideToast__block_invoke;
  v7[3] = &unk_1E7B7DBC0;
  v8 = standardUserDefaults;
  v5 = standardUserDefaults;
  v6 = [v4 show:v7];
}

- (void)_showReminderToQuitAfterChange
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"InternalSettingsDisableReminderToQuitAfterChange"] & 1) == 0)
  {
    if (settingsWindow)
    {
      if (([settingsWindow isHidden] & 1) == 0)
      {
        toast = [(_PUSettingsController *)self toast];

        if (!toast)
        {
          date = [MEMORY[0x1E695DF00] date];
          v6 = [standardUserDefaults objectForKey:@"InternalSettingsReminderToQuitAfterChangeLastDate"];
          v7 = v6;
          if (!v6 || ([v6 timeIntervalSinceDate:date], v8 >= 480.0))
          {
            [standardUserDefaults setObject:date forKey:@"InternalSettingsReminderToQuitAfterChangeLastDate"];
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
  currentSettings = [(_PUSettingsController *)self currentSettings];
  [currentSettings clearManualOverrides];

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

- (void)setToast:(id)toast
{
  toastCopy = toast;
  if (self->_toast != toastCopy)
  {
    v6 = toastCopy;
    objc_storeStrong(&self->_toast, toast);
    toastCopy = v6;
  }
}

- (void)handleEllipsisBarButtonItem:(id)item
{
  v4 = MEMORY[0x1E69DC650];
  itemCopy = item;
  v6 = [v4 alertControllerWithTitle:0 message:0 preferredStyle:0];
  currentSettings = [(_PUSettingsController *)self currentSettings];
  if (currentSettings)
  {
    rootSettings = [(_PUSettingsController *)self rootSettings];

    if (currentSettings != rootSettings)
    {
      mEMORY[0x1E69C3558] = [MEMORY[0x1E69C3558] sharedInstance];
      v10 = [mEMORY[0x1E69C3558] isFavoriteSettings:currentSettings];
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
      v26 = mEMORY[0x1E69C3558];
      v28 = v11;
      v27 = currentSettings;
      v15 = mEMORY[0x1E69C3558];
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

  if (currentSettings)
  {
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"bookmark"];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53___PUSettingsController_handleEllipsisBarButtonItem___block_invoke_3;
    v21[3] = &unk_1E7B80C38;
    v22 = currentSettings;
    selfCopy = self;
    [v6 _addActionWithTitle:@"Configurations" image:v17 style:0 handler:v21];
  }

  v18 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:@"PUTTR"];
  [v6 _addActionWithTitle:@"Tap to Radar" image:v18 style:0 handler:&__block_literal_global_961];

  v19 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  [v6 addAction:v19];

  [v6 setModalPresentationStyle:7];
  [(_PUSettingsController *)self presentViewController:v6 animated:1 completion:0];
  popoverPresentationController = [v6 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:itemCopy];
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

- (void)_updateNavigationItemOfViewController:(id)controller
{
  v4 = MEMORY[0x1E695DF70];
  controllerCopy = controller;
  v6 = objc_alloc_init(v4);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63___PUSettingsController__updateNavigationItemOfViewController___block_invoke;
  aBlock[3] = &unk_1E7B7DB70;
  v13 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  dismissButtonFactory = [(_PUSettingsController *)self dismissButtonFactory];
  v8[2](v8, dismissButtonFactory);

  ellipsisBarButtonItemFactory = [(_PUSettingsController *)self ellipsisBarButtonItemFactory];
  v8[2](v8, ellipsisBarButtonItemFactory);

  navigationItem = [controllerCopy navigationItem];

  [navigationItem setRightBarButtonItems:v7];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = _PUSettingsController;
  controllerCopy = controller;
  [(_PUSettingsController *)&v7 pushViewController:controllerCopy animated:animatedCopy];
  [(_PUSettingsController *)self _updateNavigationItemOfViewController:controllerCopy, v7.receiver, v7.super_class];
}

- (void)_invalidateNavigationItems
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewControllers = [(_PUSettingsController *)self viewControllers];
  v4 = [viewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        [(_PUSettingsController *)self _updateNavigationItemOfViewController:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [viewControllers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setEllipsisBarButtonItemFactory:(id)factory
{
  if (self->_ellipsisBarButtonItemFactory != factory)
  {
    v4 = [factory copy];
    ellipsisBarButtonItemFactory = self->_ellipsisBarButtonItemFactory;
    self->_ellipsisBarButtonItemFactory = v4;

    [(_PUSettingsController *)self _invalidateNavigationItems];
  }
}

- (void)setDismissButtonFactory:(id)factory
{
  if (self->_dismissButtonFactory != factory)
  {
    v4 = [factory copy];
    dismissButtonFactory = self->_dismissButtonFactory;
    self->_dismissButtonFactory = v4;

    [(_PUSettingsController *)self _invalidateNavigationItems];
  }
}

- (void)callOnViewDidDisappearBlock
{
  onViewDidDisappearBlock = [(_PUSettingsController *)self onViewDidDisappearBlock];

  if (onViewDidDisappearBlock)
  {
    onViewDidDisappearBlock2 = [(_PUSettingsController *)self onViewDidDisappearBlock];
    onViewDidDisappearBlock2[2]();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = _PUSettingsController;
  [(_PUSettingsController *)&v4 viewDidDisappear:disappear];
  [(_PUSettingsController *)self callOnViewDidDisappearBlock];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _PUSettingsController;
  [(_PUSettingsController *)&v6 viewDidAppear:appear];
  if (![(_PUSettingsController *)self hasWarnedForOverrides])
  {
    currentSettings = [(_PUSettingsController *)self currentSettings];
    hasUserDefaultsOverrides = [currentSettings hasUserDefaultsOverrides];

    if (hasUserDefaultsOverrides)
    {
      [(_PUSettingsController *)self setHasWarnedForOverrides:1];
      [(_PUSettingsController *)self _warnForSettingsOverride];
    }
  }
}

- (PXSettings)currentSettings
{
  topViewController = [(_PUSettingsController *)self topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    settings = [topViewController settings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = settings;
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

- (_PUSettingsController)initWithRootSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = _PUSettingsController;
  v6 = [(_PUSettingsController *)&v9 initWithRootSettings:settingsCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootSettings, settings);
    [(PTSettings *)v7->_rootSettings addKeyPathObserver:v7];
  }

  return v7;
}

@end