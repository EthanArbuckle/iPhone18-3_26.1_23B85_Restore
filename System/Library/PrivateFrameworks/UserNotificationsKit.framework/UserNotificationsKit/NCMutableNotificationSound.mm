@interface NCMutableNotificationSound
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlertConfiguration:(id)configuration;
- (void)setControllerAttributes:(id)attributes;
- (void)setRingtoneName:(id)name;
- (void)setSongPath:(id)path;
- (void)setVibrationPattern:(id)pattern;
@end

@implementation NCMutableNotificationSound

- (void)setRingtoneName:(id)name
{
  self->super._ringtoneName = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)setVibrationPattern:(id)pattern
{
  self->super._vibrationPattern = [pattern copy];

  MEMORY[0x2821F96F8]();
}

- (void)setControllerAttributes:(id)attributes
{
  self->super._controllerAttributes = [attributes copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAlertConfiguration:(id)configuration
{
  self->super._alertConfiguration = [configuration copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSongPath:(id)path
{
  self->super._songPath = [path copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationSound alloc];

  return [(NCNotificationSound *)v4 initWithNotificationSound:self];
}

@end