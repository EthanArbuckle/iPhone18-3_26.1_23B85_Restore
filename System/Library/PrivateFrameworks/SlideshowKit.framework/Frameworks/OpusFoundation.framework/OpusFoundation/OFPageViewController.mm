@interface OFPageViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (double)_normalizerForFingerTracking;
- (double)_progressFromRubberBandingProgress:(double)progress;
- (double)_rubberBandingProgressFromProgress:(double)result;
- (id)_contentView;
- (id)_customAnimationControllerForDirection:(int64_t)direction fromViewController:(id)controller toViewController:(id)viewController;
- (id)_customInteractionControllerForAnimationController:(id)controller;
- (id)_pageControl;
- (id)_transitionContextForDirection:(int64_t)direction fromViewController:(id)controller toViewController:(id)viewController;
- (void)_beginTransitionWithContext:(id)context completionHandler:(id)handler;
- (void)_cancelInteractiveTransitionWithProgressVelocity:(double)velocity;
- (void)_fakeHandlePanGesture;
- (void)_finishInteractiveTransitionWithProgress:(double)progress andProgressVelocity:(double)velocity;
- (void)_handlePanGesture:(id)gesture;
- (void)_resumeInteractiveTransitionWithTranslation:(double)translation;
- (void)_startInteractiveTransitionWithVelocity:(double)velocity;
- (void)_startTransition;
- (void)_updateInteractiveTransitionForProgress:(double)progress;
- (void)_updatePageControlViaDataSourceIfNecessary;
- (void)bounceInDirection:(int64_t)direction completionHandler:(id)handler;
- (void)commonInit;
- (void)dealloc;
- (void)loadView;
- (void)reportTransitionProgress:(double)progress;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setViewController:(id)controller direction:(int64_t)direction animated:(BOOL)animated completionHandler:(id)handler;
- (void)setWantsPageControl:(BOOL)control;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OFPageViewController

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = OFPageViewController;
  [(OFUIViewController *)&v3 commonInit];
  self->_panIsEnabled = 1;
  self->_bouncesOnEdges = 1;
  self->_interactiveTransitionTrackingBoxRadius = 3.0;
  self->_interactiveTransitionProgressThreshold = 0.3;
  self->_interactiveTransitionVelocityThreshold = 300.0;
}

