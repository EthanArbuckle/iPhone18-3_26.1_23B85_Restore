@interface TTRIReminderCellHashtagViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (_TtC15RemindersUICore37TTRIReminderCellHashtagViewController)init;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TTRIReminderCellHashtagViewController

- (_TtC15RemindersUICore37TTRIReminderCellHashtagViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_21D63A0FC(editingCopy);

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21D63A270(editingCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21D63A498(editingCopy);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21D63A68C(changeCopy);
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_21D63A97C();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_21D63ABE4(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions
{
  length = range.length;
  location = range.location;
  sub_21D0D8CF0(0, &qword_27CE5DE90);
  v8 = sub_21DBFA5EC();
  type metadata accessor for TTRIReminderTitleTextView();
  if (swift_dynamicCastClass())
  {
    viewCopy = view;
    v10 = sub_21D6C40EC(location, length, v8);
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

@end