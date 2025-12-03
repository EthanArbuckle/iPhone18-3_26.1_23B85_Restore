@interface PUStackView
+ (int64_t)maximumNumberOfVisibleItemsForStyle:(unint64_t)style;
- (BOOL)wouldCoverAllItemsInStackView:(id)view;
- (CGPoint)stackPerspectiveFactor;
- (CGPoint)topLeftCornerOfFrontStackItem;
- (CGRect)_getStackFrame;
- (CGRect)rectOfStackItemAtIndex:(int64_t)index inCoordinateSpace:(id)space;
- (CGSize)stackSize;
- (PUStackView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)stackPerspectiveInsets;
- (UIOffset)stackOffset;
- (UIOffset)stackPerspectiveOffset;
- (double)cornerRadius;
- (id)_combinedPhotoDecorationsImage;
- (id)newLayoutAttributesForItemAtIndex:(int64_t)index relativeToView:(id)view;
- (id)newLayoutAttributesForVisbleItemsRelativeToView:(id)view maxCount:(int64_t)count;
- (void)_getCenter:(CGPoint *)center bounds:(CGRect *)bounds forPhotoViewAtIndex:(int64_t)index;
- (void)_rebuildDecorationVariants;
- (void)_updateBackgroundView;
- (void)_updateDynamicLayout;
- (void)_updateHighlight;
- (void)_updateNumberOfViews;
- (void)_updatePhotoViews;
- (void)_updateSubviewsOrdering;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)info forItemAtIndex:(int64_t)index;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)info style:(int64_t)style forItemAtIndex:(int64_t)index;
- (void)setCollectionTileLayoutTemplate:(id)template forItemAtIndex:(int64_t)index;
- (void)setCombinesPhotoDecorations:(BOOL)decorations;
- (void)setContinuousCorners:(BOOL)corners;
- (void)setCornerOverlaysDisabled:(BOOL)disabled;
- (void)setEmpty:(BOOL)empty;
- (void)setEmptyPlaceholderImage:(id)image;
- (void)setFeatureSpec:(id)spec forItemAtIndex:(int64_t)index;
- (void)setGridBackgroundColor:(id)color;
- (void)setGridItemSpacing:(double)spacing;
- (void)setGridMargin:(double)margin;
- (void)setHasRoundedCorners:(BOOL)corners withCornersBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image forItemAtIndex:(int64_t)index;
- (void)setImageHidden:(BOOL)hidden forItemAtIndex:(int64_t)index;
- (void)setImageSize:(CGSize)size forItemAtIndex:(int64_t)index;
- (void)setItemAlpha:(double)alpha;
- (void)setNumberOfVisibleItems:(int64_t)items;
- (void)setPhotoDecoration:(id)decoration;
- (void)setPosterSquareCornerRadius:(double)radius;
- (void)setPosterSubitemCornerRadius:(double)radius;
- (void)setStackOffset:(UIOffset)offset;
- (void)setStackPerspectiveFactor:(CGPoint)factor;
- (void)setStackPerspectiveInsets:(UIEdgeInsets)insets;
- (void)setStackPerspectiveOffset:(UIOffset)offset;
- (void)setStackSize:(CGSize)size;
- (void)setStyle:(unint64_t)style;
- (void)setSubtitle:(id)subtitle forItemAtIndex:(int64_t)index;
- (void)setTitle:(id)title forItemAtIndex:(int64_t)index;
- (void)setTitleFontName:(id)name forItemAtIndex:(int64_t)index;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setSubtitle:(id)subtitle forItemAtIndex:(int64_t)index
{
  subtitleCopy = subtitle;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _photoViews = [(PUStackView *)self _photoViews];
    v7 = [_photoViews objectAtIndex:index];

    contentHelper = [v7 contentHelper];
    [contentHelper setSubtitle:subtitleCopy];
  }
}

- (void)setTitle:(id)title forItemAtIndex:(int64_t)index
{
  titleCopy = title;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _photoViews = [(PUStackView *)self _photoViews];
    v7 = [_photoViews objectAtIndex:index];

    contentHelper = [v7 contentHelper];
    [contentHelper setTitle:titleCopy];
  }
}

