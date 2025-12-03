@interface CarSessionProvider
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CarSessionProvider

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;

  sub_2697AF47C(connectCopy);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;

  sub_2697AF6AC();
}

@end