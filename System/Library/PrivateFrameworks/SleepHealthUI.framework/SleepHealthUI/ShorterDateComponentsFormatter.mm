@interface ShorterDateComponentsFormatter
- (_TtC13SleepHealthUI30ShorterDateComponentsFormatter)init;
- (_TtC13SleepHealthUI30ShorterDateComponentsFormatter)initWithCoder:(id)coder;
- (id)stringFromTimeInterval:(double)interval;
@end

@implementation ShorterDateComponentsFormatter

- (_TtC13SleepHealthUI30ShorterDateComponentsFormatter)initWithCoder:(id)coder
{
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (id)stringFromTimeInterval:(double)interval
{
  v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  selfCopy = self;
  initWithDouble_ = [v5 initWithDouble_];
  swift_beginAccess();
  v8 = HKTimePeriodString();

  if (v8)
  {
    sub_269D9A630();

    v9 = sub_269D9A5F0();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (_TtC13SleepHealthUI30ShorterDateComponentsFormatter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end