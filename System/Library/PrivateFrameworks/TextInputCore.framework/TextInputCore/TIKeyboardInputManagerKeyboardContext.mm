@interface TIKeyboardInputManagerKeyboardContext
- (TIKeyboardInputManagerKeyboardContext)initWithKeyboardState:(id)state;
- (void)acceptCandidate:(id)candidate;
- (void)clearInputForMarkedText;
- (void)deleteBackward:(unint64_t)backward;
- (void)deleteForward:(unint64_t)forward;
- (void)deleteHandwritingStrokes:(id)strokes;
- (void)deleteTextBackward:(id)backward;
- (void)insertText:(id)text;
- (void)insertTextAfterSelection:(id)selection;
- (void)unmarkText:(id)text;
@end

@implementation TIKeyboardInputManagerKeyboardContext

- (void)deleteHandwritingStrokes:(id)strokes
{
  strokesCopy = strokes;
  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output setHandwritingStrokesToDelete:strokesCopy];
}

- (void)acceptCandidate:(id)candidate
{
  candidateCopy = candidate;
  candidate = [candidateCopy candidate];
  v5 = [candidate length];
  documentState = [(TIKeyboardState *)self->_currentState documentState];
  v7 = [documentState documentStateAfterSettingMarkedText:candidate selectedRange:{v5, 0}];
  [(TIKeyboardState *)self->_currentState setDocumentState:v7];

  documentState2 = [(TIKeyboardState *)self->_currentState documentState];
  documentStateAfterUnmarkingText = [documentState2 documentStateAfterUnmarkingText];
  [(TIKeyboardState *)self->_currentState setDocumentState:documentStateAfterUnmarkingText];

  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output setAcceptedCandidate:candidateCopy];
}

- (void)unmarkText:(id)text
{
  currentState = self->_currentState;
  textCopy = text;
  documentState = [(TIKeyboardState *)currentState documentState];
  v7 = [documentState documentStateAfterSettingMarkedText:textCopy selectedRange:{objc_msgSend(textCopy, "length"), 0}];
  [(TIKeyboardState *)self->_currentState setDocumentState:v7];

  documentState2 = [(TIKeyboardState *)self->_currentState documentState];
  documentStateAfterUnmarkingText = [documentState2 documentStateAfterUnmarkingText];
  [(TIKeyboardState *)self->_currentState setDocumentState:documentStateAfterUnmarkingText];

  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output setTextToCommit:textCopy];
}

- (void)deleteForward:(unint64_t)forward
{
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  if (forward)
  {
    forwardCopy = forward;
    do
    {
      documentState = [(TIKeyboardState *)self->_currentState documentState];
      documentStateAfterDeletingForward = [documentState documentStateAfterDeletingForward];
      [(TIKeyboardState *)self->_currentState setDocumentState:documentStateAfterDeletingForward];

      --forwardCopy;
    }

    while (forwardCopy);
  }

  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output deleteForward:forward];
}

- (void)deleteTextBackward:(id)backward
{
  backwardCopy = backward;
  v4 = [backwardCopy length];
  for (i = 0; v4; ++i)
  {
    v4 = [backwardCopy _rangeOfBackwardDeletionClusterAtIndex:v4 - 1];
  }

  [(TIKeyboardInputManagerKeyboardContext *)self deleteBackward:i];
}

- (void)deleteBackward:(unint64_t)backward
{
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  if (backward)
  {
    backwardCopy = backward;
    do
    {
      documentState = [(TIKeyboardState *)self->_currentState documentState];
      documentStateAfterDeletingBackward = [documentState documentStateAfterDeletingBackward];
      [(TIKeyboardState *)self->_currentState setDocumentState:documentStateAfterDeletingBackward];

      revisionHistory = [(TIKeyboardInputManagerKeyboardContext *)self revisionHistory];
      [revisionHistory deleteBackward];

      --backwardCopy;
    }

    while (backwardCopy);
  }

  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output deleteBackward:backward];
}

- (void)insertTextAfterSelection:(id)selection
{
  selectionCopy = selection;
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  documentState = [(TIKeyboardState *)self->_currentState documentState];
  v6 = [documentState documentStateAfterInsertingTextAfterSelection:selectionCopy];
  [(TIKeyboardState *)self->_currentState setDocumentState:v6];

  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output insertTextAfterSelection:selectionCopy];
}

- (void)insertText:(id)text
{
  textCopy = text;
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  documentState = [(TIKeyboardState *)self->_currentState documentState];
  v6 = [documentState documentStateAfterInsertingText:textCopy];
  [(TIKeyboardState *)self->_currentState setDocumentState:v6];

  revisionHistory = [(TIKeyboardInputManagerKeyboardContext *)self revisionHistory];
  [revisionHistory insertText:textCopy];

  output = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [output insertText:textCopy];
}

- (void)clearInputForMarkedText
{
  [(TIKeyboardState *)self->_currentState setInputForMarkedText:0];
  currentState = self->_currentState;

  [(TIKeyboardState *)currentState setSearchStringForMarkedText:0];
}

- (TIKeyboardInputManagerKeyboardContext)initWithKeyboardState:(id)state
{
  stateCopy = state;
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManagerKeyboardContext;
  v6 = [(TIKeyboardInputManagerKeyboardContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentState, state);
    v8 = objc_alloc_init(MEMORY[0x277D6F410]);
    output = v7->_output;
    v7->_output = v8;
  }

  return v7;
}

@end