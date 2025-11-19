@interface UNNotificationAttachment
@end

@implementation UNNotificationAttachment

void __56__UNNotificationAttachment_Staging___systemDirectoryURL__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v4 = BSSystemRootDirectory();
  v1 = [v4 stringByAppendingPathComponent:@"System"];
  v2 = [v0 fileURLWithPath:v1];
  v3 = _systemDirectoryURL___systemDirectoryURL;
  _systemDirectoryURL___systemDirectoryURL = v2;
}

@end