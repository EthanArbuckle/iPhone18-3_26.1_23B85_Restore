@interface UIDictationSubstring
- (UIDictationSubstring)initWithString:(id)string range:(_NSRange)range enclosingRange:(_NSRange)enclosingRange;
- (_NSRange)enclosingRange;
- (_NSRange)range;
@end

@implementation UIDictationSubstring

- (UIDictationSubstring)initWithString:(id)string range:(_NSRange)range enclosingRange:(_NSRange)enclosingRange
{
  length = enclosingRange.length;
  location = enclosingRange.location;
  v7 = range.length;
  v8 = range.location;
  stringCopy = string;
  v15.receiver = self;
  v15.super_class = UIDictationSubstring;
  v12 = [(UIDictationSubstring *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_string, string);
    v13->_range.location = v8;
    v13->_range.length = v7;
    v13->_enclosingRange.location = location;
    v13->_enclosingRange.length = length;
  }

  return v13;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)enclosingRange
{
  length = self->_enclosingRange.length;
  location = self->_enclosingRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end