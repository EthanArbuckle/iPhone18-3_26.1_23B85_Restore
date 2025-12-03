@interface _UIViewLayoutEngineRelativeAlignmentRectOriginCache
- (BOOL)isValid;
- (CGPoint)origin;
- (NSISEngine)cacheEngine;
- (UIView)delegate;
- (_UIViewLayoutEngineRelativeAlignmentRectOriginCache)initWithDelegate:(id)delegate;
@end

@implementation _UIViewLayoutEngineRelativeAlignmentRectOriginCache

- (CGPoint)origin
{
  isValid = [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)self isValid];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _layoutEngine2 = WeakRetained;
  if (isValid)
  {
    _canBecomeLayoutEngineDelegate = [WeakRetained _canBecomeLayoutEngineDelegate];
    p_cachedOrigin = &self->_cachedOrigin;
    p_y = &self->_cachedOrigin.y;
    if (_canBecomeLayoutEngineDelegate)
    {
      p_y = (MEMORY[0x1E695EFF8] + 8);
      p_cachedOrigin = MEMORY[0x1E695EFF8];
    }

    x = p_cachedOrigin->x;
    v10 = *p_y;
    goto LABEL_11;
  }

  _layoutEngine = [WeakRetained _layoutEngine];

  if (_layoutEngine)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    _layoutEngine2 = [v12 _layoutEngine];

    v13 = objc_loadWeakRetained(&self->_delegate);
    superview = [v13 superview];

    _layoutEngine3 = [superview _layoutEngine];

    if (_layoutEngine3 == _layoutEngine2)
    {
      v18 = [(UIView *)superview _alignmentRectOriginCacheCreateIfNecessary:?];
      [v18 origin];
      v16 = v19;
      v17 = v20;
    }

    else
    {
      v16 = *MEMORY[0x1E695EFF8];
      v17 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    nsli_minXVariable = [v21 nsli_minXVariable];
    [_layoutEngine2 valueForVariable:nsli_minXVariable];
    x = v16 + round(v23);

    v24 = objc_loadWeakRetained(&self->_delegate);
    nsli_minYVariable = [v24 nsli_minYVariable];
    [_layoutEngine2 valueForVariable:nsli_minYVariable];
    v10 = v17 + round(v26);

    self->_cachedOrigin.x = x;
    self->_cachedOrigin.y = v10;
    [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)self setCacheEngine:_layoutEngine2];
    self->_variableChangeCount = [_layoutEngine2 variableChangeCount];

LABEL_11:
    goto LABEL_12;
  }

  x = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
LABEL_12:
  v27 = x;
  v28 = v10;
  result.y = v28;
  result.x = v27;
  return result;
}

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  _layoutEngine = [WeakRetained _layoutEngine];

  v5 = objc_loadWeakRetained(&self->_delegate);
  if ([v5 _canBecomeLayoutEngineDelegate])
  {
    v6 = 1;
  }

  else if (_layoutEngine)
  {
    v7 = objc_loadWeakRetained(&self->_cacheEngine);
    if (_layoutEngine == v7)
    {
      v8 = objc_loadWeakRetained(&self->_cacheEngine);
      variableChangeCount = [v8 variableChangeCount];
      v6 = variableChangeCount == [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)self variableChangeCount];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_UIViewLayoutEngineRelativeAlignmentRectOriginCache)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UIViewLayoutEngineRelativeAlignmentRectOriginCache;
  v5 = [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (UIView)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSISEngine)cacheEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_cacheEngine);

  return WeakRetained;
}

@end