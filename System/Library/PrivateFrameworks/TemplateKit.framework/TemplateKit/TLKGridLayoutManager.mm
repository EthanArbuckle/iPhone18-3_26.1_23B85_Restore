@interface TLKGridLayoutManager
+ (double)leadingSectionSpacingForView:(id)view view2:(id)view2 index:(unint64_t)index alignmentSchema:(id)schema allEqual:(BOOL)equal;
+ (id)arrayOfItemsForSection:(id)section;
+ (id)computeTruncationForAlignments:(id)alignments indexForFirstTrailingColumn:(unint64_t)column totalEqualColumns:(unint64_t)columns;
+ (id)gridManagerWithAlignments:(id)alignments rows:(id)rows;
+ (id)verticalAlignmentsForItems:(id)items;
- (BOOL)allEqualColumns;
- (BOOL)hasManyTrailingColumns;
- (CGSize)cachedFittingSize;
- (CGSize)cachedGridSize;
- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (CGSize)sizeForFittingSize:(CGSize)size forRow:(id)row;
- (NSString)description;
- (TLKGridLayoutManager)initWithWithAlignments:(id)alignments rows:(id)rows;
- (double)gridArrangement:(id)arrangement widthOfColumnAtIndex:(int64_t)index spacingAfter:(double *)after;
- (double)trailingSectionSpacingBasedOnTotalViewsInSection:(int64_t)section;
- (id)addItemsToDictionary:(id)dictionary forSection:(id)section row:(unint64_t)row truncationPriorities:(id)priorities;
- (id)gridArrangement:(id)arrangement itemAtIndex:(int64_t)index columns:(_NSRange *)columns rows:(_NSRange *)rows horizontalAlignment:(int64_t *)alignment verticalAlignment:(int64_t *)verticalAlignment;
- (id)spacingsForAlignments:(id)alignments firstValidDataRow:(id)row;
- (int64_t)effectiveUserInterfaceLayoutDirection;
- (int64_t)numberOfColumns;
- (int64_t)numberOfItemsInGridArrangement:(id)arrangement;
- (void)placeViewsForSize:(CGSize)size forRow:(id)row completion:(id)completion;
@end

@implementation TLKGridLayoutManager

+ (id)gridManagerWithAlignments:(id)alignments rows:(id)rows
{
  rowsCopy = rows;
  alignmentsCopy = alignments;
  v7 = [alignmentsCopy count];
  v8 = off_1E7FD8660;
  if (v7 >= 0xA)
  {
    v8 = off_1E7FD86A8;
  }

  v9 = [objc_alloc(*v8) initWithWithAlignments:alignmentsCopy rows:rowsCopy];

  return v9;
}

