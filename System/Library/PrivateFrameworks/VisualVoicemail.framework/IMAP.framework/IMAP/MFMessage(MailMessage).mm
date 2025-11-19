@interface MFMessage(MailMessage)
- (id)attachmentStorageLocation;
@end

@implementation MFMessage(MailMessage)

- (id)attachmentStorageLocation
{
  v1 = [a1 messageStore];
  v2 = [v1 storagePath];

  return v2;
}

@end