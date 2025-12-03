@interface PUOneUpTitlePalettePlaygroundViewController
- (BOOL)hasExuberatedHeight;
- (NSArray)configurations;
- (PUOneUpTitlePalettePlaygroundViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UILabel)exuberatedHeightStatusLabel;
- (UISegmentedControl)segmentedControl;
- (UITableView)tableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)segmentedControlChanged;
- (void)setConfigurations:(id)configurations;
- (void)setupView;
- (void)updateConfigurationData;
- (void)updateExuberatedHeightStatusLabel;
- (void)viewDidLoad;
@end

@implementation PUOneUpTitlePalettePlaygroundViewController

- (void)viewDidLoad
{
  selfCopy = self;
  PUOneUpTitlePalettePlaygroundViewController.viewDidLoad()();
}

- (void)setupView
{
  selfCopy = self;
  sub_1B37D6734();
}

- (void)updateExuberatedHeightStatusLabel
{
  selfCopy = self;
  sub_1B37D7184();
}

- (BOOL)hasExuberatedHeight
{
  selfCopy = self;
  v3 = sub_1B37D72E0();

  return v3 & 1;
}

- (void)segmentedControlChanged
{
  selfCopy = self;
  sub_1B37D7314();
}

- (void)updateConfigurationData
{
  selfCopy = self;
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

- (void)setConfigurations:(id)configurations
{
  _s26TitleSubtitleConfigurationCMa();
  v4 = sub_1B3C9C788();
  selfCopy = self;
  sub_1B37D7E44(v4);
}

- (PUOneUpTitlePalettePlaygroundViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1B3C9C5E8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return PUOneUpTitlePalettePlaygroundViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = PUOneUpTitlePalettePlaygroundViewController.tableView(_:numberOfRowsInSection:)(selfCopy, v7);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1B3C98298();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B3C98268();
  viewCopy = view;
  selfCopy = self;
  v12 = PUOneUpTitlePalettePlaygroundViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end