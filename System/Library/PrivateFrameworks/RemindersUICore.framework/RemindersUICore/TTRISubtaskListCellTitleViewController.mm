@interface TTRISubtaskListCellTitleViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (_TtC15RemindersUICore38TTRISubtaskListCellTitleViewController)init;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation TTRISubtaskListCellTitleViewController

- (_TtC15RemindersUICore38TTRISubtaskListCellTitleViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_21DB652FC();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21DB653C4();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_21DB65798(location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21DB6490C(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21DB65B10();
}

- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_21D0D8CF0(0, &qword_27CE5DE90);
  v8 = sub_21DBFA5EC();
  type metadata accessor for TTRIReminderTitleTextView();
  if (swift_dynamicCastClass())
  {
    v9 = a3;
    v10 = sub_21D6C40EC(location, length, v8);
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

@end