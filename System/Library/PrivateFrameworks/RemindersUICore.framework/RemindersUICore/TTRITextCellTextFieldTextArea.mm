@interface TTRITextCellTextFieldTextArea
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (_TtC15RemindersUICore29TTRITextCellTextFieldTextArea)init;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
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
    v6 = self;
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

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v5 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 48);
    v8 = a3;
    v9 = self;
    v7();
    swift_unknownObjectRelease();
  }

  return 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  sub_21DBFA16C();
  v6 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    swift_getObjectType();
    v8 = *(v7 + 16);
    v9 = self;
    v10 = v8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = self;
  v5 = self + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v10 = a3;
    v11 = v4;
    goto LABEL_5;
  }

  v6 = *(v5 + 1);
  swift_getObjectType();
  v7 = *(v6 + 32);
  v8 = a3;
  v9 = v4;
  LOBYTE(v6) = v7();
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
LABEL_5:
    [a3 resignFirstResponder];
    goto LABEL_6;
  }

  a3 = v8;
  v4 = v9;
LABEL_6:

  return 0;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  TTRITextCellTextFieldTextArea.textFieldDidEndEditing(_:)(v4);
}

@end