@interface FakeCMLiveSkiData
- (NSDate)date;
- (_TtC11WorkoutCore17FakeCMLiveSkiData)init;
- (_TtC11WorkoutCore17FakeCMLiveSkiData)initWithCoder:(id)a3;
- (void)setDate:(id)a3;
@end

@implementation FakeCMLiveSkiData

- (NSDate)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__date;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v9.super.isa;
}

- (void)setDate:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__date;
  swift_beginAccess();
  v10 = *(v5 + 40);
  v11 = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (_TtC11WorkoutCore17FakeCMLiveSkiData)init
{
  Date.init()();
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__distance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__averageSpeed) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__maximumSpeed) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__runCount) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__verticalDescent) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FakeCMLiveSkiData();
  return [(FakeCMLiveSkiData *)&v4 init];
}

- (_TtC11WorkoutCore17FakeCMLiveSkiData)initWithCoder:(id)a3
{
  Date.init()();
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__distance) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__averageSpeed) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__maximumSpeed) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__runCount) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC11WorkoutCore17FakeCMLiveSkiData__verticalDescent) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end