@interface PREditingColorPickerComponentViewController
- (BOOL)shouldShowColorItems;
- (PREditingColorPickerComponentViewController)init;
- (PREditingColorPickerComponentViewController)initWithConfiguration:(id)a3 variationStore:(id)a4;
- (PREditingColorPickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (void)colorItemsViewController:(id)a3 didSelectColorItem:(id)a4;
- (void)colorItemsViewController:(id)a3 didTapToResetColorItem:(id)a4;
- (void)colorItemsViewControllerDidUpdateEstimatedSize:(id)a3;
- (void)colorSliderDidUpdateColor:(id)a3;
- (void)didSelectColorItem:(id)a3;
- (void)loadItemsViewControllerIfNeeded;
- (void)loadView;
- (void)setContentsLuminance:(double)a3;
- (void)updateForColorWellSelectedItem:(id)a3;
- (void)updateSliderVisibility:(BOOL)a3;
@end

@implementation PREditingColorPickerComponentViewController

- (PREditingColorPickerComponentViewController)initWithConfiguration:(id)a3 variationStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PREditingColorPickerComponentViewController;
  v9 = [(PREditingColorPickerComponentViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_variationStore, a4);
  }

  return v10;
}

- (PREditingColorPickerComponentViewController)init
{
  v3 = objc_alloc_init(PREditorColorPickerConfiguration);
  v4 = [(PREditingColorPickerComponentViewController *)self initWithConfiguration:v3 variationStore:0];

  return v4;
}

