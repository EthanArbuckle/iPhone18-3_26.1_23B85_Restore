@interface UserEventHistoryBrowserViewController
- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation UserEventHistoryBrowserViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(UserEventHistoryBrowserViewController *)&v7 viewDidLoad];
  v3 = [v2 tableView];
  if (v3)
  {
    v4 = v3;
    sub_22044D56C(0, &qword_27CF58B38);
    sub_2208919FC();

    v5 = [v2 tableView];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for SubtitleCell();
      sub_2208919FC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2206C5BF0(a3);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_2206C8218(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088545C();
  v11 = a3;
  v12 = self;
  v13 = sub_2206C5F64();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088545C();
  v11 = a3;
  v12 = self;
  sub_2206C65B8(v11, v10);

  (*(v7 + 8))(v10, v6);
}

- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end