@interface PUIStylePickerHomeScreenComponentViewController
+ (id)_homeScreenStyleVariantOptionForTypeOption:(id)a3 variant:(unint64_t)a4;
+ (id)_orderedHomeScreenStylePickerOptions;
+ (id)_orderedHomeScreenStylePickerVariantOptionsForTypeOption:(id)a3;
+ (id)_typeOptionForStyleType:(unint64_t)a3 variant:(unint64_t)a4;
+ (unint64_t)_homeScreenStyleTypeForOption:(id)a3;
+ (unint64_t)_homeScreenStyleVariantForOption:(id)a3;
- (BOOL)_caseColorButtonSupported;
- (BOOL)_enclosureColorButtonSupported;
- (PUIStylePickerHomeScreenComponentViewController)initWithHomeScreenConfiguration:(id)a3;
- (PUIStylePickerHomeScreenComponentViewControllerDelegate)delegate;
- (double)_calculateEstimatedHeight;
- (double)_calculateStyleItemSpacing;
- (id)_actionForIconTintSource:(unint64_t)a3;
- (id)_variantActionsForHomeScreenItemType:(id)a3;
- (id)_variantPickerViewForSelectedStylePickerTypeOption:(id)a3;
- (void)_accentColorSlidersDidChangeValue:(id)a3;
- (void)_configureItemViewsForHomeScreenConfiguration:(id)a3;
- (void)_createColorSliders;
- (void)_createHomeScreenItemVariantPickersForItemViews:(id)a3;
- (void)_createHomeScreenItemViewsWithHomeScreenConfiguration:(id)a3;
- (void)_createHorizontalStackViewForItemViews:(id)a3;
- (void)_createPrimaryVerticalStackViewWithArrangedSubviews:(id)a3;
- (void)_createTintSourceHorizontalStackViewForHomeScreenConfiguration:(id)a3;
- (void)_mutateHomeScreenConfiguration:(id)a3;
- (void)_notifyDelegateOfUpdatedEstimatedHeight;
- (void)_notifyDelegateOfUpdatedHomeScreenConfiguration;
- (void)_selectedHomeScreenStylePickerTypeOptionDidChange:(id)a3;
- (void)_selectedHomeScreenStyleVariantOptionChangedToOption:(id)a3;
- (void)_selectedIconTintSourceChangedToTintSource:(unint64_t)a3;
- (void)_updateItemMarginsForHomeScreenConfiguration:(id)a3;
- (void)_updateLayoutConstraints;
- (void)_updateSelectionForTintSourceControlsForCurrentIconTintSource:(unint64_t)a3 animated:(BOOL)a4;
- (void)_updateSelectionForTypeOption:(id)a3 animated:(BOOL)a4;
- (void)_updateViewControllerForHomeScreenConfiguration:(id)a3 animated:(BOOL)a4;
- (void)navigateHomeScreenColorPickerSlidersToColor:(id)a3 animated:(BOOL)a4;
- (void)setEstimatedHeight:(double)a3 notifyDelegate:(BOOL)a4;
- (void)updateHomeScreenCustomTintColorToColor:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PUIStylePickerHomeScreenComponentViewController

- (PUIStylePickerHomeScreenComponentViewController)initWithHomeScreenConfiguration:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PUIStylePickerHomeScreenComponentViewController;
  v5 = [(PUIStylePickerHomeScreenComponentViewController *)&v18 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    homeScreenConfiguration = v5->_homeScreenConfiguration;
    v5->_homeScreenConfiguration = v6;

    v8 = [v4 accentStyle];
    v9 = [[_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl alloc] initWithStyle:v8];
    lumaSliderUICoordinatorImpl = v5->_lumaSliderUICoordinatorImpl;
    v5->_lumaSliderUICoordinatorImpl = v9;

    v11 = [[PUIStyleUICoordinator alloc] initWithInitialStyle:v8 suggested:0 coordinator:v5->_lumaSliderUICoordinatorImpl];
    lumaSliderUICoordinator = v5->_lumaSliderUICoordinator;
    v5->_lumaSliderUICoordinator = v11;

    v13 = [(PUIStyleUICoordinatorImpl *)[_PUIStylePickerHomeScreenGradientSliderUICoordinatorImpl alloc] initWithStyle:v8];
    gradientColorSliderUICoordinatorImpl = v5->_gradientColorSliderUICoordinatorImpl;
    v5->_gradientColorSliderUICoordinatorImpl = v13;

    v15 = [[PUIStyleUICoordinator alloc] initWithInitialStyle:v8 suggested:0 coordinator:v5->_gradientColorSliderUICoordinatorImpl];
    gradientColorSliderUICoordinator = v5->_gradientColorSliderUICoordinator;
    v5->_gradientColorSliderUICoordinator = v15;
  }

  return v5;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerHomeScreenComponentViewController;
  [(PUIStylePickerHomeScreenComponentViewController *)&v3 viewDidLoad];
  [(PUIStylePickerHomeScreenComponentViewController *)self _updateViewControllerForHomeScreenConfiguration:0 animated:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUIStylePickerHomeScreenComponentViewController;
  [(PUIStylePickerHomeScreenComponentViewController *)&v4 viewWillAppear:a3];
  [(PUIStylePickerHomeScreenComponentViewController *)self _updateLayoutConstraints];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUIStylePickerHomeScreenComponentViewController;
  [(PUIStylePickerHomeScreenComponentViewController *)&v3 viewDidLayoutSubviews];
  [(PUIStylePickerHomeScreenComponentViewController *)self _updateItemMarginsForHomeScreenConfiguration:0];
}

- (void)setEstimatedHeight:(double)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_estimatedHeight = a3;
    [(PUIStylePickerHomeScreenComponentViewController *)self _updateLayoutConstraints];
    if (v4)
    {

      [(PUIStylePickerHomeScreenComponentViewController *)self _notifyDelegateOfUpdatedEstimatedHeight];
    }
  }
}

+ (id)_orderedHomeScreenStylePickerOptions
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (PUIFeatureEnabled(11))
  {
    v7[0] = @"default";
    v2 = @"clear";
    v3 = v7;
  }

  else
  {
    v6 = @"light";
    v2 = @"auto";
    v3 = &v6;
  }

  v3[1] = @"dark";
  v3[2] = v2;
  v3[3] = @"accent";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  return v4;
}

