@interface _UIDoubleTapInteractionGestureRecognizer
- (_UIDoubleTapInteractionGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
@end

@implementation _UIDoubleTapInteractionGestureRecognizer

- (_UIDoubleTapInteractionGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIDoubleTapInteractionGestureRecognizer;
  v4 = [(UITapGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"com.apple.UIKit._UIDoubleTapInteraction.tap"];
    [(UITapGestureRecognizer *)v5 setNumberOfTapsRequired:1];
  }

  return v5;
}

- (void)reset
{
  didReset = self->_didReset;
  if (didReset)
  {
    didReset[2]();
  }
}

@end