@interface UITextInteractionSelectableInputDelegate
+ (UITextInteractionSelectableInputDelegate)selectableInputDelegateWithTextInput:(id)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)firstRectForRange:(id)a3;
- (id)_moveDown:(BOOL)a3 withHistory:(id)a4;
- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4;
- (id)_moveRight:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4;
- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4;
- (id)_moveUp:(BOOL)a3 withHistory:(id)a4;
- (void)_deleteBackwardAndNotify:(BOOL)a3;
- (void)_deleteForwardAndNotify:(BOOL)a3;
- (void)_moveCurrentSelection:(int)a3;
- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)_unmarkText;
- (void)deleteBackward;
- (void)insertText:(id)a3;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setSelectedTextRange:(id)a3;
- (void)unmarkText;
- (void)updateSelectionRects;
@end

@implementation UITextInteractionSelectableInputDelegate

+ (UITextInteractionSelectableInputDelegate)selectableInputDelegateWithTextInput:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (void)updateSelectionRects
{
  v2 = [(UITextInput *)self->_textInput interactionAssistant];
  if (v2)
  {
    v3 = v2;
    [v2 selectionChanged];
    [v3 setNeedsSelectionDisplayUpdate];
    v2 = v3;
  }
}

- (void)insertText:(id)a3
{
  [(UITextInput *)self->_textInput insertText:a3];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)deleteBackward
{
  [(UITextInput *)self->_textInput deleteBackward];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)replaceRange:(id)a3 withText:(id)a4
{
  [(UITextInput *)self->_textInput replaceRange:a3 withText:a4];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)setSelectedTextRange:(id)a3
{
  [(UITextInput *)self->_textInput setSelectedTextRange:a3];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  [(UITextInput *)self->_textInput setMarkedText:a3 selectedRange:a4.location, a4.length];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)unmarkText
{
  [(UITextInput *)self->_textInput unmarkText];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  [(UITextInput *)self->_textInput setBaseWritingDirection:a3 forRange:a4];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (CGRect)firstRectForRange:(id)a3
{
  [(UITextInput *)self->_textInput firstRectForRange:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  [(UITextInput *)self->_textInput caretRectForPosition:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_deleteBackwardAndNotify:(BOOL)a3
{
  [(UITextInput *)self->_textInput _deleteBackwardAndNotify:a3];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_deleteForwardAndNotify:(BOOL)a3
{
  [(UITextInput *)self->_textInput _deleteForwardAndNotify:a3];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_moveCurrentSelection:(int)a3
{
  [(UITextInput *)self->_textInput _moveCurrentSelection:*&a3];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  [(UITextInput *)self->_textInput _setMarkedText:a3 selectedRange:a4.location, a4.length];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (void)_unmarkText
{
  [(UITextInput *)self->_textInput _unmarkText];

  [(UITextInteractionSelectableInputDelegate *)self updateSelectionRects];
}

- (id)_moveUp:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveUp:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveDown:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveDown:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveLeft:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveRight:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveRight:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfWord:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfParagraph:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfLine:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToStartOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToStartOfDocument:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfWord:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfWord:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfParagraph:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfParagraph:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfLine:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfLine:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

- (id)_moveToEndOfDocument:(BOOL)a3 withHistory:(id)a4
{
  v4 = a3;
  textInput = self->_textInput;
  v7 = a4;
  v8 = [(UITextInput *)textInput inputDelegate];
  [v8 selectionWillChange:self->_textInput];

  v9 = [(UITextInput *)self->_textInput _moveToEndOfDocument:v4 withHistory:v7];

  v10 = [(UITextInput *)self->_textInput inputDelegate];
  [v10 selectionDidChange:self->_textInput];

  return v9;
}

@end