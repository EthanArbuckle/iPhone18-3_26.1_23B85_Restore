@interface PREditingColorPickerComponentViewController
- (BOOL)shouldShowColorItems;
- (PREditingColorPickerComponentViewController)init;
- (PREditingColorPickerComponentViewController)initWithConfiguration:(id)configuration variationStore:(id)store;
- (PREditingColorPickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (void)colorItemsViewController:(id)controller didSelectColorItem:(id)item;
- (void)colorItemsViewController:(id)controller didTapToResetColorItem:(id)item;
- (void)colorItemsViewControllerDidUpdateEstimatedSize:(id)size;
- (void)colorSliderDidUpdateColor:(id)color;
- (void)didSelectColorItem:(id)item;
- (void)loadItemsViewControllerIfNeeded;
- (void)loadView;
- (void)setContentsLuminance:(double)luminance;
- (void)updateForColorWellSelectedItem:(id)item;
- (void)updateSliderVisibility:(BOOL)visibility;
@end

@implementation PREditingColorPickerComponentViewController

- (PREditingColorPickerComponentViewController)initWithConfiguration:(id)configuration variationStore:(id)store
{
  configurationCopy = configuration;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = PREditingColorPickerComponentViewController;
  v9 = [(PREditingColorPickerComponentViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_variationStore, store);
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
    context = [(PREditorColorPickerConfiguration *)self->_configuration context];
    array = [MEMORY[0x1E695DF70] array];
    if (context == 1)
    {
      v5 = [[PREditingVibrantColorItemsDataSource alloc] initWithConfiguration:self->_configuration variationStore:self->_variationStore];
      [array addObject:v5];
    }

    v6 = [[PREditingPaletteColorItemsDataSource alloc] initWithConfiguration:self->_configuration variationStore:self->_variationStore includesSuggestedColor:context != 1];
    [array addObject:v6];

    if ([array count] < 2)
    {
      firstObject = [array firstObject];
    }

    else
    {
      v7 = [PREditingColorItemsAggregateDataSource alloc];
      v8 = [array copy];
      firstObject = [(PREditingColorItemsAggregateDataSource *)v7 initWithDataSources:v8];
    }

    if (context == 1 && ([MEMORY[0x1E69DC938] currentDevice], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, (v10 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v11 = off_1E78418E0;
    }

    else
    {
      v11 = off_1E78418E8;
    }

    v12 = [objc_alloc(*v11) initWithDataSource:firstObject configuration:self->_configuration variationStore:self->_variationStore];
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

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v4 setTextColor:labelColor];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v4];
  }

  else
  {
    v4 = 0;
  }

  [(PREditingColorPickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  itemsViewController = [(PREditingColorPickerComponentViewController *)self itemsViewController];
  view = [itemsViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = 0x1E695D000uLL;
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:view];
  if ([(PREditingColorPickerComponentViewController *)self shouldShowColorItems])
  {
    [view setHidden:1];
  }

  selectedColorItem = [itemsViewController selectedColorItem];
  if ([selectedColorItem isFromUIKitColorPicker])
  {
    delegate = [(PREditingColorPickerComponentViewController *)self delegate];
    [delegate colorPickerComponentViewController:self didSelectColorItem:selectedColorItem userSelected:0];
  }

  v67 = view;
  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider])
  {
    v14 = array;
    v15 = [PREditingColorSlider alloc];
    variationStore = self->_variationStore;
    identifier = [(PREditorColorPickerConfiguration *)self->_configuration identifier];
    v18 = [(PREditingColorSlider *)v15 initWithVariationStore:variationStore contextIdentifier:identifier pickerContext:[(PREditorColorPickerConfiguration *)self->_configuration context]];

    v19 = v18;
    pickerColor = [selectedColorItem pickerColor];
    [v19 setPickerColor:pickerColor];

    [v19 addTarget:self action:sel_colorSliderDidUpdateColor_ forControlEvents:4096];
    selectedColorItem2 = [itemsViewController selectedColorItem];
    LOBYTE(variationStore) = [selectedColorItem2 shouldShowSlider];

    if ((variationStore & 1) == 0)
    {
      [v19 setHidden:1];
    }

    objc_storeStrong(&self->_sliderView, v19);
    array = v14;
    [v14 addObject:v19];
    v11 = 0x1E695D000;
  }

  else
  {
    v19 = 0;
  }

  v65 = v19;
  v61 = array;
  v22 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  [v22 setAxis:1];
  [v22 setAlignment:3];
  [v22 setSpacing:24.0];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_verticalStack, v22);
  [v3 addSubview:v22];
  [(PREditingColorPickerComponentViewController *)self addChildViewController:itemsViewController];
  [(PREditingColorPickerComponentViewController *)self setView:v3];
  [itemsViewController didMoveToParentViewController:self];
  array2 = [*(v11 + 3952) array];
  v68 = v3;
  v62 = itemsViewController;
  v63 = v4;
  v64 = array2;
  if (self->_showsHeader)
  {
    leadingAnchor = [v4 leadingAnchor];
    leadingAnchor2 = [v3 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v72[0] = v24;
    topAnchor = [v4 topAnchor];
    topAnchor2 = [v3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v72[1] = v26;
    topAnchor3 = [v22 topAnchor];
    bottomAnchor = [v4 bottomAnchor];
    v29 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
    v72[2] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:3];
    [array2 addObjectsFromArray:v30];

    topAnchor5 = leadingAnchor2;
    topAnchor4 = leadingAnchor;
  }

  else
  {
    topAnchor4 = [v22 topAnchor];
    topAnchor5 = [v3 topAnchor];
    v24 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v71 = v24;
    topAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    [array2 addObjectsFromArray:topAnchor];
  }

  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider])
  {
    heightAnchor = [v65 heightAnchor];
    v34 = [heightAnchor constraintEqualToConstant:34.0];
    v70[0] = v34;
    leadingAnchor3 = [v65 leadingAnchor];
    leadingAnchor4 = [v22 leadingAnchor];
    v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:36.0];
    v70[1] = v37;
    trailingAnchor = [v65 trailingAnchor];
    trailingAnchor2 = [v22 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-36.0];
    v70[2] = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    [v64 addObjectsFromArray:v41];
  }

  leadingAnchor5 = [v67 leadingAnchor];
  leadingAnchor6 = [v22 leadingAnchor];
  v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v69[0] = v57;
  trailingAnchor3 = [v67 trailingAnchor];
  trailingAnchor4 = [v22 trailingAnchor];
  v52 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v69[1] = v52;
  leadingAnchor7 = [v22 leadingAnchor];
  leadingAnchor8 = [v68 leadingAnchor];
  v42 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v69[2] = v42;
  trailingAnchor5 = [v22 trailingAnchor];
  trailingAnchor6 = [v68 trailingAnchor];
  v45 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v69[3] = v45;
  bottomAnchor2 = [v22 bottomAnchor];
  bottomAnchor3 = [v68 bottomAnchor];
  v48 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v69[4] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:5];
  [v64 addObjectsFromArray:v49];

  [MEMORY[0x1E696ACD8] activateConstraints:v64];
}

