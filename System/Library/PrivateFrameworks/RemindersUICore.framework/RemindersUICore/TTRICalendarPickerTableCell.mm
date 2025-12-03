@interface TTRICalendarPickerTableCell
- (NSArray)accessibilityElements;
- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithCoder:(id)coder;
- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRICalendarPickerTableCell

- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRICalendarPickerTableCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (_TtC15RemindersUICore27TTRICalendarPickerTableCell)initWithCoder:(id)coder
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