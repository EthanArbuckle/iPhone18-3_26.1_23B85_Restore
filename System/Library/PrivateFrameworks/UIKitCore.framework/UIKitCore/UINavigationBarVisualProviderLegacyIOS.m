@interface UINavigationBarVisualProviderLegacyIOS
@end

@implementation UINavigationBarVisualProviderLegacyIOS

void __75___UINavigationBarVisualProviderLegacyIOS__layoutInBounds_withVisualStyle___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 56) > a3)
  {
    v8 = [*(a1 + 32) objectAtIndex:?];
    if (_barItemHidden(v8))
    {
      [v8 removeFromSuperview];
    }

    else
    {
      [a2 CGRectValue];
      [v8 setFrame:?];
      v7 = [v8 superview];

      if (!v7)
      {
        [v8 setAlpha:1.0];
        [*(*(a1 + 40) + 136) addSubview:v8];
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = a3;
  }
}

void __75___UINavigationBarVisualProviderLegacyIOS__layoutInBounds_withVisualStyle___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 56) > a3)
  {
    v8 = [*(a1 + 32) objectAtIndex:?];
    if (_barItemHidden(v8))
    {
      [v8 removeFromSuperview];
    }

    else
    {
      [a2 CGRectValue];
      [v8 setFrame:?];
      v7 = [v8 superview];

      if (!v7)
      {
        [v8 setAlpha:1.0];
        [*(*(a1 + 40) + 136) addSubview:v8];
      }
    }

    *(*(*(a1 + 48) + 8) + 24) = a3;
  }
}

uint64_t __73___UINavigationBarVisualProviderLegacyIOS_setBackButtonVisible_animated___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 48);
  [*(a1 + 32) setAlpha:*&a2];
  LOBYTE(v3) = *(a1 + 48);
  v4 = v3;
  v5 = *(*(a1 + 40) + 88);

  return [v5 setAlpha:v4];
}

void __71___UINavigationBarVisualProviderLegacyIOS__effectiveBackIndicatorImage__block_invoke()
{
  v2 = [UIImage kitImageNamed:@"UINavigationBarBackIndicatorDefault"];
  v0 = [v2 imageFlippedForRightToLeftLayoutDirection];
  v1 = _MergedGlobals_29_0;
  _MergedGlobals_29_0 = v0;
}

void __85___UINavigationBarVisualProviderLegacyIOS__effectiveBackIndicatorTransitionMaskImage__block_invoke()
{
  v2 = [UIImage kitImageNamed:@"UINavigationBarTitleTransitionBackIndicatorMask"];
  v0 = [v2 imageFlippedForRightToLeftLayoutDirection];
  v1 = qword_1ED49B2A8;
  qword_1ED49B2A8 = v0;
}

void __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 CGPointValue];
  [v5 setCenter:?];
}

uint64_t __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 88) setAlpha:(*(a1 + 104) ^ 1u)];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v28 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v4);
  }

  if (([*(a1 + 48) shouldCrossfade] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_3;
    v26[3] = &unk_1E70F3F18;
    v27 = *(a1 + 56);
    [v7 enumerateObjectsUsingBlock:v26];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = *(a1 + 64);
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v22 + 1) + 8 * v12++) setAlpha:1.0];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v10);
  }

  if (([*(a1 + 48) shouldCrossfade] & 1) == 0)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_4;
    v20[3] = &unk_1E70F3F18;
    v13 = *(a1 + 64);
    v21 = *(a1 + 72);
    [v13 enumerateObjectsUsingBlock:v20];
  }

  if (*(a1 + 105) == 1)
  {
    v14 = *(a1 + 80);
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&v19.a = *MEMORY[0x1E695EFD0];
    *&v19.c = v15;
    *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v14 setTransform:&v19];
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, *(a1 + 96), 1.0);
    v16 = *(a1 + 88);
    v18 = v19;
    [v16 setTransform:&v18];
  }

  return [*(a1 + 32) _updateBackground];
}

void __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 CGPointValue];
  [v5 setCenter:?];
}

void __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 CGPointValue];
  [v5 setCenter:?];
}

uint64_t __147___UINavigationBarVisualProviderLegacyIOS__startPushAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _completeNavigationTransitionWithIncomingViews:*(a1 + 40) outgoingViews:*(a1 + 48) transitionAssistant:*(a1 + 56) completion:*(a1 + 72)];
  v2 = *(a1 + 64);

  return [v2 _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
}

void __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 CGPointValue];
  [v5 setCenter:?];
}

uint64_t __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 88) setAlpha:(*(a1 + 104) ^ 1u)];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v27 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v4);
  }

  if (([*(a1 + 48) shouldCrossfade] & 1) == 0)
  {
    v7 = *(a1 + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_3;
    v25[3] = &unk_1E70F3F18;
    v26 = *(a1 + 56);
    [v7 enumerateObjectsUsingBlock:v25];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = *(a1 + 64);
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v21 + 1) + 8 * v12++) setAlpha:1.0];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);
  }

  if (([*(a1 + 48) shouldCrossfade] & 1) == 0)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_4;
    v19[3] = &unk_1E70F3F18;
    v13 = *(a1 + 64);
    v20 = *(a1 + 72);
    [v13 enumerateObjectsUsingBlock:v19];
  }

  if (*(a1 + 105) == 1)
  {
    v14 = *(a1 + 80);
    v15 = *(MEMORY[0x1E695EFD0] + 16);
    *&v18.a = *MEMORY[0x1E695EFD0];
    *&v18.c = v15;
    *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v14 setTransform:&v18];
    v16 = *(a1 + 88);
    CGAffineTransformMakeScale(&v18, 1.0 / *(a1 + 96), 1.0);
    [v16 setTransform:&v18];
  }

  return [*(a1 + 32) _updateBackground];
}

