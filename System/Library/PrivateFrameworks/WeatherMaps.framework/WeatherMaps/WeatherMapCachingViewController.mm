@interface WeatherMapCachingViewController
- (_TtC11WeatherMaps31WeatherMapCachingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WeatherMapCachingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_220F8E12C();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_220F8E1C0(appearing);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_220F8E280(disappear);
}

- (_TtC11WeatherMaps31WeatherMapCachingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_220FC2700();
  }

  bundleCopy = bundle;
  WeatherMapCachingViewController.init(nibName:bundle:)();
}

@end