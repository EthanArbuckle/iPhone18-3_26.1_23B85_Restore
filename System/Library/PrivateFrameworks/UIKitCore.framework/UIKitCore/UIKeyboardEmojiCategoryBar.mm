@interface UIKeyboardEmojiCategoryBar
- (CGRect)categorySelectedCircleRect:(int64_t)a3;
- (CGRect)frameForDivider:(int)a3;
- (CGRect)paddedFrame;
- (UIKeyboardEmojiCategoryBar)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6;
- (unint64_t)flippedIndexForIndex:(unint64_t)a3;
- (unint64_t)selectedIndexForTouches:(id)a3;
- (void)animateScrubberToRect:(CGRect)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dimKeys:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)removeFromSuperview;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
- (void)updateCategory;
- (void)updateCategoryOnBar:(unint64_t)a3;
- (void)updateToCategory:(int64_t)a3;
@end

@implementation UIKeyboardEmojiCategoryBar

- (UIKeyboardEmojiCategoryBar)initWithFrame:(CGRect)a3 keyplane:(id)a4 key:(id)a5 screenTraits:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v33.receiver = self;
  v33.super_class = UIKeyboardEmojiCategoryBar;
  v16 = [(UIView *)&v33 initWithFrame:x, y, width, height];
  if (v16)
  {
    if (!v15)
    {
      v17 = +[UIKeyboardImpl keyboardScreen];
      v18 = +[UIKeyboard activeKeyboard];
      v15 = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v17, [v18 interfaceOrientation]);
    }

    v19 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:v15];
    emojiGraphicsTraits = v16->_emojiGraphicsTraits;
    v16->_emojiGraphicsTraits = v19;

    v16->_selectedIndex = -1;
    v16->_isScrubbing = 0;
    v21 = +[UIColor clearColor];
    [(UIView *)v16 setBackgroundColor:v21];

    [(UIView *)v16 setOpaque:0];
    [v14 setState:16];
    [v14 setSelectedVariantIndex:v16->_selectedIndex];
    [(UIKBKeyView *)v16 updateForKeyplane:v13 key:v14];
    scrubView = v16->_scrubView;
    if (!scrubView)
    {
      [(UIKeyboardEmojiGraphicsTraits *)v16->_emojiGraphicsTraits categorySelectedCirWidth];
      v24 = [(UIView *)[UIKeyboardEmojiScrubBarView alloc] initWithFrame:0.0, (height - v23) * 0.5, v23, v23];
      v25 = v16->_scrubView;
      v16->_scrubView = &v24->super;

      [(UIKeyboardEmojiGraphicsTraits *)v16->_emojiGraphicsTraits categorySelectedCirWidth];
      v27 = v26 * 0.5;
      v28 = [(UIView *)v16->_scrubView layer];
      [v28 setCornerRadius:v27];

      v29 = v16->_scrubView;
      if (v29)
      {
        if (v15)
        {
          v30 = v15[35];
        }

        else
        {
          v30 = 0;
        }

        LOBYTE(v29[1].super.super.isa) = v30 & 1;
        scrubView = v16->_scrubView;
      }

      else
      {
        scrubView = 0;
      }
    }

    [(UIView *)v16 addSubview:scrubView];
    v31 = [MEMORY[0x1E696AD88] defaultCenter];
    [v31 addObserver:v16 selector:sel_receiveNotifictaion_ name:@"UIKeyboardEmojiDidScrollNotification" object:0];
  }

  return v16;
}

- (void)prepareForDisplay
{
  v10.receiver = self;
  v10.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v10 prepareForDisplay];
  v3 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [UIKeyboardEmojiCategory categoryForType:[UIKeyboardEmojiCategory categoryTypeForCategoryIndex:v5]];
      v7 = [[UIKBTree alloc] initWithType:8];
      v8 = [(UIKBKeyView *)self renderConfig];
      v9 = [UIKeyboardEmojiGraphics emojiCategoryImagePath:v6 forRenderConfig:v8];
      [(UIKBTree *)v7 setDisplayString:v9];

      [v4 addObject:v7];
      ++v5;
    }

    while (v5 < [v3 count]);
  }

  [(UIKBKeyView *)self updateKeySubtrees:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardEmojiDidScrollNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  v3 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  v4 = [v3 lastViewedCategory];
  v5 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [v4 categoryType]);

  [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:v5];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v12 layoutSubviews];
  if (!self->_isScrubbing)
  {
    [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
    [v11 setFrame:{v4, v6, v8, v10}];
  }
}

