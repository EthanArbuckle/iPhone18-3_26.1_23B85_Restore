@interface SBIconImageCrossfadeView
- (CGPoint)stretchAnchorPoint;
- (SBIconImageCrossfadeView)initWithSource:(id)source crossfadeView:(id)view;
- (id)effectiveIconImageAppearance;
- (void)_applyCornerRadius:(double)radius;
- (void)_applyCrossfadeScaleX:(double)x scaleY:(double)y;
- (void)_setCornerRadiusEnabled:(BOOL)enabled;
- (void)_updateCornerMask;
- (void)cleanup;
- (void)layoutSubviews;
- (void)prepareGeometry;
- (void)setAppSnapshotCornerRadius:(double)radius;
- (void)setCrossfadeFraction:(double)fraction;
- (void)setCrossfadeStyle:(unint64_t)style;
- (void)setMasksCorners:(BOOL)corners;
- (void)setMorphFraction:(double)fraction;
- (void)setSourceFadeFraction:(double)fraction;
- (void)setStretchAnchorPoint:(CGPoint)point;
- (void)updateAfterIconStyleTraitChange;
@end

@implementation SBIconImageCrossfadeView

- (void)_updateCornerMask
{
  [(SBIconImageCrossfadeView *)self _setCornerRadiusEnabled:self->_masksCorners];
  if (!self->_masksCorners)
  {

    [(SBIconImageCrossfadeView *)self _applyCornerRadius:0.0];
  }
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = SBIconImageCrossfadeView;
  [(SBIconImageCrossfadeView *)&v52 layoutSubviews];
  [(SBIconImageCrossfadeView *)self bounds];
  rect.origin.y = v3;
  [(SBCrossfadingIconImageSource *)self->_iconImageSource visibleBounds];
  v47 = v5;
  rect.origin.x = v4;
  v7 = v6;
  v9 = v8;
  morphFraction = self->_morphFraction;
  v11 = 1.0 - morphFraction * (1.0 - self->_containerScaleX);
  v12 = 1.0 - morphFraction * (1.0 - self->_containerScaleY);
  memset(&v51, 0, sizeof(v51));
  CGAffineTransformMakeScale(&v51, v11, v12);
  layer = [(UIView *)self->_containerView layer];
  [layer anchorPoint];
  v15 = v14;
  v17 = v16;

  UIRectGetCenter();
  v45 = 1.0 - v11;
  v46 = v11;
  v19 = v18 + (1.0 - v11) * (v15 + -0.5) * v7;
  v21 = v20 + (1.0 - v12) * (v17 + -0.5) * v9;
  v22 = v7 * v11;
  v23 = v12;
  v24 = v9 * v12;
  [(UIView *)self->_containerView setFrame:v19 + v22 * -0.5, v21 + v9 * v12 * -0.5, v22, v9 * v12];
  backgroundView = self->_backgroundView;
  [(UIView *)self->_containerView bounds];
  [(UIView *)backgroundView setFrame:?];
  v53.origin.x = rect.origin.x;
  v53.origin.y = v47;
  v53.size.width = v7;
  v53.size.height = v9;
  if (CGRectGetWidth(v53) <= 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = rect.origin.y / v7;
  }

  CGAffineTransformMakeScale(&rect.size, v26, v26);
  v27 = *(&v49 + 1);
  height = rect.size.height;
  v29 = v24 * *&v49 + rect.size.width * v22;
  iconImageView = self->_iconImageView;
  [(UIView *)self->_containerView bounds];
  UIRectGetCenter();
  [(UIView *)iconImageView setCenter:?];
  if (v29 > 0.0 && v24 * v27 + height * v22 > 0.0)
  {
    [(UIView *)self->_iconImageView setBounds:0.0, 0.0, v29];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SBCrossfadingIconImageSource *)self->_iconImageSource alternateContentsLayer];
  }

  else
  {
    [(UIView *)self->_iconImageView layer];
  }
  v31 = ;
  traitCollection = [(SBIconImageCrossfadeView *)self traitCollection];
  [traitCollection displayScale];
  v34 = v33;

  [v31 setContentsScale:v34];
  crossfadeStyle = self->_crossfadeStyle;
  if (crossfadeStyle == 1)
  {
    [(UIView *)self->_iconImageView setContentMode:1];
    v38 = self->_iconImageView;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)v38 setBackgroundColor:systemBackgroundColor];
  }

  else if (!crossfadeStyle)
  {
    v36 = v46;
    if (v46 <= v23)
    {
      v37 = 0.0;
      v36 = 1.0;
      if (v46 < v23)
      {
        v40 = v31;
        v41 = v23;
LABEL_18:
        [v40 setContentsRect:{v37, 0.0, v36, v41}];
        goto LABEL_19;
      }
    }

    else
    {
      v37 = v45 * 0.5;
    }

    v41 = 1.0;
    v40 = v31;
    goto LABEL_18;
  }

