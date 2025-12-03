@interface UIKeyboardEmojiCategoryBar
- (CGRect)categorySelectedCircleRect:(int64_t)rect;
- (CGRect)frameForDivider:(int)divider;
- (CGRect)paddedFrame;
- (UIKeyboardEmojiCategoryBar)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits;
- (unint64_t)flippedIndexForIndex:(unint64_t)index;
- (unint64_t)selectedIndexForTouches:(id)touches;
- (void)animateScrubberToRect:(CGRect)rect;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)dimKeys:(id)keys;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)removeFromSuperview;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)updateCategory;
- (void)updateCategoryOnBar:(unint64_t)bar;
- (void)updateToCategory:(int64_t)category;
@end

@implementation UIKeyboardEmojiCategoryBar

- (UIKeyboardEmojiCategoryBar)initWithFrame:(CGRect)frame keyplane:(id)keyplane key:(id)key screenTraits:(id)traits
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  keyplaneCopy = keyplane;
  keyCopy = key;
  traitsCopy = traits;
  v33.receiver = self;
  v33.super_class = UIKeyboardEmojiCategoryBar;
  height = [(UIView *)&v33 initWithFrame:x, y, width, height];
  if (height)
  {
    if (!traitsCopy)
    {
      v17 = +[UIKeyboardImpl keyboardScreen];
      v18 = +[UIKeyboard activeKeyboard];
      traitsCopy = +[UIKBScreenTraits traitsWithScreen:orientation:](UIKBScreenTraits, "traitsWithScreen:orientation:", v17, [v18 interfaceOrientation]);
    }

    v19 = [UIKeyboardEmojiGraphicsTraits emojiGraphicsTraitsWithScreenTraits:traitsCopy];
    emojiGraphicsTraits = height->_emojiGraphicsTraits;
    height->_emojiGraphicsTraits = v19;

    height->_selectedIndex = -1;
    height->_isScrubbing = 0;
    v21 = +[UIColor clearColor];
    [(UIView *)height setBackgroundColor:v21];

    [(UIView *)height setOpaque:0];
    [keyCopy setState:16];
    [keyCopy setSelectedVariantIndex:height->_selectedIndex];
    [(UIKBKeyView *)height updateForKeyplane:keyplaneCopy key:keyCopy];
    scrubView = height->_scrubView;
    if (!scrubView)
    {
      [(UIKeyboardEmojiGraphicsTraits *)height->_emojiGraphicsTraits categorySelectedCirWidth];
      v24 = [(UIView *)[UIKeyboardEmojiScrubBarView alloc] initWithFrame:0.0, (height - v23) * 0.5, v23, v23];
      v25 = height->_scrubView;
      height->_scrubView = &v24->super;

      [(UIKeyboardEmojiGraphicsTraits *)height->_emojiGraphicsTraits categorySelectedCirWidth];
      v27 = v26 * 0.5;
      layer = [(UIView *)height->_scrubView layer];
      [layer setCornerRadius:v27];

      v29 = height->_scrubView;
      if (v29)
      {
        if (traitsCopy)
        {
          v30 = traitsCopy[35];
        }

        else
        {
          v30 = 0;
        }

        LOBYTE(v29[1].super.super.isa) = v30 & 1;
        scrubView = height->_scrubView;
      }

      else
      {
        scrubView = 0;
      }
    }

    [(UIView *)height addSubview:scrubView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:height selector:sel_receiveNotifictaion_ name:@"UIKeyboardEmojiDidScrollNotification" object:0];
  }

  return height;
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
      renderConfig = [(UIKBKeyView *)self renderConfig];
      v9 = [UIKeyboardEmojiGraphics emojiCategoryImagePath:v6 forRenderConfig:renderConfig];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIKeyboardEmojiDidScrollNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v4 dealloc];
}

- (void)didMoveToWindow
{
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  lastViewedCategory = [emojiKeyManager lastViewedCategory];
  v5 = +[UIKeyboardEmojiCategory categoryIndexForCategoryType:](UIKeyboardEmojiCategory, "categoryIndexForCategoryType:", [lastViewedCategory categoryType]);

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
    scrubView = [(UIKeyboardEmojiCategoryBar *)self scrubView];
    [scrubView setFrame:{v4, v6, v8, v10}];
  }
}

