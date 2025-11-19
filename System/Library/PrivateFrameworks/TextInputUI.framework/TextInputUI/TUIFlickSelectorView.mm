@interface TUIFlickSelectorView
- (TUIFlickSelectorView)initWithKey:(id)a3 renderTraits:(id)a4;
- (UIEdgeInsets)stackLayoutMargins;
- (double)flickPopupOffset;
- (id)alignmentConstraintsForKey:(id)a3;
- (id)backgroundBezierPath;
- (id)backgroundPathForFlick;
- (id)backgroundPathForLongPress;
- (id)cellViewsInSubtreeOrder;
- (id)variantCellWithString:(id)a3 annotation:(id)a4;
- (int64_t)variantViewAlignment;
- (unint64_t)countNonNullVariantEntriesForKey:(id)a3;
- (unint64_t)maxVariantsPerRowForKey:(id)a3;
- (unint64_t)variantRowLimitForLayout;
- (void)addVariantsForKey:(id)a3 toView:(id)a4;
- (void)updateVariantViewPropertiesForKey:(id)a3;
- (void)updateVariantsIfNeededForKey:(id)a3;
@end

@implementation TUIFlickSelectorView

- (id)backgroundPathForFlick
{
  v3 = [MEMORY[0x1E69DC728] bezierPath];
  v4 = [(TUIKeyPopupView *)self variantView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(TUIFlickSelectorView *)self flickDirection];
  v14 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v14 layoutFrame];
  MidX = CGRectGetMidX(v60);
  v16 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v16 layoutFrame];
  MidY = CGRectGetMidY(v61);

  v62.origin.x = v6;
  v62.origin.y = v8;
  v62.size.width = v10;
  v62.size.height = v12;
  MinX = CGRectGetMinX(v62);
  v63.origin.x = v6;
  v63.origin.y = v8;
  v63.size.width = v10;
  v63.size.height = v12;
  MaxY = CGRectGetMaxY(v63);
  v64.origin.x = v6;
  v64.origin.y = v8;
  v64.size.width = v10;
  v64.size.height = v12;
  v17 = CGRectGetMinX(v64);
  v65.origin.x = v6;
  v65.origin.y = v8;
  v65.size.width = v10;
  v65.size.height = v12;
  MinY = CGRectGetMinY(v65);
  v66.origin.x = v6;
  v66.origin.y = v8;
  v66.size.width = v10;
  v66.size.height = v12;
  MaxX = CGRectGetMaxX(v66);
  v67.origin.x = v6;
  v67.origin.y = v8;
  v67.size.width = v10;
  v67.size.height = v12;
  v52 = CGRectGetMinY(v67);
  v68.origin.x = v6;
  v68.origin.y = v8;
  v68.size.width = v10;
  v68.size.height = v12;
  v51 = CGRectGetMaxX(v68);
  v69.origin.x = v6;
  v69.origin.y = v8;
  v69.size.width = v10;
  v69.size.height = v12;
  v20 = CGRectGetMaxY(v69);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v37 = MidX + 3.0;
      v40 = MinX;
      MidY = MidY + 16.0;
      v36 = -6.0;
      v45 = MinY;
      v47 = v17;
      v42 = v52;
      v39 = MaxY;
      v38 = -8.0;
      v49 = v51;
      v50 = v20;
      v41 = MaxX;
      v53 = MidX;
      goto LABEL_13;
    }

    v50 = MinY;
    if (v13 == 3)
    {
      v21 = MidX;
      v22 = -6.0;
      v23 = -8.0;
      v24 = 3.0;
      v28 = MaxY;
      v46 = MaxX;
      v48 = v52;
      v44 = v50;
      v26 = v17;
      v25 = -24.0;
      MaxX = MinX;
      v27 = v20;
      v17 = v51;
      goto LABEL_8;
    }
  }

  else
  {
    v50 = MinY;
    if (!v13)
    {
      v49 = v17;
      v37 = MidX + -3.0;
      MidY = MidY + -16.0;
      v36 = 6.0;
      v38 = 8.0;
      v39 = v52;
      v45 = v20;
      v47 = v51;
      v40 = MaxX;
      goto LABEL_11;
    }

    if (v13 == 1)
    {
      v21 = MidX;
      v22 = 6.0;
      v23 = 8.0;
      v24 = -3.0;
      v46 = MinX;
      v48 = MaxY;
      v44 = v20;
      v25 = 24.0;
      v27 = v50;
      v26 = v51;
      v28 = v52;
LABEL_8:
      v29 = v21 + v25;
      v56 = MidY + v24;
      [v3 moveToPoint:v21 + v25];
      [v3 addLineToPoint:{v17 - v22, v22 + v27}];
      [v3 addQuadCurveToPoint:v22 * 0.5 + v17 controlPoint:{v27, v17 - v22 * 0.5, v27}];
      [v3 addLineToPoint:{MaxX - v23, v28}];
      [v3 addQuadCurveToPoint:MaxX controlPoint:{v23 + v28, MaxX, v28}];
      [v3 addLineToPoint:{v26, v44 - v23}];
      [v3 addQuadCurveToPoint:v26 - v23 controlPoint:{v44, v26, v44}];
      [v3 addLineToPoint:{v22 * 0.5 + v46, v48}];
      [v3 addQuadCurveToPoint:v46 - v22 controlPoint:{v48 - v22, v46 - v22 * 0.5, v48}];
      [v3 addLineToPoint:{v29, MidY + v22 * 0.5}];
      [v3 addQuadCurveToPoint:v29 controlPoint:{v56, v29 + v22 / -3.0, MidY}];
      v30 = v3;
      v31 = v29;
      v32 = v56;
      goto LABEL_14;
    }
  }

  v49 = v17;
  v33 = v6;
  v34 = v20;
  v35 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v33 cornerRadius:{v8, v10, v12, 5.0}];

  v36 = 6.0;
  v37 = MidX;
  v38 = 8.0;
  v39 = v52;
  v45 = v34;
  v47 = v51;
  v40 = MaxX;
  v3 = v35;
