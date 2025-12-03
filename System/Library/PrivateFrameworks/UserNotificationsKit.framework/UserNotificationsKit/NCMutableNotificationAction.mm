@interface NCMutableNotificationAction
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBehaviorParameters:(id)parameters;
- (void)setIconImageBundlePath:(id)path;
- (void)setIconImageName:(id)name;
- (void)setIdentifier:(id)identifier;
- (void)setLaunchBundleID:(id)d;
- (void)setLaunchURL:(id)l;
- (void)setTitle:(id)title;
@end

@implementation NCMutableNotificationAction

- (void)setIdentifier:(id)identifier
{
  self->super._identifier = [identifier copy];

  MEMORY[0x2821F96F8]();
}

- (void)setTitle:(id)title
{
  self->super._title = [title copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIconImageName:(id)name
{
  self->super._iconImageName = [name copy];

  MEMORY[0x2821F96F8]();
}

- (void)setIconImageBundlePath:(id)path
{
  self->super._iconImageBundlePath = [path copy];

  MEMORY[0x2821F96F8]();
}

- (void)setLaunchURL:(id)l
{
  self->super._launchURL = [l copy];

  MEMORY[0x2821F96F8]();
}

- (void)setLaunchBundleID:(id)d
{
  self->super._launchBundleID = [d copy];

  MEMORY[0x2821F96F8]();
}

- (void)setBehaviorParameters:(id)parameters
{
  self->super._behaviorParameters = [parameters copy];

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCNotificationAction alloc];

  return [(NCNotificationAction *)v4 initWithNotificationAction:self];
}

@end