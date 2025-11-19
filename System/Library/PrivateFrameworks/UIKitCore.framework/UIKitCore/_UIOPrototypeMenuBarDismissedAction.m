@interface _UIOPrototypeMenuBarDismissedAction
+ (id)action;
- (void)handleClientActionToOverlayService:(id)a3;
@end

@implementation _UIOPrototypeMenuBarDismissedAction

+ (id)action
{
  v2 = [[a1 alloc] initWithInfo:0 responder:0];

  return v2;
}

- (void)handleClientActionToOverlayService:(id)a3
{
  v3 = a3;
  v4 = +[_UIOPrototypeMenuBarService sharedService];
  [v4 prototypeMenuBarDidDismissForOverlayService:v3];
}

@end