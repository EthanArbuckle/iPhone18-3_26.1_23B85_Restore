@interface CRKCardViewController(Legacy)
- (id)_legacyCardSectionViewController;
@end

@implementation CRKCardViewController(Legacy)

- (id)_legacyCardSectionViewController
{
  v2 = [a1 card];
  v3 = [v2 cardSections];
  v4 = [v3 lastObject];
  v5 = [a1 _cardSectionViewControllerForCardSection:v4];

  return v5;
}

@end