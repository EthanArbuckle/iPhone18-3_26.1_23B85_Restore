@interface PUStackView
+ (int64_t)maximumNumberOfVisibleItemsForStyle:(unint64_t)a3;
- (BOOL)wouldCoverAllItemsInStackView:(id)a3;
- (CGPoint)stackPerspectiveFactor;
- (CGPoint)topLeftCornerOfFrontStackItem;
- (CGRect)_getStackFrame;
- (CGRect)rectOfStackItemAtIndex:(int64_t)a3 inCoordinateSpace:(id)a4;
- (CGSize)stackSize;
- (PUStackView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)stackPerspectiveInsets;
- (UIOffset)stackOffset;
- (UIOffset)stackPerspectiveOffset;
- (double)cornerRadius;
- (id)_combinedPhotoDecorationsImage;
- (id)newLayoutAttributesForItemAtIndex:(int64_t)a3 relativeToView:(id)a4;
- (id)newLayoutAttributesForVisbleItemsRelativeToView:(id)a3 maxCount:(int64_t)a4;
- (void)_getCenter:(CGPoint *)a3 bounds:(CGRect *)a4 forPhotoViewAtIndex:(int64_t)a5;
- (void)_rebuildDecorationVariants;
- (void)_updateBackgroundView;
- (void)_updateDynamicLayout;
- (void)_updateHighlight;
- (void)_updateNumberOfViews;
- (void)_updatePhotoViews;
- (void)_updateSubviewsOrdering;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)a3 forItemAtIndex:(int64_t)a4;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)a3 style:(int64_t)a4 forItemAtIndex:(int64_t)a5;
- (void)setCollectionTileLayoutTemplate:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setCombinesPhotoDecorations:(BOOL)a3;
- (void)setContinuousCorners:(BOOL)a3;
- (void)setCornerOverlaysDisabled:(BOOL)a3;
- (void)setEmpty:(BOOL)a3;
- (void)setEmptyPlaceholderImage:(id)a3;
- (void)setFeatureSpec:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setGridBackgroundColor:(id)a3;
- (void)setGridItemSpacing:(double)a3;
- (void)setGridMargin:(double)a3;
- (void)setHasRoundedCorners:(BOOL)a3 withCornersBackgroundColor:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setImageHidden:(BOOL)a3 forItemAtIndex:(int64_t)a4;
- (void)setImageSize:(CGSize)a3 forItemAtIndex:(int64_t)a4;
- (void)setItemAlpha:(double)a3;
- (void)setNumberOfVisibleItems:(int64_t)a3;
- (void)setPhotoDecoration:(id)a3;
- (void)setPosterSquareCornerRadius:(double)a3;
- (void)setPosterSubitemCornerRadius:(double)a3;
- (void)setStackOffset:(UIOffset)a3;
- (void)setStackPerspectiveFactor:(CGPoint)a3;
- (void)setStackPerspectiveInsets:(UIEdgeInsets)a3;
- (void)setStackPerspectiveOffset:(UIOffset)a3;
- (void)setStackSize:(CGSize)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setSubtitle:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setTitle:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setTitleFontName:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PUStackView

- (CGPoint)stackPerspectiveFactor
{
  x = self->_stackPerspectiveFactor.x;
  y = self->_stackPerspectiveFactor.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIOffset)stackPerspectiveOffset
{
  horizontal = self->_stackPerspectiveOffset.horizontal;
  vertical = self->_stackPerspectiveOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (UIEdgeInsets)stackPerspectiveInsets
{
  top = self->_stackPerspectiveInsets.top;
  left = self->_stackPerspectiveInsets.left;
  bottom = self->_stackPerspectiveInsets.bottom;
  right = self->_stackPerspectiveInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIOffset)stackOffset
{
  horizontal = self->_stackOffset.horizontal;
  vertical = self->_stackOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGSize)stackSize
{
  width = self->_stackSize.width;
  height = self->_stackSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSubtitle:(id)a3 forItemAtIndex:(int64_t)a4
{
  v9 = a3;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v6 = [(PUStackView *)self _photoViews];
    v7 = [v6 objectAtIndex:a4];

    v8 = [v7 contentHelper];
    [v8 setSubtitle:v9];
  }
}

- (void)setTitle:(id)a3 forItemAtIndex:(int64_t)a4
{
  v9 = a3;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v6 = [(PUStackView *)self _photoViews];
    v7 = [v6 objectAtIndex:a4];

    v8 = [v7 contentHelper];
    [v8 setTitle:v9];
  }
}

- (void)setTitleFontName:(id)a3 forItemAtIndex:(int64_t)a4
{
  v9 = a3;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v6 = [(PUStackView *)self _photoViews];
    v7 = [v6 objectAtIndex:a4];

    v8 = [v7 contentHelper];
    [v8 setTitleFontName:v9];
  }
}

- (void)setCollectionTileLayoutTemplate:(id)a3 forItemAtIndex:(int64_t)a4
{
  v9 = a3;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v6 = [(PUStackView *)self _photoViews];
    v7 = [v6 objectAtIndex:a4];

    v8 = [v7 contentHelper];
    [v8 setCollectionTileLayoutTemplate:v9];
  }
}

