@interface _UITypeSelectKeyInput
- (BOOL)hasText;
- (NSMutableString)typedText;
- (_UITypeSelectKeyInput)init;
- (_UITypeSelectKeyInputDelegate)delegate;
- (void)deleteBackward;
- (void)insertText:(id)a3;
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
  v2 = [(_UITypeSelectKeyInput *)self typedText];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)insertText:(id)a3
{
  v9 = a3;
  if (([v9 isEqualToString:@"\t"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"\n") & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", @"\r") & 1) == 0)
  {
    typedText = self->_typedText;
    v5 = v9;
    if (!typedText)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v7 = self->_typedText;
      self->_typedText = v6;

      typedText = self->_typedText;
      v5 = v9;
    }

    [(NSMutableString *)typedText appendString:v5];
    v8 = [(_UITypeSelectKeyInput *)self delegate];
    [v8 _keyInputHasChanged];
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

  v7 = [(_UITypeSelectKeyInput *)self delegate];
  [v7 _keyInputHasChanged];
}

- (_UITypeSelectKeyInputDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end