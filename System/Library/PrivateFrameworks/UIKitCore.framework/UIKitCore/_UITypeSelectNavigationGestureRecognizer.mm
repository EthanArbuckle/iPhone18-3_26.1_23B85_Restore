@interface _UITypeSelectNavigationGestureRecognizer
- (_UITypeSelectNavigationGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UITypeSelectNavigationGestureRecognizer

- (_UITypeSelectNavigationGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UITypeSelectNavigationGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:&unk_1EFE2BE90];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
  }

  return v5;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v11.receiver = self;
  v11.super_class = _UITypeSelectNavigationGestureRecognizer;
  [(UIGestureRecognizer *)&v11 pressesBegan:beganCopy withEvent:event];
  presses = self->_presses;
  if (presses)
  {
    [(NSMutableSet *)presses unionSet:beganCopy];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:beganCopy];
    v9 = self->_presses;
    self->_presses = v8;
  }

  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    v10 = 1;
    goto LABEL_9;
  }

  if ([(UIGestureRecognizer *)self state]>= UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {
    v10 = 2;
LABEL_9:
    [(UIGestureRecognizer *)self setState:v10];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectNavigationGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesChanged:changed withEvent:event];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = _UITypeSelectNavigationGestureRecognizer;
  endedCopy = ended;
  [(UIGestureRecognizer *)&v8 pressesEnded:endedCopy withEvent:event];
  [(NSMutableSet *)self->_presses minusSet:endedCopy, v8.receiver, v8.super_class];

  if (![(NSMutableSet *)self->_presses count])
  {
    presses = self->_presses;
    self->_presses = 0;

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectNavigationGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesCancelled:cancelled withEvent:event];
  [(UIGestureRecognizer *)self setState:4];
}

@end