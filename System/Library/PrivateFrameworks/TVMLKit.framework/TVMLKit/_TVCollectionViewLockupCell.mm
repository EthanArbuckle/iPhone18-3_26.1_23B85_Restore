@interface _TVCollectionViewLockupCell
- (BOOL)_isFocusedOrParentOfFocusedHierarchyAndSelectingViewIsPoster;
- (TVCollectionViewLockupCellDelegate)delegate;
- (UIEdgeInsets)_additionalFocusableContentInsets;
- (UIEdgeInsets)_focusableContentMargins;
- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size;
- (_TVCollectionViewLockupCell)initWithFrame:(CGRect)frame;
- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context;
- (id)_selectingView;
- (id)focusItemsInRect:(CGRect)rect;
- (id)layeredImageContainerLayer;
- (void)_handleSelect;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)prepareForReuse;
- (void)setDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _TVCollectionViewLockupCell

- (_TVCollectionViewLockupCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVCollectionViewLockupCell;
  v3 = [(TVContainerCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handleSelect];
    [v4 setAllowedPressTypes:&unk_287E48690];
    [v4 setCancelsTouchesInView:0];
    [(_TVCollectionViewLockupCell *)v3 addGestureRecognizer:v4];
  }

  return v3;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    self->_delegateFlags.respondsToDidUnfocus = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateFlags.respondsToDidSelect = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_delegate);
    p_delegateFlags->respondsToLayeredImageContainerLayerWithinCollectionViewCell = objc_opt_respondsToSelector() & 1;
  }
}

