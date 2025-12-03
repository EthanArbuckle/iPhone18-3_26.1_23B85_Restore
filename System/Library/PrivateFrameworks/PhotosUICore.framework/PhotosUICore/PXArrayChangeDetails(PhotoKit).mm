@interface PXArrayChangeDetails(PhotoKit)
+ (id)changeDetailsFromFetchResultChangeDetails:()PhotoKit originatingChange:;
@end

@implementation PXArrayChangeDetails(PhotoKit)

+ (id)changeDetailsFromFetchResultChangeDetails:()PhotoKit originatingChange:
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    changeDetailsWithNoChanges = [self changeDetailsWithNoChanges];
LABEL_9:
    v18 = changeDetailsWithNoChanges;
    goto LABEL_13;
  }

  if (([v6 hasIncrementalChanges] & 1) == 0)
  {
    changeDetailsWithNoChanges = [self changeDetailsWithNoIncrementalChanges];
    goto LABEL_9;
  }

  changedIndexes = [v6 changedIndexes];
  v9 = [changedIndexes count];

  v10 = 0;
  if (v7 && v9)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    fetchResultAfterChanges = [v6 fetchResultAfterChanges];
    changedIndexes2 = [v6 changedIndexes];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __94__PXArrayChangeDetails_PhotoKit__changeDetailsFromFetchResultChangeDetails_originatingChange___block_invoke;
    v29 = &unk_1E774C1B0;
    v14 = fetchResultAfterChanges;
    v30 = v14;
    v31 = v7;
    v15 = v11;
    v32 = v15;
    [changedIndexes2 enumerateIndexesUsingBlock:&v26];

    if ([v15 count])
    {
      v33 = *off_1E7721F80;
      v16 = [v15 copy];
      v34[0] = v16;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v10 = 0;
    }
  }

  v19 = [self alloc];
  removedIndexes = [v6 removedIndexes];
  insertedIndexes = [v6 insertedIndexes];
  movedIndexes = [v6 movedIndexes];
  movedFromIndexes = [v6 movedFromIndexes];
  changedIndexes3 = [v6 changedIndexes];
  v18 = [v19 initWithIncrementalChangeDetailsRemovedIndexes:removedIndexes insertedIndexes:insertedIndexes movesToIndexes:movedIndexes movesFromIndexes:movedFromIndexes changedIndexes:changedIndexes3 indexesWithChangesByProperty:v10];

LABEL_13:

  return v18;
}

@end