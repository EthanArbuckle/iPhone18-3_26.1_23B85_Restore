@interface VUILibraryMenuDataSource
- (VUILibraryMenuDataSource)initWithValidCategories:(id)categories;
@end

@implementation VUILibraryMenuDataSource

- (VUILibraryMenuDataSource)initWithValidCategories:(id)categories
{
  categoriesCopy = categories;
  v9.receiver = self;
  v9.super_class = VUILibraryMenuDataSource;
  v6 = [(VUILibraryMenuDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_validCategories, categories);
  }

  return v7;
}

@end