LABEL_11:
  v53 = MidX;
  v42 = MaxY;
  v41 = MinX;
LABEL_13:
  v57 = v37;
  [v3 moveToPoint:?];
  [v3 addLineToPoint:{v36 + v41, v36 + v42}];
  [v3 addQuadCurveToPoint:v41 controlPoint:{v42 - v36 * 0.5, v41, v36 * 0.5 + v42}];
  [v3 addLineToPoint:{v49, v38 + v50}];
  [v3 addQuadCurveToPoint:v38 + v49 controlPoint:{v50, v49, v50}];
  [v3 addLineToPoint:{v40 - v38, v39}];
  [v3 addQuadCurveToPoint:v40 controlPoint:{v38 + v39, v40, v39}];
  [v3 addLineToPoint:{v47, v45 - v36 * 0.5}];
  [v3 addQuadCurveToPoint:v47 - v36 controlPoint:{v36 + v45, v47, v36 * 0.5 + v45}];
  [v3 addLineToPoint:{v53 + v36 * 0.5, MidY}];
  [v3 addQuadCurveToPoint:v57 controlPoint:{MidY, v53, MidY + v36 / 3.0}];
  v30 = v3;
  v31 = v57;
  v32 = MidY;
LABEL_14:
  [v30 moveToPoint:{v31, v32}];
  [v3 closePath];

  return v3;
}

