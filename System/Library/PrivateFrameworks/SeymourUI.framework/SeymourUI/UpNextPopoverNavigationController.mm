@interface UpNextPopoverNavigationController
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithCoder:(id)coder;
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithRootViewController:(id)controller;
@end

@implementation UpNextPopoverNavigationController

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UpNextPopoverNavigationController();
  return [(UpNextPopoverNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UpNextPopoverNavigationController();
  return [(UpNextPopoverNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_20C13C954();
    bundleCopy = bundle;
    v7 = sub_20C13C914();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for UpNextPopoverNavigationController();
  v9 = [(UpNextPopoverNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC9SeymourUI33UpNextPopoverNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UpNextPopoverNavigationController();
  coderCopy = coder;
  v5 = [(UpNextPopoverNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end