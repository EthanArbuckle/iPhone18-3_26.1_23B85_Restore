@interface NCMutableNotificationAlertOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setActiveModeUUID:(id)d;
@end

@implementation NCMutableNotificationAlertOptions

- (void)setActiveModeUUID:(id)d
{
  self->super._activeModeUUID = [d copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationAlertOptions alloc];

  return [(NCNotificationAlertOptions *)v4 initWithNotificationAlertOptions:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationAlertOptions alloc];

  return [(NCNotificationAlertOptions *)v4 initWithNotificationAlertOptions:self];
}

@end