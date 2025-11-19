@interface PXGViewControllerTransition
+ (id)_createTransitionWithSummaryViewController:(id)a3 presentedViewController:(id)a4 detailViewController:(id)a5;
+ (id)_transitionWithDetailViewController:(id)a3 createIfNeeded:(BOOL)a4 verticalOnly:(BOOL)a5;
+ (id)interactiveDismissalOfDetailViewController:(id)a3;
+ (void)prepareTransitionFromSummaryViewController:(id)a3 toPresentedViewController:(id)a4 detailViewController:(id)a5;
- (BOOL)_isContentViewControllerHidden:(id)a3;
- (BOOL)_isTransitionAllowedWithKind:(int64_t)a3;
- (CGRect)_rectInContainerView:(id)a3 fromRect:(CGRect)a4 inCoordinateSpace:(id)a5 inContentViewController:(id)a6;
- (PXGViewControllerTransition)init;
- (PXGViewControllerTransitionEndPoint)detailEndPoint;
- (PXGViewControllerTransitionEndPoint)summaryEndPoint;
- (UIViewController)detailViewController;
- (UIViewController)presentedViewController;
- (UIViewController)presentingViewController;
- (UIViewController)summaryViewController;
- (_PXGTransitionEndPointInfo)detailEndPointInfo;
- (_PXGTransitionEndPointInfo)summaryEndPointInfo;
- (double)_progressForFractionCompleted:(double)a3;
- (double)transitionDuration:(id)a3;
- (id)_initWithSummaryViewController:(id)a3 presentedViewController:(id)a4 detailViewController:(id)a5;
- (id)_transitionViewControllerForContentViewController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interactionControllerForDismissal:(id)a3;
- (id)interactionControllerForPresentation:(id)a3;
- (void)_endTransitionAnimation:(BOOL)a3;
- (void)_handleDisplayLink:(id)a3;
- (void)_notifyAlongsideAnimationBlocks:(double)a3;
- (void)_prepareTransitionAnimationWithReadinessHandler:(id)a3 completionHandler:(id)a4;
- (void)_transitionDidEnd:(BOOL)a3;
- (void)_transitionDidUpdateWithTransitionTime:(double)a3;
- (void)_transitionWillBegin;
- (void)_willDismissWithoutTransition;
- (void)animateAlongside:(id)a3;
- (void)animateTransition:(id)a3;
- (void)cancel;
- (void)finish;
- (void)installCompletionHandler:(id)a3;
- (void)performChanges:(id)a3;
- (void)setDetailItemOriginalPlacement:(id)a3;
- (void)setInteractiveTransition:(id)a3;
- (void)setSummaryItemOriginalPlacement:(id)a3;
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

- (double)transitionDuration:(id)a3
{
  v3 = +[PXTungstenSettings sharedInstance];
  [v3 viewControllerTransitionDuration];
  v5 = v4;

  return v5;
}

