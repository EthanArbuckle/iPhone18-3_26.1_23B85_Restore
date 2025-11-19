@interface UIKeyboardBasedTextSelectionInteraction
@end

@implementation UIKeyboardBasedTextSelectionInteraction

void __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke()
{
  v0 = [&__block_literal_global_476 copy];
  v1 = qword_1ED498F68;
  qword_1ED498F68 = v0;
}

void __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectionController];

  if (v4)
  {
    v5 = [*(a1 + 32) selectionController];
    [v5 beginSelection];

    v6 = [*(a1 + 32) selectionController];
    v7 = [*(a1 + 40) previousRepeatedGranularity];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_4;
    v9[3] = &unk_1E70FD058;
    v10 = *(a1 + 40);
    v8 = [v3 childWithContinuation:v9];
    [v6 updateSelectionWithExtentPoint:v7 withBoundary:v8 executionContext:{*(a1 + 48), *(a1 + 56)}];
  }

  else
  {
    [v3 returnExecutionToParent];
  }
}

void __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setPanGestureState:6];
  [v3 returnExecutionToParent];
}

void __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_5()
{
  v0 = [&__block_literal_global_482_0 copy];
  v1 = qword_1ED498F78;
  qword_1ED498F78 = v0;
}

void __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectionController];

  if (v4)
  {
    v5 = [*(a1 + 32) selectionController];
    v6 = [*(a1 + 40) previousRepeatedGranularity];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_8;
    v13 = &unk_1E70FD460;
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v14 = v7;
    v15 = v8;
    v16 = *(a1 + 48);
    v9 = [v3 childWithContinuation:&v10];
    [v5 selectTextWithGranularity:v6 atPoint:v9 executionContext:{*(a1 + 48), *(a1 + 56), v10, v11, v12, v13}];
  }

  else
  {
    [v3 returnExecutionToParent];
  }
}

void __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v3 setPanGestureState:6];
  v4 = [*(a1 + 40) selectionController];
  [v4 beginSelection];

  v5 = [*(a1 + 40) selectionController];
  [v5 beginLoupeMagnifierAtPoint:{*(a1 + 48), *(a1 + 56)}];

  [v6 returnExecutionToParent];
}

void __97___UIKeyboardBasedTextSelectionInteraction_beginOneFingerSelectWithTranslation_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 selectionController];
  [v3 beginSelection];

  [v4 returnExecutionToParent];
}

id __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke(uint64_t a1)
{
  v17[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 56), *(a1 + 64)}];
  v3 = v2;
  v5 = v4;
  v17[0] = @"KeyboardTextSelection";
  v16[0] = @"KeyboardEventType";
  v16[1] = @"Operation";
  v6 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 40) previousRepeatedGranularity]);
  v17[1] = v6;
  v16[2] = @"TriggerType";
  v7 = [*(a1 + 48) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v7);
  v9 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v9 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v10 = [@"Force pan" stringByAppendingString:*v9];
  v17[2] = v10;
  v16[3] = @"CursorLocationX";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v17[3] = v11;
  v16[4] = @"CursorLocationY";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v17[4] = v12;
  v16[5] = @"GestureState";
  v13 = _UIGestureRecognizerStateString([*(a1 + 48) state]);
  v17[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  return v14;
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_2()
{
  v0 = [&__block_literal_global_489 copy];
  v1 = qword_1ED498F88;
  qword_1ED498F88 = v0;
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_5;
  v11 = &unk_1E70FD460;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = [a2 childWithContinuation:&v8];
  [v4 endOneFingerSelectWithExecutionContext:{v7, v8, v9, v10, v11}];
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 setPanGestureState:0];
  v4 = [*(a1 + 40) selectionController];
  [v4 endLoupeMagnifierAtPoint:{*(a1 + 48), *(a1 + 56)}];

  [*(a1 + 32) setDidFloatCursor:0];
  [v5 returnExecutionToParent];
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_6()
{
  v0 = [&__block_literal_global_495 copy];
  v1 = qword_1ED498F98;
  qword_1ED498F98 = v0;
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_9;
  v5[3] = &unk_1E70FDA90;
  v5[4] = v3;
  v6 = *(a1 + 40);
  v4 = [a2 childWithContinuation:v5];
  [v3 updateOneFingerSelectWithTranslation:v4 executionContext:{*(a1 + 40), *(a1 + 48)}];
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 selectionController];
  [v4 updateLoupeMagnifierAtPoint:{*(a1 + 40), *(a1 + 48)}];

  [v5 returnExecutionToParent];
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_10()
{
  v0 = [&__block_literal_global_501_1 copy];
  v1 = qword_1ED498FA8;
  qword_1ED498FA8 = v0;
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_12(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) selectionController];

  if (v3)
  {
    v4 = [*(a1 + 32) selectionController];
    [v4 selectTextWithGranularity:1 atPoint:v5 executionContext:{*(a1 + 40), *(a1 + 48)}];
  }

  else
  {
    [v5 returnExecutionToParent];
  }
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_13()
{
  v0 = [&__block_literal_global_507 copy];
  v1 = qword_1ED498FB8;
  qword_1ED498FB8 = v0;
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_15(uint64_t a1, void *a2)
{
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_16;
  v11 = &unk_1E70FD460;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v7 = [a2 childWithContinuation:&v8];
  [v4 endOneFingerSelectWithExecutionContext:{v7, v8, v9, v10, v11}];
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v3 setPanGestureState:0];
  v4 = [*(a1 + 40) selectionController];
  [v4 endLoupeMagnifierAtPoint:{*(a1 + 48), *(a1 + 56)}];

  [*(a1 + 32) setDidFloatCursor:0];
  [v5 returnExecutionToParent];
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_17()
{
  v0 = [&__block_literal_global_513 copy];
  v1 = qword_1ED498FC8;
  qword_1ED498FC8 = v0;
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectionController];

  if (v4)
  {
    v5 = [*(a1 + 32) selectionController];
    v6 = [*(a1 + 40) previousRepeatedGranularity];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_20;
    v8[3] = &unk_1E70FDA90;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v7 = [v3 childWithContinuation:v8];
    [v5 updateSelectionWithExtentPoint:v6 withBoundary:v7 executionContext:{*(a1 + 48), *(a1 + 56)}];
  }

  else
  {
    [v3 returnExecutionToParent];
  }
}

void __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 selectionController];
  [v4 updateLoupeMagnifierAtPoint:{*(a1 + 40), *(a1 + 48)}];

  [v5 returnExecutionToParent];
}

