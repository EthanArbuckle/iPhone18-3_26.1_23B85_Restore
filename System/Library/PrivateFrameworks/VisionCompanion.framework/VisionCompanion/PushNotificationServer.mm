@interface PushNotificationServer
- (_TtC15VisionCompanion22PushNotificationServer)init;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
@end

@implementation PushNotificationServer

- (_TtC15VisionCompanion22PushNotificationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  selfCopy = self;
  v8 = sub_2330F1E00();
  v10 = v9;

  sub_2330EEED0(v8, v10);
  sub_2330B52A8(v8, v10);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  selfCopy = self;
  sub_2330EF268(messageCopy);
}

@end