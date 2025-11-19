@interface TLKGridLayoutManager
+ (double)leadingSectionSpacingForView:(id)a3 view2:(id)a4 index:(unint64_t)a5 alignmentSchema:(id)a6 allEqual:(BOOL)a7;
+ (id)arrayOfItemsForSection:(id)a3;
+ (id)computeTruncationForAlignments:(id)a3 indexForFirstTrailingColumn:(unint64_t)a4 totalEqualColumns:(unint64_t)a5;
+ (id)gridManagerWithAlignments:(id)a3 rows:(id)a4;
+ (id)verticalAlignmentsForItems:(id)a3;
- (BOOL)allEqualColumns;
- (BOOL)hasManyTrailingColumns;
- (CGSize)cachedFittingSize;
- (CGSize)cachedGridSize;
- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4;
- (CGSize)sizeForFittingSize:(CGSize)a3 forRow:(id)a4;
- (NSString)description;
- (TLKGridLayoutManager)initWithWithAlignments:(id)a3 rows:(id)a4;
- (double)gridArrangement:(id)a3 widthOfColumnAtIndex:(int64_t)a4 spacingAfter:(double *)a5;
- (double)trailingSectionSpacingBasedOnTotalViewsInSection:(int64_t)a3;
- (id)addItemsToDictionary:(id)a3 forSection:(id)a4 row:(unint64_t)a5 truncationPriorities:(id)a6;
- (id)gridArrangement:(id)a3 itemAtIndex:(int64_t)a4 columns:(_NSRange *)a5 rows:(_NSRange *)a6 horizontalAlignment:(int64_t *)a7 verticalAlignment:(int64_t *)a8;
- (id)spacingsForAlignments:(id)a3 firstValidDataRow:(id)a4;
- (int64_t)effectiveUserInterfaceLayoutDirection;
- (int64_t)numberOfColumns;
- (int64_t)numberOfItemsInGridArrangement:(id)a3;
- (void)placeViewsForSize:(CGSize)a3 forRow:(id)a4 completion:(id)a5;
@end

@implementation TLKGridLayoutManager

+ (id)gridManagerWithAlignments:(id)a3 rows:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 count];
  v8 = off_1E7FD8660;
  if (v7 >= 0xA)
  {
    v8 = off_1E7FD86A8;
  }

  v9 = [objc_alloc(*v8) initWithWithAlignments:v6 rows:v5];

  return v9;
}

