@interface SBDeviceApplicationSceneOverlayBasicWrapperViewController
- (SBDeviceApplicationSceneOverlayBasicWrapperViewController)initWithContentViewController:(id)controller rendersWhileLocked:(BOOL)locked needsCounterRotation:(BOOL)rotation containerTraitsParticipant:(id)participant;
- (SBDeviceApplicationSceneOverlayView)overlayView;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBDeviceApplicationSceneOverlayBasicWrapperViewController

- (SBDeviceApplicationSceneOverlayBasicWrapperViewController)initWithContentViewController:(id)controller rendersWhileLocked:(BOOL)locked needsCounterRotation:(BOOL)rotation containerTraitsParticipant:(id)participant
{
  controllerCopy = controller;
  participantCopy = participant;
  v16.receiver = self;
  v16.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  v13 = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_rendersWhileLocked = locked;
    objc_storeStrong(&v13->_contentViewController, controller);
    v14->_needsCounterRotation = rotation;
    objc_storeStrong(&v14->_containerTraitsParticipant, participant);
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v6 viewWillAppear:?];
  view = [(UIViewController *)self->_contentViewController view];
  [(UIViewController *)self->_contentViewController beginAppearanceTransition:1 animated:appearCopy];
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self addChildViewController:self->_contentViewController];
  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)self->_contentWrapperView setContentView:view];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v4 viewDidAppear:appear];
  [(UIViewController *)self->_contentViewController endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v6 viewWillDisappear:?];
  [(UIViewController *)self->_contentViewController beginAppearanceTransition:0 animated:disappearCopy];
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  view = [(UIViewController *)self->_contentViewController view];
  [view removeFromSuperview];

  [(UIViewController *)self->_contentViewController removeFromParentViewController];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBDeviceApplicationSceneOverlayBasicWrapperViewController;
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)&v4 viewDidDisappear:disappear];
  [(UIViewController *)self->_contentViewController endAppearanceTransition];
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self setView:0];
}

@end