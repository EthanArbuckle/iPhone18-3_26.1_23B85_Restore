@interface PXArrayChangeDetails
+ (id)changeDetailsByMergingChangeDetails:(id)a3;
+ (id)changeDetailsFromArray:(id)a3 toArray:(id)a4 changedObjects:(id)a5 objectComparator:(id)a6;
+ (id)changeDetailsFromSubrange:(_NSRange)a3 toSubrange:(_NSRange)a4;
+ (id)changeDetailsWithChangedIndexRange:(_NSRange)a3;
+ (id)changeDetailsWithChangedIndexes:(id)a3;
+ (id)changeDetailsWithInsertedIndexRange:(_NSRange)a3;
+ (id)changeDetailsWithInsertedIndexes:(id)a3;
+ (id)changeDetailsWithMovedFromIndexRange:(_NSRange)a3 toIndexRange:(_NSRange)a4;
+ (id)changeDetailsWithNoChanges;
+ (id)changeDetailsWithNoIncrementalChanges;
+ (id)changeDetailsWithOldKeyItemIndex:(int64_t)a3 oldCount:(int64_t)a4 newKeyItemIndex:(int64_t)a5 newCount:(int64_t)a6;
+ (id)changeDetailsWithRemovedIndexRange:(_NSRange)a3;
+ (id)changeDetailsWithRemovedIndexes:(id)a3;
+ (unint64_t)indexAfterApplyingChanges:(id)a3 toIndex:(unint64_t)a4 objectChanged:(BOOL *)a5;
+ (unint64_t)indexAfterRevertingChanges:(id)a3 fromIndex:(unint64_t)a4 objectChanged:(BOOL *)a5;
- (BOOL)canPreserveIncrementalChangesWhenAddingChangeDetails:(id)a3;
- (BOOL)hasMoves;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOnlyInsertionAtEnd:(BOOL *)a3 orRemovalAtEnd:(BOOL *)a4 countBeforeChange:(int64_t)a5 countAfterChange:(int64_t)a6;
- (PXArrayChangeDetails)init;
- (PXArrayChangeDetails)initWithIncrementalChangeDetailsRemovedIndexes:(id)a3 insertedIndexes:(id)a4 movesToIndexes:(id)a5 movesFromIndexes:(__CFArray *)a6 changedIndexes:(id)a7 indexesWithChangesByProperty:(id)a8;
- (id)changeDetailsByAddingChangeDetails:(id)a3;
- (id)changeDetailsByAddingChangedIndexes:(id)a3;
- (id)changeDetailsByReplacingChangedItemsWithRemovalsAndInsertions;
- (id)changeDetailsShiftedBy:(int64_t)a3;
- (id)changedPropertiesForIndex:(int64_t)a3;
- (id)description;
- (id)indexSetAfterApplyingChangesToIndexSet:(id)a3;
- (id)indexSetAfterRevertingChangesToIndexSet:(id)a3;
- (id)indexesWithChangesToProperty:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)indexAfterApplyingChangesToIndex:(unint64_t)a3;
- (unint64_t)indexAfterRevertingChangesFromIndex:(unint64_t)a3;
- (void)applyToDictionary:(id)a3 removalHandler:(id)a4 moveHandler:(id)a5;
- (void)applyToIndexSet:(id)a3;
- (void)dealloc;
- (void)enumerateMovedIndexesUsingBlock:(id)a3;
- (void)enumerateMovedRangesUsingBlock:(id)a3;
@end

@implementation PXArrayChangeDetails

+ (id)changeDetailsWithNoIncrementalChanges
{
  if (changeDetailsWithNoIncrementalChanges_onceToken != -1)
  {
    dispatch_once(&changeDetailsWithNoIncrementalChanges_onceToken, &__block_literal_global_9_10828);
  }

  v3 = changeDetailsWithNoIncrementalChanges_changeDetails;

  return v3;
}

