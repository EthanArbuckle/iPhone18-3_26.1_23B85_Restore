@interface MetricsEventDetailListViewController
- (_TtC8VideosUI36MetricsEventDetailListViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MetricsEventDetailListViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E406ECB0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E406EE0C(appear);
}

- (_TtC8VideosUI36MetricsEventDetailListViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E406EF18();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1E406EFB4();

  return v7;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_23();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_215();
  v9 = v4;
  v10 = v5;
  v11 = sub_1E406F02C();

  (*(v7 + 8))();
  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_1_23();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_215();
  v9 = v4;
  v10 = v5;
  v11 = sub_1E406F110(v9);

  (*(v7 + 8))();

  return v11;
}

@end