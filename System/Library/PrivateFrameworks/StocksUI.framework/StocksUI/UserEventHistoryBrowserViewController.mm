@interface UserEventHistoryBrowserViewController
- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation UserEventHistoryBrowserViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(UserEventHistoryBrowserViewController *)&v7 viewDidLoad];
  tableView = [v2 tableView];
  if (tableView)
  {
    v4 = tableView;
    sub_22044D56C(0, &qword_27CF58B38);
    sub_2208919FC();

    tableView2 = [v2 tableView];
    if (tableView2)
    {
      v6 = tableView2;
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2206C5BF0(appear);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_2206C8218(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088545C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_2206C5F64();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088545C();
  viewCopy = view;
  selfCopy = self;
  sub_2206C65B8(viewCopy, v10);

  (*(v7 + 8))(v10, v6);
}

- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8StocksUI37UserEventHistoryBrowserViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end