- (id)backgroundPathForLongPress
{
  v3 = [(TUIKeyPopupView *)self renderTraits];
  v4 = [v3 variantGeometries];
  v5 = [v4 lastObject];

  [v5 roundRectRadius];
  v7 = v6;
  v8 = [(TUIFlickSelectorView *)self cellViewsInTopDownLTROrder];
  v9 = [v8 count];
  v10 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [v10 layoutFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [MEMORY[0x1E69DC728] bezierPath];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__TUIFlickSelectorView_backgroundPathForLongPress__block_invoke;
  aBlock[3] = &unk_1E72D7F88;
  v20 = v19;
  v48 = v20;
  v21 = _Block_copy(aBlock);
  v22 = v14 - v18;
  v49.origin.x = v12;
  v49.origin.y = v14 - v18;
  v49.size.width = v16;
  v49.size.height = v18;
  MinX = CGRectGetMinX(v49);
  v50.origin.x = v12;
  v50.origin.y = v14 - v18;
  v50.size.width = v16;
  v50.size.height = v18;
  MinY = CGRectGetMinY(v50);
  v21[2](v21, 1, 1, MinX, MinY, 0.0, 0.0, v7, v7);
  v51.origin.x = v12;
  v51.origin.y = v14 - v18;
  v51.size.width = v16;
  v51.size.height = v18;
  v25 = CGRectGetMinX(v51);
  v52.origin.x = v12;
  v52.origin.y = v14 - v18;
  v52.size.width = v16;
  v52.size.height = v18;
  [v20 addLineToPoint:{v25, CGRectGetMaxY(v52)}];
  v53.origin.x = v12 - v16;
  v53.origin.y = v14;
  v53.size.width = v16;
  v53.size.height = v18;
  v26 = CGRectGetMinX(v53);
  v54.origin.x = v12 - v16;
  v54.origin.y = v14;
  v54.size.width = v16;
  v54.size.height = v18;
  v27 = CGRectGetMinY(v54);
  v21[2](v21, 1, 1, v26, v27, 0.0, 0.0, v7, v7);
  v55.origin.x = v12 - v16;
  v55.origin.y = v14;
  v55.size.width = v16;
  v55.size.height = v18;
  v28 = CGRectGetMinX(v55);
  v56.origin.x = v12 - v16;
  v56.origin.y = v14;
  v56.size.width = v16;
  v56.size.height = v18;
  MaxY = CGRectGetMaxY(v56);
  v21[2](v21, 4, 1, v28, MaxY, 0.0, 0.0, v7, v7);
  if (v9 == 5)
  {
    v59.origin.x = v12;
    v59.origin.y = v14 + v18;
    v59.size.width = v16;
    v59.size.height = v18;
    v32 = CGRectGetMinX(v59);
    v60.origin.x = v12;
    v60.origin.y = v14 + v18;
    v60.size.width = v16;
    v60.size.height = v18;
    [v20 addLineToPoint:{v32, CGRectGetMinY(v60)}];
    v61.origin.x = v12;
    v61.origin.y = v14 + v18;
    v61.size.width = v16;
    v61.size.height = v18;
    v33 = CGRectGetMinX(v61);
    v62.origin.x = v12;
    v62.origin.y = v14 + v18;
    v62.size.width = v16;
    v62.size.height = v18;
    v34 = CGRectGetMaxY(v62);
    v21[2](v21, 4, 1, v33, v34, 0.0, 0.0, v7, v7);
    v63.origin.x = v12;
    v63.origin.y = v14 + v18;
    v63.size.width = v16;
    v63.size.height = v18;
    MaxX = CGRectGetMaxX(v63);
    v64.origin.x = v12;
    v64.origin.y = v14 + v18;
    v64.size.width = v16;
    v64.size.height = v18;
    v36 = CGRectGetMaxY(v64);
    v21[2](v21, 8, 1, MaxX, v36, 0.0, 0.0, v7, v7);
    v65.origin.x = v12;
    v65.origin.y = v14 + v18;
    v65.size.width = v16;
    v65.size.height = v18;
    v37 = CGRectGetMaxX(v65);
    v66.origin.x = v12;
    v66.origin.y = v14 + v18;
    v66.size.width = v16;
    v66.size.height = v18;
    [v20 addLineToPoint:{v37, CGRectGetMinY(v66)}];
    goto LABEL_6;
  }

  if (v9 != 3)
  {
    if ((v9 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_7;
    }

LABEL_6:
    v67.origin.x = v12 + v16;
    v67.origin.y = v14;
    v67.size.width = v16;
    v67.size.height = v18;
    v38 = CGRectGetMaxX(v67);
    v68.origin.x = v12 + v16;
    v68.origin.y = v14;
    v68.size.width = v16;
    v68.size.height = v18;
    v39 = CGRectGetMaxY(v68);
    v21[2](v21, 8, 1, v38, v39, 0.0, 0.0, v7, v7);
    v69.origin.x = v12 + v16;
    v69.origin.y = v14;
    v69.size.width = v16;
    v69.size.height = v18;
    v40 = CGRectGetMaxX(v69);
    v70.origin.x = v12 + v16;
    v70.origin.y = v14;
    v70.size.width = v16;
    v70.size.height = v18;
    v41 = CGRectGetMinY(v70);
    v21[2](v21, 2, 1, v40, v41, 0.0, 0.0, v7, v7);
    v71.origin.x = v12 + v16;
    v71.origin.y = v14;
    v71.size.width = v16;
    v71.size.height = v18;
    v42 = CGRectGetMinX(v71);
    v72.origin.x = v12 + v16;
    v72.origin.y = v14;
    v72.size.width = v16;
    v72.size.height = v18;
    [v20 addLineToPoint:{v42, CGRectGetMinY(v72)}];
    goto LABEL_7;
  }

  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  v30 = CGRectGetMaxX(v57);
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v18;
  v31 = CGRectGetMaxY(v58);
  v21[2](v21, 8, 1, v30, v31, 0.0, 0.0, v7, v7);
LABEL_7:
  v73.origin.x = v12;
  v73.origin.y = v14 - v18;
  v73.size.width = v16;
  v73.size.height = v18;
  v43 = CGRectGetMaxX(v73);
  v74.origin.x = v12;
  v74.origin.y = v22;
  v74.size.width = v16;
  v74.size.height = v18;
  v44 = CGRectGetMinY(v74);
  v21[2](v21, 2, 1, v43, v44, 0.0, 0.0, v7, v7);
  [v20 closePath];
  v45 = v20;

  return v20;
}

uint64_t __50__TUIFlickSelectorView_backgroundPathForLongPress__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  [*(a1 + 32) addLineToPoint:{a4 + a6, a5 + a7}];
  v16 = *(a1 + 32);

  return [v16 _addRoundedCornerWithTrueCorner:a2 radius:a3 corner:a4 clockwise:{a5, a8, a9}];
}

- (id)backgroundBezierPath
{
  if ([(TUIFlickSelectorView *)self flickDirection]== -1)
  {
    [(TUIFlickSelectorView *)self backgroundPathForLongPress];
  }

  else
  {
    [(TUIFlickSelectorView *)self backgroundPathForFlick];
  }
  v3 = ;

  return v3;
}

- (id)cellViewsInSubtreeOrder
{
  v3 = [(TUIFlickSelectorView *)self cellViewsInTopDownLTROrder];
  v4 = [(TUIKeyPopupView *)self associatedTree];
  v5 = [v4 subtrees];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([&unk_1F03D8EB8 count])
  {
    v7 = 0;
    do
    {
      v8 = [&unk_1F03D8EB8 objectAtIndex:v7];
      v9 = [v8 intValue];

      if ([v3 count] > v9)
      {
        v10 = [v3 objectAtIndex:v9];
        [v6 addObject:v10];
      }

      ++v7;
    }

    while (v7 < [&unk_1F03D8EB8 count]);
  }

  return v6;
}

- (unint64_t)maxVariantsPerRowForKey:(id)a3
{
  v4 = a3;
  if ([v4 flickDirection] == -1)
  {
    v5 = [(TUIFlickSelectorView *)self variantRowLimitForLayout];
    if (v4)
    {
      v6 = [v4 subtrees];
      if ([v6 count] > v5)
      {
        v7 = [(TUIKeyPopupView *)self layoutStyle];

        if (v7 != 1)
        {
          goto LABEL_8;
        }

        v6 = [v4 subtrees];
        v5 = vcvtpd_u64_f64(vcvtd_n_f64_u64([v6 count], 1uLL));
      }
    }
  }

  else
  {
    v5 = 1;
  }

LABEL_8:

  return v5;
}

- (unint64_t)variantRowLimitForLayout
{
  if ([(TUIKeyPopupView *)self layoutStyle]== 1)
  {
    return 3;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)updateVariantViewPropertiesForKey:(id)a3
{
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    goto LABEL_2;
  }

  v5 = [(TUIFlickSelectorView *)self totalVariants];
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      goto LABEL_10;
    }

    if (v5 == 5)
    {
      v4 = 3;
      goto LABEL_12;
    }
  }

  else
  {
    if (v5 == 2)
    {
LABEL_2:
      v4 = 1;
      goto LABEL_12;
    }

    if (v5 == 3)
    {
      self->_topRowHasTrailingAlignment = 1;
LABEL_10:
      v4 = 2;
      goto LABEL_12;
    }
  }

  v4 = 0;
