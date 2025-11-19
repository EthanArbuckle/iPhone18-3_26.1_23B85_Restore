@interface PXSharingSuggestionSectionHeaderLayoutProvider
- (BOOL)wantsHeaderForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (NSDateIntervalFormatter)dateIntervalFormatter;
- (NSMutableSet)successfullySharedAssetCollections;
- (id)actionTextForActionType:(int64_t)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5;
- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (id)secondaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4;
- (int64_t)actionTypeForHeaderLayout:(id)a3;
- (void)_handleShareAssetCollectionCompletion:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5;
@end

@implementation PXSharingSuggestionSectionHeaderLayoutProvider

- (void)_handleShareAssetCollectionCompletion:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (v6)
    {
LABEL_3:
      if (v9)
      {
        v11 = [(PXSharingSuggestionSectionHeaderLayoutProvider *)self successfullySharedAssetCollections];
        [v11 addObject:v9];
      }

      v12 = [(PXActionableSectionHeaderLayoutProvider *)self topHeaderInvalidationDelegate];
      [v12 photosSectionHeaderLayoutInvalidateConfiguredLayouts:self];

      v13 = [(PXActionableSectionHeaderLayoutProvider *)self invalidationDelegate];
      [v13 photosSectionHeaderLayoutInvalidateConfiguredLayouts:self];

      goto LABEL_10;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharingSuggestionSectionHeaderLayoutProvider.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"NSThread.isMainThread"}];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  v15 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Failed to move items to shared library in section %@, error:%@", buf, 0x16u);
  }

LABEL_10:
}

- (void)sectionHeader:(id)a3 didPressButtonForActionType:(int64_t)a4 sender:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 == 4)
  {
    v10 = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    v11 = [v10 currentDataSource];
    if (v8)
    {
      [v8 sectionIndexPath];
    }

    else
    {
      buf = 0u;
      v28 = 0u;
    }

    v12 = [v11 assetCollectionAtSectionIndexPath:&buf];

    v13 = [v10 selectionManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke;
    v25[3] = &unk_1E7744008;
    v26 = v8;
    [v13 performChanges:v25];
    v14 = [v10 assetActionManager];
    v15 = [v14 actionPerformerForActionType:*off_1E7721B18];

    if (!v15)
    {
      PXAssertGetLog();
    }

    v16 = [v10 dataSourceManager];
    *&buf = 0;
    *(&buf + 1) = &buf;
    *&v28 = 0x3032000000;
    *(&v28 + 1) = __Block_byref_object_copy__142555;
    v29 = __Block_byref_object_dispose__142556;
    v30 = 0;
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke_208;
    v19[3] = &unk_1E773D178;
    objc_copyWeak(&v23, &location);
    v20 = v12;
    p_buf = &buf;
    v17 = v16;
    v21 = v17;
    [v15 performActionWithCompletionHandler:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);

    [v13 performChanges:&__block_literal_global_142557];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PXSharingSuggestionSectionHeaderLayoutProvider;
    [(PXActionableSectionHeaderLayoutProvider *)&v18 sectionHeader:v8 didPressButtonForActionType:a4 sender:v9];
  }
}

void __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 deselectAll];
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 sectionIndexPath];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [v3 selectAllItemsInSection:v5];
}

void __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke_208(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleShareAssetCollectionCompletion:*(a1 + 32) success:a2 error:v5];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    if (a2)
    {
      v7 = 2000000000;
    }

    else
    {
      v7 = 0;
    }

    v8 = dispatch_time(0, v7);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke_2;
    v11[3] = &unk_1E7749A28;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v9;
    v13 = v10;
    dispatch_after(v8, MEMORY[0x1E69E96A0], v11);
  }
}

uint64_t __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke_3;
  v3[3] = &unk_1E774A5C8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 performChanges:v3];
}

- (id)actionTextForActionType:(int64_t)a3 dataSource:(id)a4 sectionIndexPath:(PXSimpleIndexPath *)a5
{
  v9 = a4;
  if (a3 > 8)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXSharingSuggestionSectionHeaderLayoutProvider.m" lineNumber:111 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (a3 == 4)
  {
    v12 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySharingSuggestionHeaderMoveAction");
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXSharingSuggestionSectionHeaderLayoutProvider;
    v11 = *&a5->item;
    v16[0] = *&a5->dataSourceIdentifier;
    v16[1] = v11;
    v12 = [(PXActionableSectionHeaderLayoutProvider *)&v17 actionTextForActionType:a3 dataSource:v9 sectionIndexPath:v16];
  }

  v13 = v12;

  return v13;
}

- (int64_t)actionTypeForHeaderLayout:(id)a3
{
  v4 = a3;
  if ([v4 isInSelectMode])
  {
    v7.receiver = self;
    v7.super_class = PXSharingSuggestionSectionHeaderLayoutProvider;
    v5 = [(PXActionableSectionHeaderLayoutProvider *)&v7 actionTypeForHeaderLayout:v4];
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

- (id)secondaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v4 = *&a4->item;
  v8[0] = *&a4->dataSourceIdentifier;
  v8[1] = v4;
  v5 = [a3 assetCollectionAtSectionIndexPath:v8];
  v6 = [v5 localizedSubtitle];

  return v6;
}

- (id)primaryTextForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v4 = *&a4->item;
  v8[0] = *&a4->dataSourceIdentifier;
  v8[1] = v4;
  v5 = [a3 assetCollectionAtSectionIndexPath:v8];
  v6 = [v5 localizedTitle];

  return v6;
}

- (BOOL)wantsHeaderForDataSource:(id)a3 sectionIndexPath:(PXSimpleIndexPath *)a4
{
  v4 = [a3 containerCollection];
  v5 = [v4 px_isSharedLibrarySharingSuggestionsSmartAlbum];

  return v5 ^ 1;
}

- (NSMutableSet)successfullySharedAssetCollections
{
  successfullySharedAssetCollections = self->_successfullySharedAssetCollections;
  if (!successfullySharedAssetCollections)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->_successfullySharedAssetCollections;
    self->_successfullySharedAssetCollections = v4;

    successfullySharedAssetCollections = self->_successfullySharedAssetCollections;
  }

  return successfullySharedAssetCollections;
}

- (NSDateIntervalFormatter)dateIntervalFormatter
{
  dateIntervalFormatter = self->_dateIntervalFormatter;
  if (!dateIntervalFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AB88]);
    v5 = self->_dateIntervalFormatter;
    self->_dateIntervalFormatter = v4;

    v6 = [(NSDateIntervalFormatter *)self->_dateIntervalFormatter px_dateTemplateForGranularity:8 abbreviated:1];
    [(NSDateIntervalFormatter *)self->_dateIntervalFormatter setDateTemplate:v6];

    dateIntervalFormatter = self->_dateIntervalFormatter;
  }

  return dateIntervalFormatter;
}

@end