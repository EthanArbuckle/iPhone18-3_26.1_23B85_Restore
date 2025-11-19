@interface _UIViewLayoutEngineRelativeAlignmentRectOriginCache
- (BOOL)isValid;
- (CGPoint)origin;
- (NSISEngine)cacheEngine;
- (UIView)delegate;
- (_UIViewLayoutEngineRelativeAlignmentRectOriginCache)initWithDelegate:(id)a3;
@end

@implementation _UIViewLayoutEngineRelativeAlignmentRectOriginCache

- (CGPoint)origin
{
  v3 = [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)self isValid];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained _canBecomeLayoutEngineDelegate];
    p_cachedOrigin = &self->_cachedOrigin;
    p_y = &self->_cachedOrigin.y;
    if (v6)
    {
      p_y = (MEMORY[0x1E695EFF8] + 8);
      p_cachedOrigin = MEMORY[0x1E695EFF8];
    }

    x = p_cachedOrigin->x;
    v10 = *p_y;
    goto LABEL_11;
  }

  v11 = [WeakRetained _layoutEngine];

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v12 _layoutEngine];

    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 superview];

    v15 = [v14 _layoutEngine];

    if (v15 == v5)
    {
      v18 = [(UIView *)v14 _alignmentRectOriginCacheCreateIfNecessary:?];
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
    v22 = [v21 nsli_minXVariable];
    [v5 valueForVariable:v22];
    x = v16 + round(v23);

    v24 = objc_loadWeakRetained(&self->_delegate);
    v25 = [v24 nsli_minYVariable];
    [v5 valueForVariable:v25];
    v10 = v17 + round(v26);

    self->_cachedOrigin.x = x;
    self->_cachedOrigin.y = v10;
    [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)self setCacheEngine:v5];
    self->_variableChangeCount = [v5 variableChangeCount];

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
  v4 = [WeakRetained _layoutEngine];

  v5 = objc_loadWeakRetained(&self->_delegate);
  if ([v5 _canBecomeLayoutEngineDelegate])
  {
    v6 = 1;
  }

  else if (v4)
  {
    v7 = objc_loadWeakRetained(&self->_cacheEngine);
    if (v4 == v7)
    {
      v8 = objc_loadWeakRetained(&self->_cacheEngine);
      v9 = [v8 variableChangeCount];
      v6 = v9 == [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)self variableChangeCount];
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

- (_UIViewLayoutEngineRelativeAlignmentRectOriginCache)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIViewLayoutEngineRelativeAlignmentRectOriginCache;
  v5 = [(_UIViewLayoutEngineRelativeAlignmentRectOriginCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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