- (void)setFeatureSpec:(id)a3 forItemAtIndex:(int64_t)a4
{
  v9 = a3;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v6 = [(PUStackView *)self _photoViews];
    v7 = [v6 objectAtIndex:a4];

    v8 = [v7 contentHelper];
    [v8 setFeatureSpec:v9];
  }
}

- (void)_updateDynamicLayout
{
  v3 = [(PUStackView *)self numberOfVisibleItems];
  if ([(PUStackView *)self style]== 4 || [(PUStackView *)self style]== 3)
  {
    if (v3 >= 1)
    {
      transforms = self->_transforms;
      v5 = *MEMORY[0x1E695EFD0];
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      v7 = *(MEMORY[0x1E695EFD0] + 32);
      do
      {
        *&transforms->a = v5;
        *&transforms->c = v6;
        *&transforms->tx = v7;
        ++transforms;
        --v3;
      }

      while (v3);
    }
  }

  else
  {
    [(PUStackView *)self stackPerspectiveOffset];
    v9 = v8;
    v11 = v10;
    [(PUStackView *)self stackPerspectiveFactor];
    if (v12 >= 0.0)
    {
      v14 = v13;
      if (v13 >= 0.0)
      {
        v15 = v12;
        [(PUStackView *)self stackPerspectiveInsets];
        v17 = -v16;
        v18 = 0.0;
        if (v14 > 0.25)
        {
          v18 = 1.0;
          if (v14 < 1.0)
          {
            v18 = (v14 + -0.25) / 0.75;
          }
        }

        v9 = v9 * v15 + (1.0 - v15) * v9;
        v11 = v11 * v18 + (1.0 - v18) * v17;
      }
    }

    if (v3 >= 1)
    {
      v19 = 0;
      v20 = self->_transforms;
      do
      {
        memset(&v22, 0, sizeof(v22));
        CGAffineTransformMakeTranslation(&v22, v9 * v19, v11 * v19);
        v21 = *&v22.c;
        *&v20->a = *&v22.a;
        *&v20->c = v21;
        *&v20->tx = *&v22.tx;
        ++v19;
        ++v20;
      }

      while (v3 != v19);
    }
  }
}

- (id)_combinedPhotoDecorationsImage
{
  v83 = *MEMORY[0x1E69E9840];
  if (_combinedPhotoDecorationsImage_onceToken != -1)
  {
    dispatch_once(&_combinedPhotoDecorationsImage_onceToken, &__block_literal_global_83089);
  }

  v3 = [(PUStackView *)self _photoDecorationVariants];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v79;
    v7 = 1319;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v79 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v78 + 1) + 8 * i) hash] ^ (1319 * v7);
      }

      v5 = [v3 countByEnumeratingWithState:&v78 objects:v82 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1319;
  }

  v9 = _combinedPhotoDecorationsImage__imageCache;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v11 = [v9 objectForKey:v10];

  if (!v11 && v3)
  {
    [(PUStackView *)self bounds];
    v71 = v13;
    v72 = v12;
    v15 = v14;
    v17 = v16;
    [(PUStackView *)self px_screenScale];
    v19 = v18;
    v69 = v17;
    v70 = v15;
    v85.width = v15;
    v85.height = v17;
    UIGraphicsBeginImageContextWithOptions(v85, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetShouldAntialias(CurrentContext, 0);
    v21 = [(PUStackView *)self numberOfVisibleItems];
    v22 = [(PUStackView *)self _numberOfViews];
    if (v22 >= 1)
    {
      v23 = v22;
      v24 = 0;
      v25 = &OBJC_IVAR___PUSessionInfo__promptLocation;
      v26 = self;
      v66 = 1.0 / v19;
      v67 = v22;
      v68 = v21;
      do
      {
        v77[0] = 0;
        v77[1] = 0;
        v75 = 0u;
        v76 = 0u;
        [(PUStackView *)self _getCenter:v77 bounds:&v75 forPhotoViewAtIndex:v24];
        v27 = (v26 + v25[153]);
        v28 = v27[1];
        *&v74.a = *v27;
        *&v74.c = v28;
        *&v74.tx = v27[2];
        UIRectCenteredAboutPoint();
        v73 = v74;
        v87 = CGRectApplyAffineTransform(v86, &v73);
        if (v24 < v21)
        {
          x = v87.origin.x;
          y = v87.origin.y;
          if (![(PUStackView *)self isImageHiddenForItemAtIndex:v24])
          {
            v31 = [(PUStackView *)self _photoViews];
            v32 = [v31 objectAtIndex:v24];

            v33 = [v32 contentHelper];
            [v33 imageContentFrameForBounds:{v75, v76}];
            v35 = v34;
            v37 = v36;
            v39 = v38;
            v41 = v40;

            v88.origin.x = v35;
            v88.origin.y = v37;
            v88.size.width = v39;
            v88.size.height = v41;
            v89 = CGRectOffset(v88, x, y);
            v42 = v89.origin.x;
            v43 = v89.origin.y;
            width = v89.size.width;
            height = v89.size.height;
            v46 = [v32 contentHelper];
            [v46 photoDecorationBorderViewFrameForImageContentFrame:{v42, v43, width, height}];
            v48 = v47;
            v50 = v49;
            v52 = v51;
            v54 = v53;

            v55 = [v3 objectAtIndex:v24];
            v56 = [v55 foregroundColor];
            v57 = [v56 CGColor];

            if (v57 && CGColorGetAlpha(v57) > 0.0)
            {
              CGContextSetFillColorWithColor(CurrentContext, v57);
              v90.origin.x = v42;
              v90.origin.y = v43;
              v90.size.width = width;
              v90.size.height = height;
              CGContextFillRect(CurrentContext, v90);
            }

            v58 = v52 - v66;
            v59 = [v55 borderColor];
            v60 = [v59 CGColor];

            if (v60 && CGColorGetAlpha(v60) > 0.0)
            {
              [v55 borderWidth];
              v62 = v61;
              CGContextSetStrokeColorWithColor(CurrentContext, v60);
              CGContextSetLineWidth(CurrentContext, v62);
              v91.origin.x = v48;
              v91.origin.y = v66 + v50;
              v91.size.width = v58;
              v91.size.height = v54 - v66;
              CGContextStrokeRect(CurrentContext, v91);
            }

            v92.origin.y = v71;
            v92.origin.x = v72;
            v92.size.height = v69;
            v92.size.width = v70;
            CGContextAddRect(CurrentContext, v92);
            v93.origin.x = v48;
            v93.origin.y = v66 + v50;
            v93.size.width = v58;
            v93.size.height = v54 - v66;
            CGContextAddRect(CurrentContext, v93);
            CGContextEOClip(CurrentContext);

            v23 = v67;
            v21 = v68;
            v25 = &OBJC_IVAR___PUSessionInfo__promptLocation;
          }
        }

        ++v24;
        v26 = (v26 + 48);
      }

      while (v23 != v24);
    }

    v11 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v63 = _combinedPhotoDecorationsImage__imageCache;
    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v63 setObject:v11 forKey:v64];
  }

  return v11;
}

