@interface WUWeatherPlatterViewController
- (WUWeatherPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WUWeatherPlatterViewController)initWithURL:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation WUWeatherPlatterViewController

- (WUWeatherPlatterViewController)initWithURL:(id)a3
{
  v3 = sub_1BCE18E40();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCE18E20();
  return WeatherPlatterViewController.init(url:)(v5);
}

- (void)viewDidLoad
{
  v2 = self;
  WeatherPlatterViewController.viewDidLoad()();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  WeatherPlatterViewController.viewWillLayoutSubviews()();
}

- (WUWeatherPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1BCE1D280();
  }

  v5 = a4;
  WeatherPlatterViewController.init(nibName:bundle:)();
}

@end