+ (id)_orderedHomeScreenStylePickerVariantOptionsForTypeOption:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"dark"])
  {
    v12 = @"always";
    v13 = @"auto";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v12;
    v6 = 2;
LABEL_6:
    v7 = [v4 arrayWithObjects:v5 count:{v6, v9, v10, v11, v12, v13, v14}];
    goto LABEL_7;
  }

  if (([v3 isEqualToString:@"clear"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"accent"))
  {
    v9 = @"light";
    v10 = @"dark";
    v11 = @"auto";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v9;
    v6 = 3;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v7;
}

+ (id)_typeOptionForStyleType:(unint64_t)a3 variant:(unint64_t)a4
{
  if (a3 == 3)
  {
    v4 = @"accent";
    goto LABEL_15;
  }

  if (a3 == 4)
  {
    v4 = @"clear";
    goto LABEL_15;
  }

  if (a3 != 5)
  {
LABEL_10:
    v5 = PUIFeatureEnabled(11);
    v6 = @"light";
    if (v5)
    {
      v6 = @"default";
    }

    v4 = v6;
    goto LABEL_15;
  }

  v4 = @"dark";
  if (a4)
  {
    if (a4 == 1)
    {
      goto LABEL_15;
    }

    if (a4 == 2)
    {
      if (PUIFeatureEnabled(11))
      {
        v4 = @"default";
      }

      else
      {
        v4 = @"light";
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!PUIFeatureEnabled(11))
  {
    v4 = @"auto";
  }

LABEL_15:

  return v4;
}

+ (unint64_t)_homeScreenStyleTypeForOption:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"clear"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"accent"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (unint64_t)_homeScreenStyleVariantForOption:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"light"])
  {
    v4 = 2;
  }

  else
  {
    v4 = ([v3 isEqualToString:@"dark"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"always");
  }

  return v4;
}

+ (id)_homeScreenStyleVariantOptionForTypeOption:(id)a3 variant:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (!a4)
  {
    goto LABEL_7;
  }

  if (a4 == 2)
  {
    v9 = @"light";
    goto LABEL_9;
  }

  if (a4 != 1)
  {
LABEL_7:
    v9 = @"auto";
    goto LABEL_9;
  }

  v7 = [v5 isEqualToString:@"dark"];
  v8 = @"always";
  if (!v7)
  {
    v8 = @"dark";
  }

  v9 = v8;
LABEL_9:

  return v9;
}

- (void)_selectedHomeScreenStylePickerTypeOptionDidChange:(id)a3
{
  v4 = [a3 styleTypeOption];
  v5 = [PUIStylePickerHomeScreenComponentViewController _homeScreenStyleTypeForOption:v4];
  v6 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
  v7 = [v6 styleType];

  if (v5 == 5 || v7 != v5)
  {
    if (([v4 isEqualToString:@"auto"] & 1) == 0)
    {
      if ([v4 isEqualToString:@"light"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"default"))
      {
        v9 = 2;
        goto LABEL_12;
      }

      if ([v4 isEqualToString:@"dark"])
      {
        v9 = 1;
        goto LABEL_12;
      }

      if (([v4 isEqualToString:@"clear"] & 1) == 0)
      {
        v9 = [v4 isEqualToString:@"accent"];
        goto LABEL_12;
      }
    }

    v9 = 0;
LABEL_12:
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__PUIStylePickerHomeScreenComponentViewController__selectedHomeScreenStylePickerTypeOptionDidChange___block_invoke;
    v12[3] = &unk_1E7854548;
    v12[4] = v4;
    v12[5] = v9;
    v12[6] = v5;
    [(PUIStylePickerHomeScreenComponentViewController *)self _mutateHomeScreenConfiguration:v12];
    goto LABEL_13;
  }

  if (v5 == 3)
  {
    v10 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
    v11 = [v10 suggestedAccentColor];

    [(PUIStylePickerHomeScreenComponentViewController *)self navigateHomeScreenColorPickerSlidersToColor:v11 animated:1];
  }

LABEL_13:
}

void __101__PUIStylePickerHomeScreenComponentViewController__selectedHomeScreenStylePickerTypeOptionDidChange___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 40);
  if (PUIFeatureEnabled(11) && (([*(a1 + 32) isEqualToString:@"accent"] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isEqualToString:", @"clear") & 1) != 0 || objc_msgSend(*(a1 + 32), "isEqualToString:", @"dark")))
  {
    v4 = [v6 lastUserSelectedVariantForStyleTypeOption];
    v5 = [v4 objectForKey:*(a1 + 32)];
    v3 = [PUIStylePickerHomeScreenComponentViewController _homeScreenStyleVariantForOption:v5];
  }

  [v6 setStyleType:*(a1 + 48)];
  [v6 setStyleVariant:v3];
}

- (void)_selectedHomeScreenStyleVariantOptionChangedToOption:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PUIStylePickerHomeScreenComponentViewController _homeScreenStyleVariantForOption:v4];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __104__PUIStylePickerHomeScreenComponentViewController__selectedHomeScreenStyleVariantOptionChangedToOption___block_invoke;
  v24[3] = &unk_1E7854570;
  v26 = v5;
  v6 = v4;
  v25 = v6;
  [(PUIStylePickerHomeScreenComponentViewController *)self _mutateHomeScreenConfiguration:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_itemViews;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v19 = v6;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
        v14 = [v13 styleType];
        v15 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
        v16 = +[PUIStylePickerHomeScreenComponentViewController _typeOptionForStyleType:variant:](PUIStylePickerHomeScreenComponentViewController, "_typeOptionForStyleType:variant:", v14, [v15 styleVariant]);

        v17 = [v12 styleTypeOption];
        LODWORD(v14) = [v17 isEqualToString:v16];

        if (v14)
        {
          v18 = v12;

          goto LABEL_11;
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_11:
    v6 = v19;
  }

  else
  {
    v18 = 0;
  }

  [v18 setStyleVariantOption:v6];
}

void __104__PUIStylePickerHomeScreenComponentViewController__selectedHomeScreenStyleVariantOptionChangedToOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = +[PUIStylePickerHomeScreenComponentViewController _typeOptionForStyleType:variant:](PUIStylePickerHomeScreenComponentViewController, "_typeOptionForStyleType:variant:", [v3 styleType], *(a1 + 40));
  v4 = [v3 lastUserSelectedVariantForStyleTypeOption];
  v5 = [v4 mutableCopy];

  [v5 setObject:*(a1 + 32) forKey:v6];
  [v3 setLastUserSelectedVariantForStyleTypeOption:v5];
  [v3 setStyleVariant:*(a1 + 40)];
}

