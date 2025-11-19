@interface SXDataTableComponentStyleFactory
- (SXDataTableComponentStyleFactory)initWithRecordStore:(id)a3 tableStyle:(id)a4 dataOrientation:(unint64_t)a5 rowStyleMerger:(id)a6 columnStyleMerger:(id)a7 cellStyleMerger:(id)a8;
- (id)cellStyleForIndexPath:(id)a3;
- (id)cellStyleForIndexPath:(id)a3 usingBaseStyle:(id)a4;
- (id)columnStyleForColumnIndex:(unint64_t)a3;
- (id)columnStyleForColumnIndex:(unint64_t)a3 usingBaseStyle:(id)a4;
- (id)descriptorForIdentifier:(id)a3;
- (id)filterDuplicateSequentialStyles:(id)a3;
- (id)headerCellStyleForIndexPath:(id)a3;
- (id)headerColumnStyleForColumnIndex:(unint64_t)a3;
- (id)headerRowStyleForRowIndex:(unint64_t)a3;
- (id)rowStyleForRowIndex:(unint64_t)a3;
- (id)rowStyleForRowIndex:(unint64_t)a3 usingBaseStyle:(id)a4;
- (id)sortStylesMatchesBySelectorWeight:(id)a3;
- (id)styleByMergingStyleMatches:(id)a3 forBaseStyle:(id)a4 merger:(id)a5;
- (int64_t)compareSelector:(id)a3 withOtherSelector:(id)a4;
- (unint64_t)isEvenNumber:(int64_t)a3;
- (unint64_t)isOddNumber:(int64_t)a3;
@end

@implementation SXDataTableComponentStyleFactory

- (SXDataTableComponentStyleFactory)initWithRecordStore:(id)a3 tableStyle:(id)a4 dataOrientation:(unint64_t)a5 rowStyleMerger:(id)a6 columnStyleMerger:(id)a7 cellStyleMerger:(id)a8
{
  v15 = a3;
  v24 = a4;
  v23 = a6;
  v16 = a7;
  v17 = a8;
  v25.receiver = self;
  v25.super_class = SXDataTableComponentStyleFactory;
  v18 = [(SXDataTableComponentStyleFactory *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tableStyle, a4);
    objc_storeStrong(&v19->_recordStore, a3);
    v19->_dataOrientation = a5;
    v20 = [[SXDataTableSelectorValidator alloc] initWithRecordStore:v15 dataOrientation:a5, v23, v24];
    selectorValidator = v19->_selectorValidator;
    v19->_selectorValidator = v20;

    objc_storeStrong(&v19->_rowStyleMerger, a6);
    objc_storeStrong(&v19->_columnStyleMerger, a7);
    objc_storeStrong(&v19->_cellStyleMerger, a8);
  }

  return v19;
}

- (id)headerRowStyleForRowIndex:(unint64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [(SXDataTableComponentStyleFactory *)self tableStyle];
  v6 = [v5 headerRows];

  v7 = [(SXDataTableComponentStyleFactory *)self rowStyleForRowIndex:a3];
  v8 = v7;
  if (v6)
  {
    v9 = [(SXDataTableComponentStyleFactory *)self rowStyleMerger];
    v14[0] = v8;
    v14[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v9 mergeObjects:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = [(SXDataTableComponentStyleFactory *)self rowStyleForRowIndex:a3 usingBaseStyle:v11];

  return v12;
}

- (id)headerColumnStyleForColumnIndex:(unint64_t)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [(SXDataTableComponentStyleFactory *)self tableStyle];
  v6 = [v5 headerColumns];

  v7 = [(SXDataTableComponentStyleFactory *)self columnStyleForColumnIndex:a3];
  v8 = v7;
  if (v6)
  {
    v9 = [(SXDataTableComponentStyleFactory *)self columnStyleMerger];
    v14[0] = v8;
    v14[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [v9 mergeObjects:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = [(SXDataTableComponentStyleFactory *)self columnStyleForColumnIndex:a3 usingBaseStyle:v11];

  return v12;
}

- (id)headerCellStyleForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = [(SXDataTableComponentStyleFactory *)self tableStyle];
  v7 = [v6 headerCells];

  v8 = [(SXDataTableComponentStyleFactory *)self cellStyleForIndexPath:var0, var1];
  v9 = v8;
  if (v7)
  {
    v10 = [(SXDataTableComponentStyleFactory *)self cellStyleMerger];
    v15[0] = v9;
    v15[1] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [v10 mergeObjects:v11];
  }

  else
  {
    v12 = v8;
  }

  v13 = [(SXDataTableComponentStyleFactory *)self cellStyleForIndexPath:var0 usingBaseStyle:var1, v12];

  return v13;
}

- (id)rowStyleForRowIndex:(unint64_t)a3
{
  v5 = [(SXDataTableComponentStyleFactory *)self tableStyle];
  v6 = [v5 rows];
  v7 = [(SXDataTableComponentStyleFactory *)self rowStyleForRowIndex:a3 usingBaseStyle:v6];

  return v7;
}

- (id)columnStyleForColumnIndex:(unint64_t)a3
{
  v5 = [(SXDataTableComponentStyleFactory *)self tableStyle];
  v6 = [v5 columns];
  v7 = [(SXDataTableComponentStyleFactory *)self columnStyleForColumnIndex:a3 usingBaseStyle:v6];

  return v7;
}

- (id)cellStyleForIndexPath:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(SXDataTableComponentStyleFactory *)self tableStyle];
  v7 = [v6 cells];
  v8 = [(SXDataTableComponentStyleFactory *)self cellStyleForIndexPath:var0 usingBaseStyle:var1, v7];

  return v8;
}

- (id)rowStyleForRowIndex:(unint64_t)a3 usingBaseStyle:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v26 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v6;
  obj = [v6 conditional];
  v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = [v8 selectors];
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              v15 = [(SXDataTableComponentStyleFactory *)self selectorValidator];
              v16 = [v15 validateRowSelector:v14 forRowIndex:a3];

              if (v16)
              {
                v17 = [SXDataTableStyleMatch matchWithStyle:v8 andSelector:v14];
                [v26 addObject:v17];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  v18 = [(SXDataTableComponentStyleFactory *)self rowStyleMerger];
  v19 = [(SXDataTableComponentStyleFactory *)self styleByMergingStyleMatches:v26 forBaseStyle:v21 merger:v18];

  return v19;
}

- (id)columnStyleForColumnIndex:(unint64_t)a3 usingBaseStyle:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v26 = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v6;
  obj = [v6 conditional];
  v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = [v8 selectors];
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              v15 = [(SXDataTableComponentStyleFactory *)self selectorValidator];
              v16 = [v15 validateColumnSelector:v14 forColumnIndex:a3];

              if (v16)
              {
                v17 = [SXDataTableStyleMatch matchWithStyle:v8 andSelector:v14];
                [v26 addObject:v17];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v11);
        }

        v7 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  v18 = [(SXDataTableComponentStyleFactory *)self columnStyleMerger];
  v19 = [(SXDataTableComponentStyleFactory *)self styleByMergingStyleMatches:v26 forBaseStyle:v21 merger:v18];

  return v19;
}

