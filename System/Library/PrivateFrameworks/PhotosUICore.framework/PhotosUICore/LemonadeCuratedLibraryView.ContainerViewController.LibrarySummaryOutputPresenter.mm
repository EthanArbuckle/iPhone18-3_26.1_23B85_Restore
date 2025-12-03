@interface LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter
- (NSString)title;
- (_TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter)init;
- (void)setTitle:(id)title;
@end

@implementation LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_1A524C674();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A3EF6150(v4, v6);
}

- (_TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter)init
{
  v3 = (self + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
  v5 = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter *)&v7 init];
}

@end