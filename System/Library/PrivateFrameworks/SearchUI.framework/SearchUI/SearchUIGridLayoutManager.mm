@interface SearchUIGridLayoutManager
+ (BOOL)shouldHideViewForRichData:(id)data;
+ (id)alignmentsForSFHeaderRow:(id)row;
+ (id)richTextForDataItems:(id)items;
+ (id)richTextForRichDataItems:(id)items;
- (BOOL)computeCompactTableForSections:(id)sections;
- (SearchUIGridLayoutManager)initWithHeaderSection:(id)section dataSections:(id)sections;
- (id)tableRowForTableRowCardSection:(id)section;
@end

@implementation SearchUIGridLayoutManager

- (SearchUIGridLayoutManager)initWithHeaderSection:(id)section dataSections:(id)sections
{
  v40[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  sectionsCopy = sections;
  v38.receiver = self;
  v38.super_class = SearchUIGridLayoutManager;
  v8 = [(SearchUIGridLayoutManager *)&v38 init];
  if (v8)
  {
    v9 = +[SearchUIUtilities pointerKeyMapTable];
    [(SearchUIGridLayoutManager *)v8 setTableMapping:v9];

    v30 = [objc_opt_class() alignmentsForSFHeaderRow:sectionCopy];
    v10 = objc_opt_new();
    v32 = sectionCopy;
    v40[0] = sectionCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v31 = sectionsCopy;
    v12 = [v11 arrayByAddingObjectsFromArray:sectionsCopy];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          objc_opt_class();
          objc_opt_isKindOfClass();
          v18 = objc_opt_new();
          [v18 setIsSubHeader:{objc_msgSend(v17, "isSubHeader")}];
          richData = [v17 richData];
          v20 = [richData count];
          v21 = objc_opt_class();
          if (v20)
          {
            richData2 = [v17 richData];
            [v21 richTextForRichDataItems:richData2];
          }

          else
          {
            richData2 = [v17 data];
            [v21 richTextForDataItems:richData2];
          }
          v23 = ;
          [v18 setData:{v23, v30}];

          tableMapping = [(SearchUIGridLayoutManager *)v8 tableMapping];
          [tableMapping setObject:v18 forKey:v17];

          [v10 addObject:v18];
        }

        v14 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    v25 = objc_opt_class();
    firstObject = [v10 firstObject];
    data = [firstObject data];
    LODWORD(v25) = [v25 shouldHideViewForRichData:data];

    sectionsCopy = v31;
    [(SearchUIGridLayoutManager *)v8 setIsCompactTable:[(SearchUIGridLayoutManager *)v8 computeCompactTableForSections:v31]& (v25 ^ 1)];
    v28 = [MEMORY[0x1E69D9148] gridManagerWithAlignments:v30 rows:v10];
    [(SearchUIGridLayoutManager *)v8 setGridManager:v28];

    sectionCopy = v32;
  }

  return v8;
}

+ (BOOL)shouldHideViewForRichData:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dataCopy = data;
  v4 = [dataCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(dataCopy);
        }

        if ([*(*(&v10 + 1) + 8 * i) hasContent])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [dataCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (BOOL)computeCompactTableForSections:(id)sections
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  sectionsCopy = sections;
  v5 = [sectionsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    selfCopy = self;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(sectionsCopy);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [[SearchUIRowModel alloc] initWithCardSection:v9 queryId:0 itemIdentifier:0];
        if ([v9 separatorStyle] == 1 || !objc_msgSend(v9, "separatorStyle") && +[SearchUICardSectionView defaultSeparatorStyleForRowModel:](SearchUITableRowCardView, "defaultSeparatorStyleForRowModel:", v10) == 1)
        {
          v18 = 1;
LABEL_21:

          goto LABEL_23;
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        tableMapping = [(SearchUIGridLayoutManager *)self tableMapping];
        v12 = [tableMapping objectForKey:v9];
        data = [v12 data];

        v14 = [data countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v22;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(data);
              }

              if ([*(*(&v21 + 1) + 8 * j) hasOnlyImage])
              {

                v18 = 0;
                goto LABEL_21;
              }
            }

            v15 = [data countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        self = selfCopy;
      }

      v6 = [sectionsCopy countByEnumeratingWithState:&v25 objects:v30 count:16];
      v18 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_23:

  return v18;
}

+ (id)alignmentsForSFHeaderRow:(id)row
{
  v23 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v17 = rowCopy;
  alignmentSchema = [rowCopy alignmentSchema];
  tableColumnAlignment = [alignmentSchema tableColumnAlignment];

  v7 = [tableColumnAlignment countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(tableColumnAlignment);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_opt_new();
        columnAlignment = [v11 columnAlignment];
        if (columnAlignment <= 2)
        {
          [v12 setColumnAlignment:columnAlignment];
        }

        dataAlignment = [v11 dataAlignment];
        if (dataAlignment)
        {
          if (dataAlignment == 2)
          {
            if ([MEMORY[0x1E69D91A8] isLTR])
            {
              v15 = 2;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            if (dataAlignment != 1)
            {
              goto LABEL_17;
            }

            v15 = 1;
          }
        }

        else
        {
          v15 = 4;
        }

        [v12 setDataAlignment:v15];
LABEL_17:
        [v12 setIsEqualWidth:{objc_msgSend(v11, "isEqualWidth")}];
        [v4 addObject:v12];
      }

      v8 = [tableColumnAlignment countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v4;
}

+ (id)richTextForDataItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = itemsCopy;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_opt_new();
        glyph = [v9 glyph];

        if (glyph)
        {
          v12 = objc_opt_new();
          glyph2 = [v9 glyph];
          v14 = [SearchUITLKImageConverter imageForSFImage:glyph2];
          [v12 setTlkImage:v14];

          v24 = v12;
          v15 = &v24;
        }

        else
        {
          v12 = [SearchUITLKMultilineTextConverter formattedTextForSearchUIText:v9];
          v23 = v12;
          v15 = &v23;
        }

        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [v10 setFormattedTextItems:v16];

        [v10 setMaxLines:{objc_msgSend(v9, "maxLines")}];
        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)richTextForRichDataItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:*(*(&v12 + 1) + 8 * i), v12];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)tableRowForTableRowCardSection:(id)section
{
  sectionCopy = section;
  tableMapping = [(SearchUIGridLayoutManager *)self tableMapping];
  v6 = [tableMapping objectForKey:sectionCopy];

  return v6;
}

@end