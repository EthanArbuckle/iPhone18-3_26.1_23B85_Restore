@interface SearchUITableRowCardView
+ (BOOL)hasOnlyImages:(id)images;
+ (BOOL)isAHeader:(id)header;
+ (UIEdgeInsets)defaultLayoutMargins;
+ (double)largestImageSizeForSection:(id)section;
- (UIEdgeInsets)verticalBaselineInsetsForHeader:(BOOL)header isCompactTable:(BOOL)table;
- (UIEdgeInsets)verticalBaselineInsetsForRowsWithCompactTable:(BOOL)table;
- (id)leadingTextView;
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUITableRowCardView

- (id)setupContentView
{
  v2 = objc_opt_new();

  return v2;
}

- (id)leadingTextView
{
  contentView = [(SearchUICardSectionView *)self contentView];
  leadingTextView = [contentView leadingTextView];

  return leadingTextView;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v45.receiver = self;
  v45.super_class = SearchUITableRowCardView;
  [(SearchUICardSectionView *)&v45 updateWithRowModel:modelCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cardSection = [modelCopy cardSection];
    gridLayoutManager = [modelCopy gridLayoutManager];
    contentView = [(SearchUICardSectionView *)self contentView];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __47__SearchUITableRowCardView_updateWithRowModel___block_invoke;
    v41[3] = &unk_1E85B26A8;
    v8 = contentView;
    v42 = v8;
    v9 = gridLayoutManager;
    v43 = v9;
    v10 = cardSection;
    v44 = v10;
    [v8 performBatchUpdates:v41];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || [v10 isSubHeader])
    {
      -[SearchUITableRowCardView verticalBaselineInsetsForHeader:isCompactTable:](self, "verticalBaselineInsetsForHeader:isCompactTable:", [v10 isSubHeader], objc_msgSend(v9, "isCompactTable"));
    }

    else
    {
      -[SearchUITableRowCardView verticalBaselineInsetsForRowsWithCompactTable:](self, "verticalBaselineInsetsForRowsWithCompactTable:", [v9 isCompactTable]);
    }

    v13 = v11;
    v14 = v12;
    font = [MEMORY[0x1E69D9148] font];
    [MEMORY[0x1E69D91A8] scaledValueForValue:font withFont:self view:v13];
    v16 = 0.0;
    [v10 hasTopPadding];
    [font ascender];
    [(SearchUITableRowCardView *)self tlks_scale];
    UICeilToScale();
    v18 = v17;
    [MEMORY[0x1E69D91A8] scaledValueForValue:font withFont:self view:v14];
    [v10 hasBottomPadding];
    [font descender];
    [(SearchUITableRowCardView *)self tlks_scale];
    UICeilToScale();
    v20 = v19;
    v21 = objc_opt_class();
    v22 = [v9 tableRowForTableRowCardSection:v10];
    [v21 largestImageSizeForSection:v22];
    v24 = v23;

    [font ascender];
    v26 = v25;
    [font descender];
    v28 = v27;
    v29 = objc_opt_class();
    v30 = [v9 tableRowForTableRowCardSection:v10];
    LOBYTE(v29) = [v29 hasOnlyImages:v30];

    [objc_opt_class() defaultLayoutMargins];
    v32 = v31;
    v34 = v33;
    v35 = 0.0;
    if ((v29 & 1) == 0)
    {
      v36 = fmax((v24 - (v26 - v28)) * 0.5, 0.0);
      if (v20 - v36 >= 0.0)
      {
        v37 = v20 - v36;
      }

      else
      {
        v37 = 7.0;
      }

      v38 = v18 - v36;
      if (v38 < 0.0)
      {
        v38 = 7.0;
      }

      [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:v38];
      v16 = v39;
      [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:v37];
      v35 = v40;
    }

    [v8 setLayoutMargins:{v16, v32, v35, v34}];
  }
}

void __47__SearchUITableRowCardView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) gridManager];
  [*(a1 + 32) setManager:v2];

  v3 = [*(a1 + 40) tableRowForTableRowCardSection:*(a1 + 48)];
  [*(a1 + 32) setTableRow:v3];
}

+ (double)largestImageSizeForSection:(id)section
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  data = [section data];
  v4 = [data countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(data);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 hasOnlyImage])
        {
          formattedTextItems = [v9 formattedTextItems];
          firstObject = [formattedTextItems firstObject];

          tlkImage = [firstObject tlkImage];
          [tlkImage size];
          v14 = v13;

          if (v14 >= v7)
          {
            v7 = v14;
          }
        }
      }

      v5 = [data countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (BOOL)hasOnlyImages:(id)images
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  data = [images data];
  v4 = [data countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(data);
        }

        if (![*(*(&v10 + 1) + 8 * i) hasOnlyImage])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [data countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (UIEdgeInsets)verticalBaselineInsetsForRowsWithCompactTable:(BOOL)table
{
  v3 = 27.0;
  if (table)
  {
    v3 = 15.0;
  }

  v4 = 11.0;
  if (!table)
  {
    v4 = 17.0;
  }

  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v4;
  result.left = v5;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)verticalBaselineInsetsForHeader:(BOOL)header isCompactTable:(BOOL)table
{
  v4 = 0.0;
  v5 = 12.0;
  v6 = 20.0;
  v7 = 21.0;
  if (table)
  {
    v7 = 18.0;
  }

  if (header)
  {
    v6 = v7;
    v5 = 10.0;
  }

  v8 = 0.0;
  result.right = v8;
  result.bottom = v5;
  result.left = v4;
  result.top = v6;
  return result;
}

+ (UIEdgeInsets)defaultLayoutMargins
{
  +[SearchUIUtilities standardTableCellContentInset];
  v3 = v2;
  +[SearchUIUtilities standardTableCellContentInset];
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  v8 = v3;
  result.right = v5;
  result.bottom = v7;
  result.left = v8;
  result.top = v6;
  return result;
}

+ (BOOL)isAHeader:(id)header
{
  headerCopy = header;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end