uint64_t __61__PXArrayChangeDetails_changeDetailsWithNoIncrementalChanges__block_invoke()
{
  changeDetailsWithNoIncrementalChanges_changeDetails = [(PXArrayChangeDetails *)[_PXArrayNoIncrementalChangeDetails alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)hasMoves
{
  v2 = [(PXArrayChangeDetails *)self movesToIndexes];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)dealloc
{
  movesFromIndexes = self->_movesFromIndexes;
  if (movesFromIndexes)
  {
    CFRelease(movesFromIndexes);
    self->_movesFromIndexes = 0;
  }

  v4.receiver = self;
  v4.super_class = PXArrayChangeDetails;
  [(PXArrayChangeDetails *)&v4 dealloc];
}

+ (id)changeDetailsWithNoChanges
{
  if (objc_opt_class() == a1)
  {
    if (changeDetailsWithNoChanges_onceToken != -1)
    {
      dispatch_once(&changeDetailsWithNoChanges_onceToken, &__block_literal_global_10833);
    }

    v3 = changeDetailsWithNoChanges__sharedEmptyChangeDetails;
  }

  else
  {
    v3 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  }

  return v3;
}

uint64_t __50__PXArrayChangeDetails_changeDetailsWithNoChanges__block_invoke()
{
  changeDetailsWithNoChanges__sharedEmptyChangeDetails = [[PXArrayChangeDetails alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)changeDetailsByMergingChangeDetails:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 count])
  {
    v4 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
    goto LABEL_5;
  }

  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
LABEL_5:
    v5 = v4;
    goto LABEL_24;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          if (![v9 canPreserveIncrementalChangesWhenAddingChangeDetails:*(*(&v16 + 1) + 8 * i)])
          {
            v13 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
            goto LABEL_22;
          }

          [v9 addChangeDetails:v12];
        }

        else
        {
          v9 = [*(*(&v16 + 1) + 8 * i) mutableCopy];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = [v9 copy];
  if (v14)
  {
    v13 = v14;
    v6 = v13;
LABEL_22:
    v5 = v13;
  }

  else
  {
    v5 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
    v6 = 0;
  }

LABEL_24:

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSIndexSet count](self->_movesToIndexes, "count")}];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35__PXArrayChangeDetails_description__block_invoke;
  v25[3] = &unk_1E7BB6FC8;
  v4 = v3;
  v26 = v4;
  [(PXArrayChangeDetails *)self enumerateMovedIndexesUsingBlock:v25];
  v5 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
  v6 = [v5 count];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __35__PXArrayChangeDetails_description__block_invoke_2;
    v23[3] = &unk_1E7BB6FF0;
    v24 = v7;
    v9 = v7;
    [v8 enumerateKeysAndObjectsUsingBlock:v23];

    v10 = MEMORY[0x1E696AEC0];
    v11 = [v9 componentsJoinedByString:{@", "}];
    v12 = [v10 stringWithFormat:@" properties:{%@}", v11];
  }

  else
  {
    v12 = &stru_1F2B87EE0;
  }

  v13 = MEMORY[0x1E696AEC0];
  v22.receiver = self;
  v22.super_class = PXArrayChangeDetails;
  v14 = [(PXArrayChangeDetails *)&v22 description];
  if ([(PXArrayChangeDetails *)self hasIncrementalChanges])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [(NSIndexSet *)self->_removedIndexes px_shortDescription];
  v17 = [(NSIndexSet *)self->_insertedIndexes px_shortDescription];
  v18 = [v4 componentsJoinedByString:{@", "}];
  v19 = [(NSIndexSet *)self->_changedIndexes px_shortDescription];
  v20 = [v13 stringWithFormat:@"<%@ hasIncremental:%@ removed:%@ inserted:%@ moved:[%@] changed:%@%@>", v14, v15, v16, v17, v18, v19, v12];

  return v20;
}

void __35__PXArrayChangeDetails_description__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu->%lu", a2, a3];
  [v3 addObject:v4];
}

void __35__PXArrayChangeDetails_description__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v8 = [a3 px_shortDescription];
  v7 = [v5 stringWithFormat:@"%@:%@", v6, v8];

  [v4 addObject:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (v4 == self)
  {
    v29 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXArrayChangeDetails *)self hasMoves];
      v7 = [(PXArrayChangeDetails *)v5 hasMoves];
      v8 = v27;
      *(v27 + 24) = v6 ^ v7 ^ 1;
      if ((v6 ^ v7))
      {
        *(v8 + 24) = 0;
      }

      else
      {
        IsEquivalentToIndexSet = PXIndexSetIsEquivalentToIndexSet(self->_removedIndexes, v5->_removedIndexes);
        v8 = v27;
        *(v27 + 24) = IsEquivalentToIndexSet;
        if (IsEquivalentToIndexSet)
        {
          v10 = PXIndexSetIsEquivalentToIndexSet(self->_insertedIndexes, v5->_insertedIndexes);
          v8 = v27;
          *(v27 + 24) = v10;
          if (v10)
          {
            v11 = PXIndexSetIsEquivalentToIndexSet(self->_movesToIndexes, v5->_movesToIndexes);
            v8 = v27;
            *(v27 + 24) = v11;
            if (v11)
            {
              v12 = PXIndexSetIsEquivalentToIndexSet(self->_changedIndexes, v5->_changedIndexes);
              v8 = v27;
              *(v27 + 24) = v12;
              if (v12)
              {
                indexesWithChangesByProperty = v5->_indexesWithChangesByProperty;
                v14 = self->_indexesWithChangesByProperty;
                v15 = indexesWithChangesByProperty;
                v16 = v15;
                if (v14 == v15)
                {

                  *(v27 + 24) = 1;
                }

                else
                {
                  v17 = [(NSDictionary *)v14 isEqual:v15];

                  *(v27 + 24) = v17;
                  if ((v17 & 1) == 0)
                  {
LABEL_17:

                    goto LABEL_18;
                  }
                }

                v25[0] = 0;
                v25[1] = v25;
                v25[2] = 0x2020000000;
                v25[3] = 0;
                movesToIndexes = self->_movesToIndexes;
                v21[0] = MEMORY[0x1E69E9820];
                v21[1] = 3221225472;
                v21[2] = __32__PXArrayChangeDetails_isEqual___block_invoke;
                v21[3] = &unk_1E7BB6FA0;
                v21[4] = self;
                v23 = v25;
                v22 = v5;
                v24 = &v26;
                [(NSIndexSet *)movesToIndexes enumerateIndexesUsingBlock:v21];

                _Block_object_dispose(v25, 8);
                goto LABEL_17;
              }

LABEL_16:
              *(v8 + 24) = 0;
              goto LABEL_17;
            }

LABEL_15:
            *(v8 + 24) = 0;
            goto LABEL_16;
          }

LABEL_14:
          *(v8 + 24) = 0;
          goto LABEL_15;
        }
      }

      *(v8 + 24) = 0;
      goto LABEL_14;
    }
  }

