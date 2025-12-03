@interface PXContentFilterToggleButtonController
- (BOOL)isUsingCustomSortOrder;
- (BOOL)shouldHideButton;
- (NSArray)allMenuItems;
- (NSArray)filterMenuItems;
- (NSArray)viewOptionsMenuItems;
- (NSString)filterMenuSubtitle;
- (NSString)viewOptionsMenuSubtitle;
- (PXContentFilterToggleButtonController)initWithButtonConfiguration:(id)configuration roundedButton:(BOOL)button;
- (id)_deferredMenu;
- (id)updatedMenuIfNecessary:(id)necessary;
- (void)_setNeedsUpdate;
- (void)_setupButtonWithConfiguration:(id)configuration roundedButton:(BOOL)button;
- (void)_updateButton;
- (void)_updateButtonMenu;
- (void)_updateButtonNonSolarium;
- (void)_updateButtonSolarium;
- (void)invalidateButton;
- (void)invalidateButtonMenu;
- (void)performChanges:(id)changes;
- (void)setBaseBackgroundColor:(id)color;
- (void)setContentFilterState:(id)state;
- (void)setFilteringSymbolConfiguration:(id)configuration;
- (void)setFilteringSymbolName:(id)name;
- (void)setLibraryFilterState:(id)state;
- (void)setPrimaryTintColor:(id)color;
- (void)setSecondaryTintColor:(id)color;
- (void)setSymbolConfiguration:(id)configuration;
- (void)setSymbolName:(id)name;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingChanges"}];
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
  libraryFilterState = [(PXContentFilterToggleButtonController *)self libraryFilterState];
  contentFilterState = [(PXContentFilterToggleButtonController *)self contentFilterState];
  if ([(PXContentFilterToggleButtonController *)self isUsingCustomSortOrder]&& [(PXContentFilterToggleButtonController *)self shouldHighlightOnCustomSortOrder])
  {
    isFiltering = 1;
  }

  else
  {
    isFiltering = [contentFilterState isFiltering];
  }

  customDefaultImageName = [(PXContentFilterToggleButtonController *)self customDefaultImageName];
  v6 = PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(libraryFilterState, contentFilterState, customDefaultImageName);

  v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v6];
  if (isFiltering)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [v7 imageWithTintColor:whiteColor renderingMode:1];

    v7 = v9;
  }

  barButtonItem = [(PXContentFilterToggleButtonController *)self barButtonItem];
  [barButtonItem setImage:v7];
  [barButtonItem setSelected:isFiltering];
  [barButtonItem setHidden:{-[PXContentFilterToggleButtonController shouldHideButton](self, "shouldHideButton")}];
  [(PXContentFilterToggleButtonController *)self _invalidateButtonMenu];
}

- (BOOL)shouldHideButton
{
  libraryFilterState = [(PXContentFilterToggleButtonController *)self libraryFilterState];
  if (libraryFilterState)
  {
    v4 = 0;
  }

  else
  {
    contentFilterState = [(PXContentFilterToggleButtonController *)self contentFilterState];
    v4 = contentFilterState == 0;
  }

  return v4;
}

