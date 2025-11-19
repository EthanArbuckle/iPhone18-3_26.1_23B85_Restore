@interface VUITextBadgeView
+ (BOOL)_viewBackgroundImageNeedsUpdatingWithFrame:(CGRect)a3 currentBackgroundImage:(id)a4;
+ (id)badgeWithLayout:(id)a3 existing:(id)a4;
- (BOOL)_textBadgeBackgroundImageNeedsUpdating;
- (CGSize)_textSize;
- (CGSize)glyphSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIEdgeInsets)padding;
- (VUITextBadgeView)initWithFrame:(CGRect)a3;
- (VUITextBadgeViewDelegate)delegate;
- (id)accessibilityLabel;
- (void)_cancelPendingOperation;
- (void)_configureWithLayout:(id)a3;
- (void)_imageLoaded;
- (void)_invalidateTimer;
- (void)_redrawView:(id)a3 withDuration:(double)a4;
- (void)_updateBackgroundImagesWithCompletedOperation:(id)a3;
- (void)_updateBackgroundMaterialImagesWithBackgroundImageSize:(CGSize)a3 performSynchronously:(BOOL)a4 overlayViewFrame:(CGRect)a5;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)rentalExpirationLabelNeedsRelayout:(id)a3;
- (void)reset;
- (void)setAttributedTitle:(id)a3;
- (void)setBackgroundImageForMaterialRendering:(id)a3 imageSize:(CGSize)a4 overlayViewFrame:(CGRect)a5;
- (void)setBackgroundImageForMaterialRendering:(id)a3 imageSize:(CGSize)a4 overlayViewFrame:(CGRect)a5 operationQueue:(id)a6;
- (void)setBadgeKind:(unint64_t)a3;
- (void)setImageView:(id)a3;
- (void)setLayerCornerRadius:(double)a3;
- (void)setRentalExpirationLabel:(id)a3;
@end

@implementation VUITextBadgeView

- (VUITextBadgeView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VUITextBadgeView;
  v3 = [(VUITextBadgeView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(VUITextBadgeView *)v3 setBackgroundColor:v4];

    [(VUITextBadgeView *)v3 setContentMode:3];
    [(VUITextBadgeView *)v3 setClearsContextBeforeDrawing:1];
  }

  return v3;
}

+ (id)badgeWithLayout:(id)a3 existing:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = [objc_alloc(objc_opt_class()) initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  v8 = v7;
  [v7 reset];
  [v8 _configureWithLayout:v6];

  return v8;
}

- (void)_configureWithLayout:(id)a3
{
  v4 = a3;
  -[VUITextBadgeView setBadgeKind:](self, "setBadgeKind:", [v4 badgeKind]);
  [v4 padding];
  [(VUITextBadgeView *)self setPadding:?];
  v5 = [v4 tintColor];
  [(VUITextBadgeView *)self setTintColor:v5];

  -[VUITextBadgeView setIsUppercased:](self, "setIsUppercased:", [v4 isUppercased]);
  -[VUITextBadgeView setBlendMode:](self, "setBlendMode:", [v4 blendMode]);
  [v4 minHeight];
  [(VUITextBadgeView *)self setMinHeight:?];
  [v4 layerCornerRadius];
  [(VUITextBadgeView *)self setLayerCornerRadius:?];
  v6 = [v4 backgroundColor];
  [(VUITextBadgeView *)self setBackgroundColor:v6];

  v7 = [v4 gradientBgColors];

  [(VUITextBadgeView *)self setGradientBgColors:v7];
}

- (void)setImageView:(id)a3
{
  v8 = a3;
  if (self->_imageView != v8)
  {
    objc_storeStrong(&self->_imageView, a3);
    [(VUITextBadgeView *)self vui_setNeedsDisplay];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      v6 = *MEMORY[0x1E69DF860];
      [v5 removeObserver:self name:*MEMORY[0x1E69DF860] object:0];

      if (self->_imageView)
      {
        v7 = [MEMORY[0x1E696AD88] defaultCenter];
        [v7 addObserver:self selector:sel__imageLoaded name:v6 object:self->_imageView];
      }
    }
  }
}

- (id)accessibilityLabel
{
  attributedTitle = self->_attributedTitle;
  if (attributedTitle)
  {
    attributedTitle = [attributedTitle string];
    v2 = vars8;
  }

  return attributedTitle;
}

