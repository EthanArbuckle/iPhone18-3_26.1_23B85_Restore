@interface NavigationController
- (BOOL)accessibilityPerformEscape;
- (BOOL)hidesBottomBarWhenPushed;
- (_TtC5TeaUI20NavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC5TeaUI20NavigationController)initWithRootViewController:(id)a3 navigationBarClass:(Class)a4;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setHidesBottomBarWhenPushed:(BOOL)a3;
@end

@implementation NavigationController

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1D7E268E0(v6, a4);
}

- (_TtC5TeaUI20NavigationController)initWithRootViewController:(id)a3 navigationBarClass:(Class)a4
{
  if (a4)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  return NavigationController.init(rootViewController:navigationBarClass:)(a3, ObjCClassMetadata);
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v4 = self;
  v5 = sub_1D7F33E04(a3);

  return v5;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1D7F34164(v6, a4);

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

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v4 = self;
  v5 = sub_1D7F34310(a3);

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
  v2 = self;
  v3 = sub_1D7F344B8();

  return v3 & 1;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1D7F345C4(a3, a4);
}

- (_TtC5TeaUI20NavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  NavigationController.init(nibName:bundle:)();
}

- (BOOL)hidesBottomBarWhenPushed
{
  v2 = self;
  v3 = NavigationController.hidesBottomBarWhenPushed.getter();

  return v3 & 1;
}

- (void)setHidesBottomBarWhenPushed:(BOOL)a3
{
  v4 = self;
  NavigationController.hidesBottomBarWhenPushed.setter(a3);
}

@end