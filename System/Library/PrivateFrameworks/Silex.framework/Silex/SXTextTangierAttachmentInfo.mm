@interface SXTextTangierAttachmentInfo
- (_NSRange)actualRange;
@end

@implementation SXTextTangierAttachmentInfo

- (_NSRange)actualRange
{
  p_actualRange = &self->_actualRange;
  location = self->_actualRange.location;
  length = p_actualRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end