LABEL_12:

  [(TUIKeyPopupView *)self setVariantViewRows:v4];
}

- (unint64_t)countNonNullVariantEntriesForKey:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 subtrees];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFB0] null];
        LODWORD(v9) = [v9 isEqual:v10];

        v6 += v9 ^ 1;
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)variantViewAlignment
{
  if (self->_topRowHasTrailingAlignment)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (double)flickPopupOffset
{
  v2 = [(TUIFlickSelectorView *)self flickDirection];
  result = 0.0;
  if ((v2 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    return 10.0;
  }

  return result;
}

- (UIEdgeInsets)stackLayoutMargins
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)variantCellWithString:(id)a3 annotation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [TUIFlickVariantCell alloc];
  v9 = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUIVariantCell *)v8 initWithFrame:v7 string:v6 annotation:v9 traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v10;
}

- (void)addVariantsForKey:(id)a3 toView:(id)a4
{
  v63[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 && [(TUIKeyPopupView *)self needsPopup])
  {
    v8 = [v6 subtrees];
    v9 = [v8 count];
    v10 = [(TUIKeyPopupView *)self arrangedVariantCells];
    if (v9 == [v10 count])
    {
      v11 = [(TUIKeyPopupView *)self arrangedVariantCells];
      v12 = [v11 count];

      if (v12)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [(TUIFlickSelectorView *)self orderedVariantIndicesForKey];
    v60 = self;
    if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
    {
      v15 = [v6 flickDirection];
      v16 = [v6 subtrees];
      v17 = [v16 count];

      if (v15 >= v17)
      {
        [v13 addObject:v6];
      }

      else
      {
        v18 = [v6 subtrees];
        v19 = [v18 objectAtIndex:{objc_msgSend(v6, "flickDirection") + 1}];
        [v13 addObject:v19];
      }
    }

    else if ([v14 count])
    {
      v20 = 0;
      do
      {
        v21 = [v14 objectAtIndex:v20];
        v22 = [v6 subtrees];
        v23 = [v22 objectAtIndex:{objc_msgSend(v21, "intValue")}];
        [v13 addObject:v23];

        ++v20;
      }

      while (v20 < [v14 count]);
    }

    v49 = v14;
    v50 = v7;
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [(TUIFlickSelectorView *)self maxVariantsPerRowForKey:v6];
    v25 = [(TUIKeyPopupView *)self isCharacterPreviewPaddle];
    v26 = [(TUIKeyPopupView *)self arrangedVariantRows];
    v27 = [v26 objectEnumerator];

    if ([v13 count])
    {
      v28 = 0;
      v29 = 0;
      v30 = 2;
      if (v25)
      {
        v30 = 0;
      }

      v61 = 0;
      v62 = v30;
      v53 = v13;
      v54 = v6;
      v51 = v24;
      v52 = v27;
      while (1)
      {
        if (v29)
        {
          if ((v62 + v28) % v24)
          {
            goto LABEL_23;
          }

          ++v61;
        }

        v31 = [v27 nextObject];

        v29 = v31;
LABEL_23:
        v32 = [v13 objectAtIndex:v28];
        v33 = v32;
        if (v29)
        {
          if (v32)
          {
            v34 = [MEMORY[0x1E695DFB0] null];
            v35 = [v33 isEqual:v34];

            if ((v35 & 1) == 0)
            {
              v36 = [v33 variantDisplayString];
              if (!v36 || [(TUIKeyPopupView *)self isCharacterPreviewPaddle])
              {
                v37 = [v33 displayString];

                v36 = v37;
              }

              v38 = [(TUIFlickSelectorView *)self variantCellWithString:v36 annotation:0];
              if (![(TUIKeyPopupView *)self isCharacterPreviewPaddle])
              {
                if (v61)
                {
                  if (v61 == 1)
                  {
                    if (v28 == 1)
                    {
                      v39 = 5;
                    }

                    else if (v28 == 2)
                    {
                      v39 = 8 * ([(TUIFlickSelectorView *)self totalVariants]== 3);
                    }

                    else
                    {
                      v39 = 10;
                    }
                  }

                  else
                  {
                    v39 = 12;
                  }
                }

                else
                {
                  v39 = 3;
                }

                [v38 setCurvedCorners:v39];
              }

              [v38 setUserInteractionEnabled:{-[TUIKeyPopupView wantsUserInteractionEnabled](self, "wantsUserInteractionEnabled")}];
              v40 = [v6 subtrees];
              [v38 setIndexNumber:{objc_msgSend(v40, "indexOfObject:", v33)}];

              v59 = v36;
              v41 = -[TUIKeyPopupView shouldProvideDefaultSelection](self, "shouldProvideDefaultSelection") && !-[TUIKeyPopupView isCharacterPreviewPaddle](self, "isCharacterPreviewPaddle") && [v38 indexNumber] == 0;
              [v38 setPrimaryVariant:v41];
              [v29 addArrangedSubview:v38];
              v42 = [(TUIKeyPopupView *)self arrangedVariantCells];
              [v42 addObject:v38];

              v57 = [v38 heightAnchor];
              v58 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
              v56 = [v58 heightAnchor];
              v43 = [v57 constraintEqualToAnchor:v56];
              v63[0] = v43;
              v44 = [v38 widthAnchor];
              v45 = [(TUIKeyPopupView *)v60 baseKeyLayoutGuide];
              v46 = [v45 widthAnchor];
              v47 = [v44 constraintEqualToAnchor:v46];
              v63[1] = v47;
              v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
              [v55 addObjectsFromArray:v48];

              self = v60;
              v13 = v53;
              v6 = v54;
              v24 = v51;
              v27 = v52;
            }
          }
        }

        if ([v13 count] <= ++v28)
        {
          goto LABEL_48;
        }
      }
    }

    v29 = 0;
LABEL_48:
    [MEMORY[0x1E696ACD8] activateConstraints:v55];

    v7 = v50;
  }

LABEL_49:
  [(TUIKeyPopupView *)self setInitialHighlight];
  [(TUIFlickSelectorView *)self layoutIfNeeded];
}

- (id)alignmentConstraintsForKey:(id)a3
{
  v96[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 || ([(TUIKeyPopupView *)self associatedTree], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v22 = MEMORY[0x1E695E0F0];
    goto LABEL_22;
  }

  v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(TUIKeyPopupView *)self variantView];
  v87 = [v7 leadingAnchor];

  v8 = [(TUIKeyPopupView *)self variantView];
  v88 = [v8 trailingAnchor];

  v9 = [(TUIKeyPopupView *)self variantView];
  v84 = [v9 topAnchor];

  v10 = [(TUIKeyPopupView *)self variantView];
  v85 = [v10 bottomAnchor];

  totalVariants = self->_totalVariants;
  v82 = v6;
  v83 = v4;
  if (totalVariants > 3)
  {
    if (totalVariants == 4)
    {
      v31 = [(TUIFlickSelectorView *)self centerXAnchor];
      v13 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v76 = [v13 centerXAnchor];
      v14 = [v31 constraintEqualToAnchor:v76];
      v91[0] = v14;
      v15 = [(TUIFlickSelectorView *)self bottomAnchor];
      v16 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v17 = [v16 bottomAnchor];
      v18 = [v15 constraintEqualToAnchor:v17];
      v91[1] = v18;
      v19 = v31;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v91;
      goto LABEL_16;
    }

    if (totalVariants == 5)
    {
      v23 = [(TUIFlickSelectorView *)self centerXAnchor];
      v13 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v76 = [v13 centerXAnchor];
      v14 = [v23 constraintEqualToAnchor:v76];
      v90[0] = v14;
      v15 = [(TUIFlickSelectorView *)self centerYAnchor];
      v16 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v17 = [v16 centerYAnchor];
      v18 = [v15 constraintEqualToAnchor:v17];
      v90[1] = v18;
      v19 = v23;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v90;
      goto LABEL_16;
    }
  }

  else if (totalVariants == 1)
  {
    v24 = [v4 flickDirection];
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v62 = [(TUIKeyPopupView *)self variantView];
        v75 = [v62 topAnchor];
        v81 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        v70 = [v81 bottomAnchor];
        [(TUIFlickSelectorView *)self flickPopupOffset];
        v66 = [v75 constraintEqualToAnchor:v70 constant:?];
        v94[0] = v66;
        v53 = [(TUIKeyPopupView *)self variantView];
        v54 = [v53 centerXAnchor];
        v55 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        v56 = [v55 centerXAnchor];
        v57 = [v54 constraintEqualToAnchor:v56];
        v94[1] = v57;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
        [v6 addObjectsFromArray:v58];

        v19 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        [v19 topAnchor];
        v84 = v13 = v84;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_21;
        }

        v60 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        v72 = [v60 leftAnchor];
        v78 = [(TUIKeyPopupView *)self variantView];
        v68 = [v78 rightAnchor];
        [(TUIFlickSelectorView *)self flickPopupOffset];
        v64 = [v72 constraintEqualToAnchor:v68 constant:?];
        v95[0] = v64;
        v33 = [(TUIKeyPopupView *)self variantView];
        v34 = [v33 centerYAnchor];
        v35 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        v36 = [v35 centerYAnchor];
        v37 = [v34 constraintEqualToAnchor:v36];
        v95[1] = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
        [v6 addObjectsFromArray:v38];

        v19 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        [v19 trailingAnchor];
        v88 = v13 = v88;
      }

      goto LABEL_17;
    }

    if (!v24)
    {
      v61 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v74 = [v61 topAnchor];
      v80 = [(TUIKeyPopupView *)self variantView];
      v69 = [v80 bottomAnchor];
      [(TUIFlickSelectorView *)self flickPopupOffset];
      v65 = [v74 constraintEqualToAnchor:v69 constant:?];
      v96[0] = v65;
      v47 = [(TUIKeyPopupView *)self variantView];
      v48 = [v47 centerXAnchor];
      v49 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v50 = [v49 centerXAnchor];
      v51 = [v48 constraintEqualToAnchor:v50];
      v96[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
      [v6 addObjectsFromArray:v52];

      v19 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      [v19 bottomAnchor];
      v85 = v13 = v85;
      goto LABEL_17;
    }

    if (v24 == 1)
    {
      v59 = [(TUIKeyPopupView *)self variantView];
      v71 = [v59 leftAnchor];
      v77 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v67 = [v77 rightAnchor];
      [(TUIFlickSelectorView *)self flickPopupOffset];
      v63 = [v71 constraintEqualToAnchor:v67 constant:?];
      v93[0] = v63;
      v25 = [(TUIKeyPopupView *)self variantView];
      v26 = [v25 centerYAnchor];
      v27 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      v28 = [v27 centerYAnchor];
      v29 = [v26 constraintEqualToAnchor:v28];
      v93[1] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
      [v6 addObjectsFromArray:v30];

      v19 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      [v19 leadingAnchor];
      v87 = v13 = v87;
LABEL_17:
    }
  }

  else if (totalVariants == 3)
  {
    v12 = [(TUIFlickSelectorView *)self trailingAnchor];
    v13 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    v76 = [v13 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v76];
    v92[0] = v14;
    v15 = [(TUIFlickSelectorView *)self bottomAnchor];
    v16 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v92[1] = v18;
    v19 = v12;
    v20 = MEMORY[0x1E695DEC8];
    v21 = v92;
LABEL_16:
    v32 = [v20 arrayWithObjects:v21 count:2];
    [v86 addObjectsFromArray:v32];

    goto LABEL_17;
  }

