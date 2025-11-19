@interface NCMutableNotificationSound
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlertConfiguration:(id)a3;
- (void)setControllerAttributes:(id)a3;
- (void)setRingtoneName:(id)a3;
- (void)setSongPath:(id)a3;
- (void)setVibrationPattern:(id)a3;
@end

@implementation NCMutableNotificationSound

- (void)setRingtoneName:(id)a3
{
  self->super._ringtoneName = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setVibrationPattern:(id)a3
{
  self->super._vibrationPattern = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setControllerAttributes:(id)a3
{
  self->super._controllerAttributes = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setAlertConfiguration:(id)a3
{
  self->super._alertConfiguration = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setSongPath:(id)a3
{
  self->super._songPath = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationSound alloc];

  return [(NCNotificationSound *)v4 initWithNotificationSound:self];
}

@end