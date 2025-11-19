@interface CardReaderViewController
- (_TtC9PassKitUI24CardReaderViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)defaultFields;
- (id)defaultHeaderViewSubTitle;
- (id)defaultHeaderViewTitle;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)pk_childrenForAppearance;
- (id)visibleFieldIdentifiers;
- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4;
- (void)applicationWillResignActive;
- (void)backButtonPressed;
- (void)cancelButtonPressed;
- (void)didBecomeActiveNotification;
- (void)handleNextButtonTapped:(id)a3;
- (void)loadView;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)tryAgainButtonPressed;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CardReaderViewController

- (void)loadView
{
  v2 = self;
  sub_1BD3770DC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD377664(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1BD377830(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CardReaderViewController();
  v4 = v6.receiver;
  [(PKPaymentSetupFieldsViewController *)&v6 viewWillDisappear:v3];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_animationView];
  if (v5 && *(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) == 1)
  {
    *(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_isMonitoringMotion) = 0;
    [*(v5 + OBJC_IVAR____TtC9PassKitUI35ProvisioningCardReaderAnimationView_motionManager) stopDeviceMotionUpdates];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1BD377A30(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BD377B6C();
}

- (void)applicationWillResignActive
{
  v2 = self;
  sub_1BD377FBC();
}

- (void)didBecomeActiveNotification
{
  v2 = self;
  sub_1BD37816C();
}

- (void)tryAgainButtonPressed
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x250);
  v3 = self;
  v2();
}

- (void)cancelButtonPressed
{
  v2 = self;
  sub_1BD3784E8();
}

- (void)backButtonPressed
{
  v4 = self;
  v2 = [(CardReaderViewController *)v4 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = self;
  sub_1BD378794(v10, a4, v8, v9);
  sub_1BD0D4744(v8);
}

- (_TtC9PassKitUI24CardReaderViewController)initWithWebService:(id)a3 context:(int64_t)a4 setupDelegate:(id)a5 setupFieldsModel:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)visibleFieldIdentifiers
{
  v2 = self;
  result = [(PKPaymentSetupFieldsViewController *)v2 fieldsModel];
  if (result)
  {
    v4 = result;
    v5 = [result visibleSetupFieldIdentifiers];

    if (v5)
    {
      sub_1BE052744();

      v2 = v5;
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

- (void)handleNextButtonTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI24CardReaderViewController_reporter);
  if (v6)
  {
    v6 = [v6 reportButtonPressed_];
  }

  (*((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x250))(v6);

  sub_1BD14EC0C(v7);
}

- (id)defaultHeaderViewTitle
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x260);
  v3 = self;
  v2();

  v4 = sub_1BE052404();

  return v4;
}

- (id)defaultHeaderViewSubTitle
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x260);
  v3 = self;
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
  v4 = self;
  result = [(PKPaymentSetupTableViewController *)v4 dockView];
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

- (int64_t)visibilityBackdropView:(id)a3 preferredStyleForTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1BD37D598(v7);

  return v9;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1BD37CE48(v4);

  return v6;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_1BD37D6B0(v8);

  return v12;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  v14 = sub_1BD37D910(a4, v11, v12);

  return v14;
}

@end