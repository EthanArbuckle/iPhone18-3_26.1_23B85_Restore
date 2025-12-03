@interface UIKBResizingKeyplaneCoordinator
+ (double)savedResizingOffset;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIKBResizingKeyplaneCoordinator)init;
- (UIKBResizingKeyplaneCoordinatorCoordinatorDelegate)delegate;
- (void)dimKeys:(id)keys;
- (void)handleResizeGesture:(id)gesture;
- (void)reloadResizingOffset;
- (void)resizeKeyplaneWithOffset:(double)offset andRedraw:(BOOL)redraw;
- (void)setRenderConfig:(id)config;
- (void)stopResizing;
- (void)uninstallGestureRecognizers;
- (void)updateGestureRecognizers;
- (void)updateGrabber;
@end

@implementation UIKBResizingKeyplaneCoordinator

- (void)updateGrabber
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v5 = v4;

  delegate = [(UIKBResizingKeyplaneCoordinator *)self delegate];
  keyplaneSupportsResizingGesture = [delegate keyplaneSupportsResizingGesture];

  grabber = self->_grabber;
  if (!grabber && keyplaneSupportsResizingGesture)
  {
    v9 = objc_alloc_init(_UIGrabber);
    [(_UIGrabber *)v9 _setBlurEnabled:0];
    v10 = self->_grabber;
    self->_grabber = &v9->super.super;
    v11 = v9;

    [(UIView *)self->_grabber sizeToFit];
    [(UIView *)self->_grabber setUserInteractionEnabled:0];
    mainScreen2 = [objc_opt_self() mainScreen];
    [mainScreen2 scale];
    v14 = v13;
    layer = [(UIView *)self->_grabber layer];
    [layer setRasterizationScale:v14];

    layer2 = [(UIView *)self->_grabber layer];

    [layer2 setShouldRasterize:1];
    grabber = self->_grabber;
  }

  [(UIView *)grabber setBackgroundColor:self->_grabberColor];
  if (keyplaneSupportsResizingGesture)
  {
    v17 = fmax(v5, 1.0);
    [(UIView *)self->_grabber setAlpha:self->_foregroundOpacity];
    delegate2 = [(UIKBResizingKeyplaneCoordinator *)self delegate];
    v23 = [delegate2 hostViewForResizingKeyplane:self];

    [(UIView *)self->_grabber center];
    [v23 frame];
    v20 = v19 * 0.5;
    [(UIView *)self->_grabber frame];
    [(UIView *)self->_grabber setCenter:v20, 1.0 / v17 + 5.0 + v21 * 0.5];
    [v23 addSubview:self->_grabber];
  }

  else
  {
    v22 = self->_grabber;

    [(UIView *)v22 removeFromSuperview];
  }
}

- (UIKBResizingKeyplaneCoordinatorCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIKBResizingKeyplaneCoordinator)init
{
  v3.receiver = self;
  v3.super_class = UIKBResizingKeyplaneCoordinator;
  result = [(UIKBResizingKeyplaneCoordinator *)&v3 init];
  if (result)
  {
    result->_foregroundOpacity = 1.0;
  }

  return result;
}

- (void)reloadResizingOffset
{
  [objc_opt_class() savedResizingOffset];
  self->_prevResizingOffset = v3;
  self->_resizingOffset = v3;
}

+ (double)savedResizingOffset
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  if (v4 >= v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return kSnapStops[_resizingStopIndex != 0] * v7;
}

- (void)setRenderConfig:(id)config
{
  lightKeyboard = [config lightKeyboard];
  v5 = 1.0;
  if (lightKeyboard)
  {
    v5 = 0.0;
  }

  v6 = [UIColor colorWithWhite:v5 alpha:0.25];
  grabberColor = self->_grabberColor;
  self->_grabberColor = v6;

  [(UIKBResizingKeyplaneCoordinator *)self updateGrabber];
}

