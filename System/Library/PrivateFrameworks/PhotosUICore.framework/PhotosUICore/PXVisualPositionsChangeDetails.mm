@interface PXVisualPositionsChangeDetails
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges anchorFan:(int64_t)fan anchorReload:(int64_t)self0;
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges reloadAllIncludingAnchor:(BOOL)anchor;
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorRemoved:(int64_t)removed indexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges;
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorInserted:(int64_t)inserted indexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index;
- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterApplyingChangesToIndex:(SEL)index;
- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterRevertingChangesFromIndex:(SEL)index;
- (PXVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges;
- (id)arrayChangeDetailsWithItemsChanged:(BOOL)changed;
@end

@implementation PXVisualPositionsChangeDetails

- (id)arrayChangeDetailsWithItemsChanged:(BOOL)changed
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  countBeforeChanges = [(PXVisualPositionsChangeDetails *)self countBeforeChanges];
  if (countBeforeChanges >= 1)
  {
    v8 = countBeforeChanges;
    for (i = 0; i != v8; ++i)
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterApplyingChangesToIndex:i];
      if ((v17 & 1) == 0)
      {
        [v5 addIndex:i];
      }
    }
  }

  countAfterChanges = [(PXVisualPositionsChangeDetails *)self countAfterChanges];
  if (countAfterChanges >= 1)
  {
    v11 = countAfterChanges;
    for (j = 0; j != v11; ++j)
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterRevertingChangesFromIndex:j];
      if ((v16 & 1) == 0)
      {
        [v6 addIndex:j];
      }
    }
  }

  if (changed)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{0, -[PXVisualPositionsChangeDetails countAfterChanges](self, "countAfterChanges")}];
    [v13 removeIndexes:v6];
  }

  else
  {
    v13 = 0;
  }

  v14 = [[off_1E7721450 alloc] initWithIncrementalChangeDetailsRemovedIndexes:v5 insertedIndexes:v6 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v13];

  return v14;
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:index object:self file:@"PXVisualPositionsChangeDetails.m" lineNumber:168 description:{@"Method %s is a responsibility of subclass %@", "-[PXVisualPositionsChangeDetails bodyVisualPositionAfterRevertingChangesFromBodyIndex:]", v8}];

  abort();
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:index object:self file:@"PXVisualPositionsChangeDetails.m" lineNumber:164 description:{@"Method %s is a responsibility of subclass %@", "-[PXVisualPositionsChangeDetails bodyVisualPositionAfterApplyingChangesToBodyIndex:]", v8}];

  abort();
}

- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterRevertingChangesFromIndex:(SEL)index
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  headerIndexesAfterChanges = [(PXVisualPositionsChangeDetails *)self headerIndexesAfterChanges];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *&retstr->var2 = 0;
    *&retstr->var0 = PXVisualPositionNull;
  }

  else
  {
    v16 = headerIndexesAfterChanges;
    if ([headerIndexesAfterChanges containsIndex:a4])
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterRevertingChangesFromIndex:a4 + 1];
      retstr->var2 = 0;
      retstr->var1 = 1;
      headerIndexesAfterChanges = v16;
    }

    else
    {
      -[PXVisualPositionsChangeDetails bodyVisualPositionAfterRevertingChangesFromBodyIndex:](self, "bodyVisualPositionAfterRevertingChangesFromBodyIndex:", a4 - [v16 countOfIndexesInRange:{0, a4}]);
      var0 = retstr->var0;
      headerIndexesBeforeChanges = [(PXVisualPositionsChangeDetails *)self headerIndexesBeforeChanges];
      v10 = var0;
      if (var0 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = -1;
        v12 = -1;
        do
        {
          v10 = v12 + var0 - v11;
          v13 = [headerIndexesBeforeChanges countOfIndexesInRange:v12 + 1];
          v11 = var0 - v13;
          v12 = v10;
        }

        while (var0 - v13 < var0);
      }

      retstr->var0 = v10;

      v14 = (v10 & 0x8000000000000000) == 0 && v10 < [(PXVisualPositionsChangeDetails *)self countBeforeChanges];
      headerIndexesAfterChanges = v16;
      retstr->var2 &= v14;
    }
  }

  return result;
}

- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterApplyingChangesToIndex:(SEL)index
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  headerIndexesBeforeChanges = [(PXVisualPositionsChangeDetails *)self headerIndexesBeforeChanges];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *&retstr->var2 = 0;
    *&retstr->var0 = PXVisualPositionNull;
  }

  else
  {
    v16 = headerIndexesBeforeChanges;
    if ([headerIndexesBeforeChanges containsIndex:a4])
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterApplyingChangesToIndex:a4 + 1];
      retstr->var2 = 0;
      retstr->var1 = 1;
      headerIndexesBeforeChanges = v16;
    }

    else
    {
      -[PXVisualPositionsChangeDetails bodyVisualPositionAfterApplyingChangesToBodyIndex:](self, "bodyVisualPositionAfterApplyingChangesToBodyIndex:", a4 - [v16 countOfIndexesInRange:{0, a4}]);
      var0 = retstr->var0;
      headerIndexesAfterChanges = [(PXVisualPositionsChangeDetails *)self headerIndexesAfterChanges];
      v10 = var0;
      if (var0 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = -1;
        v12 = -1;
        do
        {
          v10 = v12 + var0 - v11;
          v13 = [headerIndexesAfterChanges countOfIndexesInRange:v12 + 1];
          v11 = var0 - v13;
          v12 = v10;
        }

        while (var0 - v13 < var0);
      }

      retstr->var0 = v10;

      v14 = (v10 & 0x8000000000000000) == 0 && v10 < [(PXVisualPositionsChangeDetails *)self countAfterChanges];
      headerIndexesBeforeChanges = v16;
      retstr->var2 &= v14;
    }
  }

  return result;
}

- (PXVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges
{
  indexesBeforeChangesCopy = indexesBeforeChanges;
  indexesAfterChangesCopy = indexesAfterChanges;
  v25.receiver = self;
  v25.super_class = PXVisualPositionsChangeDetails;
  v16 = [(PXVisualPositionsChangeDetails *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_countBeforeChanges = changes;
    v16->_anchorIndexBeforeChanges = beforeChanges;
    v18 = [indexesBeforeChangesCopy copy];
    headerIndexesBeforeChanges = v17->_headerIndexesBeforeChanges;
    v17->_headerIndexesBeforeChanges = v18;

    v17->_countAfterChanges = afterChanges;
    v17->_anchorIndexAfterChanges = indexAfterChanges;
    v20 = [indexesAfterChangesCopy copy];
    headerIndexesAfterChanges = v17->_headerIndexesAfterChanges;
    v17->_headerIndexesAfterChanges = v20;

    anchorIndexBeforeChanges = v17->_anchorIndexBeforeChanges;
    v17->_anchorBodyIndexBeforeChanges = anchorIndexBeforeChanges - [(NSIndexSet *)v17->_headerIndexesBeforeChanges countOfIndexesInRange:0, anchorIndexBeforeChanges];
    anchorIndexAfterChanges = v17->_anchorIndexAfterChanges;
    v17->_anchorBodyIndexAfterChanges = anchorIndexAfterChanges - [(NSIndexSet *)v17->_headerIndexesAfterChanges countOfIndexesInRange:0, anchorIndexAfterChanges];
  }

  return v17;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges reloadAllIncludingAnchor:(BOOL)anchor
{
  indexesAfterChangesCopy = indexesAfterChanges;
  indexesBeforeChangesCopy = indexesBeforeChanges;
  LOBYTE(v18) = anchor;
  v16 = [[PXReloadingVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChangesCopy countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChangesCopy reloadAllIncludingAnchor:v18];

  return v16;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorRemoved:(int64_t)removed indexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges
{
  indexesAfterChangesCopy = indexesAfterChanges;
  indexesBeforeChangesCopy = indexesBeforeChanges;
  LOBYTE(v19) = 0;
  v17 = [[PXAnchorInsertingOrRemovingVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChangesCopy countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChangesCopy anchorInserted:v19 relativePosition:removed];

  return v17;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorInserted:(int64_t)inserted indexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges
{
  indexesAfterChangesCopy = indexesAfterChanges;
  indexesBeforeChangesCopy = indexesBeforeChanges;
  LOBYTE(v19) = 1;
  v17 = [[PXAnchorInsertingOrRemovingVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChangesCopy countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChangesCopy anchorInserted:v19 relativePosition:inserted];

  return v17;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)changes anchorIndexBeforeChanges:(int64_t)beforeChanges headerIndexesBeforeChanges:(id)indexesBeforeChanges countAfterChanges:(int64_t)afterChanges anchorIndexAfterChanges:(int64_t)indexAfterChanges headerIndexesAfterChanges:(id)indexesAfterChanges anchorFan:(int64_t)fan anchorReload:(int64_t)self0
{
  indexesAfterChangesCopy = indexesAfterChanges;
  indexesBeforeChangesCopy = indexesBeforeChanges;
  v17 = [[PXFanningVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:changes anchorIndexBeforeChanges:beforeChanges headerIndexesBeforeChanges:indexesBeforeChangesCopy countAfterChanges:afterChanges anchorIndexAfterChanges:indexAfterChanges headerIndexesAfterChanges:indexesAfterChangesCopy anchorFan:fan anchorReload:reload];

  return v17;
}

@end