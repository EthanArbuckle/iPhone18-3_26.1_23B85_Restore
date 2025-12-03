@interface PUPhotoSelectionEntry
- (BOOL)isIndexSelected:(unint64_t)selected;
- (NSArray)selectedAssets;
- (NSIndexSet)selectedIndexes;
- (PUPhotoSelectionEntry)initWithAssetCollection:(id)collection fetchResult:(id)result uniqueSelectedAssets:(id)assets;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_ensureValidAssetIndexes;
- (void)deselectAssetsAtIndexes:(id)indexes;
- (void)enumerateSelectedAssetsWithBlock:(id)block;
- (void)handlePhotoLibraryChange:(id)change;
- (void)selectAssetsAtIndexes:(id)indexes;
- (void)setSelectedAssetsSet:(id)set;
@end

@implementation PUPhotoSelectionEntry

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PUPhotoSelectionEntry allocWithZone:](PUPhotoSelectionEntry init];
  v5->_hasValidAssetIndexes = self->_hasValidAssetIndexes;
  objc_storeStrong(&v5->_assetCollection, self->_assetCollection);
  v6 = [(PHFetchResult *)self->_fetchResult copyWithZone:zone];
  fetchResult = v5->_fetchResult;
  v5->_fetchResult = v6;

  v8 = [(NSMutableSet *)self->_selectedAssets copyWithZone:zone];
  selectedAssets = v5->_selectedAssets;
  v5->_selectedAssets = v8;

  v10 = [(NSMutableIndexSet *)self->_selectedIndexes copyWithZone:zone];
  selectedIndexes = v5->_selectedIndexes;
  v5->_selectedIndexes = v10;

  return v5;
}

- (void)setSelectedAssetsSet:(id)set
{
  setCopy = set;
  selectedAssets = self->_selectedAssets;
  if (selectedAssets != setCopy)
  {
    v6 = setCopy;
    selectedAssets = [selectedAssets isEqualToSet:setCopy];
    setCopy = v6;
    if ((selectedAssets & 1) == 0)
    {
      [(NSMutableSet *)self->_selectedAssets setSet:v6];
      selectedAssets = [(PUPhotoSelectionEntry *)self invalidateAllAssetIndexes];
      setCopy = v6;
    }
  }

  MEMORY[0x1EEE66BB8](selectedAssets, setCopy);
}

- (void)handlePhotoLibraryChange:(id)change
{
  changeCopy = change;
  fetchResult = [(PUPhotoSelectionEntry *)self fetchResult];
  v14 = [changeCopy changeDetailsForFetchResult:fetchResult];

  v6 = v14;
  if (v14)
  {
    if (![v14 hasIncrementalChanges] || objc_msgSend(v14, "hasMoves"))
    {
      [(PUPhotoSelectionEntry *)self invalidateAllAssetIndexes];
    }

    v7 = MEMORY[0x1E695DFD8];
    removedObjects = [v14 removedObjects];
    v9 = [v7 setWithArray:removedObjects];

    if (self->_hasValidAssetIndexes)
    {
      removedIndexes = [v14 removedIndexes];
      if (removedIndexes)
      {
        [(NSMutableIndexSet *)self->_selectedIndexes pl_adjustIndexesForDeletions:removedIndexes];
      }

      insertedIndexes = [v14 insertedIndexes];
      if (insertedIndexes)
      {
        [(NSMutableIndexSet *)self->_selectedIndexes pl_adjustIndexesForInsertions:insertedIndexes];
      }
    }

    if ([v9 count])
    {
      [(NSMutableSet *)self->_selectedAssets minusSet:v9];
    }

    fetchResultAfterChanges = [v14 fetchResultAfterChanges];
    fetchResult = self->_fetchResult;
    self->_fetchResult = fetchResultAfterChanges;

    v6 = v14;
  }
}

