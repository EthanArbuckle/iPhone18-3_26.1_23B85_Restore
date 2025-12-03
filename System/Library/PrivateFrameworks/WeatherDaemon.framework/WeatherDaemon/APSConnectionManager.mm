@interface APSConnectionManager
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation APSConnectionManager

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    v8 = tokenCopy;
    tokenCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  sub_100006C64(tokenCopy, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_10007260C();
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  if (failures)
  {
    sub_100030944(0, &qword_1000A5B88, APSChannelSubscriptionFailure_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_100072D30();
}

@end