uint64_t __45__PUStackView__combinedPhotoDecorationsImage__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _combinedPhotoDecorationsImage__imageCache;
  _combinedPhotoDecorationsImage__imageCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_getCenter:(CGPoint *)a3 bounds:(CGRect *)a4 forPhotoViewAtIndex:(int64_t)a5
{
  [(PUStackView *)self _getStackFrame];
  v11 = v10;
  y = v12;
  v15 = v14;
  v17 = v16;
  [(PUStackView *)self stackPerspectiveInsets];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(PUStackView *)self effectiveUserInterfaceLayoutDirection];
  v27 = [(PUStackView *)self style];
  v28 = v27;
  if (v27 > 2)
  {
    if ((v27 - 3) < 2)
    {
      v29 = MEMORY[0x1E69DDCE0];
      [(PUStackView *)self gridMargin];
      v31 = v30;
      [(PUStackView *)self gridItemSpacing];
      v33 = v32;
      v78.origin.x = v11;
      v78.origin.y = y;
      v78.size.width = v15;
      v78.size.height = v17;
      v79 = CGRectInset(v78, v31, v31);
      v34 = 2;
      if (v28 != 3)
      {
        v34 = 3;
      }

      v35 = v33 * (v34 - 1);
      v15 = (v79.size.width - v35) / v34;
      v17 = (v79.size.height - v35) / v34;
      v36 = a5 / v34;
      v37 = a5 % v34;
      if (v26)
      {
        v11 = CGRectGetMaxX(v79) - v15 * (v37 + 1) - v33 * v37;
      }

      else
      {
        v11 = (v33 + v15) * v37 + CGRectGetMinX(v79);
      }

      v23 = v29[2];
      v25 = v29[3];
      v58 = v33 + v17;
      v21 = v29[1];
      y = v31 + v36 * v58;
      v19 = *v29;
      goto LABEL_20;
    }

    if (v27 != 6)
    {
      goto LABEL_20;
    }

    v41 = [(PUStackView *)self numberOfVisibleItems];
    if (v41 < [objc_opt_class() maximumNumberOfVisibleItemsForStyle:6])
    {
      goto LABEL_20;
    }

    v75 = v21;
    v76 = v19;
    [(PUStackView *)self gridMargin];
    v43 = v42;
    [(PUStackView *)self gridItemSpacing];
    v45 = v44;
    v80.origin.x = v11;
    v80.origin.y = y;
    v80.size.width = v15;
    v80.size.height = v17;
    v81 = CGRectInset(v80, v43, v43);
    y = v81.origin.y;
    width = v81.size.width;
    v17 = (v81.size.height - v45) * 0.5;
    v15 = (v81.size.width - v45) / 3.0;
    rect = v81.origin.x;
    height = v81.size.height;
    v11 = CGRectGetMaxX(v81) - v15;
    if (a5 == 2)
    {
      v65 = height;
      v21 = v75;
      v66 = rect;
      if (v26)
      {
        v67 = rect;
        v68 = y;
        v69 = width;
        MinX = CGRectGetMinX(*(&v65 - 3));
        v65 = height;
        v11 = MinX;
        v66 = rect;
      }

      v71 = y;
      v72 = width;
      y = CGRectGetMaxY(*&v66) - v17;
      goto LABEL_31;
    }

    v21 = v75;
    if (a5 == 1)
    {
      if (!v26)
      {
        goto LABEL_31;
      }

      v82.origin.x = rect;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      v47 = CGRectGetMinX(v82);
    }

    else
    {
      if (a5)
      {
        v73 = [MEMORY[0x1E696AAA8] currentHandler];
        [v73 handleFailureInMethod:a2 object:self file:@"PUStackView.m" lineNumber:731 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v15 = v15 + v15;
      v17 = height;
      v47 = rect;
      if (v26)
      {
        v48 = y;
        v49 = width;
        v50 = height;
        v11 = CGRectGetMaxX(*&v47) - v15;
LABEL_31:
        v19 = v76;
        goto LABEL_20;
      }
    }

    v11 = v47;
    goto LABEL_31;
  }

  if (v27 == 1)
  {
    v51 = [(PUStackView *)self _imageSizes];
    v52 = [v51 pointerAtIndex:a5];

    [v52 CGSizeValue];
    v11 = PURectWithSizeThatFitsInRect(v53, v54, v11, y, v15, v17);
    y = v55;
    v15 = v56;
    v17 = v57;
  }

  else if (v27 == 2)
  {
    v11 = PURectWithSizeThatFitsInRect(1.0, 0.850000024, v11, y, v15, v17);
    y = v38;
    v15 = v39;
    v17 = v40;
  }

LABEL_20:
  PURoundRectToPixel(v11 + v21 * a5, y + v19 * a5, v15 - (v21 * a5 + v25 * a5), v17 - (v19 * a5 + v23 * a5));
  v60 = v59;
  v62 = v61;
  if (a3)
  {
    UIRectGetCenter();
    a3->x = v63;
    a3->y = v64;
  }

  if (a4)
  {
    a4->origin.x = 0.0;
    a4->origin.y = 0.0;
    a4->size.width = v60;
    a4->size.height = v62;
  }
}

- (CGRect)_getStackFrame
{
  [(PUStackView *)self stackOffset];
  v4 = v3;
  v6 = v5;
  [(PUStackView *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v11 = v4 + CGRectGetMidX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = v6 + CGRectGetMidY(v20);
  [(PUStackView *)self stackSize];
  if (v13 >= width)
  {
    v15 = width;
  }

  else
  {
    v15 = v13;
  }

  if (v14 >= height)
  {
    v16 = height;
  }

  else
  {
    v16 = v14;
  }

  v17 = v11 - v15 * 0.5;
  v18 = v12 - v16 * 0.5;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_rebuildDecorationVariants
{
  v11 = [(PUStackView *)self photoDecoration];
  v3 = [(PUStackView *)self numberOfVisibleItems];
  if ([(PUStackView *)self style]== 4 || [(PUStackView *)self style]== 3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(PUStackView *)self emptyPlaceholderImage];

    if (v5)
    {
      [v11 photoDecorationVariantsWithIncreasingBorderBrightness:v3];
    }

    else
    {
      [v11 photoDecorationVariantsWithIncreasingAlpha:v3];
    }
    v4 = ;
  }

  [(PUStackView *)self _setPhotoDecorationVariants:v4];
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if (v4)
      {
        v7 = [v4 objectAtIndex:i];
      }

      else
      {
        v7 = 0;
      }

      v8 = [(PUStackView *)self _photoViews];
      v9 = [v8 objectAtIndex:i];

      v10 = [v9 contentHelper];
      [v10 setPhotoDecoration:v7];
    }
  }
}

- (void)_updatePhotoViews
{
  if ([(PUStackView *)self style]== 5 || [(PUStackView *)self style]== 3 || ![(PUStackView *)self style])
  {
    v4 = [(PUStackView *)self gridBackgroundColor];
  }

  else
  {
    v4 = 0;
  }

  [(PUStackView *)self cornerRadius];
  v6 = v5;
  v7 = [(PUStackView *)self cornersBackgroundColor];
  [(PUStackView *)self itemAlpha];
  v9 = v8;
  v10 = [(PUStackView *)self combinesPhotoDecorations];
  v11 = [(PUStackView *)self effectiveUserInterfaceLayoutDirection]== 0;
  v12 = [(PUStackView *)self _photoViews];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__PUStackView__updatePhotoViews__block_invoke;
  v15[3] = &unk_1E7B7E2D8;
  v21 = v11;
  v22 = v10;
  v15[4] = self;
  v16 = v7;
  v17 = v4;
  v18 = a2;
  v19 = v6;
  v20 = v9;
  v13 = v4;
  v14 = v7;
  [v12 enumerateObjectsUsingBlock:v15];
}

void __32__PUStackView__updatePhotoViews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  if ([*(a1 + 32) style] != 6)
  {
    v8 = -1;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    v5 = *(a1 + 80) == 0;
    v6 = 4;
    v7 = 8;
LABEL_11:
    if (v5)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_14;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUStackView.m" lineNumber:604 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v5 = *(a1 + 80) == 0;
    v6 = 10;
    v7 = 5;
    goto LABEL_11;
  }

  if (*(a1 + 80))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

LABEL_14:
  v9 = [MEMORY[0x1E69C3680] sharedInstance];
  v10 = [v9 disableRoundedOverlays];

  v11 = [*(a1 + 32) cornerOverlaysDisabled] | v10;
  v12 = [v18 contentHelper];
  [v12 setAvoidsImageViewIfPossible:*(a1 + 81)];

  v13 = [v18 contentHelper];
  [v13 setAvoidsPhotoDecoration:*(a1 + 81)];

  v14 = [v18 contentHelper];
  [v14 setCornerRadius:v8 cornersToRound:(v11 & 1) == 0 useOverlay:*(a1 + 40) overlayColor:objc_msgSend(*(a1 + 32) continuousCorners:{"continuousCorners"), *(a1 + 64)}];

  v15 = [v18 contentHelper];
  [v15 setBackgroundColor:*(a1 + 48)];

  v16 = [v18 contentHelper];
  [v16 setContentAlpha:*(a1 + 72)];
}

