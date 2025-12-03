@interface UITextTapRecognizer
- (UITextTapRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation UITextTapRecognizer

- (UITextTapRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = UITextTapRecognizer;
  v4 = [(UITapGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UITapGestureRecognizer *)v4 setMaximumIntervalBetweenSuccessiveTaps:0.35];
    [(UITapGestureRecognizer *)v5 setAllowableMovement:1.79769313e308];
    [(UIGestureRecognizer *)v5 setName:@"com.apple.UIKit.textTap"];
    [(UITextTapRecognizer *)v5 setTouchBasedAllowableMovement:-1.0];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  anyObject = [beganCopy anyObject];
  if ([anyObject _isPointerTouch])
  {
    [(UITextTapRecognizer *)self touchBasedAllowableMovement];
    v10 = v9;

    if (v10 < 0.0)
    {
      [(UITapGestureRecognizer *)self allowableMovement];
      [(UITextTapRecognizer *)self setTouchBasedAllowableMovement:?];
      [(UITapGestureRecognizer *)self setAllowableMovement:1.0];
    }
  }

  else
  {
  }

  v11.receiver = self;
  v11.super_class = UITextTapRecognizer;
  [(UITapGestureRecognizer *)&v11 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  endedCopy = ended;
  touches = [(UITapGestureRecognizer *)self touches];
  [(UITextTapRecognizer *)self setTouchesForTap:touches];

  v10.receiver = self;
  v10.super_class = UITextTapRecognizer;
  [(UITapGestureRecognizer *)&v10 touchesEnded:endedCopy withEvent:eventCopy];

  [(UITextTapRecognizer *)self touchBasedAllowableMovement];
  if (v9 > 0.0)
  {
    [(UITextTapRecognizer *)self touchBasedAllowableMovement];
    [(UITapGestureRecognizer *)self setAllowableMovement:?];
    [(UITextTapRecognizer *)self setTouchBasedAllowableMovement:-1.0];
  }
}

@end