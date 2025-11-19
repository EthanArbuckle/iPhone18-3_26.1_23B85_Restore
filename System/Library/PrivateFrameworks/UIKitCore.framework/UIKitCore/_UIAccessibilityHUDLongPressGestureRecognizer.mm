@interface _UIAccessibilityHUDLongPressGestureRecognizer
- (_UIAccessibilityHUDLongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation _UIAccessibilityHUDLongPressGestureRecognizer

- (_UIAccessibilityHUDLongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIAccessibilityHUDLongPressGestureRecognizer;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UILongPressGestureRecognizer *)v4 set_prefersNotToBePreventedByCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

@end