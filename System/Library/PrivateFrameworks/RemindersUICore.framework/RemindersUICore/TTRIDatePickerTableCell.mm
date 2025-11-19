@interface TTRIDatePickerTableCell
- (UIDatePicker)datePicker;
- (_TtC15RemindersUICore23TTRIDatePickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)awakeFromNib;
- (void)datePickerDoubleTapped:(id)a3;
- (void)updateConstraints;
@end

@implementation TTRIDatePickerTableCell

- (void)awakeFromNib
{
  v2 = self;
  TTRIDatePickerTableCell.awakeFromNib()();
}

- (void)updateConstraints
{
  v2 = self;
  TTRIDatePickerTableCell.updateConstraints()();
}

- (UIDatePicker)datePicker
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)datePickerDoubleTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_21D720998();

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (_TtC15RemindersUICore23TTRIDatePickerTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return TTRIDatePickerTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

@end