@interface PUPhotoPickerFileSizeToolbarProvider
- (BOOL)shouldShowToolbar;
- (NSArray)toolbarItems;
- (PUPhotoPickerFileSizeToolbarProvider)initWithDataSource:(id)source;
- (PUPhotoPickerFileSizeToolbarProviderDelegate)delegate;
- (id)_computeSelectedIndexPath;
- (id)_localizedLabelForResizeTaskDescriptor:(id)descriptor;
- (id)_orderedResizeTaskDescriptors;
- (id)_orderedResizeTaskDescriptorsForCurrentlySelectedAssets;
- (id)_sizePickerItem;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_presentSizePicker:(id)picker;
- (void)_updateSizePickerItemIfNeeded;
- (void)_updateTableViewSelection;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation PUPhotoPickerFileSizeToolbarProvider

- (PUPhotoPickerFileSizeToolbarProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_computeSelectedIndexPath
{
  if (self->_selectedTaskDescriptor)
  {
    _orderedResizeTaskDescriptorsForCurrentlySelectedAssets = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptorsForCurrentlySelectedAssets];
    v5 = [_orderedResizeTaskDescriptorsForCurrentlySelectedAssets indexOfObject:self->_selectedTaskDescriptor];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateTableViewSelection
{
  tableView = [(UITableViewController *)self->_sizePickerViewController tableView];
  _computeSelectedIndexPath = [(PUPhotoPickerFileSizeToolbarProvider *)self _computeSelectedIndexPath];
  if ([tableView numberOfRowsInSection:0])
  {
    v4 = 0;
    do
    {
      if (v4 == [_computeSelectedIndexPath row])
      {
        v5 = 3;
      }

      else
      {
        v5 = 0;
      }

      v6 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
      v7 = [tableView cellForRowAtIndexPath:v6];
      [v7 setAccessoryType:v5];

      ++v4;
    }

    while (v4 < [tableView numberOfRowsInSection:0]);
  }
}

- (void)_updateSizePickerItemIfNeeded
{
  _orderedResizeTaskDescriptorsForCurrentlySelectedAssets = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptorsForCurrentlySelectedAssets];
  if (!self->_selectedTaskDescriptor || ([_orderedResizeTaskDescriptorsForCurrentlySelectedAssets containsObject:?] & 1) == 0)
  {
    lastObject = [_orderedResizeTaskDescriptorsForCurrentlySelectedAssets lastObject];
    selectedTaskDescriptor = self->_selectedTaskDescriptor;
    self->_selectedTaskDescriptor = lastObject;
  }

  v5 = [(PUPhotoPickerFileSizeToolbarProvider *)self _localizedLabelForResizeTaskDescriptor:self->_selectedTaskDescriptor];
  [(UILabel *)self->_sizePickerDescriptionLabel setText:v5];
}

- (id)_localizedLabelForResizeTaskDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  selectedAssets = [WeakRetained selectedAssets];

  v7 = [MEMORY[0x1E695DFD8] setWithArray:selectedAssets];
  if (![(NSSet *)self->_cachedAssetSet isEqualToSet:v7])
  {
    taskDescriptorsToCachedLabels = self->_taskDescriptorsToCachedLabels;
    self->_taskDescriptorsToCachedLabels = 0;

    objc_storeStrong(&self->_cachedAssetSet, v7);
  }

  v9 = [(NSMutableDictionary *)self->_taskDescriptorsToCachedLabels objectForKeyedSubscript:descriptorCopy];
  if (!v9)
  {
    if (!self->_taskDescriptorsToCachedLabels)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v11 = self->_taskDescriptorsToCachedLabels;
      self->_taskDescriptorsToCachedLabels = dictionary;
    }

    v9 = [descriptorCopy localizedDescriptionForAssets:selectedAssets];
    [(NSMutableDictionary *)self->_taskDescriptorsToCachedLabels setObject:v9 forKeyedSubscript:descriptorCopy];
  }

  return v9;
}

- (void)_presentSizePicker:(id)picker
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:1];
    sizePickerViewController = self->_sizePickerViewController;
    self->_sizePickerViewController = v6;

    v8 = PULocalizedString(@"SIZE_PICKER_TITLE");
    navigationItem = [(UITableViewController *)self->_sizePickerViewController navigationItem];
    [navigationItem setTitle:v8];

    tableView = [(UITableViewController *)self->_sizePickerViewController tableView];
    [tableView setDataSource:self];

    tableView2 = [(UITableViewController *)self->_sizePickerViewController tableView];
    [tableView2 setDelegate:self];

    tableView3 = [(UITableViewController *)self->_sizePickerViewController tableView];
    [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Size picker cell"];

    [(PUPhotoPickerFileSizeToolbarProvider *)self _updateTableViewSelection];
    self->_preparingToPresentSizePickerViewController = 1;
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 photoPickerFileSizeToolbarProvider:self presentSizePickerViewController:self->_sizePickerViewController];

    self->_preparingToPresentSizePickerViewController = 0;
  }
}

