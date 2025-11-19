@interface PXImageUIView
- (BOOL)allowsFocus;
- (BOOL)drawsFocusRing;
- (CGRect)contentsRect;
- (PXImageUIView)initWithCoder:(id)a3;
- (PXImageUIView)initWithFrame:(CGRect)a3;
- (id)focusEffect;
- (void)_PXImageUIViewInitialization;
- (void)_setOverlaySpecs:(id)a3;
- (void)_updateCorners;
- (void)_updateFloatingOverlay;
- (void)_updateSubviewsOrdering;
- (void)setAllowsFocus:(BOOL)a3;
- (void)setAnimating:(BOOL)a3 withFlags:(unint64_t)a4;
- (void)setContentMode:(int64_t)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setDrawsFocusRing:(BOOL)a3;
- (void)setFloatingOverlay:(id)a3 withInsets:(UIEdgeInsets)a4 parallax:(BOOL)a5;
- (void)setFloatingRotationEnabled:(BOOL)a3;
- (void)setFloatingViewEnabled:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setSpec:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXImageUIView

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PXImageUIView *)self traitCollection];
  [v5 displayScale];
  v7 = v6;
  [v4 displayScale];
  v9 = v8;

  if (v7 != v9)
  {

    [(PXImageUIView *)self _updateCorners];
  }
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, a3))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    v10 = [(PXImageUIView *)self _imageView];
    v9 = [v10 layer];
    [v9 setContentsRect:{p_contentsRect->origin.x, p_contentsRect->origin.y, p_contentsRect->size.width, p_contentsRect->size.height}];
  }
}

- (void)setAnimating:(BOOL)a3 withFlags:(unint64_t)a4
{
  if (self->_animating != a3)
  {
    self->_animating = a3;
    v6 = a3 & (a4 >> 1);
    snapshotView = self->_snapshotView;
    if (snapshotView)
    {
      [(UIView *)snapshotView removeFromSuperview];
      v8 = self->_snapshotView;
      self->_snapshotView = 0;
    }

    v9 = [(PXImageUIView *)self _imageView];
    [v9 setHidden:v6];
  }
}

- (void)_updateSubviewsOrdering
{
  overlayViews = self->_overlayViews;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PXImageUIView__updateSubviewsOrdering__block_invoke;
  v5[3] = &unk_1E7740568;
  v5[4] = self;
  [(NSMutableArray *)overlayViews enumerateObjectsUsingBlock:v5];
  v4 = [(PXImageUIView *)self _cornerView];
  [(PXImageUIView *)self bringSubviewToFront:v4];
}