LABEL_19:
  crossfadeContainerView = self->_crossfadeContainerView;
  [(UIView *)self->_containerView bounds];
  UIRectGetCenter();
  [(UIView *)crossfadeContainerView setCenter:?];
  v43 = self->_crossfadeContainerView;
  rect.size = *&v51.a;
  v49 = *&v51.c;
  v50 = *&v51.tx;
  [(UIView *)v43 setTransform:&rect.size];
  crossfadeView = self->_crossfadeView;
  [(UIView *)self->_crossfadeContainerView bounds];
  UIRectGetCenter();
  [(UIView *)crossfadeView setCenter:?];
}

- (void)prepareGeometry
{
  backgroundView = self->_backgroundView;
  [(UIView *)self->_iconImageView bounds];
  [(UIView *)backgroundView setFrame:?];
  [(SBCrossfadingIconImageSource *)self->_iconImageSource visibleBounds];
  v5 = v4;
  v7 = v6;
  [(UIView *)self->_crossfadeView bounds];
  if (v8 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5 / v8;
  }

  if (v9 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7 / v9;
  }

  [(SBIconImageCrossfadeView *)self _applyCrossfadeScaleX:v10 scaleY:v11];
  self->_containerScaleY = 1.0;
  self->_containerScaleX = 1.0;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (v10 >= v11)
    {
      v13 = v10 / v11;
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      self->_containerScaleY = v13;
    }

    else
    {
      v12 = v11 / v10;
      if (v10 == 0.0)
      {
        v12 = 0.0;
      }

      self->_containerScaleX = v12;
    }
  }
}

- (void)cleanup
{
  [(UIView *)self->_iconImageView setAlpha:1.0];
  [(SBCrossfadingIconImageSource *)self->_iconImageSource setShowsSquareCorners:0];
  [(UIView *)self->_crossfadeView setAlpha:1.0];
  crossfadeView = self->_crossfadeView;
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v4;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(UIView *)crossfadeView setTransform:v5];
}