- (id)_orderedResizeTaskDescriptorsForCurrentlySelectedAssets
{
  v29 = *MEMORY[0x1E69E9840];
  _orderedResizeTaskDescriptors = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptors];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  selectedAssets = [WeakRetained selectedAssets];

  if ([selectedAssets count])
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    array = [MEMORY[0x1E695DF70] array];
    lastObject = [_orderedResizeTaskDescriptors lastObject];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(lastObject, "estimatedSizeForAssets:", selectedAssets)}];
    v22 = lastObject;
    v23 = array;
    [array addObject:lastObject];
    v21 = v9;
    [v6 addObject:v9];
    v10 = [_orderedResizeTaskDescriptors count];
    v11 = v10 - 1;
    if (v10 != 1)
    {
      v12 = 0;
      do
      {
        v13 = [_orderedResizeTaskDescriptors objectAtIndexedSubscript:v12];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v14 = selectedAssets;
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v25;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([v13 appliesToAsset:*(*(&v24 + 1) + 8 * i)])
              {
                v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v13, "estimatedSizeForAssets:", v14)}];
                if (([v6 containsObject:v19] & 1) == 0)
                {
                  [v23 insertObject:v13 atIndex:{objc_msgSend(v23, "count") - 1}];
                  [v6 addObject:v19];
                }

                goto LABEL_16;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        ++v12;
      }

      while (v12 != v11);
    }
  }

  else
  {
    v23 = _orderedResizeTaskDescriptors;
  }

  return v23;
}

- (id)_orderedResizeTaskDescriptors
{
  v11[4] = *MEMORY[0x1E69E9840];
  resizeTaskDescriptors = self->_resizeTaskDescriptors;
  if (!resizeTaskDescriptors)
  {
    v4 = +[PUPhotoPickerResizeTaskDescriptor defaultSmallDescriptor];
    v5 = +[PUPhotoPickerResizeTaskDescriptor defaultMediumDescriptor];
    v6 = +[PUPhotoPickerResizeTaskDescriptor defaultLargeDescriptor];
    v7 = +[PUPhotoPickerResizeTaskDescriptor defaultActualSizeDescriptor];
    v11[0] = v6;
    v11[1] = v5;
    v11[2] = v4;
    v11[3] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
    v9 = self->_resizeTaskDescriptors;
    self->_resizeTaskDescriptors = v8;

    resizeTaskDescriptors = self->_resizeTaskDescriptors;
  }

  return resizeTaskDescriptors;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  _orderedResizeTaskDescriptorsForCurrentlySelectedAssets = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptorsForCurrentlySelectedAssets];
  v8 = [pathCopy row];

  v9 = [_orderedResizeTaskDescriptorsForCurrentlySelectedAssets objectAtIndexedSubscript:v8];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(_orderedResizeTaskDescriptorsForCurrentlySelectedAssets) = objc_opt_respondsToSelector();

  if (_orderedResizeTaskDescriptorsForCurrentlySelectedAssets)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 photoPickerFileSizeToolbarProvider:self didSelectResizeTaskDescriptor:v9];
  }

  selectedTaskDescriptor = self->_selectedTaskDescriptor;
  self->_selectedTaskDescriptor = v9;

  [(PUPhotoPickerFileSizeToolbarProvider *)self _updateTableViewSelection];

  [(PUPhotoPickerFileSizeToolbarProvider *)self _updateSizePickerItemIfNeeded];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  _orderedResizeTaskDescriptorsForCurrentlySelectedAssets = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptorsForCurrentlySelectedAssets];
  v9 = [_orderedResizeTaskDescriptorsForCurrentlySelectedAssets objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v10 = [viewCopy dequeueReusableCellWithIdentifier:@"Size picker cell" forIndexPath:pathCopy];

  localizedDescription = [v9 localizedDescription];
  textLabel = [v10 textLabel];
  [textLabel setText:localizedDescription];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptorsForCurrentlySelectedAssets:view];
  v5 = [v4 count];

  return v5;
}

