@interface _UIKeyboardTextSelectionController
- (BOOL)beginLoupeGestureAtPoint:(CGPoint)a3 translation:(CGPoint)a4;
- (BOOL)cursorPositionIsContainedByRange:(id)a3;
- (BOOL)hasCaretSelection;
- (BOOL)hasRangedSelection;
- (CGPoint)boundedDeltaForTranslation:(CGPoint)a3 cursorLocationBase:(CGPoint)a4;
- (CGRect)caretRectForCursorPosition;
- (CGRect)caretRectForFirstSelectedPosition;
- (CGRect)caretRectForLastSelectedPosition;
- (CGRect)caretRectForLeftmostSelectedPosition;
- (CGRect)caretRectForRightmostSelectedPosition;
- (CGRect)selectedRectInLineWithPoint:(CGPoint)a3;
- (UISelectionInteractionAssistant)selectionInteractionAssistant;
- (UITextInput)inputDelegate;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)cursorPosition;
- (UITextSelection)selection;
- (UIView)textInputView;
- (_UIKeyboardTextSelectionController)initWithInputDelegate:(id)a3;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginLoupeMagnifierAtPoint:(CGPoint)a3;
- (void)beginRangedMagnifierAtPoint:(CGPoint)a3;
- (void)beginSelection;
- (void)beginSelectionChange;
- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)a3 initialExtentPoint:(CGPoint)a4 executionContext:(id)a5;
- (void)beginSelectionWithBasePositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 withInitialExtentPoint:(CGPoint)a5 executionContext:(id)a6;
- (void)endFloatingCursor;
- (void)endLoupeGestureAtPoint:(CGPoint)a3 translation:(CGPoint)a4;
- (void)endLoupeMagnifierAtPoint:(CGPoint)a3;
- (void)endRangedMagnifierAtPoint:(CGPoint)a3;
- (void)endSelection;
- (void)endSelectionChange;
- (void)modifySelectionWithExtentPoint:(CGPoint)a3 executionContext:(id)a4;
- (void)restartSelection;
- (void)scrollSelectionToVisible;
- (void)selectImmediatePositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5;
- (void)selectPositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5;
- (void)selectPositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 relativeToSelection:(id)a5 executionContext:(id)a6;
- (void)selectPositionAtPoint:(CGPoint)a3 granularity:(int64_t)a4 completionHandler:(id)a5;
- (void)selectPositionAtPoint:(CGPoint)a3 granularity:(int64_t)a4 executionContext:(id)a5;
- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 completionHandler:(id)a5;
- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 executionContext:(id)a5;
- (void)selectionDidChange;
- (void)setCursorPosition:(id)a3;
- (void)setRangedSelectionShouldShowGrabbers:(BOOL)a3;
- (void)setSelectedTextRange:(id)a3;
- (void)showSelectionCommands;
- (void)switchToRangedSelection;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
- (void)updateGestureRecognizers;
- (void)updateImmediateSelectionWithExtentAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5;
- (void)updateLoupeGestureAtPoint:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5;
- (void)updateLoupeMagnifierAtPoint:(CGPoint)a3;
- (void)updateRangedMagnifierAtPoint:(CGPoint)a3;
- (void)updateSelectionRects;
- (void)updateSelectionWithExtentAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5;
- (void)updateSelectionWithExtentAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 relativeToSelection:(id)a5 executionContext:(id)a6;
- (void)updateSelectionWithExtentPoint:(CGPoint)a3 andExtentPosition:(id)a4 executionContext:(id)a5;
- (void)updateSelectionWithExtentPoint:(CGPoint)a3 executionContext:(id)a4;
- (void)updateSelectionWithExtentPoint:(CGPoint)a3 withBoundary:(int64_t)a4 executionContext:(id)a5;
- (void)willBeginFloatingCursor:(BOOL)a3;
- (void)willHandoffLoupeMagnifier;
@end

@implementation _UIKeyboardTextSelectionController

