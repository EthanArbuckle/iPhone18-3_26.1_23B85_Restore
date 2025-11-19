@interface _UIPassthroughTapGestureRecognizer
- (_UIPassthroughTapGestureRecognizer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIPassthroughTapGestureRecognizer

- (_UIPassthroughTapGestureRecognizer)initWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIPassthroughTapGestureRecognizer.m" lineNumber:19 description:{@"%@ does not support NSCoding", objc_opt_class()}];

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIPassthroughTapGestureRecognizer.m" lineNumber:24 description:{@"%@ does not support NSCoding", objc_opt_class()}];
}

- (void)setState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIPassthroughTapGestureRecognizer;
  [(UIGestureRecognizer *)&v5 setState:?];
  if (a3 == 3 && (*&self->_flags & 1) != 0)
  {
    self->_tapWasCommandModified = 1;
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v5 touchesBegan:a3 withEvent:a4];
  *&self->_flags = *&self->_flags & 0xFE | (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) != 0);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  v8.receiver = self;
  v8.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v8 touchesMoved:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  v8.receiver = self;
  v8.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v8 touchesEnded:v7 withEvent:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  v8.receiver = self;
  v8.super_class = _UIPassthroughTapGestureRecognizer;
  [(UITapGestureRecognizer *)&v8 touchesCancelled:v7 withEvent:v6];
}

@end