@interface TTSRegexMatch
- (_NSRange)utf8Range;
@end

@implementation TTSRegexMatch

- (_NSRange)utf8Range
{
  length = self->_utf8Range.length;
  location = self->_utf8Range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end