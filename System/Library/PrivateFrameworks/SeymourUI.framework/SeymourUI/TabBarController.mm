@interface TabBarController
- (_TtC9SeymourUI16TabBarController)initWithCoder:(id)coder;
- (_TtC9SeymourUI16TabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI16TabBarController)initWithTabs:(id)tabs;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TabBarController

- (_TtC9SeymourUI16TabBarController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9SeymourUI16TabBarController_paletteView;
  if (qword_27C760C40 != -1)
  {
    swift_once();
  }

  v5 = qword_27C76F6C0;
  v6 = objc_allocWithZone(type metadata accessor for PaletteContainerView());
  *(&self->super.super.super.super.isa + v4) = sub_20BE4B8E8(v5);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI16TabBarController_miniPlayerViewController) = 0;
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BB2CBD8();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_20BB2CDDC();
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  controllersCopy = controllers;
  if (controllers)
  {
    sub_20B51C88C(0, &qword_281100550);
    controllersCopy = sub_20C13CC74();
  }

  selfCopy = self;
  sub_20BB2D19C(controllersCopy, animated);
}

- (_TtC9SeymourUI16TabBarController)initWithTabs:(id)tabs
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI16TabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end