LABEL_18:
  v18 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v18;
}

const void *__32__PXArrayChangeDetails_isEqual___block_invoke(void *a1, uint64_t a2, _BYTE *a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1[4] + 32), *(*(a1[6] + 8) + 24));
  result = CFArrayGetValueAtIndex(*(a1[5] + 32), *(*(a1[6] + 8) + 24));
  if (ValueAtIndex != result)
  {
    *(*(a1[7] + 8) + 24) = 0;
    *a3 = 1;
  }

  ++*(*(a1[6] + 8) + 24);
  return result;
}

- (BOOL)isOnlyInsertionAtEnd:(BOOL *)a3 orRemovalAtEnd:(BOOL *)a4 countBeforeChange:(int64_t)a5 countAfterChange:(int64_t)a6
{
  if ([(PXArrayChangeDetails *)self hasIncrementalChanges]&& ![(PXArrayChangeDetails *)self hasMoves])
  {
    v15 = [(PXArrayChangeDetails *)self insertedIndexes];
    v16 = [(PXArrayChangeDetails *)self removedIndexes];
    v17 = [v16 count];
    v12 = v17 == 0;
    if (v17)
    {
      if ([v15 count])
      {
        v11 = 0;
        v13 = 0;
      }

      else
      {
        v13 = [v16 px_isSingleRangeWithMax:a5];
        v11 = 1;
      }
    }

    else
    {
      v13 = [v15 px_isSingleRangeWithMax:a6];
      v11 = 0;
    }

    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  *a3 = v12;
LABEL_5:
  if (a4)
  {
    *a4 = v11;
  }

  return v13;
}

- (id)changeDetailsByAddingChangeDetails:(id)a3
{
  v4 = a3;
  if ([(PXArrayChangeDetails *)self canPreserveIncrementalChangesWhenAddingChangeDetails:v4])
  {
    v5 = [(PXArrayChangeDetails *)self mutableCopy];
    [v5 addChangeDetails:v4];
    v6 = [v5 copy];
  }

  else
  {
    v6 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
  }

  return v6;
}

- (BOOL)canPreserveIncrementalChangesWhenAddingChangeDetails:(id)a3
{
  v4 = a3;
  if (-[PXArrayChangeDetails hasIncrementalChanges](self, "hasIncrementalChanges") && [v4 hasIncrementalChanges])
  {
    if ([(PXArrayChangeDetails *)self hasMoves])
    {
      v5 = [v4 hasAnyInsertionsRemovalsOrMoves] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)applyToDictionary:(id)a3 removalHandler:(id)a4 moveHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PXArrayChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    v11 = [v8 copy];
    [v8 removeAllObjects];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PXArrayChangeDetails_applyToDictionary_removalHandler_moveHandler___block_invoke;
    v12[3] = &unk_1E7BB6F78;
    v12[4] = self;
    v14 = v9;
    v13 = v8;
    v15 = v10;
    [v11 enumerateKeysAndObjectsUsingBlock:v12];
  }
}

void __69__PXArrayChangeDetails_applyToDictionary_removalHandler_moveHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [*(a1 + 32) indexAfterApplyingChangesToIndex:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v12);
    }
  }

  else
  {
    v8 = v6;
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [v9 setObject:v12 forKeyedSubscript:v10];

    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, v5, v8, v12);
    }
  }
}

- (void)applyToIndexSet:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(PXArrayChangeDetails *)self indexSetAfterApplyingChangesToIndexSet:v5];
    if (v4 != v5)
    {
      [v5 removeAllIndexes];
      [v5 addIndexes:v4];
    }
  }
}

- (id)indexSetAfterRevertingChangesToIndexSet:(id)a3
{
  v4 = a3;
  if (![(PXArrayChangeDetails *)self hasIncrementalChanges])
  {
    v13 = [MEMORY[0x1E696AC90] indexSet];
    goto LABEL_10;
  }

  v5 = [(PXArrayChangeDetails *)self insertedIndexes];
  if (![v5 count])
  {
    v6 = [(PXArrayChangeDetails *)self removedIndexes];
    if ([v6 count])
    {

      goto LABEL_5;
    }

    v15 = [(PXArrayChangeDetails *)self hasMoves];

    if (v15)
    {
      goto LABEL_6;
    }

    v13 = v4;
LABEL_10:
    v12 = v13;
    goto LABEL_11;
  }

LABEL_5:

LABEL_6:
  v7 = [v4 mutableCopy];
  [v7 addIndexes:v4];
  if ([(PXArrayChangeDetails *)self hasMoves])
  {
    v8 = [v4 mutableCopy];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __64__PXArrayChangeDetails_indexSetAfterRevertingChangesToIndexSet___block_invoke;
    v19 = &unk_1E7BB6F50;
    v20 = v7;
    v21 = v8;
    v9 = v8;
    [(PXArrayChangeDetails *)self enumerateMovedRangesUsingBlock:&v16];
  }

  v10 = [(PXArrayChangeDetails *)self insertedIndexes:v16];
  [v7 px_adjustIndexesForDeletions:v10];

  v11 = [(PXArrayChangeDetails *)self removedIndexes];
  [v7 px_adjustIndexesForInsertions:v11];

  v12 = [v7 copy];
LABEL_11:

  return v12;
}

