@interface _UITypeSelectKeyInput
- (BOOL)hasText;
- (NSMutableString)typedText;
- (_UITypeSelectKeyInput)init;
- (_UITypeSelectKeyInputDelegate)delegate;
- (void)deleteBackward;
- (void)insertText:(id)text;
@end

@implementation _UITypeSelectKeyInput

- (_UITypeSelectKeyInput)init
{
  v3.receiver = self;
  v3.super_class = _UITypeSelectKeyInput;
  return [(_UITypeSelectKeyInput *)&v3 init];
}

- (NSMutableString)typedText
{
  v2 = [(NSMutableString *)self->_typedText copy];

  return v2;
}

- (BOOL)hasText
{
  typedText = [(_UITypeSelectKeyInput *)self typedText];
  v3 = [typedText length] != 0;

  return v3;
}

- (void)insertText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:@"\t"] & 1) == 0 && (objc_msgSend(textCopy, "isEqualToString:", @"\n") & 1) == 0 && (objc_msgSend(textCopy, "isEqualToString:", @"\r") & 1) == 0)
  {
    typedText = self->_typedText;
    v5 = textCopy;
    if (!typedText)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v7 = self->_typedText;
      self->_typedText = v6;

      typedText = self->_typedText;
      v5 = textCopy;
    }

    [(NSMutableString *)typedText appendString:v5];
    delegate = [(_UITypeSelectKeyInput *)self delegate];
    [delegate _keyInputHasChanged];
  }
}

- (void)deleteBackward
{
  v3 = [(NSMutableString *)self->_typedText length];
  typedText = self->_typedText;
  if (v3 < 2)
  {
    self->_typedText = 0;
  }

  else
  {
    v5 = [(NSMutableString *)typedText _rangeOfBackwardDeletionClusterAtIndex:v3 - 1];
    [(NSMutableString *)self->_typedText deleteCharactersInRange:v5, v6];
  }

  delegate = [(_UITypeSelectKeyInput *)self delegate];
  [delegate _keyInputHasChanged];
}

- (_UITypeSelectKeyInputDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end