@interface UIQueuingScrollView
@end

@implementation UIQueuingScrollView

uint64_t __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _notifyDelegateDidEndManualScroll:0 toRevealView:*(a1 + 40) direction:*(a1 + 56) animated:1 didFinish:a2 didComplete:a3];
  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) view];
  [v6 _notifyDelegateDidEndManualScroll:0 toRevealView:v7 direction:objc_msgSend(*(a1 + 40) animated:"transitionDirection") didFinish:1 didComplete:{0, 0}];

  [*(a1 + 40) cleanupWithFinishedState:a2 completedState:a3];
  [*(a1 + 32) _cleanUpCompletionState:*(a1 + 40) didFinish:a2 didComplete:a3];
  v8 = *(a1 + 32);
  v9 = [*(a1 + 48) view];
  v10 = [*(a1 + 40) view];
  [v8 _notifyDelegateWillManuallyScroll:0 toRevealView:v9 concealingView:v10 animated:1];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 48) view];
  v13 = [*(a1 + 40) view];
  [v11 _notifyDelegateDidCommitManualScroll:0 toRevealView:v12 concealView:v13 direction:objc_msgSend(*(a1 + 48) animated:"transitionDirection") canComplete:{1, 0}];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 48) view];
  [v14 _notifyDelegateDidEndManualScroll:0 toRevealView:v15 direction:objc_msgSend(*(a1 + 48) animated:"transitionDirection") didFinish:1 didComplete:{0, 0}];

  [*(a1 + 48) cleanupWithFinishedState:0 completedState:0];
  v16 = *(a1 + 32);
  v17 = *(a1 + 56);
  v18 = [*(a1 + 48) view];
  [v16 _notifyDelegateWillManuallyScroll:0 toRevealView:v17 concealingView:v18 animated:1];

  v19 = *(a1 + 32);
  v20 = *(a1 + 56);
  v21 = [*(a1 + 48) view];
  [v19 _notifyDelegateDidCommitManualScroll:0 toRevealView:v20 concealView:v21 direction:*(a1 + 72) animated:1 canComplete:a3];

  [*(a1 + 32) _notifyDelegateDidEndManualScroll:0 toRevealView:*(a1 + 56) direction:*(a1 + 72) animated:1 didFinish:a2 didComplete:a3];
  v22 = *(a1 + 64);
  if (v22)
  {
    (*(v22 + 16))(v22, 0, a3);
  }

  v23 = *(*(a1 + 32) + 2176);
  v24 = [*(a1 + 40) view];
  v25 = [v23 indexOfObject:v24];

  if (v25 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = [*(*(a1 + 32) + 2176) mutableCopy];
    if (!*(a1 + 56))
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"_UIQueuingScrollView.m" lineNumber:609 description:@"view is nil"];
    }

    [v26 replaceObjectAtIndex:v25 withObject:?];
    [*(a1 + 32) _replaceViews:v26 updatingContents:1 adjustContentInsets:0 animated:1];
  }

  v27 = *(*(a1 + 32) + 2176);
  v28 = [*(a1 + 48) view];
  LOBYTE(v27) = [v27 containsObject:v28];

  if ((v27 & 1) == 0)
  {
    v29 = *(a1 + 32);
    v31 = [*(a1 + 48) view];
    [v29 _flushView:v31 animated:0];
  }
}

uint64_t __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _notifyDelegateDidEndManualScroll:0 toRevealView:*(a1 + 40) direction:*(a1 + 56) animated:1 didFinish:a2 didComplete:a3];
  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t __78___UIQueuingScrollView__enqueueAnimatedScrollInDirection_withView_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _notifyDelegateDidEndManualScroll:0 toRevealView:*(a1 + 40) direction:*(a1 + 56) animated:1 didFinish:a2 didComplete:a3];
  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

