@interface PFNotificationSettings
- (PFNotificationSettings)init;
@end

@implementation PFNotificationSettings

- (PFNotificationSettings)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PFNotificationSettings *)&v3 init];
}

@end