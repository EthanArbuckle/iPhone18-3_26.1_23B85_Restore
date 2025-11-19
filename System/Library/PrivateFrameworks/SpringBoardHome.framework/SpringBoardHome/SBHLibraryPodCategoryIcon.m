@interface SBHLibraryPodCategoryIcon
- (SBHLibraryPodCategoryIcon)initWithCategory:(id)a3;
- (int64_t)labelAccessoryType;
- (void)categoryDidUpdate:(id)a3;
@end

@implementation SBHLibraryPodCategoryIcon

- (SBHLibraryPodCategoryIcon)initWithCategory:(id)a3
{
  v5 = a3;
  v6 = [v5 leafIdentifier];
  v10.receiver = self;
  v10.super_class = SBHLibraryPodCategoryIcon;
  v7 = [(SBLeafIcon *)&v10 initWithLeafIdentifier:v6 applicationBundleID:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_category, a3);
    [v5 addObserver:v8];
    [(SBLeafIcon *)v8 addIconDataSource:v5];
    [(SBIcon *)v8 setGridSizeClass:@"SBHIconGridSizeClassSmall"];
  }

  return v8;
}

- (int64_t)labelAccessoryType
{
  v3.receiver = self;
  v3.super_class = SBHLibraryPodCategoryIcon;
  result = [(SBLeafIcon *)&v3 labelAccessoryType];
  if (result == 1)
  {
    return 0;
  }

  return result;
}

- (void)categoryDidUpdate:(id)a3
{
  v4 = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [v4 postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
}

@end