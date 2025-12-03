@interface TTRIQuickEntryViewController
- (BOOL)presentationControllerShouldDismiss:(id)dismiss;
- (UIBarButtonItem)cancelButton;
- (UITableView)tableView;
- (_TtC15RemindersUICore28TTRIQuickEntryViewController)initWithNibName:(id)name bundle:(id)bundle;
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

@implementation TTRIQuickEntryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21D5CB608();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D5CC7A0(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21D5D3140();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21D5CCBF8(disappear);
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

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D5CCF9C();

  __swift_destroy_boxed_opaque_existential_0(&v5);
}

- (void)didTapCommit:(id)commit
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  viewIfLoaded = [(TTRIQuickEntryViewController *)selfCopy viewIfLoaded];
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
  sub_21D5BF334(&v8);
  __swift_destroy_boxed_opaque_existential_0(v9);
}

- (_TtC15RemindersUICore28TTRIQuickEntryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)presentationControllerShouldDismiss:(id)dismiss
{
  v4 = *(*(self + OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore23TTRIQuickEntryPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 80);
  selfCopy = self;
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

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_21D5D36C4(&unk_282EC6DD8, 1, &unk_21DC1D718);
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  selfCopy = self;
  viewIfLoaded = [(TTRIQuickEntryViewController *)selfCopy viewIfLoaded];
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
  sub_21D5D36C4(&unk_282EC6DB0, 0, &unk_21DC1D710);
}

@end