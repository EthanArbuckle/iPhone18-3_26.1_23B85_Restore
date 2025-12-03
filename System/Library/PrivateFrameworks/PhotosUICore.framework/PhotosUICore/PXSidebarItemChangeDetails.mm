@interface PXSidebarItemChangeDetails
+ (void)makeArrayIndexMovesIncremental:(id *)incremental count:(unint64_t)count;
- (BOOL)hasMoves;
- (NSIndexSet)insertedIndexes;
- (NSIndexSet)removedIndexes;
- (PXSidebarItemChangeDetails)initWithArrayChangeDetails:(id)details previousDataSection:(id)section;
- (id)changedIndexes;
- (id)description;
- (void)enumerateMovedIndexesUsingBlock:(id)block;
@end

@implementation PXSidebarItemChangeDetails

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXSidebarItemChangeDetails needsReload](self, "needsReload")}];
  removedIndexes = [(PXSidebarItemChangeDetails *)self removedIndexes];
  px_shortDescription = [removedIndexes px_shortDescription];
  insertedIndexes = [(PXSidebarItemChangeDetails *)self insertedIndexes];
  px_shortDescription2 = [insertedIndexes px_shortDescription];
  changedIndexes = [(PXSidebarItemChangeDetails *)self changedIndexes];
  px_shortDescription3 = [changedIndexes px_shortDescription];
  v12 = [v3 stringWithFormat:@"<%@: %p needsReload:%@ removed:%@ inserted:%@ changed:%@>", v4, self, v5, px_shortDescription, px_shortDescription2, px_shortDescription3];;

  return v12;
}

- (void)enumerateMovedIndexesUsingBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  arrayChangeDetails = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  movesToIndexes = [arrayChangeDetails movesToIndexes];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  firstIndex = [movesToIndexes firstIndex];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__PXSidebarItemChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke;
  v14[3] = &unk_1E773B000;
  v14[4] = &v19;
  v14[5] = &v15;
  [movesToIndexes enumerateIndexesUsingBlock:v14];
  v7 = [movesToIndexes count];
  v8 = v20[3] + v7;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  firstIndex2 = [movesToIndexes firstIndex];
  v16[3] = firstIndex2;
  arrayChangeDetails2 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PXSidebarItemChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke_2;
  v12[3] = &unk_1E7733198;
  v12[4] = &v15;
  v12[5] = v13;
  v12[6] = &v12[-2 * v8];
  [arrayChangeDetails2 enumerateMovedIndexesUsingBlock:v12];

  [objc_opt_class() makeArrayIndexMovesIncremental:&v12[-2 * v8] count:v8];
  if (v8)
  {
    v11 = &v12[-2 * v8 + 1];
    do
    {
      (*(blockCopy + 2))(blockCopy, *(v11 - 1), *v11);
      v11 += 2;
      --v8;
    }

    while (v8);
  }

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

uint64_t __62__PXSidebarItemChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) += a2 - *(*(*(result + 40) + 8) + 24);
  *(*(*(result + 40) + 8) + 24) = a2 + 1;
  return result;
}

void *__62__PXSidebarItemChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke_2(void *result, uint64_t a2, unint64_t a3)
{
  v3 = *(*(result[4] + 8) + 24);
  v4 = result[6];
  while (v3 < a3)
  {
    *(v4 + 16 * (*(*(result[5] + 8) + 24))++) = vdupq_n_s64(v3);
    v3 = ++*(*(result[4] + 8) + 24);
  }

  v5 = (v4 + 16 * *(*(result[5] + 8) + 24));
  *v5 = a2;
  v5[1] = a3;
  ++*(*(result[5] + 8) + 24);
  ++*(*(result[4] + 8) + 24);
  return result;
}

- (BOOL)hasMoves
{
  arrayChangeDetails = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  hasMoves = [arrayChangeDetails hasMoves];

  return hasMoves;
}

- (id)changedIndexes
{
  arrayChangeDetails = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  changedIndexes = [arrayChangeDetails changedIndexes];

  return changedIndexes;
}

- (NSIndexSet)insertedIndexes
{
  arrayChangeDetails = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  insertedIndexes = [arrayChangeDetails insertedIndexes];

  return insertedIndexes;
}

- (NSIndexSet)removedIndexes
{
  arrayChangeDetails = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  removedIndexes = [arrayChangeDetails removedIndexes];

  return removedIndexes;
}

- (PXSidebarItemChangeDetails)initWithArrayChangeDetails:(id)details previousDataSection:(id)section
{
  detailsCopy = details;
  sectionCopy = section;
  v23.receiver = self;
  v23.super_class = PXSidebarItemChangeDetails;
  v9 = [(PXSidebarItemChangeDetails *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_arrayChangeDetails, details);
    objc_storeStrong(&v10->_previousDataSection, section);
    removedIndexes = [detailsCopy removedIndexes];
    if ([removedIndexes count])
    {
      v10->_hasContentChanges = 1;
      p_hasContentChanges = &v10->_hasContentChanges;
    }

    else
    {
      insertedIndexes = [detailsCopy insertedIndexes];
      v10->_hasContentChanges = [insertedIndexes count] != 0;
      p_hasContentChanges = &v10->_hasContentChanges;
    }

    if (*p_hasContentChanges && ([detailsCopy hasMoves] & 1) != 0)
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v14 = [detailsCopy hasIncrementalChanges] ^ 1;
    }

    v10->_needsReload = v14;
    removedIndexes2 = [detailsCopy removedIndexes];
    v16 = [sectionCopy objectsAtIndexes:removedIndexes2];
    removedItems = v10->_removedItems;
    v10->_removedItems = v16;

    changedIndexes = [detailsCopy changedIndexes];
    v19 = [detailsCopy indexSetAfterRevertingChangesToIndexSet:changedIndexes];
    v20 = [sectionCopy objectsAtIndexes:v19];
    changedItems = v10->_changedItems;
    v10->_changedItems = v20;
  }

  return v10;
}

+ (void)makeArrayIndexMovesIncremental:(id *)incremental count:(unint64_t)count
{
  if (count)
  {
    v4 = 0;
    v5 = count - 1;
    for (i = incremental + 1; ; ++i)
    {
      v7 = &incremental[v4];
      var0 = v7->var0;
      var1 = v7->var1;
      ++v4;
      if (var0 != var1 && v4 < count)
      {
        break;
      }

LABEL_22:
      --v5;
      if (v4 == count)
      {
        return;
      }
    }

    v11 = i;
    v12 = v5;
    while (1)
    {
      v13 = v11->var0;
      if (var0 >= var1)
      {
        if (v13 > var0 || v13 < var1)
        {
          goto LABEL_21;
        }

        v15 = 1;
      }

      else
      {
        if (v13 < var0 || v13 > var1)
        {
          goto LABEL_21;
        }

        v15 = -1;
      }

      v11->var0 = v13 + v15;
LABEL_21:
      ++v11;
      if (!--v12)
      {
        goto LABEL_22;
      }
    }
  }
}

@end