- (void)setBadgeKind:(unint64_t)a3
{
  if (self->_badgeKind != a3)
  {
    self->_badgeKind = a3;
    [(VUITextBadgeView *)self setClipsToBounds:1];

    [(VUITextBadgeView *)self vui_setNeedsDisplay];
  }
}

- (void)setLayerCornerRadius:(double)a3
{
  if (self->_layerCornerRadius != a3)
  {
    [(VUITextBadgeView *)self setVuiClipsToBounds:1];
    self->_layerCornerRadius = a3;
    v5 = [(VUITextBadgeView *)self layer];
    [v5 setCornerRadius:self->_layerCornerRadius];

    [(VUITextBadgeView *)self vui_setNeedsDisplay];
  }
}

- (void)setAttributedTitle:(id)a3
{
  if (self->_attributedTitle != a3)
  {
    v4 = [a3 copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    [(VUITextBadgeView *)self vui_setNeedsDisplay];
  }
}

- (void)setRentalExpirationLabel:(id)a3
{
  v5 = a3;
  if (self->_rentalExpirationLabel != v5)
  {
    v7 = v5;
    v6 = [(VUILabel *)v5 vuiAttributedText];
    [(VUITextBadgeView *)self setAttributedTitle:v6];

    [(VUIRentalExpirationLabel *)v7 setDelegate:self];
    [(VUIRentalExpirationLabel *)self->_rentalExpirationLabel invalidateTimer];
    [(VUITextBadgeView *)self vui_addSubview:v7 oldView:self->_rentalExpirationLabel];
    objc_storeStrong(&self->_rentalExpirationLabel, a3);
    [(VUITextBadgeView *)self vui_setNeedsDisplay];
    [(VUITextBadgeView *)self setClipsToBounds:1];
    [(VUITextBadgeView *)self layoutIfNeeded];
    v5 = v7;
  }
}

- (void)rentalExpirationLabelNeedsRelayout:(id)a3
{
  v4 = [a3 vuiAttributedText];
  [(VUITextBadgeView *)self setAttributedTitle:v4];

  v5 = [(VUITextBadgeView *)self delegate];
  [v5 textBadgeViewContentsUpdated:self];
}

- (void)reset
{
  [(VUITextBadgeView *)self _invalidateTimer];
  [(VUITextBadgeView *)self setAttributedTitle:0];
  v3 = [(VUITextBadgeView *)self imageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(VUITextBadgeView *)self imageView];
    [v5 setImage:0];
  }

  [(VUITextBadgeView *)self setLayerCornerRadius:0.0];
  [(VUITextBadgeView *)self setRentalExpirationLabel:0];
  [(VUITextBadgeView *)self _setBackgroundImageForMaterialRendering:0];

  [(VUITextBadgeView *)self _cancelPendingOperation];
}

