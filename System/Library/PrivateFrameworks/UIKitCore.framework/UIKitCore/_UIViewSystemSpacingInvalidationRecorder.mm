@interface _UIViewSystemSpacingInvalidationRecorder
- (NSArray)observingViews;
- (UIView)bottomView;
- (UIView)topView;
- (_UIViewSystemSpacingInvalidationRecorder)initWithTopView:(id)a3 bottomView:(id)a4;
- (id)_observingViewTable;
- (id)description;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)addObservingView:(id)a3;
- (void)dealloc;
- (void)removeObservingView:(id)a3;
@end

@implementation _UIViewSystemSpacingInvalidationRecorder

- (_UIViewSystemSpacingInvalidationRecorder)initWithTopView:(id)a3 bottomView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _UIViewSystemSpacingInvalidationRecorder;
  v8 = [(_UIViewSystemSpacingInvalidationRecorder *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_topView, v6);
    objc_storeWeak(&v9->_bottomView, v7);
    WeakRetained = objc_loadWeakRetained(&v9->_topView);
    [(UIView *)WeakRetained _addGeometryChangeObserver:v9];

    v11 = objc_loadWeakRetained(&v9->_bottomView);
    [(UIView *)v11 _addGeometryChangeObserver:v9];

    v12 = objc_loadWeakRetained(&v9->_topView);
    [v12 _setShouldNotifyGeometryObserversForBaselineChanges:1];

    v13 = objc_loadWeakRetained(&v9->_bottomView);
    [v13 _setShouldNotifyGeometryObserversForBaselineChanges:1];
  }

  return v9;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_topView);
  [(UIView *)WeakRetained _removeGeometryChangeObserver:?];

  v4 = objc_loadWeakRetained(&self->_bottomView);
  [(UIView *)v4 _removeGeometryChangeObserver:?];

  v5.receiver = self;
  v5.super_class = _UIViewSystemSpacingInvalidationRecorder;
  [(_UIViewSystemSpacingInvalidationRecorder *)&v5 dealloc];
}

- (NSArray)observingViews
{
  observingViewTable = self->_observingViewTable;
  if (observingViewTable)
  {
    v3 = [(NSMapTable *)observingViewTable objectEnumerator];
    v4 = [v3 allObjects];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_observingViewTable
{
  observingViewTable = self->_observingViewTable;
  if (!observingViewTable)
  {
    v4 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v5 = self->_observingViewTable;
    self->_observingViewTable = v4;

    observingViewTable = self->_observingViewTable;
  }

  return observingViewTable;
}

- (void)addObservingView:(id)a3
{
  v4 = a3;
  v6 = [(_UIViewSystemSpacingInvalidationRecorder *)self _observingViewTable];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v4];
  [v6 setObject:v4 forKey:v5];
}

- (void)removeObservingView:(id)a3
{
  v4 = a3;
  v6 = [(_UIViewSystemSpacingInvalidationRecorder *)self _existingObservingViewTable];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v4];

  [v6 removeObjectForKey:v5];
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((a3->var0 & 0x800) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(_UIViewSystemSpacingInvalidationRecorder *)self observingViews];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [v6 superview];

          if (v12 == v13)
          {
            [v12 setNeedsLayout];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _UIViewSystemSpacingInvalidationRecorder;
  v3 = [(_UIViewSystemSpacingInvalidationRecorder *)&v8 description];
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [(_UIViewSystemSpacingInvalidationRecorder *)self topView];
    v6 = [(_UIViewSystemSpacingInvalidationRecorder *)self bottomView];
    v7 = [v3 stringByAppendingFormat:@" topView=%p bottomView=%p observingViews=%p", v5, v6, self->_observingViewTable];

    v3 = v7;
  }

  return v3;
}

- (UIView)topView
{
  WeakRetained = objc_loadWeakRetained(&self->_topView);

  return WeakRetained;
}

- (UIView)bottomView
{
  WeakRetained = objc_loadWeakRetained(&self->_bottomView);

  return WeakRetained;
}

@end