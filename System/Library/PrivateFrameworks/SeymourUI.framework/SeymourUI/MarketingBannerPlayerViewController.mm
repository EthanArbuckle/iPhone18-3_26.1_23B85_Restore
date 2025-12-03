@interface MarketingBannerPlayerViewController
- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithCoder:(id)coder;
- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithPlayerLayerView:(id)view;
- (void)playerFinished:(id)finished;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MarketingBannerPlayerViewController

- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_20BC4FCB4();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BC4FE58(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_20BC50640(disappear);
}

- (void)playerFinished:(id)finished
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  selfCopy = self;
  presentingViewController = [(MarketingBannerPlayerViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v10 = presentingViewController;
    [(MarketingBannerPlayerViewController *)presentingViewController dismissViewControllerAnimated:1 completion:0];

    selfCopy = v10;
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithPlayerLayerView:(id)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end