- (void)dealloc
{
  [(VUITextBadgeView *)self _invalidateTimer];
  v3 = [(VUITextBadgeView *)self imageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self name:*MEMORY[0x1E69DF860] object:0];
  }

  [(VUITextBadgeView *)self _cancelPendingOperation];
  v6.receiver = self;
  v6.super_class = VUITextBadgeView;
  [(VUITextBadgeView *)&v6 dealloc];
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  if (a4)
  {
    [(VUITextBadgeView *)self sizeThatFits:a3.width, a3.height];
  }

  else
  {
    v4 = *MEMORY[0x1E695F060];
    v5 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (self->_attributedTitle)
  {
    [(VUITextBadgeView *)self _textSize:a3.width];
    height = v4;
    VUIRoundValue();
    v7 = v6 + 0.0;
  }

  else
  {
    height = 0.0;
    v7 = 0.0;
  }

  imageView = self->_imageView;
  if (imageView)
  {
    if (v7 > 0.0)
    {
      v7 = v7 + 4.0;
    }

    v7 = v7 + self->_glyphSize.width;
    if (self->_glyphSize.height >= height)
    {
      height = self->_glyphSize.height;
    }
  }

  if (v7 > 0.0)
  {
    v7 = v7 + self->_padding.left + self->_padding.right;
  }

  if (height > 0.0)
  {
    height = height + self->_padding.top + self->_padding.bottom;
  }

  minHeight = self->_minHeight;
  if (height >= minHeight || minHeight <= 0.0)
  {
    minHeight = height;
  }

  if (imageView && !self->_attributedTitle)
  {
    v7 = minHeight;
  }

  result.height = minHeight;
  result.width = v7;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v40 = *MEMORY[0x1E69E9840];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = [VUIBezierPath bezierPathWithRect:0.0, 0.0, width, height];
  v8 = v7;
  if (self->_backgroundImage)
  {
    CGContextAddPath(CurrentContext, [v7 vuiCGPath]);
    CGContextClip(CurrentContext);
    [(UIImage *)self->_backgroundImage drawAtPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  badgeKind = self->_badgeKind;
  if (badgeKind == 1)
  {
    v18 = [(VUITextBadgeView *)self backgroundColor];
    [v18 set];

    [v8 setLineWidth:self->_strokeSize];
    [v8 stroke];
    goto LABEL_14;
  }

  if (badgeKind == 3)
  {
    v17 = [MEMORY[0x1E69DC888] clearColor];
LABEL_13:
    v19 = v17;
    [v17 set];

    [v8 fill];
    goto LABEL_14;
  }

  if (badgeKind != 2)
  {
    goto LABEL_14;
  }

  if (![(NSArray *)self->_gradientBgColors count])
  {
    v17 = [(VUITextBadgeView *)self backgroundColor];
    goto LABEL_13;
  }

  v10 = [(NSArray *)self->_gradientBgColors objectAtIndexedSubscript:0];
  v11 = [(NSArray *)self->_gradientBgColors objectAtIndexedSubscript:1];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *locations = xmmword_1E4297490;
  v38[0] = [v10 CGColor];
  v38[1] = [v11 CGColor];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v14 = CGGradientCreateWithColors(DeviceRGB, v13, locations);
  if (v14)
  {
    v15 = v14;
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.width = width;
    v43.size.height = height;
    MaxX = CGRectGetMaxX(v43);
    CGContextSaveGState(CurrentContext);
    CGContextAddPath(CurrentContext, [v8 vuiCGPath]);
    CGContextClip(CurrentContext);
    v41.x = 0.0;
    v41.y = 0.0;
    v42.y = 0.0;
    v42.x = MaxX;
    CGContextDrawLinearGradient(CurrentContext, v15, v41, v42, 3u);
    CGContextRestoreGState(CurrentContext);
    CGGradientRelease(v15);
  }

  CFRelease(DeviceRGB);

LABEL_14:
  p_padding = &self->_padding;
  left = self->_padding.left;
  v22 = [(VUITextBadgeView *)self imageView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v24 = [(VUITextBadgeView *)self imageView];
    v25 = [v24 image];

    p_imageView = &self->_imageView;
    if (self->_imageView && v25)
    {
      if (self->_tintColor)
      {
        v27 = [v25 vui_imageWithColor:?];

        v25 = v27;
      }

      v28 = self->_glyphSize.width;
      v29 = self->_glyphSize.height;
      if (!self->_attributedTitle)
      {
        left = (width - v28) * 0.5;
      }

      VUIRoundValue();
      [v25 drawInRect:{left, v30, v28, v29}];
      left = v28 + 4.0 + left;
    }
  }

  else
  {
    v25 = 0;
    p_imageView = &self->_imageView;
  }

  if (self->_attributedTitle)
  {
    CGContextSetBlendMode(CurrentContext, self->_blendMode);
    v31 = [(NSAttributedString *)self->_attributedTitle mutableCopy];
    v32 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v33 = v32;
    if (*p_imageView)
    {
      width = width - left - p_padding->right;
    }

    else
    {
      [v32 setAlignment:1];
      left = 0.0;
    }

    [v31 addAttribute:*MEMORY[0x1E69DB688] value:v33 range:{0, objc_msgSend(v31, "length")}];
    v34 = [v31 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
    [v34 capHeight];
    VUIRoundValue();
    v36 = v35 + p_padding->top;
    VUIRoundValue();
    [v31 drawWithRect:32 options:0 context:{left, v36, width, v37}];
  }

  CGContextRestoreGState(CurrentContext);
}

- (void)_invalidateTimer
{
  [(NSTimer *)self->_expiryUpdateTimer invalidate];
  expiryUpdateTimer = self->_expiryUpdateTimer;
  self->_expiryUpdateTimer = 0;
}

- (CGSize)_textSize
{
  attributedTitle = self->_attributedTitle;
  if (attributedTitle)
  {
    if (self->_imageView)
    {
      v4 = 3;
    }

    else
    {
      v4 = 11;
    }

    [(NSAttributedString *)attributedTitle boundingRectWithSize:v4 options:0 context:1.79769313e308, 1.79769313e308];
    v5 = [(NSAttributedString *)self->_attributedTitle attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
    v6 = v5;
    if (self->_isUppercased)
    {
      [v5 capHeight];
    }

    else
    {
      [(NSAttributedString *)self->_attributedTitle boundingRectWithSize:3 options:0 context:1.79769313e308, 1.79769313e308];
      [v6 ascender];
      [v6 capHeight];
      [v6 descender];
    }

    VUIRoundValue();
    v7 = v9;
    VUIRoundValue();
    v8 = v10;
  }

  else
  {
    v7 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v7;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_imageLoaded
{
  [(VUITextBadgeView *)self vui_setNeedsDisplay];

  [(VUITextBadgeView *)self forceDisplayIfNeeded];
}

- (void)setBackgroundImageForMaterialRendering:(id)a3 imageSize:(CGSize)a4 overlayViewFrame:(CGRect)a5 operationQueue:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4.height;
  v12 = a4.width;
  v16 = a3;
  v15 = a6;
  objc_storeStrong(&self->_operationQueue, a6);
  if (self->_backgroundImageForMaterialRendering != v16)
  {
    self->_backgroundImageForMaterialRenderingHasChanged = 1;
    objc_storeStrong(&self->_backgroundImageForMaterialRendering, a3);
    [(VUITextBadgeView *)self _updateBackgroundMaterialImagesWithBackgroundImageSize:0 performSynchronously:v12 overlayViewFrame:v11, x, y, width, height];
  }
}

- (void)setBackgroundImageForMaterialRendering:(id)a3 imageSize:(CGSize)a4 overlayViewFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.height;
  v10 = a4.width;
  v13 = a3;
  if (self->_backgroundImageForMaterialRendering != v13)
  {
    self->_backgroundImageForMaterialRenderingHasChanged = 1;
    v14 = v13;
    objc_storeStrong(&self->_backgroundImageForMaterialRendering, a3);
    [(VUITextBadgeView *)self _updateBackgroundMaterialImagesWithBackgroundImageSize:0 performSynchronously:v10 overlayViewFrame:v9, x, y, width, height];
    v13 = v14;
  }
}

- (void)_updateBackgroundMaterialImagesWithBackgroundImageSize:(CGSize)a3 performSynchronously:(BOOL)a4 overlayViewFrame:(CGRect)a5
{
  v37 = *MEMORY[0x1E69E9840];
  if (self->_backgroundImageForMaterialRendering)
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
    v9 = a4;
    v10 = a3.height;
    v11 = a3.width;
    [(VUITextBadgeView *)self _cancelPendingOperation];
    v13 = [[VUIOverlayBackgroundMaterialImagesOperation alloc] initWithSourceBackgroundImage:self->_backgroundImageForMaterialRendering];
    [(VUIOverlayBackgroundMaterialImagesOperation *)v13 setResizedBackgroundImageSize:v11, v10];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(VUITextBadgeView *)self _textBadgeBackgroundImageNeedsUpdating])
    {
      v15 = [VUIOverlayWithMaterialRendering alloc];
      [(VUITextBadgeView *)self frame];
      v20 = [(VUIOverlayWithMaterialRendering *)v15 initWithIdentifier:@"textBadge" rect:x croppedRect:y, width, height, v16, v17, v18, v19];
      [v14 addObject:v20];
    }

    [(VUIOverlayBackgroundMaterialImagesOperation *)v13 setOverlayMaterialRequests:v14];
    if (v9)
    {
      [(VUIOverlayBackgroundMaterialImagesOperation *)v13 start];
      [(VUITextBadgeView *)self _updateBackgroundImagesWithCompletedOperation:v13];
    }

    else
    {
      objc_initWeak(&location, self);
      v21 = MEMORY[0x1E696AAE0];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __113__VUITextBadgeView__updateBackgroundMaterialImagesWithBackgroundImageSize_performSynchronously_overlayViewFrame___block_invoke;
      v32[3] = &unk_1E872F038;
      objc_copyWeak(&v34, &location);
      v22 = v13;
      v33 = v22;
      v23 = [v21 blockOperationWithBlock:v32];
      [v23 addDependency:v22];
      v24 = [MEMORY[0x1E696ADC8] mainQueue];
      [v24 addOperation:v23];

      [(NSOperationQueue *)self->_operationQueue addOperation:v22];
      objc_storeStrong(&self->_pendingOperation, v13);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = [&unk_1F5E5EA60 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v25)
      {
        v26 = *v29;
        do
        {
          v27 = 0;
          do
          {
            if (*v29 != v26)
            {
              objc_enumerationMutation(&unk_1F5E5EA60);
            }

            [(NSOperation *)self->_pendingOperation addObserver:self forKeyPath:*(*(&v28 + 1) + 8 * v27++) options:3 context:VUITextBadgeViewPendingOperationContext];
          }

          while (v25 != v27);
          v25 = [&unk_1F5E5EA60 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v25);
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
    }
  }
}

void __113__VUITextBadgeView__updateBackgroundMaterialImagesWithBackgroundImageSize_performSynchronously_overlayViewFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateBackgroundImagesWithCompletedOperation:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_updateBackgroundImagesWithCompletedOperation:(id)a3
{
  v10 = a3;
  v4 = [v10 isCancelled];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = [v10 resizedSourceBackgroundImage];
    if (v6)
    {
      objc_storeStrong(&self->_backgroundImageForMaterialRendering, v6);
    }

    v7 = [v10 overlayMaterialImageByIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKey:@"textBadge"];
      if (v9)
      {
        [(VUITextBadgeView *)self setBackgroundImage:v9];
        [(VUITextBadgeView *)self _redrawTextBadgeWithDuration:0.2];
      }

      self->_backgroundImageForMaterialRenderingHasChanged = 0;
    }

    v5 = v10;
  }
}

- (void)_redrawView:(id)a3 withDuration:(double)a4
{
  v5 = a3;
  [v5 setNeedsDisplay];
  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__VUITextBadgeView__redrawView_withDuration___block_invoke;
  v8[3] = &unk_1E872D768;
  v9 = v5;
  v7 = v5;
  [v6 transitionWithView:v7 duration:5242880 options:v8 animations:0 completion:a4];
}

uint64_t __45__VUITextBadgeView__redrawView_withDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceDisplayIfNeeded];
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

