@interface PXPhotosViewOptionsModel
- (NSString)sortOrderTitle;
- (PXPhotosViewOptionsModel)initWithPhotoLibrary:(id)a3;
- (UIMenu)sortOrderMenu;
- (id)_makeSortOrderMenu;
- (id)_makeSortOrderTitle;
- (id)_makeStandardLensControlItems;
- (id)browserTitleForProposedTitle:(id)a3;
- (id)titleForSortOrderAtIndex:(int64_t)a3;
- (int64_t)centralizedFeedbackMode;
- (int64_t)menuActionStateForSortOrderAtIndex:(int64_t)a3;
- (unint64_t)browserDateType;
- (void)_updateLensControlItems;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performActionForSortOrderAtIndex:(int64_t)a3;
- (void)setAdditionalLensControlItems:(id)a3;
- (void)setHidesSortOrderMenu:(BOOL)a3;
- (void)setLensControlItems:(id)a3;
- (void)setSelectedLensControlItem:(id)a3;
- (void)setSortOrderMenu:(id)a3;
- (void)setSortOrderTitle:(id)a3;
@end

@implementation PXPhotosViewOptionsModel

- (void)_updateLensControlItems
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(PXPhotosViewOptionsModel *)self additionalLensControlItems];
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 allObjects];
  [v9 addObjectsFromArray:v5];

  v6 = [(PXPhotosViewOptionsModel *)self _makeStandardLensControlItems];
  [v9 addObjectsFromArray:v6];

  v7 = [(PXPhotosViewOptionsModel *)self lensControlItems];

  if (!v7)
  {
    v8 = [v9 lastObject];
    [(PXPhotosViewOptionsModel *)self setSelectedLensControlItem:v8];
  }

  [(PXPhotosViewOptionsModel *)self setLensControlItems:v9];
}

- (id)_makeStandardLensControlItems
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[PXLemonadeSettings sharedInstance];
  v4 = [v3 yearsAndMonthsMode];

  if (!v4)
  {
    v5 = [off_1E7721518 alloc];
    PXLocalizedLensTitleForViewMode();
  }

  v6 = [off_1E7721518 alloc];
  PXLocalizedLensTitleForViewMode();
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSortOrderStateObserverContext != a5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosViewOptionsModel.m" lineNumber:298 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v11 = [(PXSortOrderState *)self->_sortOrderState sortOrder];
    v12 = MEMORY[0x1E696AD98];
    v13 = self->_localDefaults;
    v14 = [v12 numberWithUnsignedInteger:v11];
    [(PXPhotoLibraryLocalDefaults *)v13 setNumber:v14 forKey:@"PXPhotosViewOptionsSortOrder-v2"];

    [(PXPhotosViewOptionsModel *)self _invalidateLensControlItems];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__PXPhotosViewOptionsModel_observable_didChange_context___block_invoke;
    v16[3] = &unk_1E774C5F8;
    v16[4] = self;
    [(PXPhotosViewOptionsModel *)self performChanges:v16];
  }
}

void __57__PXPhotosViewOptionsModel_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) signalChange:4];
  v2 = [*(a1 + 32) _makeSortOrderTitle];
  [*(a1 + 32) setSortOrderTitle:v2];

  v3 = [*(a1 + 32) _makeSortOrderMenu];
  [*(a1 + 32) setSortOrderMenu:v3];
}

- (id)_makeSortOrderMenu
{
  v2 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke;
  v6[3] = &unk_1E77495C0;
  v7 = v2;
  v3 = v2;
  v4 = [PXMenuBuilder menuWithDeferredConfiguration:v6];

  return v4;
}

void __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke_2;
  v6[3] = &unk_1E7749598;
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v8 enumeratePossibleSortOrdersUsingBlock:v6];
}

void __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = PXLocalizedTitleForSortOrder(a2);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke_3;
  v8[3] = &unk_1E7749570;
  v9 = *(a1 + 40);
  v10 = a2;
  [v6 addItemWithTitle:v7 systemImageName:0 state:v5 options:0 handler:v8];
}

uint64_t __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke_4;
  v3[3] = &__block_descriptor_40_e35_v16__0___PXMutableSortOrderState__8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (id)_makeSortOrderTitle
{
  v2 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v3 = PXLocalizedTitleForSortOrder([v2 sortOrder]);

  return v3;
}

- (void)setLensControlItems:(id)a3
{
  v4 = a3;
  lensControlItems = self->_lensControlItems;
  if (lensControlItems != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)lensControlItems isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_lensControlItems;
      self->_lensControlItems = v7;

      [(PXPhotosViewOptionsModel *)self signalChange:8];
      v4 = v9;
    }
  }
}

- (void)setSelectedLensControlItem:(id)a3
{
  v8 = a3;
  v5 = self->_selectedLensControlItem;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXPhotosLensControlItem *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectedLensControlItem, a3);
      [(PXPhotosViewOptionsModel *)self signalChange:4];
    }
  }
}

- (void)setAdditionalLensControlItems:(id)a3
{
  v4 = a3;
  additionalLensControlItems = self->_additionalLensControlItems;
  if (additionalLensControlItems != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)additionalLensControlItems isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_additionalLensControlItems;
      self->_additionalLensControlItems = v7;

      [(PXPhotosViewOptionsModel *)self _invalidateLensControlItems];
      v4 = v9;
    }
  }
}

