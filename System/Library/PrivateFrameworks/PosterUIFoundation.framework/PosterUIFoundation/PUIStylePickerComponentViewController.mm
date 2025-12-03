@interface PUIStylePickerComponentViewController
- (BOOL)shouldShowContentStyleItems;
- (PUIStylePickerComponentViewController)init;
- (PUIStylePickerComponentViewController)initWithConfiguration:(id)configuration;
- (PUIStylePickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)coordinatorForStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle fromDataSource:(id)source;
- (id)stylePickerComponentViewController:(id)controller coordinatorForStyle:(id)style isSuggested:(BOOL)suggested;
- (void)_didSelectContentStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle;
- (void)colorSliderDidUpdateVariation:(id)variation;
- (void)loadItemsViewControllerIfNeeded;
- (void)loadView;
- (void)setContentsLuminance:(double)luminance;
- (void)styleItemsViewController:(id)controller didSelectContentStyleCoordinator:(id)coordinator;
- (void)styleItemsViewControllerDidUpdateEstimatedSize:(id)size;
- (void)stylePickerComponentViewController:(id)controller didSelectStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle userSelected:(BOOL)selected;
- (void)stylePickerComponentViewControllerDidChangeHeight:(id)height;
- (void)updateSliderVisibility:(BOOL)visibility;
@end

@implementation PUIStylePickerComponentViewController

