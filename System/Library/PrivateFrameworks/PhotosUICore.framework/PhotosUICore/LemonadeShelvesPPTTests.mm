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
  selfCopy = self;
  sub_1A493136C();
}

- (void)testSeeAllNavigationPeopleShelfAlphaSorted
{
  selfCopy = self;
  sub_1A49313D8();
}

- (void)testSeeAllNavigationAlbumsShelf
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937590);
}

- (void)testScrollingAlbumsShelf
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A49374D0);
}

- (void)testScrollingAlbumsDetailsFeed
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A49374B8);
}

- (void)testRotatingAlbumsDetailsFeed
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937578);
}

- (void)testSeeAllNavigationSharedAlbumsShelf
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937530);
}

- (void)testScrollingSharedAlbumsShelf
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A49374A0);
}

- (void)testScrollingSharedAlbumsDetailsFeed
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937488);
}

- (void)testRotatingSharedAlbumsDetailsFeed
{
  selfCopy = self;
  testWithDefaultAlbumCellStyle(action:)(sub_1A4937518);
}

@end