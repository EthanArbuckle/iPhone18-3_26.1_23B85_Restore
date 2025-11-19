@interface SBLoginAppContainerPluginWrapperViewController
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (SBLoginAppContainerPluginWrapperViewController)initWithPlugin:(id)a3;
- (void)loadView;
@end

@implementation SBLoginAppContainerPluginWrapperViewController

- (SBLoginAppContainerPluginWrapperViewController)initWithPlugin:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SBLoginAppContainerPluginWrapperViewController;
  v6 = [(SBLoginAppContainerPluginWrapperViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plugin, a3);
    v8 = [[SBLockScreenPluginOverlayViewController alloc] initWithPlugin:v7->_plugin];
    overlayController = v7->_overlayController;
    v7->_overlayController = v8;

    v10 = [SBLoginAppContainerOverlayWrapperView alloc];
    v11 = [(SBLockOverlayViewController *)v7->_overlayController overlayView];
    v12 = [(SBLoginAppContainerOverlayWrapperView *)v10 initWithFrame:v11 overlayView:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    overlayWrapperView = v7->_overlayWrapperView;
    v7->_overlayWrapperView = v12;
  }

  return v7;
}

- (void)loadView
{
  v3 = [(SBLockScreenPlugin *)self->_plugin viewController];
  [v3 willMoveToParentViewController:self];

  v4 = [(SBLockScreenPlugin *)self->_plugin viewController];
  [(SBLoginAppContainerPluginWrapperViewController *)self addChildViewController:v4];

  v5 = [SBLoginAppContainerPluginWrapperView alloc];
  overlayWrapperView = self->_overlayWrapperView;
  v7 = [(SBLockScreenPlugin *)self->_plugin viewController];
  v8 = [v7 view];
  v9 = [(SBLoginAppContainerPluginWrapperView *)v5 initWithFrame:overlayWrapperView overlayWrapperView:v8 pluginView:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  containerView = self->_containerView;
  self->_containerView = v9;

  [(SBLoginAppContainerPluginWrapperViewController *)self setView:self->_containerView];
  v11 = [(SBLockScreenPlugin *)self->_plugin viewController];
  [v11 didMoveToParentViewController:self];
}

- (BOOL)handleVolumeUpButtonPress
{
  plugin = self->_plugin;
  v3 = [MEMORY[0x277D02BF8] eventWithType:30];
  LOBYTE(plugin) = [(SBLockScreenPlugin *)plugin handleDashBoardEvent:v3];

  return plugin;
}

- (BOOL)handleVolumeDownButtonPress
{
  plugin = self->_plugin;
  v3 = [MEMORY[0x277D02BF8] eventWithType:31];
  LOBYTE(plugin) = [(SBLockScreenPlugin *)plugin handleDashBoardEvent:v3];

  return plugin;
}

@end