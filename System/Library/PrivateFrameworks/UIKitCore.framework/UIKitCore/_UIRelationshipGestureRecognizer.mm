@interface _UIRelationshipGestureRecognizer
- (_UIRelationshipGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIRelationshipGestureRecognizer

- (_UIRelationshipGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = _UIRelationshipGestureRecognizer;
  result = [(UIGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_failsOnTouchesCancelled = 1;
  }

  return result;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(_UIRelationshipGestureRecognizer *)self succeedsOnTouchesEnded:ended])
  {

    [(_UIRelationshipGestureRecognizer *)self _succeed];
  }

  else
  {

    [(_UIRelationshipGestureRecognizer *)self _fail];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(_UIRelationshipGestureRecognizer *)self failsOnTouchesCancelled:cancelled])
  {

    [(_UIRelationshipGestureRecognizer *)self _fail];
  }

  else
  {

    [(_UIRelationshipGestureRecognizer *)self _succeed];
  }
}

@end