- (void)_updateCorners
{
  v3 = [(PXImageUIView *)self spec];
  [v3 cornerRadius];
  v5 = v4;
  v6 = [v3 roundedCornersMode];
  v7 = [(PXImageUIView *)self _imageView];
  if (![(PXImageUIView *)self floatingViewEnabled])
  {
    [v7 setClipsToBounds:1];
    if (v5 > 0.0 && v6 == 1)
    {
      v17 = +[PXMemoriesFeedSettings sharedInstance];
      v18 = [v17 disableRoundedOverlays];

      v19 = [(PXImageUIView *)self _cornerView];
      v8 = v19;
      if ((v18 & 1) == 0)
      {
        if (!v19)
        {
          v8 = objc_alloc_init(PXRoundedCornerOverlayView);
          [(PXRoundedCornerOverlayView *)v8 setTranslatesAutoresizingMaskIntoConstraints:1];
          [(PXRoundedCornerOverlayView *)v8 setAutoresizingMask:18];
          [(PXImageUIView *)self _setCornerView:v8];
          [(PXImageUIView *)self addSubview:v8];
          [(PXImageUIView *)self _updateSubviewsOrdering];
        }

        [(PXImageUIView *)self bounds];
        [(PXRoundedCornerOverlayView *)v8 setFrame:?];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __31__PXImageUIView__updateCorners__block_invoke;
        v22[3] = &unk_1E7740540;
        v25 = v5;
        v23 = v3;
        v24 = self;
        [(PXRoundedCornerOverlayView *)v8 performChanges:v22];

        v20 = 0;
        v5 = 0.0;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = [(PXImageUIView *)self _cornerView];
    }

    v20 = 1;
LABEL_21:
    [(PXRoundedCornerOverlayView *)v8 setHidden:v20];
    v21 = [v7 layer];
    [v21 setCornerRadius:v5];

    goto LABEL_22;
  }

  v8 = [v7 _layeredImageContainer];
  v9 = [(PXRoundedCornerOverlayView *)v8 config];
  [v7 _setLayeredImageCornerRadius:v5];
  [v9 defaultFocusedShadowRadius];
  [v9 setDefaultUnfocusedShadowRadius:?];
  [v9 setBoostBrightness:self->_floatingRotationEnabled];
  v10 = 0.0;
  if (self->_hasParallax)
  {
    [v9 maximumParallaxDepth];
  }

  [v9 setOverlayDepth:v10];
  v11 = 0.0799999982;
  if (!self->_floatingRotationEnabled)
  {
    v11 = 0.0;
  }

  [v9 setRotationAmount:v11];
  v12 = 8.0;
  v13 = 8.0;
  if (self->_floatingRotationEnabled)
  {
    [v9 translationOffset];
  }

  [v9 setTranslationOffset:{v12, v13}];
  v14 = 0.200000003;
  if (!self->_floatingRotationEnabled)
  {
    v14 = 0.0;
  }

  [v9 setSpecularOpacity:v14];
  [v9 setAllowsNonOpaqueShadow:0];
  v15 = [(PXImageUIView *)self _cornerView];
  [v15 removeFromSuperview];

  [(PXImageUIView *)self _setCornerView:0];
  [v7 setClipsToBounds:0];

LABEL_22:
}

void __31__PXImageUIView__updateCorners__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5 = a2;
  [v5 setCornerRadius:v3];
  v4 = [*(a1 + 32) backgroundColor];
  [v5 setOverlayColor:v4];

  [*(a1 + 40) px_screenScale];
  [v5 setDisplayScale:?];
}

- (void)_updateFloatingOverlay
{
  if (self->_floatingOverlayView)
  {
    v2 = [(PXImageUIView *)self _imageView];
    [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
    [v2 bounds];
    PXEdgeInsetsInsetRect();
  }
}

- (void)setFloatingOverlay:(id)a3 withInsets:(UIEdgeInsets)a4 parallax:(BOOL)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v12 = a3;
  if (self->_floatingOverlayView != v12)
  {
    v13 = v12;
    objc_storeStrong(&self->_floatingOverlayView, a3);
    self->_floatingInsets.top = top;
    self->_floatingInsets.left = left;
    self->_floatingInsets.bottom = bottom;
    self->_floatingInsets.right = right;
    self->_hasParallax = a5;
    [(PXImageUIView *)self _updateFloatingOverlay];
    v12 = v13;
  }
}

- (void)setFloatingRotationEnabled:(BOOL)a3
{
  if (self->_floatingRotationEnabled != a3)
  {
    self->_floatingRotationEnabled = a3;
    [(PXImageUIView *)self _updateCorners];
  }
}

- (void)_setOverlaySpecs:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (self->__overlaySpecs != v4 && ([(NSArray *)v4 isEqual:?]& 1) == 0)
  {
    v6 = [(NSArray *)v5 copy];
    overlaySpecs = self->__overlaySpecs;
    self->__overlaySpecs = v6;

    [(NSMutableArray *)self->_overlayViews makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_overlayViews removeAllObjects];
    v29 = [(PXImageUIView *)self _imageView];
    [v29 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = self->__overlaySpecs;
    v16 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v16)
    {
      v17 = v16;
      v28 = v5;
      v18 = 0;
      v19 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v9, v11, v13, v15}];
          [v22 setAutoresizingMask:18];
          v23 = [v22 layer];
          v24 = [MEMORY[0x1E6979378] px_filterWithPXCompositingFilterType:{objc_msgSend(v21, "compositingFilterType")}];
          [v23 setCompositingFilter:v24];
          v25 = [v21 backgroundColor];
          [v23 setBackgroundColor:{objc_msgSend(v25, "CGColor")}];

          [(NSMutableArray *)self->_overlayViews addObject:v22];
          if (self->_floatingViewEnabled)
          {
            [(PXImageUIView *)self _updateFloatingOverlay];
          }

          else
          {
            [v29 addSubview:v22];
          }

          v18 |= v24 != 0;
        }

        v17 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v17);
      v26 = v18 ^ 1;
      v5 = v28;
    }

    else
    {
      v26 = 1;
    }

    v27 = [v29 layer];
    [v27 setAllowsGroupBlending:v26 & 1];

    [(PXImageUIView *)self _updateSubviewsOrdering];
  }
}

