@interface _UIKeyboardAsyncTextSelectionController
- (BOOL)cursorPositionIsContainedByRange:(id)range;
- (BOOL)shouldAllowSelectionGestureWithTouchType:(int64_t)type atPoint:(CGPoint)point toProgressToState:(int64_t)state;
- (CGRect)caretRectForLeftmostSelectedPosition;
- (CGRect)caretRectForRightmostSelectedPosition;
- (id)webInputDelegate;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)direction initialExtentPoint:(CGPoint)point executionContext:(id)context;
- (void)endFloatingCursor;
- (void)selectPositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction relativeToSelection:(id)selection executionContext:(id)context;
- (void)selectPositionAtPoint:(CGPoint)point executionContext:(id)context;
- (void)selectPositionAtPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler;
- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point completionHandler:(id)handler;
- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point executionContext:(id)context;
- (void)setRangedSelectionShouldShowGrabbers:(BOOL)grabbers;
- (void)showSelectionCommands;
- (void)showSelectionView;
- (void)updateFloatingCursorAtPoint:(CGPoint)point;
- (void)updateSelectionWithExtentPoint:(CGPoint)point executionContext:(id)context;
- (void)updateSelectionWithExtentPoint:(CGPoint)point withBoundary:(int64_t)boundary executionContext:(id)context;
@end

@implementation _UIKeyboardAsyncTextSelectionController

- (BOOL)cursorPositionIsContainedByRange:(id)range
{
  v27 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  cursorPosition = [(_UIKeyboardTextSelectionController *)self cursorPosition];

  if (cursorPosition)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    cursorPosition2 = [(_UIKeyboardTextSelectionController *)self cursorPosition];
    [inputDelegate caretRectForPosition:cursorPosition2];
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
      LOBYTE(cursorPosition) = 0;
    }

    else
    {
      inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v17 = [inputDelegate2 selectionRectsForRange:rangeCopy];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v18 = v17;
      cursorPosition = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (cursorPosition)
      {
        v19 = *v23;
        while (2)
        {
          for (i = 0; i != cursorPosition; i = i + 1)
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
              LOBYTE(cursorPosition) = 1;
              goto LABEL_14;
            }
          }

          cursorPosition = [v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (cursorPosition)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return cursorPosition;
}

- (CGRect)caretRectForLeftmostSelectedPosition
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  start = [selectedTextRange start];
  if (start)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    start2 = [selectedTextRange start];
    [inputDelegate2 caretRectForPosition:start2];
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

  v16 = [selectedTextRange end];
  if (v16)
  {
    inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v18 = [selectedTextRange end];
    [inputDelegate3 caretRectForPosition:v18];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  start = [selectedTextRange start];
  if (start)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    start2 = [selectedTextRange start];
    [inputDelegate2 caretRectForPosition:start2];
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

  v16 = [selectedTextRange end];
  if (v16)
  {
    inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v18 = [selectedTextRange end];
    [inputDelegate3 caretRectForPosition:v18];
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

- (BOOL)shouldAllowSelectionGestureWithTouchType:(int64_t)type atPoint:(CGPoint)point toProgressToState:(int64_t)state
{
  y = point.y;
  x = point.x;
  [UIKBInputDelegateManager isAsyncTextInputEnabled:type];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [inputDelegate hasSelectablePositionAtPoint:{x, y}];
  if (v9)
  {
    [inputDelegate _cancelLongPressGestureRecognizer];
  }

  return v9;
}

- (void)selectPositionAtPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82___UIKeyboardAsyncTextSelectionController_selectPositionAtPoint_executionContext___block_invoke;
  v11[3] = &unk_1E7103E40;
  v12 = contextCopy;
  selfCopy = self;
  v14 = inputDelegate;
  v15 = x;
  v16 = y;
  v9 = inputDelegate;
  v10 = contextCopy;
  [(_UIKeyboardAsyncTextSelectionController *)self selectPositionAtPoint:v11 completionHandler:x, y];
}

- (void)selectPositionAtPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    webInputDelegate = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];

    selfCopy2 = self;
    if (webInputDelegate)
    {
      webInputDelegate2 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
      v12 = webInputDelegate2;
      if (granularity)
      {
        [webInputDelegate2 updateCurrentSelectionTo:1 fromGesture:3 inState:{x, y}];
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  inputDelegate = [(_UIKeyboardTextSelectionController *)selfCopy2 inputDelegate];
  v12 = inputDelegate;
  if (granularity)
  {
    [inputDelegate changeSelectionWithGestureAt:1 withGesture:3 withState:{x, y}];
    goto LABEL_9;
  }

LABEL_8:
  [v12 selectPositionAtPoint:handlerCopy completionHandler:{x, y}];
LABEL_9:
}

- (void)selectPositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction relativeToSelection:(id)selection executionContext:(id)context
{
  contextCopy = context;
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_9;
    v14[3] = &unk_1E70F35B8;
    v15 = contextCopy;
    selfCopy = self;
    [inputDelegate moveSelectionAtBoundary:boundary inDirection:direction completionHandler:v14];
    v13 = v15;
LABEL_6:

    goto LABEL_7;
  }

  webInputDelegate = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];

  if (!webInputDelegate)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_5;
    v17[3] = &unk_1E70F35B8;
    v18 = contextCopy;
    selfCopy2 = self;
    [inputDelegate moveSelectionAtBoundary:boundary inDirection:direction completionHandler:v17];
    v13 = v18;
    goto LABEL_6;
  }

  webInputDelegate2 = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke;
  v20[3] = &unk_1E70F35B8;
  v21 = contextCopy;
  selfCopy3 = self;
  [webInputDelegate2 moveSelectionAtBoundary:boundary inStorageDirection:direction completionHandler:v20];

  inputDelegate = v21;
