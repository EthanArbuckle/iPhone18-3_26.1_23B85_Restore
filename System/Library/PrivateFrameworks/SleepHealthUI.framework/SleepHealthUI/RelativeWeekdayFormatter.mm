@interface RelativeWeekdayFormatter
- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)init;
- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)initWithCoder:(id)coder;
- (id)stringFromDate:(id)date;
@end

@implementation RelativeWeekdayFormatter

- (id)stringFromDate:(id)date
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97540();
  selfCopy = self;
  sub_269D14ACC(v7);

  (*(v5 + 8))(v7, v4);
  v9 = sub_269D9A5F0();

  return v9;
}

- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for RelativeWeekdayFormatter();
  return [(RelativeWeekdayFormatter *)&v3 init];
}

- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RelativeWeekdayFormatter();
  coderCopy = coder;
  v5 = [(RelativeWeekdayFormatter *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end