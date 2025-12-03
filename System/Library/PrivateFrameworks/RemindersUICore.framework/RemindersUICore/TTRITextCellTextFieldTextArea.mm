@interface TTRITextCellTextFieldTextArea
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtC15RemindersUICore29TTRITextCellTextFieldTextArea)init;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textFieldEditingChanged;
@end

@implementation TTRITextCellTextFieldTextArea

- (void)textFieldEditingChanged
{
  v3 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 24);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC15RemindersUICore29TTRITextCellTextFieldTextArea)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  v5 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 48);
    editingCopy = editing;
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  sub_21DBFA16C();
  v6 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 16);
    selfCopy = self;
    v10 = v8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  v5 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    returnCopy = return;
    v11 = selfCopy;
    goto LABEL_5;
  }

  v6 = *(v5 + 1);
  swift_getObjectType();
  v7 = *(v6 + 32);
  returnCopy2 = return;
  v9 = selfCopy;
  LOBYTE(v6) = v7();
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
LABEL_5:
    [return resignFirstResponder];
    goto LABEL_6;
  }

  return = returnCopy2;
  selfCopy = v9;
LABEL_6:

  return 0;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  TTRITextCellTextFieldTextArea.textFieldDidEndEditing(_:)(editingCopy);
}

@end