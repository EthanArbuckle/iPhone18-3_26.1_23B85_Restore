@interface PXPhotosViewOptionsModel
- (NSString)sortOrderTitle;
- (PXPhotosViewOptionsModel)initWithPhotoLibrary:(id)library;
- (UIMenu)sortOrderMenu;
- (id)_makeSortOrderMenu;
- (id)_makeSortOrderTitle;
- (id)_makeStandardLensControlItems;
- (id)browserTitleForProposedTitle:(id)title;
- (id)titleForSortOrderAtIndex:(int64_t)index;
- (int64_t)centralizedFeedbackMode;
- (int64_t)menuActionStateForSortOrderAtIndex:(int64_t)index;
- (unint64_t)browserDateType;
- (void)_updateLensControlItems;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performActionForSortOrderAtIndex:(int64_t)index;
- (void)setAdditionalLensControlItems:(id)items;
- (void)setHidesSortOrderMenu:(BOOL)menu;
- (void)setLensControlItems:(id)items;
- (void)setSelectedLensControlItem:(id)item;
- (void)setSortOrderMenu:(id)menu;
- (void)setSortOrderTitle:(id)title;
@end

@implementation PXPhotosViewOptionsModel

- (void)_updateLensControlItems
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  additionalLensControlItems = [(PXPhotosViewOptionsModel *)self additionalLensControlItems];
  reverseObjectEnumerator = [additionalLensControlItems reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  [v9 addObjectsFromArray:allObjects];

  _makeStandardLensControlItems = [(PXPhotosViewOptionsModel *)self _makeStandardLensControlItems];
  [v9 addObjectsFromArray:_makeStandardLensControlItems];

  lensControlItems = [(PXPhotosViewOptionsModel *)self lensControlItems];

  if (!lensControlItems)
  {
    lastObject = [v9 lastObject];
    [(PXPhotosViewOptionsModel *)self setSelectedLensControlItem:lastObject];
  }

  [(PXPhotosViewOptionsModel *)self setLensControlItems:v9];
}

- (id)_makeStandardLensControlItems
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = +[PXLemonadeSettings sharedInstance];
  yearsAndMonthsMode = [v3 yearsAndMonthsMode];

  if (!yearsAndMonthsMode)
  {
    v5 = [off_1E7721518 alloc];
    PXLocalizedLensTitleForViewMode();
  }

  v6 = [off_1E7721518 alloc];
  PXLocalizedLensTitleForViewMode();
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSortOrderStateObserverContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosViewOptionsModel.m" lineNumber:298 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    sortOrder = [(PXSortOrderState *)self->_sortOrderState sortOrder];
    v12 = MEMORY[0x1E696AD98];
    v13 = self->_localDefaults;
    v14 = [v12 numberWithUnsignedInteger:sortOrder];
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
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXPhotosViewOptionsModel__makeSortOrderMenu__block_invoke;
  v6[3] = &unk_1E77495C0;
  v7 = sortOrderState;
  v3 = sortOrderState;
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
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v3 = PXLocalizedTitleForSortOrder([sortOrderState sortOrder]);

  return v3;
}

- (void)setLensControlItems:(id)items
{
  itemsCopy = items;
  lensControlItems = self->_lensControlItems;
  if (lensControlItems != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)lensControlItems isEqual:itemsCopy];
    itemsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_lensControlItems;
      self->_lensControlItems = v7;

      [(PXPhotosViewOptionsModel *)self signalChange:8];
      itemsCopy = v9;
    }
  }
}

- (void)setSelectedLensControlItem:(id)item
{
  itemCopy = item;
  v5 = self->_selectedLensControlItem;
  v6 = v5;
  if (v5 == itemCopy)
  {
  }

  else
  {
    v7 = [(PXPhotosLensControlItem *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectedLensControlItem, item);
      [(PXPhotosViewOptionsModel *)self signalChange:4];
    }
  }
}

- (void)setAdditionalLensControlItems:(id)items
{
  itemsCopy = items;
  additionalLensControlItems = self->_additionalLensControlItems;
  if (additionalLensControlItems != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)additionalLensControlItems isEqual:itemsCopy];
    itemsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_additionalLensControlItems;
      self->_additionalLensControlItems = v7;

      [(PXPhotosViewOptionsModel *)self _invalidateLensControlItems];
      itemsCopy = v9;
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
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  v3 = [sortOrderState sortOrder] == 2;

  return v3;
}

