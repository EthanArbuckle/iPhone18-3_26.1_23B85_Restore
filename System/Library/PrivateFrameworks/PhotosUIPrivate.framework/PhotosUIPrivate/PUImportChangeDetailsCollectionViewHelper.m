@interface PUImportChangeDetailsCollectionViewHelper
- (PUImportChangeDetailsCollectionViewHelper)initWithCollectionView:(id)a3 dataSourceSettingHandler:(id)a4;
- (UICollectionView)collectionView;
- (void)applyChangeDetails:(id)a3 forNewDataSource:(id)a4 completionBlock:(id)a5;
- (void)transitionFromDataSource:(id)a3 toDataSource:(id)a4 changeHistory:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation PUImportChangeDetailsCollectionViewHelper

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (void)applyChangeDetails:(id)a3 forNewDataSource:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v12 = [(PUImportChangeDetailsCollectionViewHelper *)self collectionView];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__PUImportChangeDetailsCollectionViewHelper_applyChangeDetails_forNewDataSource_completionBlock___block_invoke;
  v16[3] = &unk_1E7B7F1D0;
  v16[4] = self;
  v17 = v9;
  v18 = v8;
  v19 = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PUImportChangeDetailsCollectionViewHelper_applyChangeDetails_forNewDataSource_completionBlock___block_invoke_3;
  v13[3] = &unk_1E7B80A18;
  v15 = v10;
  v14 = v19;
  [v12 performBatchUpdates:v16 completion:v13];
}

void __97__PUImportChangeDetailsCollectionViewHelper_applyChangeDetails_forNewDataSource_completionBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataSourceSettingHandler];
  v2[2](v2, *(a1 + 40));

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    v22 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DFB0] null];
        v10 = [v8 isEqual:v9];

        if ((v10 & 1) == 0)
        {
          v11 = [v8 sectionChanges];
          if ([v11 hasAnyChanges])
          {
            v12 = v3;
            v13 = [v11 removedIndexes];
            v14 = [v11 insertedIndexes];
            v15 = [v11 changedIndexes];
            if ([v13 count])
            {
              v16 = [*(a1 + 32) collectionView];
              [v16 deleteSections:v13];
            }

            if ([v14 count])
            {
              v17 = [*(a1 + 32) collectionView];
              [v17 insertSections:v14];
            }

            if ([v15 count])
            {
              v18 = [*(a1 + 32) collectionView];
              [v18 reloadSections:v15];
            }

            v3 = v12;
            v6 = v22;
          }

          v19 = [v8 sectionsWithItemChanges];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __97__PUImportChangeDetailsCollectionViewHelper_applyChangeDetails_forNewDataSource_completionBlock___block_invoke_2;
          v23[3] = &unk_1E7B77820;
          v23[4] = v8;
          v20 = *(a1 + 56);
          v21 = *(a1 + 32);
          v24 = v20;
          v25 = v21;
          [v19 enumerateIndexesUsingBlock:v23];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }
}

uint64_t __97__PUImportChangeDetailsCollectionViewHelper_applyChangeDetails_forNewDataSource_completionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

