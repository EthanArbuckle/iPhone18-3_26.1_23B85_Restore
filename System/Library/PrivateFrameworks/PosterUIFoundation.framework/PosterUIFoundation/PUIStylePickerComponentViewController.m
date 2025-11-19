@interface PUIStylePickerComponentViewController
- (BOOL)shouldShowContentStyleItems;
- (PUIStylePickerComponentViewController)init;
- (PUIStylePickerComponentViewController)initWithConfiguration:(id)a3;
- (PUIStylePickerComponentViewControllerDelegate)delegate;
- (double)estimatedHeight;
- (id)coordinatorForStyle:(id)a3 isSuggestedStyle:(BOOL)a4 fromDataSource:(id)a5;
- (id)stylePickerComponentViewController:(id)a3 coordinatorForStyle:(id)a4 isSuggested:(BOOL)a5;
- (void)_didSelectContentStyle:(id)a3 isSuggestedStyle:(BOOL)a4;
- (void)colorSliderDidUpdateVariation:(id)a3;
- (void)loadItemsViewControllerIfNeeded;
- (void)loadView;
- (void)setContentsLuminance:(double)a3;
- (void)styleItemsViewController:(id)a3 didSelectContentStyleCoordinator:(id)a4;
- (void)styleItemsViewControllerDidUpdateEstimatedSize:(id)a3;
- (void)stylePickerComponentViewController:(id)a3 didSelectStyle:(id)a4 isSuggestedStyle:(BOOL)a5 userSelected:(BOOL)a6;
- (void)stylePickerComponentViewControllerDidChangeHeight:(id)a3;
- (void)updateSliderVisibility:(BOOL)a3;
@end

@implementation PUIStylePickerComponentViewController