- (void)_updateButtonMenu
{
  objc_initWeak(&location, self);
  if (objc_opt_respondsToSelector())
  {
    _contextMenuInteraction = [(UIBarButtonItem *)self->_barButtonItem _contextMenuInteraction];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__PXContentFilterToggleButtonController__updateButtonMenu__block_invoke;
    v7[3] = &unk_1E7731A80;
    objc_copyWeak(&v8, &location);
    [_contextMenuInteraction updateVisibleMenuWithBlock:v7];

    objc_destroyWeak(&v8);
  }

  if (![(PXContentFilterToggleButtonController *)self _shouldUseSolariumBehavior])
  {
    contextMenuInteraction = [(UIButton *)self->_button contextMenuInteraction];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__PXContentFilterToggleButtonController__updateButtonMenu__block_invoke_2;
    v5[3] = &unk_1E7731A80;
    objc_copyWeak(&v6, &location);
    [contextMenuInteraction updateVisibleMenuWithBlock:v5];

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

- (id)updatedMenuIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  identifier = [necessaryCopy identifier];
  v6 = [identifier isEqualToString:@"com.apple.photos.menu.contentFilterMainMenu"];

  if (v6)
  {
    allMenuItems = [(PXContentFilterToggleButtonController *)self allMenuItems];
    goto LABEL_3;
  }

  identifier2 = [necessaryCopy identifier];
  v11 = [identifier2 isEqualToString:@"com.apple.photos.menu.contentFilterSubmenu"];

  if (v11)
  {
    filterMenuItems = [(PXContentFilterToggleButtonController *)self filterMenuItems];
    if (!filterMenuItems)
    {
      goto LABEL_14;
    }

    v9 = [necessaryCopy menuByReplacingChildren:filterMenuItems];
    filterMenuSubtitle = [(PXContentFilterToggleButtonController *)self filterMenuSubtitle];
LABEL_8:
    v13 = filterMenuSubtitle;
    [v9 setSubtitle:filterMenuSubtitle];

    goto LABEL_15;
  }

  identifier3 = [necessaryCopy identifier];
  v15 = [identifier3 isEqualToString:@"com.apple.photos.menu.contentFilterInlineSubmenu"];

  if (v15)
  {
    allMenuItems = [(PXContentFilterToggleButtonController *)self filterInlineMenuItems];
LABEL_3:
    filterMenuItems = allMenuItems;
    if (allMenuItems)
    {
      v9 = [necessaryCopy menuByReplacingChildren:allMenuItems];
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  identifier4 = [necessaryCopy identifier];
  v17 = [identifier4 isEqualToString:@"com.apple.photos.menu.contentFilterViewOptionsSubmenu"];

  if (v17)
  {
    filterMenuItems = [(PXContentFilterToggleButtonController *)self viewOptionsMenuItems];
    if (!filterMenuItems)
    {
      goto LABEL_14;
    }

    v9 = [necessaryCopy menuByReplacingChildren:filterMenuItems];
    filterMenuSubtitle = [(PXContentFilterToggleButtonController *)self viewOptionsMenuSubtitle];
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
  libraryFilterState = [(PXContentFilterToggleButtonController *)self libraryFilterState];
  contentFilterState = [(PXContentFilterToggleButtonController *)self contentFilterState];
  if (-[PXContentFilterToggleButtonController isUsingCustomSortOrder](self, "isUsingCustomSortOrder") && -[PXContentFilterToggleButtonController shouldHighlightOnCustomSortOrder](self, "shouldHighlightOnCustomSortOrder") || ([libraryFilterState isFiltering] & 1) != 0)
  {
    isFiltering = 1;
  }

  else
  {
    isFiltering = [contentFilterState isFiltering];
  }

  button = [(PXContentFilterToggleButtonController *)self button];
  configuration = [button configuration];
  v7 = [configuration copy];

  if (self->_shouldUpdateButtonSymbol)
  {
    if (self->_roundedButton)
    {
      baseBackgroundColor = [(PXContentFilterToggleButtonController *)self baseBackgroundColor];
      v9 = baseBackgroundColor;
      if (baseBackgroundColor)
      {
        v10 = baseBackgroundColor;
      }

      else
      {
        backgroundColor = [button backgroundColor];
        originalUnfilteredBackgroundColor = backgroundColor;
        if (!backgroundColor)
        {
          originalUnfilteredBackgroundColor = self->_originalUnfilteredBackgroundColor;
        }

        v10 = originalUnfilteredBackgroundColor;
      }

      tintColor = v10;
      if (isFiltering)
      {
        tintColor = [button tintColor];
      }

      background = [v7 background];
      [background setBackgroundColor:tintColor];

      if (isFiltering)
      {
      }
    }

    symbolName = [(PXContentFilterToggleButtonController *)self symbolName];
    v16 = symbolName;
    if (symbolName)
    {
      v17 = symbolName;
    }

    else
    {
      allMenuItems = [(PXContentFilterToggleButtonController *)self allMenuItems];
      if ([allMenuItems count] < 2)
      {
        v17 = @"line.3.horizontal.decrease";
      }

      else
      {
        v17 = PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(libraryFilterState, contentFilterState, 0);
      }
    }

    symbolConfiguration = [(PXContentFilterToggleButtonController *)self symbolConfiguration];
    if (isFiltering)
    {
      filteringSymbolName = [(PXContentFilterToggleButtonController *)self filteringSymbolName];
      v21 = filteringSymbolName;
      if (filteringSymbolName)
      {
        v22 = filteringSymbolName;
      }

      else
      {
        v22 = v17;
      }

      v23 = v22;

      filteringSymbolConfiguration = [(PXContentFilterToggleButtonController *)self filteringSymbolConfiguration];
      v25 = filteringSymbolConfiguration;
      if (filteringSymbolConfiguration)
      {
        v26 = filteringSymbolConfiguration;
      }

      else
      {
        v26 = symbolConfiguration;
      }

      v27 = v26;

      v17 = v23;
      symbolConfiguration = v27;
    }

    v28 = MEMORY[0x1E69DCAB8];
    if (symbolConfiguration)
    {
      v29 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v17];
      [v7 setImage:v29];

      [v7 setPreferredSymbolConfigurationForImage:symbolConfiguration];
    }

    else
    {
      image = [v7 image];
      configuration2 = [image configuration];
      v32 = [v28 _systemImageNamed:v17 withConfiguration:configuration2];

      if (isFiltering)
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

  [button setConfiguration:v7];
  [button setHidden:{-[PXContentFilterToggleButtonController shouldHideButton](self, "shouldHideButton")}];
  [(PXContentFilterToggleButtonController *)self _invalidateButtonMenu];
}

- (void)_setupButtonWithConfiguration:(id)configuration roundedButton:(BOOL)button
{
  configurationCopy = configuration;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__PXContentFilterToggleButtonController__setupButtonWithConfiguration_roundedButton___block_invoke;
  v8[3] = &unk_1E7731A58;
  buttonCopy = button;
  v8[4] = self;
  v9 = configurationCopy;
  v7 = configurationCopy;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:196 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController isUsingCustomSortOrder]", v6}];

  abort();
}

- (NSArray)allMenuItems
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:184 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController allMenuItems]", v6}];

  abort();
}

- (NSString)viewOptionsMenuSubtitle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:180 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController viewOptionsMenuSubtitle]", v6}];

  abort();
}

