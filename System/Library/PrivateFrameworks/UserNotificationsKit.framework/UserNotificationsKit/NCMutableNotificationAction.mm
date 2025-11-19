@interface NCMutableNotificationAction
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBehaviorParameters:(id)a3;
- (void)setIconImageBundlePath:(id)a3;
- (void)setIconImageName:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLaunchBundleID:(id)a3;
- (void)setLaunchURL:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation NCMutableNotificationAction

- (void)setIdentifier:(id)a3
{
  self->super._identifier = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setTitle:(id)a3
{
  self->super._title = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIconImageName:(id)a3
{
  self->super._iconImageName = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIconImageBundlePath:(id)a3
{
  self->super._iconImageBundlePath = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setLaunchURL:(id)a3
{
  self->super._launchURL = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setLaunchBundleID:(id)a3
{
  self->super._launchBundleID = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (void)setBehaviorParameters:(id)a3
{
  self->super._behaviorParameters = [a3 copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NCNotificationAction alloc];

  return [(NCNotificationAction *)v4 initWithNotificationAction:self];
}

@end