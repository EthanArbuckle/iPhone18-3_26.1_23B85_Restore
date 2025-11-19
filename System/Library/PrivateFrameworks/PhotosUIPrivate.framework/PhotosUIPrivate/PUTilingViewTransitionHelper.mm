@interface PUTilingViewTransitionHelper
+ (id)_transitionEndPointWithViewController:(id)a3;
+ (id)concatenatedProgressBlockForTilingView:(id)a3 transitionOperation:(int64_t)a4;
+ (int64_t)typeOfEndPoint:(id)a3 forTransitionFromViewController:(id)a4 toViewController:(id)a5;
+ (void)registerTransitionEndPoint:(id)a3 forViewController:(id)a4;
- (BOOL)_endPointUsesTransientTilingView:(id)a3;
- (BOOL)_validateTransitionFromEndPoint:(id)a3 toEndPoint:(id)a4;
- (PUTilingView)_tilingView;
- (PUTilingViewControllerTransition)transition;
- (PUTilingViewControllerTransitionEndPoint)_endPointOwningTilingView;
- (PUTilingViewControllerTransitionEndPoint)_fromEndPoint;
- (PUTilingViewControllerTransitionEndPoint)_toEndPoint;
- (PUTilingViewControllerTransitionEndPoint)endPoint;
- (PUTilingViewTransitionHelper)initWithPresentationDuration:(double)a3 dismissalDuration:(double)a4 endPoint:(id)a5;
- (int64_t)_barStyleForEndPoint:(id)a3;
- (void)_getTransitionProgress:(double *)a3 backgroundProgress:(double *)a4 chromeProgress:(double *)a5;
- (void)_performWhenToEndPoint:(id)a3 isReadyToAdoptTilingView:(id)a4 fromEndPoint:(id)a5 action:(id)a6;
- (void)_performWhenToEndPoint:(id)a3 isReadyToAdoptTilingView:(id)a4 fromEndPoint:(id)a5 retryCount:(int64_t)a6 startTime:(double)a7 action:(id)a8;
- (void)_setEndPointOwningTilingView:(id)a3;
- (void)animateTransitionWithOperation:(int64_t)a3 startedInteractively:(BOOL)a4;
- (void)pauseTransitionWithOptions:(unint64_t)a3;
- (void)resumeTransition:(BOOL)a3;
- (void)updatePausedTransitionWithProgress:(double)a3 interactionProgress:(double)a4;
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

- (void)_setEndPointOwningTilingView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->__endPointOwningTilingView);

  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->__endPointOwningTilingView);
    objc_storeWeak(&self->__endPointOwningTilingView, obj);
    v7 = [(PUTilingViewTransitionHelper *)self transition];
    v8 = [v6 tilingViewControllerTransition:v7 tilingViewToTransferToEndPoint:obj];
    v9 = [(PUTilingViewTransitionHelper *)self _tilingView];

    if (v8 != v9)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = [(PUTilingViewTransitionHelper *)self _tilingView];
      [v12 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:719 description:{@"tiling view %@ to transfer from %@ to %@ isn't the transition's tiling view %@", v8, v6, obj, v13}];
    }

    [v6 tilingViewControllerTransition:v7 abandonTilingView:v8 toEndPoint:obj];
    v10 = [(PUTilingViewTransitionHelper *)self _fromEndPoint];
    v11 = v10 == obj;

    [obj tilingViewControllerTransition:v7 adoptTilingView:v8 fromEndPoint:v6 isCancelingTransition:v11 animationSetupCompletionHandler:0];
  }
}

- (int64_t)_barStyleForEndPoint:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 tilingViewControllerTransitionPreferredBarStyle:self];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [v4 pu_preferredBarStyle];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)_endPointUsesTransientTilingView:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 tilingViewControllerTransitionUsesTransientTilingView:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_validateTransitionFromEndPoint:(id)a3 toEndPoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    v11 = [(PUTilingViewTransitionHelper *)self transition];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PUTilingViewTransitionHelper__validateTransitionFromEndPoint_toEndPoint___block_invoke;
    v14[3] = &unk_1E7B7F1D0;
    v15 = v11;
    v16 = v6;
    v17 = self;
    v18 = v8;
    v12 = v11;
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

