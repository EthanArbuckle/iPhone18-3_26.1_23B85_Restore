@interface PXNavigationListDataSectionConfiguration
+ (id)configurationWithCollectionList:(id)a3;
+ (id)configurationWithCollectionsFetchResult:(id)a3;
- (PXNavigationListDataSectionConfiguration)initWithCollectionList:(id)a3;
- (PXNavigationListDataSectionConfiguration)initWithCollectionsFetchResult:(id)a3;
- (id)description;
@end

@implementation PXNavigationListDataSectionConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PHCollectionList *)self->_collectionList localizedTitle];
  v6 = [v3 stringWithFormat:@"<%@: %p title = %@>", v4, self, v5];;

  return v6;
}

- (PXNavigationListDataSectionConfiguration)initWithCollectionsFetchResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXNavigationListDataSectionConfiguration;
  v6 = [(PXNavigationListDataSectionConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionsFetchResult, a3);
  }

  return v7;
}

- (PXNavigationListDataSectionConfiguration)initWithCollectionList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXNavigationListDataSectionConfiguration;
  v6 = [(PXNavigationListDataSectionConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionList, a3);
  }

  return v7;
}

+ (id)configurationWithCollectionsFetchResult:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCollectionsFetchResult:v4];

  return v5;
}

+ (id)configurationWithCollectionList:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCollectionList:v4];

  return v5;
}

@end