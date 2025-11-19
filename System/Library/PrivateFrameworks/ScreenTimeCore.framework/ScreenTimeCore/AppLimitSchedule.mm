@interface AppLimitSchedule
- (_TtC14ScreenTimeCore16AppLimitSchedule)init;
- (_TtC14ScreenTimeCore16AppLimitSchedule)initWithAllowedTime:(double)a3 schedule:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AppLimitSchedule

- (_TtC14ScreenTimeCore16AppLimitSchedule)initWithAllowedTime:(double)a3 schedule:(id)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_allowedTime) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_schedule) = a4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AppLimitSchedule();
  v5 = a4;
  return [(AppLimitSchedule *)&v7 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_schedule);
  v5 = a3;
  v9 = self;
  v6 = sub_1B83DDCBC();
  [v5 encodeObject:v4 forKey:v6];

  v7 = *(&v9->super.isa + OBJC_IVAR____TtC14ScreenTimeCore16AppLimitSchedule_allowedTime);
  v8 = sub_1B83DDCBC();
  [v5 encodeDouble:v8 forKey:v7];
}

- (_TtC14ScreenTimeCore16AppLimitSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end