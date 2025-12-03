@interface _UIPassthroughScrollInteraction
+ (BOOL)_isPassthroughGestureRecognizer:(id)recognizer;
- (BOOL)_delegatePassthroughInteractionDidRecognize:(CGPoint)recognize;
- (BOOL)_delegateShouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)_passthroughGestureRecognizer:(id)recognizer shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (BOOL)_passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:(id)recognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)hitTestsAsOpaque;
- (NSString)description;
- (UIView)_touchFallbackView;
- (UIView)view;
- (_UIPassthroughGateGestureRecognizer)_gestureGate;
- (_UIPassthroughScrollGestureRecognizer)_passthroughScrollGestureRecognizer;
- (_UIPassthroughScrollInteraction)init;
- (_UIPassthroughScrollInteractionDelegate)delegate;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_handlePassthroughGestureRecognizerEndWithReason:(unint64_t)reason atLocation:(CGPoint)location;
- (void)_handlePassthroughRecognizer:(id)recognizer;
- (void)_setOverrideAllowsHitTestingOnTouchFallbackView:(BOOL)view;
- (void)_setUpForWindow:(id)window;
- (void)_tearDown;
- (void)_updateGesturesEatTouches;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setEatsTouches:(BOOL)touches;
- (void)setHitTestsAsOpaque:(BOOL)opaque;
- (void)setRecognizeOnPrimaryButtonDown:(BOOL)down;
- (void)setRecognizeOnSecondaryButtonDown:(BOOL)down;
@end

@implementation _UIPassthroughScrollInteraction

- (_UIPassthroughScrollInteraction)init
{
  v3.receiver = self;
  v3.super_class = _UIPassthroughScrollInteraction;
  result = [(_UIPassthroughScrollInteraction *)&v3 init];
  if (result)
  {
    result->_eatsTouches = 1;
  }

  return result;
}

- (_UIPassthroughScrollGestureRecognizer)_passthroughScrollGestureRecognizer
{
  passthroughScrollGestureRecognizer = self->_passthroughScrollGestureRecognizer;
  if (!passthroughScrollGestureRecognizer)
  {
    v4 = [[_UIPassthroughScrollGestureRecognizer alloc] initWithTarget:self action:sel__handlePassthroughRecognizer_];
    v5 = self->_passthroughScrollGestureRecognizer;
    self->_passthroughScrollGestureRecognizer = v4;

    [(UIGestureRecognizer *)self->_passthroughScrollGestureRecognizer setDelegate:self];
    passthroughScrollGestureRecognizer = self->_passthroughScrollGestureRecognizer;
  }

  return passthroughScrollGestureRecognizer;
}

- (UIView)_touchFallbackView
{
  if (!self->_touchFallbackView && ![(_UIPassthroughScrollInteraction *)self configuredForInactiveInteractionEventsOnly])
  {
    v3 = objc_alloc_init(_UITouchFallbackView);
    touchFallbackView = self->_touchFallbackView;
    self->_touchFallbackView = &v3->super;

    [(UIView *)self->_touchFallbackView setAutoresizingMask:18];
  }

  v5 = self->_touchFallbackView;

  return v5;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_tearDown
{
  [(UIView *)self->_touchFallbackView removeFromSuperview];
  view = [(UIGestureRecognizer *)self->_passthroughScrollGestureRecognizer view];
  [view removeGestureRecognizer:self->_passthroughScrollGestureRecognizer];

  view2 = [(UIGestureRecognizer *)self->_gestureGate view];
  [view2 removeGestureRecognizer:self->_gestureGate];
}

- (_UIPassthroughGateGestureRecognizer)_gestureGate
{
  gestureGate = self->_gestureGate;
  if (!gestureGate)
  {
    v4 = objc_alloc_init(_UIPassthroughGateGestureRecognizer);
    v5 = self->_gestureGate;
    self->_gestureGate = v4;

    [(UIGestureRecognizer *)self->_gestureGate setDelegate:self];
    gestureGate = self->_gestureGate;
  }

  return gestureGate;
}

- (void)_updateGesturesEatTouches
{
  v3 = self->_passthroughScrollGestureRecognizer;
  [(UIGestureRecognizer *)v3 setCancelsTouchesInView:0];
  [(UIGestureRecognizer *)v3 setDelaysTouchesBegan:0];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];

  eatsTouches = [(_UIPassthroughScrollInteraction *)self eatsTouches];
  _gestureGate = [(_UIPassthroughScrollInteraction *)self _gestureGate];
  [_gestureGate setCancelsTouchesInView:1];
  [_gestureGate setDelaysTouchesBegan:eatsTouches];
  [_gestureGate setDelaysTouchesEnded:eatsTouches];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  weakRetained = [v3 stringWithFormat:@"<%@ %p view: %@>", v5, self, WeakRetained];

  return weakRetained;
}

