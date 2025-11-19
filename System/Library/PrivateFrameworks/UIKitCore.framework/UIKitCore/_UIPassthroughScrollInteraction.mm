@interface _UIPassthroughScrollInteraction
+ (BOOL)_isPassthroughGestureRecognizer:(id)a3;
- (BOOL)_delegatePassthroughInteractionDidRecognize:(CGPoint)a3;
- (BOOL)_delegateShouldInteractAtLocation:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_passthroughGestureRecognizer:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (BOOL)_passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)hitTestsAsOpaque;
- (NSString)description;
- (UIView)_touchFallbackView;
- (UIView)view;
- (_UIPassthroughGateGestureRecognizer)_gestureGate;
- (_UIPassthroughScrollGestureRecognizer)_passthroughScrollGestureRecognizer;
- (_UIPassthroughScrollInteraction)init;
- (_UIPassthroughScrollInteractionDelegate)delegate;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_handlePassthroughGestureRecognizerEndWithReason:(unint64_t)a3 atLocation:(CGPoint)a4;
- (void)_handlePassthroughRecognizer:(id)a3;
- (void)_setOverrideAllowsHitTestingOnTouchFallbackView:(BOOL)a3;
- (void)_setUpForWindow:(id)a3;
- (void)_tearDown;
- (void)_updateGesturesEatTouches;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)setEatsTouches:(BOOL)a3;
- (void)setHitTestsAsOpaque:(BOOL)a3;
- (void)setRecognizeOnPrimaryButtonDown:(BOOL)a3;
- (void)setRecognizeOnSecondaryButtonDown:(BOOL)a3;
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
  v3 = [(UIGestureRecognizer *)self->_passthroughScrollGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_passthroughScrollGestureRecognizer];

  v4 = [(UIGestureRecognizer *)self->_gestureGate view];
  [v4 removeGestureRecognizer:self->_gestureGate];
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

  v4 = [(_UIPassthroughScrollInteraction *)self eatsTouches];
  v5 = [(_UIPassthroughScrollInteraction *)self _gestureGate];
  [v5 setCancelsTouchesInView:1];
  [v5 setDelaysTouchesBegan:v4];
  [v5 setDelaysTouchesEnded:v4];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [v3 stringWithFormat:@"<%@ %p view: %@>", v5, self, WeakRetained];

  return v7;
}

- (void)setEatsTouches:(BOOL)a3
{
  if (self->_eatsTouches != a3)
  {
    self->_eatsTouches = a3;
    [(_UIPassthroughScrollInteraction *)self _updateGesturesEatTouches];
  }
}

- (BOOL)hitTestsAsOpaque
{
  v2 = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
  v3 = [v2 layer];
  v4 = [v3 hitTestsAsOpaque];

  return v4;
}

- (void)setHitTestsAsOpaque:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
  v4 = [v5 layer];
  [v4 setHitTestsAsOpaque:v3];
}

- (void)setRecognizeOnPrimaryButtonDown:(BOOL)a3
{
  v3 = a3;
  self->_recognizeOnPrimaryButtonDown = a3;
  v4 = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
  [v4 setEndForPrimaryButtonDown:v3];
}

- (void)setRecognizeOnSecondaryButtonDown:(BOOL)a3
{
  v3 = a3;
  self->_recognizeOnSecondaryButtonDown = a3;
  v4 = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
  [v4 setEndForSecondaryButtonDown:v3];
}

- (void)_setUpForWindow:(id)a3
{
  v17 = a3;
  if ([(_UIPassthroughScrollInteraction *)self configuredForInactiveInteractionEventsOnly])
  {
    v4 = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
    [v4 _setAcceptsFailureRequirements:0];

    v5 = [(_UIPassthroughScrollInteraction *)self _gestureGate];
    [v5 _setAcceptsFailureRequirements:0];
  }

  else
  {
    [v17 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v5 = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
    [v17 insertSubview:v5 atIndex:0];
  }

  v15 = [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizer];
  [v17 addGestureRecognizer:v15];

  v16 = [(_UIPassthroughScrollInteraction *)self _gestureGate];
  [v17 addGestureRecognizer:v16];

  [(_UIPassthroughScrollInteraction *)self _updateGesturesEatTouches];
}

- (void)dealloc
{
  [(_UIPassthroughScrollInteraction *)self _tearDown];
  v3.receiver = self;
  v3.super_class = _UIPassthroughScrollInteraction;
  [(_UIPassthroughScrollInteraction *)&v3 dealloc];
}

+ (BOOL)_isPassthroughGestureRecognizer:(id)a3
{
  v3 = a3;
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

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);
  v4 = [(_UIPassthroughScrollInteraction *)self view];
  v7 = [v4 _window];

  if (v7)
  {
    v5 = [(_UIPassthroughScrollInteraction *)self view];
    v6 = [v5 _window];
    [(_UIPassthroughScrollInteraction *)self _setUpForWindow:v6];
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(_UIPassthroughScrollInteraction *)self _tearDown];
  }

  if (v6)
  {
    [(_UIPassthroughScrollInteraction *)self _setUpForWindow:v6];
  }
}

