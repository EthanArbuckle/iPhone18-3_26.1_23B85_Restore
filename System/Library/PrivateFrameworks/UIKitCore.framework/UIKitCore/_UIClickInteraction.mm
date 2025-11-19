@interface _UIClickInteraction
- (BOOL)driverCancelsTouchesInView;
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (Class)_driverClass;
- (UIView)view;
- (_UIClickInteraction)init;
- (_UIClickInteractionDelegate)delegate;
- (void)_beginInteraction;
- (void)_createFeedbackGenerator;
- (void)_endInteraction;
- (void)_setOverrideDriverClass:(Class)a3;
- (void)_updateDriver;
- (void)cancelInteraction;
- (void)clickDriver:(id)a3 didPerformEvent:(unint64_t)a4;
- (void)clickDriver:(id)a3 didUpdateHighlightProgress:(double)a4;
- (void)clickDriver:(id)a3 shouldBegin:(id)a4;
- (void)didMoveToView:(id)a3;
- (void)setAllowableMovement:(double)a3;
- (void)setDriverCancelsTouchesInView:(BOOL)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIClickInteraction

- (_UIClickInteraction)init
{
  v5.receiver = self;
  v5.super_class = _UIClickInteraction;
  v2 = [(_UIClickInteraction *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_UIClickInteraction *)v2 setAllowableMovement:44.0];
    [(_UIClickInteraction *)v3 setHapticsEnabled:1];
  }

  return v3;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_updateDriver
{
  v3 = [(_UIClickInteraction *)self _driverClass];
  v4 = [(_UIClickInteraction *)self driver];
  if (objc_opt_class())
  {
    v5 = [(_UIClickInteraction *)self driver];
    v6 = objc_opt_class();

    if (v3 == v6)
    {
      return;
    }
  }

  else
  {
  }

  v7 = [(_UIClickInteraction *)self driver];
  [v7 setView:0];

  v9 = objc_opt_new();
  [v9 setDelegate:self];
  v8 = [(_UIClickInteraction *)self view];
  [v9 setView:v8];

  [(_UIClickInteraction *)self allowableMovement];
  [v9 setAllowableMovement:?];
  [(_UIClickInteraction *)self setDriver:v9];
}

- (Class)_driverClass
{
  v3 = [(_UIClickInteraction *)self overrideDriverClass];
  if (!v3)
  {
    v4 = [(_UIClickInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v4 _clickInteractionDefaultDriverType:self];
    }

    v3 = _UIClickInteractionDriverForActivationStyle();
  }

  return v3;
}

- (_UIClickInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAllowableMovement:(double)a3
{
  if (self->_allowableMovement != a3)
  {
    self->_allowableMovement = a3;
    v4 = [(_UIClickInteraction *)self driver];
    [v4 setAllowableMovement:a3];
  }
}

- (void)cancelInteraction
{
  v2 = [(_UIClickInteraction *)self driver];
  [v2 cancelInteraction];
}

- (void)willMoveToView:(id)a3
{
  interactionEffect = self->_interactionEffect;
  self->_interactionEffect = 0;

  v5 = [(_UIClickInteraction *)self driver];
  [v5 setView:0];
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    [(_UIClickInteraction *)self _updateDriver];
  }
}

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIClickInteraction *)self driver];
  [v5 locationInCoordinateSpace:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_beginInteraction
{
  v6 = [(_UIClickInteraction *)self delegate];
  v3 = [(_UIClickInteraction *)self interactionEffect];

  if (!v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v6 highlightEffectForClickInteraction:self];
    interactionEffect = self->_interactionEffect;
    self->_interactionEffect = v4;
  }

  [(_UIClickInteraction *)self _createFeedbackGenerator];
}

- (void)_endInteraction
{
  v3 = [(_UIClickInteraction *)self interactionEffect];

  if (v3)
  {
    v4 = objc_opt_new();
    [v4 setProgress:0.0];
    [v4 setEnded:1];
    v5 = [(_UIClickInteraction *)self interactionEffect];
    [v5 interaction:self didChangeWithContext:v4];

    interactionEffect = self->_interactionEffect;
    self->_interactionEffect = 0;
  }

  v7 = [(_UIClickInteraction *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(_UIClickInteraction *)self delegate];
    [v9 clickInteractionDidEnd:self];
  }

  if ([(_UIClickInteraction *)self hapticsEnabled])
  {
    v10 = [(_UIClickInteraction *)self feedbackGenerator];
    [v10 userInteractionEnded];

    [(_UIClickInteraction *)self setFeedbackGenerator:0];
  }
}

- (void)_setOverrideDriverClass:(Class)a3
{
  if (self->_overrideDriverClass != a3)
  {
    self->_overrideDriverClass = a3;
    [(_UIClickInteraction *)self _updateDriver];
  }
}

- (void)_createFeedbackGenerator
{
  v9 = [(_UIClickInteraction *)self view];
  v3 = [v9 window];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIClickInteraction *)self hapticsEnabled];

    if (!v5)
    {
      return;
    }

    v6 = [_UIClickFeedbackGenerator alloc];
    v7 = [(_UIClickInteraction *)self view];
    v8 = [(_UIClickFeedbackGenerator *)v6 initWithView:v7];
    [(_UIClickInteraction *)self setFeedbackGenerator:v8];

    v9 = [(_UIClickInteraction *)self feedbackGenerator];
    [v9 userInteractionStarted];
  }
}

- (BOOL)driverCancelsTouchesInView
{
  v2 = [(_UIClickInteraction *)self driver];
  v3 = [v2 cancelsTouchesInView];

  return v3;
}

- (void)setDriverCancelsTouchesInView:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIClickInteraction *)self driver];
  [v4 setCancelsTouchesInView:v3];
}

- (void)clickDriver:(id)a3 shouldBegin:(id)a4
{
  v7 = a4;
  v5 = [(_UIClickInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if ([v5 clickInteractionShouldBegin:self])
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
}

- (void)clickDriver:(id)a3 didPerformEvent:(unint64_t)a4
{
  v9 = a3;
  v6 = [(_UIClickInteraction *)self delegate];
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      if (-[_UIClickInteraction hapticsEnabled](self, "hapticsEnabled") && ([v9 clicksUpAutomaticallyAfterTimeout] & 1) == 0)
      {
        v8 = [(_UIClickInteraction *)self feedbackGenerator];
        [v8 pressedUp];
      }

      [v6 clickInteractionDidClickUp:self];
    }

    else if (a4 == 3)
    {
      [(_UIClickInteraction *)self _endInteraction];
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      if ([(_UIClickInteraction *)self hapticsEnabled])
      {
        v7 = [(_UIClickInteraction *)self feedbackGenerator];
        [v7 pressedDown];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 clickInteractionDidClickDown:self];
      }
    }
  }

  else
  {
    [(_UIClickInteraction *)self _beginInteraction];
  }
}

- (void)clickDriver:(id)a3 didUpdateHighlightProgress:(double)a4
{
  v6 = a3;
  v10 = objc_opt_new();
  [v10 setProgress:a4];
  [v6 maximumEffectProgress];
  v8 = v7;

  [v10 setMaximumProgress:v8];
  v9 = [(_UIClickInteraction *)self interactionEffect];
  [v9 interaction:self didChangeWithContext:v10];
}

@end