- (void)animateTransition:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 134218498;
    v18 = self;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@", buf, 0x20u);
  }

  [(PXGViewControllerTransition *)self transitionDuration:v5];
  v9 = v8;
  [(PXGViewControllerTransition *)self setTransitionContext:v5];
  [(PXGViewControllerTransition *)self setTransitionDuration:v9];
  objc_initWeak(buf, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__PXGViewControllerTransition_animateTransition___block_invoke;
  v14[3] = &unk_2782A8660;
  v14[4] = self;
  v15 = v5;
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

- (id)interactionControllerForDismissal:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(PXGViewControllerTransition *)self interactiveTransition];
    v11 = 134218754;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@ -> %@", &v11, 0x2Au);
  }

  v9 = [(PXGViewControllerTransition *)self interactiveTransition];

  return v9;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v14 = 134218498;
    v15 = self;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ dismissed:%@", &v14, 0x20u);
  }

  if ([(PXGViewControllerTransition *)self _isTransitionAllowedWithKind:2])
  {
    [(PXGViewControllerTransition *)self setTransitionKind:2];
    v8 = objc_alloc_init(MEMORY[0x277D75828]);
    [(PXGViewControllerTransition *)self setInteractiveTransition:v8];

    v9 = self;
  }

  else
  {
    v10 = [(PXGViewControllerTransition *)self presentedViewController];
    v11 = [_transitionsByPresentedViewController objectForKey:v10];
    [v11 _willDismissWithoutTransition];

    [_transitionsByPresentedViewController removeObjectForKey:v10];
    v12 = PXGTungstenGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134217984;
      v15 = self;
      _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p aborting, dismissal not allowed", &v14, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

- (id)interactionControllerForPresentation:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(PXGViewControllerTransition *)self interactiveTransition];
    v11 = 134218754;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@ -> %@", &v11, 0x2Au);
  }

  v9 = [(PXGViewControllerTransition *)self interactiveTransition];

  return v9;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PXGTungstenGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v18 = 134219010;
    v19 = self;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ presented:%@ presenting:%@ source:%@", &v18, 0x34u);
  }

  if ([(PXGViewControllerTransition *)self _isTransitionAllowedWithKind:1])
  {
    [(PXGViewControllerTransition *)self setPresentingViewController:v10];
    [(PXGViewControllerTransition *)self setTransitionKind:1];
    v14 = objc_alloc_init(MEMORY[0x277D75828]);
    [(PXGViewControllerTransition *)self setInteractiveTransition:v14];

    v15 = self;
  }

  else
  {
    v16 = PXGTungstenGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = self;
      _os_log_impl(&dword_21AD38000, v16, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p aborting, presented not allowed", &v18, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (double)_progressForFractionCompleted:(double)a3
{
  v4 = [(PXGViewControllerTransition *)self transitionKind];
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      return 1.0 - a3;
    }

    else
    {
      if (!v4)
      {
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _progressForFractionCompleted:]"];
        [v6 handleFailureInFunction:v7 file:@"PXGViewControllerTransition.m" lineNumber:662 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      return 0.0;
    }
  }

  return a3;
}

- (void)_notifyAlongsideAnimationBlocks:(double)a3
{
  v16 = *MEMORY[0x277D85DE8];
  [(PXGViewControllerTransition *)self _progressForFractionCompleted:a3];
  v5 = v4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(PXGViewControllerTransition *)self alongsideAnimationBlocks];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10++) + 16))(v5);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_willDismissWithoutTransition
{
  v4 = [(PXGViewControllerTransition *)self detailEndPoint];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(PXGViewControllerTransition *)self summaryEndPoint];
    [v4 willDismissWithoutTransitionToEndPoint:v3];
  }
}

- (void)_transitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 134218498;
    v41 = self;
    v42 = 2112;
    v43 = v7;
    v44 = 1024;
    v45 = v3;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %i", buf, 0x1Cu);
  }

  v8 = [(PXGViewControllerTransition *)self displayLink];
  [v8 invalidate];

  [(PXGViewControllerTransition *)self _notifyAlongsideAnimationBlocks:v3];
  v9 = [(PXGViewControllerTransition *)self alongsideAnimationBlocks];
  [v9 removeAllObjects];

  v10 = [(PXGViewControllerTransition *)self transitionContext];
  if (!v10)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"transitionContext != nil"}];
  }

  v11 = [(PXGViewControllerTransition *)self summaryEndPoint];
  v12 = [(PXGViewControllerTransition *)self detailEndPoint];
  if (objc_opt_respondsToSelector())
  {
    [v11 didEndTransition:self withEndPoint:v12 finished:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    [v12 didEndTransition:self withEndPoint:v11 finished:v3];
  }

  v32 = v12;
  v33 = v11;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [(PXGViewControllerTransition *)self endPointInfos];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v18 itemReference];
        if (v19)
        {
          v20 = [v18 itemPlacementController];
          [v20 setPlacementOverride:0 forItemReference:v19];
        }

        v21 = [v18 tungstenViewCoordinator];
        [v21 restoreAfterTransition];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  v22 = [(PXGViewControllerTransition *)self fromContentView];
  [v22 setAlpha:1.0];

  v23 = [(PXGViewControllerTransition *)self toContentView];
  [v23 setAlpha:1.0];

  if (!v3)
  {
    v24 = [v10 viewForKey:*MEMORY[0x277D77248]];
    [v24 removeFromSuperview];
  }

  [v10 completeTransition:v3];
  v25 = [(PXGViewControllerTransition *)self completionHandler];
  v26 = v25;
  if (v25)
  {
    (*(v25 + 16))(v25, v3);
  }

  if ([(PXGViewControllerTransition *)self transitionKind]== 2 && v3)
  {
    v27 = _transitionsByPresentedViewController;
    v28 = [(PXGViewControllerTransition *)self presentedViewController];
    [v27 removeObjectForKey:v28];
  }

  v29 = PXGTungstenGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = self;
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
    v41 = self;
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

