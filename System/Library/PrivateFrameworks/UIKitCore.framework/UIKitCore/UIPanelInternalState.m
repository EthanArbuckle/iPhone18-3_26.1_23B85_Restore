@interface UIPanelInternalState
@end

@implementation UIPanelInternalState

void __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(UISlidingBarState);
  v4 = [*(a1 + 32) configuration];
  v5 = [v4 copy];
  [(UISlidingBarState *)v6 setConfiguration:v5];

  -[UISlidingBarState _setCollapsedState:](v6, "_setCollapsedState:", [*(a1 + 32) collapsedState]);
  v3[2](v3, v6);

  if ([(UISlidingBarState *)v6 leadingOverlapsMain]&& UIKeyboardAutomaticIsOnScreen())
  {
    [*(a1 + 32) keyboardAdjustment];
    [(UISlidingBarState *)v6 set_keyboardAdjustment:?];
  }

  [*(a1 + 40) addObject:v6];
}

id __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a2)
  {
    v8 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v19 + 1) + 8 * i) doubleValue];
          UIRoundToViewScale(*(a1 + 32));
          if (v14 > 0.0)
          {
            v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    if (a4)
    {
      v16 = [&unk_1EFE2BB30 arrayByAddingObjectsFromArray:v8];
    }

    else
    {
      v16 = v8;
    }

    v17 = v16;
  }

  else
  {
    v17 = &unk_1EFE2BB18;
  }

  return v17;
}

uint64_t __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_203(uint64_t result, double a2, double a3)
{
  v4 = result;
  if (a2 > 0.0)
  {
    v5 = *(result + 32);
    [*(result + 40) _currentScreenScale];
    result = [v5 leadingBorderWidthForScale:?];
  }

  if (a3 > 0.0)
  {
    v6 = *(v4 + 32);
    [*(v4 + 40) _currentScreenScale];
    return [v6 trailingBorderWidthForScale:?];
  }

  return result;
}

double __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_2_205(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v9 + 1) + 8 * i) doubleValue];
        if (v7 > 0.0)
        {
          v3 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void __84___UIPanelInternalState_computePossibleStatesGivenParentView_withSize_forceOverlay___block_invoke_210(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLeadingWidth:*(a1 + 32)];
  [v3 setTrailingWidth:*(a1 + 40)];
  [v3 setSupplementaryWidth:*(a1 + 48)];
  [v3 setMainWidth:*(a1 + 56)];
  if ((*(a1 + 88) & 1) == 0)
  {
    [v3 _setLeadingOverlayWidth:*(a1 + 32) - *(a1 + 64)];
    [v3 _setTrailingOverlayWidth:*(a1 + 40) - *(a1 + 72)];
    [v3 _setSupplementaryOverlayWidth:*(a1 + 48) - *(a1 + 80)];
  }
}

@end