- (void)dimKeys:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v19 dimKeys:v4];
  v5 = [(UIView *)self subviews];

  if (v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__UIKeyboardEmojiCategoryBar_dimKeys___block_invoke;
    v14[3] = &unk_1E7115DA0;
    v14[4] = &v15;
    [v4 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [(UIView *)self subviews];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v20 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHidden:(v16[3] & 1) == 0];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v20 count:16];
      }

      while (v7);
    }

    _Block_object_dispose(&v15, 8);
  }
}

void __38__UIKeyboardEmojiCategoryBar_dimKeys___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (([a2 integerValue] & 4) != 0)
  {
    [v8 doubleValue];
    *(*(*(a1 + 32) + 8) + 24) = v7 != 0.0;
    *a4 = 1;
  }
}

- (void)updateToCategory:(int64_t)a3
{
  v4 = [UIKeyboardEmojiCategory categoryIndexForCategoryType:a3];

  [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:v4];
}

- (void)updateCategoryOnBar:(unint64_t)a3
{
  [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:?];
  [(UIKBKeyView *)self updateKeySelectedVariantIndex:a3];
  if (!self->_isScrubbing)
  {
    [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:a3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
    [v13 setFrame:{v6, v8, v10, v12}];

    v14 = [(UIKBKeyView *)self renderConfig];
    v15 = [v14 whiteText];

    if (v15)
    {

      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (void)updateCategory
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 feedbackGenerator];
  [v4 actionOccurred:1];

  v5 = [UIKeyboardEmojiCategory categoryTypeForCategoryIndex:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
  v6 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [v6 reloadForCategory:v5 withSender:self];
}

- (unint64_t)flippedIndexForIndex:(unint64_t)a3
{
  if (+[UIKeyboardEmojiCategory isRTLMode])
  {
    v4 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v5 = [v4 count];

    return v5 + ~a3;
  }

  return a3;
}

- (CGRect)paddedFrame
{
  emojiGraphicsTraits = self->_emojiGraphicsTraits;
  if (emojiGraphicsTraits && emojiGraphicsTraits->_isFirstPartyStickers)
  {
    v4 = [(UIKBKeyView *)self key];
    [v4 paddedFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(UIView *)self frame];
    v14 = v6 - v13;
    v16 = v8 - v15;
  }

  else
  {
    [(UIView *)self bounds];
    v10 = v17;
    v12 = v18;
  }

  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameForDivider:(int)a3
{
  [(UIKeyboardEmojiCategoryBar *)self paddedFrame];
  v5 = v4 + 4.0;
  v7 = v6 + -8.0;
  v9 = v8 + 5.0;
  v11 = v10 + -13.0;
  v12 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v13 = [v12 count];

  v14 = round(v5 + ((v7 - (v13 + 1)) / v13 + 1.0) * a3);
  v15 = 1.0;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (void)animateScrubberToRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
  [v8 frame];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectEqualToRect(v15, v16);

  if (!v9)
  {
    v10 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
    [v10 frame];
    v12 = v11 > width;

    v13 = dbl_18A67F790[v12];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__UIKeyboardEmojiCategoryBar_animateScrubberToRect___block_invoke;
    v14[3] = &unk_1E70F3B20;
    v14[4] = self;
    *&v14[5] = x;
    *&v14[6] = y;
    *&v14[7] = width;
    *&v14[8] = height;
    [UIView animateWithDuration:458752 delay:v14 options:0 animations:v13 completion:0.0];
  }
}

void __52__UIKeyboardEmojiCategoryBar_animateScrubberToRect___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) scrubView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

- (CGRect)categorySelectedCircleRect:(int64_t)a3
{
  [(UIKeyboardEmojiCategoryBar *)self paddedFrame];
  v6 = v5;
  v8 = v7;
  v9 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v10 = v8 / [v9 count];

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categorySelectedCirWidth];
  v12 = v11;
  v13 = v6 + (v10 - v11) * 0.5 + v10 * [(UIKeyboardEmojiCategoryBar *)self flippedIndexForIndex:a3];
  v14 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
  [v14 frame];
  v16 = v15;

  v17 = v13;
  v18 = v16;
  v19 = v12;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)removeFromSuperview
{
  self->_hitTestResponder = 0;
  v2.receiver = self;
  v2.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v2 removeFromSuperview];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  v5 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  v6 = [v5 isTrackpadMode];

  if ((v6 & 1) == 0)
  {
    v7 = [v10 anyObject];
    [v7 locationInView:self];
    self->_scrubStartXLocation = v8;
    v9 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
    [v9 prepareSliderBehaviorFeedback];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v32 = a3;
  v5 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  v6 = [v5 isTrackpadMode];

  v7 = v32;
  if ((v6 & 1) == 0)
  {
    v8 = [v32 anyObject];
    [v8 locationInView:self];
    v10 = v9;
    if (vabdd_f64(v9, self->_scrubStartXLocation) > 5.0)
    {
      self->_isScrubbing = 1;
      v11 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [v11 frame];
      v13 = v12;
      [(UIView *)self frame];
      v15 = v14;
      v16 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [v16 frame];
      v18 = v17;

      [(UIKeyboardEmojiCategoryBar *)self animateScrubberToRect:0.0, v13, v15, v18];
      v19 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [v19 bounds];
      v21 = v10 - v20;
      v22 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [v22 bounds];
      v24 = v21 / v23;

      v25 = v24 >= 0.0 ? v24 : 0.0;
      v26 = fmin(v25, 1.0);
      v27 = +[UIKeyboardEmojiCategory isRTLMode]? 1.0 - v26 : v26;
      v28 = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      v29 = [v28 reloadCategoryForOffsetPercentage:self withSender:v27];

      v30 = [(UIKeyboardEmojiCategoryBar *)self selectedIndex];
      if (v30 != [UIKeyboardEmojiCategory categoryIndexForCategoryType:v29])
      {
        [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:[UIKeyboardEmojiCategory categoryIndexForCategoryType:v29]];
        [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
        v31 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
        [v31 provideSliderBehaviorFeedback];
      }
    }

    v7 = v32;
  }
}

- (unint64_t)selectedIndexForTouches:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = [v5 count];

  v7 = v6 - 1;
  v8 = -((v6 - 1) & ~((v6 - 1) >> 63));
  v9 = -1;
  while (v8 + v9 != -1)
  {
    [(UIKeyboardEmojiCategoryBar *)self frameForDivider:(v9 + 2)];
    v11 = v10;
    v12 = [v4 anyObject];
    [v12 locationInView:self];
    v14 = v13;

    ++v9;
    if (v11 >= v14)
    {
      goto LABEL_6;
    }
  }

  v9 = v7;
LABEL_6:
  v15 = [(UIKeyboardEmojiCategoryBar *)self flippedIndexForIndex:v9];

  return v15;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v5 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  v6 = [v5 isTrackpadMode];

  if ((v6 & 1) == 0)
  {
    if (self->_isScrubbing)
    {
      [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
      [(UIKeyboardEmojiCategoryBar *)self animateScrubberToRect:?];
      self->_isScrubbing = 0;
    }

    else
    {
      [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:[(UIKeyboardEmojiCategoryBar *)self selectedIndexForTouches:v9]];
      [(UIKeyboardEmojiCategoryBar *)self updateCategory];
      [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
      v7 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
      [v7 provideSliderBehaviorFeedback];
    }

    v8 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
    [v8 finishSliderBehaviorFeedback];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  v5 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  v6 = [v5 isTrackpadMode];

  if ((v6 & 1) == 0)
  {
    if (self->_isScrubbing)
    {
      [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
      [(UIKeyboardEmojiCategoryBar *)self animateScrubberToRect:?];
      [(UIKeyboardEmojiCategoryBar *)self updateCategory];
      self->_isScrubbing = 0;
      v7 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
      [v7 finishSliderBehaviorFeedback];
    }

    else
    {
      [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:[(UIKeyboardEmojiCategoryBar *)self selectedIndexForTouches:v8]];
      [(UIKeyboardEmojiCategoryBar *)self updateCategory];
      [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
    }
  }
}

@end