- (void)dealloc
{
  [-[UIPanGestureRecognizer view](self->_panGestureRecognizer "view")];
  [(UIPanGestureRecognizer *)self->_panGestureRecognizer removeTarget:self action:sel__handlePanGesture_];

  [-[UITapGestureRecognizer view](self->_tapGestureRecognizer "view")];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer removeTarget:self action:sel__handleTapGesture_];

  self->_currentTransitionContext = 0;
  if ([(OFPageViewController *)self _contentView])
  {
    [-[OFPageViewController _contentView](self "_contentView")];
  }

  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_dataSource, 0);
  v3.receiver = self;
  v3.super_class = OFPageViewController;
  [(OFUIViewController *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  if (self->_delegate != delegate)
  {
    objc_storeWeak(&self->_delegate, delegate);
    *&self->_flags = *&self->_flags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFD | v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFFB | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFF7 | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFEF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFDF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFFBF | v9;

    [(OFPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
  }
}

- (void)setDataSource:(id)source
{
  if (self->_dataSource != source)
  {
    objc_storeWeak(&self->_dataSource, source);
    v4 = (objc_opt_respondsToSelector() & 1) != 0 ? 128 : 0;
    *&self->_flags = *&self->_flags & 0xFF7F | v4;
    v5 = (objc_opt_respondsToSelector() & 1) != 0 ? 256 : 0;
    *&self->_flags = *&self->_flags & 0xFEFF | v5;
    v6 = (objc_opt_respondsToSelector() & 1) != 0 ? 512 : 0;
    *&self->_flags = *&self->_flags & 0xFDFF | v6;
    v7 = (objc_opt_respondsToSelector() & 1) != 0 ? 1024 : 0;
    *&self->_flags = *&self->_flags & 0xFBFF | v7;
    if ([(OFPageViewController *)self isViewLoaded])
    {
      _contentView = [(OFPageViewController *)self _contentView];

      [_contentView setNeedsLayout];
    }
  }
}

- (id)_contentView
{
  if (![(OFPageViewController *)self isViewLoaded])
  {
    return 0;
  }

  return [(OFPageViewController *)self view];
}

- (void)setWantsPageControl:(BOOL)control
{
  if (self->_wantsPageControl != control)
  {
    self->_wantsPageControl = control;
    [(OFPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
  }
}

- (id)_pageControl
{
  _contentView = [(OFPageViewController *)self _contentView];

  return [_contentView pageControl];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = OFPageViewController;
  [(OFUIViewController *)&v5 loadView];
  [objc_msgSend(-[OFPageViewController view](self "view")];
  [-[OFPageViewController view](self "view")];
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__handlePanGesture_];
  self->_panGestureRecognizer = v3;
  [(UIPanGestureRecognizer *)v3 setDelegate:self];
  [-[OFPageViewController view](self "view")];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapGesture_];
  self->_tapGestureRecognizer = v4;
  [(UITapGestureRecognizer *)v4 setDelegate:self];
  [-[OFPageViewController view](self "view")];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = OFPageViewController;
  [(OFUIViewController *)&v3 viewWillAppear:appear];
}

- (void)setViewController:(id)controller direction:(int64_t)direction animated:(BOOL)animated completionHandler:(id)handler
{
  if (self->_currentTransitionContext)
  {
    return;
  }

  viewController = self->_viewController;
  if ((*&self->_flags & 2) != 0)
  {
    [(OFPageViewControllerDelegate *)[(OFPageViewController *)self delegate] pageViewController:self willStartTransitioningToViewController:controller fromViewController:viewController withDirection:direction];
  }

  if (animated)
  {
    v12 = [(OFPageViewController *)self _transitionContextForDirection:direction fromViewController:viewController toViewController:controller];
    self->_currentTransitionContext = v12;
    if (v12)
    {
      [(OFPageViewController *)self addChildViewController:controller];
      [objc_msgSend(controller "view")];
      [(OFPageViewController *)self _beginTransitionWithContext:self->_currentTransitionContext completionHandler:handler];
      if ((*&self->_flags & 4) != 0)
      {
        delegate = [(OFPageViewController *)self delegate];

        [(OFPageViewControllerDelegate *)delegate pageViewController:self didStartTransitioningToViewController:controller fromViewController:viewController];
      }

      return;
    }
  }

  else
  {
    self->_currentTransitionContext = 0;
  }

  [(UIViewController *)self addChildViewControllerInstantly:controller];
  if ((*&self->_flags & 4) != 0)
  {
    [(OFPageViewControllerDelegate *)[(OFPageViewController *)self delegate] pageViewController:self didStartTransitioningToViewController:controller fromViewController:viewController];
  }

  self->_viewController = controller;
  if ((*&self->_flags & 8) != 0)
  {
    [(OFPageViewControllerDelegate *)[(OFPageViewController *)self delegate] pageViewController:self willFinishTransitioningToViewController:controller fromViewController:viewController transitionWillComplete:1];
  }

  [(UIViewController *)viewController removeFromParentViewControllerInstantly];
  if (handler)
  {
    (*(handler + 2))(handler, 1);
  }

  if ((*&self->_flags & 0x10) != 0)
  {
    [(OFPageViewControllerDelegate *)[(OFPageViewController *)self delegate] pageViewController:self didFinishTransitioningToViewController:controller fromViewController:viewController transitionCompleted:1];
  }

  [(OFPageViewController *)self _updatePageControlViaDataSourceIfNecessary];
}

- (void)bounceInDirection:(int64_t)direction completionHandler:(id)handler
{
  if (!self->_currentTransitionContext)
  {
    if ((*&self->_flags & 0x20) != 0)
    {
      [(OFPageViewControllerDelegate *)[(OFPageViewController *)self delegate] pageViewController:self willStartBouncingWithDirection:direction];
    }

    v7 = [(OFPageViewController *)self _transitionContextForDirection:direction fromViewController:self->_viewController toViewController:0];
    self->_currentTransitionContext = v7;
    if (v7)
    {
      [(_OFViewControllerTransitionContext *)v7 setIsRubberBanding:1];
      currentTransitionContext = self->_currentTransitionContext;

      [(OFPageViewController *)self _beginTransitionWithContext:currentTransitionContext completionHandler:handler];
    }
  }
}

- (double)_normalizerForFingerTracking
{
  navigationOrientation = self->_navigationOrientation;
  [-[OFPageViewController view](self "view")];
  if (navigationOrientation)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (void)_startTransition
{
  isForward = self->_isForward;
  dataSource = [(OFPageViewController *)self dataSource];
  viewController = self->_viewController;
  if (isForward)
  {
    v6 = [(OFPageViewControllerDataSource *)dataSource pageViewController:self viewControllerAfterViewController:viewController];
  }

  else
  {
    v6 = [(OFPageViewControllerDataSource *)dataSource pageViewController:self viewControllerBeforeViewController:viewController];
  }

  v7 = self->_isForward;
  if (v6)
  {
    [(OFPageViewController *)self setViewController:v6 direction:!v7 animated:1 completionHandler:0];
  }

  else if (!self->_chainsNextTransition)
  {
    [(OFPageViewController *)self bounceInDirection:!v7 completionHandler:0];
  }

  self->_chainsNextTransition = 0;
  self->_progressVelocityForChainedTransition = 0.0;
}

- (void)_startInteractiveTransitionWithVelocity:(double)velocity
{
  self->_isForward = velocity < 0.0;
  self->_chainsNextTransition = 0;
  self->_progressOffset = 0.0;
  self->_isInteractive = 1;
  [(OFPageViewController *)self _startTransition];
}

- (void)_resumeInteractiveTransitionWithTranslation:(double)translation
{
  self->_isInteractive = 1;
  self->_chainsNextTransition = 0;
  [objc_msgSend(objc_msgSend(-[OFPageViewController view](self "view")];
  self->_progressOffset = v5;
  if ([(_OFViewControllerTransitionContext *)self->_currentTransitionContext isRubberBanding])
  {
    [(OFPageViewController *)self _progressFromRubberBandingProgress:self->_progressOffset];
  }

  else
  {
    if (!self->_isForward)
    {
      goto LABEL_6;
    }

    v6 = -self->_progressOffset;
  }

  self->_progressOffset = v6;
LABEL_6:
  interactor = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor];
  if (!interactor)
  {
    interactor = [(OFPageViewController *)self _customInteractionControllerForAnimationController:[(_OFViewControllerTransitionContext *)self->_currentTransitionContext animator]];
  }

  [(OFViewControllerInteractiveTransitioning *)interactor makeCurrentTransitionInteractiveWithContext:self->_currentTransitionContext andProgress:self->_progressOffset];
  if ([(OFViewControllerInteractiveTransitioning *)interactor tracksWithFinger])
  {
    [(OFPageViewController *)self _normalizerForFingerTracking];
  }

  else
  {
    [(OFPageViewController *)self _normalizerForBoxTracking];
  }

  v9 = translation / v8;

  [(OFPageViewController *)self _updateInteractiveTransitionForProgress:v9];
}

- (void)_finishInteractiveTransitionWithProgress:(double)progress andProgressVelocity:(double)velocity
{
  if ([(_OFViewControllerTransitionContext *)self->_currentTransitionContext toViewController])
  {
    self->_isInteractive = 0;
    if (velocity < 0.0 || (progressOffset = self->_progressOffset, progressOffset == 0.0))
    {
      self->_chainsNextTransition = 0;
      velocityCopy = 0.0;
    }

    else
    {
      v8 = fabs(progressOffset + progress);
      v9 = v8 <= 0.5;
      self->_chainsNextTransition = v8 > 0.5;
      velocityCopy = 0.0;
      if (!v9)
      {
        velocityCopy = velocity;
      }
    }

    self->_progressVelocityForChainedTransition = velocityCopy;
    currentTransitionContext = self->_currentTransitionContext;

    [(_OFViewControllerTransitionContext *)currentTransitionContext finishInteractiveTransitionWithVelocity:velocity];
  }

  else
  {

    [(OFPageViewController *)self _cancelInteractiveTransitionWithProgressVelocity:velocity];
  }
}

- (void)_cancelInteractiveTransitionWithProgressVelocity:(double)velocity
{
  self->_isInteractive = 0;
  self->_chainsNextTransition = 0;
  self->_progressVelocityForChainedTransition = 0.0;
  [(_OFViewControllerTransitionContext *)self->_currentTransitionContext cancelInteractiveTransitionWithVelocity:velocity];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (!self->_panIsEnabled)
  {
    return 0;
  }

  if (![(OFPageViewControllerDelegate *)[(OFPageViewController *)self delegate] pageViewController:self canAutomaticallyHandleGestureRecognizer:begin])
  {
    return 0;
  }

  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer != begin)
  {
    return 0;
  }

  navigationOrientation = self->_navigationOrientation;
  [(UIPanGestureRecognizer *)panGestureRecognizer velocityInView:[(OFPageViewController *)self view]];
  v11 = v10;
  v12 = fabs(v10);
  v13 = fabs(v9);
  if (navigationOrientation)
  {
    v11 = v9;
    if (v12 <= v13)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v12 < v13)
  {
    return 0;
  }

LABEL_11:
  dataSource = [(OFPageViewController *)self dataSource];
  viewController = self->_viewController;
  if (v11 >= 0.0)
  {
    v16 = [(OFPageViewControllerDataSource *)dataSource pageViewController:self viewControllerBeforeViewController:viewController];
  }

  else
  {
    v16 = [(OFPageViewControllerDataSource *)dataSource pageViewController:self viewControllerAfterViewController:viewController];
  }

  return self->_bouncesOnEdges || v16 != 0;
}

- (void)_handlePanGesture:(id)gesture
{
  navigationOrientation = self->_navigationOrientation;
  [gesture translationInView:{-[OFPageViewController view](self, "view")}];
  v7 = v6;
  v9 = v8;
  [gesture velocityInView:{-[OFPageViewController view](self, "view")}];
  if (navigationOrientation)
  {
    v7 = v9;
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    v14 = panGestureRecognizer == gesture;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    return;
  }

  if ([(UIPanGestureRecognizer *)panGestureRecognizer state]== 1)
  {
    if (self->_currentTransitionContext)
    {

      [(OFPageViewController *)self _resumeInteractiveTransitionWithTranslation:v7];
    }

    else
    {

      [(OFPageViewController *)self _startInteractiveTransitionWithVelocity:v12];
    }

    return;
  }

  if ([(UIPanGestureRecognizer *)self->_panGestureRecognizer state]!= 2)
  {
    if ([(UIPanGestureRecognizer *)self->_panGestureRecognizer state]!= 3 && [(UIPanGestureRecognizer *)self->_panGestureRecognizer state]!= 4 || !self->_isInteractive)
    {
      return;
    }

    interactor = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor];
    if (!interactor)
    {
      v18 = dbl_269E92C50[v12 <= 0.0];
      if (v7 != 0.0)
      {
        v18 = v7;
      }

      [(OFPageViewController *)self _updateInteractiveTransitionForProgress:v18];
      self->_chainsNextTransition = 0;
      self->_progressVelocityForChainedTransition = 0.0;
    }

    if ([(OFViewControllerInteractiveTransitioning *)interactor tracksWithFinger])
    {
      [(OFPageViewController *)self _normalizerForFingerTracking];
    }

    else
    {
      [(OFPageViewController *)self _normalizerForBoxTracking];
    }

    v20 = v19;
    if (self->_isForward)
    {
      v21 = -v12;
    }

    else
    {
      v21 = v12;
    }

    v22 = v21 / v20;
    if ([(UIPanGestureRecognizer *)self->_panGestureRecognizer state]!= 3 || (!self->_isForward ? (v23 = v12) : (v23 = -v12), ![(OFPageViewController *)self _shouldFinishTransitionWithVelocity:v23]))
    {
      selfCopy3 = self;
      v27 = v22;
LABEL_42:

      [(OFPageViewController *)selfCopy3 _cancelInteractiveTransitionWithProgressVelocity:v27];
      return;
    }

    v24 = v7 / v20;
    selfCopy3 = self;
    v26 = v22;
    goto LABEL_56;
  }

  if (!self->_isInteractive)
  {
    return;
  }

  interactor2 = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor];
  if (interactor2)
  {
    if ([(OFViewControllerInteractiveTransitioning *)interactor2 tracksWithFinger])
    {
      [(OFPageViewController *)self _normalizerForFingerTracking];
    }

    else
    {
      [(OFPageViewController *)self _normalizerForBoxTracking];
    }

    v28 = v16;
    v7 = v7 / v16;
    if (self->_isForward)
    {
      v12 = -v12;
    }

    if (fabs(v7) > self->_interactiveTransitionProgressThreshold && [(_OFViewControllerTransitionContext *)self->_currentTransitionContext toViewController])
    {
      v26 = v12 / v28;
      selfCopy3 = self;
      if (v12 / v28 < 0.0)
      {
        v27 = v12 / v28;
        goto LABEL_42;
      }

      v24 = v7;
LABEL_56:

      [(OFPageViewController *)selfCopy3 _finishInteractiveTransitionWithProgress:v24 andProgressVelocity:v26];
      return;
    }
  }

  [(OFPageViewController *)self _updateInteractiveTransitionForProgress:v7];
}

- (void)_fakeHandlePanGesture
{
  if (_fakeHandlePanGesture_state == 1)
  {
    _fakeHandlePanGesture_state = 2;
  }

  else
  {
    if (_fakeHandlePanGesture_state != 2)
    {
      _fakeHandlePanGesture_state = 1;
      _fakeHandlePanGesture_translation = 0;
      _fakeHandlePanGesture_time = 0xBFF0000000000000;
      goto LABEL_10;
    }

    v3 = _fakeHandlePanGesture_count++;
    if (v3 == 6)
    {
      _fakeHandlePanGesture_state = 3;
      _fakeHandlePanGesture_count = 0;
      goto LABEL_10;
    }
  }

  *&_fakeHandlePanGesture_translation = *&_fakeHandlePanGesture_translation + -60.0;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = -3600.0;
  if (*&_fakeHandlePanGesture_time > 0.0)
  {
    v5 = -60.0 / (Current - *&_fakeHandlePanGesture_time);
  }

  _fakeHandlePanGesture_velocity = *&v5;
  _fakeHandlePanGesture_time = *&Current;
LABEL_10:
  v6 = dispatch_time(0, 16666666);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__OFPageViewController__fakeHandlePanGesture__block_invoke;
  block[3] = &unk_279C89F90;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
  if (_fakeHandlePanGesture_state == 2)
  {
    if (!self->_isInteractive)
    {
      return;
    }

    v7 = *&_fakeHandlePanGesture_translation;
    interactor = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor];
    if (!interactor)
    {
      goto LABEL_42;
    }

    if ([(OFViewControllerInteractiveTransitioning *)interactor tracksWithFinger])
    {
      [(OFPageViewController *)self _normalizerForFingerTracking];
    }

    else
    {
      [(OFPageViewController *)self _normalizerForBoxTracking];
    }

    v21 = v9;
    v7 = *&_fakeHandlePanGesture_translation / v9;
    v22 = self->_isForward ? -*&_fakeHandlePanGesture_velocity : *&_fakeHandlePanGesture_velocity;
    if (fabs(v7) <= self->_interactiveTransitionProgressThreshold || ![(_OFViewControllerTransitionContext *)self->_currentTransitionContext toViewController])
    {
LABEL_42:
      [(OFPageViewController *)self _updateInteractiveTransitionForProgress:v7];
      return;
    }

    v19 = v22 / v21;
    selfCopy3 = self;
    if (v22 / v21 >= 0.0)
    {
      v17 = v7;
      goto LABEL_44;
    }

    v20 = v22 / v21;
LABEL_33:
    [(OFPageViewController *)selfCopy3 _cancelInteractiveTransitionWithProgressVelocity:v20];
    return;
  }

  if (_fakeHandlePanGesture_state != 1)
  {
    if (!self->_isInteractive)
    {
      return;
    }

    interactor2 = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor];
    if (!interactor2)
    {
      v11 = *&_fakeHandlePanGesture_translation;
      if (*&_fakeHandlePanGesture_translation == 0.0)
      {
        v11 = dbl_269E92C50[*&_fakeHandlePanGesture_velocity <= 0.0];
      }

      [(OFPageViewController *)self _updateInteractiveTransitionForProgress:v11];
      self->_chainsNextTransition = 0;
      self->_progressVelocityForChainedTransition = 0.0;
    }

    if ([(OFViewControllerInteractiveTransitioning *)interactor2 tracksWithFinger])
    {
      [(OFPageViewController *)self _normalizerForFingerTracking];
    }

    else
    {
      [(OFPageViewController *)self _normalizerForBoxTracking];
    }

    v13 = v12;
    v14 = *&_fakeHandlePanGesture_velocity;
    if (self->_isForward)
    {
      v14 = -*&_fakeHandlePanGesture_velocity;
    }

    v15 = v14 / v13;
    if (_fakeHandlePanGesture_state == 3)
    {
      v16 = *&_fakeHandlePanGesture_translation;
      if ([(OFPageViewController *)self _shouldFinishTransitionWithVelocity:?])
      {
        v17 = v16 / v13;
        selfCopy3 = self;
        v19 = v15;
LABEL_44:
        [(OFPageViewController *)selfCopy3 _finishInteractiveTransitionWithProgress:v17 andProgressVelocity:v19];
        return;
      }
    }

    selfCopy3 = self;
    v20 = v15;
    goto LABEL_33;
  }

  if (self->_currentTransitionContext)
  {
    [(OFPageViewController *)self _resumeInteractiveTransitionWithTranslation:*&_fakeHandlePanGesture_translation];
  }

  else
  {
    [(OFPageViewController *)self _startInteractiveTransitionWithVelocity:*&_fakeHandlePanGesture_velocity];
  }
}

- (void)_updatePageControlViaDataSourceIfNecessary
{
  if ([(OFPageViewController *)self usesPageControl])
  {
    v3 = [-[OFPageViewController _pageControl](self "_pageControl")];
    v4 = [-[OFPageViewController _pageControl](self "_pageControl")];
    v5 = [(OFPageViewControllerDataSource *)[(OFPageViewController *)self dataSource] presentationCountForPageViewController:self];
    v6 = [(OFPageViewControllerDataSource *)[(OFPageViewController *)self dataSource] presentationIndexForPageViewController:self];
    v7 = v6;
    if (v3 == v5)
    {
      if (v6 < 0 || v4 == v6 || v3 < 1 || v6 >= v3)
      {
        return;
      }
    }

    else if (v5 < 1 || v6 < 0 || v6 >= v5)
    {
      return;
    }

    [-[OFPageViewController _pageControl](self "_pageControl")];
    _pageControl = [(OFPageViewController *)self _pageControl];

    [_pageControl setCurrentPage:v7];
  }
}

- (void)_beginTransitionWithContext:(id)context completionHandler:(id)handler
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__OFPageViewController__beginTransitionWithContext_completionHandler___block_invoke;
  v8[3] = &unk_279C8A018;
  v8[4] = self;
  v8[5] = handler;
  [context setCompletionHandler:v8];
  v6 = [OFWeakReferenceHolder weakReferenceHolderWithObject:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__OFPageViewController__beginTransitionWithContext_completionHandler___block_invoke_3;
  v7[3] = &unk_279C8A060;
  v7[4] = v6;
  v7[5] = self;
  v7[6] = &__block_literal_global_3;
  [context setInteractiveUpdateHandler:v7];
  if ([context initiallyInteractive])
  {
    [objc_msgSend(context "interactor")];
  }

  else
  {
    [context setProgressVelocity:self->_progressVelocityForChainedTransition];
    [context setDoEaseIn:!self->_chainsNextTransition];
    [context setDoEaseOut:1];
    [objc_msgSend(context "animator")];
  }

  [context setIsInFlight:1];
}

_BYTE *__70__OFPageViewController__beginTransitionWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [a2 fromViewController];
  v7 = [a2 toViewController];
  [a2 animator];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(a2 "animator")];
  }

  [objc_msgSend(v7 "view")];
  v8 = v7;
  if (a3)
  {
    *(*(a1 + 32) + 1200) = v7;
    [*(*(a1 + 32) + 1200) didMoveToParentViewController:?];
    v8 = v6;
  }

  [objc_msgSend(v8 "view")];
  [v8 removeFromParentViewController];
  v9 = *(a1 + 32);
  v10 = v9[584];
  if (v7)
  {
    if ((v10 & 0x10) != 0)
    {
      [objc_msgSend(v9 "delegate")];
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    [objc_msgSend(v9 "delegate")];
  }

  [*(a1 + 32) _updatePageControlViaDataSourceIfNecessary];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a3);
  }

  *(*(a1 + 32) + 992) = 0;
  result = *(a1 + 32);
  if (result[1010] == 1)
  {

    return [result _startTransition];
  }

  return result;
}

