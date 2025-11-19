@interface SBDeviceApplicationSceneOverlayBasicWrapperViewController
- (SBDeviceApplicationSceneOverlayBasicWrapperViewController)initWithContentViewController:(id)a3 rendersWhileLocked:(BOOL)a4 needsCounterRotation:(BOOL)a5 containerTraitsParticipant:(id)a6;
- (SBDeviceApplicationSceneOverlayView)overlayView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBDeviceApplicationSceneOverlayBasicWrapperViewController

- (SBDeviceApplicationSceneOverlayBasicWrapperViewController)initWithContentViewController:(id)a3 rendersWhileLocked:(BOOL)a4 needsCounterRotation:(BOOL)a5 containerTraitsParticipant:(id)a6
{
  v11 = a3;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  v13 = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_rendersWhileLocked = a4;
    objc_storeStrong(&v13->_contentViewController, a3);
    v14->_needsCounterRotation = a5;
    objc_storeStrong(&v14->_containerTraitsParticipant, a6);
  }

  return v14;
}

- (void)loadView
{
  v3 = [SBDeviceApplicationCounterRotatableSceneOverlayView alloc];
  v4 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)v3 initWithFrame:self->_needsCounterRotation contentNeedsCounterRotation:self delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  contentWrapperView = self->_contentWrapperView;
  self->_contentWrapperView = v4;

  v6 = self->_contentWrapperView;

  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self setView:v6];
}

- (SBDeviceApplicationSceneOverlayView)overlayView
{
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self loadViewIfNeeded];
  contentWrapperView = self->_contentWrapperView;

  return contentWrapperView;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v6 viewWillAppear:?];
  v5 = [(UIViewController *)self->_contentViewController view];
  [(UIViewController *)self->_contentViewController beginAppearanceTransition:1 animated:v3];
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self addChildViewController:self->_contentViewController];
  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self->_contentWrapperView setContentView:v5];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v4 viewDidAppear:a3];
  [(UIViewController *)self->_contentViewController endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v6 viewWillDisappear:?];
  [(UIViewController *)self->_contentViewController beginAppearanceTransition:0 animated:v3];
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  v5 = [(UIViewController *)self->_contentViewController view];
  [v5 removeFromSuperview];

  [(UIViewController *)self->_contentViewController removeFromParentViewController];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v4 viewDidDisappear:a3];
  [(UIViewController *)self->_contentViewController endAppearanceTransition];
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self setView:0];
}

@end