void __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke()
{
  v0 = [&__block_literal_global_517 copy];
  v1 = qword_1ED498FD8;
  qword_1ED498FD8 = v0;
}

void __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_4;
  v9 = &unk_1E70FD460;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v5 = [a2 childWithContinuation:&v6];
  [v4 endOneFingerSelectWithExecutionContext:{v5, v6, v7, v8, v9}];
}

void __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setPanGestureState:0];
  [*(a1 + 40) willHandoffLoupeMagnifier];
  [*(a1 + 40) endLoupeMagnifierAtPoint:{*(a1 + 48), *(a1 + 56)}];
  [v4 returnExecutionToParent];
}

void __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_6()
{
  v0 = [&__block_literal_global_523 copy];
  v1 = qword_1ED498FE8;
  qword_1ED498FE8 = v0;
}

void __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectionController];

  if (v4)
  {
    v5 = [*(a1 + 32) selectionController];
    v6 = [*(a1 + 40) previousRepeatedGranularity];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_9;
    v10[3] = &unk_1E7118C90;
    v14 = *(a1 + 72);
    v7 = *(a1 + 48);
    v13 = *(a1 + 56);
    v8 = *(a1 + 32);
    v11 = v7;
    v12 = v8;
    v9 = [v3 childWithContinuation:v10];
    [v5 selectTextWithGranularity:v6 atPoint:v9 executionContext:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    [v3 returnExecutionToParent];
  }
}

void __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_9(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) restartSelection];
    [*(a1 + 32) selectedRectInLineWithPoint:{*(a1 + 48), *(a1 + 56)}];
    y = v7.origin.y;
    v4 = [*(a1 + 40) gestureTuning];
    [v4 assertInitialPositionFromTopOfCaret:*(a1 + 56) - y distanceFromCaret:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }

  [v5 returnExecutionToParent];
}

id __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_10(uint64_t a1)
{
  v14[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"KeyboardTextSelection";
  v13[0] = @"KeyboardEventType";
  v13[1] = @"Operation";
  v2 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 32) previousRepeatedGranularity]);
  v14[1] = v2;
  v13[2] = @"TriggerType";
  v3 = [*(a1 + 40) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v3);
  v5 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v5 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v6 = [@"Force press" stringByAppendingString:*v5];
  v14[2] = v6;
  v13[3] = @"Count";
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 152);
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v14[3] = v9;
  v13[4] = @"GestureState";
  v10 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v14[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];

  return v11;
}

@end