uint64_t __70__OFPageViewController__beginTransitionWithContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "animator")];

  return [a2 setIsInFlight:1];
}

uint64_t __70__OFPageViewController__beginTransitionWithContext_completionHandler___block_invoke_3(uint64_t result, int a2, uint64_t a3, void *a4, double a5)
{
  if (a2)
  {
    v8 = result;
    result = [*(result + 32) object];
    if (result)
    {
      if ((*(result + 1168) & 8) != 0)
      {
        [objc_msgSend(result "delegate")];
      }

      if (a3)
      {
        [objc_msgSend(a4 "fromViewController")];
      }

      v9 = a5 >= 1.0;
      if (!a3)
      {
        v9 = a5 <= 0.0;
      }

      if (!v9)
      {
        [a4 setDoEaseIn:0];
        [a4 setDoEaseOut:(*(*(v8 + 40) + 1010) & 1) == 0];
        (*(*(v8 + 48) + 16))();
      }

      v10 = [a4 interactor];

      return [v10 endInteractiveTransitionWithContext:a4 transitionCompleted:a3];
    }
  }

  return result;
}

- (double)_rubberBandingProgressFromProgress:(double)result
{
  isForward = self->_isForward;
  if (result <= 0.0 && isForward)
  {
    return result * 0.5 / (result * -0.5 + 1.0);
  }

  if (result >= 0.0 && !isForward)
  {
    return result * 0.5 / (result * 0.5 + 1.0);
  }

  return result;
}

