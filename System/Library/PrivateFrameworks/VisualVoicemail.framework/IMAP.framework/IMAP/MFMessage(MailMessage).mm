@interface MFMessage(MailMessage)
- (id)attachmentStorageLocation;
@end

@implementation MFMessage(MailMessage)

- (id)attachmentStorageLocation
{
  messageStore = [self messageStore];
  storagePath = [messageStore storagePath];

  return storagePath;
}

@end