@interface TTRISubtaskListCellTitleViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (_TtC15RemindersUICore38TTRISubtaskListCellTitleViewController)init;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TTRISubtaskListCellTitleViewController

- (_TtC15RemindersUICore38TTRISubtaskListCellTitleViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_21DB652FC();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21DB653C4();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_21DB65798(location, length, v9, v11);

  return length & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21DB6490C(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21DB65B10();
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