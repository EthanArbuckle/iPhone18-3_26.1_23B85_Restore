@interface LemonadeDetailsNavigationController
- (PXPagingViewControllerDelegate)pagingViewControllerDelegate;
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithRootViewController:(id)a3;
- (int64_t)pagingViewControllerNumberOfItems;
- (void)setPagingViewControllerDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation LemonadeDetailsNavigationController

- (UIViewController)childViewControllerForStatusBarStyle
{
  v2 = [(LemonadeDetailsNavigationController *)self topViewController];

  return v2;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  v2 = v7.receiver;
  [(LemonadeDetailsNavigationController *)&v7 viewDidLoad];
  v3 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v4 simulatedDetailsViewLoadingDelay];
  v6 = v5;

  [v3 sleepForTimeInterval_];
}

- (PXPagingViewControllerDelegate)pagingViewControllerDelegate
{
  v2 = self;
  v3 = [(LemonadeDetailsNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 pagingViewControllerDelegate];

      v7 = v6;
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

- (void)setPagingViewControllerDelegate:(id)a3
{
  v7 = self;
  swift_unknownObjectRetain();
  v4 = [(LemonadeDetailsNavigationController *)v7 topViewController];
  if (v4)
  {
    v5 = v4;
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
  v2 = self;
  v3 = [(LemonadeDetailsNavigationController *)v2 topViewController];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 pagingViewControllerNumberOfItems];

      return v6;
    }
  }

  else
  {
  }

  return 0;
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  return [(LemonadeDetailsNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  return [(LemonadeDetailsNavigationController *)&v5 initWithRootViewController:a3];
}

- (_TtC12PhotosUICoreP33_5A77AA35E7CED42F2D112515D5FBA02135LemonadeDetailsNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1A524C674();
    v6 = a4;
    v7 = sub_1A524C634();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for LemonadeDetailsNavigationController();
  v9 = [(LemonadeDetailsNavigationController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

@end