- (void)setFloatingViewEnabled:(BOOL)a3
{
  if (self->_floatingViewEnabled != a3)
  {
    self->_floatingViewEnabled = a3;
    [(PXImageUIView *)self _updateCorners];
  }
}

- (void)_PXImageUIViewInitialization
{
  v3 = [(PXImageUIView *)self layer];
  [v3 setAllowsGroupOpacity:0];

  v4 = objc_alloc_init(PXFocusableUIImageView);
  imageView = self->__imageView;
  self->__imageView = v4;

  v6 = self->__imageView;
  [(PXImageUIView *)self bounds];
  [(PXFocusableUIImageView *)v6 setFrame:?];
  [(PXFocusableUIImageView *)self->__imageView setUserInteractionEnabled:1];
  [(PXFocusableUIImageView *)self->__imageView setTranslatesAutoresizingMaskIntoConstraints:1];
  [(PXFocusableUIImageView *)self->__imageView setClipsToBounds:1];
  [(PXFocusableUIImageView *)self->__imageView setAutoresizingMask:18];
  v7 = self->__imageView;
  v8 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  [(PXFocusableUIImageView *)v7 setBackgroundColor:v8];

  [(PXImageUIView *)self addSubview:self->__imageView];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  overlayViews = self->_overlayViews;
  self->_overlayViews = v9;

  [(PXImageUIView *)self setTranslatesAutoresizingMaskIntoConstraints:1];

  [(PXImageUIView *)self setFloatingRotationEnabled:1];
}

- (void)setDrawsFocusRing:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXImageUIView *)self _imageView];
  [v4 setDrawsFocusRing:v3];
}

- (BOOL)drawsFocusRing
{
  v2 = [(PXImageUIView *)self _imageView];
  v3 = [v2 drawsFocusRing];

  return v3;
}

- (void)setAllowsFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(PXImageUIView *)self _imageView];
  [v4 setAllowsFocus:v3];
}

- (BOOL)allowsFocus
{
  v2 = [(PXImageUIView *)self _imageView];
  v3 = [v2 allowsFocus];

  return v3;
}

- (id)focusEffect
{
  v3 = [(PXImageUIView *)self _cornerView];
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 focusInfo];
    v4 = [v5 makeHaloEffectForSourceView:self];
  }

  return v4;
}

- (void)setContentMode:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXImageUIView;
  [(PXImageUIView *)&v6 setContentMode:?];
  v5 = [(PXImageUIView *)self _imageView];
  [v5 setContentMode:a3];
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(PXImageUIView *)self _imageView];
    [v6 setImage:v7];

    [(PXImageUIView *)self _updateFloatingOverlay];
    [(PXImageUIView *)self _updateCorners];
    v5 = v7;
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXImageUIView *)self setFloatingViewEnabled:[(PXImageViewSpec *)self->_spec shouldEnableFocus]];
    [(PXImageUIView *)self _updateFloatingOverlay];
    [(PXImageUIView *)self _updateCorners];
    v6 = [(PXImageViewSpec *)self->_spec overlaySpecs];
    [(PXImageUIView *)self _setOverlaySpecs:v6];

    v5 = v7;
  }
}

- (PXImageUIView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXImageUIView;
  v3 = [(PXImageUIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXImageUIView *)v3 _PXImageUIViewInitialization];
  }

  return v4;
}

- (PXImageUIView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXImageUIView;
  v3 = [(PXImageUIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXImageUIView *)v3 _PXImageUIViewInitialization];
  }

  return v4;
}

@end