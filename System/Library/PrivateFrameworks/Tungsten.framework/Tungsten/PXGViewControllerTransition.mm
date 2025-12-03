@interface PXGViewControllerTransition
+ (id)_createTransitionWithSummaryViewController:(id)controller presentedViewController:(id)viewController detailViewController:(id)detailViewController;
+ (id)_transitionWithDetailViewController:(id)controller createIfNeeded:(BOOL)needed verticalOnly:(BOOL)only;
+ (id)interactiveDismissalOfDetailViewController:(id)controller;
+ (void)prepareTransitionFromSummaryViewController:(id)controller toPresentedViewController:(id)viewController detailViewController:(id)detailViewController;
- (BOOL)_isContentViewControllerHidden:(id)hidden;
- (BOOL)_isTransitionAllowedWithKind:(int64_t)kind;
- (CGRect)_rectInContainerView:(id)view fromRect:(CGRect)rect inCoordinateSpace:(id)space inContentViewController:(id)controller;
- (PXGViewControllerTransition)init;
- (PXGViewControllerTransitionEndPoint)detailEndPoint;
- (PXGViewControllerTransitionEndPoint)summaryEndPoint;
- (UIViewController)detailViewController;
- (UIViewController)presentedViewController;
- (UIViewController)presentingViewController;
- (UIViewController)summaryViewController;
- (_PXGTransitionEndPointInfo)detailEndPointInfo;
- (_PXGTransitionEndPointInfo)summaryEndPointInfo;
- (double)_progressForFractionCompleted:(double)completed;
- (double)transitionDuration:(id)duration;
- (id)_initWithSummaryViewController:(id)controller presentedViewController:(id)viewController detailViewController:(id)detailViewController;
- (id)_transitionViewControllerForContentViewController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForDismissal:(id)dismissal;
- (id)interactionControllerForPresentation:(id)presentation;
- (void)_endTransitionAnimation:(BOOL)animation;
- (void)_handleDisplayLink:(id)link;
- (void)_notifyAlongsideAnimationBlocks:(double)blocks;
- (void)_prepareTransitionAnimationWithReadinessHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_transitionDidEnd:(BOOL)end;
- (void)_transitionDidUpdateWithTransitionTime:(double)time;
- (void)_transitionWillBegin;
- (void)_willDismissWithoutTransition;
- (void)animateAlongside:(id)alongside;
- (void)animateTransition:(id)transition;
- (void)cancel;
- (void)finish;
- (void)installCompletionHandler:(id)handler;
- (void)performChanges:(id)changes;
- (void)setDetailItemOriginalPlacement:(id)placement;
- (void)setInteractiveTransition:(id)transition;
- (void)setSummaryItemOriginalPlacement:(id)placement;
@end

@implementation PXGViewControllerTransition

- (PXGViewControllerTransitionEndPoint)detailEndPoint
{
  WeakRetained = objc_loadWeakRetained(&self->_detailEndPoint);

  return WeakRetained;
}

- (PXGViewControllerTransitionEndPoint)summaryEndPoint
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryEndPoint);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (UIViewController)detailViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailViewController);

  return WeakRetained;
}

- (UIViewController)summaryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_summaryViewController);

  return WeakRetained;
}

- (double)transitionDuration:(id)duration
{
  v3 = +[PXTungstenSettings sharedInstance];
  [v3 viewControllerTransitionDuration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)transition
{
  v23 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 134218498;
    selfCopy = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = transitionCopy;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@", buf, 0x20u);
  }

  [(PXGViewControllerTransition *)self transitionDuration:transitionCopy];
  v9 = v8;
  [(PXGViewControllerTransition *)self setTransitionContext:transitionCopy];
  [(PXGViewControllerTransition *)self setTransitionDuration:v9];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__PXGViewControllerTransition_animateTransition___block_invoke;
  v14[3] = &unk_2782A8660;
  v14[4] = self;
  v15 = transitionCopy;
  objc_copyWeak(&v16, buf);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__PXGViewControllerTransition_animateTransition___block_invoke_2;
  v11[3] = &unk_2782A81D8;
  v11[4] = self;
  v10 = v15;
  v12 = v10;
  objc_copyWeak(&v13, buf);
  [(PXGViewControllerTransition *)self _prepareTransitionAnimationWithReadinessHandler:v14 completionHandler:v11];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __49__PXGViewControllerTransition_animateTransition___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = PXGTungstenGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_21AD38000, v2, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ transition animation ready", buf, 0x16u);
  }

  [*(a1 + 32) _transitionWillBegin];
  [*(a1 + 32) _transitionDidUpdateWithTransitionTime:0.0];
  v5 = [objc_alloc(MEMORY[0x277D3CD20]) initWithWeakTarget:*(a1 + 32) selector:sel__handleDisplayLink_];
  [*(a1 + 32) setDisplayLink:v5];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v9 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PXGViewControllerTransition_animateTransition___block_invoke_108;
  v6[3] = &unk_2782A81B0;
  v6[4] = buf;
  objc_copyWeak(&v7, (a1 + 48));
  [*(a1 + 32) setAnimationUpdateBlock:v6];
  objc_destroyWeak(&v7);
  _Block_object_dispose(buf, 8);
}

void __49__PXGViewControllerTransition_animateTransition___block_invoke_2(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = PXGTungstenGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 134218498;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_21AD38000, v4, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ completed %i", &v8, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _transitionDidEnd:{objc_msgSend(*(a1 + 40), "transitionWasCancelled") ^ 1}];
}

