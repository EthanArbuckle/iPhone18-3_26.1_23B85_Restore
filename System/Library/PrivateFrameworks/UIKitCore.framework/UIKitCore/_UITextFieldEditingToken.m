@interface _UITextFieldEditingToken
- (BOOL)endEditing;
- (_UICascadingTextStorage)textStorage;
- (_UITextFieldEditingToken)initWithTextStorage:(id)a3 attributeNames:(id)a4;
- (void)setRestoreDefaultAttributes:(BOOL)a3;
@end

@implementation _UITextFieldEditingToken

- (_UITextFieldEditingToken)initWithTextStorage:(id)a3 attributeNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UITextFieldEditingToken;
  v8 = [(_UITextFieldEditingToken *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_textStorage, v6);
    v10 = [v7 copy];
    attributeNames = v9->_attributeNames;
    v9->_attributeNames = v10;
  }

  return v9;
}

- (BOOL)endEditing
{
  if ((*&self->_flags & 4) != 0)
  {
    v9 = 0;
  }

  else if ([(NSArray *)self->_attributeNames count])
  {
    flags = self->_flags;
    *&self->_flags = flags | 4;
    if (flags)
    {
      WeakRetained = objc_loadWeakRetained(&self->_textStorage);
      v5 = [WeakRetained length];

      if (v5)
      {
        v6 = objc_loadWeakRetained(&self->_textStorage);
        [v6 coordinateAccess:&__block_literal_global_620];
      }
    }

    *&v7 = self->_flags;
    if ((*&v7 & 2) != 0)
    {
      v10 = objc_loadWeakRetained(&self->_textStorage);
      [v10 coordinateAccess:&__block_literal_global_22_4];

      v7 = self->_flags;
      v8 = (*&v7 >> 1) & 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v9 = v8 | *&v7;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)setRestoreDefaultAttributes:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

- (_UICascadingTextStorage)textStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_textStorage);

  return WeakRetained;
}

@end