- (void)_selectedIconTintSourceChangedToTintSource:(unint64_t)a3
{
  [(PUIStylePickerHomeScreenComponentViewController *)self _updateSelectionForTintSourceControlsForCurrentIconTintSource:a3 animated:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__PUIStylePickerHomeScreenComponentViewController__selectedIconTintSourceChangedToTintSource___block_invoke;
  v9[3] = &__block_descriptor_40_e54_v16__0__PUIMutableStylePickerHomeScreenConfiguration_8l;
  v9[4] = a3;
  [(PUIStylePickerHomeScreenComponentViewController *)self _mutateHomeScreenConfiguration:v9];
  v5 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
  v6 = [v5 accentColor];

  [(PUIStylePickerHomeScreenComponentViewController *)self navigateHomeScreenColorPickerSlidersToColor:v6 animated:1];
  if (a3 == 1)
  {
    v7 = [(PUIStylePickerHomeScreenComponentViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v8 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
      [v7 homeScreenComponentViewController:self didBeginEyedropperSessionForHomeScreenConfiguration:v8];
    }
  }
}

- (void)_mutateHomeScreenConfiguration:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;

    v4[2](v4, v9);
    [(PUIStylePickerHomeScreenComponentViewController *)self _updateViewControllerForHomeScreenConfiguration:v9 animated:1];
    [(PUIStylePickerHomeScreenComponentViewController *)self _notifyDelegateOfUpdatedHomeScreenConfiguration];
  }
}

- (void)updateHomeScreenCustomTintColorToColor:(id)a3
{
  [(PUIStylePickerHomeScreenComponentViewController *)self navigateHomeScreenColorPickerSlidersToColor:a3];
  v12 = [(PUIStylePickerHomeScreenConfiguration *)self->_homeScreenConfiguration accentStyle];
  [PUIDiscreteGradientVariatedCustomStyle minLuminanceForStyle:v12];
  v5 = v4;
  [PUIDiscreteGradientVariatedCustomStyle maxLuminanceForStyle:v12];
  v7 = v6;
  [v12 alpha];
  v9 = [v12 copyWithLuminance:v7 + (v5 - v7) * ((v8 + -0.25 + v8 + -0.25) / 0.75 + -1.0 + 1.0) * 0.5 alpha:1.0];
  customTintSourceControl = self->_customTintSourceControl;
  v11 = [v9 luminanceAppliedColor];
  [(PUIStylePickerHomeScreenTintSourceControl *)customTintSourceControl setTintColor:v11];
}

- (void)navigateHomeScreenColorPickerSlidersToColor:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__PUIStylePickerHomeScreenComponentViewController_navigateHomeScreenColorPickerSlidersToColor_animated___block_invoke;
  v16[3] = &unk_1E78545B8;
  v17 = v5;
  v6 = v5;
  [(PUIStylePickerHomeScreenComponentViewController *)self _mutateHomeScreenConfiguration:v16];
  v7 = [(PUIStylePickerHomeScreenConfiguration *)self->_homeScreenConfiguration accentStyle];
  v8 = [(PUIStyleUICoordinatorImpl *)[_PUIStylePickerHomeScreenGradientSliderUICoordinatorImpl alloc] initWithStyle:v7];
  gradientColorSliderUICoordinatorImpl = self->_gradientColorSliderUICoordinatorImpl;
  self->_gradientColorSliderUICoordinatorImpl = v8;

  v10 = [[PUIStyleUICoordinator alloc] initWithInitialStyle:v7 suggested:0 coordinator:self->_gradientColorSliderUICoordinatorImpl];
  gradientColorSliderUICoordinator = self->_gradientColorSliderUICoordinator;
  self->_gradientColorSliderUICoordinator = v10;

  [(PUIStyleVariationSlider *)self->_gradientColorSlider setStyleCoordinator:self->_gradientColorSliderUICoordinator animated:1];
  v12 = [[_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl alloc] initWithStyle:v7];
  lumaSliderUICoordinatorImpl = self->_lumaSliderUICoordinatorImpl;
  self->_lumaSliderUICoordinatorImpl = v12;

  v14 = [[PUIStyleUICoordinator alloc] initWithInitialStyle:v7 suggested:0 coordinator:self->_lumaSliderUICoordinatorImpl];
  lumaSliderUICoordinator = self->_lumaSliderUICoordinator;
  self->_lumaSliderUICoordinator = v14;

  [(PUIStyleVariationSlider *)self->_lumaSlider setStyleCoordinator:self->_lumaSliderUICoordinator animated:1];
}

void __104__PUIStylePickerHomeScreenComponentViewController_navigateHomeScreenColorPickerSlidersToColor_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAccentColor:v2];
  [v3 setStyleType:3];
}

- (void)_createHomeScreenItemViewsWithHomeScreenConfiguration:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_itemViews)
  {
    v16 = 1000;
    v20 = objc_opt_new();
    +[PUIStylePickerHomeScreenComponentViewController _orderedHomeScreenStylePickerOptions];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v19 = *v22;
      v7 = self;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v10 = objc_alloc_init(PUIStylePickerHomeScreenItemView);
          [(PUIStylePickerHomeScreenItemView *)v10 addTarget:self action:sel__selectedHomeScreenStylePickerTypeOptionDidChange_ forControlEvents:64];
          if ([v9 isEqualToString:@"accent"])
          {
            v11 = [v4 accentColor];
          }

          else
          {
            v11 = 0;
          }

          v12 = [v4 lastUserSelectedVariantForStyleTypeOption];
          v13 = [v12 objectForKey:v9];
          [v4 iconSize];
          [(PUIStylePickerHomeScreenItemView *)v10 setStyleTypeOption:v9 styleVariantOption:v13 iconSize:v11 tintColor:?];

          [v20 addObject:v10];
          ++v8;
          self = v7;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    v14 = [v20 copy];
    v15 = *(&self->super.super.super.isa + v17);
    *(&self->super.super.super.isa + v17) = v14;
  }
}

- (void)_configureItemViewsForHomeScreenConfiguration:(id)a3
{
  v4 = a3;
  itemViews = self->_itemViews;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__PUIStylePickerHomeScreenComponentViewController__configureItemViewsForHomeScreenConfiguration___block_invoke;
  v7[3] = &unk_1E78545E0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)itemViews enumerateObjectsUsingBlock:v7];
}

void __97__PUIStylePickerHomeScreenComponentViewController__configureItemViewsForHomeScreenConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 styleTypeOption];
  if ([v3 isEqualToString:@"accent"])
  {
    v4 = [*(a1 + 32) accentColor];
    [v5 setTintColor:v4];
  }

  [*(a1 + 32) iconContinuousCornerRadius];
  [v5 setIconContinuousCornerRadius:?];
  [*(a1 + 32) iconSize];
  [v5 setIconSize:?];
}

