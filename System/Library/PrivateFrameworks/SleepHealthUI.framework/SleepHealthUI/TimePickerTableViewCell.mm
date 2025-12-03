@interface TimePickerTableViewCell
- (NSString)description;
- (_TtC13SleepHealthUI23TimePickerTableViewCell)initWithCoder:(id)coder;
- (_TtC13SleepHealthUI23TimePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TimePickerTableViewCell

- (_TtC13SleepHealthUI23TimePickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v6 = sub_269D9A630();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_269CF06D4(style, v6, v8);

  return v9;
}

- (_TtC13SleepHealthUI23TimePickerTableViewCell)initWithCoder:(id)coder
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell_item;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13SleepHealthUI23TimePickerTableViewCell____lazy_storage___timePicker) = 0;
  result = sub_269D9B100();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  sub_269CF0A98();

  v3 = sub_269D9A5F0();

  return v3;
}

@end