@interface _UIContextMenuSelectionDelayGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation _UIContextMenuSelectionDelayGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [[UIDelayedAction alloc] initWithTarget:self action:sel__timerSatisfied userInfo:0 delay:0.15];
  delayedAction = self->_delayedAction;
  self->_delayedAction = v5;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = _UIContextMenuSelectionDelayGestureRecognizer;
  [(UIGestureRecognizer *)&v4 reset];
  [(UIDelayedAction *)self->_delayedAction cancel];
  delayedAction = self->_delayedAction;
  self->_delayedAction = 0;
}

@end