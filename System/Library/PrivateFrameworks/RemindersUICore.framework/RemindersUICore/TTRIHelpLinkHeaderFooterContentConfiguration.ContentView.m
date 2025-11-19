@interface TTRIHelpLinkHeaderFooterContentConfiguration.ContentView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5;
- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithCoder:(id)a3;
- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithFrame:(CGRect)a3;
@end

@implementation TTRIHelpLinkHeaderFooterContentConfiguration.ContentView

- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView_textViewConstraints) = 0;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5
{
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF546C();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_21DBECED8();

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end