@interface UICursorAccessoryView
@end

@implementation UICursorAccessoryView

void __51___UICursorAccessoryView__reloadAccessoryItemViews__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 608);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 552) objectForKey:{v7, v10}];
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 600));
        [WeakRetained configureItemView:v8 forAccessoryIdentifier:v7];

        [v8 layoutIfNeeded];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void __59___UICursorAccessoryView_setAccessoryIdentifiers_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 32) tintColor];
  [v4 grayscaleLuminance:v5];
  v7 = v6;

  if (v7 <= 0.75)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = _UISolariumEnabled();
  v10 = 0.4;
  if (!v9)
  {
    v10 = 0.2;
  }

  v11 = [UIColor colorWithWhite:v8 alpha:v10];
  [v3 setBackgroundColor:v11];
}

uint64_t __59___UICursorAccessoryView_setAccessoryIdentifiers_animated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _scheduleRemovedItemViewCleanup];
  }

  return result;
}

void __60___UICursorAccessoryView__layoutDisplayedAccessoryItemViews__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = [*(*(a1 + 32) + 552) objectForKey:a2];
  v5 = [*(a1 + 32) _displayedItemViewAtIndex:a3 - 1];
  v6 = [*(a1 + 32) _displayedItemViewAtIndex:a3 + 1];
  v7 = v29;
  if (a3)
  {
    v8 = [*(*(a1 + 32) + 560) objectAtIndex:a3 - 1];
    if ([v29 isActive] && (objc_msgSend(v29, "collapsed") & 1) == 0 && objc_msgSend(v5, "isActive") && (objc_msgSend(v5, "collapsed") & 1) == 0)
    {
      [v8 setHidden:0];
      if (*(a1 + 80) == 1)
      {
        v25 = *(a1 + 64) - *(*(*(a1 + 40) + 8) + 24) + -1.0;
      }

      else
      {
        v25 = *(*(*(a1 + 40) + 8) + 24);
      }

      v26 = 0.0;
      if (_UISolariumEnabled())
      {
        v26 = *(a1 + 72) * 0.25;
      }

      v27 = _UISolariumEnabled();
      v28 = 1.0;
      if (v27)
      {
        v28 = 0.5;
      }

      [v8 setFrame:{v25, v26, 1.0, v28 * *(a1 + 72)}];
    }

    else
    {
      [v8 setHidden:1];
    }

    v7 = v29;
  }

  if ([v7 isActive])
  {
    if ([v5 isActive])
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    if ([v6 isActive])
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 | 8;
    }

    [v29 setRoundedEdges:v10];
  }

  v11 = [*(a1 + 32) traitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 6)
  {
    v13 = *(a1 + 72);
    v14 = [v29 collapsed];
    v15 = 1.0;
    if (v14)
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v16 = 72.0;
    }
  }

  else
  {
    [v29 sizeThatFits:{*(a1 + 64), *(a1 + 72)}];
    v18 = v17;
    v13 = *(a1 + 72);
    [v29 horizontalPadding];
    v20 = v19;
    v21 = [v29 collapsed];
    v15 = 1.0;
    if (v21)
    {
      v15 = 0.0;
      v16 = 0.0;
    }

    else
    {
      v16 = v18 + v20 + v20;
    }
  }

  [v29 setAlpha:v15];
  if (*(a1 + 80) == 1)
  {
    v22 = *(a1 + 64) - *(*(*(a1 + 40) + 8) + 24) - v16;
  }

  else
  {
    v22 = *(*(*(a1 + 40) + 8) + 24);
  }

  v23 = round(*(a1 + 56) + (*(a1 + 72) - v13) * 0.5);
  [*(a1 + 32) contentScaleFactor];
  [v29 setFrame:{UIRectIntegralWithScale(v22, v23, v16, v13, v24)}];
  [v29 layoutIfNeeded];
  v31.origin.x = v22;
  v31.origin.y = v23;
  v31.size.width = v16;
  v31.size.height = v13;
  *(*(*(a1 + 40) + 8) + 24) = CGRectGetWidth(v31) + *(*(*(a1 + 40) + 8) + 24);
}

void __69___UICursorAccessoryView__didRecognizeAccessoryTapGestureRecognizer___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v7 convertPoint:WeakRetained fromView:{*(a1 + 56), *(a1 + 64)}];
  if ([v7 pointInside:0 withEvent:?])
  {
    [*(a1 + 32) didTapToActivateAccessoryWithIdentifier:v11];
    v9 = [WeakRetained traitCollection];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 6)
    {
      [v7 setSelected:*(*(a1 + 40) + 576)];
    }

    *a4 = 1;
  }
}

