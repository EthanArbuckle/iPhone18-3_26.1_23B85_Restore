@interface PREditingColorItemsViewController
- (PREditingColorItemsViewController)initWithDataSource:(id)a3 configuration:(id)a4 variationStore:(id)a5;
- (PREditingColorItemsViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)selectedColorItemForColor:(id)a3 fromDataSource:(id)a4 withVariationStore:(id)a5 contextIdentifier:(id)a6 isDataLayerPicker:(BOOL)a7;
- (id)selectedColorItemForColor:(id)a3 fromVariationStore:(id)a4 inDataSource:(id)a5 contextIdentifier:(id)a6 isDataLayerPicker:(BOOL)a7;
- (void)colorWellDidUpdateColor:(id)a3;
- (void)deselectSelectedColor;
- (void)didSelectColorItem:(id)a3;
- (void)didTapColorItem:(id)a3;
- (void)didTapToResetColorItem:(id)a3;
- (void)layoutWithItemViews:(id)a3;
- (void)setContentsLuminance:(double)a3;
- (void)setSelectedColorItem:(id)a3;
- (void)setupItemViews;
- (void)sliderDidChangeForColorItem:(id)a3;
- (void)updateLayoutForCurrentSize;
- (void)updateVibrantMaterialItemForLuminance;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PREditingColorItemsViewController

- (PREditingColorItemsViewController)initWithDataSource:(id)a3 configuration:(id)a4 variationStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24.receiver = self;
  v24.super_class = PREditingColorItemsViewController;
  v12 = [(PREditingColorItemsViewController *)&v24 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, a3);
    objc_storeStrong(&v13->_configuration, a4);
    objc_storeStrong(&v13->_variationStore, a5);
    v14 = [v10 selectedColor];
    if (v14)
    {
      v15 = [v10 identifier];
      v16 = [v10 context];
      v17 = [(PREditingColorItemsViewController *)v13 selectedColorItemForColor:v14 fromVariationStore:v11 inDataSource:v9 contextIdentifier:v15 isDataLayerPicker:v16 == 1];
      if (!v17)
      {
        v17 = [(PREditingColorItemsViewController *)v13 selectedColorItemForColor:v14 fromDataSource:v9 withVariationStore:v11 contextIdentifier:v15 isDataLayerPicker:v16 == 1];
      }

      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = [(PREditingColorItemsDataSource *)v13->_dataSource colorItemForIndex:0];
      if (v17)
      {
LABEL_14:
        selectedColorItem = v13->_selectedColorItem;
        v13->_selectedColorItem = v17;

        goto LABEL_15;
      }
    }

    if ([v10 context] == 1)
    {
      v18 = [v14 preferredStyle];
      v19 = [PREditorColorPickerVibrantColor alloc];
      v20 = 0.0;
      if (v18 == 1)
      {
        v20 = 1.0;
      }
    }

    else
    {
      v19 = [PREditorColorPickerConstantColor alloc];
      v20 = 0.0;
    }

    v21 = [(PREditorColorPickerVibrantColor *)v19 initWithColor:v14 initialVariation:v20];
    v17 = [[PREditingColorItem alloc] initWithPickerColor:v21 variation:[(PREditorColorPickerConfiguration *)v13->_configuration context] context:0.0];
    [(PREditingColorItem *)v17 setFromUIKitColorPicker:1];

    goto LABEL_14;
  }

LABEL_15:

  return v13;
}