- (UITextSelection)selection
{
  v3 = [(UITextSelection *)self->_selection document];
  v4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];

  if (v3 != v4)
  {
    [(UITextSelection *)self->_selection invalidate];
    selection = self->_selection;
    self->_selection = 0;
  }

  v6 = self->_selection;
  if (!v6)
  {
    v7 = [UITextSelection alloc];
    v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v9 = [(UITextSelection *)v7 initWithDocument:v8];
    v10 = self->_selection;
    self->_selection = v9;

    [(UITextSelection *)self->_selection selectionChanged];
    v6 = self->_selection;
  }

  return v6;
}

- (UITextInput)inputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inputDelegate);

  return WeakRetained;
}

- (void)selectionDidChange
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  v5 = [(_UIKeyboardTextSelectionController *)self cursorPositionIsContainedByRange:v4];

  if (!v5)
  {
    [(_UIKeyboardTextSelectionController *)self resetCursorPosition];
  }

  v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v7 = [v6 selectedTextRange];
  v8 = [v7 isEmpty];

  if (v8)
  {
    [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:0];
  }

  v9 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  if (v9)
  {
    v10 = v9;
    v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v12 = [v11 selectedTextRange];
    v13 = [v12 isEmpty];

    if (v13)
    {
      v14 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [v14 setGrabberSuppressionAssertion:0];
    }
  }
}

- (UITextInteractionAssistant)interactionAssistant
{
  if (self->_hasInteractionAssistant)
  {
    v2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v3 = [v2 interactionAssistant];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UITextPosition)cursorPosition
{
  cursorPosition = self->_cursorPosition;
  if (!cursorPosition)
  {
    v4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v5 = [v4 selectedTextRange];
    v6 = [v5 start];
    v7 = self->_cursorPosition;
    self->_cursorPosition = v6;

    cursorPosition = self->_cursorPosition;
  }

  return cursorPosition;
}

- (UIView)textInputView
{
  if (self->_hasTextInputView)
  {
    v2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v3 = [v2 textInputView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_UIKeyboardTextSelectionController)initWithInputDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UIKeyboardTextSelectionController;
  v5 = [(_UIKeyboardTextSelectionController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_inputDelegate, v4);
    v6->_hasInteractionAssistant = objc_opt_respondsToSelector() & 1;

    WeakRetained = objc_loadWeakRetained(&v6->_inputDelegate);
    v6->_hasSelectionInteractionAssistant = objc_opt_respondsToSelector() & 1;

    v9 = objc_loadWeakRetained(&v6->_inputDelegate);
    v6->_hasTextInputView = objc_opt_respondsToSelector() & 1;

    v10 = *(MEMORY[0x1E695F050] + 16);
    v6->_caretRectForCursorPosition.origin = *MEMORY[0x1E695F050];
    v6->_caretRectForCursorPosition.size = v10;
  }

  return v6;
}

- (UISelectionInteractionAssistant)selectionInteractionAssistant
{
  if (self->_hasSelectionInteractionAssistant)
  {
    v2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v3 = [v2 selectionInteractionAssistant];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)beginSelectionChange
{
  v3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v3)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v6 beginSelectionChange];
  }

  else
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v4 = [v6 inputDelegate];
    v5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v4 selectionWillChange:v5];
  }
}

- (void)endSelectionChange
{
  v3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v3)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v6 endSelectionChange];
  }

  else
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v4 = [v6 inputDelegate];
    v5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v4 selectionDidChange:v5];
  }
}

- (void)setCursorPosition:(id)a3
{
  v5 = a3;
  if (self->_cursorPosition != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cursorPosition, a3);
    [(_UIKeyboardTextSelectionController *)self setCaretRectForCursorPosition:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    v5 = v6;
  }
}

