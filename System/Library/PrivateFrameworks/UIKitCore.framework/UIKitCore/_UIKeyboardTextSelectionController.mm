@interface _UIKeyboardTextSelectionController
- (BOOL)beginLoupeGestureAtPoint:(CGPoint)point translation:(CGPoint)translation;
- (BOOL)cursorPositionIsContainedByRange:(id)range;
- (BOOL)hasCaretSelection;
- (BOOL)hasRangedSelection;
- (CGPoint)boundedDeltaForTranslation:(CGPoint)translation cursorLocationBase:(CGPoint)base;
- (CGRect)caretRectForCursorPosition;
- (CGRect)caretRectForFirstSelectedPosition;
- (CGRect)caretRectForLastSelectedPosition;
- (CGRect)caretRectForLeftmostSelectedPosition;
- (CGRect)caretRectForRightmostSelectedPosition;
- (CGRect)selectedRectInLineWithPoint:(CGPoint)point;
- (UISelectionInteractionAssistant)selectionInteractionAssistant;
- (UITextInput)inputDelegate;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextPosition)cursorPosition;
- (UITextSelection)selection;
- (UIView)textInputView;
- (_UIKeyboardTextSelectionController)initWithInputDelegate:(id)delegate;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)beginLoupeMagnifierAtPoint:(CGPoint)point;
- (void)beginRangedMagnifierAtPoint:(CGPoint)point;
- (void)beginSelection;
- (void)beginSelectionChange;
- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)direction initialExtentPoint:(CGPoint)point executionContext:(id)context;
- (void)beginSelectionWithBasePositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction withInitialExtentPoint:(CGPoint)point executionContext:(id)context;
- (void)endFloatingCursor;
- (void)endLoupeGestureAtPoint:(CGPoint)point translation:(CGPoint)translation;
- (void)endLoupeMagnifierAtPoint:(CGPoint)point;
- (void)endRangedMagnifierAtPoint:(CGPoint)point;
- (void)endSelection;
- (void)endSelectionChange;
- (void)modifySelectionWithExtentPoint:(CGPoint)point executionContext:(id)context;
- (void)restartSelection;
- (void)scrollSelectionToVisible;
- (void)selectImmediatePositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context;
- (void)selectPositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context;
- (void)selectPositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction relativeToSelection:(id)selection executionContext:(id)context;
- (void)selectPositionAtPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler;
- (void)selectPositionAtPoint:(CGPoint)point granularity:(int64_t)granularity executionContext:(id)context;
- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point completionHandler:(id)handler;
- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point executionContext:(id)context;
- (void)selectionDidChange;
- (void)setCursorPosition:(id)position;
- (void)setRangedSelectionShouldShowGrabbers:(BOOL)grabbers;
- (void)setSelectedTextRange:(id)range;
- (void)showSelectionCommands;
- (void)switchToRangedSelection;
- (void)updateFloatingCursorAtPoint:(CGPoint)point;
- (void)updateGestureRecognizers;
- (void)updateImmediateSelectionWithExtentAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context;
- (void)updateLoupeGestureAtPoint:(CGPoint)point translation:(CGPoint)translation velocity:(CGPoint)velocity;
- (void)updateLoupeMagnifierAtPoint:(CGPoint)point;
- (void)updateRangedMagnifierAtPoint:(CGPoint)point;
- (void)updateSelectionRects;
- (void)updateSelectionWithExtentAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context;
- (void)updateSelectionWithExtentAtBoundary:(int64_t)boundary inDirection:(int64_t)direction relativeToSelection:(id)selection executionContext:(id)context;
- (void)updateSelectionWithExtentPoint:(CGPoint)point andExtentPosition:(id)position executionContext:(id)context;
- (void)updateSelectionWithExtentPoint:(CGPoint)point executionContext:(id)context;
- (void)updateSelectionWithExtentPoint:(CGPoint)point withBoundary:(int64_t)boundary executionContext:(id)context;
- (void)willBeginFloatingCursor:(BOOL)cursor;
- (void)willHandoffLoupeMagnifier;
@end

@implementation _UIKeyboardTextSelectionController

