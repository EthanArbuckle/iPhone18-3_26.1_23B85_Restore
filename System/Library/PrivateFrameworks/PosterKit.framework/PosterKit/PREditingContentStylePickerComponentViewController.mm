@interface PREditingContentStylePickerComponentViewController
- (BOOL)shouldShowContentStyleItems;
- (PREditingContentStylePickerComponentViewController)init;
- (PREditingContentStylePickerComponentViewController)initWithConfiguration:(id)a3 role:(id)a4;
- (PREditingContentStylePickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)coordinatorForStyle:(id)a3 isSuggestedStyle:(BOOL)a4 fromDataSource:(id)a5;
- (void)_didSelectContentStyle:(id)a3 isSuggestedStyle:(BOOL)a4;
- (void)colorSliderDidUpdateVariation:(id)a3;
- (void)contentStyleItemsViewController:(id)a3 didSelectContentStyleCoordinator:(id)a4;
- (void)contentStyleItemsViewControllerDidUpdateEstimatedSize:(id)a3;
- (void)loadItemsViewControllerIfNeeded;
- (void)loadView;
- (void)setContentsLuminance:(double)a3;
- (void)updateEditingContentStyleItemsWithGlassSelectionEnabled:(BOOL)a3;
- (void)updateSliderVisibility:(BOOL)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PREditingContentStylePickerComponentViewController

- (PREditingContentStylePickerComponentViewController)initWithConfiguration:(id)a3 role:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PREditingContentStylePickerComponentViewController;
  v9 = [(PREditingContentStylePickerComponentViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_role, a4);
  }

  return v10;
}

- (PREditingContentStylePickerComponentViewController)init
{
  v3 = objc_alloc_init(PREditorContentStylePickerConfiguration);
  v4 = [(PREditingContentStylePickerComponentViewController *)self initWithConfiguration:v3 role:@"PRPosterRoleLockScreen"];

  return v4;
}

- (void)viewDidLayoutSubviews
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PREditingContentStylePickerComponentViewController;
  [(PREditingContentStylePickerComponentViewController *)&v14 viewDidLayoutSubviews];
  itemStyleControl = self->_itemStyleControl;
  if (itemStyleControl)
  {
    v4 = [(PREditingContentStylePickerComponentViewController *)self view];
    [v4 bounds];
    [(PUIStylePickerSegmentedControl *)itemStyleControl calculatedWidthForAvailableWidth:v5];
    v7 = v6;

    itemStyleControlWidthConstraint = self->_itemStyleControlWidthConstraint;
    if (!itemStyleControlWidthConstraint)
    {
      v9 = [(PUIStylePickerSegmentedControl *)self->_itemStyleControl widthAnchor];
      v10 = [v9 constraintEqualToConstant:v7];
      v11 = self->_itemStyleControlWidthConstraint;
      self->_itemStyleControlWidthConstraint = v10;

      v12 = MEMORY[0x1E696ACD8];
      v15[0] = self->_itemStyleControlWidthConstraint;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v12 activateConstraints:v13];

      itemStyleControlWidthConstraint = self->_itemStyleControlWidthConstraint;
    }

    [(NSLayoutConstraint *)itemStyleControlWidthConstraint setConstant:v7];
  }
}

- (void)loadItemsViewControllerIfNeeded
{
  if (!self->_itemsViewController)
  {
    v13 = [[PREditingContentStyleItemsDataSource alloc] initWithConfiguration:self->_configuration includesSuggestedStyle:1 delegate:self];
    objc_storeStrong(&self->_dataSource, v13);
    if (-[PREditorContentStylePickerConfiguration isForTitleStylePicker](self->_configuration, "isForTitleStylePicker") && ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v6 = [(PREditingContentStyleItemsViewController *)[PREditingContentStyleItemsScrollableStackViewController alloc] initWithDataSource:v13 configuration:self->_configuration];
      [(PREditingContentStyleItemsViewController *)v6 setDelegate:self];
    }

    else
    {
      v5 = [[PREditingContentStyleItemsViewController alloc] initWithDataSource:v13 configuration:self->_configuration];
      [(PREditingContentStyleItemsViewController *)v5 setDelegate:self];
      v6 = v5;
      if ([(PREditorContentStylePickerConfiguration *)self->_configuration colorWellDisplayMode]== 2)
      {
        v7 = [(PREditingContentStyleItemsViewController *)v6 colorWellView];
        colorWellView = self->_colorWellView;
        self->_colorWellView = v7;
        v9 = v7;

        v10 = [(PUIColorWellView *)v9 colorWell];
        colorWell = self->_colorWell;
        self->_colorWell = v10;
      }
    }

    [(PREditingContentStyleItemsViewController *)v6 setContentsLuminance:self->_contentsLuminance];
    itemsViewController = self->_itemsViewController;
    self->_itemsViewController = &v6->super;
  }
}

