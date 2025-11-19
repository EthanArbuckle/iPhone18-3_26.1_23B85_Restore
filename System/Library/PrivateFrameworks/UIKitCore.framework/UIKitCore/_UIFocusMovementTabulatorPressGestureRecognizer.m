@interface _UIFocusMovementTabulatorPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)a3;
- (unint64_t)focusHeadingForPresses:(id)a3;
- (void)configureDefaults;
- (void)reset;
@end

@implementation _UIFocusMovementTabulatorPressGestureRecognizer

- (void)configureDefaults
{
  [(UIGestureRecognizer *)self setAllowedPressTypes:&unk_1EFE2CB38];

  [(_UIFocusMovementPressGestureRecognizer *)self setShouldRepeat:1];
}

- (unint64_t)focusHeadingForPresses:(id)a3
{
  v5 = a3;
  if ([v5 count] != 1 || (-[_UIFocusMovementTabulatorPressGestureRecognizer trackingPress](self, "trackingPress"), (v6 = objc_claimAutoreleasedReturnValue()) == 0) || (v7 = v6, objc_msgSend(v5, "firstObject"), v8 = objc_claimAutoreleasedReturnValue(), -[_UIFocusMovementTabulatorPressGestureRecognizer trackingPress](self, "trackingPress"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v8 != v9))
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementTabulatorPressGestureRecognizer.m" lineNumber:30 description:@"Press tracking violation. Received a request for a press not tracked by this gesture recognizer."];
  }

  v11 = [v5 firstObject];
  v12 = [v11 modifierFlags];
  v13 = v12 & 0xFFFFFFFFFFFBFFFFLL;
  v14 = 16;
  if ((v12 & 0xFFFFFFFFFFFBFFFFLL) == 0x20000)
  {
    v14 = 32;
  }

  if (v13 == 0x20000 || v12 < 0 || v13 == 0)
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

- (BOOL)_shouldReceivePress:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIFocusMovementTabulatorPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v8 _shouldReceivePress:v4]&& ([(_UIFocusMovementTabulatorPressGestureRecognizer *)self trackingPress], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    [(_UIFocusMovementTabulatorPressGestureRecognizer *)self setTrackingPress:v4];
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end