void __49__PXGViewControllerTransition_animateTransition___block_invoke_108(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4 == 0.0)
  {
    *(v3 + 24) = v2;
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  v5 = v2 - v4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _transitionDidUpdateWithTransitionTime:v5];
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  v19 = *MEMORY[0x277D85DE8];
  dismissalCopy = dismissal;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    interactiveTransition = [(PXGViewControllerTransition *)self interactiveTransition];
    v11 = 134218754;
    selfCopy = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = dismissalCopy;
    v17 = 2112;
    v18 = interactiveTransition;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@ -> %@", &v11, 0x2Au);
  }

  interactiveTransition2 = [(PXGViewControllerTransition *)self interactiveTransition];

  return interactiveTransition2;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v14 = 134218498;
    selfCopy3 = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = controllerCopy;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ dismissed:%@", &v14, 0x20u);
  }

  if ([(PXGViewControllerTransition *)self _isTransitionAllowedWithKind:2])
  {
    [(PXGViewControllerTransition *)self setTransitionKind:2];
    v8 = objc_alloc_init(MEMORY[0x277D75828]);
    [(PXGViewControllerTransition *)self setInteractiveTransition:v8];

    selfCopy2 = self;
  }

  else
  {
    presentedViewController = [(PXGViewControllerTransition *)self presentedViewController];
    v11 = [_transitionsByPresentedViewController objectForKey:presentedViewController];
    [v11 _willDismissWithoutTransition];

    [_transitionsByPresentedViewController removeObjectForKey:presentedViewController];
    v12 = PXGTungstenGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p aborting, dismissal not allowed", &v14, 0xCu);
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  v19 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    interactiveTransition = [(PXGViewControllerTransition *)self interactiveTransition];
    v11 = 134218754;
    selfCopy = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = presentationCopy;
    v17 = 2112;
    v18 = interactiveTransition;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@ -> %@", &v11, 0x2Au);
  }

  interactiveTransition2 = [(PXGViewControllerTransition *)self interactiveTransition];

  return interactiveTransition2;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v28 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  v12 = PXGTungstenGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v18 = 134219010;
    selfCopy3 = self;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = controllerCopy;
    v24 = 2112;
    v25 = presentingControllerCopy;
    v26 = 2112;
    v27 = sourceControllerCopy;
    _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ presented:%@ presenting:%@ source:%@", &v18, 0x34u);
  }

  if ([(PXGViewControllerTransition *)self _isTransitionAllowedWithKind:1])
  {
    [(PXGViewControllerTransition *)self setPresentingViewController:presentingControllerCopy];
    [(PXGViewControllerTransition *)self setTransitionKind:1];
    v14 = objc_alloc_init(MEMORY[0x277D75828]);
    [(PXGViewControllerTransition *)self setInteractiveTransition:v14];

    selfCopy2 = self;
  }

  else
  {
    v16 = PXGTungstenGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      selfCopy3 = self;
      _os_log_impl(&dword_21AD38000, v16, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p aborting, presented not allowed", &v18, 0xCu);
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (double)_progressForFractionCompleted:(double)completed
{
  transitionKind = [(PXGViewControllerTransition *)self transitionKind];
  if (transitionKind != 1)
  {
    if (transitionKind == 2)
    {
      return 1.0 - completed;
    }

    else
    {
      if (!transitionKind)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _progressForFractionCompleted:]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGViewControllerTransition.m" lineNumber:662 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      return 0.0;
    }
  }

  return completed;
}

- (void)_notifyAlongsideAnimationBlocks:(double)blocks
{
  v16 = *MEMORY[0x277D85DE8];
  [(PXGViewControllerTransition *)self _progressForFractionCompleted:blocks];
  v5 = v4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  alongsideAnimationBlocks = [(PXGViewControllerTransition *)self alongsideAnimationBlocks];
  v7 = [alongsideAnimationBlocks countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(alongsideAnimationBlocks);
        }

        (*(*(*(&v11 + 1) + 8 * v10++) + 16))(v5);
      }

      while (v8 != v10);
      v8 = [alongsideAnimationBlocks countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_willDismissWithoutTransition
{
  detailEndPoint = [(PXGViewControllerTransition *)self detailEndPoint];
  if (objc_opt_respondsToSelector())
  {
    summaryEndPoint = [(PXGViewControllerTransition *)self summaryEndPoint];
    [detailEndPoint willDismissWithoutTransitionToEndPoint:summaryEndPoint];
  }
}

- (void)_transitionDidEnd:(BOOL)end
{
  endCopy = end;
  v46 = *MEMORY[0x277D85DE8];
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 134218498;
    selfCopy3 = self;
    v42 = 2112;
    v43 = v7;
    v44 = 1024;
    v45 = endCopy;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %i", buf, 0x1Cu);
  }

  displayLink = [(PXGViewControllerTransition *)self displayLink];
  [displayLink invalidate];

  [(PXGViewControllerTransition *)self _notifyAlongsideAnimationBlocks:endCopy];
  alongsideAnimationBlocks = [(PXGViewControllerTransition *)self alongsideAnimationBlocks];
  [alongsideAnimationBlocks removeAllObjects];

  transitionContext = [(PXGViewControllerTransition *)self transitionContext];
  if (!transitionContext)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"transitionContext != nil"}];
  }

  summaryEndPoint = [(PXGViewControllerTransition *)self summaryEndPoint];
  detailEndPoint = [(PXGViewControllerTransition *)self detailEndPoint];
  if (objc_opt_respondsToSelector())
  {
    [summaryEndPoint didEndTransition:self withEndPoint:detailEndPoint finished:endCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [detailEndPoint didEndTransition:self withEndPoint:summaryEndPoint finished:endCopy];
  }

  v32 = detailEndPoint;
  v33 = summaryEndPoint;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  endPointInfos = [(PXGViewControllerTransition *)self endPointInfos];
  v14 = [endPointInfos countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(endPointInfos);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        itemReference = [v18 itemReference];
        if (itemReference)
        {
          itemPlacementController = [v18 itemPlacementController];
          [itemPlacementController setPlacementOverride:0 forItemReference:itemReference];
        }

        tungstenViewCoordinator = [v18 tungstenViewCoordinator];
        [tungstenViewCoordinator restoreAfterTransition];
      }

      v15 = [endPointInfos countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  fromContentView = [(PXGViewControllerTransition *)self fromContentView];
  [fromContentView setAlpha:1.0];

  toContentView = [(PXGViewControllerTransition *)self toContentView];
  [toContentView setAlpha:1.0];

  if (!endCopy)
  {
    v24 = [transitionContext viewForKey:*MEMORY[0x277D77248]];
    [v24 removeFromSuperview];
  }

  [transitionContext completeTransition:endCopy];
  completionHandler = [(PXGViewControllerTransition *)self completionHandler];
  v26 = completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 16))(completionHandler, endCopy);
  }

  if ([(PXGViewControllerTransition *)self transitionKind]== 2 && endCopy)
  {
    v27 = _transitionsByPresentedViewController;
    presentedViewController = [(PXGViewControllerTransition *)self presentedViewController];
    [v27 removeObjectForKey:presentedViewController];
  }

  v29 = PXGTungstenGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_21AD38000, v29, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p will perform clean up", buf, 0xCu);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __49__PXGViewControllerTransition__transitionDidEnd___block_invoke;
  v34[3] = &unk_2782A8188;
  v34[4] = self;
  [(PXGViewControllerTransition *)self performChanges:v34];
  v30 = PXGTungstenGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_21AD38000, v30, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p did perform clean up", buf, 0xCu);
  }
}

