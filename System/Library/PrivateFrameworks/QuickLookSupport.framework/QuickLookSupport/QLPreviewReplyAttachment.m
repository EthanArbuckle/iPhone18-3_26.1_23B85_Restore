@interface QLPreviewReplyAttachment
- (QLPreviewReplyAttachment)initWithCoder:(id)a3;
- (QLPreviewReplyAttachment)initWithData:(NSData *)data contentType:(UTType *)contentType;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(QLPreviewReplyAttachment *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(QLPreviewReplyAttachment *)self contentType];
  [v4 encodeObject:v6 forKey:@"contentType"];
}

- (QLPreviewReplyAttachment)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLPreviewReplyAttachment;
  v5 = [(QLPreviewReplyAttachment *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    [(QLPreviewReplyAttachment *)v5 setData:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
    [(QLPreviewReplyAttachment *)v5 setContentType:v7];
  }

  return v5;
}

@end