- (id)cellStyleForIndexPath:(id)a3 usingBaseStyle:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v27 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = v7;
  obj = [v7 conditional];
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v24 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v8;
        v9 = *(*(&v33 + 1) + 8 * v8);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v28 = v9;
        v10 = [v9 selectors];
        v11 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v30;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v30 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              v16 = [(SXDataTableComponentStyleFactory *)self selectorValidator];
              v17 = [v16 validateCellSelector:v15 forIndexPath:{var0, var1}];

              if (v17)
              {
                v18 = [SXDataTableStyleMatch matchWithStyle:v28 andSelector:v15];
                [v27 addObject:v18];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v12);
        }

        v8 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  v19 = [(SXDataTableComponentStyleFactory *)self cellStyleMerger];
  v20 = [(SXDataTableComponentStyleFactory *)self styleByMergingStyleMatches:v27 forBaseStyle:v22 merger:v19];

  return v20;
}

- (unint64_t)isOddNumber:(int64_t)a3
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)isEvenNumber:(int64_t)a3
{
  if ((a3 == 0) | a3 & 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)styleByMergingStyleMatches:(id)a3 forBaseStyle:(id)a4 merger:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(SXDataTableComponentStyleFactory *)self filterDuplicateSequentialStyles:a3];
  v11 = [(SXDataTableComponentStyleFactory *)self sortStylesMatchesBySelectorWeight:v10];
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = v12;
  if (v8)
  {
    [v12 addObject:v8];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * i) style];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = [v9 mergeObjects:v13];

  return v20;
}

- (id)filterDuplicateSequentialStyles:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = [v4 objectAtIndex:v6];
      v8 = v6 + 1;
      while (v8 < [v4 count])
      {
        v9 = [v4 objectAtIndex:v8];
        v10 = [v7 style];
        v11 = [v9 style];

        if (v10 != v11)
        {
          goto LABEL_11;
        }

        v12 = [v7 selector];
        v13 = [v9 selector];
        v14 = [(SXDataTableComponentStyleFactory *)self compareSelector:v12 withOtherSelector:v13];

        if ((v14 + 1) <= 1)
        {
          [v5 addObject:v7];
LABEL_11:

          break;
        }

        if (v14 == 1)
        {
          [v5 addObject:v9];
          v6 = ++v8;
        }
      }

      ++v6;
    }

    while (v6 < [v4 count]);
  }

  v15 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * i);
        if (([v5 containsObject:{v21, v24}] & 1) == 0)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v22 = [v15 copy];

  return v22;
}

- (id)sortStylesMatchesBySelectorWeight:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__SXDataTableComponentStyleFactory_sortStylesMatchesBySelectorWeight___block_invoke;
  v5[3] = &unk_1E85002F0;
  v5[4] = self;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __70__SXDataTableComponentStyleFactory_sortStylesMatchesBySelectorWeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 selector];
  v7 = [v5 selector];

  v8 = [v4 compareSelector:v6 withOtherSelector:v7];
  return v8;
}

- (int64_t)compareSelector:(id)a3 withOtherSelector:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 selectorWeight];
  v8 = [v5 selectorWeight];
  v9 = [v6 numberOfConditions];

  v10 = [v5 numberOfConditions];
  v11 = 1;
  v12 = -1;
  if (v9 >= v10)
  {
    v12 = v9 > v10;
  }

  if (v7 <= v8)
  {
    v11 = v12;
  }

  if (v7 >= v8)
  {
    return v11;
  }

  else
  {
    return -1;
  }
}

- (id)descriptorForIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SXDataTableComponentStyleFactory *)self recordStore];
  v6 = [v5 descriptors];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end