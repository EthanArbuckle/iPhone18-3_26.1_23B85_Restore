@interface PUOneUpTitlePalettePlaygroundViewController
- (BOOL)hasExuberatedHeight;
- (NSArray)configurations;
- (PUOneUpTitlePalettePlaygroundViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UILabel)exuberatedHeightStatusLabel;
- (UISegmentedControl)segmentedControl;
- (UITableView)tableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)segmentedControlChanged;
- (void)setConfigurations:(id)a3;
- (void)setupView;
- (void)updateConfigurationData;
- (void)updateExuberatedHeightStatusLabel;
- (void)viewDidLoad;
@end

@implementation PUOneUpTitlePalettePlaygroundViewController

- (void)viewDidLoad
{
  v2 = self;
  PUOneUpTitlePalettePlaygroundViewController.viewDidLoad()();
}

- (void)setupView
{
  v2 = self;
  sub_1B37D6734();
}

- (void)updateExuberatedHeightStatusLabel
{
  v2 = self;
  sub_1B37D7184();
}

- (BOOL)hasExuberatedHeight
{
  v2 = self;
  v3 = sub_1B37D72E0();

  return v3 & 1;
}

- (void)segmentedControlChanged
{
  v2 = self;
  sub_1B37D7314();
}

- (void)updateConfigurationData
{
  v2 = self;
  sub_1B37D73C4();
}

- (UILabel)exuberatedHeightStatusLabel
{
  v2 = sub_1B37D7B20();

  return v2;
}

- (UISegmentedControl)segmentedControl
{
  v2 = sub_1B37D7D14();

  return v2;
}

- (UITableView)tableView
{
  v2 = sub_1B37D7D58();

  return v2;
}

- (NSArray)configurations
{
  sub_1B37D7DC4();
  _s26TitleSubtitleConfigurationCMa();
  v2 = sub_1B3C9C778();

  return v2;
}

- (void)setConfigurations:(id)a3
{
  _s26TitleSubtitleConfigurationCMa();
  v4 = sub_1B3C9C788();
  v5 = self;
  sub_1B37D7E44(v4);
}

- (PUOneUpTitlePalettePlaygroundViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return PUOneUpTitlePalettePlaygroundViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v8 = PUOneUpTitlePalettePlaygroundViewController.tableView(_:numberOfRowsInSection:)(v6, v7);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1B3C98298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  v10 = a3;
  v11 = self;
  v12 = PUOneUpTitlePalettePlaygroundViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end