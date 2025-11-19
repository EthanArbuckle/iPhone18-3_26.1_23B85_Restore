@interface AXKonaMarker
- (_NSRange)originalStringRange;
@end

@implementation AXKonaMarker

- (_NSRange)originalStringRange
{
  length = self->_originalStringRange.length;
  location = self->_originalStringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end