- (void)setSelectedTextRange:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionController *)self selection];
  v6 = [v5 isValid];

  if (v6)
  {
    v7 = [(_UIKeyboardTextSelectionController *)self selection];
    [v7 setSelectedRange:v4];

    v9 = [(_UIKeyboardTextSelectionController *)self selection];
    [v9 commit];
  }

  else
  {
    v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v8 setSelectedTextRange:v4];

    [(_UIKeyboardTextSelectionController *)self updateSelectionRects];
  }
}

- (BOOL)cursorPositionIsContainedByRange:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardTextSelectionController *)self cursorPosition];

  if (v5)
  {
    v6 = [v4 start];
    if (!v6 || (-[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v7 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardTextSelectionController cursorPosition](self, "cursorPosition"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 comparePosition:v8 toPosition:v6], v8, v7, v9 == -1))
    {
      v13 = 0;
    }

    else
    {
      v10 = [v4 end];
      if (v10)
      {
        v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v12 = [(_UIKeyboardTextSelectionController *)self cursorPosition];
        v13 = [v11 comparePosition:v10 toPosition:v12] != -1;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGRect)selectedRectInLineWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v33 = *MEMORY[0x1E69E9840];
  v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v7 = [v6 selectedTextRange];

  v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [v8 selectionRectsForRange:v7];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 rect];
        v34.x = x;
        v34.y = y;
        if (CGRectContainsPoint(v35, v34))
        {
          [v15 rect];
          v16 = v20;
          v17 = v21;
          v18 = v22;
          v19 = v23;

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = *MEMORY[0x1E695F050];
  v17 = *(MEMORY[0x1E695F050] + 8);
  v18 = *(MEMORY[0x1E695F050] + 16);
  v19 = *(MEMORY[0x1E695F050] + 24);
LABEL_11:

  v24 = v16;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)hasCaretSelection
{
  v2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v3 = [v2 selectedTextRange];
  v4 = [v3 isEmpty];

  return v4;
}

- (BOOL)hasRangedSelection
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  if (v4)
  {
    v5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v6 = [v5 selectedTextRange];
    v7 = [v6 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (CGRect)caretRectForFirstSelectedPosition
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  v5 = [v4 start];

  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v6 caretRectForPosition:v5];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)caretRectForLastSelectedPosition
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  v5 = [v4 end];

  if (v5)
  {
    v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v6 caretRectForPosition:v5];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)caretRectForLeftmostSelectedPosition
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];

  if (v4 && (-[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 positionWithinRange:v4 farthestInDirection:3], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v7 caretRectForPosition:v6];
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

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)caretRectForRightmostSelectedPosition
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];

  if (v4 && (-[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 positionWithinRange:v4 farthestInDirection:2], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v7 caretRectForPosition:v6];
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

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)caretRectForCursorPosition
{
  if (CGRectIsNull(self->_caretRectForCursorPosition))
  {
    v3 = [(_UIKeyboardTextSelectionController *)self cursorPosition];
    if (v3)
    {
      v4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [v4 caretRectForPosition:v3];
      self->_caretRectForCursorPosition.origin.x = v5;
      self->_caretRectForCursorPosition.origin.y = v6;
      self->_caretRectForCursorPosition.size.width = v7;
      self->_caretRectForCursorPosition.size.height = v8;
    }
  }

  x = self->_caretRectForCursorPosition.origin.x;
  y = self->_caretRectForCursorPosition.origin.y;
  width = self->_caretRectForCursorPosition.size.width;
  height = self->_caretRectForCursorPosition.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)showSelectionCommands
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  v5 = [v4 isEmpty];

  if ((v5 & 1) == 0)
  {
    v7 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    v6 = [v7 _editMenuAssistant];
    [v6 showSelectionCommands];
  }
}

- (void)updateSelectionRects
{
  v2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v2 setNeedsSelectionDisplayUpdate];
}

- (void)switchToRangedSelection
{
  v3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v3 setSelectionHighlightMode:0];

  [(_UIKeyboardTextSelectionController *)self updateSelectionRects];
}

