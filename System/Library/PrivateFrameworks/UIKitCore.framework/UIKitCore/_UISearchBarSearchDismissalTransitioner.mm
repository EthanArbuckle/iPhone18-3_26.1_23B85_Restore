@interface _UISearchBarSearchDismissalTransitioner
- (void)animate;
- (void)cancel;
- (void)complete;
- (void)prepare;
@end

@implementation _UISearchBarSearchDismissalTransitioner

- (void)prepare
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UISearchBarSearchDismissalTransitioner;
  [(_UISearchBarTransitionerBase *)&v14 prepare];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout = [transitionContext fromLayout];
  toLayout = [transitionContext toLayout];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  representedLayoutState = [fromLayout representedLayoutState];
  if (has_internal_diagnostics)
  {
    if (representedLayoutState != 3 || ([toLayout representedLayoutState] - 1) >= 2)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v16 = fromLayout;
        v17 = 2112;
        v18 = toLayout;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
      }
    }
  }

  else if (representedLayoutState != 3 || ([toLayout representedLayoutState] - 1) >= 2)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1016) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = fromLayout;
      v17 = 2112;
      v18 = toLayout;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
    }
  }

  v8 = os_variant_has_internal_diagnostics();
  hasScopeBar = [toLayout hasScopeBar];
  if (v8)
  {
    if (hasScopeBar && ([fromLayout hasScopeBar] & 1) == 0)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unexpectedly transitioning from hidden scope bar to visible scope bar on search dismissal. This is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (hasScopeBar)
  {
    if (([fromLayout hasScopeBar] & 1) == 0)
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CA50) + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Unexpectedly transitioning from hidden scope bar to visible scope bar on search dismissal. This is a UIKit bug.", buf, 2u);
      }
    }
  }
}

- (void)animate
{
  v21.receiver = self;
  v21.super_class = _UISearchBarSearchDismissalTransitioner;
  [(_UISearchBarTransitionerBase *)&v21 animate];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout = [transitionContext fromLayout];
  toLayout = [transitionContext toLayout];
  hasCancelButton = [fromLayout hasCancelButton];
  hasCancelButton2 = [toLayout hasCancelButton];
  hasScopeBar = [fromLayout hasScopeBar];
  hasScopeBar2 = [toLayout hasScopeBar];
  v10 = hasScopeBar2;
  if (fromLayout)
  {
    v11 = (fromLayout[113] & 6) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = hasScopeBar ^ hasScopeBar2;
  v13 = v11 & (hasScopeBar ^ hasScopeBar2);
  v14 = hasCancelButton ^ hasCancelButton2;
  if ((v14 & 1) != 0 || v13)
  {
    searchBar = [(_UISearchBarTransitionerBase *)self searchBar];
    [searchBar setNeedsLayout];

    if (v14)
    {
      searchFieldContainer = [toLayout searchFieldContainer];
      [searchFieldContainer setNeedsLayout];
    }

    if (v12)
    {
      scopeBarContainer = [toLayout scopeBarContainer];
      [scopeBarContainer setNeedsLayout];
    }
  }

  searchBar2 = [(_UISearchBarTransitionerBase *)self searchBar];
  [searchBar2 layoutIfNeeded];

  if (!(v10 & 1 | ((v13 & hasScopeBar & 1) == 0)))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50___UISearchBarSearchDismissalTransitioner_animate__block_invoke;
    v19[3] = &unk_1E70F3590;
    v20 = toLayout;
    [UIView animateKeyframesWithDuration:0 delay:v19 options:0 animations:0.0 completion:0.0];
  }
}

- (void)complete
{
  v13.receiver = self;
  v13.super_class = _UISearchBarSearchDismissalTransitioner;
  [(_UISearchBarTransitionerBase *)&v13 complete];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  toLayout = [transitionContext toLayout];
  if (toLayout)
  {
    v5 = toLayout[28] & 0x600;

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  transitionContext2 = [(_UISearchBarTransitionerBase *)self transitionContext];
  toLayout2 = [transitionContext2 toLayout];
  hasScopeBar = [toLayout2 hasScopeBar];
  fromLayout = [transitionContext2 fromLayout];
  hasScopeBar2 = [fromLayout hasScopeBar];

  if (hasScopeBar2)
  {
    if ((hasScopeBar & 1) == 0)
    {
      searchBar = [(_UISearchBarTransitionerBase *)self searchBar];
      [searchBar setNeedsLayout];

      scopeBarContainer = [toLayout2 scopeBarContainer];
      [scopeBarContainer setNeedsLayout];
    }
  }
}

- (void)cancel
{
  v19.receiver = self;
  v19.super_class = _UISearchBarSearchDismissalTransitioner;
  [(_UISearchBarTransitionerBase *)&v19 cancel];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout = [transitionContext fromLayout];
  toLayout = [transitionContext toLayout];
  hasCancelButton = [toLayout hasCancelButton];
  hasCancelButton2 = [fromLayout hasCancelButton];
  toLayout2 = [transitionContext toLayout];
  hasScopeBar = [toLayout2 hasScopeBar];

  hasScopeBar2 = [fromLayout hasScopeBar];
  v11 = hasScopeBar2;
  if (fromLayout)
  {
    v12 = (fromLayout[113] & 6) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 & (hasScopeBar ^ hasScopeBar2);
  v14 = hasCancelButton ^ hasCancelButton2;
  if ((v14 & 1) != 0 || v13)
  {
    searchBar = [(_UISearchBarTransitionerBase *)self searchBar];
    [searchBar setNeedsLayout];

    if (v14)
    {
      searchFieldContainer = [toLayout searchFieldContainer];
      [searchFieldContainer setNeedsLayout];
    }

    if (v13)
    {
      scopeBarContainer = [toLayout scopeBarContainer];
      [scopeBarContainer setNeedsLayout];

      if (!(hasScopeBar & 1 | ((v11 & 1) == 0)))
      {
        scopeBarContainer2 = [fromLayout scopeBarContainer];
        [scopeBarContainer2 setAlpha:1.0];
      }
    }
  }
}

@end