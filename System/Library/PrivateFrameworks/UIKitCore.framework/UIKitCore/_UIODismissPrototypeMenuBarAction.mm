@interface _UIODismissPrototypeMenuBarAction
+ (id)action;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIODismissPrototypeMenuBarAction

+ (id)action
{
  v2 = [[self alloc] initWithOriginContext:0 info:0 responder:0];

  return v2;
}

- (void)performActionFromConnection:(id)connection
{
  v3 = _menuBarWindow;
  connectionCopy = connection;
  rootViewController = [v3 rootViewController];
  [rootViewController serviceConnectionDidRequestDismissal:connectionCopy];
}

@end