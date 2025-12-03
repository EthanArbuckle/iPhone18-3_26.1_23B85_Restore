@interface BulletinObserver
- (_TtC18usernotificationsd16BulletinObserver)init;
- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens withReply:(id)reply;
@end

@implementation BulletinObserver

- (void)observer:(id)observer addBulletin:(id)bulletin forFeed:(unint64_t)feed playLightsAndSirens:(BOOL)sirens withReply:(id)reply
{
  sirensCopy = sirens;
  v11 = _Block_copy(reply);
  if (v11)
  {
    *(swift_allocObject() + 16) = v11;
    v11 = sub_1000055EC;
  }

  observerCopy = observer;
  bulletinCopy = bulletin;
  selfCopy = self;
  sub_100004BA4(bulletin, sirensCopy, v11);
  sub_1000055A4(v11);
}

- (_TtC18usernotificationsd16BulletinObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end