@interface TSCardContainerController
- (BOOL)accessibilityPerformEscape;
- (TSCardContainerController)initWithNibName:(id)name bundle:(id)bundle;
- (id)childViewControllerForStatusBarHidden;
- (void)collapseCards:(id)cards;
- (void)expandCards:(id)cards;
- (void)popCards;
- (void)pushCardWithViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TSCardContainerController

- (id)childViewControllerForStatusBarHidden
{
  selfCopy = self;
  v2 = sub_1D7F47234();

  return v2;
}

- (TSCardContainerController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  CardContainerController.init(nibName:bundle:)();
}

- (void)viewDidLoad
{
  selfCopy = self;
  CardContainerController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CardContainerController.viewWillAppear(_:)(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  CardContainerController.viewDidAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  CardContainerController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  CardContainerController.viewDidDisappear(_:)(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  CardContainerController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  CardContainerController.viewDidLayoutSubviews()();
}

- (void)viewLayoutMarginsDidChange
{
  selfCopy = self;
  CardContainerController.viewLayoutMarginsDidChange()();
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  CardContainerController.viewSafeAreaInsetsDidChange()();
}

- (void)collapseCards:(id)cards
{
  v4 = _Block_copy(cards);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1D7F53120;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  CardContainerController.collapseCards(completion:)();
  sub_1D7E0E10C(v5);
}

- (void)expandCards:(id)cards
{
  v4 = _Block_copy(cards);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_1D7F52DBC;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  CardContainerController.expandCards(completion:)();
  sub_1D7E0E10C(v5);
}

- (void)pushCardWithViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1D7F52DB4;
  }

  controllerCopy = controller;
  selfCopy = self;
  CardContainerController.pushCard(_:animated:completion:)();
  sub_1D7E0E10C(v7);
}

- (void)popCards
{
  selfCopy = self;
  CardContainerController.popCards()();
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = CardContainerController.accessibilityPerformEscape()();

  return v3;
}

@end