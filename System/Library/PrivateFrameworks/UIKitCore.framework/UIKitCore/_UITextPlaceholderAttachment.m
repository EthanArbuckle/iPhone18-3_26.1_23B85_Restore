@interface _UITextPlaceholderAttachment
- (_NSRange)attachmentRange;
@end

@implementation _UITextPlaceholderAttachment

- (_NSRange)attachmentRange
{
  p_attachmentRange = &self->_attachmentRange;
  location = self->_attachmentRange.location;
  length = p_attachmentRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end