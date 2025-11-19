@interface UIIndexBarVisualStyle_LegacyiOS
- (BOOL)canBecomeFocused;
- (BOOL)updateSectionForTouch:(id)a3 withEvent:(id)a4;
- (CGRect)_visibleBoundsForRect:(CGRect)a3 stride:(double *)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIIndexBarVisualStyle_LegacyiOS)initWithView:(id)a3;
- (double)_lineSpacingForCurrentIdiom;
- (double)indexWidth;
- (double)lineSpacing;
- (double)minLineHeight;
- (double)renderingHeightForDisplayEntry:(id)a3;
- (double)trackingChangeHysteresis;
- (id)displayEntryFromEntry:(id)a3;
- (id)font;
- (void)displayEntriesUpdated;
- (void)drawRect:(CGRect)a3;
- (void)indexColorUpdated;
- (void)sizeUpdated;
@end

@implementation UIIndexBarVisualStyle_LegacyiOS

- (double)indexWidth
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 traitCollection];

  v4 = _UIDefaultIndexBarWidthForTraitCollection(v3);
  return v4;
}

- (void)sizeUpdated
{
  v2 = *MEMORY[0x1E695F060];
  self->_cachedSizeToFit = *MEMORY[0x1E695F060];
  self->_cachedSize = v2;
  v3 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [v3 setNeedsDisplay];
}

- (void)displayEntriesUpdated
{
  self->_cachedSizeToFit = *MEMORY[0x1E695F060];
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [v2 setNeedsDisplay];
}

- (double)minLineHeight
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 3)
  {
    [(UIIndexBarVisualStyle_LegacyiOS *)self _lineSpacingForCurrentIdiom];
    v6 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    UIRoundToViewScale(v6);
    v8 = v7;

    return v8;
  }

  else
  {
    verticalTextHeightEstimate = self->_verticalTextHeightEstimate;
    if (verticalTextHeightEstimate == 0.0)
    {
      v17 = *off_1E70EC918;
      v11 = [(UIIndexBarVisualStyle_LegacyiOS *)self font];
      v18[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];

      v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:0x1EFBB7A10 attributes:v12];
      v14 = CTLineCreateWithAttributedString(v13);
      if (v14)
      {
        v15 = v14;
        BoundsWithOptions = CTLineGetBoundsWithOptions(v14, 8uLL);
        self->_verticalTextHeightEstimate = BoundsWithOptions.size.height;
        CFRelease(v15);
      }

      verticalTextHeightEstimate = self->_verticalTextHeightEstimate;
    }

    [(UIIndexBarVisualStyle_LegacyiOS *)self _lineSpacingForCurrentIdiom];
    return verticalTextHeightEstimate + v16;
  }
}

- (id)font
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 traitCollection];
  [v3 userInterfaceIdiom];

  v4 = [off_1E70ECC18 boldSystemFontOfSize:11.0];

  return v4;
}

- (double)_lineSpacingForCurrentIdiom
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  v5 = 6.0;
  if (v4 == 6)
  {
    v5 = 9.0;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (double)lineSpacing
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];
  v5 = 6.0;
  if (v4 == 6)
  {
    v5 = 9.0;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (void)indexColorUpdated
{
  v2 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [v2 setNeedsDisplay];
}

- (UIIndexBarVisualStyle_LegacyiOS)initWithView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIIndexBarVisualStyle_LegacyiOS;
  v5 = [(UIIndexBarVisualStyle_Base *)&v8 initWithView:v4];
  if (v5)
  {
    [v4 setOpaque:0];
    [v4 setDeliversTouchesForGesturesToSuperview:0];
    [v4 setExclusiveTouch:1];
    v6 = *MEMORY[0x1E695F060];
    v5->_cachedSize = *MEMORY[0x1E695F060];
    v5->_cachedSizeToFit = v6;
    [v4 setClipsToBounds:0];
    [v4 setBackgroundColor:0];
  }

  return v5;
}