- (TLKGridLayoutManager)initWithWithAlignments:(id)a3 rows:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v68.receiver = self;
  v68.super_class = TLKGridLayoutManager;
  v8 = [(TLKGridLayoutManager *)&v68 init];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:{objc_msgSend(v7, "count")}];
  [(TLKGridLayoutManager *)v8 setItemToRowMapping:v9];

  if ([v6 count])
  {
    v10 = v6;
  }

  else
  {
    NSLog(&cfstr_ImproperApiUsa.isa);
    v10 = objc_opt_new();

    v11 = [v7 firstObject];
    v12 = [v11 data];
    v13 = [v12 count];

    if (v13)
    {
      v14 = 0;
      do
      {
        v15 = objc_opt_new();
        [v15 setColumnAlignment:0];
        [v15 setDataAlignment:0];
        [v10 addObject:v15];

        ++v14;
        v16 = [v7 firstObject];
        v17 = [v16 data];
        v18 = [v17 count];
      }

      while (v14 < v18);
    }
  }

  -[TLKGridLayoutManager setIndexForFirstTrailingColumn:](v8, "setIndexForFirstTrailingColumn:", [v10 indexOfObjectPassingTest:&__block_literal_global]);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v6 = v10;
  v19 = [v6 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v65;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v65 != v22)
        {
          objc_enumerationMutation(v6);
        }

        v21 += [*(*(&v64 + 1) + 8 * i) isEqualWidth];
      }

      v20 = [v6 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  [(TLKGridLayoutManager *)v8 setTotalEqualColumns:v21];
  v24 = [objc_opt_class() computeTruncationForAlignments:v6 indexForFirstTrailingColumn:-[TLKGridLayoutManager indexForFirstTrailingColumn](v8 totalEqualColumns:{"indexForFirstTrailingColumn"), v21}];
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v59 = v26;
  if ([v7 count])
  {
    v27 = 0;
    do
    {
      v28 = [v7 objectAtIndexedSubscript:v27];
      [(TLKGridLayoutManager *)v8 addItemsToDictionary:v25 forSection:v28 row:v27 truncationPriorities:v24];
      v30 = v29 = v25;
      [v26 addObject:v30];

      v31 = [(TLKGridLayoutManager *)v8 itemToRowMapping];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
      v33 = [v7 objectAtIndexedSubscript:v27];
      [v31 setObject:v32 forKey:v33];

      v26 = v59;
      v25 = v29;

      ++v27;
    }

    while (v27 < [v7 count]);
  }

  v34 = [objc_alloc(MEMORY[0x1E698B740]) initWithContainer:v8 dataSource:v8];
  [(TLKGridLayoutManager *)v8 setGridArrangement:v34];
  [(TLKGridLayoutManager *)v8 setItemsForIndex:v25];
  [(TLKGridLayoutManager *)v8 setItemsForRows:v26];
  v57 = v34;
  [v34 setHorizontalDistribution:{v21 == objc_msgSend(v6, "count")}];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v35 = v7;
  v36 = [v35 countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v61;
    while (2)
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(v35);
        }

        if ([*(*(&v60 + 1) + 8 * j) isSubHeader])
        {
          [(TLKGridLayoutManager *)v8 setTableContainsRowHeaders:1];
          goto LABEL_30;
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  if (![v35 count])
  {
    v50 = 0;
    goto LABEL_40;
  }

  v56 = v25;
  v40 = 0;
  while (1)
  {
    v41 = [v35 objectAtIndexedSubscript:{v40, v56}];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

LABEL_35:
    if (++v40 >= [v35 count])
    {
      v50 = 0;
      goto LABEL_39;
    }
  }

  v42 = [v35 objectAtIndexedSubscript:v40];
  [v42 data];
  v44 = v43 = v35;
  v58 = [v44 count];
  v45 = v7;
  v46 = v8;
  v47 = v24;
  v48 = [v6 count];

  v35 = v43;
  v49 = v58 == v48;
  v24 = v47;
  v8 = v46;
  v7 = v45;
  if (!v49)
  {
    goto LABEL_35;
  }

  v50 = [v43 objectAtIndexedSubscript:v40];
LABEL_39:
  v25 = v56;
LABEL_40:
  v51 = [(TLKGridLayoutManager *)v8 spacingsForAlignments:v6 firstValidDataRow:v50];
  [(TLKGridLayoutManager *)v8 setSpacings:v51];

  [(TLKGridLayoutManager *)v8 setAlignments:v6];
  v52 = objc_opt_class();
  v53 = [(TLKGridLayoutManager *)v8 itemsForRows];
  v54 = [v52 verticalAlignmentsForItems:v53];
  [(TLKGridLayoutManager *)v8 setVerticalRowAlignments:v54];

LABEL_41:
  return v8;
}

+ (id)verticalAlignmentsForItems:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v15 = &unk_1F3AA8290;
                goto LABEL_16;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v15 = &unk_1F3AA82A8;
LABEL_16:

        [v4 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return v4;
}

- (CGSize)sizeForFittingSize:(CGSize)a3 forRow:(id)a4
{
  width = a3.width;
  v6 = a4;
  v7 = [(TLKGridLayoutManager *)self itemToRowMapping];
  v8 = [v7 objectForKey:v6];

  v9 = [v8 integerValue];
  [(TLKGridLayoutManager *)self cachedFittingSize];
  if (width != v11 || v10 != 3.40282347e38)
  {
    [(TLKGridLayoutManager *)self setCachedFittingSize:width, 3.40282347e38];
    v12 = [(TLKGridLayoutManager *)self gridArrangement];
    [v12 layoutSizeFittingSize:{width, 3.40282347e38}];
    [(TLKGridLayoutManager *)self setCachedGridSize:?];

    if ([(TLKGridLayoutManager *)self totalEqualColumns]>= 1)
    {
      v13 = [(TLKGridLayoutManager *)self gridArrangement];
      v14 = [v13 horizontalDistribution];

      if (v14 != 1)
      {
        [(TLKGridLayoutManager *)self setWidthOfEqualFillColumns:0.0];
        v15 = [(TLKGridLayoutManager *)self gridArrangement];
        [v15 layoutSizeFittingSize:{width, 3.40282347e38}];
        v17 = v16;

        v18 = [(TLKGridLayoutManager *)self gridArrangement];
        v19 = [(TLKGridLayoutManager *)self indexForFirstTrailingColumn];
        v20 = [(TLKGridLayoutManager *)self totalEqualColumns];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __50__TLKGridLayoutManager_sizeForFittingSize_forRow___block_invoke;
        v30[3] = &unk_1E7FD8BF8;
        v30[4] = self;
        [v18 positionItemsInColumns:v19 rows:v20 inBounds:1 block:{0, v30, 0.0, 0.0, width, v17}];

        v21 = [(TLKGridLayoutManager *)self gridArrangement];
        [v21 reloadData];
      }
    }
  }

  v22 = [(TLKGridLayoutManager *)self gridArrangement];
  [(TLKGridLayoutManager *)self cachedGridSize];
  v24 = v23;
  [(TLKGridLayoutManager *)self cachedGridSize];
  [v22 frameForColumns:1 rows:0 inBounds:{v9, 1, 0.0, 0.0, v24, v25}];
  v27 = v26;

  v28 = width;
  v29 = v27;
  result.height = v29;
  result.width = v28;
  return result;
}

uint64_t __50__TLKGridLayoutManager_sizeForFittingSize_forRow___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  [*(a1 + 32) widthOfEqualFillColumns];
  if (v6 < a4)
  {
    v6 = a4;
  }

  v7 = *(a1 + 32);

  return [v7 setWidthOfEqualFillColumns:v6];
}