- (void)dimKeys:(id)keys
{
  v21 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v19.receiver = self;
  v19.super_class = UIKeyboardEmojiCategoryBar;
  [(UIKBKeyView *)&v19 dimKeys:keysCopy];
  subviews = [(UIView *)self subviews];

  if (subviews)
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
    [keysCopy enumerateKeysAndObjectsUsingBlock:v14];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    subviews2 = [(UIView *)self subviews];
    v7 = [subviews2 countByEnumeratingWithState:&v10 objects:v20 count:16];
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
            objc_enumerationMutation(subviews2);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHidden:(v16[3] & 1) == 0];
        }

        while (v7 != v9);
        v7 = [subviews2 countByEnumeratingWithState:&v10 objects:v20 count:16];
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

- (void)updateToCategory:(int64_t)category
{
  v4 = [UIKeyboardEmojiCategory categoryIndexForCategoryType:category];

  [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:v4];
}

- (void)updateCategoryOnBar:(unint64_t)bar
{
  [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:?];
  [(UIKBKeyView *)self updateKeySelectedVariantIndex:bar];
  if (!self->_isScrubbing)
  {
    [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:bar];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    scrubView = [(UIKeyboardEmojiCategoryBar *)self scrubView];
    [scrubView setFrame:{v6, v8, v10, v12}];

    renderConfig = [(UIKBKeyView *)self renderConfig];
    whiteText = [renderConfig whiteText];

    if (whiteText)
    {

      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (void)updateCategory
{
  v3 = +[UIKeyboardImpl activeInstance];
  feedbackGenerator = [v3 feedbackGenerator];
  [feedbackGenerator actionOccurred:1];

  v5 = [UIKeyboardEmojiCategory categoryTypeForCategoryIndex:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
  emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
  [emojiKeyManager reloadForCategory:v5 withSender:self];
}

- (unint64_t)flippedIndexForIndex:(unint64_t)index
{
  if (+[UIKeyboardEmojiCategory isRTLMode])
  {
    v4 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
    v5 = [v4 count];

    return v5 + ~index;
  }

  return index;
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

- (CGRect)frameForDivider:(int)divider
{
  [(UIKeyboardEmojiCategoryBar *)self paddedFrame];
  v5 = v4 + 4.0;
  v7 = v6 + -8.0;
  v9 = v8 + 5.0;
  v11 = v10 + -13.0;
  v12 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v13 = [v12 count];

  v14 = round(v5 + ((v7 - (v13 + 1)) / v13 + 1.0) * divider);
  v15 = 1.0;
  v16 = v9;
  v17 = v11;
  result.size.height = v17;
  result.size.width = v15;
  result.origin.y = v16;
  result.origin.x = v14;
  return result;
}

- (void)animateScrubberToRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scrubView = [(UIKeyboardEmojiCategoryBar *)self scrubView];
  [scrubView frame];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectEqualToRect(v15, v16);

  if (!v9)
  {
    scrubView2 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
    [scrubView2 frame];
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

- (CGRect)categorySelectedCircleRect:(int64_t)rect
{
  [(UIKeyboardEmojiCategoryBar *)self paddedFrame];
  v6 = v5;
  v8 = v7;
  v9 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v10 = v8 / [v9 count];

  [(UIKeyboardEmojiGraphicsTraits *)self->_emojiGraphicsTraits categorySelectedCirWidth];
  v12 = v11;
  v13 = v6 + (v10 - v11) * 0.5 + v10 * [(UIKeyboardEmojiCategoryBar *)self flippedIndexForIndex:rect];
  scrubView = [(UIKeyboardEmojiCategoryBar *)self scrubView];
  [scrubView frame];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  hitTestResponder = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  isTrackpadMode = [hitTestResponder isTrackpadMode];

  if ((isTrackpadMode & 1) == 0)
  {
    anyObject = [beganCopy anyObject];
    [anyObject locationInView:self];
    self->_scrubStartXLocation = v8;
    hitTestResponder2 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
    [hitTestResponder2 prepareSliderBehaviorFeedback];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  hitTestResponder = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  isTrackpadMode = [hitTestResponder isTrackpadMode];

  v7 = movedCopy;
  if ((isTrackpadMode & 1) == 0)
  {
    anyObject = [movedCopy anyObject];
    [anyObject locationInView:self];
    v10 = v9;
    if (vabdd_f64(v9, self->_scrubStartXLocation) > 5.0)
    {
      self->_isScrubbing = 1;
      scrubView = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [scrubView frame];
      v13 = v12;
      [(UIView *)self frame];
      v15 = v14;
      scrubView2 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [scrubView2 frame];
      v18 = v17;

      [(UIKeyboardEmojiCategoryBar *)self animateScrubberToRect:0.0, v13, v15, v18];
      scrubView3 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [scrubView3 bounds];
      v21 = v10 - v20;
      scrubView4 = [(UIKeyboardEmojiCategoryBar *)self scrubView];
      [scrubView4 bounds];
      v24 = v21 / v23;

      v25 = v24 >= 0.0 ? v24 : 0.0;
      v26 = fmin(v25, 1.0);
      v27 = +[UIKeyboardEmojiCategory isRTLMode]? 1.0 - v26 : v26;
      emojiKeyManager = [(UIKeyboardEmojiKeyView *)self emojiKeyManager];
      v29 = [emojiKeyManager reloadCategoryForOffsetPercentage:self withSender:v27];

      selectedIndex = [(UIKeyboardEmojiCategoryBar *)self selectedIndex];
      if (selectedIndex != [UIKeyboardEmojiCategory categoryIndexForCategoryType:v29])
      {
        [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:[UIKeyboardEmojiCategory categoryIndexForCategoryType:v29]];
        [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
        hitTestResponder2 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
        [hitTestResponder2 provideSliderBehaviorFeedback];
      }
    }

    v7 = movedCopy;
  }
}

- (unint64_t)selectedIndexForTouches:(id)touches
{
  touchesCopy = touches;
  v5 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
  v6 = [v5 count];

  v7 = v6 - 1;
  v8 = -((v6 - 1) & ~((v6 - 1) >> 63));
  v9 = -1;
  while (v8 + v9 != -1)
  {
    [(UIKeyboardEmojiCategoryBar *)self frameForDivider:(v9 + 2)];
    v11 = v10;
    anyObject = [touchesCopy anyObject];
    [anyObject locationInView:self];
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

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  hitTestResponder = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  isTrackpadMode = [hitTestResponder isTrackpadMode];

  if ((isTrackpadMode & 1) == 0)
  {
    if (self->_isScrubbing)
    {
      [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
      [(UIKeyboardEmojiCategoryBar *)self animateScrubberToRect:?];
      self->_isScrubbing = 0;
    }

    else
    {
      [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:[(UIKeyboardEmojiCategoryBar *)self selectedIndexForTouches:endedCopy]];
      [(UIKeyboardEmojiCategoryBar *)self updateCategory];
      [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
      hitTestResponder2 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
      [hitTestResponder2 provideSliderBehaviorFeedback];
    }

    hitTestResponder3 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
    [hitTestResponder3 finishSliderBehaviorFeedback];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  hitTestResponder = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
  isTrackpadMode = [hitTestResponder isTrackpadMode];

  if ((isTrackpadMode & 1) == 0)
  {
    if (self->_isScrubbing)
    {
      [(UIKeyboardEmojiCategoryBar *)self categorySelectedCircleRect:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
      [(UIKeyboardEmojiCategoryBar *)self animateScrubberToRect:?];
      [(UIKeyboardEmojiCategoryBar *)self updateCategory];
      self->_isScrubbing = 0;
      hitTestResponder2 = [(UIKeyboardEmojiCategoryBar *)self hitTestResponder];
      [hitTestResponder2 finishSliderBehaviorFeedback];
    }

    else
    {
      [(UIKeyboardEmojiCategoryBar *)self setSelectedIndex:[(UIKeyboardEmojiCategoryBar *)self selectedIndexForTouches:cancelledCopy]];
      [(UIKeyboardEmojiCategoryBar *)self updateCategory];
      [(UIKeyboardEmojiCategoryBar *)self updateCategoryOnBar:[(UIKeyboardEmojiCategoryBar *)self selectedIndex]];
    }
  }
}

@end