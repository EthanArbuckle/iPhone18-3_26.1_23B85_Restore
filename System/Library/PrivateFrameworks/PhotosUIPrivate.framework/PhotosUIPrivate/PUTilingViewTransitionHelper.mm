@interface PUTilingViewTransitionHelper
+ (id)_transitionEndPointWithViewController:(id)controller;
+ (id)concatenatedProgressBlockForTilingView:(id)view transitionOperation:(int64_t)operation;
+ (int64_t)typeOfEndPoint:(id)point forTransitionFromViewController:(id)controller toViewController:(id)viewController;
+ (void)registerTransitionEndPoint:(id)point forViewController:(id)controller;
- (BOOL)_endPointUsesTransientTilingView:(id)view;
- (BOOL)_validateTransitionFromEndPoint:(id)point toEndPoint:(id)endPoint;
- (PUTilingView)_tilingView;
- (PUTilingViewControllerTransition)transition;
- (PUTilingViewControllerTransitionEndPoint)_endPointOwningTilingView;
- (PUTilingViewControllerTransitionEndPoint)_fromEndPoint;
- (PUTilingViewControllerTransitionEndPoint)_toEndPoint;
- (PUTilingViewControllerTransitionEndPoint)endPoint;
- (PUTilingViewTransitionHelper)initWithPresentationDuration:(double)duration dismissalDuration:(double)dismissalDuration endPoint:(id)point;
- (int64_t)_barStyleForEndPoint:(id)point;
- (void)_getTransitionProgress:(double *)progress backgroundProgress:(double *)backgroundProgress chromeProgress:(double *)chromeProgress;
- (void)_performWhenToEndPoint:(id)point isReadyToAdoptTilingView:(id)view fromEndPoint:(id)endPoint action:(id)action;
- (void)_performWhenToEndPoint:(id)point isReadyToAdoptTilingView:(id)view fromEndPoint:(id)endPoint retryCount:(int64_t)count startTime:(double)time action:(id)action;
- (void)_setEndPointOwningTilingView:(id)view;
- (void)animateTransitionWithOperation:(int64_t)operation startedInteractively:(BOOL)interactively;
- (void)pauseTransitionWithOptions:(unint64_t)options;
- (void)resumeTransition:(BOOL)transition;
- (void)updatePausedTransitionWithProgress:(double)progress interactionProgress:(double)interactionProgress;
@end

@implementation PUTilingViewTransitionHelper

- (PUTilingViewControllerTransitionEndPoint)endPoint
{
  WeakRetained = objc_loadWeakRetained(&self->_endPoint);

  return WeakRetained;
}

- (PUTilingViewControllerTransitionEndPoint)_endPointOwningTilingView
{
  WeakRetained = objc_loadWeakRetained(&self->__endPointOwningTilingView);

  return WeakRetained;
}

- (PUTilingViewControllerTransitionEndPoint)_toEndPoint
{
  WeakRetained = objc_loadWeakRetained(&self->__toEndPoint);

  return WeakRetained;
}

- (PUTilingViewControllerTransitionEndPoint)_fromEndPoint
{
  WeakRetained = objc_loadWeakRetained(&self->__fromEndPoint);

  return WeakRetained;
}

- (PUTilingView)_tilingView
{
  WeakRetained = objc_loadWeakRetained(&self->__tilingView);

  return WeakRetained;
}

- (PUTilingViewControllerTransition)transition
{
  WeakRetained = objc_loadWeakRetained(&self->_transition);

  return WeakRetained;
}

- (void)_setEndPointOwningTilingView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->__endPointOwningTilingView);

  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->__endPointOwningTilingView);
    objc_storeWeak(&self->__endPointOwningTilingView, obj);
    transition = [(PUTilingViewTransitionHelper *)self transition];
    v8 = [v6 tilingViewControllerTransition:transition tilingViewToTransferToEndPoint:obj];
    _tilingView = [(PUTilingViewTransitionHelper *)self _tilingView];

    if (v8 != _tilingView)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      _tilingView2 = [(PUTilingViewTransitionHelper *)self _tilingView];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:719 description:{@"tiling view %@ to transfer from %@ to %@ isn't the transition's tiling view %@", v8, v6, obj, _tilingView2}];
    }

    [v6 tilingViewControllerTransition:transition abandonTilingView:v8 toEndPoint:obj];
    _fromEndPoint = [(PUTilingViewTransitionHelper *)self _fromEndPoint];
    v11 = _fromEndPoint == obj;

    [obj tilingViewControllerTransition:transition adoptTilingView:v8 fromEndPoint:v6 isCancelingTransition:v11 animationSetupCompletionHandler:0];
  }
}

- (int64_t)_barStyleForEndPoint:(id)point
{
  pointCopy = point;
  if (objc_opt_respondsToSelector())
  {
    pu_preferredBarStyle = [pointCopy tilingViewControllerTransitionPreferredBarStyle:self];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    pu_preferredBarStyle = [pointCopy pu_preferredBarStyle];
  }

  v6 = pu_preferredBarStyle;
LABEL_7:

  return v6;
}

- (BOOL)_endPointUsesTransientTilingView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    v5 = [viewCopy tilingViewControllerTransitionUsesTransientTilingView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_validateTransitionFromEndPoint:(id)point toEndPoint:(id)endPoint
{
  pointCopy = point;
  endPointCopy = endPoint;
  v8 = endPointCopy;
  if (pointCopy)
  {
    v9 = endPointCopy == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    transition = [(PUTilingViewTransitionHelper *)self transition];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PUTilingViewTransitionHelper__validateTransitionFromEndPoint_toEndPoint___block_invoke;
    v14[3] = &unk_1E7B7F1D0;
    v15 = transition;
    v16 = pointCopy;
    selfCopy = self;
    v18 = v8;
    v12 = transition;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }

  return v10;
}

uint64_t __75__PUTilingViewTransitionHelper__validateTransitionFromEndPoint_toEndPoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancelInteractiveTransition];
  [*(a1 + 32) completeTransition:0];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) tilingViewControllerTransitionWasAborted:*(a1 + 48)];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 48);
    v3 = *(a1 + 56);

    return [v3 tilingViewControllerTransitionWasAborted:v4];
  }

  return result;
}

