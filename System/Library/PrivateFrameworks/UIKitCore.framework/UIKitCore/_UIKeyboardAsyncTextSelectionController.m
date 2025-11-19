@interface _UIKeyboardAsyncTextSelectionController
- (BOOL)cursorPositionIsContainedByRange:(id)a3;
- (BOOL)shouldAllowSelectionGestureWithTouchType:(int64_t)a3 atPoint:(CGPoint)a4 toProgressToState:(int64_t)a5;
- (CGRect)caretRectForLeftmostSelectedPosition;
- (CGRect)caretRectForRightmostSelectedPosition;
- (id)webInputDelegate;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)a3 initialExtentPoint:(CGPoint)a4 executionContext:(id)a5;
- (void)endFloatingCursor;
- (void)selectPositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 relativeToSelection:(id)a5 executionContext:(id)a6;
- (void)selectPositionAtPoint:(CGPoint)a3 executionContext:(id)a4;
- (void)selectPositionAtPoint:(CGPoint)a3 granularity:(int64_t)a4 completionHandler:(id)a5;
- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 completionHandler:(id)a5;
- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 executionContext:(id)a5;
- (void)setRangedSelectionShouldShowGrabbers:(BOOL)a3;
- (void)showSelectionCommands;
- (void)showSelectionView;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
- (void)updateSelectionWithExtentPoint:(CGPoint)a3 executionContext:(id)a4;
- (void)updateSelectionWithExtentPoint:(CGPoint)a3 withBoundary:(int64_t)a4 executionContext:(id)a5;
@end

@implementation _UIKeyboardAsyncTextSelectionController

- (BOOL)cursorPositionIsContainedByRange:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionController *)self cursorPosition];

  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v7 = [(_UIKeyboardTextSelectionController *)self cursorPosition];
    [v6 caretRectForPosition:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v28.origin.x = v9;
    v28.origin.y = v11;
    v28.size.width = v13;
    v28.size.height = v15;
    if (CGRectIsEmpty(v28))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v16 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v17 = [v16 selectionRectsForRange:v4];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v18 = v17;
      v5 = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        v19 = *v23;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v22 + 1) + 8 * i) rect];
            v30.origin.x = v9;
            v30.origin.y = v11;
            v30.size.width = v13;
            v30.size.height = v15;
            if (CGRectIntersectsRect(v29, v30))
            {
              LOBYTE(v5) = 1;
              goto LABEL_14;
            }
          }

          v5 = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return v5;
}

- (CGRect)caretRectForLeftmostSelectedPosition
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];

  v5 = [v4 start];
  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v7 = [v4 start];
    [v6 caretRectForPosition:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = [v4 end];
  if (v16)
  {
    v17 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v18 = [v4 end];
    [v17 caretRectForPosition:v18];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v20 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 8);
    v24 = *(MEMORY[0x1E695F050] + 16);
    v26 = *(MEMORY[0x1E695F050] + 24);
  }

  if (v9 >= v20)
  {
    v9 = v20;
    v11 = v22;
    v13 = v24;
    v15 = v26;
  }

  v27 = v9;
  v28 = v11;
  v29 = v13;
  v30 = v15;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)caretRectForRightmostSelectedPosition
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];

  v5 = [v4 start];
  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v7 = [v4 start];
    [v6 caretRectForPosition:v7];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v9 = *MEMORY[0x1E695F050];
    v11 = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v16 = [v4 end];
  if (v16)
  {
    v17 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v18 = [v4 end];
    [v17 caretRectForPosition:v18];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v20 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 8);
    v24 = *(MEMORY[0x1E695F050] + 16);
    v26 = *(MEMORY[0x1E695F050] + 24);
  }

  if (v9 <= v20)
  {
    v9 = v20;
    v11 = v22;
    v13 = v24;
    v15 = v26;
  }

  v27 = v9;
  v28 = v11;
  v29 = v13;
  v30 = v15;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (BOOL)shouldAllowSelectionGestureWithTouchType:(int64_t)a3 atPoint:(CGPoint)a4 toProgressToState:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  [UIKBInputDelegateManager isAsyncTextInputEnabled:a3];
  v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [v8 hasSelectablePositionAtPoint:{x, y}];
  if (v9)
  {
    [v8 _cancelLongPressGestureRecognizer];
  }

  return v9;
}