- (NSArray)viewOptionsMenuItems
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:176 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController viewOptionsMenuItems]", v6}];

  abort();
}

- (NSString)filterMenuSubtitle
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:172 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController filterMenuSubtitle]", v6}];

  abort();
}

- (NSArray)filterMenuItems
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXContentFilterToggleButtonController.m" lineNumber:168 description:{@"Method %s is a responsibility of subclass %@", "-[PXContentFilterToggleButtonController filterMenuItems]", v6}];

  abort();
}

- (void)performChanges:(id)changes
{
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  (*(changes + 2))(changes, self);
  if (!isPerformingChanges)
  {
    [(PXUpdater *)self->_updater updateIfNeeded];
  }

  self->_isPerformingChanges = isPerformingChanges;
}

- (void)setBaseBackgroundColor:(id)color
{
  colorCopy = color;
  baseBackgroundColor = self->_baseBackgroundColor;
  if (baseBackgroundColor != colorCopy)
  {
    v9 = colorCopy;
    v6 = [(UIColor *)baseBackgroundColor isEqual:colorCopy];
    colorCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_baseBackgroundColor;
      self->_baseBackgroundColor = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      colorCopy = v9;
    }
  }
}

- (void)setFilteringSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  filteringSymbolConfiguration = self->_filteringSymbolConfiguration;
  if (filteringSymbolConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    v6 = [(UIImageSymbolConfiguration *)filteringSymbolConfiguration isEqual:configurationCopy];
    configurationCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImageSymbolConfiguration *)v9 copy];
      v8 = self->_filteringSymbolConfiguration;
      self->_filteringSymbolConfiguration = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      configurationCopy = v9;
    }
  }
}

