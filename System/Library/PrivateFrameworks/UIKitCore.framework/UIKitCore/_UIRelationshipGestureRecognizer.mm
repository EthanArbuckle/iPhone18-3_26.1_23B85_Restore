@interface _UIRelationshipGestureRecognizer
- (_UIRelationshipGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIRelationshipGestureRecognizer

- (_UIRelationshipGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = _UIRelationshipGestureRecognizer;
  result = [(UIGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_failsOnTouchesCancelled = 1;
  }

  return result;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(_UIRelationshipGestureRecognizer *)self succeedsOnTouchesEnded:a3])
  {

    [(_UIRelationshipGestureRecognizer *)self _succeed];
  }

  else
  {

    [(_UIRelationshipGestureRecognizer *)self _fail];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(_UIRelationshipGestureRecognizer *)self failsOnTouchesCancelled:a3])
  {

    [(_UIRelationshipGestureRecognizer *)self _fail];
  }

  else
  {

    [(_UIRelationshipGestureRecognizer *)self _succeed];
  }
}

@end