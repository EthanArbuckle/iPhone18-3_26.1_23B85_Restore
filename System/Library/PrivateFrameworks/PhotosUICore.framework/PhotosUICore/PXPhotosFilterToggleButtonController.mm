@interface PXPhotosFilterToggleButtonController
- (BOOL)isUsingCustomSortOrder;
- (BOOL)shouldHighlightOnCustomSortOrder;
- (PXPhotosFilterToggleButtonController)initWithButtonConfiguration:(id)configuration roundedButton:(BOOL)button;
- (PXPhotosFilterToggleButtonController)initWithViewModel:(id)model buttonConfiguration:(id)configuration actionPerformer:(id)performer;
- (id)allMenuItems;
- (id)customDefaultImageName;
- (id)filterMenuItems;
- (id)filterMenuSubtitle;
- (id)viewOptionsMenuItems;
- (id)viewOptionsMenuSubtitle;
- (void)_updateContentFilterState;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAdditionalMenuItems:(id)items;
- (void)setBackgroundColor:(id)color;
- (void)setForegroundColor:(id)color;
@end

@implementation PXPhotosFilterToggleButtonController

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXPhotosViewModelObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:235 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x2000000) != 0)
  {
    [(PXPhotosFilterToggleButtonController *)self _updateContentFilterState];
  }

  if ((*&changeCopy & 0x9C000) != 0)
  {
    [(PXContentFilterToggleButtonController *)self invalidateButtonMenu];
  }
}

- (BOOL)shouldHighlightOnCustomSortOrder
{
  viewModel = [(PXPhotosFilterToggleButtonController *)self viewModel];
  if ([viewModel gridStyle] == 6)
  {
    v5 = 0;
  }

  else
  {
    viewOptionsModel = [viewModel viewOptionsModel];
    sortOrderMenu = [viewOptionsModel sortOrderMenu];

    if (sortOrderMenu)
    {
      v5 = PFIsPhotosAppAnyPlatform();
    }

    else
    {
      dataSourceManager = [viewModel dataSourceManager];
      dataSource = [dataSourceManager dataSource];
      container = [dataSource container];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v5 = 1;
      }

      else
      {
        dataSourceManager2 = [viewModel dataSourceManager];
        dataSource2 = [dataSourceManager2 dataSource];
        containerCollection = [dataSource2 containerCollection];

        v5 = containerCollection == 0;
        if (containerCollection)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            px_descriptionForAssertionMessage = [containerCollection px_descriptionForAssertionMessage];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:215 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"viewModel.dataSourceManager.dataSource.containerCollection", v17, px_descriptionForAssertionMessage}];
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)isUsingCustomSortOrder
{
  viewModel = [(PXPhotosFilterToggleButtonController *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];
  sortOrderMenu = [viewOptionsModel sortOrderMenu];

  if (!sortOrderMenu)
  {
    dataSourceManager = [viewModel dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    container = [dataSource container];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      reverseSortOrder = [container assetSortOrder] == 1;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      reverseSortOrder = [viewModel reverseSortOrder];
      goto LABEL_23;
    }

    dataSourceManager2 = [viewModel dataSourceManager];
    dataSource2 = [dataSourceManager2 dataSource];
    containerCollection = [dataSource2 containerCollection];

    if (containerCollection)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        px_descriptionForAssertionMessage = [containerCollection px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:180 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"viewModel.dataSourceManager.dataSource.containerCollection", v20, px_descriptionForAssertionMessage}];
      }

      customSortAscending = [containerCollection customSortAscending];
      if ([containerCollection px_isStreamSharedAlbum])
      {
        if (customSortAscending)
        {
          v16 = [containerCollection customSortKey] == 6;
          goto LABEL_17;
        }
      }

      else
      {
        if (![containerCollection px_isUserCreated])
        {
          reverseSortOrder = [viewModel reverseSortOrder];
          goto LABEL_22;
        }

        if (customSortAscending)
        {
          v16 = [containerCollection customSortKey] == 1;
LABEL_17:
          reverseSortOrder = !v16;
          goto LABEL_22;
        }
      }

      reverseSortOrder = 1;
    }

    else
    {
      reverseSortOrder = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  container = [viewModel viewOptionsModel];
  sortOrderState = [container sortOrderState];
  reverseSortOrder = [sortOrderState sortOrder] != 1;

LABEL_23:
  return reverseSortOrder;
}

- (id)customDefaultImageName
{
  additionalMenuItems = [(PXPhotosFilterToggleButtonController *)self additionalMenuItems];
  if (additionalMenuItems)
  {

LABEL_4:
    customDefaultImageName = @"ellipsis";
    goto LABEL_5;
  }

  contentFilterState = [(PXContentFilterToggleButtonController *)self contentFilterState];
  isSearchResultsFilterButton = [contentFilterState isSearchResultsFilterButton];

  if (isSearchResultsFilterButton)
  {
    goto LABEL_4;
  }

  v8.receiver = self;
  v8.super_class = PXPhotosFilterToggleButtonController;
  customDefaultImageName = [(PXContentFilterToggleButtonController *)&v8 customDefaultImageName];
LABEL_5:

  return customDefaultImageName;
}

