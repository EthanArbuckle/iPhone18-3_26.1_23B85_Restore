@interface _TVStackCollectionView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_visibleBounds;
- (UIEdgeInsets)_gradientBoundsInsets;
- (_TVStackCollectionView)initWithFrame:(CGRect)frame;
- (void)_getGradientMaskBounds:(CGRect *)bounds startInsets:(UIEdgeInsets *)insets endInsets:(UIEdgeInsets *)endInsets intensities:(UIEdgeInsets *)intensities;
- (void)_performWithoutLayoutBelow:(id)below;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutBelowIfNeeded;
- (void)reloadData;
- (void)setContentInset:(UIEdgeInsets)inset;
@end

@implementation _TVStackCollectionView

- (_TVStackCollectionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _TVStackCollectionView;
  v3 = [(_TVStackCollectionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    panGestureRecognizer = [(_TVStackCollectionView *)v3 panGestureRecognizer];
    [panGestureRecognizer setDelegate:v4];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = 0;
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
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
  v14.super_class = _TVStackCollectionView;
  [(_TVStackCollectionView *)&v14 _getGradientMaskBounds:bounds startInsets:insets endInsets:endInsets intensities:intensities];
  [(_TVStackCollectionView *)self _gradientBoundsInsets];
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = _TVStackCollectionView;
  [(_TVStackCollectionView *)&v22 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  if ([(UICollectionView *)self tv_isFocusOnNonOwnedCell])
  {
    indexPathForLastFocusedItem = self->_indexPathForLastFocusedItem;
    self->_indexPathForLastFocusedItem = 0;
  }

  else
  {
    indexPathForLastFocusedItem = [contextCopy nextFocusedView];
    if ([indexPathForLastFocusedItem isDescendantOfView:self])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      indexPathsForVisibleItems = [(_TVStackCollectionView *)self indexPathsForVisibleItems];
      v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
LABEL_6:
        v12 = 0;
        while (1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(indexPathsForVisibleItems);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [(_TVStackCollectionView *)self cellForItemAtIndexPath:v13];
          if ([indexPathForLastFocusedItem isDescendantOfView:v14])
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [indexPathsForVisibleItems countByEnumeratingWithState:&v18 objects:v23 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            goto LABEL_15;
          }
        }

        v15 = v13;

        if (!v15)
        {
          goto LABEL_16;
        }

        v16 = [v15 copy];
        v17 = self->_indexPathForLastFocusedItem;
        self->_indexPathForLastFocusedItem = v16;

        indexPathsForVisibleItems = v15;
      }

LABEL_15:
    }
  }

LABEL_16:
}

- (void)reloadData
{
  indexPathForLastFocusedItem = self->_indexPathForLastFocusedItem;
  self->_indexPathForLastFocusedItem = 0;

  v4.receiver = self;
  v4.super_class = _TVStackCollectionView;
  [(_TVStackCollectionView *)&v4 reloadData];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42___TVStackCollectionView_setContentInset___block_invoke;
  v3[3] = &unk_279D6EAB8;
  insetCopy = inset;
  v3[4] = self;
  [(_TVStackCollectionView *)self _performWithoutLayoutBelow:v3];
}

- (void)layoutBelowIfNeeded
{
  if ((*&self->_flags & 1) == 0)
  {
    v2.receiver = self;
    v2.super_class = _TVStackCollectionView;
    [(_TVStackCollectionView *)&v2 layoutBelowIfNeeded];
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
  window = [(_TVStackCollectionView *)self window];
  if (window && (bottomPadding = self->_bottomPadding, window, bottomPadding != 0.0))
  {
    [(_TVStackCollectionView *)self bounds];
    v8 = self->_bottomPadding + v9;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVStackCollectionView;
    [(_TVStackCollectionView *)&v10 _visibleBounds];
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end