- (id)_sizePickerItem
{
  v16[2] = *MEMORY[0x1E69E9840];
  sizePickerItem = self->_sizePickerItem;
  if (!sizePickerItem)
  {
    v4 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    v5 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v6 = PULocalizedString(@"SIZE_PICKER_CHOOSE_SIZE");
    [v5 setTitle:v6 forState:0];

    titleLabel = [v5 titleLabel];
    [titleLabel setFont:v4];

    [v5 _setTouchInsets:{-12.0, -12.0, -12.0, -12.0}];
    [v5 addTarget:self action:sel__presentSizePicker_ forControlEvents:64];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    sizePickerDescriptionLabel = self->_sizePickerDescriptionLabel;
    self->_sizePickerDescriptionLabel = v8;

    [(UILabel *)self->_sizePickerDescriptionLabel setFont:v4];
    v10 = objc_alloc(MEMORY[0x1E69DCF90]);
    v16[0] = self->_sizePickerDescriptionLabel;
    v16[1] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v12 = [v10 initWithArrangedSubviews:v11];

    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setAxis:1];
    [v12 setDistribution:0];
    [v12 setAlignment:3];
    [v12 setLayoutMarginsRelativeArrangement:1];
    [v12 setLayoutMargins:{3.0, 0.0, -3.0, 0.0}];
    [v12 setBaselineRelativeArrangement:1];
    [v12 setSpacing:19.0];
    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v12];
    v14 = self->_sizePickerItem;
    self->_sizePickerItem = v13;

    sizePickerItem = self->_sizePickerItem;
  }

  return sizePickerItem;
}

- (NSArray)toolbarItems
{
  v13[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  isAnyAssetSelected = [WeakRetained isAnyAssetSelected];

  if (isAnyAssetSelected)
  {
    toolbarItems = self->_toolbarItems;
    if (toolbarItems)
    {
      v6 = toolbarItems;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
      _sizePickerItem = [(PUPhotoPickerFileSizeToolbarProvider *)self _sizePickerItem];
      v13[1] = _sizePickerItem;
      v13[2] = v8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
      v11 = self->_toolbarItems;
      self->_toolbarItems = v10;

      v6 = self->_toolbarItems;
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [(PUPhotoPickerFileSizeToolbarProvider *)self _updateSizePickerItemIfNeeded];

  return v6;
}

- (BOOL)shouldShowToolbar
{
  v27 = *MEMORY[0x1E69E9840];
  navigationController = [(UITableViewController *)self->_sizePickerViewController navigationController];
  if (self->_preparingToPresentSizePickerViewController)
  {
    goto LABEL_13;
  }

  presentingViewController = [(UITableViewController *)self->_sizePickerViewController presentingViewController];
  if (!presentingViewController)
  {
    if (navigationController)
    {
      topViewController = [navigationController topViewController];
      sizePickerViewController = self->_sizePickerViewController;

      if (topViewController == sizePickerViewController)
      {
        goto LABEL_13;
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    sessionInfo = [WeakRetained sessionInfo];
    if ([sessionInfo showsFileSizePicker])
    {
      v9 = objc_loadWeakRetained(&self->_dataSource);
      isAnyAssetSelected = [v9 isAnyAssetSelected];

      if (!isAnyAssetSelected)
      {
        goto LABEL_13;
      }

      v11 = objc_loadWeakRetained(&self->_dataSource);
      if (objc_opt_respondsToSelector())
      {
        v12 = objc_loadWeakRetained(&self->_dataSource);
        isAnyAssetDownloading = [v12 isAnyAssetDownloading];

        if (isAnyAssetDownloading)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v16 = objc_loadWeakRetained(&self->_dataSource);
      WeakRetained = [v16 selectedAssets];

      v17 = [WeakRetained countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (!v17)
      {
LABEL_24:

        _orderedResizeTaskDescriptorsForCurrentlySelectedAssets = [(PUPhotoPickerFileSizeToolbarProvider *)self _orderedResizeTaskDescriptorsForCurrentlySelectedAssets];
        v14 = [_orderedResizeTaskDescriptorsForCurrentlySelectedAssets count] > 1;

        goto LABEL_14;
      }

      v18 = v17;
      v19 = *v23;
LABEL_18:
      v20 = 0;
      while (1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(WeakRetained);
        }

        if (![PUPhotoPickerScaledFileSizeEstimator isAssetResizable:*(*(&v22 + 1) + 8 * v20)])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [WeakRetained countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v18)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
    }

    goto LABEL_13;
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (PUPhotoPickerFileSizeToolbarProvider)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = PUPhotoPickerFileSizeToolbarProvider;
  v5 = [(PUPhotoPickerFileSizeToolbarProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

@end