- (void)_transitionDidUpdateWithTransitionTime:(double)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = [(PXGViewControllerTransition *)self isInteractive];
  if (v6)
  {
    [(PXGViewControllerTransition *)self fractionCompleted];
    v8 = v7;
  }

  else
  {
    [(PXGViewControllerTransition *)self transitionDuration];
    v8 = a3 / v9;
  }

  if (![(PXGViewControllerTransition *)self isEnding])
  {
    v10 = [(PXGViewControllerTransition *)self interactiveTransition];
    [v10 updateInteractiveTransition:v8];
  }

  v11 = [(PXGViewControllerTransition *)self transitionKind];
  switch(v11)
  {
    case 1:
      v14 = [(PXGViewControllerTransition *)self toContentView];
      v15 = v14;
      v16 = v8;
      goto LABEL_12;
    case 2:
      v14 = [(PXGViewControllerTransition *)self fromContentView];
      v15 = v14;
      v16 = 1.0 - v8;
LABEL_12:
      [v14 setAlpha:v16];

      break;
    case 0:
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _transitionDidUpdateWithTransitionTime:]"];
      [v12 handleFailureInFunction:v13 file:@"PXGViewControllerTransition.m" lineNumber:530 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  if (v6)
  {
    v17 = [(PXGViewControllerTransition *)self summaryEndPointInfo];
    v18 = [(PXGViewControllerTransition *)self summaryItemPlacementOverride];
    __70__PXGViewControllerTransition__transitionDidUpdateWithTransitionTime___block_invoke(v17, v18);

    v19 = [(PXGViewControllerTransition *)self detailEndPointInfo];
    v20 = [(PXGViewControllerTransition *)self detailItemPlacementOverride];
    __70__PXGViewControllerTransition__transitionDidUpdateWithTransitionTime___block_invoke(v19, v20);
  }

  else
  {
    v21 = [(PXGViewControllerTransition *)self itemPlacementInterpolator];
    v19 = v21;
    if (v21)
    {
      v42 = a2;
      [v21 setTime:a3];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v22 = [(PXGViewControllerTransition *)self endPointInfos];
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v56 count:16];
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
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            v28 = [v27 originalItemPlacement];
            v29 = [v19 adjustedPlacement:v28];

            v30 = [v27 itemReference];
            if (v30)
            {
              v31 = [v27 itemPlacementController];
              [v31 setPlacementOverride:v29 forItemReference:v30];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v24);
      }

      a2 = v42;
    }
  }

  if (a3 == 0.0)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = [(PXGViewControllerTransition *)self endPointInfos];
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
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
            objc_enumerationMutation(v32);
          }

          v37 = [*(*(&v43 + 1) + 8 * j) tungstenViewCoordinator];
          v38 = [v37 tungstenView];
          [v38 forceUpdate];
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v34);
    }
  }

  [(PXGViewControllerTransition *)self _notifyAlongsideAnimationBlocks:v8];
  v39 = v8 < 1.0 || v6;
  if ((v39 & 1) == 0 && ![(PXGViewControllerTransition *)self isEnding])
  {
    v40 = PXGTungstenGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = NSStringFromSelector(a2);
      *buf = 134218242;
      v52 = self;
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

- (id)_transitionViewControllerForContentViewController:(id)a3
{
  v5 = a3;
  v6 = [(PXGViewControllerTransition *)self detailViewController];

  if (v6 == v5)
  {
    v8 = [(PXGViewControllerTransition *)self presentedViewController];
  }

  else
  {
    v7 = [(PXGViewControllerTransition *)self summaryViewController];

    if (v7 != v5)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:511 description:{@"unknown view controller %@", v5}];

      abort();
    }

    v8 = [(PXGViewControllerTransition *)self presentingViewController];
  }

  v9 = v8;

  return v9;
}

- (BOOL)_isContentViewControllerHidden:(id)a3
{
  v3 = [(PXGViewControllerTransition *)self _transitionViewControllerForContentViewController:a3];
  v4 = [v3 view];
  [v4 alpha];
  v6 = v5 == 0.0;

  return v6;
}

