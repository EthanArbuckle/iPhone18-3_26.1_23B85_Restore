@interface MarketingBannerPlayerViewController
- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithCoder:(id)a3;
- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithPlayerLayerView:(id)a3;
- (void)playerFinished:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MarketingBannerPlayerViewController

- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithCoder:(id)a3
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_20BC4FCB4();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BC4FE58(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_20BC50640(a3);
}

- (void)playerFinished:(id)a3
{
  v4 = sub_20C132614();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1325E4();
  v8 = self;
  v9 = [(MarketingBannerPlayerViewController *)v8 presentingViewController];
  if (v9)
  {
    v10 = v9;
    [(MarketingBannerPlayerViewController *)v9 dismissViewControllerAnimated:1 completion:0];

    v8 = v10;
  }

  (*(v5 + 8))(v7, v4);
}

- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9SeymourUI35MarketingBannerPlayerViewController)initWithPlayerLayerView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end