@interface _UIFocusMovementShoulderButtonPressGestureRecognizer
- (unint64_t)focusHeadingForPresses:(id)a3;
- (void)configureDefaults;
@end

@implementation _UIFocusMovementShoulderButtonPressGestureRecognizer

- (void)configureDefaults
{
  [(UIGestureRecognizer *)self setAllowedPressTypes:&unk_1EFE2DDC8];

  [(_UIFocusMovementPressGestureRecognizer *)self setShouldRepeat:1];
}

- (unint64_t)focusHeadingForPresses:(id)a3
{
  v3 = [a3 lastObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
    if (v5 == 35)
    {
      v6 = 32;
    }

    else
    {
      v6 = 16 * (v5 == 34);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end