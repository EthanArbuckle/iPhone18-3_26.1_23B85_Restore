@interface SBSystemApertureCaptureVisibilityShimViewController
- (BOOL)_isOriginalContentCloned;
- (SBSystemApertureCaptureVisibilityShimViewController)initWithContentViewController:(id)a3;
- (id)newDefaultVisibilityAnimator;
- (void)_updateClonedVisibility;
- (void)_updatePortalVisibility;
- (void)_updateSnapshotVisibility;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setContentsDifferOnClonedDisplay:(BOOL)a3;
- (void)setVisibleInSnapshots:(BOOL)a3;
- (void)setVisibleOnClonedDisplay:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation SBSystemApertureCaptureVisibilityShimViewController

- (void)_updateSnapshotVisibility
{
  v8 = [(UIViewController *)self->_contentViewController view];
  v3 = [v8 layer];
  v4 = [v3 disableUpdateMask];

  v5 = v4 & 0xFFFFFFFD;
  if (self->_visibleInSnapshots)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  v7 = [v8 layer];
  [v7 setDisableUpdateMask:v6 | v5];
}

- (BOOL)_isOriginalContentCloned
{
  v2 = [(UIViewController *)self->_contentViewController view];
  v3 = [v2 _fbsDisplayConfiguration];
  v4 = [v3 CADisplay];
  v5 = [v4 isCloned];

  return v5;
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

- (SBSystemApertureCaptureVisibilityShimViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBSystemApertureCaptureVisibilityShimViewController;
  v6 = [(SBSystemApertureCaptureVisibilityShimViewController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = +[SBSystemApertureDomain rootSettings];
    settings = v6->_settings;
    v6->_settings = v7;

    objc_storeStrong(&v6->_contentViewController, a3);
  }

  return v6;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = SBSystemApertureCaptureVisibilityShimViewController;
  [(SBSystemApertureCaptureVisibilityShimViewController *)&v27 viewDidLoad];
  v3 = [(SBSystemApertureCaptureVisibilityShimViewController *)self view];
  v4 = [(SBSystemApertureCaptureVisibilityShimViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(SBSystemApertureCaptureVisibilityShimViewController *)self bs_addChildViewController:self->_contentViewController withSuperview:v3];
  v13 = [(UIViewController *)self->_contentViewController view];
  [v13 setFrame:{v6, v8, v10, v12}];
  [v13 setAutoresizingMask:18];
  v14 = [v13 layer];
  [v14 setDisableUpdateMask:2];

  v15 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:v13];
  displayPortalView = self->_displayPortalView;
  self->_displayPortalView = v15;

  [(_UIPortalView *)self->_displayPortalView setMatchesPosition:1];
  [(_UIPortalView *)self->_displayPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_displayPortalView setHidesSourceView:1];
  [(_UIPortalView *)self->_displayPortalView setForwardsClientHitTestingToSourceView:1];
  [(_UIPortalView *)self->_displayPortalView setAllowsHitTesting:1];
  [(_UIPortalView *)self->_displayPortalView setFrame:v6, v8, v10, v12];
  [(_UIPortalView *)self->_displayPortalView setAutoresizingMask:18];
  v17 = [(_UIPortalView *)self->_displayPortalView layer];
  [v17 setDisableUpdateMask:1042];

  [v3 addSubview:self->_displayPortalView];
  v18 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:v13];
  clonedDisplayPortalView = self->_clonedDisplayPortalView;
  self->_clonedDisplayPortalView = v18;

  [(_UIPortalView *)self->_clonedDisplayPortalView setUserInteractionEnabled:0];
  v20 = [(_UIPortalView *)self->_clonedDisplayPortalView layer];
  [v20 setAllowsHitTesting:0];

  [(_UIPortalView *)self->_clonedDisplayPortalView setMatchesPosition:1];
  [(_UIPortalView *)self->_clonedDisplayPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_clonedDisplayPortalView setHidesSourceView:1];
  [(_UIPortalView *)self->_clonedDisplayPortalView setFrame:v6, v8, v10, v12];
  [(_UIPortalView *)self->_clonedDisplayPortalView setAutoresizingMask:18];
  v21 = [(_UIPortalView *)self->_clonedDisplayPortalView layer];
  [v21 setDisableUpdateMask:3];

  v22 = [(_UIPortalView *)self->_clonedDisplayPortalView layer];
  [v22 setAllowsGroupOpacity:1];

  [(_UIPortalView *)self->_clonedDisplayPortalView setAlpha:1.0];
  [v3 addSubview:self->_clonedDisplayPortalView];
  [(SBSystemApertureCaptureVisibilityShimViewController *)self _updateClonedVisibility];
  v23 = [(UIViewController *)self->_contentViewController view];
  v24 = [v23 _fbsDisplayConfiguration];
  v25 = [v24 CADisplay];
  observedDisplay = self->_observedDisplay;
  self->_observedDisplay = v25;

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

- (void)setVisibleOnClonedDisplay:(BOOL)a3
{
  if (self->_visibleOnClonedDisplay != a3)
  {
    self->_visibleOnClonedDisplay = a3;
    [(SBSystemApertureCaptureVisibilityShimViewController *)self _updateClonedVisibility];
  }
}

- (void)setVisibleInSnapshots:(BOOL)a3
{
  if (self->_visibleInSnapshots != a3)
  {
    self->_visibleInSnapshots = a3;
    [(SBSystemApertureCaptureVisibilityShimViewController *)self _updateSnapshotVisibility];
  }
}

- (void)setContentsDifferOnClonedDisplay:(BOOL)a3
{
  if (self->_contentsDifferOnClonedDisplay != a3)
  {
    self->_contentsDifferOnClonedDisplay = a3;
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
    v4 = [(UIViewController *)self->_contentViewController view];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(_UIPortalView *)self->_displayPortalView setSourceView:v4];
  [(_UIPortalView *)self->_clonedDisplayPortalView setSourceView:v5];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if ([a3 isEqualToString:@"cloned"] && BSEqualObjects())
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