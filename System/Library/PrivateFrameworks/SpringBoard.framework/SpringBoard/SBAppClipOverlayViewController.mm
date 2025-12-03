@interface SBAppClipOverlayViewController
- (NSString)description;
- (SBAppClipOverlayViewController)initWithCoder:(id)coder;
- (SBAppClipOverlayViewController)initWithCoordinator:(id)coordinator bundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier;
- (SBAppClipOverlayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)participantName;
- (id)view;
- (void)invalidate;
- (void)loadView;
- (void)setDisplayedOverPlaceholder:(BOOL)placeholder animated:(BOOL)animated;
- (void)setNeedsUpdate;
- (void)setSceneActivationState:(int64_t)state animated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBAppClipOverlayViewController

- (SBAppClipOverlayViewController)initWithCoordinator:(id)coordinator bundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  v23.receiver = self;
  v23.super_class = SBAppClipOverlayViewController;
  v12 = [(SBAppClipOverlayViewController *)&v23 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coordinator, coordinator);
    v14 = [identifierCopy copy];
    bundleIdentifier = v13->_bundleIdentifier;
    v13->_bundleIdentifier = v14;

    v16 = [sceneIdentifierCopy copy];
    sceneIdentifier = v13->_sceneIdentifier;
    v13->_sceneIdentifier = v16;

    v18 = [MEMORY[0x277D0AC98] storeForApplication:v13->_bundleIdentifier];
    v19 = [v18 sceneStoreForIdentifier:v13->_sceneIdentifier creatingIfNecessary:0];
    v20 = [v19 objectForKey:@"appClipIdentifier"];
    webClipIdentifier = v13->_webClipIdentifier;
    v13->_webClipIdentifier = v20;

    v13->_displayedOverPlaceholder = 0;
    v13->_sceneActivationState = -1;
  }

  return v13;
}

- (SBAppClipOverlayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppClipOverlayViewController.m" lineNumber:61 description:@"Use -initWithCoordinator:bundleIdentifier:sceneIdentifier: instead"];

  return [(SBAppClipOverlayViewController *)self initWithCoordinator:0 bundleIdentifier:0 sceneIdentifier:0];
}

- (SBAppClipOverlayViewController)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBAppClipOverlayViewController.m" lineNumber:66 description:@"Use -initWithCoordinator:bundleIdentifier:sceneIdentifier: instead"];

  return [(SBAppClipOverlayViewController *)self initWithCoordinator:0 bundleIdentifier:0 sceneIdentifier:0];
}

- (void)setDisplayedOverPlaceholder:(BOOL)placeholder animated:(BOOL)animated
{
  if (self->_displayedOverPlaceholder != placeholder)
  {
    selfCopy2 = self;
    self->_displayedOverPlaceholder = placeholder;
    if (placeholder)
    {
      if (self->_webClipIdentifier)
      {
        *&placeholder = 1;
      }

      else
      {
        v11 = v4;
        v12 = v5;
        animatedCopy = animated;
        [(SBAppClipOverlayViewController *)a2 setDisplayedOverPlaceholder:&self->_displayedOverPlaceholder animated:&v10];
        selfCopy2 = self;
        *&animated = animatedCopy;
        *&placeholder = v10;
        v5 = v12;
      }
    }

    overlayViewController = selfCopy2->_overlayViewController;

    [(CPSClipOverlayViewController *)overlayViewController setDisplayedOverPlaceholder:placeholder animated:animated];
  }
}

- (void)setSceneActivationState:(int64_t)state animated:(BOOL)animated
{
  if (self->_sceneActivationState != state)
  {
    self->_sceneActivationState = state;
    [CPSClipOverlayViewController setSceneActivationState:"setSceneActivationState:animated:" animated:?];
  }
}

- (void)setNeedsUpdate
{
  if (self->_overlayViewController)
  {
    [(CPSClipOverlayViewController *)self->_overlayViewController setClipNeedsUpdateToLatestVersion];
  }

  else
  {
    self->_needsUpdate = 1;
  }
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = SBAppClipOverlayViewController;
  view = [(SBAppClipOverlayViewController *)&v4 view];

  return view;
}

- (void)loadView
{
  v3 = [SBAppClipOverlayView alloc];
  v4 = [(SBAppClipOverlayView *)v3 initWithFrame:self delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(SBFTouchPassThroughViewController *)self configureTouchPassThroughView:v4];
  [(SBAppClipOverlayViewController *)self setView:v4];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SBAppClipOverlayViewController;
  [(SBAppClipOverlayViewController *)&v8 viewWillAppear:appear];
  if (!self->_overlayViewController)
  {
    v4 = [(SBAppClipOverlayCoordinator *)self->_coordinator overlayViewControllerForBundleIdentifier:self->_bundleIdentifier webClipIdentifier:self->_webClipIdentifier participant:self];
    overlayViewController = self->_overlayViewController;
    self->_overlayViewController = v4;

    v6 = self->_overlayViewController;
    view = [(SBAppClipOverlayViewController *)self view];
    [(SBAppClipOverlayViewController *)self bs_addChildViewController:v6 withSuperview:view];

    [(CPSClipOverlayViewController *)self->_overlayViewController setDisplayedOverPlaceholder:self->_displayedOverPlaceholder animated:0];
    [(CPSClipOverlayViewController *)self->_overlayViewController setSceneActivationState:self->_sceneActivationState animated:0];
    if (self->_needsUpdate)
    {
      [(CPSClipOverlayViewController *)self->_overlayViewController setClipNeedsUpdateToLatestVersion];
      self->_needsUpdate = 0;
    }
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SBAppClipOverlayViewController *)self invalidate];
  v5.receiver = self;
  v5.super_class = SBAppClipOverlayViewController;
  [(SBAppClipOverlayViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBAppClipOverlayViewController;
  [(SBAppClipOverlayViewController *)&v13 viewDidLayoutSubviews];
  view = [(SBAppClipOverlayViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(CPSClipOverlayViewController *)self->_overlayViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (id)participantName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@-%@", v5, self->_sceneIdentifier];

  return v6;
}

- (void)invalidate
{
  if (self->_overlayViewController)
  {
    [(SBAppClipOverlayViewController *)self bs_removeChildViewController:?];
    [(SBAppClipOverlayCoordinator *)self->_coordinator participant:self didSurrenderViewController:self->_overlayViewController];
    overlayViewController = self->_overlayViewController;
    self->_overlayViewController = 0;
  }
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = SBAppClipOverlayViewController;
  v3 = [(SBAppClipOverlayViewController *)&v8 description];
  sceneIdentifier = self->_sceneIdentifier;
  v5 = NSStringFromBOOL();
  v6 = [v3 stringByAppendingFormat:@" sceneIdentifier:%@ displayedOverPlaceholder:%@ sceneActivationState:%ld overlayViewController:%@", sceneIdentifier, v5, self->_sceneActivationState, self->_overlayViewController];

  return v6;
}

- (void)setDisplayedOverPlaceholder:(_BYTE *)a3 animated:(_BYTE *)a4 .cold.1(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBAppClipOverlayViewController.m" lineNumber:76 description:@"Expected to have a non-nil web clip identifier if we're displaying over a placeholder."];

  *a4 = *a3 & 1;
}

@end