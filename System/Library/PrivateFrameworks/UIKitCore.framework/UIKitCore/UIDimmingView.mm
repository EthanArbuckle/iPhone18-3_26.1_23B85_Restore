@interface UIDimmingView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)hitTestsAsOpaque;
- (BOOL)isTransparentFocusItem;
- (UIDimmingView)initWithFrame:(CGRect)frame;
- (UIDimmingViewDelegate)delegate;
- (id)_backdropViewsToAnimate;
- (id)_gestureRecognizersForEvent:(id)event;
- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_clearAdditionalEventGestures;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_queueAdditionalEventGesturesFromView:(id)view;
- (void)_sendDelegateDimmingViewWasTapped;
- (void)_simulateTap;
- (void)dealloc;
- (void)display:(BOOL)display;
- (void)display:(BOOL)display withAnimationDuration:(double)duration afterDelay:(double)delay;
- (void)handleSingleTap:(id)tap;
- (void)setBlurEffect:(id)effect;
- (void)setDimmingColor:(id)color;
- (void)setHighlightedBarButtonItem:(id)item;
- (void)setHitTestsAsOpaque:(BOOL)opaque;
- (void)setPercentDisplayed:(double)displayed;
- (void)setPercentLightened:(double)lightened;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateBackgroundColor;
- (void)willMoveToWindow:(id)window;
@end

@implementation UIDimmingView

- (void)updateBackgroundColor
{
  if (qword_1ED49B170 != -1)
  {
    dispatch_once(&qword_1ED49B170, &__block_literal_global_707);
  }

  v3 = *&_MergedGlobals_21_5;
  v4 = *algn_1ED49B158;
  v5 = *&qword_1ED49B160;
  v6 = unk_1ED49B168;
  [(UIDimmingView *)self percentLightened];
  v8 = [UIColor colorWithRed:v3 green:v4 blue:v5 alpha:v6 * v7];
  v15 = 0.0;
  dimmingColor = [(UIDimmingView *)self dimmingColor];
  [dimmingColor getRed:0 green:0 blue:0 alpha:&v15];

  dimmingColor2 = [(UIDimmingView *)self dimmingColor];
  v11 = v15;
  [(UIDimmingView *)self percentDisplayed];
  v13 = [dimmingColor2 colorWithAlphaComponent:v11 * v12];

  v14 = [v8 _colorBlendedWithColor:v13];
  [(UIView *)self setBackgroundColor:v14];
}

void __38__UIDimmingView_updateBackgroundColor__block_invoke()
{
  v0 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2];
  v1 = [(UITraitCollection *)v0 _traitCollectionWithIncrementedBackgroundLevel];
  v2 = +[UIColor systemBackgroundColor];
  v3 = [v2 resolvedColorWithTraitCollection:v1];

  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  [v3 getRed:&v11 green:&v10 blue:&v9 alpha:0];
  if (v11 >= v10)
  {
    v4 = v11;
  }

  else
  {
    v4 = v10;
  }

  if (v4 < v9)
  {
    v4 = v9;
  }

  v5 = 1.0 / v4;
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  if (v11 == v4)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v11 * v5;
  }

  if (v10 == v4)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v10 * v5;
  }

  _MergedGlobals_21_5 = *&v6;
  *algn_1ED49B158 = v7;
  v8 = v9 * v5;
  if (v9 == v4)
  {
    v8 = 1.0;
  }

  qword_1ED49B160 = *&v8;
  unk_1ED49B168 = *&v4;
}

- (void)dealloc
{
  [(UIGestureRecognizer *)self->_singleFingerTapRecognizer setDelegate:0];
  v3.receiver = self;
  v3.super_class = UIDimmingView;
  [(UIView *)&v3 dealloc];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = UIDimmingView;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(UIDimmingView *)self updateBackground];
}

- (void)_clearAdditionalEventGestures
{
  observedEventForAdditionalGestures = self->_observedEventForAdditionalGestures;
  if (observedEventForAdditionalGestures)
  {
    [(NSMutableSet *)observedEventForAdditionalGestures->_eventObservers removeObject:self];
    v4 = self->_observedEventForAdditionalGestures;
    self->_observedEventForAdditionalGestures = 0;
  }

  additionalEventGestureRecognizers = self->_additionalEventGestureRecognizers;

  [(NSMutableSet *)additionalEventGestureRecognizers removeAllObjects];
}

