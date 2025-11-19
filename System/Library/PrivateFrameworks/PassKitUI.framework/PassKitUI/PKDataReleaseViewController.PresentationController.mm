@interface PKDataReleaseViewController.PresentationController
- (_TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)containerViewWillLayoutSubviews;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation PKDataReleaseViewController.PresentationController

- (_TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v5 = a3;
  v6 = a4;
  return sub_1BD5BB418(v5, a4);
}

- (void)presentationTransitionWillBegin
{
  v2 = self;
  sub_1BD5BB600();
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(PKDataReleaseViewController.PresentationController *)&v5 presentationTransitionDidEnd:v3];
  v4[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished] = v3;
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