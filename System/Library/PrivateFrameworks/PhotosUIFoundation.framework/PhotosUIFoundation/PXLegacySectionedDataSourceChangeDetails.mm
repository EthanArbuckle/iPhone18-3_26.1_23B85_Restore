@interface PXLegacySectionedDataSourceChangeDetails
- (NSArray)changedItemsIndexPaths;
- (NSArray)deletedItemsIndexPaths;
- (NSArray)insertedItemsIndexPaths;
- (NSIndexSet)changedSections;
- (NSIndexSet)deletedSections;
- (NSIndexSet)insertedSections;
- (PXLegacySectionedDataSourceChangeDetails)initWithSectionedDataSourceChangeDetails:(id)a3 shiftedSection:(int64_t)a4;
- (id)contentChangedItemsIndexPaths;
- (id)description;
- (void)_prepareIncrementalDetails;
- (void)enumerateMovedIndexPathsUsingBlock:(id)a3;
- (void)prepareIfNeeded;
@end

@implementation PXLegacySectionedDataSourceChangeDetails

- (void)enumerateMovedIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PXLegacySectionedDataSourceChangeDetails_enumerateMovedIndexPathsUsingBlock___block_invoke;
  aBlock[3] = &unk_1E7BB8658;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(PXLegacySectionedDataSourceChangeDetails *)self sectionedDataSourceChangeDetails];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v7 = [v6 sectionsWithItemChanges];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PXLegacySectionedDataSourceChangeDetails_enumerateMovedIndexPathsUsingBlock___block_invoke_2;
  v11[3] = &unk_1E7BB86F8;
  v8 = v6;
  v12 = v8;
  v9 = v5;
  v13 = v9;
  v10 = v4;
  v14 = v10;
  v15 = v16;
  [v7 enumerateIndexesUsingBlock:v11];

  _Block_object_dispose(v16, 8);
}

