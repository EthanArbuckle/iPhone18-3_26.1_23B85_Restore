@interface _TVCollectionView
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_visibleBounds;
- (UIEdgeInsets)_gradientBoundsInsets;
- (_TVCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)_getGradientMaskBounds:(CGRect *)bounds startInsets:(UIEdgeInsets *)insets endInsets:(UIEdgeInsets *)endInsets intensities:(UIEdgeInsets *)intensities;
- (void)_longPressAction:(id)action;
- (void)_notifyDidScroll;
- (void)_performBlockWithFocusedCellIndexPath:(id)path;
- (void)_performBlockWithLongPressedCellIndexPath:(id)path;
- (void)_performWithoutLayoutBelow:(id)below;
- (void)_playButtonAction:(id)action;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutBelowIfNeeded;
- (void)reloadData;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setDelegate:(id)delegate;
- (void)setScrollEnabled:(BOOL)enabled;
@end

@implementation _TVCollectionView

- (_TVCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v8.receiver = self;
  v8.super_class = _TVCollectionView;
  v4 = [(_TVCollectionView *)&v8 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v4 action:sel__longPressAction_];
    longPressRecognizer = v4->_longPressRecognizer;
    v4->_longPressRecognizer = v5;

    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setDelegate:v4];
    [(_TVCollectionView *)v4 addGestureRecognizer:v4->_longPressRecognizer];
    [(_TVCollectionView *)v4 setRemembersLastFocusedIndexPath:0];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([recognizerCopy numberOfTouches] || objc_msgSend(gestureRecognizerCopy, "numberOfTouches"))
    {
      v8 = 1;
    }

    else
    {
      [(_TVCollectionView *)self contentOffset];
      v8 = v10 <= 0.0;
      if ([(_TVCollectionView *)self effectiveUserInterfaceLayoutDirection]== 1)
      {
        [(_TVCollectionView *)self contentOffset];
        v12 = v11;
        [(_TVCollectionView *)self contentSize];
        v14 = v13;
        [(_TVCollectionView *)self size];
        v8 = v12 >= v14 - v15;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && ([recognizerCopy numberOfTouches] || objc_msgSend(gestureRecognizerCopy, "numberOfTouches"));

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_longPressRecognizer == beginCopy)
  {
    if ((*&self->_delegateFlags & 2) != 0)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      delegate = [(_TVCollectionView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __50___TVCollectionView_gestureRecognizerShouldBegin___block_invoke;
        v10[3] = &unk_279D71110;
        v10[4] = self;
        v10[5] = &v11;
        [(_TVCollectionView *)self _performBlockWithLongPressedCellIndexPath:v10];
      }

      v5 = *(v12 + 24);
      _Block_object_dispose(&v11, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _TVCollectionView;
    v5 = [(_TVCollectionView *)&v9 gestureRecognizerShouldBegin:beginCopy];
  }

  return v5 & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = _TVCollectionView;
  [(_TVCollectionView *)&v22 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  if ([nextFocusedView isDescendantOfView:self])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    indexPathsForVisibleItems = [(_TVCollectionView *)self indexPathsForVisibleItems];
    v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [(_TVCollectionView *)self cellForItemAtIndexPath:v13];
        if ([nextFocusedView isDescendantOfView:v14])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v15 = v13;

      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = [v15 copy];
      indexPathForLastFocusedItem = self->_indexPathForLastFocusedItem;
      self->_indexPathForLastFocusedItem = v16;

      indexPathsForVisibleItems = v15;
    }

LABEL_13:
  }

LABEL_14:
}

- (BOOL)canBecomeFocused
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    delegate = [(_TVCollectionView *)self delegate];
    v5 = [delegate collectionViewCanBecomeFocused:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _TVCollectionView;
    return [(_TVCollectionView *)&v6 canBecomeFocused];
  }
}

- (void)reloadData
{
  indexPathForLastFocusedItem = self->_indexPathForLastFocusedItem;
  self->_indexPathForLastFocusedItem = 0;

  v4.receiver = self;
  v4.super_class = _TVCollectionView;
  [(_TVCollectionView *)&v4 reloadData];
}

