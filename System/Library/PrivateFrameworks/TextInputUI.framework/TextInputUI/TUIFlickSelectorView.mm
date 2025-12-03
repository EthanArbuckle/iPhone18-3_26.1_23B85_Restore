@interface TUIFlickSelectorView
- (TUIFlickSelectorView)initWithKey:(id)key renderTraits:(id)traits;
- (UIEdgeInsets)stackLayoutMargins;
- (double)flickPopupOffset;
- (id)alignmentConstraintsForKey:(id)key;
- (id)backgroundBezierPath;
- (id)backgroundPathForFlick;
- (id)backgroundPathForLongPress;
- (id)cellViewsInSubtreeOrder;
- (id)variantCellWithString:(id)string annotation:(id)annotation;
- (int64_t)variantViewAlignment;
- (unint64_t)countNonNullVariantEntriesForKey:(id)key;
- (unint64_t)maxVariantsPerRowForKey:(id)key;
- (unint64_t)variantRowLimitForLayout;
- (void)addVariantsForKey:(id)key toView:(id)view;
- (void)updateVariantViewPropertiesForKey:(id)key;
- (void)updateVariantsIfNeededForKey:(id)key;
@end

@implementation TUIFlickSelectorView

- (id)backgroundPathForFlick
{
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  variantView = [(TUIKeyPopupView *)self variantView];
  [variantView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  flickDirection = [(TUIFlickSelectorView *)self flickDirection];
  baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide layoutFrame];
  MidX = CGRectGetMidX(v60);
  baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide2 layoutFrame];
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
  if (flickDirection > 1)
  {
    if (flickDirection == 2)
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
    if (flickDirection == 3)
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
    if (!flickDirection)
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

    if (flickDirection == 1)
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
      [bezierPath moveToPoint:v21 + v25];
      [bezierPath addLineToPoint:{v17 - v22, v22 + v27}];
      [bezierPath addQuadCurveToPoint:v22 * 0.5 + v17 controlPoint:{v27, v17 - v22 * 0.5, v27}];
      [bezierPath addLineToPoint:{MaxX - v23, v28}];
      [bezierPath addQuadCurveToPoint:MaxX controlPoint:{v23 + v28, MaxX, v28}];
      [bezierPath addLineToPoint:{v26, v44 - v23}];
      [bezierPath addQuadCurveToPoint:v26 - v23 controlPoint:{v44, v26, v44}];
      [bezierPath addLineToPoint:{v22 * 0.5 + v46, v48}];
      [bezierPath addQuadCurveToPoint:v46 - v22 controlPoint:{v48 - v22, v46 - v22 * 0.5, v48}];
      [bezierPath addLineToPoint:{v29, MidY + v22 * 0.5}];
      [bezierPath addQuadCurveToPoint:v29 controlPoint:{v56, v29 + v22 / -3.0, MidY}];
      v30 = bezierPath;
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
  bezierPath = v35;
LABEL_11:
  v53 = MidX;
  v42 = MaxY;
  v41 = MinX;
LABEL_13:
  v57 = v37;
  [bezierPath moveToPoint:?];
  [bezierPath addLineToPoint:{v36 + v41, v36 + v42}];
  [bezierPath addQuadCurveToPoint:v41 controlPoint:{v42 - v36 * 0.5, v41, v36 * 0.5 + v42}];
  [bezierPath addLineToPoint:{v49, v38 + v50}];
  [bezierPath addQuadCurveToPoint:v38 + v49 controlPoint:{v50, v49, v50}];
  [bezierPath addLineToPoint:{v40 - v38, v39}];
  [bezierPath addQuadCurveToPoint:v40 controlPoint:{v38 + v39, v40, v39}];
  [bezierPath addLineToPoint:{v47, v45 - v36 * 0.5}];
  [bezierPath addQuadCurveToPoint:v47 - v36 controlPoint:{v36 + v45, v47, v36 * 0.5 + v45}];
  [bezierPath addLineToPoint:{v53 + v36 * 0.5, MidY}];
  [bezierPath addQuadCurveToPoint:v57 controlPoint:{MidY, v53, MidY + v36 / 3.0}];
  v30 = bezierPath;
  v31 = v57;
  v32 = MidY;
LABEL_14:
  [v30 moveToPoint:{v31, v32}];
  [bezierPath closePath];

  return bezierPath;
}

