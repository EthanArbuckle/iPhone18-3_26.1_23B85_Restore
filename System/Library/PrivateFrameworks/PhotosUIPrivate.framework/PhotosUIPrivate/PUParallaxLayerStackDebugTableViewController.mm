@interface PUParallaxLayerStackDebugTableViewController
- (id)layerForIndexPath:(id)path;
- (id)layersSortedByViewDepth;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)requestNewZPositionForCellAtIndexPath:(id)path;
- (void)setLayerStackView:(id)view;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation PUParallaxLayerStackDebugTableViewController

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (([pathCopy isEqual:indexPathCopy] & 1) == 0)
  {
    v47 = viewCopy;
    layerStackView = [(PUParallaxLayerStackDebugTableViewController *)self layerStackView];
    viewModel = [layerStackView viewModel];

    v46 = viewModel;
    viewManager = [viewModel viewManager];
    v45 = [(PUParallaxLayerStackDebugTableViewController *)self layerForIndexPath:pathCopy];
    v14 = [viewManager viewForLayer:?];
    v15 = [(PUParallaxLayerStackDebugTableViewController *)self layerForIndexPath:indexPathCopy];
    v16 = [viewManager viewForLayer:v15];
    layersSortedByViewDepth = [(PUParallaxLayerStackDebugTableViewController *)self layersSortedByViewDepth];
    v18 = [layersSortedByViewDepth indexOfObject:v15];
    v44 = v14;
    layer = [v14 layer];
    [layer zPosition];
    v21 = v20;
    layer2 = [v16 layer];
    [layer2 zPosition];
    v24 = v23;

    if (v21 >= v24)
    {
      v33 = v18 + 1;
      if (v33 < [layersSortedByViewDepth count])
      {
        layer5 = [layersSortedByViewDepth objectAtIndexedSubscript:v33];
        v34 = [viewManager viewForLayer:layer5];
        layer3 = [v16 layer];
        [layer3 zPosition];
        v37 = v36;
        layer4 = [v34 layer];
        [layer4 zPosition];
        v32 = (v37 + v39) * 0.5;

        goto LABEL_10;
      }

      layer5 = [v16 layer];
      [layer5 zPosition];
      v41 = -5.0;
    }

    else
    {
      if (v18)
      {
        layer5 = [layersSortedByViewDepth objectAtIndexedSubscript:v18 - 1];
        v26 = [viewManager viewForLayer:layer5];
        layer6 = [v16 layer];
        [layer6 zPosition];
        v29 = v28;
        layer7 = [v26 layer];
        [layer7 zPosition];
        v32 = (v29 + v31) * 0.5;

LABEL_10:
        viewCopy = v47;

        layer8 = [v44 layer];
        [layer8 setZPosition:v32];

        v43 = dispatch_time(0, 250000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __89__PUParallaxLayerStackDebugTableViewController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke;
        block[3] = &unk_1E7B80C38;
        v49 = v47;
        v50 = indexPathCopy;
        dispatch_after(v43, MEMORY[0x1E69E96A0], block);

        goto LABEL_11;
      }

      layer5 = [v16 layer];
      [layer5 zPosition];
      v41 = 5.0;
    }

    v32 = v40 + v41;
    goto LABEL_10;
  }

LABEL_11:
}

void __89__PUParallaxLayerStackDebugTableViewController_tableView_moveRowAtIndexPath_toIndexPath___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 reconfigureRowsAtIndexPaths:v2];
}

