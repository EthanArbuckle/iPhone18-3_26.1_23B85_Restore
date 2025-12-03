@interface Downtime
- (BOOL)isEqual:(id)equal;
- (NSArray)schedules;
- (_TtC14ScreenTimeCore8Downtime)init;
- (_TtC14ScreenTimeCore8Downtime)initWithBlockAtLimit:(BOOL)limit scheduleEnabled:(BOOL)enabled schedules:(id)schedules;
- (id)setWithBlockAtLimit:(BOOL)limit;
- (id)setWithSchedule:(id)schedule;
- (id)setWithScheduleEnabled:(BOOL)enabled;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation Downtime

- (NSArray)schedules
{
  v2 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules);
  type metadata accessor for Schedule();

  v3 = sub_1B83DDDCC();

  return v3;
}

- (_TtC14ScreenTimeCore8Downtime)initWithBlockAtLimit:(BOOL)limit scheduleEnabled:(BOOL)enabled schedules:(id)schedules
{
  type metadata accessor for Schedule();
  v8 = sub_1B83DDDDC();
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_blockAtLimit) = limit;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_scheduleEnabled) = enabled;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules) = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for Downtime();
  return [(Downtime *)&v10 init];
}

- (id)setWithBlockAtLimit:(BOOL)limit
{
  v4 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_scheduleEnabled);
  v5 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules);
  v6 = type metadata accessor for Downtime();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC14ScreenTimeCore8Downtime_blockAtLimit] = limit;
  v7[OBJC_IVAR____TtC14ScreenTimeCore8Downtime_scheduleEnabled] = v4;
  *&v7[OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v8 = [(Downtime *)&v10 init];

  return v8;
}

- (id)setWithScheduleEnabled:(BOOL)enabled
{
  v4 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_blockAtLimit);
  v5 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules);
  v6 = type metadata accessor for Downtime();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC14ScreenTimeCore8Downtime_blockAtLimit] = v4;
  v7[OBJC_IVAR____TtC14ScreenTimeCore8Downtime_scheduleEnabled] = enabled;
  *&v7[OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules] = v5;
  v10.receiver = v7;
  v10.super_class = v6;

  v8 = [(Downtime *)&v10 init];

  return v8;
}

- (id)setWithSchedule:(id)schedule
{
  scheduleCopy = schedule;
  selfCopy = self;
  v6 = sub_1B83A6640(scheduleCopy);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B83A6934(coderCopy);
}

- (int64_t)hash
{
  v3 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Downtime_schedules);
  type metadata accessor for Schedule();
  sub_1B83A7AE8(&qword_1EBA84980);
  selfCopy = self;
  v5 = sub_1B83DDE0C();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B83A6DA4(v8);

  sub_1B83A5890(v8);
  return v6 & 1;
}

- (_TtC14ScreenTimeCore8Downtime)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end