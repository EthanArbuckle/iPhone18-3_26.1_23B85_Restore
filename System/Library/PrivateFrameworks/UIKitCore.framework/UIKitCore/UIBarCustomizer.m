@interface UIBarCustomizer
@end

@implementation UIBarCustomizer

void __37___UIBarCustomizer_beginWithSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isActive])
  {
    [WeakRetained _reflow];
    v1 = [WeakRetained reservoir];
    [v1 invalidateLayoutAndForceUpdate:1];
  }
}

void __37___UIBarCustomizer_beginWithSession___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWasReset:1];
  [WeakRetained _setActive:0];
  [WeakRetained setWasReset:0];
}

void __37___UIBarCustomizer_beginWithSession___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setActive:0];
}

void __37___UIBarCustomizer_beginWithSession___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _reflow];
  v2 = [*(a1 + 32) containerView];
  [v2 layoutIfNeeded];
}

void __31___UIBarCustomizer__setActive___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 _mutableVisibleItems];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * v7) _chiclet];
        v9 = [v8 anchorView];
        [v9 removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isActive] & 1) == 0)
  {
    v11 = [WeakRetained containerView];
    [v11 removeFromSuperview];
  }
}

uint64_t __31___UIBarCustomizer__setActive___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) dimmingView];
  [v3 setAlpha:v2];

  if (*(a1 + 56))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) reservoirContainerView];
  v6 = [v5 _outermostLayer];
  *&v7 = v4;
  [v6 setOpacity:v7];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [*(a1 + 40) _mutableVisibleItems];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        if ((*(a1 + 56) & 1) == 0)
        {
          v14 = [*(*(&v29 + 1) + 8 * i) _chiclet];
          [v14 updateItemCenterPoints];
        }

        v15 = [v13 _chiclet];
        v16 = [v15 anchorView];

        v17 = *(a1 + 56);
        v18 = [v16 chiclet];
        [v18 setPlatterVisible:v17];

        [v16 setNeedsLayout];
        [v16 layoutIfNeeded];
        [v16 setJiggling:*(a1 + 56)];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = [*(a1 + 32) ellipsisDotViews];
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v25 + 1) + 8 * j) setAlpha:0.0];
        }

        v21 = [v19 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v21);
    }
  }

  [*(a1 + 32) _reflow];
  return [*(a1 + 48) performAllAnimations];
}

uint64_t __31___UIBarCustomizer__setActive___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v2 = [*(a1 + 32) reservoirContainerView];
    v3 = [v2 _outermostLayer];
    LODWORD(v4) = 1.0;
    [v3 setOpacity:v4];

    v5 = [*(a1 + 32) reservoirContainerView];
    [v5 setAlpha:0.0];
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v6 performAllCompletionsWithSession:v7];
}

void __27___UIBarCustomizer__reflow__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) delegate];
  v3 = *(a1 + 40);
  v4 = [v3 _activeSession];
  [v2 barCustomizer:v3 customizationAreaBoundsForSession:v4];
  [*(a1 + 32) setFrame:?];

  [*(a1 + 32) frame];
  MidX = CGRectGetMidX(v9);
  [*(a1 + 32) frame];
  v6 = CGRectGetMaxY(v10) + -15.0;
  v7 = [*(a1 + 40) reservoir];
  [v7 setCenter:{MidX, v6}];
}

void __27___UIBarCustomizer__reflow__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 _chiclet];
  v7 = [v5 anchorView];

  if ((*(a1 + 56) & 1) == 0 && [*(a1 + 32) _dropIndex] == a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 40.0;
  }

  [v7 setContentPadding:16.0];
  [v7 bounds];
  Width = CGRectGetWidth(v9);
  [v7 setCenter:{Width * 0.5 + *(*(*(a1 + 40) + 8) + 24), *(a1 + 48)}];
  if (*(a1 + 56) == 1 && [*(a1 + 32) _dropIndex] == a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 40.0;
  }

  if ([v7 state] != 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = Width + *(*(*(a1 + 40) + 8) + 24);
  }
}

void __27___UIBarCustomizer__reflow__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) chiclet];
  [v2 setMinimized:0];

  v3 = [*(a1 + 32) chiclet];
  [v3 layoutIfNeeded];
}

