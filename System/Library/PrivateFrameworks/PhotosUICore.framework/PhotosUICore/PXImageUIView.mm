@interface PXImageUIView
- (BOOL)allowsFocus;
- (BOOL)drawsFocusRing;
- (CGRect)contentsRect;
- (PXImageUIView)initWithCoder:(id)coder;
- (PXImageUIView)initWithFrame:(CGRect)frame;
- (id)focusEffect;
- (void)_PXImageUIViewInitialization;
- (void)_setOverlaySpecs:(id)specs;
- (void)_updateCorners;
- (void)_updateFloatingOverlay;
- (void)_updateSubviewsOrdering;
- (void)setAllowsFocus:(BOOL)focus;
- (void)setAnimating:(BOOL)animating withFlags:(unint64_t)flags;
- (void)setContentMode:(int64_t)mode;
- (void)setContentsRect:(CGRect)rect;
- (void)setDrawsFocusRing:(BOOL)ring;
- (void)setFloatingOverlay:(id)overlay withInsets:(UIEdgeInsets)insets parallax:(BOOL)parallax;
- (void)setFloatingRotationEnabled:(BOOL)enabled;
- (void)setFloatingViewEnabled:(BOOL)enabled;
- (void)setImage:(id)image;
- (void)setSpec:(id)spec;
- (void)traitCollectionDidChange:(id)change;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(PXImageUIView *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;
  [changeCopy displayScale];
  v9 = v8;

  if (v7 != v9)
  {

    [(PXImageUIView *)self _updateCorners];
  }
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, rect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    _imageView = [(PXImageUIView *)self _imageView];
    layer = [_imageView layer];
    [layer setContentsRect:{p_contentsRect->origin.x, p_contentsRect->origin.y, p_contentsRect->size.width, p_contentsRect->size.height}];
  }
}

- (void)setAnimating:(BOOL)animating withFlags:(unint64_t)flags
{
  if (self->_animating != animating)
  {
    self->_animating = animating;
    v6 = animating & (flags >> 1);
    snapshotView = self->_snapshotView;
    if (snapshotView)
    {
      [(UIView *)snapshotView removeFromSuperview];
      v8 = self->_snapshotView;
      self->_snapshotView = 0;
    }

    _imageView = [(PXImageUIView *)self _imageView];
    [_imageView setHidden:v6];
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
  _cornerView = [(PXImageUIView *)self _cornerView];
  [(PXImageUIView *)self bringSubviewToFront:_cornerView];
}

- (void)_updateCorners
{
  spec = [(PXImageUIView *)self spec];
  [spec cornerRadius];
  v5 = v4;
  roundedCornersMode = [spec roundedCornersMode];
  _imageView = [(PXImageUIView *)self _imageView];
  if (![(PXImageUIView *)self floatingViewEnabled])
  {
    [_imageView setClipsToBounds:1];
    if (v5 > 0.0 && roundedCornersMode == 1)
    {
      v17 = +[PXMemoriesFeedSettings sharedInstance];
      disableRoundedOverlays = [v17 disableRoundedOverlays];

      _cornerView = [(PXImageUIView *)self _cornerView];
      _cornerView2 = _cornerView;
      if ((disableRoundedOverlays & 1) == 0)
      {
        if (!_cornerView)
        {
          _cornerView2 = objc_alloc_init(PXRoundedCornerOverlayView);
          [(PXRoundedCornerOverlayView *)_cornerView2 setTranslatesAutoresizingMaskIntoConstraints:1];
          [(PXRoundedCornerOverlayView *)_cornerView2 setAutoresizingMask:18];
          [(PXImageUIView *)self _setCornerView:_cornerView2];
          [(PXImageUIView *)self addSubview:_cornerView2];
          [(PXImageUIView *)self _updateSubviewsOrdering];
        }

        [(PXImageUIView *)self bounds];
        [(PXRoundedCornerOverlayView *)_cornerView2 setFrame:?];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __31__PXImageUIView__updateCorners__block_invoke;
        v22[3] = &unk_1E7740540;
        v25 = v5;
        v23 = spec;
        selfCopy = self;
        [(PXRoundedCornerOverlayView *)_cornerView2 performChanges:v22];

        v20 = 0;
        v5 = 0.0;
        goto LABEL_21;
      }
    }

    else
    {
      _cornerView2 = [(PXImageUIView *)self _cornerView];
    }

    v20 = 1;
LABEL_21:
    [(PXRoundedCornerOverlayView *)_cornerView2 setHidden:v20];
    layer = [_imageView layer];
    [layer setCornerRadius:v5];

    goto LABEL_22;
  }

  _cornerView2 = [_imageView _layeredImageContainer];
  config = [(PXRoundedCornerOverlayView *)_cornerView2 config];
  [_imageView _setLayeredImageCornerRadius:v5];
  [config defaultFocusedShadowRadius];
  [config setDefaultUnfocusedShadowRadius:?];
  [config setBoostBrightness:self->_floatingRotationEnabled];
  v10 = 0.0;
  if (self->_hasParallax)
  {
    [config maximumParallaxDepth];
  }

  [config setOverlayDepth:v10];
  v11 = 0.0799999982;
  if (!self->_floatingRotationEnabled)
  {
    v11 = 0.0;
  }

  [config setRotationAmount:v11];
  v12 = 8.0;
  v13 = 8.0;
  if (self->_floatingRotationEnabled)
  {
    [config translationOffset];
  }

  [config setTranslationOffset:{v12, v13}];
  v14 = 0.200000003;
  if (!self->_floatingRotationEnabled)
  {
    v14 = 0.0;
  }

  [config setSpecularOpacity:v14];
  [config setAllowsNonOpaqueShadow:0];
  _cornerView3 = [(PXImageUIView *)self _cornerView];
  [_cornerView3 removeFromSuperview];

  [(PXImageUIView *)self _setCornerView:0];
  [_imageView setClipsToBounds:0];

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
    _imageView = [(PXImageUIView *)self _imageView];
    [MEMORY[0x1E69DD250] setAnimationsEnabled:0];
    [_imageView bounds];
    PXEdgeInsetsInsetRect();
  }
}

