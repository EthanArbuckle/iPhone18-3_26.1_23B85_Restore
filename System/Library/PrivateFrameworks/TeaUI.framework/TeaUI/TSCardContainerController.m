@interface TSCardContainerController
- (BOOL)accessibilityPerformEscape;
- (TSCardContainerController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)childViewControllerForStatusBarHidden;
- (void)collapseCards:(id)a3;
- (void)expandCards:(id)a3;
- (void)popCards;
- (void)pushCardWithViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TSCardContainerController

- (id)childViewControllerForStatusBarHidden
{
  v1 = a1;
  v2 = sub_1D7F47234();

  return v2;
}

- (TSCardContainerController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  CardContainerController.init(nibName:bundle:)();
}

- (void)viewDidLoad
{
  v2 = self;
  CardContainerController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CardContainerController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  CardContainerController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  CardContainerController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  CardContainerController.viewDidDisappear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  CardContainerController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  CardContainerController.viewDidLayoutSubviews()();
}

- (void)viewLayoutMarginsDidChange
{
  v2 = self;
  CardContainerController.viewLayoutMarginsDidChange()();
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  CardContainerController.viewSafeAreaInsetsDidChange()();
}

- (void)collapseCards:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1D7F53120;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  CardContainerController.collapseCards(completion:)();
  sub_1D7E0E10C(v5);
}

- (void)expandCards:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1D7F52DBC;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  CardContainerController.expandCards(completion:)();
  sub_1D7E0E10C(v5);
}

- (void)pushCardWithViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1D7F52DB4;
  }

  v8 = a3;
  v9 = self;
  CardContainerController.pushCard(_:animated:completion:)();
  sub_1D7E0E10C(v7);
}

- (void)popCards
{
  v2 = self;
  CardContainerController.popCards()();
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  v3 = CardContainerController.accessibilityPerformEscape()();

  return v3;
}

@end