- (UIDimmingView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = UIDimmingView;
  v3 = [(UIView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  defaultDimmingColor = [objc_opt_class() defaultDimmingColor];
  [(UIDimmingView *)v3 setDimmingColor:defaultDimmingColor];

  if (v3)
  {
    v5 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v5];

    [(UIView *)v3 setOpaque:0];
    [(UIDimmingView *)v3 setHitTestsAsOpaque:1];
    if (dyld_program_sdk_at_least())
    {
      v6 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:sel_handleSingleTap_];
      singleFingerTapRecognizer = v3->_singleFingerTapRecognizer;
      v3->_singleFingerTapRecognizer = v6;

      [(UIGestureRecognizer *)v3->_singleFingerTapRecognizer setDelegate:v3];
      [(UIView *)v3 addGestureRecognizer:v3->_singleFingerTapRecognizer];
    }

    lowerWindowDismissalGestureViews = v3->_lowerWindowDismissalGestureViews;
    v3->_lowerWindowDismissalGestureViews = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = UIDimmingView;
  [(UIView *)&v4 willMoveToWindow:window];
  [(UIDimmingView *)self _clearAdditionalEventGestures];
}

- (void)setHighlightedBarButtonItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_highlightedBarButtonItem, item);
  if (self->_highlightedBarButtonItem)
  {
    view = [itemCopy view];
    [view bounds];
    _UIGraphicsBeginImageContextWithOptions(0, 0, v6, v7, 0.0);
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    [view bounds];
    v11 = -v10;
    [view bounds];
    CGContextTranslateCTM(v9, v11, -v12);
    layer = [view layer];
    v14 = GetContextStack(0);
    if (*v14 < 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14[3 * (*v14 - 1) + 1];
    }

    [layer renderInContext:v15];

    v16 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    if (!self->_highlightedImageView)
    {
      v17 = [UIImageView alloc];
      v18 = [(UIImageView *)v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      highlightedImageView = self->_highlightedImageView;
      self->_highlightedImageView = v18;

      [(UIView *)self->_highlightedImageView setUserInteractionEnabled:0];
      [(UIView *)self addSubview:self->_highlightedImageView];
    }

    superview = [view superview];
    [view frame];
    [superview convertRect:self toView:?];
    [(UIImageView *)self->_highlightedImageView setFrame:?];

    [(UIImageView *)self->_highlightedImageView setImage:v16];
    if (!self->_backgroundGlow)
    {
      v21 = [UIImageView alloc];
      v22 = _UIImageWithName(@"UIButtonBarPressedIndicator.png");
      v23 = [(UIImageView *)v21 initWithImage:v22];
      backgroundGlow = self->_backgroundGlow;
      self->_backgroundGlow = v23;

      [(UIView *)self->_backgroundGlow setUserInteractionEnabled:0];
      [(UIView *)self insertSubview:self->_backgroundGlow belowSubview:self->_highlightedImageView];
    }

    [(UIView *)self->_highlightedImageView center];
    [(UIImageView *)self->_backgroundGlow setCenter:?];
    [(UIView *)self->_backgroundGlow setAlpha:0.2];
  }

  else
  {
    [(UIView *)self->_backgroundGlow removeFromSuperview];
    [(UIView *)self->_highlightedImageView removeFromSuperview];
  }
}

- (id)_backdropViewsToAnimate
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = +[_UIBackdropView allBackdropViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (self)
        {
          v9 = *(*(&v11 + 1) + 8 * i);
          if ([(UIView *)self _viewOrderRelativeToView:v9 requireIntersection:1]== -2)
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)setPercentDisplayed:(double)displayed
{
  if (self->_percentDisplayed != displayed)
  {
    self->_percentDisplayed = displayed;
    [(UIDimmingView *)self updateBackground];
  }
}

- (void)setPercentLightened:(double)lightened
{
  if (self->_percentLightened != lightened)
  {
    self->_percentLightened = lightened;
    [(UIDimmingView *)self updateBackground];
  }
}

- (void)setDimmingColor:(id)color
{
  colorCopy = color;
  if (![(UIColor *)self->_dimmingColor isEqual:?])
  {
    objc_storeStrong(&self->_dimmingColor, color);
    [(UIDimmingView *)self updateBackground];
  }
}

- (void)setBlurEffect:(id)effect
{
  effectCopy = effect;
  if (![(UIBlurEffect *)self->_blurEffect isEqual:?])
  {
    objc_storeStrong(&self->_blurEffect, effect);
    [(UIDimmingView *)self updateBackground];
  }
}

- (BOOL)hitTestsAsOpaque
{
  layer = [(UIView *)self layer];
  hitTestsAsOpaque = [layer hitTestsAsOpaque];

  return hitTestsAsOpaque;
}

- (void)setHitTestsAsOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  layer = [(UIView *)self layer];
  [layer setHitTestsAsOpaque:opaqueCopy];
}

- (void)display:(BOOL)display
{
  v4 = 0.0;
  if (display)
  {
    v4 = 1.0;
  }

  self->_percentDisplayed = v4;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__UIDimmingView_display___block_invoke;
  v5[3] = &unk_1E70F35E0;
  v5[4] = self;
  displayCopy = display;
  [UIView performWithoutAnimation:v5];
  [(UIDimmingView *)self updateBackground];
}

