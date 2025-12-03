@interface SettingsViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC5TeaUI22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)doDone;
- (void)keyboardWillChangeFrameWithNotification:(id)notification;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SettingsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  SettingsViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  SettingsViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  SettingsViewController.viewWillDisappear(_:)(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  SettingsViewController.viewDidLayoutSubviews()();
}

- (void)doDone
{
  selfCopy = self;
  sub_1D7FC3E70();
}

- (void)keyboardWillChangeFrameWithNotification:(id)notification
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  selfCopy = self;
  sub_1D7FC3F70(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC5TeaUI22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  SettingsViewController.init(nibName:bundle:)();
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = SettingsViewController.tableView(_:shouldHighlightRowAt:)();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  SettingsViewController.tableView(_:didSelectRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = SettingsViewController.tableView(_:numberOfRowsInSection:)(selfCopy, section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  v12 = SettingsViewController.tableView(_:cellForRowAt:)(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  SettingsViewController.tableView(_:heightForRowAt:)();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

@end