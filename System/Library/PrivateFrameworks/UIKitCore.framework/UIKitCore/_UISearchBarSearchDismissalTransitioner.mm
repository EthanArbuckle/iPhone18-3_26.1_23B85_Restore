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
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 fromLayout];
  v5 = [v3 toLayout];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = [v4 representedLayoutState];
  if (has_internal_diagnostics)
  {
    if (v7 != 3 || ([v5 representedLayoutState] - 1) >= 2)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = v5;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
      }
    }
  }

  else if (v7 != 3 || ([v5 representedLayoutState] - 1) >= 2)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1016) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
    }
  }

  v8 = os_variant_has_internal_diagnostics();
  v9 = [v5 hasScopeBar];
  if (v8)
  {
    if (v9 && ([v4 hasScopeBar] & 1) == 0)
    {
      v12 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Unexpectedly transitioning from hidden scope bar to visible scope bar on search dismissal. This is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (v9)
  {
    if (([v4 hasScopeBar] & 1) == 0)
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
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 fromLayout];
  v5 = [v3 toLayout];
  v6 = [v4 hasCancelButton];
  v7 = [v5 hasCancelButton];
  v8 = [v4 hasScopeBar];
  v9 = [v5 hasScopeBar];
  v10 = v9;
  if (v4)
  {
    v11 = (v4[113] & 6) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = v8 ^ v9;
  v13 = v11 & (v8 ^ v9);
  v14 = v6 ^ v7;
  if ((v14 & 1) != 0 || v13)
  {
    v15 = [(_UISearchBarTransitionerBase *)self searchBar];
    [v15 setNeedsLayout];

    if (v14)
    {
      v16 = [v5 searchFieldContainer];
      [v16 setNeedsLayout];
    }

    if (v12)
    {
      v17 = [v5 scopeBarContainer];
      [v17 setNeedsLayout];
    }
  }

  v18 = [(_UISearchBarTransitionerBase *)self searchBar];
  [v18 layoutIfNeeded];

  if (!(v10 & 1 | ((v13 & v8 & 1) == 0)))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50___UISearchBarSearchDismissalTransitioner_animate__block_invoke;
    v19[3] = &unk_1E70F3590;
    v20 = v5;
    [UIView animateKeyframesWithDuration:0 delay:v19 options:0 animations:0.0 completion:0.0];
  }
}

- (void)complete
{
  v13.receiver = self;
  v13.super_class = _UISearchBarSearchDismissalTransitioner;
  [(_UISearchBarTransitionerBase *)&v13 complete];
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 toLayout];
  if (v4)
  {
    v5 = v4[28] & 0x600;

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v7 = [v6 toLayout];
  v8 = [v7 hasScopeBar];
  v9 = [v6 fromLayout];
  v10 = [v9 hasScopeBar];

  if (v10)
  {
    if ((v8 & 1) == 0)
    {
      v11 = [(_UISearchBarTransitionerBase *)self searchBar];
      [v11 setNeedsLayout];

      v12 = [v7 scopeBarContainer];
      [v12 setNeedsLayout];
    }
  }
}

- (void)cancel
{
  v19.receiver = self;
  v19.super_class = _UISearchBarSearchDismissalTransitioner;
  [(_UISearchBarTransitionerBase *)&v19 cancel];
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 fromLayout];
  v5 = [v3 toLayout];
  v6 = [v5 hasCancelButton];
  v7 = [v4 hasCancelButton];
  v8 = [v3 toLayout];
  v9 = [v8 hasScopeBar];

  v10 = [v4 hasScopeBar];
  v11 = v10;
  if (v4)
  {
    v12 = (v4[113] & 6) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 & (v9 ^ v10);
  v14 = v6 ^ v7;
  if ((v14 & 1) != 0 || v13)
  {
    v15 = [(_UISearchBarTransitionerBase *)self searchBar];
    [v15 setNeedsLayout];

    if (v14)
    {
      v16 = [v5 searchFieldContainer];
      [v16 setNeedsLayout];
    }

    if (v13)
    {
      v17 = [v5 scopeBarContainer];
      [v17 setNeedsLayout];

      if (!(v9 & 1 | ((v11 & 1) == 0)))
      {
        v18 = [v4 scopeBarContainer];
        [v18 setAlpha:1.0];
      }
    }
  }
}

@end