- (UITextSelection)selection
{
  document = [(UITextSelection *)self->_selection document];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];

  if (document != inputDelegate)
  {
    [(UITextSelection *)self->_selection invalidate];
    selection = self->_selection;
    self->_selection = 0;
  }

  v6 = self->_selection;
  if (!v6)
  {
    v7 = [UITextSelection alloc];
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v9 = [(UITextSelection *)v7 initWithDocument:inputDelegate2];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  v5 = [(_UIKeyboardTextSelectionController *)self cursorPositionIsContainedByRange:selectedTextRange];

  if (!v5)
  {
    [(_UIKeyboardTextSelectionController *)self resetCursorPosition];
  }

  inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange2 = [inputDelegate2 selectedTextRange];
  isEmpty = [selectedTextRange2 isEmpty];

  if (isEmpty)
  {
    [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:0];
  }

  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  if (interactionAssistant)
  {
    v10 = interactionAssistant;
    inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    selectedTextRange3 = [inputDelegate3 selectedTextRange];
    isEmpty2 = [selectedTextRange3 isEmpty];

    if (isEmpty2)
    {
      interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [interactionAssistant2 setGrabberSuppressionAssertion:0];
    }
  }
}

- (UITextInteractionAssistant)interactionAssistant
{
  if (self->_hasInteractionAssistant)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    interactionAssistant = [inputDelegate interactionAssistant];
  }

  else
  {
    interactionAssistant = 0;
  }

  return interactionAssistant;
}

- (UITextPosition)cursorPosition
{
  cursorPosition = self->_cursorPosition;
  if (!cursorPosition)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    selectedTextRange = [inputDelegate selectedTextRange];
    start = [selectedTextRange start];
    v7 = self->_cursorPosition;
    self->_cursorPosition = start;

    cursorPosition = self->_cursorPosition;
  }

  return cursorPosition;
}

- (UIView)textInputView
{
  if (self->_hasTextInputView)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    textInputView = [inputDelegate textInputView];
  }

  else
  {
    textInputView = 0;
  }

  return textInputView;
}

- (_UIKeyboardTextSelectionController)initWithInputDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = _UIKeyboardTextSelectionController;
  v5 = [(_UIKeyboardTextSelectionController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_inputDelegate, delegateCopy);
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
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    selectionInteractionAssistant = [inputDelegate selectionInteractionAssistant];
  }

  else
  {
    selectionInteractionAssistant = 0;
  }

  return selectionInteractionAssistant;
}

- (void)beginSelectionChange
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
  {
    interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant2 beginSelectionChange];
  }

  else
  {
    interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    inputDelegate = [interactionAssistant2 inputDelegate];
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate selectionWillChange:inputDelegate2];
  }
}

- (void)endSelectionChange
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
  {
    interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant2 endSelectionChange];
  }

  else
  {
    interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    inputDelegate = [interactionAssistant2 inputDelegate];
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate selectionDidChange:inputDelegate2];
  }
}

- (void)setCursorPosition:(id)position
{
  positionCopy = position;
  if (self->_cursorPosition != positionCopy)
  {
    v6 = positionCopy;
    objc_storeStrong(&self->_cursorPosition, position);
    [(_UIKeyboardTextSelectionController *)self setCaretRectForCursorPosition:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    positionCopy = v6;
  }
}

- (void)setSelectedTextRange:(id)range
{
  rangeCopy = range;
  selection = [(_UIKeyboardTextSelectionController *)self selection];
  isValid = [selection isValid];

  if (isValid)
  {
    selection2 = [(_UIKeyboardTextSelectionController *)self selection];
    [selection2 setSelectedRange:rangeCopy];

    selection3 = [(_UIKeyboardTextSelectionController *)self selection];
    [selection3 commit];
  }

  else
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate setSelectedTextRange:rangeCopy];

    [(_UIKeyboardTextSelectionController *)self updateSelectionRects];
  }
}