uint64_t __97__PUImportChangeDetailsCollectionViewHelper_applyChangeDetails_forNewDataSource_completionBlock___block_invoke_2(id *a1, uint64_t a2)
{
  v16 = [a1[4] itemChangesInSection:a2];
  v4 = [v16 hasAnyChanges];
  v5 = v16;
  if (v4)
  {
    v6 = [v16 removedIndexes];
    v7 = [v16 insertedIndexes];
    v8 = [v16 changedIndexes];
    v9 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v6 inSection:a2];
    v10 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v7 inSection:a2];
    v11 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v8 inSection:a2];
    if ([v9 count])
    {
      [a1[5] addIndex:a2];
      v12 = [a1[6] collectionView];
      [v12 deleteItemsAtIndexPaths:v9];
    }

    if ([v10 count])
    {
      [a1[5] addIndex:a2];
      v13 = [a1[6] collectionView];
      [v13 insertItemsAtIndexPaths:v10];
    }

    if ([v11 count])
    {
      v14 = [a1[6] collectionView];
      [v14 reloadItemsAtIndexPaths:v11];
    }

    v5 = v16;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)transitionFromDataSource:(id)a3 toDataSource:(id)a4 changeHistory:(id)a5 animated:(BOOL)a6 completionHandler:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v27 = a5;
  v14 = a7;
  v15 = 0;
  if (v12 && v13)
  {
    v15 = [v27 changeDetailsFromDataSourceIdentifier:objc_msgSend(v12 toDataSourceIdentifier:{"identifier"), objc_msgSend(v13, "identifier")}];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Applying changes:\n%@", v15];
  v17 = _importGridLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[PUImportChangeDetailsCollectionViewHelper transitionFromDataSource:toDataSource:changeHistory:animated:completionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  if (v15 && [v15 count] == 1)
  {
    v18 = [(PUImportChangeDetailsCollectionViewHelper *)self collectionView];
    v19 = [v18 window];
    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  v42 = v20;
  if (*(*&buf[8] + 24) == 1 && ([v15 firstObject], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "sectionsWithItemChanges"), v22 = objc_claimAutoreleasedReturnValue(), v34[0] = MEMORY[0x1E69E9820], v34[1] = 3221225472, v34[2] = __124__PUImportChangeDetailsCollectionViewHelper_transitionFromDataSource_toDataSource_changeHistory_animated_completionHandler___block_invoke, v34[3] = &unk_1E7B777D0, v23 = v21, v35 = v23, v36 = buf, objc_msgSend(v22, "enumerateIndexesUsingBlock:", v34), v35, v22, v23, (*(*&buf[8] + 24) & 1) != 0))
  {
    if (!a6)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __124__PUImportChangeDetailsCollectionViewHelper_transitionFromDataSource_toDataSource_changeHistory_animated_completionHandler___block_invoke_6;
    v28[3] = &unk_1E7B777F8;
    v33 = a6;
    v29 = v12;
    v30 = v13;
    v31 = v15;
    v32 = v14;
    [(PUImportChangeDetailsCollectionViewHelper *)self applyChangeDetails:v31 forNewDataSource:v30 completionBlock:v28];
  }

  else
  {
    v24 = _importGridLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 136315394;
      v38 = "[PUImportChangeDetailsCollectionViewHelper transitionFromDataSource:toDataSource:changeHistory:animated:completionHandler:]";
      v39 = 2112;
      v40 = @"Reloading data";
      _os_log_impl(&dword_1B36F3000, v24, OS_LOG_TYPE_DEFAULT, "%s: %@", v37, 0x16u);
    }

    v25 = [(PUImportChangeDetailsCollectionViewHelper *)self dataSourceSettingHandler];
    (v25)[2](v25, v13);

    v26 = [(PUImportChangeDetailsCollectionViewHelper *)self collectionView];
    [v26 reloadData];

    if (v14)
    {
      (*(v14 + 2))(v14, 0, 0);
    }
  }

  _Block_object_dispose(buf, 8);
}

void __124__PUImportChangeDetailsCollectionViewHelper_transitionFromDataSource_toDataSource_changeHistory_animated_completionHandler___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) itemChangesInSection:a2];
  v6 = [v5 removedIndexes];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [v5 removedIndexes];
    v9 = [v5 insertedIndexes];
    v10 = [v8 isEqualToIndexSet:v9];

    if ((v10 & 1) == 0)
    {
      v11 = _importGridLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[PUImportChangeDetailsCollectionViewHelper transitionFromDataSource:toDataSource:changeHistory:animated:completionHandler:]_block_invoke";
        v14 = 2112;
        v15 = @"Skipping animating changes, as there are deletes in the change details";
        _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEFAULT, "%s: %@", &v12, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a3 = 1;
    }
  }
}

void __124__PUImportChangeDetailsCollectionViewHelper_transitionFromDataSource_toDataSource_changeHistory_animated_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v10 = v5;
    if ((*(a1 + 64) & 1) == 0)
    {
      [MEMORY[0x1E6979518] commit];
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error applying change from \n%@\nto\n%@\nData Source Diff:\n%@\n%@", *(a1 + 32), *(a1 + 40), *(a1 + 48), v10];
    v8 = _importGridLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[PUImportChangeDetailsCollectionViewHelper transitionFromDataSource:toDataSource:changeHistory:animated:completionHandler:]_block_invoke";
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "%s: %@", buf, 0x16u);
    }

    objc_exception_throw(v10);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    (*(v6 + 16))(v6, *(a1 + 64), v9);
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    [MEMORY[0x1E6979518] commit];
  }
}

- (PUImportChangeDetailsCollectionViewHelper)initWithCollectionView:(id)a3 dataSourceSettingHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PUImportChangeDetailsCollectionViewHelper;
  v8 = [(PUImportChangeDetailsCollectionViewHelper *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_collectionView, v6);
    v10 = _Block_copy(v7);
    dataSourceSettingHandler = v9->_dataSourceSettingHandler;
    v9->_dataSourceSettingHandler = v10;
  }

  return v9;
}

@end