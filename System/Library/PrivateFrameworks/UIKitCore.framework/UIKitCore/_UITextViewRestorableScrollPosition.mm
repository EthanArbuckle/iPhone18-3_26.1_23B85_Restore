@interface _UITextViewRestorableScrollPosition
+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithDictionary:(id)dictionary;
+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithRange:(_NSRange)range;
+ (id)restorableScrollPositionForStateRestoration:(id)restoration;
+ (id)restorableScrollPositionForTextView:(id)view;
- (_NSRange)range;
- (_UITextViewRestorableScrollPosition)initWithCoder:(id)coder;
- (_UITextViewRestorableScrollPosition)initWithTextView:(id)view;
- (_UITextViewRestorableScrollPosition)initWithTextViewForStateRestoration:(id)restoration;
- (id)debugDescription;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
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

+ (id)restorableScrollPositionForTextView:(id)view
{
  viewCopy = view;
  v5 = [[self alloc] initWithTextView:viewCopy];

  return v5;
}

+ (id)restorableScrollPositionForStateRestoration:(id)restoration
{
  restorationCopy = restoration;
  v5 = [[self alloc] initWithTextViewForStateRestoration:restorationCopy];

  return v5;
}

+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v5 = objc_alloc_init(self);
  v5[1] = location;
  v5[2] = length;

  return v5;
}

+ (_UITextViewRestorableScrollPosition)restorableScrollPositionWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKey:@"UILocation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(v5 + 1) = [v6 integerValue];
  }

  v7 = [dictionaryCopy objectForKey:@"UILength"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(v5 + 2) = [v7 integerValue];
  }

  v8 = [dictionaryCopy objectForKey:@"UIOffset"];

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

- (_UITextViewRestorableScrollPosition)initWithTextView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = _UITextViewRestorableScrollPosition;
  v5 = [(_UITextViewRestorableScrollPosition *)&v13 init];
  if (v5)
  {
    v6 = [viewCopy _visibleRangeWithLayout:1];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6, [viewCopy contentOffset], fabs(v8) <= 2.22044605e-16) && (objc_msgSend(viewCopy, "_documentRangeEqualToViewportRange") & 1) != 0)
    {

      v5 = 0;
    }

    else
    {
      [viewCopy _rectForScrollToVisible:{v7, 1}];
      v10 = v9;
      v5->_range.location = v7;
      v5->_range.length = 1;
      [viewCopy contentOffset];
      v5->_offsetInLine = v11 - v10;
    }
  }

  return v5;
}

- (_UITextViewRestorableScrollPosition)initWithTextViewForStateRestoration:(id)restoration
{
  restorationCopy = restoration;
  v15.receiver = self;
  v15.super_class = _UITextViewRestorableScrollPosition;
  v5 = [(_UITextViewRestorableScrollPosition *)&v15 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [restorationCopy _visibleRangeWithLayout:1];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v6;
    v10 = v7;
    [restorationCopy _contentOffsetForScrollToVisible:{v6, v7}];
    v12 = v11;
    v5->_range.location = v9;
    v5->_range.length = v10;
    [restorationCopy contentOffset];
    v5->_offsetInLine = v13 - v12;
LABEL_5:
    v8 = v5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  location = self->_range.location;
  coderCopy = coder;
  [coderCopy encodeInteger:location forKey:@"UILocation"];
  [coderCopy encodeInteger:self->_range.length forKey:@"UILength"];
  offsetInLine = self->_offsetInLine;
  *&offsetInLine = offsetInLine;
  [coderCopy encodeFloat:@"UIOffset" forKey:offsetInLine];
}

- (_UITextViewRestorableScrollPosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _UITextViewRestorableScrollPosition;
  v5 = [(_UITextViewRestorableScrollPosition *)&v8 init];
  if (v5)
  {
    v5->_range.location = [coderCopy decodeIntegerForKey:@"UILocation"];
    v5->_range.length = [coderCopy decodeIntegerForKey:@"UILength"];
    [coderCopy decodeFloatForKey:@"UIOffset"];
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