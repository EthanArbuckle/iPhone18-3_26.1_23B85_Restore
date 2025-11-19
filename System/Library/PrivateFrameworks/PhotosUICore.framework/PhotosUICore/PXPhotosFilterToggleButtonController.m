@interface PXPhotosFilterToggleButtonController
- (BOOL)isUsingCustomSortOrder;
- (BOOL)shouldHighlightOnCustomSortOrder;
- (PXPhotosFilterToggleButtonController)initWithButtonConfiguration:(id)a3 roundedButton:(BOOL)a4;
- (PXPhotosFilterToggleButtonController)initWithViewModel:(id)a3 buttonConfiguration:(id)a4 actionPerformer:(id)a5;
- (id)allMenuItems;
- (id)customDefaultImageName;
- (id)filterMenuItems;
- (id)filterMenuSubtitle;
- (id)viewOptionsMenuItems;
- (id)viewOptionsMenuSubtitle;
- (void)_updateContentFilterState;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAdditionalMenuItems:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setForegroundColor:(id)a3;
@end

@implementation PXPhotosFilterToggleButtonController

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v10 = a3;
  if (PXPhotosViewModelObserverContext != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:235 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x2000000) != 0)
  {
    [(PXPhotosFilterToggleButtonController *)self _updateContentFilterState];
  }

  if ((*&v6 & 0x9C000) != 0)
  {
    [(PXContentFilterToggleButtonController *)self invalidateButtonMenu];
  }
}

- (BOOL)shouldHighlightOnCustomSortOrder
{
  v4 = [(PXPhotosFilterToggleButtonController *)self viewModel];
  if ([v4 gridStyle] == 6)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 viewOptionsModel];
    v7 = [v6 sortOrderMenu];

    if (v7)
    {
      v5 = PFIsPhotosAppAnyPlatform();
    }

    else
    {
      v8 = [v4 dataSourceManager];
      v9 = [v8 dataSource];
      v10 = [v9 container];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v5 = 1;
      }

      else
      {
        v11 = [v4 dataSourceManager];
        v12 = [v11 dataSource];
        v13 = [v12 containerCollection];

        v5 = v13 == 0;
        if (v13)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = [MEMORY[0x1E696AAA8] currentHandler];
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            v18 = [v13 px_descriptionForAssertionMessage];
            [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:215 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"viewModel.dataSourceManager.dataSource.containerCollection", v17, v18}];
          }
        }
      }
    }
  }

  return v5;
}

- (BOOL)isUsingCustomSortOrder
{
  v4 = [(PXPhotosFilterToggleButtonController *)self viewModel];
  v5 = [v4 viewOptionsModel];
  v6 = [v5 sortOrderMenu];

  if (!v6)
  {
    v10 = [v4 dataSourceManager];
    v11 = [v10 dataSource];
    v7 = [v11 container];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 assetSortOrder] == 1;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 reverseSortOrder];
      goto LABEL_23;
    }

    v12 = [v4 dataSourceManager];
    v13 = [v12 dataSource];
    v14 = [v13 containerCollection];

    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v14 px_descriptionForAssertionMessage];
        [v18 handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:180 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"viewModel.dataSourceManager.dataSource.containerCollection", v20, v21}];
      }

      v15 = [v14 customSortAscending];
      if ([v14 px_isStreamSharedAlbum])
      {
        if (v15)
        {
          v16 = [v14 customSortKey] == 6;
          goto LABEL_17;
        }
      }

      else
      {
        if (![v14 px_isUserCreated])
        {
          v9 = [v4 reverseSortOrder];
          goto LABEL_22;
        }

        if (v15)
        {
          v16 = [v14 customSortKey] == 1;
LABEL_17:
          v9 = !v16;
          goto LABEL_22;
        }
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

LABEL_22:

    goto LABEL_23;
  }

  v7 = [v4 viewOptionsModel];
  v8 = [v7 sortOrderState];
  v9 = [v8 sortOrder] != 1;

LABEL_23:
  return v9;
}

- (id)customDefaultImageName
{
  v3 = [(PXPhotosFilterToggleButtonController *)self additionalMenuItems];
  if (v3)
  {

LABEL_4:
    v6 = @"ellipsis";
    goto LABEL_5;
  }

  v4 = [(PXContentFilterToggleButtonController *)self contentFilterState];
  v5 = [v4 isSearchResultsFilterButton];

  if (v5)
  {
    goto LABEL_4;
  }

  v8.receiver = self;
  v8.super_class = PXPhotosFilterToggleButtonController;
  v6 = [(PXContentFilterToggleButtonController *)&v8 customDefaultImageName];
LABEL_5:

  return v6;
}

