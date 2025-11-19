@interface NotificationSettingsViewController
- (_TtC9SeymourUI34NotificationSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)switchTappedWithCellSwitch:(id)a3;
- (void)updateSettings;
- (void)viewDidLoad;
@end

@implementation NotificationSettingsViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken);
  v6 = self;
  if ([v3 tokenIsValid_])
  {
    [v3 cancelToken_];
  }

  v7.receiver = v6;
  v7.super_class = type metadata accessor for NotificationSettingsViewController();
  [(NotificationSettingsViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20BFACE60();
}

- (void)updateSettings
{
  v2 = self;
  sub_20BFAF880();
}

- (void)switchTappedWithCellSwitch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20BFB00E4(v4);
}

- (_TtC9SeymourUI34NotificationSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s9SeymourUI34NotificationSettingsViewControllerC16numberOfSections2inSiSo07UITableE0C_tF_0();

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_20BFB2E2C(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  v10 = a3;
  v11 = self;
  v12 = NotificationSettingsViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end