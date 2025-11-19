@interface PathProgressSliderViewController
- (_TtC18KaleidoscopePoster32PathProgressSliderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)sliderValueDidChangeWithSender:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PathProgressSliderViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  v5 = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 100.0, 200.0}];
  [(PathProgressSliderViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100022F8C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100023734();
}

- (void)sliderValueDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100023CA0(v4);
}

- (_TtC18KaleidoscopePoster32PathProgressSliderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end