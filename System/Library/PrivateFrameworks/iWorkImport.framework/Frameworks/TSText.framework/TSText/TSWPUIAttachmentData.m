@interface TSWPUIAttachmentData
- (CGPoint)location;
- (TSWPUIAttachmentData)initWithAttachment:(id)a3 location:(CGPoint)a4 charIndex:(int64_t)a5;
@end

@implementation TSWPUIAttachmentData

- (TSWPUIAttachmentData)initWithAttachment:(id)a3 location:(CGPoint)a4 charIndex:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = TSWPUIAttachmentData;
  v11 = [(TSWPUIAttachmentData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_attachment, a3);
    v12->_location.x = x;
    v12->_location.y = y;
    v12->_charIndex = a5;
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