LABEL_21:
  v79 = [(TUIFlickSelectorView *)self leadingAnchor];
  v73 = [v87 constraintEqualToAnchor:v79 constant:0.0];
  v89[0] = v73;
  v39 = [(TUIFlickSelectorView *)self trailingAnchor];
  v40 = [v39 constraintEqualToAnchor:v88 constant:0.0];
  v89[1] = v40;
  v41 = [(TUIFlickSelectorView *)self topAnchor];
  v42 = [v84 constraintEqualToAnchor:v41 constant:0.0];
  v89[2] = v42;
  v43 = [(TUIFlickSelectorView *)self bottomAnchor];
  v44 = [v43 constraintEqualToAnchor:v85 constant:0.0];
  v89[3] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
  v22 = v86;
  [v86 addObjectsFromArray:v45];

  [v86 addObjectsFromArray:v82];
  v4 = v83;
LABEL_22:

  return v22;
}

- (void)updateVariantsIfNeededForKey:(id)a3
{
  v4 = a3;
  -[TUIFlickSelectorView setFlickDirection:](self, "setFlickDirection:", [v4 flickDirection]);
  if ([v4 flickDirection] == -1)
  {
    v5 = [(TUIFlickSelectorView *)self countNonNullVariantEntriesForKey:v4];
  }

  else
  {
    v5 = 1;
  }

  [(TUIFlickSelectorView *)self setTotalVariants:v5];
  v6.receiver = self;
  v6.super_class = TUIFlickSelectorView;
  [(TUIKeyPopupView *)&v6 updateVariantsIfNeededForKey:v4];
}

- (TUIFlickSelectorView)initWithKey:(id)a3 renderTraits:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = TUIFlickSelectorView;
  v7 = [(TUIKeyPopupView *)&v11 initWithKey:v6 renderTraits:a4];
  if (v7)
  {
    v8 = [v6 backingTree];
    v7->_flickDirection = [v8 flickDirection];

    v7->_topRowHasTrailingAlignment = 0;
    v9 = [(TUIKeyPopupView *)v7 associatedTree];
    v7->_totalVariants = [(TUIFlickSelectorView *)v7 countNonNullVariantEntriesForKey:v9];
  }

  return v7;
}

@end