@interface TTRIQuickEntryViewController
- (BOOL)presentationControllerShouldDismiss:(id)a3;
- (UIBarButtonItem)cancelButton;
- (UITableView)tableView;
- (_TtC15RemindersUICore28TTRIQuickEntryViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

@implementation TTRIQuickEntryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_21D5CB608();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_21D5CC7A0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = self;
  sub_21D5D3140();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_21D5CCBF8(a3);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIQuickEntryViewController *)&v3 viewWillLayoutSubviews];
  sub_21D5CCD18();
  if (*&v2[OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_preferredContentSizeUpdater])
  {

    TTRIPreferredContentSizeUpdater.viewWillLayoutSubviews()();
  }
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIBarButtonItem)cancelButton
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
  sub_21D5CCF9C();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (void)didTapCommit:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v5 = [(TTRIQuickEntryViewController *)v4 viewIfLoaded];
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
  sub_21D5BF334(&v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
}

- (_TtC15RemindersUICore28TTRIQuickEntryViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)a3
{
  v4 = *(*(self + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 80);
  v7 = self;
  if (v6(ObjectType, v4) & 1) != 0 || (sub_21D5BE9C8())
  {

    v8 = 0;
  }

  else
  {
    v9 = sub_21D5BEBBC();

    v8 = v9 ^ 1;
  }

  return v8 & 1;
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21D5D36C4(&unk_282EC6DD8, 1, &unk_21DC1D718);
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v6 = self;
  v3 = [(TTRIQuickEntryViewController *)v6 viewIfLoaded];
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
  sub_21D5D36C4(&unk_282EC6DB0, 0, &unk_21DC1D710);
}

@end