- (void)setTitleFontName:(id)name forItemAtIndex:(int64_t)index
{
  nameCopy = name;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _photoViews = [(PUStackView *)self _photoViews];
    v7 = [_photoViews objectAtIndex:index];

    contentHelper = [v7 contentHelper];
    [contentHelper setTitleFontName:nameCopy];
  }
}

- (void)setCollectionTileLayoutTemplate:(id)template forItemAtIndex:(int64_t)index
{
  templateCopy = template;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _photoViews = [(PUStackView *)self _photoViews];
    v7 = [_photoViews objectAtIndex:index];

    contentHelper = [v7 contentHelper];
    [contentHelper setCollectionTileLayoutTemplate:templateCopy];
  }
}

- (void)setFeatureSpec:(id)spec forItemAtIndex:(int64_t)index
{
  specCopy = spec;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _photoViews = [(PUStackView *)self _photoViews];
    v7 = [_photoViews objectAtIndex:index];

    contentHelper = [v7 contentHelper];
    [contentHelper setFeatureSpec:specCopy];
  }
}

- (void)_updateDynamicLayout
{
  numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
  if ([(PUStackView *)self style]== 4 || [(PUStackView *)self style]== 3)
  {
    if (numberOfVisibleItems >= 1)
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
        --numberOfVisibleItems;
      }

      while (numberOfVisibleItems);
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

    if (numberOfVisibleItems >= 1)
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

      while (numberOfVisibleItems != v19);
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

  _photoDecorationVariants = [(PUStackView *)self _photoDecorationVariants];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v4 = [_photoDecorationVariants countByEnumeratingWithState:&v78 objects:v82 count:16];
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
          objc_enumerationMutation(_photoDecorationVariants);
        }

        v7 = [*(*(&v78 + 1) + 8 * i) hash] ^ (1319 * v7);
      }

      v5 = [_photoDecorationVariants countByEnumeratingWithState:&v78 objects:v82 count:16];
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

  if (!v11 && _photoDecorationVariants)
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
    numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
    _numberOfViews = [(PUStackView *)self _numberOfViews];
    if (_numberOfViews >= 1)
    {
      v23 = _numberOfViews;
      v24 = 0;
      v25 = &OBJC_IVAR___PUSessionInfo__promptLocation;
      selfCopy = self;
      v66 = 1.0 / v19;
      v67 = _numberOfViews;
      v68 = numberOfVisibleItems;
      do
      {
        v77[0] = 0;
        v77[1] = 0;
        v75 = 0u;
        v76 = 0u;
        [(PUStackView *)self _getCenter:v77 bounds:&v75 forPhotoViewAtIndex:v24];
        v27 = (selfCopy + v25[153]);
        v28 = v27[1];
        *&v74.a = *v27;
        *&v74.c = v28;
        *&v74.tx = v27[2];
        UIRectCenteredAboutPoint();
        v73 = v74;
        v87 = CGRectApplyAffineTransform(v86, &v73);
        if (v24 < numberOfVisibleItems)
        {
          x = v87.origin.x;
          y = v87.origin.y;
          if (![(PUStackView *)self isImageHiddenForItemAtIndex:v24])
          {
            _photoViews = [(PUStackView *)self _photoViews];
            v32 = [_photoViews objectAtIndex:v24];

            contentHelper = [v32 contentHelper];
            [contentHelper imageContentFrameForBounds:{v75, v76}];
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
            contentHelper2 = [v32 contentHelper];
            [contentHelper2 photoDecorationBorderViewFrameForImageContentFrame:{v42, v43, width, height}];
            v48 = v47;
            v50 = v49;
            v52 = v51;
            v54 = v53;

            v55 = [_photoDecorationVariants objectAtIndex:v24];
            foregroundColor = [v55 foregroundColor];
            cGColor = [foregroundColor CGColor];

            if (cGColor && CGColorGetAlpha(cGColor) > 0.0)
            {
              CGContextSetFillColorWithColor(CurrentContext, cGColor);
              v90.origin.x = v42;
              v90.origin.y = v43;
              v90.size.width = width;
              v90.size.height = height;
              CGContextFillRect(CurrentContext, v90);
            }

            v58 = v52 - v66;
            borderColor = [v55 borderColor];
            cGColor2 = [borderColor CGColor];

            if (cGColor2 && CGColorGetAlpha(cGColor2) > 0.0)
            {
              [v55 borderWidth];
              v62 = v61;
              CGContextSetStrokeColorWithColor(CurrentContext, cGColor2);
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
            numberOfVisibleItems = v68;
            v25 = &OBJC_IVAR___PUSessionInfo__promptLocation;
          }
        }

        ++v24;
        selfCopy = (selfCopy + 48);
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

- (void)_getCenter:(CGPoint *)center bounds:(CGRect *)bounds forPhotoViewAtIndex:(int64_t)index
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
  effectiveUserInterfaceLayoutDirection = [(PUStackView *)self effectiveUserInterfaceLayoutDirection];
  style = [(PUStackView *)self style];
  v28 = style;
  if (style > 2)
  {
    if ((style - 3) < 2)
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
      v36 = index / v34;
      v37 = index % v34;
      if (effectiveUserInterfaceLayoutDirection)
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

    if (style != 6)
    {
      goto LABEL_20;
    }

    numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
    if (numberOfVisibleItems < [objc_opt_class() maximumNumberOfVisibleItemsForStyle:6])
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
    if (index == 2)
    {
      v65 = height;
      v21 = v75;
      v66 = rect;
      if (effectiveUserInterfaceLayoutDirection)
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
    if (index == 1)
    {
      if (!effectiveUserInterfaceLayoutDirection)
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
      if (index)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUStackView.m" lineNumber:731 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v15 = v15 + v15;
      v17 = height;
      v47 = rect;
      if (effectiveUserInterfaceLayoutDirection)
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

  if (style == 1)
  {
    _imageSizes = [(PUStackView *)self _imageSizes];
    v52 = [_imageSizes pointerAtIndex:index];

    [v52 CGSizeValue];
    v11 = PURectWithSizeThatFitsInRect(v53, v54, v11, y, v15, v17);
    y = v55;
    v15 = v56;
    v17 = v57;
  }

  else if (style == 2)
  {
    v11 = PURectWithSizeThatFitsInRect(1.0, 0.850000024, v11, y, v15, v17);
    y = v38;
    v15 = v39;
    v17 = v40;
  }

LABEL_20:
  PURoundRectToPixel(v11 + v21 * index, y + v19 * index, v15 - (v21 * index + v25 * index), v17 - (v19 * index + v23 * index));
  v60 = v59;
  v62 = v61;
  if (center)
  {
    UIRectGetCenter();
    center->x = v63;
    center->y = v64;
  }

  if (bounds)
  {
    bounds->origin.x = 0.0;
    bounds->origin.y = 0.0;
    bounds->size.width = v60;
    bounds->size.height = v62;
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
  photoDecoration = [(PUStackView *)self photoDecoration];
  numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
  if ([(PUStackView *)self style]== 4 || [(PUStackView *)self style]== 3)
  {
    v4 = 0;
  }

  else
  {
    emptyPlaceholderImage = [(PUStackView *)self emptyPlaceholderImage];

    if (emptyPlaceholderImage)
    {
      [photoDecoration photoDecorationVariantsWithIncreasingBorderBrightness:numberOfVisibleItems];
    }

    else
    {
      [photoDecoration photoDecorationVariantsWithIncreasingAlpha:numberOfVisibleItems];
    }
    v4 = ;
  }

  [(PUStackView *)self _setPhotoDecorationVariants:v4];
  if (numberOfVisibleItems >= 1)
  {
    for (i = 0; i != numberOfVisibleItems; ++i)
    {
      if (v4)
      {
        v7 = [v4 objectAtIndex:i];
      }

      else
      {
        v7 = 0;
      }

      _photoViews = [(PUStackView *)self _photoViews];
      v9 = [_photoViews objectAtIndex:i];

      contentHelper = [v9 contentHelper];
      [contentHelper setPhotoDecoration:v7];
    }
  }
}

- (void)_updatePhotoViews
{
  if ([(PUStackView *)self style]== 5 || [(PUStackView *)self style]== 3 || ![(PUStackView *)self style])
  {
    gridBackgroundColor = [(PUStackView *)self gridBackgroundColor];
  }

  else
  {
    gridBackgroundColor = 0;
  }

  [(PUStackView *)self cornerRadius];
  v6 = v5;
  cornersBackgroundColor = [(PUStackView *)self cornersBackgroundColor];
  [(PUStackView *)self itemAlpha];
  v9 = v8;
  combinesPhotoDecorations = [(PUStackView *)self combinesPhotoDecorations];
  v11 = [(PUStackView *)self effectiveUserInterfaceLayoutDirection]== 0;
  _photoViews = [(PUStackView *)self _photoViews];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__PUStackView__updatePhotoViews__block_invoke;
  v15[3] = &unk_1E7B7E2D8;
  v21 = v11;
  v22 = combinesPhotoDecorations;
  v15[4] = self;
  v16 = cornersBackgroundColor;
  v17 = gridBackgroundColor;
  v18 = a2;
  v19 = v6;
  v20 = v9;
  v13 = gridBackgroundColor;
  v14 = cornersBackgroundColor;
  [_photoViews enumerateObjectsUsingBlock:v15];
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
  _backgroundView = [(PUStackView *)self _backgroundView];
  v4 = _backgroundView;
  if (_backgroundView)
  {
    v5 = _backgroundView;
    _backgroundView = [(PUStackView *)self sendSubviewToBack:_backgroundView];
    v4 = v5;
  }

  MEMORY[0x1EEE66BB8](_backgroundView, v4);
}

- (void)_updateHighlight
{
  isHighlighted = [(PUStackView *)self isHighlighted];
  style = [(PUStackView *)self style];
  v5 = 0x68u >> style;
  if (style > 6)
  {
    LOBYTE(v5) = 0;
  }

  if (!isHighlighted)
  {
    LOBYTE(v5) = 0;
  }

  v6 = v5 & 1;
  _photoViews = [(PUStackView *)self _photoViews];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__PUStackView__updateHighlight__block_invoke;
  v8[3] = &__block_descriptor_33_e28_v32__0__PUPhotoView_8Q16_B24l;
  v9 = v6;
  [_photoViews enumerateObjectsUsingBlock:v8];
}

void __31__PUStackView__updateHighlight__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentHelper];
  [v3 setHighlighted:*(a1 + 32)];
}

- (void)_updateBackgroundView
{
  style = [(PUStackView *)self style];
  _backgroundView = [(PUStackView *)self _backgroundView];
  if (style == 4)
  {
    v7 = _backgroundView;
    if (!_backgroundView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(PUStackView *)self bounds];
      v7 = [v5 initWithFrame:?];
      [(PUStackView *)self insertSubview:v7 atIndex:0];
      [(PUStackView *)self _setBackgroundView:v7];
      [(PUStackView *)self _updateSubviewsOrdering];
    }

    gridBackgroundColor = [(PUStackView *)self gridBackgroundColor];
    [v7 setBackgroundColor:gridBackgroundColor];
  }

  else
  {
    if (!_backgroundView)
    {
      return;
    }

    v7 = _backgroundView;
    [_backgroundView removeFromSuperview];
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
        layer = [(PUPhotoView *)v11 layer];
        [layer setAllowsGroupOpacity:0];

        contentHelper = [(PUPhotoView *)v11 contentHelper];
        [contentHelper setFillMode:1];

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
  numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
  if (numberOfVisibleItems >= 1)
  {
    v4 = numberOfVisibleItems;
    v5 = 0;
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      emptyPlaceholderImage = [(PUStackView *)self emptyPlaceholderImage];
      [(PUStackView *)self setImage:emptyPlaceholderImage forItemAtIndex:v5];

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

- (id)newLayoutAttributesForVisbleItemsRelativeToView:(id)view maxCount:(int64_t)count
{
  viewCopy = view;
  array = [MEMORY[0x1E695DF70] array];
  numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
  if (numberOfVisibleItems >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = numberOfVisibleItems;
  }

  if (countCopy >= 1)
  {
    for (i = 0; i != countCopy; ++i)
    {
      v11 = [(PUStackView *)self newLayoutAttributesForItemAtIndex:i relativeToView:viewCopy];
      [array addObject:v11];
    }
  }

  return array;
}

- (id)newLayoutAttributesForItemAtIndex:(int64_t)index relativeToView:(id)view
{
  v6 = MEMORY[0x1E69DC858];
  v7 = MEMORY[0x1E696AC88];
  viewCopy = view;
  v9 = [v7 indexPathForItem:index inSection:0];
  v10 = [v6 layoutAttributesForCellWithIndexPath:v9];

  v21 = 0.0;
  v22 = 0.0;
  v19 = 0u;
  v20 = 0u;
  [(PUStackView *)self _getCenter:&v21 bounds:&v19 forPhotoViewAtIndex:index];
  [(PUStackView *)self convertPoint:viewCopy toView:v21, v22];
  v12 = v11;
  v14 = v13;

  v21 = v12;
  v22 = v14;
  [v10 setCenter:{v12, v14}];
  [v10 setSize:v20];
  v15 = &self->_transforms[index];
  v16 = *&v15->c;
  v18[0] = *&v15->a;
  v18[1] = v16;
  v18[2] = *&v15->tx;
  [v10 setTransform:v18];
  [v10 setZIndex:{-[PUStackView numberOfVisibleItems](self, "numberOfVisibleItems") + ~index}];
  return v10;
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_empty != empty)
  {
    self->_empty = empty;
    if (empty)
    {
      numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
      if (numberOfVisibleItems >= 1)
      {
        v5 = numberOfVisibleItems;
        for (i = 0; i != v5; ++i)
        {
          [(PUStackView *)self setImage:0 forItemAtIndex:i];
        }
      }

      [(PUStackView *)self _rebuildDecorationVariants];
    }
  }
}

- (void)setEmptyPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_emptyPlaceholderImage != imageCopy)
  {
    v16 = imageCopy;
    objc_storeStrong(&self->_emptyPlaceholderImage, image);
    [(UIImage *)v16 size];
    v7 = v6;
    v9 = v8;
    numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
    if (numberOfVisibleItems >= 1)
    {
      v11 = numberOfVisibleItems;
      for (i = 0; i != v11; ++i)
      {
        [(PUStackView *)self setImage:v16 forItemAtIndex:i];
        [(PUStackView *)self setImageSize:i forItemAtIndex:v7, v9];
        _photoViews = [(PUStackView *)self _photoViews];
        v14 = [_photoViews objectAtIndex:i];

        contentHelper = [v14 contentHelper];
        [contentHelper setFillMode:0];
      }
    }

    imageCopy = [(PUStackView *)self _rebuildDecorationVariants];
  }

  MEMORY[0x1EEE66BE0](imageCopy);
}

- (BOOL)wouldCoverAllItemsInStackView:(id)view
{
  v46 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = objc_alloc(MEMORY[0x1E695DFA8]);
  v34 = viewCopy;
  _photoViews = [viewCopy _photoViews];
  v7 = [v5 initWithArray:_photoViews];

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

- (CGRect)rectOfStackItemAtIndex:(int64_t)index inCoordinateSpace:(id)space
{
  spaceCopy = space;
  _photoViews = [(PUStackView *)self _photoViews];
  if ([_photoViews count] <= index)
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v8 = [_photoViews objectAtIndexedSubscript:index];
    [v8 bounds];
    [v8 convertRect:spaceCopy toCoordinateSpace:?];
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

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(PUStackView *)self _updateHighlight];
  }
}

- (void)setCornerOverlaysDisabled:(BOOL)disabled
{
  if (self->_cornerOverlaysDisabled != disabled)
  {
    self->_cornerOverlaysDisabled = disabled;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setHasRoundedCorners:(BOOL)corners withCornersBackgroundColor:(id)color
{
  cornersCopy = corners;
  colorCopy = color;
  if (self->_hasRoundedCorners != cornersCopy || self->_cornersBackgroundColor != colorCopy)
  {
    self->_hasRoundedCorners = cornersCopy;
    v8 = colorCopy;
    objc_storeStrong(&self->_cornersBackgroundColor, color);
    [(PUStackView *)self _updatePhotoViews];
    colorCopy = v8;
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

- (void)setBadgeInfo:(PXAssetBadgeInfo *)info style:(int64_t)style forItemAtIndex:(int64_t)index
{
  _photoViews = [(PUStackView *)self _photoViews];
  v9 = [_photoViews objectAtIndex:index];

  contentHelper = [v9 contentHelper];
  v11 = *&info->count;
  v12[0] = *&info->badges;
  v12[1] = v11;
  [contentHelper setBadgeInfo:v12];
  [contentHelper setBadgeStyle:style];
}

- (void)setBadgeInfo:(PXAssetBadgeInfo *)info forItemAtIndex:(int64_t)index
{
  v4 = *&info->count;
  v5[0] = *&info->badges;
  v5[1] = v4;
  [(PUStackView *)self setBadgeInfo:v5 style:1 forItemAtIndex:index];
}

- (void)setImageHidden:(BOOL)hidden forItemAtIndex:(int64_t)index
{
  if (index <= 8 && self->_imageHidden[index] != hidden)
  {
    self->_imageHidden[index] = hidden;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setItemAlpha:(double)alpha
{
  if (self->_itemAlpha != alpha)
  {
    self->_itemAlpha = alpha;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setImage:(id)image forItemAtIndex:(int64_t)index
{
  imageCopy = image;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _photoViews = [(PUStackView *)self _photoViews];
    v7 = [_photoViews objectAtIndexedSubscript:index];
    contentHelper = [v7 contentHelper];

    [contentHelper setPhotoImage:imageCopy];
    [contentHelper setFillMode:self->_emptyPlaceholderImage != imageCopy];
  }
}

- (void)setImageSize:(CGSize)size forItemAtIndex:(int64_t)index
{
  height = size.height;
  width = size.width;
  if ([(PUStackView *)self _numberOfViews]> index)
  {
    _imageSizes = [(PUStackView *)self _imageSizes];
    [_imageSizes replacePointerAtIndex:index withPointer:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGSize:", width, height)}];
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setNumberOfVisibleItems:(int64_t)items
{
  if (self->_numberOfVisibleItems != items)
  {
    self->_numberOfVisibleItems = items;
    [(PUStackView *)self _rebuildDecorationVariants];

    [(PUStackView *)self _setNeedsDynamicLayout];
  }
}

- (void)setGridItemSpacing:(double)spacing
{
  if (self->_gridItemSpacing != spacing)
  {
    self->_gridItemSpacing = spacing;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setGridMargin:(double)margin
{
  if (self->_gridMargin != margin)
  {
    self->_gridMargin = margin;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setGridBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_gridBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_gridBackgroundColor, color);
    if (self->_style == 3)
    {
      [(PUStackView *)self _updatePhotoViews];
    }

    else
    {
      [(PUStackView *)self _updateBackgroundView];
    }

    colorCopy = v6;
  }
}

- (void)setPosterSubitemCornerRadius:(double)radius
{
  if (self->_posterSubitemCornerRadius != radius)
  {
    self->_posterSubitemCornerRadius = radius;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setPosterSquareCornerRadius:(double)radius
{
  if (self->_posterSquareCornerRadius != radius)
  {
    self->_posterSquareCornerRadius = radius;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setContinuousCorners:(BOOL)corners
{
  if (self->_continuousCorners != corners)
  {
    self->_continuousCorners = corners;
    [(PUStackView *)self _updatePhotoViews];
  }
}

- (void)setStackPerspectiveFactor:(CGPoint)factor
{
  v3 = fmax(factor.x, 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = fmax(factor.y, 0.0);
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

- (void)setStackPerspectiveOffset:(UIOffset)offset
{
  if (offset.horizontal != self->_stackPerspectiveOffset.horizontal || offset.vertical != self->_stackPerspectiveOffset.vertical)
  {
    self->_stackPerspectiveOffset = offset;
    [(PUStackView *)self _setNeedsDynamicLayout];
  }
}

- (void)setStackOffset:(UIOffset)offset
{
  if (offset.horizontal != self->_stackOffset.horizontal || offset.vertical != self->_stackOffset.vertical)
  {
    self->_stackOffset = offset;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setStackPerspectiveInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_stackPerspectiveInsets.top), vceqq_f64(v4, *&self->_stackPerspectiveInsets.bottom)))) & 1) == 0)
  {
    self->_stackPerspectiveInsets = insets;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setStackSize:(CGSize)size
{
  if (size.width != self->_stackSize.width || size.height != self->_stackSize.height)
  {
    self->_stackSize = size;
    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)setCombinesPhotoDecorations:(BOOL)decorations
{
  if (self->_combinesPhotoDecorations != decorations)
  {
    v12 = v3;
    self->_combinesPhotoDecorations = decorations;
    combinedPhotoDecorationImageView = self->_combinedPhotoDecorationImageView;
    if (decorations)
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

- (void)setPhotoDecoration:(id)decoration
{
  decorationCopy = decoration;
  if (self->_photoDecoration != decorationCopy)
  {
    v6 = decorationCopy;
    objc_storeStrong(&self->_photoDecoration, decoration);
    [(PUStackView *)self _rebuildDecorationVariants];
    [(PUStackView *)self _setNeedsDynamicLayout];
    decorationCopy = v6;
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(PUStackView *)self _updateBackgroundView];
    [(PUStackView *)self _updateNumberOfViews];
    [(PUStackView *)self _rebuildDecorationVariants];
    [(PUStackView *)self _setNeedsDynamicLayout];

    [(PUStackView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = PUStackView;
  changeCopy = change;
  [(PUStackView *)&v7 traitCollectionDidChange:changeCopy];
  v5 = [(PUStackView *)self traitCollection:v7.receiver];
  v6 = [v5 hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

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
  _backgroundView = [(PUStackView *)self _backgroundView];
  if (_backgroundView)
  {
    [(PUStackView *)self _getStackFrame];
    [_backgroundView setFrame:?];
  }

  numberOfVisibleItems = [(PUStackView *)self numberOfVisibleItems];
  v5 = numberOfVisibleItems;
  if (self->_needsDynamicLayout)
  {
    self->_needsDynamicLayout = 0;
    if (numberOfVisibleItems)
    {
      [(PUStackView *)self _updateDynamicLayout];
    }
  }

  _photoViews = [(PUStackView *)self _photoViews];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__PUStackView_layoutSubviews__block_invoke;
  v9[3] = &unk_1E7B7E290;
  v9[4] = self;
  v9[5] = v5;
  [_photoViews enumerateObjectsUsingBlock:v9];

  if (self->_combinedPhotoDecorationImageView)
  {
    _combinedPhotoDecorationsImage = [(PUStackView *)self _combinedPhotoDecorationsImage];
    [(UIImageView *)self->_combinedPhotoDecorationImageView setImage:_combinedPhotoDecorationsImage];
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

- (PUStackView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PUStackView;
  v3 = [(PUStackView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    strongObjectsPointerArray = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
    [(NSPointerArray *)strongObjectsPointerArray setCount:9];
    imageSizes = v3->__imageSizes;
    v3->__imageSizes = strongObjectsPointerArray;

    v3->_itemAlpha = 1.0;
    v3->_continuousCorners = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v3->_stackPerspectiveFactor = _Q0;
    [(PUStackView *)v3 _updateBackgroundView];
    [(PUStackView *)v3 _updateNumberOfViews];
  }

  return v3;
}

+ (int64_t)maximumNumberOfVisibleItemsForStyle:(unint64_t)style
{
  if (style > 6)
  {
    return 0;
  }

  else
  {
    return qword_1B3D0D708[style];
  }
}

@end