void __49__PXGViewControllerTransition__transitionDidEnd___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PXGTungstenGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&dword_21AD38000, v4, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p cleaning up", &v6, 0xCu);
  }

  [*(a1 + 32) setTransitionKind:0];
  [*(a1 + 32) setTransitionDuration:0.0];
  [*(a1 + 32) setInteractiveTransition:0];
  [*(a1 + 32) setTransitionContext:0];
  [*(a1 + 32) setFromContentView:0];
  [*(a1 + 32) setToContentView:0];
  [*(a1 + 32) setAnimationUpdateBlock:0];
  [*(a1 + 32) setCompletionHandler:0];
  [*(a1 + 32) setDisplayLink:0];
  [*(a1 + 32) setEndPointInfos:0];
  [*(a1 + 32) setItemPlacementInterpolator:0];
  [*(a1 + 32) setIsInteractive:0];
  [*(a1 + 32) setIsEnding:0];
  [*(a1 + 32) setSummaryItemOriginalPlacement:0];
  [*(a1 + 32) setDetailItemOriginalPlacement:0];
  [v3 setSummaryItemPlacementOverride:0];
  [v3 setDetailItemPlacementOverride:0];
}

- (void)_transitionDidUpdateWithTransitionTime:(double)time
{
  v57 = *MEMORY[0x277D85DE8];
  isInteractive = [(PXGViewControllerTransition *)self isInteractive];
  if (isInteractive)
  {
    [(PXGViewControllerTransition *)self fractionCompleted];
    v8 = v7;
  }

  else
  {
    [(PXGViewControllerTransition *)self transitionDuration];
    v8 = time / v9;
  }

  if (![(PXGViewControllerTransition *)self isEnding])
  {
    interactiveTransition = [(PXGViewControllerTransition *)self interactiveTransition];
    [interactiveTransition updateInteractiveTransition:v8];
  }

  transitionKind = [(PXGViewControllerTransition *)self transitionKind];
  switch(transitionKind)
  {
    case 1:
      toContentView = [(PXGViewControllerTransition *)self toContentView];
      v15 = toContentView;
      v16 = v8;
      goto LABEL_12;
    case 2:
      toContentView = [(PXGViewControllerTransition *)self fromContentView];
      v15 = toContentView;
      v16 = 1.0 - v8;
LABEL_12:
      [toContentView setAlpha:v16];

      break;
    case 0:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _transitionDidUpdateWithTransitionTime:]"];
      [currentHandler handleFailureInFunction:v13 file:@"PXGViewControllerTransition.m" lineNumber:530 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  if (isInteractive)
  {
    summaryEndPointInfo = [(PXGViewControllerTransition *)self summaryEndPointInfo];
    summaryItemPlacementOverride = [(PXGViewControllerTransition *)self summaryItemPlacementOverride];
    __70__PXGViewControllerTransition__transitionDidUpdateWithTransitionTime___block_invoke(summaryEndPointInfo, summaryItemPlacementOverride);

    detailEndPointInfo = [(PXGViewControllerTransition *)self detailEndPointInfo];
    detailItemPlacementOverride = [(PXGViewControllerTransition *)self detailItemPlacementOverride];
    __70__PXGViewControllerTransition__transitionDidUpdateWithTransitionTime___block_invoke(detailEndPointInfo, detailItemPlacementOverride);
  }

  else
  {
    itemPlacementInterpolator = [(PXGViewControllerTransition *)self itemPlacementInterpolator];
    detailEndPointInfo = itemPlacementInterpolator;
    if (itemPlacementInterpolator)
    {
      v42 = a2;
      [itemPlacementInterpolator setTime:time];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      endPointInfos = [(PXGViewControllerTransition *)self endPointInfos];
      v23 = [endPointInfos countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v48;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v48 != v25)
            {
              objc_enumerationMutation(endPointInfos);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            originalItemPlacement = [v27 originalItemPlacement];
            v29 = [detailEndPointInfo adjustedPlacement:originalItemPlacement];

            itemReference = [v27 itemReference];
            if (itemReference)
            {
              itemPlacementController = [v27 itemPlacementController];
              [itemPlacementController setPlacementOverride:v29 forItemReference:itemReference];
            }
          }

          v24 = [endPointInfos countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v24);
      }

      a2 = v42;
    }
  }

  if (time == 0.0)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    endPointInfos2 = [(PXGViewControllerTransition *)self endPointInfos];
    v33 = [endPointInfos2 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(endPointInfos2);
          }

          tungstenViewCoordinator = [*(*(&v43 + 1) + 8 * j) tungstenViewCoordinator];
          tungstenView = [tungstenViewCoordinator tungstenView];
          [tungstenView forceUpdate];
        }

        v34 = [endPointInfos2 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v34);
    }
  }

  [(PXGViewControllerTransition *)self _notifyAlongsideAnimationBlocks:v8];
  v39 = v8 < 1.0 || isInteractive;
  if ((v39 & 1) == 0 && ![(PXGViewControllerTransition *)self isEnding])
  {
    v40 = PXGTungstenGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = NSStringFromSelector(a2);
      *buf = 134218242;
      selfCopy = self;
      v53 = 2112;
      v54 = v41;
      _os_log_impl(&dword_21AD38000, v40, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ ending transition", buf, 0x16u);
    }

    [(PXGViewControllerTransition *)self _endTransitionAnimation:1];
  }
}

