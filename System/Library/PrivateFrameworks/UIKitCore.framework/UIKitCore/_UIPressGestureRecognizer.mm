@interface _UIPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)press;
- (BOOL)shouldReceiveEvent:(id)event;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIPressGestureRecognizer

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = _UIPressGestureRecognizer;
  delegateCopy = delegate;
  [(UIGestureRecognizer *)&v6 setDelegate:delegateCopy];
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | v5 & 1;
}

- (BOOL)_shouldReceivePress:(id)press
{
  pressCopy = press;
  v8.receiver = self;
  v8.super_class = _UIPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v8 _shouldReceivePress:pressCopy])
  {
    v5 = 1;
  }

  else if (*&self->_delegateRespondsTo)
  {
    delegate = [(UIGestureRecognizer *)self delegate];
    v5 = [delegate pressGestureRecognizer:self shouldAllowPress:pressCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  v4 = [eventCopy type] == 3 || objc_msgSend(eventCopy, "type") == 4;

  return v4;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesBegan:began withEvent:event];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesEnded:ended withEvent:event];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesCancelled:cancelled withEvent:event];
  [(UIGestureRecognizer *)self setState:4];
}

@end