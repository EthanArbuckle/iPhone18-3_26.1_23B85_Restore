@interface StringArrayViewController
- (_TtC5TeaUI25StringArrayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)doAdd;
- (void)keyboardWillChangeFrameWithNotification:(id)notification;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation StringArrayViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D806BA20();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D806BCC4(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1D806BD78(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D806BE84();
}

- (void)doAdd
{
  selfCopy = self;
  sub_1D806BF8C();
}

- (void)keyboardWillChangeFrameWithNotification:(id)notification
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  selfCopy = self;
  sub_1D806C194(v7);

  (*(v5 + 8))(v7, v4);
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
  v12 = sub_1D806C328(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  viewCopy = view;
  selfCopy = self;
  sub_1D806C8EC(viewCopy, style, v11);

  (*(v9 + 8))(v11, v8);
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sub_1D806CB68();
  if (v4)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC5TeaUI25StringArrayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D8190F14();
  }

  bundleCopy = bundle;
  sub_1D806CC28();
}

@end