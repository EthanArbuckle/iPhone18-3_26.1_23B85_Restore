@interface SideBarCollectionViewListCell
- (void)prepareForReuse;
@end

@implementation SideBarCollectionViewListCell

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1E3DCB74C();
}

@end