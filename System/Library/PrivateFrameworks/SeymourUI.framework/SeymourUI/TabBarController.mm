@interface TabBarController
- (_TtC9SeymourUI16TabBarController)initWithCoder:(id)a3;
- (_TtC9SeymourUI16TabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI16TabBarController)initWithTabs:(id)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation TabBarController

- (_TtC9SeymourUI16TabBarController)initWithCoder:(id)a3
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
  v2 = self;
  sub_20BB2CBD8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_20BB2CDDC();
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  if (a3)
  {
    sub_20B51C88C(0, &qword_281100550);
    v5 = sub_20C13CC74();
  }

  v7 = self;
  sub_20BB2D19C(v5, a4);
}

- (_TtC9SeymourUI16TabBarController)initWithTabs:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI16TabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end