- (id)backgroundPathForLongPress
{
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  variantGeometries = [renderTraits variantGeometries];
  lastObject = [variantGeometries lastObject];

  [lastObject roundRectRadius];
  v7 = v6;
  cellViewsInTopDownLTROrder = [(TUIFlickSelectorView *)self cellViewsInTopDownLTROrder];
  v9 = [cellViewsInTopDownLTROrder count];
  baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
  [baseKeyLayoutGuide layoutFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__TUIFlickSelectorView_backgroundPathForLongPress__block_invoke;
  aBlock[3] = &unk_1E72D7F88;
  v20 = bezierPath;
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
  cellViewsInTopDownLTROrder = [(TUIFlickSelectorView *)self cellViewsInTopDownLTROrder];
  associatedTree = [(TUIKeyPopupView *)self associatedTree];
  subtrees = [associatedTree subtrees];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([&unk_1F03D8EB8 count])
  {
    v7 = 0;
    do
    {
      v8 = [&unk_1F03D8EB8 objectAtIndex:v7];
      intValue = [v8 intValue];

      if ([cellViewsInTopDownLTROrder count] > intValue)
      {
        v10 = [cellViewsInTopDownLTROrder objectAtIndex:intValue];
        [v6 addObject:v10];
      }

      ++v7;
    }

    while (v7 < [&unk_1F03D8EB8 count]);
  }

  return v6;
}

- (unint64_t)maxVariantsPerRowForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy flickDirection] == -1)
  {
    variantRowLimitForLayout = [(TUIFlickSelectorView *)self variantRowLimitForLayout];
    if (keyCopy)
    {
      subtrees = [keyCopy subtrees];
      if ([subtrees count] > variantRowLimitForLayout)
      {
        layoutStyle = [(TUIKeyPopupView *)self layoutStyle];

        if (layoutStyle != 1)
        {
          goto LABEL_8;
        }

        subtrees = [keyCopy subtrees];
        variantRowLimitForLayout = vcvtpd_u64_f64(vcvtd_n_f64_u64([subtrees count], 1uLL));
      }
    }
  }

  else
  {
    variantRowLimitForLayout = 1;
  }

LABEL_8:

  return variantRowLimitForLayout;
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