- (id)displayEntryFromEntry:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(UIIndexBarDisplayEntry_LegacyIOS);
  [(UIIndexBarDisplayEntry *)v5 setEntry:v4];
  v6 = [v4 type];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v9 = @"UISectionListPoundSign";
    }

    else
    {
      if (v6 != 3)
      {
        goto LABEL_12;
      }

      v9 = @"UITableViewIndexSearchGlyph";
    }

    v7 = _UIImageWithName(v9);
    [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setImage:v7];
  }

  else
  {
    if (!v6)
    {
      v22[0] = *off_1E70EC918;
      v10 = [(UIIndexBarVisualStyle_LegacyiOS *)self font];
      v22[1] = *MEMORY[0x1E69659E0];
      v23[0] = v10;
      v23[1] = *MEMORY[0x1E695E4D0];
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

      v12 = objc_alloc(MEMORY[0x1E696AAB0]);
      v13 = [v4 title];
      v14 = [v12 initWithString:v13 attributes:v11];

      v15 = CTLineCreateWithAttributedString(v14);
      [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setLine:v15];

      BoundsWithOptions = CTLineGetBoundsWithOptions(v15, 0x10uLL);
      [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setBounds:BoundsWithOptions.origin.x, BoundsWithOptions.origin.y, BoundsWithOptions.size.width, BoundsWithOptions.size.height];
      v26 = CTLineGetBoundsWithOptions(v15, 8uLL);
      [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setTypeBounds:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];

      goto LABEL_12;
    }

    if (v6 != 1)
    {
      goto LABEL_12;
    }

    v7 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    v8 = [UIIndexBarEntry _dotImageInView:v7];
    [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setImage:v8];
  }

  v16 = *MEMORY[0x1E695EFF8];
  v17 = *(MEMORY[0x1E695EFF8] + 8);
  v18 = [v4 image];
  [v18 size];
  [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setBounds:v16, v17, v19, v20];

  [(UIIndexBarDisplayEntry_LegacyIOS *)v5 bounds];
  [(UIIndexBarDisplayEntry_LegacyIOS *)v5 setTypeBounds:?];
LABEL_12:

  return v5;
}

- (double)renderingHeightForDisplayEntry:(id)a3
{
  [a3 typeBounds];

  return CGRectGetHeight(*&v3);
}

