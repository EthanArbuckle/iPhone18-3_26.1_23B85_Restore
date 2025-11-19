@interface TIKeyboardInputManagerKeyboardContext
- (TIKeyboardInputManagerKeyboardContext)initWithKeyboardState:(id)a3;
- (void)acceptCandidate:(id)a3;
- (void)clearInputForMarkedText;
- (void)deleteBackward:(unint64_t)a3;
- (void)deleteForward:(unint64_t)a3;
- (void)deleteHandwritingStrokes:(id)a3;
- (void)deleteTextBackward:(id)a3;
- (void)insertText:(id)a3;
- (void)insertTextAfterSelection:(id)a3;
- (void)unmarkText:(id)a3;
@end

@implementation TIKeyboardInputManagerKeyboardContext

- (void)deleteHandwritingStrokes:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v5 setHandwritingStrokesToDelete:v4];
}

- (void)acceptCandidate:(id)a3
{
  v4 = a3;
  v11 = [v4 candidate];
  v5 = [v11 length];
  v6 = [(TIKeyboardState *)self->_currentState documentState];
  v7 = [v6 documentStateAfterSettingMarkedText:v11 selectedRange:{v5, 0}];
  [(TIKeyboardState *)self->_currentState setDocumentState:v7];

  v8 = [(TIKeyboardState *)self->_currentState documentState];
  v9 = [v8 documentStateAfterUnmarkingText];
  [(TIKeyboardState *)self->_currentState setDocumentState:v9];

  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  v10 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v10 setAcceptedCandidate:v4];
}

- (void)unmarkText:(id)a3
{
  currentState = self->_currentState;
  v5 = a3;
  v6 = [(TIKeyboardState *)currentState documentState];
  v7 = [v6 documentStateAfterSettingMarkedText:v5 selectedRange:{objc_msgSend(v5, "length"), 0}];
  [(TIKeyboardState *)self->_currentState setDocumentState:v7];

  v8 = [(TIKeyboardState *)self->_currentState documentState];
  v9 = [v8 documentStateAfterUnmarkingText];
  [(TIKeyboardState *)self->_currentState setDocumentState:v9];

  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  v10 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v10 setTextToCommit:v5];
}

- (void)deleteForward:(unint64_t)a3
{
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = [(TIKeyboardState *)self->_currentState documentState];
      v7 = [v6 documentStateAfterDeletingForward];
      [(TIKeyboardState *)self->_currentState setDocumentState:v7];

      --v5;
    }

    while (v5);
  }

  v8 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v8 deleteForward:a3];
}

- (void)deleteTextBackward:(id)a3
{
  v6 = a3;
  v4 = [v6 length];
  for (i = 0; v4; ++i)
  {
    v4 = [v6 _rangeOfBackwardDeletionClusterAtIndex:v4 - 1];
  }

  [(TIKeyboardInputManagerKeyboardContext *)self deleteBackward:i];
}

- (void)deleteBackward:(unint64_t)a3
{
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = [(TIKeyboardState *)self->_currentState documentState];
      v7 = [v6 documentStateAfterDeletingBackward];
      [(TIKeyboardState *)self->_currentState setDocumentState:v7];

      v8 = [(TIKeyboardInputManagerKeyboardContext *)self revisionHistory];
      [v8 deleteBackward];

      --v5;
    }

    while (v5);
  }

  v9 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v9 deleteBackward:a3];
}

- (void)insertTextAfterSelection:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  v5 = [(TIKeyboardState *)self->_currentState documentState];
  v6 = [v5 documentStateAfterInsertingTextAfterSelection:v4];
  [(TIKeyboardState *)self->_currentState setDocumentState:v6];

  v7 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v7 insertTextAfterSelection:v4];
}

- (void)insertText:(id)a3
{
  v4 = a3;
  [(TIKeyboardInputManagerKeyboardContext *)self clearInputForMarkedText];
  v5 = [(TIKeyboardState *)self->_currentState documentState];
  v6 = [v5 documentStateAfterInsertingText:v4];
  [(TIKeyboardState *)self->_currentState setDocumentState:v6];

  v7 = [(TIKeyboardInputManagerKeyboardContext *)self revisionHistory];
  [v7 insertText:v4];

  v8 = [(TIKeyboardInputManagerKeyboardContext *)self output];
  [v8 insertText:v4];
}

- (void)clearInputForMarkedText
{
  [(TIKeyboardState *)self->_currentState setInputForMarkedText:0];
  currentState = self->_currentState;

  [(TIKeyboardState *)currentState setSearchStringForMarkedText:0];
}

- (TIKeyboardInputManagerKeyboardContext)initWithKeyboardState:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TIKeyboardInputManagerKeyboardContext;
  v6 = [(TIKeyboardInputManagerKeyboardContext *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentState, a3);
    v8 = objc_alloc_init(MEMORY[0x277D6F410]);
    output = v7->_output;
    v7->_output = v8;
  }

  return v7;
}

@end