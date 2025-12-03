@interface UIMutableUserNotificationAction
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIMutableUserNotificationAction

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIUserNotificationAction alloc];
  identifier = [(UIUserNotificationAction *)self identifier];
  title = [(UIUserNotificationAction *)self title];
  behavior = [(UIUserNotificationAction *)self behavior];
  parameters = [(UIUserNotificationAction *)self parameters];
  activationMode = [(UIUserNotificationAction *)self activationMode];
  isAuthenticationRequired = [(UIUserNotificationAction *)self isAuthenticationRequired];
  LOBYTE(v13) = [(UIUserNotificationAction *)self isDestructive];
  v11 = [(UIUserNotificationAction *)v4 initWithIdentifier:identifier title:title behavior:behavior parameters:parameters activationMode:activationMode isAuthenticationRequired:isAuthenticationRequired isDestructive:v13];

  return v11;
}

@end