- (void)_performWhenToEndPoint:(id)a3 isReadyToAdoptTilingView:(id)a4 fromEndPoint:(id)a5 retryCount:(int64_t)a6 startTime:(double)a7 action:(id)a8
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v19 = v18 - a7;
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(PUTilingViewTransitionHelper *)v14 isReadyToAdoptTilingView:v15 fromEndPoint:v16])
  {
    v20 = PLOneUpGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      v17[2](v17);
      goto LABEL_7;
    }

    *buf = 134218754;
    v34 = self;
    v35 = 2112;
    v36 = v14;
    v37 = 2048;
    v38 = a6;
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
  if (a6 > 99 || v19 >= 1.0)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    *buf = 138412290;
    v34 = v14;
    v21 = "End point not ready to adopt tiling view %@. Failing gracefully, but animation might be glitchy.";
    v22 = v20;
    v23 = OS_LOG_TYPE_FAULT;
    v24 = 12;
    goto LABEL_5;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v34 = self;
    v35 = 2112;
    v36 = v14;
    _os_log_impl(&dword_1B36F3000, v20, OS_LOG_TYPE_DEBUG, "[animateTransition] %p end point %@ not ready yet", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__PUTilingViewTransitionHelper__performWhenToEndPoint_isReadyToAdoptTilingView_fromEndPoint_retryCount_startTime_action___block_invoke;
  block[3] = &unk_1E7B7F1A8;
  block[4] = self;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v31 = a6;
  v32 = a7;
  v30 = v17;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_7:
}

- (void)_performWhenToEndPoint:(id)a3 isReadyToAdoptTilingView:(id)a4 fromEndPoint:(id)a5 action:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__PUTilingViewTransitionHelper__performWhenToEndPoint_isReadyToAdoptTilingView_fromEndPoint_action___block_invoke;
  v19[3] = &unk_1E7B7F180;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v24 = v14;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], v19);
}

- (void)animateTransitionWithOperation:(int64_t)a3 startedInteractively:(BOOL)a4
{
  v94 = a4;
  v186 = *MEMORY[0x1E69E9840];
  v6 = PLOneUpGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v177 = self;
    v178 = 2048;
    v179 = a3;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p animate transition with operation %li", buf, 0x16u);
  }

  [(PUTilingViewTransitionHelper *)self _setCurrentOperation:a3];
  v7 = [(PUTilingViewTransitionHelper *)self transition];
  v8 = [v7 fromViewController];
  v9 = [v7 toViewController];
  v10 = [(PUTilingViewTransitionHelper *)self endPoint];
  v11 = [objc_opt_class() typeOfEndPoint:v10 forTransitionFromViewController:v8 toViewController:v9];
  if (!v11)
  {
    v14 = PLOneUpGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v177 = v10;
      v178 = 2112;
      v179 = v8;
      v180 = 2112;
      v181 = v9;
      _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_ERROR, "[animateTransition] Couldn't find type of end point %@ for transition from %@ to %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v12 = v10;
      goto LABEL_13;
    }

LABEL_12:
    v12 = 0;
LABEL_13:
    v13 = [objc_opt_class() _transitionEndPointWithViewController:v9];
    if (v12)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v13 = v10;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_14:
  v12 = [objc_opt_class() _transitionEndPointWithViewController:v8];
