@interface _UIClickInteraction
- (BOOL)driverCancelsTouchesInView;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (Class)_driverClass;
- (UIView)view;
- (_UIClickInteraction)init;
- (_UIClickInteractionDelegate)delegate;
- (void)_beginInteraction;
- (void)_createFeedbackGenerator;
- (void)_endInteraction;
- (void)_setOverrideDriverClass:(Class)class;
- (void)_updateDriver;
- (void)cancelInteraction;
- (void)clickDriver:(id)driver didPerformEvent:(unint64_t)event;
- (void)clickDriver:(id)driver didUpdateHighlightProgress:(double)progress;
- (void)clickDriver:(id)driver shouldBegin:(id)begin;
- (void)didMoveToView:(id)view;
- (void)setAllowableMovement:(double)movement;
- (void)setDriverCancelsTouchesInView:(BOOL)view;
- (void)willMoveToView:(id)view;
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
  _driverClass = [(_UIClickInteraction *)self _driverClass];
  driver = [(_UIClickInteraction *)self driver];
  if (objc_opt_class())
  {
    driver2 = [(_UIClickInteraction *)self driver];
    v6 = objc_opt_class();

    if (_driverClass == v6)
    {
      return;
    }
  }

  else
  {
  }

  driver3 = [(_UIClickInteraction *)self driver];
  [driver3 setView:0];

  v9 = objc_opt_new();
  [v9 setDelegate:self];
  view = [(_UIClickInteraction *)self view];
  [v9 setView:view];

  [(_UIClickInteraction *)self allowableMovement];
  [v9 setAllowableMovement:?];
  [(_UIClickInteraction *)self setDriver:v9];
}

- (Class)_driverClass
{
  overrideDriverClass = [(_UIClickInteraction *)self overrideDriverClass];
  if (!overrideDriverClass)
  {
    delegate = [(_UIClickInteraction *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate _clickInteractionDefaultDriverType:self];
    }

    overrideDriverClass = _UIClickInteractionDriverForActivationStyle();
  }

  return overrideDriverClass;
}

- (_UIClickInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setAllowableMovement:(double)movement
{
  if (self->_allowableMovement != movement)
  {
    self->_allowableMovement = movement;
    driver = [(_UIClickInteraction *)self driver];
    [driver setAllowableMovement:movement];
  }
}

- (void)cancelInteraction
{
  driver = [(_UIClickInteraction *)self driver];
  [driver cancelInteraction];
}

- (void)willMoveToView:(id)view
{
  interactionEffect = self->_interactionEffect;
  self->_interactionEffect = 0;

  driver = [(_UIClickInteraction *)self driver];
  [driver setView:0];
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    [(_UIClickInteraction *)self _updateDriver];
  }
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  driver = [(_UIClickInteraction *)self driver];
  [driver locationInCoordinateSpace:spaceCopy];
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
  delegate = [(_UIClickInteraction *)self delegate];
  interactionEffect = [(_UIClickInteraction *)self interactionEffect];

  if (!interactionEffect && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [delegate highlightEffectForClickInteraction:self];
    interactionEffect = self->_interactionEffect;
    self->_interactionEffect = v4;
  }

  [(_UIClickInteraction *)self _createFeedbackGenerator];
}

- (void)_endInteraction
{
  interactionEffect = [(_UIClickInteraction *)self interactionEffect];

  if (interactionEffect)
  {
    v4 = objc_opt_new();
    [v4 setProgress:0.0];
    [v4 setEnded:1];
    interactionEffect2 = [(_UIClickInteraction *)self interactionEffect];
    [interactionEffect2 interaction:self didChangeWithContext:v4];

    interactionEffect = self->_interactionEffect;
    self->_interactionEffect = 0;
  }

  delegate = [(_UIClickInteraction *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(_UIClickInteraction *)self delegate];
    [delegate2 clickInteractionDidEnd:self];
  }

  if ([(_UIClickInteraction *)self hapticsEnabled])
  {
    feedbackGenerator = [(_UIClickInteraction *)self feedbackGenerator];
    [feedbackGenerator userInteractionEnded];

    [(_UIClickInteraction *)self setFeedbackGenerator:0];
  }
}

- (void)_setOverrideDriverClass:(Class)class
{
  if (self->_overrideDriverClass != class)
  {
    self->_overrideDriverClass = class;
    [(_UIClickInteraction *)self _updateDriver];
  }
}

- (void)_createFeedbackGenerator
{
  view = [(_UIClickInteraction *)self view];
  window = [view window];
  if (window)
  {
    v4 = window;
    hapticsEnabled = [(_UIClickInteraction *)self hapticsEnabled];

    if (!hapticsEnabled)
    {
      return;
    }

    v6 = [_UIClickFeedbackGenerator alloc];
    view2 = [(_UIClickInteraction *)self view];
    v8 = [(_UIClickFeedbackGenerator *)v6 initWithView:view2];
    [(_UIClickInteraction *)self setFeedbackGenerator:v8];

    view = [(_UIClickInteraction *)self feedbackGenerator];
    [view userInteractionStarted];
  }
}

- (BOOL)driverCancelsTouchesInView
{
  driver = [(_UIClickInteraction *)self driver];
  cancelsTouchesInView = [driver cancelsTouchesInView];

  return cancelsTouchesInView;
}

- (void)setDriverCancelsTouchesInView:(BOOL)view
{
  viewCopy = view;
  driver = [(_UIClickInteraction *)self driver];
  [driver setCancelsTouchesInView:viewCopy];
}

- (void)clickDriver:(id)driver shouldBegin:(id)begin
{
  beginCopy = begin;
  delegate = [(_UIClickInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if ([delegate clickInteractionShouldBegin:self])
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

  beginCopy[2](beginCopy, v6);
}

- (void)clickDriver:(id)driver didPerformEvent:(unint64_t)event
{
  driverCopy = driver;
  delegate = [(_UIClickInteraction *)self delegate];
  if (event > 1)
  {
    if (event == 2)
    {
      if (-[_UIClickInteraction hapticsEnabled](self, "hapticsEnabled") && ([driverCopy clicksUpAutomaticallyAfterTimeout] & 1) == 0)
      {
        feedbackGenerator = [(_UIClickInteraction *)self feedbackGenerator];
        [feedbackGenerator pressedUp];
      }

      [delegate clickInteractionDidClickUp:self];
    }

    else if (event == 3)
    {
      [(_UIClickInteraction *)self _endInteraction];
    }
  }

  else if (event)
  {
    if (event == 1)
    {
      if ([(_UIClickInteraction *)self hapticsEnabled])
      {
        feedbackGenerator2 = [(_UIClickInteraction *)self feedbackGenerator];
        [feedbackGenerator2 pressedDown];
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate clickInteractionDidClickDown:self];
      }
    }
  }

  else
  {
    [(_UIClickInteraction *)self _beginInteraction];
  }
}

- (void)clickDriver:(id)driver didUpdateHighlightProgress:(double)progress
{
  driverCopy = driver;
  v10 = objc_opt_new();
  [v10 setProgress:progress];
  [driverCopy maximumEffectProgress];
  v8 = v7;

  [v10 setMaximumProgress:v8];
  interactionEffect = [(_UIClickInteraction *)self interactionEffect];
  [interactionEffect interaction:self didChangeWithContext:v10];
}

@end