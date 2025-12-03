@interface SXDataTableComponentStyleFactory
- (SXDataTableComponentStyleFactory)initWithRecordStore:(id)store tableStyle:(id)style dataOrientation:(unint64_t)orientation rowStyleMerger:(id)merger columnStyleMerger:(id)styleMerger cellStyleMerger:(id)cellStyleMerger;
- (id)cellStyleForIndexPath:(id)path;
- (id)cellStyleForIndexPath:(id)path usingBaseStyle:(id)style;
- (id)columnStyleForColumnIndex:(unint64_t)index;
- (id)columnStyleForColumnIndex:(unint64_t)index usingBaseStyle:(id)style;
- (id)descriptorForIdentifier:(id)identifier;
- (id)filterDuplicateSequentialStyles:(id)styles;
- (id)headerCellStyleForIndexPath:(id)path;
- (id)headerColumnStyleForColumnIndex:(unint64_t)index;
- (id)headerRowStyleForRowIndex:(unint64_t)index;
- (id)rowStyleForRowIndex:(unint64_t)index;
- (id)rowStyleForRowIndex:(unint64_t)index usingBaseStyle:(id)style;
- (id)sortStylesMatchesBySelectorWeight:(id)weight;
- (id)styleByMergingStyleMatches:(id)matches forBaseStyle:(id)style merger:(id)merger;
- (int64_t)compareSelector:(id)selector withOtherSelector:(id)otherSelector;
- (unint64_t)isEvenNumber:(int64_t)number;
- (unint64_t)isOddNumber:(int64_t)number;
@end

@implementation SXDataTableComponentStyleFactory

- (SXDataTableComponentStyleFactory)initWithRecordStore:(id)store tableStyle:(id)style dataOrientation:(unint64_t)orientation rowStyleMerger:(id)merger columnStyleMerger:(id)styleMerger cellStyleMerger:(id)cellStyleMerger
{
  storeCopy = store;
  styleCopy = style;
  mergerCopy = merger;
  styleMergerCopy = styleMerger;
  cellStyleMergerCopy = cellStyleMerger;
  v25.receiver = self;
  v25.super_class = SXDataTableComponentStyleFactory;
  v18 = [(SXDataTableComponentStyleFactory *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_tableStyle, style);
    objc_storeStrong(&v19->_recordStore, store);
    v19->_dataOrientation = orientation;
    styleCopy = [[SXDataTableSelectorValidator alloc] initWithRecordStore:storeCopy dataOrientation:orientation, mergerCopy, styleCopy];
    selectorValidator = v19->_selectorValidator;
    v19->_selectorValidator = styleCopy;

    objc_storeStrong(&v19->_rowStyleMerger, merger);
    objc_storeStrong(&v19->_columnStyleMerger, styleMerger);
    objc_storeStrong(&v19->_cellStyleMerger, cellStyleMerger);
  }

  return v19;
}

