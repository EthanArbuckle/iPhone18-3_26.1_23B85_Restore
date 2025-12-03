@interface SBHLibraryPodCategoryIcon
- (SBHLibraryPodCategoryIcon)initWithCategory:(id)category;
- (int64_t)labelAccessoryType;
- (void)categoryDidUpdate:(id)update;
@end

@implementation SBHLibraryPodCategoryIcon

- (SBHLibraryPodCategoryIcon)initWithCategory:(id)category
{
  categoryCopy = category;
  leafIdentifier = [categoryCopy leafIdentifier];
  v10.receiver = self;
  v10.super_class = SBHLibraryPodCategoryIcon;
  v7 = [(SBLeafIcon *)&v10 initWithLeafIdentifier:leafIdentifier applicationBundleID:leafIdentifier];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_category, category);
    [categoryCopy addObserver:v8];
    [(SBLeafIcon *)v8 addIconDataSource:categoryCopy];
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

- (void)categoryDidUpdate:(id)update
{
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceDidChangeNotification" object:self];
}

@end