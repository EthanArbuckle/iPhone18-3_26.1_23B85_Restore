@interface ZStackContainerViewController
- (_TtC14WidgetRenderer29ZStackContainerViewController)init;
- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithCoder:(id)a3;
- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_childViewControllersForAlwaysOnTimelines;
- (void)loadView;
@end

@implementation ZStackContainerViewController

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for TouchPassThroughView());
  v5 = self;
  v4 = [v3 init];
  [(ZStackContainerViewController *)v5 setView:v4];
}

- (_TtC14WidgetRenderer29ZStackContainerViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ZStackContainerViewController();
  return [(ZStackContainerViewController *)&v3 initWithNibName:0 bundle:0];
}

- (id)_childViewControllersForAlwaysOnTimelines
{
  v2 = self;
  v3 = [(ZStackContainerViewController *)v2 childViewControllers];
  sub_1DAD674D4(0, &qword_1EE005620, 0x1E69DD258);
  v4 = sub_1DAED1E7C();

  sub_1DADB53A4(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A790, &unk_1DAEDE9A0);
  v5 = sub_1DAED1E6C();

  return v5;
}

- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithCoder:(id)a3
{
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end