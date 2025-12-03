@interface _UISearchBarSearchPresentationTransitioner
- (void)animate;
- (void)cancel;
- (void)prepare;
@end

@implementation _UISearchBarSearchPresentationTransitioner

- (void)prepare
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UISearchBarSearchPresentationTransitioner;
  [(_UISearchBarTransitionerBase *)&v17 prepare];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout = [transitionContext fromLayout];
  toLayout = [transitionContext toLayout];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  representedLayoutState = [fromLayout representedLayoutState];
  if (has_internal_diagnostics)
  {
    if ((representedLayoutState - 1) > 1 || [toLayout representedLayoutState] != 3)
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v19 = fromLayout;
        v20 = 2112;
        v21 = toLayout;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
      }
    }
  }

  else if ((representedLayoutState - 1) > 1 || [toLayout representedLayoutState] != 3)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1017) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = fromLayout;
      v20 = 2112;
      v21 = toLayout;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
    }
  }

  searchBar = [(_UISearchBarTransitionerBase *)self searchBar];
  [searchBar layoutIfNeeded];

  hasScopeBar = [fromLayout hasScopeBar];
  hasScopeBar2 = [toLayout hasScopeBar];
  if (os_variant_has_internal_diagnostics())
  {
    if (((hasScopeBar ^ 1 | hasScopeBar2) & 1) == 0)
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unexpectedly transitioning from visible scope bar to hidden scope bar on search presentation. This is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (((hasScopeBar ^ 1 | hasScopeBar2) & 1) == 0)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CA60) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unexpectedly transitioning from visible scope bar to hidden scope bar on search presentation. This is a UIKit bug.", buf, 2u);
    }
  }

  if (fromLayout)
  {
    v11 = (fromLayout[113] & 6) != 0;
  }

  else
  {
    v11 = 0;
  }

  if (!((v11 || (hasScopeBar2 & 1) == 0) | hasScopeBar & 1))
  {
    scopeBarContainer = [toLayout scopeBarContainer];
    [scopeBarContainer setAlpha:0.0];
    [scopeBarContainer setHidden:0];
    [toLayout applyScopeContainerSublayout];
  }
}

- (void)animate
{
  v18.receiver = self;
  v18.super_class = _UISearchBarSearchPresentationTransitioner;
  [(_UISearchBarTransitionerBase *)&v18 animate];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout = [transitionContext fromLayout];
  toLayout = [transitionContext toLayout];
  hasCancelButton = [fromLayout hasCancelButton];
  hasCancelButton2 = [toLayout hasCancelButton];
  hasScopeBar = [fromLayout hasScopeBar];
  hasScopeBar2 = [toLayout hasScopeBar];
  v10 = hasCancelButton ^ hasCancelButton2;
  v11 = hasScopeBar ^ hasScopeBar2;
  if ((v10 & 1) != 0 || v11)
  {
    searchBar = [(_UISearchBarTransitionerBase *)self searchBar];
    [searchBar setNeedsLayout];

    if (v10)
    {
      searchFieldContainer = [toLayout searchFieldContainer];
      [searchFieldContainer setNeedsLayout];
    }

    if (v11)
    {
      scopeBarContainer = [toLayout scopeBarContainer];
      [scopeBarContainer setNeedsLayout];
    }
  }

  searchBar2 = [(_UISearchBarTransitionerBase *)self searchBar];
  [searchBar2 _updateEffectiveContentInset];
  [searchBar2 _effectiveContentInset];
  [toLayout setContentInset:?];
  [searchBar2 layoutIfNeeded];
  if (fromLayout)
  {
    hasScopeBar |= (fromLayout[113] & 6) != 0;
  }

  if (hasScopeBar2 & ~hasScopeBar)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53___UISearchBarSearchPresentationTransitioner_animate__block_invoke;
    v16[3] = &unk_1E70F3590;
    v17 = toLayout;
    [UIView animateKeyframesWithDuration:0 delay:v16 options:0 animations:0.0 completion:0.0];
  }
}

- (void)cancel
{
  v12.receiver = self;
  v12.super_class = _UISearchBarSearchPresentationTransitioner;
  [(_UISearchBarTransitionerBase *)&v12 cancel];
  transitionContext = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout = [transitionContext fromLayout];
  if (fromLayout)
  {
    v5 = fromLayout[28] & 0x600;

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  transitionContext2 = [(_UISearchBarTransitionerBase *)self transitionContext];
  fromLayout2 = [transitionContext2 fromLayout];
  hasScopeBar = [fromLayout2 hasScopeBar];
  toLayout = [transitionContext2 toLayout];
  hasScopeBar2 = [toLayout hasScopeBar];

  if (hasScopeBar2)
  {
    if ((hasScopeBar & 1) == 0)
    {
      scopeBarContainer = [fromLayout2 scopeBarContainer];
      [scopeBarContainer setAlpha:0.0];
    }
  }
}

@end