- (void)setRangedSelectionShouldShowGrabbers:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  v6 = [v5 activeSelection];
  v7 = [v6 isValid];

  if (v7)
  {
    v8 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v8 setSelectionDisplayVisible:1];

    v9 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v9 activateSelection];

    v11 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [v11 setSelectionHighlightMode:!v3];
  }

  else
  {
    v10 = [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
    v11 = v10;
    if (v3)
    {
      [v10 configureForSelectionMode];
    }

    else
    {
      [v10 configureForHighlightMode];
    }
  }
}

- (void)willHandoffLoupeMagnifier
{
  v2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v2 setWillHandoffLoupeMagnifier];
}

- (void)updateGestureRecognizers
{
  v2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v2 setGestureRecognizers];
}

- (void)scrollSelectionToVisible
{
  v3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v3)
  {
    [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  }

  else
  {
    [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
  }
  v4 = ;
  [v4 scrollSelectionToVisible:0];
}

- (void)willBeginFloatingCursor:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v4 willBeginFloatingCursor:v3];
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v8 beginFloatingCursorAtPoint:{x, y}];
  }
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v8 updateFloatingCursorAtPoint:{x, y}];
  }
}

- (void)endFloatingCursor
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [v5 endFloatingCursor];
  }
}

- (void)beginLoupeMagnifierAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v5 loupeMagnifierWithState:1 atPoint:{x, y}];
}

- (void)updateLoupeMagnifierAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v5 loupeMagnifierWithState:2 atPoint:{x, y}];
}

- (void)endLoupeMagnifierAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v5 loupeMagnifierWithState:3 atPoint:{x, y}];
}