LABEL_15:
  if ([(PUTilingViewTransitionHelper *)self _validateTransitionFromEndPoint:v12 toEndPoint:v13])
  {
    [(PUTilingViewTransitionHelper *)self _setFromEndPoint:v12];
    [(PUTilingViewTransitionHelper *)self _setToEndPoint:v13];
    v15 = PLOneUpGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v177 = self;
      v178 = 2112;
      v179 = v8;
      v180 = 2112;
      v181 = v12;
      v182 = 2112;
      v183 = v9;
      v184 = 2112;
      v185 = v13;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p fromVC: %@, fromEndPoint: %@, toVC: %@, toEndPoint: %@", buf, 0x34u);
    }

    v112 = [v8 navigationController];
    if (!v112)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v112 = v8) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v112 = v9;
        }

        else
        {
          v112 = 0;
        }
      }
    }

    v105 = [v8 tabBarController];
    v88 = [(PUTilingViewTransitionHelper *)v112 _useStandardStatusBarHeight];
    v16 = [v8 prefersStatusBarHidden];
    if (v16 != [(PUTilingViewTransitionHelper *)v9 prefersStatusBarHidden])
    {
      [(PUTilingViewTransitionHelper *)v112 _setUseStandardStatusBarHeight:1];
    }

    v17 = [v7 containerView];
    v96 = [v17 subviews];
    v18 = [v7 transitionContext];
    v93 = [v18 viewForKey:*MEMORY[0x1E69DE770]];

    v19 = [v7 transitionContext];
    v110 = [v19 viewForKey:*MEMORY[0x1E69DE780]];

    v20 = [(PUTilingViewTransitionHelper *)v9 presentedViewController];
    v98 = v17;
    v90 = v20;
    if (v20)
    {
      v21 = [v20 presentationController];
      v22 = [v21 containerView];

      v17 = v98;
      if (([v22 isDescendantOfView:v98] & 1) == 0)
      {
        v23 = v22;

        v110 = v23;
        v17 = v98;
      }
    }

    v91 = v10;
    v92 = v8;
    v107 = v9;
    [v7 finalToViewFrame];
    v24 = v110;
    [v110 setFrame:?];
    if (v110)
    {
      [v17 addSubview:v110];
    }

    v25 = [v17 superview];
    if (v25 != v17)
    {
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v26 = v96;
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

            [*(*(&v171 + 1) + 8 * i) px_transferToSuperview:v25];
          }

          v28 = [v26 countByEnumeratingWithState:&v171 objects:v175 count:16];
        }

        while (v28);
      }

      v24 = v110;
      [v110 px_transferToSuperview:v25];
    }

    v109 = v13;
    v31 = [(PUTilingViewTransitionHelper *)v12 tilingViewControllerTransition:v7 tilingViewToTransferToEndPoint:v13];
    v32 = PLOneUpGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v177 = self;
      v178 = 2112;
      v179 = v31;
      _os_log_impl(&dword_1B36F3000, v32, OS_LOG_TYPE_DEFAULT, "[animateTransition] %p tilingView: %@", buf, 0x16u);
    }

    [(PUTilingViewTransitionHelper *)self _setTilingView:v31];
    v86 = [v31 tileAnimator];
    [v31 px_transferToSuperview:v25];
    if (a3 == 2)
    {
      if (!v93)
      {
        v74 = [MEMORY[0x1E696AAA8] currentHandler];
        [v74 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"fromView != nil"}];
      }

      [v25 bringSubviewToFront:v93];
      v165[0] = MEMORY[0x1E69E9820];
      v165[1] = 3221225472;
      v165[2] = __84__PUTilingViewTransitionHelper_animateTransitionWithOperation_startedInteractively___block_invoke_2;
      v165[3] = &unk_1E7B7EFD0;
      v166 = v12;
      v167 = self;
      v168 = v93;
      v104 = _Block_copy(v165);
      [(PUTilingViewTransitionHelper *)self dismissalDuration];
      v34 = v37;
      v101 = [objc_opt_class() concatenatedProgressBlockForTilingView:v31 transitionOperation:2];

      v100 = 0;
      v35 = v166;
    }

    else if (a3 == 1)
    {
      if (!v24)
      {
        v73 = [MEMORY[0x1E696AAA8] currentHandler];
        [v73 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:311 description:{@"Invalid parameter not satisfying: %@", @"toView != nil"}];
      }

      [v25 bringSubviewToFront:v24];
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
      v35 = v170;
    }

    else
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      [v35 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:338 description:@"unexpected operation"];
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
      if (!v39 || !v94)
      {
        goto LABEL_62;
      }

      if (([(PUTilingViewTransitionHelper *)self _interactionOptions]& 0x10) == 0)
      {
        v41 = +[PUTilingViewSettings sharedInstance];
        v42 = [v41 transitionProgressBehavior];

        v40 = (v42 - 1) < 2;
LABEL_62:
        v43 = PLOneUpGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v177) = v40;
          _os_log_impl(&dword_1B36F3000, v43, OS_LOG_TYPE_DEFAULT, "[animateTransition] shouldAnimateTilingViewBackground: %d", buf, 8u);
        }

        v108 = v7;
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
          v52 = [v50 backgroundColor];
          v53 = [v52 copy];

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
        [v25 addSubview:v56];
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

        v61 = [(PUTilingViewTransitionHelper *)v112 navigationBar];
        v79 = [v61 isUserInteractionEnabled];
        v82 = v61;
        [v61 setUserInteractionEnabled:0];
        v62 = [v105 tabBar];
        v77 = [v62 isUserInteractionEnabled];
        [v62 setUserInteractionEnabled:0];
        v76 = [v24 isUserInteractionEnabled];
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
        v122 = v112;
        v123 = self;
        v81 = v144;
        v124 = v81;
        v125 = v96;
        v126 = v98;
        v127 = v110;
        v128 = v107;
        v80 = v86;
        v129 = v80;
        v135 = v84;
        v64 = v142;
        v130 = v64;
        v75 = v143;
        v131 = v75;
        v65 = v141;
        v132 = v65;
        v133 = v82;
        v136 = v79;
        v134 = v62;
        v137 = v77;
        v138 = v76;
        v139 = v88;
        v89 = v62;
        v87 = v82;
        v85 = v84;
        v111 = v110;
        v99 = v98;
        v97 = v96;
        v83 = v112;
        v102 = v101;
        v66 = v100;
        v113 = v104;
        v67 = v51;
        v68 = [(PUDisplayLink *)v78 initWithUpdateHandler:v140 completionHandler:v121];
        v69 = PLOneUpGetLog();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v177 = self;
          v178 = 2112;
          v179 = v64;
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

        v9 = v107;
        v7 = v108;
        v10 = v91;
        v8 = v92;
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
    v177 = v12;
    v178 = 2112;
    v179 = v13;
    _os_log_impl(&dword_1B36F3000, v36, OS_LOG_TYPE_ERROR, "[animateTransition] Failed to validate fromEndPoint: %@ toEndPoint: %@", buf, 0x16u);
  }

  [v7 finishInteractiveTransition];
  [v7 completeTransition:1];
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