- (void)_performWhenToEndPoint:(id)point isReadyToAdoptTilingView:(id)view fromEndPoint:(id)endPoint retryCount:(int64_t)count startTime:(double)time action:(id)action
{
  v41 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  viewCopy = view;
  endPointCopy = endPoint;
  actionCopy = action;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v19 = v18 - time;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(PUTilingViewTransitionHelper *)pointCopy isReadyToAdoptTilingView:viewCopy fromEndPoint:endPointCopy])
  {
    v20 = PLOneUpGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      actionCopy[2](actionCopy);
      goto LABEL_7;
    }

    *buf = 134218754;
    selfCopy2 = self;
    v35 = 2112;
    v36 = pointCopy;
    v37 = 2048;
    countCopy = count;
    v39 = 2048;
    v40 = v19;
    v21 = "[animateTransition] %p end point %@ ready after retries: %ti delay: %0.3f s";
    v22 = v20;
    v23 = OS_LOG_TYPE_DEFAULT;
    v24 = 42;
LABEL_5:
    _os_log_impl(&dword_1B36F3000, v22, v23, v21, buf, v24);
    goto LABEL_6;
  }

  v25 = PLOneUpGetLog();
  v20 = v25;
  if (count > 99 || v19 >= 1.0)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 138412290;
    selfCopy2 = pointCopy;
    v21 = "End point not ready to adopt tiling view %@. Failing gracefully, but animation might be glitchy.";
    v22 = v20;
    v23 = OS_LOG_TYPE_FAULT;
    v24 = 12;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy2 = self;
    v35 = 2112;
    v36 = pointCopy;
    _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEBUG, "[animateTransition] %p end point %@ not ready yet", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PUTilingViewTransitionHelper__performWhenToEndPoint_isReadyToAdoptTilingView_fromEndPoint_retryCount_startTime_action___block_invoke;
  block[3] = &unk_1E7B7F1A8;
  block[4] = self;
  v27 = pointCopy;
  v28 = viewCopy;
  v29 = endPointCopy;
  countCopy2 = count;
  timeCopy = time;
  v30 = actionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_7:
}