- (PUIStylePickerComponentViewController)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUIStylePickerComponentViewController;
  v6 = [(PUIStylePickerComponentViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
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
        v7 = [(PUIStyleItemsViewController *)v6 colorWellView];
        colorWellView = self->_colorWellView;
        self->_colorWellView = v7;
        v9 = v7;

        v10 = [(PUIColorWellView *)v9 colorWell];
        colorWell = self->_colorWell;
        self->_colorWell = v10;
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

    v8 = [MEMORY[0x1E69DC888] labelColor];
    [v4 setTextColor:v8];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v4];
  }

  else
  {
    v4 = 0;
  }

  [(PUIStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  v9 = [(PUIStylePickerComponentViewController *)self itemsViewController];
  v10 = [v9 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = 0x1E695D000uLL;
  v12 = [MEMORY[0x1E695DF70] array];
  v72 = v10;
  [v12 addObject:v10];
  v13 = [v9 selectedStyleCoordinator];
  v14 = [(PUIStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_6];

  v71 = v13;
  if (!v13)
  {
    v15 = [(PUIStylePickerComponentViewController *)self delegate];
    v16 = [0 style];
    [v15 stylePickerComponentViewController:self didSelectStyle:v16 isSuggestedStyle:objc_msgSend(0 userSelected:{"isSuggested"), 0}];
  }

  if (v14)
  {
    v17 = [PUIStyleVariationSlider alloc];
    v18 = [(PUIStyleConfiguration *)self->_configuration identifier];
    v19 = [(PUIStyleVariationSlider *)v17 initWithStyleCoordinator:v71 contextIdentifier:v18];

    [(PUIStyleVariationSlider *)v19 addTarget:self action:sel_colorSliderDidUpdateVariation_ forControlEvents:4096];
    v20 = [v9 selectedStyleCoordinator];
    v21 = [v20 style];
    v22 = [v21 allowsVariation];

    if ((v22 & 1) == 0)
    {
      [(PUIStyleVariationSlider *)v19 setHidden:1];
    }

    objc_storeStrong(&self->_sliderView, v19);
    [v12 addObject:v19];
    v23 = v19;
    v11 = 0x1E695D000;
  }

  else
  {
    v23 = 0;
  }

  v65 = v12;
  v24 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:v12];
  [v24 setAxis:1];
  [v24 setAlignment:3];
  [v24 setSpacing:24.0];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_verticalStack, v24);
  [v3 addSubview:v24];
  [(PUIStylePickerComponentViewController *)self addChildViewController:v9];
  [(PUIStylePickerComponentViewController *)self setView:v3];
  v66 = v9;
  [v9 didMoveToParentViewController:self];
  v25 = [*(v11 + 3952) array];
  v73 = v3;
  v67 = v4;
  if (self->_showsHeader)
  {
    v69 = [v4 leadingAnchor];
    v63 = [v3 leadingAnchor];
    v26 = [v69 constraintEqualToAnchor:v63 constant:20.0];
    v77[0] = v26;
    v27 = [v4 topAnchor];
    v61 = [v3 topAnchor];
    v59 = [v27 constraintEqualToAnchor:v61 constant:10.0];
    v77[1] = v59;
    v28 = [v24 topAnchor];
    v29 = [v4 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:20.0];
    v77[2] = v30;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    v32 = v31 = v23;
    v33 = v25;
    [v25 addObjectsFromArray:v32];

    v23 = v31;
    v34 = v63;

    v35 = v69;
  }

  else
  {
    v35 = [v24 topAnchor];
    v34 = [v3 topAnchor];
    v26 = [v35 constraintEqualToAnchor:v34];
    v76 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v33 = v25;
    [v25 addObjectsFromArray:v27];
  }

  v68 = v33;

  v36 = 0x1E695D000;
  v70 = v23;
  if (v23)
  {
    v37 = [(PUIStyleVariationSlider *)v23 heightAnchor];
    +[PUIStyleVariationSlider defaultHeight];
    v38 = [v37 constraintEqualToConstant:?];
    v75[0] = v38;
    v39 = [(PUIStyleVariationSlider *)v23 leadingAnchor];
    v40 = [v24 leadingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:36.0];
    v75[1] = v41;
    v42 = [(PUIStyleVariationSlider *)v70 trailingAnchor];
    v43 = [v24 trailingAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:-36.0];
    v75[2] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
    [v68 addObjectsFromArray:v45];

    v36 = 0x1E695D000uLL;
  }

  v64 = [v72 leadingAnchor];
  v62 = [v24 leadingAnchor];
  v60 = [v64 constraintEqualToAnchor:v62];
  v74[0] = v60;
  v58 = [v72 trailingAnchor];
  v57 = [v24 trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v74[1] = v56;
  v55 = [v24 leadingAnchor];
  v54 = [v73 leadingAnchor];
  v46 = [v55 constraintEqualToAnchor:v54];
  v74[2] = v46;
  v47 = [v24 trailingAnchor];
  v48 = [v73 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  v74[3] = v49;
  v50 = [v24 bottomAnchor];
  v51 = [v73 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
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
  v2 = [(PUIStylePickerComponentViewController *)self itemsViewController];
  v3 = [v2 configuration];
  v4 = [v3 stylePalette];
  v5 = [v4 styles];
  v6 = [v5 count];

  return v6 < 2;
}

- (void)setContentsLuminance:(double)a3
{
  self->_contentsLuminance = a3;
  if ([(PUIStylePickerComponentViewController *)self isViewLoaded])
  {
    itemsViewController = self->_itemsViewController;

    [(PUIStyleItemsViewController *)itemsViewController setContentsLuminance:a3];
  }
}

- (double)estimatedHeight
{
  [(PUIStylePickerComponentViewController *)self loadItemsViewControllerIfNeeded];
  [(PUIStyleItemsViewController *)self->_itemsViewController estimatedHeight];
  v4 = v3;
  if (self->_sliderView)
  {
    v5 = [(PUIStyleItemsViewController *)self->_itemsViewController selectedStyleCoordinator];
    v6 = [v5 style];
    if ([v6 allowsVariation])
    {
      v7 = [(PUIStylePickerComponentViewController *)self shouldShowContentStyleItems];

      if (!v7)
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

- (void)updateSliderVisibility:(BOOL)a3
{
  [(PUIStyleVariationSlider *)self->_sliderView setHidden:!a3];
  v4 = [(PUIStylePickerComponentViewController *)self delegate];
  [v4 stylePickerComponentViewControllerDidChangeHeight:self];
}

- (void)_didSelectContentStyle:(id)a3 isSuggestedStyle:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUIStylePickerComponentViewController *)self delegate];
  [v7 stylePickerComponentViewController:self didSelectStyle:v6 isSuggestedStyle:v4 userSelected:1];
}

- (void)colorSliderDidUpdateVariation:(id)a3
{
  v4 = [(PUIStyleItemsViewController *)self->_itemsViewController selectedStyleCoordinator];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 style];
    -[PUIStylePickerComponentViewController _didSelectContentStyle:isSuggestedStyle:](self, "_didSelectContentStyle:isSuggestedStyle:", v5, [v6 isSuggested]);

    v4 = v6;
  }
}

- (void)styleItemsViewController:(id)a3 didSelectContentStyleCoordinator:(id)a4
{
  v5 = a4;
  v6 = [v5 style];
  v7 = [v6 allowsVariation];

  v8 = [(PUIStyleItemsDataSource *)self->_dataSource firstCoordinatorPassingTest:&__block_literal_global_20];

  if (v8 && v7 == [(PUIStyleVariationSlider *)self->_sliderView isHidden])
  {
    [(PUIStylePickerComponentViewController *)self updateSliderVisibility:v7];
  }

  [(PUIStyleVariationSlider *)self->_sliderView setStyleCoordinator:v5];
  v10 = [v5 style];
  v9 = [v5 isSuggested];

  [(PUIStylePickerComponentViewController *)self _didSelectContentStyle:v10 isSuggestedStyle:v9];
}

uint64_t __99__PUIStylePickerComponentViewController_styleItemsViewController_didSelectContentStyleCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 style];
  v3 = [v2 allowsVariation];

  return v3;
}

