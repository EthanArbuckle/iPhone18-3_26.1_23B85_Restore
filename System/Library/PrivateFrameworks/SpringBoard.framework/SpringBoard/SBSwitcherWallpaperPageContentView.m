@interface SBSwitcherWallpaperPageContentView
- (CGRect)_wallpaperFrame;
- (SBSwitcherWallpaperPageContentView)initWithFrame:(CGRect)a3;
- (void)_updateCornerRadius;
- (void)_updateWallpaperOrientation;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setDesiredWallpaperOrientation:(int64_t)a3;
- (void)setMaskedCorners:(unint64_t)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setWallpaperStyle:(int64_t)a3;
@end

@implementation SBSwitcherWallpaperPageContentView

- (void)_updateCornerRadius
{
  [(SBWallpaperEffectView *)self->_wallpaperEffectView _setContinuousCornerRadius:self->_cornerRadius];
  v3 = [(SBWallpaperEffectView *)self->_wallpaperEffectView layer];
  [v3 setMaskedCorners:self->_maskedCorners];
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
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];

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

- (SBSwitcherWallpaperPageContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBSwitcherWallpaperPageContentView;
  v3 = [(SBSwitcherWallpaperPageContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(SBSwitcherWallpaperPageContentView *)self _updateCornerRadius];
  }
}

- (void)setMaskedCorners:(unint64_t)a3
{
  if (self->_maskedCorners != a3)
  {
    self->_maskedCorners = a3;
    [(SBSwitcherWallpaperPageContentView *)self _updateCornerRadius];
  }
}

- (void)setWallpaperStyle:(int64_t)a3
{
  if (self->_wallpaperStyle != a3)
  {
    self->_wallpaperStyle = a3;
    wallpaperEffectView = self->_wallpaperEffectView;
    if (a3 == 1)
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
        v12 = [(SBSwitcherWallpaperPageContentView *)self _viewForWallpaperWrapper];
        [v12 insertSubview:self->_wallpaperWrapperView atIndex:0];
      }

      [(SBSwitcherWallpaperPageContentView *)self _updateWallpaperOrientation];
      [(PBUIWallpaperEffectViewBase *)self->_wallpaperEffectView setStyle:self->_wallpaperStyle];
      v13 = self->_wallpaperEffectView;

      [(PBUIWallpaperEffectViewBase *)v13 setForcesOpaque:1];
    }
  }
}

- (void)setOrientation:(int64_t)a3
{
  if (self->_orientation != a3)
  {
    self->_orientation = a3;
    [(SBSwitcherWallpaperPageContentView *)self _updateWallpaperOrientation];
  }
}

- (void)setDesiredWallpaperOrientation:(int64_t)a3
{
  if (self->_desiredWallpaperOrientation != a3)
  {
    self->_desiredWallpaperOrientation = a3;
    [(SBSwitcherWallpaperPageContentView *)self _updateWallpaperOrientation];
  }
}

@end