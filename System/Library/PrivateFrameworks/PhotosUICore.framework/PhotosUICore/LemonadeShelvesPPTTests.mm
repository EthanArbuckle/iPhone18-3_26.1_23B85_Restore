@interface LemonadeShelvesPPTTests
- (void)testRotatingAlbumsDetailsFeed;
- (void)testRotatingSharedAlbumsDetailsFeed;
- (void)testScrollingAlbumsDetailsFeed;
- (void)testScrollingAlbumsShelf;
- (void)testScrollingSharedAlbumsDetailsFeed;
- (void)testScrollingSharedAlbumsShelf;
- (void)testSeeAllNavigationAlbumsShelf;
- (void)testSeeAllNavigationPeopleShelf;
- (void)testSeeAllNavigationPeopleShelfAlphaSorted;
- (void)testSeeAllNavigationSharedAlbumsShelf;
@end

@implementation LemonadeShelvesPPTTests

- (void)testSeeAllNavigationPeopleShelf
{
  v2 = self;
  sub_1A493136C();
}

- (void)testSeeAllNavigationPeopleShelfAlphaSorted
{
  v2 = self;
  sub_1A49313D8();
}

- (void)testSeeAllNavigationAlbumsShelf
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937590);
}

- (void)testScrollingAlbumsShelf
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A49374D0);
}

- (void)testScrollingAlbumsDetailsFeed
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A49374B8);
}

- (void)testRotatingAlbumsDetailsFeed
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937578);
}

- (void)testSeeAllNavigationSharedAlbumsShelf
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937530);
}

- (void)testScrollingSharedAlbumsShelf
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A49374A0);
}

- (void)testScrollingSharedAlbumsDetailsFeed
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937488);
}

- (void)testRotatingSharedAlbumsDetailsFeed
{
  v2 = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937518);
}

@end