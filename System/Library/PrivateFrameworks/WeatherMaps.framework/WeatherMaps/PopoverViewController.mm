@interface PopoverViewController
- (_TtC11WeatherMaps21PopoverViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PopoverViewController

- (void)loadView
{
  v2 = self;
  sub_220E687B8();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220E688A8();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_220E68C14();
}

- (_TtC11WeatherMaps21PopoverViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_220FC2700();
  }

  v5 = a4;
  sub_220E69344();
}

@end