- (SBIconImageCrossfadeView)initWithSource:(id)source crossfadeView:(id)view
{
  v25[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = SBIconImageCrossfadeView;
  v9 = [(SBIconImageCrossfadeView *)&v24 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v9)
  {
    _containerViewClass = [objc_opt_class() _containerViewClass];
    v11 = objc_alloc_init(_containerViewClass);
    containerView = v9->_containerView;
    v9->_containerView = v11;

    [(SBIconImageCrossfadeView *)v9 addSubview:v9->_containerView];
    objc_storeStrong(&v9->_iconImageSource, source);
    sourceView = [(SBCrossfadingIconImageSource *)v9->_iconImageSource sourceView];
    iconImageView = v9->_iconImageView;
    v9->_iconImageView = sourceView;

    if (objc_opt_respondsToSelector())
    {
      v15 = [(SBCrossfadingIconImageSource *)v9->_iconImageSource sourceBackgroundView:v9->_iconImageView];
      backgroundView = v9->_backgroundView;
      v9->_backgroundView = v15;

      if (v9->_backgroundView)
      {
        [(UIView *)v9->_containerView addSubview:?];
      }
    }

    [(UIView *)v9->_containerView addSubview:v9->_iconImageView];
    v17 = [_containerViewClass alloc];
    [viewCopy bounds];
    v18 = [v17 initWithFrame:?];
    crossfadeContainerView = v9->_crossfadeContainerView;
    v9->_crossfadeContainerView = v18;

    [(UIView *)v9->_containerView addSubview:v9->_crossfadeContainerView];
    objc_storeStrong(&v9->_crossfadeView, view);
    [(UIView *)v9->_crossfadeContainerView addSubview:v9->_crossfadeView];
    v20 = objc_opt_self();
    v25[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v22 = [(SBIconImageCrossfadeView *)v9 registerForTraitChanges:v21 withAction:sel_updateAfterIconStyleTraitChange];
  }

  return v9;
}

- (void)setMasksCorners:(BOOL)corners
{
  if (self->_masksCorners != corners)
  {
    if (corners)
    {
      [(SBCrossfadingIconImageSource *)self->_iconImageSource continuousCornerRadius];
      v4 = BSFloatIsZero() ^ 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    self->_masksCorners = v4;

    [(SBIconImageCrossfadeView *)self _updateCornerMask];
  }
}

- (void)setStretchAnchorPoint:(CGPoint)point
{
  p_stretchAnchorPoint = &self->_stretchAnchorPoint;
  self->_stretchAnchorPoint = point;
  containerView = [(SBIconImageCrossfadeView *)self containerView];
  [containerView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  layer = [containerView layer];
  [layer setAnchorPoint:{p_stretchAnchorPoint->x, p_stretchAnchorPoint->y}];

  [containerView setFrame:{v5, v7, v9, v11}];
}

- (void)setCrossfadeFraction:(double)fraction
{
  [(SBIconImageCrossfadeView *)self setSourceFadeFraction:?];

  [(SBIconImageCrossfadeView *)self setCrossfadeViewFadeFraction:fraction];
}

- (void)setAppSnapshotCornerRadius:(double)radius
{
  if ([(SBIconImageCrossfadeView *)self masksCorners])
  {

    [(SBIconImageCrossfadeView *)self _applyCornerRadius:radius];
  }
}

- (void)setMorphFraction:(double)fraction
{
  if (self->_morphFraction != fraction)
  {
    self->_morphFraction = fraction;
    [(SBIconImageCrossfadeView *)self setNeedsLayout];

    [(SBIconImageCrossfadeView *)self layoutIfNeeded];
  }
}

- (void)setSourceFadeFraction:(double)fraction
{
  if (self->_performsTrueCrossfade)
  {
    v5 = 1.0 - fraction;
    [(UIView *)self->_iconImageView setAlpha:1.0 - fraction];
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView setAlpha:v5];
  }
}

- (void)setCrossfadeStyle:(unint64_t)style
{
  if (self->_crossfadeStyle != style)
  {
    self->_crossfadeStyle = style;
    [(SBIconImageCrossfadeView *)self setNeedsLayout];

    [(SBIconImageCrossfadeView *)self layoutIfNeeded];
  }
}

- (void)_applyCrossfadeScaleX:(double)x scaleY:(double)y
{
  memset(&v7, 0, sizeof(v7));
  CGAffineTransformMakeScale(&v7, x, y);
  crossfadeView = self->_crossfadeView;
  v6 = v7;
  [(UIView *)crossfadeView setTransform:&v6];
}

- (void)_setCornerRadiusEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(SBCrossfadingIconImageSource *)self->_iconImageSource setShowsSquareCorners:?];
  containerView = [(SBIconImageCrossfadeView *)self containerView];
  layer = [containerView layer];
  [layer setMasksToBounds:enabledCopy];
}

- (void)_applyCornerRadius:(double)radius
{
  containerView = [(SBIconImageCrossfadeView *)self containerView];
  [containerView _setContinuousCornerRadius:radius];
}

- (id)effectiveIconImageAppearance
{
  traitCollection = [(SBIconImageCrossfadeView *)self traitCollection];
  v3 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];

  return v3;
}

- (void)updateAfterIconStyleTraitChange
{
  effectiveIconImageAppearance = [(SBIconImageCrossfadeView *)self effectiveIconImageAppearance];
  if (objc_opt_respondsToSelector())
  {
    [(SBCrossfadingIconImageSource *)self->_iconImageSource applyGlassIfDesiredToView:self->_containerView forIconImageAppearance:effectiveIconImageAppearance sourceView:self->_iconImageView];
  }
}

- (CGPoint)stretchAnchorPoint
{
  x = self->_stretchAnchorPoint.x;
  y = self->_stretchAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end