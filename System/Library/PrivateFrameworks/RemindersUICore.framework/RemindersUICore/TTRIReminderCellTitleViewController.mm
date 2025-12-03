@interface TTRIReminderCellTitleViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (_TtC15RemindersUICore35TTRIReminderCellTitleViewController)init;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TTRIReminderCellTitleViewController

- (_TtC15RemindersUICore35TTRIReminderCellTitleViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = sub_21D58E288();

  return self & 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21D58E348();
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_21D58E5C4();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  sub_21D58D470(viewCopy, location, length, v9, v11);
  LOBYTE(length) = v14;

  return length & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21D58D9EC(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_21D58E6C0();
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF546C();
  (*(v6 + 8))(v8, v5);
  return 1;
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