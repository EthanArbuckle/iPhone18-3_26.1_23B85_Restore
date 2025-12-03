@interface EmptyViewController
- (_TtC13TranslationUI19EmptyViewController)init;
- (_TtC13TranslationUI19EmptyViewController)initWithCoder:(id)coder;
- (_TtC13TranslationUI19EmptyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation EmptyViewController

- (_TtC13TranslationUI19EmptyViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmptyViewController();
  return [(EmptyViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC13TranslationUI19EmptyViewController)initWithCoder:(id)coder
{
  result = sub_26F4A0238();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x277D75D18]);
  selfCopy = self;
  initWithFrame_ = [v3 initWithFrame_];
  [(EmptyViewController *)selfCopy setView:initWithFrame_];
}

- (_TtC13TranslationUI19EmptyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end