@interface _UIWebHighlightLongPressGestureRecognizer
- (_UIWebHighlightLongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)cancel;
@end

@implementation _UIWebHighlightLongPressGestureRecognizer

- (void)cancel
{
  if (self)
  {
    if ((*(&self->super.super._gestureFlags + 4) & 8) != 0)
    {
      v3 = [(UIGestureRecognizer *)self state];
      if (v3 <= UIGestureRecognizerStateChanged)
      {
        v4 = qword_18A683E40[v3];

        [(UIGestureRecognizer *)self setState:v4];
      }
    }
  }
}

- (_UIWebHighlightLongPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIWebHighlightLongPressGestureRecognizer;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UILongPressGestureRecognizer *)v4 set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

@end