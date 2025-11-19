@interface _UIBaseMenuDidInvalidateNotificationAction
+ (id)action;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIBaseMenuDidInvalidateNotificationAction

+ (id)action
{
  v2 = [[a1 alloc] initWithOriginContext:0 info:0 responder:0];

  return v2;
}

- (void)performActionFromConnection:(id)a3
{
  v6 = a3;
  v3 = _menuBarWindow;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rootViewController];
    [v5 serviceConnectionDidInvalidateMainMenu:v6];
  }
}

@end