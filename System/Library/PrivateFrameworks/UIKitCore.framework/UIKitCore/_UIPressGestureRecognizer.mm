@interface _UIPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)a3;
- (BOOL)shouldReceiveEvent:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setDelegate:(id)a3;
@end

@implementation _UIPressGestureRecognizer

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPressGestureRecognizer;
  v4 = a3;
  [(UIGestureRecognizer *)&v6 setDelegate:v4];
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | v5 & 1;
}

- (BOOL)_shouldReceivePress:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v8 _shouldReceivePress:v4])
  {
    v5 = 1;
  }

  else if (*&self->_delegateRespondsTo)
  {
    v6 = [(UIGestureRecognizer *)self delegate];
    v5 = [v6 pressGestureRecognizer:self shouldAllowPress:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 type] == 3 || objc_msgSend(v3, "type") == 4;

  return v4;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesBegan:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:1];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesEnded:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:3];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesCancelled:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

@end