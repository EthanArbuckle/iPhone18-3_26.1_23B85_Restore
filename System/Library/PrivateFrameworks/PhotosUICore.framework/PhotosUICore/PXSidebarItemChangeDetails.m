@interface PXSidebarItemChangeDetails
+ (void)makeArrayIndexMovesIncremental:(id *)a3 count:(unint64_t)a4;
- (BOOL)hasMoves;
- (NSIndexSet)insertedIndexes;
- (NSIndexSet)removedIndexes;
- (PXSidebarItemChangeDetails)initWithArrayChangeDetails:(id)a3 previousDataSection:(id)a4;
- (id)changedIndexes;
- (id)description;
- (void)enumerateMovedIndexesUsingBlock:(id)a3;
@end

@implementation PXSidebarItemChangeDetails

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PXSidebarItemChangeDetails needsReload](self, "needsReload")}];
  v6 = [(PXSidebarItemChangeDetails *)self removedIndexes];
  v7 = [v6 px_shortDescription];
  v8 = [(PXSidebarItemChangeDetails *)self insertedIndexes];
  v9 = [v8 px_shortDescription];
  v10 = [(PXSidebarItemChangeDetails *)self changedIndexes];
  v11 = [v10 px_shortDescription];
  v12 = [v3 stringWithFormat:@"<%@: %p needsReload:%@ removed:%@ inserted:%@ changed:%@>", v4, self, v5, v7, v9, v11];;

  return v12;
}

- (void)enumerateMovedIndexesUsingBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v6 = [v5 movesToIndexes];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [v6 firstIndex];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__PXSidebarItemChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke;
  v14[3] = &unk_1E773B000;
  v14[4] = &v19;
  v14[5] = &v15;
  [v6 enumerateIndexesUsingBlock:v14];
  v7 = [v6 count];
  v8 = v20[3] + v7;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v9 = [v6 firstIndex];
  v16[3] = v9;
  v10 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__PXSidebarItemChangeDetails_enumerateMovedIndexesUsingBlock___block_invoke_2;
  v12[3] = &unk_1E7733198;
  v12[4] = &v15;
  v12[5] = v13;
  v12[6] = &v12[-2 * v8];
  [v10 enumerateMovedIndexesUsingBlock:v12];

  [objc_opt_class() makeArrayIndexMovesIncremental:&v12[-2 * v8] count:v8];
  if (v8)
  {
    v11 = &v12[-2 * v8 + 1];
    do
    {
      (*(v4 + 2))(v4, *(v11 - 1), *v11);
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
  v2 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v3 = [v2 hasMoves];

  return v3;
}

- (id)changedIndexes
{
  v2 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v3 = [v2 changedIndexes];

  return v3;
}

- (NSIndexSet)insertedIndexes
{
  v2 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v3 = [v2 insertedIndexes];

  return v3;
}

- (NSIndexSet)removedIndexes
{
  v2 = [(PXSidebarItemChangeDetails *)self arrayChangeDetails];
  v3 = [v2 removedIndexes];

  return v3;
}

- (PXSidebarItemChangeDetails)initWithArrayChangeDetails:(id)a3 previousDataSection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PXSidebarItemChangeDetails;
  v9 = [(PXSidebarItemChangeDetails *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_arrayChangeDetails, a3);
    objc_storeStrong(&v10->_previousDataSection, a4);
    v11 = [v7 removedIndexes];
    if ([v11 count])
    {
      v10->_hasContentChanges = 1;
      p_hasContentChanges = &v10->_hasContentChanges;
    }

    else
    {
      v13 = [v7 insertedIndexes];
      v10->_hasContentChanges = [v13 count] != 0;
      p_hasContentChanges = &v10->_hasContentChanges;
    }

    if (*p_hasContentChanges && ([v7 hasMoves] & 1) != 0)
    {
      LOBYTE(v14) = 1;
    }

    else
    {
      v14 = [v7 hasIncrementalChanges] ^ 1;
    }

    v10->_needsReload = v14;
    v15 = [v7 removedIndexes];
    v16 = [v8 objectsAtIndexes:v15];
    removedItems = v10->_removedItems;
    v10->_removedItems = v16;

    v18 = [v7 changedIndexes];
    v19 = [v7 indexSetAfterRevertingChangesToIndexSet:v18];
    v20 = [v8 objectsAtIndexes:v19];
    changedItems = v10->_changedItems;
    v10->_changedItems = v20;
  }

  return v10;
}

+ (void)makeArrayIndexMovesIncremental:(id *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v4 = 0;
    v5 = a4 - 1;
    for (i = a3 + 1; ; ++i)
    {
      v7 = &a3[v4];
      var0 = v7->var0;
      var1 = v7->var1;
      ++v4;
      if (var0 != var1 && v4 < a4)
      {
        break;
      }

LABEL_22:
      --v5;
      if (v4 == a4)
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