@interface PUParallaxLayerStackDebugStyleTableViewController
- (id)availableStyles;
- (id)indexPathForStyle:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cellValueUpdated:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation PUParallaxLayerStackDebugStyleTableViewController

- (void)cellValueUpdated:(id)a3
{
  v4 = a3;
  if ([v4 accessoryType] == 3)
  {
    v5 = [v4 styleKind];
    v6 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__PUParallaxLayerStackDebugStyleTableViewController_cellValueUpdated___block_invoke;
    v21[3] = &unk_1E7B79D50;
    v22 = v5;
    v7 = v5;
    v8 = [v6 indexOfObjectPassingTest:v21];

    v9 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
    v10 = [v9 objectAtIndexedSubscript:v8];

    v11 = [MEMORY[0x1E69BDEE0] styleWithBakedStyle:v10];
    [v4 applyToStyle:v11];
    v12 = [(PUParallaxLayerStackDebugStyleTableViewController *)self viewModel];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __70__PUParallaxLayerStackDebugStyleTableViewController_cellValueUpdated___block_invoke_2;
    v19 = &unk_1E7B80328;
    v20 = v11;
    v13 = v11;
    [v12 performChanges:&v16];

    v14 = [(PUParallaxLayerStackDebugStyleTableViewController *)self viewModelUpdater:v16];
    v15 = [(PUParallaxLayerStackDebugStyleTableViewController *)self viewModel];
    [v14 renderOnscreenModelAfterStyleChange:v15];
  }
}

uint64_t __70__PUParallaxLayerStackDebugStyleTableViewController_cellValueUpdated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 kind];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(PUParallaxLayerStackViewModel *)self->_viewModel style];
  v8 = [(PUParallaxLayerStackDebugStyleTableViewController *)self indexPathForStyle:v7];
  if ([v6 isEqual:v8])
  {
    [v13 deselectRowAtIndexPath:v6 animated:1];
  }

  else
  {
    v9 = [v13 cellForRowAtIndexPath:v8];
    [v9 setAccessoryType:0];

    v10 = [v13 cellForRowAtIndexPath:v6];
    [v10 setAccessoryType:3];

    [v13 deselectRowAtIndexPath:v6 animated:1];
    v11 = [(PUParallaxLayerStackDebugStyleTableViewController *)self tableView];
    v12 = [v11 cellForRowAtIndexPath:v6];

    [(PUParallaxLayerStackDebugStyleTableViewController *)self cellValueUpdated:v12];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"styleCell" forIndexPath:v6];
  v8 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v9 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v11 = [(PUParallaxLayerStackViewModel *)self->_viewModel style];
  v12 = [(PUParallaxLayerStackDebugStyleTableViewController *)self indexPathForStyle:v11];
  v13 = [v10 kind];
  [v8 setText:v13];

  v14 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
  v15 = [v14 availableStyles];
  v16 = v10;
  v17 = PFFind();

  if (!v17)
  {
    v18 = [v8 text];
    v19 = [v18 stringByAppendingString:@" (not suggested)"];
    [v8 setText:v19];
  }

  [v7 setContentConfiguration:v8];
  [v7 setStyleCellDelegate:self];
  if ([v12 isEqual:v6])
  {
    [v7 rebuildControlsViewForStyle:v11];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles:a3];
  v5 = [v4 count];

  return v5;
}

- (id)indexPathForStyle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"style"}];
  }

  v6 = [(PUParallaxLayerStackDebugStyleTableViewController *)self availableStyles];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PUParallaxLayerStackDebugStyleTableViewController_indexPathForStyle___block_invoke;
  v12[3] = &unk_1E7B79D50;
  v13 = v5;
  v7 = v5;
  v8 = [v6 indexOfObjectPassingTest:v12];

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
    v5 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];

    if (!v5)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:229 description:@"editing requires a segmentation item"];
    }

    v6 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
    v7 = [v6 colorAnalysis];

    if (!v7)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:230 description:@"editing requires color analysis"];
    }

    v8 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
    v9 = [v8 availableStyles];

    if (!v9)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"PUParallaxLayerStackDebugStyleTableViewController.m" lineNumber:231 description:@"expected available styles"];
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
          v17 = [(PUParallaxLayerStackViewModel *)self->_viewModel segmentationItem];
          v18 = [v17 defaultStyleOfKind:v16];

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
  v3 = [(PUParallaxLayerStackDebugStyleTableViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"styleCell"];
}

@end