- (BOOL)cursorPositionIsContainedByRange:(id)range
{
  rangeCopy = range;
  cursorPosition = [(_UIKeyboardTextSelectionController *)self cursorPosition];

  if (cursorPosition)
  {
    start = [rangeCopy start];
    if (!start || (-[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v7 = objc_claimAutoreleasedReturnValue(), -[_UIKeyboardTextSelectionController cursorPosition](self, "cursorPosition"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 comparePosition:v8 toPosition:start], v8, v7, v9 == -1))
    {
      v13 = 0;
    }

    else
    {
      v10 = [rangeCopy end];
      if (v10)
      {
        inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        cursorPosition2 = [(_UIKeyboardTextSelectionController *)self cursorPosition];
        v13 = [inputDelegate comparePosition:v10 toPosition:cursorPosition2] != -1;
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

- (CGRect)selectedRectInLineWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v33 = *MEMORY[0x1E69E9840];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [inputDelegate2 selectionRectsForRange:selectedTextRange];

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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  return isEmpty;
}

- (BOOL)hasRangedSelection
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  if (selectedTextRange)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    selectedTextRange2 = [inputDelegate2 selectedTextRange];
    v7 = [selectedTextRange2 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (CGRect)caretRectForFirstSelectedPosition
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  start = [selectedTextRange start];

  if (start)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 caretRectForPosition:start];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  v5 = [selectedTextRange end];

  if (v5)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 caretRectForPosition:v5];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  if (selectedTextRange && (-[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 positionWithinRange:selectedTextRange farthestInDirection:3], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 caretRectForPosition:v6];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  if (selectedTextRange && (-[_UIKeyboardTextSelectionController inputDelegate](self, "inputDelegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 positionWithinRange:selectedTextRange farthestInDirection:2], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 caretRectForPosition:v6];
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
    cursorPosition = [(_UIKeyboardTextSelectionController *)self cursorPosition];
    if (cursorPosition)
    {
      inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [inputDelegate caretRectForPosition:cursorPosition];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  if ((isEmpty & 1) == 0)
  {
    interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    _editMenuAssistant = [interactionAssistant _editMenuAssistant];
    [_editMenuAssistant showSelectionCommands];
  }
}

- (void)updateSelectionRects
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant setNeedsSelectionDisplayUpdate];
}

- (void)switchToRangedSelection
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant setSelectionHighlightMode:0];

  [(_UIKeyboardTextSelectionController *)self updateSelectionRects];
}

- (void)setRangedSelectionShouldShowGrabbers:(BOOL)grabbers
{
  grabbersCopy = grabbers;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  isValid = [activeSelection isValid];

  if (isValid)
  {
    interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant2 setSelectionDisplayVisible:1];

    interactionAssistant3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant3 activateSelection];

    interactionAssistant4 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
    [interactionAssistant4 setSelectionHighlightMode:!grabbersCopy];
  }

  else
  {
    selectionInteractionAssistant = [(_UIKeyboardTextSelectionController *)self selectionInteractionAssistant];
    interactionAssistant4 = selectionInteractionAssistant;
    if (grabbersCopy)
    {
      [selectionInteractionAssistant configureForSelectionMode];
    }

    else
    {
      [selectionInteractionAssistant configureForHighlightMode];
    }
  }
}

- (void)willHandoffLoupeMagnifier
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant setWillHandoffLoupeMagnifier];
}

- (void)updateGestureRecognizers
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant setGestureRecognizers];
}

- (void)scrollSelectionToVisible
{
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
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

- (void)willBeginFloatingCursor:(BOOL)cursor
{
  cursorCopy = cursor;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant willBeginFloatingCursor:cursorCopy];
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 beginFloatingCursorAtPoint:{x, y}];
  }
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 updateFloatingCursorAtPoint:{x, y}];
  }
}

- (void)endFloatingCursor
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    [inputDelegate2 endFloatingCursor];
  }
}

- (void)beginLoupeMagnifierAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant loupeMagnifierWithState:1 atPoint:{x, y}];
}

- (void)updateLoupeMagnifierAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant loupeMagnifierWithState:2 atPoint:{x, y}];
}

- (void)endLoupeMagnifierAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant loupeMagnifierWithState:3 atPoint:{x, y}];
}

- (void)beginRangedMagnifierAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
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

- (void)updateRangedMagnifierAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
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

- (void)endRangedMagnifierAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];

  if (interactionAssistant)
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

- (BOOL)beginLoupeGestureAtPoint:(CGPoint)point translation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v6 = point.y;
  v7 = point.x;
  v12 = 0;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
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
  [interactionAssistant loupeGestureWithState:1 location:v11 translation:v10 velocity:&__block_literal_global_416 modifierFlags:0 shouldCancel:&v12];

  return v12;
}

