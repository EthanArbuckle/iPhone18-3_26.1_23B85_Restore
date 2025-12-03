@interface UIDragGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (BOOL)shouldReceiveEvent:(id)event;
- (CGPoint)locationInView:(id)view;
- (UIDragEvent)_dragEvent;
- (UIDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (_UIDropSessionImpl)dropSession;
- (_UIInternalDraggingSessionDestination)sessionDestination;
@end

@implementation UIDragGestureRecognizer

- (UIDragGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = UIDragGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    v6 = MEMORY[0x1E695E0F0];
    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:v6];
    [(UIGestureRecognizer *)v5 _setRequiresSystemGesturesToFail:0];
    *&v5->super._gestureFlags |= 0x200000000000uLL;
  }

  return v5;
}

- (_UIInternalDraggingSessionDestination)sessionDestination
{
  WeakRetained = objc_loadWeakRetained(&self->_dragEvent);
  _sessionDestination = [WeakRetained _sessionDestination];

  return _sessionDestination;
}

- (_UIDropSessionImpl)dropSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragEvent);
  _dropSession = [WeakRetained _dropSession];

  return _dropSession;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    v5 = eventCopy;
    WeakRetained = objc_loadWeakRetained(&self->_dragEvent);
    v7 = WeakRetained;
    if (self && WeakRetained != v5 && (*(&self->super._gestureFlags + 5) & 0x80) != 0)
    {
      _dynamicGestureRecognizers = [v5 _dynamicGestureRecognizers];
      v11 = [_dynamicGestureRecognizers containsObject:self];

      if (!v11)
      {
        v9 = 0;
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    delegate = [(UIGestureRecognizer *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate _gestureRecognizer:self shouldReceiveDragEvent:v5])
    {
      v9 = 0;
    }

    else
    {
      objc_storeWeak(&self->_dragEvent, v5);
      v9 = 1;
    }

    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _dragEvent = [recognizerCopy _dragEvent];
    _dragEvent2 = [(UIDragGestureRecognizer *)self _dragEvent];
    v7 = _dragEvent == _dragEvent2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _dragEvent = [recognizerCopy _dragEvent];
    _dragEvent2 = [(UIDragGestureRecognizer *)self _dragEvent];
    v7 = _dragEvent == _dragEvent2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  _dragEvent = [(UIDragGestureRecognizer *)self _dragEvent];
  [_dragEvent locationInView:viewCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (UIDragEvent)_dragEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_dragEvent);

  return WeakRetained;
}

@end