- (void)_createHorizontalStackViewForItemViews:(id)a3
{
  if (!self->_homeScreenItemTypeHorizontalStackView)
  {
    v4 = MEMORY[0x1E69DCF90];
    v5 = a3;
    v6 = [[v4 alloc] initWithArrangedSubviews:v5];

    [(UIStackView *)v6 setAxis:0];
    [(UIStackView *)v6 setDistribution:1];
    [(UIStackView *)v6 setAlignment:1];
    [(UIStackView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    homeScreenItemTypeHorizontalStackView = self->_homeScreenItemTypeHorizontalStackView;
    self->_homeScreenItemTypeHorizontalStackView = v6;
  }
}

- (BOOL)_enclosureColorButtonSupported
{
  if (_enclosureColorButtonSupported_onceToken != -1)
  {
    [PUIStylePickerHomeScreenComponentViewController _enclosureColorButtonSupported];
  }

  return _enclosureColorButtonSupported_enclosureButtonSupported;
}

void __81__PUIStylePickerHomeScreenComponentViewController__enclosureColorButtonSupported__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  _enclosureColorButtonSupported_enclosureButtonSupported = [v0 userInterfaceIdiom] != 1;
}

- (BOOL)_caseColorButtonSupported
{
  if (_caseColorButtonSupported_onceToken != -1)
  {
    [PUIStylePickerHomeScreenComponentViewController _caseColorButtonSupported];
  }

  return _caseColorButtonSupported_caseButtonSupported;
}

void __76__PUIStylePickerHomeScreenComponentViewController__caseColorButtonSupported__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 userInterfaceIdiom] == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = MGIsDeviceOneOfType() ^ 1;
  }

  _caseColorButtonSupported_caseButtonSupported = v1;
}

- (void)_createTintSourceHorizontalStackViewForHomeScreenConfiguration:(id)a3
{
  v4 = a3;
  if (!self->_tintSourceHorizontalStackView)
  {
    v33 = v4;
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v33 enclosureAccentColor];
    if ([(PUIStylePickerHomeScreenComponentViewController *)self _enclosureColorButtonSupported]&& v6)
    {
      v7 = [PUIStylePickerHomeScreenTintSourceControl alloc];
      v8 = [(PUIStylePickerHomeScreenComponentViewController *)self _actionForIconTintSource:4];
      v9 = [(PUIStylePickerHomeScreenTintSourceControl *)v7 initWithTintColor:v6 tintSource:4 primaryAction:v8];

      [(PUIStylePickerHomeScreenTintSourceControl *)v9 setAccessibilityIdentifier:@"device color source control"];
      [v5 addObject:v9];
    }

    if ([(PUIStylePickerHomeScreenComponentViewController *)self _caseColorButtonSupported])
    {
      v10 = [v33 caseAccentColor];

      v11 = [PUIStylePickerHomeScreenTintSourceControl alloc];
      v12 = [(PUIStylePickerHomeScreenComponentViewController *)self _actionForIconTintSource:3];
      v13 = [(PUIStylePickerHomeScreenTintSourceControl *)v11 initWithTintColor:v10 tintSource:3 primaryAction:v12];

      [(PUIStylePickerHomeScreenTintSourceControl *)v13 setAccessibilityIdentifier:@"case color source control"];
      [v5 addObject:v13];

      v6 = v10;
    }

    v14 = [v33 suggestedAccentColor];

    v15 = [PUIStylePickerHomeScreenTintSourceControl alloc];
    v16 = [(PUIStylePickerHomeScreenComponentViewController *)self _actionForIconTintSource:2];
    v17 = [(PUIStylePickerHomeScreenTintSourceControl *)v15 initWithTintColor:v14 tintSource:2 primaryAction:v16];

    [(PUIStylePickerHomeScreenTintSourceControl *)v17 setAccessibilityIdentifier:@"suggested color control"];
    [v5 addObject:v17];
    v18 = [v33 accentStyle];
    [PUIDiscreteGradientVariatedCustomStyle minLuminanceForStyle:v18];
    v20 = v19;
    [PUIDiscreteGradientVariatedCustomStyle maxLuminanceForStyle:v18];
    v22 = v21;
    [v18 alpha];
    v24 = [v18 copyWithLuminance:v22 + (v20 - v22) * ((v23 + -0.25 + v23 + -0.25) / 0.75 + -1.0 + 1.0) * 0.5 alpha:1.0];
    v25 = [v24 luminanceAppliedColor];

    v26 = [PUIStylePickerHomeScreenTintSourceControl alloc];
    v27 = [(PUIStylePickerHomeScreenComponentViewController *)self _actionForIconTintSource:1];
    v28 = [(PUIStylePickerHomeScreenTintSourceControl *)v26 initWithTintColor:v25 tintSource:1 primaryAction:v27];

    [(PUIStylePickerHomeScreenTintSourceControl *)v28 setAccessibilityIdentifier:@"color picker control"];
    customTintSourceControl = self->_customTintSourceControl;
    self->_customTintSourceControl = v28;
    v30 = v28;

    [v5 addObject:v30];
    v31 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v5];
    [(UIStackView *)v31 setAxis:0];
    [(UIStackView *)v31 setDistribution:1];
    [(UIStackView *)v31 setAlignment:1];
    [(UIStackView *)v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v31 setSpacing:32.0];
    tintSourceHorizontalStackView = self->_tintSourceHorizontalStackView;
    self->_tintSourceHorizontalStackView = v31;

    v4 = v33;
  }
}

- (void)_updateSelectionForTintSourceControlsForCurrentIconTintSource:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(UIStackView *)self->_tintSourceHorizontalStackView arrangedSubviews];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        v12 = objc_opt_class();
        v13 = v11;
        if (v12)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          [v15 setSelected:objc_msgSend(v15 animated:{"iconTintSource") == a3, v4}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (id)_actionForIconTintSource:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v4 = MEMORY[0x1E69DC628];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__PUIStylePickerHomeScreenComponentViewController__actionForIconTintSource___block_invoke;
  v7[3] = &unk_1E7854608;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  v5 = [v4 actionWithHandler:v7];
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);

  return v5;
}

void __76__PUIStylePickerHomeScreenComponentViewController__actionForIconTintSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectedIconTintSourceChangedToTintSource:*(a1 + 40)];
}

