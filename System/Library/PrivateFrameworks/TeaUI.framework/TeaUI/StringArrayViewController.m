@interface StringArrayViewController
- (_TtC5TeaUI25StringArrayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)doAdd;
- (void)keyboardWillChangeFrameWithNotification:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation StringArrayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D806BA20();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D806BCC4(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1D806BD78(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1D806BE84();
}

- (void)doAdd
{
  v2 = self;
  sub_1D806BF8C();
}

- (void)keyboardWillChangeFrameWithNotification:(id)a3
{
  v4 = sub_1D818E454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E414();
  v8 = self;
  sub_1D806C194(v7);

  (*(v5 + 8))(v7, v4);
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
  v12 = sub_1D806C328(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_1D818E994();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v12 = a3;
  v13 = self;
  sub_1D806C8EC(v12, a4, v11);

  (*(v9 + 8))(v11, v8);
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
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

- (_TtC5TeaUI25StringArrayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  sub_1D806CC28();
}

@end