- (void)requestNewZPositionForCellAtIndexPath:(id)path
{
  pathCopy = path;
  layerStackView = [(PUParallaxLayerStackDebugTableViewController *)self layerStackView];
  viewModel = [layerStackView viewModel];

  viewManager = [viewModel viewManager];
  v8 = [(PUParallaxLayerStackDebugTableViewController *)self layerForIndexPath:pathCopy];
  v9 = [viewManager viewForLayer:v8];
  v10 = MEMORY[0x1E69DC650];
  v11 = [(PUParallaxLayerStackDebugTableViewController *)self labelForLayer:v8];
  v12 = [v10 alertControllerWithTitle:v11 message:@"Z position:" preferredStyle:1];

  objc_initWeak(&location, v12);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __86__PUParallaxLayerStackDebugTableViewController_requestNewZPositionForCellAtIndexPath___block_invoke;
  v21[3] = &unk_1E7B7E630;
  v13 = v9;
  v22 = v13;
  [v12 addTextFieldWithConfigurationHandler:v21];
  v14 = MEMORY[0x1E69DC648];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__PUParallaxLayerStackDebugTableViewController_requestNewZPositionForCellAtIndexPath___block_invoke_2;
  v17[3] = &unk_1E7B7E658;
  objc_copyWeak(&v20, &location);
  v15 = v13;
  v18 = v15;
  selfCopy = self;
  v16 = [v14 actionWithTitle:@"OK" style:0 handler:v17];
  [v12 addAction:v16];

  [(PUParallaxLayerStackDebugTableViewController *)self presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v20);

  objc_destroyWeak(&location);
}

void __86__PUParallaxLayerStackDebugTableViewController_requestNewZPositionForCellAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 layer];
  [v7 zPosition];
  v6 = [v2 stringWithFormat:@"%g", v5];
  [v4 setText:v6];
}

void __86__PUParallaxLayerStackDebugTableViewController_requestNewZPositionForCellAtIndexPath___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained textFields];
  v4 = [v3 objectAtIndexedSubscript:0];
  v10 = [v4 text];

  [v10 doubleValue];
  v6 = v5;
  v7 = [a1[4] layer];
  [v7 setZPosition:v6];

  v8 = [a1[5] tableView];
  [v8 reloadData];

  v9 = objc_loadWeakRetained(a1 + 6);
  [v9 dismissViewControllerAnimated:1 completion:0];
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x1E69DC8D8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__PUParallaxLayerStackDebugTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
  v13[3] = &unk_1E7B7E608;
  objc_copyWeak(&v15, &location);
  v10 = pathCopy;
  v14 = v10;
  v11 = [v9 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v11;
}

id __106__PUParallaxLayerStackDebugTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.stack.3d.down.right"];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __106__PUParallaxLayerStackDebugTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
  v14 = &unk_1E7B7F4F0;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = *(a1 + 32);
  v6 = [v4 actionWithTitle:@"Change Z Position" image:v5 identifier:0 handler:&v11];

  v7 = MEMORY[0x1E69DCC60];
  v17[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];
  v9 = [v7 menuWithChildren:v8];

  objc_destroyWeak(&v16);

  return v9;
}

void __106__PUParallaxLayerStackDebugTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained requestNewZPositionForCellAtIndexPath:*(a1 + 32)];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  layerStackView = [(PUParallaxLayerStackDebugTableViewController *)self layerStackView];
  viewModel = [layerStackView viewModel];

  viewManager = [viewModel viewManager];
  v11 = [(PUParallaxLayerStackDebugTableViewController *)self layerForIndexPath:pathCopy];
  v12 = [viewManager viewForLayer:v11];
  [v12 setHidden:{objc_msgSend(v12, "isHidden") ^ 1}];
  v14[0] = pathCopy;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [viewCopy reconfigureRowsAtIndexPaths:v13];

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v41 = [view dequeueReusableCellWithIdentifier:@"layerCell" forIndexPath:pathCopy];
  valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
  layerStackView = [(PUParallaxLayerStackDebugTableViewController *)self layerStackView];
  viewModel = [layerStackView viewModel];

  v42 = viewModel;
  viewManager = [viewModel viewManager];
  v11 = [(PUParallaxLayerStackDebugTableViewController *)self layerForIndexPath:pathCopy];

  v12 = v11;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v14;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [viewManager viewForLayer:v16];
  if (v13)
  {
    v19 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithIOSurface:{CVPixelBufferGetIOSurface(objc_msgSend(v13, "image"))}];
  }

  else
  {
    if (v15)
    {
      v20 = MEMORY[0x1E69DCAB8];
      v21 = @"video";
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v20 = MEMORY[0x1E69DCAB8];
      v21 = @"arkit";
    }

    v19 = [v20 systemImageNamed:v21];
  }

  v22 = v19;
  [valueCellConfiguration setImage:v19];