void __70__PXGViewControllerTransition__transitionDidUpdateWithTransitionTime___block_invoke(void *a1, void *a2)
{
  v7 = a1;
  v3 = a2;
  v4 = [v7 itemReference];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v7 itemPlacementController];
    [v6 setPlacementOverride:v3 forItemReference:v5];
  }
}

- (id)_transitionViewControllerForContentViewController:(id)controller
{
  controllerCopy = controller;
  detailViewController = [(PXGViewControllerTransition *)self detailViewController];

  if (detailViewController == controllerCopy)
  {
    presentedViewController = [(PXGViewControllerTransition *)self presentedViewController];
  }

  else
  {
    summaryViewController = [(PXGViewControllerTransition *)self summaryViewController];

    if (summaryViewController != controllerCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:511 description:{@"unknown view controller %@", controllerCopy}];

      abort();
    }

    presentedViewController = [(PXGViewControllerTransition *)self presentingViewController];
  }

  v9 = presentedViewController;

  return v9;
}

- (BOOL)_isContentViewControllerHidden:(id)hidden
{
  v3 = [(PXGViewControllerTransition *)self _transitionViewControllerForContentViewController:hidden];
  view = [v3 view];
  [view alpha];
  v6 = v5 == 0.0;

  return v6;
}

- (CGRect)_rectInContainerView:(id)view fromRect:(CGRect)rect inCoordinateSpace:(id)space inContentViewController:(id)controller
{
  v28 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  spaceCopy = space;
  controllerCopy = controller;
  v12 = [(PXGViewControllerTransition *)self _transitionViewControllerForContentViewController:controllerCopy];
  if (!v12)
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v26 = 138412290;
      v27 = controllerCopy;
      _os_log_fault_impl(&dword_21AD38000, v13, OS_LOG_TYPE_FAULT, "missing transitionViewController for %@", &v26, 0xCu);
    }
  }

  PXRectConvertFromCoordinateSpaceToCoordinateSpace();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)_transitionWillBegin
{
  transitionContext = [(PXGViewControllerTransition *)self transitionContext];
  if (!transitionContext)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"transitionContext != nil"}];
  }

  v39 = transitionContext;
  containerView = [transitionContext containerView];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  summaryEndPoint = [(PXGViewControllerTransition *)self summaryEndPoint];
  detailEndPoint = [(PXGViewControllerTransition *)self detailEndPoint];
  if (objc_opt_respondsToSelector())
  {
    v9 = [detailEndPoint summaryItemReferenceForTransitionWithSummaryEndPoint:summaryEndPoint];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v40 = [detailEndPoint detailItemReferenceForTransitionWithSummaryEndPoint:summaryEndPoint];
  }

  else
  {
    v40 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    if ([(PXGViewControllerTransition *)self transitionKind]== 2)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    [summaryEndPoint willBeginTransition:self withEndPoint:detailEndPoint anchorItemReference:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    [detailEndPoint willBeginTransition:self withEndPoint:summaryEndPoint anchorItemReference:0];
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __51__PXGViewControllerTransition__transitionWillBegin__block_invoke;
  v48[3] = &unk_2782A8138;
  v48[4] = self;
  v11 = containerView;
  v12 = summaryEndPoint;
  v13 = v11;
  v49 = v11;
  v14 = v6;
  v50 = v14;
  v15 = detailEndPoint;
  v51 = v15;
  v52 = a2;
  v16 = MEMORY[0x21CEE40A0](v48);
  summaryViewController = [(PXGViewControllerTransition *)self summaryViewController];
  v47 = 0;
  v37 = v12;
  v38 = v9;
  (v16)[2](v16, summaryViewController, v12, 0, v9, &v47);
  v18 = v47;

  detailViewController = [(PXGViewControllerTransition *)self detailViewController];
  v46 = 0;
  v36 = v15;
  (v16)[2](v16, detailViewController, v15, 1, v40, &v46);
  v20 = v46;

  transitionKind = [(PXGViewControllerTransition *)self transitionKind];
  switch(transitionKind)
  {
    case 1:
      v24 = -1;
      v25 = v18;
      v26 = v20;
      break;
    case 2:
      v24 = 1;
      v25 = v20;
      v26 = v18;
      break;
    case 0:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _transitionWillBegin]"];
      [currentHandler2 handleFailureInFunction:v35 file:@"PXGViewControllerTransition.m" lineNumber:470 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v22 = 0;
      v23 = 0;
      goto LABEL_24;
  }

  v23 = v25;
  v22 = v26;
  if (!v22)
  {
LABEL_24:
    v28 = 0;
    goto LABEL_25;
  }

  v27 = [PXGViewControllerItemPlacementInterpolator alloc];
  [(PXGViewControllerTransition *)self transitionDuration];
  v28 = [(PXGViewControllerItemPlacementInterpolator *)v27 initWithSourcePlacement:v23 targetPlacement:v22 layering:v24 containerView:v13 duration:?];
LABEL_25:
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __51__PXGViewControllerTransition__transitionWillBegin__block_invoke_94;
  v41[3] = &unk_2782A8160;
  v41[4] = self;
  v42 = v14;
  v43 = v28;
  v44 = v18;
  v45 = v20;
  v29 = v20;
  v30 = v18;
  v31 = v28;
  v32 = v14;
  [(PXGViewControllerTransition *)self performChanges:v41];
}

void __51__PXGViewControllerTransition__transitionWillBegin__block_invoke(id *a1, void *a2, void *a3, char a4, void *a5, void *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = [PXGViewCoordinator tungstenViewCoordinatorInContainerViewController:v11];
  v15 = v14;
  v36 = v12;
  if (v14)
  {
    v35 = a6;
    v16 = [v14 tungstenView];
    [v16 ensureUpdatedLayout];
    v17 = a1[4];
    v18 = a1[5];
    [v16 bounds];
    [v17 _rectInContainerView:v18 fromRect:v16 inCoordinateSpace:v11 inContentViewController:?];
    v20 = v19;
    v22 = v21;
    v23 = [v15 contentLayout];
    [v23 visibleRect];
    PXPointSubtract();
    v25 = v24;
    v27 = v26;
    v28 = [[PXGItemPlacementContext alloc] initWithOriginOfLayout:v23 atPoint:a1[5] inCoordinateSpace:v24, v26];
    if (v13)
    {
      v29 = [v12 itemPlacementControllerForItemReference:v13];
      v30 = [v29 placementInContext:v28 forItemReference:v13];
      if (a4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v29 = 0;
      v30 = 0;
      if (a4)
      {
        goto LABEL_10;
      }
    }

    [a1[5] bounds];
    if (PXRectApproximatelyEqualToRect())
    {
LABEL_13:
      v33 = objc_alloc_init(_PXGTransitionEndPointInfo);
      [(_PXGTransitionEndPointInfo *)v33 setTungstenViewCoordinator:v15];
      [(_PXGTransitionEndPointInfo *)v33 setItemPlacementController:v29];
      [(_PXGTransitionEndPointInfo *)v33 setPlacementContext:v28];
      [(_PXGTransitionEndPointInfo *)v33 setOriginalItemPlacement:v30];
      [(_PXGTransitionEndPointInfo *)v33 setItemReference:v13];
      [a1[6] addObject:v33];

      a6 = v35;
      goto LABEL_14;
    }

LABEL_10:
    if ([a1[4] _isContentViewControllerHidden:v11])
    {
      [v16 alpha];
      v32 = v31;
      [v16 setAlpha:0.0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__PXGViewControllerTransition__transitionWillBegin__block_invoke_2;
      block[3] = &unk_2782ABF68;
      v38 = v16;
      v39 = v32;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    [v15 prepareForTransitionInContainerView:a1[5] withContentFrame:{v25, v27, v20, v22}];
    goto LABEL_13;
  }

  if (a1[7] != v12)
  {
    v30 = 0;
    if (!a6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = PXAssertGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v41 = v11;
    _os_log_fault_impl(&dword_21AD38000, v16, OS_LOG_TYPE_FAULT, "Couldn't find any PXGViewCoordinator inside %@", buf, 0xCu);
  }

  v30 = 0;
LABEL_14:

  if (a6)
  {
LABEL_15:
    v34 = v30;
    *a6 = v30;
  }

LABEL_16:
}

uint64_t __51__PXGViewControllerTransition__transitionWillBegin__block_invoke_94(uint64_t a1)
{
  [*(a1 + 32) setEndPointInfos:*(a1 + 40)];
  [*(a1 + 32) setItemPlacementInterpolator:*(a1 + 48)];
  [*(a1 + 32) setSummaryItemOriginalPlacement:*(a1 + 56)];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);

  return [v3 setDetailItemOriginalPlacement:v2];
}

uint64_t __51__PXGViewControllerTransition__transitionWillBegin__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) forceUpdate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);

  return [v3 setAlpha:v2];
}

- (void)_endTransitionAnimation:(BOOL)animation
{
  animationCopy = animation;
  v20 = *MEMORY[0x277D85DE8];
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    interactiveTransition = [(PXGViewControllerTransition *)self interactiveTransition];
    *buf = 134218754;
    selfCopy2 = self;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = animationCopy;
    v18 = 2112;
    v19 = interactiveTransition;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %i %@", buf, 0x26u);
  }

  interactiveTransition2 = [(PXGViewControllerTransition *)self interactiveTransition];
  if (interactiveTransition2)
  {
    if ([(PXGViewControllerTransition *)self isEnding])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"!self.isEnding"}];
    }

    [(PXGViewControllerTransition *)self setIsEnding:1];
  }

  else
  {
    v10 = PXAssertGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v14 = 2080;
      v15 = "[PXGViewControllerTransition _endTransitionAnimation:]";
      _os_log_fault_impl(&dword_21AD38000, v10, OS_LOG_TYPE_FAULT, "[PXGViewControllerTransition] %p missing interactive transition in %s", buf, 0x16u);
    }
  }

  if (animationCopy)
  {
    [interactiveTransition2 finishInteractiveTransition];
  }

  else
  {
    [interactiveTransition2 cancelInteractiveTransition];
  }
}

