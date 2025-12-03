@interface WBSManagedFeatureAvailability
+ (WBSManagedFeatureAvailability)sharedInstance;
- (WBSManagedFeatureAvailability)init;
- (void)handleNotificationWithNotification:(id)notification;
@end

@implementation WBSManagedFeatureAvailability

+ (WBSManagedFeatureAvailability)sharedInstance
{
  if (qword_1EBA8A530 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBA8AAC8;

  return v3;
}

- (WBSManagedFeatureAvailability)init
{
  v3 = OBJC_IVAR___WBSManagedFeatureAvailability_rebroadcastedNotifications;
  *(&self->super.isa + v3) = sub_1B852632C(MEMORY[0x1E69E7CC0]);
  v10.receiver = self;
  v10.super_class = WBSManagedFeatureAvailability;
  v4 = [(WBSManagedFeatureAvailability *)&v10 init];
  v5 = *MEMORY[0x1E69ADD68];
  KeyPath = swift_getKeyPath();
  v7 = v4;
  sub_1B8547E2C(v5, @"ManagedFeatureExtensionDiscoveryChanged", KeyPath);

  v8 = swift_getKeyPath();
  sub_1B8547E2C(@"ManagedExtensionsStateDidChange", @"ManagedFeatureExtensionDiscoveryChanged", v8);

  return v7;
}

- (void)handleNotificationWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1B8548288(notificationCopy);
}

@end