void __64__PXArrayChangeDetails_indexSetAfterRevertingChangesToIndexSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) removeIndexesInRange:{a2, a3}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PXArrayChangeDetails_indexSetAfterRevertingChangesToIndexSet___block_invoke_2;
  v11[3] = &unk_1E7BB6F28;
  v10 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = a4;
  v14 = a5;
  v15 = a2;
  v16 = a3;
  [v10 enumerateIndexesInRange:a4 options:a5 usingBlock:{0, v11}];
}

- (id)indexSetAfterApplyingChangesToIndexSet:(id)a3
{
  v4 = a3;
  if (![(PXArrayChangeDetails *)self hasIncrementalChanges])
  {
    v13 = [MEMORY[0x1E696AC90] indexSet];
    goto LABEL_10;
  }

  v5 = [(PXArrayChangeDetails *)self insertedIndexes];
  if (![v5 count])
  {
    v6 = [(PXArrayChangeDetails *)self removedIndexes];
    if ([v6 count])
    {

      goto LABEL_5;
    }

    v15 = [(PXArrayChangeDetails *)self hasMoves];

    if (v15)
    {
      goto LABEL_6;
    }

    v13 = v4;
LABEL_10:
    v12 = v13;
    goto LABEL_11;
  }

LABEL_5:

LABEL_6:
  v7 = [v4 mutableCopy];
  v8 = [(PXArrayChangeDetails *)self removedIndexes];
  [v7 px_adjustIndexesForDeletions:v8];

  v9 = [(PXArrayChangeDetails *)self insertedIndexes];
  [v7 px_adjustIndexesForInsertions:v9];

  if ([(PXArrayChangeDetails *)self hasMoves])
  {
    v10 = [v7 copy];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __63__PXArrayChangeDetails_indexSetAfterApplyingChangesToIndexSet___block_invoke;
    v19 = &unk_1E7BB6F50;
    v20 = v7;
    v21 = v10;
    v11 = v10;
    [(PXArrayChangeDetails *)self enumerateMovedRangesUsingBlock:&v16];
  }

  v12 = [v7 copy];

LABEL_11:

  return v12;
}

void __63__PXArrayChangeDetails_indexSetAfterApplyingChangesToIndexSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) removeIndexesInRange:{a4, a5}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__PXArrayChangeDetails_indexSetAfterApplyingChangesToIndexSet___block_invoke_2;
  v11[3] = &unk_1E7BB6F28;
  v10 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  [v10 enumerateIndexesInRange:a2 options:a3 usingBlock:{0, v11}];
}

- (unint64_t)indexAfterRevertingChangesFromIndex:(unint64_t)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = a3;
    if ([(PXArrayChangeDetails *)self hasMoves])
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __60__PXArrayChangeDetails_indexAfterRevertingChangesFromIndex___block_invoke;
      v10[3] = &unk_1E7BB6F00;
      v10[4] = &v11;
      [(PXArrayChangeDetails *)self enumerateMovedIndexesUsingBlock:v10];
    }

    insertedIndexes = self->_insertedIndexes;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__PXArrayChangeDetails_indexAfterRevertingChangesFromIndex___block_invoke_2;
    v9[3] = &unk_1E7BB7990;
    v9[4] = &v11;
    [(NSIndexSet *)insertedIndexes enumerateRangesWithOptions:2 usingBlock:v9];
    v3 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      removedIndexes = self->_removedIndexes;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__PXArrayChangeDetails_indexAfterRevertingChangesFromIndex___block_invoke_3;
      v8[3] = &unk_1E7BB7990;
      v8[4] = &v11;
      [(NSIndexSet *)removedIndexes enumerateRangesUsingBlock:v8];
      v3 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
  }

  return v3;
}

uint64_t __60__PXArrayChangeDetails_indexAfterRevertingChangesFromIndex___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  if (*(v4 + 24) == a3)
  {
    *(v4 + 24) = a2;
    *a4 = 1;
  }

  return result;
}

uint64_t __60__PXArrayChangeDetails_indexAfterRevertingChangesFromIndex___block_invoke_2(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 < a2 || v5 - a2 >= a3)
  {
    if ((a3 + a2 - 1) < v5)
    {
      *(v4 + 24) = v5 - a3;
    }
  }

  else
  {
    *(v4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    *a4 = 1;
  }

  return result;
}