void __25__UIDimmingView_display___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) suppressesBackdrops])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = [*(a1 + 32) _backdropViewsToAnimate];
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v7 + 1) + 8 * v6++) setShouldRasterizeEffectsView:*(a1 + 40)];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }
  }
}

- (void)display:(BOOL)display withAnimationDuration:(double)duration afterDelay:(double)delay
{
  displayCopy = display;
  v23 = *MEMORY[0x1E69E9840];
  v9 = 0.0;
  if (display)
  {
    v9 = 1.0;
  }

  self->_percentDisplayed = v9;
  if ([(UIDimmingView *)self suppressesBackdrops])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    _backdropViewsToAnimate = [(UIDimmingView *)self _backdropViewsToAnimate];
    v11 = [_backdropViewsToAnimate countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(_backdropViewsToAnimate);
          }

          [*(*(&v18 + 1) + 8 * v14++) setShouldRasterizeEffectsView:displayCopy];
        }

        while (v12 != v14);
        v12 = [_backdropViewsToAnimate countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__UIDimmingView_display_withAnimationDuration_afterDelay___block_invoke;
  v17[3] = &unk_1E70F3590;
  v17[4] = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__UIDimmingView_display_withAnimationDuration_afterDelay___block_invoke_2;
  v15[3] = &unk_1E70FA0F0;
  v16 = displayCopy;
  v15[4] = self;
  [UIView animateWithDuration:4 delay:v17 options:v15 animations:duration completion:delay];
}

uint64_t __58__UIDimmingView_display_withAnimationDuration_afterDelay___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    result = *(result + 32);
    if (*(result + 440) == 1)
    {
      return [result dimmingRemovalAnimationDidStop];
    }
  }

  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v59 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (self->_inPassthroughHitTest)
  {
    v8 = 0;
    goto LABEL_44;
  }

  v56.receiver = self;
  v56.super_class = UIDimmingView;
  v9 = [(UIView *)&v56 hitTest:eventCopy withEvent:x, y];
  v10 = v9;
  if (v9 != self)
  {
    goto LABEL_42;
  }

  v43 = v9;
  v45 = eventCopy;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = self->_passthroughViews;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v53;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v53 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v52 + 1) + 8 * i);
        window = [v16 window];
        if (window)
        {
          v18 = window;
          window2 = [v16 window];
          window3 = [(UIView *)self window];
          v21 = window3;
          if (window2 == window3)
          {
            [v16 bounds];
            [v16 convertRect:self toView:?];
            v61.x = x;
            v61.y = y;
            v22 = CGRectContainsPoint(v62, v61);

            if (v22)
            {
              self->_inPassthroughHitTest = 1;
              [(UIView *)self convertPoint:v16 toView:x, y];
              v23 = [v16 hitTest:v45 withEvent:?];
              self->_inPassthroughHitTest = 0;
              if (v23)
              {
                v8 = v23;

                eventCopy = v45;
                v10 = v43;
                goto LABEL_43;
              }
            }
          }

          else
          {
          }
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v13);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = self->_lowerWindowDismissalGestureViews;
  eventCopy = v45;
  v47 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (!v47)
  {
    goto LABEL_41;
  }

  v46 = *v49;
  do
  {
    for (j = 0; j != v47; ++j)
    {
      if (*v49 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v48 + 1) + 8 * j);
      window4 = [(UIView *)self window];
      v27 = v25;
      v28 = window4;
      v29 = eventCopy;
      v30 = v29;
      if (eventCopy)
      {
        v31 = [v29 type] == 0;
      }

      else
      {
        v31 = 0;
      }

      window5 = [v27 window];
      if (window5)
      {
        window6 = [v27 window];
        if (window6 == v28)
        {
          v38 = 0;
        }

        else
        {
          window7 = [v27 window];
          [window7 level];
          v36 = v35;
          [v28 level];
          v38 = v36 <= v37;
        }

        eventCopy = v45;
      }

      else
      {
        v38 = 0;
      }

      gestureRecognizers = [v27 gestureRecognizers];
      v40 = [gestureRecognizers count];

      if (!v31)
      {

LABEL_38:
        continue;
      }

      if (v40)
      {
        v41 = v38;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        self->_inPassthroughHitTest = 1;
        [(UIView *)self convertPoint:v27 toView:x, y];
        v28 = [v27 hitTest:v30 withEvent:?];
        self->_inPassthroughHitTest = 0;
        if (v28)
        {
          [(UIDimmingView *)self _queueAdditionalEventGesturesFromView:v27];
        }

        goto LABEL_38;
      }
    }

    v47 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  }

  while (v47);