- (BOOL)_isFocusedOrParentOfFocusedHierarchyAndSelectingViewIsPoster
{
  v3 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  focusedItem = [v3 focusedItem];
  if (focusedItem && ([(_TVCollectionViewLockupCell *)self _selectingView], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0))
  {
    if (focusedItem == self)
    {
      v9 = 1;
    }

    else
    {
      v7 = MEMORY[0x277D75518];
      _selectingView = [(_TVCollectionViewLockupCell *)self _selectingView];
      v9 = [v7 environment:_selectingView containsEnvironment:focusedItem];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  if ([(_TVCollectionViewLockupCell *)self _isFocusedOrParentOfFocusedHierarchyAndSelectingViewIsPoster])
  {
    _selectingView = [(_TVCollectionViewLockupCell *)self _selectingView];
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    preferredFocusEnvironments = [_selectingView preferredFocusEnvironments];
    v11 = [preferredFocusEnvironments countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(preferredFocusEnvironments);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:v15];
          }
        }

        v12 = [preferredFocusEnvironments countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = _TVCollectionViewLockupCell;
    array = [(_TVCollectionViewLockupCell *)&v21 focusItemsInRect:x, y, width, height];
  }

  return array;
}

- (UIEdgeInsets)_additionalFocusableContentInsets
{
  if (![(_TVCollectionViewLockupCell *)self _isFocusedOrParentOfFocusedHierarchyAndSelectingViewIsPoster])
  {
    goto LABEL_6;
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  _selectingView = [(_TVCollectionViewLockupCell *)self _selectingView];
  v4 = _selectingView;
  if (_selectingView)
  {
    [_selectingView cellMetrics];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  [(_TVCollectionViewLockupCell *)self bounds];
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v9 = v28.origin.x + *(&v26 + 1);
  v10 = v28.origin.y + *&v26;
  v38.origin.x = v28.origin.x + *(&v26 + 1);
  v38.origin.y = v28.origin.y + *&v26;
  v38.size.width = *&v25 - (*(&v26 + 1) + *(&v27 + 1));
  v38.size.height = *(&v25 + 1) - (*&v26 + *&v27);
  if (!CGRectEqualToRect(v28, v38))
  {
    v29.origin.x = v9;
    v29.origin.y = v10;
    v29.size.width = *&v25 - (*(&v26 + 1) + *(&v27 + 1));
    v29.size.height = *(&v25 + 1) - (*&v26 + *&v27);
    MinY = CGRectGetMinY(v29);
    v30.size.height = height;
    rect = height;
    v16 = MinY;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v23 = v16 - CGRectGetMinY(v30);
    v31.origin.x = v9;
    v31.origin.y = v10;
    v31.size.width = *&v25 - (*(&v26 + 1) + *(&v27 + 1));
    v31.size.height = *(&v25 + 1) - (*&v26 + *&v27);
    MinX = CGRectGetMinX(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = rect;
    v12 = MinX - CGRectGetMinX(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = rect;
    v22 = width;
    MaxY = CGRectGetMaxY(v33);
    v34.origin.x = v9;
    v34.origin.y = v10;
    v34.size.width = *&v25 - (*(&v26 + 1) + *(&v27 + 1));
    v34.size.height = *(&v25 + 1) - (*&v26 + *&v27);
    v14 = MaxY - CGRectGetMaxY(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = v22;
    v35.size.height = rect;
    MaxX = CGRectGetMaxX(v35);
    v36.origin.x = v9;
    v36.origin.y = v10;
    v36.size.width = *&v25 - (*(&v26 + 1) + *(&v27 + 1));
    v36.size.height = *(&v25 + 1) - (*&v26 + *&v27);
    v13 = MaxX - CGRectGetMaxX(v36);
    v11 = v23;
  }

  else
  {
LABEL_6:
    v11 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 8);
    v14 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
  }

  v20 = v12;
  v21 = v14;
  result.right = v13;
  result.bottom = v21;
  result.left = v20;
  result.top = v11;
  return result;
}

- (UIEdgeInsets)_focusableContentMargins
{
  v7.receiver = self;
  v7.super_class = _TVCollectionViewLockupCell;
  [(_TVCollectionViewLockupCell *)&v7 _focusableContentMargins];
  [(_TVCollectionViewLockupCell *)self _additionalFocusableContentInsets];
  UIEdgeInsetsAdd();
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  v17.receiver = self;
  v17.super_class = _TVCollectionViewLockupCell;
  [(TVContainerCollectionViewCell *)&v17 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  nextFocusedView = [contextCopy nextFocusedView];
  if (nextFocusedView == self)
  {
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __80___TVCollectionViewLockupCell_didUpdateFocusInContext_withAnimationCoordinator___block_invoke;
    v14 = &unk_279D6E890;
    objc_copyWeak(&v15, &location);
    [coordinatorCopy addCoordinatedFocusingAnimations:0 completion:&v11];
    v10 = [(_TVCollectionViewLockupCell *)self superview:v11];
    [v10 bringSubviewToFront:self];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (self->_delegateFlags.respondsToDidUnfocus)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionViewCellDidUnfocus:self];
  }
}

- (void)prepareForReuse
{
  v15.receiver = self;
  v15.super_class = _TVCollectionViewLockupCell;
  [(TVContainerCollectionViewCell *)&v15 prepareForReuse];
  contentView = [(_TVCollectionViewLockupCell *)self contentView];
  [TVMLUtilities disassociateIKViewElementsRecursivelyFromView:contentView];

  _selectingView = [(_TVCollectionViewLockupCell *)self _selectingView];
  v5 = _selectingView;
  if (_selectingView)
  {
    v6 = MEMORY[0x277CBEB18];
    layer = [_selectingView layer];
    v8 = [v6 arrayWithObject:layer];

    if ([v8 count])
    {
      v9 = MEMORY[0x277CBEBF8];
      do
      {
        v10 = [v8 objectAtIndex:0];
        [v8 removeObject:v10];
        [v10 clearHasBeenCommitted];
        [v10 removeAllAnimations];
        sublayers = [v10 sublayers];
        v12 = sublayers;
        if (sublayers)
        {
          v13 = sublayers;
        }

        else
        {
          v13 = v9;
        }

        [v8 addObjectsFromArray:v13];
      }

      while ([v8 count]);
    }
  }

  selectingView = self->__selectingView;
  self->__selectingView = 0;
}

- (id)layeredImageContainerLayer
{
  if (self->_delegateFlags.respondsToLayeredImageContainerLayerWithinCollectionViewCell)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained layeredImageContainerLayerWithinCollectionViewCell:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_preferredConfigurationForFocusAnimation:(int64_t)animation inContext:(id)context
{
  contextCopy = context;
  _selectingView = [(_TVCollectionViewLockupCell *)self _selectingView];
  v8 = _selectingView;
  if (_selectingView)
  {
    v9 = [_selectingView _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
LABEL_3:
    focusAnimationConfiguration = v9;
    goto LABEL_6;
  }

  layeredImageContainerLayer = [(_TVCollectionViewLockupCell *)self layeredImageContainerLayer];

  if (!layeredImageContainerLayer)
  {
    v15.receiver = self;
    v15.super_class = _TVCollectionViewLockupCell;
    v9 = [(TVContainerCollectionViewCell *)&v15 _preferredConfigurationForFocusAnimation:animation inContext:contextCopy];
    goto LABEL_3;
  }

  layeredImageContainerLayer2 = [(_TVCollectionViewLockupCell *)self layeredImageContainerLayer];
  configuration = [layeredImageContainerLayer2 configuration];
  focusAnimationConfiguration = [configuration focusAnimationConfiguration];

LABEL_6:

  return focusAnimationConfiguration;
}

- (UIEdgeInsets)selectionMarginsForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  _selectingView = [(_TVCollectionViewLockupCell *)self _selectingView];
  [_selectingView selectionMarginsForSize:{width, height}];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (id)_selectingView
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->__selectingView)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    contentView = [(_TVCollectionViewLockupCell *)self contentView];
    subviews = [contentView subviews];

    v5 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 conformsToProtocol:&unk_287E58AD8])
          {
            objc_storeStrong(&self->__selectingView, v9);
            goto LABEL_12;
          }
        }

        v6 = [subviews countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  selectingView = self->__selectingView;

  return selectingView;
}

- (void)_handleSelect
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_delegateFlags.respondsToDidSelect)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionViewCellDidSelect:self];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    contentView = [(_TVCollectionViewLockupCell *)self contentView];
    subviews = [contentView subviews];

    v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(subviews);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v9 didSelect];
          }
        }

        v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = _TVCollectionViewLockupCell;
  [(UIView *)&v16 setHighlighted:?];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  contentView = [(_TVCollectionViewLockupCell *)self contentView];
  subviews = [contentView subviews];

  v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 setHighlighted:highlightedCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (TVCollectionViewLockupCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end