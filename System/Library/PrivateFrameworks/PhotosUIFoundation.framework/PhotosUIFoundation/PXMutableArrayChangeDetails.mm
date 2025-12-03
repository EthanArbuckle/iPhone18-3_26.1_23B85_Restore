@interface PXMutableArrayChangeDetails
+ (id)changeDetailsWithNoIncrementalChanges;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addAdditionalRemovedIndex:(unint64_t)index afterChangesIndex:(unint64_t)changesIndex;
- (void)_addAdditionalRemovedIndexSet:(id)set afterChangesIndex:(id)index;
- (void)_addInsertedIndexes:(id)indexes;
- (void)_addInsertedRange:(_NSRange)range;
- (void)_addRemovedIndex:(unint64_t)index;
- (void)_addRemovedIndexes:(id)indexes;
- (void)_becomeNonIncremental;
- (void)_removeInsertForRemovedIndexAfterChanges:(unint64_t)changes;
- (void)_updateChangedIndexesWithChangeDetails:(id)details;
- (void)_updateMovesWithChangesDetails:(id)details;
- (void)_updatePropertyChangesWithChangeDetails:(id)details;
- (void)addChangeDetails:(id)details;
@end

@implementation PXMutableArrayChangeDetails

- (void)addChangeDetails:(id)details
{
  detailsCopy = details;
  if ([(PXArrayChangeDetails *)self canPreserveIncrementalChangesWhenAddingChangeDetails:?])
  {
    removedIndexes = [detailsCopy removedIndexes];
    [(PXMutableArrayChangeDetails *)self _addRemovedIndexes:removedIndexes];

    insertedIndexes = [detailsCopy insertedIndexes];
    [(PXMutableArrayChangeDetails *)self _addInsertedIndexes:insertedIndexes];

    [(PXMutableArrayChangeDetails *)self _updateMovesWithChangesDetails:detailsCopy];
    [(PXMutableArrayChangeDetails *)self _updateChangedIndexesWithChangeDetails:detailsCopy];
    [(PXMutableArrayChangeDetails *)self _updatePropertyChangesWithChangeDetails:detailsCopy];
  }

  else
  {
    [(PXMutableArrayChangeDetails *)self _becomeNonIncremental];
  }
}

- (void)_updatePropertyChangesWithChangeDetails:(id)details
{
  detailsCopy = details;
  indexesWithChangesByProperty = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
  if ([indexesWithChangesByProperty count])
  {

LABEL_4:
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indexesWithChangesByProperty2 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PXMutableArrayChangeDetails__updatePropertyChangesWithChangeDetails___block_invoke;
    v17[3] = &unk_1E7BB7068;
    v10 = detailsCopy;
    v18 = v10;
    v11 = v8;
    v19 = v11;
    [indexesWithChangesByProperty2 enumerateKeysAndObjectsUsingBlock:v17];

    indexesWithChangesByProperty3 = [v10 indexesWithChangesByProperty];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__PXMutableArrayChangeDetails__updatePropertyChangesWithChangeDetails___block_invoke_2;
    v15[3] = &unk_1E7BB6FF0;
    v16 = v11;
    v13 = v11;
    [indexesWithChangesByProperty3 enumerateKeysAndObjectsUsingBlock:v15];

    v14 = [v13 copy];
    [(PXArrayChangeDetails *)self setIndexesWithChangesByProperty:v14];

    goto LABEL_5;
  }

  indexesWithChangesByProperty4 = [detailsCopy indexesWithChangesByProperty];
  v7 = [indexesWithChangesByProperty4 count];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_5:
}

void __71__PXMutableArrayChangeDetails__updatePropertyChangesWithChangeDetails___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) indexSetAfterApplyingChangesToIndexSet:a3];
  if ([v5 count])
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __71__PXMutableArrayChangeDetails__updatePropertyChangesWithChangeDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v10];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    [v8 addIndexes:v5];
    v9 = [v8 copy];
  }

  else
  {
    v9 = v5;
  }

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