LABEL_7:
}

- (void)setRangedSelectionShouldShowGrabbers:(BOOL)grabbers
{
  grabbersCopy = grabbers;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    selectedTextRange = [inputDelegate selectedTextRange];
    v8 = selectedTextRange == 0;
    if (selectedTextRange)
    {
      v9 = selectedTextRange;
      inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      selectedTextRange2 = [inputDelegate2 selectedTextRange];
      isEmpty = [selectedTextRange2 isEmpty];

      if (isEmpty)
      {
        v8 = 1;
LABEL_9:
        interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
        [interactionAssistant2 setShouldDelayActivatingSelectionView:v8];

        interactionAssistant3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
        [interactionAssistant3 setSelectionHighlightMode:!grabbersCopy];
        goto LABEL_11;
      }

      interactionAssistant4 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [interactionAssistant4 setSelectionDisplayVisible:1];

      inputDelegate = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [inputDelegate activateSelection];
    }

    goto LABEL_9;
  }

  selectionInteractionAssistant = [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
  interactionAssistant3 = selectionInteractionAssistant;
  if (grabbersCopy)
  {
    [selectionInteractionAssistant configureForSelectionMode];
  }

  else
  {
    [selectionInteractionAssistant configureForHighlightMode];
  }

LABEL_11:
}

- (void)showSelectionCommands
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if (isEmpty)
  {
    v6 = 1;
  }

  else
  {
    interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant showSelectionCommands];

    v6 = 0;
  }

  self->_shouldDelayShowSelectionCommands = v6;
}

- (void)showSelectionView
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  if ([interactionAssistant shouldDelayActivatingSelectionView])
  {
    [interactionAssistant setSelectionDisplayVisible:1];
    [interactionAssistant activateSelection];
    [interactionAssistant setShouldDelayActivatingSelectionView:0];
  }
}

- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_executionContext___block_invoke;
  aBlock[3] = &unk_1E70F36D0;
  v10 = contextCopy;
  v16 = v10;
  selfCopy = self;
  granularityCopy = granularity;
  v11 = _Block_copy(aBlock);
  if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled]|| ([(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    webInputDelegate = inputDelegate;
LABEL_6:
    [inputDelegate selectTextWithGranularity:granularity atPoint:v11 completionHandler:{x, y}];
    goto LABEL_7;
  }

  webInputDelegate = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    inputDelegate = webInputDelegate;
    goto LABEL_6;
  }

  [webInputDelegate selectTextInGranularity:granularity atPoint:v11 completionHandler:{x, y}];
LABEL_7:
}

- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  if (granularity == 1)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    selectedTextRange = [inputDelegate selectedTextRange];
  }

  else
  {
    selectedTextRange = 0;
  }

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __95___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_completionHandler___block_invoke;
  v21 = &unk_1E7118860;
  granularityCopy = granularity;
  v12 = selectedTextRange;
  v22 = v12;
  selfCopy = self;
  v13 = handlerCopy;
  v24 = v13;
  v14 = _Block_copy(&v18);
  if (![UIKBInputDelegateManager isAsyncTextInputEnabled:v18]|| ([(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    webInputDelegate = inputDelegate2;
LABEL_9:
    [inputDelegate2 selectTextWithGranularity:granularity atPoint:v14 completionHandler:{x, y}];
    goto LABEL_10;
  }

  webInputDelegate = [(_UIKeyboardAsyncTextSelectionController *)self webInputDelegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_10;
    }

    inputDelegate2 = webInputDelegate;
    goto LABEL_9;
  }

  [webInputDelegate selectTextInGranularity:granularity atPoint:v14 completionHandler:{x, y}];
LABEL_10:
}

- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)direction initialExtentPoint:(CGPoint)point executionContext:(id)context
{
  contextCopy = context;
  [(_UIKeyboardTextSelectionController *)self beginSelection];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __132___UIKeyboardAsyncTextSelectionController_beginSelectionWithBaseAtSelectionBoundaryInDirection_initialExtentPoint_executionContext___block_invoke;
  v14 = &unk_1E70F3C60;
  v8 = contextCopy;
  v15 = v8;
  selfCopy = self;
  v9 = _Block_copy(&v11);
  [UIKBInputDelegateManager isAsyncTextInputEnabled:v11];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  [inputDelegate beginSelectionInDirection:direction completionHandler:v9];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __91___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_executionContext___block_invoke;
  v17 = &unk_1E70F3C60;
  v8 = contextCopy;
  v18 = v8;
  selfCopy = self;
  v9 = _Block_copy(&v14);
  v10 = [UIKBInputDelegateManager isAsyncTextInputEnabled:v14];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = inputDelegate;
  if (v10 && (v13 = [inputDelegate conformsToProtocolCached:&unk_1F016C810], v12, -[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v12 = objc_claimAutoreleasedReturnValue(), v13))
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

- (void)updateSelectionWithExtentPoint:(CGPoint)point withBoundary:(int64_t)boundary executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __104___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_withBoundary_executionContext___block_invoke;
  v23 = &unk_1E70F3C60;
  v10 = contextCopy;
  v24 = v10;
  selfCopy = self;
  v11 = _Block_copy(&v20);
  if (![UIKBInputDelegateManager isAsyncTextInputEnabled:v20])
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant startAutoscroll:{x, y}];

LABEL_6:
    inputDelegate4 = inputDelegate;
LABEL_7:
    [inputDelegate4 updateSelectionWithExtentPoint:boundary withBoundary:v11 completionHandler:{x, y}];
    goto LABEL_8;
  }

  interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant2 startAutoscroll:{x, y}];

  inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v14 = [inputDelegate2 conformsToProtocol:&unk_1F016C810];

  inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  inputDelegate = inputDelegate3;
  if (!v14)
  {
    v19 = [inputDelegate3 conformsToProtocol:&unk_1F016C7B0];

    if (!v19)
    {
      goto LABEL_9;
    }

    inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    inputDelegate = inputDelegate4;
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

  [inputDelegate updateSelectionWithExtentPoint:boundary boundary:v11 completionHandler:{x, y}];
LABEL_8:

LABEL_9:
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant beginFloatingCursorAtPoint:{x, y}];
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant updateFloatingCursorAtPoint:{x, y}];
}

- (void)endFloatingCursor
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant endFloatingCursor];
}

- (id)webInputDelegate
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [inputDelegate conformsToProtocolCached:&unk_1F016C810];

  if (v4)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  }

  else
  {
    inputDelegate2 = 0;
  }

  return inputDelegate2;
}

@end