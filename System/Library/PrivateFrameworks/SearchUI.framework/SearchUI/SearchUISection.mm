@interface SearchUISection
+ (id)sectionWithResultSection:(id)section collectionCardSection:(id)cardSection sectionIdentifier:(id)identifier;
+ (id)sectionWithResultSection:(id)section sectionIdentifier:(id)identifier;
- (BOOL)isBrowseSection;
- (SearchUISection)initWithResultSection:(id)section collectionSection:(id)collectionSection sectionIdentifier:(id)identifier;
@end

@implementation SearchUISection

+ (id)sectionWithResultSection:(id)section sectionIdentifier:(id)identifier
{
  sectionCopy = section;
  if (section)
  {
    identifierCopy = identifier;
    v6 = sectionCopy;
    sectionCopy = [[SearchUISection alloc] initWithResultSection:v6 collectionSection:0 sectionIdentifier:identifierCopy];
  }

  return sectionCopy;
}

+ (id)sectionWithResultSection:(id)section collectionCardSection:(id)cardSection sectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cardSectionCopy = cardSection;
  sectionCopy = section;
  v10 = [[SearchUISection alloc] initWithResultSection:sectionCopy collectionSection:cardSectionCopy sectionIdentifier:identifierCopy];

  return v10;
}

- (SearchUISection)initWithResultSection:(id)section collectionSection:(id)collectionSection sectionIdentifier:(id)identifier
{
  sectionCopy = section;
  collectionSectionCopy = collectionSection;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = SearchUISection;
  v12 = [(SearchUISection *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resultSection, section);
    objc_storeStrong(&v13->_collectionSection, collectionSection);
    objc_storeStrong(&v13->_sectionIdentifier, identifier);
    v14 = objc_opt_class();
    if (collectionSectionCopy)
    {
      [v14 reuseIdentifierForCollectionSection];
    }

    else
    {
      [v14 reuseIdentifierForSectionResult];
    }
    v15 = ;
    reuseIdentifier = v13->_reuseIdentifier;
    v13->_reuseIdentifier = v15;
  }

  return v13;
}

- (BOOL)isBrowseSection
{
  identifier = [(SFResultSection *)self->_resultSection identifier];
  v3 = [identifier hasPrefix:@"com.apple.spotlight.zkw"];

  return v3;
}

@end