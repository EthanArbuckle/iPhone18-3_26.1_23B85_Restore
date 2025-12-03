@interface UIScrollViewKnobLongPressGestureRecognizer
- (UIScrollViewKnobLongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation UIScrollViewKnobLongPressGestureRecognizer

- (UIScrollViewKnobLongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = UIScrollViewKnobLongPressGestureRecognizer;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UILongPressGestureRecognizer *)v4 set_prefersNotToBePreventedByCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

@end