- (id)headerRowStyleForRowIndex:(unint64_t)index
{
  v14[2] = *MEMORY[0x1E69E9840];
  tableStyle = [(SXDataTableComponentStyleFactory *)self tableStyle];
  headerRows = [tableStyle headerRows];

  v7 = [(SXDataTableComponentStyleFactory *)self rowStyleForRowIndex:index];
  v8 = v7;
  if (headerRows)
  {
    rowStyleMerger = [(SXDataTableComponentStyleFactory *)self rowStyleMerger];
    v14[0] = v8;
    v14[1] = headerRows;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [rowStyleMerger mergeObjects:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = [(SXDataTableComponentStyleFactory *)self rowStyleForRowIndex:index usingBaseStyle:v11];

  return v12;
}

- (id)headerColumnStyleForColumnIndex:(unint64_t)index
{
  v14[2] = *MEMORY[0x1E69E9840];
  tableStyle = [(SXDataTableComponentStyleFactory *)self tableStyle];
  headerColumns = [tableStyle headerColumns];

  v7 = [(SXDataTableComponentStyleFactory *)self columnStyleForColumnIndex:index];
  v8 = v7;
  if (headerColumns)
  {
    columnStyleMerger = [(SXDataTableComponentStyleFactory *)self columnStyleMerger];
    v14[0] = v8;
    v14[1] = headerColumns;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v11 = [columnStyleMerger mergeObjects:v10];
  }

  else
  {
    v11 = v7;
  }

  v12 = [(SXDataTableComponentStyleFactory *)self columnStyleForColumnIndex:index usingBaseStyle:v11];

  return v12;
}

- (id)headerCellStyleForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  v15[2] = *MEMORY[0x1E69E9840];
  tableStyle = [(SXDataTableComponentStyleFactory *)self tableStyle];
  headerCells = [tableStyle headerCells];

  var1 = [(SXDataTableComponentStyleFactory *)self cellStyleForIndexPath:var0, var1];
  v9 = var1;
  if (headerCells)
  {
    cellStyleMerger = [(SXDataTableComponentStyleFactory *)self cellStyleMerger];
    v15[0] = v9;
    v15[1] = headerCells;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [cellStyleMerger mergeObjects:v11];
  }

  else
  {
    v12 = var1;
  }

  v13 = [(SXDataTableComponentStyleFactory *)self cellStyleForIndexPath:var0 usingBaseStyle:var1, v12];

  return v13;
}

- (id)rowStyleForRowIndex:(unint64_t)index
{
  tableStyle = [(SXDataTableComponentStyleFactory *)self tableStyle];
  rows = [tableStyle rows];
  v7 = [(SXDataTableComponentStyleFactory *)self rowStyleForRowIndex:index usingBaseStyle:rows];

  return v7;
}

- (id)columnStyleForColumnIndex:(unint64_t)index
{
  tableStyle = [(SXDataTableComponentStyleFactory *)self tableStyle];
  columns = [tableStyle columns];
  v7 = [(SXDataTableComponentStyleFactory *)self columnStyleForColumnIndex:index usingBaseStyle:columns];

  return v7;
}

- (id)cellStyleForIndexPath:(id)path
{
  var1 = path.var1;
  var0 = path.var0;
  tableStyle = [(SXDataTableComponentStyleFactory *)self tableStyle];
  cells = [tableStyle cells];
  v8 = [(SXDataTableComponentStyleFactory *)self cellStyleForIndexPath:var0 usingBaseStyle:var1, cells];

  return v8;
}

- (id)rowStyleForRowIndex:(unint64_t)index usingBaseStyle:(id)style
{
  v37 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = styleCopy;
  obj = [styleCopy conditional];
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
        selectors = [v8 selectors];
        v10 = [selectors countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(selectors);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              selectorValidator = [(SXDataTableComponentStyleFactory *)self selectorValidator];
              v16 = [selectorValidator validateRowSelector:v14 forRowIndex:index];

              if (v16)
              {
                v17 = [SXDataTableStyleMatch matchWithStyle:v8 andSelector:v14];
                [array addObject:v17];
              }
            }

            v11 = [selectors countByEnumeratingWithState:&v27 objects:v35 count:16];
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

  rowStyleMerger = [(SXDataTableComponentStyleFactory *)self rowStyleMerger];
  v19 = [(SXDataTableComponentStyleFactory *)self styleByMergingStyleMatches:array forBaseStyle:v21 merger:rowStyleMerger];

  return v19;
}

- (id)columnStyleForColumnIndex:(unint64_t)index usingBaseStyle:(id)style
{
  v37 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  array = [MEMORY[0x1E695DF70] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = styleCopy;
  obj = [styleCopy conditional];
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
        selectors = [v8 selectors];
        v10 = [selectors countByEnumeratingWithState:&v27 objects:v35 count:16];
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
                objc_enumerationMutation(selectors);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              selectorValidator = [(SXDataTableComponentStyleFactory *)self selectorValidator];
              v16 = [selectorValidator validateColumnSelector:v14 forColumnIndex:index];

              if (v16)
              {
                v17 = [SXDataTableStyleMatch matchWithStyle:v8 andSelector:v14];
                [array addObject:v17];
              }
            }

            v11 = [selectors countByEnumeratingWithState:&v27 objects:v35 count:16];
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

  columnStyleMerger = [(SXDataTableComponentStyleFactory *)self columnStyleMerger];
  v19 = [(SXDataTableComponentStyleFactory *)self styleByMergingStyleMatches:array forBaseStyle:v21 merger:columnStyleMerger];

  return v19;
}

- (id)cellStyleForIndexPath:(id)path usingBaseStyle:(id)style
{
  var1 = path.var1;
  var0 = path.var0;
  v39 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = styleCopy;
  obj = [styleCopy conditional];
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
        selectors = [v9 selectors];
        v11 = [selectors countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                objc_enumerationMutation(selectors);
              }

              v15 = *(*(&v29 + 1) + 8 * i);
              selectorValidator = [(SXDataTableComponentStyleFactory *)self selectorValidator];
              v17 = [selectorValidator validateCellSelector:v15 forIndexPath:{var0, var1}];

              if (v17)
              {
                v18 = [SXDataTableStyleMatch matchWithStyle:v28 andSelector:v15];
                [array addObject:v18];
              }
            }

            v12 = [selectors countByEnumeratingWithState:&v29 objects:v37 count:16];
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

  cellStyleMerger = [(SXDataTableComponentStyleFactory *)self cellStyleMerger];
  v20 = [(SXDataTableComponentStyleFactory *)self styleByMergingStyleMatches:array forBaseStyle:v22 merger:cellStyleMerger];

  return v20;
}

