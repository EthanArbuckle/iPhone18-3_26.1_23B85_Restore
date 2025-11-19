@interface CSDUserNotificationController
- (CSDUserNotificationController)initWithCallFilterController:(id)a3;
- (void)momentCapturedForStreamToken:(int64_t)a3 requesterID:(id)a4 reply:(id)a5;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation CSDUserNotificationController

- (CSDUserNotificationController)initWithCallFilterController:(id)a3
{
  v3 = a3;
  sub_10040F2C0();
  return result;
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10040FE14();
}

- (void)momentCapturedForStreamToken:(int64_t)a3 requesterID:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_100410478(a3, v8, v10, v11, v7);
  _Block_release(v7);
}

@end