@interface SBLockScreenPluginOverlayViewController
+ (BOOL)_pluginNeedsOverlay:(id)overlay;
- (SBLockScreenPluginOverlayViewController)initWithPlugin:(id)plugin;
- (id)_newOverlayView;
- (void)loadView;
@end

@implementation SBLockScreenPluginOverlayViewController

+ (BOOL)_pluginNeedsOverlay:(id)overlay
{
  overlayCopy = overlay;
  appearance = [overlayCopy appearance];
  backgroundStyle = [appearance backgroundStyle];

  if (backgroundStyle == 3)
  {
    v6 = +[SBWallpaperController sharedInstance];
    v7 = [v6 legibilitySettingsForVariant:0];
    appearance2 = [overlayCopy appearance];
    legibilitySettings = [appearance2 legibilitySettings];

    style = [v7 style];
    v12 = [legibilitySettings style] != 2 && style == 2;
  }

  else
  {
    v12 = backgroundStyle != 0;
  }

  return v12;
}

- (SBLockScreenPluginOverlayViewController)initWithPlugin:(id)plugin
{
  pluginCopy = plugin;
  if ([SBLockScreenPluginOverlayViewController _pluginNeedsOverlay:pluginCopy])
  {
    v9.receiver = self;
    v9.super_class = SBLockScreenPluginOverlayViewController;
    v5 = [(SBLockScreenPluginOverlayViewController *)&v9 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_plugin, pluginCopy);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)loadView
{
  _newOverlayView = [(SBLockScreenPluginOverlayViewController *)self _newOverlayView];
  [(SBLockScreenPluginOverlayViewController *)self setView:_newOverlayView];
}

- (id)_newOverlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);
  appearance = [WeakRetained appearance];
  backgroundStyle = [appearance backgroundStyle];

  if (!backgroundStyle)
  {
    return 0;
  }

  if (backgroundStyle != 2)
  {
    backgroundStyle = 1;
  }

  v5 = [SBLockOverlayView alloc];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBUILockOverlayView *)v5 initWithFrame:backgroundStyle style:v6, v7, v8, v9];
}

@end