void __79__PXLegacySectionedDataSourceChangeDetails_enumerateMovedIndexPathsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) itemChangesInSection:a2];
  if ([v6 hasMoves])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PXLegacySectionedDataSourceChangeDetails_enumerateMovedIndexPathsUsingBlock___block_invoke_3;
    v9[3] = &unk_1E7BB86D0;
    v10 = *(a1 + 40);
    v13 = a2;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = v7;
    v12 = v8;
    [v6 enumerateMovedIndexesUsingBlock:v9];
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void __79__PXLegacySectionedDataSourceChangeDetails_enumerateMovedIndexPathsUsingBlock___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [MEMORY[0x1E696AC88] px_indexPathForItem:a2 inSection:(*(a1[4] + 16))()];
  v7 = [MEMORY[0x1E696AC88] px_indexPathForItem:a3 inSection:(*(a1[4] + 16))()];
  (*(a1[5] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (void)_prepareIncrementalDetails
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__PXLegacySectionedDataSourceChangeDetails__prepareIncrementalDetails__block_invoke;
  aBlock[3] = &unk_1E7BB8658;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(PXLegacySectionedDataSourceChangeDetails *)self sectionedDataSourceChangeDetails];
  v5 = [v4 sectionChanges];
  v6 = [v5 removedIndexes];
  v7 = [v5 insertedIndexes];
  v8 = [v5 changedIndexes];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__16665;
  v45 = __Block_byref_object_dispose__16666;
  v46 = [MEMORY[0x1E695DF70] array];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__16665;
  v39 = __Block_byref_object_dispose__16666;
  v40 = [MEMORY[0x1E695DF70] array];
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__16665;
  v33 = __Block_byref_object_dispose__16666;
  v34 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DFA8] set];
  v10 = [v4 sectionsWithItemChanges];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __70__PXLegacySectionedDataSourceChangeDetails__prepareIncrementalDetails__block_invoke_2;
  v22[3] = &unk_1E7BB86A8;
  v11 = v4;
  v23 = v11;
  v26 = &v41;
  v12 = v3;
  v25 = v12;
  v27 = &v35;
  v28 = &v29;
  v13 = v9;
  v24 = v13;
  [v10 enumerateIndexesUsingBlock:v22];

  if ([v6 count])
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  objc_storeStrong(&self->_deletedSections, v14);
  if ([v7 count])
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&self->_insertedSections, v15);
  if ([v8 count])
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&self->_changedSections, v16);
  if ([v42[5] count])
  {
    v17 = v42[5];
  }

  else
  {
    v17 = 0;
  }

  objc_storeStrong(&self->_deletedIndexPaths, v17);
  if ([v36[5] count])
  {
    v18 = v36[5];
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(&self->_insertedIndexPaths, v18);
  if ([v30[5] count])
  {
    v19 = v30[5];
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(&self->_changedIndexPaths, v19);
  v20 = [v13 count];
  if (v20)
  {
    v20 = [v13 allObjects];
  }

  contentItemsChangedIndexPaths = self->_contentItemsChangedIndexPaths;
  self->_contentItemsChangedIndexPaths = v20;

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
}

void __70__PXLegacySectionedDataSourceChangeDetails__prepareIncrementalDetails__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) itemChangesInSection:a2];
  v5 = [v4 removedIndexes];
  v6 = [v5 count];

  if (v6)
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v8 = MEMORY[0x1E696AC88];
    v9 = [v4 removedIndexes];
    v10 = [v8 px_indexPathsForItems:v9 inSection:(*(*(a1 + 48) + 16))()];
    [v7 addObjectsFromArray:v10];
  }

  v11 = [v4 insertedIndexes];
  v12 = [v11 count];

  if (v12)
  {
    v13 = *(*(*(a1 + 64) + 8) + 40);
    v14 = MEMORY[0x1E696AC88];
    v15 = [v4 insertedIndexes];
    v16 = [v14 px_indexPathsForItems:v15 inSection:(*(*(a1 + 48) + 16))()];
    [v13 addObjectsFromArray:v16];
  }

  v17 = [v4 changedIndexes];
  v18 = [v17 count];

  if (v18)
  {
    v19 = *(*(*(a1 + 72) + 8) + 40);
    v20 = MEMORY[0x1E696AC88];
    v21 = [v4 changedIndexes];
    v22 = [v20 px_indexPathsForItems:v21 inSection:(*(*(a1 + 48) + 16))()];
    [v19 addObjectsFromArray:v22];
  }

  v23 = [*(a1 + 32) itemsWithSubitemChangesInSection:a2];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__PXLegacySectionedDataSourceChangeDetails__prepareIncrementalDetails__block_invoke_3;
  v24[3] = &unk_1E7BB8680;
  v25 = *(a1 + 32);
  v28 = a2;
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  [v23 enumerateIndexesUsingBlock:v24];
}

void __70__PXLegacySectionedDataSourceChangeDetails__prepareIncrementalDetails__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v10 = [*(a1 + 32) subitemChangesInItem:a2 section:*(a1 + 56)];
  v4 = [v10 changedIndexes];
  if ([v4 count])
  {
    goto LABEL_4;
  }

  v5 = [v10 insertedIndexes];
  if ([v5 count])
  {

LABEL_4:
LABEL_5:
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AC88] px_indexPathForItem:a2 inSection:(*(*(a1 + 48) + 16))()];
    [v6 addObject:v7];

    goto LABEL_6;
  }

  v8 = [v10 removedIndexes];
  v9 = [v8 count];

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)prepareIfNeeded
{
  if (!self->_prepared)
  {
    v3 = self;
    objc_sync_enter(v3);
    if (!self->_prepared)
    {
      v4 = [(PXLegacySectionedDataSourceChangeDetails *)v3 sectionedDataSourceChangeDetails];
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      v22 = 1;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v5 = [v4 sectionChanges];
      v6 = v5;
      v7 = v20;
      if (*(v20 + 24) == 1)
      {
        v8 = [v5 hasIncrementalChanges];
        v7 = v20;
      }

      else
      {
        v8 = 0;
      }

      *(v7 + 24) = v8;
      v9 = [v4 sectionsWithItemChanges];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __59__PXLegacySectionedDataSourceChangeDetails_prepareIfNeeded__block_invoke;
      v11[3] = &unk_1E7BB8630;
      v10 = v4;
      v12 = v10;
      v13 = &v19;
      v14 = &v15;
      [v9 enumerateIndexesUsingBlock:v11];

      if (*(v20 + 24) == 1)
      {
        v3->_hasIncrementalChanges = 1;
        v3->_hasMoves = *(v16 + 24);
        [(PXLegacySectionedDataSourceChangeDetails *)v3 _prepareIncrementalDetails];
      }

      if (!v3->_hasIncrementalChanges)
      {
        *(v16 + 24) = 0;
      }

      self->_prepared = 1;

      _Block_object_dispose(&v15, 8);
      _Block_object_dispose(&v19, 8);
    }

    objc_sync_exit(v3);
  }
}

