@interface PXVisualPositionsChangeDetails
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 anchorFan:(int64_t)a9 anchorReload:(int64_t)a10;
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 reloadAllIncludingAnchor:(BOOL)a9;
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorRemoved:(int64_t)a7 indexAfterChanges:(int64_t)a8 headerIndexesAfterChanges:(id)a9;
+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorInserted:(int64_t)a4 indexBeforeChanges:(int64_t)a5 headerIndexesBeforeChanges:(id)a6 countAfterChanges:(int64_t)a7 anchorIndexAfterChanges:(int64_t)a8 headerIndexesAfterChanges:(id)a9;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)a3;
- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)a3;
- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterApplyingChangesToIndex:(SEL)a3;
- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterRevertingChangesFromIndex:(SEL)a3;
- (PXVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8;
- (id)arrayChangeDetailsWithItemsChanged:(BOOL)a3;
@end

@implementation PXVisualPositionsChangeDetails

- (id)arrayChangeDetailsWithItemsChanged:(BOOL)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v7 = [(PXVisualPositionsChangeDetails *)self countBeforeChanges];
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterApplyingChangesToIndex:i];
      if ((v17 & 1) == 0)
      {
        [v5 addIndex:i];
      }
    }
  }

  v10 = [(PXVisualPositionsChangeDetails *)self countAfterChanges];
  if (v10 >= 1)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterRevertingChangesFromIndex:j];
      if ((v16 & 1) == 0)
      {
        [v6 addIndex:j];
      }
    }
  }

  if (a3)
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

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterRevertingChangesFromBodyIndex:(SEL)a3
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a3 object:self file:@"PXVisualPositionsChangeDetails.m" lineNumber:168 description:{@"Method %s is a responsibility of subclass %@", "-[PXVisualPositionsChangeDetails bodyVisualPositionAfterRevertingChangesFromBodyIndex:]", v8}];

  abort();
}

- ($5E4061BE7C3C8BB942C4587960135C41)bodyVisualPositionAfterApplyingChangesToBodyIndex:(SEL)a3
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a3 object:self file:@"PXVisualPositionsChangeDetails.m" lineNumber:164 description:{@"Method %s is a responsibility of subclass %@", "-[PXVisualPositionsChangeDetails bodyVisualPositionAfterApplyingChangesToBodyIndex:]", v8}];

  abort();
}

- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterRevertingChangesFromIndex:(SEL)a3
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  v7 = [(PXVisualPositionsChangeDetails *)self headerIndexesAfterChanges];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *&retstr->var2 = 0;
    *&retstr->var0 = PXVisualPositionNull;
  }

  else
  {
    v16 = v7;
    if ([v7 containsIndex:a4])
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterRevertingChangesFromIndex:a4 + 1];
      retstr->var2 = 0;
      retstr->var1 = 1;
      v7 = v16;
    }

    else
    {
      -[PXVisualPositionsChangeDetails bodyVisualPositionAfterRevertingChangesFromBodyIndex:](self, "bodyVisualPositionAfterRevertingChangesFromBodyIndex:", a4 - [v16 countOfIndexesInRange:{0, a4}]);
      var0 = retstr->var0;
      v9 = [(PXVisualPositionsChangeDetails *)self headerIndexesBeforeChanges];
      v10 = var0;
      if (var0 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = -1;
        v12 = -1;
        do
        {
          v10 = v12 + var0 - v11;
          v13 = [v9 countOfIndexesInRange:v12 + 1];
          v11 = var0 - v13;
          v12 = v10;
        }

        while (var0 - v13 < var0);
      }

      retstr->var0 = v10;

      v14 = (v10 & 0x8000000000000000) == 0 && v10 < [(PXVisualPositionsChangeDetails *)self countBeforeChanges];
      v7 = v16;
      retstr->var2 &= v14;
    }
  }

  return result;
}

- ($5E4061BE7C3C8BB942C4587960135C41)visualPositionAfterApplyingChangesToIndex:(SEL)a3
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  *&retstr->var2 = 0;
  v7 = [(PXVisualPositionsChangeDetails *)self headerIndexesBeforeChanges];
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *&retstr->var2 = 0;
    *&retstr->var0 = PXVisualPositionNull;
  }

  else
  {
    v16 = v7;
    if ([v7 containsIndex:a4])
    {
      [(PXVisualPositionsChangeDetails *)self visualPositionAfterApplyingChangesToIndex:a4 + 1];
      retstr->var2 = 0;
      retstr->var1 = 1;
      v7 = v16;
    }

    else
    {
      -[PXVisualPositionsChangeDetails bodyVisualPositionAfterApplyingChangesToBodyIndex:](self, "bodyVisualPositionAfterApplyingChangesToBodyIndex:", a4 - [v16 countOfIndexesInRange:{0, a4}]);
      var0 = retstr->var0;
      v9 = [(PXVisualPositionsChangeDetails *)self headerIndexesAfterChanges];
      v10 = var0;
      if (var0 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = -1;
        v12 = -1;
        do
        {
          v10 = v12 + var0 - v11;
          v13 = [v9 countOfIndexesInRange:v12 + 1];
          v11 = var0 - v13;
          v12 = v10;
        }

        while (var0 - v13 < var0);
      }

      retstr->var0 = v10;

      v14 = (v10 & 0x8000000000000000) == 0 && v10 < [(PXVisualPositionsChangeDetails *)self countAfterChanges];
      v7 = v16;
      retstr->var2 &= v14;
    }
  }

  return result;
}