- (void)_cancelPendingOperation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [&unk_1F5E5EA78 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(&unk_1F5E5EA78);
        }

        [(NSOperation *)self->_pendingOperation removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [&unk_1F5E5EA78 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [(NSOperation *)self->_pendingOperation cancel];
  pendingOperation = self->_pendingOperation;
  self->_pendingOperation = 0;
}

- (BOOL)_textBadgeBackgroundImageNeedsUpdating
{
  if (!self->_backgroundImageForMaterialRendering)
  {
    return 0;
  }

  if (self->_backgroundImageForMaterialRenderingHasChanged)
  {
    return 1;
  }

  [(VUITextBadgeView *)self frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(VUITextBadgeView *)self backgroundImage];
  v13 = [objc_opt_class() _viewBackgroundImageNeedsUpdatingWithFrame:v12 currentBackgroundImage:{v5, v7, v9, v11}];

  return v13;
}

+ (BOOL)_viewBackgroundImageNeedsUpdatingWithFrame:(CGRect)a3 currentBackgroundImage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (CGRectEqualToRect(v13, *MEMORY[0x1E695F058]))
  {
    v9 = 0;
  }

  else if (v8)
  {
    [v8 size];
    v9 = height != v11 || width != v10;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (VUITextBadgeViewPendingOperationContext == a6)
  {
    pendingOperation = self->_pendingOperation;
    self->_pendingOperation = 0;
  }

  else
  {
    v10 = v6;
    v11 = v7;
    v9.receiver = self;
    v9.super_class = VUITextBadgeView;
    [(VUITextBadgeView *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (VUITextBadgeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)glyphSize
{
  width = self->_glyphSize.width;
  height = self->_glyphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end