- (double)_progressFromRubberBandingProgress:(double)progress
{
  progressCopy = -progress;
  if (!self->_isForward)
  {
    progressCopy = progress;
  }

  return progressCopy / ((1.0 - progress) * 0.5);
}

- (void)_updateInteractiveTransitionForProgress:(double)progress
{
  progressCopy = progress;
  currentTransitionContext = self->_currentTransitionContext;
  if (currentTransitionContext)
  {
    progressCopy = self->_progressOffset + progress;
    isForward = self->_isForward;
    if (isForward == 1 && progressCopy < -1.0)
    {
      v8 = 1;
    }

    else
    {
      v8 = (progressCopy > 1.0) & ~isForward;
    }

    if (self->_isForward && progressCopy > 0.0 || (v8 | (progressCopy < 0.0) & ~isForward) == 1)
    {
      v9 = 1.0;
      if (self->_isForward)
      {
        v9 = -1.0;
      }

      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      if ([(_OFViewControllerTransitionContext *)currentTransitionContext isRubberBanding])
      {
        [(OFPageViewController *)self _rubberBandingProgressFromProgress:v10];
        v10 = v11;
      }

      [(OFViewControllerInteractiveTransitioning *)[(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor] updateInteractiveTransitionWithContext:self->_currentTransitionContext andProgress:fabs(v10)];
      if (objc_opt_respondsToSelector())
      {
        delegate = self->_delegate;
        toViewController = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext toViewController];
        fromViewController = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext fromViewController];
        v15 = -v10;
        v16 = self->_isForward;
        [(_OFViewControllerTransitionContext *)self->_currentTransitionContext progressVelocity];
        v18 = -v17;
        if (v16)
        {
          v18 = v17;
        }

        [(OFPageViewControllerDelegate *)delegate pageViewController:self didUpdateTransitioningToViewController:toViewController fromViewController:fromViewController withProgress:v15 andVelocity:v18];
      }

      v19 = self->_currentTransitionContext;
      if (v8)
      {
        isRubberBanding = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext isRubberBanding];
        v21 = self->_currentTransitionContext;
        [(_OFViewControllerTransitionContext *)v21 progressVelocity];
        if (isRubberBanding)
        {
          [(OFPageViewController *)self _cancelInteractiveTransitionWithProgressVelocity:?];
        }

        else
        {
          [(_OFViewControllerTransitionContext *)v21 finishInteractiveTransitionWithVelocity:?];
          self->_progressOffset = self->_progressOffset - progressCopy;
        }
      }

      else
      {
        [(_OFViewControllerTransitionContext *)self->_currentTransitionContext progressVelocity];
        [(_OFViewControllerTransitionContext *)v19 cancelInteractiveTransitionWithVelocity:?];
      }

      panGestureRecognizer = self->_panGestureRecognizer;
      view = [(OFPageViewController *)self view];
      v35 = *MEMORY[0x277CBF348];
      v36 = *(MEMORY[0x277CBF348] + 8);

      [(UIPanGestureRecognizer *)panGestureRecognizer setTranslation:view inView:v35, v36];
      return;
    }

    goto LABEL_28;
  }

  if (progress == 0.0)
  {
LABEL_28:
    if (![(_OFViewControllerTransitionContext *)currentTransitionContext toViewController])
    {
      [(OFPageViewController *)self _rubberBandingProgressFromProgress:progressCopy];
      progressCopy = v23;
    }

    [(OFViewControllerInteractiveTransitioning *)[(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor] updateInteractiveTransitionWithContext:self->_currentTransitionContext andProgress:fabs(progressCopy)];
    if (objc_opt_respondsToSelector())
    {
      v24 = self->_delegate;
      toViewController2 = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext toViewController];
      fromViewController2 = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext fromViewController];
      v27 = -progressCopy;
      v28 = self->_isForward;
      [(_OFViewControllerTransitionContext *)self->_currentTransitionContext progressVelocity];
      v30 = -v29;
      if (v28)
      {
        v30 = v29;
      }

      [(OFPageViewControllerDelegate *)v24 pageViewController:self didUpdateTransitioningToViewController:toViewController2 fromViewController:fromViewController2 withProgress:v27 andVelocity:v30];
    }

    return;
  }

  self->_isInteractive = 1;
  self->_isForward = progress < 0.0;
  [(OFPageViewController *)self _startTransition];
  if ([(OFViewControllerInteractiveTransitioning *)[(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor] tracksWithFinger])
  {
    [(OFPageViewController *)self _normalizerForFingerTracking];
  }

  else
  {
    [(OFPageViewController *)self _normalizerForBoxTracking];
  }

  self->_progressOffset = -progressCopy / v22;
  interactor = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor];
  v32 = self->_currentTransitionContext;

  [(OFViewControllerInteractiveTransitioning *)interactor updateInteractiveTransitionWithContext:v32 andProgress:0.0];
}

