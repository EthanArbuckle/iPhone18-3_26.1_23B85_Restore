@interface NSCollectionLayoutSection(UICollectionLayoutListSection)
+ (_UICollectionViewListLayoutSection)sectionWithListConfiguration:()UICollectionLayoutListSection layoutEnvironment:;
@end

@implementation NSCollectionLayoutSection(UICollectionLayoutListSection)

+ (_UICollectionViewListLayoutSection)sectionWithListConfiguration:()UICollectionLayoutListSection layoutEnvironment:
{
  _spiConfiguration = [a3 _spiConfiguration];
  v6 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:_spiConfiguration layoutEnvironment:a4];

  return v6;
}

@end