- (id)allMenuItems
{
  viewModel = [(PXPhotosFilterToggleButtonController *)self viewModel];

  if (!viewModel)
  {
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  actionPerformer = [(PXPhotosFilterToggleButtonController *)self actionPerformer];

  if (!actionPerformer)
  {
    v6 = [PXPhotosGridShowFiltersMenuActionPerformer alloc];
    viewModel2 = [(PXPhotosFilterToggleButtonController *)self viewModel];
    v8 = [(PXPhotosGridActionPerformer *)v6 initWithViewModel:viewModel2 actionType:*off_1E7722100];
    [(PXPhotosFilterToggleButtonController *)self setActionPerformer:v8];
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  actionPerformer2 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    button = [(PXContentFilterToggleButtonController *)self button];
    actionPerformer3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    [actionPerformer3 setSender:button];

    actionPerformer4 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v15 = [actionPerformer4 performSelector:sel_menuElement];

    v16 = v15;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        children = [v16 children];
        v18 = [children mutableCopy];

        v9 = v18;
        goto LABEL_8;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      px_descriptionForAssertionMessage = [v16 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"filterMenuElement", v25, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"filterMenuElement", v25}];
    }

    goto LABEL_7;
  }

LABEL_8:
  additionalMenuItems = [(PXPhotosFilterToggleButtonController *)self additionalMenuItems];

  if (additionalMenuItems)
  {
    additionalMenuItems2 = [(PXPhotosFilterToggleButtonController *)self additionalMenuItems];
    [v9 addObjectsFromArray:additionalMenuItems2];
  }

  v21 = [v9 copy];

LABEL_12:

  return v21;
}

- (id)viewOptionsMenuSubtitle
{
  actionPerformer = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    actionPerformer2 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v6 = [actionPerformer2 performSelector:sel_viewOptionsMenuSubtitle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewOptionsMenuItems
{
  actionPerformer = [(PXPhotosFilterToggleButtonController *)self actionPerformer];

  if (!actionPerformer)
  {
    v4 = [PXPhotosGridShowFiltersMenuActionPerformer alloc];
    viewModel = [(PXPhotosFilterToggleButtonController *)self viewModel];
    v6 = [(PXPhotosGridActionPerformer *)v4 initWithViewModel:viewModel actionType:*off_1E7722100];
    [(PXPhotosFilterToggleButtonController *)self setActionPerformer:v6];
  }

  actionPerformer2 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    actionPerformer3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v10 = [actionPerformer3 performSelector:sel_viewOptionsMenuItems];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)filterMenuSubtitle
{
  actionPerformer = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    actionPerformer2 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v6 = [actionPerformer2 performSelector:sel_filterMenuSubtitle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)filterMenuItems
{
  actionPerformer = [(PXPhotosFilterToggleButtonController *)self actionPerformer];

  if (!actionPerformer)
  {
    v4 = [PXPhotosGridShowFiltersMenuActionPerformer alloc];
    viewModel = [(PXPhotosFilterToggleButtonController *)self viewModel];
    v6 = [(PXPhotosGridActionPerformer *)v4 initWithViewModel:viewModel actionType:*off_1E7722100];
    [(PXPhotosFilterToggleButtonController *)self setActionPerformer:v6];
  }

  actionPerformer2 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    actionPerformer3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v10 = [actionPerformer3 performSelector:sel_filterMenuItems];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (void)_updateContentFilterState
{
  contentFilterState = [(PXPhotosViewModel *)self->_viewModel contentFilterState];
  [(PXContentFilterToggleButtonController *)self setContentFilterState:contentFilterState];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v6 = self->_backgroundColor;
  v7 = v6;
  if (v6 == colorCopy)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:colorCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, color);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PXPhotosFilterToggleButtonController_setBackgroundColor___block_invoke;
      v9[3] = &unk_1E773DE58;
      v10 = colorCopy;
      [(PXContentFilterToggleButtonController *)self performChanges:v9];
    }
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  v6 = self->_foregroundColor;
  v7 = v6;
  if (v6 == colorCopy)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:colorCopy];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_foregroundColor, color);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PXPhotosFilterToggleButtonController_setForegroundColor___block_invoke;
      v9[3] = &unk_1E773DE58;
      v10 = colorCopy;
      [(PXContentFilterToggleButtonController *)self performChanges:v9];
    }
  }
}

- (void)setAdditionalMenuItems:(id)items
{
  itemsCopy = items;
  additionalMenuItems = self->_additionalMenuItems;
  if (additionalMenuItems != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)additionalMenuItems isEqual:itemsCopy];
    itemsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_additionalMenuItems;
      self->_additionalMenuItems = v7;

      [(PXContentFilterToggleButtonController *)self invalidateButton];
      itemsCopy = v9;
    }
  }
}

- (PXPhotosFilterToggleButtonController)initWithButtonConfiguration:(id)configuration roundedButton:(BOOL)button
{
  configurationCopy = configuration;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXPhotosFilterToggleButtonController initWithButtonConfiguration:roundedButton:]"}];

  abort();
}

- (PXPhotosFilterToggleButtonController)initWithViewModel:(id)model buttonConfiguration:(id)configuration actionPerformer:(id)performer
{
  modelCopy = model;
  performerCopy = performer;
  v14.receiver = self;
  v14.super_class = PXPhotosFilterToggleButtonController;
  v11 = [(PXContentFilterToggleButtonController *)&v14 initWithButtonConfiguration:configuration roundedButton:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, model);
    objc_storeStrong(&v12->_actionPerformer, performer);
    [(PXPhotosViewModel *)v12->_viewModel registerChangeObserver:v12 context:PXPhotosViewModelObserverContext];
    [(PXPhotosFilterToggleButtonController *)v12 _updateContentFilterState];
  }

  return v12;
}

@end