- (void)placeViewsForSize:(CGSize)a3 forRow:(id)a4 completion:(id)a5
{
  width = a3.width;
  v8 = a4;
  v9 = a5;
  v10 = [(TLKGridLayoutManager *)self itemToRowMapping];
  v11 = [v10 objectForKey:v8];
  v12 = [v11 integerValue];

  v13 = [(TLKGridLayoutManager *)self gridArrangement];
  [(TLKGridLayoutManager *)self cachedGridSize];
  v15 = v14;
  [(TLKGridLayoutManager *)self cachedGridSize];
  [v13 frameForColumns:1 rows:0 inBounds:{v12, 1, 0.0, 0.0, v15, v16}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy_;
  v32 = __Block_byref_object_dispose_;
  v33 = objc_opt_new();
  v25 = [(TLKGridLayoutManager *)self gridArrangement];
  [(TLKGridLayoutManager *)self cachedGridSize];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __60__TLKGridLayoutManager_placeViewsForSize_forRow_completion___block_invoke;
  v27[3] = &unk_1E7FD8C20;
  v27[5] = v18;
  v27[6] = v20;
  v27[7] = v22;
  v27[8] = v24;
  v27[4] = &v28;
  [v25 positionItemsInColumns:1 rows:0 inBounds:v12 block:{1, v27, 0.0, 0.0, width, v26}];

  v9[2](v9, v29[5]);
  _Block_object_dispose(&v28, 8);
}

void __60__TLKGridLayoutManager_placeViewsForSize_forRow_completion___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = a4 - *(a1 + 48);
  v10 = a5;
  v11 = ceilf(v10);
  v13 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  [TLKLayoutUtilities deviceScaledRoundedRect:v12 forView:a3, v9, v11, a6];
  [v13 setFrame:?];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v13];
}

