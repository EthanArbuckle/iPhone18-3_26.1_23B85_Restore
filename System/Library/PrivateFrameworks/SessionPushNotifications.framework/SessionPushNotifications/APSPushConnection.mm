@interface APSPushConnection
- (_TtC24SessionPushNotifications17APSPushConnection)init;
- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info;
@end

@implementation APSPushConnection

- (_TtC24SessionPushNotifications17APSPushConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  if (token)
  {
    connectionCopy = connection;
    selfCopy = self;
    tokenCopy = token;
    v9 = sub_22CE858A4();
    v11 = v10;
  }

  else
  {
    connectionCopy2 = connection;
    selfCopy2 = self;
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  sub_22CE6FC58(v9, v11);
  sub_22CE70B40(v9, v11);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_22CE6FE2C(message);
}

- (void)connection:(id)connection didReceiveToken:(id)token forInfo:(id)info
{
  if (token)
  {
    connectionCopy = connection;
    infoCopy = info;
    selfCopy = self;
    tokenCopy = token;
    v12 = sub_22CE858A4();
    v14 = v13;
  }

  else
  {
    connectionCopy2 = connection;
    infoCopy2 = info;
    selfCopy2 = self;
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  sub_22CE70160(v12, v14, info);
  sub_22CE70B40(v12, v14);
}

- (void)connection:(id)connection channelSubscriptionsFailedWithFailures:(id)failures
{
  failuresCopy = failures;
  if (failures)
  {
    sub_22CE70DD4();
    failuresCopy = sub_22CE85F34();
  }

  connectionCopy = connection;
  selfCopy = self;
  sub_22CE70658(failuresCopy);
}

@end