- (void)dimKeys:(id)keys
{
  v18 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [keysCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [keysCopy objectForKeyedSubscript:v10];
        if (([v10 integerValue] & 4) != 0)
        {
          [v11 doubleValue];
          self->_foregroundOpacity = v12;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(UIKBResizingKeyplaneCoordinator *)self updateGrabber];
}

- (void)updateGestureRecognizers
{
  delegate = [(UIKBResizingKeyplaneCoordinator *)self delegate];
  keyplaneSupportsResizingGesture = [delegate keyplaneSupportsResizingGesture];

  gestureRecognizer = self->_gestureRecognizer;
  if (keyplaneSupportsResizingGesture)
  {
    if (!gestureRecognizer)
    {
      v6 = objc_alloc_init(UIKBResizingKeyplanePanGestureRecognizer);
      v7 = self->_gestureRecognizer;
      self->_gestureRecognizer = v6;

      [(UIPanGestureRecognizer *)self->_gestureRecognizer setMaximumNumberOfTouches:1];
      [(UIPanGestureRecognizer *)self->_gestureRecognizer _setCanPanHorizontally:0];
      [(UIKBResizingKeyplanePanGestureRecognizer *)self->_gestureRecognizer setResizingDelegate:self];
      [(UIGestureRecognizer *)self->_gestureRecognizer addTarget:self action:sel_handleResizeGesture_];
    }

    delegate2 = [(UIKBResizingKeyplaneCoordinator *)self delegate];
    v11 = [delegate2 hostViewForResizingKeyplane:self];

    [v11 addGestureRecognizer:self->_gestureRecognizer];
    [(UIPanGestureRecognizer *)self->_gestureRecognizer setDelegate:self];
  }

  else
  {
    view = [(UIGestureRecognizer *)gestureRecognizer view];
    [view removeGestureRecognizer:self->_gestureRecognizer];

    v10 = self->_gestureRecognizer;

    [(UIPanGestureRecognizer *)v10 setDelegate:0];
  }
}

- (void)uninstallGestureRecognizers
{
  gestureRecognizer = self->_gestureRecognizer;
  if (gestureRecognizer)
  {
    view = [(UIGestureRecognizer *)gestureRecognizer view];
    [view removeGestureRecognizer:self->_gestureRecognizer];

    v5 = self->_gestureRecognizer;
    self->_gestureRecognizer = 0;
  }
}

- (void)stopResizing
{
  if (self->_isResizing)
  {
    resizingAnimationGroup = self->_resizingAnimationGroup;
    if (resizingAnimationGroup)
    {
      [(_UIDynamicAnimation *)resizingAnimationGroup stop];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_gestureRecognizer == beginCopy)
  {
    delegate = [(UIKBResizingKeyplaneCoordinator *)self delegate];
    v7 = [delegate hostViewForResizingKeyplane:self];

    [v7 frame];
    if (v8 >= 1.0)
    {
      v9 = v8;
      [(UIPanGestureRecognizer *)beginCopy locationInView:v7];
      v5 = (v10 - v9 * 0.5) / (v9 * 0.5) * ((v10 - v9 * 0.5) / (v9 * 0.5)) + (v11 + 47.0) / 94.0 * ((v11 + 47.0) / 94.0) <= 1.0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)handleResizeGesture:(id)gesture
{
  gestureCopy = gesture;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v7 = v6;
  v9 = v8;

  if (v7 >= v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  delegate = [(UIKBResizingKeyplaneCoordinator *)self delegate];
  v12 = [delegate hostViewForResizingKeyplane:self];

  if (v12)
  {
    v13 = v10 * 0.0;
    v14 = v10 * 0.242610837 - v10 * 0.0;
    window = [v12 window];
    [gestureCopy translationInView:window];
    v17 = v16;

    window2 = [v12 window];
    [gestureCopy velocityInView:window2];
    v20 = v19;

    v21 = self->_prevResizingOffset - v17;
    if (v21 <= v10 * 0.242610837)
    {
      if (v21 < v13)
      {
        v21 = v13 - v14 * (1.0 - 1.0 / ((v13 - v21) / v14 * 0.55 + 1.0));
      }
    }

    else
    {
      v21 = v10 * 0.242610837 + v14 * (1.0 - 1.0 / ((v21 - v10 * 0.242610837) / v14 * 0.55 + 1.0));
    }

    if ([gestureCopy state] == 1)
    {
      resizingAnimationGroup = self->_resizingAnimationGroup;
      if (resizingAnimationGroup)
      {
        [(_UIDynamicAnimation *)resizingAnimationGroup stop];
      }

      self->_isResizing = 1;
    }

    else
    {
      v23 = round(v21);
      if ([gestureCopy state] == 2)
      {
        [(UIKBResizingKeyplaneCoordinator *)self resizeKeyplaneWithOffset:0 andRedraw:v23];
      }

      else if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
      {
        v24 = 0;
        v25 = 0;
        v26 = -v20;
        v27 = v23 + v20 * -0.25;
        v28 = 1;
        v29 = 0.0;
        v30 = 1.79769313e308;
        do
        {
          v31 = v28;
          v32 = v10 * kSnapStops[v24];
          v33 = v32 - v27;
          if (v32 - v27 < 0.0)
          {
            v33 = -(v32 - v27);
          }

          if (v33 < v30)
          {
            v30 = v33;
            v25 = v24;
            v29 = v10 * kSnapStops[v24];
          }

          v24 = 1;
          v28 = 0;
        }

        while ((v31 & 1) != 0);
        [(UIKBResizingKeyplaneCoordinator *)self saveResizingStopIndex:v25];
        v34 = [[_UIDynamicValueAnimation alloc] initWithValue:v23 velocity:v26 unitSize:1.0];
        [(_UIDynamicValueAnimation *)v34 setFriction:0.5];
        v35 = [_UIDynamicAnimationActiveValue upperBoundary:1 ofType:v29];
        v36 = [_UIDynamicAnimationActiveValue lowerBoundary:1 ofType:v29];
        [(_UIDynamicValueAnimation *)v34 addActiveValue:v35];
        [(_UIDynamicValueAnimation *)v34 addActiveValue:v36];
        v37 = objc_alloc_init(_UIDynamicAnimationGroup);
        v38 = self->_resizingAnimationGroup;
        self->_resizingAnimationGroup = v37;

        [(_UIDynamicAnimationGroup *)self->_resizingAnimationGroup addAnimation:v34];
        v39 = self->_resizingAnimationGroup;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __55__UIKBResizingKeyplaneCoordinator_handleResizeGesture___block_invoke;
        v41[3] = &unk_1E7126488;
        v41[4] = self;
        *&v41[5] = v29;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __55__UIKBResizingKeyplaneCoordinator_handleResizeGesture___block_invoke_2;
        v40[3] = &unk_1E70F9B38;
        v40[4] = self;
        *&v40[5] = v29;
        [(_UIDynamicAnimationGroup *)v39 runWithGroupApplier:v41 completion:v40];
      }
    }
  }
}

uint64_t __55__UIKBResizingKeyplaneCoordinator_handleResizeGesture___block_invoke(uint64_t result, unsigned int a2)
{
  if (a2 <= 4)
  {
    v2 = result;
    if (((1 << a2) & 0x19) != 0)
    {
      *(*(result + 32) + 56) = 0;
      result = [*(result + 32) resizeKeyplaneWithOffset:1 andRedraw:*(result + 40)];
      v3 = *(v2 + 40);
      v4 = *(*(v2 + 32) + 8);
      if (v3 != v4)
      {
        if (v3 <= v4)
        {
          v5 = UIKBAnalyticsCandidateUIDirectionClose;
        }

        else
        {
          v5 = UIKBAnalyticsCandidateUIDirectionOpen;
        }

        v6 = *v5;

        return [UIKBAnalyticsDispatcher handwritingResized:v6];
      }
    }

    else
    {
      v7 = [*(*(result + 32) + 32) animations];
      v8 = [v7 firstObject];
      [v8 value];
      v10 = v9;

      v11 = *(v2 + 32);

      return [v11 resizeKeyplaneWithOffset:0 andRedraw:v10];
    }
  }

  return result;
}

void __55__UIKBResizingKeyplaneCoordinator_handleResizeGesture___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 40);
  *(*(a1 + 32) + 8) = *(*(a1 + 32) + 16);
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 56) = 0;
}

- (void)resizeKeyplaneWithOffset:(double)offset andRedraw:(BOOL)redraw
{
  v5 = round(offset);
  if (v5 != self->_resizingOffset)
  {
    redrawCopy = redraw;
    self->_resizingOffset = v5;
    delegate = [(UIKBResizingKeyplaneCoordinator *)self delegate];
    [delegate resizeKeyplaneAndRedraw:redrawCopy];
  }
}

@end