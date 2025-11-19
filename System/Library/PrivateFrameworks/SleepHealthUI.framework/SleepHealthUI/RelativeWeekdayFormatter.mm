@interface RelativeWeekdayFormatter
- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)init;
- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)initWithCoder:(id)a3;
- (id)stringFromDate:(id)a3;
@end

@implementation RelativeWeekdayFormatter

- (id)stringFromDate:(id)a3
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97540();
  v8 = self;
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

- (_TtC13SleepHealthUI24RelativeWeekdayFormatter)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___relativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___nonRelativeDateFormatter) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI24RelativeWeekdayFormatter____lazy_storage___weekdayFormatter) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for RelativeWeekdayFormatter();
  v4 = a3;
  v5 = [(RelativeWeekdayFormatter *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end