- (void)_handleDisplayLink:(id)link
{
  animationUpdateBlock = [(PXGViewControllerTransition *)self animationUpdateBlock];
  animationUpdateBlock[2]();
}

- (void)_prepareTransitionAnimationWithReadinessHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  transitionContext = [(PXGViewControllerTransition *)self transitionContext];
  if (!transitionContext)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"transitionContext != nil"}];
  }

  containerView = [transitionContext containerView];
  v10 = [transitionContext viewForKey:*MEMORY[0x277D77238]];
  v11 = [transitionContext viewForKey:*MEMORY[0x277D77248]];
  v12 = [transitionContext viewControllerForKey:*MEMORY[0x277D77230]];
  v13 = [transitionContext viewControllerForKey:*MEMORY[0x277D77240]];
  [transitionContext finalFrameForViewController:v13];
  [v11 setFrame:?];
  view = [v12 view];
  view2 = [v13 view];
  v35 = view;
  [(PXGViewControllerTransition *)self setFromContentView:view];
  [(PXGViewControllerTransition *)self setToContentView:view2];
  transitionKind = [(PXGViewControllerTransition *)self transitionKind];
  v17 = v11;
  switch(transitionKind)
  {
    case 1:
      goto LABEL_8;
    case 2:
      [containerView addSubview:v11];
      v17 = v10;
LABEL_8:
      [containerView addSubview:v17];
      break;
    case 0:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _prepareTransitionAnimationWithReadinessHandler:completionHandler:]"];
      v20 = currentHandler2;
      v21 = v19;
      v22 = 334;
      goto LABEL_13;
  }

  [containerView layoutBelowIfNeeded];
  handlerCopy[2](handlerCopy);
  transitionKind2 = [(PXGViewControllerTransition *)self transitionKind];
  v33 = v12;
  v34 = handlerCopy;
  if (transitionKind2 == 1)
  {
    v24 = completionHandlerCopy;
    v25 = v10;
    [containerView bringSubviewToFront:v11];
    [view2 setAlpha:0.0];
  }

  else if (transitionKind2 == 2)
  {
    v24 = completionHandlerCopy;
    v25 = v10;
    [containerView bringSubviewToFront:v10];
  }

  else
  {
    v24 = completionHandlerCopy;
    v25 = v10;
    if (!transitionKind2)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _prepareTransitionAnimationWithReadinessHandler:completionHandler:]"];
      v20 = currentHandler2;
      v21 = v19;
      v22 = 351;
