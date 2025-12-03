@interface ZStackContainerViewController
- (_TtC14WidgetRenderer29ZStackContainerViewController)init;
- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_childViewControllersForAlwaysOnTimelines;
- (void)loadView;
@end

@implementation ZStackContainerViewController

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for TouchPassThroughView());
  selfCopy = self;
  v4 = [v3 init];
  [(ZStackContainerViewController *)selfCopy setView:v4];
}

- (_TtC14WidgetRenderer29ZStackContainerViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ZStackContainerViewController();
  return [(ZStackContainerViewController *)&v3 initWithNibName:0 bundle:0];
}

- (id)_childViewControllersForAlwaysOnTimelines
{
  selfCopy = self;
  childViewControllers = [(ZStackContainerViewController *)selfCopy childViewControllers];
  sub_1DAD674D4(0, &qword_1EE005620, 0x1E69DD258);
  v4 = sub_1DAED1E7C();

  sub_1DADB53A4(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A790, &unk_1DAEDE9A0);
  v5 = sub_1DAED1E6C();

  return v5;
}

- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithCoder:(id)coder
{
  result = sub_1DAED273C();
  __break(1u);
  return result;
}

- (_TtC14WidgetRenderer29ZStackContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end