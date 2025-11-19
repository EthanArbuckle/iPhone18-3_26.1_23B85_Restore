@interface _UITextFieldDrawingBackgroundProvider
- (_UITextFieldDrawingBackgroundProvider)init;
- (void)_buildDescription:(id)a3;
- (void)_setDrawsContent:(BOOL)a3;
- (void)addToTextField:(id)a3;
- (void)drawInBounds:(CGRect)a3;
- (void)removeFromTextField;
- (void)setDrawsContentBasedOnTraitsIfNeeded;
- (void)setNeedsDisplay;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)_setDrawsContent:(BOOL)a3
{
  *&self->_flags &= ~1u;
  if (*(&self->_flags + 1) != a3)
  {
    v4 = a3;
    *(&self->_flags + 1) = a3;
    v5 = [(_UITextFieldBackgroundProvider *)self textField];
    v7 = v5;
    if (v4)
    {
      [v5 setNeedsDisplay];
    }

    else
    {
      v6 = [v5 layer];
      [v6 setContents:0];
    }
  }
}

- (void)setDrawsContentBasedOnTraitsIfNeeded
{
  v3 = [(_UITextFieldBackgroundProvider *)self textField];
  if ((*&self->_flags & 1) != 0 && v3)
  {
    v7 = v3;
    v4 = [v3 traitCollection];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 userInterfaceIdiom] != 2;
    }

    else
    {
      v6 = 1;
    }

    [(_UITextFieldDrawingBackgroundProvider *)self setDrawsContent:v6];

    v3 = v7;
  }
}

- (void)addToTextField:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v5 addToTextField:v4];
  [(_UITextFieldDrawingBackgroundProvider *)self setDrawsContentBasedOnTraitsIfNeeded];
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    [v4 setNeedsDisplay];
  }
}

- (void)removeFromTextField
{
  if ([(_UITextFieldDrawingBackgroundProvider *)self drawsContent])
  {
    v3 = [(_UITextFieldBackgroundProvider *)self textField];
    v4 = [v3 layer];
    [v4 setContents:0];
  }

  v5.receiver = self;
  v5.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v5 removeFromTextField];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v4 traitCollectionDidChange:a3];
  [(_UITextFieldDrawingBackgroundProvider *)self setDrawsContentBasedOnTraitsIfNeeded];
}

- (void)drawInBounds:(CGRect)a3
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
  v3 = [(_UITextFieldBackgroundProvider *)self textField];
  [v3 setNeedsDisplay];
}

- (void)_buildDescription:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UITextFieldDrawingBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v9 _buildDescription:v4];
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
  v8 = [v4 appendName:@"drawsContent" object:v7];
}

@end