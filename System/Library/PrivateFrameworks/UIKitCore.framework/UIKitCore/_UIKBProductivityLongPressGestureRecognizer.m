@interface _UIKBProductivityLongPressGestureRecognizer
+ (id)productivityLongPressGestureRecognizerWithTarget:(id)a3 action:(SEL)a4 delegate:(id)a5;
@end

@implementation _UIKBProductivityLongPressGestureRecognizer

+ (id)productivityLongPressGestureRecognizerWithTarget:(id)a3 action:(SEL)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(UILongPressGestureRecognizer *)[_UIKBProductivityLongPressGestureRecognizer alloc] initWithTarget:v8 action:a4];

  [(UIGestureRecognizer *)v9 setAllowedTouchTypes:&unk_1EFE2C058];
  [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.threeFingerLongPress"];
  [(UIGestureRecognizer *)v9 setDelegate:v7];
  [(UILongPressGestureRecognizer *)v9 setNumberOfTapsRequired:0];
  [(UILongPressGestureRecognizer *)v9 setNumberOfTouchesRequired:3];
  [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:0];
  [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
  LODWORD(v8) = _systemGesturesDontCancelTouches(v7);

  if (v8)
  {
    [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
  }

  [(UILongPressGestureRecognizer *)v9 setAllowableMovement:60.0];
  [(UILongPressGestureRecognizer *)v9 _setAllowableElapsedTimeForAllRequiredTouches:0.08];
  [(UILongPressGestureRecognizer *)v9 set_prefersNotToBePreventedByCompetingLongPressGestureRecognizers:1];

  return v9;
}

@end