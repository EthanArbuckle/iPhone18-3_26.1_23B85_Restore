@interface TLKGridRowView
+ (void)updateLabel:(id)label withRichText:(id)text alignment:(int64_t)alignment;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (TLKGridRowView)init;
- (id)leadingTextView;
- (void)generateLabelsAndImagesIfNecessary;
- (void)layoutSubviews;
- (void)observedPropertiesChanged;
- (void)resetStateOfAllViews;
- (void)setManager:(id)manager;
- (void)setTableRow:(id)row;
@end

@implementation TLKGridRowView

- (TLKGridRowView)init
{
  v10.receiver = self;
  v10.super_class = TLKGridRowView;
  v2 = [(TLKView *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(TLKGridRowView *)v2 setLabels:v3];

    v4 = objc_opt_new();
    [(TLKGridRowView *)v2 setImageViews:v4];

    v5 = objc_opt_new();
    [(TLKGridRowView *)v2 setCurrentListOfViews:v5];

    +[TLKUtilities standardTableCellContentInset];
    v7 = v6;
    +[TLKUtilities standardTableCellContentInset];
    [(TLKGridRowView *)v2 setLayoutMargins:12.0, v7, 12.0, v8];
  }

  return v2;
}

- (id)leadingTextView
{
  currentListOfViews = [(TLKGridRowView *)self currentListOfViews];
  if ([currentListOfViews count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = [currentListOfViews objectAtIndexedSubscript:0];
    objc_opt_class();
    v4 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = [currentListOfViews objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [currentListOfViews objectAtIndexedSubscript:1];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)setManager:(id)manager
{
  managerCopy = manager;
  if (self->_manager != managerCopy)
  {
    objc_storeStrong(&self->_manager, manager);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setTableRow:(id)row
{
  rowCopy = row;
  if (self->_tableRow != rowCopy)
  {
    objc_storeStrong(&self->_tableRow, row);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(TLKGridRowView *)self sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(TLKGridRowView *)self layoutMargins];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = width;
  v24.size.height = height;
  v25 = CGRectInset(v24, v9, 0.0);
  v12 = v25.size.width;
  v13 = v25.size.height;
  v14 = *(MEMORY[0x1E695F060] + 8);
  v15 = [(TLKGridRowView *)self tableRow:v25.origin.x];
  if (v15)
  {
    v16 = v15;
    manager = [(TLKGridRowView *)self manager];

    if (manager)
    {
      manager2 = [(TLKGridRowView *)self manager];
      tableRow = [(TLKGridRowView *)self tableRow];
      [manager2 sizeForFittingSize:tableRow forRow:{v12, v13}];
      v14 = v20;
    }
  }

  [(TLKGridRowView *)self setNeedsSizingPass:0];
  v21 = v12;
  v22 = v11 + v7 + v14;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)layoutSubviews
{
  v73.receiver = self;
  v73.super_class = TLKGridRowView;
  [(TLKView *)&v73 layoutSubviews];
  [(TLKGridRowView *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TLKGridRowView *)self bounds];
  v12 = v11;
  [(TLKGridRowView *)self bounds];
  v74.origin.x = 0.0;
  v74.origin.y = 0.0;
  v74.size.width = v12;
  v75 = CGRectInset(v74, v6, 0.0);
  width = v75.size.width;
  height = v75.size.height;
  v15 = [(TLKGridRowView *)self tableRow:v75.origin.x];
  if (!v15)
  {
    goto LABEL_6;
  }

  manager2 = v15;
  manager = [(TLKGridRowView *)self manager];
  if (manager)
  {
    v18 = manager;
    needsSizingPass = [(TLKGridRowView *)self needsSizingPass];

    if (!needsSizingPass)
    {
      goto LABEL_6;
    }

    manager2 = [(TLKGridRowView *)self manager];
    tableRow = [(TLKGridRowView *)self tableRow];
    [manager2 sizeForFittingSize:tableRow forRow:{width, height}];
  }

LABEL_6:
  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    manager3 = [(TLKGridRowView *)self manager];
    tableRow2 = [(TLKGridRowView *)self tableRow];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __32__TLKGridRowView_layoutSubviews__block_invoke;
    v72[3] = &unk_1E7FD8C70;
    v72[5] = v4;
    *&v72[6] = v6;
    v72[7] = v8;
    v72[8] = v10;
    v72[4] = self;
    [manager3 placeViewsForSize:tableRow2 forRow:v72 completion:{width, height}];

    v24 = +[TLKLayoutUtilities isLTR];
    if ([(TLKGridRowView *)self indexOfFirstCenteredColumnForForcedCentering])
    {
      indexOfFirstCenteredColumnForForcedCentering = [(TLKGridRowView *)self indexOfFirstCenteredColumnForForcedCentering];
      currentListOfViews = [(TLKGridRowView *)self currentListOfViews];
      v27 = [currentListOfViews count];

      if (indexOfFirstCenteredColumnForForcedCentering < v27)
      {
        indexOfFirstCenteredColumnForForcedCentering2 = [(TLKGridRowView *)self indexOfFirstCenteredColumnForForcedCentering];
        [(TLKGridRowView *)self bounds];
        v30 = v29;
        v32 = v31;
        currentListOfViews2 = [(TLKGridRowView *)self currentListOfViews];
        v34 = [currentListOfViews2 objectAtIndexedSubscript:indexOfFirstCenteredColumnForForcedCentering2];
        [v34 frame];
        v36 = v35;
        v38 = v37;

        [TLKLayoutUtilities deviceScaledRoundedValue:self forView:(v30 - v36) * 0.5];
        v40 = v39;
        [TLKLayoutUtilities deviceScaledRoundedValue:self forView:(v32 - v38) * 0.5];
        v42 = v41;
        currentListOfViews3 = [(TLKGridRowView *)self currentListOfViews];
        v44 = [currentListOfViews3 objectAtIndexedSubscript:indexOfFirstCenteredColumnForForcedCentering2];
        [v44 setFrame:{v40, v42, v36, v38}];

        v45 = indexOfFirstCenteredColumnForForcedCentering2 + 1;
        if (v45 < [(TLKGridRowView *)self indexOfFirstTrailingColumn])
        {
          if (v24)
          {
            v76.origin.x = v40;
            v76.origin.y = v42;
            v76.size.width = v36;
            v76.size.height = v38;
            MaxX = CGRectGetMaxX(v76);
            currentListOfViews4 = [(TLKGridRowView *)self currentListOfViews];
            v48 = [currentListOfViews4 objectAtIndexedSubscript:{-[TLKGridRowView indexOfFirstTrailingColumn](self, "indexOfFirstTrailingColumn")}];
            [v48 frame];
            MinX = v49;
          }

          else
          {
            currentListOfViews5 = [(TLKGridRowView *)self currentListOfViews];
            v52 = [currentListOfViews5 objectAtIndexedSubscript:{-[TLKGridRowView indexOfFirstTrailingColumn](self, "indexOfFirstTrailingColumn")}];
            [v52 frame];
            MaxX = CGRectGetMaxX(v77);

            v78.origin.x = v40;
            v78.origin.y = v42;
            v78.size.width = v36;
            v78.size.height = v38;
            MinX = CGRectGetMinX(v78);
            currentListOfViews4 = [(TLKGridRowView *)self currentListOfViews];
            v48 = [currentListOfViews4 objectAtIndexedSubscript:{-[TLKGridRowView indexOfFirstTrailingColumn](self, "indexOfFirstTrailingColumn")}];
            [v48 frame];
            v40 = v53;
            v42 = v54;
            v36 = v55;
            v38 = v56;
          }

          v79.origin.x = v40;
          v79.origin.y = v42;
          v79.size.width = v36;
          v79.size.height = v38;
          v57 = MinX - CGRectGetMaxX(v79);

          currentListOfViews6 = [(TLKGridRowView *)self currentListOfViews];
          v59 = [currentListOfViews6 objectAtIndexedSubscript:v45];
          [v59 frame];
          v61 = v60;
          v63 = v62;

          currentListOfViews7 = [(TLKGridRowView *)self currentListOfViews];
          v65 = [currentListOfViews7 objectAtIndexedSubscript:v45];
          [v65 setFrame:{MaxX + 10.0, v61, v57 + -20.0, v63}];

          currentListOfViews8 = [(TLKGridRowView *)self currentListOfViews];
          v67 = [currentListOfViews8 objectAtIndexedSubscript:v45];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            currentListOfViews9 = [(TLKGridRowView *)self currentListOfViews];
            v70 = [currentListOfViews9 objectAtIndexedSubscript:v45];

            v71 = [TLKFontUtilities preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
            [v70 setFont:v71];

            [v70 setTextAlignment:4];
          }
        }
      }
    }
  }
}

void __32__TLKGridRowView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  if ([v19 count])
  {
    v3 = 0;
    do
    {
      v4 = [v19 objectAtIndexedSubscript:v3];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = v11;
      v14 = v9;

      v15 = v6 + *(a1 + 48);
      v16 = v8 + *(a1 + 40);
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v17 = [*(a1 + 32) currentListOfViews];
        v18 = [v17 objectAtIndexedSubscript:v3];
        [v18 setFrame:{v15, v16, v10, v12}];
      }

      ++v3;
    }

    while (v3 < [v19 count]);
  }
}

- (void)observedPropertiesChanged
{
  v64 = *MEMORY[0x1E69E9840];
  manager = [(TLKGridRowView *)self manager];
  if (!manager)
  {
    return;
  }

  v5 = manager;
  tableRow = [(TLKGridRowView *)self tableRow];

  if (!tableRow)
  {
    return;
  }

  [(TLKGridRowView *)self resetStateOfAllViews];
  [(TLKGridRowView *)self generateLabelsAndImagesIfNecessary];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [(TLKGridRowView *)self labels];
  v7 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v59;
  do
  {
    v10 = 0;
    do
    {
      if (*v59 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v58 + 1) + 8 * v10);
      tableRow2 = [(TLKGridRowView *)self tableRow];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        manager2 = [(TLKGridRowView *)self manager];
        if (([manager2 tableContainsRowHeaders] & 1) == 0)
        {
          [v11 setProminence:1];
LABEL_13:

          goto LABEL_14;
        }
      }

      tableRow3 = [(TLKGridRowView *)self tableRow];
      [v11 setProminence:{objc_msgSend(tableRow3, "isSubHeader")}];

      if (isKindOfClass)
      {
        goto LABEL_13;
      }

LABEL_14:

      ++v10;
    }

    while (v8 != v10);
    v8 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  }

  while (v8);
LABEL_16:

  tableRow4 = [(TLKGridRowView *)self tableRow];
  data = [tableRow4 data];

  if ([data count])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v51 = data;
    do
    {
      v20 = [data objectAtIndexedSubscript:{v17, v51}];
      if ([v20 hasOnlyImage])
      {
        formattedTextItems = [v20 formattedTextItems];
        firstObject = [formattedTextItems firstObject];

        tlkImage = [firstObject tlkImage];
        imageViews = [(TLKGridRowView *)self imageViews];
        v25 = [imageViews objectAtIndexedSubscript:v18];
        [v25 setTlkImage:tlkImage];

        currentListOfViews = [(TLKGridRowView *)self currentListOfViews];
        imageViews2 = [(TLKGridRowView *)self imageViews];
        v28 = [imageViews2 objectAtIndexedSubscript:v18];
        [currentListOfViews addObject:v28];

        ++v18;
      }

      else if (([v20 hasContent] & 1) != 0 || !v17)
      {
        v29 = objc_opt_class();
        labels = [(TLKGridRowView *)self labels];
        v31 = [labels objectAtIndexedSubscript:v19];
        [(TLKGridRowView *)self manager];
        obja = v18;
        v33 = v32 = v19;
        alignments = [v33 alignments];
        v35 = [alignments objectAtIndexedSubscript:v17];
        [v29 updateLabel:v31 withRichText:v20 alignment:{objc_msgSend(v35, "dataAlignment")}];

        v36 = v32;
        v18 = obja;

        data = v51;
        currentListOfViews2 = [(TLKGridRowView *)self currentListOfViews];
        labels2 = [(TLKGridRowView *)self labels];
        v39 = [labels2 objectAtIndexedSubscript:v36];
        [currentListOfViews2 addObject:v39];

        v19 = v36 + 1;
      }

      ++v17;
    }

    while (v17 < [data count]);
  }

  manager3 = [(TLKGridRowView *)self manager];
  alignments2 = [manager3 alignments];
  v42 = [alignments2 indexOfObjectPassingTest:&__block_literal_global_0];

  manager4 = [(TLKGridRowView *)self manager];
  alignments3 = [manager4 alignments];
  v45 = [alignments3 indexOfObjectPassingTest:&__block_literal_global_11];

  if (v45 < v42 && v45)
  {
    [(TLKGridRowView *)self setIndexOfFirstCenteredColumnForForcedCentering:v45];
    [(TLKGridRowView *)self setIndexOfFirstTrailingColumn:v42];
  }

  else
  {
    [(TLKGridRowView *)self setIndexOfFirstCenteredColumnForForcedCentering:0x7FFFFFFFFFFFFFFFLL];
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  currentListOfViews3 = [(TLKGridRowView *)self currentListOfViews];
  v47 = [currentListOfViews3 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v55;
    do
    {
      v50 = 0;
      do
      {
        if (*v55 != v49)
        {
          objc_enumerationMutation(currentListOfViews3);
        }

        [*(*(&v54 + 1) + 8 * v50++) setHidden:0];
      }

      while (v48 != v50);
      v48 = [currentListOfViews3 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v48);
  }

  [(TLKGridRowView *)self invalidateIntrinsicContentSize];
  [(TLKGridRowView *)self setNeedsSizingPass:1];
}

- (void)resetStateOfAllViews
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  currentListOfViews = [(TLKGridRowView *)self currentListOfViews];
  v4 = [currentListOfViews countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(currentListOfViews);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setHidden:1];
        [v12 setFrame:{v7, v8, v9, v10}];
      }

      v5 = [currentListOfViews countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  currentListOfViews2 = [(TLKGridRowView *)self currentListOfViews];
  [currentListOfViews2 removeAllObjects];
}

