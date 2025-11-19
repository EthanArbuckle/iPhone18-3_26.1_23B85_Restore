@interface UIKeyboardEmojiCollectionView
- (UIKeyboardEmojiCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4 emojiGraphicsTraits:(id)a5;
- (UIResponder)hitTestResponder;
- (id)closestCellForPoint:(CGPoint)a3;
- (void)disableConflictingGestureRecognizers;
- (void)enableConflictingGestureRecognizers;
- (void)layoutSubviews;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)willCancelVariants:(id)a3;
@end

@implementation UIKeyboardEmojiCollectionView

- (UIKeyboardEmojiCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4 emojiGraphicsTraits:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = UIKeyboardEmojiCollectionView;
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
    v4[2] = __47__UIKeyboardEmojiCollectionView_layoutSubviews__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

id __47__UIKeyboardEmojiCollectionView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = UIKeyboardEmojiCollectionView;
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

- (id)closestCellForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UICollectionView *)self indexPathForItemAtPoint:?];
  if (v6)
  {
    v7 = [(UICollectionView *)self cellForItemAtIndexPath:v6];
    goto LABEL_12;
  }

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
  v9 = v8 * 0.5;
  v10 = y - v8 * 0.5;
  v11 = [(UICollectionView *)self indexPathForItemAtPoint:x, v10];

  if (v11)
  {
    v12 = [(UICollectionView *)self indexPathForItemAtPoint:x, v10];
    v13 = [(UICollectionView *)self cellForItemAtIndexPath:v12];

    v14 = [(UICollectionView *)self indexPathForItemAtPoint:x, y + v9];
    v15 = [(UICollectionView *)self cellForItemAtIndexPath:v14];

    [v13 frame];
    v16 = vabdd_f64(CGRectGetMaxY(v40), y);
    [v15 frame];
    v17 = v16 < vabdd_f64(CGRectGetMinY(v41), y);
  }

  else
  {
    v18 = [(UICollectionView *)self indexPathForItemAtPoint:x - v9, y];

    if (!v18)
    {
      v24 = [(UICollectionView *)self indexPathForItemAtPoint:x - v9, v10];
      v13 = [(UICollectionView *)self cellForItemAtIndexPath:v24];

      v25 = [(UICollectionView *)self indexPathForItemAtPoint:x - v9, y + v9];
      v26 = [(UICollectionView *)self cellForItemAtIndexPath:v25];

      v27 = [(UICollectionView *)self indexPathForItemAtPoint:x + v9, v10];
      v28 = [(UICollectionView *)self cellForItemAtIndexPath:v27];

      v29 = [(UICollectionView *)self indexPathForItemAtPoint:x + v9, y + v9];
      v30 = [(UICollectionView *)self cellForItemAtIndexPath:v29];

      [v13 frame];
      v31 = vabdd_f64(CGRectGetMaxY(v44), y);
      [v26 frame];
      v32 = vabdd_f64(CGRectGetMinY(v45), y);
      [v13 frame];
      v33 = vabdd_f64(CGRectGetMaxX(v46), x);
      [v28 frame];
      v34 = vabdd_f64(CGRectGetMinX(v47), x);
      v35 = v31 < v32 && v33 < v34;
      v36 = v13;
      if (!v35)
      {
        v37 = v31 >= v32 && v33 < v34;
        v36 = v26;
        if (!v37)
        {
          if (v33 >= v34 && v31 < v32)
          {
            v36 = v28;
          }

          else
          {
            v36 = v30;
          }
        }
      }

      v7 = v36;

      goto LABEL_11;
    }

    v19 = [(UICollectionView *)self indexPathForItemAtPoint:x - v9, y];
    v13 = [(UICollectionView *)self cellForItemAtIndexPath:v19];

    v20 = [(UICollectionView *)self indexPathForItemAtPoint:x + v9, y];
    v15 = [(UICollectionView *)self cellForItemAtIndexPath:v20];

    [v13 frame];
    v21 = vabdd_f64(CGRectGetMaxX(v42), x);
    [v15 frame];
    v17 = v21 < vabdd_f64(CGRectGetMinX(v43), x);
  }

  if (v17)
  {
    v22 = v13;
  }

  else
  {
    v22 = v15;
  }

  v7 = v22;

LABEL_11:
LABEL_12:

  return v7;
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
  if ([(UIKeyboardEmojiCollectionView *)self isInSearchPopover])
  {
    v7 = [v30 anyObject];
    [v7 locationInView:self];
    v8 = [(UIKeyboardEmojiCollectionView *)self closestCellForPoint:?];

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
    v12 = v16 <= v17;
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
    [(UIKeyboardEmojiCollectionView *)self disableConflictingGestureRecognizers];
    v22 = [(UICollectionView *)self indexPathsForSelectedItems];
    v23 = [v22 firstObject];
    [(UICollectionView *)self deselectItemAtIndexPath:v23 animated:0];

    v24 = [(UIKeyboardEmojiCollectionView *)self hitTestResponder];
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
    v7 = [(UIKeyboardEmojiCollectionView *)self hitTestResponder];
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
    v7 = [(UIKeyboardEmojiCollectionView *)self hitTestResponder];
    [v7 touchesEnded:v8 withEvent:v6];
  }

  [(UICollectionView *)self setScrollEnabled:1];
  [(UIKeyboardEmojiCollectionView *)self enableConflictingGestureRecognizers];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (![(UIScrollView *)self isDragging])
  {
    v7 = [(UIKeyboardEmojiCollectionView *)self hitTestResponder];
    [v7 touchesCancelled:v8 withEvent:v6];
  }

  [(UICollectionView *)self setScrollEnabled:1];
  [(UIKeyboardEmojiCollectionView *)self enableConflictingGestureRecognizers];
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

    v16 = [(UIKeyboardEmojiCollectionView *)self closestCellForPoint:v13, v15];
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