@interface LemonadeCuratedLibraryView_ContainerViewController
- (CGRect)layout:(id)a3 visibleRectForRequestedVisibleRect:(CGRect)a4;
- (LemonadeCuratedLibraryView_ContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UINavigationItem)navigationItem;
- (void)curatedLibraryViewDidUpdateBars:(id)a3;
- (void)curatedLibraryViewRequestImmediateUpdate:(id)a3;
- (void)scrollViewControllerContentInsetDidChange:(id)a3;
- (void)scrollViewControllerDidEndScrolling:(id)a3;
- (void)scrollViewControllerDidEndScrollingAnimation:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerWillBeginScrollingAnimation:(id)a3 towardsContentEdges:(unint64_t)a4;
- (void)setNeedsUpdate;
- (void)updateBarItems;
- (void)updateCuratedLibraryViewModel;
- (void)updateResetCuratedLibraryView;
- (void)updateScrollView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation LemonadeCuratedLibraryView_ContainerViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  v2 = v6.receiver;
  [(LemonadeCuratedLibraryView_ContainerViewController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_clippingView;
    [v3 addSubview_];

    [*&v2[v5] setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1A3EF06C0(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  v4 = v5.receiver;
  [(LemonadeCuratedLibraryView_ContainerViewController *)&v5 viewDidAppear:v3];
  sub_1A3EF2A74(1);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1A3EF0CB4();
}

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1A46E0BEC();
  v4 = [v3 navigationItem];

  return v4;
}

- (void)setNeedsUpdate
{
  v3 = self;
  v2 = [(LemonadeCuratedLibraryView_ContainerViewController *)v3 viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)updateScrollView
{
  v2 = self;
  sub_1A3EF3D2C();
}

- (void)updateBarItems
{
  v4 = self;
  v2 = sub_1A46E0BEC();
  v3 = [v2 toolbarItems];

  [(LemonadeCuratedLibraryView_ContainerViewController *)v4 setToolbarItems:v3];
}

- (void)updateResetCuratedLibraryView
{
  v2 = self;
  sub_1A3EF3F6C();
}

- (void)updateCuratedLibraryViewModel
{
  v2 = self;
  sub_1A3EF4594();
}

- (void)curatedLibraryViewDidUpdateBars:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3EF698C();
}

- (void)curatedLibraryViewRequestImmediateUpdate:(id)a3
{
  v3 = self;
  sub_1A3EF01D0();
}

- (CGRect)layout:(id)a3 visibleRectForRequestedVisibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = self;
  v11 = sub_1A3EF4E4C(v9, x, y, width, height);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)scrollViewControllerDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A3EF5A90(v4);
}

- (void)scrollViewControllerContentInsetDidChange:(id)a3
{
  v8 = a3;
  v4 = self;
  v5 = [(LemonadeCuratedLibraryView_ContainerViewController *)v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsLayout];

    [v8 contentInset];
    sub_1A46E42D0(v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewControllerWillBeginScrollingAnimation:(id)a3 towardsContentEdges:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1A3EF6D04();
}

- (void)scrollViewControllerDidEndScrollingAnimation:(id)a3
{
  v4 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  v7 = self;
  if (v5 == 1)
  {
    v6 = sub_1A3EF04D4();
    (*(*v6 + 184))(*(&self->super.super.super.isa + v4));
  }

  sub_1A3EF58D4(0);
}

- (void)scrollViewControllerDidEndScrolling:(id)a3
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  if (v4 == 1)
  {
    v7 = self;
    v6 = sub_1A3EF04D4();
    (*(*v6 + 184))(*(&self->super.super.super.isa + v3));
  }
}

- (LemonadeCuratedLibraryView_ContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end