@interface TSWPUIAttachmentData
- (CGPoint)location;
- (TSWPUIAttachmentData)initWithAttachment:(id)attachment location:(CGPoint)location charIndex:(int64_t)index;
@end

@implementation TSWPUIAttachmentData

- (TSWPUIAttachmentData)initWithAttachment:(id)attachment location:(CGPoint)location charIndex:(int64_t)index
{
  y = location.y;
  x = location.x;
  attachmentCopy = attachment;
  v14.receiver = self;
  v14.super_class = TSWPUIAttachmentData;
  v11 = [(TSWPUIAttachmentData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attachment, attachment);
    v12->_location.x = x;
    v12->_location.y = y;
    v12->_charIndex = index;
  }

  return v12;
}

- (CGPoint)location
{
  x = self->_location.x;
  y = self->_location.y;
  result.y = y;
  result.x = x;
  return result;
}

@end