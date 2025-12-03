@interface _UIFocusSelectObserverGestureRecognizer
- (_UIFocusSelectObserverGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
@end

@implementation _UIFocusSelectObserverGestureRecognizer

- (_UIFocusSelectObserverGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIFocusSelectObserverGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setAllowedPressTypes:&unk_1EFE2B4B8];
    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
  }

  return v5;
}

@end