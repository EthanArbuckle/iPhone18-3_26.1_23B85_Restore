@interface WUWeatherPlatterViewController
- (WUWeatherPlatterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WUWeatherPlatterViewController)initWithURL:(id)l;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WUWeatherPlatterViewController

- (WUWeatherPlatterViewController)initWithURL:(id)l
{
  v3 = sub_1BCE18E40();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE18E20();
  return WeatherPlatterViewController.init(url:)(v5);
}

- (void)viewDidLoad
{
  selfCopy = self;
  WeatherPlatterViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  WeatherPlatterViewController.viewWillLayoutSubviews()();
}

- (WUWeatherPlatterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1BCE1D280();
  }

  bundleCopy = bundle;
  WeatherPlatterViewController.init(nibName:bundle:)();
}

@end