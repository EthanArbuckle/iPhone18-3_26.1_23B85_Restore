@interface PXContentFilterToggleButtonController
- (BOOL)isUsingCustomSortOrder;
- (BOOL)shouldHideButton;
- (NSArray)allMenuItems;
- (NSArray)filterMenuItems;
- (NSArray)viewOptionsMenuItems;
- (NSString)filterMenuSubtitle;
- (NSString)viewOptionsMenuSubtitle;
- (PXContentFilterToggleButtonController)initWithButtonConfiguration:(id)a3 roundedButton:(BOOL)a4;
- (id)_deferredMenu;
- (id)updatedMenuIfNecessary:(id)a3;
- (void)_setNeedsUpdate;
- (void)_setupButtonWithConfiguration:(id)a3 roundedButton:(BOOL)a4;
- (void)_updateButton;
- (void)_updateButtonMenu;
- (void)_updateButtonNonSolarium;
- (void)_updateButtonSolarium;
- (void)invalidateButton;
- (void)invalidateButtonMenu;
- (void)performChanges:(id)a3;
- (void)setBaseBackgroundColor:(id)a3;
- (void)setContentFilterState:(id)a3;
- (void)setFilteringSymbolConfiguration:(id)a3;
- (void)setFilteringSymbolName:(id)a3;
- (void)setLibraryFilterState:(id)a3;
- (void)setPrimaryTintColor:(id)a3;
- (void)setSecondaryTintColor:(id)a3;
- (void)setSymbolConfiguration:(id)a3;
- (void)setSymbolName:(id)a3;
@end

@implementation PXContentFilterToggleButtonController

- (id)_deferredMenu
{
  v14[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DC928];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __54__PXContentFilterToggleButtonController__deferredMenu__block_invoke;
  v11 = &unk_1E77383D0;
  objc_copyWeak(&v12, &location);
  v3 = [v2 elementWithUncachedProvider:&v8];
  v4 = MEMORY[0x1E69DCC60];
  v14[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:{1, v8, v9, v10, v11}];
  v6 = [v4 menuWithTitle:&stru_1F1741150 image:0 identifier:@"com.apple.photos.menu.contentFilterMainMenu" options:0 children:v5];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingChanges"}];
  }
}

- (void)_updateButton
{
  if ([(PXContentFilterToggleButtonController *)self _shouldUseSolariumBehavior])
  {

    [(PXContentFilterToggleButtonController *)self _updateButtonSolarium];
  }

  else
  {

    [(PXContentFilterToggleButtonController *)self _updateButtonNonSolarium];
  }
}

- (void)_updateButtonSolarium
{
  v11 = [(PXContentFilterToggleButtonController *)self libraryFilterState];
  v3 = [(PXContentFilterToggleButtonController *)self contentFilterState];
  if ([(PXContentFilterToggleButtonController *)self isUsingCustomSortOrder]&& [(PXContentFilterToggleButtonController *)self shouldHighlightOnCustomSortOrder])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isFiltering];
  }

  v5 = [(PXContentFilterToggleButtonController *)self customDefaultImageName];
  v6 = PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(v11, v3, v5);

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v6];
  if (v4)
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [v7 imageWithTintColor:v8 renderingMode:1];

    v7 = v9;
  }

  v10 = [(PXContentFilterToggleButtonController *)self barButtonItem];
  [v10 setImage:v7];
  [v10 setSelected:v4];
  [v10 setHidden:{-[PXContentFilterToggleButtonController shouldHideButton](self, "shouldHideButton")}];
  [(PXContentFilterToggleButtonController *)self _invalidateButtonMenu];
}