- (void)_createHomeScreenItemVariantPickersForItemViews:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (PUIFeatureEnabled(11) && !self->_homeScreenItemVariantPickerForItemView)
  {
    v4 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    homeScreenItemVariantPickerForItemView = self->_homeScreenItemVariantPickerForItemView;
    self->_homeScreenItemVariantPickerForItemView = v4;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_itemViews;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v10 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v12 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [v15 styleTypeOption];
          v17 = [(PUIStylePickerHomeScreenComponentViewController *)self _variantActionsForHomeScreenItemType:v16];

          v18 = [[PUIStylePickerSegmentedControl alloc] initWithFrame:v17 actions:v10, v11, v12, v13];
          [(NSMapTable *)self->_homeScreenItemVariantPickerForItemView setObject:v18 forKey:v15];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }
  }
}

- (void)_createColorSliders
{
  if (!self->_gradientColorSlider)
  {
    v3 = [(PUIStyleVariationSlider *)[_PUIStylePickerHomeScreenVariationSlider alloc] initWithStyleCoordinator:self->_gradientColorSliderUICoordinator contextIdentifier:@"_gradientColorSlider"];
    gradientColorSlider = self->_gradientColorSlider;
    self->_gradientColorSlider = &v3->super;

    [(PUIStyleVariationSlider *)self->_gradientColorSlider setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStyleVariationSlider *)self->_gradientColorSlider addTarget:self action:sel__accentColorSlidersDidChangeValue_ forControlEvents:4096];
    v5 = [(PUIStyleVariationSlider *)self->_gradientColorSlider sliderGestureRecognizer];
    [v5 setDelegate:self];
  }

  if (!self->_lumaSlider)
  {
    v6 = [(PUIStyleVariationSlider *)[_PUIStylePickerHomeScreenVariationSlider alloc] initWithStyleCoordinator:self->_lumaSliderUICoordinator contextIdentifier:@"_lumaSlider"];
    lumaSlider = self->_lumaSlider;
    self->_lumaSlider = &v6->super;

    [(PUIStyleVariationSlider *)self->_lumaSlider setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUIStyleVariationSlider *)self->_lumaSlider addTarget:self action:sel__accentColorSlidersDidChangeValue_ forControlEvents:4096];
    v8 = [(PUIStyleVariationSlider *)self->_lumaSlider sliderGestureRecognizer];
    [v8 setDelegate:self];
  }
}

- (void)_createPrimaryVerticalStackViewWithArrangedSubviews:(id)a3
{
  v4 = MEMORY[0x1E69DCF90];
  v5 = a3;
  v6 = [[v4 alloc] initWithArrangedSubviews:v5];

  [(UIStackView *)v6 setAxis:1];
  [(UIStackView *)v6 setDistribution:0];
  [(UIStackView *)v6 setAlignment:3];
  [(UIStackView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  primaryVerticalStackView = self->_primaryVerticalStackView;
  self->_primaryVerticalStackView = v6;
}

- (void)_updateViewControllerForHomeScreenConfiguration:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v56[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  homeScreenConfiguration = self->_homeScreenConfiguration;
  if (v6)
  {
    if ([(PUIStylePickerHomeScreenConfiguration *)homeScreenConfiguration isEqual:v6])
    {
      goto LABEL_41;
    }

    v40 = v4;
    v8 = [(PUIStylePickerHomeScreenConfiguration *)v6 copy];
    v9 = self->_homeScreenConfiguration;
    self->_homeScreenConfiguration = v8;
  }

  else
  {
    v40 = v4;
    v6 = homeScreenConfiguration;
  }

  v10 = [(PUIStylePickerHomeScreenConfiguration *)v6 styleType];
  v11 = [(PUIStylePickerHomeScreenConfiguration *)v6 styleVariant];
  v12 = [PUIStylePickerHomeScreenComponentViewController _typeOptionForStyleType:v10 variant:v11];
  v13 = [PUIStylePickerHomeScreenComponentViewController _homeScreenStyleVariantOptionForTypeOption:v12 variant:v11];
  v14 = [v12 isEqualToString:@"accent"];
  itemViews = self->_itemViews;
  if (!itemViews)
  {
    [(PUIStylePickerHomeScreenComponentViewController *)self _createHomeScreenItemViewsWithHomeScreenConfiguration:v6];
    itemViews = self->_itemViews;
  }

  v16 = itemViews;
  [(PUIStylePickerHomeScreenComponentViewController *)self _configureItemViewsForHomeScreenConfiguration:v6];
  if (!self->_homeScreenItemTypeHorizontalStackView)
  {
    [(PUIStylePickerHomeScreenComponentViewController *)self _createHorizontalStackViewForItemViews:v16];
  }

  v41 = v16;
  v17 = self->_primaryVerticalStackView;
  if (!v17)
  {
    v56[0] = self->_homeScreenItemTypeHorizontalStackView;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
    [(PUIStylePickerHomeScreenComponentViewController *)self _createPrimaryVerticalStackViewWithArrangedSubviews:v18];

    [(UIStackView *)self->_primaryVerticalStackView setCustomSpacing:self->_homeScreenItemTypeHorizontalStackView afterView:32.0];
    v17 = self->_primaryVerticalStackView;
  }

  gradientColorSlider = self->_gradientColorSlider;
  v42 = v14;
  if (v14)
  {
    if (!gradientColorSlider && !self->_lumaSlider)
    {
      [(PUIStylePickerHomeScreenComponentViewController *)self _createColorSliders];
    }

    if (PUIFeatureEnabled(11) && !self->_tintSourceHorizontalStackView)
    {
      [(PUIStylePickerHomeScreenComponentViewController *)self _createTintSourceHorizontalStackViewForHomeScreenConfiguration:v6];
    }

    [(UIStackView *)v17 insertArrangedSubview:self->_gradientColorSlider atIndex:1];
    [(UIStackView *)v17 insertArrangedSubview:self->_lumaSlider atIndex:2];
    if (PUIFeatureEnabled(11))
    {
      [(UIStackView *)v17 insertArrangedSubview:self->_tintSourceHorizontalStackView atIndex:3];
    }

    [(UIStackView *)self->_primaryVerticalStackView setCustomSpacing:self->_gradientColorSlider afterView:22.0];
    [(UIStackView *)self->_primaryVerticalStackView setCustomSpacing:self->_lumaSlider afterView:21.0];
    if (PUIFeatureEnabled(11))
    {
      [(UIStackView *)self->_primaryVerticalStackView setCustomSpacing:self->_tintSourceHorizontalStackView afterView:22.0];
    }
  }

  else
  {
    [(PUIStyleVariationSlider *)gradientColorSlider removeFromSuperview];
    [(PUIStyleVariationSlider *)self->_lumaSlider removeFromSuperview];
    if (PUIFeatureEnabled(11))
    {
      [(UIStackView *)self->_tintSourceHorizontalStackView removeFromSuperview];
    }
  }

  v20 = self->_variantPickerWrapperView;
  if (!v20)
  {
    v21 = [_PUIStylePickerHomeScreenVariantPickerWrapperView alloc];
    v20 = [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)v20 setHidden:1];
    objc_storeStrong(&self->_variantPickerWrapperView, v20);
  }

  v22 = [(PUIStylePickerHomeScreenComponentViewController *)self _variantPickerViewForSelectedStylePickerTypeOption:v12];
  v23 = [(PUIStylePickerSegmentedControl *)self->_selectedVariantPicker isEqual:v22];
  v38 = v17;
  if (!v22 || (v23 & 1) != 0)
  {
    if ((v23 & 1) == 0)
    {
      [(PUIStylePickerSegmentedControl *)self->_selectedVariantPicker removeFromSuperview];
      selectedVariantPicker = self->_selectedVariantPicker;
      self->_selectedVariantPicker = 0;

      [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)v20 setHidden:1];
    }
  }

  else
  {
    [(PUIStylePickerSegmentedControl *)self->_selectedVariantPicker removeFromSuperview];
    objc_storeStrong(&self->_selectedVariantPicker, v22);
    v24 = [PUIStylePickerHomeScreenComponentViewController _orderedHomeScreenStylePickerVariantOptionsForTypeOption:v12];
    -[PUIStylePickerSegmentedControl setSelectedSegmentIndex:](self->_selectedVariantPicker, "setSelectedSegmentIndex:", [v24 indexOfObject:v13]);
    [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)v20 addSubview:v22];
    [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)v20 setHidden:0];
    if (v42)
    {
      v25 = 4;
    }

    else
    {
      v25 = 1;
    }

    [(UIStackView *)v17 insertArrangedSubview:v20 atIndex:v25];
    [(UIStackView *)self->_primaryVerticalStackView setCustomSpacing:v20 afterView:18.0];
  }

  [(PUIStylePickerHomeScreenComponentViewController *)self _updateItemMarginsForHomeScreenConfiguration:v6, v38];
  if ([(PUIStylePickerHomeScreenComponentViewController *)self isViewLoaded])
  {
    v27 = [(UIStackView *)self->_primaryVerticalStackView superview];

    if (!v27)
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke;
      v55[3] = &unk_1E7854320;
      v55[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v55];
    }
  }

  v28 = [(PUIStylePickerHomeScreenConfiguration *)v6 iconTintSource];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_2;
  v50[3] = &unk_1E7854630;
  v50[4] = self;
  v29 = v12;
  v53 = v40;
  v51 = v29;
  v52 = v28;
  v54 = v42;
  v30 = MEMORY[0x1AC5769F0](v50);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_3;
  v49[3] = &unk_1E7854320;
  v49[4] = self;
  v31 = MEMORY[0x1AC5769F0](v49);
  v32 = v31;
  v33 = MEMORY[0x1E69DD250];
  if (v40)
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_4;
    v46[3] = &unk_1E7854658;
    v34 = &v47;
    v47 = v31;
    v35 = &v48;
    v48 = v30;
    v36 = v32;
    [v33 animateWithSpringDuration:4 bounce:v46 initialSpringVelocity:0 delay:0.3 options:0.0 animations:0.0 completion:0.0];
  }

  else
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_5;
    v43[3] = &unk_1E7854658;
    v34 = &v44;
    v44 = v31;
    v35 = &v45;
    v45 = v30;
    v37 = v32;
    [v33 performWithoutAnimation:v43];
  }