- (void)_handlePassthroughRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    v5 = [v4 endReason];
    v6 = [v4 view];
    [v4 locationInView:v6];
    v8 = v7;
    v10 = v9;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64___UIPassthroughScrollInteraction__handlePassthroughRecognizer___block_invoke;
    v11[3] = &unk_1E70F38C0;
    v11[4] = self;
    v11[5] = v5;
    v11[6] = v8;
    v11[7] = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

- (BOOL)_delegatePassthroughInteractionDidRecognize:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIPassthroughScrollInteraction *)self delegate];
  v7 = objc_opt_respondsToSelector();

  v8 = [(_UIPassthroughScrollInteraction *)self delegate];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 passthroughScrollInteractionDidRecognize:self atLocation:{x, y}];
  }

  else
  {
    v10 = [v8 passthroughScrollInteractionDidRecognize:self];
  }

  v11 = v10;

  return v11;
}

- (void)_handlePassthroughGestureRecognizerEndWithReason:(unint64_t)a3 atLocation:(CGPoint)a4
{
  if (a3 > 3)
  {
    if (a3 - 4 > 2)
    {
      goto LABEL_10;
    }

    v8 = [(_UIPassthroughScrollInteraction *)self _delegatePassthroughInteractionDidRecognize:a4.x, a4.y];
    gestureGate = self->_gestureGate;
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_16:

    [(_UIPassthroughGateGestureRecognizer *)gestureGate endClosed];
    return;
  }

  if (a3 < 2)
  {
LABEL_15:
    gestureGate = self->_gestureGate;
    goto LABEL_16;
  }

  if (a3 == 2)
  {
    if ([(_UIPassthroughScrollInteraction *)self _delegatePassthroughInteractionDidRecognize:a4.x, a4.y]&& ![(_UIPassthroughScrollInteraction *)self eatsTouches])
    {
      gestureGate = self->_gestureGate;
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  if (a3 == 3)
  {
    v6 = [(_UIPassthroughScrollInteraction *)self _delegatePassthroughInteractionDidRecognize:a4.x, a4.y];
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
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"_UIPassthroughScrollInteraction.m" lineNumber:278 description:@"Unknown end reason received when handling end of a passthrough gesture recognizer"];
}

- (BOOL)_delegateShouldInteractAtLocation:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIPassthroughScrollInteraction *)self delegate];
  if (v8)
  {
    v9 = [(_UIPassthroughScrollInteraction *)self delegate];
    v10 = [v9 passthroughScrollInteraction:self shouldInteractAtLocation:v7 withEvent:{x, y}];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_setOverrideAllowsHitTestingOnTouchFallbackView:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPassthroughScrollInteraction *)self _touchFallbackView];
  v4 = [v5 layer];
  [v4 setAllowsHitTesting:v3];
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIPassthroughScrollInteraction *)self _gestureGate];

  if (v8 == v7)
  {
    passthroughScrollGestureRecognizer = self->_passthroughScrollGestureRecognizer;

    if (passthroughScrollGestureRecognizer != v6)
    {
      v9 = ![(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:v6];
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

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIPassthroughScrollInteraction *)self _gestureGate];

  v9 = v8 == v7 && self->_passthroughScrollGestureRecognizer != v6 && [(_UIPassthroughScrollInteraction *)self _passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:v6];
  return v9;
}

- (BOOL)_passthroughGestureRecognizer:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = [a3 view];
  v11 = [(_UIPassthroughScrollInteraction *)self view];
  [v10 convertPoint:v11 toView:{x, y}];
  v13 = v12;
  v15 = v14;

  LOBYTE(v10) = [(_UIPassthroughScrollInteraction *)self _delegateShouldInteractAtLocation:v9 withEvent:v13, v15];
  return v10;
}

- (BOOL)_passthroughScrollGestureRecognizerShouldRequireFailureOfGestureRecognizer:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = 1;
    goto LABEL_7;
  }

  v7 = self->_passthroughScrollGestureRecognizer;
  if (self->_passthroughScrollGestureRecognizer == v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([(UIGestureRecognizer *)v4 view], v8 = objc_claimAutoreleasedReturnValue(), [(UIGestureRecognizer *)self->_passthroughScrollGestureRecognizer view], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v8 != v9))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v10 = [(UIGestureRecognizer *)v4 delegate];
  if ([v10 configuredForInactiveInteractionEventsOnly])
  {

    goto LABEL_30;
  }

  v11 = [(UIGestureRecognizer *)v7 view];
  v12 = [v11 gestureRecognizers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
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

      if (v18 == v4)
      {
        v20 = v4;
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