- (void)updateLoupeGestureAtPoint:(CGPoint)point translation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = translation.y;
  v8 = translation.x;
  v9 = point.y;
  v10 = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
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
  [interactionAssistant loupeGestureWithState:2 location:v14 translation:v13 velocity:v12 modifierFlags:0 shouldCancel:0];
}

- (void)endLoupeGestureAtPoint:(CGPoint)point translation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v6 = point.y;
  v7 = point.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
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
  [interactionAssistant loupeGestureWithState:3 location:v10 translation:v9 velocity:&__block_literal_global_48_1 modifierFlags:0 shouldCancel:0];
}

- (CGPoint)boundedDeltaForTranslation:(CGPoint)translation cursorLocationBase:(CGPoint)base
{
  y = base.y;
  x = base.x;
  v6 = translation.y;
  v7 = translation.x;
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  activeSelection = [interactionAssistant activeSelection];
  isValid = [activeSelection isValid];

  if (isValid)
  {
    if (+[UITextSelectionDisplayInteraction isModernSelectionViewEnabled])
    {
      interactionAssistant2 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [interactionAssistant2 boundedDeltaForTranslation:v7 cursorLocationBase:{v6, x, y}];
      v14 = v13;
      v16 = v15;
    }

    else
    {
      interactionAssistant3 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      _legacySelectionView = [interactionAssistant3 _legacySelectionView];
      textInputView = [(_UIKeyboardTextSelectionController *)self textInputView];
      [_legacySelectionView convertPoint:textInputView fromView:{v7 + x, v6 + y}];
      v21 = v20;
      v23 = v22;

      interactionAssistant4 = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      _legacySelectionView2 = [interactionAssistant4 _legacySelectionView];
      [_legacySelectionView2 floatingCursorPositionForPoint:0 lineSnapping:{v21, v23}];
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
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self setInitialSelection:selectedTextRange];

  initialSelection = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self setSelectionBase:initialSelection];

  [(_UIKeyboardTextSelectionController *)self beginSelectionChange];
}

- (void)restartSelection
{
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self setInitialSelection:selectedTextRange];

  initialSelection = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self setSelectionBase:initialSelection];
}

- (void)selectPositionAtPoint:(CGPoint)point granularity:(int64_t)granularity executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __89___UIKeyboardTextSelectionController_selectPositionAtPoint_granularity_executionContext___block_invoke;
  v11[3] = &unk_1E70F3590;
  v12 = contextCopy;
  v10 = contextCopy;
  [(_UIKeyboardTextSelectionController *)self selectPositionAtPoint:granularity granularity:v11 completionHandler:x, y];
}

- (void)selectPositionAtPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v10 = [inputDelegate closestPositionToPoint:{x, y}];

  inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  markedTextRange = [inputDelegate2 markedTextRange];

  if (markedTextRange)
  {
    inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    start = [markedTextRange start];
    v15 = [inputDelegate3 comparePosition:v10 toPosition:start];

    if (v15 == -1)
    {
      start2 = [markedTextRange start];
    }

    else
    {
      inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v17 = [markedTextRange end];
      v18 = [inputDelegate4 comparePosition:v17 toPosition:v10];

      if (v18 != -1)
      {
        goto LABEL_7;
      }

      start2 = [markedTextRange end];
    }

    v20 = start2;

    v10 = v20;
  }

LABEL_7:
  inputDelegate5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v22 = [inputDelegate5 _findBoundaryPositionClosestToPosition:v10 withGranularity:granularity];

  if (v22)
  {
    inputDelegate6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v24 = [inputDelegate6 textRangeFromPosition:v22 toPosition:v22];

    if (v24)
    {
      [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v24];
      [(_UIKeyboardTextSelectionController *)self setCursorPosition:v22];
      [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:granularity];
      [(_UIKeyboardTextSelectionController *)self scrollSelectionToVisible];
      if (markedTextRange)
      {
        inputDelegate7 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v25InputDelegate = [inputDelegate7 inputDelegate];
        v27 = objc_opt_respondsToSelector();

        if (v27)
        {
          inputDelegate8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
          v28InputDelegate = [inputDelegate8 inputDelegate];
          [v28InputDelegate didChangePhraseBoundary];
        }
      }
    }
  }

  else
  {
    v24 = 0;
  }

  if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (void)selectPositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context
{
  contextCopy = context;
  initialSelection = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self selectPositionAtBoundary:boundary inDirection:direction relativeToSelection:initialSelection executionContext:contextCopy];
}