- (void)enumerateSelectedAssetsWithBlock:(id)block
{
  blockCopy = block;
  [(PUPhotoSelectionEntry *)self _ensureValidAssetIndexes];
  selectedIndexes = [(PUPhotoSelectionEntry *)self selectedIndexes];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__PUPhotoSelectionEntry_enumerateSelectedAssetsWithBlock___block_invoke;
  v7[3] = &unk_1E7B7C378;
  v7[4] = self;
  v6 = blockCopy;
  v8 = v6;
  v9 = v10;
  [selectedIndexes enumerateIndexesUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __58__PUPhotoSelectionEntry_enumerateSelectedAssetsWithBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) fetchResult];
  v7 = [v6 objectAtIndex:a2];

  (*(*(a1 + 40) + 16))();
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

- (BOOL)isIndexSelected:(unint64_t)selected
{
  [(PUPhotoSelectionEntry *)self _ensureValidAssetIndexes];
  selectedIndexes = self->_selectedIndexes;

  return [(NSMutableIndexSet *)selectedIndexes containsIndex:selected];
}

- (void)deselectAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  [(PUPhotoSelectionEntry *)self _ensureValidAssetIndexes];
  v5 = MEMORY[0x1E695DFD8];
  v6 = [(PHFetchResult *)self->_fetchResult objectsAtIndexes:indexesCopy];
  v7 = [v5 setWithArray:v6];

  [(NSMutableSet *)self->_selectedAssets minusSet:v7];
  [(NSMutableIndexSet *)self->_selectedIndexes removeIndexes:indexesCopy];
}

- (void)selectAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  [(PUPhotoSelectionEntry *)self _ensureValidAssetIndexes];
  v5 = [(PHFetchResult *)self->_fetchResult objectsAtIndexes:indexesCopy];
  [(NSMutableSet *)self->_selectedAssets addObjectsFromArray:v5];
  [(NSMutableIndexSet *)self->_selectedIndexes addIndexes:indexesCopy];
}

- (NSArray)selectedAssets
{
  [(PUPhotoSelectionEntry *)self _ensureValidAssetIndexes];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selectedIndexes = self->_selectedIndexes;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PUPhotoSelectionEntry_selectedAssets__block_invoke;
  v8[3] = &unk_1E7B7DEA8;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  [(NSMutableIndexSet *)selectedIndexes enumerateIndexesUsingBlock:v8];
  v6 = v5;

  return v5;
}

void __39__PUPhotoSelectionEntry_selectedAssets__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) objectAtIndex:a2];
  [v2 addObject:v3];
}

- (NSIndexSet)selectedIndexes
{
  [(PUPhotoSelectionEntry *)self _ensureValidAssetIndexes];
  selectedIndexes = self->_selectedIndexes;

  return selectedIndexes;
}

- (void)_ensureValidAssetIndexes
{
  v16 = *MEMORY[0x1E69E9840];
  if (!self->_hasValidAssetIndexes)
  {
    self->_hasValidAssetIndexes = 1;
    v3 = objc_opt_new();
    selectedIndexes = self->_selectedIndexes;
    self->_selectedIndexes = v3;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_selectedAssets;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(PHFetchResult *)self->_fetchResult indexOfObject:*(*(&v11 + 1) + 8 * v9), v11];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableIndexSet *)self->_selectedIndexes addIndex:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (PUPhotoSelectionEntry)initWithAssetCollection:(id)collection fetchResult:(id)result uniqueSelectedAssets:(id)assets
{
  collectionCopy = collection;
  resultCopy = result;
  assetsCopy = assets;
  v19.receiver = self;
  v19.super_class = PUPhotoSelectionEntry;
  v12 = [(PUPhotoSelectionEntry *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, collection);
    objc_storeStrong(&v13->_fetchResult, result);
    if (assetsCopy)
    {
      v14 = assetsCopy;
    }

    else
    {
      v14 = [MEMORY[0x1E695DFA8] set];
    }

    selectedAssets = v13->_selectedAssets;
    v13->_selectedAssets = v14;

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    selectedIndexes = v13->_selectedIndexes;
    v13->_selectedIndexes = indexSet;
  }

  return v13;
}

@end