- (PXVisualPositionsChangeDetails)initWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8
{
  v14 = a5;
  v15 = a8;
  v25.receiver = self;
  v25.super_class = PXVisualPositionsChangeDetails;
  v16 = [(PXVisualPositionsChangeDetails *)&v25 init];
  v17 = v16;
  if (v16)
  {
    v16->_countBeforeChanges = a3;
    v16->_anchorIndexBeforeChanges = a4;
    v18 = [v14 copy];
    headerIndexesBeforeChanges = v17->_headerIndexesBeforeChanges;
    v17->_headerIndexesBeforeChanges = v18;

    v17->_countAfterChanges = a6;
    v17->_anchorIndexAfterChanges = a7;
    v20 = [v15 copy];
    headerIndexesAfterChanges = v17->_headerIndexesAfterChanges;
    v17->_headerIndexesAfterChanges = v20;

    anchorIndexBeforeChanges = v17->_anchorIndexBeforeChanges;
    v17->_anchorBodyIndexBeforeChanges = anchorIndexBeforeChanges - [(NSIndexSet *)v17->_headerIndexesBeforeChanges countOfIndexesInRange:0, anchorIndexBeforeChanges];
    anchorIndexAfterChanges = v17->_anchorIndexAfterChanges;
    v17->_anchorBodyIndexAfterChanges = anchorIndexAfterChanges - [(NSIndexSet *)v17->_headerIndexesAfterChanges countOfIndexesInRange:0, anchorIndexAfterChanges];
  }

  return v17;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 reloadAllIncludingAnchor:(BOOL)a9
{
  v14 = a8;
  v15 = a5;
  LOBYTE(v18) = a9;
  v16 = [[PXReloadingVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:a3 anchorIndexBeforeChanges:a4 headerIndexesBeforeChanges:v15 countAfterChanges:a6 anchorIndexAfterChanges:a7 headerIndexesAfterChanges:v14 reloadAllIncludingAnchor:v18];

  return v16;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorRemoved:(int64_t)a7 indexAfterChanges:(int64_t)a8 headerIndexesAfterChanges:(id)a9
{
  v15 = a9;
  v16 = a5;
  LOBYTE(v19) = 0;
  v17 = [[PXAnchorInsertingOrRemovingVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:a3 anchorIndexBeforeChanges:a4 headerIndexesBeforeChanges:v16 countAfterChanges:a6 anchorIndexAfterChanges:a8 headerIndexesAfterChanges:v15 anchorInserted:v19 relativePosition:a7];

  return v17;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorInserted:(int64_t)a4 indexBeforeChanges:(int64_t)a5 headerIndexesBeforeChanges:(id)a6 countAfterChanges:(int64_t)a7 anchorIndexAfterChanges:(int64_t)a8 headerIndexesAfterChanges:(id)a9
{
  v15 = a9;
  v16 = a6;
  LOBYTE(v19) = 1;
  v17 = [[PXAnchorInsertingOrRemovingVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:a3 anchorIndexBeforeChanges:a5 headerIndexesBeforeChanges:v16 countAfterChanges:a7 anchorIndexAfterChanges:a8 headerIndexesAfterChanges:v15 anchorInserted:v19 relativePosition:a4];

  return v17;
}

+ (PXVisualPositionsChangeDetails)changeDetailsWithCountBeforeChanges:(int64_t)a3 anchorIndexBeforeChanges:(int64_t)a4 headerIndexesBeforeChanges:(id)a5 countAfterChanges:(int64_t)a6 anchorIndexAfterChanges:(int64_t)a7 headerIndexesAfterChanges:(id)a8 anchorFan:(int64_t)a9 anchorReload:(int64_t)a10
{
  v15 = a8;
  v16 = a5;
  v17 = [[PXFanningVisualPositionsChangeDetails alloc] initWithCountBeforeChanges:a3 anchorIndexBeforeChanges:a4 headerIndexesBeforeChanges:v16 countAfterChanges:a6 anchorIndexAfterChanges:a7 headerIndexesAfterChanges:v15 anchorFan:a9 anchorReload:a10];

  return v17;
}

@end