- (id)selectedColorItemForColor:(id)a3 fromVariationStore:(id)a4 inDataSource:(id)a5 contextIdentifier:(id)a6 isDataLayerPicker:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  v27 = 0.0;
  v13 = a6;
  v14 = a4;
  v15 = [a3 color];
  v16 = [v14 baseColorForVariedColor:v15 forContextIdentifier:v13 variation:&v27 forDataLayerPicker:v7];

  if (v16)
  {
    v17 = [[PRPosterColor alloc] initWithColor:v16];
    if ([(PREditorColorPickerConfiguration *)self->_configuration context]== 1)
    {
      v18 = PREditorColorPickerVibrantColor;
    }

    else
    {
      v18 = PREditorColorPickerConstantColor;
    }

    v20 = [v18 alloc];
    v21 = [v20 initWithColor:v17 initialVariation:v27];
    v22 = [PREditingColorItem alloc];
    [v21 initialVariation];
    v19 = [(PREditingColorItem *)v22 initWithPickerColor:v21 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v23];
    v24 = [v12 indexForItem:v19];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PREditingColorItem *)v19 setFromUIKitColorPicker:1];
    }

    else
    {
      v25 = [v12 colorItemForIndex:v24];
      -[PREditingColorItem setShowsSlider:](v19, "setShowsSlider:", [v25 shouldShowSlider]);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)selectedColorItemForColor:(id)a3 fromDataSource:(id)a4 withVariationStore:(id)a5 contextIdentifier:(id)a6 isDataLayerPicker:(BOOL)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke;
  v30[3] = &unk_1E78444A8;
  v14 = v12;
  v31 = v14;
  v15 = v13;
  v32 = v15;
  v16 = v10;
  v33 = v16;
  v17 = [v11 firstColorItemPassingTest:v30];
  if (!v17)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke_2;
    v28[3] = &unk_1E78444D0;
    v18 = v16;
    v29 = v18;
    v19 = [v11 firstColorItemPassingTest:v28];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 pickerColor];
      if ([v21 isVibrantColor])
      {
        v22 = [v18 color];
        v27 = 1.0;
        [v22 getWhite:0 alpha:&v27];
        [v21 variationForAlpha:v27];
      }

      else
      {
        v22 = [v18 hslValues];
        [v22 luminance];
        [v21 variationForLuminance:?];
      }

      v24 = v23;

      v25 = [[PREditingColorItem alloc] initWithPickerColor:v21 variation:0 context:v24];
    }
  }

  return v17;
}

uint64_t __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pickerColor];
  v5 = [*(a1 + 32) variationForPickerColor:v4 forContextIdentifier:*(a1 + 40)];
  [v4 initialVariation];
  if (v5)
  {
    [v5 doubleValue];
  }

  v7 = v6;
  v8 = [v3 pickerColor];
  v9 = [v8 colorWithVariation:v7];

  v10 = [v9 isEqual:*(a1 + 48)];
  if ([*(a1 + 48) isVibrantMaterialColor])
  {
    v11 = 0;
  }

  else
  {
    v11 = [*(a1 + 48) isVibrantMonochromeColor] ^ 1;
  }

  v12 = [v9 colorValues];
  v13 = [*(a1 + 48) colorValues];
  v14 = [v12 isEqual:v13];

  if (v10)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 & v14;
  }

  return v15;
}

BOOL __133__PREditingColorItemsViewController_selectedColorItemForColor_fromDataSource_withVariationStore_contextIdentifier_isDataLayerPicker___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 pickerColor];
  if ([v3 isCustomColor])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 baseColor];
    v6 = [*(a1 + 32) hslValues];
    v7 = [v5 hslValues];
    v4 = 1;
    if (![v3 isVibrantColor] || (objc_msgSend(v6, "hue"), v9 = v8, objc_msgSend(v7, "hue"), v9 != v10) || (objc_msgSend(v6, "saturation"), v12 = v11, objc_msgSend(v7, "saturation"), v12 != v13) || (objc_msgSend(v6, "luminance"), v15 = v14, objc_msgSend(v7, "luminance"), v15 != v16))
    {
      [v6 hue];
      v18 = v17;
      [v7 hue];
      if (v18 != v19 || ([v6 saturation], v21 = v20, objc_msgSend(v7, "saturation"), v21 != v22))
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PREditingColorItemsViewController;
  [(PREditingColorItemsViewController *)&v3 viewDidLoad];
  [(PREditingColorItemsViewController *)self setupItemViews];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PREditingColorItemsViewController;
  [(PREditingColorItemsViewController *)&v3 viewDidLayoutSubviews];
  [(PREditingColorItemsViewController *)self updateLayoutForCurrentSize];
}

