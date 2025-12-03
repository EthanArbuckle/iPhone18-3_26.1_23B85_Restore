@interface LemonadeCuratedLibraryView_ContainerViewController
- (CGRect)layout:(id)layout visibleRectForRequestedVisibleRect:(CGRect)rect;
- (LemonadeCuratedLibraryView_ContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UINavigationItem)navigationItem;
- (void)curatedLibraryViewDidUpdateBars:(id)bars;
- (void)curatedLibraryViewRequestImmediateUpdate:(id)update;
- (void)scrollViewControllerContentInsetDidChange:(id)change;
- (void)scrollViewControllerDidEndScrolling:(id)scrolling;
- (void)scrollViewControllerDidEndScrollingAnimation:(id)animation;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerWillBeginScrollingAnimation:(id)animation towardsContentEdges:(unint64_t)edges;
- (void)setNeedsUpdate;
- (void)updateBarItems;
- (void)updateCuratedLibraryViewModel;
- (void)updateResetCuratedLibraryView;
- (void)updateScrollView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation LemonadeCuratedLibraryView_ContainerViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  v2 = v6.receiver;
  [(LemonadeCuratedLibraryView_ContainerViewController *)&v6 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_clippingView;
    [view addSubview_];

    [*&v2[v5] setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1A3EF06C0(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  v4 = v5.receiver;
  [(LemonadeCuratedLibraryView_ContainerViewController *)&v5 viewDidAppear:appearCopy];
  sub_1A3EF2A74(1);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1A3EF0CB4();
}

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_1A46E0BEC();
  navigationItem = [v3 navigationItem];

  return navigationItem;
}

- (void)setNeedsUpdate
{
  selfCopy = self;
  viewIfLoaded = [(LemonadeCuratedLibraryView_ContainerViewController *)selfCopy viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)updateScrollView
{
  selfCopy = self;
  sub_1A3EF3D2C();
}

- (void)updateBarItems
{
  selfCopy = self;
  v2 = sub_1A46E0BEC();
  toolbarItems = [v2 toolbarItems];

  [(LemonadeCuratedLibraryView_ContainerViewController *)selfCopy setToolbarItems:toolbarItems];
}

- (void)updateResetCuratedLibraryView
{
  selfCopy = self;
  sub_1A3EF3F6C();
}

- (void)updateCuratedLibraryViewModel
{
  selfCopy = self;
  sub_1A3EF4594();
}

- (void)curatedLibraryViewDidUpdateBars:(id)bars
{
  barsCopy = bars;
  selfCopy = self;
  sub_1A3EF698C();
}

- (void)curatedLibraryViewRequestImmediateUpdate:(id)update
{
  selfCopy = self;
  sub_1A3EF01D0();
}

- (CGRect)layout:(id)layout visibleRectForRequestedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutCopy = layout;
  selfCopy = self;
  v11 = sub_1A3EF4E4C(layoutCopy, x, y, width, height);
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

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_1A3EF5A90(scrollCopy);
}

- (void)scrollViewControllerContentInsetDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  view = [(LemonadeCuratedLibraryView_ContainerViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setNeedsLayout];

    [changeCopy contentInset];
    sub_1A46E42D0(v7);
  }

  else
  {
    __break(1u);
  }
}

- (void)scrollViewControllerWillBeginScrollingAnimation:(id)animation towardsContentEdges:(unint64_t)edges
{
  animationCopy = animation;
  selfCopy = self;
  sub_1A3EF6D04();
}

- (void)scrollViewControllerDidEndScrollingAnimation:(id)animation
{
  v4 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v5 = *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  selfCopy = self;
  if (v5 == 1)
  {
    v6 = sub_1A3EF04D4();
    (*(*v6 + 184))(*(&self->super.super.super.isa + v4));
  }

  sub_1A3EF58D4(0);
}

- (void)scrollViewControllerDidEndScrolling:(id)scrolling
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(&self->super.super.super.isa + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  if (v4 == 1)
  {
    selfCopy = self;
    v6 = sub_1A3EF04D4();
    (*(*v6 + 184))(*(&self->super.super.super.isa + v3));
  }
}

- (LemonadeCuratedLibraryView_ContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end