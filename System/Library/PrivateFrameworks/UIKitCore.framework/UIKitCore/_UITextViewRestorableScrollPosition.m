@interface _UITextViewRestorableScrollPosition
+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithDictionary:(id)a3;
+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithRange:(_NSRange)a3;
+ (id)restorableScrollPositionForStateRestoration:(id)a3;
+ (id)restorableScrollPositionForTextView:(id)a3;
- (_NSRange)range;
- (_UITextViewRestorableScrollPosition)initWithCoder:(id)a3;
- (_UITextViewRestorableScrollPosition)initWithTextView:(id)a3;
- (_UITextViewRestorableScrollPosition)initWithTextViewForStateRestoration:(id)a3;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UITextViewRestorableScrollPosition

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

+ (id)restorableScrollPositionForTextView:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTextView:v4];

  return v5;
}

+ (id)restorableScrollPositionForStateRestoration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTextViewForStateRestoration:v4];

  return v5;
}

+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = objc_alloc_init(a1);
  v5[1] = location;
  v5[2] = length;

  return v5;
}

+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKey:@"UILocation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(v5 + 1) = [v6 integerValue];
  }

  v7 = [v4 objectForKey:@"UILength"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(v5 + 2) = [v7 integerValue];
  }

  v8 = [v4 objectForKey:@"UIOffset"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 floatValue];
    v5[3] = v9;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_range.location];
  [v3 setObject:v4 forKey:@"UILocation"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_range.length];
  [v3 setObject:v5 forKey:@"UILength"];

  offsetInLine = self->_offsetInLine;
  *&offsetInLine = offsetInLine;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:offsetInLine];
  [v3 setObject:v7 forKey:@"UIOffset"];

  return v3;
}

- (_UITextViewRestorableScrollPosition)initWithTextView:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _UITextViewRestorableScrollPosition;
  v5 = [(_UITextViewRestorableScrollPosition *)&v13 init];
  if (v5)
  {
    v6 = [v4 _visibleRangeWithLayout:1];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6, [v4 contentOffset], fabs(v8) <= 2.22044605e-16) && (objc_msgSend(v4, "_documentRangeEqualToViewportRange") & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      [v4 _rectForScrollToVisible:{v7, 1}];
      v10 = v9;
      v5->_range.location = v7;
      v5->_range.length = 1;
      [v4 contentOffset];
      v5->_offsetInLine = v11 - v10;
    }
  }

  return v5;
}

- (_UITextViewRestorableScrollPosition)initWithTextViewForStateRestoration:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UITextViewRestorableScrollPosition;
  v5 = [(_UITextViewRestorableScrollPosition *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 _visibleRangeWithLayout:1];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v6;
    v10 = v7;
    [v4 _contentOffsetForScrollToVisible:{v6, v7}];
    v12 = v11;
    v5->_range.location = v9;
    v5->_range.length = v10;
    [v4 contentOffset];
    v5->_offsetInLine = v13 - v12;
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  location = self->_range.location;
  v6 = a3;
  [v6 encodeInteger:location forKey:@"UILocation"];
  [v6 encodeInteger:self->_range.length forKey:@"UILength"];
  offsetInLine = self->_offsetInLine;
  *&offsetInLine = offsetInLine;
  [v6 encodeFloat:@"UIOffset" forKey:offsetInLine];
}

- (_UITextViewRestorableScrollPosition)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UITextViewRestorableScrollPosition;
  v5 = [(_UITextViewRestorableScrollPosition *)&v8 init];
  if (v5)
  {
    v5->_range.location = [v4 decodeIntegerForKey:@"UILocation"];
    v5->_range.length = [v4 decodeIntegerForKey:@"UILength"];
    [v4 decodeFloatForKey:@"UIOffset"];
    v5->_offsetInLine = v6;
  }

  return v5;
}

- (id)debugDescription
{
  v8.receiver = self;
  v8.super_class = _UITextViewRestorableScrollPosition;
  v3 = [(_UITextViewRestorableScrollPosition *)&v8 debugDescription];
  v10.location = [(_UITextViewRestorableScrollPosition *)self range];
  v4 = NSStringFromRange(v10);
  [(_UITextViewRestorableScrollPosition *)self offsetWithinLine];
  v6 = [v3 stringByAppendingFormat:@" { %@ + %f }", v4, v5];

  return v6;
}

@end