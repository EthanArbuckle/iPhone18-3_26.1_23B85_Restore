@interface CRKCardViewController(Legacy)
- (id)_legacyCardSectionViewController;
@end

@implementation CRKCardViewController(Legacy)

- (id)_legacyCardSectionViewController
{
  card = [self card];
  cardSections = [card cardSections];
  lastObject = [cardSections lastObject];
  v5 = [self _cardSectionViewControllerForCardSection:lastObject];

  return v5;
}

@end