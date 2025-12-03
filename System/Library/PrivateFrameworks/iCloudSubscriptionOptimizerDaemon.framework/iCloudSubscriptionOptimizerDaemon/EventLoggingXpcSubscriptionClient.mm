@interface EventLoggingXpcSubscriptionClient
- (void)request:(id)request withReply:(id)reply;
@end

@implementation EventLoggingXpcSubscriptionClient

- (void)request:(id)request withReply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  requestCopy = request;

  EventLoggingXpcSubscriptionClient.request(_:withReply:)(requestCopy, sub_275B2DAB0, v6);
}

@end