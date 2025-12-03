@interface UITextInteractionSelectableInputDelegate
+ (UITextInteractionSelectableInputDelegate)selectableInputDelegateWithTextInput:(id)input;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)firstRectForRange:(id)range;
- (id)_moveDown:(BOOL)down withHistory:(id)history;
- (id)_moveLeft:(BOOL)left withHistory:(id)history;
- (id)_moveRight:(BOOL)right withHistory:(id)history;
- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history;
- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history;
- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history;
- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history;
- (id)_moveUp:(BOOL)up withHistory:(id)history;
- (void)_deleteBackwardAndNotify:(BOOL)notify;
- (void)_deleteForwardAndNotify:(BOOL)notify;
- (void)_moveCurrentSelection:(int)selection;
- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)_unmarkText;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)replaceRange:(id)range withText:(id)text;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setSelectedTextRange:(id)range;
- (void)unmarkText;
- (void)updateSelectionRects;
@end

@implementation UITextInteractionSelectableInputDelegate

+ (UITextInteractionSelectableInputDelegate)selectableInputDelegateWithTextInput:(id)input
{
  inputCopy = input;
  v5 = objc_alloc_init(self);
  v6 = v5[2];
  v5[2] = inputCopy;

  return v5;
}

- (void)updateSelectionRects
{
  interactionAssistant = [(UITextInput *)self->_textInput interactionAssistant];
  if (interactionAssistant)
  {
    v3 = interactionAssistant;
    [interactionAssistant selectionChanged];
    [v3 setNeedsSelectionDisplayUpdate];
    interactionAssistant = v3;
  }
}

- (void)insertText:(id)text
{
  [(UITextInput *)self->_textInput insertText:text];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)deleteBackward
{
  [(UITextInput *)self->_textInput deleteBackward];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)replaceRange:(id)range withText:(id)text
{
  [(UITextInput *)self->_textInput replaceRange:range withText:text];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)setSelectedTextRange:(id)range
{
  [(UITextInput *)self->_textInput setSelectedTextRange:range];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  [(UITextInput *)self->_textInput setMarkedText:text selectedRange:range.location, range.length];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)unmarkText
{
  [(UITextInput *)self->_textInput unmarkText];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  [(UITextInput *)self->_textInput setBaseWritingDirection:direction forRange:range];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (CGRect)firstRectForRange:(id)range
{
  [(UITextInput *)self->_textInput firstRectForRange:range];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  [(UITextInput *)self->_textInput caretRectForPosition:position];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_deleteBackwardAndNotify:(BOOL)notify
{
  [(UITextInput *)self->_textInput _deleteBackwardAndNotify:notify];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_deleteForwardAndNotify:(BOOL)notify
{
  [(UITextInput *)self->_textInput _deleteForwardAndNotify:notify];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_moveCurrentSelection:(int)selection
{
  [(UITextInput *)self->_textInput _moveCurrentSelection:*&selection];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_setMarkedText:(id)text selectedRange:(_NSRange)range
{
  [(UITextInput *)self->_textInput _setMarkedText:text selectedRange:range.location, range.length];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_unmarkText
{
  [(UITextInput *)self->_textInput _unmarkText];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (id)_moveUp:(BOOL)up withHistory:(id)history
{
  upCopy = up;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveUp:upCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveDown:(BOOL)down withHistory:(id)history
{
  downCopy = down;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveDown:downCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveLeft:(BOOL)left withHistory:(id)history
{
  leftCopy = left;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveLeft:leftCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveRight:(BOOL)right withHistory:(id)history
{
  rightCopy = right;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveRight:rightCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfWord:wordCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfParagraph:paragraphCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfLine:lineCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfDocument:documentCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfWord:(BOOL)word withHistory:(id)history
{
  wordCopy = word;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfWord:wordCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfParagraph:(BOOL)paragraph withHistory:(id)history
{
  paragraphCopy = paragraph;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfParagraph:paragraphCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfLine:(BOOL)line withHistory:(id)history
{
  lineCopy = line;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfLine:lineCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfDocument:(BOOL)document withHistory:(id)history
{
  documentCopy = document;
  textInput = self->_textInput;
  historyCopy = history;
  inputDelegate = [(UITextInput *)textInput inputDelegate];
  [inputDelegate selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfDocument:documentCopy withHistory:historyCopy];

  inputDelegate2 = [(UITextInput *)self->_textInput inputDelegate];
  [inputDelegate2 selectionDidChange:self->_textInput];

  return v9;
}

@end