- (void)_getTransitionProgress:(double *)a3 backgroundProgress:(double *)a4 chromeProgress:(double *)a5
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
  v20 = [(PUTilingViewTransitionHelper *)self _transitionProgressValueFilter];
  v33 = v20;
  if (v20)
  {
    [v20 setInputValue:v17];
    [v33 outputValue];
    v17 = v21;
  }

  if (([(PUTilingViewTransitionHelper *)self _interactionOptions]& 4) != 0)
  {
    v27 = [(PUTilingViewTransitionHelper *)self isTransitionPaused];
    if (v14 < 0.0 || v27)
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

    v25 = [(PUTilingViewTransitionHelper *)self _currentOperation];
    if (v25 == 2)
    {
      v26 = v17 / (1.0 - v24);
    }

    else
    {
      v26 = v17;
      if (v25 == 1)
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

  v30 = [(PUTilingViewTransitionHelper *)self _chromeProgressValueFilter];
  v31 = v30;
  if (v30)
  {
    [v30 setInputValue:v29];
    [v31 outputValue];
    v29 = v32;
  }

  if (a3)
  {
    *a3 = v17;
  }

  if (a4)
  {
    *a4 = v15 + v19;
  }

  if (a5)
  {
    *a5 = v29;
  }
}

- (void)resumeTransition:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v5 = PLOneUpGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218240;
    v14 = self;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "%p resuming transition %i", &v13, 0x12u);
  }

  if ([(PUTilingViewTransitionHelper *)self isTransitionPaused])
  {
    [(PUTilingViewTransitionHelper *)self _setTransitionPaused:0];
    [(PUTilingViewTransitionHelper *)self setTransitionPausingCall:0];
    if (([(PUTilingViewTransitionHelper *)self _currentOperation]!= 1) == v3)
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
    if (v3)
    {
      v10 = 1.0;
    }

    v11 = v10 / v9;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(PUTilingViewTransitionHelper *)self _setStartTime:?];
    [(PUTilingViewTransitionHelper *)self _setProgressSpeed:v11];
    if ([(PUTilingViewTransitionHelper *)self hasStarted])
    {
      if (v3)
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

- (void)updatePausedTransitionWithProgress:(double)a3 interactionProgress:(double)a4
{
  if (![(PUTilingViewTransitionHelper *)self isTransitionPaused])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"[self isTransitionPaused]"}];
  }

  [(PUTilingViewTransitionHelper *)self _progressSpeed];
  if (v8 != 0.0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"[self _progressSpeed] == 0.0"}];
  }

  [(PUTilingViewTransitionHelper *)self _setTransitionProgressOffset:a3];

  [(PUTilingViewTransitionHelper *)self _setBackgroundProgressOffset:a4];
}