- (void)selectImmediatePositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context
{
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self selectPositionAtBoundary:boundary inDirection:direction relativeToSelection:selectedTextRange executionContext:contextCopy];
}

- (void)selectPositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction relativeToSelection:(id)selection executionContext:(id)context
{
  contextCopy = context;
  selectionCopy = selection;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [inputDelegate _positionWithinRange:selectionCopy farthestInDirection:direction];

  if (v12)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [inputDelegate2 _positionFromPosition:v12 pastTextUnit:boundary inDirection:direction];

    if (v14)
    {
      inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v16 = [inputDelegate3 textRangeFromPosition:v14 toPosition:v14];

      if (v16)
      {
        inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        [inputDelegate4 setSelectedTextRange:v16];

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

  [contextCopy returnExecutionToParent];
}

- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  v51 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  if ([(_UIKeyboardTextSelectionController *)self selectionGranularity]== granularity && selectedTextRange)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v13 = [inputDelegate2 selectionRectsForRange:selectedTextRange];

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

  inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v20 = [inputDelegate3 closestPositionToPoint:{x, y}];

  if (v20)
  {
    inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [inputDelegate4 _rangeSpanningTextUnit:granularity andPosition:v20];

    if (granularity == 1 && v14)
    {
      inputDelegate5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [inputDelegate5 caretRectForPosition:v20];
      v25 = v24;

      inputDelegate6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [inputDelegate6 firstRectForRange:v14];
      v28 = v27;

      v22 = v28 - v25;
      if (v28 - v25 <= 1.0)
      {
        goto LABEL_19;
      }

      inputDelegate7 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v30 = [inputDelegate7 positionFromPosition:v20 offset:-1];

      if (!v30)
      {
        v20 = 0;
LABEL_33:

        goto LABEL_34;
      }

      inputDelegate8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v32 = [inputDelegate8 _rangeSpanningTextUnit:1 andPosition:v30];

      v20 = v30;
      v14 = v32;
    }

    if (v14)
    {
LABEL_19:
      v33 = [v14 end];
      inputDelegate9 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v35 = [inputDelegate9 _characterInRelationToPosition:v33 amount:0xFFFFFFFFLL];

      if (v35 == 10)
      {
        do
        {
          inputDelegate10 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
          v37 = [inputDelegate10 positionFromPosition:v33 offset:-1];

          inputDelegate11 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
          LODWORD(inputDelegate10) = [inputDelegate11 _characterInRelationToPosition:v37 amount:0xFFFFFFFFLL];

          v33 = v37;
        }

        while (inputDelegate10 == 10);
        if (!v37)
        {
LABEL_29:
          if (granularity == 1 && [selectedTextRange isEmpty])
          {
            inputDelegate12 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
            v45 = [inputDelegate12 _rangeOfSmartSelectionIncludingRange:v14];

            v14 = v45;
          }

          [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v14];
          [(_UIKeyboardTextSelectionController *)self setCursorPosition:v20];
          [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:granularity];
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
        inputDelegate13 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        start = [v14 start];
        v42 = [inputDelegate13 textRangeFromPosition:start toPosition:v37];

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
  [contextCopy returnExecutionToParent];
}

- (void)selectTextWithGranularity:(int64_t)granularity atPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  [(_UIKeyboardTextSelectionController *)self selectTextWithGranularity:granularity atPoint:0 executionContext:x, y];
  v9 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v9 = handlerCopy;
  }
}

- (void)beginSelectionWithBaseAtSelectionBoundaryInDirection:(int64_t)direction initialExtentPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  [(_UIKeyboardTextSelectionController *)self beginSelection];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  if (([selectedTextRange isEmpty] & 1) == 0)
  {
    if (selectedTextRange)
    {
      inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v12 = [inputDelegate2 positionWithinRange:selectedTextRange farthestInDirection:direction];

      if (v12)
      {
        inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v14 = inputDelegate3;
        if ((direction - 2) <= 3)
        {
          direction = qword_18A680590[direction - 2];
        }

        v15 = [inputDelegate3 characterRangeByExtendingPosition:v12 inDirection:direction];
        if (v15)
        {
          v16 = v15;

LABEL_10:
          [(_UIKeyboardTextSelectionController *)self setSelectionBase:v16];

          goto LABEL_11;
        }

        inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
        v16 = [inputDelegate4 textRangeFromPosition:v12 toPosition:v12];

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

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPoint:contextCopy executionContext:x, y];
}

- (void)beginSelectionWithBasePositionAtBoundary:(int64_t)boundary inDirection:(int64_t)direction withInitialExtentPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  [(_UIKeyboardTextSelectionController *)self beginSelection];
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [inputDelegate closestPositionToPoint:{x, y}];

  if (v12)
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v14 = [inputDelegate2 _positionFromPosition:v12 pastTextUnit:boundary inDirection:direction];
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

    inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v19 = [inputDelegate3 textRangeFromPosition:v17 toPosition:v17];

    if (v19)
    {
      [(_UIKeyboardTextSelectionController *)self setSelectionBase:v19];
    }

    inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v21 = inputDelegate4;
    if (direction)
    {
      v22 = v17;
      v23 = v12;
    }

    else
    {
      v22 = v12;
      v23 = v17;
    }

    v24 = [inputDelegate4 textRangeFromPosition:v22 toPosition:v23];

    if (v24)
    {
      inputDelegate5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      [inputDelegate5 setSelectedTextRange:v24];

      [(_UIKeyboardTextSelectionController *)self setCursorPosition:v12];
      [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:boundary];
    }
  }

  [contextCopy returnExecutionToParent];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)point andExtentPosition:(id)position executionContext:(id)context
{
  y = point.y;
  x = point.x;
  positionCopy = position;
  contextCopy = context;
  selectionBase = [(_UIKeyboardTextSelectionController *)self selectionBase];
  start = [selectionBase start];

  selectionBase2 = [(_UIKeyboardTextSelectionController *)self selectionBase];
  v13 = [selectionBase2 end];

  if (!positionCopy || !start || !v13)
  {
    goto LABEL_14;
  }

  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v15 = [inputDelegate comparePosition:v13 toPosition:positionCopy];

  if (v15 == -1)
  {
    v18 = v13;
    v13 = positionCopy;
    v19 = start;
  }

  else
  {
    inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v17 = [inputDelegate2 comparePosition:positionCopy toPosition:start];

    v18 = start;
    v19 = positionCopy;
    if (v17 != -1)
    {
      goto LABEL_9;
    }
  }

  v20 = positionCopy;

  start = v19;
LABEL_9:
  inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v22 = [inputDelegate3 textRangeFromPosition:start toPosition:v13];

  if (v22)
  {
    [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v22];
    [(_UIKeyboardTextSelectionController *)self setCursorPosition:positionCopy];
    [(_UIKeyboardTextSelectionController *)self setSelectionGranularity:0];
    if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
    {
      interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
      [interactionAssistant startAutoscroll:{x, y}];
    }
  }

LABEL_14:
  [contextCopy returnExecutionToParent];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v9 = [inputDelegate closestPositionToPoint:{x, y}];

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPosition:v9 executionContext:contextCopy];
}

- (void)updateSelectionWithExtentAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context
{
  contextCopy = context;
  initialSelection = [(_UIKeyboardTextSelectionController *)self initialSelection];
  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentAtBoundary:boundary inDirection:direction relativeToSelection:initialSelection executionContext:contextCopy];
}