- (void)loadView
{
  v93[2] = *MEMORY[0x1E69E9840];
  v83 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v83 setBackgroundColor:v3];

  if (self->_showsHeader)
  {
    v76 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v4 = PRBundle();
    v5 = [v4 localizedStringForKey:@"COLOR_HEADING" value:&stru_1F1C13D90 table:@"PosterKit"];
    [v76 setText:v5];

    v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    [v76 setFont:v6];

    v7 = [MEMORY[0x1E69DC888] labelColor];
    [v76 setTextColor:v7];

    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v83 addSubview:v76];
  }

  else
  {
    v76 = 0;
  }

  [(PREditingContentStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  v82 = [(PREditingContentStylePickerComponentViewController *)self itemsViewController];
  v78 = [v82 view];
  [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = [MEMORY[0x1E695DF70] array];
  [v75 addObject:v78];
  v77 = [v82 selectedContentStyleCoordinator];
  v8 = [(PREditingContentStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_379];

  if (!v77)
  {
    v9 = [(PREditingContentStylePickerComponentViewController *)self delegate];
    v10 = [0 style];
    [v9 contentStylePickerComponentViewController:self didSelectStyle:v10 isSuggestedStyle:objc_msgSend(0 userSelected:{"isSuggested"), 0}];
  }

  if (v8)
  {
    v11 = [PREditingVariationSlider alloc];
    v12 = [(PREditorContentStylePickerConfiguration *)self->_configuration identifier];
    v13 = [(PREditingVariationSlider *)v11 initWithStyleCoordinator:v77 contextIdentifier:v12];

    v81 = v13;
    [(PREditingVariationSlider *)v13 addTarget:self action:sel_colorSliderDidUpdateVariation_ forControlEvents:4096];
    v14 = [v82 selectedContentStyleCoordinator];
    v15 = [v14 style];
    v16 = [v15 allowsVariation];

    if ((v16 & 1) == 0)
    {
      [(PREditingVariationSlider *)v81 setHidden:1];
    }

    v17 = [(PREditorContentStylePickerConfiguration *)self->_configuration stylePalette];
    -[PREditingVariationSlider setApplyVariationOnGlass:](v81, "setApplyVariationOnGlass:", [v17 displayingGlassStyles]);

    objc_storeStrong(&self->_sliderView, v81);
    [v75 addObject:v81];
  }

  else
  {
    v81 = 0;
  }

  v18 = [v77 style];
  if ([v18 conformsToProtocol:&unk_1F1C8ED30])
  {
    v19 = [v77 style];
    v20 = [v19 supportsGlassAppearance] ^ 1;
  }

  else
  {
    v20 = 1;
  }

  if (PUIFeatureEnabled() && PUIFeatureEnabled())
  {
    v21 = [(PREditingContentStylePickerComponentViewController *)self role];
    v22 = [v21 isEqual:@"PRPosterRoleLockScreen"];

    if (v22)
    {
      objc_initWeak(&location, self);
      v23 = MEMORY[0x1E69DC628];
      v24 = PRBundle();
      v25 = [v24 localizedStringForKey:@"TIME_STYLE_SELECTOR_GLASS" value:&stru_1F1C13D90 table:@"PosterKit"];
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_2;
      v86[3] = &unk_1E7843448;
      objc_copyWeak(&v87, &location);
      v79 = [v23 actionWithTitle:v25 image:0 identifier:0 handler:v86];

      v26 = MEMORY[0x1E69DC628];
      v27 = PRBundle();
      v28 = [v27 localizedStringForKey:@"TIME_STYLE_SELECTOR_SOLID" value:&stru_1F1C13D90 table:@"PosterKit"];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_3;
      v84[3] = &unk_1E7843448;
      objc_copyWeak(&v85, &location);
      v29 = [v26 actionWithTitle:v28 image:0 identifier:0 handler:v84];

      v30 = objc_alloc(MEMORY[0x1E69C5648]);
      v93[0] = v79;
      v93[1] = v29;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
      v32 = [v30 initWithFrame:v31 actions:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      itemStyleControl = self->_itemStyleControl;
      self->_itemStyleControl = v32;

      [(PUIStylePickerSegmentedControl *)self->_itemStyleControl setSelectedSegmentIndex:v20];
      [(PUIStylePickerSegmentedControl *)self->_itemStyleControl setTranslatesAutoresizingMaskIntoConstraints:0];
      v34 = self->_itemStyleControl;
      v35 = [MEMORY[0x1E69DC888] clearColor];
      [(PUIStylePickerSegmentedControl *)v34 setBackgroundColor:v35];

      [v75 addObject:self->_itemStyleControl];
      objc_destroyWeak(&v85);

      objc_destroyWeak(&v87);
      objc_destroyWeak(&location);
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v36 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v75];
  [v36 setAxis:1];
  [v36 setAlignment:3];
  [v36 setSpacing:24.0];
  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = [MEMORY[0x1E69DC888] clearColor];
  [v36 setBackgroundColor:v37];

  objc_storeStrong(&self->_verticalStack, v36);
  [v83 addSubview:v36];
  [(PREditingContentStylePickerComponentViewController *)self addChildViewController:v82];
  [(PREditingContentStylePickerComponentViewController *)self setView:v83];
  [v82 didMoveToParentViewController:self];
  v80 = [MEMORY[0x1E695DF70] array];
  if (v22)
  {
    v38 = [(PUIStylePickerSegmentedControl *)self->_itemStyleControl heightAnchor];
    [MEMORY[0x1E69C5648] defaultHeight];
    v39 = [v38 constraintEqualToConstant:?];
    [v80 addObject:v39];
  }

  if (self->_showsHeader)
  {
    v40 = [v76 leadingAnchor];
    v41 = [v83 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:20.0];
    v92[0] = v42;
    v43 = [v76 topAnchor];
    v73 = [v83 topAnchor];
    v44 = [v43 constraintEqualToAnchor:v73 constant:10.0];
    v92[1] = v44;
    v45 = [v36 topAnchor];
    v46 = [v76 bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:20.0];
    v92[2] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:3];
    [v80 addObjectsFromArray:v48];
  }

  else
  {
    v40 = [v36 topAnchor];
    v41 = [v83 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v91 = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    [v80 addObjectsFromArray:v43];
  }

  if (v81)
  {
    v49 = [(PREditingVariationSlider *)v81 heightAnchor];
    +[PREditingVariationSlider defaultHeight];
    v50 = [v49 constraintEqualToConstant:?];
    v90[0] = v50;
    v51 = [(PREditingVariationSlider *)v81 leadingAnchor];
    v52 = [v36 leadingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:36.0];
    v90[1] = v53;
    v54 = [(PREditingVariationSlider *)v81 trailingAnchor];
    v55 = [v36 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:-36.0];
    v90[2] = v56;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:3];
    [v80 addObjectsFromArray:v57];
  }

  v74 = [v78 leadingAnchor];
  v72 = [v36 leadingAnchor];
  v71 = [v74 constraintEqualToAnchor:v72];
  v89[0] = v71;
  v70 = [v78 trailingAnchor];
  v69 = [v36 trailingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v89[1] = v68;
  v67 = [v36 leadingAnchor];
  v58 = [v83 leadingAnchor];
  v59 = [v67 constraintEqualToAnchor:v58];
  v89[2] = v59;
  v60 = [v36 trailingAnchor];
  v61 = [v83 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  v89[3] = v62;
  v63 = [v36 bottomAnchor];
  v64 = [v83 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];
  v89[4] = v65;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
  [v80 addObjectsFromArray:v66];

  [MEMORY[0x1E696ACD8] activateConstraints:v80];
}

uint64_t __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

void __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateEditingContentStyleItemsWithGlassSelectionEnabled:1];
}

void __62__PREditingContentStylePickerComponentViewController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateEditingContentStyleItemsWithGlassSelectionEnabled:0];
}

- (BOOL)shouldShowContentStyleItems
{
  v2 = [(PREditingContentStylePickerComponentViewController *)self itemsViewController];
  v3 = [v2 configuration];
  v4 = [v3 stylePalette];
  v5 = [v4 styles];
  v6 = [v5 count];

  return v6 < 2;
}

- (void)setContentsLuminance:(double)a3
{
  self->_contentsLuminance = a3;
  if ([(PREditingContentStylePickerComponentViewController *)self isViewLoaded])
  {
    itemsViewController = self->_itemsViewController;

    [(PREditingContentStyleItemsViewController *)itemsViewController setContentsLuminance:a3];
  }
}

- (double)estimatedHeight
{
  [(PREditingContentStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  [(PREditingContentStyleItemsViewController *)self->_itemsViewController estimatedHeight];
  v4 = v3;
  if (self->_sliderView)
  {
    v5 = [(PREditingContentStyleItemsViewController *)self->_itemsViewController selectedContentStyleCoordinator];
    v6 = [v5 style];
    if ([v6 allowsVariation])
    {
      v7 = [(PREditingContentStylePickerComponentViewController *)self shouldShowContentStyleItems];

      if (!v7)
      {
        v4 = v4 + 58.0;
      }
    }

    else
    {
    }
  }

  result = v4 + 44.0;
  if (!self->_itemStyleControl)
  {
    return v4;
  }

  return result;
}

- (void)contentStyleItemsViewController:(id)a3 didSelectContentStyleCoordinator:(id)a4
{
  v5 = a4;
  v6 = [v5 style];
  v7 = [v6 allowsVariation];

  v8 = [(PREditingContentStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_449];

  if (v8 && v7 == [(PREditingVariationSlider *)self->_sliderView isHidden])
  {
    [(PREditingContentStylePickerComponentViewController *)self updateSliderVisibility:v7];
  }

  [(PREditingVariationSlider *)self->_sliderView setStyleCoordinator:v5];
  v10 = [v5 style];
  v9 = [v5 isSuggested];

  [(PREditingContentStylePickerComponentViewController *)self _didSelectContentStyle:v10 isSuggestedStyle:v9];
}

uint64_t __119__PREditingContentStylePickerComponentViewController_contentStyleItemsViewController_didSelectContentStyleCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

- (void)contentStyleItemsViewControllerDidUpdateEstimatedSize:(id)a3
{
  v4 = [(PREditingContentStylePickerComponentViewController *)self delegate];
  [v4 contentStylePickerComponentViewControllerDidChangeHeight:self];
}

- (void)updateSliderVisibility:(BOOL)a3
{
  [(PREditingVariationSlider *)self->_sliderView setHidden:!a3];
  v4 = [(PREditingContentStylePickerComponentViewController *)self delegate];
  [v4 contentStylePickerComponentViewControllerDidChangeHeight:self];
}

- (void)_didSelectContentStyle:(id)a3 isSuggestedStyle:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PREditingContentStylePickerComponentViewController *)self delegate];
  [v7 contentStylePickerComponentViewController:self didSelectStyle:v6 isSuggestedStyle:v4 userSelected:1];
}

- (void)colorSliderDidUpdateVariation:(id)a3
{
  v4 = [(PREditingContentStyleItemsViewController *)self->_itemsViewController selectedContentStyleCoordinator];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 style];
    -[PREditingContentStylePickerComponentViewController _didSelectContentStyle:isSuggestedStyle:](self, "_didSelectContentStyle:isSuggestedStyle:", v5, [v6 isSuggested]);

    v4 = v6;
  }
}

