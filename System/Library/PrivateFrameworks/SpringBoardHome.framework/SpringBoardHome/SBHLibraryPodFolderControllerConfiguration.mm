@interface SBHLibraryPodFolderControllerConfiguration
- (SBHLibraryPodFolderControllerConfiguration)initWithConfiguration:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBHLibraryPodFolderControllerConfiguration

- (SBHLibraryPodFolderControllerConfiguration)initWithConfiguration:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SBHLibraryPodFolderControllerConfiguration;
  v5 = [(SBFolderControllerConfiguration *)&v14 initWithConfiguration:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = v4;
      v9 = [v8 categoryMapProvider];
      categoryMapProvider = v5->_categoryMapProvider;
      v5->_categoryMapProvider = v9;

      v11 = [v8 categoriesFolder];

      categoriesFolder = v5->_categoriesFolder;
      v5->_categoriesFolder = v11;
    }
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBHLibraryPodFolderControllerConfiguration;
  v4 = [(SBFolderControllerConfiguration *)&v10 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBHLibraryPodFolderControllerConfiguration *)self categoryMapProvider];
  v6 = [v4 appendObject:v5 withName:@"categoryMapProvider"];

  v7 = [(SBHLibraryPodFolderControllerConfiguration *)self categoriesFolder];
  v8 = [v4 appendObject:v7 withName:@"categoriesFolder"];

  return v4;
}

@end