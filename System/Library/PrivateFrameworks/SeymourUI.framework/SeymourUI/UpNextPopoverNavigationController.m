@interface UpNextPopoverNavigationController
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithCoder:(id)a3;
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithRootViewController:(id)a3;
@end

@implementation UpNextPopoverNavigationController

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UpNextPopoverNavigationController();
  return [(UpNextPopoverNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UpNextPopoverNavigationController();
  return [(UpNextPopoverNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_20C13C954();
    v6 = a4;
    v7 = sub_20C13C914();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for UpNextPopoverNavigationController();
  v9 = [(UpNextPopoverNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UpNextPopoverNavigationController();
  v4 = a3;
  v5 = [(UpNextPopoverNavigationController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end