- (unint64_t)isOddNumber:(int64_t)number
{
  if (number)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)isEvenNumber:(int64_t)number
{
  if ((number == 0) | number & 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)styleByMergingStyleMatches:(id)matches forBaseStyle:(id)style merger:(id)merger
{
  v27 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  mergerCopy = merger;
  v10 = [(SXDataTableComponentStyleFactory *)self filterDuplicateSequentialStyles:matches];
  v11 = [(SXDataTableComponentStyleFactory *)self sortStylesMatchesBySelectorWeight:v10];
  array = [MEMORY[0x1E695DF70] array];
  v13 = array;
  if (styleCopy)
  {
    [array addObject:styleCopy];
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

        style = [*(*(&v22 + 1) + 8 * i) style];
        [v13 addObject:style];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = [mergerCopy mergeObjects:v13];

  return v20;
}

- (id)filterDuplicateSequentialStyles:(id)styles
{
  v29 = *MEMORY[0x1E69E9840];
  stylesCopy = styles;
  array = [MEMORY[0x1E695DF70] array];
  if ([stylesCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [stylesCopy objectAtIndex:v6];
      v8 = v6 + 1;
      while (v8 < [stylesCopy count])
      {
        v9 = [stylesCopy objectAtIndex:v8];
        style = [v7 style];
        style2 = [v9 style];

        if (style != style2)
        {
          goto LABEL_11;
        }

        selector = [v7 selector];
        selector2 = [v9 selector];
        v14 = [(SXDataTableComponentStyleFactory *)self compareSelector:selector withOtherSelector:selector2];

        if ((v14 + 1) <= 1)
        {
          [array addObject:v7];
LABEL_11:

          break;
        }

        if (v14 == 1)
        {
          [array addObject:v9];
          v6 = ++v8;
        }
      }

      ++v6;
    }

    while (v6 < [stylesCopy count]);
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = stylesCopy;
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
        if (([array containsObject:{v21, v24}] & 1) == 0)
        {
          [array2 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v22 = [array2 copy];

  return v22;
}

- (id)sortStylesMatchesBySelectorWeight:(id)weight
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__SXDataTableComponentStyleFactory_sortStylesMatchesBySelectorWeight___block_invoke;
  v5[3] = &unk_1E85002F0;
  v5[4] = self;
  v3 = [weight sortedArrayUsingComparator:v5];

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

- (int64_t)compareSelector:(id)selector withOtherSelector:(id)otherSelector
{
  otherSelectorCopy = otherSelector;
  selectorCopy = selector;
  selectorWeight = [selectorCopy selectorWeight];
  selectorWeight2 = [otherSelectorCopy selectorWeight];
  numberOfConditions = [selectorCopy numberOfConditions];

  numberOfConditions2 = [otherSelectorCopy numberOfConditions];
  v11 = 1;
  v12 = -1;
  if (numberOfConditions >= numberOfConditions2)
  {
    v12 = numberOfConditions > numberOfConditions2;
  }

  if (selectorWeight <= selectorWeight2)
  {
    v11 = v12;
  }

  if (selectorWeight >= selectorWeight2)
  {
    return v11;
  }

  else
  {
    return -1;
  }
}

- (id)descriptorForIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  recordStore = [(SXDataTableComponentStyleFactory *)self recordStore];
  descriptors = [recordStore descriptors];

  v7 = [descriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(descriptors);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [descriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
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