- (void)setScrollEnabled:(BOOL)enabled
{
  v3.receiver = self;
  v3.super_class = _TVCollectionView;
  [(_TVCollectionView *)&v3 setScrollEnabled:enabled];
}

- (void)_notifyDidScroll
{
  v4.receiver = self;
  v4.super_class = _TVCollectionView;
  [(_TVCollectionView *)&v4 _notifyDidScroll];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVCollectionViewDidScrollNotification" object:self];
}

- (void)setDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = _TVCollectionView;
  delegateCopy = delegate;
  [(_TVCollectionView *)&v8 setDelegate:delegateCopy];
  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v5;
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v7;
}

- (void)_playButtonAction:(id)action
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __39___TVCollectionView__playButtonAction___block_invoke;
  v3[3] = &unk_279D71138;
  v3[4] = self;
  [(_TVCollectionView *)self _performBlockWithFocusedCellIndexPath:v3];
}

- (void)_longPressAction:(id)action
{
  if ([action state] == 1)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38___TVCollectionView__longPressAction___block_invoke;
    v4[3] = &unk_279D71138;
    v4[4] = self;
    [(_TVCollectionView *)self _performBlockWithLongPressedCellIndexPath:v4];
  }
}

- (void)_performBlockWithFocusedCellIndexPath:(id)path
{
  pathCopy = path;
  window = [(_TVCollectionView *)self window];
  screen = [window screen];
  focusedView = [screen focusedView];

  if (focusedView)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [focusedView superview];

      focusedView = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    v8 = [(_TVCollectionView *)self indexPathForCell:focusedView];
    if (v8)
    {
      pathCopy[2](pathCopy, v8);
    }
  }

LABEL_8:
}

- (void)_performBlockWithLongPressedCellIndexPath:(id)path
{
  pathCopy = path;
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer locationInView:self];
  v4 = [(_TVCollectionView *)self indexPathForItemAtPoint:?];
  if (v4)
  {
    pathCopy[2](pathCopy, v4);
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37___TVCollectionView_setContentInset___block_invoke;
  v3[3] = &unk_279D6EAB8;
  insetCopy = inset;
  v3[4] = self;
  [(_TVCollectionView *)self _performWithoutLayoutBelow:v3];
}

- (void)layoutBelowIfNeeded
{
  if ((*&self->_flags & 1) == 0)
  {
    v2.receiver = self;
    v2.super_class = _TVCollectionView;
    [(_TVCollectionView *)&v2 layoutBelowIfNeeded];
  }
}

- (void)_performWithoutLayoutBelow:(id)below
{
  flags = self->_flags;
  *&self->_flags = flags | 1;
  (*(below + 2))(below, a2);
  *&self->_flags = *&self->_flags & 0xFE | flags & 1;
}

- (CGRect)_visibleBounds
{
  window = [(_TVCollectionView *)self window];
  if (window && (bottomPadding = self->_bottomPadding, window, bottomPadding != 0.0))
  {
    [(_TVCollectionView *)self bounds];
    v8 = self->_bottomPadding + v9;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVCollectionView;
    [(_TVCollectionView *)&v10 _visibleBounds];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (UIEdgeInsets)_gradientBoundsInsets
{
  top = self->_gradientBoundsInsets.top;
  left = self->_gradientBoundsInsets.left;
  bottom = self->_gradientBoundsInsets.bottom;
  right = self->_gradientBoundsInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_getGradientMaskBounds:(CGRect *)bounds startInsets:(UIEdgeInsets *)insets endInsets:(UIEdgeInsets *)endInsets intensities:(UIEdgeInsets *)intensities
{
  v14.receiver = self;
  v14.super_class = _TVCollectionView;
  [(_TVCollectionView *)&v14 _getGradientMaskBounds:bounds startInsets:insets endInsets:endInsets intensities:intensities];
  [(_TVCollectionView *)self _gradientBoundsInsets];
  if (bounds)
  {
    v12.f64[0] = v9;
    v12.f64[1] = v8;
    bounds->origin = vaddq_f64(v12, bounds->origin);
    v13 = bounds->size.height - (v8 + v10);
    bounds->size.width = bounds->size.width - (v9 + v11);
    bounds->size.height = v13;
  }
}

@end