- (id)addItemsToDictionary:(id)a3 forSection:(id)a4 row:(unint64_t)a5 truncationPriorities:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v45 = v11;
  v13 = [objc_opt_class() arrayOfItemsForSection:v11];
  if ([v13 count])
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [v13 objectAtIndexedSubscript:v15];
      [v16 setRow:a5];

      v17 = [v13 objectAtIndexedSubscript:v15];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      [v10 setObject:v17 forKeyedSubscript:v18];

      v19 = [v12 objectAtIndexedSubscript:v14];
      [v19 floatValue];
      v21 = v20;

      v22 = [v13 objectAtIndexedSubscript:v15];
      [v22 columnRange];
      v24 = v23;

      v25 = v15;
      if (v15 < v24)
      {
        do
        {
          v26 = [v12 objectAtIndexedSubscript:v25];
          [v26 floatValue];
          v28 = v27;

          if (v21 >= v28)
          {
            v21 = v28;
          }

          ++v25;
          v29 = [v13 objectAtIndexedSubscript:v15];
          [v29 columnRange];
          v31 = v30;
        }

        while (v25 < v31);
      }

      v32 = [(TLKGridLayoutManager *)self totalEqualColumns];
      if (v32 == [v12 count])
      {
        v33 = 750.0;
      }

      else
      {
        v33 = v21;
      }

      v34 = [v13 objectAtIndexedSubscript:v15];
      [v34 setHorizontalCompressionResistance:v33];

      v35 = [(TLKGridLayoutManager *)self indexForFirstTrailingColumn]- 1;
      v36 = [v13 objectAtIndexedSubscript:v15];
      v37 = [v36 columnRange];
      if (v35 - v37 < v38 && v35 >= v37)
      {
        v40 = 250.0;
      }

      else
      {
        v40 = 999.0;
      }

      v41 = [v13 objectAtIndexedSubscript:v15];
      [v41 setHorizontalHuggingPriority:v40];

      v42 = [v13 objectAtIndexedSubscript:v15];
      [v42 columnRange];
      v14 += v43;

      ++v15;
    }

    while (v15 < [v13 count]);
  }

  return v13;
}

+ (id)arrayOfItemsForSection:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v39 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = v3;
  obj = [v3 data];
  v4 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_25;
  }

  v5 = 0;
  v6 = 0;
  v7 = *v48;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v48 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v47 + 1) + 8 * i);
      if ([v11 hasOnlyImage])
      {
        v12 = [v11 formattedTextItems];
        v13 = [v12 firstObject];

        v14 = objc_alloc_init(TLKGridImageItem);
        v15 = [v13 tlkImage];
        [v15 size];
        v17 = v16;
        v19 = v18;

        if (v17 == v8 && v19 == v9)
        {
          v41 = 0;
          v42 = &v41;
          v43 = 0x3032000000;
          v44 = __Block_byref_object_copy_;
          v45 = __Block_byref_object_dispose_;
          v46 = 0;
          v21 = [v13 tlkImage];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __47__TLKGridLayoutManager_arrayOfItemsForSection___block_invoke;
          v40[3] = &unk_1E7FD8C48;
          v40[4] = &v41;
          [v21 loadImageWithScale:0 isDarkStyle:v40 completionHandler:0.0];

          v22 = v42[5];
          v23 = MEMORY[0x1E69DCAD8];
          v24 = [a1 font];
          [v24 pointSize];
          v25 = [v23 configurationWithPointSize:4 weight:?];
          v26 = [v22 imageWithSymbolConfiguration:v25];
          [v26 size];
          v17 = v27;
          v19 = v28;

          _Block_object_dispose(&v41, 8);
        }

        [(TLKArrangementItem *)v14 setSize:v17, v19];
        v29 = v14;

        [v39 addObject:v29];
        [(TLKLabelItem *)v29 setColumnRange:v5, 1];

        goto LABEL_19;
      }

      v30 = [v11 hasContent];
      if (v5)
      {
        v31 = v30;
      }

      else
      {
        v31 = 1;
      }

      if (v31 == 1)
      {
        v29 = objc_alloc_init(TLKLabelItem);
        [(TLKLabelItem *)v29 setRichText:v11];
        [(TLKLabelItem *)v29 setColumnRange:v5, 1];
        [v39 addObject:v29];

LABEL_19:
        v6 = v29;
        goto LABEL_21;
      }

      [(TLKLabelItem *)v6 columnRange];
      v33 = v32;
      [(TLKLabelItem *)v6 columnRange];
      [(TLKLabelItem *)v6 setColumnRange:v5 - v33, v34 + 1];
