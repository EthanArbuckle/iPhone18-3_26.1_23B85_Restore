@interface PUCollageView
- (CGSize)collageSize;
- (CGSize)imageSizeForItemAtIndex:(int64_t)index;
- (PUCollageView)initWithFrame:(CGRect)frame;
- (void)_updateImageViews;
- (void)_updateRoundedCornerOverlayView;
- (void)layoutSubviews;
- (void)setCollageSize:(CGSize)size;
- (void)setCornerRadius:(double)radius;
- (void)setHasRoundedCorners:(BOOL)corners withCornersBackgroundColor:(id)color;
- (void)setImage:(id)image forItemAtIndex:(int64_t)index;
- (void)setImageSize:(CGSize)size forItemAtIndex:(int64_t)index;
- (void)setNumberOfItems:(int64_t)items;
- (void)setSubitemCornerRadius:(double)radius;
@end

@implementation PUCollageView

- (CGSize)collageSize
{
  width = self->_collageSize.width;
  height = self->_collageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateRoundedCornerOverlayView
{
  if ([(PUCollageView *)self hasRoundedCorners])
  {
    numberOfItems = [(PUCollageView *)self numberOfItems];
    _roundedCornerOverlayView = [(PUCollageView *)self _roundedCornerOverlayView];
    _roundedCornerOverlayView2 = _roundedCornerOverlayView;
    if (numberOfItems == 1)
    {
      if (!_roundedCornerOverlayView)
      {
        v6 = objc_alloc(MEMORY[0x1E69C3978]);
        [(PUCollageView *)self bounds];
        _roundedCornerOverlayView2 = [v6 initWithFrame:?];
        [(PUCollageView *)self addSubview:_roundedCornerOverlayView2];
        [(PUCollageView *)self _setRoundedCornerOverlayView:_roundedCornerOverlayView2];
        [(PUCollageView *)self bringSubviewToFront:_roundedCornerOverlayView2];
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__PUCollageView__updateRoundedCornerOverlayView__block_invoke;
      v7[3] = &unk_1E7B7C3C0;
      v7[4] = self;
      [_roundedCornerOverlayView2 performChanges:v7];
      goto LABEL_9;
    }
  }

  else
  {
    _roundedCornerOverlayView2 = [(PUCollageView *)self _roundedCornerOverlayView];
  }

  if (!_roundedCornerOverlayView2)
  {
    return;
  }

  [_roundedCornerOverlayView2 removeFromSuperview];
  [(PUCollageView *)self _setRoundedCornerOverlayView:0];
LABEL_9:
}

void __48__PUCollageView__updateRoundedCornerOverlayView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 cornerRadius];
  [v5 setCornerRadius:?];
  v4 = [*(a1 + 32) cornersBackgroundColor];
  [v5 setOverlayColor:v4];

  if (PUMainScreenScale_onceToken != -1)
  {
    dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
  }

  [v5 setDisplayScale:*&PUMainScreenScale_screenScale];
}

- (void)_updateImageViews
{
  v26 = *MEMORY[0x1E69E9840];
  subitemCornerRadius = 0.0;
  if (self->_hasRoundedCorners && [(PUCollageView *)self numberOfItems]>= 2 && (subitemCornerRadius = self->_subitemCornerRadius, subitemCornerRadius > 0.0))
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    whiteColor = 0;
  }

  _imageViews = [(PUCollageView *)self _imageViews];
  firstObject = [_imageViews firstObject];
  if (firstObject)
  {
    v7 = firstObject;
    _imageViews2 = [(PUCollageView *)self _imageViews];
    firstObject2 = [_imageViews2 firstObject];
    layer = [firstObject2 layer];
    [layer cornerRadius];
    v12 = v11;

    if (v12 != subitemCornerRadius)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      _imageViews3 = [(PUCollageView *)self _imageViews];
      v14 = [_imageViews3 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(_imageViews3);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            layer2 = [v18 layer];
            [layer2 setCornerRadius:subitemCornerRadius];

            layer3 = [v18 layer];
            [layer3 setBackgroundColor:{objc_msgSend(whiteColor, "CGColor")}];
          }

          v15 = [_imageViews3 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }

  else
  {
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
    [(PUCollageView *)self _updateImageViews];
    [(PUCollageView *)self _updateRoundedCornerOverlayView];
    colorCopy = v8;
  }
}

