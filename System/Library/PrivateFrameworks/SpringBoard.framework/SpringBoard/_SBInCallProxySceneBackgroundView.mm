@interface _SBInCallProxySceneBackgroundView
- (BOOL)isFullscreen;
- (BOOL)needsClassicModeBackground;
- (BOOL)shouldUseBrightMaterial;
- (SBApplicationSceneBackgroundView)proxyTarget;
- (_SBInCallProxySceneBackgroundView)initWithFrame:(CGRect)frame proxyTarget:(id)target;
- (int64_t)wallpaperStyle;
- (void)setFullscreen:(BOOL)fullscreen;
- (void)setNeedsClassicModeBackground:(BOOL)background;
- (void)setShouldUseBrightMaterial:(BOOL)material;
- (void)setWallpaperStyle:(int64_t)style;
- (void)setWallpaperStyle:(int64_t)style withAnimationSettings:(id)settings;
@end

@implementation _SBInCallProxySceneBackgroundView

- (_SBInCallProxySceneBackgroundView)initWithFrame:(CGRect)frame proxyTarget:(id)target
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  targetCopy = target;
  v13.receiver = self;
  v13.super_class = _SBInCallProxySceneBackgroundView;
  height = [(_SBInCallProxySceneBackgroundView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_proxyTarget, targetCopy);
  }

  return v11;
}

- (BOOL)isFullscreen
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    isFullscreen = [WeakRetained isFullscreen];
  }

  else
  {
    isFullscreen = 0;
  }

  return isFullscreen;
}

- (void)setFullscreen:(BOOL)fullscreen
{
  fullscreenCopy = fullscreen;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setFullscreen:fullscreenCopy];
  }
}

- (BOOL)needsClassicModeBackground
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    needsClassicModeBackground = [WeakRetained needsClassicModeBackground];
  }

  else
  {
    needsClassicModeBackground = 0;
  }

  return needsClassicModeBackground;
}

- (void)setNeedsClassicModeBackground:(BOOL)background
{
  backgroundCopy = background;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setNeedsClassicModeBackground:backgroundCopy];
  }
}

- (BOOL)shouldUseBrightMaterial
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    shouldUseBrightMaterial = [WeakRetained shouldUseBrightMaterial];
  }

  else
  {
    shouldUseBrightMaterial = 0;
  }

  return shouldUseBrightMaterial;
}

- (void)setShouldUseBrightMaterial:(BOOL)material
{
  materialCopy = material;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setShouldUseBrightMaterial:materialCopy];
  }
}

- (void)setWallpaperStyle:(int64_t)style
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setWallpaperStyle:style];
  }
}

- (void)setWallpaperStyle:(int64_t)style withAnimationSettings:(id)settings
{
  settingsCopy = settings;
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained setWallpaperStyle:style withAnimationSettings:settingsCopy];
  }
}

- (int64_t)wallpaperStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);
  if (objc_opt_respondsToSelector())
  {
    wallpaperStyle = [WeakRetained wallpaperStyle];
  }

  else
  {
    wallpaperStyle = 0;
  }

  return wallpaperStyle;
}

- (SBApplicationSceneBackgroundView)proxyTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyTarget);

  return WeakRetained;
}

@end