- (void)setFloatingOverlay:(id)overlay withInsets:(UIEdgeInsets)insets parallax:(BOOL)parallax
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  overlayCopy = overlay;
  if (self->_floatingOverlayView != overlayCopy)
  {
    v13 = overlayCopy;
    objc_storeStrong(&self->_floatingOverlayView, overlay);
    self->_floatingInsets.top = top;
    self->_floatingInsets.left = left;
    self->_floatingInsets.bottom = bottom;
    self->_floatingInsets.right = right;
    self->_hasParallax = parallax;
    [(PXImageUIView *)self _updateFloatingOverlay];
    overlayCopy = v13;
  }
}

- (void)setFloatingRotationEnabled:(BOOL)enabled
{
  if (self->_floatingRotationEnabled != enabled)
  {
    self->_floatingRotationEnabled = enabled;
    [(PXImageUIView *)self _updateCorners];
  }
}

- (void)_setOverlaySpecs:(id)specs
{
  v36 = *MEMORY[0x1E69E9840];
  specsCopy = specs;
  v5 = specsCopy;
  if (self->__overlaySpecs != specsCopy && ([(NSArray *)specsCopy isEqual:?]& 1) == 0)
  {
    v6 = [(NSArray *)v5 copy];
    overlaySpecs = self->__overlaySpecs;
    self->__overlaySpecs = v6;

    [(NSMutableArray *)self->_overlayViews makeObjectsPerformSelector:sel_removeFromSuperview];
    [(NSMutableArray *)self->_overlayViews removeAllObjects];
    _imageView = [(PXImageUIView *)self _imageView];
    [_imageView bounds];
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
          layer = [v22 layer];
          v24 = [MEMORY[0x1E6979378] px_filterWithPXCompositingFilterType:{objc_msgSend(v21, "compositingFilterType")}];
          [layer setCompositingFilter:v24];
          backgroundColor = [v21 backgroundColor];
          [layer setBackgroundColor:{objc_msgSend(backgroundColor, "CGColor")}];

          [(NSMutableArray *)self->_overlayViews addObject:v22];
          if (self->_floatingViewEnabled)
          {
            [(PXImageUIView *)self _updateFloatingOverlay];
          }

          else
          {
            [_imageView addSubview:v22];
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

    layer2 = [_imageView layer];
    [layer2 setAllowsGroupBlending:v26 & 1];

    [(PXImageUIView *)self _updateSubviewsOrdering];
  }
}

- (void)setFloatingViewEnabled:(BOOL)enabled
{
  if (self->_floatingViewEnabled != enabled)
  {
    self->_floatingViewEnabled = enabled;
    [(PXImageUIView *)self _updateCorners];
  }
}

- (void)_PXImageUIViewInitialization
{
  layer = [(PXImageUIView *)self layer];
  [layer setAllowsGroupOpacity:0];

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
  quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  [(PXFocusableUIImageView *)v7 setBackgroundColor:quaternarySystemFillColor];

  [(PXImageUIView *)self addSubview:self->__imageView];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  overlayViews = self->_overlayViews;
  self->_overlayViews = v9;

  [(PXImageUIView *)self setTranslatesAutoresizingMaskIntoConstraints:1];

  [(PXImageUIView *)self setFloatingRotationEnabled:1];
}

- (void)setDrawsFocusRing:(BOOL)ring
{
  ringCopy = ring;
  _imageView = [(PXImageUIView *)self _imageView];
  [_imageView setDrawsFocusRing:ringCopy];
}

- (BOOL)drawsFocusRing
{
  _imageView = [(PXImageUIView *)self _imageView];
  drawsFocusRing = [_imageView drawsFocusRing];

  return drawsFocusRing;
}

- (void)setAllowsFocus:(BOOL)focus
{
  focusCopy = focus;
  _imageView = [(PXImageUIView *)self _imageView];
  [_imageView setAllowsFocus:focusCopy];
}

- (BOOL)allowsFocus
{
  _imageView = [(PXImageUIView *)self _imageView];
  allowsFocus = [_imageView allowsFocus];

  return allowsFocus;
}

- (id)focusEffect
{
  _cornerView = [(PXImageUIView *)self _cornerView];
  if ([_cornerView isHidden])
  {
    v4 = 0;
  }

  else
  {
    focusInfo = [_cornerView focusInfo];
    v4 = [focusInfo makeHaloEffectForSourceView:self];
  }

  return v4;
}

- (void)setContentMode:(int64_t)mode
{
  v6.receiver = self;
  v6.super_class = PXImageUIView;
  [(PXImageUIView *)&v6 setContentMode:?];
  _imageView = [(PXImageUIView *)self _imageView];
  [_imageView setContentMode:mode];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(&self->_image, image);
    _imageView = [(PXImageUIView *)self _imageView];
    [_imageView setImage:v7];

    [(PXImageUIView *)self _updateFloatingOverlay];
    [(PXImageUIView *)self _updateCorners];
    imageCopy = v7;
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy)
  {
    v7 = specCopy;
    objc_storeStrong(&self->_spec, spec);
    [(PXImageUIView *)self setFloatingViewEnabled:[(PXImageViewSpec *)self->_spec shouldEnableFocus]];
    [(PXImageUIView *)self _updateFloatingOverlay];
    [(PXImageUIView *)self _updateCorners];
    overlaySpecs = [(PXImageViewSpec *)self->_spec overlaySpecs];
    [(PXImageUIView *)self _setOverlaySpecs:overlaySpecs];

    specCopy = v7;
  }
}

- (PXImageUIView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXImageUIView;
  v3 = [(PXImageUIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PXImageUIView *)v3 _PXImageUIViewInitialization];
  }

  return v4;
}

- (PXImageUIView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXImageUIView;
  v3 = [(PXImageUIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXImageUIView *)v3 _PXImageUIViewInitialization];
  }

  return v4;
}

@end