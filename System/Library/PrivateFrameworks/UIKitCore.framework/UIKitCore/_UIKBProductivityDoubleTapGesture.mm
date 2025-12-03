@interface _UIKBProductivityDoubleTapGesture
+ (id)productivityDoubleTapGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate;
@end

@implementation _UIKBProductivityDoubleTapGesture

+ (id)productivityDoubleTapGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate
{
  delegateCopy = delegate;
  targetCopy = target;
  v9 = [(UITapGestureRecognizer *)[_UIKBProductivityDoubleTapGesture alloc] initWithTarget:targetCopy action:action];

  if (v9)
  {
    [(UIGestureRecognizer *)v9 setAllowedTouchTypes:&unk_1EFE2C088];
    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.threeFingerDoubleTap"];
    [(UIGestureRecognizer *)v9 setDelegate:delegateCopy];
    [(UITapGestureRecognizer *)v9 setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)v9 setNumberOfTouchesRequired:3];
    [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
    if (_systemGesturesDontCancelTouches(delegateCopy))
    {
      [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
    }

    v10 = +[_UITextSelectionSettings sharedInstance];
    [v10 allowableSeparation];
    [(UITapGestureRecognizer *)v9 _setAllowableSeparation:v11 + v11];

    [(UITapGestureRecognizer *)v9 setMaximumIntervalBetweenSuccessiveTaps:0.43];
    [(UITapGestureRecognizer *)v9 _setAllowableTouchTimeSeparation:0.08];
    v12 = v9;
  }

  return v9;
}

@end