- (void)loadItemsViewControllerIfNeeded
{
  if (!self->_itemsViewController)
  {
    v3 = [(PREditorColorPickerConfiguration *)self->_configuration context];
    v4 = [MEMORY[0x1E695DF70] array];
    if (v3 == 1)
    {
      v5 = [[PREditingVibrantColorItemsDataSource alloc] initWithConfiguration:self->_configuration variationStore:self->_variationStore];
      [v4 addObject:v5];
    }

    v6 = [[PREditingPaletteColorItemsDataSource alloc] initWithConfiguration:self->_configuration variationStore:self->_variationStore includesSuggestedColor:v3 != 1];
    [v4 addObject:v6];

    if ([v4 count] < 2)
    {
      v14 = [v4 firstObject];
    }

    else
    {
      v7 = [PREditingColorItemsAggregateDataSource alloc];
      v8 = [v4 copy];
      v14 = [(PREditingColorItemsAggregateDataSource *)v7 initWithDataSources:v8];
    }

    if (v3 == 1 && ([MEMORY[0x1E69DC938] currentDevice], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, (v10 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v11 = off_1E78418E0;
    }

    else
    {
      v11 = off_1E78418E8;
    }

    v12 = [objc_alloc(*v11) initWithDataSource:v14 configuration:self->_configuration variationStore:self->_variationStore];
    [(PREditingColorItemsViewController *)v12 setDelegate:self];
    [(PREditingColorItemsViewController *)v12 setContentsLuminance:self->_contentsLuminance];
    itemsViewController = self->_itemsViewController;
    self->_itemsViewController = v12;
  }
}

- (void)loadView
{
  v72[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  if (self->_showsHeader)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = PRBundle();
    v6 = [v5 localizedStringForKey:@"COLOR_HEADING" value:&stru_1F1C13D90 table:@"PosterKit"];
    [v4 setText:v6];

    v7 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
    [v4 setFont:v7];

    v8 = [MEMORY[0x1E69DC888] labelColor];
    [v4 setTextColor:v8];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v4];
  }

  else
  {
    v4 = 0;
  }

  [(PREditingColorPickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  v9 = [(PREditingColorPickerComponentViewController *)self itemsViewController];
  v10 = [v9 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = 0x1E695D000uLL;
  v12 = [MEMORY[0x1E695DF70] array];
  [v12 addObject:v10];
  if ([(PREditingColorPickerComponentViewController *)self shouldShowColorItems])
  {
    [v10 setHidden:1];
  }

  v66 = [v9 selectedColorItem];
  if ([v66 isFromUIKitColorPicker])
  {
    v13 = [(PREditingColorPickerComponentViewController *)self delegate];
    [v13 colorPickerComponentViewController:self didSelectColorItem:v66 userSelected:0];
  }

  v67 = v10;
  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider])
  {
    v14 = v12;
    v15 = [PREditingColorSlider alloc];
    variationStore = self->_variationStore;
    v17 = [(PREditorColorPickerConfiguration *)self->_configuration identifier];
    v18 = [(PREditingColorSlider *)v15 initWithVariationStore:variationStore contextIdentifier:v17 pickerContext:[(PREditorColorPickerConfiguration *)self->_configuration context]];

    v19 = v18;
    v20 = [v66 pickerColor];
    [v19 setPickerColor:v20];

    [v19 addTarget:self action:sel_colorSliderDidUpdateColor_ forControlEvents:4096];
    v21 = [v9 selectedColorItem];
    LOBYTE(variationStore) = [v21 shouldShowSlider];

    if ((variationStore & 1) == 0)
    {
      [v19 setHidden:1];
    }

    objc_storeStrong(&self->_sliderView, v19);
    v12 = v14;
    [v14 addObject:v19];
    v11 = 0x1E695D000;
  }

  else
  {
    v19 = 0;
  }

  v65 = v19;
  v61 = v12;
  v22 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v12];
  [v22 setAxis:1];
  [v22 setAlignment:3];
  [v22 setSpacing:24.0];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_verticalStack, v22);
  [v3 addSubview:v22];
  [(PREditingColorPickerComponentViewController *)self addChildViewController:v9];
  [(PREditingColorPickerComponentViewController *)self setView:v3];
  [v9 didMoveToParentViewController:self];
  v23 = [*(v11 + 3952) array];
  v68 = v3;
  v62 = v9;
  v63 = v4;
  v64 = v23;
  if (self->_showsHeader)
  {
    v58 = [v4 leadingAnchor];
    v56 = [v3 leadingAnchor];
    v24 = [v58 constraintEqualToAnchor:v56 constant:20.0];
    v72[0] = v24;
    v25 = [v4 topAnchor];
    v54 = [v3 topAnchor];
    v26 = [v25 constraintEqualToAnchor:v54 constant:10.0];
    v72[1] = v26;
    v27 = [v22 topAnchor];
    v28 = [v4 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:20.0];
    v72[2] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    [v23 addObjectsFromArray:v30];

    v31 = v56;
    v32 = v58;
  }

  else
  {
    v32 = [v22 topAnchor];
    v31 = [v3 topAnchor];
    v24 = [v32 constraintEqualToAnchor:v31];
    v71 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    [v23 addObjectsFromArray:v25];
  }

  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider])
  {
    v33 = [v65 heightAnchor];
    v34 = [v33 constraintEqualToConstant:34.0];
    v70[0] = v34;
    v35 = [v65 leadingAnchor];
    v36 = [v22 leadingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:36.0];
    v70[1] = v37;
    v38 = [v65 trailingAnchor];
    v39 = [v22 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:-36.0];
    v70[2] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    [v64 addObjectsFromArray:v41];
  }

  v60 = [v67 leadingAnchor];
  v59 = [v22 leadingAnchor];
  v57 = [v60 constraintEqualToAnchor:v59];
  v69[0] = v57;
  v55 = [v67 trailingAnchor];
  v53 = [v22 trailingAnchor];
  v52 = [v55 constraintEqualToAnchor:v53];
  v69[1] = v52;
  v51 = [v22 leadingAnchor];
  v50 = [v68 leadingAnchor];
  v42 = [v51 constraintEqualToAnchor:v50];
  v69[2] = v42;
  v43 = [v22 trailingAnchor];
  v44 = [v68 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  v69[3] = v45;
  v46 = [v22 bottomAnchor];
  v47 = [v68 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];
  v69[4] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:5];
  [v64 addObjectsFromArray:v49];

  [MEMORY[0x1E696ACD8] activateConstraints:v64];
}