- (void)_updateSubviewsOrdering
{
  v3 = [(PUStackView *)self _backgroundView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v3 = [(PUStackView *)self sendSubviewToBack:v3];
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_updateHighlight
{
  v3 = [(PUStackView *)self isHighlighted];
  v4 = [(PUStackView *)self style];
  v5 = 0x68u >> v4;
  if (v4 > 6)
  {
    LOBYTE(v5) = 0;
  }

  if (!v3)
  {
    LOBYTE(v5) = 0;
  }

  v6 = v5 & 1;
  v7 = [(PUStackView *)self _photoViews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__PUStackView__updateHighlight__block_invoke;
  v8[3] = &__block_descriptor_33_e28_v32__0__PUPhotoView_8Q16_B24l;
  v9 = v6;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __31__PUStackView__updateHighlight__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentHelper];
  [v3 setHighlighted:*(a1 + 32)];
}

- (void)_updateBackgroundView
{
  v3 = [(PUStackView *)self style];
  v4 = [(PUStackView *)self _backgroundView];
  if (v3 == 4)
  {
    v7 = v4;
    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PUStackView *)self bounds];
      v7 = [v5 initWithFrame:?];
      [(PUStackView *)self insertSubview:v7 atIndex:0];
      [(PUStackView *)self _setBackgroundView:v7];
      [(PUStackView *)self _updateSubviewsOrdering];
    }

    v6 = [(PUStackView *)self gridBackgroundColor];
    [v7 setBackgroundColor:v6];
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v7 = v4;
    [v4 removeFromSuperview];
    [(PUStackView *)self _setBackgroundView:0];
  }
}