- (id)_transitionContextForDirection:(int64_t)direction fromViewController:(id)controller toViewController:(id)viewController
{
  if (controller && (v8 = [OFPageViewController _customAnimationControllerForDirection:"_customAnimationControllerForDirection:fromViewController:toViewController:" fromViewController:direction toViewController:?]) != 0)
  {
    v9 = [[_OFViewControllerTransitionContext alloc] initWithContainerView:[(OFPageViewController *)self _contentView] fromViewController:controller toViewController:viewController animator:v8 interactor:[(OFPageViewController *)self _customInteractionControllerForAnimationController:v8]];
    [objc_msgSend(controller "view")];
    [objc_msgSend(viewController "view")];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_customAnimationControllerForDirection:(int64_t)direction fromViewController:(id)controller toViewController:(id)viewController
{
  [(OFPageViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = [(OFPageViewController *)self delegate];

  return [(OFPageViewControllerDelegate *)delegate navigationController:self animationControllerForDirection:direction fromViewController:controller toViewController:viewController];
}

- (id)_customInteractionControllerForAnimationController:(id)controller
{
  if (!self->_isInteractive || (*&self->_flags & 1) == 0)
  {
    return 0;
  }

  delegate = [(OFPageViewController *)self delegate];

  return [(OFPageViewControllerDelegate *)delegate navigationController:self interactionControllerForAnimationController:controller];
}

- (void)reportTransitionProgress:(double)progress
{
  progressCopy = progress;
  [(_OFViewControllerTransitionContext *)self->_currentTransitionContext updateNonInteractiveTransitionWithProgress:fabs(progress)];
  if ([(_OFViewControllerTransitionContext *)self->_currentTransitionContext interactor]&& !self->_isForward)
  {
    progressCopy = -progressCopy;
  }

  [(OFPageViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(OFPageViewController *)self delegate];
    toViewController = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext toViewController];
    fromViewController = [(_OFViewControllerTransitionContext *)self->_currentTransitionContext fromViewController];
    isForward = self->_isForward;
    [(_OFViewControllerTransitionContext *)self->_currentTransitionContext progressVelocity];
    v10 = -v9;
    if (isForward)
    {
      v10 = v9;
    }

    [(OFPageViewControllerDelegate *)delegate pageViewController:self didUpdateTransitioningToViewController:toViewController fromViewController:fromViewController withProgress:progressCopy andVelocity:v10];
  }
}

@end