void __59__PXLegacySectionedDataSourceChangeDetails_prepareIfNeeded__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) itemChangesInSection:a2];
  v6 = *(*(a1 + 40) + 8);
  v10 = v5;
  if (*(v6 + 24) == 1)
  {
    v7 = [v5 hasIncrementalChanges];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
  v8 = *(*(a1 + 48) + 8);
  if (*(v8 + 24))
  {
    v9 = 1;
  }

  else
  {
    v9 = [v10 hasMoves];
    v8 = *(*(a1 + 48) + 8);
  }

  *(v8 + 24) = v9;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

- (id)description
{
  v24.receiver = self;
  v24.super_class = PXLegacySectionedDataSourceChangeDetails;
  v23 = [(PXLegacySectionedDataSourceChangeDetails *)&v24 description];
  v21 = MEMORY[0x1E696AEC0];
  v3 = [(PXLegacySectionedDataSourceChangeDetails *)self hasIncrementalChanges];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  v20 = v4;
  v22 = [(PXLegacySectionedDataSourceChangeDetails *)self deletedSections];
  v19 = [v22 count];
  v5 = [(PXLegacySectionedDataSourceChangeDetails *)self insertedSections];
  v18 = [v5 count];
  v6 = [(PXLegacySectionedDataSourceChangeDetails *)self changedSections];
  v7 = [v6 count];
  v8 = [(PXLegacySectionedDataSourceChangeDetails *)self deletedItemsIndexPaths];
  v9 = [v8 count];
  v10 = [(PXLegacySectionedDataSourceChangeDetails *)self insertedItemsIndexPaths];
  v11 = [v10 count];
  v12 = [(PXLegacySectionedDataSourceChangeDetails *)self changedItemsIndexPaths];
  v13 = [v12 count];
  v14 = [(PXLegacySectionedDataSourceChangeDetails *)self contentItemsChangedIndexPaths];
  v15 = [v21 stringWithFormat:@" hasIncremental:%@ sections:(%lu, %lu, %lu) indexPaths:(%lu, %lu, %lu, %lu) (del, ins, change, contentChange)", v20, v19, v18, v7, v9, v11, v13, objc_msgSend(v14, "count")];

  v16 = [v23 stringByAppendingString:v15];

  return v16;
}

- (id)contentChangedItemsIndexPaths
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  contentItemsChangedIndexPaths = self->_contentItemsChangedIndexPaths;

  return contentItemsChangedIndexPaths;
}

- (NSArray)changedItemsIndexPaths
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  changedIndexPaths = self->_changedIndexPaths;

  return changedIndexPaths;
}

- (NSArray)insertedItemsIndexPaths
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  insertedIndexPaths = self->_insertedIndexPaths;

  return insertedIndexPaths;
}

- (NSArray)deletedItemsIndexPaths
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  deletedIndexPaths = self->_deletedIndexPaths;

  return deletedIndexPaths;
}

- (NSIndexSet)changedSections
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  changedSections = self->_changedSections;

  return changedSections;
}

- (NSIndexSet)insertedSections
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  insertedSections = self->_insertedSections;

  return insertedSections;
}

- (NSIndexSet)deletedSections
{
  [(PXLegacySectionedDataSourceChangeDetails *)self prepareIfNeeded];
  deletedSections = self->_deletedSections;

  return deletedSections;
}

- (PXLegacySectionedDataSourceChangeDetails)initWithSectionedDataSourceChangeDetails:(id)a3 shiftedSection:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXLegacySectionedDataSourceChangeDetails;
  v8 = [(PXLegacySectionedDataSourceChangeDetails *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sectionedDataSourceChangeDetails, a3);
    v9->_shiftingSectionLocation = a4;
  }

  return v9;
}

@end