- (void)_performWhenToEndPoint:(id)point isReadyToAdoptTilingView:(id)view fromEndPoint:(id)endPoint action:(id)action
{
  pointCopy = point;
  viewCopy = view;
  endPointCopy = endPoint;
  actionCopy = action;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PUTilingViewTransitionHelper__performWhenToEndPoint_isReadyToAdoptTilingView_fromEndPoint_action___block_invoke;
  v19[3] = &unk_1E7B7F180;
  v19[4] = self;
  v20 = pointCopy;
  v21 = viewCopy;
  v22 = endPointCopy;
  v24 = v14;
  v23 = actionCopy;
  v15 = actionCopy;
  v16 = endPointCopy;
  v17 = viewCopy;
  v18 = pointCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

- (void)animateTransitionWithOperation:(int64_t)operation startedInteractively:(BOOL)interactively
{
  interactivelyCopy = interactively;
  v186 = *MEMORY[0x1E69E9840];
  v6 = PLOneUpGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy6 = self;
    v178 = 2048;
    operationCopy = operation;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p animate transition with operation %li", buf, 0x16u);
  }

  [(PUTilingViewTransitionHelper *)self _setCurrentOperation:operation];
  transition = [(PUTilingViewTransitionHelper *)self transition];
  fromViewController = [transition fromViewController];
  toViewController = [transition toViewController];
  endPoint = [(PUTilingViewTransitionHelper *)self endPoint];
  v11 = [objc_opt_class() typeOfEndPoint:endPoint forTransitionFromViewController:fromViewController toViewController:toViewController];
  if (!v11)
  {
    v14 = PLOneUpGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy6 = endPoint;
      v178 = 2112;
      operationCopy = fromViewController;
      v180 = 2112;
      v181 = toViewController;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "[animateTransition] Couldn't find type of end point %@ for transition from %@ to %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v12 = endPoint;
      goto LABEL_13;
    }

LABEL_12:
    v12 = 0;
LABEL_13:
    v13 = [objc_opt_class() _transitionEndPointWithViewController:toViewController];
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = endPoint;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_14:
  v12 = [objc_opt_class() _transitionEndPointWithViewController:fromViewController];
LABEL_15:
  if ([(PUTilingViewTransitionHelper *)self _validateTransitionFromEndPoint:v12 toEndPoint:v13])
  {
    [(PUTilingViewTransitionHelper *)self _setFromEndPoint:v12];
    [(PUTilingViewTransitionHelper *)self _setToEndPoint:v13];
    v15 = PLOneUpGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      selfCopy6 = self;
      v178 = 2112;
      operationCopy = fromViewController;
      v180 = 2112;
      v181 = v12;
      v182 = 2112;
      v183 = toViewController;
      v184 = 2112;
      v185 = v13;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p fromVC: %@, fromEndPoint: %@, toVC: %@, toEndPoint: %@", buf, 0x34u);
    }

    navigationController = [fromViewController navigationController];
    if (!navigationController)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (navigationController = fromViewController) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          navigationController = toViewController;
        }

        else
        {
          navigationController = 0;
        }
      }
    }

    tabBarController = [fromViewController tabBarController];
    _useStandardStatusBarHeight = [(PUTilingViewTransitionHelper *)navigationController _useStandardStatusBarHeight];
    prefersStatusBarHidden = [fromViewController prefersStatusBarHidden];
    if (prefersStatusBarHidden != [(PUTilingViewTransitionHelper *)toViewController prefersStatusBarHidden])
    {
      [(PUTilingViewTransitionHelper *)navigationController _setUseStandardStatusBarHeight:1];
    }

    containerView = [transition containerView];
    subviews = [containerView subviews];
    transitionContext = [transition transitionContext];
    v93 = [transitionContext viewForKey:*MEMORY[0x1E69DE770]];

    transitionContext2 = [transition transitionContext];
    v110 = [transitionContext2 viewForKey:*MEMORY[0x1E69DE780]];

    presentedViewController = [(PUTilingViewTransitionHelper *)toViewController presentedViewController];
    v98 = containerView;
    v90 = presentedViewController;
    if (presentedViewController)
    {
      presentationController = [presentedViewController presentationController];
      containerView2 = [presentationController containerView];

      containerView = v98;
      if (([containerView2 isDescendantOfView:v98] & 1) == 0)
      {
        v23 = containerView2;

        v110 = v23;
        containerView = v98;
      }
    }

    v91 = endPoint;
    v92 = fromViewController;
    v107 = toViewController;
    [transition finalToViewFrame];
    v24 = v110;
    [v110 setFrame:?];
    if (v110)
    {
      [containerView addSubview:v110];
    }

    superview = [containerView superview];
    if (superview != containerView)
    {
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v26 = subviews;
      v27 = [v26 countByEnumeratingWithState:&v171 objects:v175 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v172;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v172 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [*(*(&v171 + 1) + 8 * i) px_transferToSuperview:superview];
          }

          v28 = [v26 countByEnumeratingWithState:&v171 objects:v175 count:16];
        }

        while (v28);
      }

      v24 = v110;
      [v110 px_transferToSuperview:superview];
    }

    v109 = v13;
    v31 = [(PUTilingViewTransitionHelper *)v12 tilingViewControllerTransition:transition tilingViewToTransferToEndPoint:v13];
    v32 = PLOneUpGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy6 = self;
      v178 = 2112;
      operationCopy = v31;
      _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p tilingView: %@", buf, 0x16u);
    }

    [(PUTilingViewTransitionHelper *)self _setTilingView:v31];
    tileAnimator = [v31 tileAnimator];
    [v31 px_transferToSuperview:superview];
    if (operation == 2)
    {
      if (!v93)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"fromView != nil"}];
      }

      [superview bringSubviewToFront:v93];
      v165[0] = MEMORY[0x1E69E9820];
      v165[1] = 3221225472;
      v165[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_2;
      v165[3] = &unk_1E7B7EFD0;
      v166 = v12;
      selfCopy4 = self;
      v168 = v93;
      v104 = _Block_copy(v165);
      [(PUTilingViewTransitionHelper *)self dismissalDuration];
      v34 = v37;
      v101 = [objc_opt_class() concatenatedProgressBlockForTilingView:v31 transitionOperation:2];

      v100 = 0;
      currentHandler3 = v166;
    }

    else if (operation == 1)
    {
      if (!v24)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"toView != nil"}];
      }

      [superview bringSubviewToFront:v24];
      [v24 setAlpha:0.0];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke;
      aBlock[3] = &unk_1E7B7F9B0;
      v170 = v24;
      v104 = _Block_copy(aBlock);
      [(PUTilingViewTransitionHelper *)self presentationDuration];
      v34 = v33;
      v100 = [objc_opt_class() concatenatedProgressBlockForTilingView:v31 transitionOperation:1];
      v101 = 0;
      currentHandler3 = v170;
    }

    else
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:338 description:@"unexpected operation"];
      v100 = 0;
      v101 = 0;
      v104 = 0;
      v34 = 0.0;
    }

    v38 = v12;
    if ([(PUTilingViewTransitionHelper *)self _endPointUsesTransientTilingView:v12]|| (v38 = v109, [(PUTilingViewTransitionHelper *)self _endPointUsesTransientTilingView:v109]))
    {
      v39 = v38;
      v40 = 0;
      if (!v39 || !interactivelyCopy)
      {
        goto LABEL_62;
      }

      if (([(PUTilingViewTransitionHelper *)self _interactionOptions]& 0x10) == 0)
      {
        v41 = +[PUTilingViewSettings sharedInstance];
        transitionProgressBehavior = [v41 transitionProgressBehavior];

        v40 = (transitionProgressBehavior - 1) < 2;
LABEL_62:
        v43 = PLOneUpGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(selfCopy6) = v40;
          _os_log_impl(&dword_1B36F3000, v43, OS_LOG_TYPE_DEFAULT, "[animateTransition] shouldAnimateTilingViewBackground: %d", buf, 8u);
        }

        v108 = transition;
        v106 = v12;
        v95 = v39;
        if (v40)
        {
          if ([(PUTilingViewTransitionHelper *)self _barStyleForEndPoint:v39]== 1)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = 1.0;
          }

          v45 = +[PUTilingViewSettings sharedInstance];
          [v45 interactiveTransitionBackgroundDimming];
          v47 = v46;

          if (v39 == v12)
          {
            v48 = 0.0;
          }

          else
          {
            v48 = v47;
          }

          if (v39 == v12)
          {
            v49 = v47;
          }

          else
          {
            v49 = 0.0;
          }

          v160[0] = MEMORY[0x1E69E9820];
          v160[1] = 3221225472;
          v160[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_31;
          v160[3] = &unk_1E7B7EFF8;
          v162 = v48;
          v163 = v49;
          v50 = v31;
          v161 = v50;
          v164 = v44;
          v51 = _Block_copy(v160);
          backgroundColor = [v50 backgroundColor];
          v53 = [backgroundColor copy];

          v157[0] = MEMORY[0x1E69E9820];
          v157[1] = 3221225472;
          v157[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_2_33;
          v157[3] = &unk_1E7B80C38;
          v158 = v50;
          v159 = v53;
          v54 = v53;
          v84 = _Block_copy(v157);
        }

        else
        {
          v51 = 0;
          v84 = 0;
        }

        v55 = 0.0;
        v56 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{-1.79769313e308, -1.79769313e308, 0.0, 0.0}];
        [superview addSubview:v56];
        UIAnimationDragCoefficient();
        v58 = MEMORY[0x1E69DD250];
        v152[0] = MEMORY[0x1E69E9820];
        v59 = v34 / v57;
        v152[1] = 3221225472;
        v152[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_3;
        v152[3] = &unk_1E7B7FF20;
        v153 = v56;
        v154 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
        v156 = 0;
        v155 = 0;
        v150[0] = MEMORY[0x1E69E9820];
        v150[1] = 3221225472;
        v150[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_4;
        v150[3] = &unk_1E7B7F020;
        v151 = v153;
        v60 = v153;
        [v58 animateWithDuration:v152 animations:v150 completion:v59];

        navigationBar = [(PUTilingViewTransitionHelper *)navigationController navigationBar];
        isUserInteractionEnabled = [navigationBar isUserInteractionEnabled];
        v82 = navigationBar;
        [navigationBar setUserInteractionEnabled:0];
        tabBar = [tabBarController tabBar];
        isUserInteractionEnabled2 = [tabBar isUserInteractionEnabled];
        [tabBar setUserInteractionEnabled:0];
        isUserInteractionEnabled3 = [v24 isUserInteractionEnabled];
        [v24 setUserInteractionEnabled:0];
        [(PUTilingViewTransitionHelper *)self _setTransitionProgressOffset:0.0];
        [(PUTilingViewTransitionHelper *)self _setBackgroundProgressOffset:0.0];
        if (![(PUTilingViewTransitionHelper *)self isTransitionPaused])
        {
          UIAnimationDragCoefficient();
          v59 = v59 * v63;
          v55 = 1.0 / v59;
        }

        [(PUTilingViewTransitionHelper *)self _setProgressSpeed:v55];
        v78 = [PUDisplayLink alloc];
        v140[0] = MEMORY[0x1E69E9820];
        v140[1] = 3221225472;
        v140[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_5;
        v140[3] = &unk_1E7B7F070;
        v140[4] = self;
        v141 = v31;
        v149 = v59;
        v142 = v109;
        v143 = v12;
        v145 = v51;
        v146 = v104;
        v147 = v100;
        v148 = v101;
        v144 = v108;
        v121[0] = MEMORY[0x1E69E9820];
        v121[1] = 3221225472;
        v121[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_7;
        v121[3] = &unk_1E7B7F098;
        v122 = navigationController;
        selfCopy5 = self;
        v81 = v144;
        v124 = v81;
        v125 = subviews;
        v126 = v98;
        v127 = v110;
        v128 = v107;
        v80 = tileAnimator;
        v129 = v80;
        v135 = v84;
        v64 = v142;
        v130 = v64;
        v75 = v143;
        v131 = v75;
        v65 = v141;
        v132 = v65;
        v133 = v82;
        v136 = isUserInteractionEnabled;
        v134 = tabBar;
        v137 = isUserInteractionEnabled2;
        v138 = isUserInteractionEnabled3;
        v139 = _useStandardStatusBarHeight;
        v89 = tabBar;
        v87 = v82;
        v85 = v84;
        v111 = v110;
        v99 = v98;
        v97 = subviews;
        v83 = navigationController;
        v102 = v101;
        v66 = v100;
        v113 = v104;
        v67 = v51;
        v68 = [(PUDisplayLink *)v78 initWithUpdateHandler:v140 completionHandler:v121];
        v69 = PLOneUpGetLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          selfCopy6 = self;
          v178 = 2112;
          operationCopy = v64;
          _os_log_impl(&dword_1B36F3000, v69, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p waiting to start transition to end point %@", buf, 0x16u);
        }

        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_41;
        v114[3] = &unk_1E7B7F0E8;
        v114[4] = self;
        v115 = v64;
        v116 = v75;
        v117 = v81;
        v118 = v65;
        v119 = v80;
        v120 = v68;
        v70 = v68;
        v71 = v80;
        v72 = v65;
        [(PUTilingViewTransitionHelper *)self _performWhenToEndPoint:v115 isReadyToAdoptTilingView:v72 fromEndPoint:v116 action:v114];

        toViewController = v107;
        transition = v108;
        endPoint = v91;
        fromViewController = v92;
        v12 = v106;
        v13 = v109;
        goto LABEL_81;
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = 0;
    goto LABEL_62;
  }

  v36 = PLOneUpGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy6 = v12;
    v178 = 2112;
    operationCopy = v13;
    _os_log_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_ERROR, "[animateTransition] Failed to validate fromEndPoint: %@ toEndPoint: %@", buf, 0x16u);
  }

  [transition finishInteractiveTransition];
  [transition completeTransition:1];
LABEL_81:
}

uint64_t __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_2(uint64_t a1, double a2)
{
  [*(a1 + 32) tilingViewControllerTransitionProgressAtWhichChromeIsFullyFadedOut:*(a1 + 40)];
  if (v4 == 0.0)
  {
    v4 = 1.0;
  }

  v5 = 1.0 - a2 / v4;
  v6 = *(a1 + 48);

  return [v6 setAlpha:v5];
}

void __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_31(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:*(a1 + 56) alpha:*(a1 + 48) * a2 + (1.0 - a2) * *(a1 + 40)];
  [v2 setBackgroundColor:v3];
}