- (void)_updateNumberOfViews
{
  v3 = [objc_opt_class() maximumNumberOfVisibleItemsForStyle:{-[PUStackView style](self, "style")}];
  if (v3 != self->__numberOfViews)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->__photoViews];
    numberOfViews = self->__numberOfViews;
    v7 = v4 - numberOfViews;
    if (v4 > numberOfViews)
    {
      v8 = self + numberOfViews;
      v9 = self + 48 * numberOfViews;
      v16 = *(MEMORY[0x1E695EFD0] + 16);
      v17 = *MEMORY[0x1E695EFD0];
      v15 = *(MEMORY[0x1E695EFD0] + 32);
      do
      {
        v10 = [PUPhotoView alloc];
        [(PUStackView *)self bounds];
        v11 = [(PUPhotoView *)v10 initWithFrame:?];
        v12 = [(PUPhotoView *)v11 layer];
        [v12 setAllowsGroupOpacity:0];

        v13 = [(PUPhotoView *)v11 contentHelper];
        [v13 setFillMode:1];

        [(PUStackView *)self insertSubview:v11 atIndex:0];
        [(NSArray *)v5 addObject:v11];
        *(v9 + 408) = v17;
        *(v9 + 424) = v16;
        *(v9 + 440) = v15;
        v8[848] = 0;

        ++v8;
        v9 += 48;
        --v7;
      }

      while (v7);
    }

    self->__numberOfViews = v4;
    photoViews = self->__photoViews;
    self->__photoViews = v5;

    [(PUStackView *)self _updatePhotoViews];

    [(PUStackView *)self _updateSubviewsOrdering];
  }
}