- (void)selectPositionAtPoint:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82___UIKeyboardAsyncTextSelectionController_selectPositionAtPoint_executionContext___block_invoke;
  v11[3] = &unk_1E7103E40;
  v12 = v7;
  v13 = self;
  v14 = v8;
  v15 = x;
  v16 = y;
  v9 = v8;
  v10 = v7;
  [(_UIKeyboardAsyncTextSelectionController *)self selectPositionAtPoint:v11 completionHandler:x, y];
}

- (void)selectPositionAtPoint:(CGPoint)a3 granularity:(int64_t)a4 completionHandler:(id)a5
{
  y = a3.y;
  x = a3.x;
  v14 = a5;
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    v9 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];

    v10 = self;
    if (v9)
    {
      v11 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
      v12 = v11;
      if (a4)
      {
        [v11 updateCurrentSelectionTo:1 fromGesture:3 inState:{x, y}];
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v10 = self;
  }

  v13 = [(_UIKeyboardTextSelectionController *)v10 inputDelegate];
  v12 = v13;
  if (a4)
  {
    [v13 changeSelectionWithGestureAt:1 withGesture:3 withState:{x, y}];
    goto LABEL_9;
  }

LABEL_8:
  [v12 selectPositionAtPoint:v14 completionHandler:{x, y}];
LABEL_9:
}

- (void)selectPositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 relativeToSelection:(id)a5 executionContext:(id)a6
{
  v9 = a6;
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    v12 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_9;
    v14[3] = &unk_1E70F35B8;
    v15 = v9;
    v16 = self;
    [v12 moveSelectionAtBoundary:a3 inDirection:a4 completionHandler:v14];
    v13 = v15;
LABEL_6:

    goto LABEL_7;
  }

  v10 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];

  if (!v10)
  {
    v12 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_5;
    v17[3] = &unk_1E70F35B8;
    v18 = v9;
    v19 = self;
    [v12 moveSelectionAtBoundary:a3 inDirection:a4 completionHandler:v17];
    v13 = v18;
    goto LABEL_6;
  }

  v11 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke;
  v20[3] = &unk_1E70F35B8;
  v21 = v9;
  v22 = self;
  [v11 moveSelectionAtBoundary:a3 inStorageDirection:a4 completionHandler:v20];

  v12 = v21;
LABEL_7:
}

- (void)setRangedSelectionShouldShowGrabbers:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v7 = [v6 selectedTextRange];
    v8 = v7 == 0;
    if (v7)
    {
      v9 = v7;
      v10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v11 = [v10 selectedTextRange];
      v12 = [v11 isEmpty];

      if (v12)
      {
        v8 = 1;
LABEL_9:
        v15 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
        [v15 setShouldDelayActivatingSelectionView:v8];

        v16 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
        [v16 setSelectionHighlightMode:!v3];
        goto LABEL_11;
      }

      v14 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [v14 setSelectionDisplayVisible:1];

      v6 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [v6 activateSelection];
    }

    goto LABEL_9;
  }

  v13 = [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
  v16 = v13;
  if (v3)
  {
    [v13 configureForSelectionMode];
  }

  else
  {
    [v13 configureForHighlightMode];
  }

LABEL_11:
}

- (void)showSelectionCommands
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  v5 = [v4 isEmpty];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v7 showSelectionCommands];

    v6 = 0;
  }

  self->_shouldDelayShowSelectionCommands = v6;
}

- (void)showSelectionView
{
  v2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  if ([v2 shouldDelayActivatingSelectionView])
  {
    [v2 setSelectionDisplayVisible:1];
    [v2 activateSelection];
    [v2 setShouldDelayActivatingSelectionView:0];
  }
}

- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 executionContext:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_executionContext___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  v10 = v9;
  v16 = v10;
  v17 = self;
  v18 = a3;
  v11 = _Block_copy(aBlock);
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled]|| ([(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v14 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v13 = v14;
LABEL_6:
    [v14 selectTextWithGranularity:a3 atPoint:v11 completionHandler:{x, y}];
    goto LABEL_7;
  }

  v13 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = v13;
    goto LABEL_6;
  }

  [v13 selectTextInGranularity:a3 atPoint:v11 completionHandler:{x, y}];
LABEL_7:
}

- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  if (a3 == 1)
  {
    v10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v11 = [v10 selectedTextRange];
  }

  else
  {
    v11 = 0;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __95___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_completionHandler___block_invoke;
  v21 = &unk_1E7118860;
  v25 = a3;
  v12 = v11;
  v22 = v12;
  v23 = self;
  v13 = v9;
  v24 = v13;
  v14 = _Block_copy(&v18);
  if (![UIKBInputDelegateManager isAsyncTextInputEnabled:v18]|| ([(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    v17 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v16 = v17;
LABEL_9:
    [v17 selectTextWithGranularity:a3 atPoint:v14 completionHandler:{x, y}];
    goto LABEL_10;
  }

  v16 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_10;
    }

    v17 = v16;
    goto LABEL_9;
  }

  [v16 selectTextInGranularity:a3 atPoint:v14 completionHandler:{x, y}];
LABEL_10:
}

- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)a3 initialExtentPoint:(CGPoint)a4 executionContext:(id)a5
{
  v7 = a5;
  [(_UIKeyboardTextSelectionController *)self beginSelection];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __132___UIKeyboardAsyncTextSelectionController_beginSelectionWithBaseAtSelectionBoundaryInDirection_initialExtentPoint_executionContext___block_invoke;
  v14 = &unk_1E70F3C60;
  v8 = v7;
  v15 = v8;
  v16 = self;
  v9 = _Block_copy(&v11);
  [UIKBInputDelegateManager isAsyncTextInputEnabled:v11];
  v10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  [v10 beginSelectionInDirection:a3 completionHandler:v9];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __91___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_executionContext___block_invoke;
  v17 = &unk_1E70F3C60;
  v8 = v7;
  v18 = v8;
  v19 = self;
  v9 = _Block_copy(&v14);
  v10 = [UIKBInputDelegateManager isAsyncTextInputEnabled:v14];
  v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = v11;
  if (v10 && (v13 = [v11 conformsToProtocolCached:&unk_1F016C810], v12, -[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v13))
  {
    if (objc_opt_respondsToSelector())
    {
      [v12 updateSelectionWithExtentPoint:0 boundary:v9 completionHandler:{x, y}];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v12 updateSelectionWithExtentPoint:0 withBoundary:v9 completionHandler:{x, y}];
    }
  }

  else
  {
    [v12 updateSelectionWithExtentPoint:v9 completionHandler:{x, y}];
  }
}

- (void)updateSelectionWithExtentPoint:(CGPoint)a3 withBoundary:(int64_t)a4 executionContext:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __104___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_withBoundary_executionContext___block_invoke;
  v23 = &unk_1E70F3C60;
  v10 = v9;
  v24 = v10;
  v25 = self;
  v11 = _Block_copy(&v20);
  if (![UIKBInputDelegateManager isAsyncTextInputEnabled:v20])
  {
    v16 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v17 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v17 startAutoscroll:{x, y}];

LABEL_6:
    v18 = v16;
LABEL_7:
    [v18 updateSelectionWithExtentPoint:a4 withBoundary:v11 completionHandler:{x, y}];
    goto LABEL_8;
  }

  v12 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v12 startAutoscroll:{x, y}];

  v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v14 = [v13 conformsToProtocol:&unk_1F016C810];

  v15 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v16 = v15;
  if (!v14)
  {
    v19 = [v15 conformsToProtocol:&unk_1F016C7B0];

    if (!v19)
    {
      goto LABEL_9;
    }

    v18 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v16 = v18;
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  [v16 updateSelectionWithExtentPoint:a4 boundary:v11 completionHandler:{x, y}];
LABEL_8:

LABEL_9:
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v5 beginFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v5 updateFloatingCursorAtPoint:{x, y}];
}

- (void)endFloatingCursor
{
  v2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v2 endFloatingCursor];
}

- (id)webInputDelegate
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 conformsToProtocolCached:&unk_1F016C810];

  if (v4)
  {
    v5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end