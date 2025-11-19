@interface MetricsEventDetailListViewController
- (_TtC8VideosUI36MetricsEventDetailListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MetricsEventDetailListViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1E406ECB0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E406EE0C(a3);
}

- (_TtC8VideosUI36MetricsEventDetailListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E406EF18();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1E406EFB4();

  return v7;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
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