- (void)prepareForReuse
{
  v3 = [(PUStackView *)self numberOfVisibleItems];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 0;
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      v8 = [(PUStackView *)self emptyPlaceholderImage];
      [(PUStackView *)self setImage:v8 forItemAtIndex:v5];

      [(PUStackView *)self setImageSize:v5 forItemAtIndex:v6, v7];
      [(PUStackView *)self setFeatureSpec:0 forItemAtIndex:v5];
      [(PUStackView *)self setCollectionTileLayoutTemplate:0 forItemAtIndex:v5];
      [(PUStackView *)self setTitleFontName:0 forItemAtIndex:v5];
      [(PUStackView *)self setTitle:0 forItemAtIndex:v5];
      [(PUStackView *)self setSubtitle:0 forItemAtIndex:v5++];
    }

    while (v4 != v5);
  }
}

- (id)newLayoutAttributesForVisbleItemsRelativeToView:(id)a3 maxCount:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(PUStackView *)self numberOfVisibleItems];
  if (v8 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [(PUStackView *)self newLayoutAttributesForItemAtIndex:i relativeToView:v6];
      [v7 addObject:v11];
    }
  }

  return v7;
}

- (id)newLayoutAttributesForItemAtIndex:(int64_t)a3 relativeToView:(id)a4
{
  v6 = MEMORY[0x1E69DC858];
  v7 = MEMORY[0x1E696AC88];
  v8 = a4;
  v9 = [v7 indexPathForItem:a3 inSection:0];
  v10 = [v6 layoutAttributesForCellWithIndexPath:v9];

  v21 = 0.0;
  v22 = 0.0;
  v19 = 0u;
  v20 = 0u;
  [(PUStackView *)self _getCenter:&v21 bounds:&v19 forPhotoViewAtIndex:a3];
  [(PUStackView *)self convertPoint:v8 toView:v21, v22];
  v12 = v11;
  v14 = v13;

  v21 = v12;
  v22 = v14;
  [v10 setCenter:{v12, v14}];
  [v10 setSize:v20];
  v15 = &self->_transforms[a3];
  v16 = *&v15->c;
  v18[0] = *&v15->a;
  v18[1] = v16;
  v18[2] = *&v15->tx;
  [v10 setTransform:v18];
  [v10 setZIndex:{-[PUStackView numberOfVisibleItems](self, "numberOfVisibleItems") + ~a3}];
  return v10;
}

- (void)setEmpty:(BOOL)a3
{
  if (self->_empty != a3)
  {
    self->_empty = a3;
    if (a3)
    {
      v4 = [(PUStackView *)self numberOfVisibleItems];
      if (v4 >= 1)
      {
        v5 = v4;
        for (i = 0; i != v5; ++i)
        {
          [(PUStackView *)self setImage:0 forItemAtIndex:i];
        }
      }

      [(PUStackView *)self _rebuildDecorationVariants];
    }
  }
}

- (void)setEmptyPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_emptyPlaceholderImage != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_emptyPlaceholderImage, a3);
    [(UIImage *)v16 size];
    v7 = v6;
    v9 = v8;
    v10 = [(PUStackView *)self numberOfVisibleItems];
    if (v10 >= 1)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        [(PUStackView *)self setImage:v16 forItemAtIndex:i];
        [(PUStackView *)self setImageSize:i forItemAtIndex:v7, v9];
        v13 = [(PUStackView *)self _photoViews];
        v14 = [v13 objectAtIndex:i];

        v15 = [v14 contentHelper];
        [v15 setFillMode:0];
      }
    }

    v5 = [(PUStackView *)self _rebuildDecorationVariants];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (BOOL)wouldCoverAllItemsInStackView:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v34 = v4;
  v6 = [v4 _photoViews];
  v7 = [v5 initWithArray:v6];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(PUStackView *)self _photoViews];
  v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = [v7 copy];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v36 + 1) + 8 * j);
              [v12 frame];
              v21 = v20;
              v23 = v22;
              v25 = v24;
              v27 = v26;
              [v19 frame];
              v48.origin.x = v28;
              v48.origin.y = v29;
              v48.size.width = v30;
              v48.size.height = v31;
              v47.origin.x = v21;
              v47.origin.y = v23;
              v47.size.width = v25;
              v47.size.height = v27;
              if (CGRectContainsRect(v47, v48))
              {
                [v7 removeObject:v19];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v16);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v9);
  }

  v32 = [v7 count] == 0;
  return v32;
}

- (CGPoint)topLeftCornerOfFrontStackItem
{
  if ([(PUStackView *)self style]== 4)
  {

    [(PUStackView *)self _getStackFrame];
  }

  else
  {
    v5 = [(PUStackView *)self newLayoutAttributesForItemAtIndex:0 relativeToView:self];
    [v5 frame];
    v11 = CGRectIntegral(v10);
    x = v11.origin.x;
    y = v11.origin.y;

    v3 = x;
    v4 = y;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGRect)rectOfStackItemAtIndex:(int64_t)a3 inCoordinateSpace:(id)a4
{
  v6 = a4;
  v7 = [(PUStackView *)self _photoViews];
  if ([v7 count] <= a3)
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
    [v8 bounds];
    [v8 convertRect:v6 toCoordinateSpace:?];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(PUStackView *)self _updateHighlight];
  }
}

