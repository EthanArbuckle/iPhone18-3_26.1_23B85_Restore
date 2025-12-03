@interface _UIObscurableTextContentStorage
- (NSAttributedString)obscuredAttributedString;
- (_NSRange)unobscuredRange;
- (_UIObscurableTextContentStorage)initWithTextStorage:(id)storage;
- (id)attributedString;
- (void)_invalidateObscuredAttributedString;
- (void)_validateUnobscuredRange;
- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange;
- (void)setObscured:(BOOL)obscured;
- (void)setTextStorage:(id)storage;
- (void)setUnobscuredRange:(_NSRange)range;
@end

@implementation _UIObscurableTextContentStorage

- (id)attributedString
{
  if ([(_UIObscurableTextContentStorage *)self isObscured])
  {
    obscuredAttributedString = [(_UIObscurableTextContentStorage *)self obscuredAttributedString];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UIObscurableTextContentStorage;
    obscuredAttributedString = [(_UIObscurableTextContentStorage *)&v5 attributedString];
  }

  return obscuredAttributedString;
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
  textStorage = [(_UIObscurableTextContentStorage *)self textStorage];
  v4 = [textStorage length];

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
    attributedString = [(_UIObscurableTextContentStorage *)&v27 attributedString];
    v5 = objc_opt_new();
    selfCopy = self;
    unobscuredRange = [(_UIObscurableTextContentStorage *)self unobscuredRange];
    v25 = v7;
    if ([attributedString length])
    {
      v8 = 0;
      v9 = *off_1E70EC918;
      do
      {
        if (unobscuredRange > v8 || v8 - unobscuredRange >= v25)
        {
          v11 = [attributedString attributesAtIndex:v8 effectiveRange:0];
          v10 = [v11 mutableCopy];

          v12 = [v10 objectForKeyedSubscript:v9];
          v13 = v12;
          if (v12)
          {
            v14 = v12;
          }

          else
          {
            font = [(_UICascadingTextStorage *)selfCopy->_cascadingTextStorage font];
            v16 = font;
            if (font)
            {
              v17 = font;
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
          v10 = [attributedString attributedSubstringFromRange:{v8, 1}];
          [v5 appendAttributedString:v10];
        }

        ++v8;
      }

      while (v8 < [attributedString length]);
    }

    v21 = [v5 copy];
    v22 = selfCopy->_obscuredAttributedString;
    selfCopy->_obscuredAttributedString = v21;

    obscuredAttributedString = selfCopy->_obscuredAttributedString;
  }

  return obscuredAttributedString;
}

- (_UIObscurableTextContentStorage)initWithTextStorage:(id)storage
{
  storageCopy = storage;
  v8.receiver = self;
  v8.super_class = _UIObscurableTextContentStorage;
  v5 = [(_UIObscurableTextContentStorage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_UIObscurableTextContentStorage *)v5 setTextStorage:storageCopy];
  }

  return v6;
}

- (void)setObscured:(BOOL)obscured
{
  if (self->_obscured != obscured)
  {
    self->_obscured = obscured;
    textStorage = [(_UIObscurableTextContentStorage *)self textStorage];
    v5 = [textStorage length];
    [(_UIObscurableTextContentStorage *)self processEditingForTextStorage:textStorage edited:2 range:0 changeInLength:v5 invalidatedRange:0, 0, v5];
  }
}

- (void)setUnobscuredRange:(_NSRange)range
{
  p_unobscuredRange = &self->_unobscuredRange;
  unobscuredRange = self->_unobscuredRange;
  if (unobscuredRange.location != range.location || unobscuredRange.length != range.length)
  {
    *p_unobscuredRange = range;
    if (unobscuredRange.length)
    {
      v7 = range.length == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (range.length)
      {
        length = range.length;
      }

      else
      {
        length = unobscuredRange.length;
      }

      if (range.length)
      {
        location = range.location;
      }

      else
      {
        location = unobscuredRange.location;
      }
    }

    else
    {
      v8 = NSUnionRange(unobscuredRange, range);
      location = v8.location;
      length = v8.length;
    }

    textStorage = [(_UIObscurableTextContentStorage *)self textStorage];
    [(_UIObscurableTextContentStorage *)self processEditingForTextStorage:textStorage edited:2 range:location changeInLength:length invalidatedRange:0, location, length];
  }
}

- (void)setTextStorage:(id)storage
{
  storageCopy = storage;
  v5 = objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v6 = storageCopy;
  }

  else
  {
    v6 = 0;
  }

  objc_storeStrong(&self->_cascadingTextStorage, v6);

  v7.receiver = self;
  v7.super_class = _UIObscurableTextContentStorage;
  [(_UIObscurableTextContentStorage *)&v7 setTextStorage:storageCopy];
}

- (void)processEditingForTextStorage:(id)storage edited:(unint64_t)edited range:(_NSRange)range changeInLength:(int64_t)length invalidatedRange:(_NSRange)invalidatedRange
{
  length = range.length;
  location = range.location;
  storageCopy = storage;
  [(_UIObscurableTextContentStorage *)self _validateUnobscuredRange];
  [(_UIObscurableTextContentStorage *)self _invalidateObscuredAttributedString];
  v13.receiver = self;
  v13.super_class = _UIObscurableTextContentStorage;
  [(_UIObscurableTextContentStorage *)&v13 processEditingForTextStorage:storageCopy edited:edited range:location changeInLength:length invalidatedRange:length, invalidatedRange.location, invalidatedRange.length];
}

@end