LABEL_41:
}

void __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 addSubview:*(*(a1 + 32) + 992)];
}

uint64_t __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateSelectionForTypeOption:*(a1 + 40) animated:*(a1 + 56)];
  if (PUIFeatureEnabled(11))
  {
    [*(a1 + 32) _updateSelectionForTintSourceControlsForCurrentIconTintSource:*(a1 + 48) animated:*(a1 + 56)];
  }

  LOBYTE(v2) = *(a1 + 57);
  [*(*(a1 + 32) + 1128) setAlpha:v2];
  v3 = *(*(a1 + 32) + 1120);
  LOBYTE(v4) = *(a1 + 57);
  v5 = v4;

  return [v3 setAlpha:v5];
}

uint64_t __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 _calculateEstimatedHeight];
  [v2 setEstimatedHeight:0 notifyDelegate:?];
  v3 = *(a1 + 32);

  return [v3 _notifyDelegateOfUpdatedEstimatedHeight];
}

uint64_t __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __108__PUIStylePickerHomeScreenComponentViewController__updateViewControllerForHomeScreenConfiguration_animated___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)_variantPickerViewForSelectedStylePickerTypeOption:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  homeScreenItemVariantPickerForItemView = self->_homeScreenItemVariantPickerForItemView;
  if (!homeScreenItemVariantPickerForItemView)
  {
    [(PUIStylePickerHomeScreenComponentViewController *)self _createHomeScreenItemVariantPickersForItemViews:self->_itemViews];
    homeScreenItemVariantPickerForItemView = self->_homeScreenItemVariantPickerForItemView;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMapTable *)homeScreenItemVariantPickerForItemView keyEnumerator];
  v7 = [v6 allObjects];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 styleTypeOption];

        if (v14 == v4)
        {
          v15 = [(NSMapTable *)self->_homeScreenItemVariantPickerForItemView objectForKey:v13];

          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_variantActionsForHomeScreenItemType:(id)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_initWeak(location, self);
  v5 = MEMORY[0x1E69DC628];
  v6 = LocalizedNSStringFromPUIHomeScreenStyleVariantOption(@"light");
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke;
  v29[3] = &unk_1E7854680;
  objc_copyWeak(&v30, location);
  v7 = [v5 actionWithTitle:v6 image:0 identifier:0 handler:v29];

  v8 = MEMORY[0x1E69DC628];
  v9 = LocalizedNSStringFromPUIHomeScreenStyleVariantOption(@"dark");
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke_2;
  v27[3] = &unk_1E7854680;
  objc_copyWeak(&v28, location);
  v10 = [v8 actionWithTitle:v9 image:0 identifier:0 handler:v27];

  v11 = MEMORY[0x1E69DC628];
  v12 = LocalizedNSStringFromPUIHomeScreenStyleVariantOption(@"always");
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke_3;
  v25[3] = &unk_1E7854680;
  objc_copyWeak(&v26, location);
  v13 = [v11 actionWithTitle:v12 image:0 identifier:0 handler:v25];

  v14 = MEMORY[0x1E69DC628];
  v15 = LocalizedNSStringFromPUIHomeScreenStyleVariantOption(@"auto");
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke_4;
  v23 = &unk_1E7854680;
  objc_copyWeak(&v24, location);
  v16 = [v14 actionWithTitle:v15 image:0 identifier:0 handler:&v20];

  if ([v4 isEqualToString:{@"dark", v20, v21, v22, v23}])
  {
    v32[1] = v13;
    v17 = v33;
LABEL_6:
    *v17 = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    goto LABEL_7;
  }

  if (([v4 isEqualToString:@"clear"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"accent"))
  {
    location[1] = v7;
    location[2] = v10;
    v17 = v32;
    goto LABEL_6;
  }

  v18 = 0;
LABEL_7:

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(location);

  return v18;
}

void __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectedHomeScreenStyleVariantOptionChangedToOption:@"light"];
}

