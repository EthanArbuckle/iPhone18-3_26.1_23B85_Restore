@interface UIKeyboardEmojiAndStickerCollectionView
- (UIKeyboardEmojiAndStickerCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout emojiGraphicsTraits:(id)traits;
- (UIResponder)hitTestResponder;
- (id)closestCellForPoint:(CGPoint)point;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)disableConflictingGestureRecognizers;
- (void)enableConflictingGestureRecognizers;
- (void)layoutSubviews;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)willCancelVariants:(id)variants;
@end

@implementation UIKeyboardEmojiAndStickerCollectionView

- (UIKeyboardEmojiAndStickerCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout emojiGraphicsTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  traitsCopy = traits;
  v19.receiver = self;
  v19.super_class = UIKeyboardEmojiAndStickerCollectionView;
  height = [(UICollectionView *)&v19 initWithFrame:layout collectionViewLayout:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_emojiGraphicsTraits, traits);
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    gestureRecognizersToEnable = v14->_gestureRecognizersToEnable;
    v14->_gestureRecognizersToEnable = v15;

    if (traitsCopy && traitsCopy[8] == 1)
    {
      [(UIScrollView *)v14 _setAutomaticContentOffsetAdjustmentEnabled:0];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel_willCancelVariants_ name:@"UIKeyboardWillCancelEmojiVariants" object:0];
  }

  return v14;
}

- (void)layoutSubviews
{
  dataSource = [(UICollectionView *)self dataSource];

  if (dataSource)
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

- (id)closestCellForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v42 = *MEMORY[0x1E69E9840];
  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits emojiKeyWidth];
  v7 = v6;
  v36 = x;
  v8 = x - v6;
  v9 = y - v6;
  v10 = v6 + v6;
  v11 = y;
  v12 = y + v6 + v6;
  collectionViewLayout = [(UICollectionView *)self collectionViewLayout];
  v14 = [collectionViewLayout layoutAttributesForElementsInRect:{v8, v9, v10, v12}];

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
    indexPath = [v18 indexPath];
    v34 = [(UICollectionView *)self cellForItemAtIndexPath:indexPath];

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
  superview = [(UIView *)self superview];
  if (superview)
  {
    v4 = superview;
    do
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      gestureRecognizers = [v4 gestureRecognizers];
      v6 = [gestureRecognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
              objc_enumerationMutation(gestureRecognizers);
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
          v7 = [gestureRecognizers countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      superview2 = [v4 superview];

      v4 = superview2;
    }

    while (superview2);
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if ([(UIKeyboardEmojiAndStickerCollectionView *)self isInSearchPopover])
  {
    anyObject = [beganCopy anyObject];
    [anyObject locationInView:self];
    v8 = [(UIKeyboardEmojiAndStickerCollectionView *)self closestCellForPoint:?];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      emoji = [v8 emoji];

      if (emoji)
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

  collectionViewLayout = [(UICollectionView *)self collectionViewLayout];
  scrollDirection = [collectionViewLayout scrollDirection];

  if (scrollDirection || [(UIScrollView *)self isDragging]|| ([(UIScrollView *)self contentOffset], v20 < 0.0))
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

  if (v21 || scrollDirection == 1 && v12)
  {
LABEL_19:
    [(UICollectionView *)self setScrollEnabled:0];
    [(UIKeyboardEmojiAndStickerCollectionView *)self disableConflictingGestureRecognizers];
    indexPathsForSelectedItems = [(UICollectionView *)self indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];
    [(UICollectionView *)self deselectItemAtIndexPath:firstObject animated:0];

    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [hitTestResponder touchesBegan:beganCopy withEvent:eventCopy];
  }

LABEL_20:
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  if (![(UIScrollView *)self isDragging])
  {
    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [hitTestResponder touchesMoved:movedCopy withEvent:eventCopy];

    self->_touchDidMove = 1;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(UIScrollView *)self isDragging])
  {
    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [hitTestResponder touchesEnded:endedCopy withEvent:eventCopy];
  }

  [(UICollectionView *)self setScrollEnabled:1];
  [(UIKeyboardEmojiAndStickerCollectionView *)self enableConflictingGestureRecognizers];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(UIScrollView *)self isDragging])
  {
    hitTestResponder = [(UIKeyboardEmojiAndStickerCollectionView *)self hitTestResponder];
    [hitTestResponder touchesCancelled:cancelledCopy withEvent:eventCopy];
  }

  [(UICollectionView *)self setScrollEnabled:1];
  [(UIKeyboardEmojiAndStickerCollectionView *)self enableConflictingGestureRecognizers];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v24.receiver = self;
  v24.super_class = UIKeyboardEmojiAndStickerCollectionView;
  v8 = [(UIScrollView *)&v24 hitTest:eventCopy withEvent:x, y];
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

      v20 = [v9 hitTest:eventCopy withEvent:{v16, v19}];
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

- (void)willCancelVariants:(id)variants
{
  variantsCopy = variants;
  window = [(UIView *)self window];

  if (window)
  {
    userInfo = [variantsCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"key"];

    userInfo2 = [variantsCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"touch"];

    [v6 frame];
    MidX = CGRectGetMidX(v20);
    [v6 frame];
    MidY = CGRectGetMidY(v21);
    superview = [(UIView *)self superview];
    [(UIView *)self convertPoint:superview fromView:MidX, MidY];
    v13 = v12;
    v15 = v14;

    v16 = [(UIKeyboardEmojiAndStickerCollectionView *)self closestCellForPoint:v13, v15];
    emojiLabel = [v16 emojiLabel];
    [emojiLabel willCancelVariantsWithTouch:v8];
  }
}

- (UIResponder)hitTestResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestResponder);

  return WeakRetained;
}

@end