- (CGRect)_rectInContainerView:(id)a3 fromRect:(CGRect)a4 inCoordinateSpace:(id)a5 inContentViewController:(id)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [(PXGViewControllerTransition *)self _transitionViewControllerForContentViewController:v11];
  if (!v12)
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v26 = 138412290;
      v27 = v11;
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
  v4 = [(PXGViewControllerTransition *)self transitionContext];
  if (!v4)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:395 description:{@"Invalid parameter not satisfying: %@", @"transitionContext != nil"}];
  }

  v39 = v4;
  v5 = [v4 containerView];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v7 = [(PXGViewControllerTransition *)self summaryEndPoint];
  v8 = [(PXGViewControllerTransition *)self detailEndPoint];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 summaryItemReferenceForTransitionWithSummaryEndPoint:v7];
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v40 = [v8 detailItemReferenceForTransitionWithSummaryEndPoint:v7];
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

    [v7 willBeginTransition:self withEndPoint:v8 anchorItemReference:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 willBeginTransition:self withEndPoint:v7 anchorItemReference:0];
  }

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __51__PXGViewControllerTransition__transitionWillBegin__block_invoke;
  v48[3] = &unk_2782A8138;
  v48[4] = self;
  v11 = v5;
  v12 = v7;
  v13 = v11;
  v49 = v11;
  v14 = v6;
  v50 = v14;
  v15 = v8;
  v51 = v15;
  v52 = a2;
  v16 = MEMORY[0x21CEE40A0](v48);
  v17 = [(PXGViewControllerTransition *)self summaryViewController];
  v47 = 0;
  v37 = v12;
  v38 = v9;
  (v16)[2](v16, v17, v12, 0, v9, &v47);
  v18 = v47;

  v19 = [(PXGViewControllerTransition *)self detailViewController];
  v46 = 0;
  v36 = v15;
  (v16)[2](v16, v19, v15, 1, v40, &v46);
  v20 = v46;

  v21 = [(PXGViewControllerTransition *)self transitionKind];
  switch(v21)
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
      v34 = [MEMORY[0x277CCA890] currentHandler];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _transitionWillBegin]"];
      [v34 handleFailureInFunction:v35 file:@"PXGViewControllerTransition.m" lineNumber:470 description:@"Code which should be unreachable has been reached"];

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

- (void)_endTransitionAnimation:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [(PXGViewControllerTransition *)self interactiveTransition];
    *buf = 134218754;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    v16 = 1024;
    v17 = v3;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %i %@", buf, 0x26u);
  }

  v9 = [(PXGViewControllerTransition *)self interactiveTransition];
  if (v9)
  {
    if ([(PXGViewControllerTransition *)self isEnding])
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"!self.isEnding"}];
    }

    [(PXGViewControllerTransition *)self setIsEnding:1];
  }

  else
  {
    v10 = PXAssertGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      v13 = self;
      v14 = 2080;
      v15 = "[PXGViewControllerTransition _endTransitionAnimation:]";
      _os_log_fault_impl(&dword_21AD38000, v10, OS_LOG_TYPE_FAULT, "[PXGViewControllerTransition] %p missing interactive transition in %s", buf, 0x16u);
    }
  }

  if (v3)
  {
    [v9 finishInteractiveTransition];
  }

  else
  {
    [v9 cancelInteractiveTransition];
  }
}

- (void)_handleDisplayLink:(id)a3
{
  v3 = [(PXGViewControllerTransition *)self animationUpdateBlock];
  v3[2]();
}