- (void)setCornerOverlaysDisabled:(BOOL)a3
{
  if (self->_cornerOverlaysDisabled != a3)
  {
    self->_cornerOverlaysDisabled = a3;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setHasRoundedCorners:(BOOL)a3 withCornersBackgroundColor:(id)a4
{
  v5 = a3;
  v7 = a4;
  if (self->_hasRoundedCorners != v5 || self->_cornersBackgroundColor != v7)
  {
    self->_hasRoundedCorners = v5;
    v8 = v7;
    objc_storeStrong(&self->_cornersBackgroundColor, a4);
    [(PUStackView *)self _updatePhotoViews];
    v7 = v8;
  }
}

- (double)cornerRadius
{
  if (![(PUStackView *)self hasRoundedCorners])
  {
    return 0.0;
  }

  if ([(PUStackView *)self style]== 3)
  {

    [(PUStackView *)self posterSubitemCornerRadius];
  }

  else
  {

    [(PUStackView *)self posterSquareCornerRadius];
  }

  return result;
}

- (void)setBadgeInfo:(PXAssetBadgeInfo *)a3 style:(int64_t)a4 forItemAtIndex:(int64_t)a5
{
  v8 = [(PUStackView *)self _photoViews];
  v9 = [v8 objectAtIndex:a5];

  v10 = [v9 contentHelper];
  v11 = *&a3->count;
  v12[0] = *&a3->badges;
  v12[1] = v11;
  [v10 setBadgeInfo:v12];
  [v10 setBadgeStyle:a4];
}

- (void)setBadgeInfo:(PXAssetBadgeInfo *)a3 forItemAtIndex:(int64_t)a4
{
  v4 = *&a3->count;
  v5[0] = *&a3->badges;
  v5[1] = v4;
  [(PUStackView *)self setBadgeInfo:v5 style:1 forItemAtIndex:a4];
}

- (void)setImageHidden:(BOOL)a3 forItemAtIndex:(int64_t)a4
{
  if (a4 <= 8 && self->_imageHidden[a4] != a3)
  {
    self->_imageHidden[a4] = a3;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setItemAlpha:(double)a3
{
  if (self->_itemAlpha != a3)
  {
    self->_itemAlpha = a3;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4
{
  v9 = a3;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v6 = [(PUStackView *)self _photoViews];
    v7 = [v6 objectAtIndexedSubscript:a4];
    v8 = [v7 contentHelper];

    [v8 setPhotoImage:v9];
    [v8 setFillMode:self->_emptyPlaceholderImage != v9];
  }
}

- (void)setImageSize:(CGSize)a3 forItemAtIndex:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if ([(PUStackView *)self _numberOfViews]> a4)
  {
    v8 = [(PUStackView *)self _imageSizes];
    [v8 replacePointerAtIndex:a4 withPointer:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGSize:", width, height)}];
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setNumberOfVisibleItems:(int64_t)a3
{
  if (self->_numberOfVisibleItems != a3)
  {
    self->_numberOfVisibleItems = a3;
    [(PUStackView *)self _rebuildDecorationVariants];

    [(PUStackView *)self _setNeedsDynamicLayout];
  }
}

- (void)setGridItemSpacing:(double)a3
{
  if (self->_gridItemSpacing != a3)
  {
    self->_gridItemSpacing = a3;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setGridMargin:(double)a3
{
  if (self->_gridMargin != a3)
  {
    self->_gridMargin = a3;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setGridBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_gridBackgroundColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_gridBackgroundColor, a3);
    if (self->_style == 3)
    {
      [(PUStackView *)self _updatePhotoViews];
    }

    else
    {
      [(PUStackView *)self _updateBackgroundView];
    }

    v5 = v6;
  }
}

- (void)setPosterSubitemCornerRadius:(double)a3
{
  if (self->_posterSubitemCornerRadius != a3)
  {
    self->_posterSubitemCornerRadius = a3;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setPosterSquareCornerRadius:(double)a3
{
  if (self->_posterSquareCornerRadius != a3)
  {
    self->_posterSquareCornerRadius = a3;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setContinuousCorners:(BOOL)a3
{
  if (self->_continuousCorners != a3)
  {
    self->_continuousCorners = a3;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setStackPerspectiveFactor:(CGPoint)a3
{
  v3 = fmax(a3.x, 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = fmax(a3.y, 0.0);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v3 != self->_stackPerspectiveFactor.x || v4 != self->_stackPerspectiveFactor.y)
  {
    self->_stackPerspectiveFactor.x = v3;
    self->_stackPerspectiveFactor.y = v4;
    [(PUStackView *)self _setNeedsDynamicLayout];
  }
}

- (void)setStackPerspectiveOffset:(UIOffset)a3
{
  if (a3.horizontal != self->_stackPerspectiveOffset.horizontal || a3.vertical != self->_stackPerspectiveOffset.vertical)
  {
    self->_stackPerspectiveOffset = a3;
    [(PUStackView *)self _setNeedsDynamicLayout];
  }
}

- (void)setStackOffset:(UIOffset)a3
{
  if (a3.horizontal != self->_stackOffset.horizontal || a3.vertical != self->_stackOffset.vertical)
  {
    self->_stackOffset = a3;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setStackPerspectiveInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_stackPerspectiveInsets.top), vceqq_f64(v4, *&self->_stackPerspectiveInsets.bottom)))) & 1) == 0)
  {
    self->_stackPerspectiveInsets = a3;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setStackSize:(CGSize)a3
{
  if (a3.width != self->_stackSize.width || a3.height != self->_stackSize.height)
  {
    self->_stackSize = a3;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setCombinesPhotoDecorations:(BOOL)a3
{
  if (self->_combinesPhotoDecorations != a3)
  {
    v12 = v3;
    self->_combinesPhotoDecorations = a3;
    combinedPhotoDecorationImageView = self->_combinedPhotoDecorationImageView;
    if (a3)
    {
      if (!combinedPhotoDecorationImageView)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        v10 = self->_combinedPhotoDecorationImageView;
        self->_combinedPhotoDecorationImageView = v9;

        [(PUStackView *)self addSubview:self->_combinedPhotoDecorationImageView];
      }
    }

    else if (combinedPhotoDecorationImageView)
    {
      [(UIImageView *)combinedPhotoDecorationImageView removeFromSuperview];
      v11 = self->_combinedPhotoDecorationImageView;
      self->_combinedPhotoDecorationImageView = 0;
    }

    [(PUStackView *)self _updatePhotoViews:v4];

    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setPhotoDecoration:(id)a3
{
  v5 = a3;
  if (self->_photoDecoration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_photoDecoration, a3);
    [(PUStackView *)self _rebuildDecorationVariants];
    [(PUStackView *)self _setNeedsDynamicLayout];
    v5 = v6;
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PUStackView *)self _updateBackgroundView];
    [(PUStackView *)self _updateNumberOfViews];
    [(PUStackView *)self _rebuildDecorationVariants];
    [(PUStackView *)self _setNeedsDynamicLayout];

    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUStackView;
  v4 = a3;
  [(PUStackView *)&v7 traitCollectionDidChange:v4];
  v5 = [(PUStackView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:v4];

  if (v6)
  {
    [(PUStackView *)self _rebuildDecorationVariants];
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = PUStackView;
  [(PUStackView *)&v10 layoutSubviews];
  v3 = [(PUStackView *)self _backgroundView];
  if (v3)
  {
    [(PUStackView *)self _getStackFrame];
    [v3 setFrame:?];
  }

  v4 = [(PUStackView *)self numberOfVisibleItems];
  v5 = v4;
  if (self->_needsDynamicLayout)
  {
    self->_needsDynamicLayout = 0;
    if (v4)
    {
      [(PUStackView *)self _updateDynamicLayout];
    }
  }

  v6 = [(PUStackView *)self _photoViews];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__PUStackView_layoutSubviews__block_invoke;
  v9[3] = &unk_1E7B7E290;
  v9[4] = self;
  v9[5] = v5;
  [v6 enumerateObjectsUsingBlock:v9];

  if (self->_combinedPhotoDecorationImageView)
  {
    v7 = [(PUStackView *)self _combinedPhotoDecorationsImage];
    [(UIImageView *)self->_combinedPhotoDecorationImageView setImage:v7];
    combinedPhotoDecorationImageView = self->_combinedPhotoDecorationImageView;
    [(PUStackView *)self bounds];
    [(UIImageView *)combinedPhotoDecorationImageView setFrame:?];
  }
}

void __29__PUStackView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) <= a3)
  {
    v9 = 1;
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
    v14 = 0u;
    v15 = 0u;
    [*(a1 + 32) _getCenter:&v16 bounds:&v14 forPhotoViewAtIndex:a3];
    [v5 setCenter:{v16, v17}];
    [v5 setBounds:{v14, v15}];
    v6 = (*(a1 + 32) + 408 + 48 * a3);
    v7 = v6[1];
    v11 = *v6;
    v12 = v7;
    v13 = v6[2];
    v8 = [v5 layer];
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    [v8 setAffineTransform:v10];

    v9 = 0;
  }

  [v5 setHidden:v9 | *(*(a1 + 32) + 848 + a3)];
}

- (PUStackView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = PUStackView;
  v3 = [(PUStackView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
    [(NSPointerArray *)v4 setCount:9];
    imageSizes = v3->__imageSizes;
    v3->__imageSizes = v4;

    v3->_itemAlpha = 1.0;
    v3->_continuousCorners = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v3->_stackPerspectiveFactor = _Q0;
    [(PUStackView *)v3 _updateBackgroundView];
    [(PUStackView *)v3 _updateNumberOfViews];
  }

  return v3;
}

+ (int64_t)maximumNumberOfVisibleItemsForStyle:(unint64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D708[a3];
  }
}

@end