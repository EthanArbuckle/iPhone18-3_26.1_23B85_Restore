@interface EmptyViewController
- (_TtC13TranslationUI19EmptyViewController)init;
- (_TtC13TranslationUI19EmptyViewController)initWithCoder:(id)a3;
- (_TtC13TranslationUI19EmptyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation EmptyViewController

- (_TtC13TranslationUI19EmptyViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmptyViewController();
  return [(EmptyViewController *)&v3 initWithNibName:0 bundle:0];
}

- (_TtC13TranslationUI19EmptyViewController)initWithCoder:(id)a3
{
  result = sub_26F4A0238();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v5 = self;
  v4 = [v3 initWithFrame_];
  [(EmptyViewController *)v5 setView:v4];
}

- (_TtC13TranslationUI19EmptyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end