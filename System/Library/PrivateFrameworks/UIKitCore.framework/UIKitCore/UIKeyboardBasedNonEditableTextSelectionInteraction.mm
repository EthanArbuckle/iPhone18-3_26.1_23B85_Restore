@interface UIKeyboardBasedNonEditableTextSelectionInteraction
@end

@implementation UIKeyboardBasedNonEditableTextSelectionInteraction

id __73___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePan___block_invoke(id *a1)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] textInputView];
  [v2 _translationInView:v3];
  v5 = v4;
  v7 = v6;

  v19[0] = @"KeyboardTextSelection";
  v18[0] = @"KeyboardEventType";
  v18[1] = @"Operation";
  v8 = UIKBAnalyticsSelectionTypeForGranularity([a1[6] previousRepeatedGranularity]);
  v19[1] = v8;
  v18[2] = @"TriggerType";
  v9 = [a1[4] view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v9);
  v11 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v11 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v12 = [@"Force pan" stringByAppendingString:*v11];
  v19[2] = v12;
  v18[3] = @"GestureState";
  v13 = _UIGestureRecognizerStateString([a1[4] state]);
  v19[3] = v13;
  v18[4] = @"CursorLocationX";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v19[4] = v14;
  v18[5] = @"CursorLocationY";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v19[5] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:6];

  return v16;
}

uint64_t __73___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePan___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) restartSelection];
    [*(a1 + 32) selectedRectInLineWithPoint:{*(a1 + 48), *(a1 + 56)}];
    y = v9.origin.y;
    v3 = [*(a1 + 40) gestureTuning];
    [v3 assertInitialPositionFromTopOfCaret:*(a1 + 56) - y distanceFromCaret:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);

  return [v4 beginRangedMagnifierAtPoint:{v5, v6}];
}

void __75___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePress___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) restartSelection];
    [*(a1 + 32) selectedRectInLineWithPoint:{*(a1 + 48), *(a1 + 56)}];
    y = v5.origin.y;
    v4 = [*(a1 + 40) gestureTuning];
    [v4 assertInitialPositionFromTopOfCaret:*(a1 + 56) - y distanceFromCaret:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

id __75___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePress___block_invoke_3(uint64_t a1)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"KeyboardTextSelection";
  v10[0] = @"KeyboardEventType";
  v10[1] = @"Operation";
  v2 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 32) previousRepeatedGranularity]);
  v11[1] = v2;
  v10[2] = @"TriggerType";
  v3 = [*(a1 + 40) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v3);
  v5 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v5 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v6 = [@"Force press" stringByAppendingString:*v5];
  v11[2] = v6;
  v10[3] = @"GestureState";
  v7 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v11[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

@end