@interface _UITouchesBeganObserverGestureRecognizer
- (void)initWithTarget:(uint64_t)target action:(uint64_t)action name:;
@end

@implementation _UITouchesBeganObserverGestureRecognizer

- (void)initWithTarget:(uint64_t)target action:(uint64_t)action name:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = _UITouchesBeganObserverGestureRecognizer;
  v5 = objc_msgSendSuper2(&v8, sel_initWithTarget_action_, a2, target);
  v6 = v5;
  if (v5)
  {
    [v5 setName:action];
    [v6 setAllowedTouchTypes:&unk_1EFE2C130];
    [v6 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
    [v6 setCancelsTouchesInView:0];
    [v6 setDelaysTouchesBegan:0];
    [v6 setDelaysTouchesEnded:0];
  }

  return v6;
}

@end