- (void)generateLabelsAndImagesIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  tableRow = [(TLKGridRowView *)self tableRow];
  data = [tableRow data];

  v5 = [data countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(data);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if ([v11 hasOnlyImage])
        {
          ++v7;
        }

        else
        {
          hasContent = [v11 hasContent];
          if (v8)
          {
            v13 = hasContent;
          }

          else
          {
            v13 = 1;
          }

          v8 += v13;
        }
      }

      v6 = [data countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  labels = [(TLKGridRowView *)self labels];
  v15 = [labels count];

  if (v15 < v8)
  {
    do
    {
      v16 = objc_opt_new();
      labels2 = [(TLKGridRowView *)self labels];
      [labels2 addObject:v16];

      [(TLKGridRowView *)self addSubview:v16];
      labels3 = [(TLKGridRowView *)self labels];
      v19 = [labels3 count];
    }

    while (v19 < v8);
  }

  imageViews = [(TLKGridRowView *)self imageViews];
  v21 = [imageViews count];

  if (v21 < v7)
  {
    do
    {
      v22 = objc_opt_new();
      v23 = +[TLKGridLayoutManager font];
      [v22 setSymbolFont:v23];

      imageViews2 = [(TLKGridRowView *)self imageViews];
      [imageViews2 addObject:v22];

      [(TLKGridRowView *)self addSubview:v22];
      imageViews3 = [(TLKGridRowView *)self imageViews];
      v26 = [imageViews3 count];
    }

    while (v26 < v7);
  }
}

+ (void)updateLabel:(id)label withRichText:(id)text alignment:(int64_t)alignment
{
  labelCopy = label;
  textCopy = text;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__TLKGridRowView_updateLabel_withRichText_alignment___block_invoke;
  v11[3] = &unk_1E7FD8C98;
  v13 = textCopy;
  alignmentCopy = alignment;
  v12 = labelCopy;
  v9 = textCopy;
  v10 = labelCopy;
  [v10 performBatchUpdates:v11];
}

uint64_t __53__TLKGridRowView_updateLabel_withRichText_alignment___block_invoke(uint64_t a1)
{
  v2 = +[TLKGridLayoutManager font];
  [*(a1 + 32) setFont:v2];

  [*(a1 + 32) setTextAlignment:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 setRichText:v4];
}

@end