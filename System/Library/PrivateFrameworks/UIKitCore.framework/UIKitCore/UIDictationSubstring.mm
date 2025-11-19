@interface UIDictationSubstring
- (UIDictationSubstring)initWithString:(id)a3 range:(_NSRange)a4 enclosingRange:(_NSRange)a5;
- (_NSRange)enclosingRange;
- (_NSRange)range;
@end

@implementation UIDictationSubstring

- (UIDictationSubstring)initWithString:(id)a3 range:(_NSRange)a4 enclosingRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v7 = a4.length;
  v8 = a4.location;
  v11 = a3;
  v15.receiver = self;
  v15.super_class = UIDictationSubstring;
  v12 = [(UIDictationSubstring *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_string, a3);
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