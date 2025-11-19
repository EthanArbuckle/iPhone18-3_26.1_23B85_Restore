@interface PXAssetSortByDatesFetchResult
- (PXAssetSortByDatesFetchResult)initWithSortDescriptor:(id)a3 fetchedIndexes:(id)a4 dateByIndex:(id)a5;
- (void)enumerateFetchedItemsUsingBlock:(id)a3;
@end

@implementation PXAssetSortByDatesFetchResult

- (void)enumerateFetchedItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetSortByDatesFetchResult *)self dateByIndex];
  v6 = [(PXAssetSortByDatesFetchResult *)self fetchedIndexes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PXAssetSortByDatesFetchResult_enumerateFetchedItemsUsingBlock___block_invoke;
  v9[3] = &unk_1E7BB78A8;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 enumerateIndexesUsingBlock:v9];
}

void __65__PXAssetSortByDatesFetchResult_enumerateFetchedItemsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = [v3 objectForKeyedSubscript:v4];

  v5 = v6;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
    v5 = v6;
  }
}

- (PXAssetSortByDatesFetchResult)initWithSortDescriptor:(id)a3 fetchedIndexes:(id)a4 dateByIndex:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = PXAssetSortByDatesFetchResult;
  v12 = [(PXAssetSortByDatesFetchResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sortDescriptor, a3);
    v14 = [v10 copy];
    fetchedIndexes = v13->_fetchedIndexes;
    v13->_fetchedIndexes = v14;

    v16 = [v11 copy];
    dateByIndex = v13->_dateByIndex;
    v13->_dateByIndex = v16;
  }

  return v13;
}

@end