@interface MapOptionsChooseMapContainerViewController
- (_TtC12PhotosUICore42MapOptionsChooseMapContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MapOptionsChooseMapContainerViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapOptionsChooseMapContainerViewController();
  v2 = v3.receiver;
  [(MapOptionsChooseMapContainerViewController *)&v3 viewDidLoad];
  sub_1A47A77B4();
  sub_1A47A7A20();
  sub_1A47A8034();
  sub_1A47A87C0();
  sub_1A47A8AA8();
  [*&v2[OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_scrollView] setDelegate_];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1A47A76C4();
}

- (_TtC12PhotosUICore42MapOptionsChooseMapContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  [scrollCopy contentOffset];
  if (v5 / 10.0 > 0.0)
  {
    v6 = v5 / 10.0;
  }

  else
  {
    v6 = 0.0;
  }

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerBlurredBackgroundView) setAlpha_];
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore42MapOptionsChooseMapContainerViewController_headerViewSeparator) setAlpha_];
}

@end