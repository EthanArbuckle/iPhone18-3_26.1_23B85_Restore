@interface ScrubberOverlayViewController
- (_TtC11WeatherMaps29ScrubberOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ScrubberOverlayViewController

- (void)loadView
{
  v2 = self;
  sub_220F9335C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_220F93408();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_220F93C24(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_220F93DFC();
}

- (_TtC11WeatherMaps29ScrubberOverlayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_220FC2700();
  }

  v5 = a4;
  sub_220F95A00();
}

@end