- (void)updateImmediateSelectionWithExtentAtBoundary:(int64_t)boundary inDirection:(int64_t)direction executionContext:(id)context
{
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];
  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentAtBoundary:boundary inDirection:direction relativeToSelection:selectedTextRange executionContext:contextCopy];
}

- (void)updateSelectionWithExtentAtBoundary:(int64_t)boundary inDirection:(int64_t)direction relativeToSelection:(id)selection executionContext:(id)context
{
  selectionCopy = selection;
  contextCopy = context;
  if (selectionCopy)
  {
    inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
    v12 = [inputDelegate positionWithinRange:selectionCopy farthestInDirection:direction];

    if (v12)
    {
      inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      v14 = [inputDelegate2 _positionFromPosition:v12 pastTextUnit:boundary inDirection:direction];
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

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPosition:v14 executionContext:contextCopy];
}

- (void)updateSelectionWithExtentPoint:(CGPoint)point withBoundary:(int64_t)boundary executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v10 = [inputDelegate closestPositionToPoint:{x, y}];

  if (!v10)
  {
    [contextCopy returnExecutionToParent];
    goto LABEL_11;
  }

  inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [inputDelegate2 _rangeOfTextUnit:boundary enclosingPosition:v10];

  if (v12)
  {
    initialSelection = [(_UIKeyboardTextSelectionController *)self initialSelection];

    if (initialSelection)
    {
      inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      initialSelection2 = [(_UIKeyboardTextSelectionController *)self initialSelection];
      start = [initialSelection2 start];
      v17 = [inputDelegate3 comparePosition:v10 toPosition:start];

      if (v17 == -1)
      {
        start2 = [v12 start];
        goto LABEL_9;
      }

      inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
      initialSelection3 = [(_UIKeyboardTextSelectionController *)self initialSelection];
      v20 = [initialSelection3 end];
      v21 = [inputDelegate4 comparePosition:v20 toPosition:v10];

      if (v21 == -1)
      {
        start2 = [v12 end];
LABEL_9:
        v23 = start2;

        v10 = v23;
      }
    }
  }

  [(_UIKeyboardTextSelectionController *)self updateSelectionWithExtentPoint:v10 andExtentPosition:contextCopy executionContext:x, y];

LABEL_11:
}

