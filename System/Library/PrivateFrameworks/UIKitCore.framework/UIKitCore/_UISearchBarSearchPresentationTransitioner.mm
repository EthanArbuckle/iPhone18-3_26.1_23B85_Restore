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
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 fromLayout];
  v5 = [v3 toLayout];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v7 = [v4 representedLayoutState];
  if (has_internal_diagnostics)
  {
    if ((v7 - 1) > 1 || [v5 representedLayoutState] != 3)
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v19 = v4;
        v20 = 2112;
        v21 = v5;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
      }
    }
  }

  else if ((v7 - 1) > 1 || [v5 representedLayoutState] != 3)
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1017) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = v4;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Incorrect transition object for transitioning from layout, %@, to layout, %@. This is a UIKit bug.", buf, 0x16u);
    }
  }

  v8 = [(_UISearchBarTransitionerBase *)self searchBar];
  [v8 layoutIfNeeded];

  v9 = [v4 hasScopeBar];
  v10 = [v5 hasScopeBar];
  if (os_variant_has_internal_diagnostics())
  {
    if (((v9 ^ 1 | v10) & 1) == 0)
    {
      v15 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Unexpectedly transitioning from visible scope bar to hidden scope bar on search presentation. This is a UIKit bug.", buf, 2u);
      }
    }
  }

  else if (((v9 ^ 1 | v10) & 1) == 0)
  {
    v16 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49CA60) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Unexpectedly transitioning from visible scope bar to hidden scope bar on search presentation. This is a UIKit bug.", buf, 2u);
    }
  }

  if (v4)
  {
    v11 = (v4[113] & 6) != 0;
  }

  else
  {
    v11 = 0;
  }

  if (!((v11 || (v10 & 1) == 0) | v9 & 1))
  {
    v12 = [v5 scopeBarContainer];
    [v12 setAlpha:0.0];
    [v12 setHidden:0];
    [v5 applyScopeContainerSublayout];
  }
}

- (void)animate
{
  v18.receiver = self;
  v18.super_class = _UISearchBarSearchPresentationTransitioner;
  [(_UISearchBarTransitionerBase *)&v18 animate];
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 fromLayout];
  v5 = [v3 toLayout];
  v6 = [v4 hasCancelButton];
  v7 = [v5 hasCancelButton];
  v8 = [v4 hasScopeBar];
  v9 = [v5 hasScopeBar];
  v10 = v6 ^ v7;
  v11 = v8 ^ v9;
  if ((v10 & 1) != 0 || v11)
  {
    v12 = [(_UISearchBarTransitionerBase *)self searchBar];
    [v12 setNeedsLayout];

    if (v10)
    {
      v13 = [v5 searchFieldContainer];
      [v13 setNeedsLayout];
    }

    if (v11)
    {
      v14 = [v5 scopeBarContainer];
      [v14 setNeedsLayout];
    }
  }

  v15 = [(_UISearchBarTransitionerBase *)self searchBar];
  [v15 _updateEffectiveContentInset];
  [v15 _effectiveContentInset];
  [v5 setContentInset:?];
  [v15 layoutIfNeeded];
  if (v4)
  {
    v8 |= (v4[113] & 6) != 0;
  }

  if (v9 & ~v8)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53___UISearchBarSearchPresentationTransitioner_animate__block_invoke;
    v16[3] = &unk_1E70F3590;
    v17 = v5;
    [UIView animateKeyframesWithDuration:0 delay:v16 options:0 animations:0.0 completion:0.0];
  }
}

- (void)cancel
{
  v12.receiver = self;
  v12.super_class = _UISearchBarSearchPresentationTransitioner;
  [(_UISearchBarTransitionerBase *)&v12 cancel];
  v3 = [(_UISearchBarTransitionerBase *)self transitionContext];
  v4 = [v3 fromLayout];
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
  v7 = [v6 fromLayout];
  v8 = [v7 hasScopeBar];
  v9 = [v6 toLayout];
  v10 = [v9 hasScopeBar];

  if (v10)
  {
    if ((v8 & 1) == 0)
    {
      v11 = [v7 scopeBarContainer];
      [v11 setAlpha:0.0];
    }
  }
}

@end