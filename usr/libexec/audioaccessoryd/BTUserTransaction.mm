@interface BTUserTransaction
- (NSString)description;
- (_TtC15audioaccessoryd17BTUserTransaction)init;
@end

@implementation BTUserTransaction

- (_TtC15audioaccessoryd17BTUserTransaction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v8 = *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name);
  v9 = *&self->name[OBJC_IVAR____TtC15audioaccessoryd17BTUserTransaction_name];

  v3 = self;
  sub_1000EE870(&qword_1002F94C0, qword_100227A98);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

@end