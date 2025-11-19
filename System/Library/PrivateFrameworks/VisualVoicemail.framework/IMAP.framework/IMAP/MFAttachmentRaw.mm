@interface MFAttachmentRaw
+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6;
- (void)dealloc;
@end

@implementation MFAttachmentRaw

+ (id)attachmentData:(id)a3 fileName:(id)a4 mimeType:(id)a5 contentID:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(MFAttachmentRaw);
  [(MFAttachmentRaw *)v13 setData:v12];

  [(MFAttachmentRaw *)v13 setFileName:v11];
  [(MFAttachmentRaw *)v13 setMimeType:v10];

  [(MFAttachmentRaw *)v13 setContentID:v9];

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFAttachmentRaw;
  [(MFAttachmentRaw *)&v2 dealloc];
}

@end