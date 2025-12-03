@interface TTRIDatePickerTableCell
- (UIDatePicker)datePicker;
- (_TtC15RemindersUICore23TTRIDatePickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)awakeFromNib;
- (void)datePickerDoubleTapped:(id)tapped;
- (void)updateConstraints;
@end

@implementation TTRIDatePickerTableCell

- (void)awakeFromNib
{
  selfCopy = self;
  TTRIDatePickerTableCell.awakeFromNib()();
}

- (void)updateConstraints
{
  selfCopy = self;
  TTRIDatePickerTableCell.updateConstraints()();
}

- (UIDatePicker)datePicker
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)datePickerDoubleTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_21D720998();

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (_TtC15RemindersUICore23TTRIDatePickerTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return TTRIDatePickerTableCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

@end