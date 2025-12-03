@interface PUParallaxLayerStackDebugStyleTableViewController
- (id)availableStyles;
- (id)indexPathForStyle:(id)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cellValueUpdated:(id)updated;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation PUParallaxLayerStackDebugStyleTableViewController

- (void)cellValueUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy accessoryType] == 3)
  {
    styleKind = [updatedCopy styleKind];
    availableStyles = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__PUParallaxLayerStackDebugStyleTableViewController_cellValueUpdated___block_invoke;
    v21[3] = &unk_1E7B79D50;
    v22 = styleKind;
    v7 = styleKind;
    v8 = [availableStyles indexOfObjectPassingTest:v21];

    availableStyles2 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
    v10 = [availableStyles2 objectAtIndexedSubscript:v8];

    v11 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v10];
    [updatedCopy applyToStyle:v11];
    viewModel = [(PUParallaxLayerStackDebugStyleTableViewController *)self viewModel];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __70__PUParallaxLayerStackDebugStyleTableViewController_cellValueUpdated___block_invoke_2;
    v19 = &unk_1E7B80328;
    v20 = v11;
    v13 = v11;
    [viewModel performChanges:&v16];

    v14 = [(PUParallaxLayerStackDebugStyleTableViewController *)self viewModelUpdater:v16];
    viewModel2 = [(PUParallaxLayerStackDebugStyleTableViewController *)self viewModel];
    [v14 renderOnscreenModelAfterStyleChange:viewModel2];
  }
}

uint64_t __70__PUParallaxLayerStackDebugStyleTableViewController_cellValueUpdated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  style = [(PUParallaxLayerStackViewModel *)self->_viewModel style];
  v8 = [(PUParallaxLayerStackDebugStyleTableViewController *)self indexPathForStyle:style];
  if ([pathCopy isEqual:v8])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else
  {
    v9 = [viewCopy cellForRowAtIndexPath:v8];
    [v9 setAccessoryType:0];

    v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
    [v10 setAccessoryType:3];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    tableView = [(PUParallaxLayerStackDebugStyleTableViewController *)self tableView];
    v12 = [tableView cellForRowAtIndexPath:pathCopy];

    [(PUParallaxLayerStackDebugStyleTableViewController *)self cellValueUpdated:v12];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"styleCell" forIndexPath:pathCopy];
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  availableStyles = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
  v10 = [availableStyles objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  style = [(PUParallaxLayerStackViewModel *)self->_viewModel style];
  v12 = [(PUParallaxLayerStackDebugStyleTableViewController *)self indexPathForStyle:style];
  kind = [v10 kind];
  [cellConfiguration setText:kind];

  segmentationItem = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
  availableStyles2 = [segmentationItem availableStyles];
  v16 = v10;
  v17 = PFFind();

  if (!v17)
  {
    text = [cellConfiguration text];
    v19 = [text stringByAppendingString:@" (not suggested)"];
    [cellConfiguration setText:v19];
  }

  [v7 setContentConfiguration:cellConfiguration];
  [v7 setStyleCellDelegate:self];
  if ([v12 isEqual:pathCopy])
  {
    [v7 rebuildControlsViewForStyle:style];
    [v7 setAccessoryType:3];
  }

  else
  {
    v20 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v16];
    [v7 rebuildControlsViewForStyle:v20];
    [v7 setAccessoryType:0];
  }

  return v7;
}

uint64_t __85__PUParallaxLayerStackDebugStyleTableViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles:view];
  v5 = [v4 count];

  return v5;
}

- (id)indexPathForStyle:(id)style
{
  styleCopy = style;
  if (!styleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"style"}];
  }

  availableStyles = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PUParallaxLayerStackDebugStyleTableViewController_indexPathForStyle___block_invoke;
  v12[3] = &unk_1E7B79D50;
  v13 = styleCopy;
  v7 = styleCopy;
  v8 = [availableStyles indexOfObjectPassingTest:v12];

  v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];

  return v9;
}

uint64_t __71__PUParallaxLayerStackDebugStyleTableViewController_indexPathForStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [*(a1 + 32) kind];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)availableStyles
{
  v30 = *MEMORY[0x1E69E9840];
  cachedAvailableStyles = self->_cachedAvailableStyles;
  if (!cachedAvailableStyles)
  {
    segmentationItem = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];

    if (!segmentationItem)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:229 description:@"editing requires a segmentation item"];
    }

    segmentationItem2 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
    colorAnalysis = [segmentationItem2 colorAnalysis];

    if (!colorAnalysis)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:230 description:@"editing requires color analysis"];
    }

    segmentationItem3 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
    availableStyles = [segmentationItem3 availableStyles];

    if (!availableStyles)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:231 description:@"expected available styles"];
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = PFParallaxLayerStyleSupportedKinds();
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          segmentationItem4 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
          v18 = [segmentationItem4 defaultStyleOfKind:v16];

          [v10 addObject:v18];
          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v19 = [v10 copy];
    v20 = self->_cachedAvailableStyles;
    self->_cachedAvailableStyles = v19;

    cachedAvailableStyles = self->_cachedAvailableStyles;
  }

  return cachedAvailableStyles;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PUParallaxLayerStackDebugStyleTableViewController;
  [(PUParallaxLayerStackDebugStyleTableViewController *)&v4 viewDidLoad];
  tableView = [(PUParallaxLayerStackDebugStyleTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"styleCell"];
}

@end