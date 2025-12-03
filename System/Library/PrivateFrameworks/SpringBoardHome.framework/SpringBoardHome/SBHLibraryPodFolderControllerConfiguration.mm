@interface SBHLibraryPodFolderControllerConfiguration
- (SBHLibraryPodFolderControllerConfiguration)initWithConfiguration:(id)configuration;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBHLibraryPodFolderControllerConfiguration

- (SBHLibraryPodFolderControllerConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = SBHLibraryPodFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v14 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = configurationCopy;
      categoryMapProvider = [v8 categoryMapProvider];
      categoryMapProvider = v5->_categoryMapProvider;
      v5->_categoryMapProvider = categoryMapProvider;

      categoriesFolder = [v8 categoriesFolder];

      categoriesFolder = v5->_categoriesFolder;
      v5->_categoriesFolder = categoriesFolder;
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v10.receiver = self;
  v10.super_class = SBHLibraryPodFolderControllerConfiguration;
  v4 = [(SBFolderControllerConfiguration *)&v10 descriptionBuilderWithMultilinePrefix:prefix];
  categoryMapProvider = [(SBHLibraryPodFolderControllerConfiguration *)self categoryMapProvider];
  v6 = [v4 appendObject:categoryMapProvider withName:@"categoryMapProvider"];

  categoriesFolder = [(SBHLibraryPodFolderControllerConfiguration *)self categoriesFolder];
  v8 = [v4 appendObject:categoriesFolder withName:@"categoriesFolder"];

  return v4;
}

@end