uint64_t __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = CGRectOffset(*(a1 + 40), 1.0, 1.0);

  return [v1 setFrame:{v4.origin.x, v4.origin.y, v4.size.width, v4.size.height}];
}

uint64_t __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_5(uint64_t a1, char *a2)
{
  v24 = 0.0;
  v25 = 0.0;
  v23 = 0.0;
  [*(a1 + 32) _getTransitionProgress:&v25 backgroundProgress:&v24 chromeProgress:&v23];
  [*(a1 + 32) _progressSpeed];
  v5 = v25;
  v8 = v4 <= 0.0 || v25 < 1.0 || v24 < 1.0 || v23 < 1.0;
  if (!v8 || v4 < 0.0 && v25 <= 0.0 && v24 <= 0.0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v9 = 1;
    v22 = 1;
    if (v4 < 0.0)
    {
      v10 = *(a1 + 40);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_6;
      v18[3] = &unk_1E7B7F048;
      v18[4] = &v19;
      [v10 enumerateAllTileControllersUsingBlock:v18];
      v9 = *(v20 + 24);
    }

    *a2 = v9;
    _Block_object_dispose(&v19, 8);
    v5 = v25;
  }

  v11 = v5 * *(a1 + 104);
  v12 = [*(a1 + 32) _tilingViewAnimationGroup];
  [v12 setElapsedTime:v11];

  if (([*(a1 + 32) _interactionOptions] & 8) != 0)
  {
    v13 = 56;
    if (v25 > 0.0)
    {
      v13 = 48;
    }

    [*(a1 + 32) _setEndPointOwningTilingView:{*(a1 + v13), v25}];
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    v15 = v24;
    (*(v14 + 16))(v24);
  }

  else
  {
    v15 = v23;
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    (*(v16 + 16))(v23);
  }

  if (*(a1 + 88))
  {
    PXClamp();
    (*(*(a1 + 88) + 16))();
  }

  if (*(a1 + 96))
  {
    PXClamp();
    (*(*(a1 + 96) + 16))();
  }

  return [*(a1 + 64) updateInteractiveTransitionProgress:v23 visibleTransitionProgress:v15];
}