LABEL_21:
      ++v5;
    }

    v4 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v4);
LABEL_25:

  return v39;
}

- (id)gridArrangement:(id)a3 itemAtIndex:(int64_t)a4 columns:(_NSRange *)a5 rows:(_NSRange *)a6 horizontalAlignment:(int64_t *)a7 verticalAlignment:(int64_t *)a8
{
  v14 = [(TLKGridLayoutManager *)self itemsForIndex];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v16 = [v14 objectForKeyedSubscript:v15];

  a5->location = [v16 columnRange];
  a5->length = v17;
  a6->location = [v16 row];
  a6->length = 1;
  *a7 = 0;
  v18 = [(TLKGridLayoutManager *)self verticalRowAlignments];
  v19 = [v18 objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
  *a8 = [v19 unsignedIntegerValue];

  return v16;
}

- (int64_t)effectiveUserInterfaceLayoutDirection
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  return v3;
}

- (int64_t)numberOfItemsInGridArrangement:(id)a3
{
  v3 = [(TLKGridLayoutManager *)self itemsForIndex];
  v4 = [v3 count];

  return v4;
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)a3 forArrangedSubview:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v18 = *MEMORY[0x1E695F060];
  v7 = [v6 sizeCache];
  v8 = [v7 getSize:&v18 forTargetSize:objc_msgSend(v6 isSizeDependentOnPerpendicularAxis:{"isLayoutSizeDependentOnPerpendicularAxis"), width, height}];

  if (v8)
  {
    v9 = *(&v18 + 1);
    v10 = *&v18;
  }

  else
  {
    [v6 sizeForTargetSize:{width, height}];
    v10 = v11;
    v9 = v12;
    +[TLKLabelItem minimumWidthForLabelItem];
    if (v10 < v13)
    {
      +[TLKLabelItem minimumWidthForLabelItem];
      v10 = v14;
    }

    v15 = [v6 sizeCache];
    [v15 insertSize:v10 forTargetSize:{v9, width, height}];
  }

  v16 = v10;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)gridArrangement:(id)a3 widthOfColumnAtIndex:(int64_t)a4 spacingAfter:(double *)a5
{
  v8 = [(TLKGridLayoutManager *)self spacings];
  v9 = [v8 objectAtIndexedSubscript:a4];
  [v9 floatValue];
  *a5 = v10;

  if ([(TLKGridLayoutManager *)self hasManyTrailingColumns]&& [(TLKGridLayoutManager *)self indexForFirstTrailingColumn]<= a4)
  {

    +[TLKLabelItem minimumWidthForLabelItem];
  }

  else
  {
    if ([(TLKGridLayoutManager *)self totalEqualColumns]< 1)
    {
      return *MEMORY[0x1E698B6F8];
    }

    if ([(TLKGridLayoutManager *)self indexForFirstTrailingColumn]> a4)
    {
      return *MEMORY[0x1E698B6F8];
    }

    v11 = [(TLKGridLayoutManager *)self indexForFirstTrailingColumn];
    if ([(TLKGridLayoutManager *)self totalEqualColumns]+ v11 <= a4)
    {
      return *MEMORY[0x1E698B6F8];
    }

    [(TLKGridLayoutManager *)self widthOfEqualFillColumns];
    if (v12 == 0.0)
    {
      return *MEMORY[0x1E698B6F8];
    }

    else
    {

      [(TLKGridLayoutManager *)self widthOfEqualFillColumns];
    }
  }

  return result;
}