- (void)setSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  symbolConfiguration = self->_symbolConfiguration;
  if (symbolConfiguration != configurationCopy)
  {
    v9 = configurationCopy;
    v6 = [(UIImageSymbolConfiguration *)symbolConfiguration isEqual:configurationCopy];
    configurationCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIImageSymbolConfiguration *)v9 copy];
      v8 = self->_symbolConfiguration;
      self->_symbolConfiguration = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      configurationCopy = v9;
    }
  }
}

- (void)setFilteringSymbolName:(id)name
{
  nameCopy = name;
  filteringSymbolName = self->_filteringSymbolName;
  if (filteringSymbolName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)filteringSymbolName isEqual:nameCopy];
    nameCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_filteringSymbolName;
      self->_filteringSymbolName = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      nameCopy = v9;
    }
  }
}

- (void)setSymbolName:(id)name
{
  nameCopy = name;
  symbolName = self->_symbolName;
  if (symbolName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)symbolName isEqual:nameCopy];
    nameCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_symbolName;
      self->_symbolName = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      nameCopy = v9;
    }
  }
}

- (void)setSecondaryTintColor:(id)color
{
  colorCopy = color;
  secondaryTintColor = self->_secondaryTintColor;
  if (secondaryTintColor != colorCopy)
  {
    v9 = colorCopy;
    v6 = [(UIColor *)secondaryTintColor isEqual:colorCopy];
    colorCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_secondaryTintColor;
      self->_secondaryTintColor = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      colorCopy = v9;
    }
  }
}

- (void)setPrimaryTintColor:(id)color
{
  colorCopy = color;
  primaryTintColor = self->_primaryTintColor;
  if (primaryTintColor != colorCopy)
  {
    v9 = colorCopy;
    v6 = [(UIColor *)primaryTintColor isEqual:colorCopy];
    colorCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(UIColor *)v9 copy];
      v8 = self->_primaryTintColor;
      self->_primaryTintColor = v7;

      [(PXContentFilterToggleButtonController *)self _invalidateButton];
      colorCopy = v9;
    }
  }
}

- (void)setContentFilterState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_contentFilterState != stateCopy && ![(PXContentFilterState *)stateCopy isEqual:?])
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

- (void)setLibraryFilterState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_libraryFilterState != stateCopy && ![(PXLibraryFilterState *)stateCopy isEqual:?])
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

- (PXContentFilterToggleButtonController)initWithButtonConfiguration:(id)configuration roundedButton:(BOOL)button
{
  buttonCopy = button;
  configurationCopy = configuration;
  v22.receiver = self;
  v22.super_class = PXContentFilterToggleButtonController;
  v7 = [(PXContentFilterToggleButtonController *)&v22 init];
  if (v7)
  {
    baseBackgroundColor = [configurationCopy baseBackgroundColor];

    if (baseBackgroundColor)
    {
      baseBackgroundColor2 = [configurationCopy baseBackgroundColor];
      v10 = 32;
    }

    else
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      primaryTintColor = v7->_primaryTintColor;
      v7->_primaryTintColor = whiteColor;

      baseBackgroundColor2 = [MEMORY[0x1E69DC888] whiteColor];
      v10 = 40;
    }

    v13 = *(&v7->super.isa + v10);
    *(&v7->super.isa + v10) = baseBackgroundColor2;

    background = [configurationCopy background];
    backgroundColor = [background backgroundColor];
    originalUnfilteredBackgroundColor = v7->_originalUnfilteredBackgroundColor;
    v7->_originalUnfilteredBackgroundColor = backgroundColor;

    preferredSymbolConfigurationForImage = [configurationCopy preferredSymbolConfigurationForImage];
    symbolConfiguration = v7->_symbolConfiguration;
    v7->_symbolConfiguration = preferredSymbolConfigurationForImage;

    v7->_roundedButton = buttonCopy;
    v7->_shouldUpdateButtonSymbol = 1;
    v19 = [[off_1E7721940 alloc] initWithTarget:v7 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v7->_updater;
    v7->_updater = v19;

    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateButton];
    [(PXUpdater *)v7->_updater addUpdateSelector:sel__updateButtonMenu];
    [(PXContentFilterToggleButtonController *)v7 _setupButtonWithConfiguration:configurationCopy roundedButton:buttonCopy];
  }

  return v7;
}

@end