uint64_t __60__PXArrayChangeDetails_indexAfterRevertingChangesFromIndex___block_invoke_3(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (a2 <= v5)
  {
    *(v4 + 24) = v5 + a3;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (unint64_t)indexAfterApplyingChangesToIndex:(unint64_t)a3
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = a3;
    removedIndexes = self->_removedIndexes;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PXArrayChangeDetails_indexAfterApplyingChangesToIndex___block_invoke;
    v10[3] = &unk_1E7BB7990;
    v10[4] = &v11;
    [(NSIndexSet *)removedIndexes enumerateRangesWithOptions:2 usingBlock:v10];
    if (v12[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      insertedIndexes = self->_insertedIndexes;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57__PXArrayChangeDetails_indexAfterApplyingChangesToIndex___block_invoke_2;
      v9[3] = &unk_1E7BB7990;
      v9[4] = &v11;
      [(NSIndexSet *)insertedIndexes enumerateRangesUsingBlock:v9];
      if (v12[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([(PXArrayChangeDetails *)self hasMoves])
        {
          v8[0] = MEMORY[0x1E69E9820];
          v8[1] = 3221225472;
          v8[2] = __57__PXArrayChangeDetails_indexAfterApplyingChangesToIndex___block_invoke_3;
          v8[3] = &unk_1E7BB6F00;
          v8[4] = &v11;
          [(PXArrayChangeDetails *)self enumerateMovedIndexesUsingBlock:v8];
        }
      }
    }

    v3 = v12[3];
    _Block_object_dispose(&v11, 8);
  }

  return v3;
}

uint64_t __57__PXArrayChangeDetails_indexAfterApplyingChangesToIndex___block_invoke(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (v5 < a2 || v5 - a2 >= a3)
  {
    if ((a3 + a2 - 1) < v5)
    {
      *(v4 + 24) = v5 - a3;
    }
  }

  else
  {
    *(v4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    *a4 = 1;
  }

  return result;
}

uint64_t __57__PXArrayChangeDetails_indexAfterApplyingChangesToIndex___block_invoke_2(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  v5 = *(v4 + 24);
  if (a2 <= v5)
  {
    *(v4 + 24) = v5 + a3;
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __57__PXArrayChangeDetails_indexAfterApplyingChangesToIndex___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  if (*(v4 + 24) == a2)
  {
    *(v4 + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (id)changedPropertiesForIndex:(int64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__10783;
  v14 = __Block_byref_object_dispose__10784;
  v15 = 0;
  v5 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__PXArrayChangeDetails_changedPropertiesForIndex___block_invoke;
  v9[3] = &unk_1E7BB6ED8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v11[5];
  if (v6)
  {
    v7 = [v6 copy];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __50__PXArrayChangeDetails_changedPropertiesForIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  if ([a3 containsIndex:*(a1 + 48)])
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      v7 = [*(a1 + 32) indexesWithChangesByProperty];
      v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v5 addObject:v11];
  }
}

- (id)indexesWithChangesToProperty:(id)a3
{
  v3 = [(NSDictionary *)self->_indexesWithChangesByProperty objectForKeyedSubscript:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AC90] indexSet];
  }

  v6 = v5;

  return v6;
}

- (void)enumerateMovedIndexesUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PXArrayChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke;
  v6[3] = &unk_1E7BB6EB0;
  v7 = v4;
  v5 = v4;
  [(PXArrayChangeDetails *)self enumerateMovedRangesUsingBlock:v6];
}

uint64_t __56__PXArrayChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  if (a3)
  {
    v8 = a3;
    v10 = result;
    do
    {
      if (*a6 == 1)
      {
        break;
      }

      result = (*(*(v10 + 32) + 16))();
      ++a4;
      ++a2;
      --v8;
    }

    while (v8);
  }

  return result;
}

- (void)enumerateMovedRangesUsingBlock:(id)a3
{
  v5 = a3;
  v6 = v5;
  movesToIndexes = self->_movesToIndexes;
  if (movesToIndexes)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __55__PXArrayChangeDetails_enumerateMovedRangesUsingBlock___block_invoke;
    v8[3] = &unk_1E7BB6E88;
    v8[4] = self;
    v10 = v12;
    v11 = a2;
    v9 = v5;
    [(NSIndexSet *)movesToIndexes enumerateRangesUsingBlock:v8];

    _Block_object_dispose(v12, 8);
  }
}

void __55__PXArrayChangeDetails_enumerateMovedRangesUsingBlock___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    while (1)
    {
      v12 = v11;
      v13 = v9;
      v11 = v7 + a2;
      v14 = *(a1[4] + 32);
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 24);
      *(v15 + 24) = v16 + 1;
      ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
      v18 = ValueAtIndex;
      v19 = 1;
      if (!v8 || v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((v8 + v10) == ValueAtIndex)
      {
        v19 = v8 + 1;
        v18 = v10;
        break;
      }

      (*(a1[5] + 16))();
      if (*a4)
      {
        return;
      }

      ++v7;
      v8 = 1;
      v10 = v18;
      v9 = 1;
      if (v7 == a3)
      {
        goto LABEL_20;
      }
    }

    v8 = v19;
    v10 = v18;
    v9 = 1;
    if (v13 && v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v13 + v12 == v11)
      {
        v9 = v13 + 1;
        v11 = v12;
      }

      else
      {
        v20 = PXAssertGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1B3F73000, v20, OS_LOG_TYPE_ERROR, "Expects contigous range...", buf, 2u);
        }

        v11 = v12;
        v9 = v13;
      }
    }

    ++v7;
  }

  while (v7 != a3);
  if (v8 && (*a4 & 1) == 0)
  {
LABEL_20:
    (*(a1[5] + 16))();
  }
}