- (TLKGridLayoutManager)initWithWithAlignments:(id)alignments rows:(id)rows
{
  v71 = *MEMORY[0x1E69E9840];
  alignmentsCopy = alignments;
  rowsCopy = rows;
  v68.receiver = self;
  v68.super_class = TLKGridLayoutManager;
  v8 = [(TLKGridLayoutManager *)&v68 init];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:{objc_msgSend(rowsCopy, "count")}];
  [(TLKGridLayoutManager *)v8 setItemToRowMapping:v9];

  if ([alignmentsCopy count])
  {
    v10 = alignmentsCopy;
  }

  else
  {
    NSLog(&cfstr_ImproperApiUsa.isa);
    v10 = objc_opt_new();

    firstObject = [rowsCopy firstObject];
    data = [firstObject data];
    v13 = [data count];

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
        firstObject2 = [rowsCopy firstObject];
        data2 = [firstObject2 data];
        v18 = [data2 count];
      }

      while (v14 < v18);
    }
  }

  -[TLKGridLayoutManager setIndexForFirstTrailingColumn:](v8, "setIndexForFirstTrailingColumn:", [v10 indexOfObjectPassingTest:&__block_literal_global]);
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  alignmentsCopy = v10;
  v19 = [alignmentsCopy countByEnumeratingWithState:&v64 objects:v70 count:16];
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
          objc_enumerationMutation(alignmentsCopy);
        }

        v21 += [*(*(&v64 + 1) + 8 * i) isEqualWidth];
      }

      v20 = [alignmentsCopy countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  [(TLKGridLayoutManager *)v8 setTotalEqualColumns:v21];
  v24 = [objc_opt_class() computeTruncationForAlignments:alignmentsCopy indexForFirstTrailingColumn:-[TLKGridLayoutManager indexForFirstTrailingColumn](v8 totalEqualColumns:{"indexForFirstTrailingColumn"), v21}];
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v59 = v26;
  if ([rowsCopy count])
  {
    v27 = 0;
    do
    {
      v28 = [rowsCopy objectAtIndexedSubscript:v27];
      [(TLKGridLayoutManager *)v8 addItemsToDictionary:v25 forSection:v28 row:v27 truncationPriorities:v24];
      v30 = v29 = v25;
      [v26 addObject:v30];

      itemToRowMapping = [(TLKGridLayoutManager *)v8 itemToRowMapping];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
      v33 = [rowsCopy objectAtIndexedSubscript:v27];
      [itemToRowMapping setObject:v32 forKey:v33];

      v26 = v59;
      v25 = v29;

      ++v27;
    }

    while (v27 < [rowsCopy count]);
  }

  v34 = [objc_alloc(MEMORY[0x1E698B740]) initWithContainer:v8 dataSource:v8];
  [(TLKGridLayoutManager *)v8 setGridArrangement:v34];
  [(TLKGridLayoutManager *)v8 setItemsForIndex:v25];
  [(TLKGridLayoutManager *)v8 setItemsForRows:v26];
  v57 = v34;
  [v34 setHorizontalDistribution:{v21 == objc_msgSend(alignmentsCopy, "count")}];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v35 = rowsCopy;
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
  v45 = rowsCopy;
  v46 = v8;
  v47 = v24;
  v48 = [alignmentsCopy count];

  v35 = v43;
  v49 = v58 == v48;
  v24 = v47;
  v8 = v46;
  rowsCopy = v45;
  if (!v49)
  {
    goto LABEL_35;
  }

  v50 = [v43 objectAtIndexedSubscript:v40];
LABEL_39:
  v25 = v56;
LABEL_40:
  v51 = [(TLKGridLayoutManager *)v8 spacingsForAlignments:alignmentsCopy firstValidDataRow:v50];
  [(TLKGridLayoutManager *)v8 setSpacings:v51];

  [(TLKGridLayoutManager *)v8 setAlignments:alignmentsCopy];
  v52 = objc_opt_class();
  itemsForRows = [(TLKGridLayoutManager *)v8 itemsForRows];
  v54 = [v52 verticalAlignmentsForItems:itemsForRows];
  [(TLKGridLayoutManager *)v8 setVerticalRowAlignments:v54];

LABEL_41:
  return v8;
}

