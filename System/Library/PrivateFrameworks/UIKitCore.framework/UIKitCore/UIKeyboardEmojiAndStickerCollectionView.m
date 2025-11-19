@interface UIKeyboardEmojiAndStickerCollectionView
- (UIKeyboardEmojiAndStickerCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4 emojiGraphicsTraits:(id)a5;
- (UIResponder)hitTestResponder;
- (id)closestCellForPoint:(CGPoint)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)disableConflictingGestureRecognizers;
- (void)enableConflictingGestureRecognizers;
- (void)layoutSubviews;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)willCancelVariants:(id)a3;
@end

@implementation UIKeyboardEmojiAndStickerCollectionView

- (UIKeyboardEmojiAndStickerCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4 emojiGraphicsTraits:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = UIKeyboardEmojiAndStickerCollectionView;
  v13 = [(UICollectionView *)&v19 initWithFrame:a4 collectionViewLayout:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_emojiGraphicsTraits, a5);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    gestureRecognizersToEnable = v14->_gestureRecognizersToEnable;
    v14->_gestureRecognizersToEnable = v15;

    if (v12 && v12[8] == 1)
    {
      [(UIScrollView *)v14 _setAutomaticContentOffsetAdjustmentEnabled:0];
    }

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v14 selector:sel_willCancelVariants_ name:@"UIKeyboardWillCancelEmojiVariants" object:0];
  }

  return v14;
}

- (void)layoutSubviews
{
  v3 = [(UICollectionView *)self dataSource];

  if (v3)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__UIKeyboardEmojiAndStickerCollectionView_layoutSubviews__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

id __57__UIKeyboardEmojiAndStickerCollectionView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = UIKeyboardEmojiAndStickerCollectionView;
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

- (id)closestCellForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v42 = *MEMORY[0x1E69E9840];
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
  v7 = v6;
  v36 = x;
  v8 = x - v6;
  v9 = y - v6;
  v10 = v6 + v6;
  v11 = y;
  v12 = y + v6 + v6;
  v13 = [(UICollectionView *)self collectionViewLayout];
  v14 = [v13 layoutAttributesForElementsInRect:{v8, v9, v10, v12}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v16)
  {
    v34 = 0;
    v18 = v15;
    goto LABEL_20;
  }

  v17 = v16;
  v18 = 0;
  v19 = *v38;
  v20 = 1.79769313e308;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v38 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v37 + 1) + 8 * i);
      [v22 frame];
      v23 = v44.origin.x;
      v24 = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      v27 = vabdd_f64(CGRectGetMidX(v44), v36);
      v45.origin.x = v23;
      v45.origin.y = v24;
      v45.size.width = width;
      v45.size.height = height;
      v28 = vabdd_f64(CGRectGetMidY(v45), v11);
      v29 = v27 + v28;
      if (v27 <= v7 && v28 <= v7 && v29 < v20)
      {
        v32 = v22;

        v20 = v29;
        v18 = v32;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v17);

  if (v18)
  {
    v33 = [v18 indexPath];
    v34 = [(UICollectionView *)self cellForItemAtIndexPath:v33];

LABEL_20:
    goto LABEL_22;
  }

  v34 = 0;
LABEL_22:

  return v34;
}

- (void)disableConflictingGestureRecognizers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self superview];
  if (v3)
  {
    v4 = v3;
    do
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [v4 gestureRecognizers];
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v12 + 1) + 8 * v9);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v10 isEnabled])
              {
                [(NSMutableArray *)self->_gestureRecognizersToEnable addObject:v10];
                [v10 setEnabled:0];
              }
            }

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      v11 = [v4 superview];

      v4 = v11;
    }

    while (v11);
  }
}

