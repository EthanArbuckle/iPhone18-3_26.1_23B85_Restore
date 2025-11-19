@interface SearchUISection
+ (id)sectionWithResultSection:(id)a3 collectionCardSection:(id)a4 sectionIdentifier:(id)a5;
+ (id)sectionWithResultSection:(id)a3 sectionIdentifier:(id)a4;
- (BOOL)isBrowseSection;
- (SearchUISection)initWithResultSection:(id)a3 collectionSection:(id)a4 sectionIdentifier:(id)a5;
@end

@implementation SearchUISection

+ (id)sectionWithResultSection:(id)a3 sectionIdentifier:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = [[SearchUISection alloc] initWithResultSection:v6 collectionSection:0 sectionIdentifier:v5];
  }

  return v4;
}

+ (id)sectionWithResultSection:(id)a3 collectionCardSection:(id)a4 sectionIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SearchUISection alloc] initWithResultSection:v9 collectionSection:v8 sectionIdentifier:v7];

  return v10;
}

- (SearchUISection)initWithResultSection:(id)a3 collectionSection:(id)a4 sectionIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SearchUISection;
  v12 = [(SearchUISection *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_resultSection, a3);
    objc_storeStrong(&v13->_collectionSection, a4);
    objc_storeStrong(&v13->_sectionIdentifier, a5);
    v14 = objc_opt_class();
    if (v10)
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
  v2 = [(SFResultSection *)self->_resultSection identifier];
  v3 = [v2 hasPrefix:@"com.apple.spotlight.zkw"];

  return v3;
}

@end