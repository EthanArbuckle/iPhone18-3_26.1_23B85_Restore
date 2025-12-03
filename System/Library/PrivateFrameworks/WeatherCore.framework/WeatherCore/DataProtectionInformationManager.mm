@interface DataProtectionInformationManager
- (void)handleNSUbiquitousKeyValueStoreExternallyNotification:(id)notification;
@end

@implementation DataProtectionInformationManager

- (void)handleNSUbiquitousKeyValueStoreExternallyNotification:(id)notification
{
  v3 = sub_1C96A42E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A42C4();
  sub_1C96A3D04();
  sub_1C95E8C28(v6);

  (*(v4 + 8))(v6, v3);
}

@end