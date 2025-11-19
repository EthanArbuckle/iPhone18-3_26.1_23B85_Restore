@interface SBLockScreenPluginOverlayViewController
+ (BOOL)_pluginNeedsOverlay:(id)a3;
- (SBLockScreenPluginOverlayViewController)initWithPlugin:(id)a3;
- (id)_newOverlayView;
- (void)loadView;
@end

@implementation SBLockScreenPluginOverlayViewController

+ (BOOL)_pluginNeedsOverlay:(id)a3
{
  v3 = a3;
  v4 = [v3 appearance];
  v5 = [v4 backgroundStyle];

  if (v5 == 3)
  {
    v6 = +[SBWallpaperController sharedInstance];
    v7 = [v6 legibilitySettingsForVariant:0];
    v8 = [v3 appearance];
    v9 = [v8 legibilitySettings];

    v10 = [v7 style];
    v12 = [v9 style] != 2 && v10 == 2;
  }

  else
  {
    v12 = v5 != 0;
  }

  return v12;
}

- (SBLockScreenPluginOverlayViewController)initWithPlugin:(id)a3
{
  v4 = a3;
  if ([SBLockScreenPluginOverlayViewController _pluginNeedsOverlay:v4])
  {
    v9.receiver = self;
    v9.super_class = SBLockScreenPluginOverlayViewController;
    v5 = [(SBLockScreenPluginOverlayViewController *)&v9 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_plugin, v4);
    }

    self = v6;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)loadView
{
  v3 = [(SBLockScreenPluginOverlayViewController *)self _newOverlayView];
  [(SBLockScreenPluginOverlayViewController *)self setView:v3];
}

- (id)_newOverlayView
{
  WeakRetained = objc_loadWeakRetained(&self->_plugin);
  v3 = [WeakRetained appearance];
  v4 = [v3 backgroundStyle];

  if (!v4)
  {
    return 0;
  }

  if (v4 != 2)
  {
    v4 = 1;
  }

  v5 = [SBLockOverlayView alloc];
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);

  return [(SBUILockOverlayView *)v5 initWithFrame:v4 style:v6, v7, v8, v9];
}

@end