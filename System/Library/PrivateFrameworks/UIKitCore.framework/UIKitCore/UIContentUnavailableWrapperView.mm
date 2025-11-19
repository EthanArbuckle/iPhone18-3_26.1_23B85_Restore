@interface UIContentUnavailableWrapperView
@end

@implementation UIContentUnavailableWrapperView

uint64_t __80___UIContentUnavailableWrapperView__replaceContentViewWithViewForConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 40) bounds];
  [*(a1 + 32) setFrame:?];
  [*(a1 + 32) setAutoresizingMask:18];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 addSubview:v3];
}

uint64_t __80___UIContentUnavailableWrapperView__replaceContentViewWithViewForConfiguration___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __80___UIContentUnavailableWrapperView__replaceContentViewWithViewForConfiguration___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _replaceContentViewWithViewForConfiguration:*(a1 + 40)];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 removeFromSuperview];
  }
}

void __103___UIContentUnavailableWrapperView__updateBackgroundViewHandlersForPreviousContentView_newContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBackgroundView];
}

uint64_t __57___UIContentUnavailableWrapperView__updateBackgroundView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) bounds];
  [*(a1 + 32) setFrame:?];
  [*(a1 + 32) setAutoresizingMask:18];
  [*(a1 + 40) insertSubview:*(a1 + 32) atIndex:0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __57___UIContentUnavailableWrapperView__updateBackgroundView__block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [*(result + 32) removeFromSuperview];
  }

  return result;
}

uint64_t __64___UIContentUnavailableWrapperView_reconfigureContentScrollView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*(a1 + 32) + 432);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v8 = [v6 objectForKey:v7];

  v9 = [*(a1 + 40) _defaultContentScrollViewForEdge:a3];
  if (v8 == v9)
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v10 = [v8 _temporaryCoordinatingReplacement];
  v11 = *(a1 + 48);

  if (v10 == v11)
  {
    [v8 _setTemporaryCoordinatingReplacement:0];
  }

  v12 = *(*(a1 + 32) + 432);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  if (!v9)
  {
    [v12 removeObjectForKey:v13];

    goto LABEL_11;
  }

  [v12 setObject:v9 forKey:v13];

LABEL_7:
  if (*(a1 + 56) == 1)
  {
    [a2 setKeyboardDismissMode:{objc_msgSend(v9, "keyboardDismissMode")}];
    [a2 setAlwaysBounceVertical:{objc_msgSend(v9, "alwaysBounceVertical")}];
  }

  [v9 _setTemporaryCoordinatingReplacement:a2];
  v14 = 1;
LABEL_12:

  return v14;
}

void __64___UIContentUnavailableWrapperView_reconfigureContentScrollView__block_invoke_2(void *a1, void *a2)
{
  v5 = [a1 panGestureRecognizer];
  v3 = [v5 view];

  if (v3 != a2)
  {
    v4 = [v5 view];
    [v4 removeGestureRecognizer:v5];

    [a2 addGestureRecognizer:v5];
  }
}

@end