- (id)spacingsForAlignments:(id)a3 firstValidDataRow:(id)a4
{
  v6 = a3;
  v26 = a4;
  v7 = objc_opt_new();
  if ([v6 count] != 1)
  {
    v8 = 0;
    v9 = 0x1E696A000uLL;
    v25 = v6;
    do
    {
      v10 = v8 + 1;
      if (v8 >= [(TLKGridLayoutManager *)self indexForFirstTrailingColumn])
      {
        -[TLKGridLayoutManager trailingSectionSpacingBasedOnTotalViewsInSection:](self, "trailingSectionSpacingBasedOnTotalViewsInSection:", [v6 count] - -[TLKGridLayoutManager indexForFirstTrailingColumn](self, "indexForFirstTrailingColumn"));
        v21 = v22;
      }

      else
      {
        v11 = v7;
        v12 = v9;
        v13 = objc_opt_class();
        v14 = [v26 data];
        v15 = [v14 objectAtIndexedSubscript:v8];
        v16 = [v26 data];
        v17 = [v16 objectAtIndexedSubscript:v8 + 1];
        v18 = [(TLKGridLayoutManager *)self allEqualColumns];
        v19 = v13;
        v9 = v12;
        v7 = v11;
        v6 = v25;
        [v19 leadingSectionSpacingForView:v15 view2:v17 index:v8 alignmentSchema:v25 allEqual:v18];
        v21 = v20;
      }

      v23 = [*(v9 + 3480) numberWithInteger:v21];
      [v7 addObject:v23];

      ++v8;
    }

    while (v10 < [v6 count] - 1);
  }

  [v7 addObject:&unk_1F3AA82C0];

  return v7;
}

- (BOOL)allEqualColumns
{
  if ([(TLKGridLayoutManager *)self totalEqualColumns]< 1)
  {
    return 0;
  }

  v3 = [(TLKGridLayoutManager *)self totalEqualColumns];
  return v3 == [(TLKGridLayoutManager *)self numberOfColumns];
}

- (int64_t)numberOfColumns
{
  v2 = [(TLKGridLayoutManager *)self itemsForRows];
  v3 = [v2 firstObject];
  v4 = [v3 count];

  return v4;
}

- (double)trailingSectionSpacingBasedOnTotalViewsInSection:(int64_t)a3
{
  result = 1.0;
  v4 = 10.0;
  v5 = 17.0;
  if (a3 > 2)
  {
    v5 = 14.0;
  }

  if (a3 <= 5)
  {
    v4 = v5;
  }

  if (a3 <= 9)
  {
    return v4;
  }

  return result;
}