- (void)setupItemViews
{
  v18 = [(PREditingColorItemsViewController *)self selectedColorItem];
  v3 = [(PREditingColorItemsDataSource *)self->_dataSource numberOfItems];
  v19 = [MEMORY[0x1E695DF70] array];
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(PREditingColorItemsDataSource *)self->_dataSource colorItemForIndex:v4];
      v6 = [[PREditingColorItemView alloc] initWithColorItem:v5];
      v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapColorItem_];
      [(PREditingColorItemView *)v6 addGestureRecognizer:v7];
      if ([v5 isEqual:v18])
      {
        [(PRSelectableEditingItemView *)v6 setSelected:1];
        [(PREditingColorItemsViewController *)self setSelectedColorItemView:v6];
      }

      [(PREditingColorItemView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v19 addObject:v6];
      ++v4;
    }

    while (v3 != v4);
  }

  v8 = [v19 copy];
  allItemViews = self->_allItemViews;
  self->_allItemViews = v8;

  [(PREditingColorItemsViewController *)self updateVibrantMaterialItemForLuminance];
  v10 = [MEMORY[0x1E695DF70] arrayWithArray:v19];
  if ([(PREditorColorPickerConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    v11 = objc_alloc(MEMORY[0x1E69C5548]);
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v13 = [v12 colorWell];
    [v13 addTarget:self action:sel_colorWellDidUpdateColor_ forControlEvents:4096];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSArray *)v10 addObject:v12];
    objc_storeStrong(&self->_colorWell, v13);
    if ([(PREditingColorItem *)self->_selectedColorItem isFromUIKitColorPicker])
    {
      v14 = [(PREditingColorItem *)self->_selectedColorItem displayColor];
      v15 = [v14 color];
      [v13 setSelectedColor:v15];
    }
  }

  allViews = self->_allViews;
  self->_allViews = v10;
  v17 = v10;

  [(PREditingColorItemsViewController *)self layoutWithItemViews:v17];
}

- (void)didTapColorItem:(id)a3
{
  v6 = [a3 view];
  v4 = [v6 colorItem];
  if ([v6 isSelected])
  {
    v5 = [v4 pickerColor];
    [v5 initialVariation];
    [v4 setVariation:?];

    [v6 updateForChangedColor];
    [(PREditingColorItemsViewController *)self didTapToResetColorItem:v4];
  }

  else
  {
    [(PREditingColorItemsViewController *)self setSelectedColorItem:v4];
    [(PREditingColorItemsViewController *)self didSelectColorItem:v4];
  }
}

- (void)layoutWithItemViews:(id)a3
{
  v45[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 count] / 6uLL;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [v3 count], 1) <= 0x2AAAAAAAAAAAAAAAuLL)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = [MEMORY[0x1E695DF70] array];
  if (v6)
  {
    v8 = 0;
    for (i = 0; i != v6; ++i)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = v8;
      v12 = 6;
      do
      {
        if ([v3 count] <= v11)
        {
          break;
        }

        v13 = [v3 objectAtIndexedSubscript:v11];
        [v10 addObject:v13];

        ++v11;
        --v12;
      }

      while (v12);
      v14 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v10];
      [v14 setAxis:0];
      [v14 setDistribution:3];
      [v14 setAlignment:1];
      [v14 setSpacing:14.0];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 addObject:v14];
      [v4 addObject:v14];

      v8 += 6;
    }
  }

  v43 = v7;
  v15 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v7];
  [(UIStackView *)v15 setAxis:1];
  [(UIStackView *)v15 setDistribution:3];
  [(UIStackView *)v15 setAlignment:3];
  [(UIStackView *)v15 setSpacing:14.0];
  [(UIStackView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = self->_stackView;
  self->_stackView = v15;
  v17 = v15;

  v42 = v4;
  v18 = [v4 copy];
  horizontalStackViews = self->_horizontalStackViews;
  self->_horizontalStackViews = v18;

  v20 = [(PREditingColorItemsViewController *)self view];
  [v20 addSubview:v17];

  v21 = [(UIStackView *)v17 leadingAnchor];
  v22 = [(PREditingColorItemsViewController *)self view];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:31.0];

  stackViewLeadingConstraint = self->_stackViewLeadingConstraint;
  self->_stackViewLeadingConstraint = v24;
  v41 = v24;

  v26 = [(UIStackView *)v17 trailingAnchor];
  v27 = [(PREditingColorItemsViewController *)self view];
  v28 = [v27 trailingAnchor];
  v29 = [v26 constraintEqualToAnchor:v28 constant:-31.0];

  stackViewTrailingConstraint = self->_stackViewTrailingConstraint;
  self->_stackViewTrailingConstraint = v29;
  v40 = v29;

  v45[0] = v41;
  v45[1] = v40;
  v38 = [(UIStackView *)v17 bottomAnchor];
  v39 = [(PREditingColorItemsViewController *)self view];
  v31 = [v39 bottomAnchor];
  v32 = [v38 constraintEqualToAnchor:v31];
  v45[2] = v32;
  v33 = [(UIStackView *)v17 topAnchor];
  v34 = [(PREditingColorItemsViewController *)self view];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  v45[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v37];
  [(PREditingColorItemsViewController *)self updateLayoutForCurrentSize];
}

