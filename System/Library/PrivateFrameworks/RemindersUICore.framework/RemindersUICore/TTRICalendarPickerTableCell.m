@interface TTRICalendarPickerTableCell
- (NSArray)accessibilityElements;
- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithCoder:(id)a3;
- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRICalendarPickerTableCell

- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRICalendarPickerTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (NSArray)accessibilityElements
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore27TTRICalendarPickerTableCell_datePicker);
  *(v3 + 56) = sub_21D0D8CF0(0, &qword_27CE60890);
  *(v3 + 32) = v4;
  v5 = v4;
  v6 = sub_21DBFA5DC();

  return v6;
}

@end