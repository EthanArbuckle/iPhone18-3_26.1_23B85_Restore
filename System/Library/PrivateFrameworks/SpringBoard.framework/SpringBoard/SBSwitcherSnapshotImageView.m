@interface SBSwitcherSnapshotImageView
- (CGAffineTransform)scalingTransform;
- (SBSwitcherSnapshotImageView)initWithImage:(id)a3;
- (double)_transformHorizontalScale;
- (double)_transformScale;
- (double)_transformVerticalScale;
- (void)_updateCornerRadius;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAllowsEdgeAntialiasing:(BOOL)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setHasOpaqueContents:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setOrientationForClassicLayout:(int64_t)a3;
- (void)setStretchToFillBounds:(BOOL)a3;
- (void)setUsesNonuniformScaling:(BOOL)a3;
@end

@implementation SBSwitcherSnapshotImageView

- (void)layoutSubviews
{
  [(SBSwitcherSnapshotImageView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_scalingView setBounds:?];
  scalingView = self->_scalingView;
  UIRectGetCenter();
  [(UIView *)scalingView setCenter:?];
  if ([(SBSwitcherSnapshotImageView *)self contentMode]== 1)
  {
    [(UIView *)self->_scalingView bounds];
    [(UIImageView *)self->_imageView setBounds:?];
    imageView = self->_imageView;
    UIRectGetCenter();
    [(UIImageView *)imageView setCenter:?];
    v13 = self->_imageView;
    v18 = *(MEMORY[0x277CBF2C0] + 16);
    *&v22.a = *MEMORY[0x277CBF2C0];
    v19 = *&v22.a;
    *&v22.c = v18;
    *&v22.tx = *(MEMORY[0x277CBF2C0] + 32);
    v17 = *&v22.tx;
    [(UIImageView *)v13 setTransform:&v22];
    v14 = self->_scalingView;
    *&v22.a = v19;
    *&v22.c = v18;
    *&v22.tx = v17;
    v15 = &v22;
  }

  else
  {
    [(UIImageView *)self->_imageView sizeToFit];
    v16 = self->_imageView;
    [(UIView *)self->_scalingView center];
    [(UIImageView *)v16 setCenter:?];
    memset(&v22, 0, sizeof(v22));
    [(SBSwitcherSnapshotImageView *)self scalingTransform];
    if (self->_stretchToFillBounds)
    {
      v20 = v22;
      memset(&v21, 0, sizeof(v21));
      CGAffineTransformInvert(&v21, &v20);
      v20 = v21;
      v23.origin.x = v4;
      v23.origin.y = v6;
      v23.size.width = v8;
      v23.size.height = v10;
      v24 = CGRectApplyAffineTransform(v23, &v20);
      [(UIImageView *)self->_imageView setBounds:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
    }

    v14 = self->_scalingView;
    v21 = v22;
    v15 = &v21;
  }

  [(UIView *)v14 setTransform:v15];
  [(SBSwitcherSnapshotImageView *)self _updateCornerRadius];
}

- (CGAffineTransform)scalingTransform
{
  if ([(SBSwitcherSnapshotImageView *)self usesNonuniformScaling])
  {
    [(SBSwitcherSnapshotImageView *)self _transformHorizontalScale];
    v6 = v5;
    [(SBSwitcherSnapshotImageView *)self _transformVerticalScale];
  }

  else
  {
    [(SBSwitcherSnapshotImageView *)self _transformScale];
    v6 = v7;
  }

  return CGAffineTransformMakeScale(retstr, v6, v7);
}

- (double)_transformHorizontalScale
{
  [(UIImageView *)self->_imageView bounds];
  Width = CGRectGetWidth(v6);
  IsZero = BSFloatIsZero();
  result = 1.0;
  if ((IsZero & 1) == 0)
  {
    [(SBSwitcherSnapshotImageView *)self bounds];
    return CGRectGetWidth(v7) / Width;
  }

  return result;
}

- (double)_transformScale
{
  [(SBSwitcherSnapshotImageView *)self _transformHorizontalScale];
  v4 = v3;
  [(SBSwitcherSnapshotImageView *)self _transformVerticalScale];
  if (v4 < result)
  {
    return v4;
  }

  return result;
}

- (double)_transformVerticalScale
{
  [(UIImageView *)self->_imageView bounds];
  Height = CGRectGetHeight(v6);
  IsZero = BSFloatIsZero();
  result = 1.0;
  if ((IsZero & 1) == 0)
  {
    [(SBSwitcherSnapshotImageView *)self bounds];
    return CGRectGetHeight(v7) / Height;
  }

  return result;
}

- (void)_updateCornerRadius
{
  imageView = self->_imageView;
  v4 = *(MEMORY[0x277CBF2C0] + 16);
  v10[0] = *MEMORY[0x277CBF2C0];
  v10[1] = v4;
  v10[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIImageView *)imageView setTransform:v10];
  [(SBSwitcherSnapshotImageView *)self _transformScale];
  v6 = 1.0 / v5 * self->_cornerRadius;
  if ([(SBSwitcherSnapshotImageView *)self _isUsingExternalClassicLayout])
  {
    if (SBFEffectiveHomeButtonType() == 2)
    {
      v7 = self->_imageView;
      orientationForClassicLayout = self->_orientationForClassicLayout;
      [(SBSwitcherSnapshotImageView *)self _transformScale];
      [(UIImageView *)v7 sbClassicLayout_applyTransformsForClassicPresentationInLayoutSpaceForInterfaceOrientation:orientationForClassicLayout withInheritedScaleFromContainer:1 applyInheritedScaleToTranslationAndCorners:self->_allowStatusBarToOverlap allowStatusBarToOverlap:self->_cornerRadius > 5.0 useDeviceCornerRadius:?];
    }
  }

  else
  {
    [(UIImageView *)self->_imageView _setContinuousCornerRadius:v6];
    v9 = [(UIImageView *)self->_imageView layer];
    [v9 setMaskedCorners:self->_maskedCorners];
  }
}

- (SBSwitcherSnapshotImageView)initWithImage:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBSwitcherSnapshotImageView;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(SBSwitcherSnapshotImageView *)&v15 initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    imageView = v9->_imageView;
    v9->_imageView = v10;

    [(UIImageView *)v9->_imageView setClipsToBounds:1];
    v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    scalingView = v9->_scalingView;
    v9->_scalingView = v12;

    [(SBSwitcherSnapshotImageView *)v9 addSubview:v9->_scalingView];
    [(UIView *)v9->_scalingView addSubview:v9->_imageView];
    [(SBSwitcherSnapshotImageView *)v9 prepareForReuse];
    [(UIImageView *)v9->_imageView setImage:v4];
    [(SBSwitcherSnapshotImageView *)v9 layoutSubviews];
  }

  return v9;
}

