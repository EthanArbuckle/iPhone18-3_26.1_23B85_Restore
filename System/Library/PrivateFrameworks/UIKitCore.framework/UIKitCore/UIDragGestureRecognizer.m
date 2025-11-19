@interface UIDragGestureRecognizer
- (BOOL)canBePreventedByGestureRecognizer:(id)a3;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (BOOL)shouldReceiveEvent:(id)a3;
- (CGPoint)locationInView:(id)a3;
- (UIDragEvent)_dragEvent;
- (UIDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (_UIDropSessionImpl)dropSession;
- (_UIInternalDraggingSessionDestination)sessionDestination;
@end

@implementation UIDragGestureRecognizer

- (UIDragGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = UIDragGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
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
  v3 = [WeakRetained _sessionDestination];

  return v3;
}

- (_UIDropSessionImpl)dropSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragEvent);
  v3 = [WeakRetained _dropSession];

  return v3;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 9)
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_dragEvent);
    v7 = WeakRetained;
    if (self && WeakRetained != v5 && (*(&self->super._gestureFlags + 5) & 0x80) != 0)
    {
      v10 = [v5 _dynamicGestureRecognizers];
      v11 = [v10 containsObject:self];

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

    v8 = [(UIGestureRecognizer *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v8 _gestureRecognizer:self shouldReceiveDragEvent:v5])
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

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 _dragEvent];
    v6 = [(UIDragGestureRecognizer *)self _dragEvent];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)canBePreventedByGestureRecognizer:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 _dragEvent];
    v6 = [(UIDragGestureRecognizer *)self _dragEvent];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  v5 = [(UIDragGestureRecognizer *)self _dragEvent];
  [v5 locationInView:v4];
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