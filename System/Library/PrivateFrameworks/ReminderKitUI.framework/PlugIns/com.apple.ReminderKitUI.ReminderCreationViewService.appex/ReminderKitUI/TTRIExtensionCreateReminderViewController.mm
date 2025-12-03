@interface TTRIExtensionCreateReminderViewController
- (UIBarButtonItem)addBarButtonItem;
- (UITableView)tableView;
- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapAdd:(id)add;
- (void)didTapCancel:(id)cancel;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIExtensionCreateReminderViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100012544();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100013708(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
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

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100016A6C();
  swift_unknownObjectRelease();
  v5 = *(selfCopy + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter);
  sub_100009E78();
  sub_10000CDB0(v6);
}

- (void)didTapAdd:(id)add
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100016A6C();
  swift_unknownObjectRelease();
  sub_1000169DC();
  [(TTRIExtensionCreateReminderViewController *)selfCopy resignFirstResponder];
  v5 = *(selfCopy + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter);
  sub_100009A04();
  sub_10000CDB0(v6);
}

- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end