+ (id)verticalAlignmentsForItems:(id)items
{
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = itemsCopy;
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

- (CGSize)sizeForFittingSize:(CGSize)size forRow:(id)row
{
  width = size.width;
  rowCopy = row;
  itemToRowMapping = [(TLKGridLayoutManager *)self itemToRowMapping];
  v8 = [itemToRowMapping objectForKey:rowCopy];

  integerValue = [v8 integerValue];
  [(TLKGridLayoutManager *)self cachedFittingSize];
  if (width != v11 || v10 != 3.40282347e38)
  {
    [(TLKGridLayoutManager *)self setCachedFittingSize:width, 3.40282347e38];
    gridArrangement = [(TLKGridLayoutManager *)self gridArrangement];
    [gridArrangement layoutSizeFittingSize:{width, 3.40282347e38}];
    [(TLKGridLayoutManager *)self setCachedGridSize:?];

    if ([(TLKGridLayoutManager *)self totalEqualColumns]>= 1)
    {
      gridArrangement2 = [(TLKGridLayoutManager *)self gridArrangement];
      horizontalDistribution = [gridArrangement2 horizontalDistribution];

      if (horizontalDistribution != 1)
      {
        [(TLKGridLayoutManager *)self setWidthOfEqualFillColumns:0.0];
        gridArrangement3 = [(TLKGridLayoutManager *)self gridArrangement];
        [gridArrangement3 layoutSizeFittingSize:{width, 3.40282347e38}];
        v17 = v16;

        gridArrangement4 = [(TLKGridLayoutManager *)self gridArrangement];
        indexForFirstTrailingColumn = [(TLKGridLayoutManager *)self indexForFirstTrailingColumn];
        totalEqualColumns = [(TLKGridLayoutManager *)self totalEqualColumns];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __50__TLKGridLayoutManager_sizeForFittingSize_forRow___block_invoke;
        v30[3] = &unk_1E7FD8BF8;
        v30[4] = self;
        [gridArrangement4 positionItemsInColumns:indexForFirstTrailingColumn rows:totalEqualColumns inBounds:1 block:{0, v30, 0.0, 0.0, width, v17}];

        gridArrangement5 = [(TLKGridLayoutManager *)self gridArrangement];
        [gridArrangement5 reloadData];
      }
    }
  }

  gridArrangement6 = [(TLKGridLayoutManager *)self gridArrangement];
  [(TLKGridLayoutManager *)self cachedGridSize];
  v24 = v23;
  [(TLKGridLayoutManager *)self cachedGridSize];
  [gridArrangement6 frameForColumns:1 rows:0 inBounds:{integerValue, 1, 0.0, 0.0, v24, v25}];
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

- (void)placeViewsForSize:(CGSize)size forRow:(id)row completion:(id)completion
{
  width = size.width;
  rowCopy = row;
  completionCopy = completion;
  itemToRowMapping = [(TLKGridLayoutManager *)self itemToRowMapping];
  v11 = [itemToRowMapping objectForKey:rowCopy];
  integerValue = [v11 integerValue];

  gridArrangement = [(TLKGridLayoutManager *)self gridArrangement];
  [(TLKGridLayoutManager *)self cachedGridSize];
  v15 = v14;
  [(TLKGridLayoutManager *)self cachedGridSize];
  [gridArrangement frameForColumns:1 rows:0 inBounds:{integerValue, 1, 0.0, 0.0, v15, v16}];
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
  gridArrangement2 = [(TLKGridLayoutManager *)self gridArrangement];
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
  [gridArrangement2 positionItemsInColumns:1 rows:0 inBounds:integerValue block:{1, v27, 0.0, 0.0, width, v26}];

  completionCopy[2](completionCopy, v29[5]);
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

- (id)addItemsToDictionary:(id)dictionary forSection:(id)section row:(unint64_t)row truncationPriorities:(id)priorities
{
  dictionaryCopy = dictionary;
  sectionCopy = section;
  prioritiesCopy = priorities;
  v45 = sectionCopy;
  v13 = [objc_opt_class() arrayOfItemsForSection:sectionCopy];
  if ([v13 count])
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [v13 objectAtIndexedSubscript:v15];
      [v16 setRow:row];

      v17 = [v13 objectAtIndexedSubscript:v15];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dictionaryCopy, "count")}];
      [dictionaryCopy setObject:v17 forKeyedSubscript:v18];

      v19 = [prioritiesCopy objectAtIndexedSubscript:v14];
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
          v26 = [prioritiesCopy objectAtIndexedSubscript:v25];
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

      totalEqualColumns = [(TLKGridLayoutManager *)self totalEqualColumns];
      if (totalEqualColumns == [prioritiesCopy count])
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
      columnRange = [v36 columnRange];
      if (v35 - columnRange < v38 && v35 >= columnRange)
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

+ (id)arrayOfItemsForSection:(id)section
{
  v52 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v39 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = sectionCopy;
  obj = [sectionCopy data];
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
        formattedTextItems = [v11 formattedTextItems];
        firstObject = [formattedTextItems firstObject];

        v14 = objc_alloc_init(TLKGridImageItem);
        tlkImage = [firstObject tlkImage];
        [tlkImage size];
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
          tlkImage2 = [firstObject tlkImage];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __47__TLKGridLayoutManager_arrayOfItemsForSection___block_invoke;
          v40[3] = &unk_1E7FD8C48;
          v40[4] = &v41;
          [tlkImage2 loadImageWithScale:0 isDarkStyle:v40 completionHandler:0.0];

          v22 = v42[5];
          v23 = MEMORY[0x1E69DCAD8];
          font = [self font];
          [font pointSize];
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

      hasContent = [v11 hasContent];
      if (v5)
      {
        v31 = hasContent;
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

- (id)gridArrangement:(id)arrangement itemAtIndex:(int64_t)index columns:(_NSRange *)columns rows:(_NSRange *)rows horizontalAlignment:(int64_t *)alignment verticalAlignment:(int64_t *)verticalAlignment
{
  itemsForIndex = [(TLKGridLayoutManager *)self itemsForIndex];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v16 = [itemsForIndex objectForKeyedSubscript:v15];

  columns->location = [v16 columnRange];
  columns->length = v17;
  rows->location = [v16 row];
  rows->length = 1;
  *alignment = 0;
  verticalRowAlignments = [(TLKGridLayoutManager *)self verticalRowAlignments];
  v19 = [verticalRowAlignments objectAtIndexedSubscript:{objc_msgSend(v16, "row")}];
  *verticalAlignment = [v19 unsignedIntegerValue];

  return v16;
}

- (int64_t)effectiveUserInterfaceLayoutDirection
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  return userInterfaceLayoutDirection;
}

- (int64_t)numberOfItemsInGridArrangement:(id)arrangement
{
  itemsForIndex = [(TLKGridLayoutManager *)self itemsForIndex];
  v4 = [itemsForIndex count];

  return v4;
}

- (CGSize)contentLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  height = size.height;
  width = size.width;
  subviewCopy = subview;
  v18 = *MEMORY[0x1E695F060];
  sizeCache = [subviewCopy sizeCache];
  v8 = [sizeCache getSize:&v18 forTargetSize:objc_msgSend(subviewCopy isSizeDependentOnPerpendicularAxis:{"isLayoutSizeDependentOnPerpendicularAxis"), width, height}];

  if (v8)
  {
    v9 = *(&v18 + 1);
    v10 = *&v18;
  }

  else
  {
    [subviewCopy sizeForTargetSize:{width, height}];
    v10 = v11;
    v9 = v12;
    +[TLKLabelItem minimumWidthForLabelItem];
    if (v10 < v13)
    {
      +[TLKLabelItem minimumWidthForLabelItem];
      v10 = v14;
    }

    sizeCache2 = [subviewCopy sizeCache];
    [sizeCache2 insertSize:v10 forTargetSize:{v9, width, height}];
  }

  v16 = v10;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (double)gridArrangement:(id)arrangement widthOfColumnAtIndex:(int64_t)index spacingAfter:(double *)after
{
  spacings = [(TLKGridLayoutManager *)self spacings];
  v9 = [spacings objectAtIndexedSubscript:index];
  [v9 floatValue];
  *after = v10;

  if ([(TLKGridLayoutManager *)self hasManyTrailingColumns]&& [(TLKGridLayoutManager *)self indexForFirstTrailingColumn]<= index)
  {

    +[TLKLabelItem minimumWidthForLabelItem];
  }

  else
  {
    if ([(TLKGridLayoutManager *)self totalEqualColumns]< 1)
    {
      return *MEMORY[0x1E698B6F8];
    }

    if ([(TLKGridLayoutManager *)self indexForFirstTrailingColumn]> index)
    {
      return *MEMORY[0x1E698B6F8];
    }

    indexForFirstTrailingColumn = [(TLKGridLayoutManager *)self indexForFirstTrailingColumn];
    if ([(TLKGridLayoutManager *)self totalEqualColumns]+ indexForFirstTrailingColumn <= index)
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

- (id)spacingsForAlignments:(id)alignments firstValidDataRow:(id)row
{
  alignmentsCopy = alignments;
  rowCopy = row;
  v7 = objc_opt_new();
  if ([alignmentsCopy count] != 1)
  {
    v8 = 0;
    v9 = 0x1E696A000uLL;
    v25 = alignmentsCopy;
    do
    {
      v10 = v8 + 1;
      if (v8 >= [(TLKGridLayoutManager *)self indexForFirstTrailingColumn])
      {
        -[TLKGridLayoutManager trailingSectionSpacingBasedOnTotalViewsInSection:](self, "trailingSectionSpacingBasedOnTotalViewsInSection:", [alignmentsCopy count] - -[TLKGridLayoutManager indexForFirstTrailingColumn](self, "indexForFirstTrailingColumn"));
        v21 = v22;
      }

      else
      {
        v11 = v7;
        v12 = v9;
        v13 = objc_opt_class();
        data = [rowCopy data];
        v15 = [data objectAtIndexedSubscript:v8];
        data2 = [rowCopy data];
        v17 = [data2 objectAtIndexedSubscript:v8 + 1];
        allEqualColumns = [(TLKGridLayoutManager *)self allEqualColumns];
        v19 = v13;
        v9 = v12;
        v7 = v11;
        alignmentsCopy = v25;
        [v19 leadingSectionSpacingForView:v15 view2:v17 index:v8 alignmentSchema:v25 allEqual:allEqualColumns];
        v21 = v20;
      }

      v23 = [*(v9 + 3480) numberWithInteger:v21];
      [v7 addObject:v23];

      ++v8;
    }

    while (v10 < [alignmentsCopy count] - 1);
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

  totalEqualColumns = [(TLKGridLayoutManager *)self totalEqualColumns];
  return totalEqualColumns == [(TLKGridLayoutManager *)self numberOfColumns];
}

- (int64_t)numberOfColumns
{
  itemsForRows = [(TLKGridLayoutManager *)self itemsForRows];
  firstObject = [itemsForRows firstObject];
  v4 = [firstObject count];

  return v4;
}

- (double)trailingSectionSpacingBasedOnTotalViewsInSection:(int64_t)section
{
  result = 1.0;
  v4 = 10.0;
  v5 = 17.0;
  if (section > 2)
  {
    v5 = 14.0;
  }

  if (section <= 5)
  {
    v4 = v5;
  }

  if (section <= 9)
  {
    return v4;
  }

  return result;
}

+ (double)leadingSectionSpacingForView:(id)view view2:(id)view2 index:(unint64_t)index alignmentSchema:(id)schema allEqual:(BOOL)equal
{
  schemaCopy = schema;
  view2Copy = view2;
  viewCopy = view;
  formattedTextItems = [viewCopy formattedTextItems];
  firstObject = [formattedTextItems firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  formattedTextItems2 = [view2Copy formattedTextItems];
  firstObject2 = [formattedTextItems2 firstObject];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  formattedTextItems3 = [viewCopy formattedTextItems];

  firstObject3 = [formattedTextItems3 firstObject];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  formattedTextItems4 = [view2Copy formattedTextItems];

  firstObject4 = [formattedTextItems4 firstObject];
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();

  if (v22)
  {
    v26 = [schemaCopy objectAtIndexedSubscript:index];
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
      v32 = [schemaCopy objectAtIndexedSubscript:index];
      v29 = [v32 textAlignment] != 0;

      if ((v25 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v33 = [schemaCopy objectAtIndexedSubscript:index + 1];
      v30 = [v33 textAlignment] != 0;

      goto LABEL_10;
    }
  }

  v31 = [schemaCopy objectAtIndexedSubscript:index + 1];
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
  if (!equal)
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

+ (id)computeTruncationForAlignments:(id)alignments indexForFirstTrailingColumn:(unint64_t)column totalEqualColumns:(unint64_t)columns
{
  v27[1] = *MEMORY[0x1E69E9840];
  alignmentsCopy = alignments;
  v8 = [alignmentsCopy count];
  v27[0] = v27;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  if (v9)
  {
    v12 = column - 1;
    v13 = (v27 - v10);
    v14 = v8;
    do
    {
      v15 = 0x406F400000000000;
      if (v12)
      {
        v15 = qword_1BBA67F10[[alignmentsCopy count] < 0xA];
      }

      *v13++ = v15;
      --v12;
      --v14;
    }

    while (v14);
  }

  if ([alignmentsCopy count] - 2 != column)
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

  v16 = [alignmentsCopy count] < 4;
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
    if (!column && v17 == 1)
    {
      *(v11 + 1) = 0x408F400000000000;
    }

    if (v16)
    {
      v20 = [alignmentsCopy count] - 2;
      v21 = 0x408F400000000000;
      if (v17 == v20 || (v22 = [alignmentsCopy count] - 1, v21 = 0x406F400000000000, v17 == v22))
      {
        *&v11[8 * v17] = v21;
      }
    }

    if (columns && v17 >= column && v17 - column < columns)
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
  itemsForRows = [(TLKGridLayoutManager *)self itemsForRows];
  firstObject = [itemsForRows firstObject];
  v5 = [firstObject count];
  v6 = v5 - [(TLKGridLayoutManager *)self indexForFirstTrailingColumn];

  return [(TLKGridLayoutManager *)self indexForFirstTrailingColumn]== 1 && v6 > 9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = TLKGridLayoutManager;
  v4 = [(TLKGridLayoutManager *)&v8 description];
  itemsForRows = [(TLKGridLayoutManager *)self itemsForRows];
  v6 = [v3 stringWithFormat:@"manager- %@, rows %@", v4, itemsForRows];

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