- (void)styleItemsViewControllerDidUpdateEstimatedSize:(id)a3
{
  v4 = [(PUIStylePickerComponentViewController *)self delegate];
  [v4 stylePickerComponentViewControllerDidChangeHeight:self];
}

- (id)stylePickerComponentViewController:(id)a3 coordinatorForStyle:(id)a4 isSuggested:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [(PUIStylePickerComponentViewController *)self delegate];
  v9 = [v8 stylePickerComponentViewController:self coordinatorForStyle:v7 isSuggested:v5];

  return v9;
}

- (void)stylePickerComponentViewController:(id)a3 didSelectStyle:(id)a4 isSuggestedStyle:(BOOL)a5 userSelected:(BOOL)a6
{
  v6 = a5;
  v10 = a4;
  v8 = [(PUIStylePickerComponentViewController *)self delegate];
  v9 = [v8 stylePickerComponentViewController:self coordinatorForStyle:v10 isSuggested:v6];
}

- (void)stylePickerComponentViewControllerDidChangeHeight:(id)a3
{
  v4 = [(PUIStylePickerComponentViewController *)self delegate];
  [v4 stylePickerComponentViewControllerDidChangeHeight:self];
}

- (id)coordinatorForStyle:(id)a3 isSuggestedStyle:(BOOL)a4 fromDataSource:(id)a5
{
  v5 = a4;
  v7 = a3;
  v8 = [(PUIStylePickerComponentViewController *)self delegate];
  v9 = [v8 stylePickerComponentViewController:self coordinatorForStyle:v7 isSuggested:v5];

  return v9;
}

- (PUIStylePickerComponentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end