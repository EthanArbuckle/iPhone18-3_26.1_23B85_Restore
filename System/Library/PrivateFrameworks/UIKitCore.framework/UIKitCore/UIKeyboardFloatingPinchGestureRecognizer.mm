@interface UIKeyboardFloatingPinchGestureRecognizer
- (UIKeyboardFloatingPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation UIKeyboardFloatingPinchGestureRecognizer

- (UIKeyboardFloatingPinchGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  v4 = [(UIPinchGestureRecognizer *)&v8 initWithTarget:target action:action];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2];
    activeTouches = v4->_activeTouches;
    v4->_activeTouches = v5;
  }

  return v4;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  [(NSMutableSet *)self->_activeTouches unionSet:beganCopy];
  if ([(NSMutableSet *)self->_activeTouches count]< 3)
  {
    v10.receiver = self;
    v10.super_class = UIKeyboardFloatingPinchGestureRecognizer;
    [(UIGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:eventCopy];
  }

  else
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
    {
      selfCopy2 = self;
      v9 = 3;
    }

    else
    {
      selfCopy2 = self;
      v9 = 5;
    }

    [(UIGestureRecognizer *)selfCopy2 setState:v9];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  activeTouches = self->_activeTouches;
  eventCopy = event;
  endedCopy = ended;
  [(NSMutableSet *)activeTouches minusSet:endedCopy];
  v9.receiver = self;
  v9.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v9 touchesEnded:endedCopy withEvent:eventCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  activeTouches = self->_activeTouches;
  eventCopy = event;
  cancelledCopy = cancelled;
  [(NSMutableSet *)activeTouches minusSet:cancelledCopy];
  v9.receiver = self;
  v9.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v9 touchesCancelled:cancelledCopy withEvent:eventCopy];
}

- (void)reset
{
  [(NSMutableSet *)self->_activeTouches removeAllObjects];
  v3.receiver = self;
  v3.super_class = UIKeyboardFloatingPinchGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
}

@end