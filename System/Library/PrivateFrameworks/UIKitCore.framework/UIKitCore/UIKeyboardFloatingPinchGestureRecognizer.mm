@interface UIKeyboardFloatingPinchGestureRecognizer
- (UIKeyboardFloatingPinchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIKeyboardFloatingPinchGestureRecognizer

- (UIKeyboardFloatingPinchGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v8.receiver = self;
  v8.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  v4 = [(UIPinchGestureRecognizer *)&v8 initWithTarget:a3 action:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
    activeTouches = v4->_activeTouches;
    v4->_activeTouches = v5;
  }

  return v4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->_activeTouches unionSet:v6];
  if ([(NSMutableSet *)self->_activeTouches count]< 3)
  {
    v10.receiver = self;
    v10.super_class = UIKeyboardFloatingPinchGestureRecognizer;
    [(UIGestureRecognizer *)&v10 touchesBegan:v6 withEvent:v7];
  }

  else
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
    {
      v8 = self;
      v9 = 3;
    }

    else
    {
      v8 = self;
      v9 = 5;
    }

    [(UIGestureRecognizer *)v8 setState:v9];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  activeTouches = self->_activeTouches;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)activeTouches minusSet:v8];
  v9.receiver = self;
  v9.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v9 touchesEnded:v8 withEvent:v7];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  activeTouches = self->_activeTouches;
  v7 = a4;
  v8 = a3;
  [(NSMutableSet *)activeTouches minusSet:v8];
  v9.receiver = self;
  v9.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v9 touchesCancelled:v8 withEvent:v7];
}

- (void)reset
{
  [(NSMutableSet *)self->_activeTouches removeAllObjects];
  v3.receiver = self;
  v3.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
}

@end