- (id)browserTitleForProposedTitle:(id)title
{
  titleCopy = title;
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  sortOrder = [sortOrderState sortOrder];
  if (sortOrder >= 2)
  {
    if (sortOrder != 2)
    {
      goto LABEL_6;
    }

    v8 = PXLocalizedStringFromTable(@"PXPhotosGridSortedByDateAddedTitle", @"PhotosUICore");
  }

  else
  {
    v8 = titleCopy;
  }

  v3 = v8;
LABEL_6:

  return v3;
}

- (void)performActionForSortOrderAtIndex:(int64_t)index
{
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  possibleSortOrders = [sortOrderState possibleSortOrders];

  if ([possibleSortOrders count] > index)
  {
    v7 = [possibleSortOrders objectAtIndexedSubscript:index];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    sortOrderState2 = [(PXPhotosViewOptionsModel *)self sortOrderState];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__PXPhotosViewOptionsModel_performActionForSortOrderAtIndex___block_invoke;
    v10[3] = &__block_descriptor_40_e35_v16__0___PXMutableSortOrderState__8l;
    v10[4] = unsignedIntegerValue;
    [sortOrderState2 performChanges:v10];
  }
}

- (int64_t)menuActionStateForSortOrderAtIndex:(int64_t)index
{
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  possibleSortOrders = [sortOrderState possibleSortOrders];

  if ([possibleSortOrders count] <= index)
  {
    v10 = 0;
  }

  else
  {
    v7 = [possibleSortOrders objectAtIndexedSubscript:index];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    sortOrderState2 = [(PXPhotosViewOptionsModel *)self sortOrderState];
    v10 = [sortOrderState2 sortOrder] == unsignedIntegerValue;
  }

  return v10;
}

- (id)titleForSortOrderAtIndex:(int64_t)index
{
  sortOrderState = [(PXPhotosViewOptionsModel *)self sortOrderState];
  possibleSortOrders = [sortOrderState possibleSortOrders];

  if ([possibleSortOrders count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v6 = [possibleSortOrders objectAtIndexedSubscript:index];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    v8 = PXLocalizedTitleForSortOrder(unsignedIntegerValue);
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
      _makeSortOrderMenu = [(PXPhotosViewOptionsModel *)self _makeSortOrderMenu];
      v6 = self->_sortOrderMenu;
      self->_sortOrderMenu = _makeSortOrderMenu;

      sortOrderMenu = self->_sortOrderMenu;
    }

    v3 = sortOrderMenu;
  }

  return v3;
}

- (void)setHidesSortOrderMenu:(BOOL)menu
{
  if (self->_hidesSortOrderMenu != menu)
  {
    self->_hidesSortOrderMenu = menu;
    [(PXPhotosViewOptionsModel *)self signalChange:16];
  }
}

- (void)setSortOrderMenu:(id)menu
{
  menuCopy = menu;
  if (self->_sortOrderMenu != menuCopy)
  {
    v6 = menuCopy;
    objc_storeStrong(&self->_sortOrderMenu, menu);
    [(PXPhotosViewOptionsModel *)self signalChange:2];
    menuCopy = v6;
  }
}

- (NSString)sortOrderTitle
{
  sortOrderTitle = self->_sortOrderTitle;
  if (!sortOrderTitle)
  {
    _makeSortOrderTitle = [(PXPhotosViewOptionsModel *)self _makeSortOrderTitle];
    v5 = self->_sortOrderTitle;
    self->_sortOrderTitle = _makeSortOrderTitle;

    sortOrderTitle = self->_sortOrderTitle;
  }

  return sortOrderTitle;
}

- (void)setSortOrderTitle:(id)title
{
  titleCopy = title;
  v5 = self->_sortOrderTitle;
  v6 = v5;
  if (v5 == titleCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_sortOrderTitle, title);
      [(PXPhotosViewOptionsModel *)self signalChange:1];
    }
  }
}

- (PXPhotosViewOptionsModel)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = PXPhotosViewOptionsModel;
  v5 = [(PXPhotosViewOptionsModel *)&v17 init];
  if (v5)
  {
    px_localDefaults = [libraryCopy px_localDefaults];
    localDefaults = v5->_localDefaults;
    v5->_localDefaults = px_localDefaults;

    v8 = [PXSortOrderState alloc];
    v9 = [(PXPhotoLibraryLocalDefaults *)v5->_localDefaults numberForKey:@"PXPhotosViewOptionsSortOrder-v2"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    if ((unsignedIntegerValue - 1) >= 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = unsignedIntegerValue;
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