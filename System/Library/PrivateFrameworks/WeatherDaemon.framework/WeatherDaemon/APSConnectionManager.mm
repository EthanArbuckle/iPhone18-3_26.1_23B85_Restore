@interface APSConnectionManager
- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation APSConnectionManager

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v11 = a3;
    v12 = self;
    v10 = 0xF000000000000000;
  }

  sub_100006C64(v4, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10007260C();
}

- (void)connection:(id)a3 channelSubscriptionsFailedWithFailures:(id)a4
{
  if (a4)
  {
    sub_100030944(0, &qword_1000A5B88, APSChannelSubscriptionFailure_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  sub_100072D30();
}

@end