- (id)allMenuItems
{
  v4 = [(PXPhotosFilterToggleButtonController *)self viewModel];

  if (!v4)
  {
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_12;
  }

  v5 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];

  if (!v5)
  {
    v6 = [PXPhotosGridShowFiltersMenuActionPerformer alloc];
    v7 = [(PXPhotosFilterToggleButtonController *)self viewModel];
    v8 = [(PXPhotosGridActionPerformer *)v6 initWithViewModel:v7 actionType:*off_1E7722100];
    [(PXPhotosFilterToggleButtonController *)self setActionPerformer:v8];
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(PXContentFilterToggleButtonController *)self button];
    v13 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    [v13 setSender:v12];

    v14 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v15 = [v14 performSelector:sel_menuElement];

    v16 = v15;
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_7:
        v17 = [v16 children];
        v18 = [v17 mutableCopy];

        v9 = v18;
        goto LABEL_8;
      }

      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = objc_opt_class();
      v25 = NSStringFromClass(v26);
      v27 = [v16 px_descriptionForAssertionMessage];
      [v23 handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"filterMenuElement", v25, v27}];
    }

    else
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      [v23 handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"filterMenuElement", v25}];
    }

    goto LABEL_7;
  }

LABEL_8:
  v19 = [(PXPhotosFilterToggleButtonController *)self additionalMenuItems];

  if (v19)
  {
    v20 = [(PXPhotosFilterToggleButtonController *)self additionalMenuItems];
    [v9 addObjectsFromArray:v20];
  }

  v21 = [v9 copy];

LABEL_12:

  return v21;
}

- (id)viewOptionsMenuSubtitle
{
  v3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v6 = [v5 performSelector:sel_viewOptionsMenuSubtitle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewOptionsMenuItems
{
  v3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];

  if (!v3)
  {
    v4 = [PXPhotosGridShowFiltersMenuActionPerformer alloc];
    v5 = [(PXPhotosFilterToggleButtonController *)self viewModel];
    v6 = [(PXPhotosGridActionPerformer *)v4 initWithViewModel:v5 actionType:*off_1E7722100];
    [(PXPhotosFilterToggleButtonController *)self setActionPerformer:v6];
  }

  v7 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v10 = [v9 performSelector:sel_viewOptionsMenuItems];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)filterMenuSubtitle
{
  v3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v6 = [v5 performSelector:sel_filterMenuSubtitle];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)filterMenuItems
{
  v3 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];

  if (!v3)
  {
    v4 = [PXPhotosGridShowFiltersMenuActionPerformer alloc];
    v5 = [(PXPhotosFilterToggleButtonController *)self viewModel];
    v6 = [(PXPhotosGridActionPerformer *)v4 initWithViewModel:v5 actionType:*off_1E7722100];
    [(PXPhotosFilterToggleButtonController *)self setActionPerformer:v6];
  }

  v7 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PXPhotosFilterToggleButtonController *)self actionPerformer];
    v10 = [v9 performSelector:sel_filterMenuItems];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (void)_updateContentFilterState
{
  v3 = [(PXPhotosViewModel *)self->_viewModel contentFilterState];
  [(PXContentFilterToggleButtonController *)self setContentFilterState:v3];
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v6 = self->_backgroundColor;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_backgroundColor, a3);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PXPhotosFilterToggleButtonController_setBackgroundColor___block_invoke;
      v9[3] = &unk_1E773DE58;
      v10 = v5;
      [(PXContentFilterToggleButtonController *)self performChanges:v9];
    }
  }
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v6 = self->_foregroundColor;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(UIColor *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_foregroundColor, a3);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PXPhotosFilterToggleButtonController_setForegroundColor___block_invoke;
      v9[3] = &unk_1E773DE58;
      v10 = v5;
      [(PXContentFilterToggleButtonController *)self performChanges:v9];
    }
  }
}

- (void)setAdditionalMenuItems:(id)a3
{
  v4 = a3;
  additionalMenuItems = self->_additionalMenuItems;
  if (additionalMenuItems != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)additionalMenuItems isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_additionalMenuItems;
      self->_additionalMenuItems = v7;

      [(PXContentFilterToggleButtonController *)self invalidateButton];
      v4 = v9;
    }
  }
}

- (PXPhotosFilterToggleButtonController)initWithButtonConfiguration:(id)a3 roundedButton:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXPhotosFilterToggleButtonController.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXPhotosFilterToggleButtonController initWithButtonConfiguration:roundedButton:]"}];

  abort();
}

- (PXPhotosFilterToggleButtonController)initWithViewModel:(id)a3 buttonConfiguration:(id)a4 actionPerformer:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PXPhotosFilterToggleButtonController;
  v11 = [(PXContentFilterToggleButtonController *)&v14 initWithButtonConfiguration:a4 roundedButton:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_viewModel, a3);
    objc_storeStrong(&v12->_actionPerformer, a5);
    [(PXPhotosViewModel *)v12->_viewModel registerChangeObserver:v12 context:PXPhotosViewModelObserverContext];
    [(PXPhotosFilterToggleButtonController *)v12 _updateContentFilterState];
  }

  return v12;
}

@end