- (void)setEatsTouches:(BOOL)touches
{
  if (self->_eatsTouches != touches)
  {
    self->_eatsTouches = touches;
    [(_UIPassthroughScrollInteraction *)self _updateGesturesEatTouches];
  }
}

- (BOOL)hitTestsAsOpaque
{
  _touchFallbackView = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
  layer = [_touchFallbackView layer];
  hitTestsAsOpaque = [layer hitTestsAsOpaque];

  return hitTestsAsOpaque;
}

- (void)setHitTestsAsOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  _touchFallbackView = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
  layer = [_touchFallbackView layer];
  [layer setHitTestsAsOpaque:opaqueCopy];
}

- (void)setRecognizeOnPrimaryButtonDown:(BOOL)down
{
  downCopy = down;
  self->_recognizeOnPrimaryButtonDown = down;
  _passthroughScrollGestureRecognizer = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
  [_passthroughScrollGestureRecognizer setEndForPrimaryButtonDown:downCopy];
}

- (void)setRecognizeOnSecondaryButtonDown:(BOOL)down
{
  downCopy = down;
  self->_recognizeOnSecondaryButtonDown = down;
  _passthroughScrollGestureRecognizer = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
  [_passthroughScrollGestureRecognizer setEndForSecondaryButtonDown:downCopy];
}

- (void)_setUpForWindow:(id)window
{
  windowCopy = window;
  if ([(_UIPassthroughScrollInteraction *)self configuredForInactiveInteractionEventsOnly])
  {
    _passthroughScrollGestureRecognizer = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
    [_passthroughScrollGestureRecognizer _setAcceptsFailureRequirements:0];

    _gestureGate = [(_UIPassthroughScrollInteraction *)self _gestureGate];
    [_gestureGate _setAcceptsFailureRequirements:0];
  }

  else
  {
    [windowCopy bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    _touchFallbackView = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
    [_touchFallbackView setFrame:{v7, v9, v11, v13}];

    _gestureGate = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
    [windowCopy insertSubview:_gestureGate atIndex:0];
  }

  _passthroughScrollGestureRecognizer2 = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
  [windowCopy addGestureRecognizer:_passthroughScrollGestureRecognizer2];

  _gestureGate2 = [(_UIPassthroughScrollInteraction *)self _gestureGate];
  [windowCopy addGestureRecognizer:_gestureGate2];

  [(_UIPassthroughScrollInteraction *)self _updateGesturesEatTouches];
}

- (void)dealloc
{
  [(_UIPassthroughScrollInteraction *)self _tearDown];
  v3.receiver = self;
  v3.super_class = _UIPassthroughScrollInteraction;
  [(_UIPassthroughScrollInteraction *)&v3 dealloc];
}

+ (BOOL)_isPassthroughGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);
  view = [(_UIPassthroughScrollInteraction *)self view];
  _window = [view _window];

  if (_window)
  {
    view2 = [(_UIPassthroughScrollInteraction *)self view];
    _window2 = [view2 _window];
    [(_UIPassthroughScrollInteraction *)self _setUpForWindow:_window2];
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  if (windowCopy)
  {
    [(_UIPassthroughScrollInteraction *)self _tearDown];
  }

  if (toWindowCopy)
  {
    [(_UIPassthroughScrollInteraction *)self _setUpForWindow:toWindowCopy];
  }
}

