@interface _UIViewSystemSpacingInvalidationRecorder
- (NSArray)observingViews;
- (UIView)bottomView;
- (UIView)topView;
- (_UIViewSystemSpacingInvalidationRecorder)initWithTopView:(id)view bottomView:(id)bottomView;
- (id)_observingViewTable;
- (id)description;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)addObservingView:(id)view;
- (void)dealloc;
- (void)removeObservingView:(id)view;
@end

@implementation _UIViewSystemSpacingInvalidationRecorder

- (_UIViewSystemSpacingInvalidationRecorder)initWithTopView:(id)view bottomView:(id)bottomView
{
  viewCopy = view;
  bottomViewCopy = bottomView;
  v15.receiver = self;
  v15.super_class = _UIViewSystemSpacingInvalidationRecorder;
  v8 = [(_UIViewSystemSpacingInvalidationRecorder *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_topView, viewCopy);
    objc_storeWeak(&v9->_bottomView, bottomViewCopy);
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
    objectEnumerator = [(NSMapTable *)observingViewTable objectEnumerator];
    allObjects = [objectEnumerator allObjects];
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (id)_observingViewTable
{
  observingViewTable = self->_observingViewTable;
  if (!observingViewTable)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v5 = self->_observingViewTable;
    self->_observingViewTable = strongToWeakObjectsMapTable;

    observingViewTable = self->_observingViewTable;
  }

  return observingViewTable;
}

- (void)addObservingView:(id)view
{
  viewCopy = view;
  _observingViewTable = [(_UIViewSystemSpacingInvalidationRecorder *)self _observingViewTable];
  viewCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", viewCopy];
  [_observingViewTable setObject:viewCopy forKey:viewCopy];
}

- (void)removeObservingView:(id)view
{
  viewCopy = view;
  _existingObservingViewTable = [(_UIViewSystemSpacingInvalidationRecorder *)self _existingObservingViewTable];
  viewCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", viewCopy];

  [_existingObservingViewTable removeObjectForKey:viewCopy];
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  v19 = *MEMORY[0x1E69E9840];
  ancestorCopy = ancestor;
  if ((changed->var0 & 0x800) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    observingViews = [(_UIViewSystemSpacingInvalidationRecorder *)self observingViews];
    v8 = [observingViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(observingViews);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          superview = [ancestorCopy superview];

          if (v12 == superview)
          {
            [v12 setNeedsLayout];
            goto LABEL_12;
          }
        }

        v9 = [observingViews countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    topView = [(_UIViewSystemSpacingInvalidationRecorder *)self topView];
    bottomView = [(_UIViewSystemSpacingInvalidationRecorder *)self bottomView];
    v7 = [v3 stringByAppendingFormat:@" topView=%p bottomView=%p observingViews=%p", topView, bottomView, self->_observingViewTable];

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