@interface SBUIInteractionForwardingView
- (NSSet)ignoreAlphaSubviews;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)addIgnoreAlphaSubview:(id)subview;
- (void)setIgnoreAlphaSubviews:(id)subviews;
@end

@implementation SBUIInteractionForwardingView

- (NSSet)ignoreAlphaSubviews
{
  ignoreAlphaSubviewsTable = self->_ignoreAlphaSubviewsTable;
  v3 = MEMORY[0x1E695DFD8];
  if (ignoreAlphaSubviewsTable)
  {
    allObjects = [(NSHashTable *)ignoreAlphaSubviewsTable allObjects];
    v5 = [v3 setWithArray:allObjects];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] set];
  }

  return v5;
}

- (void)setIgnoreAlphaSubviews:(id)subviews
{
  v17 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = subviewsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NSHashTable *)weakObjectsHashTable addObject:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  ignoreAlphaSubviewsTable = self->_ignoreAlphaSubviewsTable;
  self->_ignoreAlphaSubviewsTable = weakObjectsHashTable;
}

- (void)addIgnoreAlphaSubview:(id)subview
{
  subviewCopy = subview;
  ignoreAlphaSubviewsTable = self->_ignoreAlphaSubviewsTable;
  v8 = subviewCopy;
  if (!ignoreAlphaSubviewsTable)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_ignoreAlphaSubviewsTable;
    self->_ignoreAlphaSubviewsTable = weakObjectsHashTable;

    subviewCopy = v8;
    ignoreAlphaSubviewsTable = self->_ignoreAlphaSubviewsTable;
  }

  [(NSHashTable *)ignoreAlphaSubviewsTable addObject:subviewCopy];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v18.receiver = self;
  v18.super_class = SBUIInteractionForwardingView;
  v24 = [(SBUIInteractionForwardingView *)&v18 hitTest:eventCopy withEvent:x, y];
  v8 = v20[5];
  if (v8)
  {
    v9 = v8 == self;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    subviews = [(SBUIInteractionForwardingView *)self subviews];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__SBUIInteractionForwardingView_hitTest_withEvent___block_invoke;
    v13[3] = &unk_1E78A04F8;
    v13[4] = self;
    v16 = x;
    v17 = y;
    v14 = eventCopy;
    v15 = &v19;
    [subviews enumerateObjectsWithOptions:2 usingBlock:v13];

    v8 = v20[5];
  }

  v11 = v8;
  _Block_object_dispose(&v19, 8);

  return v11;
}

void __51__SBUIInteractionForwardingView_hitTest_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(*(a1 + 32) + 408) member:?];
  if (v7)
  {
    v8 = v7;
    if ([v11 isHidden])
    {
    }

    else
    {
      [v11 alpha];
      v10 = v9;

      if (v10 >= 0.01)
      {
        goto LABEL_7;
      }
    }

    [v11 convertPoint:*(a1 + 32) fromView:{*(a1 + 56), *(a1 + 64)}];
    if ([v11 pointInside:*(a1 + 40) withEvent:?])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }

LABEL_7:
}

@end