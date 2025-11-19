@interface NSObject(AXAutoscrolling)
- (BOOL)_accessibilityScrollToBottom;
- (BOOL)_accessibilityScrollToTop;
- (char)_scrollPageSelectorForAutoscrollDirection:()AXAutoscrolling;
- (id)_accessibilityAutoscrollTarget;
- (id)_accessibilityGetAllScrollViews;
- (uint64_t)_accessibilityAutoscrollInDirection:()AXAutoscrolling;
- (uint64_t)_accessibilityAvailableAutoscrollDirections;
- (uint64_t)_accessibilityIsAutoscrolling;
- (void)_accessibilityAutoscrollScrollToBottom;
- (void)_accessibilityAutoscrollScrollToTop;
- (void)_accessibilityDecreaseAutoscrollSpeed;
- (void)_accessibilityIncreaseAutoscrollSpeed;
- (void)_accessibilityPauseAutoscrolling;
- (void)_accessibilitySetAutoscrollSpeed:()AXAutoscrolling;
- (void)_accessibilitySetAutoscrollTarget:()AXAutoscrolling;
@end

@implementation NSObject(AXAutoscrolling)

- (void)_accessibilitySetAutoscrollTarget:()AXAutoscrolling
{
  v10 = a3;
  v4 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v5 = [v4 scrollDirection];

  v6 = [v10 _accessibilityScrollAncestorForSelector:{objc_msgSend(a1, "_scrollPageSelectorForAutoscrollDirection:", v5)}];
  if (!v6)
  {
    v6 = v10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_10;
  }

  if (v6 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 performSelector:sel__scroller];

      v6 = v7;
    }
  }

  else
  {
    v6 = [v10 performSelector:sel__scroller];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_10:
    v8 = +[UIAccessibilityAutoscrollManager sharedInstance];
    [v8 setScrollView:v6];

    v9 = +[UIAccessibilityAutoscrollManager sharedInstance];
    [v9 setTargetToScroll:v10];
  }

  else
  {
    _AXLogWithFacility();
  }
}

- (char)_scrollPageSelectorForAutoscrollDirection:()AXAutoscrolling
{
  v3 = __ROR8__(a3 - 2, 1);
  v4 = &selRef_accessibilityScrollDownPage;
  if (!v3)
  {
    v4 = &selRef_accessibilityScrollUpPage;
  }

  if (v3 == 3)
  {
    v4 = &selRef_accessibilityScrollRightPage;
  }

  if (v3 == 7)
  {
    v5 = &selRef_accessibilityScrollLeftPage;
  }

  else
  {
    v5 = v4;
  }

  return *v5;
}

- (id)_accessibilityAutoscrollTarget
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v1 = [v0 scrollView];

  return v1;
}

- (uint64_t)_accessibilityAvailableAutoscrollDirections
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v1 = [v0 availableAutoscrollDirections];

  return v1;
}

- (uint64_t)_accessibilityIsAutoscrolling
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v1 = [v0 isAutoscrolling];

  return v1;
}

- (uint64_t)_accessibilityAutoscrollInDirection:()AXAutoscrolling
{
  v5 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v6 = [v5 scrollDirection];

  if (v6 != a3)
  {
    v7 = +[UIAccessibilityAutoscrollManager sharedInstance];
    [v7 setScrollDirection:a3];

    v8 = +[UIAccessibilityAutoscrollManager sharedInstance];
    v9 = [v8 targetToScroll];
    [a1 _accessibilitySetAutoscrollTarget:v9];
  }

  v10 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v11 = [v10 autoscrollInDirection:a3];

  if (v11)
  {
    return 1;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v13 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v14 = [v13 targetToScroll];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__NSObject_AXAutoscrolling___accessibilityAutoscrollInDirection___block_invoke;
  v19[3] = &unk_1E78AAE38;
  v19[4] = a1;
  v19[5] = &v20;
  [v14 _accessibilityIterateScrollParentsUsingBlock:v19];

  v15 = v21[5];
  if (v15)
  {
    v16 = +[UIAccessibilityAutoscrollManager sharedInstance];
    [v16 setScrollView:v15];

    v17 = +[UIAccessibilityAutoscrollManager sharedInstance];
    v12 = [v17 autoscrollInDirection:a3];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v12;
}

- (void)_accessibilityPauseAutoscrolling
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  [v0 pause];
}

- (void)_accessibilityIncreaseAutoscrollSpeed
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  [v0 incrementAutoscrollSpeed];
}

- (void)_accessibilityDecreaseAutoscrollSpeed
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  [v0 decrementAutoscrollSpeed];
}

- (void)_accessibilitySetAutoscrollSpeed:()AXAutoscrolling
{
  v2 = +[UIAccessibilityAutoscrollManager sharedInstance];
  [v2 setAutoscrollSpeed:a1];
}

- (id)_accessibilityGetAllScrollViews
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[UIAccessibilityElementTraversalOptions options];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__NSObject_AXAutoscrolling___accessibilityGetAllScrollViews__block_invoke;
  v9[3] = &unk_1E78AA760;
  v10 = v2;
  v4 = v2;
  [v3 setLeafNodePredicate:v9];
  v5 = [a1 _accessibilityLeafDescendantsWithCount:0 options:v3];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v4];
  v7 = [v6 allObjects];

  return v7;
}

- (BOOL)_accessibilityScrollToTop
{
  v1 = [a1 _accessibilityScrollAncestor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 adjustedContentInset];
    [v1 accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:{0.0, -v2}];
    v7 = v1;
    AXPerformBlockOnMainThreadAfterDelay();
    [v7 contentOffset];
    v5 = v4 == *(MEMORY[0x1E695EFF8] + 8) && v3 == *MEMORY[0x1E695EFF8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_accessibilityScrollToBottom
{
  v1 = [a1 _accessibilityScrollAncestor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 contentSize];
    v3 = v2;
    v5 = v4;
    [v1 visibleBounds];
    if (v5 <= v7)
    {
      v8 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else
    {
      v8 = v5 - v7;
    }

    if (v3 <= v6)
    {
      v9 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v9 = v3 - v6;
    }

    [v1 accessibilityApplyScrollContent:0 sendScrollStatus:0 animated:{v9, v8}];
    v14 = v1;
    AXPerformBlockOnMainThreadAfterDelay();
    [v14 contentOffset];
    v12 = v11 == v8 && v10 == v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_accessibilityAutoscrollScrollToTop
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  v1 = [v0 scrollView];

  if (v1)
  {
    v2 = +[UIAccessibilityAutoscrollManager sharedInstance];
    [v2 scrollToTop];
  }

  else
  {
    AXPerformSafeBlock();
  }
}

- (void)_accessibilityAutoscrollScrollToBottom
{
  v0 = +[UIAccessibilityAutoscrollManager sharedInstance];
  [v0 scrollToBottom];
}

@end