@interface CardReaderViewController
- (_TtC9PassKitUI24CardReaderViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)pk_childrenForAppearance;
- (id)visibleFieldIdentifiers;
- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection;
- (void)applicationWillResignActive;
- (void)backButtonPressed;
- (void)cancelButtonPressed;
- (void)didBecomeActiveNotification;
- (void)handleNextButtonTapped:(id)tapped;
- (void)loadView;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)tryAgainButtonPressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation CardReaderViewController

- (void)loadView
{
  selfCopy = self;
  sub_1BD3770DC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD377664(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD377830(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CardReaderViewController();
  v4 = v6.receiver;
  [(PKPaymentSetupFieldsViewController *)&v6 viewWillDisappear:disappearCopy];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v5 && *(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) == 1)
  {
    *(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 0;
    [*(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager) stopDeviceMotionUpdates];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD377A30(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BD377B6C();
}

- (void)applicationWillResignActive
{
  selfCopy = self;
  sub_1BD377FBC();
}

- (void)didBecomeActiveNotification
{
  selfCopy = self;
  sub_1BD37816C();
}

- (void)tryAgainButtonPressed
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x250);
  selfCopy = self;
  v2();
}

- (void)cancelButtonPressed
{
  selfCopy = self;
  sub_1BD3784E8();
}

- (void)backButtonPressed
{
  selfCopy = self;
  navigationController = [(CardReaderViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1BD166E88;
  }

  else
  {
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_1BD378794(controllerCopy, animated, v8, v9);
  sub_1BD0D4744(v8);
}

- (_TtC9PassKitUI24CardReaderViewController)initWithWebService:(id)service context:(int64_t)context setupDelegate:(id)delegate setupFieldsModel:(id)model
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  selfCopy = self;
  result = [(PKPaymentSetupFieldsViewController *)selfCopy fieldsModel];
  if (result)
  {
    v4 = result;
    visibleSetupFieldIdentifiers = [result visibleSetupFieldIdentifiers];

    if (visibleSetupFieldIdentifiers)
    {
      sub_1BE052744();

      selfCopy = visibleSetupFieldIdentifiers;
    }

    v6 = sub_1BE052724();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)handleNextButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  reportButtonPressed_ = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter);
  if (reportButtonPressed_)
  {
    reportButtonPressed_ = [reportButtonPressed_ reportButtonPressed_];
  }

  (*((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x250))(reportButtonPressed_);

  sub_1BD14EC0C(v7);
}

- (id)defaultHeaderViewTitle
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x260);
  selfCopy = self;
  v2();

  v4 = sub_1BE052404();

  return v4;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x260);
  selfCopy = self;
  v2();
  v5 = v4;

  if (v5)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)defaultFields
{
  v2 = sub_1BE052724();

  return v2;
}

- (id)pk_childrenForAppearance
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BE0B7020;
  selfCopy = self;
  result = [(PKPaymentSetupTableViewController *)selfCopy dockView];
  if (result)
  {
    *(v3 + 32) = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD434C0);
    v6 = sub_1BE052724();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (int64_t)visibilityBackdropView:(id)view preferredStyleForTraitCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  selfCopy = self;
  v9 = sub_1BD37D598(collectionCopy);

  return v9;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v6 = sub_1BD37CE48(controllerCopy);

  return v6;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  selfCopy = self;
  v12 = sub_1BD37D6B0(controllerCopy);

  return v12;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  v14 = sub_1BD37D910(operation, viewControllerCopy, toViewControllerCopy);

  return v14;
}

@end