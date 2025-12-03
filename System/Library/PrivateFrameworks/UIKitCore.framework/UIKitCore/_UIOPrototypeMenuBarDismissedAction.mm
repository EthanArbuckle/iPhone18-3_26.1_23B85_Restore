@interface _UIOPrototypeMenuBarDismissedAction
+ (id)action;
- (void)handleClientActionToOverlayService:(id)service;
@end

@implementation _UIOPrototypeMenuBarDismissedAction

+ (id)action
{
  v2 = [[self alloc] initWithInfo:0 responder:0];

  return v2;
}

- (void)handleClientActionToOverlayService:(id)service
{
  serviceCopy = service;
  v4 = +[_UIOPrototypeMenuBarService sharedService];
  [v4 prototypeMenuBarDidDismissForOverlayService:serviceCopy];
}

@end