void __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectedHomeScreenStyleVariantOptionChangedToOption:@"dark"];
}

void __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectedHomeScreenStyleVariantOptionChangedToOption:@"always"];
}

void __88__PUIStylePickerHomeScreenComponentViewController__variantActionsForHomeScreenItemType___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _selectedHomeScreenStyleVariantOptionChangedToOption:@"auto"];
}

- (void)_updateLayoutConstraints
{
  v80[5] = *MEMORY[0x1E69E9840];
  if ([(PUIStylePickerHomeScreenComponentViewController *)self isViewLoaded])
  {
    v3 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
    v4 = [v3 styleType];
    v69 = v3;
    [v3 iconSize];
    v6 = v5;
    v8 = v7;
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v11 = 31.0;
    v12 = 31.0;
    if ((v10 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v13 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
      [v13 layoutInsets];
      v12 = v14;
      v11 = v15;
    }

    v68 = objc_opt_new();
    v16 = objc_opt_new();
    if (PUIFeatureEnabled(11))
    {
      v17 = 17.0;
    }

    else
    {
      v17 = 0.0;
    }

    v66 = v4;
    if (v4 == 3)
    {
      v18 = 21;
    }

    else
    {
      v18 = 18;
    }

    v79[0] = @"leadingMargin";
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
    v80[0] = v19;
    v79[1] = @"trailingMargin";
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    v80[1] = v20;
    v79[2] = @"itemMinHeight";
    v21 = MEMORY[0x1E696AD98];
    [PUIStylePickerHomeScreenItemView defaultSizeForIconSize:v6, v8];
    v23 = [v21 numberWithDouble:v22];
    v80[2] = v23;
    v79[3] = @"topMargin";
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
    v80[3] = v24;
    v79[4] = @"bottomMargin";
    v25 = [MEMORY[0x1E696AD98] numberWithInt:v18];
    v80[4] = v25;
    v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:5];

    v26 = v16;
    homeScreenItemTypeHorizontalStackView = self->_homeScreenItemTypeHorizontalStackView;
    v77[0] = @"homeScreenItemHorizStackView";
    v77[1] = @"primaryVerticalStackView";
    primaryVerticalStackView = self->_primaryVerticalStackView;
    v78[0] = homeScreenItemTypeHorizontalStackView;
    v78[1] = primaryVerticalStackView;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
    if (self->_primaryLayoutConstraints)
    {
      [v16 addObjectsFromArray:?];
      primaryLayoutConstraints = self->_primaryLayoutConstraints;
      self->_primaryLayoutConstraints = 0;
    }

    v31 = objc_opt_new();
    v32 = v70;
    v33 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-topMargin-[primaryVerticalStackView]-bottomMargin-|" options:512 metrics:v70 views:v29];
    [v31 addObjectsFromArray:v33];

    v34 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-leadingMargin-[primaryVerticalStackView]-trailingMargin-|" options:512 metrics:v70 views:v29];
    [v31 addObjectsFromArray:v34];

    v35 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:[homeScreenItemHorizStackView(>=itemMinHeight)]" options:512 metrics:v70 views:v29];
    [v31 addObjectsFromArray:v35];

    if (v66 == 3)
    {
      v65 = v29;
      v67 = v16;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      lumaSlider = self->_lumaSlider;
      v75[0] = self->_gradientColorSlider;
      v75[1] = lumaSlider;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
      v38 = [v37 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v72;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v72 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v71 + 1) + 8 * i);
            v43 = [MEMORY[0x1E696ACD8] constraintWithItem:v42 attribute:7 relatedBy:1 toItem:self->_primaryVerticalStackView attribute:7 multiplier:1.0 constant:0.0];
            [v31 addObject:v43];

            v44 = [v42 heightAnchor];
            +[(PUIStyleVariationSlider *)_PUIStylePickerHomeScreenVariationSlider];
            v45 = [v44 constraintEqualToConstant:?];
            [v31 addObject:v45];
          }

          v39 = [v37 countByEnumeratingWithState:&v71 objects:v76 count:16];
        }

        while (v39);
      }

      v29 = v65;
      v26 = v67;
      v32 = v70;
      if (PUIFeatureEnabled(11))
      {
        v46 = [(UIStackView *)self->_tintSourceHorizontalStackView arrangedSubviews];
        v47 = [v46 count];

        +[PUIStylePickerHomeScreenTintSourceControl defaultDiameter];
        v49 = v48;
        v50 = (32 * v47 - 32) + v47 * v48;
        v51 = [(UIStackView *)self->_tintSourceHorizontalStackView widthAnchor];
        v52 = [v51 constraintEqualToConstant:v50];
        [v31 addObject:v52];

        v53 = [(UIStackView *)self->_tintSourceHorizontalStackView heightAnchor];
        v54 = [v53 constraintEqualToConstant:v49];
        [v31 addObject:v54];
      }
    }

    if (self->_selectedVariantPicker)
    {
      variantPickerWrapperView = self->_variantPickerWrapperView;
      if (variantPickerWrapperView)
      {
        v56 = [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)variantPickerWrapperView heightAnchor];
        +[PUIStylePickerSegmentedControl defaultHeight];
        v57 = [v56 constraintEqualToConstant:?];
        [v31 addObject:v57];

        v58 = [(PUIStylePickerHomeScreenComponentViewController *)self view];
        [v58 bounds];
        v60 = v59 - v12 - v11;

        v61 = [(_PUIStylePickerHomeScreenVariantPickerWrapperView *)self->_variantPickerWrapperView widthAnchor];
        [(PUIStylePickerSegmentedControl *)self->_selectedVariantPicker calculatedWidthForAvailableWidth:v60];
        v62 = [v61 constraintEqualToConstant:?];
        [v31 addObject:v62];
      }
    }

    v63 = [v31 copy];
    v64 = self->_primaryLayoutConstraints;
    self->_primaryLayoutConstraints = v63;

    [v68 addObjectsFromArray:self->_primaryLayoutConstraints];
    if ([v26 count])
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:v26];
    }

    if ([v68 count])
    {
      [MEMORY[0x1E696ACD8] activateConstraints:v68];
    }
  }
}