- (id)changeDetailsByAddingChangedIndexes:(id)a3
{
  v4 = a3;
  if ([(PXArrayChangeDetails *)self hasIncrementalChanges])
  {
    v5 = [(PXArrayChangeDetails *)self changedIndexes];
    if ([v5 count])
    {
      v6 = [(PXArrayChangeDetails *)self changedIndexes];
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    [v7 addIndexes:v4];
    v9 = [PXArrayChangeDetails alloc];
    v10 = [(PXArrayChangeDetails *)self removedIndexes];
    v11 = [(PXArrayChangeDetails *)self insertedIndexes];
    v12 = [(PXArrayChangeDetails *)self movesToIndexes];
    v8 = [(PXArrayChangeDetails *)v9 initWithIncrementalChangeDetailsRemovedIndexes:v10 insertedIndexes:v11 movesToIndexes:v12 movesFromIndexes:[(PXArrayChangeDetails *)self movesFromIndexes] changedIndexes:v7];
  }

  else
  {
    v8 = self;
  }

  return v8;
}

- (id)changeDetailsShiftedBy:(int64_t)a3
{
  if ([(PXArrayChangeDetails *)self hasIncrementalChanges]&& (v5 = [(PXArrayChangeDetails *)self hasAnyChanges], a3) && v5)
  {
    v6 = [(PXArrayChangeDetails *)self removedIndexes];
    if ([v6 count])
    {
      v7 = [(PXArrayChangeDetails *)self removedIndexes];
      v8 = [v7 mutableCopy];
    }

    else
    {
      v8 = [0 mutableCopy];
    }

    v10 = [(PXArrayChangeDetails *)self insertedIndexes];
    if ([v10 count])
    {
      v11 = [(PXArrayChangeDetails *)self insertedIndexes];
      v12 = [v11 mutableCopy];
    }

    else
    {
      v12 = [0 mutableCopy];
    }

    v13 = [(PXArrayChangeDetails *)self movesToIndexes];
    if ([v13 count])
    {
      v14 = [(PXArrayChangeDetails *)self movesToIndexes];
      v15 = [v14 mutableCopy];
    }

    else
    {
      v15 = [0 mutableCopy];
    }

    v16 = [(PXArrayChangeDetails *)self changedIndexes];
    if ([v16 count])
    {
      v17 = [(PXArrayChangeDetails *)self changedIndexes];
      v18 = [v17 mutableCopy];
    }

    else
    {
      v18 = [0 mutableCopy];
    }

    [v8 shiftIndexesStartingAtIndex:0 by:a3];
    [v12 shiftIndexesStartingAtIndex:0 by:a3];
    [v15 shiftIndexesStartingAtIndex:0 by:a3];
    [v18 shiftIndexesStartingAtIndex:0 by:a3];
    v19 = 0;
    if ([(PXArrayChangeDetails *)self hasMoves])
    {
      v20 = [v15 count];
      v21 = [(PXArrayChangeDetails *)self movesFromIndexes];
      v25 = *byte_1F2B86DF8;
      v19 = CFArrayCreateMutable(0, v20, &v25);
      if (v20 >= 1)
      {
        for (i = 0; i != v20; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
          CFArrayAppendValue(v19, &ValueAtIndex[a3]);
        }
      }
    }

    v9 = [[PXArrayChangeDetails alloc] initWithIncrementalChangeDetailsRemovedIndexes:v8 insertedIndexes:v12 movesToIndexes:v15 movesFromIndexes:v19 changedIndexes:v18];
    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    v9 = self;
  }

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if ([(PXArrayChangeDetails *)self hasIncrementalChanges])
  {
    v4 = [PXMutableArrayChangeDetails alloc];
    v5 = [(PXArrayChangeDetails *)self removedIndexes];
    v6 = [(PXArrayChangeDetails *)self insertedIndexes];
    v7 = [(PXArrayChangeDetails *)self movesToIndexes];
    v8 = [(PXArrayChangeDetails *)self movesFromIndexes];
    v9 = [(PXArrayChangeDetails *)self changedIndexes];
    v10 = [(PXArrayChangeDetails *)v4 initWithIncrementalChangeDetailsRemovedIndexes:v5 insertedIndexes:v6 movesToIndexes:v7 movesFromIndexes:v8 changedIndexes:v9];

    return v10;
  }

  else
  {
    +[PXMutableArrayChangeDetails changeDetailsWithNoIncrementalChanges];
    return objc_claimAutoreleasedReturnValue();
  }
}

- (PXArrayChangeDetails)initWithIncrementalChangeDetailsRemovedIndexes:(id)a3 insertedIndexes:(id)a4 movesToIndexes:(id)a5 movesFromIndexes:(__CFArray *)a6 changedIndexes:(id)a7 indexesWithChangesByProperty:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v58.receiver = self;
  v58.super_class = PXArrayChangeDetails;
  v20 = [(PXArrayChangeDetails *)&v58 init];
  if (v20)
  {
    v21 = [v17 count];
    if (a6)
    {
      Count = CFArrayGetCount(a6);
    }

    else
    {
      Count = 0;
    }

    if (v21 != Count)
    {
      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      [v57 handleFailureInMethod:a2 object:v20 file:@"PXArrayChangeDetails.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"[movesToIndexes count] == (movesFromIndexes == nil ? 0 : CFArrayGetCount(movesFromIndexes))"}];
    }

    if ([objc_opt_class() _mutableCopyInputs])
    {
      v23 = [v15 mutableCopy];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = objc_alloc_init(MEMORY[0x1E696AD50]);
      }

      removedIndexes = v20->_removedIndexes;
      v20->_removedIndexes = v25;

      v30 = [v16 mutableCopy];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = objc_alloc_init(MEMORY[0x1E696AD50]);
      }

      insertedIndexes = v20->_insertedIndexes;
      v20->_insertedIndexes = v32;

      v38 = [v17 mutableCopy];
      v39 = v38;
      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = objc_alloc_init(MEMORY[0x1E696AD50]);
      }

      movesToIndexes = v20->_movesToIndexes;
      v20->_movesToIndexes = v40;

      v46 = *MEMORY[0x1E695E480];
      if (a6)
      {
        v47 = CFArrayGetCount(a6);
        MutableCopy = CFArrayCreateMutableCopy(v46, v47, a6);
      }

      else
      {
        MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      }

      v20->_movesFromIndexes = MutableCopy;
      v49 = [v18 mutableCopy];
      if (v49)
      {
LABEL_32:
        v51 = v49;
        v52 = v51;
LABEL_35:
        changedIndexes = v20->_changedIndexes;
        v20->_changedIndexes = v51;

        v54 = [v19 copy];
        indexesWithChangesByProperty = v20->_indexesWithChangesByProperty;
        v20->_indexesWithChangesByProperty = v54;

        goto LABEL_36;
      }

      v50 = MEMORY[0x1E696AD50];
    }

    else
    {
      v26 = [v15 copy];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = objc_alloc_init(MEMORY[0x1E696AC90]);
      }

      v33 = v20->_removedIndexes;
      v20->_removedIndexes = v28;

      v34 = [v16 copy];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = objc_alloc_init(MEMORY[0x1E696AC90]);
      }

      v41 = v20->_insertedIndexes;
      v20->_insertedIndexes = v36;

      v42 = [v17 copy];
      v43 = v20->_movesToIndexes;
      v20->_movesToIndexes = v42;

      if (a6)
      {
        v44 = CFRetain(a6);
      }

      else
      {
        v44 = 0;
      }

      v20->_movesFromIndexes = v44;
      v49 = [v18 copy];
      if (v49)
      {
        goto LABEL_32;
      }

      v50 = MEMORY[0x1E696AC90];
    }

    v51 = objc_alloc_init(v50);
    v52 = 0;
    goto LABEL_35;
  }

