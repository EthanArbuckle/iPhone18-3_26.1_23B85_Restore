@interface LemonadeDetailsNavigationController
- (PXPagingViewControllerDelegate)pagingViewControllerDelegate;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithRootViewController:(id)controller;
- (int64_t)pagingViewControllerNumberOfItems;
- (void)setPagingViewControllerDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation LemonadeDetailsNavigationController

- (UIViewController)childViewControllerForStatusBarStyle
{
  topViewController = [(LemonadeDetailsNavigationController *)self topViewController];

  return topViewController;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  v2 = v7.receiver;
  [(LemonadeDetailsNavigationController *)&v7 viewDidLoad];
  v3 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126A10);
  sharedInstance = [swift_getObjCClassFromMetadata() sharedInstance];
  [sharedInstance simulatedDetailsViewLoadingDelay];
  v6 = v5;

  [v3 sleepForTimeInterval_];
}

- (PXPagingViewControllerDelegate)pagingViewControllerDelegate
{
  selfCopy = self;
  topViewController = [(LemonadeDetailsNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      pagingViewControllerDelegate = [v5 pagingViewControllerDelegate];

      v7 = pagingViewControllerDelegate;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)setPagingViewControllerDelegate:(id)delegate
{
  selfCopy = self;
  swift_unknownObjectRetain();
  topViewController = [(LemonadeDetailsNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v5 = topViewController;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      [v6 setPagingViewControllerDelegate_];

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

- (int64_t)pagingViewControllerNumberOfItems
{
  selfCopy = self;
  topViewController = [(LemonadeDetailsNavigationController *)selfCopy topViewController];
  if (topViewController)
  {
    v4 = topViewController;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      pagingViewControllerNumberOfItems = [v5 pagingViewControllerNumberOfItems];

      return pagingViewControllerNumberOfItems;
    }
  }

  else
  {
  }

  return 0;
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  return [(LemonadeDetailsNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  return [(LemonadeDetailsNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1A524C674();
    bundleCopy = bundle;
    v7 = sub_1A524C634();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  v9 = [(LemonadeDetailsNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

@end