- (double)_calculateEstimatedHeight
{
  v3 = [MEMORY[0x1E698E730] sharedInstance];
  v4 = [v3 deviceClass];

  v5 = [MEMORY[0x1E698E730] sharedInstance];
  v6 = [v5 homeButtonType];

  v7 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
  v8 = [v7 styleType];
  v9 = +[PUIStylePickerHomeScreenComponentViewController _typeOptionForStyleType:variant:](PUIStylePickerHomeScreenComponentViewController, "_typeOptionForStyleType:variant:", v8, [v7 styleVariant]);
  [v7 iconSize];
  [PUIStylePickerHomeScreenItemView defaultSizeForIconSize:?];
  v11 = v10;
  if (PUIFeatureEnabled(9))
  {
    v12 = 17.0;
  }

  else
  {
    v12 = 0.0;
  }

  if (v8 == 3)
  {
    +[(PUIStyleVariationSlider *)_PUIStylePickerHomeScreenVariationSlider];
    v14 = v13 + v11 + v12 + 32.0 + v13 + 22.0 + 21.0;
    if (PUIFeatureEnabled(11))
    {
      +[PUIStylePickerHomeScreenTintSourceControl defaultDiameter];
      v14 = v14 + v15 + 21.0;
    }
  }

  else
  {
    v14 = v11 + v12 + 18.0;
  }

  if (PUIFeatureEnabled(11))
  {
    v16 = [v9 isEqualToString:@"default"];
    +[PUIStylePickerSegmentedControl defaultHeight];
    v18 = v14 + 22.0 + v17;
    if (!v16)
    {
      v14 = v18;
    }
  }

  if (v6 != 2 && v4 == 0)
  {
    v14 = v14 + 33.0;
  }

  v20 = [MEMORY[0x1E69DC938] currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if ((v21 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v14 = v14 + 22.0;
  }

  return v14;
}

- (double)_calculateStyleItemSpacing
{
  v3 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
  [v3 iconSpacing];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = [(PUIStylePickerHomeScreenComponentViewController *)self view];
    [v6 bounds];

    v7 = +[PUIStylePickerHomeScreenComponentViewController _orderedHomeScreenStylePickerOptions];
    [v7 count];

    [v3 iconSize];
  }

  v8 = [(PUIStylePickerHomeScreenComponentViewController *)self traitCollection];
  [v8 displayScale];
  UIRoundToScale();
  v10 = v9;

  return v10;
}

- (void)_updateItemMarginsForHomeScreenConfiguration:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
  }

  v13 = v4;
  [(PUIStylePickerHomeScreenComponentViewController *)self _calculateStyleItemSpacing];
  v6 = v5;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 0.0;
    v10 = v6;
    v11 = v6;
    v12 = 0.0;
  }

  else
  {
    [v13 layoutInsets];
  }

  [(UIStackView *)self->_homeScreenItemTypeHorizontalStackView setLayoutMargins:v9, v10, v12, v11];
  [(UIStackView *)self->_homeScreenItemTypeHorizontalStackView setSpacing:v6];
}

- (void)_updateSelectionForTypeOption:(id)a3 animated:(BOOL)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_itemViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 styleTypeOption];
        v13 = v12 == v5;

        [v11 setSelected:v13 animated:1];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)_accentColorSlidersDidChangeValue:(id)a3
{
  if (self->_gradientColorSlider == a3)
  {
    [(_PUIStylePickerHomeScreenGradientSliderUICoordinatorImpl *)self->_gradientColorSliderUICoordinatorImpl resetSaturation];
    lumaSliderUICoordinatorImpl = self->_lumaSliderUICoordinatorImpl;
    v5 = [(PUIStyleUICoordinatorImpl *)self->_gradientColorSliderUICoordinatorImpl style];
    [(_PUIStylePickerHomeScreenLumaSliderUICoordinatorImpl *)lumaSliderUICoordinatorImpl gradientSliderDidChange:v5];
  }

  v6 = [(PUIStyleUICoordinatorImpl *)self->_lumaSliderUICoordinatorImpl style];
  [PUIDiscreteGradientVariatedCustomStyle minLuminanceForStyle:v6];
  v8 = v7;
  [PUIDiscreteGradientVariatedCustomStyle maxLuminanceForStyle:v6];
  v10 = v9;
  [v6 alpha];
  v12 = [v6 copyWithLuminance:v10 + (v8 - v10) * ((v11 + -0.25 + v11 + -0.25) / 0.75 + -1.0 + 1.0) * 0.5 alpha:1.0];
  customTintSourceControl = self->_customTintSourceControl;
  v14 = [v12 luminanceAppliedColor];
  [(PUIStylePickerHomeScreenTintSourceControl *)customTintSourceControl setTintColor:v14];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __85__PUIStylePickerHomeScreenComponentViewController__accentColorSlidersDidChangeValue___block_invoke;
  v16[3] = &unk_1E78545B8;
  v17 = v6;
  v15 = v6;
  [(PUIStylePickerHomeScreenComponentViewController *)self _mutateHomeScreenConfiguration:v16];
}

void __85__PUIStylePickerHomeScreenComponentViewController__accentColorSlidersDidChangeValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAccentStyle:v2];
  [v3 setIconTintSource:1];
}

- (void)_notifyDelegateOfUpdatedHomeScreenConfiguration
{
  v3 = [(PUIStylePickerHomeScreenComponentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(PUIStylePickerHomeScreenComponentViewController *)self delegate];
    v5 = [(PUIStylePickerHomeScreenComponentViewController *)self homeScreenConfiguration];
    [v6 homeScreenComponentViewController:self didUpdateHomeScreenConfiguration:v5];
  }
}

- (void)_notifyDelegateOfUpdatedEstimatedHeight
{
  v3 = [(PUIStylePickerHomeScreenComponentViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PUIStylePickerHomeScreenComponentViewController *)self delegate];
    [v5 homeScreenComponentViewControllerUpdatedEstimatedHeight:self];
  }
}

- (PUIStylePickerHomeScreenComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end