- (void)updateLayoutForCurrentSize
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PREditingColorItemsViewController *)self view];
  [v3 bounds];
  v5 = v4;

  v6 = (v5 + -326.0) / 5.0;
  if (v6 != self->_interitemSpacing)
  {
    self->_interitemSpacing = v6;
    [(UIStackView *)self->_stackView setSpacing:(v5 + -326.0) / 5.0];
    [(UIStackView *)self->_stackView setNeedsLayout];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = self->_horizontalStackViews;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          [v12 setSpacing:{(v5 + -326.0) / 5.0, v25}];
          [v12 setNeedsLayout];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v13 = [(PREditingColorItemsViewController *)self delegate];
    [v13 colorItemsViewControllerDidUpdateEstimatedSize:self];
  }

  if (v5 != self->_configuredViewWidth)
  {
    v14 = [(PREditingColorItemsViewController *)self stackViewLeadingConstraint];
    [v14 constant];
    v16 = v15;
    v17 = [(PREditingColorItemsViewController *)self stackViewTrailingConstraint];
    [v17 constant];
    v19 = v16 - v18;

    if (v5 + -264.0 >= v19)
    {
      v20 = 31.0;
    }

    else
    {
      v20 = (v5 + -264.0) * 0.5;
    }

    v21 = [(PREditingColorItemsViewController *)self stackViewLeadingConstraint];
    v22 = v21;
    if (v20 >= 0.0)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0.0;
    }

    [v21 setConstant:v23];

    v24 = [(PREditingColorItemsViewController *)self stackViewTrailingConstraint];
    [v24 setConstant:{fmin(-v20, 0.0)}];

    self->_configuredViewWidth = v5;
  }
}

- (double)estimatedHeight
{
  v3 = [(PREditingColorItemsDataSource *)self->_dataSource numberOfItems];
  if ([(PREditorColorPickerConfiguration *)self->_configuration colorWellDisplayMode]== 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  if (v4 % 6)
  {
    v5 = v4 / 6 + 1;
  }

  else
  {
    v5 = v4 / 6;
  }

  return self->_interitemSpacing * (v5 - 1) + v5 * 44.0;
}

- (void)setContentsLuminance:(double)a3
{
  self->_contentsLuminance = a3;
  if ([(PREditingColorItemsViewController *)self isViewLoaded])
  {

    [(PREditingColorItemsViewController *)self updateVibrantMaterialItemForLuminance];
  }
}

- (void)updateVibrantMaterialItemForLuminance
{
  v3 = [(PREditingColorItemsDataSource *)self->_dataSource firstColorItemPassingTest:&__block_literal_global_19];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 pickerColor];
    [v4 setContentsLuminance:self->_contentsLuminance];
    v5 = [(NSArray *)self->_allItemViews objectAtIndex:[(PREditingColorItemsDataSource *)self->_dataSource indexForItem:v6]];
    [v5 updateForChangedColor];

    v3 = v6;
  }
}

uint64_t __74__PREditingColorItemsViewController_updateVibrantMaterialItemForLuminance__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 color];
  v3 = [v2 isVibrantMonochromeColor];

  return v3;
}

- (void)didSelectColorItem:(id)a3
{
  v4 = a3;
  v5 = [(PREditingColorItemsViewController *)self delegate];
  [v5 colorItemsViewController:self didSelectColorItem:v4];
}

- (void)didTapToResetColorItem:(id)a3
{
  v4 = a3;
  v5 = [(PREditingColorItemsViewController *)self delegate];
  [v5 colorItemsViewController:self didTapToResetColorItem:v4];
}

- (void)deselectSelectedColor
{
  [(PRSelectableEditingItemView *)self->_selectedColorItemView setSelected:0];
  selectedColorItemView = self->_selectedColorItemView;
  self->_selectedColorItemView = 0;

  selectedColorItem = self->_selectedColorItem;
  self->_selectedColorItem = 0;

  [(PUIColorWell *)self->_colorWell setSelectedColor:0];
  [(PUIColorWell *)self->_colorWell invalidateIntrinsicContentSize];
  colorWellView = self->_colorWellView;

  [(PUIColorWellView *)colorWellView setNeedsLayout];
}

