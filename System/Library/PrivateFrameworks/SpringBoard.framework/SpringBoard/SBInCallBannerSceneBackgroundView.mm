@interface SBInCallBannerSceneBackgroundView
- (SBInCallBannerSceneBackgroundView)initWithFrame:(CGRect)frame wallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options;
- (void)_updateBackdropView;
- (void)layoutSubviews;
- (void)setWallpaperAlpha:(double)alpha;
- (void)setWallpaperStyle:(int64_t)style;
@end

@implementation SBInCallBannerSceneBackgroundView

- (SBInCallBannerSceneBackgroundView)initWithFrame:(CGRect)frame wallpaperVariant:(int64_t)variant transformOptions:(unint64_t)options
{
  v8.receiver = self;
  v8.super_class = SBInCallBannerSceneBackgroundView;
  result = [(SBInCallBannerSceneBackgroundView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_wallpaperStyle = 1;
    result->_wallpaperVariant = variant;
    result->_transformOptions = options;
  }

  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SBInCallBannerSceneBackgroundView;
  [(SBInCallBannerSceneBackgroundView *)&v11 layoutSubviews];
  [(SBInCallBannerSceneBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  [(SBWallpaperEffectView *)self->_wallpaperEffectView setFrame:v4, v6, v8, v10];
}

- (void)setWallpaperAlpha:(double)alpha
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_wallpaperAlpha = alpha;
    if (BSFloatGreaterThanFloat() && !self->_wallpaperEffectView)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __55__SBInCallBannerSceneBackgroundView_setWallpaperAlpha___block_invoke;
      v6[3] = &unk_2783A8C18;
      v6[4] = self;
      v5 = MEMORY[0x223D6F7F0](v6);
      if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
      {
        [MEMORY[0x277D75D18] _performWithoutRetargetingAnimations:v5];
      }

      else if ([MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled])
      {
        [MEMORY[0x277D75D18] performWithoutAnimation:v5];
      }

      else
      {
        v5[2](v5);
      }
    }

    [(SBWallpaperEffectView *)self->_wallpaperEffectView setAlpha:self->_wallpaperAlpha];
  }
}

uint64_t __55__SBInCallBannerSceneBackgroundView_setWallpaperAlpha___block_invoke(uint64_t a1)
{
  v2 = [[SBWallpaperEffectView alloc] initWithWallpaperVariant:*(*(a1 + 32) + 432) transformOptions:*(*(a1 + 32) + 416)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  *(v3 + 424) = v2;

  v5 = *(a1 + 32);
  v6 = v5[53];
  [v5 bounds];
  [v6 setFrame:?];
  [*(*(a1 + 32) + 424) setStyle:*(*(a1 + 32) + 456)];
  [*(*(a1 + 32) + 424) setFullscreen:*(*(a1 + 32) + 440)];
  [*(*(a1 + 32) + 424) setForcesOpaque:1];
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  v7 = *(a1 + 32);
  v8 = v7[53];

  return [v7 addSubview:v8];
}

- (void)setWallpaperStyle:(int64_t)style
{
  if (self->_wallpaperStyle != style)
  {
    self->_wallpaperStyle = style;
    [(SBInCallBannerSceneBackgroundView *)self _updateBackdropView];
    wallpaperEffectView = self->_wallpaperEffectView;
    wallpaperStyle = self->_wallpaperStyle;

    [(PBUIWallpaperEffectViewBase *)wallpaperEffectView setStyle:wallpaperStyle];
  }
}

- (void)_updateBackdropView
{
  _WallpaperBackdropParametersForStyleAndAverageColor();
  [(_UIBackdropView *)self->_backdropView removeFromSuperview];
  backdropView = self->_backdropView;
  self->_backdropView = 0;
}

@end