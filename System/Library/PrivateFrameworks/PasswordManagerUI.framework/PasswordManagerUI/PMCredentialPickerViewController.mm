@interface PMCredentialPickerViewController
- (BOOL)validateReadyForAuthorization:(id)authorization;
- (UIWindow)presentationAnchor;
- (_TtC17PasswordManagerUI32PMCredentialPickerViewController)initWithPresentationContext:(id)context shouldExpandOtherLoginChoices:(BOOL)choices activity:(id)activity;
- (id)initRequiringTableView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)numberOfTableRows;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)authenticationProvider:(id)provider hideViewController:(id)controller;
- (void)authenticationProvider:(id)provider presentAlert:(id)alert primaryAction:(id)action alternateAction:(id)alternateAction;
- (void)authenticationProvider:(id)provider showViewController:(id)controller;
- (void)confirmButtonSubPaneDidEnterProcessingState:(id)state withAuthenticatedContext:(id)context;
- (void)confirmButtonSubPaneDidFailBiometry:(id)biometry allowingPasscodeFallback:(BOOL)fallback;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialListViewControllerDidPrepareInterface:(id)interface;
- (void)expandLoginChoicesButtonPressed;
- (void)keychainSyncStatusMayHaveChangedWithNotification:(id)notification;
- (void)manualPasswordEntryButtonPressed;
- (void)performAuthorization:(id)authorization withAuthenticatedLAContext:(id)context;
- (void)performConditionalRegistrationIfPossible;
- (void)performPasswordAuthentication:(id)authentication;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)useCABLEButtonPressed;
- (void)userTappedContinueButton;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation PMCredentialPickerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21CB038E4();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_21CB04204(appearing);
}

- (_TtC17PasswordManagerUI32PMCredentialPickerViewController)initWithPresentationContext:(id)context shouldExpandOtherLoginChoices:(BOOL)choices activity:(id)activity
{
  choicesCopy = choices;
  contextCopy = context;
  swift_unknownObjectRetain();
  PMCredentialPickerViewController.init(presentationContext:shouldExpandOtherLoginChoices:activity:)(contextCopy, choicesCopy, activity);
  return result;
}

- (id)initRequiringTableView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_21CB138C0();

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_21CB13A20(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_21CB80FC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80F94();
  viewCopy = view;
  selfCopy = self;
  v13 = PMCredentialPickerViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  if (section == 1)
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
    selfCopy = self;
    goto LABEL_8;
  }

  selfCopy2 = self;
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_21CB80FC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80F94();
  viewCopy = view;
  selfCopy = self;
  PMCredentialPickerViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v10, v6);
}

- (void)confirmButtonSubPaneDidEnterProcessingState:(id)state withAuthenticatedContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  selfCopy = self;
  PMCredentialPickerViewController.confirmButtonSubPaneDidEnterProcessingState(_:withAuthenticatedContext:)(stateCopy, context);
}

- (void)confirmButtonSubPaneDidFailBiometry:(id)biometry allowingPasscodeFallback:(BOOL)fallback
{
  biometryCopy = biometry;
  selfCopy = self;
  sub_21CB13CE4(fallback);
}

- (void)userTappedContinueButton
{
  selfCopy = self;
  PMCredentialPickerViewController.userTappedContinueButton()();
}

- (void)performPasswordAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  selfCopy = self;
  _s17PasswordManagerUI32PMCredentialPickerViewControllerC07performA14AuthenticationyySo39ASCredentialRequestConfirmButtonSubPaneCF_0();
}

- (void)performAuthorization:(id)authorization withAuthenticatedLAContext:(id)context
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  selfCopy = self;
  contextCopy = context;
  sub_21CB07B10(context, sub_21CB1731C, v6);
}

- (BOOL)validateReadyForAuthorization:(id)authorization
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
  selfCopy = self;
  sub_21CB0C910();
}

- (void)useCABLEButtonPressed
{
  selfCopy = self;
  sub_21CB0CB2C();
}

- (void)manualPasswordEntryButtonPressed
{
  selfCopy = self;
  delegate = [(ASCredentialRequestPaneViewController *)selfCopy delegate];
  if (delegate)
  {
    [(ASCredentialRequestPaneViewControllerDelegate *)delegate requestPaneViewControllerPresentManualPasswordEntryInterface:selfCopy];
    swift_unknownObjectRelease();
  }
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  v10 = _Block_copy(completion);
  _Block_copy(v10);
  controllerCopy = controller;
  credentialCopy = credential;
  selfCopy = self;
  errorCopy = error;
  sub_21CB14518(controllerCopy, credential, error, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)credentialListViewControllerDidPrepareInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  PMCredentialPickerViewController.credentialListViewControllerDidPrepareInterface(_:)(interfaceCopy);
}

- (void)performConditionalRegistrationIfPossible
{
  selfCopy = self;
  PMCredentialPickerViewController.performConditionalRegistrationIfPossible()();
}

- (void)authenticationProvider:(id)provider showViewController:(id)controller
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  sub_21CB161E4(controllerCopy, &unk_282E5BD48, sub_21CB17070, &block_descriptor_140);
  swift_unknownObjectRelease();
}

- (void)authenticationProvider:(id)provider hideViewController:(id)controller
{
  swift_unknownObjectRetain();
  controllerCopy = controller;
  selfCopy = self;
  sub_21CB164D4(controllerCopy);
  swift_unknownObjectRelease();
}

- (void)authenticationProvider:(id)provider presentAlert:(id)alert primaryAction:(id)action alternateAction:(id)alternateAction
{
  v8 = _Block_copy(action);
  v9 = _Block_copy(alternateAction);
  v10 = sub_21CB85474();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21CB167D0(v10, sub_21CB16ED8, v11, sub_21CB17324, v12);
  swift_unknownObjectRelease();
}

- (UIWindow)presentationAnchor
{
  selfCopy = self;
  result = [(PMCredentialPickerViewController *)selfCopy view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  window = [(UIWindow *)result window];

  if (!window)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return window;
}

- (void)keychainSyncStatusMayHaveChangedWithNotification:(id)notification
{
  v4 = sub_21CB807E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB807B4();
  selfCopy = self;
  sub_21CB10350();

  (*(v5 + 8))(v8, v4);
}

@end