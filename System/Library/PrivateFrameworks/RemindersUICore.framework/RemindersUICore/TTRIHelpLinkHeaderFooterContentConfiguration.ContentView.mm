@interface TTRIHelpLinkHeaderFooterContentConfiguration.ContentView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range;
- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithCoder:(id)coder;
- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithFrame:(CGRect)frame;
@end

@implementation TTRIHelpLinkHeaderFooterContentConfiguration.ContentView

- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView_textViewConstraints) = 0;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range
{
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF546C();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_21DBECED8();

  (*(v8 + 8))(v10, v7);
  return self & 1;
}

- (_TtCV15RemindersUICore44TTRIHelpLinkHeaderFooterContentConfigurationP33_2108835FC8B9BCCAF061C8AA871EA9D611ContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end