- (id)coordinatorForStyle:(id)a3 isSuggestedStyle:(BOOL)a4 fromDataSource:(id)a5
{
  v5 = a4;
  v7 = a3;
  v8 = [(PREditingContentStylePickerComponentViewController *)self delegate];
  v9 = [v8 contentStylePickerComponentViewController:self coordinatorForStyle:v7 isSuggested:v5];

  return v9;
}

- (void)updateEditingContentStyleItemsWithGlassSelectionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v74 = *MEMORY[0x1E69E9840];
  v5 = [(PREditingContentStyleItemsViewController *)self->_itemsViewController selectedContentStyleCoordinator];
  v61 = [v5 style];

  v6 = [(PREditorContentStylePickerConfiguration *)v4->_configuration suggestedStyle];
  v54 = v3;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = v6;
    if ([v6 conformsToProtocol:&unk_1F1C8ED30])
    {
      v9 = [v8 copyWithPreferredMaterial:v7];

      v60 = v9;
    }

    else
    {
      v60 = v8;
    }
  }

  else
  {
    v60 = 0;
  }

  v10 = 0.0;
  if ([v61 allowsVariation])
  {
    [v61 variation];
    v10 = v11;
  }

  v12 = [(PREditorContentStylePickerConfiguration *)v4->_configuration copy];
  v57 = [v12 stylePalette];
  v13 = [v57 withPreferredMaterialType:v7];
  [v12 setStylePalette:v13];
  v14 = v61;
  v58 = v13;
  v59 = v12;
  if (!v61)
  {
    if (!v60)
    {
      goto LABEL_49;
    }

    v27 = 0;
    goto LABEL_28;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v15 = [v13 styles];
  v16 = [v15 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v16)
  {
    v17 = v16;
    v55 = v4;
    v18 = *v68;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v68 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v67 + 1) + 8 * i);
        v21 = [v20 type];
        if (v21 == [v14 type])
        {
          v22 = [v20 colors];
          v23 = [v22 firstObject];
          v24 = [v14 colors];
          v25 = [v24 firstObject];
          v26 = [v23 isEqual:v25];

          v14 = v61;
          if (v26)
          {
            v27 = v20;
            goto LABEL_25;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v27 = 0;
LABEL_25:
    v4 = v55;
    v13 = v58;
  }

  else
  {
    v27 = 0;
  }

  v12 = v59;
  if (v60)
  {
LABEL_28:
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v71 = v60;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    v29 = [v13 styles];
    v30 = [v28 arrayByAddingObjectsFromArray:v29];

    v31 = [v30 countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v31)
    {
      v32 = v31;
      v53 = v27;
      v56 = v4;
      v33 = *v64;
      v34 = v60;
      while (2)
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v64 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v63 + 1) + 8 * j);
          v37 = [v36 type];
          if (v37 == [v34 type])
          {
            v38 = [v36 colors];
            v39 = [v38 firstObject];
            v40 = [v14 colors];
            v41 = [v40 firstObject];
            v42 = [v39 isEqual:v41];

            v14 = v61;
            v34 = v60;

            if (v42)
            {
              v43 = v36;
              goto LABEL_39;
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }

      v43 = 0;
LABEL_39:
      v4 = v56;
      v12 = v59;
      v27 = v53;
    }

    else
    {
      v43 = 0;
    }

    if (v27)
    {
      v13 = v58;
LABEL_45:
      v62 = v43;
      if ([v14 allowsVariation])
      {
        v44 = [v27 copyWithVariation:v10];

        v27 = v44;
      }

      goto LABEL_53;
    }

    v13 = v58;
    if (v43)
    {
      v27 = v43;
      v62 = v27;
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  if (v27)
  {
    v43 = 0;
    goto LABEL_45;
  }

LABEL_49:
  if (!v54 || ([v13 styles], v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v45, "bs_firstObjectPassingTest:", &__block_literal_global_452), v27 = objc_claimAutoreleasedReturnValue(), v45, !v27))
  {
    v46 = [v13 styles];
    v27 = [v46 firstObject];
  }

  v62 = 0;
LABEL_53:
  [v12 setSelectedStyle:v27];
  [v12 setSuggestedStyle:v60];
  v47 = [[PREditingContentStyleItemsDataSource alloc] initWithConfiguration:v12 includesSuggestedStyle:1 delegate:v4];
  dataSource = v4->_dataSource;
  v4->_dataSource = v47;

  objc_storeStrong(&v4->_configuration, v12);
  [(PREditingContentStyleItemsViewController *)v4->_itemsViewController updateDataSource:v4->_dataSource configuration:v4->_configuration];
  sliderView = v4->_sliderView;
  v50 = [(PREditorContentStylePickerConfiguration *)v4->_configuration stylePalette];
  -[PREditingVariationSlider setApplyVariationOnGlass:](sliderView, "setApplyVariationOnGlass:", [v50 displayingGlassStyles]);

  v51 = [(PREditingContentStyleItemsViewController *)v4->_itemsViewController selectedContentStyleCoordinator];
  v52 = [v51 style];

  if (v52)
  {
    [(PREditingVariationSlider *)v4->_sliderView setVariation:v10];
  }
}

- (PREditingContentStylePickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end