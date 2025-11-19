@interface UIStatusBarLockItem
@end

@implementation UIStatusBarLockItem

void __50___UIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50___UIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke_2;
    v5[3] = &unk_1E7106478;
    v5[4] = *(a1 + 32);
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:1.0];
    [*(a1 + 32) setLockDisappearanceTimer:v3];
  }

  else
  {
    [*(a1 + 32) setShowsLock:0];
    v4 = [*(a1 + 32) statusBar];
    [v4 updateWithAnimations:MEMORY[0x1E695E0F0]];
  }
}

void __50___UIStatusBarLockItem_applyUpdate_toDisplayItem___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setShowsLock:0];
  v2 = [*(a1 + 32) statusBar];
  [v2 updateWithAnimations:MEMORY[0x1E695E0F0]];
}

void __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) statusBar];
  v9 = [v8 styleAttributes];
  v10 = [v9 effectiveLayoutDirection];

  [v6 absoluteFrame];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v15 = CGRectGetWidth(v34) * 0.5;
  v16 = -v15;
  if (v10 == 1)
  {
    v16 = v15;
  }

  v17 = x + v16;
  [v6 setFloating:1];
  [v6 setAbsoluteFrame:{v17, y, width, height}];
  v18 = *(a1 + 32);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_2;
  v28[3] = &unk_1E70F3B20;
  v29 = v6;
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_3;
  v26 = &unk_1E70F3608;
  v27 = v7;
  v19 = v7;
  v20 = v6;
  [UIView _animateWithDuration:0 delay:v18 options:v28 factory:&v23 animations:0.91 completion:0.0];
  v21 = [*(a1 + 32) stringView];
  [v21 setExpandsFromLeftToRight:v10 == 1];

  v22 = [*(a1 + 32) stringView];
  [v22 animateCompletionBlock:0];
}

uint64_t __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAbsoluteFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setFloating:0];
}

void __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [v6 absoluteFrame];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (!CGRectEqualToRect(v19, *(a1 + 40)))
  {
    [v6 setFloating:1];
    [v6 setAbsoluteFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_5;
    v13[3] = &unk_1E70F3B20;
    v14 = v6;
    v15 = x;
    v16 = y;
    v17 = width;
    v18 = height;
    [UIView _animateWithDuration:0 delay:v12 options:v13 factory:v7 animations:0.91 completion:0.0];
  }
}

uint64_t __70___UIStatusBarLockItem_additionAnimationForDisplayItemWithIdentifier___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAbsoluteFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setFloating:0];
}

@end