- (int64_t)centralizedFeedbackMode
{
  if (+[PXPhotosSearchFeatureAvailabilityManagerObjcHelper searchReportAConcernIsInternalOrSeed])
  {
    return 1;
  }

  if (+[PXPhotosSearchFeatureAvailabilityManagerObjcHelper searchReportAConcernIsExternal])
  {
    return 2;
  }

  return 0;
}

- (unint64_t)browserDateType
{
  v2 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v3 = [v2 sortOrder] == 2;

  return v3;
}

- (id)browserTitleForProposedTitle:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v7 = [v6 sortOrder];
  if (v7 >= 2)
  {
    if (v7 != 2)
    {
      goto LABEL_6;
    }

    v8 = PXLocalizedStringFromTable(@"PXPhotosGridSortedByDateAddedTitle", @"PhotosUICore");
  }

  else
  {
    v8 = v5;
  }

  v3 = v8;
LABEL_6:

  return v3;
}

- (void)performActionForSortOrderAtIndex:(int64_t)a3
{
  v5 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v6 = [v5 possibleSortOrders];

  if ([v6 count] > a3)
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
    v8 = [v7 unsignedIntegerValue];

    v9 = [(PXPhotosViewOptionsModel *)self sortOrderState];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PXPhotosViewOptionsModel_performActionForSortOrderAtIndex___block_invoke;
    v10[3] = &__block_descriptor_40_e35_v16__0___PXMutableSortOrderState__8l;
    v10[4] = v8;
    [v9 performChanges:v10];
  }
}

- (int64_t)menuActionStateForSortOrderAtIndex:(int64_t)a3
{
  v5 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v6 = [v5 possibleSortOrders];

  if ([v6 count] <= a3)
  {
    v10 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:a3];
    v8 = [v7 unsignedIntegerValue];

    v9 = [(PXPhotosViewOptionsModel *)self sortOrderState];
    v10 = [v9 sortOrder] == v8;
  }

  return v10;
}

- (id)titleForSortOrderAtIndex:(int64_t)a3
{
  v4 = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v5 = [v4 possibleSortOrders];

  if ([v5 count] <= a3)
  {
    v8 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
    v7 = [v6 unsignedIntegerValue];

    v8 = PXLocalizedTitleForSortOrder(v7);
  }

  return v8;
}

- (UIMenu)sortOrderMenu
{
  if ([(PXPhotosViewOptionsModel *)self hidesSortOrderMenu])
  {
    v3 = 0;
  }

  else
  {
    sortOrderMenu = self->_sortOrderMenu;
    if (!sortOrderMenu)
    {
      v5 = [(PXPhotosViewOptionsModel *)self _makeSortOrderMenu];
      v6 = self->_sortOrderMenu;
      self->_sortOrderMenu = v5;

      sortOrderMenu = self->_sortOrderMenu;
    }

    v3 = sortOrderMenu;
  }

  return v3;
}

- (void)setHidesSortOrderMenu:(BOOL)a3
{
  if (self->_hidesSortOrderMenu != a3)
  {
    self->_hidesSortOrderMenu = a3;
    [(PXPhotosViewOptionsModel *)self signalChange:16];
  }
}

- (void)setSortOrderMenu:(id)a3
{
  v5 = a3;
  if (self->_sortOrderMenu != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sortOrderMenu, a3);
    [(PXPhotosViewOptionsModel *)self signalChange:2];
    v5 = v6;
  }
}

- (NSString)sortOrderTitle
{
  sortOrderTitle = self->_sortOrderTitle;
  if (!sortOrderTitle)
  {
    v4 = [(PXPhotosViewOptionsModel *)self _makeSortOrderTitle];
    v5 = self->_sortOrderTitle;
    self->_sortOrderTitle = v4;

    sortOrderTitle = self->_sortOrderTitle;
  }

  return sortOrderTitle;
}

- (void)setSortOrderTitle:(id)a3
{
  v8 = a3;
  v5 = self->_sortOrderTitle;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_sortOrderTitle, a3);
      [(PXPhotosViewOptionsModel *)self signalChange:1];
    }
  }
}

- (PXPhotosViewOptionsModel)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PXPhotosViewOptionsModel;
  v5 = [(PXPhotosViewOptionsModel *)&v17 init];
  if (v5)
  {
    v6 = [v4 px_localDefaults];
    localDefaults = v5->_localDefaults;
    v5->_localDefaults = v6;

    v8 = [PXSortOrderState alloc];
    v9 = [(PXPhotoLibraryLocalDefaults *)v5->_localDefaults numberForKey:@"PXPhotosViewOptionsSortOrder-v2"];
    v10 = [v9 unsignedIntegerValue];
    if ((v10 - 1) >= 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = [(PXSortOrderState *)v8 initWithSortOrder:v11];
    sortOrderState = v5->_sortOrderState;
    v5->_sortOrderState = v12;

    [(PXSortOrderState *)v5->_sortOrderState registerChangeObserver:v5 context:PXSortOrderStateObserverContext];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__PXPhotosViewOptionsModel_initWithPhotoLibrary___block_invoke;
    v15[3] = &unk_1E7749528;
    v16 = v5;
    [(PXPhotosViewOptionsModel *)v16 performChanges:v15];
  }

  return v5;
}

@end