void __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_7(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) ppt_notifyTransitionAnimationDidComplete];
  [*(a1 + 40) _progressSpeed];
  v3 = v2;
  v4 = PLOneUpGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v40) = v3 >= 0.0;
    _os_log_impl(&dword_1B36F3000, v4, OS_LOG_TYPE_DEFAULT, "[animateTransition] didFinishTransition: %d", buf, 8u);
  }

  if (v3 < 0.0)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = *(a1 + 56);
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v31 + 1) + 8 * i) px_transferToSuperview:{*(a1 + 64), v31}];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v17);
    }

    [*(a1 + 72) removeFromSuperview];
  }

  else
  {
    v5 = [*(a1 + 48) transitionContext];
    v6 = [v5 viewForKey:*MEMORY[0x1E69DE770]];
    v7 = [v5 viewForKey:*MEMORY[0x1E69DE780]];
    [v6 removeFromSuperview];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = *(a1 + 56);
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * j);
          if (([v13 isDescendantOfView:v6] & 1) == 0)
          {
            [v13 px_transferToSuperview:*(a1 + 64)];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v10);
    }

    [*(a1 + 72) px_transferToSuperview:*(a1 + 64)];
    v14 = *(a1 + 72);
    if (v14 && ([v14 isDescendantOfView:v7] & 1) == 0)
    {
      [*(a1 + 64) insertSubview:v7 belowSubview:*(a1 + 72)];
    }
  }

  v20 = [*(a1 + 40) _tilingViewAnimationGroup];
  [v20 setPaused:0];

  [*(a1 + 40) _setTilingViewAnimationGroup:0];
  v21 = *(a1 + 48);
  if (v3 < 0.0)
  {
    [v21 cancelInteractiveTransition];
  }

  else
  {
    [v21 finishInteractiveTransition];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [*(a1 + 80) collectionViewLayout];
    [v22 invalidateLayout];
  }

  [*(a1 + 48) completeTransition:v3 >= 0.0];
  [*(a1 + 88) transition:*(a1 + 48) didComplete:v3 >= 0.0];
  v23 = *(a1 + 136);
  if (v23)
  {
    (*(v23 + 16))();
  }

  [*(a1 + 40) _setHasStarted:0];
  v24 = 104;
  if (v3 >= 0.0)
  {
    v24 = 96;
  }

  v25 = [*(a1 + v24) tilingViewControllerTransitionTilingViewHostView:*(a1 + 40)];
  [*(a1 + 112) setAutoresizingMask:18];
  [*(a1 + 112) setTranslatesAutoresizingMaskIntoConstraints:1];
  v26 = [*(a1 + 112) superview];

  if (v26)
  {
    [*(a1 + 112) px_transferToSuperview:v25];
  }

  v27 = *(a1 + 40);
  if (v3 < 0.0)
  {
    [v27 _fromEndPoint];
  }

  else
  {
    [v27 _toEndPoint];
  }
  v28 = ;
  [v27 _setEndPointOwningTilingView:v28];

  [*(a1 + 120) setUserInteractionEnabled:*(a1 + 144)];
  [*(a1 + 128) setUserInteractionEnabled:*(a1 + 145)];
  [*(a1 + 72) setUserInteractionEnabled:*(a1 + 146)];
  [*(a1 + 32) _setUseStandardStatusBarHeight:*(a1 + 147)];
  [*(a1 + 40) _setProgressSpeed:0.0];
  [*(a1 + 40) _setTransitionProgressOffset:0.0];
  [*(a1 + 40) _setBackgroundProgressOffset:0.0];
  [*(a1 + 40) _setTransitionProgressValueFilter:0];
  [*(a1 + 40) _setChromeProgressValueFilter:0];
  [*(a1 + 40) _setInteractionOptions:0];
  [*(a1 + 40) _setFromEndPoint:0];
  [*(a1 + 40) _setToEndPoint:0];
  [*(a1 + 40) _setTilingView:0];
  objc_storeWeak((*(a1 + 40) + 128), 0);
  v29 = PLOneUpGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *(a1 + 40);
    *buf = 134217984;
    v40 = v30;
    _os_log_impl(&dword_1B36F3000, v29, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p completed", buf, 0xCu);
  }
}