- (void)pauseTransitionWithOptions:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(PUTilingViewTransitionHelper *)self isTransitionPaused])
  {
    [(PUTilingViewTransitionHelper *)self _setTransitionPaused:1];
    [(PUTilingViewTransitionHelper *)self _setInteractionOptions:a3];
    v7 = [MEMORY[0x1E696AF00] callStackSymbols];
    [(PUTilingViewTransitionHelper *)self setTransitionPausingCall:v7];

    v13 = 0.0;
    *buf = 0;
    v12 = 0.0;
    [(PUTilingViewTransitionHelper *)self _getTransitionProgress:buf backgroundProgress:&v13 chromeProgress:&v12];
    v5 = 0;
    if (a3)
    {
      v5 = objc_alloc_init(PUMaximumChangeRateValueFilter);
      v8 = +[PUTilingViewSettings sharedInstance];
      [v8 transitionDuration];
      [(PUMaximumChangeRateValueFilter *)v5 setMaximumChangeRate:1.0 / v9];

      [(PUDynamicValueFilter *)v5 setInputValue:*buf];
    }

    if ((a3 & 2) != 0)
    {
      v6 = objc_alloc_init(PUMaximumChangeRateValueFilter);
      v10 = +[PUTilingViewSettings sharedInstance];
      [v10 transitionDuration];
      [(PUMaximumChangeRateValueFilter *)v6 setMaximumChangeRate:1.0 / v11];

      [(PUDynamicValueFilter *)v6 setInputValue:v12];
    }

    else
    {
      v6 = 0;
    }

    [(PUTilingViewTransitionHelper *)self _setProgressSpeed:0.0];
    [(PUTilingViewTransitionHelper *)self _setTransitionProgressOffset:*buf];
    [(PUTilingViewTransitionHelper *)self _setBackgroundProgressOffset:v13];
    [(PUTilingViewTransitionHelper *)self _setTransitionProgressValueFilter:v5];
    [(PUTilingViewTransitionHelper *)self _setChromeProgressValueFilter:v6];
    goto LABEL_10;
  }

  v5 = PXAssertGetLog();
  if (os_log_type_enabled(&v5->super.super.super, OS_LOG_TYPE_FAULT))
  {
    v6 = [(PUTilingViewTransitionHelper *)self transitionPausingCall];
    *buf = 134218242;
    *&buf[4] = self;
    v15 = 2112;
    v16 = v6;
    _os_log_fault_impl(&dword_1B36F3000, &v5->super.super.super, OS_LOG_TYPE_FAULT, "tiling view transition %p already paused from %@", buf, 0x16u);
LABEL_10:
  }
}

