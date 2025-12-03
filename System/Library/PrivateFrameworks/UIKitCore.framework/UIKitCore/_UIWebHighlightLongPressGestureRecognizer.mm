@interface _UIWebHighlightLongPressGestureRecognizer
- (_UIWebHighlightLongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)cancel;
@end

@implementation _UIWebHighlightLongPressGestureRecognizer

- (void)cancel
{
  if (self)
  {
    if ((*(&self->super.super._gestureFlags + 4) & 8) != 0)
    {
      state = [(UIGestureRecognizer *)self state];
      if (state <= UIGestureRecognizerStateChanged)
      {
        v4 = qword_18A683E40[state];

        [(UIGestureRecognizer *)self setState:v4];
      }
    }
  }
}

- (_UIWebHighlightLongPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIWebHighlightLongPressGestureRecognizer;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UILongPressGestureRecognizer *)v4 set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

@end