void __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_41(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = PLOneUpGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p start transition to end point %@", buf, 0x16u);
  }

  objc_storeWeak((*(a1 + 32) + 128), *(a1 + 40));
  [*(a1 + 48) tilingViewControllerTransition:*(a1 + 56) abandonTilingView:*(a1 + 64) toEndPoint:*(a1 + 40)];
  [*(a1 + 72) transitionWillBeginAnimation:*(a1 + 56)];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_42;
  v11[3] = &unk_1E7B7F0C0;
  v12 = *(a1 + 72);
  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v15 = *(a1 + 80);
  [v7 tilingViewControllerTransition:v5 adoptTilingView:v6 fromEndPoint:v8 isCancelingTransition:0 animationSetupCompletionHandler:v11];
}

void __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_42(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) transitionDidBeginAnimation:*(a1 + 40)];
  if ([*(a1 + 48) isTransitionPaused] && (objc_msgSend(*(a1 + 48), "_interactionOptions") & 8) == 0)
  {
    [v3 setPaused:1];
    [*(a1 + 48) _setTilingViewAnimationGroup:v3];
  }

  v4 = *(a1 + 48);
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v4 _setStartTime:?];
  [*(a1 + 48) _setHasStarted:1];
  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    v7 = 134217984;
    v8 = v6;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p started", &v7, 0xCu);
  }

  [*(a1 + 56) start];
}

void __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_6(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if ([v10 isActive])
  {
    v5 = [v10 layoutInfo];
    v6 = [v5 tileKind];
    v7 = [v6 isEqual:PUTileKindBackground];

    if (v7)
    {
      v8 = [v10 presentationLayoutInfo];
      [v8 alpha];
      if (v9 != 0.0 && v9 != 1.0)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        *a3 = 1;
      }
    }
  }
}

- (void)_getTransitionProgress:(double *)progress backgroundProgress:(double *)backgroundProgress chromeProgress:(double *)chromeProgress
{
  v9 = 0.0;
  if ([(PUTilingViewTransitionHelper *)self hasStarted])
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v11 = v10;
    [(PUTilingViewTransitionHelper *)self _startTime];
    v9 = v11 - v12;
    if (v9 < 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [(PUTilingViewTransitionHelper *)self _setStartTime:?];
      v9 = 0.0;
    }
  }

  [(PUTilingViewTransitionHelper *)self _progressSpeed];
  v14 = v13;
  v15 = v9 * v13;
  [(PUTilingViewTransitionHelper *)self _transitionProgressOffset];
  v17 = v15 + v16;
  [(PUTilingViewTransitionHelper *)self _backgroundProgressOffset];
  v19 = v18;
  _transitionProgressValueFilter = [(PUTilingViewTransitionHelper *)self _transitionProgressValueFilter];
  v33 = _transitionProgressValueFilter;
  if (_transitionProgressValueFilter)
  {
    [_transitionProgressValueFilter setInputValue:v17];
    [v33 outputValue];
    v17 = v21;
  }

  if (([(PUTilingViewTransitionHelper *)self _interactionOptions]& 4) != 0)
  {
    isTransitionPaused = [(PUTilingViewTransitionHelper *)self isTransitionPaused];
    if (v14 < 0.0 || isTransitionPaused)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = 1.0;
    }
  }

  else
  {
    v22 = +[PUTilingViewSettings sharedInstance];
    [v22 transitionChromeDelay];
    v24 = v23;

    _currentOperation = [(PUTilingViewTransitionHelper *)self _currentOperation];
    if (_currentOperation == 2)
    {
      v26 = v17 / (1.0 - v24);
    }

    else
    {
      v26 = v17;
      if (_currentOperation == 1)
      {
        v26 = (v17 + -1.0) / (1.0 - v24) + 1.0;
      }
    }

    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    v29 = fmin(v26, 1.0);
  }

  _chromeProgressValueFilter = [(PUTilingViewTransitionHelper *)self _chromeProgressValueFilter];
  v31 = _chromeProgressValueFilter;
  if (_chromeProgressValueFilter)
  {
    [_chromeProgressValueFilter setInputValue:v29];
    [v31 outputValue];
    v29 = v32;
  }

  if (progress)
  {
    *progress = v17;
  }

  if (backgroundProgress)
  {
    *backgroundProgress = v15 + v19;
  }

  if (chromeProgress)
  {
    *chromeProgress = v29;
  }
}