- (void)updateVariantViewPropertiesForKey:(id)key
{
  if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
  {
    goto LABEL_2;
  }

  totalVariants = [(TUIFlickSelectorView *)self totalVariants];
  if (totalVariants > 3)
  {
    if (totalVariants == 4)
    {
      goto LABEL_10;
    }

    if (totalVariants == 5)
    {
      v4 = 3;
      goto LABEL_12;
    }
  }

  else
  {
    if (totalVariants == 2)
    {
LABEL_2:
      v4 = 1;
      goto LABEL_12;
    }

    if (totalVariants == 3)
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

- (unint64_t)countNonNullVariantEntriesForKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subtrees = [key subtrees];
  v4 = [subtrees countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subtrees);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        null = [MEMORY[0x1E695DFB0] null];
        LODWORD(v9) = [v9 isEqual:null];

        v6 += v9 ^ 1;
      }

      v5 = [subtrees countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  flickDirection = [(TUIFlickSelectorView *)self flickDirection];
  result = 0.0;
  if ((flickDirection & 0xFFFFFFFFFFFFFFFDLL) == 0)
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

- (id)variantCellWithString:(id)string annotation:(id)annotation
{
  annotationCopy = annotation;
  stringCopy = string;
  v8 = [TUIFlickVariantCell alloc];
  renderTraits = [(TUIKeyPopupView *)self renderTraits];
  v10 = [(TUIVariantCell *)v8 initWithFrame:stringCopy string:annotationCopy annotation:renderTraits traits:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v10;
}

- (void)addVariantsForKey:(id)key toView:(id)view
{
  v63[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  viewCopy = view;
  if (viewCopy && [(TUIKeyPopupView *)self needsPopup])
  {
    subtrees = [keyCopy subtrees];
    v9 = [subtrees count];
    arrangedVariantCells = [(TUIKeyPopupView *)self arrangedVariantCells];
    if (v9 == [arrangedVariantCells count])
    {
      arrangedVariantCells2 = [(TUIKeyPopupView *)self arrangedVariantCells];
      v12 = [arrangedVariantCells2 count];

      if (v12)
      {
        goto LABEL_49;
      }
    }

    else
    {
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    orderedVariantIndicesForKey = [(TUIFlickSelectorView *)self orderedVariantIndicesForKey];
    selfCopy = self;
    if ([(TUIKeyPopupView *)self isCharacterPreviewPaddle])
    {
      flickDirection = [keyCopy flickDirection];
      subtrees2 = [keyCopy subtrees];
      v17 = [subtrees2 count];

      if (flickDirection >= v17)
      {
        [v13 addObject:keyCopy];
      }

      else
      {
        subtrees3 = [keyCopy subtrees];
        v19 = [subtrees3 objectAtIndex:{objc_msgSend(keyCopy, "flickDirection") + 1}];
        [v13 addObject:v19];
      }
    }

    else if ([orderedVariantIndicesForKey count])
    {
      v20 = 0;
      do
      {
        v21 = [orderedVariantIndicesForKey objectAtIndex:v20];
        subtrees4 = [keyCopy subtrees];
        v23 = [subtrees4 objectAtIndex:{objc_msgSend(v21, "intValue")}];
        [v13 addObject:v23];

        ++v20;
      }

      while (v20 < [orderedVariantIndicesForKey count]);
    }

    v49 = orderedVariantIndicesForKey;
    v50 = viewCopy;
    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [(TUIFlickSelectorView *)self maxVariantsPerRowForKey:keyCopy];
    isCharacterPreviewPaddle = [(TUIKeyPopupView *)self isCharacterPreviewPaddle];
    arrangedVariantRows = [(TUIKeyPopupView *)self arrangedVariantRows];
    objectEnumerator = [arrangedVariantRows objectEnumerator];

    if ([v13 count])
    {
      v28 = 0;
      v29 = 0;
      v30 = 2;
      if (isCharacterPreviewPaddle)
      {
        v30 = 0;
      }

      v61 = 0;
      v62 = v30;
      v53 = v13;
      v54 = keyCopy;
      v51 = v24;
      v52 = objectEnumerator;
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

        nextObject = [objectEnumerator nextObject];

        v29 = nextObject;
LABEL_23:
        v32 = [v13 objectAtIndex:v28];
        v33 = v32;
        if (v29)
        {
          if (v32)
          {
            null = [MEMORY[0x1E695DFB0] null];
            v35 = [v33 isEqual:null];

            if ((v35 & 1) == 0)
            {
              variantDisplayString = [v33 variantDisplayString];
              if (!variantDisplayString || [(TUIKeyPopupView *)self isCharacterPreviewPaddle])
              {
                displayString = [v33 displayString];

                variantDisplayString = displayString;
              }

              v38 = [(TUIFlickSelectorView *)self variantCellWithString:variantDisplayString annotation:0];
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
              subtrees5 = [keyCopy subtrees];
              [v38 setIndexNumber:{objc_msgSend(subtrees5, "indexOfObject:", v33)}];

              v59 = variantDisplayString;
              v41 = -[TUIKeyPopupView shouldProvideDefaultSelection](self, "shouldProvideDefaultSelection") && !-[TUIKeyPopupView isCharacterPreviewPaddle](self, "isCharacterPreviewPaddle") && [v38 indexNumber] == 0;
              [v38 setPrimaryVariant:v41];
              [v29 addArrangedSubview:v38];
              arrangedVariantCells3 = [(TUIKeyPopupView *)self arrangedVariantCells];
              [arrangedVariantCells3 addObject:v38];

              heightAnchor = [v38 heightAnchor];
              baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
              heightAnchor2 = [baseKeyLayoutGuide heightAnchor];
              v43 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
              v63[0] = v43;
              widthAnchor = [v38 widthAnchor];
              baseKeyLayoutGuide2 = [(TUIKeyPopupView *)selfCopy baseKeyLayoutGuide];
              widthAnchor2 = [baseKeyLayoutGuide2 widthAnchor];
              v47 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
              v63[1] = v47;
              v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
              [v55 addObjectsFromArray:v48];

              self = selfCopy;
              v13 = v53;
              keyCopy = v54;
              v24 = v51;
              objectEnumerator = v52;
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

    viewCopy = v50;
  }

LABEL_49:
  [(TUIKeyPopupView *)self setInitialHighlight];
  [(TUIFlickSelectorView *)self layoutIfNeeded];
}

- (id)alignmentConstraintsForKey:(id)key
{
  v96[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy || ([(TUIKeyPopupView *)self associatedTree], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v22 = MEMORY[0x1E695E0F0];
    goto LABEL_22;
  }

  v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  variantView = [(TUIKeyPopupView *)self variantView];
  leadingAnchor = [variantView leadingAnchor];

  variantView2 = [(TUIKeyPopupView *)self variantView];
  trailingAnchor = [variantView2 trailingAnchor];

  variantView3 = [(TUIKeyPopupView *)self variantView];
  topAnchor = [variantView3 topAnchor];

  variantView4 = [(TUIKeyPopupView *)self variantView];
  bottomAnchor = [variantView4 bottomAnchor];

  totalVariants = self->_totalVariants;
  v82 = v6;
  v83 = keyCopy;
  if (totalVariants > 3)
  {
    if (totalVariants == 4)
    {
      centerXAnchor = [(TUIFlickSelectorView *)self centerXAnchor];
      baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      centerXAnchor2 = [baseKeyLayoutGuide centerXAnchor];
      v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v91[0] = v14;
      bottomAnchor2 = [(TUIFlickSelectorView *)self bottomAnchor];
      baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      bottomAnchor3 = [baseKeyLayoutGuide2 bottomAnchor];
      v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v91[1] = v18;
      baseKeyLayoutGuide5 = centerXAnchor;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v91;
      goto LABEL_16;
    }

    if (totalVariants == 5)
    {
      centerXAnchor3 = [(TUIFlickSelectorView *)self centerXAnchor];
      baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      centerXAnchor2 = [baseKeyLayoutGuide centerXAnchor];
      v14 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor2];
      v90[0] = v14;
      bottomAnchor2 = [(TUIFlickSelectorView *)self centerYAnchor];
      baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      bottomAnchor3 = [baseKeyLayoutGuide2 centerYAnchor];
      v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v90[1] = v18;
      baseKeyLayoutGuide5 = centerXAnchor3;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v90;
      goto LABEL_16;
    }
  }

  else if (totalVariants == 1)
  {
    flickDirection = [keyCopy flickDirection];
    if (flickDirection > 1)
    {
      if (flickDirection == 2)
      {
        variantView5 = [(TUIKeyPopupView *)self variantView];
        topAnchor2 = [variantView5 topAnchor];
        baseKeyLayoutGuide3 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        bottomAnchor4 = [baseKeyLayoutGuide3 bottomAnchor];
        [(TUIFlickSelectorView *)self flickPopupOffset];
        v66 = [topAnchor2 constraintEqualToAnchor:bottomAnchor4 constant:?];
        v94[0] = v66;
        variantView6 = [(TUIKeyPopupView *)self variantView];
        centerXAnchor4 = [variantView6 centerXAnchor];
        baseKeyLayoutGuide4 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        centerXAnchor5 = [baseKeyLayoutGuide4 centerXAnchor];
        v57 = [centerXAnchor4 constraintEqualToAnchor:centerXAnchor5];
        v94[1] = v57;
        v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:2];
        [v6 addObjectsFromArray:v58];

        baseKeyLayoutGuide5 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        [baseKeyLayoutGuide5 topAnchor];
        topAnchor = baseKeyLayoutGuide = topAnchor;
      }

      else
      {
        if (flickDirection != 3)
        {
          goto LABEL_21;
        }

        baseKeyLayoutGuide6 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        leftAnchor = [baseKeyLayoutGuide6 leftAnchor];
        variantView7 = [(TUIKeyPopupView *)self variantView];
        rightAnchor = [variantView7 rightAnchor];
        [(TUIFlickSelectorView *)self flickPopupOffset];
        v64 = [leftAnchor constraintEqualToAnchor:rightAnchor constant:?];
        v95[0] = v64;
        variantView8 = [(TUIKeyPopupView *)self variantView];
        centerYAnchor = [variantView8 centerYAnchor];
        baseKeyLayoutGuide7 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        centerYAnchor2 = [baseKeyLayoutGuide7 centerYAnchor];
        v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v95[1] = v37;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
        [v6 addObjectsFromArray:v38];

        baseKeyLayoutGuide5 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
        [baseKeyLayoutGuide5 trailingAnchor];
        trailingAnchor = baseKeyLayoutGuide = trailingAnchor;
      }

      goto LABEL_17;
    }

    if (!flickDirection)
    {
      baseKeyLayoutGuide8 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      topAnchor3 = [baseKeyLayoutGuide8 topAnchor];
      variantView9 = [(TUIKeyPopupView *)self variantView];
      bottomAnchor5 = [variantView9 bottomAnchor];
      [(TUIFlickSelectorView *)self flickPopupOffset];
      v65 = [topAnchor3 constraintEqualToAnchor:bottomAnchor5 constant:?];
      v96[0] = v65;
      variantView10 = [(TUIKeyPopupView *)self variantView];
      centerXAnchor6 = [variantView10 centerXAnchor];
      baseKeyLayoutGuide9 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      centerXAnchor7 = [baseKeyLayoutGuide9 centerXAnchor];
      v51 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor7];
      v96[1] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
      [v6 addObjectsFromArray:v52];

      baseKeyLayoutGuide5 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      [baseKeyLayoutGuide5 bottomAnchor];
      bottomAnchor = baseKeyLayoutGuide = bottomAnchor;
      goto LABEL_17;
    }

    if (flickDirection == 1)
    {
      variantView11 = [(TUIKeyPopupView *)self variantView];
      leftAnchor2 = [variantView11 leftAnchor];
      baseKeyLayoutGuide10 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      rightAnchor2 = [baseKeyLayoutGuide10 rightAnchor];
      [(TUIFlickSelectorView *)self flickPopupOffset];
      v63 = [leftAnchor2 constraintEqualToAnchor:rightAnchor2 constant:?];
      v93[0] = v63;
      variantView12 = [(TUIKeyPopupView *)self variantView];
      centerYAnchor3 = [variantView12 centerYAnchor];
      baseKeyLayoutGuide11 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      centerYAnchor4 = [baseKeyLayoutGuide11 centerYAnchor];
      v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v93[1] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
      [v6 addObjectsFromArray:v30];

      baseKeyLayoutGuide5 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
      [baseKeyLayoutGuide5 leadingAnchor];
      leadingAnchor = baseKeyLayoutGuide = leadingAnchor;
LABEL_17:
    }
  }

  else if (totalVariants == 3)
  {
    trailingAnchor2 = [(TUIFlickSelectorView *)self trailingAnchor];
    baseKeyLayoutGuide = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    centerXAnchor2 = [baseKeyLayoutGuide trailingAnchor];
    v14 = [trailingAnchor2 constraintEqualToAnchor:centerXAnchor2];
    v92[0] = v14;
    bottomAnchor2 = [(TUIFlickSelectorView *)self bottomAnchor];
    baseKeyLayoutGuide2 = [(TUIKeyPopupView *)self baseKeyLayoutGuide];
    bottomAnchor3 = [baseKeyLayoutGuide2 bottomAnchor];
    v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v92[1] = v18;
    baseKeyLayoutGuide5 = trailingAnchor2;
    v20 = MEMORY[0x1E695DEC8];
    v21 = v92;
LABEL_16:
    v32 = [v20 arrayWithObjects:v21 count:2];
    [v86 addObjectsFromArray:v32];

    goto LABEL_17;
  }

LABEL_21:
  leadingAnchor2 = [(TUIFlickSelectorView *)self leadingAnchor];
  v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v89[0] = v73;
  trailingAnchor3 = [(TUIFlickSelectorView *)self trailingAnchor];
  v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor constant:0.0];
  v89[1] = v40;
  topAnchor4 = [(TUIFlickSelectorView *)self topAnchor];
  v42 = [topAnchor constraintEqualToAnchor:topAnchor4 constant:0.0];
  v89[2] = v42;
  bottomAnchor6 = [(TUIFlickSelectorView *)self bottomAnchor];
  v44 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor constant:0.0];
  v89[3] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:4];
  v22 = v86;
  [v86 addObjectsFromArray:v45];

  [v86 addObjectsFromArray:v82];
  keyCopy = v83;
LABEL_22:

  return v22;
}

- (void)updateVariantsIfNeededForKey:(id)key
{
  keyCopy = key;
  -[TUIFlickSelectorView setFlickDirection:](self, "setFlickDirection:", [keyCopy flickDirection]);
  if ([keyCopy flickDirection] == -1)
  {
    v5 = [(TUIFlickSelectorView *)self countNonNullVariantEntriesForKey:keyCopy];
  }

  else
  {
    v5 = 1;
  }

  [(TUIFlickSelectorView *)self setTotalVariants:v5];
  v6.receiver = self;
  v6.super_class = TUIFlickSelectorView;
  [(TUIKeyPopupView *)&v6 updateVariantsIfNeededForKey:keyCopy];
}

- (TUIFlickSelectorView)initWithKey:(id)key renderTraits:(id)traits
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = TUIFlickSelectorView;
  v7 = [(TUIKeyPopupView *)&v11 initWithKey:keyCopy renderTraits:traits];
  if (v7)
  {
    backingTree = [keyCopy backingTree];
    v7->_flickDirection = [backingTree flickDirection];

    v7->_topRowHasTrailingAlignment = 0;
    associatedTree = [(TUIKeyPopupView *)v7 associatedTree];
    v7->_totalVariants = [(TUIFlickSelectorView *)v7 countNonNullVariantEntriesForKey:associatedTree];
  }

  return v7;
}

@end