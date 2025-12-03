@interface PXSharingSuggestionSectionHeaderLayoutProvider
- (BOOL)wantsHeaderForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (NSDateIntervalFormatter)dateIntervalFormatter;
- (NSMutableSet)successfullySharedAssetCollections;
- (id)actionTextForActionType:(int64_t)type dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (id)secondaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)actionTypeForHeaderLayout:(id)layout;
- (void)_handleShareAssetCollectionCompletion:(id)completion success:(BOOL)success error:(id)error;
- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender;
@end

@implementation PXSharingSuggestionSectionHeaderLayoutProvider

- (void)_handleShareAssetCollectionCompletion:(id)completion success:(BOOL)success error:(id)error
{
  successCopy = success;
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  errorCopy = error;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (successCopy)
    {
LABEL_3:
      if (completionCopy)
      {
        successfullySharedAssetCollections = [(PXSharingSuggestionSectionHeaderLayoutProvider *)self successfullySharedAssetCollections];
        [successfullySharedAssetCollections addObject:completionCopy];
      }

      topHeaderInvalidationDelegate = [(PXActionableSectionHeaderLayoutProvider *)self topHeaderInvalidationDelegate];
      [topHeaderInvalidationDelegate photosSectionHeaderLayoutInvalidateConfiguredLayouts:self];

      invalidationDelegate = [(PXActionableSectionHeaderLayoutProvider *)self invalidationDelegate];
      [invalidationDelegate photosSectionHeaderLayoutInvalidateConfiguredLayouts:self];

      goto LABEL_10;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharingSuggestionSectionHeaderLayoutProvider.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"NSThread.isMainThread"}];

    if (successCopy)
    {
      goto LABEL_3;
    }
  }

  v15 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v17 = completionCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_ERROR, "Failed to move items to shared library in section %@, error:%@", buf, 0x16u);
  }

LABEL_10:
}

- (void)sectionHeader:(id)header didPressButtonForActionType:(int64_t)type sender:(id)sender
{
  v31 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  senderCopy = sender;
  if (type == 4)
  {
    viewModel = [(PXActionableSectionHeaderLayoutProvider *)self viewModel];
    currentDataSource = [viewModel currentDataSource];
    if (headerCopy)
    {
      [headerCopy sectionIndexPath];
    }

    else
    {
      buf = 0u;
      v28 = 0u;
    }

    v12 = [currentDataSource assetCollectionAtSectionIndexPath:&buf];

    selectionManager = [viewModel selectionManager];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__PXSharingSuggestionSectionHeaderLayoutProvider_sectionHeader_didPressButtonForActionType_sender___block_invoke;
    v25[3] = &unk_1E7744008;
    v26 = headerCopy;
    [selectionManager performChanges:v25];
    assetActionManager = [viewModel assetActionManager];
    v15 = [assetActionManager actionPerformerForActionType:*off_1E7721B18];

    if (!v15)
    {
      PXAssertGetLog();
    }

    dataSourceManager = [viewModel dataSourceManager];
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
    v17 = dataSourceManager;
    v21 = v17;
    [v15 performActionWithCompletionHandler:v19];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);

    [selectionManager performChanges:&__block_literal_global_142557];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PXSharingSuggestionSectionHeaderLayoutProvider;
    [(PXActionableSectionHeaderLayoutProvider *)&v18 sectionHeader:headerCopy didPressButtonForActionType:type sender:senderCopy];
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

- (id)actionTextForActionType:(int64_t)type dataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  sourceCopy = source;
  if (type > 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharingSuggestionSectionHeaderLayoutProvider.m" lineNumber:111 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = sourceCopy;
  if (type == 4)
  {
    v12 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySharingSuggestionHeaderMoveAction");
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXSharingSuggestionSectionHeaderLayoutProvider;
    v11 = *&path->item;
    v16[0] = *&path->dataSourceIdentifier;
    v16[1] = v11;
    v12 = [(PXActionableSectionHeaderLayoutProvider *)&v17 actionTextForActionType:type dataSource:sourceCopy sectionIndexPath:v16];
  }

  v13 = v12;

  return v13;
}

- (int64_t)actionTypeForHeaderLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isInSelectMode])
  {
    v7.receiver = self;
    v7.super_class = PXSharingSuggestionSectionHeaderLayoutProvider;
    v5 = [(PXActionableSectionHeaderLayoutProvider *)&v7 actionTypeForHeaderLayout:layoutCopy];
  }

  else
  {
    v5 = 4;
  }

  return v5;
}

- (id)secondaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  v4 = *&path->item;
  v8[0] = *&path->dataSourceIdentifier;
  v8[1] = v4;
  v5 = [source assetCollectionAtSectionIndexPath:v8];
  localizedSubtitle = [v5 localizedSubtitle];

  return localizedSubtitle;
}

- (id)primaryTextForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  v4 = *&path->item;
  v8[0] = *&path->dataSourceIdentifier;
  v8[1] = v4;
  v5 = [source assetCollectionAtSectionIndexPath:v8];
  localizedTitle = [v5 localizedTitle];

  return localizedTitle;
}

- (BOOL)wantsHeaderForDataSource:(id)source sectionIndexPath:(PXSimpleIndexPath *)path
{
  containerCollection = [source containerCollection];
  px_isSharedLibrarySharingSuggestionsSmartAlbum = [containerCollection px_isSharedLibrarySharingSuggestionsSmartAlbum];

  return px_isSharedLibrarySharingSuggestionsSmartAlbum ^ 1;
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