@interface _UIVisualEffectBackingFakeView
- (UIView)clientView;
- (_UIVisualEffectBackingFakeView)initWithClientView:(id)a3;
- (uint64_t)_clientViewShouldBeOptedOutOfViewEffects;
- (void)_receiveVisitor:(id)a3;
- (void)applyIdentityFilterEffects;
- (void)applyIdentityViewEffects;
- (void)applyRequestedFilterEffects;
- (void)applyRequestedViewEffects;
- (void)setFilters:(id)a3;
- (void)setViewEffects:(id)a3;
@end

@implementation _UIVisualEffectBackingFakeView

- (UIView)clientView
{
  WeakRetained = objc_loadWeakRetained(&self->_clientView);

  return WeakRetained;
}

- (uint64_t)_clientViewShouldBeOptedOutOfViewEffects
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 440));
    v2 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)applyRequestedViewEffects
{
  if (([(_UIVisualEffectBackingFakeView *)self _clientViewShouldBeOptedOutOfViewEffects]& 1) == 0)
  {
    v3 = [(_UIVisualEffectBackingFakeView *)self clientView];
    _UIVisualEffectSubviewApplyViewEffects(v3, self->_viewEffects, 1);
  }
}

- (void)applyRequestedFilterEffects
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(_UIVisualEffectBackingFakeView *)self clientView];
  v4 = [(UIView *)v3 _backing_outermostLayer];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_filters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 valueAsRequested:{1, v13}];
        v12 = [v10 filterName];
        _UIVisualEffectSubviewApplyFilterValues(v4, v11, v12);
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (_UIVisualEffectBackingFakeView)initWithClientView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIVisualEffectBackingFakeView;
  v5 = [(UIView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_clientView, v4);
  }

  return v6;
}

- (void)setViewEffects:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  viewEffects = self->_viewEffects;
  v6 = MEMORY[0x1E695E0F0];
  if (!viewEffects)
  {
    viewEffects = MEMORY[0x1E695E0F0];
  }

  v7 = viewEffects;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  if ([(_UIVisualEffectBackingFakeView *)self _clientViewShouldBeOptedOutOfViewEffects])
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_293];
    v11 = [v9 filteredArrayUsingPredicate:v10];

    v9 = v11;
  }

  if (![(NSArray *)v7 isEqualToArray:v9])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = v7;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = [(_UIVisualEffectBackingFakeView *)self clientView];
          [v17 removeEffectFromView:v18];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v28 + 1) + 8 * j);
          v25 = [(_UIVisualEffectBackingFakeView *)self clientView];
          [v24 addEffectToView:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v21);
    }

    v26 = [v19 copy];
    v27 = self->_viewEffects;
    self->_viewEffects = v26;
  }
}

- (void)setFilters:(id)a3
{
  v8 = a3;
  if (![(NSArray *)self->_filters isEqualToArray:?])
  {
    objc_storeStrong(&self->_filters, a3);
    v5 = _UIVisualEffectSubviewConvertToCAFilterArray(v8);
    v6 = [(_UIVisualEffectBackingFakeView *)self clientView];
    v7 = [(UIView *)v6 _backing_outermostLayer];
    [v7 setFilters:v5];
  }
}

- (void)applyIdentityFilterEffects
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(_UIVisualEffectBackingFakeView *)self clientView];
  v4 = [(UIView *)v3 _backing_outermostLayer];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_filters;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 valueAsRequested:{0, v13}];
        v12 = [v10 filterName];
        _UIVisualEffectSubviewApplyFilterValues(v4, v11, v12);
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)applyIdentityViewEffects
{
  if (([(_UIVisualEffectBackingFakeView *)self _clientViewShouldBeOptedOutOfViewEffects]& 1) == 0)
  {
    v3 = [(_UIVisualEffectBackingFakeView *)self clientView];
    _UIVisualEffectSubviewApplyViewEffects(v3, self->_viewEffects, 0);
  }
}

- (void)_receiveVisitor:(id)a3
{
  v4 = a3;
  v5 = [(_UIVisualEffectBackingFakeView *)self clientView];
  [_UIViewVisitor _startTraversalOfVisitor:v4 withView:v5];
}

@end