- (PUTilingViewTransitionHelper)initWithPresentationDuration:(double)a3 dismissalDuration:(double)a4 endPoint:(id)a5
{
  v9 = a5;
  if (a3 <= 0.0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"presentationDuration > 0.0"}];
  }

  if (a4 <= 0.0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUTilingViewControllerTransition.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"dismissalDuration > 0.0"}];
  }

  v15.receiver = self;
  v15.super_class = PUTilingViewTransitionHelper;
  v10 = [(PUTilingViewTransitionHelper *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_presentationDuration = a3;
    v10->_dismissalDuration = a4;
    objc_storeWeak(&v10->_endPoint, v9);
  }

  return v11;
}

+ (void)registerTransitionEndPoint:(id)a3 forViewController:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = PURegisteredTilingViewTransitionEndPoints;
  if (!PURegisteredTilingViewTransitionEndPoints)
  {
    v7 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v8 = PURegisteredTilingViewTransitionEndPoints;
    PURegisteredTilingViewTransitionEndPoints = v7;

    v6 = PURegisteredTilingViewTransitionEndPoints;
  }

  [v6 setObject:v9 forKey:v5];
}

+ (id)_transitionEndPointWithViewController:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 presentedViewController];
  v6 = [v5 presentingViewController];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = [v4 presentedViewController];
    v9 = [v8 modalPresentationStyle];

    if (v9 == 3)
    {
      v10 = [v4 presentedViewController];
LABEL_9:
      v11 = v10;
      v12 = [a1 _transitionEndPointWithViewController:v10];
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
    v10 = [v4 topViewController];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v4 selectedViewController];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 style])
  {
    v11 = v4;
    if (![v11 isCollapsed] || objc_msgSend(v11, "style") != 2 || (objc_msgSend(v11, "viewControllerForColumn:", 1), (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v15 = [v11 viewControllerForColumn:2];
      if (!v15)
      {
        v15 = [v11 viewControllerForColumn:3];
      }
    }

    v16 = v15;
    v13 = [a1 _transitionEndPointWithViewController:v15];

    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = v4;
  }

  else
  {
    v13 = [PURegisteredTilingViewTransitionEndPoints objectForKey:v4];
    if (!v13)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [v4 childViewControllers];
      v17 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
            objc_enumerationMutation(v11);
          }

          v12 = [a1 _transitionEndPointWithViewController:*(*(&v22 + 1) + 8 * v20)];
          if (v12)
          {
            goto LABEL_10;
          }

          if (v18 == ++v20)
          {
            v18 = [v11 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
        v27 = v4;
        _os_log_impl(&dword_1B36F3000, v21, OS_LOG_TYPE_ERROR, "couldn't find tiling view controller transition end point for %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

LABEL_12:

  return v13;
}

+ (int64_t)typeOfEndPoint:(id)a3 forTransitionFromViewController:(id)a4 toViewController:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 tilingViewControllerTransitionEndPointHostViewController];
  if (([v9 px_isDescendantOfOrPresentedByViewController:v8] & 1) == 0)
  {
    if ([v9 px_isDescendantOfOrPresentedByViewController:v7] & 1) != 0 || objc_msgSend(v7, "px_isDescendantOfOrPresentedByViewController:", v9) && (objc_msgSend(v8, "px_isDescendantOfOrPresentedByViewController:", v7))
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (![v8 px_isDescendantOfOrPresentedByViewController:v9] || (objc_msgSend(v7, "px_isDescendantOfOrPresentedByViewController:", v8) & 1) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  v10 = 2;
LABEL_10:

  return v10;
}

+ (id)concatenatedProgressBlockForTilingView:(id)a3 transitionOperation:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
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
    v9[6] = a4;
    v9[4] = &v10;
    [v5 enumerateAllTileControllersUsingBlock:v9];
    if (*(v17 + 24) == 1)
    {
      v7 = v11[5];
    }

    else
    {
      v7 = 0;
    }

    a4 = _Block_copy(v7);
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return a4;
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