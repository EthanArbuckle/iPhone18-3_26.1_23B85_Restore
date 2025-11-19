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
    v17 = [a1 changeDetailsWithNoChanges];
LABEL_9:
    v18 = v17;
    goto LABEL_13;
  }

  if (([v6 hasIncrementalChanges] & 1) == 0)
  {
    v17 = [a1 changeDetailsWithNoIncrementalChanges];
    goto LABEL_9;
  }

  v8 = [v6 changedIndexes];
  v9 = [v8 count];

  v10 = 0;
  if (v7 && v9)
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v12 = [v6 fetchResultAfterChanges];
    v13 = [v6 changedIndexes];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __94__PXArrayChangeDetails_PhotoKit__changeDetailsFromFetchResultChangeDetails_originatingChange___block_invoke;
    v29 = &unk_1E774C1B0;
    v14 = v12;
    v30 = v14;
    v31 = v7;
    v15 = v11;
    v32 = v15;
    [v13 enumerateIndexesUsingBlock:&v26];

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

  v19 = [a1 alloc];
  v20 = [v6 removedIndexes];
  v21 = [v6 insertedIndexes];
  v22 = [v6 movedIndexes];
  v23 = [v6 movedFromIndexes];
  v24 = [v6 changedIndexes];
  v18 = [v19 initWithIncrementalChangeDetailsRemovedIndexes:v20 insertedIndexes:v21 movesToIndexes:v22 movesFromIndexes:v23 changedIndexes:v24 indexesWithChangesByProperty:v10];

LABEL_13:

  return v18;
}

@end