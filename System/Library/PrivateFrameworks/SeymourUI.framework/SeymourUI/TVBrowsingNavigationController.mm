@interface TVBrowsingNavigationController
- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithCoder:(id)coder;
- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation TVBrowsingNavigationController

- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVBrowsingNavigationController_purchaseCoordinator;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BD5255C();
}

- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI30TVBrowsingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end