@interface SecureNavigationController
- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithCoder:(id)coder;
- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithRootViewController:(id)controller;
- (void)backButtonTapped;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation SecureNavigationController

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_21DFEF404(controllerCopy, animated);
}

- (void)backButtonTapped
{
  v2 = [(SecureNavigationController *)self popViewControllerAnimated:1];
}

- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureNavigationController();
  return [(SecureNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SecureNavigationController();
  return [(SecureNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_21E142124();
    bundleCopy = bundle;
    v7 = sub_21E1420F4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SecureNavigationController();
  v9 = [(SecureNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20VisualIntelligenceUI26SecureNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SecureNavigationController();
  coderCopy = coder;
  v5 = [(SecureNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end