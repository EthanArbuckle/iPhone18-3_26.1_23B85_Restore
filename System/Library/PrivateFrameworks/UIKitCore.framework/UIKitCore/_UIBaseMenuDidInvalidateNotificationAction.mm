@interface _UIBaseMenuDidInvalidateNotificationAction
+ (id)action;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIBaseMenuDidInvalidateNotificationAction

+ (id)action
{
  v2 = [[self alloc] initWithOriginContext:0 info:0 responder:0];

  return v2;
}

- (void)performActionFromConnection:(id)connection
{
  connectionCopy = connection;
  v3 = _menuBarWindow;
  v4 = v3;
  if (v3)
  {
    rootViewController = [v3 rootViewController];
    [rootViewController serviceConnectionDidInvalidateMainMenu:connectionCopy];
  }
}

@end