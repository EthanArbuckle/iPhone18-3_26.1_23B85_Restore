@interface StickersAPIService.Worker
- (_TtCV9stickersd18StickersAPIService6Worker)init;
- (void)reindexAllStickers;
- (void)removeStickersWithIdentifiers:(id)a3 withReply:(id)a4;
- (void)upperCaseString:(id)a3 withReply:(id)a4;
@end

@implementation StickersAPIService.Worker

- (_TtCV9stickersd18StickersAPIService6Worker)init
{
  if (qword_100021028 != -1)
  {
    swift_once();
  }

  sub_100001DCC(&qword_100021E68, self + OBJC_IVAR____TtCV9stickersd18StickersAPIService6Worker_store);
  v4.receiver = self;
  v4.super_class = type metadata accessor for StickersAPIService.Worker();
  return [(StickersAPIService.Worker *)&v4 init];
}

- (void)upperCaseString:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_100006570(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)removeStickersWithIdentifiers:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(swift_allocObject() + 16) = v5;
  v7 = self;
  sub_1000059F8(v6, sub_100006900);
}

- (void)reindexAllStickers
{
  v2 = self;
  sub_100006250();
}

@end