- (BOOL)shouldHideButton
{
  v3 = [(PXContentFilterToggleButtonController *)self libraryFilterState];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PXContentFilterToggleButtonController *)self contentFilterState];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)_updateButtonMenu
{
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    v3 = [(UIBarButtonItem *)self->_barButtonItem _contextMenuInteraction];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PXContentFilterToggleButtonController__updateButtonMenu__block_invoke;
    v7[3] = &unk_1E7731A80;
    objc_copyWeak(&v8, &location);
    [v3 updateVisibleMenuWithBlock:v7];

    objc_destroyWeak(&v8);
  }

  if (![(PXContentFilterToggleButtonController *)self _shouldUseSolariumBehavior])
  {
    v4 = [(UIButton *)self->_button contextMenuInteraction];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PXContentFilterToggleButtonController__updateButtonMenu__block_invoke_2;
    v5[3] = &unk_1E7731A80;
    objc_copyWeak(&v6, &location);
    [v4 updateVisibleMenuWithBlock:v5];

    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

void *__58__PXContentFilterToggleButtonController__updateButtonMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained updatedMenuIfNecessary:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

void *__58__PXContentFilterToggleButtonController__updateButtonMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained updatedMenuIfNecessary:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (id)updatedMenuIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:@"com.apple.photos.menu.contentFilterMainMenu"];

  if (v6)
  {
    v7 = [(PXContentFilterToggleButtonController *)self allMenuItems];
    goto LABEL_3;
  }

  v10 = [v4 identifier];
  v11 = [v10 isEqualToString:@"com.apple.photos.menu.contentFilterSubmenu"];

  if (v11)
  {
    v8 = [(PXContentFilterToggleButtonController *)self filterMenuItems];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = [v4 menuByReplacingChildren:v8];
    v12 = [(PXContentFilterToggleButtonController *)self filterMenuSubtitle];
LABEL_8:
    v13 = v12;
    [v9 setSubtitle:v12];

    goto LABEL_15;
  }

  v14 = [v4 identifier];
  v15 = [v14 isEqualToString:@"com.apple.photos.menu.contentFilterInlineSubmenu"];

  if (v15)
  {
    v7 = [(PXContentFilterToggleButtonController *)self filterInlineMenuItems];
LABEL_3:
    v8 = v7;
    if (v7)
    {
      v9 = [v4 menuByReplacingChildren:v7];
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v16 = [v4 identifier];
  v17 = [v16 isEqualToString:@"com.apple.photos.menu.contentFilterViewOptionsSubmenu"];

  if (v17)
  {
    v8 = [(PXContentFilterToggleButtonController *)self viewOptionsMenuItems];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = [v4 menuByReplacingChildren:v8];
    v12 = [(PXContentFilterToggleButtonController *)self viewOptionsMenuSubtitle];
    goto LABEL_8;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

void __54__PXContentFilterToggleButtonController__deferredMenu__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained allMenuItems];
    v6[2](v6, v5);
  }

  else
  {
    v6[2](v6, MEMORY[0x1E695E0F0]);
  }
}

- (void)_updateButtonNonSolarium
{
  v35 = [(PXContentFilterToggleButtonController *)self libraryFilterState];
  v3 = [(PXContentFilterToggleButtonController *)self contentFilterState];
  if (-[PXContentFilterToggleButtonController isUsingCustomSortOrder](self, "isUsingCustomSortOrder") && -[PXContentFilterToggleButtonController shouldHighlightOnCustomSortOrder](self, "shouldHighlightOnCustomSortOrder") || ([v35 isFiltering] & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isFiltering];
  }

  v5 = [(PXContentFilterToggleButtonController *)self button];
  v6 = [v5 configuration];
  v7 = [v6 copy];

  if (self->_shouldUpdateButtonSymbol)
  {
    if (self->_roundedButton)
    {
      v8 = [(PXContentFilterToggleButtonController *)self baseBackgroundColor];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v11 = [v5 backgroundColor];
        originalUnfilteredBackgroundColor = v11;
        if (!v11)
        {
          originalUnfilteredBackgroundColor = self->_originalUnfilteredBackgroundColor;
        }

        v10 = originalUnfilteredBackgroundColor;
      }

      v13 = v10;
      if (v4)
      {
        v13 = [v5 tintColor];
      }

      v14 = [v7 background];
      [v14 setBackgroundColor:v13];

      if (v4)
      {
      }
    }

    v15 = [(PXContentFilterToggleButtonController *)self symbolName];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v18 = [(PXContentFilterToggleButtonController *)self allMenuItems];
      if ([v18 count] < 2)
      {
        v17 = @"line.3.horizontal.decrease";
      }

      else
      {
        v17 = PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(v35, v3, 0);
      }
    }

    v19 = [(PXContentFilterToggleButtonController *)self symbolConfiguration];
    if (v4)
    {
      v20 = [(PXContentFilterToggleButtonController *)self filteringSymbolName];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v17;
      }

      v23 = v22;

      v24 = [(PXContentFilterToggleButtonController *)self filteringSymbolConfiguration];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = v19;
      }

      v27 = v26;

      v17 = v23;
      v19 = v27;
    }

    v28 = MEMORY[0x1E69DCAB8];
    if (v19)
    {
      v29 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v17];
      [v7 setImage:v29];

      [v7 setPreferredSymbolConfigurationForImage:v19];
    }

    else
    {
      v30 = [v7 image];
      v31 = [v30 configuration];
      v32 = [v28 _systemImageNamed:v17 withConfiguration:v31];

      if (v4)
      {
        [MEMORY[0x1E69DC888] whiteColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] tintColor];
      }
      v33 = ;
      v34 = [v32 imageWithTintColor:v33 renderingMode:1];
      [v7 setImage:v34];
    }
  }

  [v5 setConfiguration:v7];
  [v5 setHidden:{-[PXContentFilterToggleButtonController shouldHideButton](self, "shouldHideButton")}];
  [(PXContentFilterToggleButtonController *)self _invalidateButtonMenu];
}