- (BOOL)shouldShowColorItems
{
  itemsViewController = [(PREditingColorPickerComponentViewController *)self itemsViewController];
  configuration = [itemsViewController configuration];
  colorPalette = [configuration colorPalette];
  pickerColors = [colorPalette pickerColors];
  v6 = [pickerColors count];

  return v6 < 2;
}

- (void)setContentsLuminance:(double)luminance
{
  self->_contentsLuminance = luminance;
  if ([(PREditingColorPickerComponentViewController *)self isViewLoaded])
  {
    itemsViewController = self->_itemsViewController;

    [(PREditingColorItemsViewController *)itemsViewController setContentsLuminance:luminance];
  }
}

- (double)estimatedHeight
{
  [(PREditingColorPickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  [(PREditingColorItemsViewController *)self->_itemsViewController estimatedHeight];
  v4 = v3;
  if ([(PREditorColorPickerConfiguration *)self->_configuration showsSlider])
  {
    selectedColorItem = [(PREditingColorItemsViewController *)self->_itemsViewController selectedColorItem];
    if ([selectedColorItem shouldShowSlider])
    {
      shouldShowColorItems = [(PREditingColorPickerComponentViewController *)self shouldShowColorItems];

      if (!shouldShowColorItems)
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

- (void)updateForColorWellSelectedItem:(id)item
{
  itemsViewController = self->_itemsViewController;
  itemCopy = item;
  [(PREditingColorItemsViewController *)itemsViewController setSelectedColorItem:itemCopy];
  sliderView = self->_sliderView;
  pickerColor = [itemCopy pickerColor];

  [(PREditingColorSlider *)sliderView setPickerColor:pickerColor];
}

- (void)colorItemsViewController:(id)controller didSelectColorItem:(id)item
{
  itemCopy = item;
  if ([itemCopy shouldShowSlider])
  {
    pickerColor = [itemCopy pickerColor];
    v6 = pickerColor != 0;
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
  pickerColor2 = [itemCopy pickerColor];
  [(PREditingColorSlider *)sliderView setPickerColor:pickerColor2];

  [(PREditingColorPickerComponentViewController *)self didSelectColorItem:itemCopy];
}

- (void)colorItemsViewController:(id)controller didTapToResetColorItem:(id)item
{
  itemCopy = item;
  if (([(PREditingColorSlider *)self->_sliderView isHidden]& 1) == 0)
  {
    sliderView = self->_sliderView;
    [itemCopy variation];
    [(PREditingColorSlider *)sliderView setVariation:?];
    [(PREditingColorPickerComponentViewController *)self didSelectColorItem:itemCopy];
  }
}

- (void)colorItemsViewControllerDidUpdateEstimatedSize:(id)size
{
  delegate = [(PREditingColorPickerComponentViewController *)self delegate];
  [delegate colorPickerComponentViewControllerDidChangeHeight:self];
}

- (void)updateSliderVisibility:(BOOL)visibility
{
  [(PREditingColorSlider *)self->_sliderView setHidden:!visibility];
  delegate = [(PREditingColorPickerComponentViewController *)self delegate];
  [delegate colorPickerComponentViewControllerDidChangeHeight:self];
}

- (void)didSelectColorItem:(id)item
{
  itemCopy = item;
  delegate = [(PREditingColorPickerComponentViewController *)self delegate];
  [delegate colorPickerComponentViewController:self didSelectColorItem:itemCopy userSelected:1];
}

- (void)colorSliderDidUpdateColor:(id)color
{
  colorCopy = color;
  selectedColorItem = [(PREditingColorItemsViewController *)self->_itemsViewController selectedColorItem];
  if (selectedColorItem)
  {
    [colorCopy variation];
    [selectedColorItem setVariation:?];
    [(PREditingColorPickerComponentViewController *)self didSelectColorItem:selectedColorItem];
    [(PREditingColorItemsViewController *)self->_itemsViewController sliderDidChangeForColorItem:selectedColorItem];
  }
}

- (PREditingColorPickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end