- (void)_updateChangedIndexesWithChangeDetails:(id)details
{
  detailsCopy = details;
  changedIndexes = [(PXArrayChangeDetails *)self changedIndexes];
  v5 = [detailsCopy indexSetAfterApplyingChangesToIndexSet:changedIndexes];
  if (v5 != changedIndexes)
  {
    [changedIndexes removeAllIndexes];
    [changedIndexes addIndexes:v5];
  }

  changedIndexes2 = [detailsCopy changedIndexes];
  [changedIndexes addIndexes:changedIndexes2];
}

- (void)_updateMovesWithChangesDetails:(id)details
{
  detailsCopy = details;
  if ([detailsCopy hasMoves] && !-[PXArrayChangeDetails hasMoves](self, "hasMoves"))
  {
    movesFromIndexes = [(PXArrayChangeDetails *)self movesFromIndexes];
    Count = CFArrayGetCount([detailsCopy movesFromIndexes]);
    movesFromIndexes2 = [detailsCopy movesFromIndexes];
    v11.location = 0;
    v11.length = Count;
    CFArrayAppendArray(movesFromIndexes, movesFromIndexes2, v11);
    movesToIndexes = [(PXArrayChangeDetails *)self movesToIndexes];
    movesToIndexes2 = [detailsCopy movesToIndexes];
    [movesToIndexes addIndexes:movesToIndexes2];
  }
}

- (void)_addInsertedIndexes:(id)indexes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXMutableArrayChangeDetails__addInsertedIndexes___block_invoke;
  v3[3] = &unk_1E7BB7918;
  v3[4] = self;
  [indexes enumerateRangesUsingBlock:v3];
}

- (void)_addInsertedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = "";
  v12 = xmmword_1B4074ED0;
  insertedIndexes = [(PXArrayChangeDetails *)self insertedIndexes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXMutableArrayChangeDetails__addInsertedRange___block_invoke;
  v7[3] = &unk_1E7BB7040;
  v7[4] = &v8;
  v7[5] = location;
  [insertedIndexes enumerateRangesUsingBlock:v7];
  v6 = v9[4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = v9[5] + v6;
  }

  [insertedIndexes shiftIndexesStartingAtIndex:location + 1 by:length];
  [insertedIndexes addIndexesInRange:{location, length}];

  _Block_object_dispose(&v8, 8);
}

uint64_t __49__PXMutableArrayChangeDetails__addInsertedRange___block_invoke(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(result + 40);
  if (v4 < a2 || v4 - a2 >= a3)
  {
    if (v4 >= a2)
    {
      return result;
    }
  }

  else
  {
    v6 = *(*(result + 32) + 8);
    *(v6 + 32) = a2;
    *(v6 + 40) = a3;
  }

  *a4 = 1;
  return result;
}

- (void)_addRemovedIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [(PXArrayChangeDetails *)self indexSetAfterRevertingChangesToIndexSet:indexesCopy];
  v6 = [v5 count];
  if (v6 == [indexesCopy count])
  {
    [(PXMutableArrayChangeDetails *)self _addAdditionalRemovedIndexSet:v5 afterChangesIndex:indexesCopy];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__PXMutableArrayChangeDetails__addRemovedIndexes___block_invoke;
    v7[3] = &unk_1E7BB83D8;
    v7[4] = self;
    [indexesCopy enumerateIndexesWithOptions:2 usingBlock:v7];
  }
}

- (void)_addRemovedIndex:(unint64_t)index
{
  v5 = [(PXArrayChangeDetails *)self indexAfterRevertingChangesFromIndex:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PXMutableArrayChangeDetails *)self _removeInsertForRemovedIndexAfterChanges:index];
  }

  else
  {

    [(PXMutableArrayChangeDetails *)self _addAdditionalRemovedIndex:v5 afterChangesIndex:index];
  }
}

- (void)_addAdditionalRemovedIndexSet:(id)set afterChangesIndex:(id)index
{
  indexCopy = index;
  setCopy = set;
  removedIndexes = [(PXArrayChangeDetails *)self removedIndexes];
  [removedIndexes addIndexes:setCopy];

  insertedIndexes = [(PXArrayChangeDetails *)self insertedIndexes];
  [insertedIndexes px_adjustIndexesForDeletions:indexCopy];
}

