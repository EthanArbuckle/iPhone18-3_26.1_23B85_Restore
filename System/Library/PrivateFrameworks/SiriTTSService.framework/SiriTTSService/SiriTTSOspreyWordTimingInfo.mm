@interface SiriTTSOspreyWordTimingInfo
- (_NSRange)textRange;
@end

@implementation SiriTTSOspreyWordTimingInfo

- (_NSRange)textRange
{
  length = self->_textRange.length;
  location = self->_textRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end