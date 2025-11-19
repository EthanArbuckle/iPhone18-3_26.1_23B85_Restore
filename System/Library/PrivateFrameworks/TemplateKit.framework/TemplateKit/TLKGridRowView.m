@interface TLKGridRowView
+ (void)updateLabel:(id)a3 withRichText:(id)a4 alignment:(int64_t)a5;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (TLKGridRowView)init;
- (id)leadingTextView;
- (void)generateLabelsAndImagesIfNecessary;
- (void)layoutSubviews;
- (void)observedPropertiesChanged;
- (void)resetStateOfAllViews;
- (void)setManager:(id)a3;
- (void)setTableRow:(id)a3;
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
  v2 = [(TLKGridRowView *)self currentListOfViews];
  if ([v2 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    objc_opt_class();
    v4 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = [v2 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v2 objectAtIndexedSubscript:1];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (void)setManager:(id)a3
{
  v10 = a3;
  if (self->_manager != v10)
  {
    objc_storeStrong(&self->_manager, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setTableRow:(id)a3
{
  v10 = a3;
  if (self->_tableRow != v10)
  {
    objc_storeStrong(&self->_tableRow, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
    v17 = [(TLKGridRowView *)self manager];

    if (v17)
    {
      v18 = [(TLKGridRowView *)self manager];
      v19 = [(TLKGridRowView *)self tableRow];
      [v18 sizeForFittingSize:v19 forRow:{v12, v13}];
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

  v16 = v15;
  v17 = [(TLKGridRowView *)self manager];
  if (v17)
  {
    v18 = v17;
    v19 = [(TLKGridRowView *)self needsSizingPass];

    if (!v19)
    {
      goto LABEL_6;
    }

    v16 = [(TLKGridRowView *)self manager];
    v20 = [(TLKGridRowView *)self tableRow];
    [v16 sizeForFittingSize:v20 forRow:{width, height}];
  }

LABEL_6:
  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    v22 = [(TLKGridRowView *)self manager];
    v23 = [(TLKGridRowView *)self tableRow];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __32__TLKGridRowView_layoutSubviews__block_invoke;
    v72[3] = &unk_1E7FD8C70;
    v72[5] = v4;
    *&v72[6] = v6;
    v72[7] = v8;
    v72[8] = v10;
    v72[4] = self;
    [v22 placeViewsForSize:v23 forRow:v72 completion:{width, height}];

    v24 = +[TLKLayoutUtilities isLTR];
    if ([(TLKGridRowView *)self indexOfFirstCenteredColumnForForcedCentering])
    {
      v25 = [(TLKGridRowView *)self indexOfFirstCenteredColumnForForcedCentering];
      v26 = [(TLKGridRowView *)self currentListOfViews];
      v27 = [v26 count];

      if (v25 < v27)
      {
        v28 = [(TLKGridRowView *)self indexOfFirstCenteredColumnForForcedCentering];
        [(TLKGridRowView *)self bounds];
        v30 = v29;
        v32 = v31;
        v33 = [(TLKGridRowView *)self currentListOfViews];
        v34 = [v33 objectAtIndexedSubscript:v28];
        [v34 frame];
        v36 = v35;
        v38 = v37;

        [TLKLayoutUtilities deviceScaledRoundedValue:self forView:(v30 - v36) * 0.5];
        v40 = v39;
        [TLKLayoutUtilities deviceScaledRoundedValue:self forView:(v32 - v38) * 0.5];
        v42 = v41;
        v43 = [(TLKGridRowView *)self currentListOfViews];
        v44 = [v43 objectAtIndexedSubscript:v28];
        [v44 setFrame:{v40, v42, v36, v38}];

        v45 = v28 + 1;
        if (v45 < [(TLKGridRowView *)self indexOfFirstTrailingColumn])
        {
          if (v24)
          {
            v76.origin.x = v40;
            v76.origin.y = v42;
            v76.size.width = v36;
            v76.size.height = v38;
            MaxX = CGRectGetMaxX(v76);
            v47 = [(TLKGridRowView *)self currentListOfViews];
            v48 = [v47 objectAtIndexedSubscript:{-[TLKGridRowView indexOfFirstTrailingColumn](self, "indexOfFirstTrailingColumn")}];
            [v48 frame];
            MinX = v49;
          }

          else
          {
            v51 = [(TLKGridRowView *)self currentListOfViews];
            v52 = [v51 objectAtIndexedSubscript:{-[TLKGridRowView indexOfFirstTrailingColumn](self, "indexOfFirstTrailingColumn")}];
            [v52 frame];
            MaxX = CGRectGetMaxX(v77);

            v78.origin.x = v40;
            v78.origin.y = v42;
            v78.size.width = v36;
            v78.size.height = v38;
            MinX = CGRectGetMinX(v78);
            v47 = [(TLKGridRowView *)self currentListOfViews];
            v48 = [v47 objectAtIndexedSubscript:{-[TLKGridRowView indexOfFirstTrailingColumn](self, "indexOfFirstTrailingColumn")}];
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

          v58 = [(TLKGridRowView *)self currentListOfViews];
          v59 = [v58 objectAtIndexedSubscript:v45];
          [v59 frame];
          v61 = v60;
          v63 = v62;

          v64 = [(TLKGridRowView *)self currentListOfViews];
          v65 = [v64 objectAtIndexedSubscript:v45];
          [v65 setFrame:{MaxX + 10.0, v61, v57 + -20.0, v63}];

          v66 = [(TLKGridRowView *)self currentListOfViews];
          v67 = [v66 objectAtIndexedSubscript:v45];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v69 = [(TLKGridRowView *)self currentListOfViews];
            v70 = [v69 objectAtIndexedSubscript:v45];

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
  v4 = [(TLKGridRowView *)self manager];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [(TLKGridRowView *)self tableRow];

  if (!v6)
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
      v12 = [(TLKGridRowView *)self tableRow];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v2 = [(TLKGridRowView *)self manager];
        if (([v2 tableContainsRowHeaders] & 1) == 0)
        {
          [v11 setProminence:1];
LABEL_13:

          goto LABEL_14;
        }
      }

      v14 = [(TLKGridRowView *)self tableRow];
      [v11 setProminence:{objc_msgSend(v14, "isSubHeader")}];

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

  v15 = [(TLKGridRowView *)self tableRow];
  v16 = [v15 data];

  if ([v16 count])
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v51 = v16;
    do
    {
      v20 = [v16 objectAtIndexedSubscript:{v17, v51}];
      if ([v20 hasOnlyImage])
      {
        v21 = [v20 formattedTextItems];
        v22 = [v21 firstObject];

        v23 = [v22 tlkImage];
        v24 = [(TLKGridRowView *)self imageViews];
        v25 = [v24 objectAtIndexedSubscript:v18];
        [v25 setTlkImage:v23];

        v26 = [(TLKGridRowView *)self currentListOfViews];
        v27 = [(TLKGridRowView *)self imageViews];
        v28 = [v27 objectAtIndexedSubscript:v18];
        [v26 addObject:v28];

        ++v18;
      }

      else if (([v20 hasContent] & 1) != 0 || !v17)
      {
        v29 = objc_opt_class();
        v30 = [(TLKGridRowView *)self labels];
        v31 = [v30 objectAtIndexedSubscript:v19];
        [(TLKGridRowView *)self manager];
        obja = v18;
        v33 = v32 = v19;
        v34 = [v33 alignments];
        v35 = [v34 objectAtIndexedSubscript:v17];
        [v29 updateLabel:v31 withRichText:v20 alignment:{objc_msgSend(v35, "dataAlignment")}];

        v36 = v32;
        v18 = obja;

        v16 = v51;
        v37 = [(TLKGridRowView *)self currentListOfViews];
        v38 = [(TLKGridRowView *)self labels];
        v39 = [v38 objectAtIndexedSubscript:v36];
        [v37 addObject:v39];

        v19 = v36 + 1;
      }

      ++v17;
    }

    while (v17 < [v16 count]);
  }

  v40 = [(TLKGridRowView *)self manager];
  v41 = [v40 alignments];
  v42 = [v41 indexOfObjectPassingTest:&__block_literal_global_0];

  v43 = [(TLKGridRowView *)self manager];
  v44 = [v43 alignments];
  v45 = [v44 indexOfObjectPassingTest:&__block_literal_global_11];

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
  v46 = [(TLKGridRowView *)self currentListOfViews];
  v47 = [v46 countByEnumeratingWithState:&v54 objects:v62 count:16];
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
          objc_enumerationMutation(v46);
        }

        [*(*(&v54 + 1) + 8 * v50++) setHidden:0];
      }

      while (v48 != v50);
      v48 = [v46 countByEnumeratingWithState:&v54 objects:v62 count:16];
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
  v3 = [(TLKGridRowView *)self currentListOfViews];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v3);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setHidden:1];
        [v12 setFrame:{v7, v8, v9, v10}];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = [(TLKGridRowView *)self currentListOfViews];
  [v13 removeAllObjects];
}

- (void)generateLabelsAndImagesIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(TLKGridRowView *)self tableRow];
  v4 = [v3 data];

  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if ([v11 hasOnlyImage])
        {
          ++v7;
        }

        else
        {
          v12 = [v11 hasContent];
          if (v8)
          {
            v13 = v12;
          }

          else
          {
            v13 = 1;
          }

          v8 += v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v14 = [(TLKGridRowView *)self labels];
  v15 = [v14 count];

  if (v15 < v8)
  {
    do
    {
      v16 = objc_opt_new();
      v17 = [(TLKGridRowView *)self labels];
      [v17 addObject:v16];

      [(TLKGridRowView *)self addSubview:v16];
      v18 = [(TLKGridRowView *)self labels];
      v19 = [v18 count];
    }

    while (v19 < v8);
  }

  v20 = [(TLKGridRowView *)self imageViews];
  v21 = [v20 count];

  if (v21 < v7)
  {
    do
    {
      v22 = objc_opt_new();
      v23 = +[TLKGridLayoutManager font];
      [v22 setSymbolFont:v23];

      v24 = [(TLKGridRowView *)self imageViews];
      [v24 addObject:v22];

      [(TLKGridRowView *)self addSubview:v22];
      v25 = [(TLKGridRowView *)self imageViews];
      v26 = [v25 count];
    }

    while (v26 < v7);
  }
}

+ (void)updateLabel:(id)a3 withRichText:(id)a4 alignment:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__TLKGridRowView_updateLabel_withRichText_alignment___block_invoke;
  v11[3] = &unk_1E7FD8C98;
  v13 = v8;
  v14 = a5;
  v12 = v7;
  v9 = v8;
  v10 = v7;
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