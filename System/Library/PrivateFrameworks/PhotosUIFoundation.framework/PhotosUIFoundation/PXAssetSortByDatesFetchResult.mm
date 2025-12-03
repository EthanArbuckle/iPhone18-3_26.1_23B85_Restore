@interface PXAssetSortByDatesFetchResult
- (PXAssetSortByDatesFetchResult)initWithSortDescriptor:(id)descriptor fetchedIndexes:(id)indexes dateByIndex:(id)index;
- (void)enumerateFetchedItemsUsingBlock:(id)block;
@end

@implementation PXAssetSortByDatesFetchResult

- (void)enumerateFetchedItemsUsingBlock:(id)block
{
  blockCopy = block;
  dateByIndex = [(PXAssetSortByDatesFetchResult *)self dateByIndex];
  fetchedIndexes = [(PXAssetSortByDatesFetchResult *)self fetchedIndexes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PXAssetSortByDatesFetchResult_enumerateFetchedItemsUsingBlock___block_invoke;
  v9[3] = &unk_1E7BB78A8;
  v10 = dateByIndex;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = dateByIndex;
  [fetchedIndexes enumerateIndexesUsingBlock:v9];
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

- (PXAssetSortByDatesFetchResult)initWithSortDescriptor:(id)descriptor fetchedIndexes:(id)indexes dateByIndex:(id)index
{
  descriptorCopy = descriptor;
  indexesCopy = indexes;
  indexCopy = index;
  v19.receiver = self;
  v19.super_class = PXAssetSortByDatesFetchResult;
  v12 = [(PXAssetSortByDatesFetchResult *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sortDescriptor, descriptor);
    v14 = [indexesCopy copy];
    fetchedIndexes = v13->_fetchedIndexes;
    v13->_fetchedIndexes = v14;

    v16 = [indexCopy copy];
    dateByIndex = v13->_dateByIndex;
    v13->_dateByIndex = v16;
  }

  return v13;
}

@end