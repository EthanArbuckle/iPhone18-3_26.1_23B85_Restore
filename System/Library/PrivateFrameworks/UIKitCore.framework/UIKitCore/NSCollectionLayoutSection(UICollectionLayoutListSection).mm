@interface NSCollectionLayoutSection(UICollectionLayoutListSection)
+ (_UICollectionViewListLayoutSection)sectionWithListConfiguration:()UICollectionLayoutListSection layoutEnvironment:;
@end

@implementation NSCollectionLayoutSection(UICollectionLayoutListSection)

+ (_UICollectionViewListLayoutSection)sectionWithListConfiguration:()UICollectionLayoutListSection layoutEnvironment:
{
  v5 = [a3 _spiConfiguration];
  v6 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v5 layoutEnvironment:a4];

  return v6;
}

@end