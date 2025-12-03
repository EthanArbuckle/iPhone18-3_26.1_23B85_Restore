@interface MFAttachmentRaw
+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d;
- (void)dealloc;
@end

@implementation MFAttachmentRaw

+ (id)attachmentData:(id)data fileName:(id)name mimeType:(id)type contentID:(id)d
{
  dCopy = d;
  typeCopy = type;
  nameCopy = name;
  dataCopy = data;
  v13 = objc_alloc_init(MFAttachmentRaw);
  [(MFAttachmentRaw *)v13 setData:dataCopy];

  [(MFAttachmentRaw *)v13 setFileName:nameCopy];
  [(MFAttachmentRaw *)v13 setMimeType:typeCopy];

  [(MFAttachmentRaw *)v13 setContentID:dCopy];

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachmentRaw;
  [(MFAttachmentRaw *)&v2 dealloc];
}

@end