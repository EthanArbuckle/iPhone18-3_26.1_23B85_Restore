@interface SBTransientOverlayWallpaperEffectView
- (CATransform3D)_currentWallpaperTransform;
- (SBTransientOverlayWallpaperEffectView)initWithFrame:(CGRect)a3 wallpaperVariant:(int64_t)a4;
- (void)_updateWallpaperGeometry;
- (void)layoutSubviews;
- (void)setContainerOrientation:(int64_t)a3;
- (void)setTransitionState:(id *)a3;
@end

@implementation SBTransientOverlayWallpaperEffectView

- (SBTransientOverlayWallpaperEffectView)initWithFrame:(CGRect)a3 wallpaperVariant:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = SBTransientOverlayWallpaperEffectView;
  v5 = [(SBTransientOverlayWallpaperEffectView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D75EC0]);
    [(SBTransientOverlayWallpaperEffectView *)v5 bounds];
    v7 = [v6 initWithFrame:?];
    wallpaperRotationView = v5->_wallpaperRotationView;
    v5->_wallpaperRotationView = v7;

    [(_UIDirectionalRotationView *)v5->_wallpaperRotationView setCounterTransformView:1];
    [(SBTransientOverlayWallpaperEffectView *)v5 addSubview:v5->_wallpaperRotationView];
    v9 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:a4 transformOptions:1];
    wallpaperEffectView = v5->_wallpaperEffectView;
    v5->_wallpaperEffectView = v9;

    [(PBUIWallpaperEffectViewBase *)v5->_wallpaperEffectView setForcesOpaque:1];
    [(PBUIWallpaperEffectViewBase *)v5->_wallpaperEffectView setFullscreen:1];
    [(SBWallpaperEffectView *)v5->_wallpaperEffectView setAlpha:1.0];
    [(_UIDirectionalRotationView *)v5->_wallpaperRotationView addSubview:v5->_wallpaperEffectView];
    [(SBTransientOverlayWallpaperEffectView *)v5 _updateWallpaperGeometry];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBTransientOverlayWallpaperEffectView;
  [(SBTransientOverlayWallpaperEffectView *)&v3 layoutSubviews];
  [(SBTransientOverlayWallpaperEffectView *)self _updateWallpaperGeometry];
}

- (void)setContainerOrientation:(int64_t)a3
{
  if (self->_containerOrientation != a3)
  {
    self->_containerOrientation = a3;
    [(SBTransientOverlayWallpaperEffectView *)self _updateWallpaperGeometry];
  }
}

- (void)setTransitionState:(id *)a3
{
  wallpaperEffectView = self->_wallpaperEffectView;
  v4 = *a3;
  [(PBUIWallpaperEffectViewBase *)wallpaperEffectView setTransitionState:&v4];
}

- (CATransform3D)_currentWallpaperTransform
{
  result = [(SBTransientOverlayWallpaperEffectView *)self containerOrientation];
  v5 = MEMORY[0x277CD9DE8];
  v6 = *(MEMORY[0x277CD9DE8] + 80);
  *&retstr->m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&retstr->m33 = v6;
  v7 = v5[7];
  *&retstr->m41 = v5[6];
  *&retstr->m43 = v7;
  v8 = v5[1];
  *&retstr->m11 = *v5;
  *&retstr->m13 = v8;
  v9 = v5[3];
  *&retstr->m21 = v5[2];
  *&retstr->m23 = v9;
  if (result != 1)
  {
    BSDegreesToRadians();

    return CATransform3DMakeRotation(retstr, v10, 0.0, 0.0, 1.0);
  }

  return result;
}

- (void)_updateWallpaperGeometry
{
  [(SBTransientOverlayWallpaperEffectView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  [(SBTransientOverlayWallpaperEffectView *)self _currentWallpaperTransform];
  v11 = [(SBTransientOverlayWallpaperEffectView *)self containerOrientation];
  Height = v8;
  Width = v10;
  if ((v11 - 3) <= 1)
  {
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    Height = CGRectGetHeight(v26);
    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    Width = CGRectGetWidth(v27);
  }

  [(_UIDirectionalRotationView *)self->_wallpaperRotationView setBounds:v4, v6, Height, Width];
  wallpaperRotationView = self->_wallpaperRotationView;
  UIRectGetCenter();
  [(_UIDirectionalRotationView *)wallpaperRotationView setCenter:?];
  v15 = self->_wallpaperRotationView;
  v17[4] = v22;
  v17[5] = v23;
  v17[6] = v24;
  v17[7] = v25;
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  [(_UIDirectionalRotationView *)v15 setTransform3D:v17];
  wallpaperEffectView = self->_wallpaperEffectView;
  [(_UIDirectionalRotationView *)self->_wallpaperRotationView bounds];
  [(SBWallpaperEffectView *)wallpaperEffectView setFrame:?];
  [(_UIDirectionalRotationView *)self->_wallpaperRotationView layoutIfNeeded];
  [(SBWallpaperEffectView *)self->_wallpaperEffectView layoutIfNeeded];
}

@end