- (PUIStylePickerComponentViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PUIStylePickerComponentViewController;
  v6 = [(PUIStylePickerComponentViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (PUIStylePickerComponentViewController)init
{
  v3 = objc_alloc_init(PUIStyleConfiguration);
  v4 = [(PUIStylePickerComponentViewController *)self initWithConfiguration:v3];

  return v4;
}

- (void)loadItemsViewControllerIfNeeded
{
  if (!self->_itemsViewController)
  {
    v13 = [[PUIStyleItemsDataSource alloc] initWithConfiguration:self->_configuration includesSuggestedStyle:1 delegate:self];
    objc_storeStrong(&self->_dataSource, v13);
    if (-[PUIStyleConfiguration isForTitleStylePicker](self->_configuration, "isForTitleStylePicker") && ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1))
    {
      v6 = [(PUIStyleItemsViewController *)[PUIStyleItemsScrollableStackViewController alloc] initWithDataSource:v13 configuration:self->_configuration];
      [(PUIStyleItemsViewController *)v6 setDelegate:self];
    }

    else
    {
      v5 = [[PUIStyleItemsViewController alloc] initWithDataSource:v13 configuration:self->_configuration];
      [(PUIStyleItemsViewController *)v5 setDelegate:self];
      v6 = v5;
      if ([(PUIStyleConfiguration *)self->_configuration colorWellDisplayMode]== 2)
      {
        colorWellView = [(PUIStyleItemsViewController *)v6 colorWellView];
        colorWellView = self->_colorWellView;
        self->_colorWellView = colorWellView;
        v9 = colorWellView;

        colorWell = [(PUIColorWellView *)v9 colorWell];
        colorWell = self->_colorWell;
        self->_colorWell = colorWell;
      }
    }

    [(PUIStyleItemsViewController *)v6 setContentsLuminance:self->_contentsLuminance];
    itemsViewController = self->_itemsViewController;
    self->_itemsViewController = &v6->super;
  }
}

- (void)loadView
{
  v77[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  if (self->_showsHeader)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = PUIBundle();
    v6 = [v5 localizedStringForKey:@"COLOR_HEADING" value:&stru_1F1C6DED8 table:0];
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

  [(PUIStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  itemsViewController = [(PUIStylePickerComponentViewController *)self itemsViewController];
  view = [itemsViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = 0x1E695D000uLL;
  array = [MEMORY[0x1E695DF70] array];
  v72 = view;
  [array addObject:view];
  selectedStyleCoordinator = [itemsViewController selectedStyleCoordinator];
  v14 = [(PUIStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_6];

  v71 = selectedStyleCoordinator;
  if (!selectedStyleCoordinator)
  {
    delegate = [(PUIStylePickerComponentViewController *)self delegate];
    style = [0 style];
    [delegate stylePickerComponentViewController:self didSelectStyle:style isSuggestedStyle:objc_msgSend(0 userSelected:{"isSuggested"), 0}];
  }

  if (v14)
  {
    v17 = [PUIStyleVariationSlider alloc];
    identifier = [(PUIStyleConfiguration *)self->_configuration identifier];
    v19 = [(PUIStyleVariationSlider *)v17 initWithStyleCoordinator:v71 contextIdentifier:identifier];

    [(PUIStyleVariationSlider *)v19 addTarget:self action:sel_colorSliderDidUpdateVariation_ forControlEvents:4096];
    selectedStyleCoordinator2 = [itemsViewController selectedStyleCoordinator];
    style2 = [selectedStyleCoordinator2 style];
    allowsVariation = [style2 allowsVariation];

    if ((allowsVariation & 1) == 0)
    {
      [(PUIStyleVariationSlider *)v19 setHidden:1];
    }

    objc_storeStrong(&self->_sliderView, v19);
    [array addObject:v19];
    v23 = v19;
    v11 = 0x1E695D000;
  }

  else
  {
    v23 = 0;
  }

  v65 = array;
  v24 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:array];
  [v24 setAxis:1];
  [v24 setAlignment:3];
  [v24 setSpacing:24.0];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_verticalStack, v24);
  [v3 addSubview:v24];
  [(PUIStylePickerComponentViewController *)self addChildViewController:itemsViewController];
  [(PUIStylePickerComponentViewController *)self setView:v3];
  v66 = itemsViewController;
  [itemsViewController didMoveToParentViewController:self];
  array2 = [*(v11 + 3952) array];
  v73 = v3;
  v67 = v4;
  if (self->_showsHeader)
  {
    leadingAnchor = [v4 leadingAnchor];
    leadingAnchor2 = [v3 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
    v77[0] = v26;
    topAnchor = [v4 topAnchor];
    topAnchor2 = [v3 topAnchor];
    v59 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
    v77[1] = v59;
    topAnchor3 = [v24 topAnchor];
    bottomAnchor = [v4 bottomAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:20.0];
    v77[2] = v30;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    v32 = v31 = v23;
    v33 = array2;
    [array2 addObjectsFromArray:v32];

    v23 = v31;
    topAnchor5 = leadingAnchor2;

    topAnchor4 = leadingAnchor;
  }

  else
  {
    topAnchor4 = [v24 topAnchor];
    topAnchor5 = [v3 topAnchor];
    v26 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v76 = v26;
    topAnchor = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v33 = array2;
    [array2 addObjectsFromArray:topAnchor];
  }

  v68 = v33;

  v36 = 0x1E695D000;
  v70 = v23;
  if (v23)
  {
    heightAnchor = [(PUIStyleVariationSlider *)v23 heightAnchor];
    +[PUIStyleVariationSlider defaultHeight];
    v38 = [heightAnchor constraintEqualToConstant:?];
    v75[0] = v38;
    leadingAnchor3 = [(PUIStyleVariationSlider *)v23 leadingAnchor];
    leadingAnchor4 = [v24 leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:36.0];
    v75[1] = v41;
    trailingAnchor = [(PUIStyleVariationSlider *)v70 trailingAnchor];
    trailingAnchor2 = [v24 trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-36.0];
    v75[2] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
    [v68 addObjectsFromArray:v45];

    v36 = 0x1E695D000uLL;
  }

  leadingAnchor5 = [v72 leadingAnchor];
  leadingAnchor6 = [v24 leadingAnchor];
  v60 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v74[0] = v60;
  trailingAnchor3 = [v72 trailingAnchor];
  trailingAnchor4 = [v24 trailingAnchor];
  v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v74[1] = v56;
  leadingAnchor7 = [v24 leadingAnchor];
  leadingAnchor8 = [v73 leadingAnchor];
  v46 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v74[2] = v46;
  trailingAnchor5 = [v24 trailingAnchor];
  trailingAnchor6 = [v73 trailingAnchor];
  v49 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v74[3] = v49;
  bottomAnchor2 = [v24 bottomAnchor];
  bottomAnchor3 = [v73 bottomAnchor];
  v52 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v74[4] = v52;
  v53 = [*(v36 + 3784) arrayWithObjects:v74 count:5];
  [v68 addObjectsFromArray:v53];

  [MEMORY[0x1E696ACD8] activateConstraints:v68];
}

uint64_t __49__PUIStylePickerComponentViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

- (BOOL)shouldShowContentStyleItems
{
  itemsViewController = [(PUIStylePickerComponentViewController *)self itemsViewController];
  configuration = [itemsViewController configuration];
  stylePalette = [configuration stylePalette];
  styles = [stylePalette styles];
  v6 = [styles count];

  return v6 < 2;
}

- (void)setContentsLuminance:(double)luminance
{
  self->_contentsLuminance = luminance;
  if ([(PUIStylePickerComponentViewController *)self isViewLoaded])
  {
    itemsViewController = self->_itemsViewController;

    [(PUIStyleItemsViewController *)itemsViewController setContentsLuminance:luminance];
  }
}

- (double)estimatedHeight
{
  [(PUIStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  [(PUIStyleItemsViewController *)self->_itemsViewController estimatedHeight];
  v4 = v3;
  if (self->_sliderView)
  {
    selectedStyleCoordinator = [(PUIStyleItemsViewController *)self->_itemsViewController selectedStyleCoordinator];
    style = [selectedStyleCoordinator style];
    if ([style allowsVariation])
    {
      shouldShowContentStyleItems = [(PUIStylePickerComponentViewController *)self shouldShowContentStyleItems];

      if (!shouldShowContentStyleItems)
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

- (void)updateSliderVisibility:(BOOL)visibility
{
  [(PUIStyleVariationSlider *)self->_sliderView setHidden:!visibility];
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  [delegate stylePickerComponentViewControllerDidChangeHeight:self];
}

- (void)_didSelectContentStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle
{
  suggestedStyleCopy = suggestedStyle;
  styleCopy = style;
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  [delegate stylePickerComponentViewController:self didSelectStyle:styleCopy isSuggestedStyle:suggestedStyleCopy userSelected:1];
}

- (void)colorSliderDidUpdateVariation:(id)variation
{
  selectedStyleCoordinator = [(PUIStyleItemsViewController *)self->_itemsViewController selectedStyleCoordinator];
  if (selectedStyleCoordinator)
  {
    v6 = selectedStyleCoordinator;
    style = [selectedStyleCoordinator style];
    -[PUIStylePickerComponentViewController _didSelectContentStyle:isSuggestedStyle:](self, "_didSelectContentStyle:isSuggestedStyle:", style, [v6 isSuggested]);

    selectedStyleCoordinator = v6;
  }
}

- (void)styleItemsViewController:(id)controller didSelectContentStyleCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  style = [coordinatorCopy style];
  allowsVariation = [style allowsVariation];

  v8 = [(PUIStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_20];

  if (v8 && allowsVariation == [(PUIStyleVariationSlider *)self->_sliderView isHidden])
  {
    [(PUIStylePickerComponentViewController *)self updateSliderVisibility:allowsVariation];
  }

  [(PUIStyleVariationSlider *)self->_sliderView setStyleCoordinator:coordinatorCopy];
  style2 = [coordinatorCopy style];
  isSuggested = [coordinatorCopy isSuggested];

  [(PUIStylePickerComponentViewController *)self _didSelectContentStyle:style2 isSuggestedStyle:isSuggested];
}

uint64_t __99__PUIStylePickerComponentViewController_styleItemsViewController_didSelectContentStyleCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

- (void)styleItemsViewControllerDidUpdateEstimatedSize:(id)size
{
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  [delegate stylePickerComponentViewControllerDidChangeHeight:self];
}

- (id)stylePickerComponentViewController:(id)controller coordinatorForStyle:(id)style isSuggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  styleCopy = style;
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  v9 = [delegate stylePickerComponentViewController:self coordinatorForStyle:styleCopy isSuggested:suggestedCopy];

  return v9;
}

- (void)stylePickerComponentViewController:(id)controller didSelectStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle userSelected:(BOOL)selected
{
  suggestedStyleCopy = suggestedStyle;
  styleCopy = style;
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  v9 = [delegate stylePickerComponentViewController:self coordinatorForStyle:styleCopy isSuggested:suggestedStyleCopy];
}

- (void)stylePickerComponentViewControllerDidChangeHeight:(id)height
{
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  [delegate stylePickerComponentViewControllerDidChangeHeight:self];
}

- (id)coordinatorForStyle:(id)style isSuggestedStyle:(BOOL)suggestedStyle fromDataSource:(id)source
{
  suggestedStyleCopy = suggestedStyle;
  styleCopy = style;
  delegate = [(PUIStylePickerComponentViewController *)self delegate];
  v9 = [delegate stylePickerComponentViewController:self coordinatorForStyle:styleCopy isSuggested:suggestedStyleCopy];

  return v9;
}

- (PUIStylePickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end