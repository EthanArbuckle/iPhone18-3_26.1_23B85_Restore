@interface AppLimitSchedule
- (_TtC14ScreenTimeCore16AppLimitSchedule)init;
- (_TtC14ScreenTimeCore16AppLimitSchedule)initWithAllowedTime:(double)time schedule:(id)schedule;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppLimitSchedule

- (_TtC14ScreenTimeCore16AppLimitSchedule)initWithAllowedTime:(double)time schedule:(id)schedule
{
  *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_allowedTime) = time;
  *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_schedule) = schedule;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppLimitSchedule();
  scheduleCopy = schedule;
  return [(AppLimitSchedule *)&v7 init];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_schedule);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1B83DDCBC();
  [coderCopy encodeObject:v4 forKey:v6];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_allowedTime);
  v8 = sub_1B83DDCBC();
  [coderCopy encodeDouble:v8 forKey:v7];
}

- (_TtC14ScreenTimeCore16AppLimitSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end