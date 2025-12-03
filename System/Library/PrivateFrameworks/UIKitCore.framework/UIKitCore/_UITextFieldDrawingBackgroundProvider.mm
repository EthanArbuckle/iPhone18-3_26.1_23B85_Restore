@interface _UITextFieldDrawingBackgroundProvider
- (_UITextFieldDrawingBackgroundProvider)init;
- (void)_buildDescription:(id)description;
- (void)_setDrawsContent:(BOOL)content;
- (void)addToTextField:(id)field;
- (void)drawInBounds:(CGRect)bounds;
- (void)removeFromTextField;
- (void)setDrawsContentBasedOnTraitsIfNeeded;
- (void)setNeedsDisplay;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UITextFieldDrawingBackgroundProvider

- (_UITextFieldDrawingBackgroundProvider)init
{
  v3.receiver = self;
  v3.super_class = _UITextFieldDrawingBackgroundProvider;
  result = [(_UITextFieldDrawingBackgroundProvider *)&v3 init];
  if (result)
  {
    *(&result->_flags + 1) = 1;
  }

  return result;
}

- (void)_setDrawsContent:(BOOL)content
{
  *&self->_flags &= ~1u;
  if (*(&self->_flags + 1) != content)
  {
    contentCopy = content;
    *(&self->_flags + 1) = content;
    textField = [(_UITextFieldBackgroundProvider *)self textField];
    v7 = textField;
    if (contentCopy)
    {
      [textField setNeedsDisplay];
    }

    else
    {
      layer = [textField layer];
      [layer setContents:0];
    }
  }
}

- (void)setDrawsContentBasedOnTraitsIfNeeded
{
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  if ((*&self->_flags & 1) != 0 && textField)
  {
    v7 = textField;
    traitCollection = [textField traitCollection];
    v5 = traitCollection;
    if (traitCollection)
    {
      v6 = [traitCollection userInterfaceIdiom] != 2;
    }

    else
    {
      v6 = 1;
    }

    [(_UITextFieldDrawingBackgroundProvider *)self setDrawsContent:v6];

    textField = v7;
  }
}

- (void)addToTextField:(id)field
{
  fieldCopy = field;
  v5.receiver = self;
  v5.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v5 addToTextField:fieldCopy];
  [(_UITextFieldDrawingBackgroundProvider *)self setDrawsContentBasedOnTraitsIfNeeded];
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    [fieldCopy setNeedsDisplay];
  }
}

- (void)removeFromTextField
{
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    textField = [(_UITextFieldBackgroundProvider *)self textField];
    layer = [textField layer];
    [layer setContents:0];
  }

  v5.receiver = self;
  v5.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v5 removeFromTextField];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 traitCollectionDidChange:change];
  [(_UITextFieldDrawingBackgroundProvider *)self setDrawsContentBasedOnTraitsIfNeeded];
}

- (void)drawInBounds:(CGRect)bounds
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54___UITextFieldDrawingBackgroundProvider_drawInBounds___block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (drawInBounds__once != -1)
  {
    dispatch_once(&drawInBounds__once, block);
  }
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 setNeedsDisplay];
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  [textField setNeedsDisplay];
}

- (void)_buildDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v9 _buildDescription:descriptionCopy];
  if (*(&self->_flags + 1))
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  if (*&self->_flags)
  {
    v6 = @", based on traits";
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v6];
  v8 = [descriptionCopy appendName:@"drawsContent" object:v7];
}

@end