- (void)setImage:(id)a3
{
  [(UIImageView *)self->_imageView setImage:a3];
  [(UIImageView *)self->_imageView sizeToFit];

  [(SBSwitcherSnapshotImageView *)self setNeedsLayout];
}

- (void)setContentMode:(int64_t)a3
{
  if (a3 >= 2)
  {
    [(SBSwitcherSnapshotImageView *)a2 setContentMode:?];
  }

  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    [(UIImageView *)self->_imageView setContentMode:a3];

    [(SBSwitcherSnapshotImageView *)self setNeedsLayout];
  }
}

- (void)setUsesNonuniformScaling:(BOOL)a3
{
  if (self->_usesNonuniformScaling != a3)
  {
    self->_usesNonuniformScaling = a3;
    [(SBSwitcherSnapshotImageView *)self setNeedsLayout];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(SBSwitcherSnapshotImageView *)self _updateCornerRadius];
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  if (self->_maskedCorners != a3)
  {
    self->_maskedCorners = a3;
    [(SBSwitcherSnapshotImageView *)self _updateCornerRadius];
  }
}

- (void)setHasOpaqueContents:(BOOL)a3
{
  if (self->_hasOpaqueContents != a3)
  {
    v3 = a3;
    self->_hasOpaqueContents = a3;
    v5 = [(SBSwitcherSnapshotImageView *)self layer];
    [v5 setContentsOpaque:self->_hasOpaqueContents];

    v6 = [(UIImageView *)self->_imageView layer];
    [v6 setContentsOpaque:v3];
  }
}

- (void)setAllowsEdgeAntialiasing:(BOOL)a3
{
  if (self->_allowsEdgeAntialiasing != a3)
  {
    v4 = a3;
    self->_allowsEdgeAntialiasing = a3;
    v5 = [(UIImageView *)self->_imageView layer];
    [v5 setAllowsEdgeAntialiasing:v4];
  }
}

- (void)setOrientationForClassicLayout:(int64_t)a3
{
  if (self->_orientationForClassicLayout != a3)
  {
    self->_orientationForClassicLayout = a3;
    [(SBSwitcherSnapshotImageView *)self _updateCornerRadius];
  }
}

- (void)setStretchToFillBounds:(BOOL)a3
{
  if (self->_stretchToFillBounds != a3)
  {
    self->_stretchToFillBounds = a3;
    [(SBSwitcherSnapshotImageView *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  [(SBSwitcherSnapshotImageView *)self setImage:0];
  [(SBSwitcherSnapshotImageView *)self setContentMode:0];
  [(SBSwitcherSnapshotImageView *)self setAlpha:1.0];
  [(SBSwitcherSnapshotImageView *)self setHidden:0];
  [(SBSwitcherSnapshotImageView *)self setHasOpaqueContents:1];
  [(SBSwitcherSnapshotImageView *)self setAllowsEdgeAntialiasing:0];
  [(SBSwitcherSnapshotImageView *)self setAllowStatusBarToOverlap:0];
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  [(UIView *)self->_scalingView setBounds:*MEMORY[0x277CBF3A0], v4, v5, v6];
  scalingView = self->_scalingView;
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  v9[0] = *MEMORY[0x277CBF2C0];
  v9[1] = v8;
  v9[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIView *)scalingView setTransform:v9];
  [(UIImageView *)self->_imageView setBounds:v3, v4, v5, v6];
  self->_stretchToFillBounds = 0;
  self->_usesNonuniformScaling = 0;
  self->_orientationForClassicLayout = 0;
  self->_maskedCorners = 15;
  [(SBSwitcherSnapshotImageView *)self _updateCornerRadius];
}

- (void)setContentMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherSnapshotImageView.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"contentMode == UIViewContentModeScaleToFill || contentMode == UIViewContentModeScaleAspectFit"}];
}

@end