LABEL_21:
  v40 = v13;
  v23 = v17;
  v24 = v15;
  imageProperties = [valueCellConfiguration imageProperties];
  [imageProperties setMaximumSize:{90.0, 120.0}];

  isHidden = [v18 isHidden];
  v27 = &stru_1F2AC6818;
  if (isHidden)
  {
    v27 = @"🚫 ";
  }

  v28 = v27;
  v29 = [(PUParallaxLayerStackDebugTableViewController *)self labelForLayer:v16];
  v30 = [(__CFString *)v28 stringByAppendingString:v29];

  [valueCellConfiguration setText:v30];
  v31 = MEMORY[0x1E696AEC0];
  layer = [v18 layer];
  [layer zPosition];
  v34 = [v31 stringWithFormat:@"Z: %g", v33];
  [valueCellConfiguration setSecondaryText:v34];

  if (isHidden)
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    textProperties = [valueCellConfiguration textProperties];
    [textProperties setColor:grayColor];

    listPlainCellConfiguration = [MEMORY[0x1E69DC6E8] listPlainCellConfiguration];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [listPlainCellConfiguration setBackgroundColor:secondarySystemBackgroundColor];
  }

  else
  {
    listPlainCellConfiguration = 0;
  }

  [v41 setContentConfiguration:valueCellConfiguration];
  [v41 setBackgroundConfiguration:listPlainCellConfiguration];

  return v41;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PUParallaxLayerStackDebugTableViewController *)self layerStackView:view];
  viewModel = [v4 viewModel];
  currentLayerStack = [viewModel currentLayerStack];
  layers = [currentLayerStack layers];
  v8 = [layers count];

  return v8;
}

- (id)layerForIndexPath:(id)path
{
  pathCopy = path;
  layersSortedByViewDepth = [(PUParallaxLayerStackDebugTableViewController *)self layersSortedByViewDepth];
  v6 = [pathCopy row];

  v7 = [layersSortedByViewDepth objectAtIndexedSubscript:v6];

  return v7;
}

- (id)layersSortedByViewDepth
{
  layerStackView = [(PUParallaxLayerStackDebugTableViewController *)self layerStackView];
  viewModel = [layerStackView viewModel];

  viewManager = [viewModel viewManager];
  currentLayerStack = [viewModel currentLayerStack];
  layers = [currentLayerStack layers];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__PUParallaxLayerStackDebugTableViewController_layersSortedByViewDepth__block_invoke;
  v10[3] = &unk_1E7B7E5E0;
  v11 = viewManager;
  v7 = viewManager;
  v8 = [layers sortedArrayUsingComparator:v10];

  return v8;
}

uint64_t __71__PUParallaxLayerStackDebugTableViewController_layersSortedByViewDepth__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 viewForLayer:a2];
  v8 = [*(a1 + 32) viewForLayer:v6];

  v9 = [v7 layer];
  [v9 zPosition];
  v11 = v10;

  v12 = [v8 layer];
  [v12 zPosition];
  v14 = v13;

  if (v11 <= v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (void)setLayerStackView:(id)view
{
  viewCopy = view;
  if (self->_layerStackView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_layerStackView, view);
    tableView = [(PUParallaxLayerStackDebugTableViewController *)self tableView];
    [tableView reloadData];

    viewCopy = v7;
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PUParallaxLayerStackDebugTableViewController;
  [(PUParallaxLayerStackDebugTableViewController *)&v5 viewDidLoad];
  tableView = [(PUParallaxLayerStackDebugTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"layerCell"];

  tableView2 = [(PUParallaxLayerStackDebugTableViewController *)self tableView];
  [tableView2 _setAllowsReorderingWhenNotEditing:1];
}

@end