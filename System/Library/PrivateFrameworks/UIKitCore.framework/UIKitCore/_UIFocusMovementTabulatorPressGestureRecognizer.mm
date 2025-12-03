@interface _UIFocusMovementTabulatorPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)press;
- (unint64_t)focusHeadingForPresses:(id)presses;
- (void)configureDefaults;
- (void)reset;
@end

@implementation _UIFocusMovementTabulatorPressGestureRecognizer

- (void)configureDefaults
{
  [(UIGestureRecognizer *)self setAllowedPressTypes:&unk_1EFE2CB38];

  [(_UIFocusMovementPressGestureRecognizer *)self setShouldRepeat:1];
}

- (unint64_t)focusHeadingForPresses:(id)presses
{
  pressesCopy = presses;
  if ([pressesCopy count] != 1 || (-[_UIFocusMovementTabulatorPressGestureRecognizer trackingPress](self, "trackingPress"), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, objc_msgSend(pressesCopy, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), -[_UIFocusMovementTabulatorPressGestureRecognizer trackingPress](self, "trackingPress"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v8 != v9))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementTabulatorPressGestureRecognizer.m" lineNumber:30 description:@"Press tracking violation. Received a request for a press not tracked by this gesture recognizer."];
  }

  firstObject = [pressesCopy firstObject];
  modifierFlags = [firstObject modifierFlags];
  v13 = modifierFlags & 0xFFFFFFFFFFFBFFFFLL;
  v14 = 16;
  if ((modifierFlags & 0xFFFFFFFFFFFBFFFFLL) == 0x20000)
  {
    v14 = 32;
  }

  if (v13 == 0x20000 || modifierFlags < 0 || v13 == 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UIFocusMovementTabulatorPressGestureRecognizer;
  [(_UIFocusMovementPressGestureRecognizer *)&v3 reset];
  [(_UIFocusMovementTabulatorPressGestureRecognizer *)self setTrackingPress:0];
}

- (BOOL)_shouldReceivePress:(id)press
{
  pressCopy = press;
  v8.receiver = self;
  v8.super_class = _UIFocusMovementTabulatorPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v8 _shouldReceivePress:pressCopy]&& ([(_UIFocusMovementTabulatorPressGestureRecognizer *)self trackingPress], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    [(_UIFocusMovementTabulatorPressGestureRecognizer *)self setTrackingPress:pressCopy];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end