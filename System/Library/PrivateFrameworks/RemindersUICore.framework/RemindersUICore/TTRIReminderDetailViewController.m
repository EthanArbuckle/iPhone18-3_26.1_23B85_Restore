@interface TTRIReminderDetailViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (UITableView)tableView;
- (_TtC15RemindersUICore32TTRIReminderDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4;
- (void)didTapCancel:(id)a3;
- (void)didTapCommit:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIReminderDetailViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_21D808B50();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21D809134(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_21D817E50();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_21D80A7C4(a3);
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

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D80AB90();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (void)didTapCommit:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v5 = [(TTRIReminderDetailViewController *)v4 viewIfLoaded];
  if (v5)
  {
    v6 = v5;
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

- (_TtC15RemindersUICore32TTRIReminderDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_presentationController:(id)a3 prepareAdaptivePresentationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_21D8196B4(v7);
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_21D819898();

  return self & 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D819A00(&unk_282ED4848, 1, &unk_21DC2B1C8);
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v6 = self;
  v3 = [(TTRIReminderDetailViewController *)v6 viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    v5 = UIView.firstResponderDescendant.getter();

    if (v5)
    {
      [v5 resignFirstResponder];
    }
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D819A00(&unk_282ED4820, 0, &unk_21DC2B1C0);
}

@end