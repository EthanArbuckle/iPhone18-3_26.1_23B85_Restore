@interface PXStoryScrollContentLayout
- (CGPoint)_scrollOffsetForVisibleRectOrigin:(CGPoint)a3;
- (CGPoint)_scrollOffsetFromVisibleRect;
- (CGPoint)_visibleRectOriginForScrollOffset:(CGPoint)a3;
- (CGPoint)scrollOffset;
- (PXStoryScrollContentLayout)init;
- (PXStoryScrollContentLayoutDelegate)delegate;
- (UIEdgeInsets)scrollableOutsets;
- (void)_invalidateContentSize;
- (void)_setScrollOffset:(CGPoint)a3 updateScrollPosition:(BOOL)a4;
- (void)_updateContentSize;
- (void)referenceSizeDidChange;
- (void)setDelegate:(id)a3;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation PXStoryScrollContentLayout

- (PXStoryScrollContentLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)scrollOffset
{
  x = self->_scrollOffset.x;
  y = self->_scrollOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)scrollableOutsets
{
  top = self->_scrollableOutsets.top;
  left = self->_scrollableOutsets.left;
  bottom = self->_scrollableOutsets.bottom;
  right = self->_scrollableOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateContentSize
{
  [(PXStoryScrollContentLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  [(PXStoryScrollContentLayout *)self scrollableOutsets];
  v11 = v4 + v9 + v10;

  [(PXStoryScrollContentLayout *)self setContentSize:v11, v6 + v7 + v8];
}

- (void)_invalidateContentSize
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollContentLayout _invalidateContentSize]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryScrollContentLayout.m" lineNumber:128 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryScrollContentLayout *)self setNeedsUpdate];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollContentLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXStoryScrollContentLayout.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryScrollContentLayout *)self _updateContentSize];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollContentLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXStoryScrollContentLayout.m" lineNumber:123 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXStoryScrollContentLayout;
  [(PXStoryScrollContentLayout *)&v9 update];
}

- (CGPoint)_scrollOffsetForVisibleRectOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXStoryScrollContentLayout *)self scrollableOutsets];
  v6 = x - v5;
  v7 = y - v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)_visibleRectOriginForScrollOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXStoryScrollContentLayout *)self scrollableOutsets];
  v6 = x + v5;
  v7 = y + v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_setScrollOffset:(CGPoint)a3 updateScrollPosition:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if (a3.x != self->_scrollOffset.x || a3.y != self->_scrollOffset.y)
  {
    self->_scrollOffset = a3;
    if (self->_delegateRespondsTo.scrollOffsetDidChange)
    {
      v9 = [(PXStoryScrollContentLayout *)self delegate];
      [v9 scrollContentLayoutScrollOffsetDidChange:self];
    }
  }

  if (v4)
  {
    [(PXStoryScrollContentLayout *)self _scrollOffsetFromVisibleRect];
    if (x != v11 || y != v10)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __68__PXStoryScrollContentLayout__setScrollOffset_updateScrollPosition___block_invoke;
      v19[3] = &unk_1E77353F0;
      v19[4] = self;
      *&v19[5] = x;
      *&v19[6] = y;
      [(PXStoryScrollContentLayout *)self modifySpritesInRange:0x100000000 fullState:v19];
      [(PXStoryScrollContentLayout *)self scrollableOutsets];
      v17 = [(PXStoryScrollContentLayout *)self createAnchorForScrollingSpriteAtIndex:0 toScrollPosition:(fmax(v15 padding:v16) > 0.0) | (8 * (fmax(v13, v14) > 0.0)), *off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
      v18 = [v17 autoInvalidate];
    }
  }
}

- (CGPoint)_scrollOffsetFromVisibleRect
{
  [(PXStoryScrollContentLayout *)self visibleRect];

  [(PXStoryScrollContentLayout *)self _scrollOffsetForVisibleRectOrigin:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrollContentLayout;
  [(PXStoryScrollContentLayout *)&v3 visibleRectDidChange];
  [(PXStoryScrollContentLayout *)self _scrollOffsetFromVisibleRect];
  [(PXStoryScrollContentLayout *)self _setScrollOffset:0 updateScrollPosition:?];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrollContentLayout;
  [(PXStoryScrollContentLayout *)&v3 referenceSizeDidChange];
  [(PXStoryScrollContentLayout *)self _invalidateContentSize];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.scrollOffsetDidChange = objc_opt_respondsToSelector() & 1;
  }
}

- (PXStoryScrollContentLayout)init
{
  v5.receiver = self;
  v5.super_class = PXStoryScrollContentLayout;
  v2 = [(PXStoryScrollContentLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXStoryScrollContentLayout *)v2 addSpriteWithInitialState:0];
  }

  return v3;
}

@end