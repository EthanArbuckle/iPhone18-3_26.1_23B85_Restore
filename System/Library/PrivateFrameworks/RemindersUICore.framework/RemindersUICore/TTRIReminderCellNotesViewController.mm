@interface TTRIReminderCellNotesViewController
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (BOOL)textViewShouldBeginEditing:(id)editing;
- (_TtC15RemindersUICore35TTRIReminderCellNotesViewController)init;
- (id)textView:(id)view editMenuForTextInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation TTRIReminderCellNotesViewController

- (_TtC15RemindersUICore35TTRIReminderCellNotesViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)editing
{
  v3 = (*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  if (*v3)
  {
    v6 = v3[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    editingCopy = editing;
    selfCopy = self;
    v8(editingCopy, &protocol witness table for UITextView, ObjectType, v6);
  }

  return 1;
}

- (void)textViewDidBeginEditing:(id)editing
{
  selfCopy = self;
  sub_21D596D1C();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (v3)
  {
    v4 = v3;
    textStorage = [v4 textStorage];
    NSMutableAttributedString.clearLinks()();
  }

  else
  {
    __break(1u);
  }
}

- (void)textViewDidChangeSelection:(id)selection
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (v3)
  {
    selfCopy = self;
    v4 = v3;
    sub_21D6C3DE8();
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  sub_21D58F968(viewCopy, location, length, v9, v11);
  LOBYTE(length) = v14;

  return length & 1;
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_21D58FFE0(changeCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  v4 = (*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    editingCopy = editing;
    selfCopy = self;
    v7(editingCopy, &protocol witness table for UITextView, ObjectType, v5);
  }

  else
  {
    editingCopy2 = editing;
    selfCopy2 = self;
  }

  sub_21D596FAC();
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