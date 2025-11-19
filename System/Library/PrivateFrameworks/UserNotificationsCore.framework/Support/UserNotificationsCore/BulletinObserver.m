@interface BulletinObserver
- (_TtC18usernotificationsd16BulletinObserver)init;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7;
@end

@implementation BulletinObserver

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7
{
  v7 = a6;
  v11 = _Block_copy(a7);
  if (v11)
  {
    *(swift_allocObject() + 16) = v11;
    v11 = sub_1000055EC;
  }

  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100004BA4(a4, v7, v11);
  sub_1000055A4(v11);
}

- (_TtC18usernotificationsd16BulletinObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end