void __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 CGPointValue];
  [v5 setCenter:?];
}

void __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 CGPointValue];
  [v5 setCenter:?];
}

uint64_t __146___UINavigationBarVisualProviderLegacyIOS__startPopAnimationFromOldBackItem_oldTopItem_newBackItem_newTopItem_withTransitionAssistant_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _setFadingInFromCustomAlpha:0];
  [*(a1 + 40) _completeNavigationTransitionWithIncomingViews:*(a1 + 48) outgoingViews:*(a1 + 56) transitionAssistant:*(a1 + 64) completion:*(a1 + 80)];
  v2 = *(a1 + 72);

  return [v2 _setAbbreviatedTitleIndex:0x7FFFFFFFFFFFFFFFLL];
}

void __135___UINavigationBarVisualProviderLegacyIOS__completeNavigationTransitionWithIncomingViews_outgoingViews_transitionAssistant_completion___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 8) topItem];
  v2 = [*(*(a1 + 32) + 8) topItem];
  v3 = [v2 _pendingTitle];
  [v4 _setTitle:v3 animated:1 matchBarButtonItemAnimationDuration:1];
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  if (*(a1 + 56) == 1 && *(a1 + 32))
  {
    ++a3;
  }

  v7 = [*(a1 + 40) objectAtIndex:a3];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (CGRectIsEmpty(v21))
  {
    [v19 frame];
    if (!CGRectIsEmpty(v22))
    {
      v16 = *(a1 + 40);
      v17 = MEMORY[0x1E696B098];
      [v19 frame];
      v18 = [v17 valueWithCGRect:?];
      [v16 replaceObjectAtIndex:a3 withObject:v18];
    }
  }

  if (a3 == *(a1 + 48) - 1)
  {
    *a4 = 1;
  }
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v7 = [*(a1 + 32) objectAtIndex:a3];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (CGRectIsEmpty(v21))
  {
    [v19 frame];
    if (!CGRectIsEmpty(v22))
    {
      v16 = *(a1 + 32);
      v17 = MEMORY[0x1E696B098];
      [v19 frame];
      v18 = [v17 valueWithCGRect:?];
      [v16 replaceObjectAtIndex:a3 withObject:v18];
    }
  }

  if (*(a1 + 40) - 1 == a3)
  {
    *a4 = 1;
  }
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_3(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = a2;
  [v4 setAlpha:v3];
  [*(a1 + 32) addObject:v4];
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_4(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = a2;
  [v4 setAlpha:v3];
  [*(a1 + 32) addObject:v4];
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _titleView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_6(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v6++) setAlpha:0.0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setAlpha:{1.0, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

void __117___UINavigationBarVisualProviderLegacyIOS__setViewsAnimated_forTopNavigationItem_backNavigationItem_previousTopItem___block_invoke_7(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = [v1[2] transitionAssistant];
  [v1 _completeTopItemTransitionWithIncomingViews:v2 outgoingViews:v3 previousLeftViews:v4 previousRightViews:v5 enableUserInteraction:v6 transitionAssistant:v7];
}

void __72___UINavigationBarVisualProviderLegacyIOS__shim_setPromptText_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(*(a1 + 32) + 8) invalidateIntrinsicContentSize];
  [*(*(a1 + 32) + 8) intrinsicContentSize];
  v11 = v10;
  v12 = [*(*(a1 + 32) + 8) window];
  if (v12)
  {
    v13 = v12;
    v14 = [*(*(a1 + 32) + 8) _delegateWantsNavigationBarHidden];

    if (v14)
    {
      v24.origin.x = v3;
      v24.origin.y = v5;
      v24.size.width = v7;
      v24.size.height = v9;
      MaxY = CGRectGetMaxY(v24);
      v25.origin.x = v3;
      v25.origin.y = v5;
      v25.size.width = v7;
      v25.size.height = v11;
      v5 = v5 + MaxY - CGRectGetMaxY(v25);
    }
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 8);
  if ((~v17[11] & 0x210000000000000) == 0)
  {
    [v17 layoutIfNeeded];
    v16 = *(a1 + 32);
  }

  if (v9 != v11)
  {
    v18 = *(v16 + 8);
    if ((~v18[11] & 0x210000000000000) != 0)
    {
      [v18 setFrame:{v3, v5, v7, v11}];
      v18 = *(*(a1 + 32) + 8);
    }

    [v18 _sendResizeForPromptChange];
    v16 = *(a1 + 32);
  }

  v19 = [*(v16 + 8) window];
  if (!v19 || (v20 = v19, (*(v19 + 95) & 2) == 0))
  {
    v20 = *(*(a1 + 32) + 8);
  }

  v22 = v19;
  v21 = v20;
  [v21 layoutIfNeeded];
  [*(a1 + 40) setAlpha:0.0];
  [*(*(a1 + 32) + 96) setAlpha:1.0];
}

@end