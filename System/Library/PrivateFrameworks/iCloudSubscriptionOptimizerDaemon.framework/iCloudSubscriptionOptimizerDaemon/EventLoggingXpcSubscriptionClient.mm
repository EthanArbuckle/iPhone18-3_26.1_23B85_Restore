@interface EventLoggingXpcSubscriptionClient
- (void)request:(id)a3 withReply:(id)a4;
@end

@implementation EventLoggingXpcSubscriptionClient

- (void)request:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;

  EventLoggingXpcSubscriptionClient.request(_:withReply:)(v7, sub_275B2DAB0, v6);
}

@end