- (BOOL)canBecomeFocused
{
  v3 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v4 = [v3 traitCollection];
  if ([v4 userInterfaceIdiom] == 3)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIIndexBarVisualStyle_LegacyiOS;
    v5 = [(UIIndexBarVisualStyle_Base *)&v7 canBecomeFocused];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v36 = *MEMORY[0x1E69E9840];
  p_cachedSize = &self->_cachedSize;
  v7 = self->_cachedSize.width;
  v8 = self->_cachedSize.height;
  v9 = v7 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8);
  if (v9 || (self->_cachedSizeToFit.width == width ? (v10 = self->_cachedSizeToFit.height == height) : (v10 = 0), !v10))
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    v12 = [v11 displayEntries];

    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          [v19 bounds];
          v21 = v20;
          [(UIIndexBarVisualStyle_LegacyiOS *)self _lineSpacingForCurrentIdiom];
          v23 = v22;
          [v19 bounds];
          if (v24 > v17)
          {
            [v19 bounds];
            v17 = v25;
          }

          v16 = v16 + v21 + v23 + v23;
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
    }

    v26 = fmax((height - v16) * 0.5, 0.0);
    self->_bottomPadding = v26;
    self->_topPadding = v26;
    [(UIIndexBarVisualStyle_LegacyiOS *)self indexWidth];
    v27 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    UICeilToViewScale(v27);
    v29 = v28;

    if (v29 > width)
    {
      v30 = width;
    }

    else
    {
      v30 = v29;
    }

    p_cachedSize->width = v30;
    p_cachedSize->height = height;
    self->_cachedSizeToFit.width = width;
    self->_cachedSizeToFit.height = height;
    v7 = p_cachedSize->width;
    v8 = p_cachedSize->height;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (double)trackingChangeHysteresis
{
  v3 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v4 = [v3 traitCollection];
  if ([v4 userInterfaceIdiom] == 1)
  {
  }

  else
  {
    v5 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    v6 = [v5 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    result = 0.0;
    if (v7)
    {
      return result;
    }
  }

  return 11.0;
}

- (CGRect)_visibleBoundsForRect:(CGRect)a3 stride:(double *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v46 = *MEMORY[0x1E69E9840];
  v10 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v11 = [v10 displayEntries];
  v12 = [v11 count];

  if (v12)
  {
    [(UIIndexBarVisualStyle_LegacyiOS *)self _lineSpacingForCurrentIdiom];
    v14 = v13;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v15 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    v16 = [v15 displayEntries];

    v17 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v42;
      v20 = 0.0;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v41 + 1) + 8 * i) typeBounds];
          v22 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
          UIRoundToViewScale(v22);
          v20 = v20 + v23;
        }

        v18 = [v16 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = 0.0;
    }

    v26 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    v27 = [v26 displayEntries];
    v28 = [v27 count];

    v29 = v28 - 1;
    v30 = v20 + v14 * (v28 - 1);
    v31 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    v32 = [v31 displayEntries];
    v33 = [v32 objectAtIndexedSubscript:v29];

    [v33 typeBounds];
    v25 = v30 - v34;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    CGRectGetMinY(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    CGRectGetHeight(v48);
    v35 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
    UIRoundToViewScale(v35);
    v24 = v36;

    if (a4)
    {
      *a4 = v14;
    }
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
  }

  v37 = x;
  v38 = v24;
  v39 = width;
  v40 = v25;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(UIIndexBarVisualStyle_Base *)self indexBarView:a3.origin.x];
  [v4 effectiveBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v15 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v16 = [v15 backgroundColor];

  if (v16)
  {
    goto LABEL_5;
  }

  v16 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v17 = [v16 traitCollection];
  if ([v17 userInterfaceIdiom] == 3)
  {

    goto LABEL_8;
  }

  v62 = dyld_program_sdk_at_least();

  if ((v62 & 1) == 0)
  {
    v63 = [UIColor colorWithWhite:1.0 alpha:0.9];
    if (v63)
    {
      v16 = v63;
LABEL_5:
      [v16 set];
      v67.origin.x = v6;
      v67.origin.y = v8;
      v67.size.width = v10;
      v67.size.height = v12;
      CGContextFillRect(v14, v67);
LABEL_8:
    }
  }

  v66 = 0.0;
  [(UIIndexBarVisualStyle_LegacyiOS *)self _visibleBoundsForRect:&v66 stride:v6, v8, v10, v12];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v27 = [v26 indexColor];

  [v27 set];
  v28 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v29 = [v28 displayEntries];
  v30 = [v29 count];

  if (v30)
  {
    for (i = 0; i != v30; ++i)
    {
      v32 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
      v33 = [v32 displayEntries];
      v34 = [v33 objectAtIndexedSubscript:i];

      [v34 bounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [(UIIndexBarVisualStyle_LegacyiOS *)self willDrawEntryAtIndex:i indexBounds:v14 entryBounds:v27 context:v19 originalColor:v21, v23, v25, v35, v37, v39, v41];
      v43 = [v34 image];

      if (v43)
      {
        v44 = [v34 image];
        v45 = [v44 imageWithTintColor:v27 renderingMode:1];

        v68.origin.x = v19;
        v68.origin.y = v21;
        v68.size.width = v23;
        v68.size.height = v25;
        CGRectGetMinX(v68);
        v64 = v38;
        v46 = v36;
        v69.origin.x = v19;
        v69.origin.y = v21;
        v69.size.width = v23;
        v69.size.height = v25;
        CGRectGetWidth(v69);
        v47 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
        UIRoundToViewScale(v47);
        v49 = v48;
        v70.origin.x = v19;
        v70.origin.y = v21;
        v70.size.width = v23;
        v70.size.height = v25;
        CGRectGetMinY(v70);
        v50 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
        UIRoundToViewScale(v50);
        v52 = v51;

        v53 = v49;
        v36 = v46;
        v38 = v64;
        [v45 drawAtPoint:0 blendMode:v53 alpha:{v52, 1.0}];

        v25 = v42;
      }

      else
      {
        v54 = [v34 line];

        if (v54)
        {
          CGContextSaveGState(v14);
          v71.origin.x = v19;
          v71.origin.y = v21;
          v71.size.width = v23;
          v71.size.height = v25;
          CGRectGetMinX(v71);
          v64 = v36;
          v72.origin.x = v19;
          v72.origin.y = v21;
          v72.size.width = v23;
          v72.size.height = v25;
          CGRectGetWidth(v72);
          v55 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
          UIRoundToViewScale(v55);
          v57 = v56;
          v73.origin.x = v19;
          v73.origin.y = v21;
          v73.size.width = v23;
          v73.size.height = v25;
          CGRectGetMinY(v73);
          [v34 typeBounds];
          v58 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
          UIRoundToViewScale(v58);
          v60 = v59;

          v65.b = 0.0;
          v65.c = 0.0;
          v65.a = 1.0;
          v65.d = -1.0;
          v65.tx = v57;
          v65.ty = v60;
          v36 = v64;
          CGContextSetTextMatrix(v14, &v65);
          v61 = [v34 line];
          CTLineDraw(v61, v14);

          CGContextRestoreGState(v14);
          v25 = v60 - v21;
        }
      }

      [(UIIndexBarVisualStyle_LegacyiOS *)self didDrawEntryAtIndex:i indexBounds:v14 entryBounds:v27 context:v19 originalColor:v21, v23, v25, v36, v38, v40, v42, *&v64];
      v21 = v21 + v25 + v66;
    }
  }
}

- (BOOL)updateSectionForTouch:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [v6 effectiveBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  [v5 locationInView:v15];
  v17 = v16;
  v19 = v18;

  v20 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
  v21 = [v20 entries];

  if ([v21 count] >= 1)
  {
    v22 = [(UIIndexBarVisualStyle_Base *)self _indexForEntryAtPoint:v17, v19];
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    if (v19 >= CGRectGetMinY(v26))
    {
      v27.origin.x = v8;
      v27.origin.y = v10;
      v27.size.width = v12;
      v27.size.height = v14;
      if (v19 <= CGRectGetMaxY(v27) && v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [v21 objectAtIndexedSubscript:v22];
        v24 = [(UIIndexBarVisualStyle_Base *)self indexBarView];
        [v24 _didSelectEntry:v23 atIndex:v22 location:{v17, v19}];
      }
    }
  }

  return 0;
}

@end