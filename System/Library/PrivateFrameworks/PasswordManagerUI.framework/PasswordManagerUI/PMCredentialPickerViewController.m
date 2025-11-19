@interface PMCredentialPickerViewController
- (BOOL)validateReadyForAuthorization:(id)a3;
- (UIWindow)presentationAnchor;
- (_TtC17PasswordManagerUI32PMCredentialPickerViewController)initWithPresentationContext:(id)a3 shouldExpandOtherLoginChoices:(BOOL)a4 activity:(id)a5;
- (id)initRequiringTableView:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)numberOfTableRows;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)authenticationProvider:(id)a3 hideViewController:(id)a4;
- (void)authenticationProvider:(id)a3 presentAlert:(id)a4 primaryAction:(id)a5 alternateAction:(id)a6;
- (void)authenticationProvider:(id)a3 showViewController:(id)a4;
- (void)confirmButtonSubPaneDidEnterProcessingState:(id)a3 withAuthenticatedContext:(id)a4;
- (void)confirmButtonSubPaneDidFailBiometry:(id)a3 allowingPasscodeFallback:(BOOL)a4;
- (void)credentialAuthenticationViewController:(id)a3 didFinishWithCredential:(id)a4 error:(id)a5 completion:(id)a6;
- (void)credentialListViewControllerDidPrepareInterface:(id)a3;
- (void)expandLoginChoicesButtonPressed;
- (void)keychainSyncStatusMayHaveChangedWithNotification:(id)a3;
- (void)manualPasswordEntryButtonPressed;
- (void)performAuthorization:(id)a3 withAuthenticatedLAContext:(id)a4;
- (void)performConditionalRegistrationIfPossible;
- (void)performPasswordAuthentication:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)useCABLEButtonPressed;
- (void)userTappedContinueButton;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation PMCredentialPickerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_21CB038E4();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_21CB04204(a3);
}

- (_TtC17PasswordManagerUI32PMCredentialPickerViewController)initWithPresentationContext:(id)a3 shouldExpandOtherLoginChoices:(BOOL)a4 activity:(id)a5
{
  v6 = a4;
  v7 = a3;
  swift_unknownObjectRetain();
  PMCredentialPickerViewController.init(presentationContext:shouldExpandOtherLoginChoices:activity:)(v7, v6, a5);
  return result;
}

- (id)initRequiringTableView:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_21CB138C0();

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_21CB13A20(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_21CB80FC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80F94();
  v11 = a3;
  v12 = self;
  v13 = PMCredentialPickerViewController.tableView(_:cellForRowAt:)(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if (a4 == 1)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v6 + 8))(v9, v5);
    v11 = sub_21CB85584();

    v10 = v11;
  }

  return v10;
}

- (int64_t)numberOfTableRows
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow;
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
    }

    if (sub_21CB85FA4() >= 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
LABEL_3:
    v5 = self;
    goto LABEL_8;
  }

  v7 = self;
  if ((sub_21CB81704() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_11;
  }

LABEL_8:
  v8 = *(&self->super.super.super.super.super.isa + v3);
  if (v8 >> 62)
  {
    if (v8 < 0)
    {
      v11 = *(&self->super.super.super.super.super.isa + v3);
    }

    v9 = sub_21CB85FA4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_11:

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_21CB80FC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80F94();
  v11 = a3;
  v12 = self;
  PMCredentialPickerViewController.tableView(_:didSelectRowAt:)(v11);

  (*(v7 + 8))(v10, v6);
}

- (void)confirmButtonSubPaneDidEnterProcessingState:(id)a3 withAuthenticatedContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PMCredentialPickerViewController.confirmButtonSubPaneDidEnterProcessingState(_:withAuthenticatedContext:)(v6, a4);
}

- (void)confirmButtonSubPaneDidFailBiometry:(id)a3 allowingPasscodeFallback:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_21CB13CE4(a4);
}

- (void)userTappedContinueButton
{
  v2 = self;
  PMCredentialPickerViewController.userTappedContinueButton()();
}

- (void)performPasswordAuthentication:(id)a3
{
  v4 = a3;
  v5 = self;
  _s17PasswordManagerUI32PMCredentialPickerViewControllerC07performA14AuthenticationyySo39ASCredentialRequestConfirmButtonSubPaneCF_0();
}

- (void)performAuthorization:(id)a3 withAuthenticatedLAContext:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v8 = self;
  v7 = a4;
  sub_21CB07B10(a4, sub_21CB1731C, v6);
}

- (BOOL)validateReadyForAuthorization:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI32PMCredentialPickerViewController_loginChoicesToShow);
  if (v3 >> 62)
  {
    v4 = sub_21CB85FA4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != 0;
}

- (void)expandLoginChoicesButtonPressed
{
  v2 = self;
  sub_21CB0C910();
}

- (void)useCABLEButtonPressed
{
  v2 = self;
  sub_21CB0CB2C();
}

- (void)manualPasswordEntryButtonPressed
{
  v3 = self;
  v2 = [(ASCredentialRequestPaneViewController *)v3 delegate];
  if (v2)
  {
    [(ASCredentialRequestPaneViewControllerDelegate *)v2 requestPaneViewControllerPresentManualPasswordEntryInterface:v3];
    swift_unknownObjectRelease();
  }
}

- (void)credentialAuthenticationViewController:(id)a3 didFinishWithCredential:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = a5;
  sub_21CB14518(v11, a4, a5, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)credentialListViewControllerDidPrepareInterface:(id)a3
{
  v4 = a3;
  v5 = self;
  PMCredentialPickerViewController.credentialListViewControllerDidPrepareInterface(_:)(v4);
}

- (void)performConditionalRegistrationIfPossible
{
  v2 = self;
  PMCredentialPickerViewController.performConditionalRegistrationIfPossible()();
}

- (void)authenticationProvider:(id)a3 showViewController:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_21CB161E4(v6, &unk_282E5BD48, sub_21CB17070, &block_descriptor_140);
  swift_unknownObjectRelease();
}

- (void)authenticationProvider:(id)a3 hideViewController:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_21CB164D4(v6);
  swift_unknownObjectRelease();
}

- (void)authenticationProvider:(id)a3 presentAlert:(id)a4 primaryAction:(id)a5 alternateAction:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  v10 = sub_21CB85474();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  swift_unknownObjectRetain();
  v13 = self;
  sub_21CB167D0(v10, sub_21CB16ED8, v11, sub_21CB17324, v12);
  swift_unknownObjectRelease();
}

- (UIWindow)presentationAnchor
{
  v2 = self;
  result = [(PMCredentialPickerViewController *)v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = [(UIWindow *)result window];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return v5;
}

- (void)keychainSyncStatusMayHaveChangedWithNotification:(id)a3
{
  v4 = sub_21CB807E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();
  v9 = self;
  sub_21CB10350();

  (*(v5 + 8))(v8, v4);
}

@end