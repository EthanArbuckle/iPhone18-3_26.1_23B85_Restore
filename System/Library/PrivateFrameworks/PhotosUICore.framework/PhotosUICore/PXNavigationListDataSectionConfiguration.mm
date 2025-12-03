@interface PXNavigationListDataSectionConfiguration
+ (id)configurationWithCollectionList:(id)list;
+ (id)configurationWithCollectionsFetchResult:(id)result;
- (PXNavigationListDataSectionConfiguration)initWithCollectionList:(id)list;
- (PXNavigationListDataSectionConfiguration)initWithCollectionsFetchResult:(id)result;
- (id)description;
@end

@implementation PXNavigationListDataSectionConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedTitle = [(PHCollectionList *)self->_collectionList localizedTitle];
  v6 = [v3 stringWithFormat:@"<%@: %p title = %@>", v4, self, localizedTitle];;

  return v6;
}

- (PXNavigationListDataSectionConfiguration)initWithCollectionsFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PXNavigationListDataSectionConfiguration;
  v6 = [(PXNavigationListDataSectionConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionsFetchResult, result);
  }

  return v7;
}

- (PXNavigationListDataSectionConfiguration)initWithCollectionList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = PXNavigationListDataSectionConfiguration;
  v6 = [(PXNavigationListDataSectionConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionList, list);
  }

  return v7;
}

+ (id)configurationWithCollectionsFetchResult:(id)result
{
  resultCopy = result;
  v5 = [[self alloc] initWithCollectionsFetchResult:resultCopy];

  return v5;
}

+ (id)configurationWithCollectionList:(id)list
{
  listCopy = list;
  v5 = [[self alloc] initWithCollectionList:listCopy];

  return v5;
}

@end