LABEL_13:
      [v20 handleFailureInFunction:v21 file:@"PXGViewControllerTransition.m" lineNumber:v22 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  v26 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, -1000.0, 50.0, 50.0}];
  [containerView addSubview:v26];
  v27 = MEMORY[0x277D75D18];
  [(PXGViewControllerTransition *)self transitionDuration];
  v29 = v28;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __97__PXGViewControllerTransition__prepareTransitionAnimationWithReadinessHandler_completionHandler___block_invoke;
  v40[3] = &unk_2782ABE50;
  v41 = v26;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __97__PXGViewControllerTransition__prepareTransitionAnimationWithReadinessHandler_completionHandler___block_invoke_2;
  v37[3] = &unk_2782A8110;
  v38 = v41;
  v39 = v24;
  v30 = v24;
  v31 = v41;
  [v27 animateWithDuration:v40 animations:v37 completion:v29];
}

uint64_t __97__PXGViewControllerTransition__prepareTransitionAnimationWithReadinessHandler_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  v6 = CGRectOffset(v5, 50.0, 0.0);
  v2 = *(a1 + 32);

  return [v2 setFrame:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
}

uint64_t __97__PXGViewControllerTransition__prepareTransitionAnimationWithReadinessHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_isTransitionAllowedWithKind:(int64_t)kind
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(PXGViewControllerTransition *)self transitionKind])
  {
    v5 = PXGTungstenGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      selfCopy = self;
      v12 = 2048;
      kindCopy = kind;
      v14 = 2048;
      transitionKind = [(PXGViewControllerTransition *)self transitionKind];
      _os_log_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "%@ unexpectedly asked for transition kind %li while in %li", &v10, 0x20u);
    }

    return 0;
  }

  else
  {
    summaryEndPoint = [(PXGViewControllerTransition *)self summaryEndPoint];
    detailEndPoint = [(PXGViewControllerTransition *)self detailEndPoint];
    v6 = detailEndPoint && (kind == 1 || kind == 2 && -[PXGViewControllerTransition isInteractive](self, "isInteractive") || ((objc_opt_respondsToSelector() & 1) == 0 || summaryEndPoint && [detailEndPoint allowsTransition:self withEndPoint:summaryEndPoint]) && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(summaryEndPoint, "allowsTransition:withEndPoint:", self, detailEndPoint)));
  }

  return v6;
}

