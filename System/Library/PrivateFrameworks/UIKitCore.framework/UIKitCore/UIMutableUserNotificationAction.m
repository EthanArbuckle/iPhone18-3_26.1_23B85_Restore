@interface UIMutableUserNotificationAction
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIMutableUserNotificationAction

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UIUserNotificationAction alloc];
  v5 = [(UIUserNotificationAction *)self identifier];
  v6 = [(UIUserNotificationAction *)self title];
  v7 = [(UIUserNotificationAction *)self behavior];
  v8 = [(UIUserNotificationAction *)self parameters];
  v9 = [(UIUserNotificationAction *)self activationMode];
  v10 = [(UIUserNotificationAction *)self isAuthenticationRequired];
  LOBYTE(v13) = [(UIUserNotificationAction *)self isDestructive];
  v11 = [(UIUserNotificationAction *)v4 initWithIdentifier:v5 title:v6 behavior:v7 parameters:v8 activationMode:v9 isAuthenticationRequired:v10 isDestructive:v13];

  return v11;
}

@end