@interface NotificationSettingsViewController
- (_TtC9SeymourUI34NotificationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)switchTappedWithCellSwitch:(id)switch;
- (void)updateSettings;
- (void)viewDidLoad;
@end

@implementation NotificationSettingsViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9SeymourUI34NotificationSettingsViewController_notifyToken);
  selfCopy = self;
  if ([v3 tokenIsValid_])
  {
    [v3 cancelToken_];
  }

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for NotificationSettingsViewController();
  [(NotificationSettingsViewController *)&v7 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BFACE60();
}

- (void)updateSettings
{
  selfCopy = self;
  sub_20BFAF880();
}

- (void)switchTappedWithCellSwitch:(id)switch
{
  switchCopy = switch;
  selfCopy = self;
  sub_20BFB00E4(switchCopy);
}

- (_TtC9SeymourUI34NotificationSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = _s9SeymourUI34NotificationSettingsViewControllerC16numberOfSections2inSiSo07UITableE0C_tF_0();

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_20BFB2E2C(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1331E4();
  viewCopy = view;
  selfCopy = self;
  v12 = NotificationSettingsViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end