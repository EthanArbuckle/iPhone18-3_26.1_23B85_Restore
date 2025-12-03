@interface _UIFocusMovementShoulderButtonPressGestureRecognizer
- (unint64_t)focusHeadingForPresses:(id)presses;
- (void)configureDefaults;
@end

@implementation _UIFocusMovementShoulderButtonPressGestureRecognizer

- (void)configureDefaults
{
  [(UIGestureRecognizer *)self setAllowedPressTypes:&unk_1EFE2DDC8];

  [(_UIFocusMovementPressGestureRecognizer *)self setShouldRepeat:1];
}

- (unint64_t)focusHeadingForPresses:(id)presses
{
  lastObject = [presses lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    type = [lastObject type];
    if (type == 35)
    {
      v6 = 32;
    }

    else
    {
      v6 = 16 * (type == 34);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end