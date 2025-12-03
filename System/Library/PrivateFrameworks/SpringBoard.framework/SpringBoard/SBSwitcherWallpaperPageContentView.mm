@interface SBSwitcherWallpaperPageContentView
- (CGRect)_wallpaperFrame;
- (SBSwitcherWallpaperPageContentView)initWithFrame:(CGRect)frame;
- (void)_updateCornerRadius;
- (void)_updateWallpaperOrientation;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setDesiredWallpaperOrientation:(int64_t)orientation;
- (void)setMaskedCorners:(unint64_t)corners;
- (void)setOrientation:(int64_t)orientation;
- (void)setWallpaperStyle:(int64_t)style;
@end

@implementation SBSwitcherWallpaperPageContentView

- (void)_updateCornerRadius
{
  [(SBWallpaperEffectView *)self->_wallpaperEffectView _setContinuousCornerRadius:self->_cornerRadius];
  layer = [(SBWallpaperEffectView *)self->_wallpaperEffectView layer];
  [layer setMaskedCorners:self->_maskedCorners];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBSwitcherWallpaperPageContentView;
  [(SBSwitcherWallpaperPageContentView *)&v4 layoutSubviews];
  wallpaperWrapperView = self->_wallpaperWrapperView;
  [(SBSwitcherWallpaperPageContentView *)self _wallpaperFrame];
  [(BSUIOrientationTransformWrapperView *)wallpaperWrapperView setFrame:?];
  [(SBSwitcherWallpaperPageContentView *)self sendSubviewToBack:self->_wallpaperWrapperView];
  [(SBSwitcherWallpaperPageContentView *)self _updateCornerRadius];
}

- (CGRect)_wallpaperFrame
{
  [(SBSwitcherWallpaperPageContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_wallpaperStyle != 1)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];

    UIRectInset();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_updateWallpaperOrientation
{
  if (self->_desiredWallpaperOrientation)
  {
    desiredWallpaperOrientation = self->_desiredWallpaperOrientation;
  }

  else
  {
    desiredWallpaperOrientation = self->_orientation;
  }

  if ((desiredWallpaperOrientation - 3) < 2 != (self->_orientation - 3) < 2)
  {
    desiredWallpaperOrientation = XBOppositeInterfaceOrientation();
  }

  if ([SBApp homeScreenRotationStyle])
  {
    orientation = 1;
  }

  else
  {
    orientation = self->_orientation;
  }

  [(BSUIOrientationTransformWrapperView *)self->_wallpaperWrapperView setContentOrientation:orientation];
  wallpaperWrapperView = self->_wallpaperWrapperView;

  [(BSUIOrientationTransformWrapperView *)wallpaperWrapperView setContainerOrientation:desiredWallpaperOrientation];
}

- (SBSwitcherWallpaperPageContentView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBSwitcherWallpaperPageContentView;
  v3 = [(SBSwitcherWallpaperPageContentView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_orientation = 0;
    v3->_desiredWallpaperOrientation = 0;
    v3->_wallpaperStyle = 1;
    [(SBSwitcherWallpaperPageContentView *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(SBSwitcherWallpaperPageContentView *)self _updateCornerRadius];
  }
}

- (void)setMaskedCorners:(unint64_t)corners
{
  if (self->_maskedCorners != corners)
  {
    self->_maskedCorners = corners;
    [(SBSwitcherWallpaperPageContentView *)self _updateCornerRadius];
  }
}

- (void)setWallpaperStyle:(int64_t)style
{
  if (self->_wallpaperStyle != style)
  {
    self->_wallpaperStyle = style;
    wallpaperEffectView = self->_wallpaperEffectView;
    if (style == 1)
    {
      if (wallpaperEffectView)
      {
        self->_wallpaperEffectView = 0;
      }

      wallpaperWrapperView = self->_wallpaperWrapperView;
      if (wallpaperWrapperView)
      {
        [(BSUIOrientationTransformWrapperView *)wallpaperWrapperView removeFromSuperview];
        v6 = self->_wallpaperWrapperView;
        self->_wallpaperWrapperView = 0;
      }
    }

    else
    {
      if (!wallpaperEffectView)
      {
        v7 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:1 transformOptions:8];
        v8 = self->_wallpaperEffectView;
        self->_wallpaperEffectView = v7;

        [(SBWallpaperEffectView *)self->_wallpaperEffectView setClipsToBounds:1];
        [(SBSwitcherWallpaperPageContentView *)self setNeedsLayout];
      }

      if (!self->_wallpaperWrapperView)
      {
        v9 = objc_alloc(MEMORY[0x277CF0D78]);
        [(SBSwitcherWallpaperPageContentView *)self _wallpaperFrame];
        v10 = [v9 initWithFrame:?];
        v11 = self->_wallpaperWrapperView;
        self->_wallpaperWrapperView = v10;

        [(BSUIOrientationTransformWrapperView *)self->_wallpaperWrapperView addContentView:self->_wallpaperEffectView];
        _viewForWallpaperWrapper = [(SBSwitcherWallpaperPageContentView *)self _viewForWallpaperWrapper];
        [_viewForWallpaperWrapper insertSubview:self->_wallpaperWrapperView atIndex:0];
      }

      [(SBSwitcherWallpaperPageContentView *)self _updateWallpaperOrientation];
      [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setStyle:self->_wallpaperStyle];
      v13 = self->_wallpaperEffectView;

      [(PBUIWallpaperEffectViewBase *)v13 setForcesOpaque:1];
    }
  }
}

- (void)setOrientation:(int64_t)orientation
{
  if (self->_orientation != orientation)
  {
    self->_orientation = orientation;
    [(SBSwitcherWallpaperPageContentView *)self _updateWallpaperOrientation];
  }
}

- (void)setDesiredWallpaperOrientation:(int64_t)orientation
{
  if (self->_desiredWallpaperOrientation != orientation)
  {
    self->_desiredWallpaperOrientation = orientation;
    [(SBSwitcherWallpaperPageContentView *)self _updateWallpaperOrientation];
  }
}

@end