void __38___UICursorAccessoryView_baseFontSize__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"UICTContentSizeCategoryXL";
  v2[1] = @"UICTContentSizeCategoryXXL";
  v3[0] = &unk_1EFE33010;
  v3[1] = &unk_1EFE33028;
  v2[2] = @"UICTContentSizeCategoryXXXL";
  v2[3] = @"UICTContentSizeCategoryAccessibilityM";
  v3[2] = &unk_1EFE33040;
  v3[3] = &unk_1EFE2EC08;
  v2[4] = @"UICTContentSizeCategoryAccessibilityL";
  v2[5] = @"UICTContentSizeCategoryAccessibilityXL";
  v3[4] = &unk_1EFE2EC08;
  v3[5] = &unk_1EFE2EC08;
  v2[6] = @"UICTContentSizeCategoryAccessibilityXXL";
  v2[7] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v3[6] = &unk_1EFE2EC08;
  v3[7] = &unk_1EFE2EC08;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = _MergedGlobals_7_5;
  _MergedGlobals_7_5 = v0;
}

void __41___UICursorAccessoryView_defaultItemSize__block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v6[0] = @"UICTContentSizeCategoryXL";
  v6[1] = @"UICTContentSizeCategoryXXL";
  v7[0] = &unk_1EFE2EC18;
  v7[1] = &unk_1EFE2EC28;
  v6[2] = @"UICTContentSizeCategoryXXXL";
  v6[3] = @"UICTContentSizeCategoryAccessibilityM";
  v7[2] = &unk_1EFE2EC38;
  v7[3] = &unk_1EFE2EC48;
  v6[4] = @"UICTContentSizeCategoryAccessibilityL";
  v6[5] = @"UICTContentSizeCategoryAccessibilityXL";
  v7[4] = &unk_1EFE2EC58;
  v7[5] = &unk_1EFE2EC58;
  v6[6] = @"UICTContentSizeCategoryAccessibilityXXL";
  v6[7] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v7[6] = &unk_1EFE2EC58;
  v7[7] = &unk_1EFE2EC58;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:8];
  v1 = qword_1ED49ACC0;
  qword_1ED49ACC0 = v0;

  v4[0] = @"UICTContentSizeCategoryXL";
  v4[1] = @"UICTContentSizeCategoryXXL";
  v5[0] = &unk_1EFE2EC18;
  v5[1] = &unk_1EFE2EC28;
  v4[2] = @"UICTContentSizeCategoryXXXL";
  v4[3] = @"UICTContentSizeCategoryAccessibilityM";
  v5[2] = &unk_1EFE2EC38;
  v5[3] = &unk_1EFE2EC68;
  v4[4] = @"UICTContentSizeCategoryAccessibilityL";
  v4[5] = @"UICTContentSizeCategoryAccessibilityXL";
  v5[4] = &unk_1EFE2EC68;
  v5[5] = &unk_1EFE2EC68;
  v4[6] = @"UICTContentSizeCategoryAccessibilityXXL";
  v4[7] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v5[6] = &unk_1EFE2EC68;
  v5[7] = &unk_1EFE2EC68;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:8];
  v3 = qword_1ED49ACC8;
  qword_1ED49ACC8 = v2;
}

void __39___UICursorAccessoryView_largeItemSize__block_invoke()
{
  v7[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"UICTContentSizeCategoryXXXL";
  v6[1] = @"UICTContentSizeCategoryAccessibilityM";
  v7[0] = &unk_1EFE33028;
  v7[1] = &unk_1EFE2EC78;
  v6[2] = @"UICTContentSizeCategoryAccessibilityL";
  v6[3] = @"UICTContentSizeCategoryAccessibilityXL";
  v7[2] = &unk_1EFE2EC78;
  v7[3] = &unk_1EFE2EC78;
  v6[4] = @"UICTContentSizeCategoryAccessibilityXXL";
  v6[5] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v7[4] = &unk_1EFE2EC78;
  v7[5] = &unk_1EFE2EC78;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:6];
  v1 = qword_1ED49ACD8;
  qword_1ED49ACD8 = v0;

  v4[0] = @"UICTContentSizeCategoryXXXL";
  v4[1] = @"UICTContentSizeCategoryAccessibilityM";
  v5[0] = &unk_1EFE33028;
  v5[1] = &unk_1EFE2EC48;
  v4[2] = @"UICTContentSizeCategoryAccessibilityL";
  v4[3] = @"UICTContentSizeCategoryAccessibilityXL";
  v5[2] = &unk_1EFE2EC48;
  v5[3] = &unk_1EFE2EC48;
  v4[4] = @"UICTContentSizeCategoryAccessibilityXXL";
  v4[5] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v5[4] = &unk_1EFE2EC48;
  v5[5] = &unk_1EFE2EC48;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];
  v3 = qword_1ED49ACE0;
  qword_1ED49ACE0 = v2;
}

@end