- (BOOL)shouldShowColorItems
{
  v2 = [(PREditingColorPickerComponentViewController *)self itemsViewController];
  v3 = [v2 configuration];
  v4 = [v3 colorPalette];
  v5 = [v4 pickerColors];
  v6 = [v5 count];

  return v6 < 2;
}

- (void)setContentsLuminance:(double)a3
{
  self->_contentsLuminance = a3;
  if ([(PREditingColorPickerComponentViewController *)self isViewLoaded])
  {
    itemsViewController = self->_itemsViewController;

    [(PREditingColorItemsViewController *)itemsViewController setContentsLuminance:a3];
  }
}

- (double)estimatedHeight
{
  [(PREditingColorPickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  [(PREditingColorItemsViewController *)self->_itemsViewController estimatedHeight];
  v4 = v3;
  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider])
  {
    v5 = [(PREditingColorItemsViewController *)self->_itemsViewController selectedColorItem];
    if ([v5 shouldShowSlider])
    {
      v6 = [(PREditingColorPickerComponentViewController *)self shouldShowColorItems];

      if (!v6)
      {
        return v4 + 58.0;
      }
    }

    else
    {
    }
  }

  return v4;
}

- (void)updateForColorWellSelectedItem:(id)a3
{
  itemsViewController = self->_itemsViewController;
  v5 = a3;
  [(PREditingColorItemsViewController *)itemsViewController setSelectedColorItem:v5];
  sliderView = self->_sliderView;
  v7 = [v5 pickerColor];

  [(PREditingColorSlider *)sliderView setPickerColor:v7];
}

- (void)colorItemsViewController:(id)a3 didSelectColorItem:(id)a4
{
  v9 = a4;
  if ([v9 shouldShowSlider])
  {
    v5 = [v9 pickerColor];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider]&& v6 == [(PREditingColorSlider *)self->_sliderView isHidden])
  {
    [(PREditingColorPickerComponentViewController *)self updateSliderVisibility:v6];
  }

  sliderView = self->_sliderView;
  v8 = [v9 pickerColor];
  [(PREditingColorSlider *)sliderView setPickerColor:v8];

  [(PREditingColorPickerComponentViewController *)self didSelectColorItem:v9];
}

- (void)colorItemsViewController:(id)a3 didTapToResetColorItem:(id)a4
{
  v6 = a4;
  if (([(PREditingColorSlider *)self->_sliderView isHidden]& 1) == 0)
  {
    sliderView = self->_sliderView;
    [v6 variation];
    [(PREditingColorSlider *)sliderView setVariation:?];
    [(PREditingColorPickerComponentViewController *)self didSelectColorItem:v6];
  }
}

- (void)colorItemsViewControllerDidUpdateEstimatedSize:(id)a3
{
  v4 = [(PREditingColorPickerComponentViewController *)self delegate];
  [v4 colorPickerComponentViewControllerDidChangeHeight:self];
}

- (void)updateSliderVisibility:(BOOL)a3
{
  [(PREditingColorSlider *)self->_sliderView setHidden:!a3];
  v4 = [(PREditingColorPickerComponentViewController *)self delegate];
  [v4 colorPickerComponentViewControllerDidChangeHeight:self];
}

- (void)didSelectColorItem:(id)a3
{
  v4 = a3;
  v5 = [(PREditingColorPickerComponentViewController *)self delegate];
  [v5 colorPickerComponentViewController:self didSelectColorItem:v4 userSelected:1];
}

- (void)colorSliderDidUpdateColor:(id)a3
{
  v5 = a3;
  v4 = [(PREditingColorItemsViewController *)self->_itemsViewController selectedColorItem];
  if (v4)
  {
    [v5 variation];
    [v4 setVariation:?];
    [(PREditingColorPickerComponentViewController *)self didSelectColorItem:v4];
    [(PREditingColorItemsViewController *)self->_itemsViewController sliderDidChangeForColorItem:v4];
  }
}

- (PREditingColorPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end