- (void)_prepareTransitionAnimationWithReadinessHandler:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v36 = a4;
  v8 = [(PXGViewControllerTransition *)self transitionContext];
  if (!v8)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"transitionContext != nil"}];
  }

  v9 = [v8 containerView];
  v10 = [v8 viewForKey:*MEMORY[0x277D77238]];
  v11 = [v8 viewForKey:*MEMORY[0x277D77248]];
  v12 = [v8 viewControllerForKey:*MEMORY[0x277D77230]];
  v13 = [v8 viewControllerForKey:*MEMORY[0x277D77240]];
  [v8 finalFrameForViewController:v13];
  [v11 setFrame:?];
  v14 = [v12 view];
  v15 = [v13 view];
  v35 = v14;
  [(PXGViewControllerTransition *)self setFromContentView:v14];
  [(PXGViewControllerTransition *)self setToContentView:v15];
  v16 = [(PXGViewControllerTransition *)self transitionKind];
  v17 = v11;
  switch(v16)
  {
    case 1:
      goto LABEL_8;
    case 2:
      [v9 addSubview:v11];
      v17 = v10;
LABEL_8:
      [v9 addSubview:v17];
      break;
    case 0:
      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _prepareTransitionAnimationWithReadinessHandler:completionHandler:]"];
      v20 = v18;
      v21 = v19;
      v22 = 334;
      goto LABEL_13;
  }

  [v9 layoutBelowIfNeeded];
  v7[2](v7);
  v23 = [(PXGViewControllerTransition *)self transitionKind];
  v33 = v12;
  v34 = v7;
  if (v23 == 1)
  {
    v24 = v36;
    v25 = v10;
    [v9 bringSubviewToFront:v11];
    [v15 setAlpha:0.0];
  }

  else if (v23 == 2)
  {
    v24 = v36;
    v25 = v10;
    [v9 bringSubviewToFront:v10];
  }

  else
  {
    v24 = v36;
    v25 = v10;
    if (!v23)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGViewControllerTransition _prepareTransitionAnimationWithReadinessHandler:completionHandler:]"];
      v20 = v18;
      v21 = v19;
      v22 = 351;
LABEL_13:
      [v20 handleFailureInFunction:v21 file:@"PXGViewControllerTransition.m" lineNumber:v22 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  v26 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, -1000.0, 50.0, 50.0}];
  [v9 addSubview:v26];
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

- (BOOL)_isTransitionAllowedWithKind:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(PXGViewControllerTransition *)self transitionKind])
  {
    v5 = PXGTungstenGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412802;
      v11 = self;
      v12 = 2048;
      v13 = a3;
      v14 = 2048;
      v15 = [(PXGViewControllerTransition *)self transitionKind];
      _os_log_impl(&dword_21AD38000, v5, OS_LOG_TYPE_ERROR, "%@ unexpectedly asked for transition kind %li while in %li", &v10, 0x20u);
    }

    return 0;
  }

  else
  {
    v7 = [(PXGViewControllerTransition *)self summaryEndPoint];
    v8 = [(PXGViewControllerTransition *)self detailEndPoint];
    v6 = v8 && (a3 == 1 || a3 == 2 && -[PXGViewControllerTransition isInteractive](self, "isInteractive") || ((objc_opt_respondsToSelector() & 1) == 0 || v7 && [v8 allowsTransition:self withEndPoint:v7]) && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(v7, "allowsTransition:withEndPoint:", self, v8)));
  }

  return v6;
}

- (id)_initWithSummaryViewController:(id)a3 presentedViewController:(id)a4 detailViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = PXGViewControllerTransition;
  v11 = [(PXGViewControllerTransition *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_summaryViewController, v8);
    objc_storeWeak(&v12->_presentedViewController, v9);
    objc_storeWeak(&v12->_detailViewController, v10);
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
    v7 = self;
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
    v7 = self;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_21AD38000, v4, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@", &v6, 0x16u);
  }

  [(PXGViewControllerTransition *)self _endTransitionAnimation:0];
}

- (void)installCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXGViewControllerTransition *)self completionHandler];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__PXGViewControllerTransition_installCompletionHandler___block_invoke;
  v8[3] = &unk_2782A80E8;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
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

- (void)setInteractiveTransition:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PXGTungstenGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    interactiveTransition = self->_interactiveTransition;
    v10 = 134218754;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = interactiveTransition;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_21AD38000, v6, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %p %@ %@ -> %@", &v10, 0x2Au);
  }

  v9 = self->_interactiveTransition;
  self->_interactiveTransition = v5;
}

- (void)animateAlongside:(id)a3
{
  v4 = a3;
  v6 = [(PXGViewControllerTransition *)self alongsideAnimationBlocks];
  v5 = MEMORY[0x21CEE40A0](v4);

  [v6 addObject:v5];
}

- (void)setDetailItemOriginalPlacement:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_detailItemOriginalPlacement != v4)
  {
    v9 = v4;
    v6 = [(PXGItemPlacement *)v4 isEqual:?];
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

- (void)setSummaryItemOriginalPlacement:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_summaryItemOriginalPlacement != v4)
  {
    v9 = v4;
    v6 = [(PXGItemPlacement *)v4 isEqual:?];
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
  v2 = [(PXGViewControllerTransition *)self endPointInfos];
  v3 = [v2 lastObject];

  return v3;
}