- (void)modifySelectionWithExtentPoint:(CGPoint)point executionContext:(id)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  inputDelegate = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectedTextRange = [inputDelegate selectedTextRange];

  start = [selectedTextRange start];
  v10 = [selectedTextRange end];
  inputDelegate2 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v12 = [inputDelegate2 closestPositionToPoint:{x, y}];

  if (!v12 || !start || !v10)
  {
    goto LABEL_16;
  }

  inputDelegate3 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v14 = [inputDelegate3 comparePosition:v10 toPosition:v12];

  if (v14 == -1)
  {
    v18 = v10;
    v19 = v12;
LABEL_12:
    v26 = v12;

    v10 = v19;
    goto LABEL_13;
  }

  inputDelegate4 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v16 = [inputDelegate4 comparePosition:v12 toPosition:start];

  if (v16 == -1)
  {
    goto LABEL_10;
  }

  inputDelegate5 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  if ([inputDelegate5 comparePosition:start toPosition:v12] != -1)
  {

    goto LABEL_11;
  }

  inputDelegate6 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  selectionBase = [(_UIKeyboardTextSelectionController *)self selectionBase];
  start2 = [selectionBase start];
  v23 = [inputDelegate6 comparePosition:start2 toPosition:v12];

  if (v23 == 1)
  {
LABEL_10:
    v18 = start;
    v19 = v10;
    start = v12;
    goto LABEL_12;
  }

LABEL_11:
  inputDelegate7 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v25 = [inputDelegate7 comparePosition:v12 toPosition:v10];

  v18 = v10;
  v19 = v12;
  if (v25 == -1)
  {
    goto LABEL_12;
  }

LABEL_13:
  inputDelegate8 = [(_UIKeyboardTextSelectionController *)self inputDelegate];
  v28 = [inputDelegate8 textRangeFromPosition:start toPosition:v10];

  if (v28)
  {
    [(_UIKeyboardTextSelectionController *)self setSelectedTextRange:v28];
  }

LABEL_16:
  [contextCopy returnExecutionToParent];
}

- (void)endSelection
{
  [(_UIKeyboardTextSelectionController *)self setInitialSelection:0];
  [(_UIKeyboardTextSelectionController *)self setSelectionBase:0];
  interactionAssistant = [(_UIKeyboardTextSelectionController *)self interactionAssistant];
  [interactionAssistant cancelAutoscroll];

  [(_UIKeyboardTextSelectionController *)self updateSelectionRects];
  [(_UIKeyboardTextSelectionController *)self endSelectionChange];
  v4 = +[UIKeyboardImpl activeInstance];
  [v4 updateDictationPopoverLocationIfNeeded];
}

@end