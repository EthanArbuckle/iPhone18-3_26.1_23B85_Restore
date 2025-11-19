@interface PushNotificationServer
- (_TtC15VisionCompanion22PushNotificationServer)init;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
@end

@implementation PushNotificationServer

- (_TtC15VisionCompanion22PushNotificationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = sub_2330F1E00();
  v10 = v9;

  sub_2330EEED0(v8, v10);
  sub_2330B52A8(v8, v10);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2330EF268(v7);
}

@end