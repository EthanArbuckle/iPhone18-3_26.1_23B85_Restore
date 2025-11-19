@interface TTRIReminderCellNotesViewController
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (BOOL)textViewShouldBeginEditing:(id)a3;
- (_TtC15RemindersUICore35TTRIReminderCellNotesViewController)init;
- (id)textView:(id)a3 editMenuForTextInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation TTRIReminderCellNotesViewController

- (_TtC15RemindersUICore35TTRIReminderCellNotesViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textViewShouldBeginEditing:(id)a3
{
  v3 = (*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  if (*v3)
  {
    v6 = v3[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = a3;
    v10 = self;
    v8(v9, &protocol witness table for UITextView, ObjectType, v6);
  }

  return 1;
}

- (void)textViewDidBeginEditing:(id)a3
{
  v6 = self;
  sub_21D596D1C();
  v3 = *(&v6->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 textStorage];
    NSMutableAttributedString.clearLinks()();
  }

  else
  {
    __break(1u);
  }
}

- (void)textViewDidChangeSelection:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (v3)
  {
    v5 = self;
    v4 = v3;
    sub_21D6C3DE8();
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = sub_21DBFA16C();
  v11 = v10;
  v12 = a3;
  v13 = self;
  sub_21D58F968(v12, location, length, v9, v11);
  LOBYTE(length) = v14;

  return length & 1;
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D58FFE0(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = (*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    v8 = a3;
    v9 = self;
    v7(v8, &protocol witness table for UITextView, ObjectType, v5);
  }

  else
  {
    v10 = a3;
    v11 = self;
  }

  sub_21D596FAC();
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF546C();
  (*(v6 + 8))(v8, v5);
  return 1;
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