@interface PKDataReleaseViewController.PresentationController
- (_TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation PKDataReleaseViewController.PresentationController

- (_TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  return sub_1BD5BB418(controllerCopy, viewController);
}

- (void)presentationTransitionWillBegin
{
  selfCopy = self;
  sub_1BD5BB600();
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKDataReleaseViewController.PresentationController *)&v5 presentationTransitionDidEnd:endCopy];
  v4[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished] = endCopy;
}

- (void)containerViewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(PKDataReleaseViewController.PresentationController *)&v3 containerViewWillLayoutSubviews];
  [*&v2[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] updateFrame];
}

@end