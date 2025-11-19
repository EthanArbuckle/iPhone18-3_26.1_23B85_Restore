@interface _SBInCallProxySceneBackgroundView
- (BOOL)isFullscreen;
- (BOOL)needsClassicModeBackground;
- (BOOL)shouldUseBrightMaterial;
- (SBApplicationSceneBackgroundView)proxyTarget;
- (_SBInCallProxySceneBackgroundView)initWithFrame:(CGRect)a3 proxyTarget:(id)a4;
- (int64_t)wallpaperStyle;
- (void)setFullscreen:(BOOL)a3;
- (void)setNeedsClassicModeBackground:(BOOL)a3;
- (void)setShouldUseBrightMaterial:(BOOL)a3;
- (void)setWallpaperStyle:(int64_t)a3;
- (void)setWallpaperStyle:(int64_t)a3 withAnimationSettings:(id)a4;
@end

@implementation _SBInCallProxySceneBackgroundView

- (_SBInCallProxySceneBackgroundView)initWithFrame:(CGRect)a3 proxyTarget:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _SBInCallProxySceneBackgroundView;
  v10 = [(_SBInCallProxySceneBackgroundView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_proxyTarget, v9);
  }

  return v11;
}

- (BOOL)isFullscreen
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained isFullscreen];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setFullscreen:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setFullscreen:v3];
  }
}

- (BOOL)needsClassicModeBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained needsClassicModeBackground];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNeedsClassicModeBackground:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setNeedsClassicModeBackground:v3];
  }
}

- (BOOL)shouldUseBrightMaterial
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained shouldUseBrightMaterial];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setShouldUseBrightMaterial:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setShouldUseBrightMaterial:v3];
  }
}

- (void)setWallpaperStyle:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setWallpaperStyle:a3];
  }
}

- (void)setWallpaperStyle:(int64_t)a3 withAnimationSettings:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setWallpaperStyle:a3 withAnimationSettings:v7];
  }
}

- (int64_t)wallpaperStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    v3 = [WeakRetained wallpaperStyle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBApplicationSceneBackgroundView)proxyTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);

  return WeakRetained;
}

@end