- (id)_initWithSummaryViewController:(id)controller presentedViewController:(id)viewController detailViewController:(id)detailViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  detailViewControllerCopy = detailViewController;
  v20.receiver = self;
  v20.super_class = PXGViewControllerTransition;
  v11 = [(PXGViewControllerTransition *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_summaryViewController, controllerCopy);
    objc_storeWeak(&v12->_presentedViewController, viewControllerCopy);
    objc_storeWeak(&v12->_detailViewController, detailViewControllerCopy);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    alongsideAnimationBlocks = v12->_alongsideAnimationBlocks;
    v12->_alongsideAnimationBlocks = v13;

    WeakRetained = objc_loadWeakRetained(&v12->_summaryViewController);
    v16 = __107__PXGViewControllerTransition__initWithSummaryViewController_presentedViewController_detailViewController___block_invoke(WeakRetained);
    objc_storeWeak(&v12->_summaryEndPoint, v16);

    v17 = objc_loadWeakRetained(&v12->_detailViewController);
    v18 = __107__PXGViewControllerTransition__initWithSummaryViewController_presentedViewController_detailViewController___block_invoke(v17);
    objc_storeWeak(&v12->_detailEndPoint, v18);
  }

  return v12;
}

id __107__PXGViewControllerTransition__initWithSummaryViewController_presentedViewController_detailViewController___block_invoke(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_282CB5C80])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)finish
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = PXGTungstenGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_21AD38000, v4, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@", &v6, 0x16u);
  }

  [(PXGViewControllerTransition *)self _endTransitionAnimation:1];
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = PXGTungstenGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_21AD38000, v4, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@", &v6, 0x16u);
  }

  [(PXGViewControllerTransition *)self _endTransitionAnimation:0];
}

- (void)installCompletionHandler:(id)handler
{
  handlerCopy = handler;
  completionHandler = [(PXGViewControllerTransition *)self completionHandler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__PXGViewControllerTransition_installCompletionHandler___block_invoke;
  v8[3] = &unk_2782A80E8;
  v9 = completionHandler;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = completionHandler;
  [(PXGViewControllerTransition *)self setCompletionHandler:v8];
}

uint64_t __56__PXGViewControllerTransition_installCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setInteractiveTransition:(id)transition
{
  v18 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    interactiveTransition = self->_interactiveTransition;
    v10 = 134218754;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = interactiveTransition;
    v16 = 2112;
    v17 = transitionCopy;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@ -> %@", &v10, 0x2Au);
  }

  v9 = self->_interactiveTransition;
  self->_interactiveTransition = transitionCopy;
}

- (void)animateAlongside:(id)alongside
{
  alongsideCopy = alongside;
  alongsideAnimationBlocks = [(PXGViewControllerTransition *)self alongsideAnimationBlocks];
  v5 = MEMORY[0x21CEE40A0](alongsideCopy);

  [alongsideAnimationBlocks addObject:v5];
}

- (void)setDetailItemOriginalPlacement:(id)placement
{
  placementCopy = placement;
  v5 = placementCopy;
  if (self->_detailItemOriginalPlacement != placementCopy)
  {
    v9 = placementCopy;
    v6 = [(PXGItemPlacement *)placementCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXGItemPlacement *)v9 copy];
      detailItemOriginalPlacement = self->_detailItemOriginalPlacement;
      self->_detailItemOriginalPlacement = v7;

      [(PXGViewControllerTransition *)self signalChange:2];
      v5 = v9;
    }
  }
}

- (void)setSummaryItemOriginalPlacement:(id)placement
{
  placementCopy = placement;
  v5 = placementCopy;
  if (self->_summaryItemOriginalPlacement != placementCopy)
  {
    v9 = placementCopy;
    v6 = [(PXGItemPlacement *)placementCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(PXGItemPlacement *)v9 copy];
      summaryItemOriginalPlacement = self->_summaryItemOriginalPlacement;
      self->_summaryItemOriginalPlacement = v7;

      [(PXGViewControllerTransition *)self signalChange:1];
      v5 = v9;
    }
  }
}

- (_PXGTransitionEndPointInfo)detailEndPointInfo
{
  endPointInfos = [(PXGViewControllerTransition *)self endPointInfos];
  lastObject = [endPointInfos lastObject];

  return lastObject;
}

- (_PXGTransitionEndPointInfo)summaryEndPointInfo
{
  endPointInfos = [(PXGViewControllerTransition *)self endPointInfos];
  firstObject = [endPointInfos firstObject];

  return firstObject;
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXGViewControllerTransition;
  [(PXGViewControllerTransition *)&v3 performChanges:changes];
}

- (PXGViewControllerTransition)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:176 description:{@"%s is not available as initializer", "-[PXGViewControllerTransition init]"}];

  abort();
}