- (void)setSelectedColorItem:(id)a3
{
  v5 = a3;
  v16 = v5;
  if (!v5)
  {
    goto LABEL_5;
  }

  if ([v5 isFromUIKitColorPicker])
  {
    [(PRSelectableEditingItemView *)self->_selectedColorItemView setSelected:0];
    selectedColorItemView = self->_selectedColorItemView;
    self->_selectedColorItemView = 0;

    objc_storeStrong(&self->_selectedColorItem, a3);
    goto LABEL_11;
  }

  v7 = [(PREditingColorItemsDataSource *)self->_dataSource indexForItem:v16];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSArray *)self->_allItemViews objectAtIndexedSubscript:v7];
    objc_storeStrong(&self->_selectedColorItem, a3);
    v9 = [(PREditingColorItemsViewController *)self configuration];
    v10 = [v9 identifier];

    v11 = [v16 pickerColor];
    if (v11)
    {
      v12 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v11 forContextIdentifier:v10];
      if (!v12)
      {
        variationStore = self->_variationStore;
        [v11 initialVariation];
        [(PREditingColorVariationStore *)variationStore setVariation:v11 forPickerColor:v10 forContextIdentifier:?];
      }
    }

    [(PRSelectableEditingItemView *)self->_selectedColorItemView setSelected:0];
    v14 = self->_selectedColorItemView;
    self->_selectedColorItemView = v8;
    v15 = v8;

    [(PRSelectableEditingItemView *)v15 setSelected:1];
  }

  else
  {
LABEL_5:
    [(PREditingColorItemsViewController *)self deselectSelectedColor];
  }

LABEL_11:
}

- (void)colorWellDidUpdateColor:(id)a3
{
  selectedColorItemView = self->_selectedColorItemView;
  v5 = a3;
  [(PRSelectableEditingItemView *)selectedColorItemView setSelected:0];
  v6 = self->_selectedColorItemView;
  self->_selectedColorItemView = 0;

  v7 = [(PREditingColorItemsViewController *)self colorWell];
  [v7 invalidateIntrinsicContentSize];

  v8 = [(PREditingColorItemsViewController *)self colorWellView];
  [v8 setNeedsLayout];

  v9 = [PRPosterColor alloc];
  v10 = [v5 selectedColor];

  v11 = [(PRPosterColor *)v9 initWithColor:v10];
  v12 = [(PREditorColorPickerConfiguration *)self->_configuration context];
  if (v12 == 1)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = off_1E7841A50;
  if (v12 != 1)
  {
    v14 = off_1E7841A48;
  }

  v22 = [objc_alloc(*v14) initWithColor:v11 initialVariation:v13];
  v15 = [PREditingColorItem alloc];
  [v22 initialVariation];
  v17 = [(PREditingColorItem *)v15 initWithPickerColor:v22 variation:[(PREditorColorPickerConfiguration *)self->_configuration context] context:v16];
  [(PREditingColorItem *)v17 setFromUIKitColorPicker:1];
  objc_storeStrong(&self->_selectedColorItem, v17);
  v18 = [(PREditingColorItemsViewController *)self configuration];
  v19 = [v18 identifier];

  v20 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v22 forContextIdentifier:v19];
  if (!v20)
  {
    variationStore = self->_variationStore;
    [v22 initialVariation];
    [(PREditingColorVariationStore *)variationStore setVariation:v22 forPickerColor:v19 forContextIdentifier:?];
  }

  [(PREditingColorItemsViewController *)self didSelectColorItem:v17];
}

- (void)sliderDidChangeForColorItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v10 = v4;
    if (self->_colorWell && (v4 = [v4 isFromUIKitColorPicker], v5 = v10, v4))
    {
      colorWell = self->_colorWell;
      v7 = [v10 color];
      v8 = [v7 color];
      [(PUIColorWell *)colorWell setSelectedColor:v8];
    }

    else
    {
      if (!self->_selectedColorItemView)
      {
        goto LABEL_11;
      }

      v7 = [v5 baseColor];
      v8 = [(PREditingColorItem *)self->_selectedColorItem baseColor];
      if ([v7 isEqual:v8])
      {
        v9 = [v10 itemView];

        v5 = v10;
        if (v9)
        {
          goto LABEL_11;
        }

        v4 = [(PREditingColorItemView *)self->_selectedColorItemView updateForChangedColor];
        goto LABEL_10;
      }
    }

LABEL_10:
    v5 = v10;
  }

LABEL_11:

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (PREditingColorItemsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end