@interface WTAlertHeaderViewController
- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithCoder:(id)a3;
- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithImage:(id)a3;
- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation WTAlertHeaderViewController

- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithImage:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_image) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for WTAlertHeaderViewController();
  v4 = a3;
  return [(WTAlertHeaderViewController *)&v6 initWithNibName:0 bundle:0];
}

- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView) = 0;
  result = sub_1D455570C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D454ABA8();
}

- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end