@interface _UIPassthroughTapGestureRecognizer
- (_UIPassthroughTapGestureRecognizer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIPassthroughTapGestureRecognizer

- (_UIPassthroughTapGestureRecognizer)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPassthroughTapGestureRecognizer.m" lineNumber:19 description:{@"%@ does not support NSCoding", objc_opt_class()}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPassthroughTapGestureRecognizer.m" lineNumber:24 description:{@"%@ does not support NSCoding", objc_opt_class()}];
}

- (void)setState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = _UIPassthroughTapGestureRecognizer;
  [(UIGestureRecognizer *)&v5 setState:?];
  if (state == 3 && (*&self->_flags & 1) != 0)
  {
    self->_tapWasCommandModified = 1;
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v5 touchesBegan:began withEvent:event];
  *&self->_flags = *&self->_flags & 0xFE | (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) != 0);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  movedCopy = moved;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  v8.receiver = self;
  v8.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  v8.receiver = self;
  v8.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  cancelledCopy = cancelled;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  v8.receiver = self;
  v8.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

@end