@interface SettingsViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (_TtC5TeaUI22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doDone;
- (void)keyboardWillChangeFrameWithNotification:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SettingsViewController

- (void)viewDidLoad
{
  v2 = self;
  SettingsViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  SettingsViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  SettingsViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  SettingsViewController.viewDidLayoutSubviews()();
}

- (void)doDone
{
  v2 = self;
  sub_1D7FC3E70();
}

- (void)keyboardWillChangeFrameWithNotification:(id)a3
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  v8 = self;
  sub_1D7FC3F70(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC5TeaUI22SettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  SettingsViewController.init(nibName:bundle:)();
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = self;
  LOBYTE(self) = SettingsViewController.tableView(_:shouldHighlightRowAt:)();

  (*(v7 + 8))(v9, v6);
  return self & 1;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = self;
  SettingsViewController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = SettingsViewController.tableView(_:numberOfRowsInSection:)(v7, a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = self;
  v12 = SettingsViewController.tableView(_:cellForRowAt:)(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = self;
  SettingsViewController.tableView(_:heightForRowAt:)();
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

@end