BOOL __54___UIQueuingScrollView__didScrollWithAnimation_force___block_invoke(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(*(*(a1 + 40) + 8) + 24);
    }
  }

  else
  {
    v4 = -1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  v5 = [*(a1 + 32) _viewAtIndex:a2 loadingIfNecessary:1 updatingContents:0 animated:*(a1 + 112)];
  if (!v5)
  {
    goto LABEL_54;
  }

  v6 = *(a1 + 48);
  if (v6 == -1)
  {
    v7 = *(__UILogGetCategoryCachedImpl("ScrollView", &_MergedGlobals_5_5) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 113);
      LODWORD(v50) = 67109120;
      DWORD1(v50) = v8;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "isScrollInProgress: %d", &v50, 8u);
    }

    v9 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED49A5A0) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 112);
      LODWORD(v50) = 67109120;
      DWORD1(v50) = v10;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "animated: %d", &v50, 8u);
    }

    v11 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED49A5A8) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(*(a1 + 32) + 2168);
      LODWORD(v50) = 134217984;
      *(&v50 + 4) = v12;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "orientation: %ld", &v50, 0xCu);
    }

    if (*(a1 + 112) == 1)
    {
      v13 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED49A5B0) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v15 = v13;
        [v14 _animatedTargetOffset];
        v16 = NSStringFromCGPoint(v52);
        LODWORD(v50) = 138412290;
        *(&v50 + 4) = v16;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "animatedTargetOffset: %@", &v50, 0xCu);
      }

      v17 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED49A5B8) + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v18 = *(a1 + 32);
      v19 = v17;
      [v18 _animatedOriginalOffset];
      v20 = NSStringFromCGPoint(v53);
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = v20;
      v21 = "animatedOriginalOffset: %@";
    }

    else
    {
      if (![*(a1 + 32) _isBouncing])
      {
        goto LABEL_25;
      }

      v22 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED49A5C0) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = v22;
        [v23 _pageDecelerationTarget];
        v25 = NSStringFromCGPoint(v54);
        LODWORD(v50) = 138412290;
        *(&v50 + 4) = v25;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "pageDecelerationTarget: %@", &v50, 0xCu);
      }

      v26 = *(__UILogGetCategoryCachedImpl("ScrollView", &qword_1ED49A5C8) + 8);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v27 = *(a1 + 32);
      v19 = v26;
      [v27 contentOffset];
      v20 = NSStringFromCGPoint(v55);
      LODWORD(v50) = 138412290;
      *(&v50 + 4) = v20;
      v21 = "contentOffset: %@";
    }

    _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, v21, &v50, 0xCu);

LABEL_25:
    v6 = *(a1 + 48);
    if (v6 == -1)
    {
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      [v49 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"_UIQueuingScrollView.m" lineNumber:818 description:@"Failed to determine navigation direction for scroll"];

      v6 = *(a1 + 48);
    }
  }

  if (v6 == 1)
  {
    if (*(*(*(a1 + 40) + 8) + 24) != -1)
    {
      goto LABEL_45;
    }
  }

  else if (v6 || *(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_45;
  }

  v28 = *(a1 + 32);
  v29 = *(v28 + 2192);
  if (v29 == v5)
  {
    v30 = [*(v28 + 2216) lastObject];
    v31 = [v30 view];

    if (v31 == v5)
    {
      goto LABEL_45;
    }

    v28 = *(a1 + 32);
    v29 = *(v28 + 2192);
  }

  if (v29 != v5)
  {
    objc_storeStrong((v28 + 2192), v5);
    v32 = *(a1 + 32);
    v33 = *(v32 + 2224);
    v34 = *(v32 + 2192);
    v35 = [v32 _visibleView];
    [v32 _notifyDelegateWillManuallyScroll:v33 toRevealView:v34 concealingView:v35 animated:1];

    v28 = *(a1 + 32);
    if ((*(v28 + 2224) & 1) == 0)
    {
      v36 = *(v28 + 2192);
      v37 = [*(a1 + 32) _visibleView];
      [v28 _notifyDelegateDidCommitManualScroll:0 toRevealView:v36 concealView:v37 direction:*(a1 + 48) animated:1 canComplete:1];

      v28 = *(a1 + 32);
    }
  }

  if (*(v28 + 2224) == 1 && ([v28 isTracking] & 1) == 0)
  {
    v38 = [*(*(a1 + 32) + 2216) lastObject];
    v39 = [v38 view];
    v40 = v39;
    if (v39 == v5)
    {
    }

    else
    {
      v41 = [*(a1 + 32) _isDeceleratingInOppositionToNavigationDirection:*(a1 + 48)];

      if (v41)
      {
        goto LABEL_45;
      }

      v42 = *(a1 + 32);
      v43 = v42[274];
      v38 = [v42 _visibleView];
      [v42 _commitGestureDrivenScrollRevealingView:v43 concealingView:v38 inDirection:*(a1 + 48) canComplete:1];
    }
  }

LABEL_45:
  v44 = [*(a1 + 32) _viewAtIndex:a2 loadingIfNecessary:0 updatingContents:1 animated:{*(a1 + 112), v50}];
  if (a2)
  {
    if (a2 == 2)
    {
      v45 = *(*(a1 + 32) + 2168);
      if (v45 == 1)
      {
        v47 = *(a1 + 72) >= *(a1 + 104) + *(a1 + 104);
        goto LABEL_55;
      }

      if (!v45 && *(a1 + 64) >= *(a1 + 96) + *(a1 + 96))
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v46 = *(*(a1 + 32) + 2168);
    if (v46 == 1)
    {
      v47 = *(a1 + 72) <= 0.0;
      goto LABEL_55;
    }

    if (!v46 && *(a1 + 64) <= 0.0)
    {
LABEL_57:
      v47 = 1;
      goto LABEL_55;
    }
  }

LABEL_54:
  v47 = 0;
LABEL_55:

  return v47;
}

@end