@interface PLIndexMapper
- (BOOL)applyContainerChangeNotification:(id)notification changeTypes:(int)types toFilteredIndexes:(id)indexes;
- (PLIndexMapper)initWithDataSource:(id)source;
- (id)backingIndexesForIndexes:(id)indexes;
- (id)indexesForBackingIndexes:(id)indexes;
- (unint64_t)backingIndexForIndex:(unint64_t)index;
- (unint64_t)indexForBackingIndex:(unint64_t)index;
@end

@implementation PLIndexMapper

- (BOOL)applyContainerChangeNotification:(id)notification changeTypes:(int)types toFilteredIndexes:(id)indexes
{
  typesCopy = types;
  notificationCopy = notification;
  indexesCopy = indexes;
  shouldReload = [notificationCopy shouldReload];
  if (notificationCopy)
  {
    v11 = shouldReload;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    if (typesCopy)
    {
      deletedIndexes = [notificationCopy deletedIndexes];
      [indexesCopy pl_adjustIndexesForDeletions:deletedIndexes];

      if ((typesCopy & 2) == 0)
      {
LABEL_7:
        if ((typesCopy & 4) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }
    }

    else if ((typesCopy & 2) == 0)
    {
      goto LABEL_7;
    }

    insertedIndexes = [notificationCopy insertedIndexes];
    firstIndex = [insertedIndexes firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [insertedIndexes indexGreaterThanIndex:i])
      {
        [indexesCopy shiftIndexesStartingAtIndex:i by:1];
        if ([(PLIndexMapperDataSource *)self->_dataSource shouldIncludeObjectAtIndex:i])
        {
          [indexesCopy addIndex:i];
        }
      }
    }

    if ((typesCopy & 4) == 0)
    {
LABEL_8:
      if ((typesCopy & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_18;
    }

LABEL_17:
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __80__PLIndexMapper_applyContainerChangeNotification_changeTypes_toFilteredIndexes___block_invoke;
    v27 = &unk_1E756B6B0;
    v18 = indexesCopy;
    v28 = v18;
    v29 = indexSet;
    v19 = indexSet;
    [notificationCopy enumerateMovesWithBlock:&v24];
    [v18 addIndexes:{v19, v24, v25, v26, v27}];

    if ((typesCopy & 8) == 0)
    {
LABEL_25:
      objc_autoreleasePoolPop(v12);
      goto LABEL_26;
    }

LABEL_18:
    changedIndexes = [notificationCopy changedIndexes];
    firstIndex2 = [changedIndexes firstIndex];
    if (firstIndex2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (j = firstIndex2; j != 0x7FFFFFFFFFFFFFFFLL; j = [changedIndexes indexGreaterThanIndex:j])
      {
        if ([(PLIndexMapperDataSource *)self->_dataSource shouldIncludeObjectAtIndex:j])
        {
          [indexesCopy addIndex:j];
        }

        else
        {
          [indexesCopy removeIndex:j];
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:

  return v11 ^ 1;
}

uint64_t __80__PLIndexMapper_applyContainerChangeNotification_changeTypes_toFilteredIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    [*(a1 + 32) removeIndex:a2];
    v7 = *(a1 + 40);

    return [v7 addIndex:a3];
  }

  return result;
}

- (unint64_t)backingIndexForIndex:(unint64_t)index
{
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    filteredIndexes = [(PLIndexMapperDataSource *)self->_dataSource filteredIndexes];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__PLIndexMapper_backingIndexForIndex___block_invoke;
    v7[3] = &unk_1E756B688;
    v7[5] = &v8;
    v7[6] = index;
    v7[4] = v12;
    [filteredIndexes enumerateRangesUsingBlock:v7];
    v3 = v9[3];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [filteredIndexes lastIndex] + 1;
    }

    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(v12, 8);
  }

  return v3;
}

void *__38__PLIndexMapper_backingIndexForIndex___block_invoke(void *result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = *(result[4] + 8);
  v5 = *(v4 + 24);
  v6 = result[6] - v5;
  if (v6 < a3)
  {
    *(*(result[5] + 8) + 24) = v6 + a2;
    *a4 = 1;
    v4 = *(result[4] + 8);
    v5 = *(v4 + 24);
  }

  *(v4 + 24) = v5 + a3;
  return result;
}

- (id)backingIndexesForIndexes:(id)indexes
{
  dataSource = self->_dataSource;
  indexesCopy = indexes;
  filteredIndexes = [(PLIndexMapperDataSource *)dataSource filteredIndexes];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__PLIndexMapper_backingIndexesForIndexes___block_invoke;
  v13[3] = &unk_1E756B660;
  v14 = filteredIndexes;
  v9 = indexSet;
  selfCopy = self;
  v17 = a2;
  v15 = v9;
  v10 = filteredIndexes;
  [indexesCopy enumerateRangesUsingBlock:v13];

  v11 = v9;
  return v9;
}

void __42__PLIndexMapper_backingIndexesForIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3010000000;
  v13[3] = &unk_19C721442;
  v13[4] = a2;
  v13[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PLIndexMapper_backingIndexesForIndexes___block_invoke_2;
  v7[3] = &unk_1E756B638;
  v10 = v13;
  v11 = v14;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v4 enumerateRangesUsingBlock:v7];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v14, 8);
}

void __42__PLIndexMapper_backingIndexesForIndexes___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 32) - *(*(*(a1 + 56) + 8) + 24);
  v8 = a3 - v7;
  if (a3 > v7)
  {
    if (*(v6 + 40) + v7 <= a3)
    {
      [*(a1 + 32) addIndexesInRange:v7 + a2];
      *a4 = 1;
    }

    else
    {
      [*(a1 + 32) addIndexesInRange:{v7 + a2, v8}];
      *(*(*(a1 + 48) + 8) + 32) += v8;
      *(*(*(a1 + 48) + 8) + 40) -= v8;
      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PLIndexMapper.m" lineNumber:89 description:{@"We split, but there's nothing left?"}];
      }
    }
  }

  *(*(*(a1 + 56) + 8) + 24) += a3;
}

- (unint64_t)indexForBackingIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  filteredIndexes = [(PLIndexMapperDataSource *)self->_dataSource filteredIndexes];
  v6 = [filteredIndexes countOfIndexesInRange:{0, index}];

  return v6;
}

- (id)indexesForBackingIndexes:(id)indexes
{
  dataSource = self->_dataSource;
  indexesCopy = indexes;
  filteredIndexes = [(PLIndexMapperDataSource *)dataSource filteredIndexes];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__PLIndexMapper_indexesForBackingIndexes___block_invoke;
  v12[3] = &unk_1E756B610;
  v13 = filteredIndexes;
  v7 = indexSet;
  v14 = v7;
  v8 = filteredIndexes;
  [indexesCopy enumerateRangesUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

uint64_t __42__PLIndexMapper_indexesForBackingIndexes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) countOfIndexesInRange:{0, a2}];
  v7 = [*(a1 + 32) countOfIndexesInRange:{a2, a3}];
  v8 = *(a1 + 40);

  return [v8 addIndexesInRange:{v6, v7}];
}

- (PLIndexMapper)initWithDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLIndexMapper.m" lineNumber:25 description:@"Must initialize with a data source"];
  }

  v10.receiver = self;
  v10.super_class = PLIndexMapper;
  v6 = [(PLIndexMapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_dataSource = sourceCopy;
  }

  return v7;
}

@end