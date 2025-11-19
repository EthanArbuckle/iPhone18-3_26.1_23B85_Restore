@interface WeatherMapCachingViewController
- (_TtC11WeatherMaps31WeatherMapCachingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WeatherMapCachingViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_220F8E12C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_220F8E1C0(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_220F8E280(a3);
}

- (_TtC11WeatherMaps31WeatherMapCachingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_220FC2700();
  }

  v5 = a4;
  WeatherMapCachingViewController.init(nibName:bundle:)();
}

@end