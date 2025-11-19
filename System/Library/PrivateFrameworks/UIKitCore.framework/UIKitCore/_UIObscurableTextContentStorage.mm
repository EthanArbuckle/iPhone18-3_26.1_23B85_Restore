@interface _UIObscurableTextContentStorage
- (NSAttributedString)obscuredAttributedString;
- (_NSRange)unobscuredRange;
- (_UIObscurableTextContentStorage)initWithTextStorage:(id)a3;
- (id)attributedString;
- (void)_invalidateObscuredAttributedString;
- (void)_validateUnobscuredRange;
- (void)processEditingForTextStorage:(id)a3 edited:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6 invalidatedRange:(_NSRange)a7;
- (void)setObscured:(BOOL)a3;
- (void)setTextStorage:(id)a3;
- (void)setUnobscuredRange:(_NSRange)a3;
@end

@implementation _UIObscurableTextContentStorage

- (id)attributedString
{
  if ([(_UIObscurableTextContentStorage *)self isObscured])
  {
    v3 = [(_UIObscurableTextContentStorage *)self obscuredAttributedString];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIObscurableTextContentStorage;
    v3 = [(_UIObscurableTextContentStorage *)&v5 attributedString];
  }

  return v3;
}

- (_NSRange)unobscuredRange
{
  p_unobscuredRange = &self->_unobscuredRange;
  location = self->_unobscuredRange.location;
  length = p_unobscuredRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (void)_invalidateObscuredAttributedString
{
  obscuredAttributedString = self->_obscuredAttributedString;
  self->_obscuredAttributedString = 0;
}

- (void)_validateUnobscuredRange
{
  v3 = [(_UIObscurableTextContentStorage *)self textStorage];
  v4 = [v3 length];

  location = self->_unobscuredRange.location;
  if (self->_unobscuredRange.length + location > v4)
  {
    if (location >= v4)
    {
      location = v4;
    }

    self->_unobscuredRange.location = location;
    self->_unobscuredRange.length = v4 - location;
  }
}

- (NSAttributedString)obscuredAttributedString
{
  obscuredAttributedString = self->_obscuredAttributedString;
  if (!obscuredAttributedString)
  {
    v27.receiver = self;
    v27.super_class = _UIObscurableTextContentStorage;
    v4 = [(_UIObscurableTextContentStorage *)&v27 attributedString];
    v5 = objc_opt_new();
    v24 = self;
    v6 = [(_UIObscurableTextContentStorage *)self unobscuredRange];
    v25 = v7;
    if ([v4 length])
    {
      v8 = 0;
      v9 = *off_1E70EC918;
      do
      {
        if (v6 > v8 || v8 - v6 >= v25)
        {
          v11 = [v4 attributesAtIndex:v8 effectiveRange:0];
          v10 = [v11 mutableCopy];

          v12 = [v10 objectForKeyedSubscript:v9];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            v15 = [(_UICascadingTextStorage *)v24->_cascadingTextStorage font];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              [off_1E70ECC18 defaultFontSize];
              v17 = [off_1E70ECC18 systemFontOfSize:?];
            }

            v14 = v17;
          }

          v26 = 0;
          v18 = [v14 _ui_bulletStringWithFont:&v26];
          v19 = v26;
          if (v19)
          {
            [v10 setObject:v19 forKeyedSubscript:v9];
          }

          v20 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v18 attributes:v10];
          [v5 appendAttributedString:v20];
        }

        else
        {
          v10 = [v4 attributedSubstringFromRange:{v8, 1}];
          [v5 appendAttributedString:v10];
        }

        ++v8;
      }

      while (v8 < [v4 length]);
    }

    v21 = [v5 copy];
    v22 = v24->_obscuredAttributedString;
    v24->_obscuredAttributedString = v21;

    obscuredAttributedString = v24->_obscuredAttributedString;
  }

  return obscuredAttributedString;
}

- (_UIObscurableTextContentStorage)initWithTextStorage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIObscurableTextContentStorage;
  v5 = [(_UIObscurableTextContentStorage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIObscurableTextContentStorage *)v5 setTextStorage:v4];
  }

  return v6;
}

- (void)setObscured:(BOOL)a3
{
  if (self->_obscured != a3)
  {
    self->_obscured = a3;
    v6 = [(_UIObscurableTextContentStorage *)self textStorage];
    v5 = [v6 length];
    [(_UIObscurableTextContentStorage *)self processEditingForTextStorage:v6 edited:2 range:0 changeInLength:v5 invalidatedRange:0, 0, v5];
  }
}

- (void)setUnobscuredRange:(_NSRange)a3
{
  p_unobscuredRange = &self->_unobscuredRange;
  unobscuredRange = self->_unobscuredRange;
  if (unobscuredRange.location != a3.location || unobscuredRange.length != a3.length)
  {
    *p_unobscuredRange = a3;
    if (unobscuredRange.length)
    {
      v7 = a3.length == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (a3.length)
      {
        length = a3.length;
      }

      else
      {
        length = unobscuredRange.length;
      }

      if (a3.length)
      {
        location = a3.location;
      }

      else
      {
        location = unobscuredRange.location;
      }
    }

    else
    {
      v8 = NSUnionRange(unobscuredRange, a3);
      location = v8.location;
      length = v8.length;
    }

    v11 = [(_UIObscurableTextContentStorage *)self textStorage];
    [(_UIObscurableTextContentStorage *)self processEditingForTextStorage:v11 edited:2 range:location changeInLength:length invalidatedRange:0, location, length];
  }
}

- (void)setTextStorage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_cascadingTextStorage, v6);

  v7.receiver = self;
  v7.super_class = _UIObscurableTextContentStorage;
  [(_UIObscurableTextContentStorage *)&v7 setTextStorage:v4];
}

- (void)processEditingForTextStorage:(id)a3 edited:(unint64_t)a4 range:(_NSRange)a5 changeInLength:(int64_t)a6 invalidatedRange:(_NSRange)a7
{
  length = a5.length;
  location = a5.location;
  v12 = a3;
  [(_UIObscurableTextContentStorage *)self _validateUnobscuredRange];
  [(_UIObscurableTextContentStorage *)self _invalidateObscuredAttributedString];
  v13.receiver = self;
  v13.super_class = _UIObscurableTextContentStorage;
  [(_UIObscurableTextContentStorage *)&v13 processEditingForTextStorage:v12 edited:a4 range:location changeInLength:length invalidatedRange:a6, a7.location, a7.length];
}

@end