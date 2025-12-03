@interface NavigationController
- (BOOL)accessibilityPerformEscape;
- (BOOL)hidesBottomBarWhenPushed;
- (_TtC5TeaUI20NavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5TeaUI20NavigationController)initWithRootViewController:(id)controller navigationBarClass:(Class)class;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHidesBottomBarWhenPushed:(BOOL)pushed;
@end

@implementation NavigationController

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D7E268E0(controllerCopy, animated);
}

- (_TtC5TeaUI20NavigationController)initWithRootViewController:(id)controller navigationBarClass:(Class)class
{
  if (class)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  return NavigationController.init(rootViewController:navigationBarClass:)(controller, ObjCClassMetadata);
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = sub_1D7F33E04(animated);

  return v5;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = sub_1D7F34164(controllerCopy, animated);

  if (v8)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v9 = sub_1D8191304();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  selfCopy = self;
  v5 = sub_1D7F34310(animated);

  if (v5)
  {
    sub_1D7E0A1A8(0, &qword_1EDBB31B0);
    v6 = sub_1D8191304();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = sub_1D7F344B8();

  return v3 & 1;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_1D7F345C4(editing, animated);
}

- (_TtC5TeaUI20NavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  NavigationController.init(nibName:bundle:)();
}

- (BOOL)hidesBottomBarWhenPushed
{
  selfCopy = self;
  v3 = NavigationController.hidesBottomBarWhenPushed.getter();

  return v3 & 1;
}

- (void)setHidesBottomBarWhenPushed:(BOOL)pushed
{
  selfCopy = self;
  NavigationController.hidesBottomBarWhenPushed.setter(pushed);
}

@end