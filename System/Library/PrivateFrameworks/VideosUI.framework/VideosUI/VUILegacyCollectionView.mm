@interface VUILegacyCollectionView
- (BOOL)canBecomeFocused;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)_visibleBounds;
- (UIEdgeInsets)_gradientBoundsInsets;
- (VUILegacyCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)_getGradientMaskBounds:(CGRect *)a3 startInsets:(UIEdgeInsets *)a4 endInsets:(UIEdgeInsets *)a5 intensities:(UIEdgeInsets *)a6;
- (void)_longPressAction:(id)a3;
- (void)_notifyDidScroll;
- (void)_performBlockWithLongPressedCellIndexPath:(id)a3;
- (void)_performWithoutLayoutBelow:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutBelowIfNeeded;
- (void)reloadData;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setScrollEnabled:(BOOL)a3;
@end

@implementation VUILegacyCollectionView

- (VUILegacyCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v8.receiver = self;
  v8.super_class = VUILegacyCollectionView;
  v4 = [(VUILegacyCollectionView *)&v8 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel__longPressAction_];
    longPressRecognizer = v4->_longPressRecognizer;
    v4->_longPressRecognizer = v5;

    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setCancelsTouchesInView:0];
    [(UILongPressGestureRecognizer *)v4->_longPressRecognizer setDelegate:v4];
    [(VUILegacyCollectionView *)v4 addGestureRecognizer:v4->_longPressRecognizer];
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = a3;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v4 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_longPressRecognizer == v4)
  {
    if ((*&self->_delegateFlags & 2) != 0)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = 0;
      v6 = [(VUILegacyCollectionView *)self delegate];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __56__VUILegacyCollectionView_gestureRecognizerShouldBegin___block_invoke;
        v10[3] = &unk_1E87336D8;
        v10[4] = self;
        v10[5] = &v11;
        [(VUILegacyCollectionView *)self _performBlockWithLongPressedCellIndexPath:v10];
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
    v9.super_class = VUILegacyCollectionView;
    v5 = [(VUILegacyCollectionView *)&v9 gestureRecognizerShouldBegin:v4];
  }

  return v5 & 1;
}

void __56__VUILegacyCollectionView_gestureRecognizerShouldBegin___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  LOBYTE(v3) = [v5 collectionView:*(a1 + 32) shouldHandleLongPressForItemAtIndexPath:v4];

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = VUILegacyCollectionView;
  [(VUILegacyCollectionView *)&v22 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  if ([v7 isDescendantOfView:self])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(VUILegacyCollectionView *)self indexPathsForVisibleItems];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        v14 = [(VUILegacyCollectionView *)self cellForItemAtIndexPath:v13];
        if ([v7 isDescendantOfView:v14])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
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

      v8 = v15;
    }

LABEL_13:
  }

LABEL_14:
}

- (BOOL)canBecomeFocused
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    v4 = [(VUILegacyCollectionView *)self delegate];
    v5 = [v4 collectionViewCanBecomeFocused:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = VUILegacyCollectionView;
    return [(VUILegacyCollectionView *)&v6 canBecomeFocused];
  }
}

- (void)reloadData
{
  indexPathForLastFocusedItem = self->_indexPathForLastFocusedItem;
  self->_indexPathForLastFocusedItem = 0;

  v4.receiver = self;
  v4.super_class = VUILegacyCollectionView;
  [(VUILegacyCollectionView *)&v4 reloadData];
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = VUILegacyCollectionView;
  [(VUILegacyCollectionView *)&v3 setScrollEnabled:a3];
}

- (void)_notifyDidScroll
{
  v4.receiver = self;
  v4.super_class = VUILegacyCollectionView;
  [(VUILegacyCollectionView *)&v4 _notifyDidScroll];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E69D59C0] object:self];
}

- (void)setDelegate:(id)a3
{
  v8.receiver = self;
  v8.super_class = VUILegacyCollectionView;
  v4 = a3;
  [(VUILegacyCollectionView *)&v8 setDelegate:v4];
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

- (void)_longPressAction:(id)a3
{
  if ([a3 state] == 1)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__VUILegacyCollectionView__longPressAction___block_invoke;
    v4[3] = &unk_1E8733700;
    v4[4] = self;
    [(VUILegacyCollectionView *)self _performBlockWithLongPressedCellIndexPath:v4];
  }
}

void __44__VUILegacyCollectionView__longPressAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 collectionView:*(a1 + 32) didReceiveLongPressForItemAtIndexPath:v4];
}

- (void)_performBlockWithLongPressedCellIndexPath:(id)a3
{
  v5 = a3;
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer locationInView:self];
  v4 = [(VUILegacyCollectionView *)self indexPathForItemAtPoint:?];
  if (v4)
  {
    v5[2](v5, v4);
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VUILegacyCollectionView_setContentInset___block_invoke;
  v3[3] = &unk_1E87311F8;
  v4 = a3;
  v3[4] = self;
  [(VUILegacyCollectionView *)self _performWithoutLayoutBelow:v3];
}

id __43__VUILegacyCollectionView_setContentInset___block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = VUILegacyCollectionView;
  return objc_msgSendSuper2(&v2, sel_setContentInset_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

- (void)layoutBelowIfNeeded
{
  if ((*&self->_flags & 1) == 0)
  {
    v2.receiver = self;
    v2.super_class = VUILegacyCollectionView;
    [(VUILegacyCollectionView *)&v2 layoutBelowIfNeeded];
  }
}

- (void)_performWithoutLayoutBelow:(id)a3
{
  flags = self->_flags;
  *&self->_flags = flags | 1;
  (*(a3 + 2))(a3, a2);
  *&self->_flags = *&self->_flags & 0xFE | flags & 1;
}

- (CGRect)_visibleBounds
{
  v3 = [(VUILegacyCollectionView *)self window];
  if (v3 && (bottomPadding = self->_bottomPadding, v3, bottomPadding != 0.0))
  {
    [(VUILegacyCollectionView *)self bounds];
    v8 = self->_bottomPadding + v9;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VUILegacyCollectionView;
    [(VUILegacyCollectionView *)&v10 _visibleBounds];
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

- (void)_getGradientMaskBounds:(CGRect *)a3 startInsets:(UIEdgeInsets *)a4 endInsets:(UIEdgeInsets *)a5 intensities:(UIEdgeInsets *)a6
{
  v12.receiver = self;
  v12.super_class = VUILegacyCollectionView;
  [(VUILegacyCollectionView *)&v12 _getGradientMaskBounds:a3 startInsets:a4 endInsets:a5 intensities:a6];
  if (a3)
  {
    v8 = *&self->_gradientBoundsInsets.top;
    v9 = vaddq_f64(vextq_s8(v8, v8, 8uLL), a3->origin);
    v10 = vaddq_f64(*&self->_gradientBoundsInsets.bottom, v8);
    v11 = vsubq_f64(a3->size, vextq_s8(v10, v10, 8uLL));
    a3->origin = v9;
    a3->size = v11;
  }
}

@end