- (void)beginRangedMagnifierAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v6)
  {
    [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  }

  else
  {
    [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
  }
  v7 = ;
  [v7 rangedMagnifierWithState:1 atPoint:{x, y}];
}

- (void)updateRangedMagnifierAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v6)
  {
    [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  }

  else
  {
    [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
  }
  v7 = ;
  [v7 rangedMagnifierWithState:2 atPoint:{x, y}];
}

- (void)endRangedMagnifierAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (v6)
  {
    [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  }

  else
  {
    [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
  }
  v7 = ;
  [v7 rangedMagnifierWithState:3 atPoint:{x, y}];
}

- (BOOL)beginLoupeGestureAtPoint:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v12 = 0;
  v8 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75___UIKeyboardTextSelectionController_beginLoupeGestureAtPoint_translation___block_invoke;
  v11[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v11[4] = v7;
  *&v11[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___UIKeyboardTextSelectionController_beginLoupeGestureAtPoint_translation___block_invoke_2;
  v10[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v10[4] = x;
  *&v10[5] = y;
  [v8 loupeGestureWithState:1 location:v11 translation:v10 velocity:&__block_literal_global_416 modifierFlags:0 shouldCancel:&v12];

  return v12;
}

- (void)updateLoupeGestureAtPoint:(CGPoint)a3 translation:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85___UIKeyboardTextSelectionController_updateLoupeGestureAtPoint_translation_velocity___block_invoke;
  v14[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v14[4] = v10;
  *&v14[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85___UIKeyboardTextSelectionController_updateLoupeGestureAtPoint_translation_velocity___block_invoke_2;
  v13[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v13[4] = v8;
  *&v13[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85___UIKeyboardTextSelectionController_updateLoupeGestureAtPoint_translation_velocity___block_invoke_3;
  v12[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v12[4] = x;
  *&v12[5] = y;
  [v11 loupeGestureWithState:2 location:v14 translation:v13 velocity:v12 modifierFlags:0 shouldCancel:0];
}

- (void)endLoupeGestureAtPoint:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73___UIKeyboardTextSelectionController_endLoupeGestureAtPoint_translation___block_invoke;
  v10[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v10[4] = v7;
  *&v10[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___UIKeyboardTextSelectionController_endLoupeGestureAtPoint_translation___block_invoke_2;
  v9[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
  *&v9[4] = x;
  *&v9[5] = y;
  [v8 loupeGestureWithState:3 location:v10 translation:v9 velocity:&__block_literal_global_48_1 modifierFlags:0 shouldCancel:0];
}

- (CGPoint)boundedDeltaForTranslation:(CGPoint)a3 cursorLocationBase:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  v10 = [v9 activeSelection];
  v11 = [v10 isValid];

  if (v11)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      v12 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [v12 boundedDeltaForTranslation:v7 cursorLocationBase:{v6, x, y}];
      v14 = v13;
      v16 = v15;
    }

    else
    {
      v17 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      v18 = [v17 _legacySelectionView];
      v19 = [(_UIKeyboardTextSelectionController *)self textInputView];
      [v18 convertPoint:v19 fromView:{v7 + x, v6 + y}];
      v21 = v20;
      v23 = v22;

      v24 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      v25 = [v24 _legacySelectionView];
      [v25 floatingCursorPositionForPoint:0 lineSnapping:{v21, v23}];
      v27 = v26;
      v29 = v28;

      v14 = v27 - v21;
      v16 = v29 - v23;
    }
  }

  else
  {
    v14 = *MEMORY[0x1E695EFF8];
    v16 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v30 = v14;
  v31 = v16;
  result.y = v31;
  result.x = v30;
  return result;
}

- (void)beginSelection
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self setInitialSelection:v4];

  v5 = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self setSelectionBase:v5];

  [(_UIKeyboardTextSelectionController *)self beginSelectionChange];
}

- (void)restartSelection
{
  v3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = [v3 selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self setInitialSelection:v4];

  v5 = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self setSelectionBase:v5];
}

- (void)selectPositionAtPoint:(CGPoint)a3 granularity:(int64_t)a4 executionContext:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___UIKeyboardTextSelectionController_selectPositionAtPoint_granularity_executionContext___block_invoke;
  v11[3] = &unk_1E70F3590;
  v12 = v9;
  v10 = v9;
  [(_UIKeyboardTextSelectionController *)self selectPositionAtPoint:a4 granularity:v11 completionHandler:x, y];
}

- (void)selectPositionAtPoint:(CGPoint)a3 granularity:(int64_t)a4 completionHandler:(id)a5
{
  y = a3.y;
  x = a3.x;
  v30 = a5;
  v9 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v10 = [v9 closestPositionToPoint:{x, y}];

  v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [v11 markedTextRange];

  if (v12)
  {
    v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [v12 start];
    v15 = [v13 comparePosition:v10 toPosition:v14];

    if (v15 == -1)
    {
      v19 = [v12 start];
    }

    else
    {
      v16 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v17 = [v12 end];
      v18 = [v16 comparePosition:v17 toPosition:v10];

      if (v18 != -1)
      {
        goto LABEL_7;
      }

      v19 = [v12 end];
    }

    v20 = v19;

    v10 = v20;
  }

LABEL_7:
  v21 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v22 = [v21 _findBoundaryPositionClosestToPosition:v10 withGranularity:a4];

  if (v22)
  {
    v23 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v24 = [v23 textRangeFromPosition:v22 toPosition:v22];

    if (v24)
    {
      [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v24];
      [(_UIKeyboardTextSelectionController *)self setCursorPosition:v22];
      [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:a4];
      [(_UIKeyboardTextSelectionController *)self scrollSelectionToVisible];
      if (v12)
      {
        v25 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v26 = [v25 inputDelegate];
        v27 = objc_opt_respondsToSelector();

        if (v27)
        {
          v28 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
          v29 = [v28 inputDelegate];
          [v29 didChangePhraseBoundary];
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  if (v30)
  {
    v30[2]();
  }
}

- (void)selectPositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5
{
  v8 = a5;
  v9 = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self selectPositionAtBoundary:a3 inDirection:a4 relativeToSelection:v9 executionContext:v8];
}

- (void)selectImmediatePositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5
{
  v8 = a5;
  v10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [v10 selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self selectPositionAtBoundary:a3 inDirection:a4 relativeToSelection:v9 executionContext:v8];
}

- (void)selectPositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 relativeToSelection:(id)a5 executionContext:(id)a6
{
  v18 = a6;
  v10 = a5;
  v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [v11 _positionWithinRange:v10 farthestInDirection:a4];

  if (v12)
  {
    v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [v13 _positionFromPosition:v12 pastTextUnit:a3 inDirection:a4];

    if (v14)
    {
      v15 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v16 = [v15 textRangeFromPosition:v14 toPosition:v14];

      if (v16)
      {
        v17 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        [v17 setSelectedTextRange:v16];

        [(_UIKeyboardTextSelectionController *)self setCursorPosition:v14];
        [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:0];
        [(_UIKeyboardTextSelectionController *)self scrollSelectionToVisible];
      }
    }
  }

  else
  {
    v14 = 0;
  }

  [v18 returnExecutionToParent];
}

- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 executionContext:(id)a5
{
  y = a4.y;
  x = a4.x;
  v51 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v11 = [v10 selectedTextRange];

  if ([(_UIKeyboardTextSelectionController *)self selectionGranularity]== a3 && v11)
  {
    v12 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v13 = [v12 selectionRectsForRange:v11];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v47;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v46 + 1) + 8 * v18) rect];
          v52.x = x;
          v52.y = y;
          if (CGRectContainsPoint(v53, v52))
          {
            v20 = v14;
            goto LABEL_33;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  v19 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v20 = [v19 closestPositionToPoint:{x, y}];

  if (v20)
  {
    v21 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [v21 _rangeSpanningTextUnit:a3 andPosition:v20];

    if (a3 == 1 && v14)
    {
      v23 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [v23 caretRectForPosition:v20];
      v25 = v24;

      v26 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [v26 firstRectForRange:v14];
      v28 = v27;

      v22 = v28 - v25;
      if (v28 - v25 <= 1.0)
      {
        goto LABEL_19;
      }

      v29 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v30 = [v29 positionFromPosition:v20 offset:-1];

      if (!v30)
      {
        v20 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v31 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v32 = [v31 _rangeSpanningTextUnit:1 andPosition:v30];

      v20 = v30;
      v14 = v32;
    }

    if (v14)
    {
LABEL_19:
      v33 = [v14 end];
      v34 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v35 = [v34 _characterInRelationToPosition:v33 amount:0xFFFFFFFFLL];

      if (v35 == 10)
      {
        do
        {
          v36 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
          v37 = [v36 positionFromPosition:v33 offset:-1];

          v38 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
          LODWORD(v36) = [v38 _characterInRelationToPosition:v37 amount:0xFFFFFFFFLL];

          v33 = v37;
        }

        while (v36 == 10);
        if (!v37)
        {
LABEL_29:
          if (a3 == 1 && [v11 isEmpty])
          {
            v44 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
            v45 = [v44 _rangeOfSmartSelectionIncludingRange:v14];

            v14 = v45;
          }

          [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v14];
          [(_UIKeyboardTextSelectionController *)self setCursorPosition:v20];
          [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:a3];
          [(_UIKeyboardTextSelectionController *)self scrollSelectionToVisible];

          goto LABEL_33;
        }
      }

      else
      {
        v37 = v33;
        if (!v33)
        {
          goto LABEL_29;
        }
      }

      v39 = [v14 end];

      if (v37 != v39)
      {
        v40 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v41 = [v14 start];
        v42 = [v40 textRangeFromPosition:v41 toPosition:v37];

        if (v42)
        {
          v43 = v42;

          v14 = v43;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_34:
  [v9 returnExecutionToParent];
}

- (void)selectTextWithGranularity:(int64_t)a3 atPoint:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a5;
  [(_UIKeyboardTextSelectionController *)self selectTextWithGranularity:a3 atPoint:0 executionContext:x, y];
  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10);
    v9 = v10;
  }
}

- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)a3 initialExtentPoint:(CGPoint)a4 executionContext:(id)a5
{
  y = a4.y;
  x = a4.x;
  v18 = a5;
  [(_UIKeyboardTextSelectionController *)self beginSelection];
  v9 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v10 = [v9 selectedTextRange];

  if (([v10 isEmpty] & 1) == 0)
  {
    if (v10)
    {
      v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v12 = [v11 positionWithinRange:v10 farthestInDirection:a3];

      if (v12)
      {
        v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v14 = v13;
        if ((a3 - 2) <= 3)
        {
          a3 = qword_18A680590[a3 - 2];
        }

        v15 = [v13 characterRangeByExtendingPosition:v12 inDirection:a3];
        if (v15)
        {
          v16 = v15;

LABEL_10:
          [(_UIKeyboardTextSelectionController *)self setSelectionBase:v16];

          goto LABEL_11;
        }

        v17 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v16 = [v17 textRangeFromPosition:v12 toPosition:v12];

        if (v16)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_11:
  }

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPoint:v18 executionContext:x, y];
}

- (void)beginSelectionWithBasePositionAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 withInitialExtentPoint:(CGPoint)a5 executionContext:(id)a6
{
  y = a5.y;
  x = a5.x;
  v26 = a6;
  [(_UIKeyboardTextSelectionController *)self beginSelection];
  v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [v11 closestPositionToPoint:{x, y}];

  if (v12)
  {
    v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [v13 _positionFromPosition:v12 pastTextUnit:a3 inDirection:a4];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    v17 = v16;

    v18 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v19 = [v18 textRangeFromPosition:v17 toPosition:v17];

    if (v19)
    {
      [(_UIKeyboardTextSelectionController *)self setSelectionBase:v19];
    }

    v20 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v21 = v20;
    if (a4)
    {
      v22 = v17;
      v23 = v12;
    }

    else
    {
      v22 = v12;
      v23 = v17;
    }

    v24 = [v20 textRangeFromPosition:v22 toPosition:v23];

    if (v24)
    {
      v25 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [v25 setSelectedTextRange:v24];

      [(_UIKeyboardTextSelectionController *)self setCursorPosition:v12];
      [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:a3];
    }
  }

  [v26 returnExecutionToParent];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)a3 andExtentPosition:(id)a4 executionContext:(id)a5
{
  y = a3.y;
  x = a3.x;
  v24 = a4;
  v9 = a5;
  v10 = [(_UIKeyboardTextSelectionController *)self selectionBase];
  v11 = [v10 start];

  v12 = [(_UIKeyboardTextSelectionController *)self selectionBase];
  v13 = [v12 end];

  if (!v24 || !v11 || !v13)
  {
    goto LABEL_14;
  }

  v14 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v15 = [v14 comparePosition:v13 toPosition:v24];

  if (v15 == -1)
  {
    v18 = v13;
    v13 = v24;
    v19 = v11;
  }

  else
  {
    v16 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v17 = [v16 comparePosition:v24 toPosition:v11];

    v18 = v11;
    v19 = v24;
    if (v17 != -1)
    {
      goto LABEL_9;
    }
  }

  v20 = v24;

  v11 = v19;
LABEL_9:
  v21 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v22 = [v21 textRangeFromPosition:v11 toPosition:v13];

  if (v22)
  {
    [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v22];
    [(_UIKeyboardTextSelectionController *)self setCursorPosition:v24];
    [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:0];
    if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
    {
      v23 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [v23 startAutoscroll:{x, y}];
    }
  }

LABEL_14:
  [v9 returnExecutionToParent];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [v8 closestPositionToPoint:{x, y}];

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPosition:v9 executionContext:v7];
}

- (void)updateSelectionWithExtentAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5
{
  v8 = a5;
  v9 = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentAtBoundary:a3 inDirection:a4 relativeToSelection:v9 executionContext:v8];
}

- (void)updateImmediateSelectionWithExtentAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 executionContext:(id)a5
{
  v8 = a5;
  v10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [v10 selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentAtBoundary:a3 inDirection:a4 relativeToSelection:v9 executionContext:v8];
}

- (void)updateSelectionWithExtentAtBoundary:(int64_t)a3 inDirection:(int64_t)a4 relativeToSelection:(id)a5 executionContext:(id)a6
{
  v15 = a5;
  v10 = a6;
  if (v15)
  {
    v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v12 = [v11 positionWithinRange:v15 farthestInDirection:a4];

    if (v12)
    {
      v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v14 = [v13 _positionFromPosition:v12 pastTextUnit:a3 inDirection:a4];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPosition:v14 executionContext:v10];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)a3 withBoundary:(int64_t)a4 executionContext:(id)a5
{
  y = a3.y;
  x = a3.x;
  v24 = a5;
  v9 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v10 = [v9 closestPositionToPoint:{x, y}];

  if (!v10)
  {
    [v24 returnExecutionToParent];
    goto LABEL_11;
  }

  v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [v11 _rangeOfTextUnit:a4 enclosingPosition:v10];

  if (v12)
  {
    v13 = [(_UIKeyboardTextSelectionController *)self initialSelection];

    if (v13)
    {
      v14 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v15 = [(_UIKeyboardTextSelectionController *)self initialSelection];
      v16 = [v15 start];
      v17 = [v14 comparePosition:v10 toPosition:v16];

      if (v17 == -1)
      {
        v22 = [v12 start];
        goto LABEL_9;
      }

      v18 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v19 = [(_UIKeyboardTextSelectionController *)self initialSelection];
      v20 = [v19 end];
      v21 = [v18 comparePosition:v20 toPosition:v10];

      if (v21 == -1)
      {
        v22 = [v12 end];
LABEL_9:
        v23 = v22;

        v10 = v23;
      }
    }
  }

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPoint:v10 andExtentPosition:v24 executionContext:x, y];

LABEL_11:
}

- (void)modifySelectionWithExtentPoint:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v29 = a4;
  v7 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v8 = [v7 selectedTextRange];

  v9 = [v8 start];
  v10 = [v8 end];
  v11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [v11 closestPositionToPoint:{x, y}];

  if (!v12 || !v9 || !v10)
  {
    goto LABEL_16;
  }

  v13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v14 = [v13 comparePosition:v10 toPosition:v12];

  if (v14 == -1)
  {
    v18 = v10;
    v19 = v12;
LABEL_12:
    v26 = v12;

    v10 = v19;
    goto LABEL_13;
  }

  v15 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v16 = [v15 comparePosition:v12 toPosition:v9];

  if (v16 == -1)
  {
    goto LABEL_10;
  }

  v17 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  if ([v17 comparePosition:v9 toPosition:v12] != -1)
  {

    goto LABEL_11;
  }

  v20 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v21 = [(_UIKeyboardTextSelectionController *)self selectionBase];
  v22 = [v21 start];
  v23 = [v20 comparePosition:v22 toPosition:v12];

  if (v23 == 1)
  {
LABEL_10:
    v18 = v9;
    v19 = v10;
    v9 = v12;
    goto LABEL_12;
  }

LABEL_11:
  v24 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v25 = [v24 comparePosition:v12 toPosition:v10];

  v18 = v10;
  v19 = v12;
  if (v25 == -1)
  {
    goto LABEL_12;
  }

LABEL_13:
  v27 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v28 = [v27 textRangeFromPosition:v9 toPosition:v10];

  if (v28)
  {
    [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v28];
  }

LABEL_16:
  [v29 returnExecutionToParent];
}

- (void)endSelection
{
  [(_UIKeyboardTextSelectionController *)self setInitialSelection:0];
  [(_UIKeyboardTextSelectionController *)self setSelectionBase:0];
  v3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [v3 cancelAutoscroll];

  [(_UIKeyboardTextSelectionController *)self updateSelectionRects];
  [(_UIKeyboardTextSelectionController *)self endSelectionChange];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 updateDictationPopoverLocationIfNeeded];
}

@end