- (void)_setupButtonWithConfiguration:(id)a3 roundedButton:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PXContentFilterToggleButtonController__setupButtonWithConfiguration_roundedButton___block_invoke;
  v8[3] = &unk_1E7731A58;
  v10 = a4;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(PXContentFilterToggleButtonController *)self performChanges:v8];
}

void __85__PXContentFilterToggleButtonController__setupButtonWithConfiguration_roundedButton___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) _deferredMenu];
  if ([*(a1 + 32) _shouldUseSolariumBehavior])
  {
    v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:0 menu:v11];
  }

  else
  {
    v3 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      v4 = [PXPhotosViewRoundedAccessoryButton buttonWithConfiguration:v3 primaryAction:0];
      [v4 setMenuOffset:{0.0, -8.0}];
    }

    else
    {
      v4 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v3 primaryAction:0];
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;

    [*(*(a1 + 32) + 104) setMenu:v11];
    [*(*(a1 + 32) + 104) setShowsMenuAsPrimaryAction:1];
    [*(*(a1 + 32) + 104) setPreferredMenuElementOrder:2];
    v7 = PXLocalizedStringFromTable(@"PXFilterButtonAXDescription", @"PhotosUICore");
    [*(*(a1 + 32) + 104) setAccessibilityLabel:v7];

    [*(*(a1 + 32) + 104) setAccessibilityIdentifier:@"sortFilterButton"];
    v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:*(*(a1 + 32) + 104)];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 112);
  *(v8 + 112) = v2;

  [*(*(a1 + 32) + 112) setPreferredMenuElementOrder:2];
  v10 = PXLocalizedStringFromTable(@"PXFilterButtonAXDescription", @"PhotosUICore");
  [*(*(a1 + 32) + 112) setAccessibilityLabel:v10];

  [*(*(a1 + 32) + 112) setAccessibilityIdentifier:@"sortFilterButton"];
  [*(a1 + 32) _invalidateButton];
}

- (void)invalidateButtonMenu
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __61__PXContentFilterToggleButtonController_invalidateButtonMenu__block_invoke;
  v2[3] = &unk_1E773DE58;
  v2[4] = self;
  [(PXContentFilterToggleButtonController *)self performChanges:v2];
}

- (void)invalidateButton
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__PXContentFilterToggleButtonController_invalidateButton__block_invoke;
  v2[3] = &unk_1E773DE58;
  v2[4] = self;
  [(PXContentFilterToggleButtonController *)self performChanges:v2];
}

- (BOOL)isUsingCustomSortOrder
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:196 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController isUsingCustomSortOrder]", v6}];

  abort();
}

- (NSArray)allMenuItems
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:184 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController allMenuItems]", v6}];

  abort();
}

- (NSString)viewOptionsMenuSubtitle
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:180 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController viewOptionsMenuSubtitle]", v6}];

  abort();
}

- (NSArray)viewOptionsMenuItems
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:176 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController viewOptionsMenuItems]", v6}];

  abort();
}

- (NSString)filterMenuSubtitle
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:172 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController filterMenuSubtitle]", v6}];

  abort();
}

- (NSArray)filterMenuItems
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:168 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController filterMenuItems]", v6}];

  abort();
}

- (void)performChanges:(id)a3
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(a3 + 2))(a3, self);
  if (!isPerformingChanges)
  {
    [(PXUpdater *)self->_updater updateIfNeeded];
  }

  self->_isPerformingChanges = isPerformingChanges;
}

