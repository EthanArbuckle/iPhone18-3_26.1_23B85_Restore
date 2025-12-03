@interface TTRIReminderDetailViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (UITableView)tableView;
- (_TtC15RemindersUICore32TTRIReminderDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController;
- (void)didTapCancel:(id)cancel;
- (void)didTapCommit:(id)commit;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIReminderDetailViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D808B50();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D809134(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D817E50();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21D80A7C4(disappear);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIReminderDetailViewController *)&v3 viewWillLayoutSubviews];
  sub_21D80A954();
  if (*&v2[OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_preferredContentSizeUpdater])
  {

    TTRIPreferredContentSizeUpdater.viewWillLayoutSubviews()();
  }
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D80AB90();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (void)didTapCommit:(id)commit
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  viewIfLoaded = [(TTRIReminderDetailViewController *)selfCopy viewIfLoaded];
  if (viewIfLoaded)
  {
    v6 = viewIfLoaded;
    v7 = UIView.firstResponderDescendant.getter();

    if (v7)
    {
      [v7 resignFirstResponder];
    }
  }

  v8 = 1;
  sub_21D826274(&v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
}

- (_TtC15RemindersUICore32TTRIReminderDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_presentationController:(id)controller prepareAdaptivePresentationController:(id)presentationController
{
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  selfCopy = self;
  sub_21D8196B4(presentationControllerCopy);
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  LOBYTE(self) = sub_21D819898();

  return self & 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21D819A00(&unk_282ED4848, 1, &unk_21DC2B1C8);
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  selfCopy = self;
  viewIfLoaded = [(TTRIReminderDetailViewController *)selfCopy viewIfLoaded];
  if (viewIfLoaded)
  {
    v4 = viewIfLoaded;
    v5 = UIView.firstResponderDescendant.getter();

    if (v5)
    {
      [v5 resignFirstResponder];
    }
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21D819A00(&unk_282ED4820, 0, &unk_21DC2B1C0);
}

@end