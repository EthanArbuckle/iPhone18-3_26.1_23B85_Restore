@interface PathProgressSliderViewController
- (_TtC18KaleidoscopePoster32PathProgressSliderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)sliderValueDidChangeWithSender:(id)sender;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PathProgressSliderViewController

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  selfCopy = self;
  v4 = [v3 initWithFrame:{0.0, 0.0, 100.0, 200.0}];
  [(PathProgressSliderViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100022F8C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100023734();
}

- (void)sliderValueDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100023CA0(senderCopy);
}

- (_TtC18KaleidoscopePoster32PathProgressSliderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end