+ (double)leadingSectionSpacingForView:(id)a3 view2:(id)a4 index:(unint64_t)a5 alignmentSchema:(id)a6 allEqual:(BOOL)a7
{
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v13 formattedTextItems];
  v15 = [v14 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v17 = [v12 formattedTextItems];
  v18 = [v17 firstObject];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  v20 = [v13 formattedTextItems];

  v21 = [v20 firstObject];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  v23 = [v12 formattedTextItems];

  v24 = [v23 firstObject];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v22)
  {
    v26 = [v11 objectAtIndexedSubscript:a5];
    v27 = [v26 textAlignment] != 1;

    if ((v25 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = 1;
    if ((v25 & 1) == 0)
    {
LABEL_3:
      v28 = 1;
      if ((v22 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v32 = [v11 objectAtIndexedSubscript:a5];
      v29 = [v32 textAlignment] != 0;

      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v33 = [v11 objectAtIndexedSubscript:a5 + 1];
      v30 = [v33 textAlignment] != 0;

      goto LABEL_10;
    }
  }

  v31 = [v11 objectAtIndexedSubscript:a5 + 1];
  v28 = [v31 textAlignment] != 1;

  if (v22)
  {
    goto LABEL_8;
  }

LABEL_4:
  v29 = 1;
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_5:
  v30 = 1;
LABEL_10:
  v34 = 1.0;
  if (!a7)
  {
    v34 = 12.0;
    if (v28 || (isKindOfClass & 1) == 0)
    {
      v34 = 14.0;
      if (v27 || v30)
      {
        if (v29 || (v19 & 1) == 0)
        {
          v34 = 8.0;
        }

        else
        {
          v34 = 20.0;
        }
      }
    }
  }

  return v34;
}

+ (id)computeTruncationForAlignments:(id)a3 indexForFirstTrailingColumn:(unint64_t)a4 totalEqualColumns:(unint64_t)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 count];
  v27[0] = v27;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  if (v9)
  {
    v12 = a4 - 1;
    v13 = (v27 - v10);
    v14 = v8;
    do
    {
      v15 = 0x406F400000000000;
      if (v12)
      {
        v15 = qword_1BBA67F10[[v7 count] < 0xA];
      }

      *v13++ = v15;
      --v12;
      --v14;
    }

    while (v14);
  }

  if ([v7 count] - 2 != a4)
  {
    v16 = 0;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_29:
    v23 = objc_opt_new();
    goto LABEL_30;
  }

  v16 = [v7 count] < 4;
  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_8:
  v17 = 0;
  v18 = v8 - 1;
  if (v16)
  {
    v19 = 751.0;
  }

  else
  {
    v19 = 1000.0;
  }

  do
  {
    if (!a4 && v17 == 1)
    {
      *(v11 + 1) = 0x408F400000000000;
    }

    if (v16)
    {
      v20 = [v7 count] - 2;
      v21 = 0x408F400000000000;
      if (v17 == v20 || (v22 = [v7 count] - 1, v21 = 0x406F400000000000, v17 == v22))
      {
        *&v11[8 * v17] = v21;
      }
    }

    if (a5 && v17 >= a4 && v17 - a4 < a5)
    {
      *&v11[8 * v17] = 0x408F400000000000;
    }

    if (v18 == v17)
    {
      *&v11[8 * v18] = v19;
    }

    ++v17;
  }

  while (v8 != v17);
  v23 = objc_opt_new();
  do
  {
    v24 = *v11;
    v11 += 8;
    v25 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
    [v23 addObject:v25];

    --v8;
  }

  while (v8);
LABEL_30:

  return v23;
}

- (BOOL)hasManyTrailingColumns
{
  v3 = [(TLKGridLayoutManager *)self itemsForRows];
  v4 = [v3 firstObject];
  v5 = [v4 count];
  v6 = v5 - [(TLKGridLayoutManager *)self indexForFirstTrailingColumn];

  return [(TLKGridLayoutManager *)self indexForFirstTrailingColumn]== 1 && v6 > 9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TLKGridLayoutManager;
  v4 = [(TLKGridLayoutManager *)&v8 description];
  v5 = [(TLKGridLayoutManager *)self itemsForRows];
  v6 = [v3 stringWithFormat:@"manager- %@, rows %@", v4, v5];

  return v6;
}

- (CGSize)cachedFittingSize
{
  width = self->_cachedFittingSize.width;
  height = self->_cachedFittingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)cachedGridSize
{
  width = self->_cachedGridSize.width;
  height = self->_cachedGridSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end