LABEL_41:

  v10 = v43;
LABEL_42:
  v8 = v10;
LABEL_43:

LABEL_44:

  return v8;
}

- (id)hitTest:(CGPoint)test forEvent:(__GSEvent *)event
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_inPassthroughHitTest)
  {
    v4 = 0;
  }

  else
  {
    y = test.y;
    x = test.x;
    v31.receiver = self;
    v31.super_class = UIDimmingView;
    v9 = [UIView hitTest:sel_hitTest_forEvent_ forEvent:?];
    v10 = v9;
    if (v9 == self)
    {
      v25 = v9;
      eventCopy = event;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v11 = self->_passthroughViews;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v28;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v27 + 1) + 8 * i);
            window = [v16 window];
            if (window)
            {
              v18 = window;
              window2 = [v16 window];
              window3 = [(UIView *)self window];
              v21 = window3;
              if (window2 == window3)
              {
                [v16 bounds];
                [v16 convertRect:self toView:?];
                v35.x = x;
                v35.y = y;
                v22 = CGRectContainsPoint(v36, v35);

                if (v22)
                {
                  self->_inPassthroughHitTest = 1;
                  [(UIView *)self convertPoint:v16 toView:x, y];
                  v23 = [v16 hitTest:eventCopy forEvent:?];
                  self->_inPassthroughHitTest = 0;
                  if (v23)
                  {
                    v4 = v23;

                    v10 = v25;
                    goto LABEL_18;
                  }
                }
              }

              else
              {
              }
            }
          }

          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v10 = v25;
    }

    v4 = v10;
LABEL_18:
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_singleFingerTapRecognizer != recognizer)
  {
    return 1;
  }

  recognizerCopy = recognizer;
  view = [touch view];
  view2 = [recognizerCopy view];

  v4 = view == view2;
  return v4;
}

- (void)handleSingleTap:(id)tap
{
  if ([tap state] == 3)
  {

    [(UIDimmingView *)self _simulateTap];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {

    [(UIDimmingView *)self _simulateTap];
  }
}

- (void)_simulateTap
{
  if (!self->_ignoresTouches)
  {
    [(UIDimmingView *)self _sendDelegateDimmingViewWasTapped];
  }
}

- (void)_sendDelegateDimmingViewWasTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 dimmingViewWasTapped:self];
  }
}

- (void)_queueAdditionalEventGesturesFromView:(id)view
{
  gestureRecognizers = [view gestureRecognizers];
  window = [(UIView *)self window];
  if (window)
  {
    v5 = window;
    v6 = [gestureRecognizers count];

    if (v6)
    {
      v7 = gestureRecognizers;
      if (!self->_observedEventForAdditionalGestures)
      {
        v8 = UIApp;
        window2 = [(UIView *)self window];
        v10 = [v8 _touchesEventForWindow:window2];
        observedEventForAdditionalGestures = self->_observedEventForAdditionalGestures;
        self->_observedEventForAdditionalGestures = v10;

        [(UIEvent *)self->_observedEventForAdditionalGestures _addEventObserver:?];
        v7 = gestureRecognizers;
      }

      additionalEventGestureRecognizers = self->_additionalEventGestureRecognizers;
      if (!additionalEventGestureRecognizers)
      {
        v13 = [MEMORY[0x1E695DFA8] set];
        v14 = self->_additionalEventGestureRecognizers;
        self->_additionalEventGestureRecognizers = v13;

        v7 = gestureRecognizers;
        additionalEventGestureRecognizers = self->_additionalEventGestureRecognizers;
      }

      [(NSMutableSet *)additionalEventGestureRecognizers addObjectsFromArray:v7];
    }
  }
}

- (id)_gestureRecognizersForEvent:(id)event
{
  additionalEventGestureRecognizers = self->_additionalEventGestureRecognizers;
  if (additionalEventGestureRecognizers)
  {
    allObjects = [(NSMutableSet *)additionalEventGestureRecognizers allObjects];
    [(NSMutableSet *)self->_additionalEventGestureRecognizers removeAllObjects];
  }

  else
  {
    allObjects = MEMORY[0x1E695E0F0];
  }

  return allObjects;
}

- (BOOL)isTransparentFocusItem
{
  _focusBehavior = [(UIView *)self _focusBehavior];
  if ([_focusBehavior supportsViewTransparency])
  {
    delegate = [(UIDimmingView *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(UIDimmingView *)self delegate];
      _allowsFocusBehindDimmingView = [delegate2 _allowsFocusBehindDimmingView];

      return _allowsFocusBehindDimmingView;
    }
  }

  else
  {
  }

  v9.receiver = self;
  v9.super_class = UIDimmingView;
  return [(UIView *)&v9 isTransparentFocusItem];
}

- (UIDimmingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end