LABEL_36:

  return v20;
}

- (PXArrayChangeDetails)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"PXArrayChangeDetails.m" lineNumber:330 description:{@"%@ not supported", v5}];

  abort();
}

- (id)changeDetailsByReplacingChangedItemsWithRemovalsAndInsertions
{
  v2 = self;
  v3 = [(PXArrayChangeDetails *)v2 changedIndexes];
  if ([v3 count])
  {
    v4 = [[PXArrayChangeDetails alloc] initWithIncrementalChangeDetailsRemovedIndexes:v3 insertedIndexes:v3 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
    v5 = [(PXArrayChangeDetails *)v2 changeDetailsByAddingChangeDetails:v4];

    v2 = v5;
  }

  return v2;
}

+ (unint64_t)indexAfterRevertingChanges:(id)a3 fromIndex:(unint64_t)a4 objectChanged:(BOOL *)a5
{
  v7 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PXArrayChangeDetails_indexAfterRevertingChanges_fromIndex_objectChanged___block_invoke;
  v11[3] = &unk_1E7BB6E60;
  v11[4] = &v12;
  v11[5] = &v16;
  [v7 enumerateObjectsWithOptions:2 usingBlock:v11];
  if (a5)
  {
    v8 = *(v13 + 24) == 1 && v17[3] != 0x7FFFFFFFFFFFFFFFLL;
    *a5 = v8;
  }

  v9 = v17[3];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __75__PXArrayChangeDetails_indexAfterRevertingChanges_fromIndex_objectChanged___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 changedIndexes];
  *(*(*(a1 + 32) + 8) + 24) |= [v7 containsIndex:*(*(*(a1 + 40) + 8) + 24)];

  v8 = [v6 indexAfterRevertingChangesFromIndex:*(*(*(a1 + 40) + 8) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = v8;
  if (*(*(*(a1 + 40) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }
}

+ (unint64_t)indexAfterApplyingChanges:(id)a3 toIndex:(unint64_t)a4 objectChanged:(BOOL *)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        a4 = [v13 indexAfterApplyingChangesToIndex:{a4, v16}];
        v14 = [v13 changedIndexes];
        v10 |= [v14 containsIndex:a4];

        if (a4 == 0x7FFFFFFFFFFFFFFFLL)
        {
          a4 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_12;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_12:

  if (a5)
  {
    *a5 = v10 & (a4 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return a4;
}

+ (id)changeDetailsWithOldKeyItemIndex:(int64_t)a3 oldCount:(int64_t)a4 newKeyItemIndex:(int64_t)a5 newCount:(int64_t)a6
{
  v10 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, a4}];
  [v10 removeIndex:a3];
  v11 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, a6}];
  [v11 removeIndex:a5];
  v12 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v10 insertedIndexes:v11 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return v12;
}

+ (id)changeDetailsWithMovedFromIndexRange:(_NSRange)a3 toIndexRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  if (a3.length != a4.length)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PXArrayChangeDetails.m" lineNumber:213 description:{@"Invalid parameter not satisfying: %@", @"fromIndexRange.length == toIndexRange.length"}];
  }

  if (v7 + v6 > location && location + length > v7)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PXArrayChangeDetails.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"NSMaxRange(fromIndexRange) <= toIndexRange.location || NSMaxRange(toIndexRange) <= fromIndexRange.location"}];
  }

  v27.location = v7;
  v27.length = v6;
  v28.location = location;
  v28.length = length;
  v10 = NSUnionRange(v27, v28);
  v11 = v10.location;
  v12 = v10.length;
  v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v10.location, v10.length}];
  if (location > v7)
  {
    v14 = v6;
  }

  else
  {
    v14 = -v6;
  }

  callBacks = *byte_1F2B86DF8;
  v15 = CFArrayCreateMutable(0, v10.length, &callBacks);
  if (v10.location < v10.location + v10.length)
  {
    v16 = (v10.location + v14);
    v17 = (v10.location + v7 - location);
    v18 = v10.location - location;
    do
    {
      if (v18 >= length || location > v11)
      {
        v20 = v16;
      }

      else
      {
        v20 = v17;
      }

      CFArrayAppendValue(v15, v20);
      ++v11;
      ++v16;
      ++v17;
      ++v18;
      --v12;
    }

    while (v12);
  }

  v21 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:v13 movesFromIndexes:v15 changedIndexes:0];
  CFRelease(v15);

  return v21;
}