uint64_t __27___UIBarCustomizer__reflow__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) center];
  v3 = v2 + *(a1 + 40);
  [*(a1 + 32) center];
  v4 = *(a1 + 32);

  return [v4 setCenter:v3];
}

void __27___UIBarCustomizer__reflow__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) chiclet];
  [v2 setMinimized:1];

  [*(a1 + 32) setCenter:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) chiclet];
  [v3 layoutIfNeeded];
}

uint64_t __27___UIBarCustomizer__reflow__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setBounds:{0.0, 0.0, *(a1 + 40), *(a1 + 40)}];
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 32) _setCornerRadius:*(a1 + 40) * 0.5];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

uint64_t __56___UIBarCustomizer__reflowAnimatedWithAlongsideActions___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reflow];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __53___UIBarCustomizer_dragInteraction_sessionWillBegin___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _chiclet];
  v3 = [v2 representedItem];
  [v3 setCollapsed:0];

  v4 = [*(a1 + 32) _chiclet];
  [v4 sizeToFit];

  v5 = [*(a1 + 32) _chiclet];
  [v5 layoutIfNeeded];
}

uint64_t __66___UIBarCustomizer__animateDropOrCancelForItem_animator_isCancel___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) jiggling];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 40) presentationValue];
    if (v3 < 10.0)
    {
      v4 = *(a1 + 32);

      return [v4 setJiggling:1];
    }
  }

  return result;
}

uint64_t __66___UIBarCustomizer__animateDropOrCancelForItem_animator_isCancel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCollapsed:*(a1 + 48)];
  [*(a1 + 40) setChicletSize:*(a1 + 48) ^ 1];
  [*(a1 + 40) setLabelVisible:(*(a1 + 48) & 1) == 0];
  [*(a1 + 40) sizeToFit];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

void __66___UIBarCustomizer__animateDropOrCancelForItem_animator_isCancel___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reflow];
  if ((*(a1 + 48) & 1) == 0)
  {
    v2 = [WeakRetained reservoir];
    [v2 sizeToFit];

    v3 = [WeakRetained reservoir];
    [v3 layoutIfNeeded];

    [*(a1 + 32) setValue:0.0];
  }
}

void __34___UIBarCustomizer__updateDebugUI__block_invoke(uint64_t a1)
{
  v2 = +[UIColor blueColor];
  v3 = [v2 CGColor];
  v4 = [*(a1 + 32) containerView];
  v5 = [v4 layer];
  [v5 setBorderColor:v3];

  v6 = [*(a1 + 32) containerView];
  v7 = [v6 layer];
  [v7 setBorderWidth:2.0];

  v8 = +[UIColor systemGreenColor];
  v9 = [v8 CGColor];
  v10 = [*(a1 + 32) visibleItemScrollView];
  v11 = [v10 layer];
  [v11 setBorderColor:v9];

  v13 = [*(a1 + 32) visibleItemScrollView];
  v12 = [v13 layer];
  [v12 setBorderWidth:3.0];
}

void __34___UIBarCustomizer__updateDebugUI__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _dropIndex];
  if (v2 >= [*(a1 + 40) count])
  {
    v13 = [*(a1 + 40) lastObject];
    v14 = [v13 _chiclet];
    v21 = [v14 anchorView];

    if ([v21 state] == 1)
    {
      [v21 frame];
      MinX = CGRectGetMinX(v23);
      goto LABEL_6;
    }

    v17 = [*(a1 + 32) containerView];
    v18 = [v17 traitCollection];
    v19 = [v18 layoutDirection];

    [v21 frame];
    if (!v19)
    {
LABEL_3:
      MinX = CGRectGetMaxX(*&v8);
LABEL_6:
      v15 = *(a1 + 48);
      v16 = 0.5;
      goto LABEL_9;
    }
  }

  else
  {
    v3 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "_dropIndex")}];
    v4 = [v3 _chiclet];
    v21 = [v4 anchorView];

    v5 = [*(a1 + 32) containerView];
    v6 = [v5 traitCollection];
    v7 = [v6 layoutDirection];

    [v21 frame];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  MinX = CGRectGetMinX(*&v8);
  v15 = *(a1 + 48);
  v16 = -0.5;
LABEL_9:
  v20 = MinX + v15 * v16;
  [v21 frame];
  [qword_1ED49DF38 setCenter:{v20, CGRectGetMidY(v24)}];
}

@end