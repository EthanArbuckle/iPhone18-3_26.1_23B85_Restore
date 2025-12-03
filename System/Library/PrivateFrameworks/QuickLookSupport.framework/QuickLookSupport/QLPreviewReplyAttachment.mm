@interface QLPreviewReplyAttachment
- (QLPreviewReplyAttachment)initWithCoder:(id)coder;
- (QLPreviewReplyAttachment)initWithData:(NSData *)data contentType:(UTType *)contentType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLPreviewReplyAttachment

- (QLPreviewReplyAttachment)initWithData:(NSData *)data contentType:(UTType *)contentType
{
  v7 = data;
  v8 = contentType;
  v12.receiver = self;
  v12.super_class = QLPreviewReplyAttachment;
  v9 = [(QLPreviewReplyAttachment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_contentType, contentType);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(QLPreviewReplyAttachment *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  contentType = [(QLPreviewReplyAttachment *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];
}

- (QLPreviewReplyAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = QLPreviewReplyAttachment;
  v5 = [(QLPreviewReplyAttachment *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(QLPreviewReplyAttachment *)v5 setData:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(QLPreviewReplyAttachment *)v5 setContentType:v7];
  }

  return v5;
}

@end