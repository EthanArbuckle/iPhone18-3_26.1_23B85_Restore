@interface PUCollageView
- (CGSize)collageSize;
- (CGSize)imageSizeForItemAtIndex:(int64_t)a3;
- (PUCollageView)initWithFrame:(CGRect)a3;
- (void)_updateImageViews;
- (void)_updateRoundedCornerOverlayView;
- (void)layoutSubviews;
- (void)setCollageSize:(CGSize)a3;
- (void)setCornerRadius:(double)a3;
- (void)setHasRoundedCorners:(BOOL)a3 withCornersBackgroundColor:(id)a4;
- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4;
- (void)setImageSize:(CGSize)a3 forItemAtIndex:(int64_t)a4;
- (void)setNumberOfItems:(int64_t)a3;
- (void)setSubitemCornerRadius:(double)a3;
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
    v3 = [(PUCollageView *)self numberOfItems];
    v4 = [(PUCollageView *)self _roundedCornerOverlayView];
    v5 = v4;
    if (v3 == 1)
    {
      if (!v4)
      {
        v6 = objc_alloc(MEMORY[0x1E69C3978]);
        [(PUCollageView *)self bounds];
        v5 = [v6 initWithFrame:?];
        [(PUCollageView *)self addSubview:v5];
        [(PUCollageView *)self _setRoundedCornerOverlayView:v5];
        [(PUCollageView *)self bringSubviewToFront:v5];
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __48__PUCollageView__updateRoundedCornerOverlayView__block_invoke;
      v7[3] = &unk_1E7B7C3C0;
      v7[4] = self;
      [v5 performChanges:v7];
      goto LABEL_9;
    }
  }

  else
  {
    v5 = [(PUCollageView *)self _roundedCornerOverlayView];
  }

  if (!v5)
  {
    return;
  }

  [v5 removeFromSuperview];
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
    v4 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PUCollageView *)self _imageViews];
  v6 = [v5 firstObject];
  if (v6)
  {
    v7 = v6;
    v8 = [(PUCollageView *)self _imageViews];
    v9 = [v8 firstObject];
    v10 = [v9 layer];
    [v10 cornerRadius];
    v12 = v11;

    if (v12 != subitemCornerRadius)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [(PUCollageView *)self _imageViews];
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * i);
            v19 = [v18 layer];
            [v19 setCornerRadius:subitemCornerRadius];

            v20 = [v18 layer];
            [v20 setBackgroundColor:{objc_msgSend(v4, "CGColor")}];
          }

          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }
    }
  }

  else
  {
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
    [(PUCollageView *)self _updateImageViews];
    [(PUCollageView *)self _updateRoundedCornerOverlayView];
    v7 = v8;
  }
}

- (void)setSubitemCornerRadius:(double)a3
{
  if (self->_subitemCornerRadius != a3)
  {
    self->_subitemCornerRadius = a3;
    [(PUCollageView *)self _updateImageViews];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PUCollageView *)self _updateRoundedCornerOverlayView];
  }
}

- (void)setImage:(id)a3 forItemAtIndex:(int64_t)a4
{
  v8 = a3;
  if ([(PUCollageView *)self _numberOfImageViews]> a4)
  {
    v6 = [(PUCollageView *)self _imageViews];
    v7 = [v6 objectAtIndex:a4];

    [v7 setImage:v8];
  }
}

- (void)setImageSize:(CGSize)a3 forItemAtIndex:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if ([(PUCollageView *)self _numberOfImageViews]> a4)
  {
    v8 = [(PUCollageView *)self _imageSizes];
    [v8 replacePointerAtIndex:a4 withPointer:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCGSize:", width, height)}];
    [(PUCollageView *)self setNeedsLayout];
  }
}

- (CGSize)imageSizeForItemAtIndex:(int64_t)a3
{
  if ([(PUCollageView *)self _numberOfImageViews]<= a3)
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v5 = [(PUCollageView *)self _imageSizes];
    v6 = [v5 pointerAtIndex:a3];

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

- (void)setNumberOfItems:(int64_t)a3
{
  if (self->_numberOfItems != a3)
  {
    self->_numberOfItems = a3;
    [(PUCollageView *)self _updateImageViews];
    [(PUCollageView *)self _updateRoundedCornerOverlayView];

    [(PUCollageView *)self setNeedsLayout];
  }
}

- (void)setCollageSize:(CGSize)a3
{
  if (a3.width != self->_collageSize.width || a3.height != self->_collageSize.height)
  {
    self->_collageSize = a3;
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
  v52 = [(PUCollageView *)self _imageViews];
  v17 = [(PUCollageView *)self numberOfItems];
  v18 = [objc_opt_class() maximumNumberOfItems];
  if (v17 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v17;
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
      v42 = [v52 objectAtIndex:v40];
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

  v47 = [(PUCollageView *)self _roundedCornerOverlayView];
  v48 = v47;
  if (v47)
  {
    [v47 setFrame:{v15, v16, v12, v14}];
  }
}

- (PUCollageView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = PUCollageView;
  v3 = [(PUCollageView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v11 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
    [(NSPointerArray *)v11 setCount:3];
    v3->__numberOfImageViews = 3;
    v12 = [v5 copy];
    imageViews = v3->__imageViews;
    v3->__imageViews = v12;

    imageSizes = v3->__imageSizes;
    v3->__imageSizes = v11;

    [(PUCollageView *)v3 setCornerRadius:10.0];
    [(PUCollageView *)v3 setClipsToBounds:1];
    [(PUCollageView *)v3 _updateRoundedCornerOverlayView];
  }

  return v3;
}

@end