- (void)_addAdditionalRemovedIndex:(unint64_t)index afterChangesIndex:(unint64_t)changesIndex
{
  removedIndexes = [(PXArrayChangeDetails *)self removedIndexes];
  [removedIndexes addIndex:index];

  insertedIndexes = [(PXArrayChangeDetails *)self insertedIndexes];
  [insertedIndexes px_adjustIndexesForDeletedRange:{changesIndex, 1}];
}

- (void)_removeInsertForRemovedIndexAfterChanges:(unint64_t)changes
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = changes;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PXMutableArrayChangeDetails__removeInsertForRemovedIndexAfterChanges___block_invoke;
  v16[3] = &unk_1E7BB6F00;
  v16[4] = v17;
  [(PXArrayChangeDetails *)self enumerateMovedIndexesUsingBlock:v16];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = "";
  v15 = xmmword_1B4074ED0;
  insertedIndexes = [(PXArrayChangeDetails *)self insertedIndexes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PXMutableArrayChangeDetails__removeInsertForRemovedIndexAfterChanges___block_invoke_2;
  v10[3] = &unk_1E7BB7018;
  v10[4] = v17;
  v10[5] = &v11;
  [insertedIndexes enumerateRangesUsingBlock:v10];
  v6 = v12;
  v7 = v12[4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXArrayChangeDetails.m" lineNumber:849 description:@"Input was not inserted in this change"];

    v6 = v12;
    v7 = v12[4];
  }

  v8 = v6[5] + v7;
  [insertedIndexes removeIndex:v8 - 1];
  [insertedIndexes shiftIndexesStartingAtIndex:v8 by:-1];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v17, 8);
}

uint64_t __72__PXMutableArrayChangeDetails__removeInsertForRemovedIndexAfterChanges___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  if (*(v4 + 24) == a3)
  {
    *(v4 + 24) = a2;
    *a4 = 1;
  }

  return result;
}

uint64_t __72__PXMutableArrayChangeDetails__removeInsertForRemovedIndexAfterChanges___block_invoke_2(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(*(*(result + 32) + 8) + 24);
  v6 = v4 >= a2;
  v5 = v4 - a2;
  v6 = !v6 || v5 >= a3;
  if (!v6)
  {
    v7 = *(*(result + 40) + 8);
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)_becomeNonIncremental
{
  if ([(PXMutableArrayChangeDetails *)self hasIncrementalChanges])
  {
    self->_isNonIncremental = 1;
    removedIndexes = [(PXArrayChangeDetails *)self removedIndexes];
    [removedIndexes removeAllIndexes];

    insertedIndexes = [(PXArrayChangeDetails *)self insertedIndexes];
    [insertedIndexes removeAllIndexes];

    movesToIndexes = [(PXArrayChangeDetails *)self movesToIndexes];
    [movesToIndexes removeAllIndexes];

    CFArrayRemoveAllValues([(PXArrayChangeDetails *)self movesFromIndexes]);
    changedIndexes = [(PXArrayChangeDetails *)self changedIndexes];
    [changedIndexes removeAllIndexes];

    [(PXArrayChangeDetails *)self setIndexesWithChangesByProperty:0];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(PXMutableArrayChangeDetails *)self hasIncrementalChanges])
  {
    v4 = [PXArrayChangeDetails alloc];
    removedIndexes = [(PXArrayChangeDetails *)self removedIndexes];
    insertedIndexes = [(PXArrayChangeDetails *)self insertedIndexes];
    movesToIndexes = [(PXArrayChangeDetails *)self movesToIndexes];
    movesFromIndexes = [(PXArrayChangeDetails *)self movesFromIndexes];
    changedIndexes = [(PXArrayChangeDetails *)self changedIndexes];
    indexesWithChangesByProperty = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
    v11 = [(PXArrayChangeDetails *)v4 initWithIncrementalChangeDetailsRemovedIndexes:removedIndexes insertedIndexes:insertedIndexes movesToIndexes:movesToIndexes movesFromIndexes:movesFromIndexes changedIndexes:changedIndexes indexesWithChangesByProperty:indexesWithChangesByProperty];

    return v11;
  }

  else
  {
    +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
    return objc_claimAutoreleasedReturnValue();
  }
}

+ (id)changeDetailsWithNoIncrementalChanges
{
  v2 = [[self alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  [v2 _becomeNonIncremental];

  return v2;
}

@end