+ (id)interactiveDismissalOfDetailViewController:(id)controller
{
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = [self _transitionWithDetailViewController:controllerCopy createIfNeeded:1 verticalOnly:1];
  v7 = PXGTungstenGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = controllerCopy;
    v16 = 2112;
    v17 = v6;
    v18 = 1024;
    isInteractive = [v6 isInteractive];
    _os_log_impl(&dword_21AD38000, v7, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %@ %@ -> %@ isInteractive:%i", &v12, 0x26u);
  }

  if (v6 && ([v6 isInteractive] & 1) == 0)
  {
    [v6 setIsInteractive:1];
    presentingViewController = [v6 presentingViewController];
    v10 = presentingViewController;
    if (!presentingViewController)
    {
      presentingViewController = controllerCopy;
    }

    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  return v6;
}

+ (id)_transitionWithDetailViewController:(id)controller createIfNeeded:(BOOL)needed verticalOnly:(BOOL)only
{
  onlyCopy = only;
  neededCopy = needed;
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  objectEnumerator = [_transitionsByPresentedViewController objectEnumerator];
  v10 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        detailViewController = [v13 detailViewController];

        if (detailViewController == controllerCopy)
        {
          presentingViewController = [controllerCopy presentingViewController];
          if (presentingViewController)
          {
            [v13 setPresentingViewController:presentingViewController];
          }

          v10 = v13;

          goto LABEL_13;
        }
      }

      v10 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (!v10 && neededCopy)
  {
    presentingViewController2 = [controllerCopy presentingViewController];
    presentedViewController = [presentingViewController2 presentedViewController];
    v18 = PXGTungstenGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = presentingViewController2;
      v29 = 2112;
      v30 = presentedViewController;
      _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] create with summary: %@ presented: %@", buf, 0x16u);
    }

    v10 = 0;
    if (presentingViewController2 && presentedViewController)
    {
      v10 = [self _createTransitionWithSummaryViewController:presentingViewController2 presentedViewController:presentedViewController detailViewController:controllerCopy];
      [v10 setIsVerticalOnly:onlyCopy];
    }
  }

  v19 = PXGTungstenGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v28 = v20;
    v29 = 2112;
    v30 = controllerCopy;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_21AD38000, v19, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %@ %@ -> %@", buf, 0x20u);
  }

  return v10;
}

+ (id)_createTransitionWithSummaryViewController:(id)controller presentedViewController:(id)viewController detailViewController:(id)detailViewController
{
  v22 = *MEMORY[0x277D85DE8];
  viewControllerCopy = viewController;
  detailViewControllerCopy = detailViewController;
  controllerCopy = controller;
  v11 = [[self alloc] _initWithSummaryViewController:controllerCopy presentedViewController:viewControllerCopy detailViewController:detailViewControllerCopy];

  transitioningDelegate = [viewControllerCopy transitioningDelegate];

  if (transitioningDelegate)
  {
    v13 = PXGTungstenGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      transitioningDelegate2 = [viewControllerCopy transitioningDelegate];
      v20 = 138412290;
      v21 = transitioningDelegate2;
      _os_log_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "[PXGViewControllerTransition] previous transitioningDelegate: %@", &v20, 0xCu);
    }
  }

  [viewControllerCopy setTransitioningDelegate:v11];
  v15 = _transitionsByPresentedViewController;
  if (!_transitionsByPresentedViewController)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v17 = _transitionsByPresentedViewController;
    _transitionsByPresentedViewController = weakToStrongObjectsMapTable;

    v15 = _transitionsByPresentedViewController;
  }

  [v15 setObject:v11 forKey:viewControllerCopy];
  v18 = PXGTungstenGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] created %@", &v20, 0xCu);
  }

  return v11;
}

+ (void)prepareTransitionFromSummaryViewController:(id)controller toPresentedViewController:(id)viewController detailViewController:(id)detailViewController
{
  v37 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  detailViewControllerCopy = detailViewController;
  v12 = PXGTungstenGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *&rect[16] = 138413058;
    *&rect[20] = v13;
    *&rect[28] = 2112;
    *&rect[30] = controllerCopy;
    v33 = 2112;
    v34 = viewControllerCopy;
    v35 = 2112;
    v36 = detailViewControllerCopy;
    _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %@ summary:%@ presented:%@ detail:%@", &rect[16], 0x2Au);
  }

  v14 = +[PXTungstenSettings sharedInstance];
  allowsViewControllerTransitions = [v14 allowsViewControllerTransitions];

  if (allowsViewControllerTransitions)
  {
    v16 = PXGetRootViewController();
    view = [v16 view];
    view2 = [controllerCopy view];
    [view bounds];
    v20 = v19;
    *&rect[8] = v21;
    v23 = v22;
    v25 = v24;
    [view2 bounds];
    [view convertRect:view2 fromView:?];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    CGRectGetMinX(v38);
    v39.origin.x = v20;
    v39.origin.y = *&rect[8];
    v39.size.width = v23;
    v39.size.height = v25;
    CGRectGetMinX(v39);
    if (PXFloatApproximatelyEqualToFloat() && (v40.origin.x = x, v40.origin.y = y, v40.size.width = width, v40.size.height = height, CGRectGetMaxX(v40), v41.origin.x = v20, v41.origin.y = *&rect[8], v41.size.width = v23, v41.size.height = v25, CGRectGetMaxX(v41), (PXFloatApproximatelyEqualToFloat() & 1) != 0))
    {
      v30 = [self _createTransitionWithSummaryViewController:controllerCopy presentedViewController:viewControllerCopy detailViewController:detailViewControllerCopy];
    }

    else
    {
      v31 = PXGTungstenGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *&rect[16] = 0;
        _os_log_impl(&dword_21AD38000, v31, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] aborting, summary view not extending horizontally to container", &rect[16], 2u);
      }
    }
  }

  else
  {
    v16 = PXGTungstenGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *&rect[16] = 0;
      _os_log_impl(&dword_21AD38000, v16, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] aborting, transitions turned off", &rect[16], 2u);
    }
  }
}

@end