- (void)setSubitemCornerRadius:(double)radius
{
  if (self->_subitemCornerRadius != radius)
  {
    self->_subitemCornerRadius = radius;
    [(PUCollageView *)self _updateImageViews];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PUCollageView *)self _updateRoundedCornerOverlayView];
  }
}

- (void)setImage:(id)image forItemAtIndex:(int64_t)index
{
  imageCopy = image;
  if ([(PUCollageView *)self _numberOfImageViews]> index)
  {
    _imageViews = [(PUCollageView *)self _imageViews];
    v7 = [_imageViews objectAtIndex:index];

    [v7 setImage:imageCopy];
  }
}

- (void)setImageSize:(CGSize)size forItemAtIndex:(int64_t)index
{
  height = size.height;
  width = size.width;
  if ([(PUCollageView *)self _numberOfImageViews]> index)
  {
    _imageSizes = [(PUCollageView *)self _imageSizes];
    [_imageSizes replacePointerAtIndex:index withPointer:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGSize:", width, height)}];
    [(PUCollageView *)self setNeedsLayout];
  }
}

- (CGSize)imageSizeForItemAtIndex:(int64_t)index
{
  if ([(PUCollageView *)self _numberOfImageViews]<= index)
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    _imageSizes = [(PUCollageView *)self _imageSizes];
    v6 = [_imageSizes pointerAtIndex:index];

    [v6 CGSizeValue];
    v8 = v7;
    v10 = v9;
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setNumberOfItems:(int64_t)items
{
  if (self->_numberOfItems != items)
  {
    self->_numberOfItems = items;
    [(PUCollageView *)self _updateImageViews];
    [(PUCollageView *)self _updateRoundedCornerOverlayView];

    [(PUCollageView *)self setNeedsLayout];
  }
}

- (void)setCollageSize:(CGSize)size
{
  if (size.width != self->_collageSize.width || size.height != self->_collageSize.height)
  {
    self->_collageSize = size;
    [(PUCollageView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v59 = *MEMORY[0x1E69E9840];
  [(PUCollageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUCollageView *)self collageSize];
  v12 = v11;
  v14 = v13;
  v61.origin.x = v4;
  v61.origin.y = v6;
  v61.size.width = v8;
  v61.size.height = v10;
  v15 = CGRectGetMidX(v61) + v12 * -0.5;
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  v16 = CGRectGetMidY(v62) + v14 * -0.5;
  _imageViews = [(PUCollageView *)self _imageViews];
  numberOfItems = [(PUCollageView *)self numberOfItems];
  maximumNumberOfItems = [objc_opt_class() maximumNumberOfItems];
  if (numberOfItems >= maximumNumberOfItems)
  {
    v19 = maximumNumberOfItems;
  }

  else
  {
    v19 = numberOfItems;
  }

  v20 = *(MEMORY[0x1E695F058] + 16);
  v53 = *MEMORY[0x1E695F058];
  v54 = v20;
  v55 = v53;
  v56 = v20;
  v57 = v53;
  v58 = v20;
  v21 = v15;
  *&v20 = v16;
  v22 = v12;
  v23 = v14;
  MinX = CGRectGetMinX(*(&v20 - 8));
  v63.origin.x = v15;
  v63.origin.y = v16;
  v63.size.width = v12;
  v63.size.height = v14;
  MinY = CGRectGetMinY(v63);
  v64.origin.x = v15;
  v64.origin.y = v16;
  v64.size.width = v12;
  v64.size.height = v14;
  CGRectGetMidX(v64);
  UIRoundToViewScale();
  v49 = v26;
  v65.origin.x = v15;
  v65.origin.y = v16;
  v65.size.width = v12;
  v65.size.height = v14;
  CGRectGetMidY(v65);
  UIRoundToViewScale();
  v28 = v27;
  v66.origin.x = v15;
  v66.origin.y = v16;
  v66.size.width = v12;
  v66.size.height = v14;
  MaxX = CGRectGetMaxX(v66);
  v67.origin.x = v15;
  v67.origin.y = v16;
  v67.size.width = v12;
  v67.size.height = v14;
  MaxY = CGRectGetMaxY(v67);
  [(PUCollageView *)self spacing];
  UIRoundToViewScale();
  v30 = v29;
  if (v19 < 3)
  {
    if (v19 == 2)
    {
      v31 = &v56 + 1;
      v32 = &v56;
      v33 = &v55 + 1;
      [(PUCollageView *)self imageSizeForItemAtIndex:0];
      *&v53 = MinX;
      *(&v53 + 1) = MinY;
      v36 = MaxY;
      if (v39 <= v38)
      {
        *&v54 = MaxY - MinX;
        *(&v54 + 1) = v28 - v30 - MinY;
        MinY = v28 + v30;
      }

      else
      {
        *&v54 = v49 - v30 - MinX;
        *(&v54 + 1) = MaxY - MinY;
        MinX = v49 + v30;
      }

      *&v55 = MinX;
      v37 = MaxX;
    }

    else
    {
      v32 = &v54;
      v31 = &v54 + 1;
      v33 = &v53 + 1;
      *&v53 = MinX;
      v36 = MaxY;
      v37 = MaxX;
    }
  }

  else
  {
    v31 = &v58 + 1;
    v32 = &v58;
    v33 = &v57 + 1;
    [(PUCollageView *)self imageSizeForItemAtIndex:0];
    *&v53 = MinX;
    *(&v53 + 1) = MinY;
    v36 = MaxY;
    if (v35 <= v34)
    {
      v37 = MaxX;
      *&v54 = MaxX - MinX;
      *(&v54 + 1) = v28 - v30 - MinY;
      MinY = v28 + v30;
      *&v55 = MinX;
      *(&v55 + 1) = v28 + v30;
      *&v56 = v49 - v30 - MinX;
      *(&v56 + 1) = MaxY - (v28 + v30);
      MinX = v49 + v30;
    }

    else
    {
      *&v54 = v49 - v30 - MinX;
      *(&v54 + 1) = MaxY - MinY;
      MinX = v49 + v30;
      v37 = MaxX;
      *&v55 = v49 + v30;
      *(&v55 + 1) = MinY;
      *&v56 = MaxX - (v49 + v30);
      *(&v56 + 1) = v28 - v30 - MinY;
      MinY = v28 + v30;
    }

    *&v57 = MinX;
  }

  *v33 = MinY;
  *v32 = v37 - MinX;
  *v31 = v36 - MinY;
  if ([(PUCollageView *)self _numberOfImageViews]>= 1)
  {
    v40 = 0;
    v41 = &v54;
    do
    {
      v42 = [_imageViews objectAtIndex:v40];
      v43 = *(v41 - 2);
      v44 = *(v41 - 1);
      v45 = *v41;
      v46 = v41[1];
      v41 += 4;
      [v42 setFrame:{v43, v44, v45, v46}];
      [v42 setHidden:v40 >= v19];

      ++v40;
    }

    while (v40 < [(PUCollageView *)self _numberOfImageViews]);
  }

  _roundedCornerOverlayView = [(PUCollageView *)self _roundedCornerOverlayView];
  v48 = _roundedCornerOverlayView;
  if (_roundedCornerOverlayView)
  {
    [_roundedCornerOverlayView setFrame:{v15, v16, v12, v14}];
  }
}

- (PUCollageView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = PUCollageView;
  v3 = [(PUCollageView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = 3;
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
      [v10 setContentMode:2];
      [v10 setClipsToBounds:1];
      [(PUCollageView *)v3 addSubview:v10];
      [v5 addObject:v10];

      --v4;
    }

    while (v4);
    strongObjectsPointerArray = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
    [(NSPointerArray *)strongObjectsPointerArray setCount:3];
    v3->__numberOfImageViews = 3;
    v12 = [v5 copy];
    imageViews = v3->__imageViews;
    v3->__imageViews = v12;

    imageSizes = v3->__imageSizes;
    v3->__imageSizes = strongObjectsPointerArray;

    [(PUCollageView *)v3 setCornerRadius:10.0];
    [(PUCollageView *)v3 setClipsToBounds:1];
    [(PUCollageView *)v3 _updateRoundedCornerOverlayView];
  }

  return v3;
}

@end