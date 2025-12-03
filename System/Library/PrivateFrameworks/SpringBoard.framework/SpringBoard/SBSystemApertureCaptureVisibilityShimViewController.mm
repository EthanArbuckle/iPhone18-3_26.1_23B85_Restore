@interface SBSystemApertureCaptureVisibilityShimViewController
- (BOOL)_isOriginalContentCloned;
- (SBSystemApertureCaptureVisibilityShimViewController)initWithContentViewController:(id)controller;
- (id)newDefaultVisibilityAnimator;
- (void)_updateClonedVisibility;
- (void)_updatePortalVisibility;
- (void)_updateSnapshotVisibility;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setContentsDifferOnClonedDisplay:(BOOL)display;
- (void)setVisibleInSnapshots:(BOOL)snapshots;
- (void)setVisibleOnClonedDisplay:(BOOL)display;
- (void)viewDidLoad;
@end

@implementation SBSystemApertureCaptureVisibilityShimViewController

- (void)_updateSnapshotVisibility
{
  view = [(UIViewController *)self->_contentViewController view];
  layer = [view layer];
  disableUpdateMask = [layer disableUpdateMask];

  v5 = disableUpdateMask & 0xFFFFFFFD;
  if (self->_visibleInSnapshots)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  layer2 = [view layer];
  [layer2 setDisableUpdateMask:v6 | v5];
}

- (BOOL)_isOriginalContentCloned
{
  view = [(UIViewController *)self->_contentViewController view];
  _fbsDisplayConfiguration = [view _fbsDisplayConfiguration];
  cADisplay = [_fbsDisplayConfiguration CADisplay];
  isCloned = [cADisplay isCloned];

  return isCloned;
}

- (id)newDefaultVisibilityAnimator
{
  if (![(SBSystemApertureCaptureVisibilityShimViewController *)self _isOriginalContentCloned])
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x277D75D40]);
  [(SBSystemApertureSettings *)self->_settings alphaTransitionDurationOnClonedDisplay];
  v5 = v4;
  v6 = [objc_alloc(MEMORY[0x277D753D0]) initWithAnimationCurve:0];
  v7 = [v3 initWithDuration:v6 timingParameters:v5];

  return v7;
}

- (void)_updateClonedVisibility
{
  v2 = 0.0;
  if (self->_visibleOnClonedDisplay)
  {
    v2 = 1.0;
  }

  [(_UIPortalView *)self->_clonedDisplayPortalView setAlpha:v2];
}

- (SBSystemApertureCaptureVisibilityShimViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SBSystemApertureCaptureVisibilityShimViewController;
  v6 = [(SBSystemApertureCaptureVisibilityShimViewController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[SBSystemApertureDomain rootSettings];
    settings = v6->_settings;
    v6->_settings = v7;

    objc_storeStrong(&v6->_contentViewController, controller);
  }

  return v6;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = SBSystemApertureCaptureVisibilityShimViewController;
  [(SBSystemApertureCaptureVisibilityShimViewController *)&v27 viewDidLoad];
  view = [(SBSystemApertureCaptureVisibilityShimViewController *)self view];
  view2 = [(SBSystemApertureCaptureVisibilityShimViewController *)self view];
  [view2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(SBSystemApertureCaptureVisibilityShimViewController *)self bs_addChildViewController:self->_contentViewController withSuperview:view];
  view3 = [(UIViewController *)self->_contentViewController view];
  [view3 setFrame:{v6, v8, v10, v12}];
  [view3 setAutoresizingMask:18];
  layer = [view3 layer];
  [layer setDisableUpdateMask:2];

  v15 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:view3];
  displayPortalView = self->_displayPortalView;
  self->_displayPortalView = v15;

  [(_UIPortalView *)self->_displayPortalView setMatchesPosition:1];
  [(_UIPortalView *)self->_displayPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_displayPortalView setHidesSourceView:1];
  [(_UIPortalView *)self->_displayPortalView setForwardsClientHitTestingToSourceView:1];
  [(_UIPortalView *)self->_displayPortalView setAllowsHitTesting:1];
  [(_UIPortalView *)self->_displayPortalView setFrame:v6, v8, v10, v12];
  [(_UIPortalView *)self->_displayPortalView setAutoresizingMask:18];
  layer2 = [(_UIPortalView *)self->_displayPortalView layer];
  [layer2 setDisableUpdateMask:1042];

  [view addSubview:self->_displayPortalView];
  v18 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:view3];
  clonedDisplayPortalView = self->_clonedDisplayPortalView;
  self->_clonedDisplayPortalView = v18;

  [(_UIPortalView *)self->_clonedDisplayPortalView setUserInteractionEnabled:0];
  layer3 = [(_UIPortalView *)self->_clonedDisplayPortalView layer];
  [layer3 setAllowsHitTesting:0];

  [(_UIPortalView *)self->_clonedDisplayPortalView setMatchesPosition:1];
  [(_UIPortalView *)self->_clonedDisplayPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_clonedDisplayPortalView setHidesSourceView:1];
  [(_UIPortalView *)self->_clonedDisplayPortalView setFrame:v6, v8, v10, v12];
  [(_UIPortalView *)self->_clonedDisplayPortalView setAutoresizingMask:18];
  layer4 = [(_UIPortalView *)self->_clonedDisplayPortalView layer];
  [layer4 setDisableUpdateMask:3];

  layer5 = [(_UIPortalView *)self->_clonedDisplayPortalView layer];
  [layer5 setAllowsGroupOpacity:1];

  [(_UIPortalView *)self->_clonedDisplayPortalView setAlpha:1.0];
  [view addSubview:self->_clonedDisplayPortalView];
  [(SBSystemApertureCaptureVisibilityShimViewController *)self _updateClonedVisibility];
  view4 = [(UIViewController *)self->_contentViewController view];
  _fbsDisplayConfiguration = [view4 _fbsDisplayConfiguration];
  cADisplay = [_fbsDisplayConfiguration CADisplay];
  observedDisplay = self->_observedDisplay;
  self->_observedDisplay = cADisplay;

  [(CADisplay *)self->_observedDisplay addObserver:self forKeyPath:@"cloned" options:1 context:0];
  [(SBSystemApertureCaptureVisibilityShimViewController *)self _updatePortalVisibility];
}

- (void)dealloc
{
  [(CADisplay *)self->_observedDisplay removeObserver:self forKeyPath:@"cloned"];
  v3.receiver = self;
  v3.super_class = SBSystemApertureCaptureVisibilityShimViewController;
  [(SBSystemApertureCaptureVisibilityShimViewController *)&v3 dealloc];
}

- (void)setVisibleOnClonedDisplay:(BOOL)display
{
  if (self->_visibleOnClonedDisplay != display)
  {
    self->_visibleOnClonedDisplay = display;
    [(SBSystemApertureCaptureVisibilityShimViewController *)self _updateClonedVisibility];
  }
}

- (void)setVisibleInSnapshots:(BOOL)snapshots
{
  if (self->_visibleInSnapshots != snapshots)
  {
    self->_visibleInSnapshots = snapshots;
    [(SBSystemApertureCaptureVisibilityShimViewController *)self _updateSnapshotVisibility];
  }
}

- (void)setContentsDifferOnClonedDisplay:(BOOL)display
{
  if (self->_contentsDifferOnClonedDisplay != display)
  {
    self->_contentsDifferOnClonedDisplay = display;
    [(SBSystemApertureCaptureVisibilityShimViewController *)self _updatePortalVisibility];
  }
}

- (void)_updatePortalVisibility
{
  if ([(SBSystemApertureCaptureVisibilityShimViewController *)self _isOriginalContentCloned])
  {
    contentsDifferOnClonedDisplay = self->_contentsDifferOnClonedDisplay;
  }

  else
  {
    contentsDifferOnClonedDisplay = 0;
  }

  [(_UIPortalView *)self->_displayPortalView setHidesSourceView:contentsDifferOnClonedDisplay];
  [(_UIPortalView *)self->_displayPortalView setHidden:!contentsDifferOnClonedDisplay];
  [(_UIPortalView *)self->_clonedDisplayPortalView setHidden:!contentsDifferOnClonedDisplay];
  if (contentsDifferOnClonedDisplay)
  {
    view = [(UIViewController *)self->_contentViewController view];
  }

  else
  {
    view = 0;
  }

  v5 = view;
  [(_UIPortalView *)self->_displayPortalView setSourceView:view];
  [(_UIPortalView *)self->_clonedDisplayPortalView setSourceView:v5];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  objectCopy = object;
  if ([path isEqualToString:@"cloned"] && BSEqualObjects())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__SBSystemApertureCaptureVisibilityShimViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end