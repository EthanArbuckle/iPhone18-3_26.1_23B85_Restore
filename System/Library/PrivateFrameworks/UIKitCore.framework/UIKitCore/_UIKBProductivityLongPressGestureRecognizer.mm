@interface _UIKBProductivityLongPressGestureRecognizer
+ (id)productivityLongPressGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate;
@end

@implementation _UIKBProductivityLongPressGestureRecognizer

+ (id)productivityLongPressGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate
{
  delegateCopy = delegate;
  targetCopy = target;
  v9 = [(UILongPressGestureRecognizer *)[_UIKBProductivityLongPressGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  [(UIGestureRecognizer *)v9 setAllowedTouchTypes:&unk_1EFE2C058];
  [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.threeFingerLongPress"];
  [(UIGestureRecognizer *)v9 setDelegate:delegateCopy];
  [(UILongPressGestureRecognizer *)v9 setNumberOfTapsRequired:0];
  [(UILongPressGestureRecognizer *)v9 setNumberOfTouchesRequired:3];
  [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:0];
  [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
  LODWORD(targetCopy) = _systemGesturesDontCancelTouches(delegateCopy);

  if (targetCopy)
  {
    [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
  }

  [(UILongPressGestureRecognizer *)v9 setAllowableMovement:60.0];
  [(UILongPressGestureRecognizer *)v9 _setAllowableElapsedTimeForAllRequiredTouches:0.08];
  [(UILongPressGestureRecognizer *)v9 set_prefersNotToBePreventedByCompetingLongPressGestureRecognizers:1];

  return v9;
}

@end