- (void)resumeTransition:(BOOL)transition
{
  transitionCopy = transition;
  v17 = *MEMORY[0x1E69E9840];
  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218240;
    selfCopy = self;
    v15 = 1024;
    v16 = transitionCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%p resuming transition %i", &v13, 0x12u);
  }

  if ([(PUTilingViewTransitionHelper *)self isTransitionPaused])
  {
    [(PUTilingViewTransitionHelper *)self _setTransitionPaused:0];
    [(PUTilingViewTransitionHelper *)self setTransitionPausingCall:0];
    if (([(PUTilingViewTransitionHelper *)self _currentOperation]!= 1) == transitionCopy)
    {
      [(PUTilingViewTransitionHelper *)self dismissalDuration];
    }

    else
    {
      [(PUTilingViewTransitionHelper *)self presentationDuration];
    }

    v7 = v6;
    UIAnimationDragCoefficient();
    v9 = v7 * v8;
    v10 = -1.0;
    if (transitionCopy)
    {
      v10 = 1.0;
    }

    v11 = v10 / v9;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PUTilingViewTransitionHelper *)self _setStartTime:?];
    [(PUTilingViewTransitionHelper *)self _setProgressSpeed:v11];
    if ([(PUTilingViewTransitionHelper *)self hasStarted])
    {
      if (transitionCopy)
      {
        [(PUTilingViewTransitionHelper *)self _toEndPoint];
      }

      else
      {
        [(PUTilingViewTransitionHelper *)self _fromEndPoint];
      }
      v12 = ;
      [(PUTilingViewTransitionHelper *)self _setEndPointOwningTilingView:v12];
    }
  }
}

- (void)updatePausedTransitionWithProgress:(double)progress interactionProgress:(double)interactionProgress
{
  if (![(PUTilingViewTransitionHelper *)self isTransitionPaused])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"[self isTransitionPaused]"}];
  }

  [(PUTilingViewTransitionHelper *)self _progressSpeed];
  if (v8 != 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"[self _progressSpeed] == 0.0"}];
  }

  [(PUTilingViewTransitionHelper *)self _setTransitionProgressOffset:progress];

  [(PUTilingViewTransitionHelper *)self _setBackgroundProgressOffset:interactionProgress];
}

- (void)pauseTransitionWithOptions:(unint64_t)options
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(PUTilingViewTransitionHelper *)self isTransitionPaused])
  {
    [(PUTilingViewTransitionHelper *)self _setTransitionPaused:1];
    [(PUTilingViewTransitionHelper *)self _setInteractionOptions:options];
    callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
    [(PUTilingViewTransitionHelper *)self setTransitionPausingCall:callStackSymbols];

    v13 = 0.0;
    *buf = 0;
    v12 = 0.0;
    [(PUTilingViewTransitionHelper *)self _getTransitionProgress:buf backgroundProgress:&v13 chromeProgress:&v12];
    v5 = 0;
    if (options)
    {
      v5 = objc_alloc_init(PUMaximumChangeRateValueFilter);
      v8 = +[PUTilingViewSettings sharedInstance];
      [v8 transitionDuration];
      [(PUMaximumChangeRateValueFilter *)v5 setMaximumChangeRate:1.0 / v9];

      [(PUDynamicValueFilter *)v5 setInputValue:*buf];
    }

    if ((options & 2) != 0)
    {
      transitionPausingCall = objc_alloc_init(PUMaximumChangeRateValueFilter);
      v10 = +[PUTilingViewSettings sharedInstance];
      [v10 transitionDuration];
      [(PUMaximumChangeRateValueFilter *)transitionPausingCall setMaximumChangeRate:1.0 / v11];

      [(PUDynamicValueFilter *)transitionPausingCall setInputValue:v12];
    }

    else
    {
      transitionPausingCall = 0;
    }

    [(PUTilingViewTransitionHelper *)self _setProgressSpeed:0.0];
    [(PUTilingViewTransitionHelper *)self _setTransitionProgressOffset:*buf];
    [(PUTilingViewTransitionHelper *)self _setBackgroundProgressOffset:v13];
    [(PUTilingViewTransitionHelper *)self _setTransitionProgressValueFilter:v5];
    [(PUTilingViewTransitionHelper *)self _setChromeProgressValueFilter:transitionPausingCall];
    goto LABEL_10;
  }

  v5 = PXAssertGetLog();
  if (os_log_type_enabled(&v5->super.super.super, OS_LOG_TYPE_FAULT))
  {
    transitionPausingCall = [(PUTilingViewTransitionHelper *)self transitionPausingCall];
    *buf = 134218242;
    *&buf[4] = self;
    v15 = 2112;
    v16 = transitionPausingCall;
    _os_log_fault_impl(&dword_1B36F3000, &v5->super.super.super, OS_LOG_TYPE_FAULT, "tiling view transition %p already paused from %@", buf, 0x16u);
LABEL_10:
  }
}

- (PUTilingViewTransitionHelper)initWithPresentationDuration:(double)duration dismissalDuration:(double)dismissalDuration endPoint:(id)point
{
  pointCopy = point;
  if (duration <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"presentationDuration > 0.0"}];
  }

  if (dismissalDuration <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"dismissalDuration > 0.0"}];
  }

  v15.receiver = self;
  v15.super_class = PUTilingViewTransitionHelper;
  v10 = [(PUTilingViewTransitionHelper *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_presentationDuration = duration;
    v10->_dismissalDuration = dismissalDuration;
    objc_storeWeak(&v10->_endPoint, pointCopy);
  }

  return v11;
}

