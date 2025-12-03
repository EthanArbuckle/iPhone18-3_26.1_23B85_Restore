@interface _PMTextFieldWithSuggestions.Coordinator
- (BOOL)textFieldShouldReturn:(id)return;
- (_TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator)init;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidChangeSelection:(void *)selection;
@end

@implementation _PMTextFieldWithSuggestions.Coordinator

- (void)textFieldDidChangeSelection:(void *)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_21CA096E8(selectionCopy);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = *&self->textField[OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 72];
  v3 = *&self->textField[OBJC_IVAR____TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator_textField + 80];
  selfCopy = self;

  v4(v6);

  return 1;
}

- (void)textFieldDidChange:(id)change
{
  v4 = sub_21CB807E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();
  selfCopy = self;
  sub_21CA09400();

  (*(v5 + 8))(v8, v4);
}

- (_TtCV17PasswordManagerUIP33_CF5DA52F57BDE60542A548C59C33D5C827_PMTextFieldWithSuggestions11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end