- (void)setBaseBackgroundColor:(id)a3
{
  v4 = a3;
  baseBackgroundColor = self->_baseBackgroundColor;
  if (baseBackgroundColor != v4)
  {
    v9 = v4;
    v6 = [(UIColor *)baseBackgroundColor isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_baseBackgroundColor;
      self->_baseBackgroundColor = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setFilteringSymbolConfiguration:(id)a3
{
  v4 = a3;
  filteringSymbolConfiguration = self->_filteringSymbolConfiguration;
  if (filteringSymbolConfiguration != v4)
  {
    v9 = v4;
    v6 = [(UIImageSymbolConfiguration *)filteringSymbolConfiguration isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImageSymbolConfiguration *)v9 copy];
      v8 = self->_filteringSymbolConfiguration;
      self->_filteringSymbolConfiguration = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setSymbolConfiguration:(id)a3
{
  v4 = a3;
  symbolConfiguration = self->_symbolConfiguration;
  if (symbolConfiguration != v4)
  {
    v9 = v4;
    v6 = [(UIImageSymbolConfiguration *)symbolConfiguration isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImageSymbolConfiguration *)v9 copy];
      v8 = self->_symbolConfiguration;
      self->_symbolConfiguration = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setFilteringSymbolName:(id)a3
{
  v4 = a3;
  filteringSymbolName = self->_filteringSymbolName;
  if (filteringSymbolName != v4)
  {
    v9 = v4;
    v6 = [(NSString *)filteringSymbolName isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_filteringSymbolName;
      self->_filteringSymbolName = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setSymbolName:(id)a3
{
  v4 = a3;
  symbolName = self->_symbolName;
  if (symbolName != v4)
  {
    v9 = v4;
    v6 = [(NSString *)symbolName isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_symbolName;
      self->_symbolName = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setSecondaryTintColor:(id)a3
{
  v4 = a3;
  secondaryTintColor = self->_secondaryTintColor;
  if (secondaryTintColor != v4)
  {
    v9 = v4;
    v6 = [(UIColor *)secondaryTintColor isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_secondaryTintColor;
      self->_secondaryTintColor = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setPrimaryTintColor:(id)a3
{
  v4 = a3;
  primaryTintColor = self->_primaryTintColor;
  if (primaryTintColor != v4)
  {
    v9 = v4;
    v6 = [(UIColor *)primaryTintColor isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_primaryTintColor;
      self->_primaryTintColor = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      v4 = v9;
    }
  }
}

- (void)setContentFilterState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_contentFilterState != v4 && ![(PXContentFilterState *)v4 isEqual:?])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PXContentFilterToggleButtonController_setContentFilterState___block_invoke;
    v6[3] = &unk_1E7731A30;
    v6[4] = self;
    v7 = v5;
    [(PXContentFilterToggleButtonController *)self performChanges:v6];
  }
}

uint64_t __63__PXContentFilterToggleButtonController_setContentFilterState___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateButton];
}

- (void)setLibraryFilterState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_libraryFilterState != v4 && ![(PXLibraryFilterState *)v4 isEqual:?])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PXContentFilterToggleButtonController_setLibraryFilterState___block_invoke;
    v6[3] = &unk_1E7731A30;
    v6[4] = self;
    v7 = v5;
    [(PXContentFilterToggleButtonController *)self performChanges:v6];
  }
}

uint64_t __63__PXContentFilterToggleButtonController_setLibraryFilterState___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 88), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _invalidateButton];
}

- (PXContentFilterToggleButtonController)initWithButtonConfiguration:(id)a3 roundedButton:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v22.receiver = self;
  v22.super_class = PXContentFilterToggleButtonController;
  v7 = [(PXContentFilterToggleButtonController *)&v22 init];
  if (v7)
  {
    v8 = [v6 baseBackgroundColor];

    if (v8)
    {
      v9 = [v6 baseBackgroundColor];
      v10 = 32;
    }

    else
    {
      v11 = [MEMORY[0x1E69DC888] whiteColor];
      primaryTintColor = v7->_primaryTintColor;
      v7->_primaryTintColor = v11;

      v9 = [MEMORY[0x1E69DC888] whiteColor];
      v10 = 40;
    }

    v13 = *(&v7->super.isa + v10);
    *(&v7->super.isa + v10) = v9;

    v14 = [v6 background];
    v15 = [v14 backgroundColor];
    originalUnfilteredBackgroundColor = v7->_originalUnfilteredBackgroundColor;
    v7->_originalUnfilteredBackgroundColor = v15;

    v17 = [v6 preferredSymbolConfigurationForImage];
    symbolConfiguration = v7->_symbolConfiguration;
    v7->_symbolConfiguration = v17;

    v7->_roundedButton = v4;
    v7->_shouldUpdateButtonSymbol = 1;
    v19 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v19;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateButton];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateButtonMenu];
    [(PXContentFilterToggleButtonController *)v7 _setupButtonWithConfiguration:v6 roundedButton:v4];
  }

  return v7;
}

@end