- (_PXGTransitionEndPointInfo)summaryEndPointInfo
{
  v2 = [(PXGViewControllerTransition *)self endPointInfos];
  v3 = [v2 firstObject];

  return v3;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXGViewControllerTransition;
  [(PXGViewControllerTransition *)&v3 performChanges:a3];
}

- (PXGViewControllerTransition)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGViewControllerTransition.m" lineNumber:176 description:{@"%s is not available as initializer", "-[PXGViewControllerTransition init]"}];

  abort();
}

+ (id)interactiveDismissalOfDetailViewController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a1 _transitionWithDetailViewController:v5 createIfNeeded:1 verticalOnly:1];
  v7 = PXGTungstenGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v12 = 138413058;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 1024;
    v19 = [v6 isInteractive];
    _os_log_impl(&dword_21AD38000, v7, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %@ %@ -> %@ isInteractive:%i", &v12, 0x26u);
  }

  if (v6 && ([v6 isInteractive] & 1) == 0)
  {
    [v6 setIsInteractive:1];
    v9 = [v6 presentingViewController];
    v10 = v9;
    if (!v9)
    {
      v9 = v5;
    }

    [v9 dismissViewControllerAnimated:1 completion:0];
  }

  return v6;
}

+ (id)_transitionWithDetailViewController:(id)a3 createIfNeeded:(BOOL)a4 verticalOnly:(BOOL)a5
{
  v22 = a5;
  v5 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [_transitionsByPresentedViewController objectEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v10)
  {
    v11 = *v24;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 detailViewController];

        if (v14 == v8)
        {
          v15 = [v8 presentingViewController];
          if (v15)
          {
            [v13 setPresentingViewController:v15];
          }

          v10 = v13;

          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v23 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (!v10 && v5)
  {
    v16 = [v8 presentingViewController];
    v17 = [v16 presentedViewController];
    v18 = PXGTungstenGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] create with summary: %@ presented: %@", buf, 0x16u);
    }

    v10 = 0;
    if (v16 && v17)
    {
      v10 = [a1 _createTransitionWithSummaryViewController:v16 presentedViewController:v17 detailViewController:v8];
      [v10 setIsVerticalOnly:v22];
    }
  }

  v19 = PXGTungstenGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v28 = v20;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v10;
    _os_log_impl(&dword_21AD38000, v19, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %@ %@ -> %@", buf, 0x20u);
  }

  return v10;
}

+ (id)_createTransitionWithSummaryViewController:(id)a3 presentedViewController:(id)a4 detailViewController:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [[a1 alloc] _initWithSummaryViewController:v10 presentedViewController:v8 detailViewController:v9];

  v12 = [v8 transitioningDelegate];

  if (v12)
  {
    v13 = PXGTungstenGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 transitioningDelegate];
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_21AD38000, v13, OS_LOG_TYPE_ERROR, "[PXGViewControllerTransition] previous transitioningDelegate: %@", &v20, 0xCu);
    }
  }

  [v8 setTransitioningDelegate:v11];
  v15 = _transitionsByPresentedViewController;
  if (!_transitionsByPresentedViewController)
  {
    v16 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v17 = _transitionsByPresentedViewController;
    _transitionsByPresentedViewController = v16;

    v15 = _transitionsByPresentedViewController;
  }

  [v15 setObject:v11 forKey:v8];
  v18 = PXGTungstenGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&dword_21AD38000, v18, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] created %@", &v20, 0xCu);
  }

  return v11;
}

+ (void)prepareTransitionFromSummaryViewController:(id)a3 toPresentedViewController:(id)a4 detailViewController:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PXGTungstenGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *&rect[16] = 138413058;
    *&rect[20] = v13;
    *&rect[28] = 2112;
    *&rect[30] = v9;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEFAULT, "[PXGViewControllerTransition] %@ summary:%@ presented:%@ detail:%@", &rect[16], 0x2Au);
  }

  v14 = +[PXTungstenSettings sharedInstance];
  v15 = [v14 allowsViewControllerTransitions];

  if (v15)
  {
    v16 = PXGetRootViewController();
    v17 = [v16 view];
    v18 = [v9 view];
    [v17 bounds];
    v20 = v19;
    *&rect[8] = v21;
    v23 = v22;
    v25 = v24;
    [v18 bounds];
    [v17 convertRect:v18 fromView:?];
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
      v30 = [a1 _createTransitionWithSummaryViewController:v9 presentedViewController:v10 detailViewController:v11];
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