+ (void)registerTransitionEndPoint:(id)point forViewController:(id)controller
{
  pointCopy = point;
  controllerCopy = controller;
  v6 = PURegisteredTilingViewTransitionEndPoints;
  if (!PURegisteredTilingViewTransitionEndPoints)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v8 = PURegisteredTilingViewTransitionEndPoints;
    PURegisteredTilingViewTransitionEndPoints = weakToWeakObjectsMapTable;

    v6 = PURegisteredTilingViewTransitionEndPoints;
  }

  [v6 setObject:pointCopy forKey:controllerCopy];
}

+ (id)_transitionEndPointWithViewController:(id)controller
{
  v29 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];
  presentingViewController = [presentedViewController presentingViewController];
  v7 = presentingViewController;
  if (presentingViewController == controllerCopy)
  {
    presentedViewController2 = [controllerCopy presentedViewController];
    modalPresentationStyle = [presentedViewController2 modalPresentationStyle];

    if (modalPresentationStyle == 3)
    {
      presentedViewController3 = [controllerCopy presentedViewController];
LABEL_9:
      childViewControllers = presentedViewController3;
      v12 = [self _transitionEndPointWithViewController:presentedViewController3];
LABEL_10:
      v13 = v12;
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController3 = [controllerCopy topViewController];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController3 = [controllerCopy selectedViewController];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [controllerCopy style])
  {
    childViewControllers = controllerCopy;
    if (![childViewControllers isCollapsed] || objc_msgSend(childViewControllers, "style") != 2 || (objc_msgSend(childViewControllers, "viewControllerForColumn:", 1), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = [childViewControllers viewControllerForColumn:2];
      if (!v15)
      {
        v15 = [childViewControllers viewControllerForColumn:3];
      }
    }

    v16 = v15;
    v13 = [self _transitionEndPointWithViewController:v15];

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = controllerCopy;
  }

  else
  {
    v13 = [PURegisteredTilingViewTransitionEndPoints objectForKey:controllerCopy];
    if (!v13)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      childViewControllers = [controllerCopy childViewControllers];
      v17 = [childViewControllers countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v23;
LABEL_28:
        v20 = 0;
        while (1)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(childViewControllers);
          }

          v12 = [self _transitionEndPointWithViewController:*(*(&v22 + 1) + 8 * v20)];
          if (v12)
          {
            goto LABEL_10;
          }

          if (v18 == ++v20)
          {
            v18 = [childViewControllers countByEnumeratingWithState:&v22 objects:v28 count:16];
            if (v18)
            {
              goto LABEL_28;
            }

            break;
          }
        }
      }

      v21 = PLUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = controllerCopy;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "couldn't find tiling view controller transition end point for %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

LABEL_12:

  return v13;
}

+ (int64_t)typeOfEndPoint:(id)point forTransitionFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  tilingViewControllerTransitionEndPointHostViewController = [point tilingViewControllerTransitionEndPointHostViewController];
  if (([tilingViewControllerTransitionEndPointHostViewController px_isDescendantOfOrPresentedByViewController:viewControllerCopy] & 1) == 0)
  {
    if ([tilingViewControllerTransitionEndPointHostViewController px_isDescendantOfOrPresentedByViewController:controllerCopy] & 1) != 0 || objc_msgSend(controllerCopy, "px_isDescendantOfOrPresentedByViewController:", tilingViewControllerTransitionEndPointHostViewController) && (objc_msgSend(viewControllerCopy, "px_isDescendantOfOrPresentedByViewController:", controllerCopy))
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (![viewControllerCopy px_isDescendantOfOrPresentedByViewController:tilingViewControllerTransitionEndPointHostViewController] || (objc_msgSend(controllerCopy, "px_isDescendantOfOrPresentedByViewController:", viewControllerCopy) & 1) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  v10 = 2;
LABEL_10:

  return v10;
}

+ (id)concatenatedProgressBlockForTilingView:(id)view transitionOperation:(int64_t)operation
{
  viewCopy = view;
  v6 = viewCopy;
  if (operation)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__87812;
    v14 = __Block_byref_object_dispose__87813;
    v15 = &__block_literal_global_87814;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__PUTilingViewTransitionHelper_concatenatedProgressBlockForTilingView_transitionOperation___block_invoke_2;
    v9[3] = &unk_1E7B7F158;
    v9[5] = &v16;
    v9[6] = operation;
    v9[4] = &v10;
    [viewCopy enumerateAllTileControllersUsingBlock:v9];
    if (*(v17 + 24) == 1)
    {
      v7 = v11[5];
    }

    else
    {
      v7 = 0;
    }

    operation = _Block_copy(v7);
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return operation;
}

void __91__PUTilingViewTransitionHelper_concatenatedProgressBlockForTilingView_transitionOperation___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive])
  {
    if (a1[6] == 1)
    {
      [v3 presentationProgressBlock];
    }

    else
    {
      [v3 dismissalProgressBlock];
    }
    v4 = ;
    v5 = _Block_copy(v4);

    if (v5)
    {
      v6 = _Block_copy(*(*(a1[4] + 8) + 40));
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __91__PUTilingViewTransitionHelper_concatenatedProgressBlockForTilingView_transitionOperation___block_invoke_3;
      v11[3] = &unk_1E7B7F130;
      v12 = v6;
      v13 = v5;
      v7 = v6;
      v8 = _Block_copy(v11);
      v9 = *(a1[4] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *(*(a1[5] + 8) + 24) = 1;
    }
  }
}

uint64_t __91__PUTilingViewTransitionHelper_concatenatedProgressBlockForTilingView_transitionOperation___block_invoke_3(uint64_t a1, double a2)
{
  (*(*(a1 + 32) + 16))();
  v4 = *(*(a1 + 40) + 16);
  v5.n128_f64[0] = a2;

  return v4(v5);
}

@end