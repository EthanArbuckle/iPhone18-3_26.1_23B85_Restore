@interface WTAlertHeaderViewController
- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithCoder:(id)coder;
- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithImage:(id)image;
- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation WTAlertHeaderViewController

- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithImage:(id)image
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_image) = image;
  v6.receiver = self;
  v6.super_class = type metadata accessor for WTAlertHeaderViewController();
  imageCopy = image;
  return [(WTAlertHeaderViewController *)&v6 initWithNibName:0 bundle:0];
}

- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14WritingToolsUI27WTAlertHeaderViewController_imageView) = 0;
  result = sub_1D455570C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D454ABA8();
}

- (_TtC14WritingToolsUI27WTAlertHeaderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end