- (void)_handlePassthroughRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 3)
  {
    endReason = [recognizerCopy endReason];
    view = [recognizerCopy view];
    [recognizerCopy locationInView:view];
    v8 = v7;
    v10 = v9;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64___UIPassthroughScrollInteraction__handlePassthroughRecognizer___block_invoke;
    v11[3] = &unk_1E70F38C0;
    v11[4] = self;
    v11[5] = endReason;
    v11[6] = v8;
    v11[7] = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (BOOL)_delegatePassthroughInteractionDidRecognize:(CGPoint)recognize
{
  y = recognize.y;
  x = recognize.x;
  delegate = [(_UIPassthroughScrollInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  delegate2 = [(_UIPassthroughScrollInteraction *)self delegate];
  v9 = delegate2;
  if (v7)
  {
    v10 = [delegate2 passthroughScrollInteractionDidRecognize:self atLocation:{x, y}];
  }

  else
  {
    v10 = [delegate2 passthroughScrollInteractionDidRecognize:self];
  }

  v11 = v10;

  return v11;
}

- (void)_handlePassthroughGestureRecognizerEndWithReason:(unint64_t)reason atLocation:(CGPoint)location
{
  if (reason > 3)
  {
    if (reason - 4 > 2)
    {
      goto LABEL_10;
    }

    v8 = [(_UIPassthroughScrollInteraction *)self _delegatePassthroughInteractionDidRecognize:location.x, location.y];
    gestureGate = self->_gestureGate;
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_16:

    [(_UIPassthroughGateGestureRecognizer *)gestureGate endClosed];
    return;
  }

  if (reason < 2)
  {
LABEL_15:
    gestureGate = self->_gestureGate;
    goto LABEL_16;
  }

  if (reason == 2)
  {
    if ([(_UIPassthroughScrollInteraction *)self _delegatePassthroughInteractionDidRecognize:location.x, location.y]&& ![(_UIPassthroughScrollInteraction *)self eatsTouches])
    {
      gestureGate = self->_gestureGate;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (reason == 3)
  {
    v6 = [(_UIPassthroughScrollInteraction *)self _delegatePassthroughInteractionDidRecognize:location.x, location.y];
    v7 = ![(_UIPassthroughScrollInteraction *)self configuredForInactiveInteractionEventsOnly]&& [(_UIPassthroughScrollInteraction *)self eatsTouches];
    if (v6 && !v7)
    {
      gestureGate = self->_gestureGate;
LABEL_25:

      [(_UIPassthroughGateGestureRecognizer *)gestureGate open];
      return;
    }

    gestureGate = self->_gestureGate;
    goto LABEL_16;
  }

LABEL_10:
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPassthroughScrollInteraction.m" lineNumber:278 description:@"Unknown end reason received when handling end of a passthrough gesture recognizer"];
}

- (BOOL)_delegateShouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  delegate = [(_UIPassthroughScrollInteraction *)self delegate];
  if (delegate)
  {
    delegate2 = [(_UIPassthroughScrollInteraction *)self delegate];
    v10 = [delegate2 passthroughScrollInteraction:self shouldInteractAtLocation:eventCopy withEvent:{x, y}];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_setOverrideAllowsHitTestingOnTouchFallbackView:(BOOL)view
{
  viewCopy = view;
  _touchFallbackView = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
  layer = [_touchFallbackView layer];
  [layer setAllowsHitTesting:viewCopy];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _gestureGate = [(_UIPassthroughScrollInteraction *)self _gestureGate];

  if (_gestureGate == recognizerCopy)
  {
    passthroughScrollGestureRecognizer = self->_passthroughScrollGestureRecognizer;

    if (passthroughScrollGestureRecognizer != gestureRecognizerCopy)
    {
      v9 = ![(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  LOBYTE(v9) = 0;
LABEL_6:

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  _gestureGate = [(_UIPassthroughScrollInteraction *)self _gestureGate];

  v9 = _gestureGate == recognizerCopy && self->_passthroughScrollGestureRecognizer != gestureRecognizerCopy && [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:gestureRecognizerCopy];
  return v9;
}

- (BOOL)_passthroughGestureRecognizer:(id)recognizer shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  eventCopy = event;
  view = [recognizer view];
  view2 = [(_UIPassthroughScrollInteraction *)self view];
  [view convertPoint:view2 toView:{x, y}];
  v13 = v12;
  v15 = v14;

  LOBYTE(view) = [(_UIPassthroughScrollInteraction *)self _delegateShouldInteractAtLocation:eventCopy withEvent:v13, v15];
  return view;
}

- (BOOL)_passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:(id)recognizer
{
  v26 = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
    goto LABEL_7;
  }

  v7 = self->_passthroughScrollGestureRecognizer;
  if (self->_passthroughScrollGestureRecognizer == recognizerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(UIGestureRecognizer *)recognizerCopy view], v8 = objc_claimAutoreleasedReturnValue(), [(UIGestureRecognizer *)self->_passthroughScrollGestureRecognizer view], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 != v9))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  delegate = [(UIGestureRecognizer *)recognizerCopy delegate];
  if ([delegate configuredForInactiveInteractionEventsOnly])
  {

    goto LABEL_30;
  }

  view = [(UIGestureRecognizer *)v7 view];
  gestureRecognizers = [view gestureRecognizers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = gestureRecognizers;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v14)
  {
    v19 = 0;
    goto LABEL_29;
  }

  v15 = v14;
  v16 = *v22;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v21 + 1) + 8 * i);
      if (v18 == v7)
      {
        v20 = v7;
LABEL_28:
        v19 = v20;
        goto LABEL_29;
      }

      if (v18 == recognizerCopy)
      {
        v20 = recognizerCopy;
        goto LABEL_28;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v19 = 0;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_29:

  if (v19 != v7)
  {
    goto LABEL_11;
  }

LABEL_30:
  v5 = 1;
LABEL_12:

LABEL_7:
  return v5;
}

- (_UIPassthroughScrollInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end