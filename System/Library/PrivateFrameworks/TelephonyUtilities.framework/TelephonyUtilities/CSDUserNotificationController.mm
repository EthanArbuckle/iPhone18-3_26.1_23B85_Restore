@interface CSDUserNotificationController
- (CSDUserNotificationController)initWithCallFilterController:(id)controller;
- (void)momentCapturedForStreamToken:(int64_t)token requesterID:(id)d reply:(id)reply;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation CSDUserNotificationController

- (CSDUserNotificationController)initWithCallFilterController:(id)controller
{
  controllerCopy = controller;
  sub_10040F2C0();
  return result;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v8;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_10040FE14();
}

- (void)momentCapturedForStreamToken:(int64_t)token requesterID:(id)d reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_100410478(token, v8, v10, selfCopy, v7);
  _Block_release(v7);
}

@end