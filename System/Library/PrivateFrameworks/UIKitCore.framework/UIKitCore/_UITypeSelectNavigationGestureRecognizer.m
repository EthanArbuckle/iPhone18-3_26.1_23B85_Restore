@interface _UITypeSelectNavigationGestureRecognizer
- (_UITypeSelectNavigationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UITypeSelectNavigationGestureRecognizer

- (_UITypeSelectNavigationGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UITypeSelectNavigationGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _UITypeSelectNavigationGestureRecognizer;
  [(UIGestureRecognizer *)&v11 pressesBegan:v6 withEvent:a4];
  presses = self->_presses;
  if (presses)
  {
    [(NSMutableSet *)presses unionSet:v6];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v6];
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

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectNavigationGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesChanged:a3 withEvent:a4];
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateBegan)
  {
    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UITypeSelectNavigationGestureRecognizer;
  v6 = a3;
  [(UIGestureRecognizer *)&v8 pressesEnded:v6 withEvent:a4];
  [(NSMutableSet *)self->_presses minusSet:v6, v8.receiver, v8.super_class];

  if (![(NSMutableSet *)self->_presses count])
  {
    presses = self->_presses;
    self->_presses = 0;

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITypeSelectNavigationGestureRecognizer;
  [(UIGestureRecognizer *)&v5 pressesCancelled:a3 withEvent:a4];
  [(UIGestureRecognizer *)self setState:4];
}

@end