@interface PXMutableArrayChangeDetails
+ (id)changeDetailsWithNoIncrementalChanges;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addAdditionalRemovedIndex:(unint64_t)a3 afterChangesIndex:(unint64_t)a4;
- (void)_addAdditionalRemovedIndexSet:(id)a3 afterChangesIndex:(id)a4;
- (void)_addInsertedIndexes:(id)a3;
- (void)_addInsertedRange:(_NSRange)a3;
- (void)_addRemovedIndex:(unint64_t)a3;
- (void)_addRemovedIndexes:(id)a3;
- (void)_becomeNonIncremental;
- (void)_removeInsertForRemovedIndexAfterChanges:(unint64_t)a3;
- (void)_updateChangedIndexesWithChangeDetails:(id)a3;
- (void)_updateMovesWithChangesDetails:(id)a3;
- (void)_updatePropertyChangesWithChangeDetails:(id)a3;
- (void)addChangeDetails:(id)a3;
@end

@implementation PXMutableArrayChangeDetails

- (void)addChangeDetails:(id)a3
{
  v6 = a3;
  if ([(PXArrayChangeDetails *)self canPreserveIncrementalChangesWhenAddingChangeDetails:?])
  {
    v4 = [v6 removedIndexes];
    [(PXMutableArrayChangeDetails *)self _addRemovedIndexes:v4];

    v5 = [v6 insertedIndexes];
    [(PXMutableArrayChangeDetails *)self _addInsertedIndexes:v5];

    [(PXMutableArrayChangeDetails *)self _updateMovesWithChangesDetails:v6];
    [(PXMutableArrayChangeDetails *)self _updateChangedIndexesWithChangeDetails:v6];
    [(PXMutableArrayChangeDetails *)self _updatePropertyChangesWithChangeDetails:v6];
  }

  else
  {
    [(PXMutableArrayChangeDetails *)self _becomeNonIncremental];
  }
}

- (void)_updatePropertyChangesWithChangeDetails:(id)a3
{
  v4 = a3;
  v5 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
  if ([v5 count])
  {

LABEL_4:
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PXMutableArrayChangeDetails__updatePropertyChangesWithChangeDetails___block_invoke;
    v17[3] = &unk_1E7BB7068;
    v10 = v4;
    v18 = v10;
    v11 = v8;
    v19 = v11;
    [v9 enumerateKeysAndObjectsUsingBlock:v17];

    v12 = [v10 indexesWithChangesByProperty];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__PXMutableArrayChangeDetails__updatePropertyChangesWithChangeDetails___block_invoke_2;
    v15[3] = &unk_1E7BB6FF0;
    v16 = v11;
    v13 = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:v15];

    v14 = [v13 copy];
    [(PXArrayChangeDetails *)self setIndexesWithChangesByProperty:v14];

    goto LABEL_5;
  }

  v6 = [v4 indexesWithChangesByProperty];
  v7 = [v6 count];

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

- (void)_updateChangedIndexesWithChangeDetails:(id)a3
{
  v7 = a3;
  v4 = [(PXArrayChangeDetails *)self changedIndexes];
  v5 = [v7 indexSetAfterApplyingChangesToIndexSet:v4];
  if (v5 != v4)
  {
    [v4 removeAllIndexes];
    [v4 addIndexes:v5];
  }

  v6 = [v7 changedIndexes];
  [v4 addIndexes:v6];
}

- (void)_updateMovesWithChangesDetails:(id)a3
{
  v9 = a3;
  if ([v9 hasMoves] && !-[PXArrayChangeDetails hasMoves](self, "hasMoves"))
  {
    v4 = [(PXArrayChangeDetails *)self movesFromIndexes];
    Count = CFArrayGetCount([v9 movesFromIndexes]);
    v6 = [v9 movesFromIndexes];
    v11.location = 0;
    v11.length = Count;
    CFArrayAppendArray(v4, v6, v11);
    v7 = [(PXArrayChangeDetails *)self movesToIndexes];
    v8 = [v9 movesToIndexes];
    [v7 addIndexes:v8];
  }
}

- (void)_addInsertedIndexes:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXMutableArrayChangeDetails__addInsertedIndexes___block_invoke;
  v3[3] = &unk_1E7BB7918;
  v3[4] = self;
  [a3 enumerateRangesUsingBlock:v3];
}

