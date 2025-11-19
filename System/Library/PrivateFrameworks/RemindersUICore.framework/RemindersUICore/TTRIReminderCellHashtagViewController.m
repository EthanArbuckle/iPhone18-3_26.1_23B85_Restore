@interface TTRIReminderCellHashtagViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (_TtC15RemindersUICore37TTRIReminderCellHashtagViewController)init;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation TTRIReminderCellHashtagViewController

- (_TtC15RemindersUICore37TTRIReminderCellHashtagViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_21D63A0FC(v4);

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D63A270(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D63A498(v4);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D63A68C(v4);
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D63A97C();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_21D63ABE4(v12, location, length, v9, v11);

  return length & 1;
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