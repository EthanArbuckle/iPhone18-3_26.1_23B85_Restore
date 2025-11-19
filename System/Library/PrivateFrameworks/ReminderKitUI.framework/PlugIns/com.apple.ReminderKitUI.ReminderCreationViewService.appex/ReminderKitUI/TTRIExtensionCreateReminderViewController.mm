@interface TTRIExtensionCreateReminderViewController
- (UIBarButtonItem)addBarButtonItem;
- (UITableView)tableView;
- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapAdd:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIExtensionCreateReminderViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100012544();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100013708(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100013928();
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIBarButtonItem)addBarButtonItem
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100016A6C();
  swift_unknownObjectRelease();
  v5 = *(v4 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter);
  sub_100009E78();
  sub_10000CDB0(v6);
}

- (void)didTapAdd:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100016A6C();
  swift_unknownObjectRelease();
  sub_1000169DC();
  [(TTRIExtensionCreateReminderViewController *)v4 resignFirstResponder];
  v5 = *(v4 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter);
  sub_100009A04();
  sub_10000CDB0(v6);
}

- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end