+ (id)changeDetailsWithChangedIndexes:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v4];

  return v5;
}

+ (id)changeDetailsWithRemovedIndexes:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v4 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return v5;
}

+ (id)changeDetailsWithInsertedIndexes:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v4 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return v5;
}

+ (id)changeDetailsWithChangedIndexRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{location, length}];
  v7 = [v5 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v6];

  return v7;
}

+ (id)changeDetailsWithRemovedIndexRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{location, length}];
  v7 = [v5 initWithIncrementalChangeDetailsRemovedIndexes:v6 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return v7;
}

+ (id)changeDetailsWithInsertedIndexRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{location, length}];
  v7 = [v5 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:v6 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

  return v7;
}

+ (id)changeDetailsFromSubrange:(_NSRange)a3 toSubrange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  v9 = NSIntersectionRange(a3, a4);
  if (v7 == location && v6 == length)
  {
    v10 = [a1 changeDetailsWithNoChanges];
    if (v10)
    {
      v11 = v10;
      goto LABEL_24;
    }
  }

  if (!v9.length || v9.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, length}];
    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v6}];
    v11 = [[PXArrayChangeDetails alloc] initWithIncrementalChangeDetailsRemovedIndexes:v13 insertedIndexes:v12 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];

    if (v11)
    {
      goto LABEL_24;
    }
  }

  v25 = a1;
  v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v15 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (v7 >= location)
  {
    if (v7 <= location)
    {
      goto LABEL_13;
    }

    v17 = v7 - location;
    v18 = v15;
  }

  else
  {
    v17 = location - v7;
    v18 = v14;
  }

  [v18 addIndexesInRange:{0, v17}];
LABEL_13:
  v19 = location + length - (v7 + v6);
  if (v19 < 0)
  {
    v20 = location + length - v7;
    v19 = v7 + v6 - (location + length);
    v21 = v14;
    goto LABEL_17;
  }

  if (location + length != v7 + v6)
  {
    v20 = v7 + v6 - location;
    v21 = v15;
LABEL_17:
    [v21 addIndexesInRange:{v20, v19}];
  }

  if (v9.length)
  {
    [v16 addIndexesInRange:{v9.location - location, v9.length}];
    v22 = v7 - location;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], [v16 count], 0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __61__PXArrayChangeDetails_changeDetailsFromSubrange_toSubrange___block_invoke;
    v26[3] = &__block_descriptor_48_e12_v24__0Q8_B16l;
    v26[4] = Mutable;
    v26[5] = v22;
    [v16 enumerateIndexesUsingBlock:v26];
  }

  else
  {
    Mutable = 0;
  }

  v11 = [[v25 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v14 insertedIndexes:v15 movesToIndexes:v16 movesFromIndexes:Mutable changedIndexes:0];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_24:

  return v11;
}

+ (id)changeDetailsFromArray:(id)a3 toArray:(id)a4 changedObjects:(id)a5 objectComparator:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count] || objc_msgSend(v11, "count"))
  {
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    PXDiffArraysWithObjectComparator(v10, v11, v12, v13, &v24, &v23, &v22, &v25, &v21);
    v14 = v24;
    v15 = v23;
    v16 = v22;
    v17 = v21;
    v18 = [a1 alloc];
    v19 = [v18 initWithIncrementalChangeDetailsRemovedIndexes:v14 insertedIndexes:v15 movesToIndexes:v16 movesFromIndexes:v25 changedIndexes:v17];
  }

  else
  {
    v19 = [a1 changeDetailsWithNoChanges];
  }

  return v19;
}

@end