- (void)enableConflictingGestureRecognizers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_gestureRecognizersToEnable;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) setEnabled:{1, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_gestureRecognizersToEnable removeAllObjects];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v30 = a3;
  v6 = a4;
  if ([(UIKeyboardEmojiAndStickerCollectionView *)self isInSearchPopover])
  {
    v7 = [v30 anyObject];
    [v7 locationInView:self];
    v8 = [(UIKeyboardEmojiAndStickerCollectionView *)self closestCellForPoint:?];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 emoji];

      if (v9)
      {
        v10 = +[UIKeyboardImpl activeInstance];
        [v10 clearForwardingInputDelegateAndResign:0];
      }
    }
  }

  if ([(UIScrollView *)self isDragging]|| ([(UIScrollView *)self contentOffset], v11 < 0.0))
  {
    v12 = 0;
  }

  else
  {
    [(UIScrollView *)self contentOffset];
    v14 = v13;
    [(UIView *)self bounds];
    v16 = v14 + v15;
    [(UIScrollView *)self contentSize];
    v12 = v16 <= v17 + 1.0;
  }

  if (!_AXSVoiceOverTouchEnabled())
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v18 = [(UICollectionView *)self collectionViewLayout];
  v19 = [v18 scrollDirection];

  if (v19 || [(UIScrollView *)self isDragging]|| ([(UIScrollView *)self contentOffset], v20 < 0.0))
  {
    v21 = 0;
  }

  else
  {
    [(UIScrollView *)self contentOffset];
    v26 = v25;
    [(UIView *)self bounds];
    v28 = v26 + v27;
    [(UIScrollView *)self contentSize];
    v21 = v28 <= v29;
  }

  if (v21 || v19 == 1 && v12)
  {
LABEL_19:
    [(UICollectionView *)self setScrollEnabled:0];
    [(UIKeyboardEmojiAndStickerCollectionView *)self disableConflictingGestureRecognizers];
    v22 = [(UICollectionView *)self indexPathsForSelectedItems];
    v23 = [v22 firstObject];
    [(UICollectionView *)self deselectItemAtIndexPath:v23 animated:0];

    v24 = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [v24 touchesBegan:v30 withEvent:v6];
  }

LABEL_20:
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(UIScrollView *)self isDragging])
  {
    v7 = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [v7 touchesMoved:v8 withEvent:v6];

    self->_touchDidMove = 1;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(UIScrollView *)self isDragging])
  {
    v7 = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [v7 touchesEnded:v8 withEvent:v6];
  }

  [(UICollectionView *)self setScrollEnabled:1];
  [(UIKeyboardEmojiAndStickerCollectionView *)self enableConflictingGestureRecognizers];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(UIScrollView *)self isDragging])
  {
    v7 = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [v7 touchesCancelled:v8 withEvent:v6];
  }

  [(UICollectionView *)self setScrollEnabled:1];
  [(UIKeyboardEmojiAndStickerCollectionView *)self enableConflictingGestureRecognizers];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = UIKeyboardEmojiAndStickerCollectionView;
  v8 = [(UIScrollView *)&v24 hitTest:v7 withEvent:x, y];
  if (v8 == self)
  {
    v9 = [(UIKeyboardEmojiAndStickerCollectionView *)self closestCellForPoint:x, y];
    if (v9)
    {
      [(UIView *)self convertPoint:v9 toView:x, y];
      v11 = v10;
      v13 = v12;
      [v9 bounds];
      [v9 bounds];
      v15 = v14 + -0.01;
      if (v11 < v14 + -0.01)
      {
        v15 = v11;
      }

      if (v15 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      [v9 bounds];
      v18 = v17 + -0.01;
      if (v13 < v17 + -0.01)
      {
        v18 = v13;
      }

      if (v18 >= 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = [v9 hitTest:v7 withEvent:{v16, v19}];
      v21 = v20;
      if (v20)
      {
        v22 = v20;

        v8 = v22;
      }
    }
  }

  return v8;
}

- (void)willCancelVariants:(id)a3
{
  v18 = a3;
  v4 = [(UIView *)self window];

  if (v4)
  {
    v5 = [v18 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"key"];

    v7 = [v18 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"touch"];

    [v6 frame];
    MidX = CGRectGetMidX(v20);
    [v6 frame];
    MidY = CGRectGetMidY(v21);
    v11 = [(UIView *)self superview];
    [(UIView *)self convertPoint:v11 fromView:MidX, MidY];
    v13 = v12;
    v15 = v14;

    v16 = [(UIKeyboardEmojiAndStickerCollectionView *)self closestCellForPoint:v13, v15];
    v17 = [v16 emojiLabel];
    [v17 willCancelVariantsWithTouch:v8];
  }
}

- (UIResponder)hitTestResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestResponder);

  return WeakRetained;
}

@end