- (void)_addInsertedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = "";
  v12 = xmmword_1B4074ED0;
  v5 = [(PXArrayChangeDetails *)self insertedIndexes];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__PXMutableArrayChangeDetails__addInsertedRange___block_invoke;
  v7[3] = &unk_1E7BB7040;
  v7[4] = &v8;
  v7[5] = location;
  [v5 enumerateRangesUsingBlock:v7];
  v6 = v9[4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    location = v9[5] + v6;
  }

  [v5 shiftIndexesStartingAtIndex:location + 1 by:length];
  [v5 addIndexesInRange:{location, length}];

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

- (void)_addRemovedIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PXArrayChangeDetails *)self indexSetAfterRevertingChangesToIndexSet:v4];
  v6 = [v5 count];
  if (v6 == [v4 count])
  {
    [(PXMutableArrayChangeDetails *)self _addAdditionalRemovedIndexSet:v5 afterChangesIndex:v4];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__PXMutableArrayChangeDetails__addRemovedIndexes___block_invoke;
    v7[3] = &unk_1E7BB83D8;
    v7[4] = self;
    [v4 enumerateIndexesWithOptions:2 usingBlock:v7];
  }
}

- (void)_addRemovedIndex:(unint64_t)a3
{
  v5 = [(PXArrayChangeDetails *)self indexAfterRevertingChangesFromIndex:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PXMutableArrayChangeDetails *)self _removeInsertForRemovedIndexAfterChanges:a3];
  }

  else
  {

    [(PXMutableArrayChangeDetails *)self _addAdditionalRemovedIndex:v5 afterChangesIndex:a3];
  }
}

- (void)_addAdditionalRemovedIndexSet:(id)a3 afterChangesIndex:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXArrayChangeDetails *)self removedIndexes];
  [v8 addIndexes:v7];

  v9 = [(PXArrayChangeDetails *)self insertedIndexes];
  [v9 px_adjustIndexesForDeletions:v6];
}

- (void)_addAdditionalRemovedIndex:(unint64_t)a3 afterChangesIndex:(unint64_t)a4
{
  v7 = [(PXArrayChangeDetails *)self removedIndexes];
  [v7 addIndex:a3];

  v8 = [(PXArrayChangeDetails *)self insertedIndexes];
  [v8 px_adjustIndexesForDeletedRange:{a4, 1}];
}

- (void)_removeInsertForRemovedIndexAfterChanges:(unint64_t)a3
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = a3;
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
  v5 = [(PXArrayChangeDetails *)self insertedIndexes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PXMutableArrayChangeDetails__removeInsertForRemovedIndexAfterChanges___block_invoke_2;
  v10[3] = &unk_1E7BB7018;
  v10[4] = v17;
  v10[5] = &v11;
  [v5 enumerateRangesUsingBlock:v10];
  v6 = v12;
  v7 = v12[4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXArrayChangeDetails.m" lineNumber:849 description:@"Input was not inserted in this change"];

    v6 = v12;
    v7 = v12[4];
  }

  v8 = v6[5] + v7;
  [v5 removeIndex:v8 - 1];
  [v5 shiftIndexesStartingAtIndex:v8 by:-1];

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
    v3 = [(PXArrayChangeDetails *)self removedIndexes];
    [v3 removeAllIndexes];

    v4 = [(PXArrayChangeDetails *)self insertedIndexes];
    [v4 removeAllIndexes];

    v5 = [(PXArrayChangeDetails *)self movesToIndexes];
    [v5 removeAllIndexes];

    CFArrayRemoveAllValues([(PXArrayChangeDetails *)self movesFromIndexes]);
    v6 = [(PXArrayChangeDetails *)self changedIndexes];
    [v6 removeAllIndexes];

    [(PXArrayChangeDetails *)self setIndexesWithChangesByProperty:0];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(PXMutableArrayChangeDetails *)self hasIncrementalChanges])
  {
    v4 = [PXArrayChangeDetails alloc];
    v5 = [(PXArrayChangeDetails *)self removedIndexes];
    v6 = [(PXArrayChangeDetails *)self insertedIndexes];
    v7 = [(PXArrayChangeDetails *)self movesToIndexes];
    v8 = [(PXArrayChangeDetails *)self movesFromIndexes];
    v9 = [(PXArrayChangeDetails *)self changedIndexes];
    v10 = [(PXArrayChangeDetails *)self indexesWithChangesByProperty];
    v11 = [(PXArrayChangeDetails *)v4 initWithIncrementalChangeDetailsRemovedIndexes:v5 insertedIndexes:v6 movesToIndexes:v7 movesFromIndexes:v8 changedIndexes:v9 indexesWithChangesByProperty:v10];

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
  v2 = [[a1 alloc] initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:0];
  [v2 _becomeNonIncremental];

  return v2;
}

@end